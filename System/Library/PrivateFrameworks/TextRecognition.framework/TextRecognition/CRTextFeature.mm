@interface CRTextFeature
+ (id)lineFeatures:(id)features imageWidth:(unint64_t)width imageHeight:(unint64_t)height;
+ (id)overlayFeatures:(id)features onImage:(id)image showSubFeatures:(BOOL)subFeatures;
+ (id)overlayFeaturesPolygonVertices:(id)vertices onImage:(id)image showSubFeatures:(BOOL)features;
+ (id)overlayFeaturesQuadVertices:(id)vertices onImage:(id)image showSubFeatures:(BOOL)features;
+ (id)sortedTextFeaturesByAspectRatio:(id)ratio imageSize:(CGSize)size;
- (CGPoint)baselineOrigin;
- (CGPoint)bottomLeft;
- (CGPoint)bottomRight;
- (CGPoint)topLeft;
- (CGPoint)topRight;
- (CGPoint)toplineOrigin;
- (CGRect)bounds;
- (CGSize)originalImageSize;
- (CGSize)sizeForImageSize:(CGSize)size;
- (CRNormalizedQuad)boundingQuad;
- (CRTextFeature)init;
- (CRTextFeature)initWithCCFeatureRect:(id)rect subFeatureRects:(id)rects rotatePortrait:(BOOL)portrait;
- (CRTextFeature)initWithCoder:(id)coder;
- (CRTextFeature)initWithFeatureRect:(CGRect)rect inImage:(id)image;
- (CRTextFeature)initWithFeatureRect:(id)rect subFeatureRects:(id)rects;
- (CRTextFeature)initWithFeatureRect:(id)rect subFeatureRects:(id)rects inImage:(id)image;
- (CRTextFeature)initWithSubfeatures:(id)subfeatures stringValue:(id)value;
- (CRTextFeature)initWithTopLeft:(CGPoint)left topRight:(CGPoint)right bottomLeft:(CGPoint)bottomLeft bottomRight:(CGPoint)bottomRight;
- (NSLocale)locale;
- (NSString)description;
- (double)confidenceScore;
- (float)aspectRatioWithImageSize:(CGSize)size;
- (float)calculateTextBoxHeightForImageWidth:(unint64_t)width imageHeight:(unint64_t)height;
- (float)caseInsensitiveProbabilityCandidateIndex:(int)index;
- (id)copyWithZone:(_NSZone *)zone;
- (id)createCharacterSubFeaturesForCandidateAtIndex:(int64_t)index;
- (id)createCharacterSubFeaturesForCandidateAtIndex:(int64_t)index topWhiteSpacePoints:(id)points bottomWhiteSpacePoints:(id)spacePoints falsePositiveFiltering:(BOOL)filtering;
- (id)createSubFeaturesFromStringsForCandidateAtIndex:(int64_t)index topWhiteSpacePoints:(id)points bottomWhiteSpacePoints:(id)spacePoints hasBoundarySpacePoints:(BOOL)boundarySpacePoints hasCharacterAndWordBoundaries:(BOOL)boundaries;
- (id)textFeatureScaledToImage:(id)image;
- (id)textFeatureScaledToImageWidth:(float)width height:(float)height;
- (id)textFeatureSplitForStringValue:(id)value;
- (id)textFeaturebyPaddingToWidth:(float)width height:(float)height;
- (id)wordFeatures;
- (unint64_t)subFeatureType;
- (unint64_t)textRegionType;
- (void)addKohlsDigitProjection;
- (void)adjustBoundsBasedOnSubfeaturesForImageSize:(CGSize)size;
- (void)appendTextFeature:(id)feature imageSize:(CGSize)size;
- (void)encodeWithCoder:(id)coder;
- (void)flipHorizontally;
- (void)mergeWithLine:(id)line;
- (void)scale:(CGPoint)scale offset:(CGPoint)offset;
- (void)setBaselineOrigin:(CGPoint)origin toplineOrigin:(CGPoint)toplineOrigin slope:(float)slope;
- (void)setSelectedLocale:(id)locale includeSubfeatures:(BOOL)subfeatures;
- (void)setSelectedScriptCategory:(id)category includeSubfeatures:(BOOL)subfeatures;
- (void)setStringValue:(id)value;
- (void)setStringValueByReplacingCharactersInSet:(id)set withString:(id)string;
- (void)updateSizeHints;
@end

@implementation CRTextFeature

- (CRTextFeature)init
{
  v3.receiver = self;
  v3.super_class = CRTextFeature;
  return [(CRTextFeature *)&v3 init];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_subFeatures forKey:@"subFeatures"];
  [coderCopy encodePoint:@"topLeft" forKey:{self->_topLeft.x, self->_topLeft.y}];
  [coderCopy encodePoint:@"topRight" forKey:{self->_topRight.x, self->_topRight.y}];
  [coderCopy encodePoint:@"bottomLeft" forKey:{self->_bottomLeft.x, self->_bottomLeft.y}];
  [coderCopy encodePoint:@"bottomRight" forKey:{self->_bottomRight.x, self->_bottomRight.y}];
  [coderCopy encodeRect:@"bounds" forKey:{self->_bounds.origin.x, self->_bounds.origin.y, self->_bounds.size.width, self->_bounds.size.height}];
  [coderCopy encodePoint:@"toplineOrigin" forKey:{self->_toplineOrigin.x, self->_toplineOrigin.y}];
  [coderCopy encodePoint:@"baselineOrigin" forKey:{self->_baselineOrigin.x, self->_baselineOrigin.y}];
  [coderCopy encodeObject:self->_stringValue forKey:@"stringValue"];
  *&v4 = self->_baselineAngle;
  v5 = [MEMORY[0x1E696AD98] numberWithFloat:v4];
  [coderCopy encodeObject:v5 forKey:@"baselineAngle"];

  *&v6 = self->_textlineHeight;
  v7 = [MEMORY[0x1E696AD98] numberWithFloat:v6];
  [coderCopy encodeObject:v7 forKey:@"textlineHeight"];

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:self->_bestCandidateIndex];
  [coderCopy encodeObject:v8 forKey:@"bestCandidateIndex"];

  v9 = [MEMORY[0x1E696AD98] numberWithInteger:self->_type];
  [coderCopy encodeObject:v9 forKey:@"type"];

  [coderCopy encodeObject:self->_polygon forKey:@"polygon"];
  v10 = [MEMORY[0x1E696AD98] numberWithBool:self->_lineWrappingType != 0];
  [coderCopy encodeObject:v10 forKey:@"lineWrappingType"];

  v11 = [MEMORY[0x1E696AD98] numberWithBool:self->_nmsOutputScale != 0];
  [coderCopy encodeObject:v11 forKey:@"nmsOutputScale"];

  v12 = [MEMORY[0x1E696AD98] numberWithBool:self->_textType != 0];
  [coderCopy encodeObject:v12 forKey:@"textType"];

  v13 = [MEMORY[0x1E696AD98] numberWithBool:self->_whitespaceInjected];
  [coderCopy encodeObject:v13 forKey:@"whitespaceInjected"];
}

- (CRTextFeature)initWithCoder:(id)coder
{
  coderCopy = coder;
  v24.receiver = self;
  v24.super_class = CRTextFeature;
  v5 = [(CRTextFeature *)&v24 init];
  v6 = [coderCopy decodeObjectForKey:@"subFeatures"];
  [(CRTextFeature *)v5 setSubFeatures:v6];

  [coderCopy decodePointForKey:@"topRight"];
  [(CRTextFeature *)v5 setTopRight:?];
  [coderCopy decodePointForKey:@"topLeft"];
  [(CRTextFeature *)v5 setTopLeft:?];
  [coderCopy decodePointForKey:@"bottomLeft"];
  [(CRTextFeature *)v5 setBottomLeft:?];
  [coderCopy decodePointForKey:@"bottomRight"];
  [(CRTextFeature *)v5 setBottomRight:?];
  [coderCopy decodeRectForKey:@"bounds"];
  [(CRTextFeature *)v5 setBounds:?];
  v7 = [coderCopy decodeObjectForKey:@"stringValue"];
  [(CRTextFeature *)v5 setStringValue:v7];

  v8 = [coderCopy decodeObjectForKey:@"baselineAngle"];
  [v8 floatValue];
  v5->_baselineAngle = v9;

  [coderCopy decodePointForKey:@"toplineOrigin"];
  v5->_toplineOrigin.x = v10;
  v5->_toplineOrigin.y = v11;
  [coderCopy decodePointForKey:@"baselineOrigin"];
  v5->_baselineOrigin.x = v12;
  v5->_baselineOrigin.y = v13;
  v14 = [coderCopy decodeObjectForKey:@"textlineHeight"];
  [v14 floatValue];
  [(CRTextFeature *)v5 setTextlineHeight:?];

  v15 = [coderCopy decodeObjectForKey:@"bestCandidateIndex"];
  -[CRTextFeature setBestCandidateIndex:](v5, "setBestCandidateIndex:", [v15 integerValue]);

  v16 = [coderCopy decodeObjectForKey:@"type"];
  -[CRTextFeature setType:](v5, "setType:", [v16 unsignedIntegerValue]);

  uUID = [MEMORY[0x1E696AFB0] UUID];
  [(CRTextFeature *)v5 setUuid:uUID];

  v18 = [coderCopy decodeObjectForKey:@"polygon"];
  [(CRTextFeature *)v5 setPolygon:v18];

  v19 = [coderCopy decodeObjectForKey:@"lineWrappingType"];
  -[CRTextFeature setLineWrappingType:](v5, "setLineWrappingType:", [v19 unsignedIntegerValue]);

  v20 = [coderCopy decodeObjectForKey:@"nmsOutputScale"];
  -[CRTextFeature setNmsOutputScale:](v5, "setNmsOutputScale:", [v20 unsignedIntegerValue]);

  v21 = [coderCopy decodeObjectForKey:@"textType"];
  -[CRTextFeature setTextType:](v5, "setTextType:", [v21 unsignedIntegerValue]);

  v22 = [coderCopy decodeObjectForKey:@"whitespaceInjected"];
  -[CRTextFeature setWhitespaceInjected:](v5, "setWhitespaceInjected:", [v22 BOOLValue]);

  return v5;
}

- (CRTextFeature)initWithTopLeft:(CGPoint)left topRight:(CGPoint)right bottomLeft:(CGPoint)bottomLeft bottomRight:(CGPoint)bottomRight
{
  y = bottomRight.y;
  x = bottomRight.x;
  v8 = bottomLeft.y;
  v9 = bottomLeft.x;
  v10 = right.y;
  v11 = right.x;
  v12 = left.y;
  v13 = left.x;
  v27 = *MEMORY[0x1E69E9840];
  v19.receiver = self;
  v19.super_class = CRTextFeature;
  v14 = [(CRTextFeature *)&v19 init];
  if (v14)
  {
    points.x = v13;
    points.y = v12;
    v21 = v11;
    v22 = v10;
    v23 = x;
    v24 = y;
    v25 = v9;
    v26 = v8;
    Mutable = CGPathCreateMutable();
    CGPathAddLines(Mutable, 0, &points, 4uLL);
    PathBoundingBox = CGPathGetPathBoundingBox(Mutable);
    [(CRTextFeature *)v14 setBounds:PathBoundingBox.origin.x, PathBoundingBox.origin.y, PathBoundingBox.size.width, PathBoundingBox.size.height];
    [(CRTextFeature *)v14 setTopLeft:v13, v12];
    [(CRTextFeature *)v14 setTopRight:v11, v10];
    [(CRTextFeature *)v14 setBottomLeft:v9, v8];
    [(CRTextFeature *)v14 setBottomRight:x, y];
    [(CRTextFeature *)v14 setShouldExpandToFullWidth:0];
    zero = [MEMORY[0x1E696AB90] zero];
    [(CRTextFeature *)v14 setConfidence:zero];

    [(CRTextFeature *)v14 setSubFeatures:0];
    [(CRTextFeature *)v14 setType:0];
    CGPathRelease(Mutable);
    uUID = [MEMORY[0x1E696AFB0] UUID];
    [(CRTextFeature *)v14 setUuid:uUID];

    [(CRTextFeature *)v14 setPolygon:0];
    [(CRTextFeature *)v14 setLineWrappingType:0];
    [(CRTextFeature *)v14 setNmsOutputScale:0];
    [(CRTextFeature *)v14 setTextType:0];
  }

  return v14;
}

- (unint64_t)subFeatureType
{
  subFeatures = [(CRTextFeature *)self subFeatures];
  v4 = [subFeatures count];

  if (!v4)
  {
    return 0;
  }

  subFeatures2 = [(CRTextFeature *)self subFeatures];
  firstObject = [subFeatures2 firstObject];
  type = [firstObject type];

  return type;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v51 = *MEMORY[0x1E69E9840];
  v5 = [+[CRTextFeature allocWithZone:](CRTextFeature init];
  [(CRTextFeature *)self bounds];
  [(CRTextFeature *)v5 setBounds:?];
  [(CRTextFeature *)self bottomLeft];
  [(CRTextFeature *)v5 setBottomLeft:?];
  [(CRTextFeature *)self bottomRight];
  [(CRTextFeature *)v5 setBottomRight:?];
  [(CRTextFeature *)self topLeft];
  [(CRTextFeature *)v5 setTopLeft:?];
  [(CRTextFeature *)self topRight];
  [(CRTextFeature *)v5 setTopRight:?];
  array = [MEMORY[0x1E695DF70] array];
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  subFeatures = [(CRTextFeature *)self subFeatures];
  v8 = [subFeatures countByEnumeratingWithState:&v46 objects:v50 count:16];
  if (v8)
  {
    v9 = *v47;
    do
    {
      v10 = 0;
      do
      {
        if (*v47 != v9)
        {
          objc_enumerationMutation(subFeatures);
        }

        v11 = [*(*(&v46 + 1) + 8 * v10) copy];
        [array addObject:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [subFeatures countByEnumeratingWithState:&v46 objects:v50 count:16];
    }

    while (v8);
  }

  [(CRTextFeature *)v5 setSubFeatures:array];
  [(CRTextFeature *)v5 setShouldExpandToFullWidth:[(CRTextFeature *)self shouldExpandToFullWidth]];
  stringValue = [(CRTextFeature *)self stringValue];
  [(CRTextFeature *)v5 setStringValue:stringValue];

  imageCut = [(CRTextFeature *)self imageCut];
  [(CRTextFeature *)v5 setImageCut:imageCut];

  stringValueCandidates = [(CRTextFeature *)self stringValueCandidates];
  v15 = [stringValueCandidates copyWithZone:zone];
  [(CRTextFeature *)v5 setStringValueCandidates:v15];

  subFeatureCandidates = [(CRTextFeature *)self subFeatureCandidates];
  v17 = [subFeatureCandidates copyWithZone:zone];
  [(CRTextFeature *)v5 setSubFeatureCandidates:v17];

  candidateProbs = [(CRTextFeature *)self candidateProbs];
  v19 = [candidateProbs copyWithZone:zone];
  [(CRTextFeature *)v5 setCandidateProbs:v19];

  gtStringValue = [(CRTextFeature *)self gtStringValue];
  [(CRTextFeature *)v5 setGtStringValue:gtStringValue];

  confidence = [(CRTextFeature *)self confidence];
  [(CRTextFeature *)v5 setConfidence:confidence];

  [(CRTextFeature *)v5 setFeatureMapID:[(CRTextFeature *)self featureMapID]];
  [(CRTextFeature *)v5 setBestCandidateIndex:[(CRTextFeature *)self bestCandidateIndex]];
  [(CRTextFeature *)self textlineHeight];
  [(CRTextFeature *)v5 setTextlineHeight:?];
  [(CRTextFeature *)self baselineOrigin];
  v23 = v22;
  v25 = v24;
  [(CRTextFeature *)self toplineOrigin];
  v27 = v26;
  v29 = v28;
  [(CRTextFeature *)self baselineAngle];
  LODWORD(v31) = v30;
  [(CRTextFeature *)v5 setBaselineOrigin:v23 toplineOrigin:v25 slope:v27, v29, v31];
  [(CRTextFeature *)v5 setSizeHint:[(CRTextFeature *)self sizeHint]];
  v32 = objc_alloc(MEMORY[0x1E695DEC8]);
  scriptCategoryResults = [(CRTextFeature *)self scriptCategoryResults];
  v34 = [v32 initWithArray:scriptCategoryResults copyItems:1];
  [(CRTextFeature *)v5 setScriptCategoryResults:v34];

  v35 = MEMORY[0x1E695DF20];
  scriptCounts = [(CRTextFeature *)self scriptCounts];
  v37 = [v35 dictionaryWithDictionary:scriptCounts];
  [(CRTextFeature *)v5 setScriptCounts:v37];

  selectedLocale = [(CRTextFeature *)self selectedLocale];
  v39 = [selectedLocale copyWithZone:zone];
  [(CRTextFeature *)v5 setSelectedLocale:v39];

  sequenceScriptOutputResult = [(CRTextFeature *)self sequenceScriptOutputResult];
  v41 = [sequenceScriptOutputResult copyWithZone:zone];
  [(CRTextFeature *)v5 setSequenceScriptOutputResult:v41];

  [(CRTextFeature *)v5 setIsCurved:[(CRTextFeature *)self isCurved]];
  [(CRTextFeature *)v5 setIsVerticalLayout:[(CRTextFeature *)self isVerticalLayout]];
  [(CRTextFeature *)v5 setShouldRotate180:[(CRTextFeature *)self shouldRotate180]];
  [(CRTextFeature *)v5 setShouldRotate180DetectorOrientationFallBack:[(CRTextFeature *)self shouldRotate180DetectorOrientationFallBack]];
  [(CRTextFeature *)v5 setUseSequenceOrientation:[(CRTextFeature *)self useSequenceOrientation]];
  [(CRTextFeature *)v5 setUseSequenceScriptLocale:[(CRTextFeature *)self useSequenceScriptLocale]];
  [(CRTextFeature *)v5 setAppliedOrientationCorrection:[(CRTextFeature *)self appliedOrientationCorrection]];
  [(CRTextFeature *)v5 setWhitespaceInjected:[(CRTextFeature *)self whitespaceInjected]];
  [(CRTextFeature *)v5 setType:[(CRTextFeature *)self type]];
  uuid = [(CRTextFeature *)self uuid];
  [(CRTextFeature *)v5 setUuid:uuid];

  [(CRTextFeature *)v5 setFeatureID:[(CRTextFeature *)self featureID]];
  polygon = [(CRTextFeature *)self polygon];
  v44 = [polygon copyWithZone:zone];
  [(CRTextFeature *)v5 setPolygon:v44];

  [(CRTextFeature *)v5 setLineWrappingType:[(CRTextFeature *)self lineWrappingType]];
  [(CRTextFeature *)v5 setNmsOutputScale:[(CRTextFeature *)self nmsOutputScale]];
  [(CRTextFeature *)v5 setTextType:[(CRTextFeature *)self textType]];

  return v5;
}

- (NSString)description
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  uuid = [(CRTextFeature *)self uuid];
  uUIDString = [uuid UUIDString];
  [v3 appendFormat:@"CRTextFeature (%@)\n", uUIDString];

  stringValue = [(CRTextFeature *)self stringValue];
  [v3 appendFormat:@"stringValue: '%@'\n", stringValue];

  [v3 appendFormat:@"type: %ld\n", -[CRTextFeature type](self, "type")];
  [v3 appendFormat:@"subFeatureType: %ld\n", -[CRTextFeature subFeatureType](self, "subFeatureType")];
  selectedLocale = [(CRTextFeature *)self selectedLocale];
  [v3 appendFormat:@"selectedLocale: %@\n", selectedLocale];

  confidence = [(CRTextFeature *)self confidence];
  [confidence floatValue];
  [v3 appendFormat:@"confidence: %lf\n", v9];

  [(CRTextFeature *)self topLeft];
  v11 = v10;
  [(CRTextFeature *)self topLeft];
  [v3 appendFormat:@"topLeft: (%lf, %lf)\n", v11, v12];
  subFeatures = [(CRTextFeature *)self subFeatures];
  v14 = [subFeatures count];

  if (v14)
  {
    [v3 appendString:@"subFeatures:\n"];
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    obj = [(CRTextFeature *)self subFeatures];
    v15 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v15)
    {
      v16 = *v31;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v31 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v30 + 1) + 8 * i);
          v26 = 0u;
          v27 = 0u;
          v28 = 0u;
          v29 = 0u;
          v19 = [v18 description];
          v20 = [v19 componentsSeparatedByString:@"\n"];

          v21 = [v20 countByEnumeratingWithState:&v26 objects:v34 count:16];
          if (v21)
          {
            v22 = *v27;
            do
            {
              for (j = 0; j != v21; ++j)
              {
                if (*v27 != v22)
                {
                  objc_enumerationMutation(v20);
                }

                [v3 appendFormat:@"  %@\n", *(*(&v26 + 1) + 8 * j)];
              }

              v21 = [v20 countByEnumeratingWithState:&v26 objects:v34 count:16];
            }

            while (v21);
          }
        }

        v15 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v15);
    }
  }

  return v3;
}

- (CRTextFeature)initWithFeatureRect:(id)rect subFeatureRects:(id)rects
{
  v32 = *MEMORY[0x1E69E9840];
  rectCopy = rect;
  rectsCopy = rects;
  v30.receiver = self;
  v30.super_class = CRTextFeature;
  v8 = [(CRTextFeature *)&v30 init];
  if (v8)
  {
    v33 = NSRectFromString(rectCopy);
    x = v33.origin.x;
    y = v33.origin.y;
    width = v33.size.width;
    height = v33.size.height;
    [(CRTextFeature *)v8 setBounds:?];
    [(CRTextFeature *)v8 setTopLeft:x, y];
    v13 = x + width;
    [(CRTextFeature *)v8 setTopRight:v13, y];
    v14 = y + height;
    [(CRTextFeature *)v8 setBottomLeft:x, v14];
    [(CRTextFeature *)v8 setBottomRight:v13, v14];
    zero = [MEMORY[0x1E696AB90] zero];
    [(CRTextFeature *)v8 setConfidence:zero];

    if (rectsCopy)
    {
      array = [MEMORY[0x1E695DF70] array];
    }

    else
    {
      array = 0;
    }

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v17 = rectsCopy;
    v18 = [v17 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v18)
    {
      v19 = *v27;
      do
      {
        v20 = 0;
        do
        {
          if (*v27 != v19)
          {
            objc_enumerationMutation(v17);
          }

          v21 = *(*(&v26 + 1) + 8 * v20);
          v22 = [CRTextFeature alloc];
          v23 = [(CRTextFeature *)v22 initWithFeatureRect:v21 subFeatureRects:0, v26];
          [array addObject:v23];

          ++v20;
        }

        while (v18 != v20);
        v18 = [v17 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v18);
    }

    [(CRTextFeature *)v8 setSubFeatures:array];
    [(CRTextFeature *)v8 setType:0];
    uUID = [MEMORY[0x1E696AFB0] UUID];
    [(CRTextFeature *)v8 setUuid:uUID];

    [(CRTextFeature *)v8 setPolygon:0];
    [(CRTextFeature *)v8 setLineWrappingType:0];
    [(CRTextFeature *)v8 setNmsOutputScale:0];
    [(CRTextFeature *)v8 setTextType:0];
  }

  return v8;
}

- (CRTextFeature)initWithFeatureRect:(id)rect subFeatureRects:(id)rects inImage:(id)image
{
  v25 = *MEMORY[0x1E69E9840];
  rectCopy = rect;
  rectsCopy = rects;
  imageCopy = image;
  v19 = rectCopy;
  v26 = NSRectFromString(rectCopy);
  v11 = [(CRTextFeature *)self initWithFeatureRect:imageCopy inImage:v26.origin.x, v26.origin.y, v26.size.width, v26.size.height];
  if (v11)
  {
    if (rectsCopy)
    {
      array = [MEMORY[0x1E695DF70] array];
    }

    else
    {
      array = 0;
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v13 = rectsCopy;
    v14 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v14)
    {
      v15 = *v21;
      do
      {
        v16 = 0;
        do
        {
          if (*v21 != v15)
          {
            objc_enumerationMutation(v13);
          }

          v17 = [[CRTextFeature alloc] initWithFeatureRect:*(*(&v20 + 1) + 8 * v16) subFeatureRects:0 inImage:imageCopy];
          [array addObject:v17];

          ++v16;
        }

        while (v14 != v16);
        v14 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v14);
    }

    [(CRTextFeature *)v11 setSubFeatures:array];
  }

  return v11;
}

- (CRTextFeature)initWithCCFeatureRect:(id)rect subFeatureRects:(id)rects rotatePortrait:(BOOL)portrait
{
  portraitCopy = portrait;
  v34 = *MEMORY[0x1E69E9840];
  aString = rect;
  rectsCopy = rects;
  v32.receiver = self;
  v32.super_class = CRTextFeature;
  v9 = [(CRTextFeature *)&v32 init];
  if (v9)
  {
    NSRectFromString(aString);
    v35 = NSRectFromString(aString);
    v10 = 54.05;
    if (portraitCopy)
    {
      v11 = 85.685;
    }

    else
    {
      v11 = 54.05;
    }

    if (!portraitCopy)
    {
      v10 = 85.685;
    }

    v12 = v35.size.height / v11;
    v13 = 1.0 - v35.origin.y / v11 - v35.size.height / v11;
    v14 = v35.origin.x / v10;
    v15 = v35.size.width / v10;
    [(CRTextFeature *)v9 setBounds:v35.origin.x / v10, v13, v35.size.width / v10, v35.size.height / v11];
    [(CRTextFeature *)v9 setTopLeft:v14, v13];
    v16 = v14 + v15;
    [(CRTextFeature *)v9 setTopRight:v16, v13];
    v17 = v12 + v13;
    [(CRTextFeature *)v9 setBottomLeft:v14, v17];
    [(CRTextFeature *)v9 setBottomRight:v16, v17];
    zero = [MEMORY[0x1E696AB90] zero];
    [(CRTextFeature *)v9 setConfidence:zero];

    if (rectsCopy)
    {
      array = [MEMORY[0x1E695DF70] array];
    }

    else
    {
      array = 0;
    }

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v20 = rectsCopy;
    v21 = [v20 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v21)
    {
      v22 = *v29;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v29 != v22)
          {
            objc_enumerationMutation(v20);
          }

          v24 = [[CRTextFeature alloc] initWithCCFeatureRect:*(*(&v28 + 1) + 8 * i) subFeatureRects:0 rotatePortrait:portraitCopy];
          [array addObject:v24];
        }

        v21 = [v20 countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v21);
    }

    [(CRTextFeature *)v9 setSubFeatures:array];
    [(CRTextFeature *)v9 setType:0];
    uUID = [MEMORY[0x1E696AFB0] UUID];
    [(CRTextFeature *)v9 setUuid:uUID];

    [(CRTextFeature *)v9 setPolygon:0];
    [(CRTextFeature *)v9 setLineWrappingType:0];
    [(CRTextFeature *)v9 setNmsOutputScale:0];
    [(CRTextFeature *)v9 setTextType:0];
  }

  return v9;
}

- (CRTextFeature)initWithSubfeatures:(id)subfeatures stringValue:(id)value
{
  subfeaturesCopy = subfeatures;
  valueCopy = value;
  v26.receiver = self;
  v26.super_class = CRTextFeature;
  v8 = [(CRTextFeature *)&v26 init];
  if (v8)
  {
    v9 = [subfeaturesCopy objectAtIndex:0];
    [v9 bounds];
    x = v10;
    y = v12;
    width = v14;
    height = v16;

    for (i = 1; [subfeaturesCopy count] > i; ++i)
    {
      v19 = [subfeaturesCopy objectAtIndex:i];
      [v19 bounds];
      v35.origin.x = v20;
      v35.origin.y = v21;
      v35.size.width = v22;
      v35.size.height = v23;
      v27.origin.x = x;
      v27.origin.y = y;
      v27.size.width = width;
      v27.size.height = height;
      v28 = CGRectUnion(v27, v35);
      x = v28.origin.x;
      y = v28.origin.y;
      width = v28.size.width;
      height = v28.size.height;
    }

    [(CRTextFeature *)v8 setTopLeft:x, y];
    v29.origin.x = x;
    v29.origin.y = y;
    v29.size.width = width;
    v29.size.height = height;
    v30 = CGRectOffset(v29, 0.0, width);
    [(CRTextFeature *)v8 setTopRight:v30.origin.x, v30.origin.y, v30.size.width, v30.size.height];
    v31.origin.x = x;
    v31.origin.y = y;
    v31.size.width = width;
    v31.size.height = height;
    v32 = CGRectOffset(v31, height, width);
    [(CRTextFeature *)v8 setBottomRight:v32.origin.x, v32.origin.y, v32.size.width, v32.size.height];
    v33.origin.x = x;
    v33.origin.y = y;
    v33.size.width = width;
    v33.size.height = height;
    v34 = CGRectOffset(v33, height, 0.0);
    [(CRTextFeature *)v8 setBottomLeft:v34.origin.x, v34.origin.y, v34.size.width, v34.size.height];
    [(CRTextFeature *)v8 setBounds:x, y, width, height];
    [(CRTextFeature *)v8 setSubFeatures:subfeaturesCopy];
    [(CRTextFeature *)v8 setStringValue:valueCopy];
    [(CRTextFeature *)v8 setType:0];
    uUID = [MEMORY[0x1E696AFB0] UUID];
    [(CRTextFeature *)v8 setUuid:uUID];

    [(CRTextFeature *)v8 setPolygon:0];
    [(CRTextFeature *)v8 setLineWrappingType:0];
    [(CRTextFeature *)v8 setNmsOutputScale:0];
    [(CRTextFeature *)v8 setTextType:0];
  }

  return v8;
}

- (CRTextFeature)initWithFeatureRect:(CGRect)rect inImage:(id)image
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  imageCopy = image;
  v50.receiver = self;
  v50.super_class = CRTextFeature;
  v10 = [(CRTextFeature *)&v50 init];
  if (v10)
  {
    [imageCopy extent];
    v12 = v11;
    [imageCopy extent];
    v13 = v12;
    v15 = v14;
    [(CRTextFeature *)v10 setBounds:x / v13, y / v15, width / v13, height / v15];
    [(CRTextFeature *)v10 bounds];
    [(CRTextFeature *)v10 setTopLeft:?];
    [(CRTextFeature *)v10 bounds];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
    [(CRTextFeature *)v10 bounds];
    v25 = v24;
    v51.origin.x = v17;
    v51.origin.y = v19;
    v51.size.width = v21;
    v51.size.height = v23;
    v52 = CGRectOffset(v51, 0.0, v25);
    [(CRTextFeature *)v10 setTopRight:v52.origin.x, v52.origin.y, v52.size.width, v52.size.height];
    [(CRTextFeature *)v10 bounds];
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;
    [(CRTextFeature *)v10 bounds];
    v35 = v34;
    [(CRTextFeature *)v10 bounds];
    v37 = v36;
    v53.origin.x = v27;
    v53.origin.y = v29;
    v53.size.width = v31;
    v53.size.height = v33;
    v54 = CGRectOffset(v53, v35, v37);
    [(CRTextFeature *)v10 setBottomRight:v54.origin.x, v54.origin.y, v54.size.width, v54.size.height];
    [(CRTextFeature *)v10 bounds];
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v45 = v44;
    [(CRTextFeature *)v10 bounds];
    v47 = v46;
    v55.origin.x = v39;
    v55.origin.y = v41;
    v55.size.width = v43;
    v55.size.height = v45;
    v56 = CGRectOffset(v55, v47, 0.0);
    [(CRTextFeature *)v10 setBottomLeft:v56.origin.x, v56.origin.y, v56.size.width, v56.size.height];
    [(CRTextFeature *)v10 setType:0];
    uUID = [MEMORY[0x1E696AFB0] UUID];
    [(CRTextFeature *)v10 setUuid:uUID];

    [(CRTextFeature *)v10 setPolygon:0];
    [(CRTextFeature *)v10 setLineWrappingType:0];
    [(CRTextFeature *)v10 setNmsOutputScale:0];
    [(CRTextFeature *)v10 setTextType:0];
  }

  return v10;
}

- (id)textFeatureSplitForStringValue:(id)value
{
  v34[1] = *MEMORY[0x1E69E9840];
  valueCopy = value;
  if (valueCopy && [valueCopy containsString:@" "] && (objc_msgSend(valueCopy, "stringByReplacingOccurrencesOfString:withString:", @" ", &stru_1F2BB4348), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "length"), -[CRTextFeature subFeatures](self, "subFeatures"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "count"), v6, v4, v5 == v7))
  {
    array = [MEMORY[0x1E695DF70] array];
    [valueCopy componentsSeparatedByString:@" "];
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    obj = v29 = 0u;
    v8 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v8)
    {
      v9 = 0;
      v10 = *v29;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v29 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v28 + 1) + 8 * i);
          if (([v12 isEqualToString:&stru_1F2BB4348] & 1) == 0)
          {
            v13 = [v12 length];
            subFeatures = [(CRTextFeature *)self subFeatures];
            v15 = v13 + v9 > [subFeatures count];

            if (v15)
            {
              goto LABEL_14;
            }

            v16 = objc_alloc(MEMORY[0x1E695DEC8]);
            subFeatures2 = [(CRTextFeature *)self subFeatures];
            v18 = [subFeatures2 subarrayWithRange:{v9, v13}];
            v19 = [v16 initWithArray:v18 copyItems:1];

            v20 = [[CRTextFeature alloc] initWithSubfeatures:v19 stringValue:v12];
            [array addObject:v20];
            LODWORD(v18) = [v12 length];

            v9 += v18;
          }
        }

        v8 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v8);
    }

LABEL_14:

    v21 = obj;
  }

  else
  {
    stringValue = [(CRTextFeature *)self stringValue];
    v23 = [valueCopy isEqualToString:stringValue];

    if (v23)
    {
      v34[0] = self;
      array = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:1];
      goto LABEL_19;
    }

    v21 = [(CRTextFeature *)self copy];
    [v21 setStringValue:valueCopy];
    v33 = v21;
    array = [MEMORY[0x1E695DEC8] arrayWithObjects:&v33 count:1];
  }

LABEL_19:

  return array;
}

- (id)wordFeatures
{
  v49[1] = *MEMORY[0x1E69E9840];
  stringValue = [(CRTextFeature *)self stringValue];
  v4 = [stringValue rangeOfString:@" "];

  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v49[0] = self;
    array = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:1];
    goto LABEL_27;
  }

  for (i = 0; ; ++i)
  {
    stringValue2 = [(CRTextFeature *)self stringValue];
    if (i >= [stringValue2 length])
    {
      break;
    }

    stringValue3 = [(CRTextFeature *)self stringValue];
    v8 = [stringValue3 characterAtIndex:i];

    if (v8 != 32)
    {
      goto LABEL_8;
    }
  }

LABEL_8:
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = [(CRTextFeature *)self subFeatures];
  v10 = [obj countByEnumeratingWithState:&v44 objects:v48 count:16];
  if (!v10)
  {
    goto LABEL_26;
  }

  v42 = *v45;
  v11 = i;
  do
  {
    v43 = v10;
    for (j = 0; j != v43; ++j)
    {
      if (*v45 != v42)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v44 + 1) + 8 * j);
      [array2 addObject:v13];
      stringValue4 = [v13 stringValue];
      v15 = [stringValue4 length] == 0;

      if (!v15)
      {
        stringValue5 = [v13 stringValue];
        v17 = [stringValue5 length];

        stringValue6 = [(CRTextFeature *)self stringValue];
        if (v17 + v11 >= [stringValue6 length])
        {
        }

        else
        {
          stringValue7 = [(CRTextFeature *)self stringValue];
          v20 = [stringValue7 characterAtIndex:v17 + v11] == 32;

          if (!v20)
          {
            v11 += v17;
            continue;
          }
        }

        stringValue8 = [(CRTextFeature *)self stringValue];
        v22 = [stringValue8 substringWithRange:{i, v17 + v11 - i}];

        v23 = [[CRTextFeature alloc] initWithSubfeatures:array2 stringValue:v22];
        [(CRTextFeature *)self baselineOrigin];
        v25 = v24;
        v27 = v26;
        [(CRTextFeature *)self toplineOrigin];
        v29 = v28;
        v31 = v30;
        [(CRTextFeature *)self baselineAngle];
        LODWORD(v33) = v32;
        [(CRTextFeature *)v23 setBaselineOrigin:v25 toplineOrigin:v27 slope:v29, v31, v33];
        [(CRTextFeature *)v23 updateSizeHints];
        [array addObject:v23];
        v34 = v11 + v17 + 1;
        while (1)
        {
          i = v34;
          stringValue9 = [(CRTextFeature *)self stringValue];
          if (i >= [stringValue9 length])
          {
            break;
          }

          stringValue10 = [(CRTextFeature *)self stringValue];
          v37 = [stringValue10 characterAtIndex:i] == 32;

          v34 = i + 1;
          if (!v37)
          {
            goto LABEL_23;
          }
        }

LABEL_23:
        array3 = [MEMORY[0x1E695DF70] array];

        array2 = array3;
        v11 = i;
      }
    }

    v10 = [obj countByEnumeratingWithState:&v44 objects:v48 count:16];
  }

  while (v10);
LABEL_26:

LABEL_27:

  return array;
}

- (id)textFeatureScaledToImage:(id)image
{
  imageCopy = image;
  [imageCopy extent];
  v6 = v5;
  [imageCopy extent];
  *&v7 = v6;
  *&v9 = v8;
  v10 = [(CRTextFeature *)self textFeatureScaledToImageWidth:v7 height:v9];

  return v10;
}

- (id)textFeatureScaledToImageWidth:(float)width height:(float)height
{
  v57 = *MEMORY[0x1E69E9840];
  v7 = objc_alloc_init(CRTextFeature);
  [(CRTextFeature *)self bounds];
  v9 = v8;
  [(CRTextFeature *)self bounds];
  v11 = v10;
  [(CRTextFeature *)self bounds];
  v13 = v12;
  [(CRTextFeature *)self bounds];
  v15 = v14;
  [(CRTextFeature *)self bounds];
  widthCopy = width;
  heightCopy = height;
  [(CRTextFeature *)v7 setBounds:v9 * width, heightCopy - (v11 + v13) * heightCopy, v15 * width, v18 * height];
  [(CRTextFeature *)self topLeft];
  v20 = v19;
  [(CRTextFeature *)self topLeft];
  [(CRTextFeature *)v7 setTopLeft:v20 * width, heightCopy - v21 * heightCopy];
  [(CRTextFeature *)self topRight];
  v23 = v22;
  [(CRTextFeature *)self topRight];
  [(CRTextFeature *)v7 setTopRight:v23 * width, heightCopy - v24 * heightCopy];
  [(CRTextFeature *)self bottomLeft];
  v26 = v25;
  [(CRTextFeature *)self bottomLeft];
  [(CRTextFeature *)v7 setBottomLeft:v26 * width, heightCopy - v27 * heightCopy];
  [(CRTextFeature *)self bottomRight];
  v29 = v28;
  [(CRTextFeature *)self bottomRight];
  [(CRTextFeature *)v7 setBottomRight:v29 * width, heightCopy - v30 * heightCopy];
  array = [MEMORY[0x1E695DF70] array];
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  subFeatures = [(CRTextFeature *)self subFeatures];
  v33 = [subFeatures countByEnumeratingWithState:&v52 objects:v56 count:16];
  if (v33)
  {
    v36 = *v53;
    do
    {
      for (i = 0; i != v33; ++i)
      {
        if (*v53 != v36)
        {
          objc_enumerationMutation(subFeatures);
        }

        *&v34 = width;
        *&v35 = height;
        v38 = [*(*(&v52 + 1) + 8 * i) textFeatureScaledToImageWidth:v34 height:v35];
        [array addObject:v38];
      }

      v33 = [subFeatures countByEnumeratingWithState:&v52 objects:v56 count:16];
    }

    while (v33);
  }

  [(CRTextFeature *)v7 setSubFeatures:array];
  stringValue = [(CRTextFeature *)self stringValue];
  [(CRTextFeature *)v7 setStringValue:stringValue];

  [(CRTextFeature *)self baselineOrigin];
  v41 = v40;
  [(CRTextFeature *)self baselineOrigin];
  v43 = v42;
  [(CRTextFeature *)self toplineOrigin];
  v45 = v44;
  [(CRTextFeature *)self toplineOrigin];
  v47 = v46;
  [(CRTextFeature *)self baselineAngle];
  LODWORD(v49) = v48;
  [(CRTextFeature *)v7 setBaselineOrigin:v41 * widthCopy toplineOrigin:heightCopy - v43 * heightCopy slope:v45 * widthCopy, heightCopy - v47 * heightCopy, v49];
  [(CRTextFeature *)v7 setSizeHint:[(CRTextFeature *)self sizeHint]];
  [(CRTextFeature *)v7 setType:[(CRTextFeature *)self type]];
  uuid = [(CRTextFeature *)self uuid];
  [(CRTextFeature *)v7 setUuid:uuid];

  return v7;
}

- (id)textFeaturebyPaddingToWidth:(float)width height:(float)height
{
  v68 = *MEMORY[0x1E69E9840];
  subFeatures = [(CRTextFeature *)self subFeatures];
  if (subFeatures && (-[CRTextFeature subFeatures](self, "subFeatures"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 count], v8, subFeatures, v9))
  {
    v10 = objc_alloc_init(CRTextFeature);
    v11 = MEMORY[0x1E695DF70];
    subFeatures2 = [(CRTextFeature *)self subFeatures];
    v13 = [v11 arrayWithCapacity:{objc_msgSend(subFeatures2, "count")}];

    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    subFeatures3 = [(CRTextFeature *)self subFeatures];
    v15 = [subFeatures3 countByEnumeratingWithState:&v63 objects:v67 count:16];
    if (v15)
    {
      v18 = *v64;
      v19 = 3.4028e38;
      v20 = 1.1755e-38;
      v21 = 1.1755e-38;
      v22 = 3.4028e38;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v64 != v18)
          {
            objc_enumerationMutation(subFeatures3);
          }

          *&v16 = width;
          *&v17 = height;
          v24 = [*(*(&v63 + 1) + 8 * i) textFeaturebyPaddingToWidth:v16 height:v17];
          [v13 addObject:v24];
          [v24 bounds];
          if (v25 < v22)
          {
            [v24 bounds];
            v22 = v26;
          }

          [v24 bounds];
          if (v27 < v19)
          {
            [v24 bounds];
            v19 = v28;
          }

          [v24 bounds];
          v30 = v29;
          [v24 bounds];
          if (v30 + v31 >= v21)
          {
            [v24 bounds];
            v33 = v32;
            [v24 bounds];
            v21 = v33 + v34;
          }

          [v24 bounds];
          v36 = v35;
          [v24 bounds];
          if (v36 + v37 >= v20)
          {
            [v24 bounds];
            v39 = v38;
            [v24 bounds];
            v20 = v39 + v40;
          }
        }

        v15 = [subFeatures3 countByEnumeratingWithState:&v63 objects:v67 count:16];
      }

      while (v15);
    }

    else
    {
      v19 = 3.4028e38;
      v20 = 1.1755e-38;
      v21 = 1.1755e-38;
      v22 = 3.4028e38;
    }

    [(CRTextFeature *)v10 setSubFeatures:v13];
    [(CRTextFeature *)v10 setBounds:v22, v19, (v21 - v22), (v20 - v19)];
    [(CRTextFeature *)v10 setType:[(CRTextFeature *)self type]];
    uuid = [(CRTextFeature *)self uuid];
    [(CRTextFeature *)v10 setUuid:uuid];
  }

  else
  {
    [(CRTextFeature *)self bounds];
    v43 = v42;
    v44 = v41;
    v45 = v41 * width / height;
    v46 = v42;
    if (v43 <= v45)
    {
      v47 = v41 * width / height;
    }

    else
    {
      v47 = v46;
    }

    if (v41 <= ((v46 * height) / width))
    {
      v48 = (v46 * height) / width;
    }

    else
    {
      v48 = v41;
    }

    v10 = [(CRTextFeature *)self copy];
    [(CRTextFeature *)self bounds];
    v49 = (v47 - v43) * 0.5;
    v50 = v49;
    v51 = 0.0;
    if (v52 >= v49)
    {
      [(CRTextFeature *)self bounds];
      v51 = v53 - v50;
    }

    [(CRTextFeature *)self bounds];
    v55 = v54;
    *&v54 = (v48 - v44) * 0.5;
    v56 = *&v54;
    v57 = 0.0;
    if (v55 >= v56)
    {
      [(CRTextFeature *)self bounds];
      v57 = v58 - v56;
    }

    v59 = 1.0 - v51;
    if (v51 + v47 <= 1.0)
    {
      v59 = v47;
    }

    if (v57 + v48 <= 1.0)
    {
      v60 = v48;
    }

    else
    {
      v60 = 1.0 - v57;
    }

    [(CRTextFeature *)v10 setBounds:v51, v57, v59, v60];
  }

  return v10;
}

- (void)setStringValue:(id)value
{
  v28 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  objc_storeStrong(&self->_stringValue, value);
  if (valueCopy)
  {
    subFeatures2 = [valueCopy stringByReplacingOccurrencesOfString:@" " withString:&stru_1F2BB4348];
    v7 = [subFeatures2 length];
    if (v7 == [(NSArray *)self->_subFeatures count])
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      subFeatures = [(CRTextFeature *)self subFeatures];
      v9 = [subFeatures countByEnumeratingWithState:&v18 objects:v26 count:16];
      if (v9)
      {
        v10 = 0;
        v11 = *v19;
        do
        {
          v12 = 0;
          do
          {
            if (*v19 != v11)
            {
              objc_enumerationMutation(subFeatures);
            }

            v13 = *(*(&v18 + 1) + 8 * v12);
            v14 = [subFeatures2 substringWithRange:{v10, 1}];
            [v13 setStringValue:v14];

            ++v10;
            ++v12;
          }

          while (v9 != v12);
          v9 = [subFeatures countByEnumeratingWithState:&v18 objects:v26 count:16];
        }

        while (v9);
      }
    }
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    subFeatures2 = [(CRTextFeature *)self subFeatures];
    v15 = [subFeatures2 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v15)
    {
      v16 = *v23;
      do
      {
        v17 = 0;
        do
        {
          if (*v23 != v16)
          {
            objc_enumerationMutation(subFeatures2);
          }

          [*(*(&v22 + 1) + 8 * v17++) setStringValue:0];
        }

        while (v15 != v17);
        v15 = [subFeatures2 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v15);
    }
  }
}

uint64_t __35__CRTextFeature_slopeOfSubFeatures__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 bounds];
  v6 = v5;
  [v4 bounds];
  if (v6 <= v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = -1;
  }

  return v8;
}

BOOL __35__CRTextFeature_slopeOfSubFeatures__block_invoke_2(uint64_t a1, void *a2)
{
  [a2 bounds];
  v4 = v3;
  return (vabds_f32(v4, *(a1 + 32)) / *(a1 + 32)) < 0.1;
}

- (float)caseInsensitiveProbabilityCandidateIndex:(int)index
{
  stringValueCandidates = [(CRTextFeature *)self stringValueCandidates];
  indexCopy = index;
  v7 = [stringValueCandidates objectAtIndexedSubscript:index];

  stringValueCandidates2 = [(CRTextFeature *)self stringValueCandidates];
  uppercaseString = [v7 uppercaseString];
  v10 = [stringValueCandidates2 indexOfObject:uppercaseString];

  stringValueCandidates3 = [(CRTextFeature *)self stringValueCandidates];
  lowercaseString = [v7 lowercaseString];
  v13 = [stringValueCandidates3 indexOfObject:lowercaseString];

  if (v10 == 0x7FFFFFFFFFFFFFFFLL || v13 == 0x7FFFFFFFFFFFFFFFLL || v10 == v13)
  {
    candidateProbs = [(CRTextFeature *)self candidateProbs];
    v15 = [candidateProbs objectAtIndexedSubscript:indexCopy];
    [v15 doubleValue];
    v21 = v22;
  }

  else
  {
    candidateProbs = [(CRTextFeature *)self candidateProbs];
    v15 = [candidateProbs objectAtIndexedSubscript:v10];
    [v15 doubleValue];
    v17 = v16;
    candidateProbs2 = [(CRTextFeature *)self candidateProbs];
    v19 = [candidateProbs2 objectAtIndexedSubscript:v13];
    [v19 doubleValue];
    v21 = v17 + v20;
  }

  return v21;
}

- (void)addKohlsDigitProjection
{
  v91 = *MEMORY[0x1E69E9840];
  if (self)
  {
    subFeatures = [(CRTextFeature *)self subFeatures];
    v4 = [subFeatures sortedArrayUsingComparator:&__block_literal_global_30];

    v5 = [v4 objectAtIndex:{objc_msgSend(v4, "count") >> 1}];
    [v5 bounds];
    v7 = v6;

    subFeatures2 = [(CRTextFeature *)self subFeatures];
    v9 = v7;
    v88[0] = MEMORY[0x1E69E9820];
    v88[1] = 3221225472;
    v88[2] = __35__CRTextFeature_slopeOfSubFeatures__block_invoke_2;
    v88[3] = &__block_descriptor_36_e40_B24__0__CRTextFeature_8__NSDictionary_16l;
    v89 = v9;
    v10 = [MEMORY[0x1E696AE18] predicateWithBlock:v88];
    v11 = [subFeatures2 filteredArrayUsingPredicate:v10];

    firstObject = [v11 firstObject];
    [firstObject bounds];
    v14 = v13;

    firstObject2 = [v11 firstObject];
    [firstObject2 bounds];
    v17 = v16;

    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    v18 = v11;
    v19 = [v18 countByEnumeratingWithState:&v84 objects:v90 count:16];
    if (v19)
    {
      v20 = v14;
      v21 = v17;
      v22 = *v85;
      v23 = 0.0;
      v24 = 0.0;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v85 != v22)
          {
            objc_enumerationMutation(v18);
          }

          v26 = *(*(&v84 + 1) + 8 * i);
          [v26 bounds];
          v28 = v27;
          [v26 bounds];
          v29 = v28;
          *&v30 = v30;
          v31 = v29 - v20;
          v24 = v24 + (v31 * (*&v30 - v21));
          v23 = v23 + (v31 * v31);
        }

        v19 = [v18 countByEnumeratingWithState:&v84 objects:v90 count:16];
      }

      while (v19);
    }

    else
    {
      v23 = 0.0;
      v24 = 0.0;
    }

    v32 = (v24 / v23);
  }

  else
  {
    v32 = 0.0;
  }

  subFeatures3 = [(CRTextFeature *)self subFeatures];
  lastObject = [subFeatures3 lastObject];
  [lastObject bounds];
  recta = v35;
  v37 = v36;
  v39 = v38;
  v41 = v40;

  subFeatures4 = [(CRTextFeature *)self subFeatures];
  subFeatures5 = [(CRTextFeature *)self subFeatures];
  v44 = [subFeatures4 objectAtIndex:{objc_msgSend(subFeatures5, "count") - 2}];
  v81 = v41;
  [v44 bounds];
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v52 = v51;

  v53 = v37 - (v46 + v50);
  v54 = v39;
  v55 = v39 - v48;
  v56 = (sqrtf((v55 * v55) + (v53 * v53)) * 6.5);
  v57 = v32 * v56;
  v93.origin.x = v46;
  v93.origin.y = v48;
  v93.size.width = v50;
  v93.size.height = v52;
  v94 = CGRectOffset(v93, v56, v57);
  v95 = CGRectInset(v94, v94.size.width * -0.200000003, 0.0);
  x = v95.origin.x;
  y = v95.origin.y;
  width = v95.size.width;
  height = v95.size.height;
  v62 = objc_alloc_init(CRTextFeature);
  [(CRTextFeature *)v62 setBounds:x, y, width, height];
  subFeatures6 = [(CRTextFeature *)self subFeatures];
  v64 = [subFeatures6 mutableCopy];

  [v64 addObject:v62];
  v96.origin.x = v37;
  v96.size.width = v81;
  v96.origin.y = v54;
  v96.size.height = recta;
  v97 = CGRectOffset(v96, v56, v57);
  v98 = CGRectInset(v97, v97.size.width * -0.200000003, 0.0);
  v65 = v98.origin.x;
  v66 = v98.origin.y;
  v67 = v98.size.width;
  v68 = v98.size.height;
  rect = objc_alloc_init(CRTextFeature);

  [(CRTextFeature *)rect setBounds:v65, v66, v67, v68];
  [v64 addObject:?];
  [(CRTextFeature *)self setSubFeatures:v64];
  [(CRTextFeature *)self bounds];
  v70 = v69;
  v72 = v71;
  v74 = v73;
  v76 = v75;
  [(CRTextFeature *)rect bounds];
  v101.origin.x = v77;
  v101.origin.y = v78;
  v101.size.width = v79;
  v101.size.height = v80;
  v99.origin.x = v70;
  v99.origin.y = v72;
  v99.size.width = v74;
  v99.size.height = v76;
  v100 = CGRectUnion(v99, v101);
  [(CRTextFeature *)self setBounds:v100.origin.x, v100.origin.y, v100.size.width, v100.size.height];
}

+ (id)lineFeatures:(id)features imageWidth:(unint64_t)width imageHeight:(unint64_t)height
{
  v134 = *MEMORY[0x1E69E9840];
  featuresCopy = features;
  array = [MEMORY[0x1E695DF70] array];
  v131 = 0u;
  v132 = 0u;
  v129 = 0u;
  v130 = 0u;
  obj = featuresCopy;
  v7 = [obj countByEnumeratingWithState:&v129 objects:v133 count:16];
  if (v7)
  {
    v126 = v7;
    v127 = 0;
    v8 = 0;
    v9 = 0;
    v125 = *v130;
    widthCopy = width;
    heightCopy = height;
    do
    {
      v128 = 0;
      do
      {
        if (*v130 != v125)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v129 + 1) + 8 * v128);
        if (v9 && ([*(*(&v129 + 1) + 8 * v128) bounds], v12 = v11, objc_msgSend(v9, "bounds"), v12 > v13) && ((objc_msgSend(v9, "bounds"), v15 = v14, objc_msgSend(v9, "bounds"), v17 = v16, objc_msgSend(v9, "bounds"), v123 = v18, objc_msgSend(v9, "bounds"), v119 = v19, objc_msgSend(v9, "bounds"), v122 = v20, objc_msgSend(v10, "bounds"), v121 = v21, objc_msgSend(v10, "bounds"), v23 = v22, objc_msgSend(v10, "bounds"), v25 = v24, objc_msgSend(v10, "bounds"), v27 = v26, objc_msgSend(v10, "bounds"), v29 = v28, objc_msgSend(v10, "baselineAngle"), v31 = v30, objc_msgSend(v10, "baselineAngle"), v33 = v32, v118 = v27, v34 = v17, v35 = cosf(v31), LODWORD(v17) = sinf(v33), objc_msgSend(v9, "baselineAngle"), v37 = v36, objc_msgSend(v9, "baselineAngle"), v39 = v15 * widthCopy, v40 = heightCopy, v41 = v40 - (v23 + v25) * v40 + v29 * heightCopy, v42 = v39 - (v121 * widthCopy + v35), v43 = v40 - (v34 + v123) * v40 + v122 * heightCopy - (v41 - *&v17), v44 = sqrt(v43 * v43 + v42 * v42), v44 < 0.01) || (v45 = -sinf(v38), fabs(fabs((v43 * v45 + cosf(v37) * v42) / v44) + -1.0) < 0.01)) && v121 * widthCopy - (v39 + v119 * widthCopy) < v118 * widthCopy * 0.5)
        {
          stringValue = [v9 stringValue];
          v47 = MEMORY[0x1E696AEC0];
          stringValue2 = [v10 stringValue];
          v49 = [v47 stringWithFormat:@" %@", stringValue2];
          v50 = [stringValue stringByAppendingString:v49];
          [v9 setStringValue:v50];

          array2 = [MEMORY[0x1E695DF70] array];
          for (i = 0; ; ++i)
          {
            stringValueCandidates = [v9 stringValueCandidates];
            v54 = i < [stringValueCandidates count];

            if (!v54)
            {
              break;
            }

            stringValueCandidates2 = [v9 stringValueCandidates];
            v56 = [stringValueCandidates2 objectAtIndexedSubscript:i];

            stringValueCandidates3 = [v10 stringValueCandidates];
            v58 = [stringValueCandidates3 objectAtIndexedSubscript:0];

            stringValueCandidates4 = [v10 stringValueCandidates];
            v60 = i < [stringValueCandidates4 count];

            if (v60)
            {
              stringValueCandidates5 = [v10 stringValueCandidates];
              v62 = [stringValueCandidates5 objectAtIndexedSubscript:i];

              v58 = v62;
            }

            v63 = [MEMORY[0x1E696AEC0] stringWithFormat:@" %@", v58];
            v64 = [v56 stringByAppendingString:v63];

            [array2 addObject:v64];
          }

          [v9 setStringValueCandidates:array2];
          [v9 bounds];
          v76 = v75;
          [v9 bounds];
          v78 = v77;
          [v10 bounds];
          if (v78 >= v79)
          {
            [v10 bounds];
          }

          else
          {
            [v9 bounds];
          }

          v81 = v80;
          [v9 bounds];
          v83 = v82;
          [v9 bounds];
          v85 = v84;
          [v10 bounds];
          v87 = v86;
          [v10 bounds];
          v88 = v83 + v85;
          if (v83 + v85 <= v87 + v89)
          {
            [v10 bounds];
            v91 = v93;
            [v10 bounds];
          }

          else
          {
            [v9 bounds];
            v91 = v90;
            [v9 bounds];
          }

          v94 = v92;
          [v10 bounds];
          v96 = v95;
          [v10 bounds];
          [v9 setBounds:{v76, v81, v96 + v97 - v76, v91 + v94 - v81}];
          for (j = 0; j < [v8 count]; ++j)
          {
            candidateProbs = [v10 candidateProbs];
            v100 = [candidateProbs objectAtIndexedSubscript:0];
            [v100 floatValue];
            v102 = v101;

            candidateProbs2 = [v10 candidateProbs];
            LODWORD(candidateProbs) = j < [candidateProbs2 count];

            if (candidateProbs)
            {
              candidateProbs3 = [v10 candidateProbs];
              v105 = [candidateProbs3 objectAtIndexedSubscript:j];
              [v105 floatValue];
              v102 = v106;
            }

            v107 = [v8 objectAtIndexedSubscript:j];
            [v107 floatValue];
            v109 = v108;

            *&v110 = v102 + v109;
            v111 = [MEMORY[0x1E696AD98] numberWithFloat:v110];
            [v8 setObject:v111 atIndexedSubscript:j];
          }

          ++v127;
        }

        else
        {
          if (v127 >= 2)
          {
            for (k = 0; k < [v8 count]; ++k)
            {
              v66 = MEMORY[0x1E696AD98];
              v67 = [v8 objectAtIndexedSubscript:k];
              [v67 floatValue];
              *&v69 = v68 / v127;
              v70 = [v66 numberWithFloat:v69];
              [v8 setObject:v70 atIndexedSubscript:k];
            }

            v71 = [MEMORY[0x1E695DEC8] arrayWithArray:v8];
            [v9 setCandidateProbs:v71];
          }

          v72 = [v10 copy];

          candidateProbs4 = [v72 candidateProbs];
          v74 = [candidateProbs4 mutableCopy];

          [array addObject:v72];
          v127 = 1;
          v8 = v74;
          v9 = v72;
        }

        ++v128;
      }

      while (v128 != v126);
      v112 = [obj countByEnumeratingWithState:&v129 objects:v133 count:16];
      v126 = v112;
    }

    while (v112);
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  v113 = [MEMORY[0x1E695DEC8] arrayWithArray:array];

  return v113;
}

+ (id)overlayFeatures:(id)features onImage:(id)image showSubFeatures:(BOOL)subFeatures
{
  subFeaturesCopy = subFeatures;
  v47 = *MEMORY[0x1E69E9840];
  featuresCopy = features;
  imageCopy = image;
  v28 = featuresCopy;
  [imageCopy extent];
  if (featuresCopy && (v9 = v7, v10 = v8, [featuresCopy count]))
  {
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    v12 = CGBitmapContextCreate(0, v9, v10, 8uLL, vcvtd_n_u64_f64(v9, 5uLL), DeviceRGB, 2u);
    *components = xmmword_1B42AFB08;
    v46 = unk_1B42AFB18;
    v13 = CGColorCreate(DeviceRGB, components);
    CGContextSetStrokeColorWithColor(v12, v13);
    color = v13;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    obj = featuresCopy;
    v14 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
    if (v14)
    {
      v15 = *v40;
      v29 = *v40;
      do
      {
        v34 = v14;
        for (i = 0; i != v34; ++i)
        {
          if (*v40 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = [*(*(&v39 + 1) + 8 * i) textFeatureScaledToImage:imageCopy];
          CGContextSetStrokeColorWithColor(v12, color);
          CGContextSetLineWidth(v12, 7.0);
          [v17 bounds];
          CGContextStrokeRect(v12, v49);
          if (subFeaturesCopy)
          {
            v18 = CGColorCreate(DeviceRGB, components);
            CGContextSetStrokeColorWithColor(v12, v18);
            v37 = 0u;
            v38 = 0u;
            v35 = 0u;
            v36 = 0u;
            subFeatures = [v17 subFeatures];
            v20 = [subFeatures countByEnumeratingWithState:&v35 objects:v43 count:16];
            if (v20)
            {
              v21 = *v36;
              do
              {
                for (j = 0; j != v20; ++j)
                {
                  if (*v36 != v21)
                  {
                    objc_enumerationMutation(subFeatures);
                  }

                  v23 = *(*(&v35 + 1) + 8 * j);
                  CGContextSetLineWidth(v12, 1.0);
                  [v23 bounds];
                  CGContextStrokeRect(v12, v50);
                }

                v20 = [subFeatures countByEnumeratingWithState:&v35 objects:v43 count:16];
              }

              while (v20);
            }

            v15 = v29;
            CGColorRelease(v18);
          }
        }

        v14 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
      }

      while (v14);
    }

    Image = CGBitmapContextCreateImage(v12);
    v25 = [MEMORY[0x1E695F658] imageWithCGImage:Image];
    v26 = [v25 imageByCompositingOverImage:imageCopy];

    CGImageRelease(Image);
    CGContextRelease(v12);
    CGColorRelease(color);
    CGColorSpaceRelease(DeviceRGB);
  }

  else
  {
    v26 = imageCopy;
  }

  return v26;
}

+ (id)overlayFeaturesQuadVertices:(id)vertices onImage:(id)image showSubFeatures:(BOOL)features
{
  featuresCopy = features;
  v75 = *MEMORY[0x1E69E9840];
  verticesCopy = vertices;
  imageCopy = image;
  v58 = verticesCopy;
  [imageCopy extent];
  if (verticesCopy && (v9 = v7, v10 = v8, [verticesCopy count]))
  {
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    v12 = CGBitmapContextCreate(0, v9, v10, 8uLL, vcvtd_n_u64_f64(v9, 5uLL), DeviceRGB, 2u);
    SRGB = CGColorCreateSRGB(1.0, 0.0, 0.0, 0.5);
    CGContextSetStrokeColorWithColor(v12, SRGB);
    color = SRGB;
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    obj = verticesCopy;
    v14 = [obj countByEnumeratingWithState:&v69 objects:v74 count:16];
    if (v14)
    {
      v15 = *v70;
      v59 = *v70;
      do
      {
        v16 = 0;
        v60 = v14;
        do
        {
          if (*v70 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = [*(*(&v69 + 1) + 8 * v16) textFeatureScaledToImage:imageCopy];
          CGContextSetStrokeColorWithColor(v12, color);
          CGContextSetLineWidth(v12, 7.0);
          [v17 topLeft];
          v19 = v18;
          [v17 topLeft];
          CGContextMoveToPoint(v12, v19, v20);
          [v17 topRight];
          v22 = v21;
          [v17 topRight];
          CGContextAddLineToPoint(v12, v22, v23);
          [v17 bottomRight];
          v25 = v24;
          [v17 bottomRight];
          CGContextAddLineToPoint(v12, v25, v26);
          [v17 bottomLeft];
          v28 = v27;
          [v17 bottomLeft];
          CGContextAddLineToPoint(v12, v28, v29);
          [v17 topLeft];
          v31 = v30;
          [v17 topLeft];
          CGContextAddLineToPoint(v12, v31, v32);
          CGContextStrokePath(v12);
          if (featuresCopy)
          {
            v33 = CGColorCreateSRGB(1.0, 0.0, 0.0, 0.5);
            CGContextSetStrokeColorWithColor(v12, v33);
            v67 = 0u;
            v68 = 0u;
            v65 = 0u;
            v66 = 0u;
            subFeatures = [v17 subFeatures];
            v35 = [subFeatures countByEnumeratingWithState:&v65 objects:v73 count:16];
            if (v35)
            {
              v36 = *v66;
              do
              {
                for (i = 0; i != v35; ++i)
                {
                  if (*v66 != v36)
                  {
                    objc_enumerationMutation(subFeatures);
                  }

                  v38 = *(*(&v65 + 1) + 8 * i);
                  CGContextSetLineWidth(v12, 1.0);
                  [v38 topLeft];
                  v40 = v39;
                  [v38 topLeft];
                  CGContextMoveToPoint(v12, v40, v41);
                  [v38 topRight];
                  v43 = v42;
                  [v38 topRight];
                  CGContextAddLineToPoint(v12, v43, v44);
                  [v38 bottomRight];
                  v46 = v45;
                  [v38 bottomRight];
                  CGContextAddLineToPoint(v12, v46, v47);
                  [v38 bottomLeft];
                  v49 = v48;
                  [v38 bottomLeft];
                  CGContextAddLineToPoint(v12, v49, v50);
                  [v38 topLeft];
                  v52 = v51;
                  [v38 topLeft];
                  CGContextAddLineToPoint(v12, v52, v53);
                  CGContextStrokePath(v12);
                }

                v35 = [subFeatures countByEnumeratingWithState:&v65 objects:v73 count:16];
              }

              while (v35);
            }

            v15 = v59;
            v14 = v60;
            CGColorRelease(v33);
          }

          ++v16;
        }

        while (v16 != v14);
        v14 = [obj countByEnumeratingWithState:&v69 objects:v74 count:16];
      }

      while (v14);
    }

    Image = CGBitmapContextCreateImage(v12);
    v55 = [MEMORY[0x1E695F658] imageWithCGImage:Image];
    v56 = [v55 imageByCompositingOverImage:imageCopy];

    CGImageRelease(Image);
    CGContextRelease(v12);
    CGColorRelease(color);
    CGColorSpaceRelease(DeviceRGB);
  }

  else
  {
    v56 = imageCopy;
  }

  return v56;
}

+ (id)overlayFeaturesPolygonVertices:(id)vertices onImage:(id)image showSubFeatures:(BOOL)features
{
  featuresCopy = features;
  v75 = *MEMORY[0x1E69E9840];
  verticesCopy = vertices;
  imageCopy = image;
  v58 = verticesCopy;
  [imageCopy extent];
  if (verticesCopy && (v9 = v7, v10 = v8, [verticesCopy count]))
  {
    space = CGColorSpaceCreateDeviceRGB();
    v11 = CGBitmapContextCreate(0, v9, v10, 8uLL, vcvtd_n_u64_f64(v9, 5uLL), space, 2u);
    SRGB = CGColorCreateSRGB(1.0, 0.0, 0.0, 0.5);
    CGContextSetStrokeColorWithColor(v11, SRGB);
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    obj = verticesCopy;
    v13 = [obj countByEnumeratingWithState:&v69 objects:v74 count:16];
    color = SRGB;
    if (v13)
    {
      v62 = *v70;
      do
      {
        v63 = v13;
        for (i = 0; i != v63; ++i)
        {
          if (*v70 != v62)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v69 + 1) + 8 * i);
          polygon = [v15 polygon];
          if (polygon)
          {
            polygon2 = [v15 polygon];
            v18 = [polygon2 pointCount] > 3;

            if (v18)
            {
              polygon3 = [v15 polygon];
              denormalizedPolyline = [polygon3 denormalizedPolyline];
              pointValues = [denormalizedPolyline pointValues];

              CGContextSetStrokeColorWithColor(v11, color);
              CGContextSetLineWidth(v11, 7.0);
              v22 = [pointValues objectAtIndex:0];
              [v22 pointValue];
              v24 = v23;
              v26 = v10 - v25;
              CGContextMoveToPoint(v11, v23, v10 - v25);
              for (j = 1; [pointValues count] > j; ++j)
              {
                v28 = [pointValues objectAtIndex:j];

                [v28 pointValue];
                CGContextAddLineToPoint(v11, v30, v10 - v29);
                v22 = v28;
              }

              CGContextAddLineToPoint(v11, v24, v26);
              CGContextStrokePath(v11);
            }
          }

          if (featuresCopy)
          {
            v31 = CGColorCreateSRGB(0.0, 1.0, 0.0, 0.5);
            CGContextSetStrokeColorWithColor(v11, v31);
            v61 = v31;
            v67 = 0u;
            v68 = 0u;
            v65 = 0u;
            v66 = 0u;
            subFeatures = [v15 subFeatures];
            v33 = [subFeatures countByEnumeratingWithState:&v65 objects:v73 count:16];
            if (v33)
            {
              v34 = *v66;
              do
              {
                for (k = 0; k != v33; ++k)
                {
                  if (*v66 != v34)
                  {
                    objc_enumerationMutation(subFeatures);
                  }

                  v36 = *(*(&v65 + 1) + 8 * k);
                  polygon4 = [v36 polygon];
                  if (polygon4)
                  {
                    polygon5 = [v36 polygon];
                    v39 = [polygon5 pointCount] > 3;

                    if (v39)
                    {
                      polygon6 = [v36 polygon];
                      denormalizedPolyline2 = [polygon6 denormalizedPolyline];
                      pointValues2 = [denormalizedPolyline2 pointValues];

                      CGContextSetLineWidth(v11, 7.0);
                      v43 = [pointValues2 objectAtIndex:0];
                      [v43 pointValue];
                      v45 = v44;
                      v47 = v10 - v46;
                      CGContextMoveToPoint(v11, v44, v10 - v46);
                      for (m = 1; [pointValues2 count] > m; ++m)
                      {
                        v49 = [pointValues2 objectAtIndex:m];

                        [v49 pointValue];
                        CGContextAddLineToPoint(v11, v51, v10 - v50);
                        v43 = v49;
                      }

                      CGContextAddLineToPoint(v11, v45, v47);
                      CGContextStrokePath(v11);
                    }
                  }
                }

                v33 = [subFeatures countByEnumeratingWithState:&v65 objects:v73 count:16];
              }

              while (v33);
            }

            CGColorRelease(v61);
          }
        }

        v13 = [obj countByEnumeratingWithState:&v69 objects:v74 count:16];
      }

      while (v13);
    }

    Image = CGBitmapContextCreateImage(v11);
    v53 = [MEMORY[0x1E695F658] imageWithCGImage:Image];
    v54 = [v53 imageByCompositingOverImage:imageCopy];

    CGImageRelease(Image);
    CGContextRelease(v11);
    CGColorRelease(color);
    CGColorSpaceRelease(space);
  }

  else
  {
    v54 = imageCopy;
  }

  return v54;
}

+ (id)sortedTextFeaturesByAspectRatio:(id)ratio imageSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v6 = [ratio mutableCopy];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __59__CRTextFeature_sortedTextFeaturesByAspectRatio_imageSize___block_invoke;
  v9[3] = &__block_descriptor_48_e41_q24__0__CRTextFeature_8__CRTextFeature_16l;
  *&v9[4] = width;
  *&v9[5] = height;
  [v6 sortUsingComparator:v9];
  v7 = [MEMORY[0x1E695DEC8] arrayWithArray:v6];

  return v7;
}

uint64_t __59__CRTextFeature_sortedTextFeaturesByAspectRatio_imageSize___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  [v5 aspectRatioWithImageSize:{*(a1 + 32), *(a1 + 40)}];
  v8 = v7;
  [v6 aspectRatioWithImageSize:{*(a1 + 32), *(a1 + 40)}];
  if (v8 > v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = -1;
  }

  return v10;
}

- (void)scale:(CGPoint)scale offset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  offset.x = scale.y;
  offset.y = scale.x;
  v19 = *MEMORY[0x1E69E9840];
  v6 = y + self->_bounds.origin.y * scale.y;
  self->_bounds.origin.x = x + self->_bounds.origin.x * scale.x;
  self->_bounds.origin.y = v6;
  v7.f64[0] = scale.x;
  v7.f64[1] = offset.x;
  self->_bounds.size = vmulq_f64(v7, self->_bounds.size);
  v7.f64[0] = y + self->_topLeft.y * offset.x;
  self->_topLeft.x = x + self->_topLeft.x * scale.x;
  self->_topLeft.y = v7.f64[0];
  v7.f64[0] = y + self->_topRight.y * offset.x;
  self->_topRight.x = x + self->_topRight.x * scale.x;
  self->_topRight.y = v7.f64[0];
  v7.f64[0] = y + self->_bottomRight.y * offset.x;
  self->_bottomRight.x = x + self->_bottomRight.x * scale.x;
  self->_bottomRight.y = v7.f64[0];
  v7.f64[0] = y + self->_bottomLeft.y * offset.x;
  self->_bottomLeft.x = x + self->_bottomLeft.x * scale.x;
  self->_bottomLeft.y = v7.f64[0];
  v12 = *&offset.y;
  offsetCopy = offset;
  self->_toplineOrigin.x = x + self->_toplineOrigin.x * scale.x;
  self->_baselineOrigin.y = y + self->_baselineOrigin.y * offset.x;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = self->_subFeatures;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v14 + 1) + 8 * v11++) scale:*&v12 offset:{offsetCopy.x, x, y, v12, offsetCopy, v14}];
      }

      while (v9 != v11);
      v9 = [(NSArray *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }
}

- (void)setBaselineOrigin:(CGPoint)origin toplineOrigin:(CGPoint)toplineOrigin slope:(float)slope
{
  if (!self || !self->_contextSet)
  {
    self->_baselineOrigin = origin;
    self->_toplineOrigin = toplineOrigin;
    self->_baselineAngle = slope;
    self->_contextSet = 1;
  }
}

uint64_t __39__CRTextFeature_estimateTopAndBaseline__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 bounds];
  v6 = v5;
  [v4 bounds];
  if (v6 <= v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = -1;
  }

  return v8;
}

- (void)updateSizeHints
{
  v115 = *MEMORY[0x1E69E9840];
  subFeatures = [(CRTextFeature *)self subFeatures];
  v4 = [subFeatures count];

  if (v4)
  {
    if (self)
    {
      if (!self->_contextSet)
      {
        subFeatures2 = [(CRTextFeature *)self subFeatures];
        v6 = [subFeatures2 count];

        if (v6 > 1)
        {
          subFeatures3 = [(CRTextFeature *)self subFeatures];
          v23 = [subFeatures3 sortedArrayUsingComparator:&__block_literal_global_105];

          if (v6)
          {
            0x3FFFFFFF = [v23 objectAtIndex:(v6 >> 1) & 0x3FFFFFFF];
            [0x3FFFFFFF bounds];
            v30 = v31;
          }

          else
          {
            v24 = v6 >> 1;
            0x3FFFFFFF = [v23 objectAtIndex:v6 >> 1];
            [0x3FFFFFFF bounds];
            v27 = v26;
            v28 = [v23 objectAtIndex:v24 - 1];
            [v28 bounds];
            v30 = (v27 + v29) * 0.5;
          }

          v111 = 0u;
          v112 = 0u;
          v109 = 0u;
          v110 = 0u;
          subFeatures4 = [(CRTextFeature *)self subFeatures];
          v33 = [subFeatures4 countByEnumeratingWithState:&v109 objects:v114 count:16];
          if (v33)
          {
            v34 = *v110;
            v20 = -1.0;
            v103 = 0.0;
            v101 = 0.0;
            v19 = -1.0;
            v18 = -1.0;
            v21 = -1.0;
            do
            {
              for (i = 0; i != v33; ++i)
              {
                if (*v110 != v34)
                {
                  objc_enumerationMutation(subFeatures4);
                }

                v36 = *(*(&v109 + 1) + 8 * i);
                [v36 bounds];
                v38 = v37;
                [v36 bounds];
                v40 = v39;
                [v36 bounds];
                v42 = v41;
                [v36 bounds];
                v44 = v38 + v40 * 0.5;
                v45 = vabdd_f64(v42, v30);
                if (v43 >= v30)
                {
                  v46 = v43;
                }

                else
                {
                  v46 = v30;
                }

                if (v45 < v46 * 0.1 && v21 < 0.0)
                {
                  [v36 bounds];
                  v18 = v47;
                  v21 = v44;
                }

                [v36 bounds];
                v49 = v48;
                [v36 bounds];
                v51 = vabdd_f64(v49, v30);
                if (v50 >= v30)
                {
                  v52 = v50;
                }

                else
                {
                  v52 = v30;
                }

                if (v51 < v52 * 0.3)
                {
                  [v36 bounds];
                  v54 = v53;
                  [v36 bounds];
                  if (v19 < 0.0)
                  {
                    v20 = v54 + v55;
                    v19 = v44;
                  }

                  v101 = v101 + (v44 - v19) * (v54 + v55 - v20);
                  v103 = v103 + (v44 - v19) * (v44 - v19);
                }
              }

              v33 = [subFeatures4 countByEnumeratingWithState:&v109 objects:v114 count:16];
            }

            while (v33);

            if (v103 <= 0.0)
            {
              v56 = NAN;
            }

            else
            {
              v56 = v101 / v103;
            }
          }

          else
          {

            v21 = -1.0;
            v56 = NAN;
            v18 = -1.0;
            v19 = -1.0;
            v20 = -1.0;
          }

          self->_baselineAngle = v56;
        }

        else
        {
          self->_baselineAngle = NAN;
          subFeatures5 = [(CRTextFeature *)self subFeatures];
          firstObject = [subFeatures5 firstObject];

          [firstObject bounds];
          v10 = v9;
          [firstObject bounds];
          v12 = v11;
          [firstObject bounds];
          v14 = v13;
          [firstObject bounds];
          v16 = v15;
          [firstObject bounds];
          v18 = v17;
          v19 = v10 + v12 * 0.5;
          v20 = v14 + v16;

          v21 = v19;
        }

        self->_baselineOrigin.x = v19;
        self->_baselineOrigin.y = v20;
        self->_toplineOrigin.x = v21;
        self->_toplineOrigin.y = v18;
        self->_contextSet = 1;
      }

      baselineAngle = self->_baselineAngle;
      v58 = sqrtf((baselineAngle * baselineAngle) + 1.0);
      v104 = (1.0 / v58);
      v59 = (baselineAngle / v58);
    }

    else
    {
      v59 = 0.0;
      v104 = 0.0;
    }

    [(CRTextFeature *)self toplineOrigin];
    v61 = v60;
    [(CRTextFeature *)self baselineOrigin];
    v63 = v62;
    [(CRTextFeature *)self toplineOrigin];
    v65 = v64;
    [(CRTextFeature *)self baselineOrigin];
    v67 = v66;
    v105 = 0u;
    v106 = 0u;
    v107 = 0u;
    v108 = 0u;
    subFeatures6 = [(CRTextFeature *)self subFeatures];
    v69 = [subFeatures6 countByEnumeratingWithState:&v105 objects:v113 count:16];
    if (v69)
    {
      v102 = -v59;
      v70 = fabs(v104 * (v65 - v67) - (v61 - v63) * v59);
      v96 = v70 * 0.3;
      v71 = *v106;
      v97 = v70 + v70 * 0.2;
      do
      {
        for (j = 0; j != v69; ++j)
        {
          if (*v106 != v71)
          {
            objc_enumerationMutation(subFeatures6);
          }

          v73 = *(*(&v105 + 1) + 8 * j);
          [v73 setSizeHint:0];
          [v73 topLeft];
          v100 = v74;
          [(CRTextFeature *)self baselineOrigin];
          v99 = v75;
          [v73 topLeft];
          v77 = v76;
          [(CRTextFeature *)self baselineOrigin];
          v79 = v78;
          [v73 bottomLeft];
          v98 = v80;
          [(CRTextFeature *)self baselineOrigin];
          v82 = v81;
          [v73 bottomLeft];
          v84 = v83;
          [(CRTextFeature *)self baselineOrigin];
          v86 = v85;
          [v73 bottomLeft];
          v88 = v87;
          [v73 topLeft];
          v90 = v89;
          [v73 bottomLeft];
          v92 = v91;
          [v73 topLeft];
          v93 = -(v104 * (v77 - v79) + (v100 - v99) * v102);
          v95 = v104 * (v92 - v94) + (v88 - v90) * v102;
          if (v95 < v93)
          {
            v93 = v95;
          }

          if (v93 > v97)
          {
            [v73 setSizeHint:{objc_msgSend(v73, "sizeHint") | 2}];
          }

          if (v104 * (v84 - v86) + (v98 - v82) * v102 > v96)
          {
            [v73 setSizeHint:{objc_msgSend(v73, "sizeHint") | 1}];
          }
        }

        v69 = [subFeatures6 countByEnumeratingWithState:&v105 objects:v113 count:16];
      }

      while (v69);
    }
  }
}

- (id)createCharacterSubFeaturesForCandidateAtIndex:(int64_t)index
{
  stringValueCandidates = [(CRTextFeature *)self stringValueCandidates];
  v6 = [stringValueCandidates count];

  if (v6 <= index)
  {
    v12 = MEMORY[0x1E695E0F0];
  }

  else
  {
    stringValueCandidates2 = [(CRTextFeature *)self stringValueCandidates];
    v8 = [stringValueCandidates2 objectAtIndexedSubscript:index];

    v9 = objc_opt_new();
    v10 = [v8 length];
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __63__CRTextFeature_createCharacterSubFeaturesForCandidateAtIndex___block_invoke;
    v17 = &unk_1E7BC3320;
    selfCopy = self;
    v11 = v9;
    v19 = v11;
    [v8 enumerateSubstringsInRange:0 options:v10 usingBlock:{2, &v14}];
    v12 = [MEMORY[0x1E695DEC8] arrayWithArray:{v11, v14, v15, v16, v17, selfCopy}];
  }

  return v12;
}

void __63__CRTextFeature_createCharacterSubFeaturesForCandidateAtIndex___block_invoke(uint64_t a1, void *a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (([v3 isEqual:@" "] & 1) == 0)
  {
    v4 = objc_alloc_init(CRTextFeature);
    v7[0] = v3;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
    [(CRTextFeature *)v4 setStringValueCandidates:v5];

    [(CRTextFeature *)v4 setCandidateProbs:&unk_1F2BFB1A0];
    [(CRTextFeature *)v4 setStringValue:v3];
    [*(a1 + 32) bounds];
    [(CRTextFeature *)v4 setBounds:?];
    [*(a1 + 32) topLeft];
    [(CRTextFeature *)v4 setTopLeft:?];
    [*(a1 + 32) topRight];
    [(CRTextFeature *)v4 setTopRight:?];
    [*(a1 + 32) bottomRight];
    [(CRTextFeature *)v4 setBottomRight:?];
    [*(a1 + 32) bottomLeft];
    [(CRTextFeature *)v4 setBottomLeft:?];
    v6 = [*(a1 + 32) selectedLocale];
    [(CRTextFeature *)v4 setSelectedLocale:v6];

    [*(a1 + 40) addObject:v4];
  }
}

- (id)createCharacterSubFeaturesForCandidateAtIndex:(int64_t)index topWhiteSpacePoints:(id)points bottomWhiteSpacePoints:(id)spacePoints falsePositiveFiltering:(BOOL)filtering
{
  pointsCopy = points;
  spacePointsCopy = spacePoints;
  stringValueCandidates = [(CRTextFeature *)self stringValueCandidates];
  v13 = [stringValueCandidates count];

  if (v13 <= index)
  {
    v23 = MEMORY[0x1E695E0F0];
  }

  else
  {
    array = [MEMORY[0x1E695DF70] array];
    stringValueCandidates2 = [(CRTextFeature *)self stringValueCandidates];
    v16 = [stringValueCandidates2 objectAtIndexedSubscript:index];

    v17 = characterCount(v16);
    if (pointsCopy && spacePointsCopy && (v18 = v17, [pointsCopy count]) && objc_msgSend(spacePointsCopy, "count"))
    {
      v40[0] = 0;
      v40[1] = v40;
      v40[2] = 0x2020000000;
      v40[3] = 0;
      _crUnknownScriptCharacterSet = [MEMORY[0x1E696AB08] _crUnknownScriptCharacterSet];
      v20 = [(NSString *)v16 length];
      v27 = MEMORY[0x1E69E9820];
      v28 = 3221225472;
      v29 = __129__CRTextFeature_createCharacterSubFeaturesForCandidateAtIndex_topWhiteSpacePoints_bottomWhiteSpacePoints_falsePositiveFiltering___block_invoke_2;
      v30 = &unk_1E7BC3348;
      v31 = pointsCopy;
      v37 = 2 * v18 - 2;
      v32 = spacePointsCopy;
      filteringCopy = filtering;
      v21 = _crUnknownScriptCharacterSet;
      v33 = v21;
      selfCopy = self;
      v36 = v40;
      v38 = v18;
      v22 = array;
      v35 = v22;
      [(NSString *)v16 enumerateSubstringsInRange:0 options:v20 usingBlock:2, &v27];
      v23 = [MEMORY[0x1E695DEC8] arrayWithArray:{v22, v27, v28, v29, v30}];

      _Block_object_dispose(v40, 8);
    }

    else
    {
      v24 = [(NSString *)v16 length];
      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 3221225472;
      v41[2] = __129__CRTextFeature_createCharacterSubFeaturesForCandidateAtIndex_topWhiteSpacePoints_bottomWhiteSpacePoints_falsePositiveFiltering___block_invoke;
      v41[3] = &unk_1E7BC3320;
      v41[4] = self;
      v25 = array;
      v42 = v25;
      [(NSString *)v16 enumerateSubstringsInRange:0 options:v24 usingBlock:2, v41];
      v23 = [MEMORY[0x1E695DEC8] arrayWithArray:v25];
    }
  }

  return v23;
}

void __129__CRTextFeature_createCharacterSubFeaturesForCandidateAtIndex_topWhiteSpacePoints_bottomWhiteSpacePoints_falsePositiveFiltering___block_invoke(uint64_t a1, void *a2)
{
  v26[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [CRTextFeature alloc];
  [*(a1 + 32) topLeft];
  v6 = v5;
  v8 = v7;
  [*(a1 + 32) topRight];
  v10 = v9;
  v12 = v11;
  [*(a1 + 32) bottomLeft];
  v14 = v13;
  v16 = v15;
  [*(a1 + 32) bottomRight];
  v19 = [(CRTextFeature *)v4 initWithTopLeft:v6 topRight:v8 bottomLeft:v10 bottomRight:v12, v14, v16, v17, v18];
  [*(a1 + 32) bounds];
  [(CRTextFeature *)v19 setBounds:?];
  [(CRTextFeature *)v19 setStringValue:v3];
  v26[0] = v3;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
  [(CRTextFeature *)v19 setStringValueCandidates:v20];

  v21 = [*(a1 + 32) confidence];
  [(CRTextFeature *)v19 setConfidence:v21];

  v22 = [*(a1 + 32) confidence];
  v25 = v22;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
  [(CRTextFeature *)v19 setCandidateProbs:v23];

  [*(a1 + 32) baselineAngle];
  [(CRTextFeature *)v19 setBaselineAngle:?];
  [(CRTextFeature *)v19 setType:4];
  v24 = [*(a1 + 32) selectedLocale];
  [(CRTextFeature *)v19 setSelectedLocale:v24];

  [*(a1 + 40) addObject:v19];
}

void __129__CRTextFeature_createCharacterSubFeaturesForCandidateAtIndex_topWhiteSpacePoints_bottomWhiteSpacePoints_falsePositiveFiltering___block_invoke_2(uint64_t a1, void *a2)
{
  v52[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([*(a1 + 32) count] == *(a1 + 80) && objc_msgSend(*(a1 + 40), "count") == *(a1 + 80))
  {
    if (*(a1 + 96) != 1 || [v3 rangeOfCharacterFromSet:*(a1 + 48)] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v4 = *(*(*(a1 + 72) + 8) + 24);
      if (v4)
      {
        v5 = *(a1 + 32);
        v6 = 2 * v4 - 1;
        if (v4 == *(a1 + 88) - 1)
        {
          v7 = [v5 objectAtIndexedSubscript:v6];
          [v7 pointValue];
          v9 = v8;
          v11 = v10;

          v12 = [*(a1 + 40) objectAtIndexedSubscript:2 * *(*(*(a1 + 72) + 8) + 24) - 1];
          [v12 pointValue];
          v14 = v13;
          v16 = v15;

          [*(a1 + 56) topRight];
          v18 = v17;
          v20 = v19;
          [*(a1 + 56) bottomRight];
          v22 = v21;
          v24 = v23;
LABEL_13:
          v46 = [[CRTextFeature alloc] initWithTopLeft:v9 topRight:v11 bottomLeft:v18 bottomRight:v20, v14, v16, v22, v24];
          [(CRTextFeature *)v46 setStringValue:v3];
          v52[0] = v3;
          v47 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:1];
          [(CRTextFeature *)v46 setStringValueCandidates:v47];

          v48 = [*(a1 + 56) confidence];
          [(CRTextFeature *)v46 setConfidence:v48];

          v49 = [*(a1 + 56) confidence];
          v51 = v49;
          v50 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v51 count:1];
          [(CRTextFeature *)v46 setCandidateProbs:v50];

          [*(a1 + 56) baselineAngle];
          [(CRTextFeature *)v46 setBaselineAngle:?];
          [(CRTextFeature *)v46 setType:4];
          [*(a1 + 64) addObject:v46];

          goto LABEL_9;
        }

        v37 = [v5 objectAtIndexedSubscript:v6];
        [v37 pointValue];
        v9 = v38;
        v11 = v39;

        v40 = [*(a1 + 40) objectAtIndexedSubscript:2 * *(*(*(a1 + 72) + 8) + 24) - 1];
        [v40 pointValue];
        v14 = v41;
        v16 = v42;

        v43 = [*(a1 + 32) objectAtIndexedSubscript:2 * *(*(*(a1 + 72) + 8) + 24)];
        [v43 pointValue];
        v18 = v44;
        v20 = v45;

        v34 = [*(a1 + 40) objectAtIndexedSubscript:2 * *(*(*(a1 + 72) + 8) + 24)];
        [v34 pointValue];
      }

      else
      {
        [*(a1 + 56) topLeft];
        v9 = v27;
        v11 = v28;
        [*(a1 + 56) bottomLeft];
        v14 = v29;
        v16 = v30;
        v31 = [*(a1 + 32) objectAtIndexedSubscript:*(*(*(a1 + 72) + 8) + 24)];
        [v31 pointValue];
        v18 = v32;
        v20 = v33;

        v34 = [*(a1 + 40) objectAtIndexedSubscript:*(*(*(a1 + 72) + 8) + 24)];
        [v34 pointValue];
      }

      v22 = v35;
      v24 = v36;

      goto LABEL_13;
    }
  }

  else
  {
    v25 = *(a1 + 64);
    v26 = [*(a1 + 56) copy];
    [v25 addObject:v26];
  }

LABEL_9:
  ++*(*(*(a1 + 72) + 8) + 24);
}

- (CGSize)sizeForImageSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  polygon = [(CRTextFeature *)self polygon];

  if (polygon)
  {
    polygon2 = [(CRTextFeature *)self polygon];
    denormalizedPolyline = [polygon2 denormalizedPolyline];
    [denormalizedPolyline estimatedLineSizeForPairedPointPolygon];
    v10 = v9;
    v12 = v11;
  }

  else
  {
    [(CRTextFeature *)self topLeft];
    v14 = v13;
    v16 = v15;
    [(CRTextFeature *)self topRight];
    v19 = v14 == v18 && v16 == v17;
    if (v19 || ([(CRTextFeature *)self topLeft], v21 = v20, v23 = v22, [(CRTextFeature *)self bottomLeft], v21 == v25) && v23 == v24)
    {
      [(CRTextFeature *)self bounds];
      v10 = v26;
      [(CRTextFeature *)self bounds];
      v12 = v27;
    }

    else
    {
      [(CRTextFeature *)self topLeft];
      v29 = v28;
      [(CRTextFeature *)self topRight];
      v31 = width * (v29 - v30);
      [(CRTextFeature *)self topLeft];
      v33 = v32;
      [(CRTextFeature *)self topRight];
      v35 = height * (v33 - v34);
      [(CRTextFeature *)self bottomLeft];
      v37 = v36;
      [(CRTextFeature *)self topLeft];
      v39 = width * (v37 - v38);
      [(CRTextFeature *)self bottomLeft];
      v41 = v40;
      [(CRTextFeature *)self topLeft];
      v43 = height * (v41 - v42);
      v10 = sqrt(v35 * v35 + v31 * v31);
      v12 = sqrt(v43 * v43 + v39 * v39);
    }
  }

  v44 = v10;
  v45 = v12;
  result.height = v45;
  result.width = v44;
  return result;
}

- (float)aspectRatioWithImageSize:(CGSize)size
{
  [(CRTextFeature *)self sizeForImageSize:size.width, size.height];
  v5 = v4;
  result = 0.0;
  if (v5 != 0.0)
  {
    v7 = v3;
    result = v7 / v5;
    if (v5 <= 0.0)
    {
      return 0.0;
    }
  }

  return result;
}

- (void)setStringValueByReplacingCharactersInSet:(id)set withString:(id)string
{
  v61 = *MEMORY[0x1E69E9840];
  setCopy = set;
  stringCopy = string;
  whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  stringValue = self->_stringValue;
  if (stringValue)
  {
    selfCopy = self;
    v10 = [(NSString *)stringValue componentsSeparatedByCharactersInSet:setCopy];
    v11 = [v10 componentsJoinedByString:stringCopy];
    v12 = [v11 stringByTrimmingCharactersInSet:whitespaceCharacterSet];

    self = selfCopy;
    v13 = selfCopy->_stringValue;
    selfCopy->_stringValue = v12;
  }

  stringValueCandidates = [(CRTextFeature *)self stringValueCandidates];
  v15 = [stringValueCandidates count];

  if (v15)
  {
    array = [MEMORY[0x1E695DF70] array];
    _crUnknownScriptCharacterSet = [MEMORY[0x1E696AB08] _crUnknownScriptCharacterSet];
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    obj = [v37 stringValueCandidates];
    v17 = [obj countByEnumeratingWithState:&v53 objects:v60 count:16];
    if (v17)
    {
      v18 = *v54;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v54 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v53 + 1) + 8 * i);
          if ([v20 rangeOfCharacterFromSet:_crUnknownScriptCharacterSet] == 0x7FFFFFFFFFFFFFFFLL)
          {
            [array addObject:v20];
          }

          else
          {
            v21 = [v20 componentsSeparatedByCharactersInSet:setCopy];
            v22 = [v21 componentsJoinedByString:stringCopy];
            v23 = [v22 stringByTrimmingCharactersInSet:whitespaceCharacterSet];

            [array addObject:v23];
          }
        }

        v17 = [obj countByEnumeratingWithState:&v53 objects:v60 count:16];
      }

      while (v17);
    }

    [v37 setStringValueCandidates:array];
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  subFeatures = [v37 subFeatures];
  v25 = [subFeatures countByEnumeratingWithState:&v49 objects:v59 count:16];
  if (v25)
  {
    v26 = *v50;
    do
    {
      for (j = 0; j != v25; ++j)
      {
        if (*v50 != v26)
        {
          objc_enumerationMutation(subFeatures);
        }

        [*(*(&v49 + 1) + 8 * j) setStringValueByReplacingCharactersInSet:setCopy withString:stringCopy];
      }

      v25 = [subFeatures countByEnumeratingWithState:&v49 objects:v59 count:16];
    }

    while (v25);
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  subFeatureCandidates = [v37 subFeatureCandidates];
  v29 = [subFeatureCandidates countByEnumeratingWithState:&v45 objects:v58 count:16];
  if (v29)
  {
    v30 = *v46;
    do
    {
      for (k = 0; k != v29; ++k)
      {
        if (*v46 != v30)
        {
          objc_enumerationMutation(subFeatureCandidates);
        }

        v32 = *(*(&v45 + 1) + 8 * k);
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        v33 = v32;
        v34 = [v33 countByEnumeratingWithState:&v41 objects:v57 count:16];
        if (v34)
        {
          v35 = *v42;
          do
          {
            for (m = 0; m != v34; ++m)
            {
              if (*v42 != v35)
              {
                objc_enumerationMutation(v33);
              }

              [*(*(&v41 + 1) + 8 * m) setStringValueByReplacingCharactersInSet:setCopy withString:stringCopy];
            }

            v34 = [v33 countByEnumeratingWithState:&v41 objects:v57 count:16];
          }

          while (v34);
        }
      }

      v29 = [subFeatureCandidates countByEnumeratingWithState:&v45 objects:v58 count:16];
    }

    while (v29);
  }
}

- (void)adjustBoundsBasedOnSubfeaturesForImageSize:(CGSize)size
{
  v159 = *MEMORY[0x1E69E9840];
  v138 = 0u;
  v139 = 0u;
  v140 = 0u;
  v141 = 0u;
  subFeatures = [(CRTextFeature *)self subFeatures];
  v5 = [subFeatures countByEnumeratingWithState:&v138 objects:v158 count:16];
  v6.f64[0] = v135;
  v7 = v135 * 0.5;
  v8 = v136 * 0.5;
  if (v5)
  {
    v9 = *v139;
    v6.f64[1] = v136;
    v137 = v6;
    v10 = 1.79769313e308;
    v11 = -1.79769313e308;
    v12 = -1.79769313e308;
    v13 = 1.79769313e308;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v139 != v9)
        {
          objc_enumerationMutation(subFeatures);
        }

        v15 = *(*(&v138 + 1) + 8 * i);
        [v15 topLeft];
        v150 = v16;
        v151 = v17;
        [v15 topRight];
        v152 = v18;
        v153 = v19;
        [v15 bottomRight];
        v154 = v20;
        v155 = v21;
        [v15 bottomLeft];
        v22 = 0;
        v156 = v23;
        v157 = v24;
        do
        {
          v25 = (&v150 + v22);
          v26 = vmulq_f64(v137, *(&v152 + v22));
          *v25 = vmulq_f64(v137, *(&v150 + v22));
          v25[1] = v26;
          v22 += 32;
        }

        while (v22 != 64);
        [(CRTextFeature *)self baselineAngle];
        rotatePolygon(&v150, &v142, v7, v8, v27);
        v28 = v142;
        if (v13 >= v142)
        {
          v29 = v142;
        }

        else
        {
          v29 = v13;
        }

        if (v29 >= v144)
        {
          v30 = v144;
        }

        else
        {
          v30 = v29;
        }

        if (v30 >= v146)
        {
          v13 = v148;
          if (v146 < v148)
          {
            v13 = v146;
          }
        }

        else if (v30 >= v148)
        {
          v13 = v148;
        }

        else
        {
          v13 = v30;
        }

        if (v12 > v142)
        {
          v28 = v12;
        }

        if (v28 <= v144)
        {
          v28 = v144;
        }

        if (v28 <= v146)
        {
          v12 = v148;
          if (v146 > v148)
          {
            v12 = v146;
          }
        }

        else if (v28 <= v148)
        {
          v12 = v148;
        }

        else
        {
          v12 = v28;
        }

        v31 = v143;
        if (v10 >= v143)
        {
          v32 = v143;
        }

        else
        {
          v32 = v10;
        }

        if (v32 >= v145)
        {
          v33 = v145;
        }

        else
        {
          v33 = v32;
        }

        if (v33 >= v147)
        {
          v10 = v149;
          if (v147 < v149)
          {
            v10 = v147;
          }
        }

        else if (v33 >= v149)
        {
          v10 = v149;
        }

        else
        {
          v10 = v33;
        }

        if (v11 > v143)
        {
          v31 = v11;
        }

        if (v31 <= v145)
        {
          v31 = v145;
        }

        if (v31 <= v147)
        {
          v11 = v149;
          if (v147 > v149)
          {
            v11 = v147;
          }
        }

        else
        {
          v11 = v149;
          if (v31 > v149)
          {
            v11 = v31;
          }
        }
      }

      v5 = [subFeatures countByEnumeratingWithState:&v138 objects:v158 count:16];
    }

    while (v5);
  }

  else
  {
    v10 = 1.79769313e308;
    v11 = -1.79769313e308;
    v12 = -1.79769313e308;
    v13 = 1.79769313e308;
  }

  v150 = v13;
  v151 = v10;
  v152 = v12;
  v153 = v10;
  v154 = v12;
  v155 = v11;
  v156 = v13;
  v157 = v11;
  [(CRTextFeature *)self baselineAngle];
  rotatePolygon(&v150, &v142, v7, v8, -v34);
  v35 = v142;
  v36 = v143;
  v37 = v135 == 0.0 || v136 == 0.0;
  if (!v37)
  {
    v35 = v142 / v135;
    v36 = v143 / v136;
  }

  [(CRTextFeature *)self setTopLeft:v35, v36, v136, v135];
  v38 = v144;
  v39 = v145;
  if (!v37)
  {
    v38 = v144 / v135;
    v39 = v145 / v136;
  }

  [(CRTextFeature *)self setTopRight:v38, v39];
  v40 = v146;
  v41 = v147;
  if (!v37)
  {
    v40 = v146 / v135;
    v41 = v147 / v136;
  }

  [(CRTextFeature *)self setBottomRight:v40, v41];
  v42 = v148;
  v43 = v149;
  if (!v37)
  {
    v42 = v148 / v135;
    v43 = v149 / v136;
  }

  [(CRTextFeature *)self setBottomLeft:v42, v43];
  [(CRTextFeature *)self topLeft];
  v45 = v44;
  [(CRTextFeature *)self bottomLeft];
  if (v45 >= v46)
  {
    [(CRTextFeature *)self bottomLeft];
  }

  else
  {
    [(CRTextFeature *)self topLeft];
  }

  v48 = v47;
  [(CRTextFeature *)self topRight];
  if (v48 >= v49)
  {
    [(CRTextFeature *)self topRight];
  }

  else
  {
    [(CRTextFeature *)self topLeft];
    v51 = v50;
    [(CRTextFeature *)self bottomLeft];
    if (v51 >= v52)
    {
      [(CRTextFeature *)self bottomLeft];
    }

    else
    {
      [(CRTextFeature *)self topLeft];
    }
  }

  v54 = v53;
  [(CRTextFeature *)self bottomRight];
  if (v54 >= v55)
  {
    [(CRTextFeature *)self bottomRight];
  }

  else
  {
    [(CRTextFeature *)self topLeft];
    v57 = v56;
    [(CRTextFeature *)self bottomLeft];
    if (v57 >= v58)
    {
      [(CRTextFeature *)self bottomLeft];
    }

    else
    {
      [(CRTextFeature *)self topLeft];
    }

    v61 = v59;
    [(CRTextFeature *)self topRight];
    if (v61 >= v62)
    {
      [(CRTextFeature *)self topRight];
    }

    else
    {
      [(CRTextFeature *)self topLeft];
      v64 = v63;
      [(CRTextFeature *)self bottomLeft];
      if (v64 >= v65)
      {
        [(CRTextFeature *)self bottomLeft];
      }

      else
      {
        [(CRTextFeature *)self topLeft];
      }
    }
  }

  v66 = v60;
  [(CRTextFeature *)self topLeft];
  v68 = v67;
  [(CRTextFeature *)self bottomLeft];
  if (v68 <= v69)
  {
    [(CRTextFeature *)self bottomLeft];
  }

  else
  {
    [(CRTextFeature *)self topLeft];
  }

  v71 = v70;
  [(CRTextFeature *)self topRight];
  if (v71 <= v72)
  {
    [(CRTextFeature *)self topRight];
  }

  else
  {
    [(CRTextFeature *)self topLeft];
    v74 = v73;
    [(CRTextFeature *)self bottomLeft];
    if (v74 <= v75)
    {
      [(CRTextFeature *)self bottomLeft];
    }

    else
    {
      [(CRTextFeature *)self topLeft];
    }
  }

  v77 = v76;
  [(CRTextFeature *)self bottomRight];
  if (v77 <= v78)
  {
    [(CRTextFeature *)self bottomRight];
  }

  else
  {
    [(CRTextFeature *)self topLeft];
    v80 = v79;
    [(CRTextFeature *)self bottomLeft];
    if (v80 <= v81)
    {
      [(CRTextFeature *)self bottomLeft];
    }

    else
    {
      [(CRTextFeature *)self topLeft];
    }

    v84 = v82;
    [(CRTextFeature *)self topRight];
    if (v84 <= v85)
    {
      [(CRTextFeature *)self topRight];
    }

    else
    {
      [(CRTextFeature *)self topLeft];
      v87 = v86;
      [(CRTextFeature *)self bottomLeft];
      if (v87 <= v88)
      {
        [(CRTextFeature *)self bottomLeft];
      }

      else
      {
        [(CRTextFeature *)self topLeft];
      }
    }
  }

  v89 = v83;
  [(CRTextFeature *)self topLeft];
  v91 = v90;
  [(CRTextFeature *)self topRight];
  if (v91 >= v92)
  {
    [(CRTextFeature *)self topRight];
  }

  else
  {
    [(CRTextFeature *)self topLeft];
  }

  v94 = v93;
  [(CRTextFeature *)self bottomRight];
  if (v94 >= v95)
  {
    [(CRTextFeature *)self bottomRight];
  }

  else
  {
    [(CRTextFeature *)self topLeft];
    v97 = v96;
    [(CRTextFeature *)self topRight];
    if (v97 >= v98)
    {
      [(CRTextFeature *)self topRight];
    }

    else
    {
      [(CRTextFeature *)self topLeft];
    }
  }

  v100 = v99;
  [(CRTextFeature *)self bottomLeft];
  if (v100 >= v101)
  {
    [(CRTextFeature *)self bottomLeft];
  }

  else
  {
    [(CRTextFeature *)self topLeft];
    v103 = v102;
    [(CRTextFeature *)self topRight];
    if (v103 >= v104)
    {
      [(CRTextFeature *)self topRight];
    }

    else
    {
      [(CRTextFeature *)self topLeft];
    }

    v107 = v105;
    [(CRTextFeature *)self bottomRight];
    if (v107 >= v108)
    {
      [(CRTextFeature *)self bottomRight];
    }

    else
    {
      [(CRTextFeature *)self topLeft];
      v110 = v109;
      [(CRTextFeature *)self topRight];
      if (v110 >= v111)
      {
        [(CRTextFeature *)self topRight];
      }

      else
      {
        [(CRTextFeature *)self topLeft];
      }
    }
  }

  v112 = v106;
  [(CRTextFeature *)self topLeft];
  v114 = v113;
  [(CRTextFeature *)self topRight];
  if (v114 <= v115)
  {
    [(CRTextFeature *)self topRight];
  }

  else
  {
    [(CRTextFeature *)self topLeft];
  }

  v117 = v116;
  [(CRTextFeature *)self bottomRight];
  if (v117 <= v118)
  {
    [(CRTextFeature *)self bottomRight];
  }

  else
  {
    [(CRTextFeature *)self topLeft];
    v120 = v119;
    [(CRTextFeature *)self topRight];
    if (v120 <= v121)
    {
      [(CRTextFeature *)self topRight];
    }

    else
    {
      [(CRTextFeature *)self topLeft];
    }
  }

  v123 = v122;
  [(CRTextFeature *)self bottomLeft];
  if (v123 <= v124)
  {
    [(CRTextFeature *)self bottomLeft];
  }

  else
  {
    [(CRTextFeature *)self topLeft];
    v126 = v125;
    [(CRTextFeature *)self topRight];
    if (v126 <= v127)
    {
      [(CRTextFeature *)self topRight];
    }

    else
    {
      [(CRTextFeature *)self topLeft];
    }

    v130 = v128;
    [(CRTextFeature *)self bottomRight];
    if (v130 <= v131)
    {
      [(CRTextFeature *)self bottomRight];
    }

    else
    {
      [(CRTextFeature *)self topLeft];
      v133 = v132;
      [(CRTextFeature *)self topRight];
      if (v133 <= v134)
      {
        [(CRTextFeature *)self topRight];
      }

      else
      {
        [(CRTextFeature *)self topLeft];
      }
    }
  }

  [(CRTextFeature *)self setBounds:v66, v112, v89 - v66, v129 - v112];
}

- (void)flipHorizontally
{
  v45 = *MEMORY[0x1E69E9840];
  [(CRTextFeature *)self topLeft];
  v4 = v3;
  v6 = v5;
  [(CRTextFeature *)self topRight];
  v8 = v7;
  v10 = v9;
  [(CRTextFeature *)self bottomRight];
  [(CRTextFeature *)self setTopLeft:?];
  [(CRTextFeature *)self bottomLeft];
  [(CRTextFeature *)self setTopRight:?];
  [(CRTextFeature *)self setBottomLeft:v8, v10];
  [(CRTextFeature *)self setBottomRight:v4, v6];
  [(CRTextFeature *)self baselineAngle];
  v12 = v11 + 3.14159265;
  if (v12 <= 3.14159265)
  {
    if (v12 > -3.14159265)
    {
      goto LABEL_6;
    }

    v13 = 6.28318531;
  }

  else
  {
    v13 = -6.28318531;
  }

  v12 = v12 + v13;
LABEL_6:
  *&v12 = v12;
  [(CRTextFeature *)self setBaselineAngle:v12];
  v14 = objc_opt_new();
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  subFeatures = [(CRTextFeature *)self subFeatures];
  v16 = [subFeatures countByEnumeratingWithState:&v38 objects:v44 count:16];
  if (v16)
  {
    v17 = *v39;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v39 != v17)
        {
          objc_enumerationMutation(subFeatures);
        }

        v19 = *(*(&v38 + 1) + 8 * i);
        if (([v14 containsObject:v19] & 1) == 0)
        {
          [v19 flipHorizontally];
          [v14 addObject:v19];
        }
      }

      v16 = [subFeatures countByEnumeratingWithState:&v38 objects:v44 count:16];
    }

    while (v16);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  subFeatureCandidates = [(CRTextFeature *)self subFeatureCandidates];
  v21 = [subFeatureCandidates countByEnumeratingWithState:&v34 objects:v43 count:16];
  if (v21)
  {
    v22 = *v35;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v35 != v22)
        {
          objc_enumerationMutation(subFeatureCandidates);
        }

        v24 = *(*(&v34 + 1) + 8 * j);
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v25 = v24;
        v26 = [v25 countByEnumeratingWithState:&v30 objects:v42 count:16];
        if (v26)
        {
          v27 = *v31;
          do
          {
            for (k = 0; k != v26; ++k)
            {
              if (*v31 != v27)
              {
                objc_enumerationMutation(v25);
              }

              v29 = *(*(&v30 + 1) + 8 * k);
              if (([v14 containsObject:v29] & 1) == 0)
              {
                [v29 flipHorizontally];
                [v14 addObject:v29];
              }
            }

            v26 = [v25 countByEnumeratingWithState:&v30 objects:v42 count:16];
          }

          while (v26);
        }
      }

      v21 = [subFeatureCandidates countByEnumeratingWithState:&v34 objects:v43 count:16];
    }

    while (v21);
  }
}

- (id)createSubFeaturesFromStringsForCandidateAtIndex:(int64_t)index topWhiteSpacePoints:(id)points bottomWhiteSpacePoints:(id)spacePoints hasBoundarySpacePoints:(BOOL)boundarySpacePoints hasCharacterAndWordBoundaries:(BOOL)boundaries
{
  boundariesCopy = boundaries;
  boundarySpacePointsCopy = boundarySpacePoints;
  v149[1] = *MEMORY[0x1E69E9840];
  pointsCopy = points;
  spacePointsCopy = spacePoints;
  stringValueCandidates = [(CRTextFeature *)self stringValueCandidates];
  v13 = [stringValueCandidates count];

  if (v13 <= index)
  {
    v48 = MEMORY[0x1E695E0F0];
    goto LABEL_58;
  }

  if (boundarySpacePointsCopy)
  {
    v14 = [pointsCopy objectAtIndexedSubscript:0];
    [v14 pointValue];
    v16 = v15;
    v18 = v17;
    v19 = [pointsCopy objectAtIndexedSubscript:1];
    [v19 pointValue];
    v133 = 0;
    if (v16 == v21 && v18 == v20)
    {
      v22 = [spacePointsCopy objectAtIndexedSubscript:0];
      [v22 pointValue];
      v24 = v23;
      v26 = v25;
      v27 = [spacePointsCopy objectAtIndexedSubscript:1];
      [v27 pointValue];
      v29 = v24 == v28;
      if (v26 != v30)
      {
        v29 = 0;
      }

      v133 = v29;
    }

    lastObject = [pointsCopy lastObject];
    [lastObject pointValue];
    v33 = v32;
    v35 = v34;
    v36 = [pointsCopy objectAtIndexedSubscript:{objc_msgSend(pointsCopy, "count") - 2}];
    [v36 pointValue];
    v127 = 0;
    if (v33 == v38 && v35 == v37)
    {
      lastObject2 = [spacePointsCopy lastObject];
      [lastObject2 pointValue];
      v41 = v40;
      v43 = v42;
      v44 = [spacePointsCopy objectAtIndexedSubscript:{objc_msgSend(spacePointsCopy, "count") - 2}];
      [v44 pointValue];
      v46 = v41 == v45;
      if (v43 != v47)
      {
        v46 = 0;
      }

      v127 = v46;
    }

    if ([pointsCopy count] == 4)
    {
      if (!v133 || !v127)
      {
        goto LABEL_24;
      }

      goto LABEL_22;
    }

    if ([spacePointsCopy count] == 4 && v133 && v127)
    {
LABEL_22:
      array = [(CRTextFeature *)self copy];
      stringValueCandidates2 = [(CRTextFeature *)self stringValueCandidates];
      v57 = [stringValueCandidates2 objectAtIndexedSubscript:index];
      v146 = v57;
      v58 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v146 count:1];
      [array setStringValueCandidates:v58];

      candidateProbs = [(CRTextFeature *)self candidateProbs];
      v60 = [candidateProbs objectAtIndexedSubscript:index];
      v145 = v60;
      v61 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v145 count:1];
      [array setCandidateProbs:v61];

      v144 = array;
      v55 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v144 count:1];
      goto LABEL_23;
    }

LABEL_24:
    array = [MEMORY[0x1E695DF70] array];
    stringValueCandidates3 = [(CRTextFeature *)self stringValueCandidates];
    v63 = [stringValueCandidates3 objectAtIndexedSubscript:index];
    whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
    v65 = [v63 componentsSeparatedByCharactersInSet:whitespaceCharacterSet];

    v124 = v65;
    v66 = [v65 mutableCopy];
    [v66 removeObject:&stru_1F2BB4348];
    v67 = [v66 count];
    if (boundarySpacePointsCopy)
    {
      combinedTokenSequenceString = 2;
    }

    else
    {
      combinedTokenSequenceString = -2;
    }

    v69 = combinedTokenSequenceString + 2 * v67;
    if ([pointsCopy count] == v69 && objc_msgSend(spacePointsCopy, "count") == v69)
    {
      v123 = v66;
      if (boundarySpacePointsCopy)
      {
        v126 = [v66 count];
      }

      else
      {
        v126 = [v66 count] - 1;
      }

      v139 = 0u;
      v140 = 0u;
      v137 = 0u;
      v138 = 0u;
      obj = v66;
      v71 = [obj countByEnumeratingWithState:&v137 objects:v143 count:16];
      if (v71)
      {
        v72 = boundarySpacePointsCopy;
        v131 = boundarySpacePointsCopy;
        v132 = *v138;
        if (boundariesCopy)
        {
          v73 = 4;
        }

        else
        {
          v73 = 3;
        }

        v125 = 2 * v126 - 1;
        v74 = 2;
        if (!boundarySpacePointsCopy)
        {
          v74 = 0;
        }

        v129 = v73;
        v130 = v74;
        do
        {
          v75 = 0;
          v76 = 2 * v72;
          do
          {
            if (*v138 != v132)
            {
              objc_enumerationMutation(obj);
            }

            v77 = *(*(&v137 + 1) + 8 * v75);
            if (v131 == v72 && v133)
            {
              [(CRTextFeature *)self topLeft];
              v79 = v78;
              v81 = v80;
              [(CRTextFeature *)self bottomLeft];
              v83 = v82;
              v85 = v84;
              v86 = [pointsCopy objectAtIndexedSubscript:v130];
              [v86 pointValue];
              v88 = v87;
              v90 = v89;

              v91 = [spacePointsCopy objectAtIndexedSubscript:v130];
              [v91 pointValue];
            }

            else
            {
              if (v126 == v72 && v127)
              {
                v94 = [pointsCopy objectAtIndexedSubscript:v125];
                [v94 pointValue];
                v79 = v95;
                v81 = v96;

                v97 = [spacePointsCopy objectAtIndexedSubscript:v125];
                [v97 pointValue];
                v83 = v98;
                v85 = v99;

                [(CRTextFeature *)self topRight];
                v88 = v100;
                v90 = v101;
                [(CRTextFeature *)self bottomRight];
                v103 = v102;
                v105 = v104;
                goto LABEL_49;
              }

              v106 = [pointsCopy objectAtIndexedSubscript:v76 - 1];
              [v106 pointValue];
              v79 = v107;
              v81 = v108;

              v109 = [spacePointsCopy objectAtIndexedSubscript:v76 - 1];
              [v109 pointValue];
              v83 = v110;
              v85 = v111;

              v112 = [pointsCopy objectAtIndexedSubscript:v76];
              [v112 pointValue];
              v88 = v113;
              v90 = v114;

              v91 = [spacePointsCopy objectAtIndexedSubscript:v76];
              [v91 pointValue];
            }

            v103 = v92;
            v105 = v93;

LABEL_49:
            v105 = [[CRTextFeature alloc] initWithTopLeft:v79 topRight:v81 bottomLeft:v88 bottomRight:v90, v83, v85, v103, v105];
            if (boundariesCopy)
            {
              combinedTokenSequenceString = [v77 combinedTokenSequenceString];
              v77 = combinedTokenSequenceString;
            }

            [(CRTextFeature *)v105 setStringValue:v77, v123];
            if (boundariesCopy)
            {
            }

            stringValue = [(CRTextFeature *)v105 stringValue];
            v142 = stringValue;
            v117 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v142 count:1];
            [(CRTextFeature *)v105 setStringValueCandidates:v117];

            confidence = [(CRTextFeature *)self confidence];
            [(CRTextFeature *)v105 setConfidence:confidence];

            confidence2 = [(CRTextFeature *)self confidence];
            v141 = confidence2;
            v120 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v141 count:1];
            [(CRTextFeature *)v105 setCandidateProbs:v120];

            [(CRTextFeature *)self baselineAngle];
            [(CRTextFeature *)v105 setBaselineAngle:?];
            selectedLocale = [(CRTextFeature *)self selectedLocale];
            [(CRTextFeature *)v105 setSelectedLocale:selectedLocale];

            [(CRTextFeature *)v105 setType:v129];
            [array addObject:v105];

            ++v72;
            ++v75;
            v76 += 2;
          }

          while (v71 != v75);
          v71 = [obj countByEnumeratingWithState:&v137 objects:v143 count:16];
        }

        while (v71);
      }

      v66 = v123;
    }

    else
    {
      v70 = [(CRTextFeature *)self copy];
      [array addObject:v70];
    }

    v48 = [MEMORY[0x1E695DEC8] arrayWithArray:{array, v123}];

    goto LABEL_57;
  }

  if ([pointsCopy count] && objc_msgSend(spacePointsCopy, "count"))
  {
    LOBYTE(v127) = 1;
    LOBYTE(v133) = 1;
    goto LABEL_24;
  }

  array = [(CRTextFeature *)self copy];
  stringValueCandidates4 = [(CRTextFeature *)self stringValueCandidates];
  v50 = [stringValueCandidates4 objectAtIndexedSubscript:index];
  v149[0] = v50;
  v51 = [MEMORY[0x1E695DEC8] arrayWithObjects:v149 count:1];
  [array setStringValueCandidates:v51];

  candidateProbs2 = [(CRTextFeature *)self candidateProbs];
  v53 = [candidateProbs2 objectAtIndexedSubscript:index];
  v148 = v53;
  v54 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v148 count:1];
  [array setCandidateProbs:v54];

  v147 = array;
  v55 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v147 count:1];
LABEL_23:
  v48 = v55;
LABEL_57:

LABEL_58:

  return v48;
}

- (float)calculateTextBoxHeightForImageWidth:(unint64_t)width imageHeight:(unint64_t)height
{
  [(CRTextFeature *)self topLeft];
  v8 = v7;
  [(CRTextFeature *)self bottomLeft];
  v10 = (v8 - v9) * width;
  [(CRTextFeature *)self topLeft];
  v12 = v11;
  [(CRTextFeature *)self bottomLeft];
  v14 = (v12 - v13) * height;
  [(CRTextFeature *)self topRight];
  v16 = v15;
  [(CRTextFeature *)self bottomRight];
  v18 = (v16 - v17) * width;
  [(CRTextFeature *)self topRight];
  v20 = v19;
  [(CRTextFeature *)self bottomRight];
  v22 = (v20 - v21) * height;
  v23 = sqrtf((v14 * v14) + (v10 * v10));
  result = sqrtf((v22 * v22) + (v18 * v18));
  if (v23 > result)
  {
    return v23;
  }

  return result;
}

- (void)setSelectedLocale:(id)locale includeSubfeatures:(BOOL)subfeatures
{
  subfeaturesCopy = subfeatures;
  v16 = *MEMORY[0x1E69E9840];
  localeCopy = locale;
  [(CRTextFeature *)self setSelectedLocale:localeCopy];
  if (subfeaturesCopy)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    subFeatures = [(CRTextFeature *)self subFeatures];
    v8 = [subFeatures countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v8)
    {
      v9 = *v12;
      do
      {
        v10 = 0;
        do
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(subFeatures);
          }

          [*(*(&v11 + 1) + 8 * v10++) setSelectedLocale:localeCopy includeSubfeatures:1];
        }

        while (v8 != v10);
        v8 = [subFeatures countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }
}

- (void)setSelectedScriptCategory:(id)category includeSubfeatures:(BOOL)subfeatures
{
  subfeaturesCopy = subfeatures;
  v16 = *MEMORY[0x1E69E9840];
  categoryCopy = category;
  [(CRTextFeature *)self setSelectedScriptCategory:categoryCopy];
  if (subfeaturesCopy)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    subFeatures = [(CRTextFeature *)self subFeatures];
    v8 = [subFeatures countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v8)
    {
      v9 = *v12;
      do
      {
        v10 = 0;
        do
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(subFeatures);
          }

          [*(*(&v11 + 1) + 8 * v10++) setSelectedScriptCategory:categoryCopy includeSubfeatures:1];
        }

        while (v8 != v10);
        v8 = [subFeatures countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }
}

- (void)appendTextFeature:(id)feature imageSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  featureCopy = feature;
  stringValue = [(CRTextFeature *)self stringValue];
  v8 = [stringValue length];
  stringValue2 = [(CRTextFeature *)self stringValue];
  v10 = [stringValue2 length];
  stringValue3 = [featureCopy stringValue];
  v12 = [stringValue3 length];

  v13 = MEMORY[0x1E696AD98];
  confidence = [(CRTextFeature *)self confidence];
  [confidence floatValue];
  v16 = v15;
  confidence2 = [featureCopy confidence];
  [confidence2 floatValue];
  v18 = v8 / (v12 + v10);
  *&v20 = ((1.0 - v18) * v19) + (v16 * v18);
  v21 = [v13 numberWithFloat:v20];
  [(CRTextFeature *)self setConfidence:v21];

  subFeatures = [(CRTextFeature *)self subFeatures];
  subFeatures2 = [featureCopy subFeatures];
  v24 = [subFeatures arrayByAddingObjectsFromArray:subFeatures2];
  [(CRTextFeature *)self setSubFeatures:v24];

  stringValue4 = [(CRTextFeature *)self stringValue];
  stringValue5 = [featureCopy stringValue];
  selectedLocale = [(CRTextFeature *)self selectedLocale];
  v28 = [stringValue4 _crStringByAppendingString:stringValue5 locale:selectedLocale];
  [(CRTextFeature *)self setStringValue:v28];

  array = [MEMORY[0x1E695DF70] array];
  for (i = 0; ; ++i)
  {
    stringValueCandidates = [(CRTextFeature *)self stringValueCandidates];
    v31 = [stringValueCandidates count];
    stringValueCandidates2 = [featureCopy stringValueCandidates];
    if (v31 >= [stringValueCandidates2 count])
    {
      [featureCopy stringValueCandidates];
    }

    else
    {
      [(CRTextFeature *)self stringValueCandidates];
    }
    v33 = ;
    v34 = [v33 count];

    if (v34 <= i)
    {
      break;
    }

    stringValueCandidates3 = [(CRTextFeature *)self stringValueCandidates];
    v36 = [stringValueCandidates3 objectAtIndexedSubscript:i];
    stringValueCandidates4 = [featureCopy stringValueCandidates];
    v38 = [stringValueCandidates4 objectAtIndexedSubscript:i];
    selectedLocale2 = [(CRTextFeature *)self selectedLocale];
    v40 = [v36 _crStringByAppendingString:v38 locale:selectedLocale2];

    [array addObject:v40];
  }

  v41 = [array copy];
  [(CRTextFeature *)self setStringValueCandidates:v41];

  array2 = [MEMORY[0x1E695DF70] array];
  for (j = 0; ; ++j)
  {
    candidateProbs = [(CRTextFeature *)self candidateProbs];
    v45 = [candidateProbs count];
    candidateProbs2 = [featureCopy candidateProbs];
    if (v45 >= [candidateProbs2 count])
    {
      [featureCopy candidateProbs];
    }

    else
    {
      [(CRTextFeature *)self candidateProbs];
    }
    v47 = ;
    v48 = [v47 count];

    if (v48 <= j)
    {
      break;
    }

    v49 = MEMORY[0x1E696AD98];
    candidateProbs3 = [(CRTextFeature *)self candidateProbs];
    v51 = [candidateProbs3 objectAtIndexedSubscript:j];
    [v51 floatValue];
    v53 = v52;
    candidateProbs4 = [featureCopy candidateProbs];
    v55 = [candidateProbs4 objectAtIndexedSubscript:j];
    [v55 floatValue];
    *&v57 = ((1.0 - v18) * v56) + (v53 * v18);
    v58 = [v49 numberWithFloat:v57];

    [array2 addObject:v58];
  }

  v59 = [array2 copy];
  [(CRTextFeature *)self setCandidateProbs:v59];

  array3 = [MEMORY[0x1E695DF70] array];
  for (k = 0; ; ++k)
  {
    candidateActivationProbs = [(CRTextFeature *)self candidateActivationProbs];
    v63 = [candidateActivationProbs count];
    candidateActivationProbs2 = [featureCopy candidateActivationProbs];
    if (v63 >= [candidateActivationProbs2 count])
    {
      [featureCopy candidateActivationProbs];
    }

    else
    {
      [(CRTextFeature *)self candidateActivationProbs];
    }
    v65 = ;
    v66 = [v65 count];

    if (v66 <= k)
    {
      break;
    }

    v67 = MEMORY[0x1E696AD98];
    candidateActivationProbs3 = [(CRTextFeature *)self candidateActivationProbs];
    v69 = [candidateActivationProbs3 objectAtIndexedSubscript:k];
    [v69 floatValue];
    v71 = v70;
    candidateActivationProbs4 = [featureCopy candidateActivationProbs];
    v73 = [candidateActivationProbs4 objectAtIndexedSubscript:k];
    [v73 floatValue];
    *&v75 = (v71 + v74) * 0.5;
    v76 = [v67 numberWithFloat:v75];

    [array3 addObject:v76];
  }

  v77 = [array3 copy];
  [(CRTextFeature *)self setCandidateActivationProbs:v77];

  array4 = [MEMORY[0x1E695DF70] array];
  for (m = 0; ; ++m)
  {
    subFeatureCandidates = [(CRTextFeature *)self subFeatureCandidates];
    v81 = [subFeatureCandidates count];
    subFeatureCandidates2 = [featureCopy subFeatureCandidates];
    if (v81 >= [subFeatureCandidates2 count])
    {
      [featureCopy subFeatureCandidates];
    }

    else
    {
      [(CRTextFeature *)self subFeatureCandidates];
    }
    v83 = ;
    v84 = [v83 count];

    if (v84 <= m)
    {
      break;
    }

    subFeatureCandidates3 = [(CRTextFeature *)self subFeatureCandidates];
    v86 = [subFeatureCandidates3 objectAtIndexedSubscript:m];
    subFeatureCandidates4 = [featureCopy subFeatureCandidates];
    v88 = [subFeatureCandidates4 objectAtIndexedSubscript:m];
    v89 = [v86 arrayByAddingObjectsFromArray:v88];

    [array4 addObject:v89];
  }

  v90 = [array4 copy];
  [(CRTextFeature *)self setSubFeatureCandidates:v90];

  [(CRTextFeature *)self sizeForImageSize:width, height];
  v92 = v91;
  [featureCopy sizeForImageSize:{width, height}];
  v94 = v93;
  [(CRTextFeature *)self baselineAngle];
  v96 = v95;
  [featureCopy baselineAngle];
  v98 = v97;
  v99 = v96 - v98;
  if (v99 <= 3.14159265)
  {
    if (v99 > -3.14159265)
    {
      goto LABEL_30;
    }

    v100 = 6.28318531;
  }

  else
  {
    v100 = -6.28318531;
  }

  v99 = v99 + v100;
LABEL_30:
  v101 = v92 / (v92 + v94) * v99 + v98;
  if (v101 <= 3.14159265)
  {
    if (v101 > -3.14159265)
    {
      goto LABEL_35;
    }

    v102 = 6.28318531;
  }

  else
  {
    v102 = -6.28318531;
  }

  v101 = v101 + v102;
LABEL_35:
  *&v101 = v101;
  [(CRTextFeature *)self setBaselineAngle:v101];
  v103 = [CRNormalizedQuad alloc];
  [(CRTextFeature *)self topLeft];
  v105 = v104;
  v107 = v106;
  [(CRTextFeature *)self topRight];
  v109 = v108;
  v111 = v110;
  [(CRTextFeature *)self bottomRight];
  v113 = v112;
  v115 = v114;
  [(CRTextFeature *)self bottomLeft];
  v118 = [(CRNormalizedQuad *)v103 initWithNormalizedTopLeft:v105 topRight:v107 bottomRight:v109 bottomLeft:v111 size:v113, v115, v116, v117, *&width, *&height];
  v119 = [CRNormalizedQuad alloc];
  [featureCopy topLeft];
  v121 = v120;
  v123 = v122;
  [featureCopy topRight];
  v125 = v124;
  v127 = v126;
  [featureCopy bottomRight];
  v129 = v128;
  v131 = v130;
  [featureCopy bottomLeft];
  v134 = [(CRNormalizedQuad *)v119 initWithNormalizedTopLeft:v121 topRight:v123 bottomRight:v125 bottomLeft:v127 size:v129, v131, v132, v133, *&width, *&height];
  [(CRTextFeature *)self baselineAngle];
  v135 = [(CRNormalizedQuad *)v118 unionWithNormalizedQuad:v134 baselineAngle:?];
  [v135 topLeft];
  [(CRTextFeature *)self setTopLeft:?];
  [v135 topRight];
  [(CRTextFeature *)self setTopRight:?];
  [v135 bottomRight];
  [(CRTextFeature *)self setBottomRight:?];
  [v135 bottomLeft];
  [(CRTextFeature *)self setBottomLeft:?];
  [v135 boundingBox];
  [(CRTextFeature *)self setBounds:?];
}

- (NSLocale)locale
{
  v2 = MEMORY[0x1E695DF58];
  selectedLocale = [(CRTextFeature *)self selectedLocale];
  v4 = [v2 localeWithLocaleIdentifier:selectedLocale];

  return v4;
}

- (double)confidenceScore
{
  confidence = [(CRTextFeature *)self confidence];
  [confidence doubleValue];
  v4 = v3;

  return v4;
}

- (unint64_t)textRegionType
{
  type = [(CRTextFeature *)self type];
  if (type - 2 >= 3)
  {
    return 2;
  }

  else
  {
    return 4 - type;
  }
}

- (void)mergeWithLine:(id)line
{
  lineCopy = line;
  [(CRTextFeature *)self originalImageSize];
  [(CRTextFeature *)self appendTextFeature:lineCopy imageSize:?];
}

- (CRNormalizedQuad)boundingQuad
{
  v3 = [CRNormalizedQuad alloc];
  [(CRTextFeature *)self topLeft];
  v5 = v4;
  v7 = v6;
  [(CRTextFeature *)self topRight];
  v9 = v8;
  v11 = v10;
  [(CRTextFeature *)self bottomRight];
  v13 = v12;
  v15 = v14;
  [(CRTextFeature *)self bottomLeft];
  v17 = v16;
  v19 = v18;
  [(CRTextFeature *)self originalImageSize];
  v22 = [(CRNormalizedQuad *)v3 initWithNormalizedTopLeft:v5 topRight:v7 bottomRight:v9 bottomLeft:v11 size:v13, v15, v17, v19, v20, v21];

  return v22;
}

- (CGRect)bounds
{
  objc_copyStruct(v6, &self->_bounds, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGPoint)topLeft
{
  objc_copyStruct(v4, &self->_topLeft, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)topRight
{
  objc_copyStruct(v4, &self->_topRight, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)bottomLeft
{
  objc_copyStruct(v4, &self->_bottomLeft, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)bottomRight
{
  objc_copyStruct(v4, &self->_bottomRight, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)toplineOrigin
{
  objc_copyStruct(v4, &self->_toplineOrigin, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)baselineOrigin
{
  objc_copyStruct(v4, &self->_baselineOrigin, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGSize)originalImageSize
{
  objc_copyStruct(v4, &self->_originalImageSize, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.height = v3;
  result.width = v2;
  return result;
}

@end