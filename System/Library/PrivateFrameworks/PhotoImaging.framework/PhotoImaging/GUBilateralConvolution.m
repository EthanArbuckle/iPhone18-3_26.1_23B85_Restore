@interface GUBilateralConvolution
+ (id)LabToRGBKernel;
+ (id)RGBToLabKernel;
+ (id)RGBToLabKernels;
+ (id)bilateralAdd1Kernel;
+ (id)bilateralAdd2Kernel;
+ (id)bilateralAdd3Kernel;
+ (id)bilateralAdd4Kernel;
+ (id)bilateralAdd5Kernel;
+ (id)bilateralAdd6Kernel;
+ (id)bilateralAdd7Kernel;
+ (id)bilateralAdd8Kernel;
+ (id)bilateralAdd9Kernel;
+ (id)bilateralFinalizeKernel;
+ (id)bilateralKernels;
- (CGRect)bilateralAddROI:(int64_t)a3 destRect:(CGRect)result userInfo:(id)a5;
- (CGRect)boundsForPointArray:(id)a3;
- (CGRect)enlargedBounds:(CGRect)a3 withPoints:(id)a4;
- (id)doBilateralPass:(id)a3 points:(id)a4 weights:(id)a5 sums:(id)a6 slope:(id)a7;
- (id)outputImage;
@end

@implementation GUBilateralConvolution

+ (id)LabToRGBKernel
{
  v2 = [a1 RGBToLabKernels];
  v3 = [v2 objectForKeyedSubscript:@"convertFromLabToRGB"];

  return v3;
}

+ (id)RGBToLabKernel
{
  v2 = [a1 RGBToLabKernels];
  v3 = [v2 objectForKeyedSubscript:@"convertFromRGBToLab"];

  return v3;
}

+ (id)bilateralFinalizeKernel
{
  v2 = [a1 bilateralKernels];
  v3 = [v2 objectForKeyedSubscript:@"bilateralFinalize"];

  return v3;
}

+ (id)bilateralAdd9Kernel
{
  v2 = [a1 bilateralKernels];
  v3 = [v2 objectForKeyedSubscript:@"bilateralAdd_9"];

  return v3;
}

+ (id)bilateralAdd8Kernel
{
  v2 = [a1 bilateralKernels];
  v3 = [v2 objectForKeyedSubscript:@"bilateralAdd_8"];

  return v3;
}

+ (id)bilateralAdd7Kernel
{
  v2 = [a1 bilateralKernels];
  v3 = [v2 objectForKeyedSubscript:@"bilateralAdd_7"];

  return v3;
}

+ (id)bilateralAdd6Kernel
{
  v2 = [a1 bilateralKernels];
  v3 = [v2 objectForKeyedSubscript:@"bilateralAdd_6"];

  return v3;
}

+ (id)bilateralAdd5Kernel
{
  v2 = [a1 bilateralKernels];
  v3 = [v2 objectForKeyedSubscript:@"bilateralAdd_5"];

  return v3;
}

+ (id)bilateralAdd4Kernel
{
  v2 = [a1 bilateralKernels];
  v3 = [v2 objectForKeyedSubscript:@"bilateralAdd_4"];

  return v3;
}

+ (id)bilateralAdd3Kernel
{
  v2 = [a1 bilateralKernels];
  v3 = [v2 objectForKeyedSubscript:@"bilateralAdd_3"];

  return v3;
}

+ (id)bilateralAdd2Kernel
{
  v2 = [a1 bilateralKernels];
  v3 = [v2 objectForKeyedSubscript:@"bilateralAdd_2"];

  return v3;
}

+ (id)bilateralAdd1Kernel
{
  v2 = [a1 bilateralKernels];
  v3 = [v2 objectForKeyedSubscript:@"bilateralAdd_1"];

  return v3;
}

+ (id)RGBToLabKernels
{
  if (RGBToLabKernels_onceToken != -1)
  {
    dispatch_once(&RGBToLabKernels_onceToken, &__block_literal_global_9);
  }

  v3 = RGBToLabKernels_RGBToLabKernels;

  return v3;
}

uint64_t __41__GUBilateralConvolution_RGBToLabKernels__block_invoke()
{
  v0 = [MEMORY[0x1E695F660] kernelsDictionaryWithString:{@"kernel vec4 convertFromRGBToLab(sampler src)\n{\nvec3 f\nvec4 pix, color;\npix = unpremultiply(sample(src, samplerCoord(src)));\ncolor.xyz = pix.r * vec3(0.449695, 0.316251, 0.18452 )\n+ pix.g * vec3(0.244634, 0.672034, 0.0833318)\n+ pix.b * vec3(0.0251829, 0.141184, 0.922602);\ncolor.xyz *= vec3(1.052111, 1.0, 0.918417);\nf = compare(color.xyz - 0.00885645, 7.787037 * color.xyz + 0.137931, pow(color.xyz, vec3(0.333333)));\ncolor.r = 116.0 * f.y - 16.0;\ncolor.g = 500.0 * (f.x - f.y);\ncolor.b = 200.0 * (f.y - f.z);\ncolor.rgb *= 0.005;\ncolor.a = 1.0;\nreturn color;\n}\nkernel vec4 convertFromLabToRGB(sampler src, sampler original)\n{\nvec3 f, cie;\nvec4 color, pix, opix;\npix = sample(src, samplerCoord(src));\nopix = sample(original, samplerCoord(original));\npix.rgb *= 200.0;\nf.y = (pix.r + 16.0) / 116.0;\nf.x = f.y + pix.g * 0.002;\nf.z = f.y - pix.b * 0.005;\ncolor.xyz = f * f * f;\ncie = compare(color.xyz - 0.00885645, (f.xyz - 0.137931) / 7.787037, color.xyz);\ncie *= vec3(0.95047, 1.0, 1.08883);\ncolor.rgb = cie.x * vec3(2.95176, -1.28951, -0.47388 )\n+ cie.y * vec3(-1.0851, 1.99084, 0.0372023)\n+ cie.z * vec3(0.0854804, -0.269456, 1.09113 );\ncolor.a = opix.a;\nreturn premultiply(color);\n}\n\n"}];;
  v1 = RGBToLabKernels_RGBToLabKernels;
  RGBToLabKernels_RGBToLabKernels = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)bilateralKernels
{
  if (bilateralKernels_onceToken != -1)
  {
    dispatch_once(&bilateralKernels_onceToken, &__block_literal_global_8399);
  }

  v3 = bilateralKernels_bilateralKernels;

  return v3;
}

uint64_t __42__GUBilateralConvolution_bilateralKernels__block_invoke()
{
  v0 = [MEMORY[0x1E695F660] kernelsDictionaryWithString:&cfstr_FloatLuminance];
  v1 = bilateralKernels_bilateralKernels;
  bilateralKernels_bilateralKernels = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (id)outputImage
{
  v61[1] = *MEMORY[0x1E69E9840];
  v3 = [(GUBilateralConvolution *)self samplesPerPass];
  v4 = [(NSArray *)self->_inputPoints count];
  v5 = [(NSArray *)self->_inputWeights count];
  if (v4)
  {
    v6 = v5 == v4;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    [(NSNumber *)self->_inputEdgeDetail floatValue];
    v58 = [MEMORY[0x1E696AD98] numberWithDouble:__exp10(v8 + -3.0) * -200.0];
    v9 = [MEMORY[0x1E695F680] samplerWithImage:self->_inputImage options:0];
    v10 = [objc_opt_class() RGBToLabKernel];
    [(CIImage *)self->_inputImage extent];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v56 = v9;
    v61[0] = v9;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v61 count:1];
    v20 = [v10 applyWithExtent:v19 arguments:{v12, v14, v16, v18}];

    v57 = [MEMORY[0x1E695F680] samplerWithImage:v20 options:0];
    v21 = 0;
    v22 = 0;
    v23 = v4;
    v24 = v4;
    do
    {
      v25 = v24 - v3;
      if (v24 >= v3)
      {
        v26 = v3;
      }

      else
      {
        v26 = v24;
      }

      if (v21)
      {
        v27 = [MEMORY[0x1E695F680] samplerWithImage:v20 options:0];

        v22 = v27;
      }

      v28 = [(NSArray *)self->_inputPoints subarrayWithRange:v21, v26];
      v29 = [(NSArray *)self->_inputWeights subarrayWithRange:v21, v26];
      v30 = [(GUBilateralConvolution *)self doBilateralPass:v57 points:v28 weights:v29 sums:v22 slope:v58];

      v21 += v3;
      v24 = v25;
      v20 = v30;
    }

    while (v21 < v23);
    v31 = [MEMORY[0x1E695F680] samplerWithImage:v30 options:0];

    v32 = [objc_opt_class() bilateralFinalizeKernel];
    [v30 extent];
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v60 = v31;
    v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v60 count:1];
    v42 = [v32 applyWithExtent:v41 arguments:{v34, v36, v38, v40}];

    v43 = [MEMORY[0x1E695F680] samplerWithImage:v42 options:0];

    v44 = [objc_opt_class() LabToRGBKernel];
    [v42 extent];
    v46 = v45;
    v48 = v47;
    v50 = v49;
    v52 = v51;
    v59[0] = v43;
    v59[1] = v56;
    v53 = [MEMORY[0x1E695DEC8] arrayWithObjects:v59 count:2];
    v54 = [v44 applyWithExtent:v53 arguments:{v46, v48, v50, v52}];

    v7 = v54;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)doBilateralPass:(id)a3 points:(id)a4 weights:(id)a5 sums:(id)a6 slope:(id)a7
{
  v263[6] = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = MEMORY[0x1E695F650];
  [v12 extent];
  [(GUBilateralConvolution *)self enlargedBounds:v13 withPoints:?];
  v18 = [v17 shapeWithRect:?];
  v19 = [v13 count];
  if (v15)
  {
    v20 = v15;
    v21 = [v20 definition];
    v251 = [v18 unionWith:v21];

    v22 = 1.0;
  }

  else
  {
    v20 = v12;
    v251 = v18;
    v22 = 0.0;
  }

  v253[0] = MEMORY[0x1E69E9820];
  v253[1] = 3221225472;
  v253[2] = __68__GUBilateralConvolution_doBilateralPass_points_weights_sums_slope___block_invoke;
  v253[3] = &unk_1E82AA768;
  v253[4] = self;
  v23 = v13;
  v254 = v23;
  v24 = MEMORY[0x1CCA61740](v253);
  v25 = v24;
  v26 = 0;
  v249 = v18;
  v250 = v16;
  v252 = v20;
  if (v19 > 4)
  {
    v240 = v12;
    if (v19 > 6)
    {
      v243 = v24;
      v238 = v15;
      if (v19 == 7)
      {
        v257[0] = v12;
        v257[1] = v20;
        v257[2] = v16;
        v235 = [v23 objectAtIndex:0];
        v257[3] = v235;
        v227 = [v23 objectAtIndex:1];
        v257[4] = v227;
        v220 = [v23 objectAtIndex:2];
        v257[5] = v220;
        v214 = [v23 objectAtIndex:3];
        v257[6] = v214;
        v208 = [v23 objectAtIndex:4];
        v257[7] = v208;
        v204 = [v23 objectAtIndex:5];
        v257[8] = v204;
        v200 = [v23 objectAtIndex:6];
        v257[9] = v200;
        v120 = MEMORY[0x1E695F688];
        v196 = [v14 objectAtIndex:0];
        [v196 floatValue];
        v122 = v121;
        v192 = [v14 objectAtIndex:1];
        [v192 floatValue];
        v124 = v123;
        v188 = [v14 objectAtIndex:2];
        [v188 floatValue];
        v126 = v125;
        v127 = [v14 objectAtIndex:3];
        [v127 floatValue];
        v129 = [v120 vectorWithX:v122 Y:v124 Z:v126 W:v128];
        v257[10] = v129;
        v130 = MEMORY[0x1E695F688];
        v131 = [v14 objectAtIndex:4];
        [v131 floatValue];
        v133 = v132;
        v134 = [v14 objectAtIndex:5];
        [v134 floatValue];
        v136 = v135;
        v137 = [v14 objectAtIndex:6];
        [v137 floatValue];
        v139 = [v130 vectorWithX:v133 Y:v136 Z:v138];
        v257[11] = v139;
        v140 = [MEMORY[0x1E696AD98] numberWithDouble:v22];
        v257[12] = v140;
        v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v257 count:13];

        v15 = v238;
        v12 = v240;

        v141 = [objc_opt_class() bilateralAdd7Kernel];
      }

      else
      {
        if (v19 != 8)
        {
          v27 = 0;
          v28 = v19 == 9;
          v29 = v251;
          v25 = v24;
          if (!v28)
          {
            goto LABEL_35;
          }

          v255[0] = v12;
          v255[1] = v252;
          v255[2] = v16;
          v230 = [v23 objectAtIndex:0];
          v255[3] = v230;
          v223 = [v23 objectAtIndex:1];
          v255[4] = v223;
          v217 = [v23 objectAtIndex:2];
          v255[5] = v217;
          v211 = [v23 objectAtIndex:3];
          v255[6] = v211;
          v206 = [v23 objectAtIndex:4];
          v255[7] = v206;
          v202 = [v23 objectAtIndex:5];
          v255[8] = v202;
          v198 = [v23 objectAtIndex:6];
          v255[9] = v198;
          v194 = [v23 objectAtIndex:7];
          v255[10] = v194;
          v190 = [v23 objectAtIndex:8];
          v255[11] = v190;
          v30 = MEMORY[0x1E695F688];
          v187 = [v14 objectAtIndex:0];
          [v187 floatValue];
          v32 = v31;
          v185 = [v14 objectAtIndex:1];
          [v185 floatValue];
          v34 = v33;
          v183 = [v14 objectAtIndex:2];
          [v183 floatValue];
          v36 = v35;
          v182 = [v14 objectAtIndex:3];
          [v182 floatValue];
          v181 = [v30 vectorWithX:v32 Y:v34 Z:v36 W:v37];
          v255[12] = v181;
          v38 = MEMORY[0x1E695F688];
          v39 = [v14 objectAtIndex:4];
          [v39 floatValue];
          v41 = v40;
          v42 = [v14 objectAtIndex:5];
          [v42 floatValue];
          v44 = v43;
          v45 = [v14 objectAtIndex:6];
          [v45 floatValue];
          v47 = v46;
          v48 = [v14 objectAtIndex:7];
          [v48 floatValue];
          v50 = [v38 vectorWithX:v41 Y:v44 Z:v47 W:v49];
          v255[13] = v50;
          v51 = [v14 objectAtIndex:9];
          v255[14] = v51;
          v52 = [MEMORY[0x1E696AD98] numberWithDouble:v22];
          v255[15] = v52;
          v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v255 count:16];

          v29 = v251;
          v25 = v243;

          v15 = v238;
          v12 = v240;

          v53 = [objc_opt_class() bilateralAdd9Kernel];
          goto LABEL_24;
        }

        v256[0] = v12;
        v256[1] = v20;
        v256[2] = v16;
        v237 = [v23 objectAtIndex:0];
        v256[3] = v237;
        v229 = [v23 objectAtIndex:1];
        v256[4] = v229;
        v222 = [v23 objectAtIndex:2];
        v256[5] = v222;
        v216 = [v23 objectAtIndex:3];
        v256[6] = v216;
        v210 = [v23 objectAtIndex:4];
        v256[7] = v210;
        v205 = [v23 objectAtIndex:5];
        v256[8] = v205;
        v201 = [v23 objectAtIndex:6];
        v256[9] = v201;
        v197 = [v23 objectAtIndex:7];
        v256[10] = v197;
        v157 = MEMORY[0x1E695F688];
        v193 = [v14 objectAtIndex:0];
        [v193 floatValue];
        v159 = v158;
        v189 = [v14 objectAtIndex:1];
        [v189 floatValue];
        v161 = v160;
        v186 = [v14 objectAtIndex:2];
        [v186 floatValue];
        v163 = v162;
        v184 = [v14 objectAtIndex:3];
        [v184 floatValue];
        v165 = [v157 vectorWithX:v159 Y:v161 Z:v163 W:v164];
        v256[11] = v165;
        v166 = MEMORY[0x1E695F688];
        v167 = [v14 objectAtIndex:4];
        [v167 floatValue];
        v169 = v168;
        v170 = [v14 objectAtIndex:5];
        [v170 floatValue];
        v172 = v171;
        v173 = [v14 objectAtIndex:6];
        [v173 floatValue];
        v175 = v174;
        v176 = [v14 objectAtIndex:7];
        [v176 floatValue];
        v178 = [v166 vectorWithX:v169 Y:v172 Z:v175 W:v177];
        v256[12] = v178;
        v179 = [MEMORY[0x1E696AD98] numberWithDouble:v22];
        v256[13] = v179;
        v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v256 count:14];

        v15 = v238;
        v12 = v240;

        v141 = [objc_opt_class() bilateralAdd8Kernel];
      }

      v99 = v141;
      v29 = v251;
      [v251 extent];
      v104 = v99;
      v25 = v243;
      goto LABEL_33;
    }

    if (v19 != 5)
    {
      v27 = 0;
      v28 = v19 == 6;
      v29 = v251;
      if (!v28)
      {
        goto LABEL_35;
      }

      v258[0] = v12;
      v258[1] = v252;
      v258[2] = v16;
      v233 = [v23 objectAtIndex:0];
      v258[3] = v233;
      v225 = [v23 objectAtIndex:1];
      v258[4] = v225;
      v219 = [v23 objectAtIndex:2];
      v258[5] = v219;
      v213 = [v23 objectAtIndex:3];
      v258[6] = v213;
      v207 = [v23 objectAtIndex:4];
      v258[7] = v207;
      v203 = [v23 objectAtIndex:5];
      v258[8] = v203;
      v246 = v25;
      v80 = MEMORY[0x1E695F688];
      v199 = [v14 objectAtIndex:0];
      [v199 floatValue];
      v82 = v81;
      v195 = [v14 objectAtIndex:1];
      [v195 floatValue];
      v84 = v83;
      v191 = [v14 objectAtIndex:2];
      [v191 floatValue];
      v86 = v85;
      v87 = [v14 objectAtIndex:3];
      [v87 floatValue];
      v89 = [v80 vectorWithX:v82 Y:v84 Z:v86 W:v88];
      v258[9] = v89;
      v90 = MEMORY[0x1E695F688];
      v91 = [v14 objectAtIndex:4];
      [v91 floatValue];
      v93 = v92;
      v94 = [v14 objectAtIndex:5];
      [v94 floatValue];
      v96 = [v90 vectorWithX:v93 Y:v95];
      v258[10] = v96;
      [MEMORY[0x1E696AD98] numberWithDouble:v22];
      v98 = v97 = v15;
      v258[11] = v98;
      v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v258 count:12];

      v15 = v97;
      v29 = v251;

      v25 = v246;
      v12 = v240;

      v53 = [objc_opt_class() bilateralAdd6Kernel];
LABEL_24:
      v99 = v53;
LABEL_30:
      [v29 extent];
      v104 = v99;
LABEL_33:
      v105 = v25;
      goto LABEL_34;
    }

    v259[0] = v12;
    v259[1] = v20;
    v259[2] = v16;
    v248 = [v23 objectAtIndex:0];
    v259[3] = v248;
    v236 = [v23 objectAtIndex:1];
    v259[4] = v236;
    v228 = [v23 objectAtIndex:2];
    v259[5] = v228;
    v221 = [v23 objectAtIndex:3];
    v259[6] = v221;
    v215 = [v23 objectAtIndex:4];
    v259[7] = v215;
    v142 = MEMORY[0x1E695F688];
    v209 = [v14 objectAtIndex:0];
    [v209 floatValue];
    v144 = v143;
    v145 = [v14 objectAtIndex:1];
    [v145 floatValue];
    v147 = v146;
    [v14 objectAtIndex:2];
    v148 = v239 = v15;
    [v148 floatValue];
    v150 = v149;
    [v14 objectAtIndex:3];
    v152 = v151 = v25;
    [v152 floatValue];
    v154 = [v142 vectorWithX:v144 Y:v147 Z:v150 W:v153];
    v259[8] = v154;
    v155 = [v14 objectAtIndex:4];
    v259[9] = v155;
    v156 = [MEMORY[0x1E696AD98] numberWithDouble:v22];
    v259[10] = v156;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v259 count:11];

    v25 = v151;
    v15 = v239;

    v12 = v240;
    v119 = [objc_opt_class() bilateralAdd5Kernel];
    goto LABEL_29;
  }

  if (v19 > 2)
  {
    if (v19 != 3)
    {
      v27 = 0;
      v28 = v19 == 4;
      v29 = v251;
      if (!v28)
      {
        goto LABEL_35;
      }

      v260[0] = v12;
      v260[1] = v252;
      v260[2] = v16;
      v232 = [v23 objectAtIndex:0];
      v260[3] = v232;
      v224 = [v23 objectAtIndex:1];
      v260[4] = v224;
      v218 = [v23 objectAtIndex:2];
      v260[5] = v218;
      v212 = [v23 objectAtIndex:3];
      v260[6] = v212;
      v65 = MEMORY[0x1E695F688];
      [v14 objectAtIndex:0];
      v66 = v241 = v12;
      [v66 floatValue];
      v68 = v67;
      v69 = [v14 objectAtIndex:1];
      [v69 floatValue];
      v71 = v70;
      [v14 objectAtIndex:2];
      v72 = v245 = v25;
      [v72 floatValue];
      v74 = v73;
      v75 = [v14 objectAtIndex:3];
      [v75 floatValue];
      v77 = [v65 vectorWithX:v68 Y:v71 Z:v74 W:v76];
      v260[7] = v77;
      [MEMORY[0x1E696AD98] numberWithDouble:v22];
      v79 = v78 = v15;
      v260[8] = v79;
      v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v260 count:9];

      v15 = v78;
      v25 = v245;

      v29 = v251;
      v12 = v241;

      v53 = [objc_opt_class() bilateralAdd4Kernel];
      goto LABEL_24;
    }

    v261[0] = v12;
    v261[1] = v20;
    v261[2] = v16;
    v234 = [v23 objectAtIndex:0];
    v261[3] = v234;
    v226 = [v23 objectAtIndex:1];
    v261[4] = v226;
    [v23 objectAtIndex:2];
    v106 = v242 = v12;
    v261[5] = v106;
    v107 = MEMORY[0x1E695F688];
    v108 = [v14 objectAtIndex:0];
    [v108 floatValue];
    v110 = v109;
    [v14 objectAtIndex:1];
    v111 = v247 = v25;
    [v111 floatValue];
    v113 = v112;
    [v14 objectAtIndex:2];
    v115 = v114 = v15;
    [v115 floatValue];
    v117 = [v107 vectorWithX:v110 Y:v113 Z:v116];
    v261[6] = v117;
    v118 = [MEMORY[0x1E696AD98] numberWithDouble:v22];
    v261[7] = v118;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v261 count:8];

    v15 = v114;
    v25 = v247;

    v12 = v242;
    v119 = [objc_opt_class() bilateralAdd3Kernel];
LABEL_29:
    v99 = v119;
    v29 = v251;
    goto LABEL_30;
  }

  if (v19 == 1)
  {
    v263[0] = v12;
    v263[1] = v20;
    v263[2] = v16;
    [v23 objectAtIndex:0];
    v101 = v100 = v25;
    v263[3] = v101;
    v102 = [v14 objectAtIndex:0];
    v263[4] = v102;
    v103 = [MEMORY[0x1E696AD98] numberWithDouble:v22];
    v263[5] = v103;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v263 count:6];

    v25 = v100;
    v99 = [objc_opt_class() bilateralAdd1Kernel];
    v29 = v251;
    [v251 extent];
    v104 = v99;
    v105 = v100;
LABEL_34:
    v27 = [v104 applyWithExtent:v105 roiCallback:v26 arguments:?];

    v18 = v249;
    v16 = v250;
    goto LABEL_35;
  }

  v27 = 0;
  v28 = v19 == 2;
  v29 = v251;
  if (v28)
  {
    v262[0] = v12;
    v262[1] = v252;
    v262[2] = v16;
    v231 = [v23 objectAtIndex:0];
    v262[3] = v231;
    v54 = [v23 objectAtIndex:1];
    v262[4] = v54;
    v55 = MEMORY[0x1E695F688];
    [v14 objectAtIndex:0];
    v56 = v244 = v25;
    [v56 floatValue];
    v58 = v57;
    [v14 objectAtIndex:1];
    v60 = v59 = v12;
    [v60 floatValue];
    v62 = [v55 vectorWithX:v58 Y:v61];
    v262[5] = v62;
    [MEMORY[0x1E696AD98] numberWithDouble:v22];
    v64 = v63 = v15;
    v262[6] = v64;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v262 count:7];

    v15 = v63;
    v12 = v59;

    v25 = v244;
    v29 = v251;

    v53 = [objc_opt_class() bilateralAdd2Kernel];
    goto LABEL_24;
  }

LABEL_35:

  return v27;
}

- (CGRect)bilateralAddROI:(int64_t)a3 destRect:(CGRect)result userInfo:(id)a5
{
  if (!a3)
  {
    [(GUBilateralConvolution *)self enlargedBounds:a5 withPoints:result.origin.x, result.origin.y, result.size.width, result.size.height, v5, v6];
  }

  return result;
}

- (CGRect)enlargedBounds:(CGRect)a3 withPoints:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(GUBilateralConvolution *)self boundsForPointArray:a4];
  v9 = x + v8;
  v11 = y + v10;
  v13 = width + v12;
  v15 = height + v14;
  result.size.height = v15;
  result.size.width = v13;
  result.origin.y = v11;
  result.origin.x = v9;
  return result;
}

- (CGRect)boundsForPointArray:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (![v3 count])
  {
    v22 = NUAssertLogger_8454();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "points.count > 0"];
      *buf = 138543362;
      v36 = v23;
      _os_log_error_impl(&dword_1C7694000, v22, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v24 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v26 = NUAssertLogger_8454();
    v27 = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v27)
      {
        v30 = dispatch_get_specific(*v24);
        v31 = MEMORY[0x1E696AF00];
        v32 = v30;
        v33 = [v31 callStackSymbols];
        v34 = [v33 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v36 = v30;
        v37 = 2114;
        v38 = v34;
        _os_log_error_impl(&dword_1C7694000, v26, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v27)
    {
      v28 = [MEMORY[0x1E696AF00] callStackSymbols];
      v29 = [v28 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v36 = v29;
      _os_log_error_impl(&dword_1C7694000, v26, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v4 = [v3 count];
  v5 = [v3 objectAtIndex:0];
  [v5 X];
  v7 = v6;
  [v5 Y];
  v9 = v8;
  if (v4 < 2)
  {
    v12 = v7;
    v11 = v8;
  }

  else
  {
    v10 = 1;
    v11 = v8;
    v12 = v7;
    do
    {
      v13 = v5;
      v5 = [v3 objectAtIndex:v10];

      [v5 X];
      v15 = v14;
      [v5 Y];
      if (v15 > v12)
      {
        v17 = v15;
      }

      else
      {
        v17 = v12;
      }

      if (v15 < v7)
      {
        v7 = v15;
      }

      else
      {
        v12 = v17;
      }

      if (v16 >= v9)
      {
        if (v16 > v11)
        {
          v11 = v16;
        }
      }

      else
      {
        v9 = v16;
      }

      ++v10;
    }

    while (v4 != v10);
  }

  v18 = v12 - v7;
  v19 = v11 - v9;
  v20 = v7;
  v21 = v9;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

@end