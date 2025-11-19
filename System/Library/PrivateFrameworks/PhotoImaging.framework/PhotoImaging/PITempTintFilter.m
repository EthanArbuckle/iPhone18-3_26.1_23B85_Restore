@interface PITempTintFilter
+ (id)customAttributes;
- (id)outputImage;
- (void)setInputVectorsForFilter:(id)a3;
@end

@implementation PITempTintFilter

+ (id)customAttributes
{
  v28[3] = *MEMORY[0x1E69E9840];
  v27[0] = *MEMORY[0x1E695F6B8];
  v2 = *MEMORY[0x1E695F7D0];
  v26[0] = *MEMORY[0x1E695F790];
  v26[1] = v2;
  v26[2] = *MEMORY[0x1E695F7C0];
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:3];
  v28[0] = v15;
  v27[1] = @"inputTemperature";
  v4 = *MEMORY[0x1E695F6D8];
  v18[0] = *MEMORY[0x1E695F6A0];
  v3 = v18[0];
  v18[1] = v4;
  v24[0] = &unk_1F471F4F0;
  v24[1] = &unk_1F471F500;
  v6 = *MEMORY[0x1E695F6E8];
  v19 = *MEMORY[0x1E695F6D0];
  v5 = v19;
  v20 = v6;
  v24[2] = &unk_1F471F510;
  v24[3] = &unk_1F471F520;
  v8 = *MEMORY[0x1E695F6C8];
  v21 = *MEMORY[0x1E695F6E0];
  v7 = v21;
  v22 = v8;
  v24[4] = &unk_1F471F530;
  v24[5] = &unk_1F471F4F0;
  v23 = *MEMORY[0x1E695F6F0];
  v9 = v23;
  v25 = *MEMORY[0x1E695F758];
  v10 = v25;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v18 count:7];
  v27[2] = @"inputTint";
  v28[1] = v11;
  v16[0] = v3;
  v16[1] = v4;
  v17[0] = &unk_1F471F540;
  v17[1] = &unk_1F471F550;
  v16[2] = v5;
  v16[3] = v6;
  v17[2] = &unk_1F471F560;
  v17[3] = &unk_1F471F570;
  v16[4] = v7;
  v16[5] = v8;
  v17[4] = &unk_1F471F580;
  v17[5] = &unk_1F471F540;
  v16[6] = v9;
  v17[6] = v10;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:7];
  v28[2] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:3];

  return v13;
}

- (void)setInputVectorsForFilter:(id)a3
{
  v68 = *MEMORY[0x1E69E9840];
  v47 = a3;
  [(PITempTintFilter *)self inputTemperature];
  v5 = v4;
  [(PITempTintFilter *)self inputTint];
  v7 = v6;
  v58 = 0.0;
  v59 = 0;
  v60 = 0.0;
  v8 = 2000.0;
  if (v5 >= 2000.0)
  {
    v8 = v5;
  }

  if (v8 <= 50000.0)
  {
    v9 = v8;
  }

  else
  {
    v9 = 50000.0;
  }

  if (v7 <= 0.0)
  {
    v30 = 1000.0 / v9;
    v31 = __sincos_stret(v30 * (v30 * v30) * 49.864 + 1000.0 / v9 * (v30 * (v30 * v30)) * -36.855 + v30 * v30 * -19.656 + v30 * -0.5063 + -0.2464);
    sinval = v31.__sinval;
    cosval = v31.__cosval;
  }

  else
  {
    *&v61 = 0;
    *&v56[0] = 0;
    GUTemp_to_xy(&v61, v56, v9);
    v10 = *v56 * 12.0 + *&v61 * -2.0 + 3.0;
    v11 = *&v61 * 4.0 / v10;
    v12 = *v56 * 6.0 / v10;
    v13 = 1000.0 / v9;
    v14 = __sincos_stret(v13 * (v13 * v13) * 49.864 + 1000.0 / v9 * (v13 * (v13 * v13)) * -36.855 + v13 * v13 * -19.656 + v13 * -0.5063 + -0.2464);
    sinval = v14.__sinval;
    cosval = v14.__cosval;
    v17 = 0;
    v18 = 1.0;
    v19 = 1.0;
    v20 = 150.0;
    while (1)
    {
      v21 = v11 - v14.__cosval * 150.0 * v18 / 3000.0;
      v22 = v12 - v14.__sinval * 150.0 * v18 / 3000.0;
      if (v22 <= v21 * -0.1 + 0.4 && (v23 = v21 * 3.0, v24 = v21 * 2.0 + 4.0 + v22 * -8.0, v25 = v23 / v24, v26 = (v22 + v22) / v24, v25 + v26 <= 1.0) && v26 <= (1.039 - v25) * 0.86)
      {
        v28 = 0;
        v20 = v18 * 150.0;
        v27 = 1;
      }

      else
      {
        v27 = 0;
        v28 = 1;
      }

      if (v17)
      {
        v27 = 0;
      }

      if ((v27 & 1) != 0 || v17 > 0xF)
      {
        break;
      }

      v29 = -v19;
      if (!v28)
      {
        v29 = v19;
      }

      v18 = v18 + v29;
      ++v17;
      v19 = v19 * 0.5;
    }

    v7 = v7 * (v20 / 150.0);
  }

  *&v61 = 0;
  *&v56[0] = 0;
  v32 = 150.0;
  if (v7 <= 150.0)
  {
    v32 = v7;
  }

  if (v32 >= -150.0)
  {
    v33 = v32;
  }

  else
  {
    v33 = -150.0;
  }

  GUTemp_to_xy(&v61, v56, v9);
  v34 = *v56 * 12.0 + *&v61 * -2.0 + 3.0;
  v35 = *&v61 * 4.0 / v34 - cosval * v33 / 3000.0;
  v36 = *v56 * 6.0 / v34 - sinval * v33 / 3000.0;
  v37 = v35 * 2.0 + 4.0 + v36 * -8.0;
  v38 = (v36 + v36) / v37;
  if (v38 >= 1.0e-20)
  {
    v39 = v35 * 3.0 / v37;
    v58 = v39 / v38;
    v59 = 0x3FF0000000000000;
    v60 = (1.0 - v39) / v38 + -1.0;
  }

  v57 = 0;
  memset(v56, 0, sizeof(v56));
  GUGetAdaptationMatrix(&v58, v56);
  v49 = 0;
  memset(v48, 0, sizeof(v48));
  v66 = xmmword_1C7845CA0;
  v67 = 0x3FF16CC7D1EF8103;
  v65 = 0.0;
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  GUGetAdaptationMatrix(&v66, &v61);
  v50 = vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(xmmword_1C7845CB0, *(&v61 + 1)), xmmword_1C7845CC0, *&v61), xmmword_1C7845CD0, *&v62);
  v51 = *(&v61 + 1) * 0.0959986815 + *&v61 * 0.193244099 + *&v62 * 0.957493343;
  v52 = vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(xmmword_1C7845CB0, *&v63), xmmword_1C7845CC0, *(&v62 + 1)), xmmword_1C7845CD0, *(&v63 + 1));
  v53 = *&v63 * 0.0959986815 + *(&v62 + 1) * 0.193244099 + *(&v63 + 1) * 0.957493343;
  v54 = vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(xmmword_1C7845CB0, *(&v64 + 1)), xmmword_1C7845CC0, *&v64), xmmword_1C7845CD0, v65);
  v55 = *(&v64 + 1) * 0.0959986815 + *&v64 * 0.193244099 + v65 * 0.957493343;
  GUInvertMatrix(v50.f64, v48);
  v65 = 1.0;
  v61 = 0x3FF0000000000000uLL;
  v62 = 0uLL;
  v63 = 0x3FF0000000000000uLL;
  v64 = 0uLL;
  GUMatrixMatrix(&v61, v50.f64, &v61);
  GUMatrixMatrix(&v61, v56, &v61);
  GUMatrixMatrix(&v61, v48, &v61);
  v40 = v62;
  v41 = v63;
  v42 = v64;
  v43 = v65;
  v44 = [MEMORY[0x1E695F688] vectorWithX:v61 Y:*&v62 Z:0.0 W:?];
  v45 = [MEMORY[0x1E695F688] vectorWithX:*(&v40 + 1) Y:v41 Z:0.0 W:?];
  v46 = [MEMORY[0x1E695F688] vectorWithX:v42 Y:v43 Z:0.0 W:?];
  [v47 setValue:v44 forKey:@"inputRVector"];
  [v47 setValue:v45 forKey:@"inputGVector"];
  [v47 setValue:v46 forKey:@"inputBVector"];
}

- (id)outputImage
{
  v23 = *MEMORY[0x1E69E9840];
  if (!self->_inputImage)
  {
    v6 = NUAssertLogger_7006();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"inputImage cannot be nil"];
      v19 = 138543362;
      v20 = v7;
      _os_log_error_impl(&dword_1C7694000, v6, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &v19, 0xCu);
    }

    v8 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v10 = NUAssertLogger_7006();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v11)
      {
        v14 = dispatch_get_specific(*v8);
        v15 = MEMORY[0x1E696AF00];
        v16 = v14;
        v17 = [v15 callStackSymbols];
        v18 = [v17 componentsJoinedByString:@"\n"];
        v19 = 138543618;
        v20 = v14;
        v21 = 2114;
        v22 = v18;
        _os_log_error_impl(&dword_1C7694000, v10, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &v19, 0x16u);
      }
    }

    else if (v11)
    {
      v12 = [MEMORY[0x1E696AF00] callStackSymbols];
      v13 = [v12 componentsJoinedByString:@"\n"];
      v19 = 138543362;
      v20 = v13;
      _os_log_error_impl(&dword_1C7694000, v10, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &v19, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v3 = [MEMORY[0x1E695F648] filterWithName:@"CIColorMatrix"];
  [v3 setValue:self->_inputImage forKey:@"inputImage"];
  [(PITempTintFilter *)self setInputVectorsForFilter:v3];
  v4 = [v3 outputImage];

  return v4;
}

@end