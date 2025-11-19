@interface PIBilateralFilter
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation PIBilateralFilter

+ (id)customAttributes
{
  v2 = MEMORY[0x1E695DF20];
  v3 = *MEMORY[0x1E695F6D8];
  v4 = *MEMORY[0x1E695F6E8];
  v5 = *MEMORY[0x1E695F6E0];
  v6 = *MEMORY[0x1E695F6A0];
  v7 = *MEMORY[0x1E695F6F0];
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{*MEMORY[0x1E695F6D8], &unk_1F471F5B0, *MEMORY[0x1E695F6E8], &unk_1F471F5C0, *MEMORY[0x1E695F6E0], &unk_1F471F5D0, *MEMORY[0x1E695F6A0], *MEMORY[0x1E695F718], *MEMORY[0x1E695F6F0], 0}];
  v9 = *MEMORY[0x1E695FB10];
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{v3, &unk_1F471F5E0, v4, &unk_1F471F5F0, v5, &unk_1F471F600, v6, *MEMORY[0x1E695F758], v7, 0}];
  v11 = [v2 dictionaryWithObjectsAndKeys:{v8, v9, v10, @"inputEdgeDetail", 0}];

  return v11;
}

- (id)outputImage
{
  v174 = *MEMORY[0x1E69E9840];
  [(NSNumber *)self->_inputRadius floatValue];
  if (v3 == 0.0)
  {
    goto LABEL_117;
  }

  v4 = v3;
  v5 = v4 + v4;
  v6 = vcvtpd_s64_f64(v4 + v4);
  if (v6 >= 101)
  {
    v133 = NUAssertLogger_8454();
    if (os_log_type_enabled(v133, OS_LOG_TYPE_ERROR))
    {
      v134 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ridiculously large radius for bilateral filter"];
      *buf = 138543362;
      v171 = v134;
      _os_log_error_impl(&dword_1C7694000, v133, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v135 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v137 = NUAssertLogger_8454();
    v138 = os_log_type_enabled(v137, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v138)
      {
        v141 = dispatch_get_specific(*v135);
        v142 = MEMORY[0x1E696AF00];
        v143 = v141;
        v144 = [v142 callStackSymbols];
        v145 = [v144 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v171 = v141;
        v172 = 2114;
        v173 = v145;
        _os_log_error_impl(&dword_1C7694000, v137, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v138)
    {
      v139 = [MEMORY[0x1E696AF00] callStackSymbols];
      v140 = [v139 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v171 = v140;
      _os_log_error_impl(&dword_1C7694000, v137, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
LABEL_129:
    v146 = NUAssertLogger_8454();
    if (os_log_type_enabled(v146, OS_LOG_TYPE_ERROR))
    {
      v147 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unable to allocate convolution table in bilateral filter"];
      *buf = 138543362;
      v171 = v147;
      _os_log_error_impl(&dword_1C7694000, v146, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v148 = MEMORY[0x1E69B38E8];
    v149 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v150 = NUAssertLogger_8454();
    v151 = os_log_type_enabled(v150, OS_LOG_TYPE_ERROR);
    if (v149)
    {
      if (v151)
      {
        v154 = dispatch_get_specific(*v148);
        v155 = MEMORY[0x1E696AF00];
        v156 = v154;
        v157 = [v155 callStackSymbols];
        v158 = [v157 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v171 = v154;
        v172 = 2114;
        v173 = v158;
        _os_log_error_impl(&dword_1C7694000, v150, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v151)
    {
      v152 = [MEMORY[0x1E696AF00] callStackSymbols];
      v153 = [v152 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v171 = v153;
      _os_log_error_impl(&dword_1C7694000, v150, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  if (v3 <= 0.5)
  {
LABEL_117:
    v31 = self->_inputImage;
    goto LABEL_118;
  }

  if (v4 <= 1.05)
  {
    v32 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
    v33 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
    v34 = 0.0;
    v35 = hypot(1.0, 0.0) / v5;
    v36 = 0.0;
    if (v35 >= 0.0)
    {
      v36 = 1.0;
      if (v35 <= 1.0)
      {
        v36 = (v35 * -2.0 + 3.0) * (v35 * v35);
      }
    }

    v37 = 1.0 - v36;
    v38 = hypot(1.0, 1.0) / v5;
    if (v38 >= 0.0)
    {
      v34 = 1.0;
      if (v38 <= 1.0)
      {
        v34 = (v38 * -2.0 + 3.0) * (v38 * v38);
      }
    }

    v39 = [MEMORY[0x1E695F688] vectorWithX:? Y:? Z:? W:?];
    [v32 addObject:v39];

    v40 = [MEMORY[0x1E695F688] vectorWithX:1.0 Y:1.0 Z:1.0 W:-1.0];
    [v32 addObject:v40];

    v41 = [MEMORY[0x1E696AD98] numberWithDouble:v37];
    [v33 addObject:v41];

    v42 = MEMORY[0x1E696AD98];
    v43 = 1.0 - v34;
    goto LABEL_115;
  }

  if (v3 <= 1.5)
  {
    v32 = [MEMORY[0x1E695DF70] arrayWithCapacity:5];
    v33 = [MEMORY[0x1E695DF70] arrayWithCapacity:5];
    v44 = hypot(1.0, 0.0) / v5;
    v45 = (v44 * -2.0 + 3.0) * (v44 * v44);
    if (v44 > 1.0)
    {
      v45 = 1.0;
    }

    if (v44 >= 0.0)
    {
      v46 = v45;
    }

    else
    {
      v46 = 0.0;
    }

    v47 = 1.0 - v46;
    v48 = hypot(1.0, 1.0) / v5;
    v49 = (v48 * -2.0 + 3.0) * (v48 * v48);
    if (v48 > 1.0)
    {
      v49 = 1.0;
    }

    if (v48 >= 0.0)
    {
      v50 = v49;
    }

    else
    {
      v50 = 0.0;
    }

    v51 = 1.0 - v50;
    v52 = hypot(2.0, 0.0) / v5;
    v53 = (v52 * -2.0 + 3.0) * (v52 * v52);
    if (v52 > 1.0)
    {
      v53 = 1.0;
    }

    if (v52 >= 0.0)
    {
      v54 = v53;
    }

    else
    {
      v54 = 0.0;
    }

    v55 = 1.0 - v54;
    v56 = hypot(2.0, 1.0) / v5;
    v57 = (v56 * -2.0 + 3.0) * (v56 * v56);
    v58 = 1.0 - v57;
    if (v56 > 1.0)
    {
      v58 = 0.0;
      v57 = 1.0;
    }

    if (v56 >= 0.0)
    {
      v59 = v58;
    }

    else
    {
      v59 = 1.0;
    }

    if (v56 >= 0.0)
    {
      v60 = v57;
    }

    else
    {
      v60 = 0.0;
    }

    v61 = 1.0 - v60;
    v62 = [MEMORY[0x1E695F688] vectorWithX:1.0 Y:0.0 Z:0.0 W:-1.0];
    [v32 addObject:v62];

    v63 = [MEMORY[0x1E695F688] vectorWithX:1.0 Y:1.0 Z:1.0 W:-1.0];
    [v32 addObject:v63];

    v64 = [MEMORY[0x1E695F688] vectorWithX:2.0 Y:0.0 Z:0.0 W:-2.0];
    [v32 addObject:v64];

    v65 = [MEMORY[0x1E695F688] vectorWithX:2.0 Y:1.0 Z:2.0 W:-1.0];
    [v32 addObject:v65];

    v66 = [MEMORY[0x1E695F688] vectorWithX:1.0 Y:2.0 Z:1.0 W:-2.0];
    [v32 addObject:v66];

    v67 = [MEMORY[0x1E696AD98] numberWithDouble:v47];
    [v33 addObject:v67];

    v68 = [MEMORY[0x1E696AD98] numberWithDouble:v51];
    [v33 addObject:v68];

    v69 = [MEMORY[0x1E696AD98] numberWithDouble:v55];
    [v33 addObject:v69];

    v70 = [MEMORY[0x1E696AD98] numberWithDouble:v59];
    [v33 addObject:v70];

    v42 = MEMORY[0x1E696AD98];
    v43 = v61;
    goto LABEL_115;
  }

  if (v4 <= 2.1)
  {
    v32 = [MEMORY[0x1E695DF70] arrayWithCapacity:11];
    v33 = [MEMORY[0x1E695DF70] arrayWithCapacity:11];
    v71 = hypot(1.0, 0.0) / v5;
    v72 = (v71 * -2.0 + 3.0) * (v71 * v71);
    if (v71 > 1.0)
    {
      v72 = 1.0;
    }

    if (v71 >= 0.0)
    {
      v73 = v72;
    }

    else
    {
      v73 = 0.0;
    }

    v74 = 1.0 - v73;
    v75 = hypot(1.0, 1.0) / v5;
    v76 = (v75 * -2.0 + 3.0) * (v75 * v75);
    if (v75 > 1.0)
    {
      v76 = 1.0;
    }

    if (v75 >= 0.0)
    {
      v77 = v76;
    }

    else
    {
      v77 = 0.0;
    }

    v78 = 1.0 - v77;
    v79 = hypot(2.0, 0.0) / v5;
    v80 = (v79 * -2.0 + 3.0) * (v79 * v79);
    if (v79 > 1.0)
    {
      v80 = 1.0;
    }

    if (v79 >= 0.0)
    {
      v81 = v80;
    }

    else
    {
      v81 = 0.0;
    }

    v82 = 1.0 - v81;
    v83 = hypot(2.0, 1.0) / v5;
    v84 = (v83 * -2.0 + 3.0) * (v83 * v83);
    if (v83 > 1.0)
    {
      v84 = 1.0;
    }

    if (v83 >= 0.0)
    {
      v85 = v84;
    }

    else
    {
      v85 = 0.0;
    }

    v159 = 1.0 - v85;
    v86 = hypot(1.0, 2.0) / v5;
    v87 = (v86 * -2.0 + 3.0) * (v86 * v86);
    if (v86 > 1.0)
    {
      v87 = 1.0;
    }

    if (v86 >= 0.0)
    {
      v88 = v87;
    }

    else
    {
      v88 = 0.0;
    }

    v160 = 1.0 - v88;
    v89 = hypot(2.0, 2.0) / v5;
    v90 = (v89 * -2.0 + 3.0) * (v89 * v89);
    if (v89 > 1.0)
    {
      v90 = 1.0;
    }

    if (v89 >= 0.0)
    {
      v91 = v90;
    }

    else
    {
      v91 = 0.0;
    }

    v169 = 1.0 - v91;
    v92 = hypot(3.0, 0.0) / v5;
    v93 = (v92 * -2.0 + 3.0) * (v92 * v92);
    if (v92 > 1.0)
    {
      v93 = 1.0;
    }

    if (v92 >= 0.0)
    {
      v94 = v93;
    }

    else
    {
      v94 = 0.0;
    }

    v167 = 1.0 - v94;
    v95 = hypot(3.0, 1.0) / v5;
    v96 = (v95 * -2.0 + 3.0) * (v95 * v95);
    if (v95 > 1.0)
    {
      v96 = 1.0;
    }

    if (v95 >= 0.0)
    {
      v97 = v96;
    }

    else
    {
      v97 = 0.0;
    }

    v165 = 1.0 - v97;
    v98 = hypot(1.0, 3.0) / v5;
    v99 = (v98 * -2.0 + 3.0) * (v98 * v98);
    if (v98 > 1.0)
    {
      v99 = 1.0;
    }

    if (v98 >= 0.0)
    {
      v100 = v99;
    }

    else
    {
      v100 = 0.0;
    }

    v163 = 1.0 - v100;
    v101 = hypot(3.0, 2.0) / v5;
    v102 = (v101 * -2.0 + 3.0) * (v101 * v101);
    if (v101 > 1.0)
    {
      v102 = 1.0;
    }

    if (v101 >= 0.0)
    {
      v103 = v102;
    }

    else
    {
      v103 = 0.0;
    }

    v161 = 1.0 - v103;
    v104 = hypot(2.0, 3.0) / v5;
    v105 = (v104 * -2.0 + 3.0) * (v104 * v104);
    if (v104 > 1.0)
    {
      v105 = 1.0;
    }

    if (v104 >= 0.0)
    {
      v106 = v105;
    }

    else
    {
      v106 = 0.0;
    }

    v107 = 1.0 - v106;
    v108 = [MEMORY[0x1E695F688] vectorWithX:1.0 Y:0.0 Z:0.0 W:-1.0];
    [v32 addObject:v108];

    v109 = [MEMORY[0x1E695F688] vectorWithX:1.0 Y:1.0 Z:1.0 W:-1.0];
    [v32 addObject:v109];

    v110 = [MEMORY[0x1E695F688] vectorWithX:2.0 Y:0.0 Z:0.0 W:-2.0];
    [v32 addObject:v110];

    v111 = [MEMORY[0x1E695F688] vectorWithX:2.0 Y:1.0 Z:2.0 W:-1.0];
    [v32 addObject:v111];

    v112 = [MEMORY[0x1E695F688] vectorWithX:1.0 Y:2.0 Z:1.0 W:-2.0];
    [v32 addObject:v112];

    v113 = [MEMORY[0x1E695F688] vectorWithX:2.0 Y:2.0 Z:2.0 W:-2.0];
    [v32 addObject:v113];

    v114 = [MEMORY[0x1E695F688] vectorWithX:3.0 Y:0.0 Z:0.0 W:-3.0];
    [v32 addObject:v114];

    v115 = [MEMORY[0x1E695F688] vectorWithX:3.0 Y:1.0 Z:3.0 W:-1.0];
    [v32 addObject:v115];

    v116 = [MEMORY[0x1E695F688] vectorWithX:1.0 Y:3.0 Z:1.0 W:-3.0];
    [v32 addObject:v116];

    v117 = [MEMORY[0x1E695F688] vectorWithX:3.0 Y:2.0 Z:3.0 W:-2.0];
    [v32 addObject:v117];

    v118 = [MEMORY[0x1E695F688] vectorWithX:2.0 Y:3.0 Z:2.0 W:-3.0];
    [v32 addObject:v118];

    v119 = [MEMORY[0x1E696AD98] numberWithDouble:v74];
    [v33 addObject:v119];

    v120 = [MEMORY[0x1E696AD98] numberWithDouble:v78];
    [v33 addObject:v120];

    v121 = [MEMORY[0x1E696AD98] numberWithDouble:v82];
    [v33 addObject:v121];

    v122 = [MEMORY[0x1E696AD98] numberWithDouble:v159];
    [v33 addObject:v122];

    v123 = [MEMORY[0x1E696AD98] numberWithDouble:v160];
    [v33 addObject:v123];

    v124 = [MEMORY[0x1E696AD98] numberWithDouble:v169];
    [v33 addObject:v124];

    v125 = [MEMORY[0x1E696AD98] numberWithDouble:v167];
    [v33 addObject:v125];

    v126 = [MEMORY[0x1E696AD98] numberWithDouble:v165];
    [v33 addObject:v126];

    v127 = [MEMORY[0x1E696AD98] numberWithDouble:v163];
    [v33 addObject:v127];

    v128 = [MEMORY[0x1E696AD98] numberWithDouble:v161];
    [v33 addObject:v128];

    v42 = MEMORY[0x1E696AD98];
    v43 = v107;
LABEL_115:
    v129 = [v42 numberWithDouble:v43];
    [v33 addObject:v129];

    v130 = objc_alloc_init(GUBWBilateralConvolution);
    v131 = *MEMORY[0x1E695FAB0];
    [(GUBWBilateralConvolution *)v130 setValue:self->_inputImage forKey:*MEMORY[0x1E695FAB0]];
    [(GUBWBilateralConvolution *)v130 setValue:v32 forKey:@"inputPoints"];
    [(GUBWBilateralConvolution *)v130 setValue:v33 forKey:@"inputWeights"];
    [(GUBWBilateralConvolution *)v130 setValue:self->_inputEdgeDetail forKey:@"inputEdgeDetail"];
    v31 = [(GUBWBilateralConvolution *)v130 valueForKey:*MEMORY[0x1E695FB50]];
    [(GUBWBilateralConvolution *)v130 setValue:0 forKey:v131];

    goto LABEL_118;
  }

  v7 = 2 * v6 - 1;
  v8 = malloc_type_calloc(8uLL, v7 * v7, 0x100004000313F17uLL);
  if (!v8)
  {
    goto LABEL_129;
  }

  v9 = v8;
  v10 = 0.0;
  if (1 - v6 < v6)
  {
    v11 = 0;
    v12 = 1 - v6;
    do
    {
      v13 = 2 * v6 - 1;
      v14 = 1 - v6;
      do
      {
        v15 = sqrt(v12 / v5 * (v12 / v5) + v14 / v5 * (v14 / v5));
        v16 = 0.0;
        if (v15 < 1.0)
        {
          v16 = -((v15 * -2.0 + 3.0) * v15) * v15 + 1.0;
          v10 = v10 + v16;
        }

        v8[v11] = v16;
        ++v14;
        ++v11;
        --v13;
      }

      while (v13);
      ++v12;
    }

    while (v12 != v6);
  }

  v17 = 0;
  v18 = 0;
  v19 = 1.0 / v10;
  do
  {
    v20 = v8[v17];
    if (v20 != 0.0)
    {
      ++v18;
      v8[v17] = v19 * v20;
    }

    ++v17;
  }

  while (v7 * v7 != v17);
  if (!v18)
  {
    free(v8);
    goto LABEL_117;
  }

  v162 = self;
  v21 = [MEMORY[0x1E695DF70] arrayWithCapacity:v18];
  v22 = [MEMORY[0x1E695DF70] arrayWithCapacity:v18];
  v168 = 1 - v6;
  if (1 - v6 < v6)
  {
    v23 = 0;
    v24 = 1 - v6;
    v164 = 2 * v6 - 1;
    v166 = v6;
    do
    {
      v25 = v168;
      do
      {
        if (v9[v23] != 0.0)
        {
          v26 = [MEMORY[0x1E695F688] vectorWithX:v25 Y:v24];
          [v21 addObject:v26];

          v27 = v9[v23];
          *&v27 = v27;
          v28 = [MEMORY[0x1E696AD98] numberWithFloat:v27];
          [v22 addObject:v28];
        }

        ++v25;
        ++v23;
        --v7;
      }

      while (v7);
      ++v24;
      v7 = v164;
    }

    while (v24 != v166);
  }

  free(v9);
  v29 = objc_alloc_init(GUBilateralConvolution);
  v30 = *MEMORY[0x1E695FAB0];
  [(GUBilateralConvolution *)v29 setValue:v162->_inputImage forKey:*MEMORY[0x1E695FAB0]];
  [(GUBilateralConvolution *)v29 setValue:v21 forKey:@"inputPoints"];
  [(GUBilateralConvolution *)v29 setValue:v22 forKey:@"inputWeights"];
  [(GUBilateralConvolution *)v29 setValue:v162->_inputEdgeDetail forKey:@"inputEdgeDetail"];
  v31 = [(GUBilateralConvolution *)v29 valueForKey:*MEMORY[0x1E695FB50]];
  [(GUBilateralConvolution *)v29 setValue:0 forKey:v30];

LABEL_118:

  return v31;
}

@end