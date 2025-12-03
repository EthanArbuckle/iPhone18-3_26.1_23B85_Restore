@interface CROutputRegion
+ (id)decodableSubclasses;
+ (id)outputRegionFromTextRegion:(id)region confidenceThresholdProvider:(id)provider injectSpaceCharacter:(BOOL)character;
+ (id)outputRegionWithCRCodableDataRepresentation:(id)representation;
- (BOOL)isEqual:(id)equal;
- (CGSize)rectifiedSize;
- (CRNormalizedQuad)boundingQuad;
- (CROutputRegion)init;
- (CROutputRegion)initWithCRCodableDataRepresentation:(id)representation version:(int64_t)version offset:(unint64_t *)offset;
- (CROutputRegion)initWithCoder:(id)coder;
- (CROutputRegion)initWithConfidence:(unint64_t)confidence baselineAngle:(double)angle;
- (CROutputRegion)outputRegionWithContentsBetweenStartPoint:(CGPoint)point endPoint:(CGPoint)endPoint;
- (CROutputRegion)outputRegionWithContentsOfCharacterRange:(_NSRange)range;
- (CROutputRegion)outputRegionWithContentsOfQuad:(id)quad;
- (CRRegionGeometryInfo)geometryInfo;
- (CRVCQuad)vcImageSpaceQuad;
- (NSArray)contentBaselines;
- (NSArray)regionsSuitableForDataDetectorOutput;
- (NSArray)transcriptComponents;
- (NSString)text;
- (NSUUID)uuid;
- (_NSRange)rangeOfContentRegion:(id)region;
- (__n128)setBoundingQuadHomography:(__n128)homography;
- (float)visualTextAngle;
- (id)closestContentRegionOfType:(unint64_t)type toNormalizedPoint:(CGPoint)point maxPixelDistance:(int64_t)distance;
- (id)contentRegionOfType:(unint64_t)type containingTextAtIndex:(int64_t)index;
- (id)contentsWithTypes:(unint64_t)types;
- (id)copyIncludingChildrenOfTypes:(unint64_t)types;
- (id)copyWithZone:(_NSZone *)zone copyChildren:(BOOL)children copyCandidates:(BOOL)candidates deepCopy:(BOOL)copy;
- (id)crCodableDataRepresentation;
- (id)decodeOutputsArrayFromData:(uint64_t)data offset:(uint64_t)offset;
- (id)outputRegionByApplyingWarpTransform:(double)transform downscaleRate:(double)rate shouldApply:(float)apply;
- (id)outputRegionWithContentsEndingAtPoint:(double)point;
- (id)outputRegionWithContentsStartingAtPoint:(double)point;
- (id)quadForTextInCharacterRange:(_NSRange)range;
- (int64_t)wordCount;
- (int64_t)wordCountInCharacterRange:(_NSRange)range;
- (uint64_t)_indexOfNearestRegionToPoint:(char)point regions:(void *)regions returnFirstMatch:(double)match distance:(double)distance;
- (void)_computeDataDetectorRegions;
- (void)_computeGeometryInfo;
- (void)_computeNumberOfLines;
- (void)_computeTranscript;
- (void)_copyChildrenInRange:(uint64_t)range;
- (void)_enumerateRegions:(uint64_t)regions withTypes:(uint64_t)types recursively:(void *)recursively passingTest:(void *)test usingBlock:;
- (void)_indexOfNearestChildToPoint:(double)point returnFirstMatch:(double)match;
- (void)_invalidateTranscript;
- (void)_invalidateTranscriptRecursivelyThrough:(Class)through;
- (void)_overrideSetBoundingQuad:(id)quad;
- (void)applyHomographyTransform:(float32x4_t)transform downscaleRate:(float32x4_t)rate shouldApply:(float)apply;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateContentsWithTypes:(unint64_t)types usingBlock:(id)block;
- (void)scaleBy:(CGPoint)by normalizedOffset:(CGPoint)offset;
- (void)setBoundingQuadHomographySinceOCRDispatch:(__n128)dispatch;
- (void)setChildren:(id)children;
- (void)updateBoundingQuadAfterOCR;
- (void)updatePreviousAssociationQuad;
@end

@implementation CROutputRegion

- (void)scaleBy:(CGPoint)by normalizedOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  CGAffineTransformMakeScale(&v9, by.x, by.y);
  v8 = v9;
  CGAffineTransformTranslate(&v9, &v8, x, y);
  selfCopy = self;
  sub_1B4127090(&v9);
}

- (void)_computeDataDetectorRegions
{
  selfCopy = self;
  sub_1B4127D68();
}

- (CROutputRegion)init
{
  v3.receiver = self;
  v3.super_class = CROutputRegion;
  result = [(CROutputRegion *)&v3 init];
  if (result)
  {
    result->_shouldComputeParagraphsFromChildren = 1;
    *&result->_shouldComputeBoundsFromChildren = 257;
    result->_numberOfLines = 0;
    result->_textAlignment = 0;
    result->_layoutDirection = 0;
    result->_activationProbability = 1.0;
  }

  return result;
}

- (CRVCQuad)vcImageSpaceQuad
{
  if (!self->_trackingID)
  {
    v3 = CROSLogForCategory(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v14 = 0;
      _os_log_impl(&dword_1B40D2000, v3, OS_LOG_TYPE_ERROR, "Unexpectedly encountered regions without trackIDs.", v14, 2u);
    }

    uUID = [MEMORY[0x1E696AFB0] UUID];
    trackingID = self->_trackingID;
    self->_trackingID = uUID;
  }

  vcImageSpaceQuad = self->_vcImageSpaceQuad;
  if (vcImageSpaceQuad)
  {
    boundingQuad = [(CROutputRegion *)self boundingQuad];
    denormalizedQuad = [boundingQuad denormalizedQuad];
    [(CRVCQuad *)vcImageSpaceQuad updateWithQuad:denormalizedQuad];
  }

  else
  {
    v9 = [CRVCQuad alloc];
    boundingQuad = [(CROutputRegion *)self boundingQuad];
    denormalizedQuad = [boundingQuad denormalizedQuad];
    v10 = [(CRVCQuad *)v9 initWithImageSpaceQuad:denormalizedQuad uuid:self->_trackingID];
    v11 = self->_vcImageSpaceQuad;
    self->_vcImageSpaceQuad = v10;
  }

  v12 = self->_vcImageSpaceQuad;

  return v12;
}

- (CROutputRegion)initWithConfidence:(unint64_t)confidence baselineAngle:(double)angle
{
  result = [(CROutputRegion *)self init];
  if (result)
  {
    result->_confidence = confidence;
    result->_baselineAngle = angle;
  }

  return result;
}

+ (id)outputRegionFromTextRegion:(id)region confidenceThresholdProvider:(id)provider injectSpaceCharacter:(BOOL)character
{
  characterCopy = character;
  v53 = *MEMORY[0x1E69E9840];
  regionCopy = region;
  providerCopy = provider;
  v41 = regionCopy;
  v42 = objc_opt_new();
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  subregions = [regionCopy subregions];
  v11 = [subregions countByEnumeratingWithState:&v47 objects:v52 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = *v48;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v48 != v14)
        {
          objc_enumerationMutation(subregions);
        }

        v16 = *(*(&v47 + 1) + 8 * i);
        v17 = [self outputRegionFromTextRegion:v16 confidenceThresholdProvider:providerCopy injectSpaceCharacter:characterCopy];
        [v42 addObject:v17];

        v13 |= [v16 textRegionType] == 1;
      }

      v12 = [subregions countByEnumeratingWithState:&v47 objects:v52 count:16];
    }

    while (v12);
  }

  else
  {
    v13 = 0;
  }

  v18 = v41;
  locale = [v41 locale];
  v20 = [providerCopy thresholdsForTextRegion:v41 withLocale:locale];

  [v41 confidence];
  v21 = [CRImageReaderOutput confidenceLevelForConfidenceScore:v20 confidenceThresholds:?];
  textRegionType = [v41 textRegionType];
  if (!textRegionType)
  {
    text = [v41 text];
    boundingQuad = [v41 boundingQuad];
    boundingQuad2 = [v41 boundingQuad];
    [boundingQuad2 baselineAngle];
    v23 = [CRCharacterOutputRegion characterWithText:text confidence:v21 quad:boundingQuad baselineAngle:?];

    goto LABEL_20;
  }

  if (textRegionType == 1)
  {
    if ([v42 count])
    {
      if ((v13 & 1) == 0)
      {
        v23 = 0;
        goto LABEL_21;
      }

      text = [v41 boundingQuad];
      boundingQuad = [v41 boundingQuad];
      [boundingQuad baselineAngle];
      v23 = [CRWordOutputRegion wordWithCharacters:v42 confidence:v21 quad:text baselineAngle:?];
    }

    else
    {
      text = [v41 text];
      boundingQuad = [v41 boundingQuad];
      boundingQuad3 = [v41 boundingQuad];
      [boundingQuad3 baselineAngle];
      v23 = [CRWordOutputRegion wordWithText:text confidence:v21 quad:boundingQuad baselineAngle:?];
    }

LABEL_20:

    goto LABEL_21;
  }

  if (textRegionType != 2)
  {
    v23 = 0;
    goto LABEL_30;
  }

  v23 = [CRLineOutputRegion lineWithTextRegion:v41 confidenceThresholdProvider:providerCopy injectSpaceCharacter:characterCopy];
LABEL_21:
  locale2 = [v41 locale];
  [v23 setRecognizedLocale:locale2];

  [v41 confidence];
  *&v29 = v29;
  [v23 setRawConfidence:v29];
  [v41 activationProbability];
  [v23 setActivationProbability:?];
  polygon = [v41 polygon];
  [v23 setPolygon:polygon];

  [v23 setLayoutDirection:{objc_msgSend(v41, "layoutDirection")}];
  candidates = [v41 candidates];

  if (candidates)
  {
    v40 = v20;
    v32 = objc_opt_new();
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    candidates2 = [v41 candidates];
    v34 = [candidates2 countByEnumeratingWithState:&v43 objects:v51 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v44;
      do
      {
        for (j = 0; j != v35; ++j)
        {
          if (*v44 != v36)
          {
            objc_enumerationMutation(candidates2);
          }

          v38 = [self outputRegionFromTextRegion:*(*(&v43 + 1) + 8 * j) confidenceThresholdProvider:providerCopy injectSpaceCharacter:characterCopy];
          [v32 addObject:v38];
        }

        v35 = [candidates2 countByEnumeratingWithState:&v43 objects:v51 count:16];
      }

      while (v35);
    }

    [v23 setCandidates:v32];
    v20 = v40;
    v18 = v41;
  }

LABEL_30:

  return v23;
}

- (NSUUID)uuid
{
  uuid = self->_uuid;
  if (!uuid)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    v5 = self->_uuid;
    self->_uuid = uUID;

    uuid = self->_uuid;
  }

  return uuid;
}

- (void)setChildren:(id)children
{
  childrenCopy = children;
  objc_storeStrong(&self->_children, children);
  dataDetectorRegions = self->_dataDetectorRegions;
  self->_dataDetectorRegions = 0;

  listRegions = self->_listRegions;
  self->_listRegions = 0;

  tableRegions = self->_tableRegions;
  self->_tableRegions = 0;

  if ([(CROutputRegion *)self shouldComputeParagraphsFromChildren])
  {
    paragraphRegions = self->_paragraphRegions;
    self->_paragraphRegions = 0;
  }

  if ([(CROutputRegion *)self computesBoundsFromChildren])
  {
    boundingQuad = self->_boundingQuad;
    self->_boundingQuad = 0;

    geometryInfo = self->_geometryInfo;
    self->_geometryInfo = 0;
  }

  if ([(CROutputRegion *)self computesTranscriptFromChildren])
  {
    [(CROutputRegion *)self _invalidateTranscript];
  }

  if ([(CROutputRegion *)self computesNumberOfLinesFromChildren])
  {
    [(CROutputRegion *)self _computeNumberOfLines];
  }
}

- (CGSize)rectifiedSize
{
  polygon = [(CROutputRegion *)self polygon];

  if (polygon)
  {
    polygon2 = [(CROutputRegion *)self polygon];
    denormalizedPolyline = [polygon2 denormalizedPolyline];
    [denormalizedPolyline estimatedLineSizeForPairedPointPolygon];
  }

  else
  {
    polygon2 = [(CROutputRegion *)self boundingQuad];
    denormalizedPolyline = [polygon2 denormalizedQuad];
    [denormalizedPolyline size];
  }

  v8 = v6;
  v9 = v7;

  v10 = v8;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)_invalidateTranscript
{
  text = self->_text;
  self->_text = 0;

  transcriptComponents = self->_transcriptComponents;
  self->_transcriptComponents = 0;
}

- (void)_invalidateTranscriptRecursivelyThrough:(Class)through
{
  v15 = *MEMORY[0x1E69E9840];
  if ([(CROutputRegion *)self computesTranscriptFromChildren])
  {
    [(CROutputRegion *)self _invalidateTranscript];
    if (objc_opt_class() != through)
    {
      v12 = 0u;
      v13 = 0u;
      v10 = 0u;
      v11 = 0u;
      children = [(CROutputRegion *)self children];
      v6 = [children countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v11;
        do
        {
          v9 = 0;
          do
          {
            if (*v11 != v8)
            {
              objc_enumerationMutation(children);
            }

            [*(*(&v10 + 1) + 8 * v9++) _invalidateTranscriptRecursivelyThrough:through];
          }

          while (v7 != v9);
          v7 = [children countByEnumeratingWithState:&v10 objects:v14 count:16];
        }

        while (v7);
      }
    }
  }
}

- (id)copyIncludingChildrenOfTypes:(unint64_t)types
{
  v45 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v5 = [(CROutputRegion *)self copyWithZone:0 copyChildren:0 copyCandidates:0 deepCopy:1];
    if ((types & 8) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v5 = 0;
  if ((types & 8) == 0)
  {
LABEL_3:
    [v5 setShouldComputeParagraphsFromChildren:0];
  }

LABEL_4:
  children = [(CROutputRegion *)self children];

  if (children)
  {
    v7 = objc_opt_new();
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    children2 = [(CROutputRegion *)self children];
    v9 = [children2 countByEnumeratingWithState:&v39 objects:v44 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v40;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v40 != v11)
          {
            objc_enumerationMutation(children2);
          }

          v13 = *(*(&v39 + 1) + 8 * i);
          if (([v13 type] & types) != 0)
          {
            v14 = [v13 copyIncludingChildrenOfTypes:types];
            [v7 addObject:v14];
          }
        }

        v10 = [children2 countByEnumeratingWithState:&v39 objects:v44 count:16];
      }

      while (v10);
    }

    [v5 setChildren:v7];
  }

  children3 = [(CROutputRegion *)self children];
  v16 = [children3 count];
  children4 = [v5 children];
  v18 = [children4 count];

  if (v16 > v18)
  {
    [v5 setShouldComputeBoundsFromChildren:0];
    [v5 setShouldComputeTranscriptFromChildren:0];
    boundingQuad = [(CROutputRegion *)self boundingQuad];
    [v5 setBoundingQuad:boundingQuad];

    text = [(CROutputRegion *)self text];
    [v5 setText:text];
LABEL_21:

    goto LABEL_22;
  }

  if (![(CROutputRegion *)self shouldComputeTranscriptFromChildren])
  {
    text2 = [(CROutputRegion *)self text];
    [v5 setText:text2];

    [v5 setShouldComputeTranscriptFromChildren:0];
  }

  if (![(CROutputRegion *)self shouldComputeBoundsFromChildren])
  {
    [v5 setShouldComputeBoundsFromChildren:0];
    text = [(CROutputRegion *)self boundingQuad];
    [v5 setBoundingQuad:text];
    goto LABEL_21;
  }

LABEL_22:
  if ((types & 4) != 0 && [(CROutputRegion *)self type]!= 4)
  {
    v22 = [(CROutputRegion *)self contentsWithTypes:4];
    v23 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v22, "count")}];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v24 = v22;
    v25 = [v24 countByEnumeratingWithState:&v35 objects:v43 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v36;
      do
      {
        for (j = 0; j != v26; ++j)
        {
          if (*v36 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = *(*(&v35 + 1) + 8 * j);
          v30 = [v29 copyIncludingChildrenOfTypes:{types, v35}];
          geometryInfo = [v29 geometryInfo];
          [v30 setGeometryInfo:geometryInfo];

          [v23 addObject:v30];
        }

        v26 = [v24 countByEnumeratingWithState:&v35 objects:v43 count:16];
      }

      while (v26);
    }

    paragraphRegions = [(CROutputRegion *)self paragraphRegions];
    if (paragraphRegions)
    {
      v33 = [v23 copy];
      [v5 setParagraphRegions:v33];
    }

    else
    {
      [v5 setParagraphRegions:0];
    }
  }

  return v5;
}

- (NSString)text
{
  text = self->_text;
  if (!text)
  {
    [(CROutputRegion *)self _computeTranscript];
    text = self->_text;
  }

  return text;
}

- (void)_computeTranscript
{
  v32 = *MEMORY[0x1E69E9840];
  if (self)
  {
    selfCopy = self;
    if ([self computesTranscriptFromChildren])
    {
      children = [selfCopy children];

      if (children)
      {
        v3 = objc_opt_new();
        v24 = objc_opt_new();
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        obj = [selfCopy children];
        v26 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (!v26)
        {
          goto LABEL_21;
        }

        v25 = *v28;
        v23 = v3;
        while (1)
        {
          for (i = 0; i != v26; ++i)
          {
            if (*v28 != v25)
            {
              objc_enumerationMutation(obj);
            }

            v5 = *(*(&v27 + 1) + 8 * i);
            text = [v5 text];
            if (text)
            {
              v7 = [v3 length];
              joiningDelimiter = [v5 joiningDelimiter];
              v9 = selfCopy;
              children2 = [selfCopy children];
              lastObject = [children2 lastObject];
              v12 = lastObject;
              if (v5 != lastObject)
              {

                v13 = joiningDelimiter;
                goto LABEL_13;
              }

              shouldAlwaysAddDelimiter = [v5 shouldAlwaysAddDelimiter];

              children2 = joiningDelimiter;
              v13 = &stru_1F2BB4348;
              if ((shouldAlwaysAddDelimiter & 1) == 0)
              {
LABEL_13:

                joiningDelimiter = v13;
              }

              if (-[__CFString isEqualToString:](joiningDelimiter, "isEqualToString:", @"\b") && [text _crEndsWithHyphen])
              {
                v15 = [text substringToIndex:{objc_msgSend(text, "length") - 1}];
                [v3 appendString:v15];
              }

              else
              {
                [v3 appendString:text];
                [v3 appendString:joiningDelimiter];
              }

              v16 = [text length];
              v17 = v5;
              objc_opt_self();
              v18 = [[CROutputRegionTranscriptComponent alloc] initWithOutputRegion:v17 range:v7, v16];

              [v24 addObject:v18];
              selfCopy = v9;
              v3 = v23;
            }
          }

          v26 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
          if (!v26)
          {
LABEL_21:

            v19 = [MEMORY[0x1E696AEC0] stringWithString:v3];
            v20 = selfCopy[6];
            selfCopy[6] = v19;

            v21 = selfCopy[20];
            selfCopy[20] = v24;

            return;
          }
        }
      }

      [selfCopy _invalidateTranscript];
    }
  }
}

- (NSArray)transcriptComponents
{
  transcriptComponents = self->_transcriptComponents;
  if (!transcriptComponents)
  {
    [(CROutputRegion *)self _computeTranscript];
    transcriptComponents = self->_transcriptComponents;
  }

  return transcriptComponents;
}

- (NSArray)regionsSuitableForDataDetectorOutput
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = self;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

- (CRNormalizedQuad)boundingQuad
{
  v22 = *MEMORY[0x1E69E9840];
  boundingQuad = self->_boundingQuad;
  if (!boundingQuad)
  {
    if (![(CROutputRegion *)self computesBoundsFromChildren])
    {
      v14 = 0;
      goto LABEL_18;
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    children = [(CROutputRegion *)self children];
    v5 = [children countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      v8 = *v18;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(children);
          }

          boundingQuad = [*(*(&v17 + 1) + 8 * i) boundingQuad];
          v11 = boundingQuad;
          if (v7)
          {
            [(CROutputRegion *)self baselineAngle];
            *&v12 = v12;
            v13 = [(CRNormalizedQuad *)v7 unionWithNormalizedQuad:v11 baselineAngle:v12];

            v7 = v13;
          }

          else
          {
            v7 = boundingQuad;
          }
        }

        v6 = [children countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v6);
    }

    else
    {
      v7 = 0;
    }

    v15 = self->_boundingQuad;
    self->_boundingQuad = v7;

    boundingQuad = self->_boundingQuad;
  }

  v14 = boundingQuad;
LABEL_18:

  return v14;
}

- (NSArray)contentBaselines
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  children = [(CROutputRegion *)self children];
  v5 = [children countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(children);
        }

        contentBaselines = [*(*(&v12 + 1) + 8 * i) contentBaselines];
        [v3 addObjectsFromArray:contentBaselines];
      }

      v6 = [children countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [MEMORY[0x1E695DEC8] arrayWithArray:v3];

  return v10;
}

- (int64_t)wordCount
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [(CROutputRegion *)self contentsWithTypes:8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v5 += [*(*(&v9 + 1) + 8 * i) wordCount];
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (float)visualTextAngle
{
  result = self->_visualTextAngle;
  if (result == 0.0)
  {
    baselineAngle = self->_baselineAngle;
    if (self->_layoutDirection == 5)
    {
      baselineAngle = baselineAngle + 1.57079633;
      if (baselineAngle > 3.14159265)
      {
        v4 = -6.28318531;
LABEL_7:
        baselineAngle = baselineAngle + v4;
        goto LABEL_8;
      }

      if (baselineAngle <= -3.14159265)
      {
        v4 = 6.28318531;
        goto LABEL_7;
      }
    }

LABEL_8:
    result = baselineAngle;
    self->_visualTextAngle = result;
  }

  return result;
}

- (id)contentsWithTypes:(unint64_t)types
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = objc_opt_new();
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __36__CROutputRegion_contentsWithTypes___block_invoke;
  v11[3] = &unk_1E7BC30F0;
  v6 = v5;
  v12 = v6;
  [(CROutputRegion *)self enumerateContentsWithTypes:types usingBlock:v11];
  if ((types & 0x2000) != 0 && [(CROutputRegion *)self type]== 1)
  {
    v7 = CROSLogForCategory(6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v6 count];
      *buf = 136315394;
      v14 = "[CROutputRegion contentsWithTypes:]";
      v15 = 2048;
      v16 = v8;
      _os_log_impl(&dword_1B40D2000, v7, OS_LOG_TYPE_DEFAULT, "%s: Returning %lu form fields.", buf, 0x16u);
    }
  }

  v9 = [MEMORY[0x1E695DEC8] arrayWithArray:v6];

  return v9;
}

- (void)enumerateContentsWithTypes:(unint64_t)types usingBlock:(id)block
{
  v90 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  selfCopy = self;
  v6 = types & 0xFFFFFFFFFFFFC7FFLL;
  typesCopy = types;
  if ((types & 0xFFFFFFFFFFFFC7FFLL) != 0)
  {
    types = [(CROutputRegion *)self children];
    if (self)
    {
      [(CROutputRegion *)self _enumerateRegions:types withTypes:v6 recursively:1 passingTest:0 usingBlock:blockCopy];
    }

    LOWORD(types) = typesCopy;
  }

  if ((types & 0x800) != 0)
  {
    selfCopy2 = self;
    objc_sync_enter(selfCopy2);
    if (CRSignpostLog_onceToken != -1)
    {
      dispatch_once(&CRSignpostLog_onceToken, &__block_literal_global_12);
    }

    v8 = CRSignpostLog_signPostOSLog;
    v9 = os_signpost_id_generate(v8);

    if (CRSignpostLog_onceToken != -1)
    {
      dispatch_once(&CRSignpostLog_onceToken, &__block_literal_global_12);
    }

    v10 = CRSignpostLog_signPostOSLog;
    v11 = v10;
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1B40D2000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "OCRDataDetectorTime", "", buf, 2u);
    }

    dataDetectorRegions = [(CROutputRegion *)selfCopy2 dataDetectorRegions];
    v13 = dataDetectorRegions == 0;

    if (v13)
    {
      [(CROutputRegion *)selfCopy2 _computeDataDetectorRegions];
    }

    if (CRSignpostLog_onceToken != -1)
    {
      dispatch_once(&CRSignpostLog_onceToken, &__block_literal_global_12);
    }

    v14 = CRSignpostLog_signPostOSLog;
    v15 = v14;
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1B40D2000, v15, OS_SIGNPOST_INTERVAL_END, v9, "OCRDataDetectorTime", "", buf, 2u);
    }

    obj = [(CROutputRegion *)selfCopy2 dataDetectorRegions];
    objc_sync_exit(selfCopy2);
    v65 = selfCopy2;

    v16 = CROSLogForCategory(7);
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG);

    if (v17)
    {
      v18 = CROSLogForCategory(7);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        v83 = "[CROutputRegion enumerateContentsWithTypes:usingBlock:]";
        _os_log_impl(&dword_1B40D2000, v18, OS_LOG_TYPE_DEBUG, "%s: Data requested", buf, 0xCu);
      }

      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      v79 = 0u;
      v19 = obj;
      v20 = [v19 countByEnumeratingWithState:&v78 objects:v89 count:16];
      if (v20)
      {
        v21 = *v79;
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v79 != v21)
            {
              objc_enumerationMutation(v19);
            }

            v23 = *(*(&v78 + 1) + 8 * i);
            v24 = CROSLogForCategory(7);
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
            {
              v25 = [v23 debugDescription];
              *buf = 136315395;
              v83 = "[CROutputRegion enumerateContentsWithTypes:usingBlock:]";
              v84 = 2117;
              v85 = v25;
              _os_log_impl(&dword_1B40D2000, v24, OS_LOG_TYPE_DEBUG, "%s: - Result %{sensitive}@", buf, 0x16u);
            }
          }

          v20 = [v19 countByEnumeratingWithState:&v78 objects:v89 count:16];
        }

        while (v20);
      }
    }

    if (v65)
    {
      [(CROutputRegion *)v65 _enumerateRegions:typesCopy withTypes:0 recursively:0 passingTest:blockCopy usingBlock:?];
    }

    self = selfCopy;
    LOWORD(types) = typesCopy;
  }

  if ((types & 0x1000) != 0)
  {
    if (CRSignpostLog_onceToken != -1)
    {
      dispatch_once(&CRSignpostLog_onceToken, &__block_literal_global_12);
    }

    v26 = CRSignpostLog_signPostOSLog;
    v27 = os_signpost_id_generate(v26);

    if (CRSignpostLog_onceToken != -1)
    {
      dispatch_once(&CRSignpostLog_onceToken, &__block_literal_global_12);
    }

    v28 = CRSignpostLog_signPostOSLog;
    v29 = v28;
    if (v27 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1B40D2000, v29, OS_SIGNPOST_INTERVAL_BEGIN, v27, "OCRDataDetectorTime", "", buf, 2u);
    }

    v30 = selfCopy;
    objc_sync_enter(v30);
    obja = v30;
    dataDetectorRegions2 = [(CROutputRegion *)v30 dataDetectorRegions];
    LODWORD(v30) = dataDetectorRegions2 == 0;

    if (v30)
    {
      [(CROutputRegion *)obja _computeDataDetectorRegions];
    }

    dataDetectorGroupRegions = [(CROutputRegion *)obja dataDetectorGroupRegions];
    if (!dataDetectorGroupRegions)
    {
      dataDetectorRegions3 = [(CROutputRegion *)obja dataDetectorRegions];
      v34 = [CRDataDetectorUtilities computeGroupRegionsWithDataDetectorRegions:dataDetectorRegions3 inRegion:obja];
      [(CROutputRegion *)obja setDataDetectorGroupRegions:v34];

      dataDetectorGroupRegions = [(CROutputRegion *)obja dataDetectorGroupRegions];
    }

    v66 = dataDetectorGroupRegions;
    objc_sync_exit(obja);

    if (CRSignpostLog_onceToken != -1)
    {
      dispatch_once(&CRSignpostLog_onceToken, &__block_literal_global_12);
    }

    v35 = CRSignpostLog_signPostOSLog;
    v36 = v35;
    if (v27 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v35))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1B40D2000, v36, OS_SIGNPOST_INTERVAL_END, v27, "OCRDataDetectorTime", "", buf, 2u);
    }

    v37 = CROSLogForCategory(7);
    v38 = os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG);

    if (v38)
    {
      v39 = CROSLogForCategory(7);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        v83 = "[CROutputRegion enumerateContentsWithTypes:usingBlock:]";
        _os_log_impl(&dword_1B40D2000, v39, OS_LOG_TYPE_DEBUG, "%s: DataGroup requested", buf, 0xCu);
      }

      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v40 = v66;
      v41 = [v40 countByEnumeratingWithState:&v74 objects:v88 count:16];
      if (v41)
      {
        v42 = *v75;
        do
        {
          for (j = 0; j != v41; ++j)
          {
            if (*v75 != v42)
            {
              objc_enumerationMutation(v40);
            }

            v44 = *(*(&v74 + 1) + 8 * j);
            v45 = CROSLogForCategory(7);
            if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
            {
              v46 = [v44 debugDescription];
              groupType = [v44 groupType];
              *buf = 136315651;
              v83 = "[CROutputRegion enumerateContentsWithTypes:usingBlock:]";
              v84 = 2117;
              v85 = v46;
              v86 = 2048;
              v87 = groupType;
              _os_log_impl(&dword_1B40D2000, v45, OS_LOG_TYPE_DEBUG, "%s: - Result '%{sensitive}@' (type:%lu)", buf, 0x20u);
            }
          }

          v41 = [v40 countByEnumeratingWithState:&v74 objects:v88 count:16];
        }

        while (v41);
      }
    }

    if (obja)
    {
      [(CROutputRegion *)obja _enumerateRegions:v66 withTypes:typesCopy recursively:0 passingTest:0 usingBlock:blockCopy];
    }

    self = selfCopy;
    LOWORD(types) = typesCopy;
  }

  if ((types & 4) != 0)
  {
    selfCopy3 = self;
    objc_sync_enter(selfCopy3);
    paragraphRegions = [(CROutputRegion *)selfCopy3 paragraphRegions];
    if (!paragraphRegions)
    {
      if ([(CROutputRegion *)selfCopy3 type]== 4 || ![(CROutputRegion *)selfCopy3 shouldComputeParagraphsFromChildren])
      {
        paragraphRegions = 0;
      }

      else
      {
        v50 = [(CROutputRegion *)selfCopy3 contentsWithTypes:8];
        v51 = [CRParagraphOutputRegion paragraphsWithLines:v50];
        [(CROutputRegion *)selfCopy3 setParagraphRegions:v51];

        paragraphRegions = [(CROutputRegion *)selfCopy3 paragraphRegions];
      }
    }

    objc_sync_exit(selfCopy3);

    if (selfCopy3)
    {
      [(CROutputRegion *)selfCopy3 _enumerateRegions:paragraphRegions withTypes:typesCopy recursively:0 passingTest:0 usingBlock:blockCopy];
    }

    self = selfCopy;
    LOWORD(types) = typesCopy;
  }

  if ((types & 0x100) != 0)
  {
    selfCopy4 = self;
    objc_sync_enter(selfCopy4);
    listRegions = [(CROutputRegion *)selfCopy4 listRegions];
    objc_sync_exit(selfCopy4);

    if (!listRegions)
    {
      v54 = [(CROutputRegion *)selfCopy4 contentsWithTypes:4];
      v55 = selfCopy4;
      objc_sync_enter(v55);
      v56 = [CRListOutputRegion listsWithParagraphs:v54];
      [(CROutputRegion *)v55 setListRegions:v56];

      listRegions = [(CROutputRegion *)v55 listRegions];
      objc_sync_exit(v55);
    }

    if (selfCopy4)
    {
      [(CROutputRegion *)selfCopy4 _enumerateRegions:listRegions withTypes:typesCopy recursively:0 passingTest:0 usingBlock:blockCopy];
    }

    self = selfCopy;
    LOWORD(types) = typesCopy;
  }

  if ((types & 0x2000) != 0)
  {
    if ([(CROutputRegion *)self type]== 1)
    {
      v57 = CROSLogForCategory(6);
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        v83 = "[CROutputRegion enumerateContentsWithTypes:usingBlock:]";
        _os_log_impl(&dword_1B40D2000, v57, OS_LOG_TYPE_DEBUG, "%s: FormField requested", buf, 0xCu);
      }
    }

    v58 = selfCopy;
    objc_sync_enter(v58);
    v59 = v58[30];
    objc_sync_exit(v58);

    formFieldRegions = [v58 formFieldRegions];
    v61 = formFieldRegions == 0;

    if (!v61)
    {
      v72[0] = MEMORY[0x1E69E9820];
      v72[1] = 3221225472;
      v72[2] = __56__CROutputRegion_enumerateContentsWithTypes_usingBlock___block_invoke;
      v72[3] = &unk_1E7BC3118;
      v73 = blockCopy;
      [(CROutputRegion *)v58 _enumerateRegions:v59 withTypes:typesCopy recursively:0 passingTest:0 usingBlock:v72];
    }

    self = selfCopy;
    LOBYTE(types) = typesCopy;
  }

  if ((types & 0x40) != 0)
  {
    tableRegions = [(CROutputRegion *)self tableRegions];
    v63 = tableRegions == 0;

    if (!v63)
    {
      tableRegions2 = [(CROutputRegion *)selfCopy tableRegions];
      if (selfCopy)
      {
        [(CROutputRegion *)selfCopy _enumerateRegions:tableRegions2 withTypes:typesCopy recursively:0 passingTest:0 usingBlock:blockCopy];
      }
    }
  }
}

void __56__CROutputRegion_enumerateContentsWithTypes_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 fieldSource] == 1)
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (CROutputRegion)outputRegionWithContentsOfQuad:(id)quad
{
  v25 = *MEMORY[0x1E69E9840];
  quadCopy = quad;
  boundingQuad = [(CROutputRegion *)self boundingQuad];
  v6 = [boundingQuad overlapsNormalizedQuad:quadCopy];

  if (v6)
  {
    if (self)
    {
      v7 = [(CROutputRegion *)self copyWithZone:0 copyChildren:0 copyCandidates:0 deepCopy:1];
    }

    else
    {
      v7 = 0;
    }

    children = [(CROutputRegion *)self children];
    if (children)
    {
      v9 = objc_opt_new();
    }

    else
    {
      v9 = 0;
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    children2 = [(CROutputRegion *)self children];
    v12 = [children2 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v21;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v21 != v14)
          {
            objc_enumerationMutation(children2);
          }

          v16 = [*(*(&v20 + 1) + 8 * i) outputRegionWithContentsOfQuad:quadCopy];
          if (v16)
          {
            [v9 addObject:v16];
          }
        }

        v13 = [children2 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v13);
    }

    if ([v9 count] || (-[CROutputRegion children](self, "children"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "count"), v17, !v18))
    {
      [v7 setChildren:v9];
      v10 = v7;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)updatePreviousAssociationQuad
{
  boundingQuad = [(CROutputRegion *)self boundingQuad];
  boundingQuadAtOCRDispatch = self->_boundingQuadAtOCRDispatch;
  self->_boundingQuadAtOCRDispatch = boundingQuad;

  v5 = MEMORY[0x1E69E9B10];
  v6 = *(MEMORY[0x1E69E9B10] + 16);
  *&self[1].super.isa = *MEMORY[0x1E69E9B10];
  *&self[1]._rawConfidence = v6;
  *&self[1]._uuid = *(v5 + 32);
}

- (void)updateBoundingQuadAfterOCR
{
  boundingQuad = [(CROutputRegion *)self boundingQuad];
  boundingQuadAfterOCR = self->_boundingQuadAfterOCR;
  self->_boundingQuadAfterOCR = boundingQuad;
}

- (id)outputRegionByApplyingWarpTransform:(double)transform downscaleRate:(double)rate shouldApply:(float)apply
{
  v9 = a7;
  v10 = [self copy];
  *&v11 = apply;
  [v10 applyHomographyTransform:v9 downscaleRate:a2 shouldApply:{transform, rate, v11}];

  return v10;
}

- (void)applyHomographyTransform:(float32x4_t)transform downscaleRate:(float32x4_t)rate shouldApply:(float)apply
{
  v59 = *MEMORY[0x1E69E9840];
  v9 = a7;
  boundingQuad = [self boundingQuad];
  denormalizedQuad = [boundingQuad denormalizedQuad];
  *&v12 = apply;
  v13 = [denormalizedQuad applyHomographyTransform:*a2.i64 downscaleRate:{*transform.i64, *rate.i64, v12}];

  [boundingQuad normalizationSize];
  if (v9[2](v9, v13))
  {
    [v13 baselineAngle];
    [self setBaselineAngle:?];
    originalBoundingQuad = [self originalBoundingQuad];

    if (originalBoundingQuad)
    {
      if (rate.f32[2] != 0.0)
      {
        v15 = 0;
        v16 = (self + 256);
        v17 = *(self + 320);
        v18 = *(self + 336);
        v52 = *(self + 304);
        v53 = v17;
        v54 = v18;
        v55 = 0u;
        v56 = 0u;
        v57 = 0u;
        do
        {
          *(&v55 + v15) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a2, COERCE_FLOAT(*(&v52 + v15))), transform, *(&v52 + v15), 1), rate, *(&v52 + v15), 2);
          v15 += 16;
        }

        while (v15 != 48);
        v19 = 0;
        v20 = v55;
        v21 = v56;
        v22 = v57;
        *(self + 312) = DWORD2(v55);
        *(self + 328) = DWORD2(v21);
        *(self + 304) = v20;
        *&v20 = 1.0 / *(&v22 + 2);
        v23 = *(self + 288);
        v24 = vmulq_n_f32(*(self + 304), 1.0 / *(&v22 + 2));
        *(self + 312) = v24.i32[2];
        *(self + 344) = DWORD2(v22);
        *(self + 320) = v21;
        *(self + 336) = v22;
        *(self + 304) = v24.i64[0];
        v25 = *(self + 336);
        v26 = vmulq_n_f32(*(self + 320), *&v20);
        *(self + 328) = v26.i32[2];
        *(self + 320) = v26.i64[0];
        v27 = vmulq_n_f32(v25, *&v20);
        *(self + 344) = v27.i32[2];
        *(self + 336) = v27.i64[0];
        v28 = *(self + 272);
        v52 = *(self + 256);
        v53 = v28;
        v54 = v23;
        v55 = 0u;
        v56 = 0u;
        v57 = 0u;
        do
        {
          *(&v55 + v19) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a2, COERCE_FLOAT(*(&v52 + v19))), transform, *(&v52 + v19), 1), rate, *(&v52 + v19), 2);
          v19 += 16;
        }

        while (v19 != 48);
        v29 = v55;
        v30 = v56;
        v31 = v57;
        *(self + 264) = DWORD2(v55);
        *(self + 280) = DWORD2(v30);
        v16->i64[0] = v29;
        *(self + 272) = v30;
        *(self + 296) = DWORD2(v31);
        *(self + 288) = v31;
        *&v29 = 1.0 / *(&v31 + 2);
        v32 = *(self + 288);
        v33 = vmulq_n_f32(*v16, 1.0 / *(&v31 + 2));
        v34 = vmulq_n_f32(*(self + 272), 1.0 / *(&v31 + 2));
        *(self + 264) = v33.i32[2];
        *(self + 280) = v34.i32[2];
        v16->i64[0] = v33.i64[0];
        *(self + 272) = v34.i64[0];
        v35 = vmulq_n_f32(v32, *&v29);
        *(self + 296) = v35.i32[2];
        *(self + 288) = v35.i64[0];
      }
    }

    else
    {
      objc_storeStrong((self + 144), boundingQuad);
      *(self + 256) = a2;
      *(self + 272) = transform;
      *(self + 288) = rate;
    }

    [boundingQuad normalizationSize];
    v36 = [v13 normalizedQuadForImageSize:?];
    [self setBoundingQuad:v36];

    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    children = [self children];
    v38 = [children countByEnumeratingWithState:&v48 objects:v58 count:16];
    if (v38)
    {
      v40 = v38;
      v41 = *v49;
      do
      {
        for (i = 0; i != v40; ++i)
        {
          if (*v49 != v41)
          {
            objc_enumerationMutation(children);
          }

          *&v39 = apply;
          [*(*(&v48 + 1) + 8 * i) applyHomographyTransform:v9 downscaleRate:v44 shouldApply:{v46, *rate.i64, v39}];
        }

        v40 = [children countByEnumeratingWithState:&v48 objects:v58 count:16];
      }

      while (v40);
    }
  }
}

- (CROutputRegion)outputRegionWithContentsBetweenStartPoint:(CGPoint)point endPoint:(CGPoint)endPoint
{
  y = endPoint.y;
  x = endPoint.x;
  v6 = point.y;
  v7 = point.x;
  v40[1] = *MEMORY[0x1E69E9840];
  children = [(CROutputRegion *)self children];
  if ([children count])
  {
  }

  else
  {
    boundingQuad = [(CROutputRegion *)self boundingQuad];
    v11 = [boundingQuad containsNormalizedPoint:{v7, v6}];

    if (v11)
    {
      v12 = [(CROutputRegion *)self copy];
      goto LABEL_49;
    }
  }

  v13 = [(CROutputRegion *)self _indexOfNearestChildToPoint:v7 returnFirstMatch:v6];
  if (v13 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = 0;
    goto LABEL_49;
  }

  v14 = v13;
  children2 = [(CROutputRegion *)self children];
  v16 = [children2 objectAtIndexedSubscript:v14];

  v17 = [(CROutputRegion *)self _indexOfNearestChildToPoint:x returnFirstMatch:y];
  if (v17 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v19 = v17;
    children3 = [(CROutputRegion *)self children];
    v21 = [children3 objectAtIndexedSubscript:v19];

    v22 = v19 >= v14;
    if (v19 < v14)
    {
      v23 = v19;
    }

    else
    {
      v23 = v14;
    }

    if (v19 < v14)
    {
      v18 = v21;
    }

    else
    {
      v18 = v16;
    }

    if (v19 < v14)
    {
      v24 = v14;
    }

    else
    {
      v24 = v19;
    }

    if (v19 < v14)
    {
      v25 = v16;
    }

    else
    {
      v25 = v21;
    }

    if (v22)
    {
      v26 = v7;
    }

    else
    {
      v26 = x;
    }

    if (v22)
    {
      v27 = v6;
    }

    else
    {
      v27 = y;
    }

    if (!v22)
    {
      x = v7;
      y = v6;
    }

    if (self)
    {
      v28 = [(CROutputRegion *)self copyWithZone:0 copyChildren:0 copyCandidates:0 deepCopy:1];
    }

    else
    {
      v28 = 0;
    }

    if (v21 == v16)
    {
      v31 = [v18 outputRegionWithContentsBetweenStartPoint:v26 endPoint:{v27, x, y}];
      v32 = v31;
      if (v31)
      {
        v40[0] = v31;
        v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:1];
        [v28 setChildren:v33];
      }
    }

    else
    {
      children4 = [(CROutputRegion *)self children];
      if (children4)
      {
        v30 = objc_opt_new();
      }

      else
      {
        v30 = 0;
      }

      v34 = [(CROutputRegion *)v18 outputRegionWithContentsStartingAtPoint:v26, v27];
      if (v34)
      {
        [v30 addObject:v34];
      }

      if (&v24[~v23])
      {
        v35 = [(CROutputRegion *)self _copyChildrenInRange:&v24[~v23]];
        [v30 addObjectsFromArray:v35];
      }

      v36 = [(CROutputRegion *)v25 outputRegionWithContentsEndingAtPoint:y];
      if (v36)
      {
        [v30 addObject:v36];
      }

      if (![v30 count])
      {
        children5 = [(CROutputRegion *)self children];
        v39 = [children5 count];

        if (v39)
        {

          v12 = 0;
          goto LABEL_47;
        }
      }

      [v28 setChildren:v30];
    }

    v12 = v28;
LABEL_47:

    goto LABEL_48;
  }

  v12 = 0;
  v18 = v16;
LABEL_48:

LABEL_49:

  return v12;
}

- (void)_indexOfNearestChildToPoint:(double)point returnFirstMatch:(double)match
{
  if (result)
  {
    v7 = result;
    children = [result children];
    match = [(CROutputRegion *)v7 _indexOfNearestRegionToPoint:children regions:a2 returnFirstMatch:0 distance:point, match];

    return match;
  }

  return result;
}

- (id)outputRegionWithContentsStartingAtPoint:(double)point
{
  if (!self)
  {
    goto LABEL_7;
  }

  children = [self children];
  if ([children count])
  {
  }

  else
  {
    boundingQuad = [self boundingQuad];
    v8 = [boundingQuad containsNormalizedPoint:{a2, point}];

    if (v8)
    {
      v9 = [self copy];
      goto LABEL_16;
    }
  }

  v10 = [(CROutputRegion *)self _indexOfNearestChildToPoint:a2 returnFirstMatch:point];
  if (v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = v10;
    children2 = [self children];
    v13 = [children2 objectAtIndexedSubscript:v11];

    v9 = [self copyWithZone:0 copyChildren:0 copyCandidates:0 deepCopy:1];
    children3 = [self children];
    if (children3)
    {
      v15 = objc_opt_new();
    }

    else
    {
      v15 = 0;
    }

    point = [(CROutputRegion *)v13 outputRegionWithContentsStartingAtPoint:a2, point];
    if (point)
    {
      [v15 addObject:point];
    }

    children4 = [self children];
    v18 = [children4 count] + ~v11;

    if (v18)
    {
      v19 = [(CROutputRegion *)self _copyChildrenInRange:v18];
      [v15 addObjectsFromArray:v19];
    }

    [v9 setChildren:v15];
  }

  else
  {
LABEL_7:
    v9 = 0;
  }

LABEL_16:

  return v9;
}

- (void)_copyChildrenInRange:(uint64_t)range
{
  if (result)
  {
    if (range && (v5 = result, [result children], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "count"), v6, a2 < v7))
    {
      children = [v5 children];
      v9 = [children subarrayWithRange:{a2, range}];

      v10 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v9 copyItems:1];
      return v10;
    }

    else
    {
      return MEMORY[0x1E695E0F0];
    }
  }

  return result;
}

- (id)outputRegionWithContentsEndingAtPoint:(double)point
{
  if (self)
  {
    v6 = [(CROutputRegion *)self _indexOfNearestChildToPoint:a2 returnFirstMatch:point];
    v7 = [self copyWithZone:0 copyChildren:0 copyCandidates:0 deepCopy:1];
    if (v6 != 0x7FFFFFFFFFFFFFFFLL)
    {
      children = [self children];
      v9 = [children objectAtIndexedSubscript:v6];

      children2 = [self children];
      if (children2)
      {
        v11 = objc_opt_new();
      }

      else
      {
        v11 = 0;
      }

      if (v6)
      {
        v12 = [(CROutputRegion *)self _copyChildrenInRange:v6];
        [v11 addObjectsFromArray:v12];
      }

      point = [(CROutputRegion *)v9 outputRegionWithContentsEndingAtPoint:a2, point];
      if (point)
      {
        [v11 addObject:point];
      }

      [v7 setChildren:v11];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (CROutputRegion)outputRegionWithContentsOfCharacterRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v40 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v6 = [(CROutputRegion *)self copyWithZone:0 copyChildren:0 copyCandidates:0 deepCopy:1];
  }

  else
  {
    v6 = 0;
  }

  transcriptComponents = [(CROutputRegion *)self transcriptComponents];
  v8 = [transcriptComponents count];

  if (v8)
  {
    children = [(CROutputRegion *)self children];
    v33 = v6;
    if (children)
    {
      v34 = objc_opt_new();
    }

    else
    {
      v34 = 0;
    }

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    selfCopy = self;
    transcriptComponents2 = [(CROutputRegion *)self transcriptComponents];
    v16 = [transcriptComponents2 countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v36;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v36 != v18)
          {
            objc_enumerationMutation(transcriptComponents2);
          }

          v20 = *(*(&v35 + 1) + 8 * i);
          v42.location = [v20 representedRange];
          v43.location = location;
          v43.length = length;
          v21 = NSIntersectionRange(v42, v43);
          if (v21.length)
          {
            v22 = v21.location - [v20 representedRange];
            outputRegion = [v20 outputRegion];
            v24 = [outputRegion outputRegionWithContentsOfCharacterRange:{v22, v21.length}];

            if (v24)
            {
              [v34 addObject:v24];
            }
          }
        }

        v17 = [transcriptComponents2 countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v17);
    }

    if (![v34 count])
    {
      children2 = [(CROutputRegion *)selfCopy children];
      v30 = [children2 count];

      if (v30)
      {
        v14 = 0;
        v6 = v33;
LABEL_31:

        goto LABEL_32;
      }
    }

    v6 = v33;
    boundingQuad = [v33 boundingQuad];
    if (boundingQuad)
    {
      v26 = boundingQuad;
      if (![v34 count])
      {

LABEL_29:
        [v33 setShouldComputeBoundsFromChildren:0];
        goto LABEL_30;
      }

      firstObject = [v34 firstObject];
      boundingQuad2 = [firstObject boundingQuad];

      if (!boundingQuad2)
      {
        goto LABEL_29;
      }
    }

LABEL_30:
    [v33 setChildren:v34];
    v14 = v33;
    goto LABEL_31;
  }

  text = [v6 text];
  v11 = [text length];

  if (length < v11)
  {
    text2 = [v6 text];
    v13 = [text2 substringWithRange:{location, length}];
    [v6 setText:v13];
  }

  v14 = v6;
LABEL_32:

  return v14;
}

- (int64_t)wordCountInCharacterRange:(_NSRange)range
{
  v3 = [(CROutputRegion *)self outputRegionWithContentsOfCharacterRange:range.location, range.length];
  wordCount = [v3 wordCount];

  return wordCount;
}

- (id)closestContentRegionOfType:(unint64_t)type toNormalizedPoint:(CGPoint)point maxPixelDistance:(int64_t)distance
{
  y = point.y;
  x = point.x;
  v9 = [(CROutputRegion *)self contentsWithTypes:type];
  v13 = 1.79769313e308;
  v10 = [(CROutputRegion *)self _indexOfNearestRegionToPoint:v9 regions:1 returnFirstMatch:&v13 distance:x, y];
  if (v10 == 0x7FFFFFFFFFFFFFFFLL || v13 > distance)
  {
    v11 = 0;
  }

  else
  {
    v11 = [v9 objectAtIndexedSubscript:{v10, v13}];
  }

  return v11;
}

- (uint64_t)_indexOfNearestRegionToPoint:(char)point regions:(void *)regions returnFirstMatch:(double)match distance:(double)distance
{
  v11 = a2;
  v12 = v11;
  if (self)
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v24 = 0x7FEFFFFFFFFFFFFFLL;
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 0x7FFFFFFFFFFFFFFFLL;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __81__CROutputRegion__indexOfNearestRegionToPoint_regions_returnFirstMatch_distance___block_invoke;
    v15[3] = &unk_1E7BC31D8;
    *&v15[6] = match;
    *&v15[7] = distance;
    pointCopy = point;
    v15[4] = &v21;
    v15[5] = &v17;
    [v11 enumerateObjectsUsingBlock:v15];
    if (regions)
    {
      *regions = v22[3];
    }

    v13 = v18[3];
    _Block_object_dispose(&v17, 8);
    _Block_object_dispose(&v21, 8);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)quadForTextInCharacterRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v28 = *MEMORY[0x1E69E9840];
  transcriptComponents = [(CROutputRegion *)self transcriptComponents];
  v7 = [transcriptComponents count];

  if (v7)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    obj = [(CROutputRegion *)self transcriptComponents];
    v8 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v8)
    {
      v9 = v8;
      selfCopy = self;
      boundingQuad = 0;
      v11 = *v24;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v24 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v23 + 1) + 8 * i);
          v30.location = [v13 representedRange];
          v31.location = location;
          v31.length = length;
          v14 = NSIntersectionRange(v30, v31);
          if (v14.length)
          {
            v15 = v14.location - [v13 representedRange];
            outputRegion = [v13 outputRegion];
            v17 = [outputRegion quadForTextInCharacterRange:{v15, v14.length}];

            if (boundingQuad)
            {
              [(CROutputRegion *)selfCopy baselineAngle];
              *&v18 = v18;
              v19 = [boundingQuad unionWithNormalizedQuad:v17 baselineAngle:v18];

              boundingQuad = v19;
            }

            else
            {
              boundingQuad = v17;
            }
          }
        }

        v9 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v9);
    }

    else
    {
      boundingQuad = 0;
    }
  }

  else
  {
    boundingQuad = [(CROutputRegion *)self boundingQuad];
  }

  return boundingQuad;
}

- (_NSRange)rangeOfContentRegion:(id)region
{
  v66 = *MEMORY[0x1E69E9840];
  regionCopy = region;
  children = [(CROutputRegion *)self children];
  firstObject = [children firstObject];
  type = [firstObject type];
  type2 = [regionCopy type];

  if (type == type2)
  {
    v44 = children;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    children2 = [(CROutputRegion *)self children];
    v10 = [children2 countByEnumeratingWithState:&v54 objects:v64 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v55;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v55 != v12)
          {
            objc_enumerationMutation(children2);
          }

          v14 = *(*(&v54 + 1) + 8 * i);
          uuid = [v14 uuid];
          if (uuid)
          {
            v16 = uuid;
            uuid2 = [v14 uuid];
            uuid3 = [regionCopy uuid];
            if ([uuid2 isEqual:uuid3])
            {

LABEL_40:
              v35 = v14;
              if (self)
              {
                v60 = 0u;
                v61 = 0u;
                v58 = 0u;
                v59 = 0u;
                transcriptComponents = [(CROutputRegion *)self transcriptComponents];
                length = [transcriptComponents countByEnumeratingWithState:&v58 objects:v65 count:16];
                children = v44;
                if (length)
                {
                  v37 = *v59;
                  while (2)
                  {
                    for (j = 0; j != length; ++j)
                    {
                      if (*v59 != v37)
                      {
                        objc_enumerationMutation(transcriptComponents);
                      }

                      v39 = *(*(&v58 + 1) + 8 * j);
                      outputRegion = [v39 outputRegion];

                      if (outputRegion == v35)
                      {
                        location = [v39 representedRange];
                        length = v41;
                        goto LABEL_51;
                      }
                    }

                    length = [transcriptComponents countByEnumeratingWithState:&v58 objects:v65 count:16];
                    if (length)
                    {
                      continue;
                    }

                    break;
                  }
                }

                location = 0x7FFFFFFFFFFFFFFFLL;
LABEL_51:
              }

              else
              {
                length = 0;
                location = 0;
                children = v44;
              }

              goto LABEL_53;
            }
          }

          if (v14 == regionCopy)
          {
            goto LABEL_40;
          }
        }

        v11 = [children2 countByEnumeratingWithState:&v54 objects:v64 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    children = v44;
  }

  if (([regionCopy contributesToDocumentHierarchy] & 1) == 0)
  {
    children2 = [regionCopy children];
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v29 = [children2 countByEnumeratingWithState:&v50 objects:v63 count:16];
    if (v29)
    {
      v30 = v29;
      length = 0;
      v31 = *v51;
      location = 0x7FFFFFFFFFFFFFFFLL;
      do
      {
        for (k = 0; k != v30; ++k)
        {
          if (*v51 != v31)
          {
            objc_enumerationMutation(children2);
          }

          v33.location = [(CROutputRegion *)self rangeOfContentRegion:*(*(&v50 + 1) + 8 * k)];
          if (v33.location != 0x7FFFFFFFFFFFFFFFLL)
          {
            if (location == 0x7FFFFFFFFFFFFFFFLL)
            {
              length = v33.length;
              location = v33.location;
            }

            else
            {
              v68.location = location;
              v68.length = length;
              v34 = NSUnionRange(v33, v68);
              location = v34.location;
              length = v34.length;
            }
          }
        }

        v30 = [children2 countByEnumeratingWithState:&v50 objects:v63 count:16];
      }

      while (v30);
      goto LABEL_53;
    }

LABEL_36:
    length = 0;
    location = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_53;
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  children2 = [(CROutputRegion *)self transcriptComponents];
  v19 = [children2 countByEnumeratingWithState:&v46 objects:v62 count:16];
  if (!v19)
  {
    goto LABEL_36;
  }

  v20 = v19;
  v45 = children;
  v21 = *v47;
  while (2)
  {
    for (m = 0; m != v20; ++m)
    {
      if (*v47 != v21)
      {
        objc_enumerationMutation(children2);
      }

      v23 = *(*(&v46 + 1) + 8 * m);
      outputRegion2 = [v23 outputRegion];
      v25 = [outputRegion2 rangeOfContentRegion:regionCopy];
      length = v26;

      if (v25 != 0x7FFFFFFFFFFFFFFFLL)
      {
        location = [v23 representedRange] + v25;
        goto LABEL_38;
      }
    }

    v20 = [children2 countByEnumeratingWithState:&v46 objects:v62 count:16];
    location = 0x7FFFFFFFFFFFFFFFLL;
    if (v20)
    {
      continue;
    }

    break;
  }

  length = 0;
LABEL_38:
  children = v45;
LABEL_53:

  v42 = location;
  v43 = length;
  result.length = v43;
  result.location = v42;
  return result;
}

- (id)contentRegionOfType:(unint64_t)type containingTextAtIndex:(int64_t)index
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__13;
  v20 = __Block_byref_object_dispose__13;
  v21 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __60__CROutputRegion_contentRegionOfType_containingTextAtIndex___block_invoke;
  aBlock[3] = &unk_1E7BC3140;
  aBlock[4] = self;
  aBlock[5] = index;
  v6 = _Block_copy(aBlock);
  children = [(CROutputRegion *)self children];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __60__CROutputRegion_contentRegionOfType_containingTextAtIndex___block_invoke_2;
  v14[3] = &unk_1E7BC3168;
  v14[4] = &v16;
  [(CROutputRegion *)self _enumerateRegions:children withTypes:type & 0xFFFFFFFFFFFFC7FFLL recursively:1 passingTest:v6 usingBlock:v14];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __60__CROutputRegion_contentRegionOfType_containingTextAtIndex___block_invoke_3;
  v11[3] = &unk_1E7BC3190;
  v8 = v6;
  v12 = v8;
  v13 = &v16;
  [(CROutputRegion *)self enumerateContentsWithTypes:type & 0x3800 usingBlock:v11];
  v9 = v17[5];

  _Block_object_dispose(&v16, 8);

  return v9;
}

BOOL __60__CROutputRegion_contentRegionOfType_containingTextAtIndex___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) rangeOfContentRegion:a2];
  v5 = *(a1 + 40);
  v7 = v5 >= v3;
  v6 = v5 - v3;
  v7 = !v7 || v6 >= v4;
  return !v7;
}

- (void)_enumerateRegions:(uint64_t)regions withTypes:(uint64_t)types recursively:(void *)recursively passingTest:(void *)test usingBlock:
{
  v31 = *MEMORY[0x1E69E9840];
  v10 = a2;
  recursivelyCopy = recursively;
  testCopy = test;
  if (self)
  {
    v29 = 0;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v23 = v10;
    v13 = v10;
    v14 = [v13 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v26;
      v17 = recursivelyCopy + 16;
LABEL_4:
      v18 = 0;
      while (1)
      {
        if (*v26 != v16)
        {
          objc_enumerationMutation(v13);
        }

        if (v29)
        {
          break;
        }

        v19 = *(*(&v25 + 1) + 8 * v18);
        if (!recursivelyCopy || (*(recursivelyCopy + 2))(recursivelyCopy, *(*(&v25 + 1) + 8 * v18)))
        {
          if (([v19 type] & regions) != 0)
          {
            testCopy[2](testCopy, v19, &v29);
          }

          if (v29)
          {
            break;
          }

          if (types)
          {
            [v19 children];
            v20 = v17;
            v22 = v21 = types;
            [(CROutputRegion *)v19 _enumerateRegions:v22 withTypes:regions recursively:1 passingTest:recursivelyCopy usingBlock:testCopy];

            types = v21;
            v17 = v20;
          }
        }

        if (v15 == ++v18)
        {
          v15 = [v13 countByEnumeratingWithState:&v25 objects:v30 count:16];
          if (v15)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    v10 = v23;
  }
}

void __60__CROutputRegion_contentRegionOfType_containingTextAtIndex___block_invoke_3(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  if ((*(*(a1 + 32) + 16))())
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a3 = 1;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v25 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      shouldComputeBoundsFromChildren = [(CROutputRegion *)self shouldComputeBoundsFromChildren];
      if (shouldComputeBoundsFromChildren != [(CROutputRegion *)v5 shouldComputeBoundsFromChildren])
      {
        goto LABEL_26;
      }

      shouldComputeTranscriptFromChildren = [(CROutputRegion *)self shouldComputeTranscriptFromChildren];
      if (shouldComputeTranscriptFromChildren != [(CROutputRegion *)v5 shouldComputeTranscriptFromChildren])
      {
        goto LABEL_26;
      }

      confidence = [(CROutputRegion *)self confidence];
      if (confidence != [(CROutputRegion *)v5 confidence])
      {
        goto LABEL_26;
      }

      [(CROutputRegion *)self rawConfidence];
      v10 = v9;
      [(CROutputRegion *)v5 rawConfidence];
      if (v10 != v11)
      {
        goto LABEL_26;
      }

      [(CROutputRegion *)self baselineAngle];
      v13 = v12;
      [(CROutputRegion *)v5 baselineAngle];
      if (v13 != v14)
      {
        goto LABEL_26;
      }

      layoutDirection = [(CROutputRegion *)self layoutDirection];
      if (layoutDirection != [(CROutputRegion *)v5 layoutDirection])
      {
        goto LABEL_26;
      }

      boundingQuad = [(CROutputRegion *)self boundingQuad];
      boundingQuad2 = [(CROutputRegion *)v5 boundingQuad];
      v18 = [boundingQuad isEqual:boundingQuad2];

      if (!v18)
      {
        goto LABEL_26;
      }

      recognizedLocale = [(CROutputRegion *)self recognizedLocale];
      recognizedLocale2 = [(CROutputRegion *)v5 recognizedLocale];
      v21 = recognizedLocale2;
      if (recognizedLocale == recognizedLocale2)
      {
      }

      else
      {
        recognizedLocale3 = [(CROutputRegion *)self recognizedLocale];
        recognizedLocale4 = [(CROutputRegion *)v5 recognizedLocale];
        v24 = [recognizedLocale3 isEqualToString:recognizedLocale4];

        if (!v24)
        {
          goto LABEL_26;
        }
      }

      text = [(CROutputRegion *)self text];
      text2 = [(CROutputRegion *)v5 text];
      v28 = text2;
      if (text == text2)
      {
      }

      else
      {
        text3 = [(CROutputRegion *)self text];
        text4 = [(CROutputRegion *)v5 text];
        v31 = [text3 isEqualToString:text4];

        if (!v31)
        {
          goto LABEL_26;
        }
      }

      transcriptComponents = [(CROutputRegion *)self transcriptComponents];
      transcriptComponents2 = [(CROutputRegion *)v5 transcriptComponents];
      v34 = transcriptComponents2;
      if (transcriptComponents == transcriptComponents2)
      {
      }

      else
      {
        transcriptComponents3 = [(CROutputRegion *)self transcriptComponents];
        transcriptComponents4 = [(CROutputRegion *)v5 transcriptComponents];
        v37 = [transcriptComponents3 isEqualToArray:transcriptComponents4];

        if (!v37)
        {
          goto LABEL_26;
        }
      }

      children = [(CROutputRegion *)self children];
      children2 = [(CROutputRegion *)v5 children];
      v40 = children2;
      if (children == children2)
      {
      }

      else
      {
        children3 = [(CROutputRegion *)self children];
        children4 = [(CROutputRegion *)v5 children];
        v43 = [children3 isEqualToArray:children4];

        if (!v43)
        {
LABEL_26:
          v25 = 0;
LABEL_27:

          goto LABEL_28;
        }
      }

      candidates = [(CROutputRegion *)self candidates];
      candidates2 = [(CROutputRegion *)v5 candidates];
      if (candidates == candidates2)
      {
        v25 = 1;
      }

      else
      {
        candidates3 = [(CROutputRegion *)self candidates];
        candidates4 = [(CROutputRegion *)v5 candidates];
        v25 = [candidates3 isEqualToArray:candidates4];
      }

      goto LABEL_27;
    }

    v25 = 0;
  }

LABEL_28:

  return v25 & 1;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  crCodableDataRepresentation = [(CROutputRegion *)self crCodableDataRepresentation];
  v5 = compressData(crCodableDataRepresentation);
  [coderCopy encodeObject:v5 forKey:@"kCROutputRegionData"];
  [coderCopy encodeInteger:objc_msgSend(crCodableDataRepresentation forKey:{"length"), @"kCROutputRegionUncompressedDataSize"}];
}

- (CROutputRegion)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCROutputRegionData"];
  v6 = [coderCopy decodeIntegerForKey:@"kCROutputRegionUncompressedDataSize"];

  v7 = uncompressDataOfSize(v5, v6);
  v8 = [CROutputRegion outputRegionWithCRCodableDataRepresentation:v7];

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone copyChildren:(BOOL)children copyCandidates:(BOOL)candidates deepCopy:(BOOL)copy
{
  copyCopy = copy;
  candidatesCopy = candidates;
  childrenCopy = children;
  v11 = [objc_opt_class() allocWithZone:zone];
  confidence = [(CROutputRegion *)self confidence];
  [(CROutputRegion *)self baselineAngle];
  v13 = [v11 initWithConfidence:confidence baselineAngle:?];
  boundingQuad = [(CROutputRegion *)self boundingQuad];
  [v13 setBoundingQuad:boundingQuad];

  [(CROutputRegion *)self boundingQuadHomographySinceOCRDispatch];
  [v13 setBoundingQuadHomographySinceOCRDispatch:?];
  boundingQuadAtOCRDispatch = [(CROutputRegion *)self boundingQuadAtOCRDispatch];
  [v13 setBoundingQuadAtOCRDispatch:boundingQuadAtOCRDispatch];

  originalBoundingQuad = [(CROutputRegion *)self originalBoundingQuad];
  [v13 setOriginalBoundingQuad:originalBoundingQuad];

  [(CROutputRegion *)self boundingQuadHomography];
  [v13 setBoundingQuadHomography:?];
  homographyGroupID = [(CROutputRegion *)self homographyGroupID];
  [v13 setHomographyGroupID:homographyGroupID];

  [v13 setNumberOfLines:{-[CROutputRegion numberOfLines](self, "numberOfLines")}];
  [v13 setTextAlignment:{-[CROutputRegion textAlignment](self, "textAlignment")}];
  [v13 setGeometryInfo:self->_geometryInfo];
  polygon = [(CROutputRegion *)self polygon];
  v19 = [polygon copyWithZone:zone];
  [v13 setPolygon:v19];

  [v13 setConfidence:{-[CROutputRegion confidence](self, "confidence")}];
  [(CROutputRegion *)self rawConfidence];
  [v13 setRawConfidence:?];
  [(CROutputRegion *)self activationProbability];
  [v13 setActivationProbability:?];
  [(CROutputRegion *)self baselineAngle];
  [v13 setBaselineAngle:?];
  [v13 setShouldComputeBoundsFromChildren:{-[CROutputRegion shouldComputeBoundsFromChildren](self, "shouldComputeBoundsFromChildren")}];
  [v13 setShouldComputeTranscriptFromChildren:{-[CROutputRegion shouldComputeTranscriptFromChildren](self, "shouldComputeTranscriptFromChildren")}];
  [v13 setShouldComputeParagraphsFromChildren:{-[CROutputRegion shouldComputeParagraphsFromChildren](self, "shouldComputeParagraphsFromChildren")}];
  recognizedLocale = [(CROutputRegion *)self recognizedLocale];
  [v13 setRecognizedLocale:recognizedLocale];

  [v13 setLayoutDirection:{-[CROutputRegion layoutDirection](self, "layoutDirection")}];
  children = [(CROutputRegion *)self children];

  if (children && childrenCopy)
  {
    v22 = objc_alloc(MEMORY[0x1E695DEC8]);
    children2 = [(CROutputRegion *)self children];
    v24 = [v22 initWithArray:children2 copyItems:copyCopy];
    [v13 setChildren:v24];
  }

  else
  {
    [v13 setChildren:0];
  }

  candidates = [(CROutputRegion *)self candidates];

  if (candidates && candidatesCopy)
  {
    v26 = objc_alloc(MEMORY[0x1E695DEC8]);
    candidates2 = [(CROutputRegion *)self candidates];
    v28 = [v26 initWithArray:candidates2 copyItems:copyCopy];
    [v13 setCandidates:v28];
  }

  else
  {
    [v13 setCandidates:0];
  }

  [v13 setParagraphRegions:0];
  if (![(CROutputRegion *)self shouldComputeParagraphsFromChildren])
  {
    paragraphRegions = [(CROutputRegion *)self paragraphRegions];

    if (paragraphRegions)
    {
      v30 = objc_alloc(MEMORY[0x1E695DEC8]);
      paragraphRegions2 = [(CROutputRegion *)self paragraphRegions];
      v32 = [v30 initWithArray:paragraphRegions2 copyItems:copyCopy];
      [v13 setParagraphRegions:v32];
    }
  }

  if ([(CROutputRegion *)self shouldComputeTranscriptFromChildren]&& !childrenCopy)
  {
    text = [(CROutputRegion *)self text];
    [v13 setText:text];

    transcriptComponents = [(CROutputRegion *)self transcriptComponents];
    [v13 setTranscriptComponents:transcriptComponents];
LABEL_20:

    goto LABEL_21;
  }

  if ([(CROutputRegion *)self shouldComputeTranscriptFromChildren])
  {
    if (!childrenCopy)
    {
      transcriptComponents = [(CROutputRegion *)self text];
      [v13 setText:transcriptComponents];
      goto LABEL_20;
    }
  }

  else
  {
    text2 = [(CROutputRegion *)self text];
    [v13 setText:text2];

    transcriptComponents2 = [(CROutputRegion *)self transcriptComponents];

    if (transcriptComponents2)
    {
      v37 = objc_alloc(MEMORY[0x1E695DEC8]);
      transcriptComponents = [(CROutputRegion *)self transcriptComponents];
      v38 = [v37 initWithArray:transcriptComponents copyItems:0];
      [v13 setTranscriptComponents:v38];

      goto LABEL_20;
    }
  }

LABEL_21:
  uuid = [(CROutputRegion *)self uuid];
  [v13 setUuid:uuid];

  trackingID = [(CROutputRegion *)self trackingID];
  [v13 setTrackingID:trackingID];

  v41 = objc_alloc(MEMORY[0x1E695DEC8]);
  formFieldRegions = [(CROutputRegion *)self formFieldRegions];
  v43 = [v41 initWithArray:formFieldRegions copyItems:copyCopy];
  [v13 setFormFieldRegions:v43];

  v44 = objc_alloc(MEMORY[0x1E695DEC8]);
  tableRegions = [(CROutputRegion *)self tableRegions];
  v46 = [v44 initWithArray:tableRegions copyItems:copyCopy];
  [v13 setTableRegions:v46];

  return v13;
}

- (id)crCodableDataRepresentation
{
  v3 = objc_autoreleasePoolPush();
  v4 = objc_opt_new();
  [CRCodingUtilities appendInteger:11 toData:v4];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [CRCodingUtilities appendCodable:v6 toData:v4];

  [CRCodingUtilities appendBool:[(CROutputRegion *)self shouldComputeBoundsFromChildren] toData:v4];
  [CRCodingUtilities appendBool:[(CROutputRegion *)self shouldComputeTranscriptFromChildren] toData:v4];
  if (![(CROutputRegion *)self computesTranscriptFromChildren])
  {
    text = [(CROutputRegion *)self text];
    [CRCodingUtilities appendCodable:text toData:v4];
  }

  if (![(CROutputRegion *)self computesBoundsFromChildren])
  {
    boundingQuad = [(CROutputRegion *)self boundingQuad];
    [CRCodingUtilities appendCodable:boundingQuad toData:v4];
  }

  [CRCodingUtilities appendInteger:[(CROutputRegion *)self confidence] toData:v4];
  [(CROutputRegion *)self rawConfidence];
  [CRCodingUtilities appendFloat:v4 toData:?];
  [(CROutputRegion *)self baselineAngle];
  [CRCodingUtilities appendCGFloat:v4 toData:?];
  children = [(CROutputRegion *)self children];
  [CRCodingUtilities appendCodable:children toData:v4];

  candidates = [(CROutputRegion *)self candidates];
  [CRCodingUtilities appendCodable:candidates toData:v4];

  recognizedLocale = [(CROutputRegion *)self recognizedLocale];
  [CRCodingUtilities appendCodable:recognizedLocale toData:v4];

  [CRCodingUtilities appendInteger:[(CROutputRegion *)self layoutDirection] toData:v4];
  [CRCodingUtilities appendInteger:[(CROutputRegion *)self numberOfLines] toData:v4];
  formFieldRegions = [(CROutputRegion *)self formFieldRegions];
  [CRCodingUtilities appendCodable:formFieldRegions toData:v4];

  uuid = [(CROutputRegion *)self uuid];
  uUIDString = [uuid UUIDString];
  [CRCodingUtilities appendCodable:uUIDString toData:v4];

  [CRCodingUtilities appendInteger:[(CROutputRegion *)self textAlignment] toData:v4];
  tableRegions = [(CROutputRegion *)self tableRegions];
  [CRCodingUtilities appendCodable:tableRegions toData:v4];

  objc_autoreleasePoolPop(v3);

  return v4;
}

+ (id)outputRegionWithCRCodableDataRepresentation:(id)representation
{
  v15 = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  if (representationCopy)
  {
    v10 = 0;
    v4 = [CRCodingUtilities integerFromEncodingData:representationCopy offset:&v10];
    if ((v4 - 12) > 0xFFFFFFFFFFFFFFF4)
    {
      v5 = [CRCodingUtilities stringFromEncodingData:representationCopy offset:&v10];
      v7 = objc_opt_self();
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 3221225472;
      v12 = __46__CROutputRegion_decodableClassFromClassName___block_invoke;
      v13 = &__block_descriptor_40_e5_v8__0l;
      v14 = v7;
      if (qword_1ED960220 != -1)
      {
        dispatch_once(&qword_1ED960220, &buf);
      }

      v8 = [qword_1ED960218 objectForKeyedSubscript:v5];

      v6 = [[v8 alloc] initWithCRCodableDataRepresentation:representationCopy version:v4 offset:&v10];
    }

    else
    {
      v5 = CROSLogForCategory(0);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        LODWORD(buf) = 134217984;
        *(&buf + 4) = v4;
        _os_log_impl(&dword_1B40D2000, v5, OS_LOG_TYPE_FAULT, "Unexpected data version %ld for CROutputRegion decoding", &buf, 0xCu);
      }

      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (CROutputRegion)initWithCRCodableDataRepresentation:(id)representation version:(int64_t)version offset:(unint64_t *)offset
{
  v37 = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  if ((version - 12) > 0xFFFFFFFFFFFFFFF4)
  {
    v11 = [(CROutputRegion *)self init];
    if (v11)
    {
      v11->_shouldComputeBoundsFromChildren = [CRCodingUtilities BOOLFromEncodingData:representationCopy offset:offset];
      v12 = [CRCodingUtilities BOOLFromEncodingData:representationCopy offset:offset];
      v11->_shouldComputeTranscriptFromChildren = v12;
      if (!v12)
      {
        v13 = [CRCodingUtilities stringFromEncodingData:representationCopy offset:offset];
        text = v11->_text;
        v11->_text = v13;
      }

      if (!v11->_shouldComputeBoundsFromChildren)
      {
        v15 = [CRNormalizedQuad alloc];
        v16 = [CRCodingUtilities objectDataFromEncodingData:representationCopy offset:offset];
        v17 = [(CRNormalizedQuad *)v15 initWithCRCodableDataRepresentation:v16];
        boundingQuad = v11->_boundingQuad;
        v11->_boundingQuad = v17;
      }

      v11->_confidence = [CRCodingUtilities integerFromEncodingData:representationCopy offset:offset];
      [CRCodingUtilities floatFromEncodingData:representationCopy offset:offset];
      v11->_rawConfidence = v19;
      [CRCodingUtilities cgFloatFromEncodingData:representationCopy offset:offset];
      v11->_baselineAngle = v20;
      v21 = [CRCodingUtilities arrayFromEncodingData:representationCopy offset:offset objectProviderBlock:&__block_literal_global_104_0];
      children = v11->_children;
      v11->_children = v21;

      v23 = [CRCodingUtilities arrayFromEncodingData:representationCopy offset:offset objectProviderBlock:&__block_literal_global_104_0];
      candidates = v11->_candidates;
      v11->_candidates = v23;

      if (version < 2 || ([CRCodingUtilities stringFromEncodingData:representationCopy offset:offset], v25 = objc_claimAutoreleasedReturnValue(), recognizedLocale = v11->_recognizedLocale, v11->_recognizedLocale = v25, recognizedLocale, version < 6) || (v11->_layoutDirection = [CRCodingUtilities integerFromEncodingData:representationCopy offset:offset], version <= 7))
      {
        [(CROutputRegion *)v11 _computeNumberOfLines];
      }

      else
      {
        v11->_numberOfLines = [CRCodingUtilities integerFromEncodingData:representationCopy offset:offset];
        if (version != 8)
        {
          v27 = [CROutputRegion decodeOutputsArrayFromData:representationCopy offset:offset];
          formFieldRegions = v11->_formFieldRegions;
          v11->_formFieldRegions = v27;

          if (version >= 0xA)
          {
            v29 = [CRCodingUtilities stringFromEncodingData:representationCopy offset:offset];
            if (v29)
            {
              v30 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v29];
              uuid = v11->_uuid;
              v11->_uuid = v30;
            }

            v11->_textAlignment = [CRCodingUtilities integerFromEncodingData:representationCopy offset:offset];
            v32 = [CROutputRegion decodeOutputsArrayFromData:representationCopy offset:offset];
            tableRegions = v11->_tableRegions;
            v11->_tableRegions = v32;

            goto LABEL_20;
          }
        }
      }

      v11->_textAlignment = 0;
    }

LABEL_20:
    self = v11;
    selfCopy = self;
    goto LABEL_21;
  }

  v9 = CROSLogForCategory(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
  {
    v35 = 134217984;
    versionCopy = version;
    _os_log_impl(&dword_1B40D2000, v9, OS_LOG_TYPE_FAULT, "Unexpected data version %ld for CROutputRegion decoding", &v35, 0xCu);
  }

  selfCopy = 0;
LABEL_21:

  return selfCopy;
}

- (id)decodeOutputsArrayFromData:(uint64_t)data offset:(uint64_t)offset
{
  v2 = [CRCodingUtilities arrayFromEncodingData:data offset:offset objectProviderBlock:&__block_literal_global_104_0];

  return v2;
}

+ (id)decodableSubclasses
{
  if (qword_1ED960210 != -1)
  {
    dispatch_once(&qword_1ED960210, &__block_literal_global_26);
  }

  v3 = _MergedGlobals_31;

  return v3;
}

void __37__CROutputRegion_decodableSubclasses__block_invoke()
{
  v2[15] = *MEMORY[0x1E69E9840];
  v2[0] = objc_opt_class();
  v2[1] = objc_opt_class();
  v2[2] = objc_opt_class();
  v2[3] = objc_opt_class();
  v2[4] = objc_opt_class();
  v2[5] = objc_opt_class();
  v2[6] = objc_opt_class();
  v2[7] = objc_opt_class();
  v2[8] = objc_opt_class();
  v2[9] = objc_opt_class();
  v2[10] = objc_opt_class();
  v2[11] = objc_opt_class();
  v2[12] = objc_opt_class();
  v2[13] = objc_opt_class();
  v2[14] = objc_opt_class();
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:15];
  v1 = _MergedGlobals_31;
  _MergedGlobals_31 = v0;
}

void __46__CROutputRegion_decodableClassFromClassName___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [*(a1 + 32) decodableSubclasses];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = NSStringFromClass(v8);
        [v2 setObject:v8 forKeyedSubscript:v9];
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v10 = [v2 copy];
  v11 = qword_1ED960218;
  qword_1ED960218 = v10;
}

- (void)_overrideSetBoundingQuad:(id)quad
{
  [(CROutputRegion *)self setBoundingQuad:quad];

  [(CROutputRegion *)self setGeometryInfo:0];
}

- (void)_computeNumberOfLines
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  children = [(CROutputRegion *)self children];
  v4 = [children countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(children);
        }

        v6 += [*(*(&v9 + 1) + 8 * i) numberOfLines];
      }

      v5 = [children countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  [(CROutputRegion *)self setNumberOfLines:v6];
}

void __81__CROutputRegion__indexOfNearestRegionToPoint_regions_returnFirstMatch_distance___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = [a2 boundingQuad];
  [v7 shortestDistanceFromNormalizedPoint:{*(a1 + 48), *(a1 + 56)}];
  v9 = v8;

  v10 = *(*(a1 + 32) + 8);
  v11 = *(v10 + 24);
  if (v9 < v11 || v9 == v11 && (*(a1 + 64) & 1) == 0)
  {
    *(v10 + 24) = v9;
    *(*(*(a1 + 40) + 8) + 24) = a3;
  }

  if (v9 == 0.0 && *(a1 + 64) == 1)
  {
    *a4 = 1;
  }
}

- (CRRegionGeometryInfo)geometryInfo
{
  geometryInfo = self->_geometryInfo;
  if (!geometryInfo)
  {
    [(CROutputRegion *)self _computeGeometryInfo];
    geometryInfo = self->_geometryInfo;
  }

  return geometryInfo;
}

- (void)_computeGeometryInfo
{
  v3 = [[CRRegionGeometryInfo alloc] initFromRegion:self layoutDirection:self->_layoutDirection];
  geometryInfo = self->_geometryInfo;
  self->_geometryInfo = v3;
}

- (__n128)setBoundingQuadHomography:(__n128)homography
{
  result[16] = a2;
  result[17] = homography;
  result[18] = a4;
  return result;
}

- (void)setBoundingQuadHomographySinceOCRDispatch:(__n128)dispatch
{
  v4[0] = a2;
  v4[1] = dispatch;
  v4[2] = a4;
  objc_copyStruct((self + 304), v4, 48, 1, 0);
}

@end