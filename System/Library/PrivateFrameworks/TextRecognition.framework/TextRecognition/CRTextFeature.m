@interface CRTextFeature
+ (id)lineFeatures:(id)a3 imageWidth:(unint64_t)a4 imageHeight:(unint64_t)a5;
+ (id)overlayFeatures:(id)a3 onImage:(id)a4 showSubFeatures:(BOOL)a5;
+ (id)overlayFeaturesPolygonVertices:(id)a3 onImage:(id)a4 showSubFeatures:(BOOL)a5;
+ (id)overlayFeaturesQuadVertices:(id)a3 onImage:(id)a4 showSubFeatures:(BOOL)a5;
+ (id)sortedTextFeaturesByAspectRatio:(id)a3 imageSize:(CGSize)a4;
- (CGPoint)baselineOrigin;
- (CGPoint)bottomLeft;
- (CGPoint)bottomRight;
- (CGPoint)topLeft;
- (CGPoint)topRight;
- (CGPoint)toplineOrigin;
- (CGRect)bounds;
- (CGSize)originalImageSize;
- (CGSize)sizeForImageSize:(CGSize)a3;
- (CRNormalizedQuad)boundingQuad;
- (CRTextFeature)init;
- (CRTextFeature)initWithCCFeatureRect:(id)a3 subFeatureRects:(id)a4 rotatePortrait:(BOOL)a5;
- (CRTextFeature)initWithCoder:(id)a3;
- (CRTextFeature)initWithFeatureRect:(CGRect)a3 inImage:(id)a4;
- (CRTextFeature)initWithFeatureRect:(id)a3 subFeatureRects:(id)a4;
- (CRTextFeature)initWithFeatureRect:(id)a3 subFeatureRects:(id)a4 inImage:(id)a5;
- (CRTextFeature)initWithSubfeatures:(id)a3 stringValue:(id)a4;
- (CRTextFeature)initWithTopLeft:(CGPoint)a3 topRight:(CGPoint)a4 bottomLeft:(CGPoint)a5 bottomRight:(CGPoint)a6;
- (NSLocale)locale;
- (NSString)description;
- (double)confidenceScore;
- (float)aspectRatioWithImageSize:(CGSize)a3;
- (float)calculateTextBoxHeightForImageWidth:(unint64_t)a3 imageHeight:(unint64_t)a4;
- (float)caseInsensitiveProbabilityCandidateIndex:(int)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)createCharacterSubFeaturesForCandidateAtIndex:(int64_t)a3;
- (id)createCharacterSubFeaturesForCandidateAtIndex:(int64_t)a3 topWhiteSpacePoints:(id)a4 bottomWhiteSpacePoints:(id)a5 falsePositiveFiltering:(BOOL)a6;
- (id)createSubFeaturesFromStringsForCandidateAtIndex:(int64_t)a3 topWhiteSpacePoints:(id)a4 bottomWhiteSpacePoints:(id)a5 hasBoundarySpacePoints:(BOOL)a6 hasCharacterAndWordBoundaries:(BOOL)a7;
- (id)textFeatureScaledToImage:(id)a3;
- (id)textFeatureScaledToImageWidth:(float)a3 height:(float)a4;
- (id)textFeatureSplitForStringValue:(id)a3;
- (id)textFeaturebyPaddingToWidth:(float)a3 height:(float)a4;
- (id)wordFeatures;
- (unint64_t)subFeatureType;
- (unint64_t)textRegionType;
- (void)addKohlsDigitProjection;
- (void)adjustBoundsBasedOnSubfeaturesForImageSize:(CGSize)a3;
- (void)appendTextFeature:(id)a3 imageSize:(CGSize)a4;
- (void)encodeWithCoder:(id)a3;
- (void)flipHorizontally;
- (void)mergeWithLine:(id)a3;
- (void)scale:(CGPoint)a3 offset:(CGPoint)a4;
- (void)setBaselineOrigin:(CGPoint)a3 toplineOrigin:(CGPoint)a4 slope:(float)a5;
- (void)setSelectedLocale:(id)a3 includeSubfeatures:(BOOL)a4;
- (void)setSelectedScriptCategory:(id)a3 includeSubfeatures:(BOOL)a4;
- (void)setStringValue:(id)a3;
- (void)setStringValueByReplacingCharactersInSet:(id)a3 withString:(id)a4;
- (void)updateSizeHints;
@end

@implementation CRTextFeature

- (CRTextFeature)init
{
  v3.receiver = self;
  v3.super_class = CRTextFeature;
  return [(CRTextFeature *)&v3 init];
}

- (void)encodeWithCoder:(id)a3
{
  v14 = a3;
  [v14 encodeObject:self->_subFeatures forKey:@"subFeatures"];
  [v14 encodePoint:@"topLeft" forKey:{self->_topLeft.x, self->_topLeft.y}];
  [v14 encodePoint:@"topRight" forKey:{self->_topRight.x, self->_topRight.y}];
  [v14 encodePoint:@"bottomLeft" forKey:{self->_bottomLeft.x, self->_bottomLeft.y}];
  [v14 encodePoint:@"bottomRight" forKey:{self->_bottomRight.x, self->_bottomRight.y}];
  [v14 encodeRect:@"bounds" forKey:{self->_bounds.origin.x, self->_bounds.origin.y, self->_bounds.size.width, self->_bounds.size.height}];
  [v14 encodePoint:@"toplineOrigin" forKey:{self->_toplineOrigin.x, self->_toplineOrigin.y}];
  [v14 encodePoint:@"baselineOrigin" forKey:{self->_baselineOrigin.x, self->_baselineOrigin.y}];
  [v14 encodeObject:self->_stringValue forKey:@"stringValue"];
  *&v4 = self->_baselineAngle;
  v5 = [MEMORY[0x1E696AD98] numberWithFloat:v4];
  [v14 encodeObject:v5 forKey:@"baselineAngle"];

  *&v6 = self->_textlineHeight;
  v7 = [MEMORY[0x1E696AD98] numberWithFloat:v6];
  [v14 encodeObject:v7 forKey:@"textlineHeight"];

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:self->_bestCandidateIndex];
  [v14 encodeObject:v8 forKey:@"bestCandidateIndex"];

  v9 = [MEMORY[0x1E696AD98] numberWithInteger:self->_type];
  [v14 encodeObject:v9 forKey:@"type"];

  [v14 encodeObject:self->_polygon forKey:@"polygon"];
  v10 = [MEMORY[0x1E696AD98] numberWithBool:self->_lineWrappingType != 0];
  [v14 encodeObject:v10 forKey:@"lineWrappingType"];

  v11 = [MEMORY[0x1E696AD98] numberWithBool:self->_nmsOutputScale != 0];
  [v14 encodeObject:v11 forKey:@"nmsOutputScale"];

  v12 = [MEMORY[0x1E696AD98] numberWithBool:self->_textType != 0];
  [v14 encodeObject:v12 forKey:@"textType"];

  v13 = [MEMORY[0x1E696AD98] numberWithBool:self->_whitespaceInjected];
  [v14 encodeObject:v13 forKey:@"whitespaceInjected"];
}

- (CRTextFeature)initWithCoder:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = CRTextFeature;
  v5 = [(CRTextFeature *)&v24 init];
  v6 = [v4 decodeObjectForKey:@"subFeatures"];
  [(CRTextFeature *)v5 setSubFeatures:v6];

  [v4 decodePointForKey:@"topRight"];
  [(CRTextFeature *)v5 setTopRight:?];
  [v4 decodePointForKey:@"topLeft"];
  [(CRTextFeature *)v5 setTopLeft:?];
  [v4 decodePointForKey:@"bottomLeft"];
  [(CRTextFeature *)v5 setBottomLeft:?];
  [v4 decodePointForKey:@"bottomRight"];
  [(CRTextFeature *)v5 setBottomRight:?];
  [v4 decodeRectForKey:@"bounds"];
  [(CRTextFeature *)v5 setBounds:?];
  v7 = [v4 decodeObjectForKey:@"stringValue"];
  [(CRTextFeature *)v5 setStringValue:v7];

  v8 = [v4 decodeObjectForKey:@"baselineAngle"];
  [v8 floatValue];
  v5->_baselineAngle = v9;

  [v4 decodePointForKey:@"toplineOrigin"];
  v5->_toplineOrigin.x = v10;
  v5->_toplineOrigin.y = v11;
  [v4 decodePointForKey:@"baselineOrigin"];
  v5->_baselineOrigin.x = v12;
  v5->_baselineOrigin.y = v13;
  v14 = [v4 decodeObjectForKey:@"textlineHeight"];
  [v14 floatValue];
  [(CRTextFeature *)v5 setTextlineHeight:?];

  v15 = [v4 decodeObjectForKey:@"bestCandidateIndex"];
  -[CRTextFeature setBestCandidateIndex:](v5, "setBestCandidateIndex:", [v15 integerValue]);

  v16 = [v4 decodeObjectForKey:@"type"];
  -[CRTextFeature setType:](v5, "setType:", [v16 unsignedIntegerValue]);

  v17 = [MEMORY[0x1E696AFB0] UUID];
  [(CRTextFeature *)v5 setUuid:v17];

  v18 = [v4 decodeObjectForKey:@"polygon"];
  [(CRTextFeature *)v5 setPolygon:v18];

  v19 = [v4 decodeObjectForKey:@"lineWrappingType"];
  -[CRTextFeature setLineWrappingType:](v5, "setLineWrappingType:", [v19 unsignedIntegerValue]);

  v20 = [v4 decodeObjectForKey:@"nmsOutputScale"];
  -[CRTextFeature setNmsOutputScale:](v5, "setNmsOutputScale:", [v20 unsignedIntegerValue]);

  v21 = [v4 decodeObjectForKey:@"textType"];
  -[CRTextFeature setTextType:](v5, "setTextType:", [v21 unsignedIntegerValue]);

  v22 = [v4 decodeObjectForKey:@"whitespaceInjected"];
  -[CRTextFeature setWhitespaceInjected:](v5, "setWhitespaceInjected:", [v22 BOOLValue]);

  return v5;
}

- (CRTextFeature)initWithTopLeft:(CGPoint)a3 topRight:(CGPoint)a4 bottomLeft:(CGPoint)a5 bottomRight:(CGPoint)a6
{
  y = a6.y;
  x = a6.x;
  v8 = a5.y;
  v9 = a5.x;
  v10 = a4.y;
  v11 = a4.x;
  v12 = a3.y;
  v13 = a3.x;
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
    v16 = [MEMORY[0x1E696AB90] zero];
    [(CRTextFeature *)v14 setConfidence:v16];

    [(CRTextFeature *)v14 setSubFeatures:0];
    [(CRTextFeature *)v14 setType:0];
    CGPathRelease(Mutable);
    v17 = [MEMORY[0x1E696AFB0] UUID];
    [(CRTextFeature *)v14 setUuid:v17];

    [(CRTextFeature *)v14 setPolygon:0];
    [(CRTextFeature *)v14 setLineWrappingType:0];
    [(CRTextFeature *)v14 setNmsOutputScale:0];
    [(CRTextFeature *)v14 setTextType:0];
  }

  return v14;
}

- (unint64_t)subFeatureType
{
  v3 = [(CRTextFeature *)self subFeatures];
  v4 = [v3 count];

  if (!v4)
  {
    return 0;
  }

  v5 = [(CRTextFeature *)self subFeatures];
  v6 = [v5 firstObject];
  v7 = [v6 type];

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
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
  v6 = [MEMORY[0x1E695DF70] array];
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v7 = [(CRTextFeature *)self subFeatures];
  v8 = [v7 countByEnumeratingWithState:&v46 objects:v50 count:16];
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
          objc_enumerationMutation(v7);
        }

        v11 = [*(*(&v46 + 1) + 8 * v10) copy];
        [v6 addObject:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v46 objects:v50 count:16];
    }

    while (v8);
  }

  [(CRTextFeature *)v5 setSubFeatures:v6];
  [(CRTextFeature *)v5 setShouldExpandToFullWidth:[(CRTextFeature *)self shouldExpandToFullWidth]];
  v12 = [(CRTextFeature *)self stringValue];
  [(CRTextFeature *)v5 setStringValue:v12];

  v13 = [(CRTextFeature *)self imageCut];
  [(CRTextFeature *)v5 setImageCut:v13];

  v14 = [(CRTextFeature *)self stringValueCandidates];
  v15 = [v14 copyWithZone:a3];
  [(CRTextFeature *)v5 setStringValueCandidates:v15];

  v16 = [(CRTextFeature *)self subFeatureCandidates];
  v17 = [v16 copyWithZone:a3];
  [(CRTextFeature *)v5 setSubFeatureCandidates:v17];

  v18 = [(CRTextFeature *)self candidateProbs];
  v19 = [v18 copyWithZone:a3];
  [(CRTextFeature *)v5 setCandidateProbs:v19];

  v20 = [(CRTextFeature *)self gtStringValue];
  [(CRTextFeature *)v5 setGtStringValue:v20];

  v21 = [(CRTextFeature *)self confidence];
  [(CRTextFeature *)v5 setConfidence:v21];

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
  v33 = [(CRTextFeature *)self scriptCategoryResults];
  v34 = [v32 initWithArray:v33 copyItems:1];
  [(CRTextFeature *)v5 setScriptCategoryResults:v34];

  v35 = MEMORY[0x1E695DF20];
  v36 = [(CRTextFeature *)self scriptCounts];
  v37 = [v35 dictionaryWithDictionary:v36];
  [(CRTextFeature *)v5 setScriptCounts:v37];

  v38 = [(CRTextFeature *)self selectedLocale];
  v39 = [v38 copyWithZone:a3];
  [(CRTextFeature *)v5 setSelectedLocale:v39];

  v40 = [(CRTextFeature *)self sequenceScriptOutputResult];
  v41 = [v40 copyWithZone:a3];
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
  v42 = [(CRTextFeature *)self uuid];
  [(CRTextFeature *)v5 setUuid:v42];

  [(CRTextFeature *)v5 setFeatureID:[(CRTextFeature *)self featureID]];
  v43 = [(CRTextFeature *)self polygon];
  v44 = [v43 copyWithZone:a3];
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
  v4 = [(CRTextFeature *)self uuid];
  v5 = [v4 UUIDString];
  [v3 appendFormat:@"CRTextFeature (%@)\n", v5];

  v6 = [(CRTextFeature *)self stringValue];
  [v3 appendFormat:@"stringValue: '%@'\n", v6];

  [v3 appendFormat:@"type: %ld\n", -[CRTextFeature type](self, "type")];
  [v3 appendFormat:@"subFeatureType: %ld\n", -[CRTextFeature subFeatureType](self, "subFeatureType")];
  v7 = [(CRTextFeature *)self selectedLocale];
  [v3 appendFormat:@"selectedLocale: %@\n", v7];

  v8 = [(CRTextFeature *)self confidence];
  [v8 floatValue];
  [v3 appendFormat:@"confidence: %lf\n", v9];

  [(CRTextFeature *)self topLeft];
  v11 = v10;
  [(CRTextFeature *)self topLeft];
  [v3 appendFormat:@"topLeft: (%lf, %lf)\n", v11, v12];
  v13 = [(CRTextFeature *)self subFeatures];
  v14 = [v13 count];

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

- (CRTextFeature)initWithFeatureRect:(id)a3 subFeatureRects:(id)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v30.receiver = self;
  v30.super_class = CRTextFeature;
  v8 = [(CRTextFeature *)&v30 init];
  if (v8)
  {
    v33 = NSRectFromString(v6);
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
    v15 = [MEMORY[0x1E696AB90] zero];
    [(CRTextFeature *)v8 setConfidence:v15];

    if (v7)
    {
      v16 = [MEMORY[0x1E695DF70] array];
    }

    else
    {
      v16 = 0;
    }

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v17 = v7;
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
          [v16 addObject:v23];

          ++v20;
        }

        while (v18 != v20);
        v18 = [v17 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v18);
    }

    [(CRTextFeature *)v8 setSubFeatures:v16];
    [(CRTextFeature *)v8 setType:0];
    v24 = [MEMORY[0x1E696AFB0] UUID];
    [(CRTextFeature *)v8 setUuid:v24];

    [(CRTextFeature *)v8 setPolygon:0];
    [(CRTextFeature *)v8 setLineWrappingType:0];
    [(CRTextFeature *)v8 setNmsOutputScale:0];
    [(CRTextFeature *)v8 setTextType:0];
  }

  return v8;
}

- (CRTextFeature)initWithFeatureRect:(id)a3 subFeatureRects:(id)a4 inImage:(id)a5
{
  v25 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19 = v8;
  v26 = NSRectFromString(v8);
  v11 = [(CRTextFeature *)self initWithFeatureRect:v10 inImage:v26.origin.x, v26.origin.y, v26.size.width, v26.size.height];
  if (v11)
  {
    if (v9)
    {
      v12 = [MEMORY[0x1E695DF70] array];
    }

    else
    {
      v12 = 0;
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v13 = v9;
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

          v17 = [[CRTextFeature alloc] initWithFeatureRect:*(*(&v20 + 1) + 8 * v16) subFeatureRects:0 inImage:v10];
          [v12 addObject:v17];

          ++v16;
        }

        while (v14 != v16);
        v14 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v14);
    }

    [(CRTextFeature *)v11 setSubFeatures:v12];
  }

  return v11;
}

- (CRTextFeature)initWithCCFeatureRect:(id)a3 subFeatureRects:(id)a4 rotatePortrait:(BOOL)a5
{
  v5 = a5;
  v34 = *MEMORY[0x1E69E9840];
  aString = a3;
  v8 = a4;
  v32.receiver = self;
  v32.super_class = CRTextFeature;
  v9 = [(CRTextFeature *)&v32 init];
  if (v9)
  {
    NSRectFromString(aString);
    v35 = NSRectFromString(aString);
    v10 = 54.05;
    if (v5)
    {
      v11 = 85.685;
    }

    else
    {
      v11 = 54.05;
    }

    if (!v5)
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
    v18 = [MEMORY[0x1E696AB90] zero];
    [(CRTextFeature *)v9 setConfidence:v18];

    if (v8)
    {
      v19 = [MEMORY[0x1E695DF70] array];
    }

    else
    {
      v19 = 0;
    }

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v20 = v8;
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

          v24 = [[CRTextFeature alloc] initWithCCFeatureRect:*(*(&v28 + 1) + 8 * i) subFeatureRects:0 rotatePortrait:v5];
          [v19 addObject:v24];
        }

        v21 = [v20 countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v21);
    }

    [(CRTextFeature *)v9 setSubFeatures:v19];
    [(CRTextFeature *)v9 setType:0];
    v25 = [MEMORY[0x1E696AFB0] UUID];
    [(CRTextFeature *)v9 setUuid:v25];

    [(CRTextFeature *)v9 setPolygon:0];
    [(CRTextFeature *)v9 setLineWrappingType:0];
    [(CRTextFeature *)v9 setNmsOutputScale:0];
    [(CRTextFeature *)v9 setTextType:0];
  }

  return v9;
}

- (CRTextFeature)initWithSubfeatures:(id)a3 stringValue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v26.receiver = self;
  v26.super_class = CRTextFeature;
  v8 = [(CRTextFeature *)&v26 init];
  if (v8)
  {
    v9 = [v6 objectAtIndex:0];
    [v9 bounds];
    x = v10;
    y = v12;
    width = v14;
    height = v16;

    for (i = 1; [v6 count] > i; ++i)
    {
      v19 = [v6 objectAtIndex:i];
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
    [(CRTextFeature *)v8 setSubFeatures:v6];
    [(CRTextFeature *)v8 setStringValue:v7];
    [(CRTextFeature *)v8 setType:0];
    v24 = [MEMORY[0x1E696AFB0] UUID];
    [(CRTextFeature *)v8 setUuid:v24];

    [(CRTextFeature *)v8 setPolygon:0];
    [(CRTextFeature *)v8 setLineWrappingType:0];
    [(CRTextFeature *)v8 setNmsOutputScale:0];
    [(CRTextFeature *)v8 setTextType:0];
  }

  return v8;
}

- (CRTextFeature)initWithFeatureRect:(CGRect)a3 inImage:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v50.receiver = self;
  v50.super_class = CRTextFeature;
  v10 = [(CRTextFeature *)&v50 init];
  if (v10)
  {
    [v9 extent];
    v12 = v11;
    [v9 extent];
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
    v48 = [MEMORY[0x1E696AFB0] UUID];
    [(CRTextFeature *)v10 setUuid:v48];

    [(CRTextFeature *)v10 setPolygon:0];
    [(CRTextFeature *)v10 setLineWrappingType:0];
    [(CRTextFeature *)v10 setNmsOutputScale:0];
    [(CRTextFeature *)v10 setTextType:0];
  }

  return v10;
}

- (id)textFeatureSplitForStringValue:(id)a3
{
  v34[1] = *MEMORY[0x1E69E9840];
  v26 = a3;
  if (v26 && [v26 containsString:@" "] && (objc_msgSend(v26, "stringByReplacingOccurrencesOfString:withString:", @" ", &stru_1F2BB4348), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "length"), -[CRTextFeature subFeatures](self, "subFeatures"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "count"), v6, v4, v5 == v7))
  {
    v27 = [MEMORY[0x1E695DF70] array];
    [v26 componentsSeparatedByString:@" "];
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
            v14 = [(CRTextFeature *)self subFeatures];
            v15 = v13 + v9 > [v14 count];

            if (v15)
            {
              goto LABEL_14;
            }

            v16 = objc_alloc(MEMORY[0x1E695DEC8]);
            v17 = [(CRTextFeature *)self subFeatures];
            v18 = [v17 subarrayWithRange:{v9, v13}];
            v19 = [v16 initWithArray:v18 copyItems:1];

            v20 = [[CRTextFeature alloc] initWithSubfeatures:v19 stringValue:v12];
            [v27 addObject:v20];
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
    v22 = [(CRTextFeature *)self stringValue];
    v23 = [v26 isEqualToString:v22];

    if (v23)
    {
      v34[0] = self;
      v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:1];
      goto LABEL_19;
    }

    v21 = [(CRTextFeature *)self copy];
    [v21 setStringValue:v26];
    v33 = v21;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v33 count:1];
  }

LABEL_19:

  return v27;
}

- (id)wordFeatures
{
  v49[1] = *MEMORY[0x1E69E9840];
  v3 = [(CRTextFeature *)self stringValue];
  v4 = [v3 rangeOfString:@" "];

  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v49[0] = self;
    v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:1];
    goto LABEL_27;
  }

  for (i = 0; ; ++i)
  {
    v6 = [(CRTextFeature *)self stringValue];
    if (i >= [v6 length])
    {
      break;
    }

    v7 = [(CRTextFeature *)self stringValue];
    v8 = [v7 characterAtIndex:i];

    if (v8 != 32)
    {
      goto LABEL_8;
    }
  }

LABEL_8:
  v40 = [MEMORY[0x1E695DF70] array];
  v9 = [MEMORY[0x1E695DF70] array];
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
      [v9 addObject:v13];
      v14 = [v13 stringValue];
      v15 = [v14 length] == 0;

      if (!v15)
      {
        v16 = [v13 stringValue];
        v17 = [v16 length];

        v18 = [(CRTextFeature *)self stringValue];
        if (v17 + v11 >= [v18 length])
        {
        }

        else
        {
          v19 = [(CRTextFeature *)self stringValue];
          v20 = [v19 characterAtIndex:v17 + v11] == 32;

          if (!v20)
          {
            v11 += v17;
            continue;
          }
        }

        v21 = [(CRTextFeature *)self stringValue];
        v22 = [v21 substringWithRange:{i, v17 + v11 - i}];

        v23 = [[CRTextFeature alloc] initWithSubfeatures:v9 stringValue:v22];
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
        [v40 addObject:v23];
        v34 = v11 + v17 + 1;
        while (1)
        {
          i = v34;
          v35 = [(CRTextFeature *)self stringValue];
          if (i >= [v35 length])
          {
            break;
          }

          v36 = [(CRTextFeature *)self stringValue];
          v37 = [v36 characterAtIndex:i] == 32;

          v34 = i + 1;
          if (!v37)
          {
            goto LABEL_23;
          }
        }

LABEL_23:
        v38 = [MEMORY[0x1E695DF70] array];

        v9 = v38;
        v11 = i;
      }
    }

    v10 = [obj countByEnumeratingWithState:&v44 objects:v48 count:16];
  }

  while (v10);
LABEL_26:

LABEL_27:

  return v40;
}

- (id)textFeatureScaledToImage:(id)a3
{
  v4 = a3;
  [v4 extent];
  v6 = v5;
  [v4 extent];
  *&v7 = v6;
  *&v9 = v8;
  v10 = [(CRTextFeature *)self textFeatureScaledToImageWidth:v7 height:v9];

  return v10;
}

- (id)textFeatureScaledToImageWidth:(float)a3 height:(float)a4
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
  v16 = a3;
  v17 = a4;
  [(CRTextFeature *)v7 setBounds:v9 * a3, v17 - (v11 + v13) * v17, v15 * a3, v18 * a4];
  [(CRTextFeature *)self topLeft];
  v20 = v19;
  [(CRTextFeature *)self topLeft];
  [(CRTextFeature *)v7 setTopLeft:v20 * a3, v17 - v21 * v17];
  [(CRTextFeature *)self topRight];
  v23 = v22;
  [(CRTextFeature *)self topRight];
  [(CRTextFeature *)v7 setTopRight:v23 * a3, v17 - v24 * v17];
  [(CRTextFeature *)self bottomLeft];
  v26 = v25;
  [(CRTextFeature *)self bottomLeft];
  [(CRTextFeature *)v7 setBottomLeft:v26 * a3, v17 - v27 * v17];
  [(CRTextFeature *)self bottomRight];
  v29 = v28;
  [(CRTextFeature *)self bottomRight];
  [(CRTextFeature *)v7 setBottomRight:v29 * a3, v17 - v30 * v17];
  v31 = [MEMORY[0x1E695DF70] array];
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v32 = [(CRTextFeature *)self subFeatures];
  v33 = [v32 countByEnumeratingWithState:&v52 objects:v56 count:16];
  if (v33)
  {
    v36 = *v53;
    do
    {
      for (i = 0; i != v33; ++i)
      {
        if (*v53 != v36)
        {
          objc_enumerationMutation(v32);
        }

        *&v34 = a3;
        *&v35 = a4;
        v38 = [*(*(&v52 + 1) + 8 * i) textFeatureScaledToImageWidth:v34 height:v35];
        [v31 addObject:v38];
      }

      v33 = [v32 countByEnumeratingWithState:&v52 objects:v56 count:16];
    }

    while (v33);
  }

  [(CRTextFeature *)v7 setSubFeatures:v31];
  v39 = [(CRTextFeature *)self stringValue];
  [(CRTextFeature *)v7 setStringValue:v39];

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
  [(CRTextFeature *)v7 setBaselineOrigin:v41 * v16 toplineOrigin:v17 - v43 * v17 slope:v45 * v16, v17 - v47 * v17, v49];
  [(CRTextFeature *)v7 setSizeHint:[(CRTextFeature *)self sizeHint]];
  [(CRTextFeature *)v7 setType:[(CRTextFeature *)self type]];
  v50 = [(CRTextFeature *)self uuid];
  [(CRTextFeature *)v7 setUuid:v50];

  return v7;
}

- (id)textFeaturebyPaddingToWidth:(float)a3 height:(float)a4
{
  v68 = *MEMORY[0x1E69E9840];
  v7 = [(CRTextFeature *)self subFeatures];
  if (v7 && (-[CRTextFeature subFeatures](self, "subFeatures"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 count], v8, v7, v9))
  {
    v10 = objc_alloc_init(CRTextFeature);
    v11 = MEMORY[0x1E695DF70];
    v12 = [(CRTextFeature *)self subFeatures];
    v13 = [v11 arrayWithCapacity:{objc_msgSend(v12, "count")}];

    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v14 = [(CRTextFeature *)self subFeatures];
    v15 = [v14 countByEnumeratingWithState:&v63 objects:v67 count:16];
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
            objc_enumerationMutation(v14);
          }

          *&v16 = a3;
          *&v17 = a4;
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

        v15 = [v14 countByEnumeratingWithState:&v63 objects:v67 count:16];
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
    v61 = [(CRTextFeature *)self uuid];
    [(CRTextFeature *)v10 setUuid:v61];
  }

  else
  {
    [(CRTextFeature *)self bounds];
    v43 = v42;
    v44 = v41;
    v45 = v41 * a3 / a4;
    v46 = v42;
    if (v43 <= v45)
    {
      v47 = v41 * a3 / a4;
    }

    else
    {
      v47 = v46;
    }

    if (v41 <= ((v46 * a4) / a3))
    {
      v48 = (v46 * a4) / a3;
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

- (void)setStringValue:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a3;
  objc_storeStrong(&self->_stringValue, a3);
  if (v5)
  {
    v6 = [v5 stringByReplacingOccurrencesOfString:@" " withString:&stru_1F2BB4348];
    v7 = [v6 length];
    if (v7 == [(NSArray *)self->_subFeatures count])
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v8 = [(CRTextFeature *)self subFeatures];
      v9 = [v8 countByEnumeratingWithState:&v18 objects:v26 count:16];
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
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v18 + 1) + 8 * v12);
            v14 = [v6 substringWithRange:{v10, 1}];
            [v13 setStringValue:v14];

            ++v10;
            ++v12;
          }

          while (v9 != v12);
          v9 = [v8 countByEnumeratingWithState:&v18 objects:v26 count:16];
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
    v6 = [(CRTextFeature *)self subFeatures];
    v15 = [v6 countByEnumeratingWithState:&v22 objects:v27 count:16];
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
            objc_enumerationMutation(v6);
          }

          [*(*(&v22 + 1) + 8 * v17++) setStringValue:0];
        }

        while (v15 != v17);
        v15 = [v6 countByEnumeratingWithState:&v22 objects:v27 count:16];
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

- (float)caseInsensitiveProbabilityCandidateIndex:(int)a3
{
  v5 = [(CRTextFeature *)self stringValueCandidates];
  v6 = a3;
  v7 = [v5 objectAtIndexedSubscript:a3];

  v8 = [(CRTextFeature *)self stringValueCandidates];
  v9 = [v7 uppercaseString];
  v10 = [v8 indexOfObject:v9];

  v11 = [(CRTextFeature *)self stringValueCandidates];
  v12 = [v7 lowercaseString];
  v13 = [v11 indexOfObject:v12];

  if (v10 == 0x7FFFFFFFFFFFFFFFLL || v13 == 0x7FFFFFFFFFFFFFFFLL || v10 == v13)
  {
    v14 = [(CRTextFeature *)self candidateProbs];
    v15 = [v14 objectAtIndexedSubscript:v6];
    [v15 doubleValue];
    v21 = v22;
  }

  else
  {
    v14 = [(CRTextFeature *)self candidateProbs];
    v15 = [v14 objectAtIndexedSubscript:v10];
    [v15 doubleValue];
    v17 = v16;
    v18 = [(CRTextFeature *)self candidateProbs];
    v19 = [v18 objectAtIndexedSubscript:v13];
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
    v3 = [(CRTextFeature *)self subFeatures];
    v4 = [v3 sortedArrayUsingComparator:&__block_literal_global_30];

    v5 = [v4 objectAtIndex:{objc_msgSend(v4, "count") >> 1}];
    [v5 bounds];
    v7 = v6;

    v8 = [(CRTextFeature *)self subFeatures];
    v9 = v7;
    v88[0] = MEMORY[0x1E69E9820];
    v88[1] = 3221225472;
    v88[2] = __35__CRTextFeature_slopeOfSubFeatures__block_invoke_2;
    v88[3] = &__block_descriptor_36_e40_B24__0__CRTextFeature_8__NSDictionary_16l;
    v89 = v9;
    v10 = [MEMORY[0x1E696AE18] predicateWithBlock:v88];
    v11 = [v8 filteredArrayUsingPredicate:v10];

    v12 = [v11 firstObject];
    [v12 bounds];
    v14 = v13;

    v15 = [v11 firstObject];
    [v15 bounds];
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

  v33 = [(CRTextFeature *)self subFeatures];
  v34 = [v33 lastObject];
  [v34 bounds];
  recta = v35;
  v37 = v36;
  v39 = v38;
  v41 = v40;

  v42 = [(CRTextFeature *)self subFeatures];
  v43 = [(CRTextFeature *)self subFeatures];
  v44 = [v42 objectAtIndex:{objc_msgSend(v43, "count") - 2}];
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
  v63 = [(CRTextFeature *)self subFeatures];
  v64 = [v63 mutableCopy];

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

+ (id)lineFeatures:(id)a3 imageWidth:(unint64_t)a4 imageHeight:(unint64_t)a5
{
  v134 = *MEMORY[0x1E69E9840];
  v115 = a3;
  v124 = [MEMORY[0x1E695DF70] array];
  v131 = 0u;
  v132 = 0u;
  v129 = 0u;
  v130 = 0u;
  obj = v115;
  v7 = [obj countByEnumeratingWithState:&v129 objects:v133 count:16];
  if (v7)
  {
    v126 = v7;
    v127 = 0;
    v8 = 0;
    v9 = 0;
    v125 = *v130;
    v120 = a4;
    v116 = a5;
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
        if (v9 && ([*(*(&v129 + 1) + 8 * v128) bounds], v12 = v11, objc_msgSend(v9, "bounds"), v12 > v13) && ((objc_msgSend(v9, "bounds"), v15 = v14, objc_msgSend(v9, "bounds"), v17 = v16, objc_msgSend(v9, "bounds"), v123 = v18, objc_msgSend(v9, "bounds"), v119 = v19, objc_msgSend(v9, "bounds"), v122 = v20, objc_msgSend(v10, "bounds"), v121 = v21, objc_msgSend(v10, "bounds"), v23 = v22, objc_msgSend(v10, "bounds"), v25 = v24, objc_msgSend(v10, "bounds"), v27 = v26, objc_msgSend(v10, "bounds"), v29 = v28, objc_msgSend(v10, "baselineAngle"), v31 = v30, objc_msgSend(v10, "baselineAngle"), v33 = v32, v118 = v27, v34 = v17, v35 = cosf(v31), LODWORD(v17) = sinf(v33), objc_msgSend(v9, "baselineAngle"), v37 = v36, objc_msgSend(v9, "baselineAngle"), v39 = v15 * v120, v40 = v116, v41 = v40 - (v23 + v25) * v40 + v29 * v116, v42 = v39 - (v121 * v120 + v35), v43 = v40 - (v34 + v123) * v40 + v122 * v116 - (v41 - *&v17), v44 = sqrt(v43 * v43 + v42 * v42), v44 < 0.01) || (v45 = -sinf(v38), fabs(fabs((v43 * v45 + cosf(v37) * v42) / v44) + -1.0) < 0.01)) && v121 * v120 - (v39 + v119 * v120) < v118 * v120 * 0.5)
        {
          v46 = [v9 stringValue];
          v47 = MEMORY[0x1E696AEC0];
          v48 = [v10 stringValue];
          v49 = [v47 stringWithFormat:@" %@", v48];
          v50 = [v46 stringByAppendingString:v49];
          [v9 setStringValue:v50];

          v51 = [MEMORY[0x1E695DF70] array];
          for (i = 0; ; ++i)
          {
            v53 = [v9 stringValueCandidates];
            v54 = i < [v53 count];

            if (!v54)
            {
              break;
            }

            v55 = [v9 stringValueCandidates];
            v56 = [v55 objectAtIndexedSubscript:i];

            v57 = [v10 stringValueCandidates];
            v58 = [v57 objectAtIndexedSubscript:0];

            v59 = [v10 stringValueCandidates];
            v60 = i < [v59 count];

            if (v60)
            {
              v61 = [v10 stringValueCandidates];
              v62 = [v61 objectAtIndexedSubscript:i];

              v58 = v62;
            }

            v63 = [MEMORY[0x1E696AEC0] stringWithFormat:@" %@", v58];
            v64 = [v56 stringByAppendingString:v63];

            [v51 addObject:v64];
          }

          [v9 setStringValueCandidates:v51];
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
            v99 = [v10 candidateProbs];
            v100 = [v99 objectAtIndexedSubscript:0];
            [v100 floatValue];
            v102 = v101;

            v103 = [v10 candidateProbs];
            LODWORD(v99) = j < [v103 count];

            if (v99)
            {
              v104 = [v10 candidateProbs];
              v105 = [v104 objectAtIndexedSubscript:j];
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

          v73 = [v72 candidateProbs];
          v74 = [v73 mutableCopy];

          [v124 addObject:v72];
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

  v113 = [MEMORY[0x1E695DEC8] arrayWithArray:v124];

  return v113;
}

+ (id)overlayFeatures:(id)a3 onImage:(id)a4 showSubFeatures:(BOOL)a5
{
  v32 = a5;
  v47 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v33 = a4;
  v28 = v6;
  [v33 extent];
  if (v6 && (v9 = v7, v10 = v8, [v6 count]))
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
    obj = v6;
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

          v17 = [*(*(&v39 + 1) + 8 * i) textFeatureScaledToImage:v33];
          CGContextSetStrokeColorWithColor(v12, color);
          CGContextSetLineWidth(v12, 7.0);
          [v17 bounds];
          CGContextStrokeRect(v12, v49);
          if (v32)
          {
            v18 = CGColorCreate(DeviceRGB, components);
            CGContextSetStrokeColorWithColor(v12, v18);
            v37 = 0u;
            v38 = 0u;
            v35 = 0u;
            v36 = 0u;
            v19 = [v17 subFeatures];
            v20 = [v19 countByEnumeratingWithState:&v35 objects:v43 count:16];
            if (v20)
            {
              v21 = *v36;
              do
              {
                for (j = 0; j != v20; ++j)
                {
                  if (*v36 != v21)
                  {
                    objc_enumerationMutation(v19);
                  }

                  v23 = *(*(&v35 + 1) + 8 * j);
                  CGContextSetLineWidth(v12, 1.0);
                  [v23 bounds];
                  CGContextStrokeRect(v12, v50);
                }

                v20 = [v19 countByEnumeratingWithState:&v35 objects:v43 count:16];
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
    v26 = [v25 imageByCompositingOverImage:v33];

    CGImageRelease(Image);
    CGContextRelease(v12);
    CGColorRelease(color);
    CGColorSpaceRelease(DeviceRGB);
  }

  else
  {
    v26 = v33;
  }

  return v26;
}

+ (id)overlayFeaturesQuadVertices:(id)a3 onImage:(id)a4 showSubFeatures:(BOOL)a5
{
  v63 = a5;
  v75 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v64 = a4;
  v58 = v6;
  [v64 extent];
  if (v6 && (v9 = v7, v10 = v8, [v6 count]))
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
    obj = v6;
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

          v17 = [*(*(&v69 + 1) + 8 * v16) textFeatureScaledToImage:v64];
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
          if (v63)
          {
            v33 = CGColorCreateSRGB(1.0, 0.0, 0.0, 0.5);
            CGContextSetStrokeColorWithColor(v12, v33);
            v67 = 0u;
            v68 = 0u;
            v65 = 0u;
            v66 = 0u;
            v34 = [v17 subFeatures];
            v35 = [v34 countByEnumeratingWithState:&v65 objects:v73 count:16];
            if (v35)
            {
              v36 = *v66;
              do
              {
                for (i = 0; i != v35; ++i)
                {
                  if (*v66 != v36)
                  {
                    objc_enumerationMutation(v34);
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

                v35 = [v34 countByEnumeratingWithState:&v65 objects:v73 count:16];
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
    v56 = [v55 imageByCompositingOverImage:v64];

    CGImageRelease(Image);
    CGContextRelease(v12);
    CGColorRelease(color);
    CGColorSpaceRelease(DeviceRGB);
  }

  else
  {
    v56 = v64;
  }

  return v56;
}

+ (id)overlayFeaturesPolygonVertices:(id)a3 onImage:(id)a4 showSubFeatures:(BOOL)a5
{
  v64 = a5;
  v75 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v57 = a4;
  v58 = v6;
  [v57 extent];
  if (v6 && (v9 = v7, v10 = v8, [v6 count]))
  {
    space = CGColorSpaceCreateDeviceRGB();
    v11 = CGBitmapContextCreate(0, v9, v10, 8uLL, vcvtd_n_u64_f64(v9, 5uLL), space, 2u);
    SRGB = CGColorCreateSRGB(1.0, 0.0, 0.0, 0.5);
    CGContextSetStrokeColorWithColor(v11, SRGB);
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    obj = v6;
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
          v16 = [v15 polygon];
          if (v16)
          {
            v17 = [v15 polygon];
            v18 = [v17 pointCount] > 3;

            if (v18)
            {
              v19 = [v15 polygon];
              v20 = [v19 denormalizedPolyline];
              v21 = [v20 pointValues];

              CGContextSetStrokeColorWithColor(v11, color);
              CGContextSetLineWidth(v11, 7.0);
              v22 = [v21 objectAtIndex:0];
              [v22 pointValue];
              v24 = v23;
              v26 = v10 - v25;
              CGContextMoveToPoint(v11, v23, v10 - v25);
              for (j = 1; [v21 count] > j; ++j)
              {
                v28 = [v21 objectAtIndex:j];

                [v28 pointValue];
                CGContextAddLineToPoint(v11, v30, v10 - v29);
                v22 = v28;
              }

              CGContextAddLineToPoint(v11, v24, v26);
              CGContextStrokePath(v11);
            }
          }

          if (v64)
          {
            v31 = CGColorCreateSRGB(0.0, 1.0, 0.0, 0.5);
            CGContextSetStrokeColorWithColor(v11, v31);
            v61 = v31;
            v67 = 0u;
            v68 = 0u;
            v65 = 0u;
            v66 = 0u;
            v32 = [v15 subFeatures];
            v33 = [v32 countByEnumeratingWithState:&v65 objects:v73 count:16];
            if (v33)
            {
              v34 = *v66;
              do
              {
                for (k = 0; k != v33; ++k)
                {
                  if (*v66 != v34)
                  {
                    objc_enumerationMutation(v32);
                  }

                  v36 = *(*(&v65 + 1) + 8 * k);
                  v37 = [v36 polygon];
                  if (v37)
                  {
                    v38 = [v36 polygon];
                    v39 = [v38 pointCount] > 3;

                    if (v39)
                    {
                      v40 = [v36 polygon];
                      v41 = [v40 denormalizedPolyline];
                      v42 = [v41 pointValues];

                      CGContextSetLineWidth(v11, 7.0);
                      v43 = [v42 objectAtIndex:0];
                      [v43 pointValue];
                      v45 = v44;
                      v47 = v10 - v46;
                      CGContextMoveToPoint(v11, v44, v10 - v46);
                      for (m = 1; [v42 count] > m; ++m)
                      {
                        v49 = [v42 objectAtIndex:m];

                        [v49 pointValue];
                        CGContextAddLineToPoint(v11, v51, v10 - v50);
                        v43 = v49;
                      }

                      CGContextAddLineToPoint(v11, v45, v47);
                      CGContextStrokePath(v11);
                    }
                  }
                }

                v33 = [v32 countByEnumeratingWithState:&v65 objects:v73 count:16];
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
    v54 = [v53 imageByCompositingOverImage:v57];

    CGImageRelease(Image);
    CGContextRelease(v11);
    CGColorRelease(color);
    CGColorSpaceRelease(space);
  }

  else
  {
    v54 = v57;
  }

  return v54;
}

+ (id)sortedTextFeaturesByAspectRatio:(id)a3 imageSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v6 = [a3 mutableCopy];
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

- (void)scale:(CGPoint)a3 offset:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  a4.x = a3.y;
  a4.y = a3.x;
  v19 = *MEMORY[0x1E69E9840];
  v6 = y + self->_bounds.origin.y * a3.y;
  self->_bounds.origin.x = x + self->_bounds.origin.x * a3.x;
  self->_bounds.origin.y = v6;
  v7.f64[0] = a3.x;
  v7.f64[1] = a4.x;
  self->_bounds.size = vmulq_f64(v7, self->_bounds.size);
  v7.f64[0] = y + self->_topLeft.y * a4.x;
  self->_topLeft.x = x + self->_topLeft.x * a3.x;
  self->_topLeft.y = v7.f64[0];
  v7.f64[0] = y + self->_topRight.y * a4.x;
  self->_topRight.x = x + self->_topRight.x * a3.x;
  self->_topRight.y = v7.f64[0];
  v7.f64[0] = y + self->_bottomRight.y * a4.x;
  self->_bottomRight.x = x + self->_bottomRight.x * a3.x;
  self->_bottomRight.y = v7.f64[0];
  v7.f64[0] = y + self->_bottomLeft.y * a4.x;
  self->_bottomLeft.x = x + self->_bottomLeft.x * a3.x;
  self->_bottomLeft.y = v7.f64[0];
  v12 = *&a4.y;
  v13 = a4;
  self->_toplineOrigin.x = x + self->_toplineOrigin.x * a3.x;
  self->_baselineOrigin.y = y + self->_baselineOrigin.y * a4.x;
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

        [*(*(&v14 + 1) + 8 * v11++) scale:*&v12 offset:{v13.x, x, y, v12, v13, v14}];
      }

      while (v9 != v11);
      v9 = [(NSArray *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }
}

- (void)setBaselineOrigin:(CGPoint)a3 toplineOrigin:(CGPoint)a4 slope:(float)a5
{
  if (!self || !self->_contextSet)
  {
    self->_baselineOrigin = a3;
    self->_toplineOrigin = a4;
    self->_baselineAngle = a5;
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
  v3 = [(CRTextFeature *)self subFeatures];
  v4 = [v3 count];

  if (v4)
  {
    if (self)
    {
      if (!self->_contextSet)
      {
        v5 = [(CRTextFeature *)self subFeatures];
        v6 = [v5 count];

        if (v6 > 1)
        {
          v22 = [(CRTextFeature *)self subFeatures];
          v23 = [v22 sortedArrayUsingComparator:&__block_literal_global_105];

          if (v6)
          {
            v25 = [v23 objectAtIndex:(v6 >> 1) & 0x3FFFFFFF];
            [v25 bounds];
            v30 = v31;
          }

          else
          {
            v24 = v6 >> 1;
            v25 = [v23 objectAtIndex:v6 >> 1];
            [v25 bounds];
            v27 = v26;
            v28 = [v23 objectAtIndex:v24 - 1];
            [v28 bounds];
            v30 = (v27 + v29) * 0.5;
          }

          v111 = 0u;
          v112 = 0u;
          v109 = 0u;
          v110 = 0u;
          v32 = [(CRTextFeature *)self subFeatures];
          v33 = [v32 countByEnumeratingWithState:&v109 objects:v114 count:16];
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
                  objc_enumerationMutation(v32);
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

              v33 = [v32 countByEnumeratingWithState:&v109 objects:v114 count:16];
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
          v7 = [(CRTextFeature *)self subFeatures];
          v8 = [v7 firstObject];

          [v8 bounds];
          v10 = v9;
          [v8 bounds];
          v12 = v11;
          [v8 bounds];
          v14 = v13;
          [v8 bounds];
          v16 = v15;
          [v8 bounds];
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
    v68 = [(CRTextFeature *)self subFeatures];
    v69 = [v68 countByEnumeratingWithState:&v105 objects:v113 count:16];
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
            objc_enumerationMutation(v68);
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

        v69 = [v68 countByEnumeratingWithState:&v105 objects:v113 count:16];
      }

      while (v69);
    }
  }
}

- (id)createCharacterSubFeaturesForCandidateAtIndex:(int64_t)a3
{
  v5 = [(CRTextFeature *)self stringValueCandidates];
  v6 = [v5 count];

  if (v6 <= a3)
  {
    v12 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v7 = [(CRTextFeature *)self stringValueCandidates];
    v8 = [v7 objectAtIndexedSubscript:a3];

    v9 = objc_opt_new();
    v10 = [v8 length];
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __63__CRTextFeature_createCharacterSubFeaturesForCandidateAtIndex___block_invoke;
    v17 = &unk_1E7BC3320;
    v18 = self;
    v11 = v9;
    v19 = v11;
    [v8 enumerateSubstringsInRange:0 options:v10 usingBlock:{2, &v14}];
    v12 = [MEMORY[0x1E695DEC8] arrayWithArray:{v11, v14, v15, v16, v17, v18}];
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

- (id)createCharacterSubFeaturesForCandidateAtIndex:(int64_t)a3 topWhiteSpacePoints:(id)a4 bottomWhiteSpacePoints:(id)a5 falsePositiveFiltering:(BOOL)a6
{
  v10 = a4;
  v11 = a5;
  v12 = [(CRTextFeature *)self stringValueCandidates];
  v13 = [v12 count];

  if (v13 <= a3)
  {
    v23 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v14 = [MEMORY[0x1E695DF70] array];
    v15 = [(CRTextFeature *)self stringValueCandidates];
    v16 = [v15 objectAtIndexedSubscript:a3];

    v17 = characterCount(v16);
    if (v10 && v11 && (v18 = v17, [v10 count]) && objc_msgSend(v11, "count"))
    {
      v40[0] = 0;
      v40[1] = v40;
      v40[2] = 0x2020000000;
      v40[3] = 0;
      v19 = [MEMORY[0x1E696AB08] _crUnknownScriptCharacterSet];
      v20 = [(NSString *)v16 length];
      v27 = MEMORY[0x1E69E9820];
      v28 = 3221225472;
      v29 = __129__CRTextFeature_createCharacterSubFeaturesForCandidateAtIndex_topWhiteSpacePoints_bottomWhiteSpacePoints_falsePositiveFiltering___block_invoke_2;
      v30 = &unk_1E7BC3348;
      v31 = v10;
      v37 = 2 * v18 - 2;
      v32 = v11;
      v39 = a6;
      v21 = v19;
      v33 = v21;
      v34 = self;
      v36 = v40;
      v38 = v18;
      v22 = v14;
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
      v25 = v14;
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

- (CGSize)sizeForImageSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(CRTextFeature *)self polygon];

  if (v6)
  {
    v7 = [(CRTextFeature *)self polygon];
    v8 = [v7 denormalizedPolyline];
    [v8 estimatedLineSizeForPairedPointPolygon];
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

- (float)aspectRatioWithImageSize:(CGSize)a3
{
  [(CRTextFeature *)self sizeForImageSize:a3.width, a3.height];
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

- (void)setStringValueByReplacingCharactersInSet:(id)a3 withString:(id)a4
{
  v61 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v38 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  stringValue = self->_stringValue;
  if (stringValue)
  {
    v9 = self;
    v10 = [(NSString *)stringValue componentsSeparatedByCharactersInSet:v6];
    v11 = [v10 componentsJoinedByString:v7];
    v12 = [v11 stringByTrimmingCharactersInSet:v38];

    self = v9;
    v13 = v9->_stringValue;
    v9->_stringValue = v12;
  }

  v14 = [(CRTextFeature *)self stringValueCandidates];
  v15 = [v14 count];

  if (v15)
  {
    v40 = [MEMORY[0x1E695DF70] array];
    v16 = [MEMORY[0x1E696AB08] _crUnknownScriptCharacterSet];
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
          if ([v20 rangeOfCharacterFromSet:v16] == 0x7FFFFFFFFFFFFFFFLL)
          {
            [v40 addObject:v20];
          }

          else
          {
            v21 = [v20 componentsSeparatedByCharactersInSet:v6];
            v22 = [v21 componentsJoinedByString:v7];
            v23 = [v22 stringByTrimmingCharactersInSet:v38];

            [v40 addObject:v23];
          }
        }

        v17 = [obj countByEnumeratingWithState:&v53 objects:v60 count:16];
      }

      while (v17);
    }

    [v37 setStringValueCandidates:v40];
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v24 = [v37 subFeatures];
  v25 = [v24 countByEnumeratingWithState:&v49 objects:v59 count:16];
  if (v25)
  {
    v26 = *v50;
    do
    {
      for (j = 0; j != v25; ++j)
      {
        if (*v50 != v26)
        {
          objc_enumerationMutation(v24);
        }

        [*(*(&v49 + 1) + 8 * j) setStringValueByReplacingCharactersInSet:v6 withString:v7];
      }

      v25 = [v24 countByEnumeratingWithState:&v49 objects:v59 count:16];
    }

    while (v25);
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v28 = [v37 subFeatureCandidates];
  v29 = [v28 countByEnumeratingWithState:&v45 objects:v58 count:16];
  if (v29)
  {
    v30 = *v46;
    do
    {
      for (k = 0; k != v29; ++k)
      {
        if (*v46 != v30)
        {
          objc_enumerationMutation(v28);
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

              [*(*(&v41 + 1) + 8 * m) setStringValueByReplacingCharactersInSet:v6 withString:v7];
            }

            v34 = [v33 countByEnumeratingWithState:&v41 objects:v57 count:16];
          }

          while (v34);
        }
      }

      v29 = [v28 countByEnumeratingWithState:&v45 objects:v58 count:16];
    }

    while (v29);
  }
}

- (void)adjustBoundsBasedOnSubfeaturesForImageSize:(CGSize)a3
{
  v159 = *MEMORY[0x1E69E9840];
  v138 = 0u;
  v139 = 0u;
  v140 = 0u;
  v141 = 0u;
  v4 = [(CRTextFeature *)self subFeatures];
  v5 = [v4 countByEnumeratingWithState:&v138 objects:v158 count:16];
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
          objc_enumerationMutation(v4);
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

      v5 = [v4 countByEnumeratingWithState:&v138 objects:v158 count:16];
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
  v15 = [(CRTextFeature *)self subFeatures];
  v16 = [v15 countByEnumeratingWithState:&v38 objects:v44 count:16];
  if (v16)
  {
    v17 = *v39;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v39 != v17)
        {
          objc_enumerationMutation(v15);
        }

        v19 = *(*(&v38 + 1) + 8 * i);
        if (([v14 containsObject:v19] & 1) == 0)
        {
          [v19 flipHorizontally];
          [v14 addObject:v19];
        }
      }

      v16 = [v15 countByEnumeratingWithState:&v38 objects:v44 count:16];
    }

    while (v16);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v20 = [(CRTextFeature *)self subFeatureCandidates];
  v21 = [v20 countByEnumeratingWithState:&v34 objects:v43 count:16];
  if (v21)
  {
    v22 = *v35;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v35 != v22)
        {
          objc_enumerationMutation(v20);
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

      v21 = [v20 countByEnumeratingWithState:&v34 objects:v43 count:16];
    }

    while (v21);
  }
}

- (id)createSubFeaturesFromStringsForCandidateAtIndex:(int64_t)a3 topWhiteSpacePoints:(id)a4 bottomWhiteSpacePoints:(id)a5 hasBoundarySpacePoints:(BOOL)a6 hasCharacterAndWordBoundaries:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  v149[1] = *MEMORY[0x1E69E9840];
  v136 = a4;
  v135 = a5;
  v12 = [(CRTextFeature *)self stringValueCandidates];
  v13 = [v12 count];

  if (v13 <= a3)
  {
    v48 = MEMORY[0x1E695E0F0];
    goto LABEL_58;
  }

  if (v8)
  {
    v14 = [v136 objectAtIndexedSubscript:0];
    [v14 pointValue];
    v16 = v15;
    v18 = v17;
    v19 = [v136 objectAtIndexedSubscript:1];
    [v19 pointValue];
    v133 = 0;
    if (v16 == v21 && v18 == v20)
    {
      v22 = [v135 objectAtIndexedSubscript:0];
      [v22 pointValue];
      v24 = v23;
      v26 = v25;
      v27 = [v135 objectAtIndexedSubscript:1];
      [v27 pointValue];
      v29 = v24 == v28;
      if (v26 != v30)
      {
        v29 = 0;
      }

      v133 = v29;
    }

    v31 = [v136 lastObject];
    [v31 pointValue];
    v33 = v32;
    v35 = v34;
    v36 = [v136 objectAtIndexedSubscript:{objc_msgSend(v136, "count") - 2}];
    [v36 pointValue];
    v127 = 0;
    if (v33 == v38 && v35 == v37)
    {
      v39 = [v135 lastObject];
      [v39 pointValue];
      v41 = v40;
      v43 = v42;
      v44 = [v135 objectAtIndexedSubscript:{objc_msgSend(v135, "count") - 2}];
      [v44 pointValue];
      v46 = v41 == v45;
      if (v43 != v47)
      {
        v46 = 0;
      }

      v127 = v46;
    }

    if ([v136 count] == 4)
    {
      if (!v133 || !v127)
      {
        goto LABEL_24;
      }

      goto LABEL_22;
    }

    if ([v135 count] == 4 && v133 && v127)
    {
LABEL_22:
      v134 = [(CRTextFeature *)self copy];
      v56 = [(CRTextFeature *)self stringValueCandidates];
      v57 = [v56 objectAtIndexedSubscript:a3];
      v146 = v57;
      v58 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v146 count:1];
      [v134 setStringValueCandidates:v58];

      v59 = [(CRTextFeature *)self candidateProbs];
      v60 = [v59 objectAtIndexedSubscript:a3];
      v145 = v60;
      v61 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v145 count:1];
      [v134 setCandidateProbs:v61];

      v144 = v134;
      v55 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v144 count:1];
      goto LABEL_23;
    }

LABEL_24:
    v134 = [MEMORY[0x1E695DF70] array];
    v62 = [(CRTextFeature *)self stringValueCandidates];
    v63 = [v62 objectAtIndexedSubscript:a3];
    v64 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
    v65 = [v63 componentsSeparatedByCharactersInSet:v64];

    v124 = v65;
    v66 = [v65 mutableCopy];
    [v66 removeObject:&stru_1F2BB4348];
    v67 = [v66 count];
    if (v8)
    {
      v68 = 2;
    }

    else
    {
      v68 = -2;
    }

    v69 = v68 + 2 * v67;
    if ([v136 count] == v69 && objc_msgSend(v135, "count") == v69)
    {
      v123 = v66;
      if (v8)
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
        v72 = v8;
        v131 = v8;
        v132 = *v138;
        if (v7)
        {
          v73 = 4;
        }

        else
        {
          v73 = 3;
        }

        v125 = 2 * v126 - 1;
        v74 = 2;
        if (!v8)
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
              v86 = [v136 objectAtIndexedSubscript:v130];
              [v86 pointValue];
              v88 = v87;
              v90 = v89;

              v91 = [v135 objectAtIndexedSubscript:v130];
              [v91 pointValue];
            }

            else
            {
              if (v126 == v72 && v127)
              {
                v94 = [v136 objectAtIndexedSubscript:v125];
                [v94 pointValue];
                v79 = v95;
                v81 = v96;

                v97 = [v135 objectAtIndexedSubscript:v125];
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

              v106 = [v136 objectAtIndexedSubscript:v76 - 1];
              [v106 pointValue];
              v79 = v107;
              v81 = v108;

              v109 = [v135 objectAtIndexedSubscript:v76 - 1];
              [v109 pointValue];
              v83 = v110;
              v85 = v111;

              v112 = [v136 objectAtIndexedSubscript:v76];
              [v112 pointValue];
              v88 = v113;
              v90 = v114;

              v91 = [v135 objectAtIndexedSubscript:v76];
              [v91 pointValue];
            }

            v103 = v92;
            v105 = v93;

LABEL_49:
            v115 = [[CRTextFeature alloc] initWithTopLeft:v79 topRight:v81 bottomLeft:v88 bottomRight:v90, v83, v85, v103, v105];
            if (v7)
            {
              v68 = [v77 combinedTokenSequenceString];
              v77 = v68;
            }

            [(CRTextFeature *)v115 setStringValue:v77, v123];
            if (v7)
            {
            }

            v116 = [(CRTextFeature *)v115 stringValue];
            v142 = v116;
            v117 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v142 count:1];
            [(CRTextFeature *)v115 setStringValueCandidates:v117];

            v118 = [(CRTextFeature *)self confidence];
            [(CRTextFeature *)v115 setConfidence:v118];

            v119 = [(CRTextFeature *)self confidence];
            v141 = v119;
            v120 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v141 count:1];
            [(CRTextFeature *)v115 setCandidateProbs:v120];

            [(CRTextFeature *)self baselineAngle];
            [(CRTextFeature *)v115 setBaselineAngle:?];
            v121 = [(CRTextFeature *)self selectedLocale];
            [(CRTextFeature *)v115 setSelectedLocale:v121];

            [(CRTextFeature *)v115 setType:v129];
            [v134 addObject:v115];

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
      [v134 addObject:v70];
    }

    v48 = [MEMORY[0x1E695DEC8] arrayWithArray:{v134, v123}];

    goto LABEL_57;
  }

  if ([v136 count] && objc_msgSend(v135, "count"))
  {
    LOBYTE(v127) = 1;
    LOBYTE(v133) = 1;
    goto LABEL_24;
  }

  v134 = [(CRTextFeature *)self copy];
  v49 = [(CRTextFeature *)self stringValueCandidates];
  v50 = [v49 objectAtIndexedSubscript:a3];
  v149[0] = v50;
  v51 = [MEMORY[0x1E695DEC8] arrayWithObjects:v149 count:1];
  [v134 setStringValueCandidates:v51];

  v52 = [(CRTextFeature *)self candidateProbs];
  v53 = [v52 objectAtIndexedSubscript:a3];
  v148 = v53;
  v54 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v148 count:1];
  [v134 setCandidateProbs:v54];

  v147 = v134;
  v55 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v147 count:1];
LABEL_23:
  v48 = v55;
LABEL_57:

LABEL_58:

  return v48;
}

- (float)calculateTextBoxHeightForImageWidth:(unint64_t)a3 imageHeight:(unint64_t)a4
{
  [(CRTextFeature *)self topLeft];
  v8 = v7;
  [(CRTextFeature *)self bottomLeft];
  v10 = (v8 - v9) * a3;
  [(CRTextFeature *)self topLeft];
  v12 = v11;
  [(CRTextFeature *)self bottomLeft];
  v14 = (v12 - v13) * a4;
  [(CRTextFeature *)self topRight];
  v16 = v15;
  [(CRTextFeature *)self bottomRight];
  v18 = (v16 - v17) * a3;
  [(CRTextFeature *)self topRight];
  v20 = v19;
  [(CRTextFeature *)self bottomRight];
  v22 = (v20 - v21) * a4;
  v23 = sqrtf((v14 * v14) + (v10 * v10));
  result = sqrtf((v22 * v22) + (v18 * v18));
  if (v23 > result)
  {
    return v23;
  }

  return result;
}

- (void)setSelectedLocale:(id)a3 includeSubfeatures:(BOOL)a4
{
  v4 = a4;
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  [(CRTextFeature *)self setSelectedLocale:v6];
  if (v4)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v7 = [(CRTextFeature *)self subFeatures];
    v8 = [v7 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
            objc_enumerationMutation(v7);
          }

          [*(*(&v11 + 1) + 8 * v10++) setSelectedLocale:v6 includeSubfeatures:1];
        }

        while (v8 != v10);
        v8 = [v7 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }
}

- (void)setSelectedScriptCategory:(id)a3 includeSubfeatures:(BOOL)a4
{
  v4 = a4;
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  [(CRTextFeature *)self setSelectedScriptCategory:v6];
  if (v4)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v7 = [(CRTextFeature *)self subFeatures];
    v8 = [v7 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
            objc_enumerationMutation(v7);
          }

          [*(*(&v11 + 1) + 8 * v10++) setSelectedScriptCategory:v6 includeSubfeatures:1];
        }

        while (v8 != v10);
        v8 = [v7 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }
}

- (void)appendTextFeature:(id)a3 imageSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v137 = a3;
  v7 = [(CRTextFeature *)self stringValue];
  v8 = [v7 length];
  v9 = [(CRTextFeature *)self stringValue];
  v10 = [v9 length];
  v11 = [v137 stringValue];
  v12 = [v11 length];

  v13 = MEMORY[0x1E696AD98];
  v14 = [(CRTextFeature *)self confidence];
  [v14 floatValue];
  v16 = v15;
  v17 = [v137 confidence];
  [v17 floatValue];
  v18 = v8 / (v12 + v10);
  *&v20 = ((1.0 - v18) * v19) + (v16 * v18);
  v21 = [v13 numberWithFloat:v20];
  [(CRTextFeature *)self setConfidence:v21];

  v22 = [(CRTextFeature *)self subFeatures];
  v23 = [v137 subFeatures];
  v24 = [v22 arrayByAddingObjectsFromArray:v23];
  [(CRTextFeature *)self setSubFeatures:v24];

  v25 = [(CRTextFeature *)self stringValue];
  v26 = [v137 stringValue];
  v27 = [(CRTextFeature *)self selectedLocale];
  v28 = [v25 _crStringByAppendingString:v26 locale:v27];
  [(CRTextFeature *)self setStringValue:v28];

  v136 = [MEMORY[0x1E695DF70] array];
  for (i = 0; ; ++i)
  {
    v30 = [(CRTextFeature *)self stringValueCandidates];
    v31 = [v30 count];
    v32 = [v137 stringValueCandidates];
    if (v31 >= [v32 count])
    {
      [v137 stringValueCandidates];
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

    v35 = [(CRTextFeature *)self stringValueCandidates];
    v36 = [v35 objectAtIndexedSubscript:i];
    v37 = [v137 stringValueCandidates];
    v38 = [v37 objectAtIndexedSubscript:i];
    v39 = [(CRTextFeature *)self selectedLocale];
    v40 = [v36 _crStringByAppendingString:v38 locale:v39];

    [v136 addObject:v40];
  }

  v41 = [v136 copy];
  [(CRTextFeature *)self setStringValueCandidates:v41];

  v42 = [MEMORY[0x1E695DF70] array];
  for (j = 0; ; ++j)
  {
    v44 = [(CRTextFeature *)self candidateProbs];
    v45 = [v44 count];
    v46 = [v137 candidateProbs];
    if (v45 >= [v46 count])
    {
      [v137 candidateProbs];
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
    v50 = [(CRTextFeature *)self candidateProbs];
    v51 = [v50 objectAtIndexedSubscript:j];
    [v51 floatValue];
    v53 = v52;
    v54 = [v137 candidateProbs];
    v55 = [v54 objectAtIndexedSubscript:j];
    [v55 floatValue];
    *&v57 = ((1.0 - v18) * v56) + (v53 * v18);
    v58 = [v49 numberWithFloat:v57];

    [v42 addObject:v58];
  }

  v59 = [v42 copy];
  [(CRTextFeature *)self setCandidateProbs:v59];

  v60 = [MEMORY[0x1E695DF70] array];
  for (k = 0; ; ++k)
  {
    v62 = [(CRTextFeature *)self candidateActivationProbs];
    v63 = [v62 count];
    v64 = [v137 candidateActivationProbs];
    if (v63 >= [v64 count])
    {
      [v137 candidateActivationProbs];
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
    v68 = [(CRTextFeature *)self candidateActivationProbs];
    v69 = [v68 objectAtIndexedSubscript:k];
    [v69 floatValue];
    v71 = v70;
    v72 = [v137 candidateActivationProbs];
    v73 = [v72 objectAtIndexedSubscript:k];
    [v73 floatValue];
    *&v75 = (v71 + v74) * 0.5;
    v76 = [v67 numberWithFloat:v75];

    [v60 addObject:v76];
  }

  v77 = [v60 copy];
  [(CRTextFeature *)self setCandidateActivationProbs:v77];

  v78 = [MEMORY[0x1E695DF70] array];
  for (m = 0; ; ++m)
  {
    v80 = [(CRTextFeature *)self subFeatureCandidates];
    v81 = [v80 count];
    v82 = [v137 subFeatureCandidates];
    if (v81 >= [v82 count])
    {
      [v137 subFeatureCandidates];
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

    v85 = [(CRTextFeature *)self subFeatureCandidates];
    v86 = [v85 objectAtIndexedSubscript:m];
    v87 = [v137 subFeatureCandidates];
    v88 = [v87 objectAtIndexedSubscript:m];
    v89 = [v86 arrayByAddingObjectsFromArray:v88];

    [v78 addObject:v89];
  }

  v90 = [v78 copy];
  [(CRTextFeature *)self setSubFeatureCandidates:v90];

  [(CRTextFeature *)self sizeForImageSize:width, height];
  v92 = v91;
  [v137 sizeForImageSize:{width, height}];
  v94 = v93;
  [(CRTextFeature *)self baselineAngle];
  v96 = v95;
  [v137 baselineAngle];
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
  [v137 topLeft];
  v121 = v120;
  v123 = v122;
  [v137 topRight];
  v125 = v124;
  v127 = v126;
  [v137 bottomRight];
  v129 = v128;
  v131 = v130;
  [v137 bottomLeft];
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
  v3 = [(CRTextFeature *)self selectedLocale];
  v4 = [v2 localeWithLocaleIdentifier:v3];

  return v4;
}

- (double)confidenceScore
{
  v2 = [(CRTextFeature *)self confidence];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

- (unint64_t)textRegionType
{
  v2 = [(CRTextFeature *)self type];
  if (v2 - 2 >= 3)
  {
    return 2;
  }

  else
  {
    return 4 - v2;
  }
}

- (void)mergeWithLine:(id)a3
{
  v4 = a3;
  [(CRTextFeature *)self originalImageSize];
  [(CRTextFeature *)self appendTextFeature:v4 imageSize:?];
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