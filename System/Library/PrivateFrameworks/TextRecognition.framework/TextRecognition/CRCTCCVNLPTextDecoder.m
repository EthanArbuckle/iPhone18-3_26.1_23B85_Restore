@interface CRCTCCVNLPTextDecoder
+ (id)_cvnlpDecodingResultByRerankingCandidates:(id)a3 decodingLocale:(id)a4;
+ (unint64_t)_disambiguatedScriptForString:(id)a3;
+ (void)_adjustBeamSearchResults:(id *)a3 tokens:(id)a4 greedyCandidateString:(id)a5 greedyCandidateTokens:(id)a6 decodingLocale:(id)a7;
- (AdditiveCombiningBeamScorer<CoreRecognition::decoder::CombinedBeamState>)_createBeamScorerWithBundle:(SEL)a3 beamSearchConfig:(id)a4 lmConfig:(id)a5;
- (BOOL)_decodeSingleFeatureWithInfo:(id)a3 decodingLocale:(id)a4 greedyDecoder:(id)a5 greedyConfig:(id)a6 beamSearchConfig:(id)a7 imageSize:(CGSize)a8 useCharacterBoxes:(BOOL)a9 lmConfig:(id)a10 error:(id *)a11;
- (BOOL)_shouldUseCharacterDecodingToken;
- (BOOL)_wordLMShouldFilterCandidate:(id)a3 inLocale:(id)a4 lmConfig:(id)a5;
- (BOOL)shouldUseModernizedDecoder;
- (CRCTCCVNLPTextDecoder)initWithConfiguration:(id)a3 model:(id)a4 error:(id *)a5;
- (CVNLPTextDecodingPruningPolicy)pruningPolicy;
- (id).cxx_construct;
- (id)_commitActionBehavior;
- (id)_cvnlpDecodingResultForActivationMatrix:(id)a3 decodingLocale:(id)a4 beamSearchConfig:(id)a5 lmConfig:(id)a6 error:(id *)a7;
- (id)_cvnlpGreedyModernizedDecodingResultForActivationMatrix:(const void *)a3;
- (id)_cvnlpModernizedDecodingResultForActivationMatrix:(const void *)a3 decodingLocale:(id)a4 beamSearchConfig:(id)a5 lmConfig:(id)a6 error:(id *)a7;
- (void)_buildActivationMatrices:(id)a3;
- (void)_create2DArraysFromInputArray:(id)a3 classSize:(unint64_t *)a4 outputArrays:(void *)a5;
- (void)_populateTransientResultGreedyDecodingResultsForFeatureInfo:(id)a3;
- (void)dealloc;
- (void)releaseUnusedResources;
@end

@implementation CRCTCCVNLPTextDecoder

- (CRCTCCVNLPTextDecoder)initWithConfiguration:(id)a3 model:(id)a4 error:(id *)a5
{
  v69 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v54 = a4;
  v66.receiver = self;
  v66.super_class = CRCTCCVNLPTextDecoder;
  v10 = [(CRCTCCVNLPTextDecoder *)&v66 init];
  if (!v10)
  {
LABEL_46:
    v51 = v10;
    goto LABEL_50;
  }

  v55 = [v9 locale];
  v11 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:?];
  locale = v10->_locale;
  v10->_locale = v11;

  v13 = [v9 decodeWithLM];
  if (v55)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14 == 1)
  {
    v15 = [objc_opt_class() lmSupportedLanguages];
    v10->_shouldUseLM = [v15 containsObject:v55];
    p_shouldUseLM = &v10->_shouldUseLM;
  }

  else
  {
    v10->_shouldUseLM = 0;
    p_shouldUseLM = &v10->_shouldUseLM;
  }

  v10->_shouldUseFalsePositiveFiltering = [v9 falsePositiveFilteringDisabled] ^ 1;
  objc_storeStrong(&v10->_configuration, a3);
  *&v10->_shouldReverseActivationMatrix = 0;
  if (v55 && [CRImageReader languageIsArabic:v55])
  {
    *&v10->_shouldReverseActivationMatrix = 257;
    v17 = objc_alloc_init(CRBiDiTransform);
    bidiTransform = v10->_bidiTransform;
    v10->_bidiTransform = v17;
  }

  objc_storeStrong(&v10->_model, a4);
  v19 = [(CRTextSequenceRecognizerModel *)v10->_model codemapArray];
  v10->_codemapArray = v19;
  if (v19)
  {
    v20 = [(CRTextSequenceRecognizerModel *)v10->_model codemapSize];
    v10->_codemapSize = v20;
    v53 = unicodeArrayToNSStringArray(v10->_codemapArray, v20);
    v21 = [MEMORY[0x1E695DFB8] orderedSetWithArray:?];
    characterObservations = v10->_characterObservations;
    v10->_characterObservations = v21;

    if ([(CRCTCCVNLPTextDecoder *)v10 shouldUseModernizedDecoder])
    {
      p_begin = &v10->_spaceLabels.__begin_;
      v10->_spaceLabels.__end_ = v10->_spaceLabels.__begin_;
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v23 = [&unk_1F2BFB200 countByEnumeratingWithState:&v62 objects:v68 count:16];
      if (v23)
      {
        v24 = *v63;
        v56 = v9;
        do
        {
          for (i = 0; i != v23; ++i)
          {
            if (*v63 != v24)
            {
              objc_enumerationMutation(&unk_1F2BFB200);
            }

            v26 = *(*(&v62 + 1) + 8 * i);
            v27 = [(CRCTCCVNLPTextDecoder *)v10 characterObservations];
            v28 = [v27 indexOfObject:v26];

            if (v28 != 0x7FFFFFFFFFFFFFFFLL)
            {
              end = v10->_spaceLabels.__end_;
              cap = v10->_spaceLabels.__cap_;
              if (end >= cap)
              {
                v32 = *p_begin;
                v33 = end - *p_begin;
                v34 = v33 >> 3;
                v35 = (v33 >> 3) + 1;
                if (v35 >> 61)
                {
                  std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
                }

                v36 = cap - v32;
                if (v36 >> 2 > v35)
                {
                  v35 = v36 >> 2;
                }

                v37 = v36 >= 0x7FFFFFFFFFFFFFF8;
                v38 = 0x1FFFFFFFFFFFFFFFLL;
                if (!v37)
                {
                  v38 = v35;
                }

                if (v38)
                {
                  std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(p_begin, v38);
                }

                *(8 * v34) = v28;
                v31 = 8 * v34 + 8;
                memcpy(0, v32, v33);
                begin = v10->_spaceLabels.__begin_;
                v10->_spaceLabels.__begin_ = 0;
                v10->_spaceLabels.__end_ = v31;
                v10->_spaceLabels.__cap_ = 0;
                if (begin)
                {
                  operator delete(begin);
                }

                v9 = v56;
              }

              else
              {
                *end = v28;
                v31 = (end + 1);
              }

              v10->_spaceLabels.__end_ = v31;
            }
          }

          v23 = [&unk_1F2BFB200 countByEnumeratingWithState:&v62 objects:v68 count:16];
        }

        while (v23);
      }
    }

    v40 = MEMORY[0x1E695DFA8];
    v41 = [(NSLocale *)v10->_locale localeIdentifier];
    v42 = [v40 setWithObject:v41];
    subscribedLocales = v10->_subscribedLocales;
    v10->_subscribedLocales = v42;

    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v44 = v10->_subscribedLocales;
    v45 = [(NSMutableSet *)v44 countByEnumeratingWithState:&v58 objects:v67 count:16];
    if (v45)
    {
      v46 = *v59;
      do
      {
        for (j = 0; j != v45; ++j)
        {
          if (*v59 != v46)
          {
            objc_enumerationMutation(v44);
          }

          v48 = *(*(&v58 + 1) + 8 * j);
          if (*p_shouldUseLM)
          {
            v49 = +[CRLanguageResourcesManager sharedManager];
            [v49 addSubscriber:v10 forLocale:v48];
          }

          if ([v9 filterWithLM])
          {
            v50 = +[CRLanguageResourcesManager postProcessManager];
            [v50 addSubscriber:v10 forLocale:v48];
          }
        }

        v45 = [(NSMutableSet *)v44 countByEnumeratingWithState:&v58 objects:v67 count:16];
      }

      while (v45);
    }

    goto LABEL_46;
  }

  if (a5)
  {
    *a5 = [CRImageReader errorWithErrorCode:-8];
  }

  v51 = 0;
LABEL_50:

  return v51;
}

- (void)dealloc
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = self->_subscribedLocales;
  v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = *v12;
    do
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v11 + 1) + 8 * v6);
        if (self->_shouldUseLM)
        {
          v8 = +[CRLanguageResourcesManager sharedManager];
          [v8 removeSubscriber:self forLocale:v7];
        }

        if ([(CRNeuralRecognizerConfiguration *)self->_configuration filterWithLM])
        {
          v9 = +[CRLanguageResourcesManager postProcessManager];
          [v9 removeSubscriber:self forLocale:v7];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  v10.receiver = self;
  v10.super_class = CRCTCCVNLPTextDecoder;
  [(CRCTCCVNLPTextDecoder *)&v10 dealloc];
}

- (CVNLPTextDecodingPruningPolicy)pruningPolicy
{
  *&retstr->var0 = xmmword_1B42B0160;
  *&retstr->var3 = 20;
  return self;
}

- (BOOL)shouldUseModernizedDecoder
{
  v2 = [(CRCTCCVNLPTextDecoder *)self model];
  v3 = [v2 outputFormatVersion];
  v4 = [v3 intValue] == 2;

  return v4;
}

- (void)_buildActivationMatrices:(id)a3
{
  v4 = a3;
  v5 = [v4 textFeatureInfo];
  v70 = v5;
  v6 = [v5 firstObject];
  v8 = v6;
  if (v6)
  {
    Property = objc_getProperty(v6, v7, 80, 1);
  }

  else
  {
    Property = 0;
  }

  v10 = Property;

  if (!v10)
  {
    v95 = 0;
    v96 = 0;
    v97 = 0;
    v66 = v4;
    [(CRCTCCVNLPTextDecoder *)self _create2DArraysFromInputArray:v4 classSize:&self->_codemapSize outputArrays:&v95];
    v11 = [(CRCTCCVNLPTextDecoder *)self model];
    v68 = [v11 ctcBlankLabelIndex];

    v93 = 0uLL;
    v94 = 0;
    [(CRCTCCVNLPTextDecoder *)self pruningPolicy];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v12 = [(CRCTCCVNLPTextDecoder *)self shouldUseModernizedDecoder];
    v13 = v95;
    if (v96 != v95)
    {
      v14 = 0;
      v15 = 0xCF3CF3CF3CF3CF3DLL * ((v96 - v95) >> 3);
      v67 = v12;
      do
      {
        v16 = &v13[168 * v14];
        if (isKindOfClass)
        {
          v17 = v14 + 1;
          if (v15 <= v14 + 1)
          {
            std::vector<std::vector<BreakPoint>>::__throw_out_of_range[abi:ne200100]();
          }

          v18 = objc_alloc(MEMORY[0x1E6991FC8]);
          v19 = &v13[168 * v17];
          v20 = *v16;
          v21 = *(v16 + 2);
          v99 = *(v16 + 1);
          v100 = v21;
          v98 = v20;
          v22 = *(v16 + 3);
          v23 = *(v16 + 4);
          v24 = *(v16 + 6);
          v103 = *(v16 + 5);
          v104 = v24;
          v101 = v22;
          v102 = v23;
          v25 = *(v16 + 7);
          v26 = *(v16 + 8);
          v27 = *(v16 + 9);
          v108 = *(v16 + 20);
          v106 = v26;
          v107 = v27;
          v105 = v25;
          v28 = *v19;
          v29 = *(v19 + 2);
          v83 = *(v19 + 1);
          v84 = v29;
          v82 = v28;
          v30 = *(v19 + 3);
          v31 = *(v19 + 4);
          v32 = *(v19 + 6);
          v87 = *(v19 + 5);
          v88 = v32;
          v85 = v30;
          v86 = v31;
          v33 = *(v19 + 7);
          v34 = *(v19 + 8);
          v35 = *(v19 + 9);
          v92 = *(v19 + 20);
          v90 = v34;
          v91 = v35;
          v89 = v33;
          v36 = [(CRCTCCVNLPTextDecoder *)self characterObservations];
          v71 = v93;
          *&v72 = v94;
          v37 = [v18 initWithBuffer:&v98 indexBuffer:&v82 domainType:v67 characterObservations:v36 blankIndex:v68 pruningPolicy:&v71];

          v38 = [CRCVNLPTransientResult alloc];
          v39 = [(CRCTCCVNLPTextDecoder *)self configuration];
          v40 = [v39 locale];
          v89 = *(v16 + 7);
          v90 = *(v16 + 8);
          v91 = *(v16 + 9);
          v92 = *(v16 + 20);
          v85 = *(v16 + 3);
          v86 = *(v16 + 4);
          v87 = *(v16 + 5);
          v88 = *(v16 + 6);
          v82 = *v16;
          v83 = *(v16 + 1);
          v84 = *(v16 + 2);
          v78 = *(v19 + 7);
          v79 = *(v19 + 8);
          v80 = *(v19 + 9);
          v81 = *(v19 + 20);
          v74 = *(v19 + 3);
          v75 = *(v19 + 4);
          v76 = *(v19 + 5);
          v77 = *(v19 + 6);
          v71 = *v19;
          v72 = *(v19 + 1);
          v73 = *(v19 + 2);
          v41 = v37;
          v42 = v40;
          if (v38)
          {
            v106 = v90;
            v107 = v91;
            v108 = v92;
            v102 = v86;
            v103 = v87;
            v104 = v88;
            v105 = v89;
            v98 = v82;
            v99 = v83;
            v100 = v84;
            v101 = v85;
            v5 = v70;
            v43 = [(CRCVNLPTransientResult *)v38 initWithActivationMatrix:v41 decodingLocale:v42 activationsBuffer:&v98];
            v38 = v43;
            if (v43)
            {
              v44 = v43[344];
              v45 = v80;
              *(v43 + 19) = v79;
              *(v43 + 20) = v45;
              *(v43 + 42) = v81;
              v46 = v76;
              *(v43 + 15) = v75;
              *(v43 + 16) = v46;
              v47 = v78;
              *(v43 + 17) = v77;
              *(v43 + 18) = v47;
              v48 = v72;
              *(v43 + 11) = v71;
              *(v43 + 12) = v48;
              v49 = v74;
              *(v43 + 13) = v73;
              *(v43 + 14) = v49;
              if ((v44 & 1) == 0)
              {
                v43[344] = 1;
              }
            }
          }

          else
          {
            v5 = v70;
          }

          v50 = [v5 objectAtIndexedSubscript:v14 >> 1];
          v52 = v50;
          if (v50)
          {
            objc_setProperty_atomic(v50, v51, v38, 80);
          }
        }

        else
        {
          v53 = objc_alloc(MEMORY[0x1E6991FC8]);
          v54 = *v16;
          v55 = *(v16 + 2);
          v99 = *(v16 + 1);
          v100 = v55;
          v98 = v54;
          v56 = *(v16 + 3);
          v57 = *(v16 + 4);
          v58 = *(v16 + 6);
          v103 = *(v16 + 5);
          v104 = v58;
          v101 = v56;
          v102 = v57;
          v59 = *(v16 + 7);
          v60 = *(v16 + 8);
          v61 = *(v16 + 9);
          v108 = *(v16 + 20);
          v106 = v60;
          v107 = v61;
          v105 = v59;
          v62 = [(CRCTCCVNLPTextDecoder *)self characterObservations];
          v82 = v93;
          *&v83 = v94;
          v41 = [v53 initWithBuffer:&v98 domainType:v67 characterObservations:v62 blankIndex:v68 pruningPolicy:&v82];

          v63 = [CRCVNLPTransientResult alloc];
          v39 = [(CRCTCCVNLPTextDecoder *)self configuration];
          v42 = [v39 locale];
          v105 = *(v16 + 7);
          v106 = *(v16 + 8);
          v107 = *(v16 + 9);
          v108 = *(v16 + 20);
          v101 = *(v16 + 3);
          v102 = *(v16 + 4);
          v103 = *(v16 + 5);
          v104 = *(v16 + 6);
          v98 = *v16;
          v99 = *(v16 + 1);
          v100 = *(v16 + 2);
          v38 = [(CRCVNLPTransientResult *)v63 initWithActivationMatrix:v41 decodingLocale:v42 activationsBuffer:&v98];
          v5 = v70;
          v64 = [v70 objectAtIndexedSubscript:v14];
          v52 = v64;
          if (v64)
          {
            objc_setProperty_atomic(v64, v65, v38, 80);
          }

          v17 = v14;
        }

        v14 = v17 + 1;
        v13 = v95;
        v15 = 0xCF3CF3CF3CF3CF3DLL * ((v96 - v95) >> 3);
      }

      while (v17 + 1 < v15);
    }

    if (v13)
    {
      v96 = v13;
      operator delete(v13);
    }

    v4 = v66;
  }
}

- (void)_create2DArraysFromInputArray:(id)a3 classSize:(unint64_t *)a4 outputArrays:(void *)a5
{
  v69 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v8 = v69;
  v9 = v8;
  v85 = isKindOfClass;
  v70 = v8;
  if (isKindOfClass)
  {
    if (v8)
    {
      [v8 output:v69 label:? prob:?map];
      v82 = v113;
      v103 = v116;
      v104 = v117;
      v105 = v115;
      v10 = v118;
      v84 = v119;
      v100 = v121;
      v101 = v120;
      v98 = v123;
      v99 = v122;
      v96 = *(&v113 + 1);
      v97 = v124;
      v95 = v125;
      [v9 output_topk_indices];
      v71 = v113;
    }

    else
    {
      v71 = 0;
      v82 = 0;
      v96 = 0;
      v97 = 0;
      v104 = 0;
      v105 = 0;
      v103 = 0;
      v10 = 0;
      v84 = 0;
      v100 = 0;
      v101 = 0;
      v98 = 0;
      v99 = 0;
      v95 = 0;
    }
  }

  else if (v8)
  {
    [v8 output:v69 label:? prob:?map];
    v82 = v113;
    v103 = v116;
    v104 = v117;
    v105 = v115;
    v10 = v118;
    v84 = v119;
    v100 = v121;
    v101 = v120;
    v98 = v123;
    v99 = v122;
    v96 = *(&v113 + 1);
    v97 = v124;
    v95 = v125;
  }

  else
  {
    v95 = 0;
    v97 = 0;
    v98 = 0;
    v99 = 0;
    v100 = 0;
    v101 = 0;
    v84 = 0;
    v10 = 0;
    v103 = 0;
    v104 = 0;
    v105 = 0;
    v96 = 0;
    v82 = 0;
  }

  v106 = [v70 textFeatureInfo];
  if (isKindOfClass)
  {
    v11 = 2 * [v106 count];
  }

  else
  {
    v11 = [v106 count];
  }

  std::vector<espresso_buffer_t>::resize(a5, v11);
  if ([(CRCTCCVNLPTextDecoder *)self shouldUseModernizedDecoder])
  {
    v12 = v103 * v105 * v104 * v10;
    if (v12)
    {
      v13 = 4 * v12;
      v14 = v82;
      do
      {
        v15 = *v14;
        v16 = logf(*v14);
        if (v15 <= 0.0)
        {
          v16 = -INFINITY;
        }

        *v14++ = v16;
        v13 -= 4;
      }

      while (v13);
    }
  }

  v17 = 0;
  v83 = isKindOfClass & 1;
  while (v17 < [v106 count])
  {
    v18 = [v106 objectAtIndexedSubscript:v17];
    v19 = [(CRFeatureSequenceRecognitionInfo *)v18 featureImageSize];
    if (v18)
    {
      v20 = v18[2];
    }

    else
    {
      v20 = 0.0;
    }

    v21 = [(CRCTCCVNLPTextDecoder *)self model];
    v22 = [v21 outputWidthDownscale];
    [v22 floatValue];
    v24 = v23;
    v25 = [(CRCTCCVNLPTextDecoder *)self model];
    v26 = [v25 outputWidthOffset];
    [v26 floatValue];
    v28 = v27;

    v29 = [(CRCTCCVNLPTextDecoder *)self model];
    v30 = [v29 outputFormatVersion];
    v31 = [v30 intValue] == 1;

    v32 = v84;
    v34 = v104;
    v33 = v105;
    v35 = v103;
    v37 = v100;
    v36 = v101;
    v38 = (ceil(v19 * v20 / v24) + v28 + 2.0);
    v40 = v98;
    v39 = v99;
    v41 = v97;
    if (!v31)
    {
      v42 = [(CRCTCCVNLPTextDecoder *)self model:v104];
      v43 = [v42 outputFormatVersion];
      v44 = [v43 intValue] == 2;

      if (!v44)
      {
        v45 = 0;
        v33 = v93;
        v46 = v94;
        v34 = v91;
        v35 = v92;
        v48 = v89;
        v47 = v90;
        v40 = v87;
        v39 = v88;
        v41 = v86;
        goto LABEL_29;
      }

      v32 = v103;
      v35 = v104;
      v33 = v104;
      v41 = v105;
      v34 = v105;
      v36 = 1;
      v37 = 1;
      v39 = 1;
      v40 = v103 * v105;
    }

    if (v32 >= v38)
    {
      v5 = v38;
    }

    else
    {
      v5 = v32;
    }

    v45 = v17 * v40;
    v46 = &v82[v17 * v40];
    v113 = 0u;
    v114 = 0u;
    v111 = 0u;
    v112 = 0u;
    v47 = v36;
    v48 = v37;
    v38 = v5;
LABEL_29:
    v49 = *a5 + 168 * (v17 << v83);
    v93 = v33;
    v94 = v46;
    *v49 = v46;
    *(v49 + 8) = v96;
    *(v49 + 16) = v113;
    *(v49 + 32) = v114;
    *(v49 + 48) = v111;
    *(v49 + 64) = v112;
    *(v49 + 80) = v33;
    *(v49 + 88) = v35;
    v91 = v34;
    v92 = v35;
    *(v49 + 96) = v34;
    *(v49 + 104) = 1;
    *(v49 + 112) = v5;
    *(v49 + 120) = v47;
    v89 = v48;
    v90 = v47;
    *(v49 + 128) = v48;
    *(v49 + 136) = v39;
    v87 = v40;
    v88 = v39;
    *(v49 + 144) = v40;
    *(v49 + 152) = v41;
    v86 = v41;
    *(v49 + 160) = v95;
    if ((v85 & 1) == 0)
    {
      goto LABEL_35;
    }

    v50 = [(CRCTCCVNLPTextDecoder *)self model];
    v51 = [v50 outputFormatVersion];
    v52 = [v51 intValue] == 1;

    v53 = v97;
    v54 = v98;
    v56 = v99;
    v55 = v100;
    v57 = v101;
    v58 = v103;
    v59 = v104;
    v60 = v105;
    if (v52)
    {
      goto LABEL_33;
    }

    v61 = [(CRCTCCVNLPTextDecoder *)self model:v103];
    v62 = [v61 outputFormatVersion];
    v63 = [v62 intValue] == 2;

    v54 = v80;
    v53 = v81;
    v65 = v78;
    v64 = v79;
    v66 = v76;
    v57 = v77;
    v58 = v74;
    v59 = v75;
    v67 = v72;
    v60 = v73;
    if (v63)
    {
      v60 = v104;
      v59 = v105;
      v53 = v105;
      v54 = v105 * v105;
      v56 = 1;
      v55 = 1;
      v57 = 1;
      v58 = v104;
LABEL_33:
      v64 = v56;
      v109 = 0u;
      v110 = 0u;
      v65 = v55;
      v66 = v38;
      v107 = 0u;
      v108 = 0u;
      v67 = v71 + 4 * v45;
    }

    v68 = *a5 + 168 * (v17 << v83);
    *(v68 + 184) = v109;
    *(v68 + 200) = v110;
    *(v68 + 216) = v107;
    v72 = v67;
    v73 = v60;
    *(v68 + 168) = v67;
    *(v68 + 176) = v96;
    *(v68 + 232) = v108;
    *(v68 + 248) = v60;
    *(v68 + 256) = v58;
    v74 = v58;
    v75 = v59;
    *(v68 + 264) = v59;
    *(v68 + 272) = 1;
    v76 = v66;
    v77 = v57;
    *(v68 + 280) = v66;
    *(v68 + 288) = v57;
    v78 = v65;
    v79 = v64;
    *(v68 + 296) = v65;
    *(v68 + 304) = v64;
    v80 = v54;
    v81 = v53;
    *(v68 + 312) = v54;
    *(v68 + 320) = v53;
    *(v68 + 328) = v95;
LABEL_35:

    ++v17;
  }
}

- (void)_populateTransientResultGreedyDecodingResultsForFeatureInfo:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v4 = [(CRCTCCVNLPTextDecoder *)self model];
  v5 = [v4 ctcBlankLabelIndex];

  v17 = 0;
  v16 = &unk_1F2BAF938;
  __p = 0;
  v19 = 0;
  v20 = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(&__p, self->_spaceLabels.__begin_, self->_spaceLabels.__end_, self->_spaceLabels.__end_ - self->_spaceLabels.__begin_);
  LOBYTE(v21) = 0;
  v30[0] = &unk_1F2BAFBC0;
  v30[1] = v5;
  v32 = 0;
  v31 = &unk_1F2BAF938;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(&v33, __p, v19, (v19 - __p) >> 3);
  v36 = v21;
  v16 = &unk_1F2BAF938;
  if (__p)
  {
    v19 = __p;
    operator delete(__p);
  }

  cf = 0;
  v28 = 0;
  v29 = 0;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v13;
  v7 = [obj countByEnumeratingWithState:&v23 objects:v38 count:16];
  if (v7)
  {
    v8 = *v24;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(obj);
        }

        Property = *(*(&v23 + 1) + 8 * i);
        if (Property)
        {
          Property = objc_getProperty(Property, v6, 80, 1);
        }

        v11 = Property;
        if ([(CRCTCCVNLPTextDecoder *)self shouldReverseActivationMatrix])
        {
          CoreRecognition::decoder::ActivationMatrix::reverseInTime(&v16);
        }

        CoreRecognition::decoder::CTCGreedyDecoder<CoreRecognition::decoder::SpaceSegmentedPathBuilder<CoreRecognition::decoder::BaseState>>::decode(v30, &v16, v15);
        v12 = convertToCVNLPTextDecodingResult();
        [v11 setGreedyDecodingResult:v12];

        v37 = v15;
        std::vector<CoreRecognition::decoder::DecodingPath>::__destroy_vector::operator()[abi:ne200100](&v37);
        if (v21)
        {
          v22 = v21;
          operator delete(v21);
        }

        if (__p)
        {
          v19 = __p;
          operator delete(__p);
        }
      }

      v7 = [obj countByEnumeratingWithState:&v23 objects:v38 count:16];
    }

    while (v7);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  v30[0] = &unk_1F2BAFBC0;
  v31 = &unk_1F2BAF938;
  if (v33)
  {
    v34 = v33;
    operator delete(v33);
  }
}

id __85__CRCTCCVNLPTextDecoder__populateTransientResultGreedyDecodingResultsForFeatureInfo___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) characterObservations];
  v4 = [v3 objectAtIndexedSubscript:a2];

  return v4;
}

- (BOOL)_wordLMShouldFilterCandidate:(id)a3 inLocale:(id)a4 lmConfig:(id)a5
{
  v49 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [v9 fullString];
  v13 = [v9 fullString];
  v14 = [v13 length];
  if (v14 > 0x80)
  {
    v15 = 128;
  }

  else
  {
    v5 = [v9 fullString];
    v15 = [v5 length];
  }

  v16 = [v12 substringWithRange:{0, v15}];
  if (v14 <= 0x80)
  {
  }

  v17 = [v16 length];
  if (self->_shouldUseLM || [(CRCTCCVNLPTextDecoder *)self shouldUseModernizedDecoder])
  {
    [v9 activationScore];
  }

  else
  {
    [v9 activationScore];
    v19 = v31;
    if (!v17)
    {
      goto LABEL_10;
    }

    v18 = pow(v31, 1.0 / v17);
  }

  v19 = v18;
LABEL_10:
  if (v17 < [v11 filteringMinimumLength] || (objc_msgSend(v11, "filteringActivationThreshold"), v20 = v19, v21 <= v20))
  {
    v25 = 0;
  }

  else
  {
    v22 = +[CRLanguageResourcesManager postProcessManager];
    v37 = 0;
    v38 = &v37;
    v39 = 0x2020000000;
    v40 = 1065353216;
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __72__CRCTCCVNLPTextDecoder__wordLMShouldFilterCandidate_inLocale_lmConfig___block_invoke;
    v33[3] = &unk_1E7BC37B8;
    v35 = &v37;
    v36 = v17;
    v34 = v16;
    [v22 lockResourcesForLocale:v10 sender:self block:v33];
    v23 = v38[6];
    [v11 lmThresholdForLength:v17];
    v25 = v23 < v24;
    if (v23 < v24)
    {
      v26 = CROSLogForCategory(3);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        v27 = [(CRCTCCVNLPTextDecoder *)self configuration];
        v28 = [v27 locale];
        [v9 activationScore];
        v29 = v38[6];
        *buf = 138413058;
        v42 = v28;
        v43 = 2048;
        v44 = v17;
        v45 = 2048;
        v46 = v30;
        v47 = 2048;
        v48 = v29;
        _os_log_impl(&dword_1B40D2000, v26, OS_LOG_TYPE_DEBUG, "Filtering candidate: lang = %@ | length = %ld | activation = %.3f | lmScore = %.3f", buf, 0x2Au);
      }
    }

    else
    {
    }

    _Block_object_dispose(&v37, 8);
  }

  return v25;
}

void __72__CRCTCCVNLPTextDecoder__wordLMShouldFilterCandidate_inLocale_lmConfig___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4 cvnlpCharacterLanguageModel])
  {
    [v4 cvnlpCharacterLanguageModel];
    CVNLPLanguageModelLogJointProbability();
    *(*(*(a1 + 40) + 8) + 24) = expf(v3 / *(a1 + 48));
  }
}

+ (unint64_t)_disambiguatedScriptForString:(id)a3
{
  v3 = a3;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  while ([v3 length] > v4)
  {
    v8 = [v3 characterAtIndex:v4];
    if ((v8 - 1024) > 0x12F)
    {
      v9.i16[0] = v8;
      v9.i16[1] = v8 & 0xFFDF;
      v10 = vdup_lane_s16(v9, 0);
      v10.i16[1] = v8 & 0xFFDF;
      v7 += vmaxv_u16(vcgt_u16(0x158001F001A0017, vadd_s16(v10, 0xFF08FF28FFBFFF40))) & 1;
    }

    else
    {
      ++v5;
      v6 += utf16CheckIsCyrillicUkrainianOnly(v8);
    }

    ++v4;
  }

  if (v5 | v7 && v5 * 1.5 >= v7)
  {
    if (v6 <= 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = 3;
    }
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (BOOL)_shouldUseCharacterDecodingToken
{
  v3 = [(CRCTCCVNLPTextDecoder *)self model];
  if ([v3 supportCharacterBoxes])
  {
    v4 = [(CRCTCCVNLPTextDecoder *)self shouldUseLM];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_commitActionBehavior
{
  if ([(CRCTCCVNLPTextDecoder *)self _shouldUseCharacterDecodingToken])
  {
    [MEMORY[0x1E6992000] defaultCharacterCommitActionBehavior];
  }

  else
  {
    [MEMORY[0x1E6992000] defaultWhitespaceCommitActionBehavior];
  }
  v2 = ;

  return v2;
}

- (id)_cvnlpDecodingResultForActivationMatrix:(id)a3 decodingLocale:(id)a4 beamSearchConfig:(id)a5 lmConfig:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__18;
  v34 = __Block_byref_object_dispose__18;
  v35 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __112__CRCTCCVNLPTextDecoder__cvnlpDecodingResultForActivationMatrix_decodingLocale_beamSearchConfig_lmConfig_error___block_invoke;
  aBlock[3] = &unk_1E7BC37E0;
  aBlock[4] = self;
  v16 = v15;
  v26 = v16;
  v17 = v12;
  v27 = v17;
  v29 = &v30;
  v18 = v14;
  v28 = v18;
  v19 = _Block_copy(aBlock);
  v20 = +[CRLanguageResourcesManager sharedManager];
  v21 = [v20 lockResourcesForLocale:v13 sender:self block:v19];
  if (a7)
  {
    v22 = v21;
  }

  else
  {
    v22 = 1;
  }

  if (v22)
  {
    v23 = v31[5];
  }

  else
  {
    [CRImageReader errorWithErrorCode:-6];
    *a7 = v23 = 0;
  }

  _Block_object_dispose(&v30, 8);

  return v23;
}

void __112__CRCTCCVNLPTextDecoder__cvnlpDecodingResultForActivationMatrix_decodingLocale_beamSearchConfig_lmConfig_error___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [*(a1 + 32) configuration];
  v4 = [v9 cvnlpLanguageResourceBundle:v3 lmConfig:*(a1 + 40)];

  v5 = [objc_alloc(MEMORY[0x1E6991FD0]) initWithLanguageResourceBundle:v4];
  [v5 setActivationMatrix:*(a1 + 48)];
  v6 = [v5 decodingResultWithConfiguration:*(a1 + 56) withContext:0];
  v7 = *(*(a1 + 64) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

- (AdditiveCombiningBeamScorer<CoreRecognition::decoder::CombinedBeamState>)_createBeamScorerWithBundle:(SEL)a3 beamSearchConfig:(id)a4 lmConfig:(id)a5
{
  v10 = a4;
  v65 = a5;
  v11 = a6;
  *&retstr->var1 = xmmword_1B42B0140;
  retstr->var0 = &unk_1F2BAF8F0;
  retstr->var3.var0 = 0;
  retstr->var3.var1 = 0;
  retstr->var3.var2 = 0;
  codemapSize = self->_codemapSize;
  v72 = 0;
  v73 = 0;
  __p = 0;
  if (codemapSize)
  {
    std::vector<float>::__vallocate[abi:ne200100](&__p, codemapSize);
  }

  v13 = [(CRCTCCVNLPTextDecoder *)self characterObservations];
  v64 = [v13 indexOfObject:@" "];

  v14 = [v11 characterLMWeight];
  if (v14)
  {
    v15 = [v11 characterLMWeight];
    [v15 doubleValue];
    v17 = v16 <= 0.0;
  }

  else
  {
    v17 = 1;
  }

  if ([v10 lmCharacterLanguageModel] != 0 && !v17)
  {
    v20 = [v10 lmCharacterLanguageModel];
    v21 = v20;
    if (v20)
    {
      CFRetain(v20);
    }

    cf = v21;
    operator new();
  }

  if ([v10 cvnlpCharacterLanguageModel] != 0 && !v17)
  {
    v18 = [v10 cvnlpCharacterLanguageModel];
    v19 = v18;
    if (v18)
    {
      CFRetain(v18);
    }

    cf = v19;
    operator new();
  }

  if ([v65 pruneProblematicMixedScriptWordPaths])
  {
    v22 = [v10 locale];
    v23 = [v22 localeIdentifier];
    v24 = [CRImageReader languageIsArabic:v23];

    if (v24)
    {
      memset(&v74, 0, sizeof(v74));
      std::vector<unsigned int>::reserve(&v74, (v72 - __p) >> 2);
      v75 = &v74;
      v67 = xmmword_1B42B0140;
      v68 = 0uLL;
      v69 = 0;
      std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&v68, v74.__begin_, v74.__end_, v74.__end_ - v74.__begin_);
      v70 = 0xC08F400000000000;
      cf = &unk_1F2BB37C0;
      if (v74.__begin_)
      {
        v74.__end_ = v74.__begin_;
        operator delete(v74.__begin_);
      }

      operator new();
    }

    v25 = [v10 locale];
    v26 = [v25 localeIdentifier];
    if ([CRImageReader languageIsLatin:v26])
    {

      goto LABEL_22;
    }

    v27 = [v10 locale];
    v28 = [v27 localeIdentifier];
    v29 = [CRImageReader languageIsCyrillic:v28];

    if (v29)
    {
LABEL_22:
      memset(&v74, 0, sizeof(v74));
      std::vector<unsigned int>::reserve(&v74, (v72 - __p) >> 2);
      v75 = &v74;
      v67 = xmmword_1B42B0140;
      v68 = 0uLL;
      v69 = 0;
      std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&v68, v74.__begin_, v74.__end_, v74.__end_ - v74.__begin_);
      v70 = 0xC08F400000000000;
      cf = &unk_1F2BAF790;
      if (v74.__begin_)
      {
        v74.__end_ = v74.__begin_;
        operator delete(v74.__begin_);
      }

      operator new();
    }
  }

  v30 = [v11 lexiconWeight];
  if (v30)
  {
    v31 = [v11 lexiconWeight];
    [v31 doubleValue];
    v33 = v32;

    if (v33 > 0.0)
    {
      memset(&v74, 0, sizeof(v74));
      if ([v10 staticLexicon])
      {
        v34 = [v10 staticLexicon];
        v35 = v34;
        if (v34)
        {
          CFRetain(v34);
        }

        v75 = v35;
        begin = v74.__begin_;
        v37 = (v74.__end_ - v74.__begin_) >> 3;
        v38 = v37 + 1;
        if ((v37 + 1) >> 61)
        {
          std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
        }

        v39 = v74.__end_cap_.__value_ - v74.__begin_;
        if (v74.__end_cap_.__value_ - v74.__begin_ > v38)
        {
          v38 = v39 >> 2;
        }

        if (v39 >= 0x7FFFFFFFFFFFFFF8)
        {
          v40 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v40 = v38;
        }

        *(&v68 + 1) = &v74;
        if (v40)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<applesauce::CF::ObjectRef<_LXLexicon const*>>>(v40);
        }

        v41 = (v74.__end_ - v74.__begin_) >> 3;
        v42 = (8 * v37);
        *v42 = v35;
        v75 = 0;
        v43 = &v42[-2 * v41];
        v42 += 2;
        v74.__begin_ = v43;
        v74.__end_ = v42;
        value = v74.__end_cap_.__value_;
        v74.__end_cap_.__value_ = 0;
        *(&v67 + 1) = begin;
        *&v68 = value;
        cf = begin;
        *&v67 = begin;
        std::__split_buffer<applesauce::CF::ObjectRef<_LXLexicon const*>>::~__split_buffer(&cf);
        v74.__end_ = v42;
      }

      v45 = [(CRCTCCVNLPTextDecoder *)self configuration];
      v46 = [v45 customWords];
      if (v46)
      {
        v47 = [(CRCTCCVNLPTextDecoder *)self configuration];
        v48 = [v47 customWords];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v49 = [v10 isCustomWordsSupported];

          if (!v49)
          {
LABEL_51:
            if (v74.__begin_ != v74.__end_)
            {
              operator new();
            }

            cf = &v74;
            std::vector<applesauce::CF::ObjectRef<_LXLexicon const*>>::__destroy_vector::operator()[abi:ne200100](&cf);
            goto LABEL_54;
          }

          v45 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self isKindOfClass: %@", objc_opt_class(), &retstr->var3, &unk_1F2BAF8F0, v64];
          v50 = [(CRCTCCVNLPTextDecoder *)self configuration];
          v51 = [v50 customWords];
          v46 = [v51 filteredArrayUsingPredicate:v45];

          if ([v46 count])
          {
            v52 = [(CRCTCCVNLPTextDecoder *)self locale];
            v53 = [CRLanguageUtils createDynamicLexicon:v46 forLocale:v52 error:0];
            cf = v53;
            end = v74.__end_;
            if (v74.__end_ >= v74.__end_cap_.__value_)
            {
              v74.__end_ = std::vector<applesauce::CF::ObjectRef<_LXLexicon const*>>::__emplace_back_slow_path<applesauce::CF::ObjectRef<_LXLexicon const*>>(&v74, &cf);
              if (cf)
              {
                CFRelease(cf);
              }
            }

            else
            {
              *v74.__end_ = v53;
              v74.__end_ = end + 2;
            }
          }
        }

        else
        {
        }
      }

      goto LABEL_51;
    }
  }

LABEL_54:
  if ([v10 wordLanguageModel])
  {
    v55 = [v11 wordLMWeight];
    if (v55)
    {
      v56 = [v11 wordLMWeight];
      [v56 doubleValue];
      v58 = v57;

      if (v58 > 0.0)
      {
        v59 = [v10 wordLanguageModel];
        v60 = v59;
        if (v59)
        {
          CFRetain(v59);
        }

        cf = v60;
        v61 = [v10 wordTokenizer];
        v62 = v61;
        if (v61)
        {
          CFRetain(v61);
        }

        v74.__begin_ = v62;
        operator new();
      }
    }
  }

  if (__p)
  {
    v72 = __p;
    operator delete(__p);
  }

  return result;
}

- (id)_cvnlpGreedyModernizedDecodingResultForActivationMatrix:(const void *)a3
{
  v5 = [(CRCTCCVNLPTextDecoder *)self model];
  v6 = [v5 ctcBlankLabelIndex];

  v25 = 0uLL;
  v26 = 0;
  if ([(CRCTCCVNLPTextDecoder *)self _shouldUseCharacterDecodingToken])
  {
    v14 = &unk_1F2BAFB98;
    v15 = v6;
    v17 = 0;
    v16 = &unk_1F2BAF7F0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    CoreRecognition::decoder::CTCGreedyDecoder<CoreRecognition::decoder::CharacterSegmentedPathBuilder<CoreRecognition::decoder::BaseState>>::decode(&v14, a3, &v9);
    std::vector<CoreRecognition::decoder::DecodingPath>::__vdeallocate(&v25);
    v25 = v9;
    v26 = __p;
    v27 = &v9;
    __p = 0;
    v9 = 0uLL;
    std::vector<CoreRecognition::decoder::DecodingPath>::__destroy_vector::operator()[abi:ne200100](&v27);
  }

  else
  {
    BYTE8(v9) = 0;
    *&v9 = &unk_1F2BAF938;
    __p = 0;
    v11 = 0;
    v12 = 0;
    std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(&__p, self->_spaceLabels.__begin_, self->_spaceLabels.__end_, self->_spaceLabels.__end_ - self->_spaceLabels.__begin_);
    v13 = 0;
    v15 = v6;
    v14 = &unk_1F2BAFBC0;
    v17 = 0;
    v16 = &unk_1F2BAF938;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(&v18, __p, v11, (v11 - __p) >> 3);
    v21 = v13;
    *&v9 = &unk_1F2BAF938;
    if (__p)
    {
      v11 = __p;
      operator delete(__p);
    }

    v22 = 0;
    v23 = 0;
    v24 = 0;
    CoreRecognition::decoder::CTCGreedyDecoder<CoreRecognition::decoder::SpaceSegmentedPathBuilder<CoreRecognition::decoder::BaseState>>::decode(&v14, a3, &v9);
    std::vector<CoreRecognition::decoder::DecodingPath>::__vdeallocate(&v25);
    v25 = v9;
    v26 = __p;
    v27 = &v9;
    __p = 0;
    v9 = 0uLL;
    std::vector<CoreRecognition::decoder::DecodingPath>::__destroy_vector::operator()[abi:ne200100](&v27);
    if (v22)
    {
      CFRelease(v22);
    }

    v14 = &unk_1F2BAFBC0;
    v16 = &unk_1F2BAF938;
    if (v18)
    {
      v19 = v18;
      operator delete(v18);
    }
  }

  v7 = convertToCVNLPTextDecodingResult();
  v14 = &v25;
  std::vector<CoreRecognition::decoder::DecodingPath>::__destroy_vector::operator()[abi:ne200100](&v14);

  return v7;
}

id __81__CRCTCCVNLPTextDecoder__cvnlpGreedyModernizedDecodingResultForActivationMatrix___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) characterObservations];
  v4 = [v3 objectAtIndexedSubscript:a2];

  return v4;
}

- (id)_cvnlpModernizedDecodingResultForActivationMatrix:(const void *)a3 decodingLocale:(id)a4 beamSearchConfig:(id)a5 lmConfig:(id)a6 error:(id *)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__18;
  v32 = __Block_byref_object_dispose__18;
  v33 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __122__CRCTCCVNLPTextDecoder__cvnlpModernizedDecodingResultForActivationMatrix_decodingLocale_beamSearchConfig_lmConfig_error___block_invoke;
  aBlock[3] = &unk_1E7BC3808;
  aBlock[4] = self;
  v15 = v13;
  v24 = v15;
  v16 = v14;
  v26 = &v28;
  v27 = a3;
  v25 = v16;
  v17 = _Block_copy(aBlock);
  v18 = +[CRLanguageResourcesManager sharedManager];
  v19 = [v18 lockResourcesForLocale:v12 sender:self block:v17];
  if (a7)
  {
    v20 = v19;
  }

  else
  {
    v20 = 1;
  }

  if (v20)
  {
    v21 = v29[5];
  }

  else
  {
    [CRImageReader errorWithErrorCode:-6];
    *a7 = v21 = 0;
  }

  _Block_object_dispose(&v28, 8);

  return v21;
}

void __122__CRCTCCVNLPTextDecoder__cvnlpModernizedDecodingResultForActivationMatrix_decodingLocale_beamSearchConfig_lmConfig_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) model];
  v5 = [v4 ctcBlankLabelIndex];

  v6 = [*(a1 + 40) beamWidth];
  v7 = [*(a1 + 40) pathCount];
  v46 = 0;
  v47 = 0;
  v48 = 0;
  v8 = *(a1 + 32);
  if (v8)
  {
    [v8 pruningPolicy];
    v9 = *(&v47 + 1);
    v19 = v48;
  }

  else
  {
    v19 = 0;
    v9 = 0.0;
  }

  v10 = logf(v9);
  v44[3] = 0uLL;
  v45 = 0;
  if ([*(a1 + 32) _shouldUseCharacterDecodingToken])
  {
    LOBYTE(v21) = 0;
    v20 = &unk_1F2BAF840;
    v11 = *(a1 + 32);
    if (v11)
    {
      [v11 _createBeamScorerWithBundle:v3 beamSearchConfig:*(a1 + 40) lmConfig:*(a1 + 48)];
      v12 = *(&v44[1] + 8);
      v13 = *(&v44[2] + 1);
      v14 = v21;
    }

    else
    {
      v14 = 0;
      v13 = 0;
      v12 = 0uLL;
      memset(v44, 0, 48);
    }

    v24 = &unk_1F2BAFA68;
    v25 = v5;
    v27 = *(v44 + 8);
    v28 = v12;
    v26 = &unk_1F2BAF8F0;
    v29 = v13;
    memset(&v44[1] + 8, 0, 24);
    v31 = v14;
    v30 = &unk_1F2BAF840;
    __p = v5;
    v33 = __PAIR64__(v7, v6);
    v34 = 0xFFF0000000000000;
    v35 = v10;
    v36 = v19;
    LOBYTE(v37) = 1;
    LOBYTE(v39) = 1;
    *&v44[0] = &unk_1F2BAF8F0;
    cf[0] = &v44[1] + 8;
    std::vector<std::unique_ptr<CoreRecognition::decoder::BaseBeamScorer>>::__destroy_vector::operator()[abi:ne200100](cf);
    memset(cf, 0, 24);
    CoreRecognition::decoder::CTCBeamSearchDecoder<CoreRecognition::decoder::AdditiveCombiningBeamScorer<CoreRecognition::decoder::CombinedBeamState>,CoreRecognition::decoder::CharacterSegmentedPathBuilder<CoreRecognition::decoder::CombinedBeamState>>::decode();
  }

  v15 = *(a1 + 32);
  BYTE8(v44[0]) = 0;
  *&v44[0] = &unk_1F2BAF988;
  memset(&v44[1], 0, 24);
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(&v44[1], *(v15 + 8), *(v15 + 16), (*(v15 + 16) - *(v15 + 8)) >> 3);
  BYTE8(v44[2]) = 0;
  v16 = *(a1 + 32);
  if (v16)
  {
    [v16 _createBeamScorerWithBundle:v3 beamSearchConfig:*(a1 + 40) lmConfig:*(a1 + 48)];
    v17 = *&cf[3];
    v18 = cf[5];
  }

  else
  {
    v18 = 0;
    v17 = 0uLL;
    memset(cf, 0, 48);
  }

  v24 = &unk_1F2BAFA90;
  v25 = v5;
  v27 = *&cf[1];
  v28 = v17;
  v26 = &unk_1F2BAF8F0;
  v29 = v18;
  memset(&cf[3], 0, 24);
  v31 = BYTE8(v44[0]);
  v30 = &unk_1F2BAF988;
  __p = 0;
  v33 = 0;
  v34 = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(&__p, *&v44[1], *(&v44[1] + 1), (*(&v44[1] + 1) - *&v44[1]) >> 3);
  LOBYTE(v35) = BYTE8(v44[2]);
  v36 = v5;
  v37 = v6;
  v38 = v7;
  v39 = 0xFFF0000000000000;
  v40 = v10;
  v41 = v19;
  v42 = 1;
  v43 = 1;
  cf[0] = &unk_1F2BAF8F0;
  v20 = &cf[3];
  std::vector<std::unique_ptr<CoreRecognition::decoder::BaseBeamScorer>>::__destroy_vector::operator()[abi:ne200100](&v20);
  v20 = 0;
  v21 = 0;
  v22 = 0;
  CoreRecognition::decoder::CTCBeamSearchDecoder<CoreRecognition::decoder::AdditiveCombiningBeamScorer<CoreRecognition::decoder::CombinedBeamState>,CoreRecognition::decoder::SpaceSegmentedPathBuilder<CoreRecognition::decoder::CombinedBeamState>>::decode();
}

id __122__CRCTCCVNLPTextDecoder__cvnlpModernizedDecodingResultForActivationMatrix_decodingLocale_beamSearchConfig_lmConfig_error___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) characterObservations];
  v4 = [v3 objectAtIndexedSubscript:a2];

  return v4;
}

+ (id)_cvnlpDecodingResultByRerankingCandidates:(id)a3 decodingLocale:(id)a4
{
  v47 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v32 = a4;
  v34 = v5;
  v6 = [v5 candidates];
  v33 = [v6 mutableCopy];

  if ([CRImageReader languageIsLatin:v32])
  {
    v7 = [v5 candidates];
    v8 = [v7 lastObject];
    v9 = [v8 tokens];
    v35 = [v9 count];

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v10 = [v5 candidates];
    v11 = [v10 countByEnumeratingWithState:&v41 objects:v46 count:16];
    if (!v11)
    {
LABEL_10:

      if (!v35)
      {
        goto LABEL_37;
      }

      v16 = 0;
      while (1)
      {
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v17 = [v34 candidates];
        v18 = [v17 countByEnumeratingWithState:&v37 objects:v45 count:16];
        if (v18)
        {
          v36 = 0;
          v19 = 0;
          v20 = 0;
          v21 = *v38;
          while (2)
          {
            v22 = 0;
            v31 = v18 + v20;
            do
            {
              if (*v38 != v21)
              {
                objc_enumerationMutation(v17);
              }

              v23 = [*(*(&v37 + 1) + 8 * v22) tokens];
              v24 = [v23 objectAtIndexedSubscript:v16];
              v25 = [v24 string];

              if ([v25 length] < 0x11 || objc_msgSend(v25, "length") > 0x13 || objc_msgSend(v25, "characterAtIndex:", 0) != 49 || objc_msgSend(v25, "characterAtIndex:", 1) != 90 && objc_msgSend(v25, "characterAtIndex:", 1) != 50 && objc_msgSend(v25, "characterAtIndex:", 1) != 55)
              {

                goto LABEL_31;
              }

              if ([v25 length] == 18)
              {
                v26 = [v25 characterAtIndex:1] == 90 && v20 != 0;
                v27 = v36;
                if (v26)
                {
                  v27 = v20;
                }

                v36 = v27;
                v19 |= v26;
              }

              ++v20;
              ++v22;
            }

            while (v18 != v22);
            v18 = [v17 countByEnumeratingWithState:&v37 objects:v45 count:16];
            v20 = v31;
            if (v18)
            {
              continue;
            }

            break;
          }

LABEL_31:
          if (v19)
          {
            v30 = [v33 objectAtIndexedSubscript:v36];
            [v33 insertObject:v30 atIndex:0];

            [v33 removeObjectAtIndex:v36 + 1];
            goto LABEL_37;
          }
        }

        else
        {
        }

        if (++v16 == v35)
        {
          goto LABEL_37;
        }
      }
    }

    v12 = *v42;
LABEL_4:
    v13 = 0;
    while (1)
    {
      if (*v42 != v12)
      {
        objc_enumerationMutation(v10);
      }

      v14 = [*(*(&v41 + 1) + 8 * v13) tokens];
      v15 = [v14 count] == v35;

      if (!v15)
      {
        break;
      }

      if (v11 == ++v13)
      {
        v11 = [v10 countByEnumeratingWithState:&v41 objects:v46 count:16];
        if (!v11)
        {
          goto LABEL_10;
        }

        goto LABEL_4;
      }
    }
  }

LABEL_37:
  v28 = [objc_alloc(MEMORY[0x1E6992018]) initWithCandidates:v33];

  return v28;
}

+ (void)_adjustBeamSearchResults:(id *)a3 tokens:(id)a4 greedyCandidateString:(id)a5 greedyCandidateTokens:(id)a6 decodingLocale:(id)a7
{
  v36 = a4;
  v11 = a5;
  v35 = a6;
  v29 = v11;
  v34 = a7;
  v30 = [CRTextDecodingUtils adjustedBeamSearchDecodedString:*a3 greedyDecodedString:v11 decodingLocale:?];
  if (([v30 isEqualToString:*a3] & 1) == 0)
  {
    v12 = 0;
    *a3 = v30;
    while (v12 < [v36 count])
    {
      v13 = [v36 objectAtIndexedSubscript:v12];
      v14 = [v13 string];
      v15 = [v35 objectAtIndexedSubscript:v12];
      v16 = [v15 string];
      v17 = [CRTextDecodingUtils adjustedBeamSearchDecodedString:v14 greedyDecodedString:v16 decodingLocale:v34];

      v18 = [v36 objectAtIndexedSubscript:v12];
      v19 = [v18 string];
      LOBYTE(v16) = [v17 isEqualToString:v19];

      if ((v16 & 1) == 0)
      {
        v20 = objc_alloc(MEMORY[0x1E6992028]);
        v33 = [v36 objectAtIndexedSubscript:v12];
        v32 = [v33 score];
        v31 = [v36 objectAtIndexedSubscript:v12];
        v21 = [v31 alignmentScore];
        v22 = [v36 objectAtIndexedSubscript:v12];
        v23 = [v22 activationRange];
        v25 = v24;
        v26 = [v36 objectAtIndexedSubscript:v12];
        v27 = [v26 terminatingCharacter];
        v28 = [v20 initWithString:v17 score:v32 alignmentScore:v21 activationRange:v23 terminatingCharacter:{v25, v27}];

        [v36 replaceObjectAtIndex:v12 withObject:v28];
      }

      ++v12;
    }
  }
}

- (BOOL)_decodeSingleFeatureWithInfo:(id)a3 decodingLocale:(id)a4 greedyDecoder:(id)a5 greedyConfig:(id)a6 beamSearchConfig:(id)a7 imageSize:(CGSize)a8 useCharacterBoxes:(BOOL)a9 lmConfig:(id)a10 error:(id *)a11
{
  v285 = a9;
  v359 = *MEMORY[0x1E69E9840];
  selfa = a3;
  v298 = a4;
  v278 = a5;
  v277 = a6;
  v279 = a7;
  v281 = a10;
  if (qword_1ED960330 != -1)
  {
    dispatch_once(&qword_1ED960330, &__block_literal_global_35);
  }

  context = objc_autoreleasePoolPush();
  Property = selfa;
  if (selfa)
  {
    Property = objc_getProperty(selfa, v16, 80, 1);
  }

  v282 = Property;
  v18 = [v282 greedyDecodingResult];

  v326 = self;
  if (v18)
  {
    v287 = 0;
  }

  else if ([(CRCTCCVNLPTextDecoder *)self shouldUseModernizedDecoder])
  {
    v20 = selfa;
    if (selfa)
    {
      v20 = objc_getProperty(selfa, v19, 80, 1);
    }

    v21 = v20;
    [(CRCVNLPTransientResult *)v355 modernizedActivationMatrix];

    v287 = *v355;
    if ([(CRCTCCVNLPTextDecoder *)self shouldReverseActivationMatrix])
    {
      CoreRecognition::decoder::ActivationMatrix::reverseInTime(v355);
    }

    v22 = [(CRCTCCVNLPTextDecoder *)self _cvnlpGreedyModernizedDecodingResultForActivationMatrix:v355];
    [v282 setGreedyDecodingResult:v22];

    if (v357)
    {
      v358 = v357;
      operator delete(v357);
    }

    if (*&v355[16])
    {
      v356 = *&v355[16];
      operator delete(*&v355[16]);
    }
  }

  else
  {
    v23 = selfa;
    if (selfa)
    {
      v23 = objc_getProperty(selfa, v19, 80, 1);
    }

    v24 = v23;
    v25 = [v24 activationMatrix];
    [v278 setActivationMatrix:v25];

    v26 = [v278 activationMatrix];
    v287 = [v26 timestepCount];

    v27 = [v278 greedyDecodingResultWithConfiguration:v277];
    [v282 setGreedyDecodingResult:v27];
  }

  if ([(CRCTCCVNLPTextDecoder *)self shouldUseLM])
  {
    v28 = [(CRCTCCVNLPTextDecoder *)self subscribedLocales];
    objc_sync_enter(v28);
    v29 = [(CRCTCCVNLPTextDecoder *)self subscribedLocales];
    v30 = [v29 containsObject:v298];

    if ((v30 & 1) == 0)
    {
      v31 = [(CRCTCCVNLPTextDecoder *)self subscribedLocales];
      [v31 addObject:v298];

      v32 = +[CRLanguageResourcesManager sharedManager];
      [v32 addSubscriber:self forLocale:v298];

      v33 = [(CRCTCCVNLPTextDecoder *)self configuration];
      v34 = [v33 filterWithLM];

      if (v34)
      {
        v35 = +[CRLanguageResourcesManager postProcessManager];
        [v35 addSubscriber:self forLocale:v298];
      }
    }

    objc_sync_exit(v28);

    if ([(CRCTCCVNLPTextDecoder *)self shouldUseModernizedDecoder])
    {
      v37 = selfa;
      if (selfa)
      {
        v37 = objc_getProperty(selfa, v36, 80, 1);
      }

      v38 = v37;
      [(CRCVNLPTransientResult *)v355 modernizedActivationMatrix];

      v287 = *v355;
      v350 = 0;
      v39 = [(CRCTCCVNLPTextDecoder *)self _cvnlpModernizedDecodingResultForActivationMatrix:v355 decodingLocale:v298 beamSearchConfig:v279 lmConfig:v281 error:&v350];
      v283 = v350;
      if (v357)
      {
        v358 = v357;
        operator delete(v357);
      }

      if (*&v355[16])
      {
        v356 = *&v355[16];
        operator delete(*&v355[16]);
      }
    }

    else
    {
      v40 = selfa;
      if (selfa)
      {
        v40 = objc_getProperty(selfa, v36, 80, 1);
      }

      v41 = v40;
      v42 = [v41 activationMatrix];

      v287 = [v42 timestepCount];
      v349 = 0;
      v39 = [(CRCTCCVNLPTextDecoder *)self _cvnlpDecodingResultForActivationMatrix:v42 decodingLocale:v298 beamSearchConfig:v279 lmConfig:v281 error:&v349];
      v283 = v349;
    }

    v284 = [CRCTCCVNLPTextDecoder _cvnlpDecodingResultByRerankingCandidates:v39 decodingLocale:v298];
  }

  else
  {
    v284 = [v282 greedyDecodingResult];
    v283 = 0;
  }

  v43 = v284;
  if (v284)
  {
    v280 = [v284 candidates];
    v301 = [(CRCTCCVNLPTextDecoder *)self _shouldUseCharacterDecodingToken];
    if (![v280 count])
    {
      v47 = v280;
LABEL_230:

      v43 = v284;
      goto LABEL_231;
    }

    v296 = [MEMORY[0x1E695DF70] array];
    if (v285)
    {
      v44 = [v280 firstObject];
      [v44 tokens];
      if (v301)
        v45 = {;
        v46 = [CRTextDecodingUtils wordTokensFromCharacterTokens:v45];
      }

      else
        v45 = {;
        v46 = v45;
      }

      v347 = 0u;
      v348 = 0u;
      v345 = 0u;
      v346 = 0u;
      v48 = v46;
      v49 = [v48 countByEnumeratingWithState:&v345 objects:v354 count:16];
      if (v49)
      {
        v50 = *v346;
        do
        {
          for (i = 0; i != v49; ++i)
          {
            if (*v346 != v50)
            {
              objc_enumerationMutation(v48);
            }

            v52 = *(*(&v345 + 1) + 8 * i);
            v53 = [v52 fullString];
            if ([v53 hasPrefix:@" "])
            {
              v54 = [v52 fullString];
              v55 = [v54 length] > 1;

              if (v55)
              {
                v311 = 0;
                v56 = v48;
                goto LABEL_62;
              }
            }

            else
            {
            }
          }

          v49 = [v48 countByEnumeratingWithState:&v345 objects:v354 count:16];
        }

        while (v49);
      }

      if (v301)
      {
        v56 = v48;
      }

      else
      {
        v56 = [CRTextDecodingUtils graphemeClusterTokensFromTokens:v48];
      }

      v48 = [CRTextDecodingUtils filteredTokensFromTokens:v56 falsePositiveFiltering:[(CRCTCCVNLPTextDecoder *)v326 shouldUseFalsePositiveFiltering] keepWhitespaceToken:[(CRCTCCVNLPTextDecoder *)v326 _shouldUseCharacterDecodingToken]];
      v58 = selfa;
      if (selfa)
      {
        v58 = objc_getProperty(selfa, v57, 80, 1);
      }

      v59 = v58;
      v60 = [v59 activationMatrix];
      v311 = [CRTextDecodingUtils characterRangesForTokens:v48 fromActivation:v60 usingCharacterTokens:[(CRCTCCVNLPTextDecoder *)v326 _shouldUseCharacterDecodingToken]];

      if (v301)
      {
        v61 = [v311 firstObject];
        v301 = [v61 count] == 0;
      }

      else
      {
        v301 = 0;
      }

LABEL_62:

      self = v326;
    }

    else
    {
      v311 = 0;
    }

    v62 = [(CRCTCCVNLPTextDecoder *)self configuration];
    if ([v62 filterWithLM])
    {
      v63 = [v280 objectAtIndexedSubscript:0];
      v64 = [(CRCTCCVNLPTextDecoder *)self _wordLMShouldFilterCandidate:v63 inLocale:v298 lmConfig:v281];

      if (!v64)
      {
        goto LABEL_67;
      }

      v62 = v280;
      v280 = MEMORY[0x1E695E0F0];
    }

LABEL_67:
    v289 = [v298 isEqualToString:@"uk-UA"];
    v297 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
    v65 = [v282 greedyDecodingResult];
    v66 = [v65 candidates];
    v300 = [v66 firstObject];

    v343 = 0u;
    v344 = 0u;
    v341 = 0u;
    v342 = 0u;
    obj = v280;
    v67 = [obj countByEnumeratingWithState:&v341 objects:v353 count:16];
    v68 = v326;
    v69 = off_1E7BC1000;
    if (v67)
    {
      v308 = v67;
      v294 = 0;
      v293 = 0;
      v304 = *v342;
      do
      {
        for (j = 0; j != v308; ++j)
        {
          if (*v342 != v304)
          {
            objc_enumerationMutation(obj);
          }

          v70 = *(*(&v341 + 1) + 8 * j);
          v324 = [v70 tokens];
          [v70 score];
          v72 = v71;
          newValue = [v70 fullString];
          v312 = v70;
          [v70 activationScore];
          v74 = v73;
          if (![(CRCTCCVNLPTextDecoder *)v68 shouldUseLM]&& ![(CRCTCCVNLPTextDecoder *)v68 shouldUseModernizedDecoder])
          {
            v75 = [newValue length];
            if (v75)
            {
              v72 = pow(v72, 1.0 / v75);
            }

            v76 = [newValue length];
            if (v76)
            {
              v74 = pow(v74, 1.0 / v76);
            }
          }

          if ([(CRCTCCVNLPTextDecoder *)v68 shouldUseLM])
          {
            v77 = [v324 count];
            v78 = [v300 tokens];
            LODWORD(v77) = v77 == [v78 count];

            if (v77)
            {
              v79 = [v324 mutableCopy];
              v340 = newValue;
              v80 = [v300 fullString];
              v81 = [v300 tokens];
              [CRCTCCVNLPTextDecoder _adjustBeamSearchResults:&v340 tokens:v79 greedyCandidateString:v80 greedyCandidateTokens:v81 decodingLocale:v298];
              v82 = v340;

              v83 = v79;
              newValue = v82;
              v324 = v83;
            }

            v68 = v326;
            v69 = off_1E7BC1000;
          }

          v84 = v69[21];
          v85 = [MEMORY[0x1E696AD98] numberWithDouble:v72];
          v86 = [(CRCTCCVNLPTextDecoder *)v68 configuration];
          [v86 precisionThreshold];
          LODWORD(v84) = [(__objc2_class *)v84 validateProbability:v85 precisionThreshold:[(CRCTCCVNLPTextDecoder *)v68 shouldUseLM] withLM:v87];

          if (v84)
          {
            [newValue stringByTrimmingCharactersInSet:v297];
            v302 = v88 = v326;
            if ([v302 length])
            {
              if ([(CRCTCCVNLPTextDecoder *)v326 _shouldUseCharacterDecodingToken])
              {
                v89 = [CRTextDecodingUtils graphemeClusterTokensFromTokens:v324];

                v324 = v89;
                v88 = v326;
              }

              v90 = [CRTextDecodingUtils filteredTokensFromTokens:v324 falsePositiveFiltering:[(CRCTCCVNLPTextDecoder *)v88 shouldUseFalsePositiveFiltering] keepWhitespaceToken:[(CRCTCCVNLPTextDecoder *)v326 _shouldUseCharacterDecodingToken]];
              v315 = [CRTextDecodingUtils tokenSequenceStringForTokens:v90 usingCharacterTokens:[(CRCTCCVNLPTextDecoder *)v326 _shouldUseCharacterDecodingToken]];
              v91 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v90, "count")}];
              v338 = 0u;
              v339 = 0u;
              v336 = 0u;
              v337 = 0u;
              v92 = v90;
              v93 = [v92 countByEnumeratingWithState:&v336 objects:v352 count:16];
              if (v93)
              {
                v94 = 0;
                v95 = *v337;
                do
                {
                  for (k = 0; k != v93; ++k)
                  {
                    if (*v337 != v95)
                    {
                      objc_enumerationMutation(v92);
                    }

                    v97 = *(*(&v336 + 1) + 8 * k);
                    v98 = [v97 string];
                    v99 = [v98 length];

                    v100 = [MEMORY[0x1E696B098] valueWithRange:{v94, v99}];
                    [v91 addObject:v100];

                    v101 = [v97 fullString];
                    v102 = [v101 length];

                    v94 += v102;
                  }

                  v93 = [v92 countByEnumeratingWithState:&v336 objects:v352 count:16];
                }

                while (v93);
              }

              v103 = off_1E7BC1000;
              if ([(CRCTCCVNLPTextDecoder *)v326 shouldReverseActivationMatrix])
              {
                v104 = [CRTextDecodingUtils reversedTokens:v92 numTimeSteps:v287];

                v92 = v104;
              }

              if (v301 | ![(CRCTCCVNLPTextDecoder *)v326 _shouldUseCharacterDecodingToken])
              {
                v105 = [CRTextDecodingUtils tokenDelimiterRangesForTokens:v92 usingCharacterTokens:[(CRCTCCVNLPTextDecoder *)v326 _shouldUseCharacterDecodingToken]];
              }

              else
              {
                v106 = [CRTextDecodingUtils wordTokensFromCharacterTokens:v92];
                v107 = [CRTextDecodingUtils filteredTokensFromTokens:v106 falsePositiveFiltering:[(CRCTCCVNLPTextDecoder *)v326 shouldUseFalsePositiveFiltering] keepWhitespaceToken:0];
                v108 = [obj firstObject];
                v109 = v312 == v108;

                if (v109)
                {
                  v111 = selfa;
                  if (selfa)
                  {
                    v111 = objc_getProperty(selfa, v110, 80, 1);
                  }

                  v112 = v111;
                  v113 = [v112 activationMatrix];
                  v114 = [CRTextDecodingUtils characterRangesForTokens:v107 fromActivation:v113 usingCharacterTokens:0];

                  v311 = v114;
                }

                v105 = [CRTextDecodingUtils tokenDelimiterRangesForTokens:v107 usingCharacterTokens:0];
              }

              if ([v105 count])
              {
                if ([(CRCTCCVNLPTextDecoder *)v326 shouldUseFalsePositiveFiltering])
                {
                  v115 = [MEMORY[0x1E696AB08] _crUnknownScriptCharacterSet];
                  v116 = [v315 rangeOfCharacterFromSet:v115] != 0x7FFFFFFFFFFFFFFFLL;

                  v293 |= v116;
                }

                if ([CRImageReader languageIsChinese:v298])
                {
                  v117 = [MEMORY[0x1E696AB08] _crJapaneseKoreanAsUnknownScriptCharacterSet];
                  v118 = [v315 rangeOfCharacterFromSet:v117] == 0x7FFFFFFFFFFFFFFFLL;

                  if (!v118)
                  {
                    v119 = [MEMORY[0x1E696AB08] _crJapaneseKoreanAsUnknownScriptCharacterSet];
                    v120 = [v315 componentsSeparatedByCharactersInSet:v119];
                    v121 = [v120 count];

                    v74 = v74 * fmax((v121 - 1) * -0.1 + 1.0, 0.1);
                  }
                }

                if ([(CRCTCCVNLPTextDecoder *)v326 isLocaleRTL])
                {
                  v355[0] = 1;
                  v122 = [(CRCTCCVNLPTextDecoder *)v326 bidiTransform];
                  v335 = 0;
                  v123 = [v122 transformVisualToLogical:v315 visualDirectionality:2 logicalBaseDirectionality:v294 baseDirectionalityPredictionMode:1 outTokenizedLogicalOrderIndexes:0 outReorderingPermutation:&v335 outMirroredVisualString:0 outLogicalBaseDirection:v355];
                  v124 = v335;

                  if (!v294)
                  {
                    v294 = [CRBiDiTransform layoutDirectionForVisualString:v123 visualDirectionality:2 logicalBaseDirection:v355[0]];
                  }

                  v125 = [CRTextDecodingUtils getTokenPermutationByApplyingReorderingPermutation:v124 toRanges:v91];
                  v126 = [CRTextDecodingUtils invertedPermutation:v125];
                  v127 = +[CRTextDecodingUtils reversedPermutation:numTimeSteps:](CRTextDecodingUtils, "reversedPermutation:numTimeSteps:", v126, [v91 count]);

                  v315 = v123;
                  v103 = off_1E7BC1000;
                }

                else
                {
                  v127 = 0;
                }

                if (v289)
                {
                  v129 = [v315 _crReplacedUkrainianApostrophes];

                  v315 = v129;
                }

                if (!(v301 | ![(CRCTCCVNLPTextDecoder *)v326 _shouldUseCharacterDecodingToken]))
                {
                  v130 = [v315 combinedTokenSequenceString];

                  v315 = v130;
                }

                if ([CRImageReader languageSupportsFullWidthPunctuation:v298])
                {
                  v131 = [(__objc2_class *)v103[21] halfWidthToFullWidthNormalizationForTextString:v315];

                  v315 = v131;
                }

                if ([(CRCTCCVNLPTextDecoder *)v326 isLocaleRTL])
                {
                  v132 = [v315 _crStringByRemovingInvalidArabicDiacritics];

                  v133 = [CRBiDiTransform rearrangeNumericRunsInLogicalString:v132 layoutDirection:v294];

                  v315 = v133;
                }

                v134 = [CRCTCCVNLPTextDecoderCandidateIntermediateFeatureInfo alloc];
                v128 = v315;
                v135 = v105;
                v136 = v127;
                if (v134)
                {
                  *v355 = v134;
                  *&v355[8] = CRCTCCVNLPTextDecoderCandidateIntermediateFeatureInfo;
                  v137 = objc_msgSendSuper2(v355, sel_init);
                  v134 = v137;
                  if (v137)
                  {
                    v137->_prob = v72;
                    v137->_activationProb = v74;
                    objc_setProperty_atomic(v137, v138, v128, 24);
                    objc_setProperty_atomic(v134, v139, v135, 32);
                    objc_setProperty_atomic(v134, v140, v136, 40);
                  }
                }

                [v296 addObject:v134];
              }

              else
              {
                v128 = v315;
              }
            }
          }

          v68 = v326;
          v69 = off_1E7BC1000;
        }

        v308 = [obj countByEnumeratingWithState:&v341 objects:v353 count:16];
      }

      while (v308);
    }

    else
    {
      v294 = 0;
      v293 = 0;
    }

    os_unfair_lock_lock(&_MergedGlobals_40);
    v141 = v326;
    if ([(CRCTCCVNLPTextDecoder *)v326 isLocaleRTL])
    {
      if (!v294 && [v296 count])
      {
        v143 = CROSLogForCategory(0);
        if (os_log_type_enabled(v143, OS_LOG_TYPE_FAULT))
        {
          *v355 = 0;
          _os_log_impl(&dword_1B40D2000, v143, OS_LOG_TYPE_FAULT, "Unexpectedly unknown layout direction!", v355, 2u);
        }

        v141 = v326;
      }

      v144 = selfa;
      if (!selfa)
      {
        goto LABEL_145;
      }

      *(selfa + 9) = v294;
    }

    else
    {
      v144 = selfa;
      if (!selfa)
      {
        goto LABEL_145;
      }
    }

    v145 = objc_getProperty(v144, v142, 64, 1);
    if (v145)
    {
      v147 = v145;
      v148 = objc_getProperty(selfa, v146, 64, 1);
      [v148 activationProbability];
      v150 = v149;
      v151 = [v296 firstObject];
      v152 = v151 ? v151[2] : 0.0;
      v153 = v150 < v152;

      v141 = v326;
      if (!v153)
      {
        v167 = objc_opt_new();

        newValuea = 0;
        v296 = v167;
        v141 = v326;
        goto LABEL_155;
      }
    }

LABEL_145:
    if ([v296 count])
    {
      v154 = [CRMutableRecognizedTextRegion alloc];
      v155 = [selfa lineRegion];
      newValuea = [(CRRecognizedTextRegion *)v154 initWithType:2 detectedLineRegion:v155];

      v156 = [v296 firstObject];
      v158 = v156;
      if (v156)
      {
        v159 = objc_getProperty(v156, v157, 24, 1);
      }

      else
      {
        v159 = 0;
      }

      v160 = v159;
      [(CRRecognizedTextRegion *)newValuea setText:v160];

      v161 = [v296 firstObject];
      v162 = v161;
      if (v161)
      {
        v163 = *(v161 + 16);
      }

      else
      {
        v163 = 0.0;
      }

      [(CRRecognizedTextRegion *)newValuea setActivationProbability:v163];

      v164 = [v296 firstObject];
      v165 = v164;
      if (v164)
      {
        v166 = *(v164 + 8);
      }

      else
      {
        v166 = 0.0;
      }

      [(CRRecognizedTextRegion *)newValuea setConfidence:v166];

      [(CRRecognizedTextRegion *)newValuea setLocale:v298];
      v141 = v326;
    }

    else
    {
      newValuea = 0;
    }

LABEL_155:
    v288 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v296, "count")}];
    v168 = [(CRCTCCVNLPTextDecoder *)v141 model];
    [v168 wordBoxesOffsets];
    if (v301)
    {
      v171 = v170;
    }

    else
    {
      v171 = v169;
    }

    v172 = 0;
    v286 = v171;
    while (v172 < [v296 count])
    {
      v173 = [v296 objectAtIndexedSubscript:v172];
      v175 = v173;
      if (v173)
      {
        v176 = objc_getProperty(v173, v174, 24, 1);
      }

      else
      {
        v176 = 0;
      }

      v325 = v176;
      v177 = [(CRRecognizedTextRegion *)newValuea boundingQuad];
      [v177 baselineAngle];
      v319 = v178;

      if (v175)
      {
        v180 = objc_getProperty(v175, v179, 32, 1);
      }

      else
      {
        v180 = 0;
      }

      v181 = v180;
      v333 = 0;
      v334 = 0;
      if (selfa)
      {
        v182 = *(selfa + 2);
      }

      else
      {
        v182 = 0;
      }

      v316 = v182;
      v313 = [(CRFeatureSequenceRecognitionInfo *)selfa featureImageSize];
      v309 = v183;
      v305 = [(CRFeatureSequenceRecognitionInfo *)selfa bounds];
      v185 = v184;
      v187 = v186;
      v189 = v188;
      v190 = [(CRFeatureSequenceRecognitionInfo *)selfa rotatedROI];
      v192 = v191;
      v194 = v193;
      v196 = v195;
      v197 = [(CRCTCCVNLPTextDecoder *)v326 model];
      v198 = [(CRCTCCVNLPTextDecoder *)v326 configuration];
      v199 = [(CRCTCCVNLPTextDecoder *)v326 model];
      [v199 wordBoxesOffsets];
      v201 = v200;
      v202 = [(CRCTCCVNLPTextDecoder *)v326 model];
      [v202 wordBoxesOffsets];
      v203 = v319;
      v303 = -v203;
      *&v275 = -v203;
      LODWORD(v204) = v316;
      [CRTextDecodingUtils getWordBoundariesForWhiteSpaceRanges:v181 topPoints:&v334 bottomPoints:&v333 imageSize:v197 scale:v198 featureImageSize:a8.width rect:a8.height rotatedRoi:v204 radians:v313 model:v309 configuration:*&v305 paddingLeft:v185 paddingRight:v187 rangeOffset:v189, *&v190, v192, v194, v196, v275, v201, v205, *&v286];
      v306 = v334;
      v310 = v333;

      if (v175)
      {
        v207 = objc_getProperty(v175, v206, 40, 1);
      }

      else
      {
        v207 = 0;
      }

      v208 = v207;
      v209 = [(CRRecognizedTextRegion *)newValuea createSubregionsForString:v325 topWhiteSpacePoints:v306 bottomWhiteSpacePoints:v310 hasBoundarySpacePoints:1 hasCharacterAndWordBoundaries:v301 tokenPermutation:v208];

      if (v175)
      {
        v211 = objc_getProperty(v175, v210, 40, 1);
      }

      else
      {
        v211 = 0;
      }

      v212 = v211;
      v213 = v212 == 0;

      if (!v213)
      {
        if (v175)
        {
          v215 = objc_getProperty(v175, v214, 40, 1);
        }

        else
        {
          v215 = 0;
        }

        v216 = v215;
        v320 = [CRTextDecodingUtils invertedPermutation:v216];

        v217 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v209, "count")}];
        v331 = 0u;
        v332 = 0u;
        v329 = 0u;
        v330 = 0u;
        v218 = v320;
        v219 = [v218 countByEnumeratingWithState:&v329 objects:v351 count:16];
        if (v219)
        {
          v220 = *v330;
          while (2)
          {
            for (m = 0; m != v219; ++m)
            {
              if (*v330 != v220)
              {
                objc_enumerationMutation(v218);
              }

              v222 = *(*(&v329 + 1) + 8 * m);
              v223 = [v222 unsignedIntegerValue];
              if (v223 >= [v209 count])
              {
                v225 = CROSLogForCategory(3);
                if (os_log_type_enabled(v225, OS_LOG_TYPE_ERROR))
                {
                  v226 = [v222 unsignedIntegerValue];
                  v227 = [v209 count];
                  *v355 = 134218498;
                  *&v355[4] = v226;
                  *&v355[12] = 2048;
                  *&v355[14] = v227;
                  *&v355[22] = 2112;
                  v356 = v218;
                  _os_log_impl(&dword_1B40D2000, v225, OS_LOG_TYPE_ERROR, "Invalid permutation index when reordering subregions. Index %ld must be less than number of subregions %ld. Permutation: %@", v355, 0x20u);
                }

                goto LABEL_185;
              }

              v224 = [v209 objectAtIndexedSubscript:{objc_msgSend(v222, "unsignedIntegerValue")}];
              [v217 addObject:v224];
            }

            v219 = [v218 countByEnumeratingWithState:&v329 objects:v351 count:16];
            if (v219)
            {
              continue;
            }

            break;
          }
        }

LABEL_185:

        v228 = [v217 copy];
        v209 = v228;
      }

      if (!v285 || v301)
      {
        v229 = v209;
      }

      else
      {
        v230 = [MEMORY[0x1E695DF70] array];
        v231 = [(CRCTCCVNLPTextDecoder *)v326 model];
        [v231 characterBoxesOffsets];
        v295 = v232;

        v233 = [(CRCTCCVNLPTextDecoder *)v326 model];
        [v233 characterBoxesOffsets];
        v291 = v234;

        v235 = [(CRCTCCVNLPTextDecoder *)v326 model];
        [v235 characterBoxesOffsets];
        v290 = v236;

        for (n = 0; n < [v209 count]; ++n)
        {
          if (v172 || ![v311 count] || n >= objc_msgSend(v311, "count"))
          {
            v238 = [v209 objectAtIndexedSubscript:n];
            v239 = [v238 createCharacterSubFeaturesTopWhiteSpacePoints:0 bottomWhiteSpacePoints:0 falsePositiveFiltering:{-[CRCTCCVNLPTextDecoder shouldUseFalsePositiveFiltering](v326, "shouldUseFalsePositiveFiltering")}];

            [v230 addObjectsFromArray:v239];
          }

          else
          {
            v240 = [v311 objectAtIndexedSubscript:n];
            v327 = 0;
            v328 = 0;
            if (selfa)
            {
              v241 = *(selfa + 2);
            }

            else
            {
              v241 = 0;
            }

            v321 = v241;
            v242 = [(CRFeatureSequenceRecognitionInfo *)selfa featureImageSize];
            v314 = v243;
            v317 = v242;
            v244 = [(CRFeatureSequenceRecognitionInfo *)selfa bounds];
            v246 = v245;
            v248 = v247;
            v250 = v249;
            v251 = [(CRFeatureSequenceRecognitionInfo *)selfa rotatedROI];
            v253 = v252;
            v255 = v254;
            v257 = v256;
            v258 = [(CRCTCCVNLPTextDecoder *)v326 model];
            v259 = [(CRCTCCVNLPTextDecoder *)v326 configuration];
            *&v275 = v303;
            LODWORD(v260) = v321;
            [CRTextDecodingUtils getCharacterBoundariesForActivationRanges:v240 topPoints:&v328 bottomPoints:&v327 imageSize:v258 scale:v259 featureImageSize:a8.width rect:a8.height rotatedRoi:v260 radians:v317 model:v314 configuration:*&v244 paddingLeft:v246 paddingRight:v248 rangeOffset:v250, *&v251, v253, v255, v257, v275, v295, v291, v290];
            v239 = v328;
            v261 = v327;

            v262 = [v209 objectAtIndexedSubscript:n];
            v263 = [v262 createCharacterSubFeaturesTopWhiteSpacePoints:v239 bottomWhiteSpacePoints:v261 falsePositiveFiltering:{-[CRCTCCVNLPTextDecoder shouldUseFalsePositiveFiltering](v326, "shouldUseFalsePositiveFiltering")}];

            [v230 addObjectsFromArray:v263];
          }
        }

        v229 = v230;
      }

      if (v301)
      {
        v264 = [v325 combinedTokenSequenceString];

        v325 = v264;
      }

      v265 = [(CRMutableRecognizedTextRegion *)newValuea mutableCopy];
      [v265 setText:v325];
      [v265 setSubregions:v229];
      if (v175)
      {
        v266 = v175[1];
      }

      else
      {
        v266 = 0.0;
      }

      [v265 setConfidence:v266];
      if (v175)
      {
        v267 = v175[2];
      }

      else
      {
        v267 = 0.0;
      }

      [v265 setActivationProbability:v267];
      [v265 setWhitespaceInjected:{v301 | objc_msgSend(v265, "whitespaceInjected")}];
      if (selfa && *(selfa + 9))
      {
        [v265 setLayoutDirection:?];
      }

      if (v293)
      {
        if (!v285 || (v268 = [v311 count], v269 = @" ", !v268))
        {
          v269 = &stru_1F2BB4348;
        }

        [v265 removeUnknownScriptMarkersFromTranscripts:v269];
      }

      if (!v172)
      {
        v270 = [v265 subregions];
        [(CRRecognizedTextRegion *)newValuea setSubregions:v270];

        v271 = [v265 text];
        [(CRRecognizedTextRegion *)newValuea setText:v271];

        -[CRRecognizedTextRegion setWhitespaceInjected:](newValuea, "setWhitespaceInjected:", [v265 whitespaceInjected]);
        if (selfa)
        {
          if (*(selfa + 9))
          {
            [(CRRecognizedTextRegion *)newValuea setLayoutDirection:?];
          }
        }
      }

      [v288 addObject:v265];

      ++v172;
    }

    [(CRRecognizedTextRegion *)newValuea setCandidates:v288];
    if (selfa)
    {
      objc_setProperty_atomic(selfa, v272, newValuea, 64);
    }

    os_unfair_lock_unlock(&_MergedGlobals_40);

    v47 = obj;
    goto LABEL_230;
  }

LABEL_231:

  objc_autoreleasePoolPop(context);
  if (v284 && a11 && v283)
  {
    v273 = v283;
    *a11 = v283;
  }

  return v284 != 0;
}

- (void)releaseUnusedResources
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [(CRCTCCVNLPTextDecoder *)self subscribedLocales];
  objc_sync_enter(v3);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_subscribedLocales;
  v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        if (self->_shouldUseLM)
        {
          v9 = +[CRLanguageResourcesManager sharedManager];
          [v9 subscriber:self willDeactivateForLocale:v8];
        }

        if ([(CRNeuralRecognizerConfiguration *)self->_configuration filterWithLM])
        {
          v10 = +[CRLanguageResourcesManager postProcessManager];
          [v10 subscriber:self willDeactivateForLocale:v8];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  objc_sync_exit(v3);
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

@end