@interface CRLineOutputRegion
+ (CRLineOutputRegion)_lineWithChildren:(void *)children confidence:(uint64_t)confidence quad:(void *)quad baselineAngle:;
+ (CRLineOutputRegion)lineWithTextFeature:(uint64_t)feature candidateIdx:(void *)idx subfeatureType:(uint64_t)type imageSize:(uint64_t)size confidenceThresholdProvider:(void *)provider injectSpaceCharacter:(int)character;
+ (CRNormalizedQuad)_spaceCharacterQuadBetweenQuad1:(void *)quad1 quad2:;
+ (id)lineWithDetectedRegion:(id)region;
+ (id)lineWithText:(id)text confidence:(unint64_t)confidence quad:(id)quad baselineAngle:(double)angle;
+ (id)lineWithTextFeature:(id)feature subfeatureType:(unint64_t)type imageSize:(CGSize)size confidenceThresholdProvider:(id)provider injectSpaceCharacter:(BOOL)character;
+ (id)lineWithTextRegion:(id)region confidenceThresholdProvider:(id)provider injectSpaceCharacter:(BOOL)character;
- (BOOL)isEqual:(id)equal;
- (CGRect)boundingBoxEstimateAfterTrimmingCharacters:(id)characters;
- (CRLineOutputRegion)initWithCRCodableDataRepresentation:(id)representation version:(int64_t)version offset:(unint64_t *)offset;
- (CRLineOutputRegion)initWithConfidence:(unint64_t)confidence baselineAngle:(double)angle;
- (NSLocale)locale;
- (id)contentBaselines;
- (id)copyWithZone:(_NSZone *)zone copyChildren:(BOOL)children copyCandidates:(BOOL)candidates deepCopy:(BOOL)copy;
- (id)crCodableDataRepresentation;
- (id)joiningDelimiter;
- (id)scriptCategoryResults;
- (id)sequenceScriptOutputResult;
- (int64_t)wordCount;
- (unint64_t)nmsOutputScale;
- (unint64_t)textType;
- (void)mergeWithLine:(id)line;
@end

@implementation CRLineOutputRegion

- (CRLineOutputRegion)initWithConfidence:(unint64_t)confidence baselineAngle:(double)angle
{
  v7.receiver = self;
  v7.super_class = CRLineOutputRegion;
  v4 = [(CROutputRegion *)&v7 initWithConfidence:confidence baselineAngle:angle];
  v5 = v4;
  if (v4)
  {
    [(CROutputRegion *)v4 setNumberOfLines:1];
  }

  return v5;
}

- (CRLineOutputRegion)initWithCRCodableDataRepresentation:(id)representation version:(int64_t)version offset:(unint64_t *)offset
{
  representationCopy = representation;
  v12.receiver = self;
  v12.super_class = CRLineOutputRegion;
  v9 = [(CROutputRegion *)&v12 initWithCRCodableDataRepresentation:representationCopy version:version offset:offset];
  if (v9)
  {
    if (version >= 11)
    {
      v10 = [CRCodingUtilities unsignedIntegerFromEncodingData:representationCopy offset:offset];
    }

    else if (version >= 5)
    {
      v10 = [CRCodingUtilities unsignedIntegerFromEncodingData:representationCopy offset:offset]+ 1;
    }

    else if (version == 4)
    {
      if ([CRCodingUtilities BOOLFromEncodingData:representationCopy offset:offset])
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
  crCodableDataRepresentation = [(CROutputRegion *)&v7 crCodableDataRepresentation];
  v5 = [v3 dataWithData:crCodableDataRepresentation];

  [CRCodingUtilities appendUInteger:[(CRLineOutputRegion *)self lineWrappingType] toData:v5];

  return v5;
}

+ (id)lineWithTextFeature:(id)feature subfeatureType:(unint64_t)type imageSize:(CGSize)size confidenceThresholdProvider:(id)provider injectSpaceCharacter:(BOOL)character
{
  characterCopy = character;
  height = size.height;
  width = size.width;
  featureCopy = feature;
  providerCopy = provider;
  v15 = [(CRLineOutputRegion *)width lineWithTextFeature:self candidateIdx:featureCopy subfeatureType:0 imageSize:type confidenceThresholdProvider:providerCopy injectSpaceCharacter:characterCopy];
  v16 = MEMORY[0x1E695DF70];
  stringValueCandidates = [featureCopy stringValueCandidates];
  v18 = [v16 arrayWithCapacity:{objc_msgSend(stringValueCandidates, "count")}];

  stringValueCandidates2 = [featureCopy stringValueCandidates];
  v20 = [stringValueCandidates2 count];

  if (v20)
  {
    v21 = 0;
    do
    {
      v22 = [(CRLineOutputRegion *)width lineWithTextFeature:self candidateIdx:featureCopy subfeatureType:v21 imageSize:type confidenceThresholdProvider:providerCopy injectSpaceCharacter:characterCopy];
      [v18 addObject:v22];

      ++v21;
      stringValueCandidates3 = [featureCopy stringValueCandidates];
      v24 = [stringValueCandidates3 count];
    }

    while (v21 < v24);
  }

  v25 = [MEMORY[0x1E695DEC8] arrayWithArray:v18];
  [v15 setCandidates:v25];

  return v15;
}

+ (CRLineOutputRegion)lineWithTextFeature:(uint64_t)feature candidateIdx:(void *)idx subfeatureType:(uint64_t)type imageSize:(uint64_t)size confidenceThresholdProvider:(void *)provider injectSpaceCharacter:(int)character
{
  v96 = *MEMORY[0x1E69E9840];
  idxCopy = idx;
  providerCopy = provider;
  objc_opt_self();
  v70 = idxCopy;
  selectedLocale = [idxCopy selectedLocale];
  v67 = [providerCopy thresholdsForTextRegion:idxCopy withLocale:selectedLocale];

  candidateProbs = [idxCopy candidateProbs];
  v18 = [candidateProbs objectAtIndexedSubscript:type];
  [v18 doubleValue];
  v19 = [CRImageReaderOutput confidenceLevelForConfidenceScore:v67 confidenceThresholds:?];

  v20 = [CRLineOutputRegion alloc];
  [idxCopy baselineAngle];
  v69 = [(CRLineOutputRegion *)v20 initWithConfidence:v19 baselineAngle:v21];
  subFeatureCandidates = [idxCopy subFeatureCandidates];
  firstObject = [subFeatureCandidates firstObject];
  v24 = [firstObject count];

  stringValueCandidates = [idxCopy stringValueCandidates];
  v66 = [stringValueCandidates objectAtIndexedSubscript:type];

  whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v26 = [v66 stringByTrimmingCharactersInSet:whitespaceCharacterSet];
  [(CROutputRegion *)v69 setText:v26];

  v27 = [CRNormalizedQuad alloc];
  [idxCopy topLeft];
  v29 = v28;
  v31 = v30;
  [idxCopy topRight];
  v33 = v32;
  v35 = v34;
  [idxCopy bottomRight];
  v37 = v36;
  v39 = v38;
  [idxCopy bottomLeft];
  v42 = [(CRNormalizedQuad *)v27 initWithNormalizedTopLeft:v29 topRight:v31 bottomRight:v33 bottomLeft:v35 size:v37, v39, v40, v41, *&self, *&a2];
  [(CROutputRegion *)v69 setBoundingQuad:v42];

  polygon = [idxCopy polygon];
  [(CROutputRegion *)v69 setPolygon:polygon];

  [(CRCompositeOutputRegion *)v69 setShouldComputeBoundsFromChildren:0];
  if (v24)
  {
    if (size == 16)
    {
      v44 = 1;
      goto LABEL_7;
    }

    whitespaceInjected = [idxCopy whitespaceInjected];
    v44 = 1;
    if (whitespaceInjected & 1) != 0 || (character)
    {
      goto LABEL_7;
    }
  }

  v44 = 0;
LABEL_7:
  v46 = v24 == 0;
  [(CROutputRegion *)v69 setShouldComputeTranscriptFromChildren:v44];
  candidateProbs2 = [idxCopy candidateProbs];
  v48 = [candidateProbs2 objectAtIndexedSubscript:type];
  [v48 floatValue];
  [(CROutputRegion *)v69 setRawConfidence:?];

  candidateActivationProbs = [idxCopy candidateActivationProbs];
  v50 = [candidateActivationProbs objectAtIndexedSubscript:type];
  [v50 doubleValue];
  [(CROutputRegion *)v69 setActivationProbability:?];

  selectedLocale2 = [idxCopy selectedLocale];
  [(CROutputRegion *)v69 setRecognizedLocale:selectedLocale2];

  uuid = [idxCopy uuid];
  [(CROutputRegion *)v69 setUuid:uuid];

  -[CRLineOutputRegion setLineWrappingType:](v69, "setLineWrappingType:", [idxCopy lineWrappingType]);
  if (v46)
  {
    v53 = 0;
  }

  else
  {
    v53 = objc_opt_new();
  }

  if (size == 32 && character)
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
    text = [(CROutputRegion *)v69 text];
    text2 = [(CROutputRegion *)v69 text];
    v56 = [text2 length];
    v75[0] = MEMORY[0x1E69E9820];
    v75[1] = 3221225472;
    v75[2] = __129__CRLineOutputRegion_lineWithTextFeature_candidateIdx_subfeatureType_imageSize_confidenceThresholdProvider_injectSpaceCharacter___block_invoke;
    v75[3] = &unk_1E7BC2288;
    typeCopy = type;
    v76 = idxCopy;
    v81 = v89;
    v77 = whitespaceCharacterSet;
    v78 = @" ";
    v82 = v87;
    p_buf = &buf;
    selfCopy = self;
    v86 = a2;
    v79 = v53;
    v80 = providerCopy;
    [text enumerateSubstringsInRange:0 options:v56 usingBlock:{2, v75}];

    _Block_object_dispose(v87, 8);
    _Block_object_dispose(&buf, 8);

    _Block_object_dispose(v89, 8);
  }

  else if (size == 32 || size == 16)
  {
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    subFeatureCandidates2 = [idxCopy subFeatureCandidates];
    v58 = [subFeatureCandidates2 objectAtIndexedSubscript:type];

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
          if (size == 32)
          {
            [CRCharacterOutputRegion characterWithTextFeature:v62 imageSize:providerCopy confidenceThresholdProvider:self, a2];
          }

          else
          {
            [CRWordOutputRegion wordWithTextFeature:v62 imageSize:providerCopy confidenceThresholdProvider:self, a2];
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
      *(&buf + 4) = size;
      _os_log_impl(&dword_1B40D2000, v64, OS_LOG_TYPE_ERROR, "Unsupported subfeature type %ld", &buf, 0xCu);
    }
  }

  [(CROutputRegion *)v69 setChildren:v53];

  return v69;
}

+ (id)lineWithDetectedRegion:(id)region
{
  regionCopy = region;
  v4 = [CRLineOutputRegion alloc];
  boundingQuad = [regionCopy boundingQuad];
  [boundingQuad baselineAngle];
  v6 = [(CRLineOutputRegion *)v4 initWithConfidence:1 baselineAngle:?];

  boundingQuad2 = [regionCopy boundingQuad];
  [(CROutputRegion *)v6 setBoundingQuad:boundingQuad2];

  -[CROutputRegion setLayoutDirection:](v6, "setLayoutDirection:", [regionCopy layoutDirection]);
  polygon = [regionCopy polygon];
  [(CROutputRegion *)v6 setPolygon:polygon];

  [(CRLineOutputRegion *)v6 setDetectedLineRegion:regionCopy];
  [(CRCompositeOutputRegion *)v6 setShouldComputeBoundsFromChildren:0];
  [(CROutputRegion *)v6 setShouldComputeTranscriptFromChildren:0];

  return v6;
}

+ (id)lineWithTextRegion:(id)region confidenceThresholdProvider:(id)provider injectSpaceCharacter:(BOOL)character
{
  characterCopy = character;
  selfCopy = self;
  v83 = *MEMORY[0x1E69E9840];
  regionCopy = region;
  providerCopy = provider;
  v51 = regionCopy;
  locale = [regionCopy locale];
  v48 = [providerCopy thresholdsForTextRegion:regionCopy withLocale:locale];

  [regionCopy confidence];
  v10 = [CRImageReaderOutput confidenceLevelForConfidenceScore:v48 confidenceThresholds:?];
  subregions = [regionCopy subregions];
  v11 = [CRLineOutputRegion alloc];
  boundingQuad = [regionCopy boundingQuad];
  [boundingQuad baselineAngle];
  v50 = [(CRLineOutputRegion *)v11 initWithConfidence:v10 baselineAngle:?];

  v13 = [subregions count];
  if (v13)
  {
    subregions2 = [regionCopy subregions];
    firstObject = [subregions2 firstObject];
    textRegionType = [firstObject textRegionType];
  }

  else
  {
    textRegionType = 0;
  }

  text = [regionCopy text];
  whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v18 = [text stringByTrimmingCharactersInSet:whitespaceCharacterSet];
  [(CROutputRegion *)v50 setText:v18];

  boundingQuad2 = [regionCopy boundingQuad];
  [(CROutputRegion *)v50 setBoundingQuad:boundingQuad2];

  polygon = [regionCopy polygon];
  [(CROutputRegion *)v50 setPolygon:polygon];

  [(CRCompositeOutputRegion *)v50 setShouldComputeBoundsFromChildren:0];
  if (!v13)
  {
    goto LABEL_9;
  }

  if (textRegionType == 1)
  {
    v21 = 1;
    goto LABEL_10;
  }

  whitespaceInjected = [regionCopy whitespaceInjected];
  v21 = 1;
  if ((whitespaceInjected & 1) == 0 && !characterCopy)
  {
LABEL_9:
    v21 = 0;
  }

LABEL_10:
  [(CROutputRegion *)v50 setShouldComputeTranscriptFromChildren:v21];
  [regionCopy confidence];
  *&v23 = v23;
  [(CROutputRegion *)v50 setRawConfidence:v23];
  [regionCopy activationProbability];
  [(CROutputRegion *)v50 setActivationProbability:?];
  locale2 = [regionCopy locale];
  [(CROutputRegion *)v50 setRecognizedLocale:locale2];

  -[CROutputRegion setLayoutDirection:](v50, "setLayoutDirection:", [regionCopy layoutDirection]);
  detectedLineRegion = [regionCopy detectedLineRegion];
  [(CRLineOutputRegion *)v50 setDetectedLineRegion:detectedLineRegion];

  if (v13)
  {
    v26 = objc_opt_new();
    if (textRegionType || !characterCopy)
    {
      if (textRegionType > 1)
      {
        v37 = CROSLogForCategory(0);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf) = 134217984;
          *(&buf + 4) = textRegionType;
          _os_log_impl(&dword_1B40D2000, v37, OS_LOG_TYPE_ERROR, "Unsupported subfeature type %ld", &buf, 0xCu);
        }
      }

      else
      {
        v58 = 0u;
        v59 = 0u;
        v56 = 0u;
        v57 = 0u;
        v32 = subregions;
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

              selfCopy = [CROutputRegion outputRegionFromTextRegion:*(*(&v56 + 1) + 8 * i) confidenceThresholdProvider:providerCopy injectSpaceCharacter:characterCopy, selfCopy];
              [v26 addObject:selfCopy];
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
      whitespaceCharacterSet2 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
      text2 = [(CROutputRegion *)v50 text];
      text3 = [(CROutputRegion *)v50 text];
      v30 = [text3 length];
      v60[0] = MEMORY[0x1E69E9820];
      v60[1] = 3221225472;
      v60[2] = __90__CRLineOutputRegion_lineWithTextRegion_confidenceThresholdProvider_injectSpaceCharacter___block_invoke;
      v60[3] = &unk_1E7BC2260;
      v66 = v72;
      v61 = subregions;
      v67 = v75;
      v31 = whitespaceCharacterSet2;
      v62 = v31;
      v63 = @" ";
      v68 = v73;
      p_buf = &buf;
      v70 = selfCopy;
      v26 = v26;
      v64 = v26;
      v65 = providerCopy;
      v71 = characterCopy;
      [text2 enumerateSubstringsInRange:0 options:v30 usingBlock:{2, v60}];

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

  [(CROutputRegion *)v50 setChildren:v26, selfCopy];
  candidates = [v51 candidates];
  if (candidates)
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
  candidates2 = [v51 candidates];
  v41 = [candidates2 countByEnumeratingWithState:&v52 objects:v76 count:16];
  if (v41)
  {
    v42 = *v53;
    do
    {
      for (j = 0; j != v41; ++j)
      {
        if (*v53 != v42)
        {
          objc_enumerationMutation(candidates2);
        }

        v44 = [CRLineOutputRegion lineWithTextRegion:*(*(&v52 + 1) + 8 * j) confidenceThresholdProvider:providerCopy injectSpaceCharacter:characterCopy];
        [v39 addObject:v44];
      }

      v41 = [candidates2 countByEnumeratingWithState:&v52 objects:v76 count:16];
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

+ (CRNormalizedQuad)_spaceCharacterQuadBetweenQuad1:(void *)quad1 quad2:
{
  quad1Copy = quad1;
  v5 = a2;
  objc_opt_self();
  v6 = [CRNormalizedQuad alloc];
  [v5 topRight];
  v27 = v8;
  v28 = v7;
  [quad1Copy topLeft];
  v10 = v9;
  v12 = v11;
  [quad1Copy bottomLeft];
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

+ (id)lineWithText:(id)text confidence:(unint64_t)confidence quad:(id)quad baselineAngle:(double)angle
{
  quadCopy = quad;
  textCopy = text;
  v11 = [[CRLineOutputRegion alloc] initWithConfidence:confidence baselineAngle:angle];
  [(CROutputRegion *)v11 setText:textCopy];

  [(CROutputRegion *)v11 setBoundingQuad:quadCopy];
  [(CRCompositeOutputRegion *)v11 setShouldComputeBoundsFromChildren:0];
  [(CROutputRegion *)v11 setShouldComputeTranscriptFromChildren:0];
  [(CROutputRegion *)v11 setChildren:0];

  return v11;
}

+ (CRLineOutputRegion)_lineWithChildren:(void *)children confidence:(uint64_t)confidence quad:(void *)quad baselineAngle:
{
  quadCopy = quad;
  childrenCopy = children;
  objc_opt_self();
  v10 = [[CRLineOutputRegion alloc] initWithConfidence:confidence baselineAngle:self];
  [(CROutputRegion *)v10 setShouldComputeTranscriptFromChildren:1];
  if (quadCopy)
  {
    [(CRCompositeOutputRegion *)v10 setShouldComputeBoundsFromChildren:0];
    [(CROutputRegion *)v10 setBoundingQuad:quadCopy];
  }

  else
  {
    [(CRCompositeOutputRegion *)v10 setShouldComputeBoundsFromChildren:1];
  }

  [(CROutputRegion *)v10 setChildren:childrenCopy];

  return v10;
}

- (id)scriptCategoryResults
{
  detectedLineRegion = [(CRLineOutputRegion *)self detectedLineRegion];
  scriptCategoryResults = [detectedLineRegion scriptCategoryResults];

  return scriptCategoryResults;
}

- (id)sequenceScriptOutputResult
{
  detectedLineRegion = [(CRLineOutputRegion *)self detectedLineRegion];
  sequenceScriptOutputResult = [detectedLineRegion sequenceScriptOutputResult];

  return sequenceScriptOutputResult;
}

- (unint64_t)nmsOutputScale
{
  detectedLineRegion = [(CRLineOutputRegion *)self detectedLineRegion];
  nmsOutputScale = [detectedLineRegion nmsOutputScale];

  return nmsOutputScale;
}

- (unint64_t)textType
{
  detectedLineRegion = [(CRLineOutputRegion *)self detectedLineRegion];
  textType = [detectedLineRegion textType];

  return textType;
}

- (id)contentBaselines
{
  v21 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  children = [(CROutputRegion *)self children];
  v3 = [children countByEnumeratingWithState:&v15 objects:v20 count:16];
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
        objc_enumerationMutation(children);
      }

      contentBaselines = [*(*(&v15 + 1) + 8 * i) contentBaselines];
      firstObject = [contentBaselines firstObject];
      v10 = firstObject;
      if (v5)
      {
        v11 = [v5 polylineByAppendingPolyline:firstObject];

        v5 = v11;
      }

      else
      {
        v5 = firstObject;
      }
    }

    v4 = [children countByEnumeratingWithState:&v15 objects:v20 count:16];
  }

  while (v4);

  if (v5)
  {
    simplified = [v5 simplified];
    v19 = simplified;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1];

    children = v5;
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
  recognizedLocale = [(CROutputRegion *)self recognizedLocale];
  v4 = [CRImageReader languageIsChinese:recognizedLocale];

  if (v4)
  {
    whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __31__CRLineOutputRegion_wordCount__block_invoke;
    v10[3] = &unk_1E7BC22B0;
    v6 = whitespaceCharacterSet;
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

- (CGRect)boundingBoxEstimateAfterTrimmingCharacters:(id)characters
{
  charactersCopy = characters;
  boundingQuad = [(CROutputRegion *)self boundingQuad];
  denormalizedQuad = [boundingQuad denormalizedQuad];
  [denormalizedQuad boundingBox];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  text = [(CROutputRegion *)self text];
  v16 = [text length];
  v17 = [text stringByTrimmingCharactersInSet:charactersCopy];

  v18 = [text rangeOfString:v17];
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
  useLineSeparatorAsLineBreak = [(CRLineOutputRegion *)self useLineSeparatorAsLineBreak];

  return [CRLineWrapper joiningDelimiterForLine:self useLineSeparatorAsLineBreak:useLineSeparatorAsLineBreak];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v9.receiver = self;
      v9.super_class = CRLineOutputRegion;
      if ([(CROutputRegion *)&v9 isEqual:v5])
      {
        lineWrappingType = [(CRLineOutputRegion *)self lineWrappingType];
        v7 = lineWrappingType == [(CRLineOutputRegion *)v5 lineWrappingType];
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

- (id)copyWithZone:(_NSZone *)zone copyChildren:(BOOL)children copyCandidates:(BOOL)candidates deepCopy:(BOOL)copy
{
  v10.receiver = self;
  v10.super_class = CRLineOutputRegion;
  v7 = [(CROutputRegion *)&v10 copyWithZone:zone copyChildren:children copyCandidates:candidates deepCopy:copy];
  [v7 setLineWrappingType:{-[CRLineOutputRegion lineWrappingType](self, "lineWrappingType")}];
  [v7 setUseLineSeparatorAsLineBreak:{-[CRLineOutputRegion useLineSeparatorAsLineBreak](self, "useLineSeparatorAsLineBreak")}];
  detectedLineRegion = [(CRLineOutputRegion *)self detectedLineRegion];
  [v7 setDetectedLineRegion:detectedLineRegion];

  return v7;
}

- (NSLocale)locale
{
  v2 = MEMORY[0x1E695DF58];
  recognizedLocale = [(CROutputRegion *)self recognizedLocale];
  v4 = [v2 localeWithLocaleIdentifier:recognizedLocale];

  return v4;
}

- (void)mergeWithLine:(id)line
{
  v76 = *MEMORY[0x1E69E9840];
  lineCopy = line;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = lineCopy;
    text = [(CROutputRegion *)self text];
    v7 = [text length];
    text2 = [(CROutputRegion *)self text];
    v9 = [text2 length];
    text3 = [v5 text];
    v11 = v7 / ([text3 length] + v9);

    [(CROutputRegion *)self rawConfidence];
    v13 = v12;
    [v5 rawConfidence];
    *&v15 = ((1.0 - v11) * v14) + (v13 * v11);
    [(CROutputRegion *)self setRawConfidence:v15];
    [(CROutputRegion *)self activationProbability];
    v17 = v16;
    [v5 activationProbability];
    [(CROutputRegion *)self setActivationProbability:v18 * (1.0 - v11) + v17 * v11];
    text4 = [(CROutputRegion *)self text];
    text5 = [(CROutputRegion *)self text];
    text6 = [v5 text];
    recognizedLocale = [(CROutputRegion *)self recognizedLocale];
    v23 = [text5 _crStringByAppendingString:text6 locale:recognizedLocale];
    [(CROutputRegion *)self setText:v23];

    if (![(CROutputRegion *)self shouldComputeTranscriptFromChildren])
    {
      goto LABEL_8;
    }

    children = [(CROutputRegion *)self children];
    firstObject = [children firstObject];
    type = [firstObject type];

    if (type != 32)
    {
      goto LABEL_8;
    }

    text7 = [(CROutputRegion *)self text];
    v28 = [text7 length];
    if (v28 > [text4 length])
    {
      text8 = [(CROutputRegion *)self text];
      v30 = [text8 characterAtIndex:{objc_msgSend(text4, "length")}];

      if (v30 != 32)
      {
LABEL_8:
        children2 = [(CROutputRegion *)self children];
        children3 = [v5 children];
        v42 = [children2 arrayByAddingObjectsFromArray:children3];
        [(CROutputRegion *)self setChildren:v42];

        for (i = 0; ; ++i)
        {
          candidates = [(CROutputRegion *)self candidates];
          v45 = [candidates count];

          candidates2 = [v5 candidates];
          v47 = [candidates2 count];

          v48 = v45 >= v47 ? v47 : v45;
          if (v48 <= i)
          {
            break;
          }

          candidates3 = [(CROutputRegion *)self candidates];
          v50 = [candidates3 objectAtIndexedSubscript:i];
          candidates4 = [v5 candidates];
          v52 = [candidates4 objectAtIndexedSubscript:i];
          [v50 mergeWithLine:v52];
        }

        boundingQuad = [(CROutputRegion *)self boundingQuad];
        [boundingQuad size];
        v55 = v54;

        boundingQuad2 = [v5 boundingQuad];
        [boundingQuad2 size];
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
            boundingQuad3 = [(CROutputRegion *)self boundingQuad];
            boundingQuad4 = [v5 boundingQuad];
            [(CROutputRegion *)self baselineAngle];
            *&v71 = v71;
            v72 = [boundingQuad3 unionWithNormalizedQuad:boundingQuad4 baselineAngle:v71];
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

      children4 = [(CROutputRegion *)self children];
      lastObject = [children4 lastObject];
      boundingQuad5 = [lastObject boundingQuad];
      children5 = [v5 children];
      firstObject2 = [children5 firstObject];
      boundingQuad6 = [firstObject2 boundingQuad];
      text7 = [CRLineOutputRegion _spaceCharacterQuadBetweenQuad1:boundingQuad5 quad2:boundingQuad6];

      children6 = [(CROutputRegion *)self children];
      confidence = [v5 confidence];
      [v5 baselineAngle];
      v38 = [CRCharacterOutputRegion characterWithText:@" " confidence:confidence quad:text7 baselineAngle:?];
      v39 = [children6 arrayByAddingObject:v38];
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