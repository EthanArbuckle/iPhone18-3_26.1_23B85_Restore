@interface PISmartBlackAndWhiteAutoCalculator
- (id)_calculateBlackAndWhiteSettingsFromBufferImage:(id)image;
- (void)submit:(id)submit;
@end

@implementation PISmartBlackAndWhiteAutoCalculator

- (void)submit:(id)submit
{
  v27 = *MEMORY[0x1E69E9840];
  submitCopy = submit;
  if (!submitCopy)
  {
    v10 = NUAssertLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "completion != nil"];
      *buf = 138543362;
      v24 = v11;
      _os_log_error_impl(&dword_1C7694000, v10, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v12 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v14 = NUAssertLogger();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v15)
      {
        v18 = dispatch_get_specific(*v12);
        callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
        v20 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v24 = v18;
        v25 = 2114;
        v26 = v20;
        _os_log_error_impl(&dword_1C7694000, v14, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v15)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v17 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v24 = v17;
      _os_log_error_impl(&dword_1C7694000, v14, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
    __break(1u);
  }

  v5 = [objc_alloc(MEMORY[0x1E69B39A0]) initWithRequest:self];
  [v5 setName:@"PISmartBlackAndWhiteAutoCalculator-renderInputImage"];
  rGBAh = [MEMORY[0x1E69B3BF0] RGBAh];
  [v5 setPixelFormat:rGBAh];

  sRGBLinearColorSpace = [MEMORY[0x1E69B3A10] sRGBLinearColorSpace];
  [v5 setColorSpace:sRGBLinearColorSpace];

  v8 = [objc_alloc(MEMORY[0x1E69B3A78]) initWithTargetPixelSize:{100, 100}];
  [v5 setScalePolicy:v8];

  [v5 setSampleMode:1];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __45__PISmartBlackAndWhiteAutoCalculator_submit___block_invoke;
  v21[3] = &unk_1E82ACC00;
  v21[4] = self;
  v9 = submitCopy;
  v22 = v9;
  [v5 submit:v21];
}

void __45__PISmartBlackAndWhiteAutoCalculator_submit___block_invoke(uint64_t a1, void *a2)
{
  v8 = 0;
  v3 = [a2 result:&v8];
  v4 = v8;
  v5 = [v3 image];

  if (v5)
  {
    v6 = [*(a1 + 32) _calculateBlackAndWhiteSettingsFromBufferImage:v5];
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x1E69B3C78]) initWithError:v4];
  }

  v7 = v6;
  (*(*(a1 + 40) + 16))();
}

- (id)_calculateBlackAndWhiteSettingsFromBufferImage:(id)image
{
  imageCopy = image;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__20523;
  v12 = __Block_byref_object_dispose__20524;
  v13 = 0;
  validRegion = [imageCopy validRegion];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __85__PISmartBlackAndWhiteAutoCalculator__calculateBlackAndWhiteSettingsFromBufferImage___block_invoke;
  v7[3] = &unk_1E82ABAE0;
  v7[4] = &v8;
  [imageCopy readBufferRegion:validRegion withBlock:v7];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __85__PISmartBlackAndWhiteAutoCalculator__calculateBlackAndWhiteSettingsFromBufferImage___block_invoke(uint64_t a1, void *a2)
{
  v64[4] = *MEMORY[0x1E69E9840];
  v2 = a2;
  v53 = 0;
  v54 = &v53;
  v55 = 0x5012000000;
  v56 = __Block_byref_object_copy__39;
  v57 = __Block_byref_object_dispose__40;
  v58 = &unk_1C788B126;
  v60 = xmmword_1C7845DC0;
  v61 = vdup_n_s32(0x3EAAAAABu);
  v59 = 0;
  v62 = 1051372203;
  v52 = *MEMORY[0x1E69B3908];
  v3 = [v2 buffer];
  v4 = [v3 size];
  v6 = v5;

  v7 = [MEMORY[0x1E69B3A58] sharedFactory];
  v8 = [v7 bufferFactory];
  v9 = [v2 buffer];
  v10 = [v9 size];
  v12 = v11;
  v13 = [MEMORY[0x1E69B3BF0] RGBAf];
  v14 = [v8 newStorageWithSize:v10 format:{v12, v13}];

  v49 = v52;
  v50 = v4;
  v51 = v6;
  v15 = [MEMORY[0x1E69B3C10] regionWithRect:&v49];
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __85__PISmartBlackAndWhiteAutoCalculator__calculateBlackAndWhiteSettingsFromBufferImage___block_invoke_45;
  v43[3] = &unk_1E82ABAB8;
  v16 = v2;
  v46 = v52;
  v47 = v4;
  v48 = v6;
  v44 = v16;
  v45 = &v53;
  [v14 writeBufferInRegion:v15 block:v43];

  v17 = [MEMORY[0x1E69B3A58] sharedFactory];
  v18 = [v17 bufferFactory];
  [v18 returnStorage:v14];

  v20 = v54;
  if (*(v54 + 48) == 1)
  {
    *&v19 = v54[13];
    goto LABEL_14;
  }

  *(v54 + 48) = 1;
  v21 = v20[13];
  v19 = v21;
  if (v21 <= 0.35)
  {
    v22 = 0.35 - v19;
    v23 = -2.0;
  }

  else
  {
    if (v21 >= 0.85)
    {
      *&v19 = ((v21 + -0.85) * 2.0) + -1.0;
      goto LABEL_9;
    }

    v22 = v19 + -0.35;
    v23 = 2.0;
  }

  v19 = v22 * v23 + 0.0;
  *&v19 = v19;
LABEL_9:
  v24 = v20[14];
  v25 = v20[15];
  v26 = v24 * 1.25;
  v27 = v24 > 0.4;
  v28 = ((v24 + -0.4) * 0.83333) + 0.5;
  if (!v27)
  {
    v28 = v26;
  }

  v20[13] = *&v19;
  v20[14] = v28;
  v29 = v25 + -1.0;
  v30 = v20[16];
  if (v30 > 0.0)
  {
    v30 = v30 * 0.5;
  }

  v20[15] = v29;
  v20[16] = v30;
LABEL_14:
  v63[0] = @"inputHue";
  v31 = [MEMORY[0x1E696AD98] numberWithFloat:v19];
  v64[0] = v31;
  v63[1] = @"inputStrength";
  *&v32 = v54[14];
  v33 = [MEMORY[0x1E696AD98] numberWithFloat:v32];
  v64[1] = v33;
  v63[2] = @"inputNeutralGamma";
  *&v34 = v54[15];
  v35 = [MEMORY[0x1E696AD98] numberWithFloat:v34];
  v64[2] = v35;
  v63[3] = @"inputTone";
  *&v36 = v54[16];
  v37 = [MEMORY[0x1E696AD98] numberWithFloat:v36];
  v64[3] = v37;
  v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v64 forKeys:v63 count:4];

  v39 = [objc_alloc(MEMORY[0x1E69B3C78]) initWithResult:v38];
  v40 = *(*(a1 + 32) + 8);
  v41 = *(v40 + 40);
  *(v40 + 40) = v39;

  _Block_object_dispose(&v53, 8);
}

void __85__PISmartBlackAndWhiteAutoCalculator__calculateBlackAndWhiteSettingsFromBufferImage___block_invoke_45(uint64_t a1, void *a2)
{
  v159 = *MEMORY[0x1E69E9840];
  v127 = a2;
  memset(&src, 0, sizeof(src));
  v3 = [*(a1 + 32) buffer];
  v4 = [v3 bytes];
  v6 = *(a1 + 64);
  v5 = *(a1 + 72);
  src.data = v4;
  src.height = v5;
  src.width = 4 * v6;
  v7 = [*(a1 + 32) buffer];
  src.rowBytes = [v7 rowBytes];

  memset(&dest, 0, sizeof(dest));
  v8 = [v127 bytes];
  v10 = *(a1 + 64);
  v9 = *(a1 + 72);
  dest.data = v8;
  dest.height = v9;
  dest.width = 4 * v10;
  dest.rowBytes = [v127 rowBytes];
  vImageConvert_Planar16FtoPlanarF(&src, &dest, 0);
  v125 = [MEMORY[0x1E69B3A10] sRGBLinearColorSpace];
  v11 = [v125 CGColorSpace];
  v12 = *(*(a1 + 40) + 8);
  v13 = v127;
  *(v12 + 48) = 0;
  *(v12 + 52) = xmmword_1C7845DC0;
  *(v12 + 68) = vdup_n_s32(0x3EAAAAABu);
  *(v12 + 76) = 1051372203;
  v128 = v13;
  if (!v13)
  {
    goto LABEL_112;
  }

  v14 = [PIMsgImageBuffer alloc];
  v15 = [v128 bytes];
  v16 = [v128 size];
  [v128 size];
  v18 = v17;
  v19 = [v128 rowBytes];
  v20 = [v128 format];
  v21 = [v20 bytesPerPixel];
  if (v21 >= 0)
  {
    v22 = v21;
  }

  else
  {
    v22 = v21 + 3;
  }

  v23 = [v128 format];
  v24 = -[PIMsgImageBuffer initWithBytes:width:height:bytesPerRow:bytesPerComponent:format:colorspace:](v14, "initWithBytes:width:height:bytesPerRow:bytesPerComponent:format:colorspace:", v15, v16, v18, v19, v22 >> 2, [v23 CIFormat], v11);

  v126 = v24;
  v25 = v126;
  if (v126)
  {
    v26 = [(PIMsgImageBuffer *)v126 bytes];
    v133 = [(PIMsgImageBuffer *)v126 rowElements];
    v27 = [(PIMsgImageBuffer *)v126 width];
    v134 = [(PIMsgImageBuffer *)v126 height];
    v25 = v126;
  }

  else
  {
    v26 = 0;
    v133 = 0;
    v27 = 0;
    v134 = 0;
  }

  v28 = v134 * v27;
  v29 = 1;
  v129 = vdupq_n_s64(0x3FD5555555555555uLL);
  v130 = v26;
  do
  {
    v131 = v29;
    LODWORD(v147[0]) = 3;
    memset(v147 + 4, 0, 28);
    v143 = 3;
    v145 = 0;
    v144 = 0uLL;
    v146 = 0;
    std::vector<double>::vector[abi:ne200100](&v141, v28);
    std::vector<double>::vector[abi:ne200100](v140, v28);
    if (v134)
    {
      v30 = 0;
      v31 = 0;
      v32 = 0.0;
      do
      {
        if (v27)
        {
          for (i = 0; i != v27; ++i)
          {
            v34 = 0;
            _Q0 = *(v26 + 4 * v133 * v31 + 16 * i);
            v152 = _Q0;
            _S2 = vmuls_lane_f32(*(v12 + 76), _Q0, 2);
            __asm { FMLA            S1, S2, V0.S[2] }

            *(v140[0] + v30) = sqrtf(_S1);
            v42 = _Q0.f32[0];
            v43 = v42;
            do
            {
              v44 = v152.f32[v34];
              if (v42 > v44)
              {
                v42 = v152.f32[v34];
              }

              if (v43 < v44)
              {
                v43 = v152.f32[v34];
              }

              ++v34;
            }

            while (v34 != 3);
            v45 = 0;
            v46 = v43 - v42;
            *(v141 + v30) = v43 - v42;
            do
            {
              *&buf[8 * v45] = v152.f32[v45];
              ++v45;
            }

            while (v45 != 3);
            MsgMatrix<double>::AppendRow<double>(v147, buf);
            v32 = v32 + v46;
            ++v30;
          }
        }

        ++v31;
      }

      while (v31 != v134);
      v47 = 0;
      v48 = 0;
      v49 = 0;
      v50 = v32 / ((v142 - v141) >> 3);
      do
      {
        if (v27)
        {
          v48 += v27;
          v51 = v47;
          v52 = v27;
          do
          {
            v53 = *(v141 + v51);
            v54 = v53 > v50;
            v55 = v53 * 0.5;
            *buf = *(v140[0] + v51);
            *&buf[8] = v55 + *buf;
            *&buf[16] = 0;
            v155 = v55 + 1.0;
            v152.i64[0] = *&buf[16 * v54 + 8 * (*buf > 0.217)];
            v152.i64[1] = v152.i64[0];
            v153 = v152.i64[0];
            MsgMatrix<double>::AppendRow<double>(&v143, &v152);
            v51 += 8;
            --v52;
          }

          while (v52);
        }

        ++v49;
        v47 += 8 * v27;
      }

      while (v49 != v134);
    }

    MsgMatrix<double>::T(buf, v147);
    MsgMatrix<double>::T(&v152, &v143);
    v151 = v147[0];
    v149 = 0;
    v148 = 78;
    std::vector<double>::vector[abi:ne200100](&v156, 0x100uLL);
    v56 = v156;
    v150 = -1;
    *v156 = 0.0;
    dgels_NEWLAPACK();
    v57 = *v56;
    if (*v56 <= 256.0)
    {
      v150 = 256;
      goto LABEL_44;
    }

    v150 = v57;
    v58 = v57;
    v56 = v156;
    v59 = v157;
    v60 = (v157 - v156) >> 3;
    if (v58 <= v60)
    {
      if (v58 >= v60)
      {
        goto LABEL_44;
      }

      v64 = &v156[v58];
    }

    else
    {
      v61 = v58 - v60;
      if (v58 - v60 > (v158 - v157) >> 3)
      {
        if ((v58 & 0x80000000) == 0)
        {
          v62 = v158 - v156;
          if ((v158 - v156) >> 2 > v58)
          {
            v58 = v62 >> 2;
          }

          if (v62 >= 0x7FFFFFFFFFFFFFF8)
          {
            v63 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v63 = v58;
          }

          std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(v63);
        }

        std::vector<float>::__throw_length_error[abi:ne200100]();
      }

      bzero(v157, 8 * v61);
      v64 = &v59[8 * v61];
    }

    v157 = v64;
LABEL_44:
    v124 = v56;
    dgels_NEWLAPACK();
    if (v156)
    {
      v157 = v156;
      operator delete(v156);
    }

    v156 = 0;
    v137 = v147[0];
    v138 = v147[0];
    std::vector<double>::vector[abi:ne200100](__p, v137 * v137);
    v65 = v138;
    if (v138)
    {
      v66 = 0;
      do
      {
        v67 = v137;
        if (v137)
        {
          v68 = 0;
          do
          {
            v69 = *MsgMatrix<double>::operator()(&v152, v68, v66);
            *MsgMatrix<double>::operator()(&v137, v68++, v66) = v69;
          }

          while (v67 != v68);
        }

        ++v66;
      }

      while (v66 != v65);
    }

    if (v152.i64[1])
    {
      v153 = v152.i64[1];
      operator delete(v152.i64[1]);
    }

    v26 = v130;
    if (*&buf[8])
    {
      *&buf[16] = *&buf[8];
      operator delete(*&buf[8]);
    }

    v70 = 0;
    v71 = fabs(*MsgMatrix<double>::operator()(&v137, 0, 0));
    do
    {
      v71 = fmax(v71, fabs(*MsgMatrix<double>::operator()(&v137, v70++, 0)));
    }

    while (v70 != 3);
    v72 = 0;
    v73 = 0.0;
    do
    {
      v74 = *MsgMatrix<double>::operator()(&v137, v72, 0) / v71;
      *&buf[8 * v72] = v74;
      v73 = v73 + v74;
      ++v72;
    }

    while (v72 != 3);
    v75 = fabs(v73);
    if (v75 < 0.000001 || v75 > 1000000000.0)
    {
      *&buf[16] = 0x3FD5555555555555;
      *buf = v129;
      v73 = 1.0;
    }

    for (j = 0; j != 24; j += 8)
    {
      *&buf[j] = *&buf[j] / v73;
    }

    v77 = 0;
    v78 = *buf;
    v79 = *&buf[8];
    v80 = *&buf[16];
    v81 = &dword_1C784626C;
    do
    {
      v82 = (*(v81 - 1) * v79) + (*(v81 - 2) * v78);
      v83 = *v81;
      v81 += 3;
      *(&v156 + v77) = v82 + (v83 * v80);
      v77 += 4;
    }

    while (v77 != 12);
    for (k = 0; k != 12; k += 4)
    {
      v85 = *(&v156 + k);
      v86 = powf(fabsf(v85), 0.43);
      if (v85 < 0.0)
      {
        v86 = -v86;
      }

      *(&v156 + k) = v86;
    }

    v87 = 0;
    v88 = v156;
    v89 = &dword_1C7846290;
    v90 = *&v157;
    do
    {
      v91 = (*(&v88 + 1) * *(v89 - 1)) + (*(v89 - 2) * *&v88);
      v92 = *v89;
      v89 += 3;
      v152.f32[v87++] = v91 + (v92 * v90);
    }

    while (v87 != 3);
    LODWORD(v157) = v152.i32[2];
    v156 = v152.i64[0];
    v93 = *(v152.i64 + 4);
    v28 = v134 * v27;
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v140[0])
    {
      v140[1] = v140[0];
      operator delete(v140[0]);
    }

    if (v141)
    {
      v142 = v141;
      operator delete(v141);
    }

    if (*(&v144 + 4))
    {
      operator delete(*(&v144 + 4));
    }

    if (v147[1])
    {
      operator delete(v147[1]);
    }

    v94 = atan2f(*(&v93 + 1), *&v93) / 6.28318531;
    v95 = *(v12 + 56);
    v96 = v95;
    __n = v94 + 0.5;
    *(v12 + 52) = v94 + 0.5;
    v97 = v95 * cos((0.60167 - (v94 + 0.5)) * 6.28318531) + 1.0;
    if (v97 <= 1.0)
    {
      v98 = v97 * -2.0 + 3.0;
    }

    else
    {
      v98 = (v97 + -1.0) * -0.55 + 1.0;
    }

    v99 = v98;
    v100 = powf(0.3, v99);
    v101 = v96 * cos((0.8663 - __n) * 6.28318531) + 1.0;
    if (v101 <= 1.0)
    {
      v102 = v101 * -2.0 + 3.0;
    }

    else
    {
      v102 = (v101 + -1.0) * -0.55 + 1.0;
    }

    v103 = v102;
    v104 = powf(0.6, v103);
    v105 = v96 * cos((0.22284 - __n) * 6.28318531) + 1.0;
    if (v105 <= 1.0)
    {
      v106 = v105 * -2.0 + 3.0;
    }

    else
    {
      v106 = (v105 + -1.0) * -0.55 + 1.0;
    }

    v107 = v106;
    v108 = powf(0.1, v107);
    v29 = 0;
    v109 = v108 + (v100 + v104);
    v110 = v108 / v109;
    *(v12 + 68) = v100 / v109;
    *(v12 + 72) = v104 / v109;
    *(v12 + 76) = v110;
  }

  while ((v131 & 1) != 0);
  v111.i64[0] = __PAIR64__(COERCE_UNSIGNED_INT(fabs(v104 / v109)), COERCE_UNSIGNED_INT(fabs(v100 / v109)));
  v111.i32[2] = LODWORD(v110) & 0x7FFFFFFF;
  v111.i32[3] = LODWORD(__n) & 0x7FFFFFFF;
  v112.i64[0] = 0x7F0000007FLL;
  v112.i64[1] = 0x7F0000007FLL;
  if ((vmaxv_u16(vmovn_s32(vcgeq_s32(v111, vnegq_f32(v112)))) & 1) != 0 || (LODWORD(v95) & 0x7FFFFFFFu) > 0x7F7FFFFF || (*(v12 + 60) & 0x7FFFFFFFu) > 0x7F7FFFFF || (*(v12 + 64) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    v113 = MEMORY[0x1E69B3D78];
    if (*MEMORY[0x1E69B3D78] != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_20519);
    }

    v114 = MEMORY[0x1E69B3D70];
    v115 = *MEMORY[0x1E69B3D70];
    if (os_log_type_enabled(v115, OS_LOG_TYPE_DEFAULT))
    {
      v116 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Produced invalid BlackAndWhite settings, using defaults", v124, &v150, &v149];
      *buf = 138543362;
      *&buf[4] = v116;
      _os_log_impl(&dword_1C7694000, v115, OS_LOG_TYPE_DEFAULT, "Continue: %{public}@", buf, 0xCu);
    }

    v117 = MEMORY[0x1E69B38E8];
    if (dispatch_get_specific(*MEMORY[0x1E69B38E8]))
    {
      if (*v113 != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_20519);
      }

      v118 = *v114;
      if (os_log_type_enabled(v118, OS_LOG_TYPE_ERROR))
      {
        v119 = dispatch_get_specific(*v117);
        v120 = [MEMORY[0x1E696AF00] callStackSymbols];
        v121 = [v120 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v119;
        *&buf[12] = 2114;
        *&buf[14] = v121;
        _os_log_error_impl(&dword_1C7694000, v118, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else
    {
      if (*v113 != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_20519);
      }

      v118 = *v114;
      if (os_log_type_enabled(v118, OS_LOG_TYPE_ERROR))
      {
        v122 = [MEMORY[0x1E696AF00] callStackSymbols];
        v123 = [v122 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        *&buf[4] = v123;
        _os_log_error_impl(&dword_1C7694000, v118, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }
    }

    _NUAssertContinueHandler();
    *(v12 + 48) = 0;
    *(v12 + 52) = xmmword_1C7845DC0;
    *(v12 + 68) = vdup_n_s32(0x3EAAAAABu);
    *(v12 + 76) = 1051372203;
  }

LABEL_112:
}

@end