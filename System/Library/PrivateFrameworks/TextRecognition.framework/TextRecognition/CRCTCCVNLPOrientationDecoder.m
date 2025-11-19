@interface CRCTCCVNLPOrientationDecoder
- (BOOL)_decodeFeaturesWithInfo:(id)a3 decoderCallback:(id)a4 shouldDecodeScriptResult:(BOOL)a5 shouldDecodeOrientationResult:(BOOL)a6 shouldDecodeLayoutDirectionResult:(BOOL)a7;
- (BOOL)decodeOutput:(id)a3 imageSize:(CGSize)a4 shouldDecodeScriptResult:(BOOL)a5 shouldDecodeOrientationResult:(BOOL)a6 shouldDecodeLayoutDirectionResult:(BOOL)a7 error:(id *)a8;
- (BOOL)shouldUseModernizedDecoder;
- (CRCTCCVNLPOrientationDecoder)initWithConfiguration:(id)a3 model:(id)a4 error:(id *)a5;
- (id).cxx_construct;
- (id)_buildActivationMatrices:(id)a3;
- (vector<CoreRecognition::decoder::ActivationMatrix,)_buildModernizedActivationMatrices:(CRCTCCVNLPOrientationDecoder *)self;
- (void)_create2DArraysFromInputArray:(id)a3 classSize:(unint64_t *)a4 outputArrays:(void *)a5;
@end

@implementation CRCTCCVNLPOrientationDecoder

- (CRCTCCVNLPOrientationDecoder)initWithConfiguration:(id)a3 model:(id)a4 error:(id *)a5
{
  v43 = *MEMORY[0x1E69E9840];
  v34 = a3;
  v35 = a4;
  v41.receiver = self;
  v41.super_class = CRCTCCVNLPOrientationDecoder;
  v8 = [(CRCTCCVNLPOrientationDecoder *)&v41 init];
  v9 = v8;
  if (!v8)
  {
LABEL_26:
    v32 = v9;
    goto LABEL_27;
  }

  objc_storeStrong(&v8->_model, a4);
  v10 = [(CRTextSequenceRecognizerModel *)v9->_model codemapArray];
  if (v10)
  {
    v11 = unicodeArrayToNSStringArray(v10, [(CRTextSequenceRecognizerModel *)v9->_model codemapSize]);
    v12 = [MEMORY[0x1E695DFB8] orderedSetWithArray:v11];
    characterObservations = v9->_characterObservations;
    v9->_characterObservations = v12;

    if ([(CRCTCCVNLPOrientationDecoder *)v9 shouldUseModernizedDecoder])
    {
      p_begin = &v9->_spaceLabels.__begin_;
      v9->_spaceLabels.__end_ = v9->_spaceLabels.__begin_;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v15 = [&unk_1F2BFB1E8 countByEnumeratingWithState:&v37 objects:v42 count:16];
      if (v15)
      {
        v16 = *v38;
        v36 = v11;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v38 != v16)
            {
              objc_enumerationMutation(&unk_1F2BFB1E8);
            }

            v18 = *(*(&v37 + 1) + 8 * i);
            v19 = [(CRCTCCVNLPOrientationDecoder *)v9 characterObservations];
            v20 = [v19 indexOfObject:v18];

            if (v20 != 0x7FFFFFFFFFFFFFFFLL)
            {
              end = v9->_spaceLabels.__end_;
              cap = v9->_spaceLabels.__cap_;
              if (end >= cap)
              {
                v24 = *p_begin;
                v25 = end - *p_begin;
                v26 = v25 >> 3;
                v27 = (v25 >> 3) + 1;
                if (v27 >> 61)
                {
                  std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
                }

                v28 = cap - v24;
                if (v28 >> 2 > v27)
                {
                  v27 = v28 >> 2;
                }

                v29 = v28 >= 0x7FFFFFFFFFFFFFF8;
                v30 = 0x1FFFFFFFFFFFFFFFLL;
                if (!v29)
                {
                  v30 = v27;
                }

                if (v30)
                {
                  std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(&v9->_spaceLabels, v30);
                }

                *(8 * v26) = v20;
                v23 = 8 * v26 + 8;
                memcpy(0, v24, v25);
                begin = v9->_spaceLabels.__begin_;
                v9->_spaceLabels.__begin_ = 0;
                v9->_spaceLabels.__end_ = v23;
                v9->_spaceLabels.__cap_ = 0;
                if (begin)
                {
                  operator delete(begin);
                }

                v11 = v36;
              }

              else
              {
                *end = v20;
                v23 = (end + 1);
              }

              v9->_spaceLabels.__end_ = v23;
            }
          }

          v15 = [&unk_1F2BFB1E8 countByEnumeratingWithState:&v37 objects:v42 count:16];
        }

        while (v15);
      }
    }

    goto LABEL_26;
  }

  if (a5)
  {
    [CRImageReader errorWithErrorCode:-8];
    *a5 = v32 = 0;
  }

  else
  {
    v32 = 0;
  }

LABEL_27:

  return v32;
}

- (BOOL)shouldUseModernizedDecoder
{
  v2 = [(CRCTCCVNLPOrientationDecoder *)self model];
  v3 = [v2 outputFormatVersion];
  v4 = [v3 intValue] == 2;

  return v4;
}

- (BOOL)decodeOutput:(id)a3 imageSize:(CGSize)a4 shouldDecodeScriptResult:(BOOL)a5 shouldDecodeOrientationResult:(BOOL)a6 shouldDecodeLayoutDirectionResult:(BOOL)a7 error:(id *)a8
{
  v8 = a7;
  v9 = a6;
  v10 = a5;
  v12 = a3;
  if ([(CRCTCCVNLPOrientationDecoder *)self shouldUseModernizedDecoder])
  {
    v13 = [(CRCTCCVNLPOrientationDecoder *)self model];
    v14 = [v13 ctcBlankLabelIndex];

    LOBYTE(v46) = 0;
    v45 = &unk_1F2BAF938;
    v47 = 0;
    v48 = 0;
    v49 = 0;
    std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(&v47, self->_spaceLabels.__begin_, self->_spaceLabels.__end_, self->_spaceLabels.__end_ - self->_spaceLabels.__begin_);
    v50 = 0;
    v51 = &unk_1F2BAFBC0;
    v52 = v14;
    v54 = 0;
    v53 = &unk_1F2BAF938;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(&v55, v47, v48, (v48 - v47) >> 3);
    v58 = v50;
    v45 = &unk_1F2BAF938;
    if (v47)
    {
      v48 = v47;
      operator delete(v47);
    }

    [(CRCTCCVNLPOrientationDecoder *)self _buildModernizedActivationMatrices:v12];
    v43 = 0;
    v44 = 0uLL;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3321888768;
    aBlock[2] = __150__CRCTCCVNLPOrientationDecoder_decodeOutput_imageSize_shouldDecodeScriptResult_shouldDecodeOrientationResult_shouldDecodeLayoutDirectionResult_error___block_invoke;
    aBlock[3] = &unk_1F2BB3760;
    v32 = &unk_1F2BAFBC0;
    v33 = v52;
    v35 = v54;
    v34 = &unk_1F2BAF938;
    __p = 0;
    v37 = 0;
    v38 = 0;
    std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(&__p, v55, v56, (v56 - v55) >> 3);
    v39 = v58;
    memset(v40, 0, sizeof(v40));
    std::vector<CoreRecognition::decoder::ActivationMatrix>::__init_with_size[abi:ne200100]<CoreRecognition::decoder::ActivationMatrix*,CoreRecognition::decoder::ActivationMatrix*>(v40, v45, v46, 0xCCCCCCCCCCCCCCCDLL * ((v46 - v45) >> 4));
    v42 = v44;
    cf = 0;
    aBlock[4] = self;
    v15 = _Block_copy(aBlock);
    if (cf)
    {
      CFRelease(cf);
    }

    v59 = v40;
    std::vector<CoreRecognition::decoder::ActivationMatrix>::__destroy_vector::operator()[abi:ne200100](&v59);
    v32 = &unk_1F2BAFBC0;
    v34 = &unk_1F2BAF938;
    if (__p)
    {
      v37 = __p;
      operator delete(__p);
    }

    v43 = &v45;
    std::vector<CoreRecognition::decoder::ActivationMatrix>::__destroy_vector::operator()[abi:ne200100](&v43);
    v51 = &unk_1F2BAFBC0;
    v53 = &unk_1F2BAF938;
    v16 = v9;
    v10 = v10;
    if (v55)
    {
      v56 = v55;
      operator delete(v55);
    }
  }

  else
  {
    v17 = [MEMORY[0x1E6992000] defaultWhitespaceCommitActionBehavior];
    v18 = [objc_alloc(MEMORY[0x1E6992000]) initWithCommitActionBehavior:v17];
    v19 = [objc_alloc(MEMORY[0x1E6991FD0]) initWithLanguageResourceBundle:0];
    v20 = [(CRCTCCVNLPOrientationDecoder *)self _buildActivationMatrices:v12];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __150__CRCTCCVNLPOrientationDecoder_decodeOutput_imageSize_shouldDecodeScriptResult_shouldDecodeOrientationResult_shouldDecodeLayoutDirectionResult_error___block_invoke_9;
    v27[3] = &unk_1E7BC35D8;
    v28 = v19;
    v29 = v20;
    v30 = v18;
    v21 = v18;
    v22 = v20;
    v23 = v19;
    v15 = _Block_copy(v27);

    v16 = v9;
  }

  v24 = [v12 textFeatureInfo];
  v25 = [(CRCTCCVNLPOrientationDecoder *)self _decodeFeaturesWithInfo:v24 decoderCallback:v15 shouldDecodeScriptResult:v10 shouldDecodeOrientationResult:v16 shouldDecodeLayoutDirectionResult:v8];

  return v25;
}

id __150__CRCTCCVNLPOrientationDecoder_decodeOutput_imageSize_shouldDecodeScriptResult_shouldDecodeOrientationResult_shouldDecodeLayoutDirectionResult_error___block_invoke(uint64_t a1, uint64_t a2)
{
  CoreRecognition::decoder::CTCGreedyDecoder<CoreRecognition::decoder::SpaceSegmentedPathBuilder<CoreRecognition::decoder::BaseState>>::decode(a1 + 40, (*(a1 + 104) + 80 * a2), v4);
  v2 = convertToCVNLPTextDecodingResult();
  v5 = v4;
  std::vector<CoreRecognition::decoder::DecodingPath>::__destroy_vector::operator()[abi:ne200100](&v5);

  return v2;
}

id __150__CRCTCCVNLPOrientationDecoder_decodeOutput_imageSize_shouldDecodeScriptResult_shouldDecodeOrientationResult_shouldDecodeLayoutDirectionResult_error___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) characterObservations];
  v4 = [v3 objectAtIndexedSubscript:a2];

  return v4;
}

uint64_t __150__CRCTCCVNLPOrientationDecoder_decodeOutput_imageSize_shouldDecodeScriptResult_shouldDecodeOrientationResult_shouldDecodeLayoutDirectionResult_error___block_invoke_9(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 40) objectAtIndexedSubscript:a2];
  [*(a1 + 32) setActivationMatrix:v3];

  v4 = *(a1 + 32);
  v5 = *(a1 + 48);

  return [v4 greedyDecodingResultWithConfiguration:v5];
}

- (id)_buildActivationMatrices:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E695DF70];
  v6 = [v4 textFeatureInfo];
  v27 = [v5 arrayWithCapacity:{objc_msgSend(v6, "count")}];

  v7 = [(CRCTCCVNLPOrientationDecoder *)self model];
  v8 = [v7 codemapSize];

  v34 = 0;
  v35 = v8;
  v32 = 0;
  v33 = 0;
  [(CRCTCCVNLPOrientationDecoder *)self _create2DArraysFromInputArray:v4 classSize:&v35 outputArrays:&v32];
  v9 = [(CRCTCCVNLPOrientationDecoder *)self model];
  v10 = [v9 ctcBlankLabelIndex];

  v11 = v32;
  if (v33 != v32)
  {
    v12 = 0;
    v13 = 0;
    do
    {
      v14 = objc_alloc(MEMORY[0x1E6991FC8]);
      v15 = *&v11[v12];
      v16 = *&v11[v12 + 32];
      v30[1] = *&v11[v12 + 16];
      v30[2] = v16;
      v30[0] = v15;
      v17 = *&v11[v12 + 48];
      v18 = *&v11[v12 + 64];
      v19 = *&v11[v12 + 96];
      v30[5] = *&v11[v12 + 80];
      v30[6] = v19;
      v30[3] = v17;
      v30[4] = v18;
      v20 = *&v11[v12 + 112];
      v21 = *&v11[v12 + 128];
      v22 = *&v11[v12 + 144];
      v31 = *&v11[v12 + 160];
      v30[8] = v21;
      v30[9] = v22;
      v30[7] = v20;
      v23 = [(CRCTCCVNLPOrientationDecoder *)self characterObservations];
      v28 = xmmword_1B42AFDE8;
      v29 = 10;
      v24 = [v14 initWithBuffer:v30 domainType:0 characterObservations:v23 blankIndex:v10 pruningPolicy:&v28];

      [v27 addObject:v24];
      ++v13;
      v11 = v32;
      v12 += 168;
    }

    while (v13 < 0xCF3CF3CF3CF3CF3DLL * ((v33 - v32) >> 3));
  }

  v25 = [MEMORY[0x1E695DEC8] arrayWithArray:v27];
  if (v32)
  {
    v33 = v32;
    operator delete(v32);
  }

  return v25;
}

- (vector<CoreRecognition::decoder::ActivationMatrix,)_buildModernizedActivationMatrices:(CRCTCCVNLPOrientationDecoder *)self
{
  v6 = a4;
  retstr->var1 = 0;
  retstr->var2 = 0;
  retstr->var0 = 0;
  v7 = [v6 textFeatureInfo];
  v8 = [v7 count];
  if (0xCCCCCCCCCCCCCCCDLL * ((retstr->var2 - retstr->var0) >> 4) < v8)
  {
    if (v8 <= 0x333333333333333)
    {
      v35 = retstr;
      std::__allocate_at_least[abi:ne200100]<std::allocator<CoreRecognition::decoder::ActivationMatrix>>(v8);
    }

    std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
  }

  v9 = [(CRCTCCVNLPOrientationDecoder *)self model];
  v10 = [v9 codemapSize];

  v32 = 0;
  v33 = v10;
  v30 = 0;
  v31 = 0;
  [(CRCTCCVNLPOrientationDecoder *)self _create2DArraysFromInputArray:v6 classSize:&v33 outputArrays:&v30];
  v11 = v30;
  v12 = v31;
  if (v31 != v30)
  {
    v13 = 0;
    v14 = 0;
    var1 = retstr->var1;
    do
    {
      v16 = *&v11[v13 + 96];
      v17 = *&v11[v13 + 112];
      v18 = *&v11[v13];
      var2 = retstr->var2;
      if (var1 >= var2)
      {
        var0 = retstr->var0;
        v21 = var1 - retstr->var0;
        v22 = 0xCCCCCCCCCCCCCCCDLL * (v21 >> 4) + 1;
        if (v22 > 0x333333333333333)
        {
          std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
        }

        v23 = 0xCCCCCCCCCCCCCCCDLL * ((var2 - var0) >> 4);
        if (2 * v23 > v22)
        {
          v22 = 2 * v23;
        }

        if (v23 >= 0x199999999999999)
        {
          v22 = 0x333333333333333;
        }

        v35 = retstr;
        if (v22)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<CoreRecognition::decoder::ActivationMatrix>>(v22);
        }

        v24 = 16 * (v21 >> 4);
        *v24 = v17;
        *(v24 + 8) = v16;
        *(v24 + 16) = 0u;
        *(v24 + 32) = 0u;
        *(v24 + 48) = 0u;
        *(v24 + 64) = v18;
        *(v24 + 72) = 0;
        v25 = (v24 + 80);
        v26 = (v24 - v21);
        std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<CoreRecognition::decoder::ActivationMatrix>,CoreRecognition::decoder::ActivationMatrix*>(var0, var1, v24 - v21);
        v27 = retstr->var0;
        retstr->var0 = v26;
        retstr->var1 = v25;
        v28 = retstr->var2;
        retstr->var2 = 0;
        v34[2] = v27;
        v34[3] = v28;
        v34[0] = v27;
        v34[1] = v27;
        std::__split_buffer<CoreRecognition::decoder::ActivationMatrix>::~__split_buffer(v34);
        v11 = v30;
        v12 = v31;
        var1 = v25;
      }

      else
      {
        *var1 = v17;
        *(var1 + 1) = v16;
        *(var1 + 1) = 0u;
        *(var1 + 2) = 0u;
        *(var1 + 3) = 0u;
        *(var1 + 8) = v18;
        *(var1 + 9) = 0;
        var1 = (var1 + 80);
      }

      retstr->var1 = var1;
      ++v14;
      v13 += 168;
    }

    while (v14 < 0xCF3CF3CF3CF3CF3DLL * ((v12 - v11) >> 3));
  }

  if (v11)
  {
    v31 = v11;
    operator delete(v11);
  }

  return result;
}

- (void)_create2DArraysFromInputArray:(id)a3 classSize:(unint64_t *)a4 outputArrays:(void *)a5
{
  v7 = a3;
  v51 = v7;
  if (v7)
  {
    [v7 output_label_prob_map];
    v52 = v78;
    v8 = v83;
    v64 = v82;
    v65 = v80;
    v63 = v84;
    v57 = v85;
    v58 = v86;
    v56 = v87;
    v60 = v81;
    v61 = v88;
    v54 = *(&v78 + 1);
    v55 = v89;
    v53 = v90;
  }

  else
  {
    v53 = 0;
    v55 = 0;
    v56 = 0;
    v60 = 0;
    v61 = 0;
    v57 = 0;
    v58 = 0;
    v63 = 0;
    v64 = 0;
    v8 = 0;
    v65 = 0;
    v54 = 0;
    v52 = 0;
  }

  v71 = [v51 textFeatureInfo];
  v9 = [(CRCTCCVNLPOrientationDecoder *)self model];
  v10 = [v9 outputFormatVersion];
  v11 = [v10 intValue] == 1;

  v62 = v61;
  if ((v11 & 1) == 0)
  {
    v12 = [(CRCTCCVNLPOrientationDecoder *)self model];
    v10 = [v12 outputFormatVersion];
    v11 = [v10 intValue] == 2;

    if (v11)
    {
      v13 = v60;
    }

    else
    {
      v13 = 1;
    }

    v14 = v58;
    if (!v11)
    {
      v14 = 1;
    }

    v62 = v14;
    v63 = v13;
  }

  std::vector<espresso_buffer_t>::resize(a5, [v71 count]);
  if ([(CRCTCCVNLPOrientationDecoder *)self shouldUseModernizedDecoder])
  {
    v15 = v64 * v8 * v60 * v65;
    if (v15)
    {
      v8 = 4 * v15;
      v11 = v52;
      do
      {
        v16 = *v11;
        v17 = logf(*v11);
        if (v16 <= 0.0)
        {
          v17 = -INFINITY;
        }

        *v11 = v17;
        v11 += 4;
        v8 -= 4;
      }

      while (v8);
    }
  }

  v73 = 0;
  v74 = 0;
  v72 = 160;
  while (v74 < [v71 count])
  {
    v18 = [v71 objectAtIndexedSubscript:?];
    v19 = [(CRFeatureSequenceRecognitionInfo *)v18 featureImageSize];
    if (v18)
    {
      v20 = v18[2];
    }

    else
    {
      v20 = 0.0;
    }

    v21 = [(CRCTCCVNLPOrientationDecoder *)self model];
    v22 = [v21 outputWidthDownscale];
    [v22 floatValue];
    v24 = v23;
    v25 = [(CRCTCCVNLPOrientationDecoder *)self model];
    v26 = [v25 outputWidthOffset];
    [v26 floatValue];
    v28 = v27;

    v29 = ceil(v19 * v20 / v24) + v28 + 2.0;
    if (v63 >= v29)
    {
      v30 = v29;
    }

    else
    {
      v30 = v63;
    }

    v31 = [(CRCTCCVNLPOrientationDecoder *)self model];
    v32 = [v31 outputFormatVersion];
    v33 = [v32 intValue] == 1;

    v34 = v73;
    v36 = v64;
    v35 = v65;
    v37 = v60;
    v38 = v61;
    v39 = v57;
    v40 = v58;
    v41 = v55;
    v42 = v56;
    if (!v33)
    {
      v43 = [(CRCTCCVNLPOrientationDecoder *)self model:v61];
      v44 = [v43 outputFormatVersion];
      v45 = [v44 intValue] == 2;

      v37 = v68;
      v35 = v69;
      v46 = v66;
      v36 = v67;
      v47 = v10;
      v48 = v70;
      v49 = v8;
      v42 = v6;
      v38 = v5;
      v41 = v11;
      if (!v45)
      {
        goto LABEL_28;
      }

      v38 = v63 * v65;
      v34 = v62 * v63 * v74;
      v37 = v64;
      v41 = v65;
      v35 = v64;
      v36 = v65;
      v39 = 1;
      v40 = 1;
      v42 = 1;
    }

    v78 = 0u;
    v79 = 0u;
    v46 = v30;
    v47 = v39;
    v49 = v40;
    v76 = 0u;
    v77 = 0u;
    v48 = &v52[v34];
LABEL_28:
    v50 = (*a5 + v72);
    v69 = v35;
    v70 = v48;
    *(v50 - 20) = v48;
    *(v50 - 19) = v54;
    *(v50 - 9) = v78;
    *(v50 - 8) = v79;
    *(v50 - 7) = v76;
    *(v50 - 6) = v77;
    *(v50 - 10) = v35;
    *(v50 - 9) = v37;
    v67 = v36;
    v68 = v37;
    *(v50 - 8) = v36;
    *(v50 - 7) = 1;
    v66 = v46;
    *(v50 - 6) = v46;
    *(v50 - 5) = v47;
    v10 = v47;
    v8 = v49;
    *(v50 - 4) = v49;
    *(v50 - 3) = v42;
    v6 = v42;
    v5 = v38;
    *(v50 - 2) = v38;
    *(v50 - 1) = v41;
    v11 = v41;
    *v50 = v53;

    v73 += v62;
    ++v74;
    v72 += 168;
  }
}

- (BOOL)_decodeFeaturesWithInfo:(id)a3 decoderCallback:(id)a4 shouldDecodeScriptResult:(BOOL)a5 shouldDecodeOrientationResult:(BOOL)a6 shouldDecodeLayoutDirectionResult:(BOOL)a7
{
  v106 = a5;
  v107 = a7;
  v109 = a6;
  v154 = *MEMORY[0x1E69E9840];
  v112 = a3;
  v111 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __161__CRCTCCVNLPOrientationDecoder__decodeFeaturesWithInfo_decoderCallback_shouldDecodeScriptResult_shouldDecodeOrientationResult_shouldDecodeLayoutDirectionResult___block_invoke;
  block[3] = &unk_1E7BC25C0;
  v108 = self;
  block[4] = self;
  if (qword_1ED9602B8 != -1)
  {
    dispatch_once(&qword_1ED9602B8, block);
  }

  v118 = 0;
  v110 = 0;
LABEL_4:
  v115 = [v112 count];
  if (v118 < v115)
  {
    context = objc_autoreleasePoolPush();
    v9 = v111[2](v111, v118);
    v114 = v9;
    if (!v9)
    {
      v14 = 1;
      goto LABEL_108;
    }

    selfa = [v112 objectAtIndexedSubscript:v118];
    v10 = [v9 candidates];
    v116 = [v10 firstObject];

    v11 = [v116 fullString];
    v12 = selfa;
    newValue = v11;
    if (!v109)
    {
LABEL_26:
      if (v107)
      {
        v146 = 0;
        v147 = &v146;
        v148 = 0x2020000000;
        v149 = 0;
        v142 = 0;
        v143 = &v142;
        v144 = 0x2020000000;
        v145 = 0;
        v29 = [v11 length];
        v140[0] = MEMORY[0x1E69E9820];
        v140[1] = 3221225472;
        v140[2] = __161__CRCTCCVNLPOrientationDecoder__decodeFeaturesWithInfo_decoderCallback_shouldDecodeScriptResult_shouldDecodeOrientationResult_shouldDecodeLayoutDirectionResult___block_invoke_3;
        v140[3] = &unk_1E7BC2E58;
        v140[4] = &v146;
        v140[5] = &v142;
        [v11 enumerateSubstringsInRange:0 options:v29 usingBlock:{2, v140}];
        if (v12)
        {
          v30 = v143[3];
          v31 = v30 <= v147[3] || v30 <= 1;
          v32 = 5;
          if (v31)
          {
            v32 = 1;
          }

          *(v12 + 9) = v32;
        }

        _Block_object_dispose(&v142, 8);
        _Block_object_dispose(&v146, 8);
      }

      if (!v106 || (-[CRTextSequenceRecognizerModel configuration](v108->_model, "configuration"), v33 = objc_claimAutoreleasedReturnValue(), v34 = [v33 scriptDetectionDisabled], v33, (v34 & 1) != 0))
      {
        v14 = 0;
        goto LABEL_107;
      }

      if (qword_1ED9602C8)
      {
        v35 = [qword_1ED9602C8 stringByReplacingMatchesInString:newValue options:0 range:0 withTemplate:{objc_msgSend(newValue, "length"), &stru_1F2BB4348}];
        if (![v35 length])
        {
          v36 = [newValue uppercaseString];

          v35 = v36;
        }
      }

      else
      {
        v35 = [newValue uppercaseString];
      }

      for (i = 0; i != 7; ++i)
      {
        v38 = [qword_1ED9602B0 objectAtIndexedSubscript:i];
        v39 = [qword_1ED9602A8 objectAtIndexedSubscript:i];
        v40 = [v35 stringByReplacingOccurrencesOfString:v38 withString:v39];

        v35 = v40;
      }

      if (v40)
      {
        if ([v40 length])
        {
          if (selfa)
          {
            objc_setProperty_atomic(selfa, v41, newValue, 56);
          }

          v42 = [v40 containsString:@"L"];
          if (qword_1ED9602C0)
          {
            v43 = v42;
          }

          else
          {
            v43 = 0;
          }

          if (v43 == 1)
          {
            v44 = [qword_1ED9602C0 stringByReplacingMatchesInString:v40 options:0 range:0 withTemplate:{objc_msgSend(v40, "length"), @"L"}];
          }

          else
          {
            v44 = v40;
          }

          v104 = objc_opt_new();
          v103 = v44;
          v45 = [v44 length];
          v138[0] = MEMORY[0x1E69E9820];
          v138[1] = 3221225472;
          v138[2] = __161__CRCTCCVNLPOrientationDecoder__decodeFeaturesWithInfo_decoderCallback_shouldDecodeScriptResult_shouldDecodeOrientationResult_shouldDecodeLayoutDirectionResult___block_invoke_4;
          v138[3] = &unk_1E7BC3600;
          v46 = v104;
          v139 = v46;
          [v44 enumerateSubstringsInRange:0 options:v45 usingBlock:{2, v138}];
          v47 = [v46 allObjects];
          v136[0] = MEMORY[0x1E69E9820];
          v136[1] = 3221225472;
          v136[2] = __161__CRCTCCVNLPOrientationDecoder__decodeFeaturesWithInfo_decoderCallback_shouldDecodeScriptResult_shouldDecodeOrientationResult_shouldDecodeLayoutDirectionResult___block_invoke_5;
          v136[3] = &unk_1E7BC3628;
          v120 = v46;
          v137 = v120;
          v105 = [v47 sortedArrayUsingComparator:v136];

          v123 = objc_opt_new();
          v134 = 0u;
          v135 = 0u;
          v132 = 0u;
          v133 = 0u;
          v48 = +[CRScriptCategoryV1 supportedCategories];
          v49 = 0;
          v50 = [v48 countByEnumeratingWithState:&v132 objects:v153 count:16];
          if (v50)
          {
            v51 = *v133;
            do
            {
              for (j = 0; j != v50; ++j)
              {
                if (*v133 != v51)
                {
                  objc_enumerationMutation(v48);
                }

                v53 = *(*(&v132 + 1) + 8 * j);
                v54 = +[CRScriptCategoryV1 unknown];
                v55 = v53 == v54;

                if (!v55)
                {
                  v56 = [CRScriptCategoryV1 sequenceScriptForCategory:v53];
                  v57 = [v120 countForObject:v56];

                  v58 = +[CRScriptCategoryV1 latinCyrillic];
                  v59 = v58;
                  if (v53 == v58)
                  {
                  }

                  else
                  {
                    v60 = +[CRScriptCategoryV1 common];
                    v62 = v53 != v60 && v57 > v49;

                    if (v62)
                    {
                      v49 = v57;
                    }
                  }

                  v63 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v57];
                  [v123 setObject:v63 forKeyedSubscript:v53];
                }
              }

              v50 = [v48 countByEnumeratingWithState:&v132 objects:v153 count:16];
            }

            while (v50);
          }

          v121 = [v105 objectAtIndexedSubscript:0];
          v64 = +[CRScriptCategoryV1 latinCyrillic];
          v65 = [v123 objectForKeyedSubscript:v64];
          if ([v65 intValue] <= 0)
          {
          }

          else
          {
            v66 = +[CRScriptCategoryV1 latinCyrillic];
            v67 = [v123 objectForKeyedSubscript:v66];
            v68 = v49 + v49 > [v67 intValue];

            if (!v68)
            {
              v70 = +[CRScriptCategoryV1 latinCyrillic];
              v71 = selfa;
              if (selfa)
              {
                goto LABEL_103;
              }

              goto LABEL_104;
            }
          }

          v130 = 0u;
          v131 = 0u;
          v128 = 0u;
          v129 = 0u;
          obj = qword_1ED9602D0;
          v72 = [obj countByEnumeratingWithState:&v128 objects:v152 count:16];
          v73 = selfa;
          if (!v72)
          {
            goto LABEL_96;
          }

          v74 = *v129;
          while (1)
          {
            for (k = 0; k != v72; ++k)
            {
              if (*v129 != v74)
              {
                objc_enumerationMutation(obj);
              }

              v76 = *(*(&v128 + 1) + 8 * k);
              v77 = [CRScriptCategoryV1 sequenceScriptForCategory:v76];
              if ([v121 isEqualToString:v77])
              {
                v78 = v73 == 0;

                v73 = selfa;
                if (!v78)
                {
                  goto LABEL_92;
                }
              }

              else
              {
                v80 = [v123 objectForKeyedSubscript:v76];
                if ([v80 intValue] > 0)
                {
                  v81 = [v123 objectForKeyedSubscript:v76];
                  v82 = v73 == 0;
                  v83 = v49 != [v81 intValue];

                  v84 = v82 || v83;
                  v73 = selfa;
                  if (v84)
                  {
                    continue;
                  }

LABEL_92:
                  objc_setProperty_atomic(v73, v79, v76, 48);
                  continue;
                }

                v73 = selfa;
              }
            }

            v72 = [obj countByEnumeratingWithState:&v128 objects:v152 count:16];
            if (!v72)
            {
LABEL_96:

              if (v73)
              {
                Property = objc_getProperty(selfa, v85, 48, 1);
              }

              else
              {
                Property = 0;
              }

              v87 = Property;
              v88 = v87 == 0;

              if (v88)
              {
                if ([v121 isEqualToString:@"L"])
                {
                  v70 = +[CRScriptCategoryV1 latinCyrillic];
                  v71 = selfa;
                  if (selfa)
                  {
LABEL_103:
                    objc_setProperty_atomic(v71, v69, v70, 48);
                  }
                }

                else
                {
                  v70 = +[CRScriptCategoryV1 common];
                  v71 = selfa;
                  if (selfa)
                  {
                    goto LABEL_103;
                  }
                }

LABEL_104:
              }

              v14 = 0;
              v40 = v103;
LABEL_106:

LABEL_107:
LABEL_108:

              objc_autoreleasePoolPop(context);
              if ((v14 | 4) == 4)
              {
                ++v118;
                goto LABEL_4;
              }

              goto LABEL_112;
            }
          }
        }
      }

      else
      {
        v40 = 0;
      }

      v14 = 4;
      goto LABEL_106;
    }

    if ([(CRCTCCVNLPOrientationDecoder *)v108 shouldUseModernizedDecoder])
    {
      [v116 score];
    }

    else
    {
      [v116 score];
      v16 = v15;
      v17 = [v11 length];
      if (!v17)
      {
        goto LABEL_13;
      }

      v13 = pow(v16, 1.0 / v17);
    }

    v16 = v13;
LABEL_13:
    v146 = 0;
    v147 = &v146;
    v148 = 0x2020000000;
    v149 = 0;
    v142 = 0;
    v143 = &v142;
    v144 = 0x2020000000;
    v145 = 0;
    v18 = [v11 length];
    v141[0] = MEMORY[0x1E69E9820];
    v141[1] = 3221225472;
    v141[2] = __161__CRCTCCVNLPOrientationDecoder__decodeFeaturesWithInfo_decoderCallback_shouldDecodeScriptResult_shouldDecodeOrientationResult_shouldDecodeLayoutDirectionResult___block_invoke_2;
    v141[3] = &unk_1E7BC2E58;
    v141[4] = &v146;
    v141[5] = &v142;
    [v11 enumerateSubstringsInRange:0 options:v18 usingBlock:{2, v141}];
    v19 = [v11 stringByReplacingOccurrencesOfString:@"S" withString:&stru_1F2BB4348];
    v21 = v19;
    if (selfa)
    {
      objc_setProperty_atomic(selfa, v20, v19, 40);

      v23 = objc_getProperty(selfa, v22, 40, 1);
    }

    else
    {

      v23 = 0;
    }

    v24 = v23;
    v25 = [v24 length];

    v26 = v147[3];
    v27 = v143[3];
    if (v26 >= v27)
    {
      v12 = selfa;
      if (v26 >= 1)
      {
        v16 = v16 * (v26 / (v27 + v26));
      }

      if (!selfa)
      {
        goto LABEL_25;
      }

      v28 = 1;
    }

    else
    {
      v12 = selfa;
      if (v27 >= 1)
      {
        v16 = v16 * (v27 / (v27 + v26));
      }

      if (!selfa)
      {
        goto LABEL_25;
      }

      v28 = 2;
    }

    v12[4] = v16;
    *(v12 + 3) = v28;
LABEL_25:
    v110 += v25;
    _Block_object_dispose(&v142, 8);
    _Block_object_dispose(&v146, 8);
    v11 = newValue;
    goto LABEL_26;
  }

LABEL_112:
  if (v118 >= v115 && v109 && v110 >= 1)
  {
    v126 = 0u;
    v127 = 0u;
    v124 = 0u;
    v125 = 0u;
    v89 = v112;
    v91 = [v89 countByEnumeratingWithState:&v124 objects:v151 count:16];
    if (v91)
    {
      v92 = *v125;
      do
      {
        v93 = 0;
        do
        {
          if (*v125 != v92)
          {
            objc_enumerationMutation(v89);
          }

          v94 = *(*(&v124 + 1) + 8 * v93);
          if (v94)
          {
            v95 = objc_getProperty(*(*(&v124 + 1) + 8 * v93), v90, 40, 1);
          }

          else
          {
            v95 = 0;
          }

          v96 = v95;
          v97 = v96 == 0;

          if (!v97)
          {
            if (v94)
            {
              v98 = objc_getProperty(v94, v90, 40, 1);
            }

            else
            {
              v98 = 0;
            }

            v99 = v98;
            v100 = [v99 length];
            if (v94)
            {
              v94[4] = v100 / v110 * v94[4];
            }
          }

          ++v93;
        }

        while (v91 != v93);
        v101 = [v89 countByEnumeratingWithState:&v124 objects:v151 count:16];
        v91 = v101;
      }

      while (v101);
    }
  }

  return v118 >= v115;
}

void __161__CRCTCCVNLPOrientationDecoder__decodeFeaturesWithInfo_decoderCallback_shouldDecodeScriptResult_shouldDecodeOrientationResult_shouldDecodeLayoutDirectionResult___block_invoke(uint64_t a1)
{
  v46[5] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) characterObservations];
  v3 = [v2 array];
  v4 = [v3 subarrayWithRange:{0, 7}];
  v5 = qword_1ED9602A8;
  qword_1ED9602A8 = v4;

  v6 = [*(a1 + 32) characterObservations];
  v7 = [v6 array];
  v8 = [v7 subarrayWithRange:{14, 7}];
  v9 = qword_1ED9602B0;
  qword_1ED9602B0 = v8;

  v10 = [*(a1 + 32) characterObservations];
  v11 = [v10 array];
  v12 = [v11 subarrayWithRange:{7, 7}];

  v13 = [*(a1 + 32) characterObservations];
  v14 = [v13 array];
  v15 = [v14 subarrayWithRange:{21, 7}];

  v16 = MEMORY[0x1E695DFD8];
  v17 = [qword_1ED9602A8 arrayByAddingObjectsFromArray:qword_1ED9602B0];
  v18 = [v16 setWithArray:v17];
  v19 = _MergedGlobals_36;
  _MergedGlobals_36 = v18;

  v20 = MEMORY[0x1E695DFD8];
  v21 = [v12 arrayByAddingObjectsFromArray:v15];
  v22 = [v20 setWithArray:v21];
  v23 = qword_1ED960290;
  qword_1ED960290 = v22;

  v24 = MEMORY[0x1E695DFD8];
  v25 = [qword_1ED9602B0 arrayByAddingObjectsFromArray:v15];
  v26 = [v24 setWithArray:v25];
  v27 = qword_1ED960298;
  qword_1ED960298 = v26;

  v28 = MEMORY[0x1E695DFD8];
  v29 = [qword_1ED9602A8 arrayByAddingObjectsFromArray:v12];
  v30 = [v28 setWithArray:v29];
  v31 = qword_1ED9602A0;
  qword_1ED9602A0 = v30;

  v32 = +[CRScriptCategoryV1 japanese];
  v46[0] = v32;
  v33 = +[CRScriptCategoryV1 korean];
  v46[1] = v33;
  v34 = +[CRScriptCategoryV1 chinese];
  v46[2] = v34;
  v35 = +[CRScriptCategoryV1 thai];
  v46[3] = v35;
  v36 = +[CRScriptCategoryV1 arabic];
  v46[4] = v36;
  v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:5];
  v38 = qword_1ED9602D0;
  qword_1ED9602D0 = v37;

  v39 = [qword_1ED960290 allObjects];
  v40 = [v39 componentsJoinedByString:@"|"];

  v41 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:v40 options:0 error:0];
  v42 = qword_1ED9602C8;
  qword_1ED9602C8 = v41;

  v43 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@{2, }", @"L"];
  v44 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:v43 options:1 error:0];
  v45 = qword_1ED9602C0;
  qword_1ED9602C0 = v44;
}

void __161__CRCTCCVNLPOrientationDecoder__decodeFeaturesWithInfo_decoderCallback_shouldDecodeScriptResult_shouldDecodeOrientationResult_shouldDecodeLayoutDirectionResult___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([_MergedGlobals_36 containsObject:?])
  {
    v3 = 32;
  }

  else
  {
    if (![qword_1ED960290 containsObject:v4])
    {
      goto LABEL_6;
    }

    v3 = 40;
  }

  ++*(*(*(a1 + v3) + 8) + 24);
LABEL_6:
}

void __161__CRCTCCVNLPOrientationDecoder__decodeFeaturesWithInfo_decoderCallback_shouldDecodeScriptResult_shouldDecodeOrientationResult_shouldDecodeLayoutDirectionResult___block_invoke_3(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([qword_1ED9602A0 containsObject:?])
  {
    v3 = 32;
  }

  else
  {
    if (![qword_1ED960298 containsObject:v4])
    {
      goto LABEL_6;
    }

    v3 = 40;
  }

  ++*(*(*(a1 + v3) + 8) + 24);
LABEL_6:
}

uint64_t __161__CRCTCCVNLPOrientationDecoder__decodeFeaturesWithInfo_decoderCallback_shouldDecodeScriptResult_shouldDecodeOrientationResult_shouldDecodeLayoutDirectionResult___block_invoke_5(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) countForObject:a2];
  v7 = [*(a1 + 32) countForObject:v5];
  if (v6 > v7)
  {
    v8 = -1;
  }

  else
  {
    v8 = v6 < v7;
  }

  return v8;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

@end