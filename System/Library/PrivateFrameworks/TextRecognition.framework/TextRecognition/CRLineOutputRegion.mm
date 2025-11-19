@interface CRLineOutputRegion
+ (CRLineOutputRegion)_lineWithChildren:(void *)a3 confidence:(uint64_t)a4 quad:(void *)a5 baselineAngle:;
+ (CRLineOutputRegion)lineWithTextFeature:(uint64_t)a3 candidateIdx:(void *)a4 subfeatureType:(uint64_t)a5 imageSize:(uint64_t)a6 confidenceThresholdProvider:(void *)a7 injectSpaceCharacter:(int)a8;
+ (CRNormalizedQuad)_spaceCharacterQuadBetweenQuad1:(void *)a3 quad2:;
+ (id)lineWithDetectedRegion:(id)a3;
+ (id)lineWithText:(id)a3 confidence:(unint64_t)a4 quad:(id)a5 baselineAngle:(double)a6;
+ (id)lineWithTextFeature:(id)a3 subfeatureType:(unint64_t)a4 imageSize:(CGSize)a5 confidenceThresholdProvider:(id)a6 injectSpaceCharacter:(BOOL)a7;
+ (id)lineWithTextRegion:(id)a3 confidenceThresholdProvider:(id)a4 injectSpaceCharacter:(BOOL)a5;
- (BOOL)isEqual:(id)a3;
- (CGRect)boundingBoxEstimateAfterTrimmingCharacters:(id)a3;
- (CRLineOutputRegion)initWithCRCodableDataRepresentation:(id)a3 version:(int64_t)a4 offset:(unint64_t *)a5;
- (CRLineOutputRegion)initWithConfidence:(unint64_t)a3 baselineAngle:(double)a4;
- (NSLocale)locale;
- (id)contentBaselines;
- (id)copyWithZone:(_NSZone *)a3 copyChildren:(BOOL)a4 copyCandidates:(BOOL)a5 deepCopy:(BOOL)a6;
- (id)crCodableDataRepresentation;
- (id)joiningDelimiter;
- (id)scriptCategoryResults;
- (id)sequenceScriptOutputResult;
- (int64_t)wordCount;
- (unint64_t)nmsOutputScale;
- (unint64_t)textType;
- (void)mergeWithLine:(id)a3;
@end

@implementation CRLineOutputRegion

- (CRLineOutputRegion)initWithConfidence:(unint64_t)a3 baselineAngle:(double)a4
{
  v7.receiver = self;
  v7.super_class = CRLineOutputRegion;
  v4 = [(CROutputRegion *)&v7 initWithConfidence:a3 baselineAngle:a4];
  v5 = v4;
  if (v4)
  {
    [(CROutputRegion *)v4 setNumberOfLines:1];
  }

  return v5;
}

- (CRLineOutputRegion)initWithCRCodableDataRepresentation:(id)a3 version:(int64_t)a4 offset:(unint64_t *)a5
{
  v8 = a3;
  v12.receiver = self;
  v12.super_class = CRLineOutputRegion;
  v9 = [(CROutputRegion *)&v12 initWithCRCodableDataRepresentation:v8 version:a4 offset:a5];
  if (v9)
  {
    if (a4 >= 11)
    {
      v10 = [CRCodingUtilities unsignedIntegerFromEncodingData:v8 offset:a5];
    }

    else if (a4 >= 5)
    {
      v10 = [CRCodingUtilities unsignedIntegerFromEncodingData:v8 offset:a5]+ 1;
    }

    else if (a4 == 4)
    {
      if ([CRCodingUtilities BOOLFromEncodingData:v8 offset:a5])
      {
        v10 = 2;
      }

      else
      {
        v10 = 1;
      }
    }

    else
    {
      v10 = 0;
    }

    v9->_lineWrappingType = v10;
  }

  return v9;
}

- (id)crCodableDataRepresentation
{
  v3 = MEMORY[0x1E695DF88];
  v7.receiver = self;
  v7.super_class = CRLineOutputRegion;
  v4 = [(CROutputRegion *)&v7 crCodableDataRepresentation];
  v5 = [v3 dataWithData:v4];

  [CRCodingUtilities appendUInteger:[(CRLineOutputRegion *)self lineWrappingType] toData:v5];

  return v5;
}

+ (id)lineWithTextFeature:(id)a3 subfeatureType:(unint64_t)a4 imageSize:(CGSize)a5 confidenceThresholdProvider:(id)a6 injectSpaceCharacter:(BOOL)a7
{
  v7 = a7;
  height = a5.height;
  width = a5.width;
  v13 = a3;
  v14 = a6;
  v15 = [(CRLineOutputRegion *)width lineWithTextFeature:a1 candidateIdx:v13 subfeatureType:0 imageSize:a4 confidenceThresholdProvider:v14 injectSpaceCharacter:v7];
  v16 = MEMORY[0x1E695DF70];
  v17 = [v13 stringValueCandidates];
  v18 = [v16 arrayWithCapacity:{objc_msgSend(v17, "count")}];

  v19 = [v13 stringValueCandidates];
  v20 = [v19 count];

  if (v20)
  {
    v21 = 0;
    do
    {
      v22 = [(CRLineOutputRegion *)width lineWithTextFeature:a1 candidateIdx:v13 subfeatureType:v21 imageSize:a4 confidenceThresholdProvider:v14 injectSpaceCharacter:v7];
      [v18 addObject:v22];

      ++v21;
      v23 = [v13 stringValueCandidates];
      v24 = [v23 count];
    }

    while (v21 < v24);
  }

  v25 = [MEMORY[0x1E695DEC8] arrayWithArray:v18];
  [v15 setCandidates:v25];

  return v15;
}

+ (CRLineOutputRegion)lineWithTextFeature:(uint64_t)a3 candidateIdx:(void *)a4 subfeatureType:(uint64_t)a5 imageSize:(uint64_t)a6 confidenceThresholdProvider:(void *)a7 injectSpaceCharacter:(int)a8
{
  v96 = *MEMORY[0x1E69E9840];
  v14 = a4;
  v15 = a7;
  objc_opt_self();
  v70 = v14;
  v16 = [v14 selectedLocale];
  v67 = [v15 thresholdsForTextRegion:v14 withLocale:v16];

  v17 = [v14 candidateProbs];
  v18 = [v17 objectAtIndexedSubscript:a5];
  [v18 doubleValue];
  v19 = [CRImageReaderOutput confidenceLevelForConfidenceScore:v67 confidenceThresholds:?];

  v20 = [CRLineOutputRegion alloc];
  [v14 baselineAngle];
  v69 = [(CRLineOutputRegion *)v20 initWithConfidence:v19 baselineAngle:v21];
  v22 = [v14 subFeatureCandidates];
  v23 = [v22 firstObject];
  v24 = [v23 count];

  v25 = [v14 stringValueCandidates];
  v66 = [v25 objectAtIndexedSubscript:a5];

  v68 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v26 = [v66 stringByTrimmingCharactersInSet:v68];
  [(CROutputRegion *)v69 setText:v26];

  v27 = [CRNormalizedQuad alloc];
  [v14 topLeft];
  v29 = v28;
  v31 = v30;
  [v14 topRight];
  v33 = v32;
  v35 = v34;
  [v14 bottomRight];
  v37 = v36;
  v39 = v38;
  [v14 bottomLeft];
  v42 = [(CRNormalizedQuad *)v27 initWithNormalizedTopLeft:v29 topRight:v31 bottomRight:v33 bottomLeft:v35 size:v37, v39, v40, v41, *&a1, *&a2];
  [(CROutputRegion *)v69 setBoundingQuad:v42];

  v43 = [v14 polygon];
  [(CROutputRegion *)v69 setPolygon:v43];

  [(CRCompositeOutputRegion *)v69 setShouldComputeBoundsFromChildren:0];
  if (v24)
  {
    if (a6 == 16)
    {
      v44 = 1;
      goto LABEL_7;
    }

    v45 = [v14 whitespaceInjected];
    v44 = 1;
    if (v45 & 1) != 0 || (a8)
    {
      goto LABEL_7;
    }
  }

  v44 = 0;
LABEL_7:
  v46 = v24 == 0;
  [(CROutputRegion *)v69 setShouldComputeTranscriptFromChildren:v44];
  v47 = [v14 candidateProbs];
  v48 = [v47 objectAtIndexedSubscript:a5];
  [v48 floatValue];
  [(CROutputRegion *)v69 setRawConfidence:?];

  v49 = [v14 candidateActivationProbs];
  v50 = [v49 objectAtIndexedSubscript:a5];
  [v50 doubleValue];
  [(CROutputRegion *)v69 setActivationProbability:?];

  v51 = [v14 selectedLocale];
  [(CROutputRegion *)v69 setRecognizedLocale:v51];

  v52 = [v14 uuid];
  [(CROutputRegion *)v69 setUuid:v52];

  -[CRLineOutputRegion setLineWrappingType:](v69, "setLineWrappingType:", [v14 lineWrappingType]);
  if (v46)
  {
    v53 = 0;
  }

  else
  {
    v53 = objc_opt_new();
  }

  if (a6 == 32 && a8)
  {
    v89[0] = 0;
    v89[1] = v89;
    v89[2] = 0x2020000000;
    v89[3] = 0;
    *&buf = 0;
    *(&buf + 1) = &buf;
    v92 = 0x3032000000;
    v93 = __Block_byref_object_copy__1;
    v94 = __Block_byref_object_dispose__1;
    v95 = 0;
    v87[0] = 0;
    v87[1] = v87;
    v87[2] = 0x3032000000;
    v87[3] = __Block_byref_object_copy__1;
    v87[4] = __Block_byref_object_dispose__1;
    v88 = 0;
    v54 = [(CROutputRegion *)v69 text];
    v55 = [(CROutputRegion *)v69 text];
    v56 = [v55 length];
    v75[0] = MEMORY[0x1E69E9820];
    v75[1] = 3221225472;
    v75[2] = __129__CRLineOutputRegion_lineWithTextFeature_candidateIdx_subfeatureType_imageSize_confidenceThresholdProvider_injectSpaceCharacter___block_invoke;
    v75[3] = &unk_1E7BC2288;
    v84 = a5;
    v76 = v14;
    v81 = v89;
    v77 = v68;
    v78 = @" ";
    v82 = v87;
    p_buf = &buf;
    v85 = a1;
    v86 = a2;
    v79 = v53;
    v80 = v15;
    [v54 enumerateSubstringsInRange:0 options:v56 usingBlock:{2, v75}];

    _Block_object_dispose(v87, 8);
    _Block_object_dispose(&buf, 8);

    _Block_object_dispose(v89, 8);
  }

  else if (a6 == 32 || a6 == 16)
  {
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v57 = [v14 subFeatureCandidates];
    v58 = [v57 objectAtIndexedSubscript:a5];

    v59 = [v58 countByEnumeratingWithState:&v71 objects:v90 count:16];
    if (v59)
    {
      v60 = *v72;
      do
      {
        for (i = 0; i != v59; ++i)
        {
          if (*v72 != v60)
          {
            objc_enumerationMutation(v58);
          }

          v62 = *(*(&v71 + 1) + 8 * i);
          if (a6 == 32)
          {
            [CRCharacterOutputRegion characterWithTextFeature:v62 imageSize:v15 confidenceThresholdProvider:a1, a2];
          }

          else
          {
            [CRWordOutputRegion wordWithTextFeature:v62 imageSize:v15 confidenceThresholdProvider:a1, a2];
          }
          v63 = ;
          [v53 addObject:v63];
        }

        v59 = [v58 countByEnumeratingWithState:&v71 objects:v90 count:16];
      }

      while (v59);
    }
  }

  else
  {
    v64 = CROSLogForCategory(0);
    if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = a6;
      _os_log_impl(&dword_1B40D2000, v64, OS_LOG_TYPE_ERROR, "Unsupported subfeature type %ld", &buf, 0xCu);
    }
  }

  [(CROutputRegion *)v69 setChildren:v53];

  return v69;
}

+ (id)lineWithDetectedRegion:(id)a3
{
  v3 = a3;
  v4 = [CRLineOutputRegion alloc];
  v5 = [v3 boundingQuad];
  [v5 baselineAngle];
  v6 = [(CRLineOutputRegion *)v4 initWithConfidence:1 baselineAngle:?];

  v7 = [v3 boundingQuad];
  [(CROutputRegion *)v6 setBoundingQuad:v7];

  -[CROutputRegion setLayoutDirection:](v6, "setLayoutDirection:", [v3 layoutDirection]);
  v8 = [v3 polygon];
  [(CROutputRegion *)v6 setPolygon:v8];

  [(CRLineOutputRegion *)v6 setDetectedLineRegion:v3];
  [(CRCompositeOutputRegion *)v6 setShouldComputeBoundsFromChildren:0];
  [(CROutputRegion *)v6 setShouldComputeTranscriptFromChildren:0];

  return v6;
}

+ (id)lineWithTextRegion:(id)a3 confidenceThresholdProvider:(id)a4 injectSpaceCharacter:(BOOL)a5
{
  v5 = a5;
  v46 = a1;
  v83 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v51 = v7;
  v9 = [v7 locale];
  v48 = [v8 thresholdsForTextRegion:v7 withLocale:v9];

  [v7 confidence];
  v10 = [CRImageReaderOutput confidenceLevelForConfidenceScore:v48 confidenceThresholds:?];
  v49 = [v7 subregions];
  v11 = [CRLineOutputRegion alloc];
  v12 = [v7 boundingQuad];
  [v12 baselineAngle];
  v50 = [(CRLineOutputRegion *)v11 initWithConfidence:v10 baselineAngle:?];

  v13 = [v49 count];
  if (v13)
  {
    v14 = [v7 subregions];
    v15 = [v14 firstObject];
    v47 = [v15 textRegionType];
  }

  else
  {
    v47 = 0;
  }

  v16 = [v7 text];
  v17 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v18 = [v16 stringByTrimmingCharactersInSet:v17];
  [(CROutputRegion *)v50 setText:v18];

  v19 = [v7 boundingQuad];
  [(CROutputRegion *)v50 setBoundingQuad:v19];

  v20 = [v7 polygon];
  [(CROutputRegion *)v50 setPolygon:v20];

  [(CRCompositeOutputRegion *)v50 setShouldComputeBoundsFromChildren:0];
  if (!v13)
  {
    goto LABEL_9;
  }

  if (v47 == 1)
  {
    v21 = 1;
    goto LABEL_10;
  }

  v22 = [v7 whitespaceInjected];
  v21 = 1;
  if ((v22 & 1) == 0 && !v5)
  {
LABEL_9:
    v21 = 0;
  }

LABEL_10:
  [(CROutputRegion *)v50 setShouldComputeTranscriptFromChildren:v21];
  [v7 confidence];
  *&v23 = v23;
  [(CROutputRegion *)v50 setRawConfidence:v23];
  [v7 activationProbability];
  [(CROutputRegion *)v50 setActivationProbability:?];
  v24 = [v7 locale];
  [(CROutputRegion *)v50 setRecognizedLocale:v24];

  -[CROutputRegion setLayoutDirection:](v50, "setLayoutDirection:", [v7 layoutDirection]);
  v25 = [v7 detectedLineRegion];
  [(CRLineOutputRegion *)v50 setDetectedLineRegion:v25];

  if (v13)
  {
    v26 = objc_opt_new();
    if (v47 || !v5)
    {
      if (v47 > 1)
      {
        v37 = CROSLogForCategory(0);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf) = 134217984;
          *(&buf + 4) = v47;
          _os_log_impl(&dword_1B40D2000, v37, OS_LOG_TYPE_ERROR, "Unsupported subfeature type %ld", &buf, 0xCu);
        }
      }

      else
      {
        v58 = 0u;
        v59 = 0u;
        v56 = 0u;
        v57 = 0u;
        v32 = v49;
        v33 = [v32 countByEnumeratingWithState:&v56 objects:v77 count:16];
        if (v33)
        {
          v34 = *v57;
          do
          {
            for (i = 0; i != v33; ++i)
            {
              if (*v57 != v34)
              {
                objc_enumerationMutation(v32);
              }

              v36 = [CROutputRegion outputRegionFromTextRegion:*(*(&v56 + 1) + 8 * i) confidenceThresholdProvider:v8 injectSpaceCharacter:v5, v46];
              [v26 addObject:v36];
            }

            v33 = [v32 countByEnumeratingWithState:&v56 objects:v77 count:16];
          }

          while (v33);
        }
      }
    }

    else
    {
      v75[0] = 0;
      v75[1] = v75;
      v75[2] = 0x2020000000;
      v75[3] = 0;
      *&buf = 0;
      *(&buf + 1) = &buf;
      v79 = 0x3032000000;
      v80 = __Block_byref_object_copy__1;
      v81 = __Block_byref_object_dispose__1;
      v82 = 0;
      v73[0] = 0;
      v73[1] = v73;
      v73[2] = 0x3032000000;
      v73[3] = __Block_byref_object_copy__1;
      v73[4] = __Block_byref_object_dispose__1;
      v74 = 0;
      v72[0] = 0;
      v72[1] = v72;
      v72[2] = 0x3010000000;
      v72[4] = 0;
      v72[5] = 0;
      v72[3] = &unk_1B4305E9E;
      v27 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
      v28 = [(CROutputRegion *)v50 text];
      v29 = [(CROutputRegion *)v50 text];
      v30 = [v29 length];
      v60[0] = MEMORY[0x1E69E9820];
      v60[1] = 3221225472;
      v60[2] = __90__CRLineOutputRegion_lineWithTextRegion_confidenceThresholdProvider_injectSpaceCharacter___block_invoke;
      v60[3] = &unk_1E7BC2260;
      v66 = v72;
      v61 = v49;
      v67 = v75;
      v31 = v27;
      v62 = v31;
      v63 = @" ";
      v68 = v73;
      p_buf = &buf;
      v70 = v46;
      v26 = v26;
      v64 = v26;
      v65 = v8;
      v71 = v5;
      [v28 enumerateSubstringsInRange:0 options:v30 usingBlock:{2, v60}];

      _Block_object_dispose(v72, 8);
      _Block_object_dispose(v73, 8);

      _Block_object_dispose(&buf, 8);
      _Block_object_dispose(v75, 8);
    }
  }

  else
  {
    v26 = 0;
  }

  [(CROutputRegion *)v50 setChildren:v26, v46];
  v38 = [v51 candidates];
  if (v38)
  {
    v39 = objc_opt_new();
  }

  else
  {
    v39 = 0;
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v40 = [v51 candidates];
  v41 = [v40 countByEnumeratingWithState:&v52 objects:v76 count:16];
  if (v41)
  {
    v42 = *v53;
    do
    {
      for (j = 0; j != v41; ++j)
      {
        if (*v53 != v42)
        {
          objc_enumerationMutation(v40);
        }

        v44 = [CRLineOutputRegion lineWithTextRegion:*(*(&v52 + 1) + 8 * j) confidenceThresholdProvider:v8 injectSpaceCharacter:v5];
        [v39 addObject:v44];
      }

      v41 = [v40 countByEnumeratingWithState:&v52 objects:v76 count:16];
    }

    while (v41);
  }

  [(CROutputRegion *)v50 setCandidates:v39];

  return v50;
}

void __90__CRLineOutputRegion_lineWithTextRegion_confidenceThresholdProvider_injectSpaceCharacter___block_invoke(uint64_t a1, void *a2, NSUInteger a3, NSUInteger a4)
{
  v28 = a2;
  v30.location = a3;
  v30.length = a4;
  v7 = NSIntersectionRange(v30, *(*(*(a1 + 72) + 8) + 32));
  if (v7.location == 0x7FFFFFFFFFFFFFFFLL || v7.length == 0)
  {
    v9 = [*(a1 + 32) objectAtIndexedSubscript:*(*(*(a1 + 80) + 8) + 24)];
    if ([v28 rangeOfCharacterFromSet:*(a1 + 40)] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = [CROutputRegion outputRegionFromTextRegion:v9 confidenceThresholdProvider:*(a1 + 64) injectSpaceCharacter:*(a1 + 112)];
      v11 = *(*(a1 + 88) + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = v10;

      [*(a1 + 56) addObject:*(*(*(a1 + 88) + 8) + 40)];
      objc_storeStrong((*(*(a1 + 96) + 8) + 40), v9);
      ++*(*(*(a1 + 80) + 8) + 24);
    }

    else
    {
      v13 = [*(*(*(a1 + 88) + 8) + 40) text];
      v14 = [v13 isEqualToString:*(a1 + 48)];

      if ((v14 & 1) == 0)
      {
        v15 = *(a1 + 104);
        v16 = [*(*(*(a1 + 96) + 8) + 40) boundingQuad];
        v17 = [v9 boundingQuad];
        v18 = [(CRLineOutputRegion *)v15 _spaceCharacterQuadBetweenQuad1:v16 quad2:v17];

        v19 = *(a1 + 48);
        v20 = [*(*(*(a1 + 88) + 8) + 40) confidence];
        [*(*(*(a1 + 88) + 8) + 40) baselineAngle];
        v21 = [CRCharacterOutputRegion characterWithText:v19 confidence:v20 quad:v18 baselineAngle:?];
        [*(a1 + 56) addObject:v21];
        v22 = *(*(a1 + 88) + 8);
        v23 = *(v22 + 40);
        *(v22 + 40) = v21;
      }
    }

    v24 = *(*(*(a1 + 72) + 8) + 40);
    v25 = [*(*(*(a1 + 88) + 8) + 40) text];
    v26 = [v25 length];
    v27 = *(*(a1 + 72) + 8);
    *(v27 + 32) = 0;
    *(v27 + 40) = v26 + v24;
  }
}

+ (CRNormalizedQuad)_spaceCharacterQuadBetweenQuad1:(void *)a3 quad2:
{
  v4 = a3;
  v5 = a2;
  objc_opt_self();
  v6 = [CRNormalizedQuad alloc];
  [v5 topRight];
  v27 = v8;
  v28 = v7;
  [v4 topLeft];
  v10 = v9;
  v12 = v11;
  [v4 bottomLeft];
  v14 = v13;
  v16 = v15;

  [v5 bottomRight];
  v18 = v17;
  v20 = v19;
  [v5 normalizationSize];
  v22 = v21;
  v24 = v23;

  v25 = [(CRNormalizedQuad *)v6 initWithNormalizedTopLeft:v28 topRight:v27 bottomRight:v10 bottomLeft:v12 size:v14, v16, v18, v20, v22, v24];

  return v25;
}

void __129__CRLineOutputRegion_lineWithTextFeature_candidateIdx_subfeatureType_imageSize_confidenceThresholdProvider_injectSpaceCharacter___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 subFeatureCandidates];
  v6 = [v5 objectAtIndexedSubscript:*(a1 + 96)];
  obj = [v6 objectAtIndexedSubscript:*(*(*(a1 + 72) + 8) + 24)];

  v7 = [v4 rangeOfCharacterFromSet:*(a1 + 40)];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [CRCharacterOutputRegion characterWithTextFeature:obj imageSize:*(a1 + 64) confidenceThresholdProvider:*(a1 + 104), *(a1 + 112)];
    v9 = *(*(a1 + 80) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    [*(a1 + 56) addObject:*(*(*(a1 + 80) + 8) + 40)];
    objc_storeStrong((*(*(a1 + 88) + 8) + 40), obj);
    ++*(*(*(a1 + 72) + 8) + 24);
  }

  else
  {
    v11 = [*(*(*(a1 + 80) + 8) + 40) text];
    v12 = [v11 isEqualToString:*(a1 + 48)];

    if ((v12 & 1) == 0)
    {
      v13 = [CRNormalizedQuad alloc];
      [*(*(*(a1 + 88) + 8) + 40) topRight];
      v15 = v14;
      v17 = v16;
      [obj topLeft];
      v19 = v18;
      v21 = v20;
      [obj bottomLeft];
      v23 = v22;
      v25 = v24;
      [*(*(*(a1 + 88) + 8) + 40) bottomRight];
      v28 = [(CRNormalizedQuad *)v13 initWithNormalizedTopLeft:v15 topRight:v17 bottomRight:v19 bottomLeft:v21 size:v23, v25, v26, v27, *(a1 + 104), *(a1 + 112)];
      v29 = *(a1 + 48);
      v30 = [*(*(*(a1 + 80) + 8) + 40) confidence];
      [*(*(*(a1 + 80) + 8) + 40) baselineAngle];
      v31 = [CRCharacterOutputRegion characterWithText:v29 confidence:v30 quad:v28 baselineAngle:?];
      [*(a1 + 56) addObject:v31];
      v32 = *(*(a1 + 80) + 8);
      v33 = *(v32 + 40);
      *(v32 + 40) = v31;
    }
  }
}

+ (id)lineWithText:(id)a3 confidence:(unint64_t)a4 quad:(id)a5 baselineAngle:(double)a6
{
  v9 = a5;
  v10 = a3;
  v11 = [[CRLineOutputRegion alloc] initWithConfidence:a4 baselineAngle:a6];
  [(CROutputRegion *)v11 setText:v10];

  [(CROutputRegion *)v11 setBoundingQuad:v9];
  [(CRCompositeOutputRegion *)v11 setShouldComputeBoundsFromChildren:0];
  [(CROutputRegion *)v11 setShouldComputeTranscriptFromChildren:0];
  [(CROutputRegion *)v11 setChildren:0];

  return v11;
}

+ (CRLineOutputRegion)_lineWithChildren:(void *)a3 confidence:(uint64_t)a4 quad:(void *)a5 baselineAngle:
{
  v8 = a5;
  v9 = a3;
  objc_opt_self();
  v10 = [[CRLineOutputRegion alloc] initWithConfidence:a4 baselineAngle:a1];
  [(CROutputRegion *)v10 setShouldComputeTranscriptFromChildren:1];
  if (v8)
  {
    [(CRCompositeOutputRegion *)v10 setShouldComputeBoundsFromChildren:0];
    [(CROutputRegion *)v10 setBoundingQuad:v8];
  }

  else
  {
    [(CRCompositeOutputRegion *)v10 setShouldComputeBoundsFromChildren:1];
  }

  [(CROutputRegion *)v10 setChildren:v9];

  return v10;
}

- (id)scriptCategoryResults
{
  v2 = [(CRLineOutputRegion *)self detectedLineRegion];
  v3 = [v2 scriptCategoryResults];

  return v3;
}

- (id)sequenceScriptOutputResult
{
  v2 = [(CRLineOutputRegion *)self detectedLineRegion];
  v3 = [v2 sequenceScriptOutputResult];

  return v3;
}

- (unint64_t)nmsOutputScale
{
  v2 = [(CRLineOutputRegion *)self detectedLineRegion];
  v3 = [v2 nmsOutputScale];

  return v3;
}

- (unint64_t)textType
{
  v2 = [(CRLineOutputRegion *)self detectedLineRegion];
  v3 = [v2 textType];

  return v3;
}

- (id)contentBaselines
{
  v21 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = [(CROutputRegion *)self children];
  v3 = [v2 countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (!v3)
  {
    v13 = MEMORY[0x1E695E0F0];
    goto LABEL_14;
  }

  v4 = v3;
  v5 = 0;
  v6 = *v16;
  do
  {
    for (i = 0; i != v4; ++i)
    {
      if (*v16 != v6)
      {
        objc_enumerationMutation(v2);
      }

      v8 = [*(*(&v15 + 1) + 8 * i) contentBaselines];
      v9 = [v8 firstObject];
      v10 = v9;
      if (v5)
      {
        v11 = [v5 polylineByAppendingPolyline:v9];

        v5 = v11;
      }

      else
      {
        v5 = v9;
      }
    }

    v4 = [v2 countByEnumeratingWithState:&v15 objects:v20 count:16];
  }

  while (v4);

  if (v5)
  {
    v12 = [v5 simplified];
    v19 = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1];

    v2 = v5;
LABEL_14:

    goto LABEL_16;
  }

  v13 = MEMORY[0x1E695E0F0];
LABEL_16:

  return v13;
}

- (int64_t)wordCount
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v3 = [(CROutputRegion *)self recognizedLocale];
  v4 = [CRImageReader languageIsChinese:v3];

  if (v4)
  {
    v5 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __31__CRLineOutputRegion_wordCount__block_invoke;
    v10[3] = &unk_1E7BC22B0;
    v6 = v5;
    v11 = v6;
    v12 = &v13;
    [(CROutputRegion *)self enumerateContentsWithTypes:32 usingBlock:v10];
  }

  else
  {
    v6 = [(CROutputRegion *)self contentsWithTypes:16];
    v7 = [v6 count];
    v14[3] += v7;
  }

  v8 = v14[3];
  _Block_object_dispose(&v13, 8);
  return v8;
}

void __31__CRLineOutputRegion_wordCount__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 text];
  v4 = [v3 stringByTrimmingCharactersInSet:*(a1 + 32)];
  v5 = [v4 length];

  if (v5)
  {
    ++*(*(*(a1 + 40) + 8) + 24);
  }
}

- (CGRect)boundingBoxEstimateAfterTrimmingCharacters:(id)a3
{
  v4 = a3;
  v5 = [(CROutputRegion *)self boundingQuad];
  v6 = [v5 denormalizedQuad];
  [v6 boundingBox];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = [(CROutputRegion *)self text];
  v16 = [v15 length];
  v17 = [v15 stringByTrimmingCharactersInSet:v4];

  v18 = [v15 rangeOfString:v17];
  v20 = v19 / v16;
  if (v20 == 0.0)
  {
    v21 = *MEMORY[0x1E695F058];
    v10 = *(MEMORY[0x1E695F058] + 8);
    v22 = *(MEMORY[0x1E695F058] + 16);
    v14 = *(MEMORY[0x1E695F058] + 24);
  }

  else
  {
    v21 = v8 + v12 * (v18 / v16);
    v22 = v12 * v20;
  }

  v23 = v21;
  v24 = v10;
  v25 = v22;
  v26 = v14;
  result.size.height = v26;
  result.size.width = v25;
  result.origin.y = v24;
  result.origin.x = v23;
  return result;
}

- (id)joiningDelimiter
{
  v3 = [(CRLineOutputRegion *)self useLineSeparatorAsLineBreak];

  return [CRLineWrapper joiningDelimiterForLine:self useLineSeparatorAsLineBreak:v3];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v9.receiver = self;
      v9.super_class = CRLineOutputRegion;
      if ([(CROutputRegion *)&v9 isEqual:v5])
      {
        v6 = [(CRLineOutputRegion *)self lineWrappingType];
        v7 = v6 == [(CRLineOutputRegion *)v5 lineWrappingType];
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3 copyChildren:(BOOL)a4 copyCandidates:(BOOL)a5 deepCopy:(BOOL)a6
{
  v10.receiver = self;
  v10.super_class = CRLineOutputRegion;
  v7 = [(CROutputRegion *)&v10 copyWithZone:a3 copyChildren:a4 copyCandidates:a5 deepCopy:a6];
  [v7 setLineWrappingType:{-[CRLineOutputRegion lineWrappingType](self, "lineWrappingType")}];
  [v7 setUseLineSeparatorAsLineBreak:{-[CRLineOutputRegion useLineSeparatorAsLineBreak](self, "useLineSeparatorAsLineBreak")}];
  v8 = [(CRLineOutputRegion *)self detectedLineRegion];
  [v7 setDetectedLineRegion:v8];

  return v7;
}

- (NSLocale)locale
{
  v2 = MEMORY[0x1E695DF58];
  v3 = [(CROutputRegion *)self recognizedLocale];
  v4 = [v2 localeWithLocaleIdentifier:v3];

  return v4;
}

- (void)mergeWithLine:(id)a3
{
  v76 = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(CROutputRegion *)self text];
    v7 = [v6 length];
    v8 = [(CROutputRegion *)self text];
    v9 = [v8 length];
    v10 = [v5 text];
    v11 = v7 / ([v10 length] + v9);

    [(CROutputRegion *)self rawConfidence];
    v13 = v12;
    [v5 rawConfidence];
    *&v15 = ((1.0 - v11) * v14) + (v13 * v11);
    [(CROutputRegion *)self setRawConfidence:v15];
    [(CROutputRegion *)self activationProbability];
    v17 = v16;
    [v5 activationProbability];
    [(CROutputRegion *)self setActivationProbability:v18 * (1.0 - v11) + v17 * v11];
    v19 = [(CROutputRegion *)self text];
    v20 = [(CROutputRegion *)self text];
    v21 = [v5 text];
    v22 = [(CROutputRegion *)self recognizedLocale];
    v23 = [v20 _crStringByAppendingString:v21 locale:v22];
    [(CROutputRegion *)self setText:v23];

    if (![(CROutputRegion *)self shouldComputeTranscriptFromChildren])
    {
      goto LABEL_8;
    }

    v24 = [(CROutputRegion *)self children];
    v25 = [v24 firstObject];
    v26 = [v25 type];

    if (v26 != 32)
    {
      goto LABEL_8;
    }

    v27 = [(CROutputRegion *)self text];
    v28 = [v27 length];
    if (v28 > [v19 length])
    {
      v29 = [(CROutputRegion *)self text];
      v30 = [v29 characterAtIndex:{objc_msgSend(v19, "length")}];

      if (v30 != 32)
      {
LABEL_8:
        v40 = [(CROutputRegion *)self children];
        v41 = [v5 children];
        v42 = [v40 arrayByAddingObjectsFromArray:v41];
        [(CROutputRegion *)self setChildren:v42];

        for (i = 0; ; ++i)
        {
          v44 = [(CROutputRegion *)self candidates];
          v45 = [v44 count];

          v46 = [v5 candidates];
          v47 = [v46 count];

          v48 = v45 >= v47 ? v47 : v45;
          if (v48 <= i)
          {
            break;
          }

          v49 = [(CROutputRegion *)self candidates];
          v50 = [v49 objectAtIndexedSubscript:i];
          v51 = [v5 candidates];
          v52 = [v51 objectAtIndexedSubscript:i];
          [v50 mergeWithLine:v52];
        }

        v53 = [(CROutputRegion *)self boundingQuad];
        [v53 size];
        v55 = v54;

        v56 = [v5 boundingQuad];
        [v56 size];
        v58 = v57;

        v59 = v55 / (v55 + v58);
        [(CROutputRegion *)self baselineAngle];
        v61 = v60;
        [v5 baselineAngle];
        v63 = v61 - v62;
        if (v61 - v62 <= 3.14159265)
        {
          if (v63 > -3.14159265)
          {
            goto LABEL_22;
          }

          v64 = 6.28318531;
        }

        else
        {
          v64 = -6.28318531;
        }

        v63 = v63 + v64;
LABEL_22:
        v67 = v62 + v59 * v63;
        if (v67 <= 3.14159265)
        {
          if (v67 > -3.14159265)
          {
LABEL_27:
            [(CROutputRegion *)self setBaselineAngle:v67];
            v69 = [(CROutputRegion *)self boundingQuad];
            v70 = [v5 boundingQuad];
            [(CROutputRegion *)self baselineAngle];
            *&v71 = v71;
            v72 = [v69 unionWithNormalizedQuad:v70 baselineAngle:v71];
            [(CROutputRegion *)self setBoundingQuad:v72];
            if ([(CROutputRegion *)self shouldComputeTranscriptFromChildren])
            {
              [(CROutputRegion *)self _invalidateTranscript];
            }

            goto LABEL_30;
          }

          v68 = 6.28318531;
        }

        else
        {
          v68 = -6.28318531;
        }

        v67 = v67 + v68;
        goto LABEL_27;
      }

      v73 = [(CROutputRegion *)self children];
      v31 = [v73 lastObject];
      v32 = [v31 boundingQuad];
      v33 = [v5 children];
      v34 = [v33 firstObject];
      v35 = [v34 boundingQuad];
      v27 = [CRLineOutputRegion _spaceCharacterQuadBetweenQuad1:v32 quad2:v35];

      v36 = [(CROutputRegion *)self children];
      v37 = [v5 confidence];
      [v5 baselineAngle];
      v38 = [CRCharacterOutputRegion characterWithText:@" " confidence:v37 quad:v27 baselineAngle:?];
      v39 = [v36 arrayByAddingObject:v38];
      [(CROutputRegion *)self setChildren:v39];
    }

    goto LABEL_8;
  }

  v65 = CROSLogForCategory(0);
  if (os_log_type_enabled(v65, OS_LOG_TYPE_FAULT))
  {
    *buf = 138412290;
    v75 = objc_opt_class();
    v66 = v75;
    _os_log_impl(&dword_1B40D2000, v65, OS_LOG_TYPE_FAULT, "Unexpectedly appending objects of type %@", buf, 0xCu);
  }

LABEL_30:
}

@end