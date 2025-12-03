@interface PIRepairUtilities
+ (BOOL)applyRepairMLStrokeToMutableBuffer:(id)buffer brushStroke:(id)stroke detectedFaces:(id)faces context:(id)context error:(id *)error;
+ (BOOL)transcodePixelBuffer:(id)buffer toBuffer:(id)toBuffer error:(id *)error;
+ (CGImage)newWatchInfillFromImage:(CGImage *)image mask:(CGImage *)mask;
+ (id)brushStrokeFromRetouchStrokeDictionary:(id)dictionary;
+ (id)extractRGBAfPixelsFromImage:(id)image fromROI:(id *)i;
+ (id)prepareForCIFilterWithFaces:(id)faces cropRect:(id *)rect;
+ (void)applyRepairStrokeToMutableBuffer:(id)buffer brushStroke:(id)stroke sourceOffset:(CGPoint)offset repairEdges:(BOOL)edges;
+ (void)calcExtentsForStrokeRadius:(double)radius offset:(id)offset inputImageExtent:(id *)extent maskExtent:(id *)maskExtent repairExtent:(id *)repairExtent textureExtent:(id *)textureExtent sourceExtent:(id *)sourceExtent;
@end

@implementation PIRepairUtilities

+ (CGImage)newWatchInfillFromImage:(CGImage *)image mask:(CGImage *)mask
{
  v4 = 0;
  if (image)
  {
    if (mask)
    {
      Width = CGImageGetWidth(image);
      Height = CGImageGetHeight(image);
      v4 = 0;
      if (Width - 8193 >= 0xFFFFFFFFFFFFE036)
      {
        v9 = Height;
        if (Height - 8193 >= 0xFFFFFFFFFFFFE036)
        {
          if (Width == CGImageGetWidth(mask) && v9 == CGImageGetHeight(mask))
          {
            v10 = malloc_type_malloc(4 * v9 * Width, 0x100004052888210uLL);
            name = *MEMORY[0x1E695F1C0];
            v11 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
            v12 = 1;
            v13 = CGBitmapContextCreate(v10, Width, v9, 8uLL, 4 * Width, v11, 1u);
            CGColorSpaceRelease(v11);
            CGContextSetInterpolationQuality(v13, kCGInterpolationHigh);
            v235.origin.x = 0.0;
            v235.origin.y = 0.0;
            v235.size.width = Width;
            v235.size.height = v9;
            CGContextDrawImage(v13, v235, image);
            CGContextRelease(v13);
            v14 = malloc_type_malloc(v9 * Width, 0x100004077774924uLL);
            v15 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F120]);
            v16 = CGBitmapContextCreate(v14, Width, v9, 8uLL, Width, v15, 0);
            CGColorSpaceRelease(v15);
            CGContextSetInterpolationQuality(v16, kCGInterpolationHigh);
            v236.origin.x = 0.0;
            v236.origin.y = 0.0;
            v236.size.width = Width;
            v236.size.height = v9;
            CGContextDrawImage(v16, v236, mask);
            CGContextRelease(v16);
            v207 = v14;
            v208 = v10;
            v221 = v10;
            v222 = v14;
            v223 = Width;
            v224 = v9;
            v225.i32[0] = Width + 22;
            v225.i32[1] = v9 + 22;
            v17 = 4;
            v18 = 9;
            v226[0] = 4;
            do
            {
              v19 = 1812433253 * (v17 ^ (v17 >> 30));
              v17 = v19 + v12;
              *(&v221 + v18) = v18 + v19 - 8;
              ++v12;
              ++v18;
            }

            while (v18 != 632);
            v20 = 0;
            memset(v233, 0, 44);
            v232 = 0u;
            memset(__p, 0, sizeof(__p));
            memset(v230, 0, sizeof(v230));
            v229 = 0u;
            v228 = 0u;
            v227 = 0u;
            __asm { FMOV            V0.2D, #21.0 }

            v212 = _Q0;
            do
            {
              _ZNSt3__16vectorIDv2_sNS_9allocatorIS1_EEE7reserveEm(&__p[1] + 3 * v20 + 1, 0x22uLL);
              v25 = 0;
              v26 = v20 + 1;
              do
              {
                v28 = __sincos_stret(v25 * 6.28318531 / 17.0);
                v27.f64[0] = v28.__cosval;
                v27.f64[1] = v28.__sinval;
                v29 = vmovn_s64(vcvtq_s64_f64(vmulq_n_f64(vmulq_f64(v27, v212), (v20 + 1))));
                HIWORD(v234[0]) = v29.i16[2];
                LOWORD(v234[0]) = v29.i16[0];
                _ZNSt3__16vectorIDv2_sNS_9allocatorIS1_EEE9push_backB8ne200100ERKS1_(&__p[1] + 24 * v20 + 8, v234);
                ++v25;
              }

              while (v25 != 17);
              for (i = 0; i != 17; ++i)
              {
                v32 = __sincos_stret(i * 6.28318531 / 17.0);
                v31.f64[0] = v32.__cosval;
                v31.f64[1] = v32.__sinval;
                v33 = vmovn_s64(vcvtq_s64_f64(vmulq_n_f64(vmulq_f64(v31, v212), (2 * v20 + 5))));
                HIWORD(v234[0]) = v33.i16[2];
                LOWORD(v234[0]) = v33.i16[0];
                _ZNSt3__16vectorIDv2_sNS_9allocatorIS1_EEE9push_backB8ne200100ERKS1_(&__p[1] + 24 * v20 + 8, v234);
              }

              ++v20;
            }

            while (v26 != 3);
            v34 = v233[4];
            v36 = v233[3];
            v35 = v233[2];
            if ((v233[4] - v233[2]) <= 0x1E3)
            {
              operator new();
            }

            v37 = 0;
            v38.i32[1] = 0;
            do
            {
              v39 = fabsf((v37 - 5));
              v40 = (v39 * 0.17273) * (v39 * 0.17273);
              for (j = -5; j != 6; ++j)
              {
                v42 = fabsf(j);
                v43 = sqrtf(v40 + ((v42 * 0.17273) * (v42 * 0.17273)));
                if (v43 <= 1.0)
                {
                  v44 = 1.0 - v43;
                }

                else
                {
                  v44 = 0.0;
                }

                if (v36 >= v34)
                {
                  v45 = v36 - v35;
                  v46 = (v36 - v35) >> 2;
                  v47 = v46 + 1;
                  if ((v46 + 1) >> 62)
                  {
                    std::vector<float>::__throw_length_error[abi:ne200100]();
                  }

                  if ((v34 - v35) >> 1 > v47)
                  {
                    v47 = (v34 - v35) >> 1;
                  }

                  if ((v34 - v35) >= 0x7FFFFFFFFFFFFFFCLL)
                  {
                    v48 = 0x3FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v48 = v47;
                  }

                  if (v48)
                  {
                    std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(v48);
                  }

                  v49 = (v36 - v35) >> 2;
                  v50 = (4 * v46);
                  v34 = 0;
                  v51 = (4 * v46 - 4 * v49);
                  *v50 = v44;
                  v36 = v50 + 1;
                  memcpy(v51, v35, v45);
                  v233[2] = v51;
                  v233[4] = 0;
                  if (v35)
                  {
                    operator delete(v35);
                  }

                  v35 = v51;
                }

                else
                {
                  *v36++ = v44;
                }

                v233[3] = v36;
              }

              ++v37;
            }

            while (v37 != 11);
            v52 = v223;
            v53 = v224;
            v213 = v225.i32[0];
            v54 = v225.i32[1] * v225.i32[0];
            if (v54 <= *(&v229 + 1) - v229)
            {
              if (v54 < *(&v229 + 1) - v229)
              {
                *(&v229 + 1) = v229 + v54;
              }
            }

            else
            {
              if (v230[0] - *(&v229 + 1) < v54 - (*(&v229 + 1) - v229))
              {
                if ((v54 & 0x80000000) == 0)
                {
                  operator new();
                }

                std::vector<float>::__throw_length_error[abi:ne200100]();
              }

              v55 = v54 + v229;
              bzero(*(&v229 + 1), v54 - (*(&v229 + 1) - v229));
              *(&v229 + 1) = v55;
            }

            _ZNSt3__16vectorIDv4_fNS_9allocatorIS1_EEE6resizeEm(&v230[1], v54);
            _ZNSt3__16vectorIDv4_fNS_9allocatorIS1_EEE6resizeEm(__p, v54);
            v56 = v230[1];
            v57 = *&__p[0];
            v59 = v221;
            v58 = v222;
            v60 = v229;
            bzero(v229, v54);
            bzero(v57, 16 * v54);
            bzero(v56, 16 * v54);
            if (v53 <= 0)
            {
              _ZNSt3__16vectorIDv2_sNS_9allocatorIS1_EEE7reserveEm(&v227 + 1, v54);
            }

            else
            {
              v61 = 0;
              v62 = 11 * v213 + 11;
              v63 = &v57[16 * v62];
              v64 = &v56[16 * v62];
              v65 = (v60 + v62);
              do
              {
                if (v52 >= 1)
                {
                  v66 = v52;
                  v67 = v58;
                  do
                  {
                    if (*v67 <= 5u)
                    {
                      *v65 = 1;
                      *(&v68 + 3) = HIBYTE(*v59) / 255.0;
                      *v64 = v68;
                      *v63 = v68;
                    }

                    ++v67;
                    ++v65;
                    ++v59;
                    v64 += 16;
                    v63 += 16;
                    --v66;
                  }

                  while (v66);
                  v58 += (v52 - 1) + 1;
                }

                v65 += 22;
                v64 += 352;
                v63 += 352;
                ++v61;
              }

              while (v61 != v53);
              _ZNSt3__16vectorIDv2_sNS_9allocatorIS1_EEE7reserveEm(&v227 + 1, v54);
              for (k = 0; k != v53; ++k)
              {
                if (v52 >= 1)
                {
                  for (m = 0; m != v52; ++m)
                  {
                    HIWORD(v220) = k + 11;
                    LOWORD(v220) = m + 11;
                    HIWORD(v234[0]) = k + 11;
                    LOWORD(v234[0]) = m + 11;
                    {
                      _ZNSt3__16vectorIDv2_sNS_9allocatorIS1_EEE9push_backB8ne200100ERKS1_(&v227 + 8, v234);
                    }
                  }
                }
              }
            }

            v72 = v225.i32[0];
            if (v228 != *(&v227 + 1))
            {
              v73 = v229;
              v69.i32[0] = 11;
              v74 = vshl_n_s32(v69, 0x10uLL);
              v75 = vshr_n_s32(v74, 0x10uLL);
              v76 = vdup_n_s32(0xFFFBu);
              v74.i32[0] = 11;
              v77 = vshr_n_s32(vshl_n_s32(v74, 0x10uLL), 0x10uLL);
              while (1)
              {
                v78 = std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(v226);
                v79 = (v228 - *(&v227 + 1)) >> 2;
                v80 = (*(&v227 + 1) + 4 * (v78 % v79));
                v81.i16[0] = *v80;
                v81.i16[2] = v80[1];
                v82 = v228 - (v80 + 2);
                v214 = v81;
                if (v228 != v80 + 2)
                {
                  memmove((*(&v227 + 1) + 4 * (v78 % v79)), v80 + 2, v228 - (v80 + 2));
                  v81 = v214;
                }

                *&v228 = v80 + v82;
                v83 = v81.i16[2];
                if (*(v73 + v72 * v81.i16[2] + v81.i16[0]) == 1)
                {
                  goto LABEL_138;
                }

                HIWORD(v219) = v81.i16[2];
                LOWORD(v219) = v81.i16[0];
                v84 = v81.i16[0];
                v85 = &__p[1] + 24 * (std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(v226) % 3) + 8;
                v90 = *v85;
                v91 = *(v85 + 1);
                if (v90 == v91)
                {
                  *&v89 = 0xFFFF0000FFFFLL;
                  v38.i32[0] = 1900671690;
                  v93 = v214;
                }

                else
                {
                  v92 = v225;
                  v93 = v214;
                  v94 = vadd_s32(v214, v76);
                  v86 = vadd_s32(v225, 0x1500000015);
                  v95 = v225.i32[0] * v94.i16[2];
                  v96 = v225.i32[0] - 11;
                  v97 = v230[1] + 16 * v95 + 16 * v94.i16[0];
                  v98 = v229 + v95 + v94.i16[0];
                  v99 = 16 * v96 + 176;
                  *&v89 = 0xFFFF0000FFFFLL;
                  v38.i32[0] = 1900671690;
                  do
                  {
                    v92.i16[0] = *v90;
                    v92.i16[2] = v90[1];
                    v92 = vadd_s32(v92, v214);
                    v100 = vadd_s32(v92, v76);
                    v101 = v100.i16[0];
                    v102 = -1.0;
                    if (v100.i16[0] >= 22)
                    {
                      v107 = v100.i16[2];
                      if (v100.i16[2] >= 22)
                      {
                        v108 = vcgt_s32(v86, vshr_n_s32(vshl_n_s32(vadd_s32(v92, 0x600000006), 0x10uLL), 0x10uLL));
                        if (v108.i8[0] & 1) != 0 && (v108.i8[4])
                        {
                          v109 = 0;
                          v110 = 0;
                          v111 = v101;
                          v112 = v225.i32[0] * v107;
                          v113 = v230[1] + 16 * v112 + 16 * v101;
                          v114 = v229 + v112 + v111;
                          v115 = 0.0;
                          v116 = v97;
                          v117 = v233[2];
                          v118 = v98;
                          do
                          {
                            v119 = 0;
                            do
                            {
                              if (v117[v119] > 0.0)
                              {
                                if (!*(v114 + v119))
                                {
                                  goto LABEL_71;
                                }

                                if (*(v118 + v119))
                                {
                                  ++v110;
                                  v120 = vsubq_f32(*(v113 + 16 * v119), *(v116 + 16 * v119));
                                  v88 = vmulq_f32(v120, v120);
                                  v115 = v115 + (v88.f32[2] + vaddv_f32(*v88.f32));
                                }
                              }

                              ++v119;
                            }

                            while (v119 != 11);
                            v114 += 11 + v96;
                            v118 += 11 + v96;
                            ++v109;
                            v116 += v99;
                            v113 += v99;
                            v117 += 11;
                          }

                          while (v109 != 11);
                          v102 = v115 / v110;
                        }
                      }
                    }

LABEL_71:
                    v103 = v102 >= 0.0;
                    v104 = v102 < v38.f32[0];
                    _ZF = !v103 || !v104;
                    if (v103 && v104)
                    {
                      v106 = -1;
                    }

                    else
                    {
                      v106 = 0;
                    }

                    v87 = vdup_n_s32(v106);
                    *&v89 = vbsl_s8(v87, v92, *&v89);
                    if (!_ZF)
                    {
                      v38.f32[0] = v102;
                    }

                    v90 += 2;
                  }

                  while (v90 != v91);
                }

                if ((v89 & 0x8000) != 0)
                {
                  for (n = 0; n != 32; n += 4)
                  {
                    v86.i16[0] = *(&_ZZN12_GLOBAL__N_119_NTKUltraCubeFiller10tryResolveEDv2_sE4adjs + n);
                    v86.i16[2] = *(&_ZZN12_GLOBAL__N_119_NTKUltraCubeFiller10tryResolveEDv2_sE4adjs + n + 2);
                    v86 = vadd_s32(v86, v93);
                    HIWORD(v217) = v86.i16[2];
                    LOWORD(v217) = v86.i16[0];
                    if (v86.i16[0] >= 11)
                    {
                      v160 = v217 >> 16;
                      v161 = v217 >> 16 >= 11 && v86.i16[0] < v225.i32[0] - 11;
                      if (v161 && v160 < v225.i32[1] - 11)
                      {
                        if (*(v229 + v160 * v225.i32[0] + v86.i16[0]))
                        {
                          if (!*(v229 + v225.i32[0] * (v219 >> 16) + v84))
                          {
                            v210 = v86;
                            *__n = v89;
                            v163 = std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(v226);
                            *(&v89 + 1) = __n[1];
                            v93 = v214;
                            v86.f32[0] = (v163 % 0x3E8);
                            *&v89 = vbsl_s8(*&vmovl_s16(vcgt_f32(v38, v86)), v210, __n[0]);
                            if (v38.f32[0] > v86.f32[0])
                            {
                              v38.f32[0] = (v163 % 0x3E8);
                            }
                          }
                        }
                      }
                    }
                  }

                  if ((v89 & 0x8000) != 0)
                  {
                    goto LABEL_138;
                  }

                  HIWORD(v216) = WORD2(v89);
                  LOWORD(v216) = v89;
                  v165 = v225.i32[0];
                  v164 = v225.i32[1];
                  v166 = v225.i32[0] * v83;
                  v167 = v230[1] + 16 * v166;
                  v168 = *&__p[0] + 16 * v166;
                  v169 = v229 + v166;
                  v170 = vaddq_f32(*(v230[1] + 16 * v225.i32[0] * (v216 >> 16) + 16 * v89), *(v168 + 16 * v84));
                  v171 = vmulq_n_f32(v170, 1.0 / v170.f32[3]);
                  v171.i32[3] = 1.0;
                  *(v168 + 16 * v84) = v170;
                  *(v167 + 16 * v84) = v171;
                  *(v169 + v84) = 1;
                  *v170.f32 = vadd_s32(v93, 0xFFFF0000FFFFLL);
                  v172.i32[1] = v170.i32[1];
                  v172.i32[0] = 11;
                  *v170.f32 = vbsl_s8(vdup_lane_s32(vcgt_s32(v75, vshr_n_s32(vshl_n_s32(*v170.f32, 0x10uLL), 0x10uLL)), 0), v172, *v170.f32);
                  *v171.f32 = vdup_lane_s32(vcgt_s32(v75, vshr_n_s32(vshl_n_s32(vdup_lane_s32(*v170.f32, 1), 0x10uLL), 0x10uLL)), 0);
                  v173 = vadd_s32(v93, 0x100000001);
                  v87.i32[0] = v165 - 11;
                  v88.i32[0] = v173.i16[0];
                  v174 = vmovl_s16(vcgt_s32(v87, *v88.f32)).u64[0];
                  v175.i32[1] = v173.i32[1];
                  v175.i32[0] = v165 - 12;
                  v176 = vbsl_s8(v174, v173, v175);
                  v177 = v170.u32[0] | 0xB00000000;
                  v178 = vbsl_s8(*v171.f32, v177, *v170.f32);
                  v171.i32[0] = v176.i16[2];
                  LODWORD(v177) = v164 - 11;
                  v171.i64[0] = vmovl_s16(vcgt_s32(v177, *v171.f32)).u64[0];
                  LODWORD(v177) = v176.i32[0];
                  HIDWORD(v177) = v164 - 12;
                  v179 = vbsl_s8(*v171.f32, v176, v177);
                  v180 = v178.i16[2];
                  if (v178.i16[2] <= v179.i16[2])
                  {
                    v181 = v179.i16[2];
                    v182 = v178.i16[0];
                    v183 = v179.i16[0];
                    if (v178.i16[0] <= v179.i16[0])
                    {
                      v184 = v179.i16[0];
                    }

                    else
                    {
                      v184 = v178.i16[0];
                    }

                    v185 = v184 + 1;
                    do
                    {
                      v186 = v182;
                      if (v182 <= v183)
                      {
                        do
                        {
                          HIWORD(v215) = v180;
                          LOWORD(v215) = v186;
                          HIWORD(v234[0]) = v180;
                          LOWORD(v234[0]) = v186;
                          {
                            _ZNSt3__16vectorIDv2_sNS_9allocatorIS1_EEE9push_backB8ne200100ERKS1_(&v227 + 8, v234);
                          }

                          ++v186;
                        }

                        while (v185 != v186);
                      }

                      _ZF = v180++ == v181;
                    }

                    while (!_ZF);
                  }
                }

                else
                {
                  v121 = 0;
                  v122 = v225.i32[1];
                  v123 = v225.i32[0];
                  v124 = vadd_s32(*&v89, v76);
                  v125 = vadd_s32(v93, v76);
                  v126 = v124.i16[0];
                  v127 = vmul_s32(vdup_n_s32(v225.u32[0]), vshr_n_s32(vshl_n_s32(vzip2_s32(v124, v125), 0x10uLL), 0x10uLL));
                  v128 = (v230[1] + 16 * v127.i32[0] + 16 * v126);
                  v129 = v229;
                  v130 = (v230[1] + 16 * v127.i32[1] + 16 * v125.i16[0]);
                  v131 = (*&__p[0] + 16 * v127.i32[1] + 16 * v125.i16[0]);
                  v132 = v233[2];
                  v133 = v225.i32[0] - 11;
                  do
                  {
                    v134 = 11;
                    do
                    {
                      if (*v132 > 0.0)
                      {
                        v135 = vmlaq_n_f32(*v131, *v128, *v132);
                        v136 = vmulq_n_f32(v135, 1.0 / v135.f32[3]);
                        v136.i32[3] = 1.0;
                        *v131 = v135;
                        *v130 = v136;
                      }

                      ++v128;
                      ++v130;
                      ++v131;
                      ++v132;
                      --v134;
                    }

                    while (v134);
                    v128 += v133;
                    v130 += v133;
                    ++v121;
                    v131 += v133;
                  }

                  while (v121 != 11);
                  v137 = v129 + v123 * (v83 - 1) + v219;
                  *(v137 + 1) = 1;
                  *(v137 - 1) = 257;
                  v138 = v137 + v123;
                  v139 = v138 + v123;
                  *(v138 + 1) = 1;
                  *(v138 - 1) = 257;
                  v140 = vadd_s32(v93, vdup_n_s32(0xFFFEu));
                  v141 = vdup_lane_s32(vcgt_s32(v77, vshr_n_s32(vshl_n_s32(v140, 0x10uLL), 0x10uLL)), 0);
                  v142 = vadd_s32(v93, 0x200000002);
                  v143.i32[1] = v140.i32[1];
                  v143.i32[0] = 11;
                  v144 = vbsl_s8(v141, v143, v140);
                  v141.i32[0] = v133;
                  v143.i32[0] = v142.i16[0];
                  v145 = vmovl_s16(vcgt_s32(v141, v143)).u64[0];
                  v143.i32[1] = v142.i32[1];
                  v143.i32[0] = v123 - 12;
                  v146 = vbsl_s8(v145, v142, v143);
                  *(v139 + 1) = 1;
                  v147 = vdup_lane_s32(vcgt_s32(v77, vshr_n_s32(vshl_n_s32(vdup_lane_s32(v144, 1), 0x10uLL), 0x10uLL)), 0);
                  *(v139 - 1) = 257;
                  v148 = v144.u32[0] | 0xB00000000;
                  v149 = vbsl_s8(v147, v148, v144);
                  v147.i32[0] = v146.i16[2];
                  LODWORD(v148) = v122 - 11;
                  v150 = vmovl_s16(vcgt_s32(v148, v147)).u64[0];
                  LODWORD(v148) = v146.i32[0];
                  HIDWORD(v148) = v122 - 12;
                  v151 = vbsl_s8(v150, v146, v148);
                  v152 = v149.i16[2];
                  if (v149.i16[2] <= v151.i16[2])
                  {
                    v153 = v151.i16[2];
                    v154 = v149.i16[0];
                    v155 = v151.i16[0];
                    if (v149.i16[0] <= v151.i16[0])
                    {
                      v156 = v151.i16[0];
                    }

                    else
                    {
                      v156 = v149.i16[0];
                    }

                    v157 = v156 + 1;
                    do
                    {
                      v158 = v154;
                      if (v154 <= v155)
                      {
                        do
                        {
                          HIWORD(v218) = v152;
                          LOWORD(v218) = v158;
                          HIWORD(v234[0]) = v152;
                          LOWORD(v234[0]) = v158;
                          {
                            _ZNSt3__16vectorIDv2_sNS_9allocatorIS1_EEE9push_backB8ne200100ERKS1_(&v227 + 8, v234);
                          }

                          ++v158;
                        }

                        while (v157 != v158);
                      }

                      _ZF = v152++ == v153;
                    }

                    while (!_ZF);
                  }
                }

                ++LODWORD(v233[5]);
LABEL_138:
                if (v228 == *(&v227 + 1))
                {
                  v72 = v225.i32[0];
                  break;
                }
              }
            }

            v187 = v223;
            v188 = v224;
            v189 = 4 * v223;
            v224 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:4 * v223 * v224];
            v191 = v230[1];
            mutableBytes = [v224 mutableBytes];
            if (v188 >= 1)
            {
              v193 = 0;
              v194 = vdupq_n_s32(0x45CDF000u);
              v195 = (v191 + 176 * v72 + 176);
              v196 = vdupq_n_s32(0x437F0000u);
              do
              {
                v197 = v187;
                if (v187 >= 1)
                {
                  do
                  {
                    v198 = *v195++;
                    v199 = vmulq_f32(v198, v194);
                    v199.i32[3] = v198.i32[3];
                    v200 = vmulq_f32(v199, v196);
                    v201 = *v200.i32;
                    v200.i32[0] = vextq_s8(v200, v200, 8uLL).i32[1];
                    *v200.i8 = vshl_u32(vcvt_s32_f32(*v200.i8), 0x800000018);
                    *mutableBytes++ = v200.i32[0] | (*&v200.i32[2] << 16) | v201 | v200.i32[1];
                    --v197;
                  }

                  while (v197);
                }

                v195 += 22;
                ++v193;
              }

              while (v193 != v188);
            }

            v202 = CGDataProviderCreateWithCFData(v224);
            v203 = CGColorSpaceCreateWithName(name);
            v4 = CGImageCreate(v187, v188, 8uLL, 0x20uLL, v189, v203, 0, v202, 0, 0, kCGRenderingIntentDefault);
            CGDataProviderRelease(v202);
            CGColorSpaceRelease(v203);

            if (v233[2])
            {
              operator delete(v233[2]);
            }

            for (ii = 0; ii != -9; ii -= 3)
            {
              v205 = v233[ii - 1];
              if (v205)
              {
                v233[ii] = v205;
                operator delete(v205);
              }
            }

            if (*&__p[0])
            {
              operator delete(*&__p[0]);
            }

            if (v230[1])
            {
              operator delete(v230[1]);
            }

            if (v229)
            {
              operator delete(v229);
            }

            if (*(&v227 + 1))
            {
              operator delete(*(&v227 + 1));
            }

            free(v208);
            free(v207);
          }

          else
          {
            return 0;
          }
        }
      }
    }
  }

  return v4;
}

+ (void)applyRepairStrokeToMutableBuffer:(id)buffer brushStroke:(id)stroke sourceOffset:(CGPoint)offset repairEdges:(BOOL)edges
{
  v218[97] = *MEMORY[0x1E69E9840];
  bufferCopy = buffer;
  strokeCopy = stroke;
  v11 = [bufferCopy size];
  v13 = v12;
  v153 = 0u;
  v154 = 0u;
  if (strokeCopy)
  {
    [strokeCopy extent];
  }

  else
  {
    memset(buf, 0, sizeof(buf));
  }

  v207 = 0uLL;
  *&v208 = v11;
  *(&v208 + 1) = v13;
  NUPixelRectIntersection();
  *buf = v153;
  *&buf[16] = v154;
  if ((NUPixelRectIsEmpty() & 1) == 0)
  {
    [strokeCopy radius];
    v15 = v14;
    v16 = NUPixelPointFromCGPoint();
    *&buf[8] = 0;
    *buf = 0;
    *&buf[16] = v11;
    *&buf[24] = v13;
    v207 = v153;
    v208 = v154;
    [PIRepairUtilities calcExtentsForStrokeRadius:v16 offset:v17 inputImageExtent:buf maskExtent:&v207 repairExtent:&v151 textureExtent:&v149 sourceExtent:v15, &v147];
    *buf = v151;
    *&buf[16] = v152;
    if ((NUPixelRectIsEmpty() & 1) == 0)
    {
      *buf = v149;
      *&buf[16] = v150;
      if ((NUPixelRectIsEmpty() & 1) == 0)
      {
        *buf = v147;
        *&buf[16] = v148;
        if ((NUPixelRectIsEmpty() & 1) == 0)
        {
          v145 = 0u;
          v146 = 0u;
          *buf = v151;
          *&buf[16] = v152;
          v207 = 0uLL;
          *&v208 = v11;
          *(&v208 + 1) = v13;
          NUPixelRectFlipYOrigin();
          memset(buf, 0, sizeof(buf));
          v142 = [self extractRGBAfPixelsFromImage:bufferCopy fromROI:buf];
          v207 = v147;
          v208 = v148;
          v204 = 0uLL;
          *&v205 = v11;
          *(&v205 + 1) = v13;
          NUPixelRectFlipYOrigin();
          v140 = [self extractRGBAfPixelsFromImage:bufferCopy fromROI:buf];
          v207 = v149;
          v208 = v150;
          v204 = 0uLL;
          *&v205 = v11;
          *(&v205 + 1) = v13;
          NUPixelRectFlipYOrigin();
          v141 = [self extractRGBAfPixelsFromImage:bufferCopy fromROI:buf];
          selfCopy = self;
          v18 = objc_alloc(MEMORY[0x1E69B3BA8]);
          v19 = v154;
          v20 = [MEMORY[0x1E69B3BF0] R8];
          v143 = [v18 initWithSize:v19 format:v20];

          [MEMORY[0x1E69B3978] rasterizeBrushStroke:strokeCopy atPoint:v153 toBuffer:v143];
          bytes = [v140 bytes];
          rowBytes = [v140 rowBytes];
          bytes2 = [v141 bytes];
          rowBytes2 = [v141 rowBytes];
          bytes3 = [v143 bytes];
          rowBytes3 = [v143 rowBytes];
          mutableBytes = [v142 mutableBytes];
          rowBytes4 = [v142 rowBytes];
          *buf = v151;
          *&buf[16] = v152;
          v204 = v147;
          v205 = v148;
          v192 = v151;
          v193 = v152;
          NUPixelRectIntersection();
          if (NUPixelRectEqualToRect())
          {
            *buf = v147;
            *&buf[16] = v148;
            v25 = NUWidth();
            *buf = v147;
            *&buf[16] = v148;
            v26 = NUHeight();
            v181[1] = 0;
            v182 = bytes;
            v184 = xmmword_1C7845E00;
            v183 = rowBytes;
            v185 = v25;
            v186 = v26;
            v187 = 1;
            v188 = 1;
            v181[0] = &unk_1F46EA368;
            *buf = v149;
            *&buf[16] = v150;
            v27 = NUWidth();
            *buf = v149;
            *&buf[16] = v150;
            v28 = NUHeight();
            v173[1] = 0;
            v174 = bytes2;
            v176 = xmmword_1C7845E00;
            v175 = rowBytes2;
            v177 = v27;
            v178 = v28;
            v179 = 1;
            v180 = 1;
            v173[0] = &unk_1F46EA368;
            *buf = v151;
            *&buf[16] = v152;
            v29 = NUWidth();
            *buf = v151;
            *&buf[16] = v152;
            v30 = NUHeight();
            v165[1] = 0;
            v166 = mutableBytes;
            v168 = xmmword_1C7845E00;
            v167 = rowBytes4;
            v169 = v29;
            v170 = v30;
            v171 = 1;
            v172 = 1;
            v165[0] = &unk_1F46EA368;
            *buf = v153;
            *&buf[16] = v154;
            v31 = NUWidth();
            *buf = v153;
            *&buf[16] = v154;
            v32 = NUHeight();
            v157[1] = 0;
            v158 = bytes3;
            v160 = xmmword_1C7845E10;
            v159 = rowBytes3;
            v161 = v31;
            v162 = v32;
            v163 = 1;
            v164 = 1;
            v157[0] = &unk_1F46EA598;
            v155 = &unk_1F46EA4A8;
            v156 = 0;
            *buf = v151;
            *&buf[16] = v152;
            v33 = NUMinX();
            *buf = v147;
            *&buf[16] = v148;
            v34 = NUMinX();
            *buf = v147;
            *&buf[16] = v148;
            v139 = NUMaxY();
            *buf = v151;
            *&buf[16] = v152;
            v138 = NUMaxY();
            *buf = v147;
            *&buf[16] = v148;
            v35 = NUMaxX();
            *buf = v151;
            *&buf[16] = v152;
            v36 = NUMaxX();
            *buf = v151;
            *&buf[16] = v152;
            v37 = NUMinY();
            *buf = v147;
            *&buf[16] = v148;
            v38 = NUMinY();
            v39 = v33 - v34;
            v40 = v35 - v36;
            if (v39 <= v35 - v36)
            {
              v41 = v35 - v36;
            }

            else
            {
              v41 = v39;
            }

            CGrNavigator::CGrNavigator(&v207, &v155, v161, v162, 16);
            *&v207 = &unk_1F46EA368;
            if (v212 == 1)
            {
              CGrNavigator::CGrNavigator(&v204, &v155, v161, v162, 16);
              *&v204 = &unk_1F46EA368;
              if (v206)
              {
                LODWORD(v42) = v39;
                v43 = v139 - v138;
                DWORD1(v42) = v139 - v138;
                DWORD2(v42) = v40;
                HIDWORD(v42) = v37 - v38;
                *&buf[8] = v42;
                *buf = &v155;
                *&buf[24] = 0x3CA3D70A00000000;
                v214 = 0x3F00000000000001;
                v215 = 0;
                v217 = 0;
                v216 = 0;
                bzero(v218, 0x304uLL);
                if (v41 != 1 && (v44 = 2 * v41, v177 == v161 + v44) && v178 == v162 + v44)
                {
                  v199 = 1056964608;
                  v200 = 1065353216;
                  v201 = -1;
                  v202 = 0;
                  v203 = 0;
                  v197 = &v155;
                  v198 = v41;
                  CGrNavigator::CGrNavigator(&v192, &v155, v177, v178, 4);
                  *&v192 = &unk_1F46EA2A8;
                  if (v196)
                  {
                    CGrNavigator::CGrNavigator(v189, &v155, v210, v211, 4);
                    v189[0] = &unk_1F46EA2A8;
                    if (v191 == 1)
                    {
                      v45 = 0;
                      while (1)
                      {
                        v46 = v195;
                        if (v195)
                        {
                          v47 = 0;
                          v48 = v194;
                          v49 = v174;
                          v50 = v175;
                          v51 = v176;
                          v53 = *(&v193 + 1);
                          v52 = v193;
                          do
                          {
                            v54 = v49;
                            v55 = v52;
                            for (i = v48; i; --i)
                            {
                              *v55++ = *(v54 + 4 * v45);
                              v54 += v51;
                            }

                            ++v47;
                            v52 = (v52 + v53);
                            v49 += v50;
                          }

                          while (v47 != v46);
                        }

                        if (CMedian::Median(&v197))
                        {
                          break;
                        }

                        v57 = v190;
                        if (v190)
                        {
                          v58 = 0;
                          v59 = v189[6];
                          v61 = *(&v208 + 1);
                          v60 = v208;
                          v62 = v209;
                          v63 = v189[2];
                          v64 = v189[3];
                          do
                          {
                            v65 = v63;
                            v66 = v60;
                            for (j = v59; j; --j)
                            {
                              v68 = *v65++;
                              *(v66 + 4 * v45) = v68;
                              v66 += v62;
                            }

                            ++v58;
                            v60 += v61;
                            v63 = (v63 + v64);
                          }

                          while (v58 != v57);
                        }

                        if (++v45 == 4)
                        {
                          CGrNavigator::~CGrNavigator(v189);
                          CGrNavigator::~CGrNavigator(&v192);
                          goto LABEL_34;
                        }
                      }
                    }

                    CGrNavigator::~CGrNavigator(v189);
                  }

                  CGrNavigator::~CGrNavigator(&v192);
                }

                else if (!CInwardBlur::InwardBlur(buf))
                {
LABEL_34:
                  HIBYTE(v216) = edges;
                  if (!CInwardBlur::InwardBlur(buf))
                  {
                    switch(v160)
                    {
                      case 4:
                        v99 = v170;
                        if (v170)
                        {
                          v100 = 0;
                          v101 = 0;
                          v102 = v169;
                          do
                          {
                            if (v102)
                            {
                              v103 = 0;
                              v104 = v101 + v43;
                              v105 = 1;
                              do
                              {
                                v106 = v183 * v104;
                                v107 = v182 + 16 * (v39 + v105 - 1);
                                v108 = *(v158 + 4 * v103 + v159 * v100);
                                if (v108 <= 0.02)
                                {
                                  v110 = *(v106 + v107);
                                }

                                else
                                {
                                  v109 = (v108 * 2.0388) + -0.040776;
                                  if (v108 >= 0.51049)
                                  {
                                    v109 = 1.0;
                                  }

                                  v110 = vmlaq_n_f32(*(v107 + v106), vaddq_f32(vsubq_f32(*(16 * (v39 + v105 - 1) + v174 + v175 * v104), vaddq_f32(*(v107 + v106), *(16 * v103 + v208 + *(&v208 + 1) * v100))), *(16 * v103 + v205 + *(&v205 + 1) * v100)), v109);
                                }

                                *(v167 * v100 + v166 + 16 * v103) = v110;
                                v103 = v105;
                                v102 = v169;
                                v81 = v169 > v105++;
                              }

                              while (v81);
                              v99 = v170;
                            }

                            v100 = ++v101;
                          }

                          while (v99 > v101);
                        }

                        break;
                      case 2:
                        v87 = v170;
                        if (v170)
                        {
                          v88 = 0;
                          v89 = 0;
                          v90 = v169;
                          do
                          {
                            if (v90)
                            {
                              v91 = 0;
                              v92 = v89 + v43;
                              v93 = 1;
                              do
                              {
                                v94 = v183 * v92;
                                v95 = v182 + 16 * (v39 + v93 - 1);
                                v96 = *(v158 + 2 * v91 + v159 * v88);
                                if (v96 <= 0x51E)
                                {
                                  v98 = *(v94 + v95);
                                }

                                else
                                {
                                  if (v96 >= 0x82AE)
                                  {
                                    v97 = 1.0;
                                  }

                                  else
                                  {
                                    v97 = ((133613 * v96 - 175033030) >> 16) * 0.000015259;
                                  }

                                  v98 = vmlaq_n_f32(*(v95 + v94), vaddq_f32(vsubq_f32(*(16 * (v39 + v93 - 1) + v174 + v175 * v92), vaddq_f32(*(v95 + v94), *(16 * v91 + v208 + *(&v208 + 1) * v88))), *(16 * v91 + v205 + *(&v205 + 1) * v88)), v97);
                                }

                                *(v167 * v88 + v166 + 16 * v91) = v98;
                                v91 = v93;
                                v90 = v169;
                                v81 = v169 > v93++;
                              }

                              while (v81);
                              v87 = v170;
                            }

                            v88 = ++v89;
                          }

                          while (v87 > v89);
                        }

                        break;
                      case 1:
                        v69 = v170;
                        if (v170)
                        {
                          v70 = 0;
                          v71 = 0;
                          v72 = v169;
                          do
                          {
                            if (v72)
                            {
                              v73 = 0;
                              v74 = v71 + v43;
                              v75 = 1;
                              do
                              {
                                v76 = v183 * v74;
                                v77 = v182 + 16 * (v39 + v75 - 1);
                                v78 = *(v73 + v158 + v159 * v70);
                                if (v78 <= 5)
                                {
                                  v80 = *(v76 + v77);
                                }

                                else
                                {
                                  if (v78 >= 0x82)
                                  {
                                    v79 = 1.0;
                                  }

                                  else
                                  {
                                    v79 = (523 * v78 - 2615) * 0.000015259;
                                  }

                                  v80 = vmlaq_n_f32(*(v77 + v76), vaddq_f32(vsubq_f32(*(16 * (v39 + v75 - 1) + v174 + v175 * v74), vaddq_f32(*(v77 + v76), *(16 * v73 + v208 + *(&v208 + 1) * v70))), *(16 * v73 + v205 + *(&v205 + 1) * v70)), v79);
                                }

                                *(v167 * v70 + v166 + 16 * v73) = v80;
                                v73 = v75;
                                v72 = v169;
                                v81 = v169 > v75++;
                              }

                              while (v81);
                              v69 = v170;
                            }

                            v70 = ++v71;
                          }

                          while (v69 > v71);
                        }

                        break;
                    }
                  }
                }
              }

              CGrNavigator::~CGrNavigator(&v204);
            }

            CGrNavigator::~CGrNavigator(&v207);
            CGrNavigator::~CGrNavigator(v157);
            CGrNavigator::~CGrNavigator(v165);
            CGrNavigator::~CGrNavigator(v173);
            CGrNavigator::~CGrNavigator(v181);

            v82 = objc_alloc(MEMORY[0x1E69B3BA8]);
            v83 = v152;
            format = [bufferCopy format];
            v85 = [v82 initWithSize:v83 format:format];

            v144 = 0;
            LOBYTE(format) = [selfCopy transcodePixelBuffer:v142 toBuffer:v85 error:&v144];
            v86 = v144;
            if (format)
            {
              *&buf[8] = 0;
              *buf = 0;
              *&buf[16] = v146;
              [MEMORY[0x1E69B3B38] copyPixelsToImage:bufferCopy atPoint:v145 fromBuffer:v85 inRect:buf];

              goto LABEL_57;
            }

            v119 = NUAssertLogger();
            if (os_log_type_enabled(v119, OS_LOG_TYPE_ERROR))
            {
              v120 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Couldn't transcode from float to accumulation buffer: %@", v86];
              *buf = 138543362;
              *&buf[4] = v120;
              _os_log_error_impl(&dword_1C7694000, v119, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
            }

            v121 = MEMORY[0x1E69B38E8];
            specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
            v123 = NUAssertLogger();
            v124 = os_log_type_enabled(v123, OS_LOG_TYPE_ERROR);
            if (specific)
            {
              if (v124)
              {
                v130 = dispatch_get_specific(*v121);
                callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
                v132 = [callStackSymbols componentsJoinedByString:@"\n"];
                *buf = 138543618;
                *&buf[4] = v130;
                *&buf[12] = 2114;
                *&buf[14] = v132;
                _os_log_error_impl(&dword_1C7694000, v123, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
              }
            }

            else if (v124)
            {
              callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
              v126 = [callStackSymbols2 componentsJoinedByString:@"\n"];
              *buf = 138543362;
              *&buf[4] = v126;
              _os_log_error_impl(&dword_1C7694000, v123, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
            }

            _NUAssertFailHandler();
          }

          else
          {
            v111 = NUAssertLogger();
            if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
            {
              v112 = [MEMORY[0x1E696AEC0] stringWithFormat:@"repairBounds not fully contained in srcBounds in repairWithReef"];
              *buf = 138543362;
              *&buf[4] = v112;
              _os_log_error_impl(&dword_1C7694000, v111, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
            }

            v113 = MEMORY[0x1E69B38E8];
            v114 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
            v115 = NUAssertLogger();
            v116 = os_log_type_enabled(v115, OS_LOG_TYPE_ERROR);
            if (v114)
            {
              if (v116)
              {
                v127 = dispatch_get_specific(*v113);
                callStackSymbols3 = [MEMORY[0x1E696AF00] callStackSymbols];
                v129 = [callStackSymbols3 componentsJoinedByString:@"\n"];
                *buf = 138543618;
                *&buf[4] = v127;
                *&buf[12] = 2114;
                *&buf[14] = v129;
                _os_log_error_impl(&dword_1C7694000, v115, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
              }
            }

            else if (v116)
            {
              callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
              v118 = [callStackSymbols4 componentsJoinedByString:@"\n"];
              *buf = 138543362;
              *&buf[4] = v118;
              _os_log_error_impl(&dword_1C7694000, v115, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
            }

            _NUAssertFailHandler();
          }

          __break(1u);
        }
      }
    }
  }

LABEL_57:
}

+ (BOOL)applyRepairMLStrokeToMutableBuffer:(id)buffer brushStroke:(id)stroke detectedFaces:(id)faces context:(id)context error:(id *)error
{
  bufferCopy = buffer;
  strokeCopy = stroke;
  facesCopy = faces;
  contextCopy = context;
  v57 = bufferCopy;
  v50 = facesCopy;
  format = [bufferCopy format];
  v56 = format;
  v15 = [MEMORY[0x1E69B3B10] newCIImageFromBufferImage:bufferCopy];
  v59 = v15;
  v62 = [strokeCopy ciImageTiled:0 closed:1 pressureMode:1];
  v74 = 0u;
  v75 = 0u;
  if (strokeCopy)
  {
    [strokeCopy clipRect];
  }

  v72 = 0u;
  v73 = 0u;
  [v15 extent];
  NUPixelRectFromCGRect();
  v70 = 0u;
  v71 = 0u;
  [v62 extent];
  NUPixelRectFromCGRect();
  v68 = 0u;
  v69 = 0u;
  memset(&v64, 0, 32);
  NUPixelRectIntersection();
  NUPixelSizeLargestDimension();
  *&v65.a = v74;
  *&v65.c = v75;
  if (NUPixelRectIsEmpty())
  {
    v74 = v72;
    v75 = v73;
  }

  NUWidth();
  NUWidth();
  NUHeight();
  *&v65.a = v74;
  *&v65.c = v75;
  NUHeight();
  v66 = v74;
  v67 = v75;
  NUPixelRectConstrainToRect();
  a = v65.a;
  b = v65.b;
  c = v65.c;
  d = v65.d;
  NUPixelRectToCGRect();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = [v59 imageByCroppingToRect:?];

  v28 = [v62 imageByCroppingToRect:{v20, v22, v24, v26}];

  [v27 extent];
  v30 = v29;
  [v27 extent];
  memset(&v65, 0, sizeof(v65));
  CGAffineTransformMakeTranslation(&v65, -v30, -v31);
  v64 = v65;
  v32 = [v27 imageByApplyingTransform:&v64];

  v64 = v65;
  v63 = [v28 imageByApplyingTransform:&v64];
  v60 = v32;

  v66 = v68;
  v67 = v69;
  NUPixelRectOffset();
  v68 = *&v64.a;
  v69 = *&v64.c;
  v33 = MEMORY[0x1E695F658];
  whiteColor = [MEMORY[0x1E695F610] whiteColor];
  v35 = [v33 imageWithColor:whiteColor];
  [v60 extent];
  v54 = [v35 imageByCroppingToRect:?];

  v36 = [v63 imageByApplyingFilter:@"CIColorInvert"];
  v53 = [v36 imageByCompositingOverImage:v54];

  *&v64.a = __PAIR128__(*&b, *&a);
  *&v64.c = __PAIR128__(*&d, *&c);
  v58 = [self prepareForCIFilterWithFaces:facesCopy cropRect:&v64];
  v37 = [MEMORY[0x1E695F648] filterWithName:@"CIInpaintingFilter"];
  [v37 setValue:v60 forKey:@"inputImage"];
  [v37 setValue:v53 forKey:@"inputMaskImage"];
  v38 = MEMORY[0x1E695F688];
  *&v64.a = v68;
  *&v64.c = v69;
  NUPixelRectToCGRect();
  v39 = [v38 vectorWithCGRect:?];
  [v37 setValue:v39 forKey:@"inputMaskBoundingBox"];

  if (v58)
  {
    [v37 setValue:v58 forKey:@"inputFaceBoundingBoxes"];
  }

  outputImage = [v37 outputImage];
  v64.a = a;
  v64.b = b;
  v64.c = c;
  v64.d = d;
  v40 = [format alignedRowBytesForWidth:NUWidth()];
  v64.a = a;
  v64.b = b;
  v64.c = c;
  v64.d = d;
  v41 = [MEMORY[0x1E695DF88] dataWithLength:NUHeight() * v40];
  v42 = objc_alloc(MEMORY[0x1E695F678]);
  mutableBytes = [v41 mutableBytes];
  v64.a = a;
  v64.b = b;
  v64.c = c;
  v64.d = d;
  v44 = NUWidth();
  v64.a = a;
  v64.b = b;
  v64.c = c;
  v64.d = d;
  v45 = [v42 initWithBitmapData:mutableBytes width:v44 height:NUHeight() bytesPerRow:v40 format:{objc_msgSend(v56, "CIFormat")}];
  colorSpace = [v57 colorSpace];
  [v45 setColorSpace:{objc_msgSend(colorSpace, "CGColorSpace")}];

  [v45 setLabel:@"PIRepair-applyRepairMLStrokeToMutableBuffer"];
  v47 = [contextCopy startTaskToRender:outputImage toDestination:v45 error:error];
  v48 = [v47 waitUntilCompletedAndReturnError:error];

  memset(&v64, 0, 32);
  *&v66 = a;
  *(&v66 + 1) = b;
  *&v67 = c;
  *(&v67 + 1) = d;
  [v57 size];
  NUPixelRectFlipYOrigin();
  v66 = *&v64.a;
  v67 = *&v64.c;
  [MEMORY[0x1E69B3B38] copyPixelsToImage:v57 rect:&v66 srcPtr:objc_msgSend(v41 srcPtrRowBytes:{"mutableBytes"), v40}];

  return 1;
}

+ (id)prepareForCIFilterWithFaces:(id)faces cropRect:(id *)rect
{
  facesCopy = faces;
  v6 = facesCopy;
  if (facesCopy && (v7 = [facesCopy count]) != 0)
  {
    var0 = rect->var0;
    v19 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v7];
    for (i = 0; i != v7; ++i)
    {
      v9 = [v6 objectAtIndexedSubscript:{i, var0}];
      v10 = [v9 objectForKeyedSubscript:@"x"];
      [v10 intValue];

      v11 = [v9 objectForKeyedSubscript:@"y"];
      [v11 intValue];

      v12 = [v9 objectForKeyedSubscript:@"w"];
      [v12 intValue];

      v13 = [v9 objectForKeyedSubscript:@"h"];
      [v13 intValue];

      NUPixelRectIntersection();
      if ((NUPixelRectIsEmpty() & 1) == 0)
      {
        NUPixelRectToCGRect();
        v14 = [MEMORY[0x1E695F688] vectorWithCGRect:?];
        [v19 addObject:v14];
      }
    }

    if ([v19 count])
    {
      v15 = v19;
      v16 = v19;
    }

    else
    {
      v16 = 0;
      v15 = v19;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (id)extractRGBAfPixelsFromImage:(id)image fromROI:(id *)i
{
  v34 = *MEMORY[0x1E69E9840];
  imageCopy = image;
  v7 = objc_alloc(MEMORY[0x1E69B3BA8]);
  var0 = i->var1.var0;
  var1 = i->var1.var1;
  rGBAf = [MEMORY[0x1E69B3BF0] RGBAf];
  v11 = [v7 initWithSize:var0 format:{var1, rGBAf}];

  v12 = objc_alloc(MEMORY[0x1E69B3BA8]);
  v13 = i->var1.var0;
  v14 = i->var1.var1;
  format = [imageCopy format];
  v16 = [v12 initWithSize:v13 format:{v14, format}];

  v17 = i->var1;
  *buf = i->var0;
  *&buf[16] = v17;
  [MEMORY[0x1E69B3B38] copyPixelsFromImage:imageCopy rect:buf destPtr:objc_msgSend(v16 destPtrRowBytes:{"mutableBytes"), objc_msgSend(v16, "rowBytes")}];
  v32 = 0;
  LOBYTE(self) = [self transcodePixelBuffer:v16 toBuffer:v11 error:&v32];
  v18 = v32;
  v19 = v18;
  if ((self & 1) == 0)
  {
    v21 = NUAssertLogger();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Couldn't transcode from accumulation buffer to float: %@", v19];
      *buf = 138543362;
      *&buf[4] = v22;
      _os_log_error_impl(&dword_1C7694000, v21, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v23 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v25 = NUAssertLogger();
    v26 = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v26)
      {
        v29 = dispatch_get_specific(*v23);
        callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
        v31 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v29;
        *&buf[12] = 2114;
        *&buf[14] = v31;
        _os_log_error_impl(&dword_1C7694000, v25, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v26)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v28 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v28;
      _os_log_error_impl(&dword_1C7694000, v25, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
    __break(1u);
  }

  return v11;
}

+ (BOOL)transcodePixelBuffer:(id)buffer toBuffer:(id)toBuffer error:(id *)error
{
  bufferCopy = buffer;
  toBufferCopy = toBuffer;
  if (!error)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PIRepair.mm" lineNumber:203 description:{@"Invalid parameter not satisfying: %@", @"error"}];
  }

  format = [bufferCopy format];
  rGBAh = [MEMORY[0x1E69B3BF0] RGBAh];
  if (([format isEqualToPixelFormat:rGBAh] & 1) == 0)
  {

LABEL_8:
    format2 = [bufferCopy format];
    rGBAf = [MEMORY[0x1E69B3BF0] RGBAf];
    if ([format2 isEqualToPixelFormat:rGBAf])
    {
      format3 = [toBufferCopy format];
      rGBAh2 = [MEMORY[0x1E69B3BF0] RGBAh];
      v25 = [format3 isEqualToPixelFormat:rGBAh2];

      if (v25)
      {
        src.data = [bufferCopy bytes];
        [bufferCopy size];
        src.height = v26;
        src.width = 4 * [bufferCopy size];
        src.rowBytes = [bufferCopy rowBytes];
        dest.height = src.height;
        dest.width = src.width;
        dest.data = [toBufferCopy mutableBytes];
        dest.rowBytes = [toBufferCopy rowBytes];
        v27 = vImageConvert_PlanarFtoPlanar16F(&src, &dest, 0);
        if (v27)
        {
          v28 = MEMORY[0x1E69B3A48];
          v19 = [MEMORY[0x1E696AD98] numberWithLong:v27];
          v20 = [v28 failureError:@"Bad float->half conversion" object:v19];
          goto LABEL_17;
        }

LABEL_23:
        v45 = 1;
        goto LABEL_19;
      }
    }

    else
    {
    }

    src.data = 0;
    v29 = [bufferCopy size];
    [bufferCopy size];
    v31 = v30;
    format4 = [bufferCopy format];
    cVPixelFormat = [format4 CVPixelFormat];
    bytes = [bufferCopy bytes];
    rowBytes = [bufferCopy rowBytes];
    v36 = *MEMORY[0x1E695E480];
    v37 = CVPixelBufferCreateWithBytes(*MEMORY[0x1E695E480], v29, v31, cVPixelFormat, bytes, rowBytes, 0, 0, 0, &src);

    if (v37)
    {
      v38 = MEMORY[0x1E69B3A48];
      v19 = [MEMORY[0x1E696AD98] numberWithInt:v37];
      v20 = [v38 failureError:@"couldn't create source buffer" object:v19];
      goto LABEL_17;
    }

    dest.data = 0;
    v39 = [toBufferCopy size];
    [toBufferCopy size];
    v41 = v40;
    format5 = [toBufferCopy format];
    v43 = CVPixelBufferCreateWithBytes(v36, v39, v41, [format5 CVPixelFormat], objc_msgSend(toBufferCopy, "mutableBytes"), objc_msgSend(toBufferCopy, "rowBytes"), 0, 0, 0, &dest);

    if (v43)
    {
      v44 = MEMORY[0x1E69B3A48];
      v19 = [MEMORY[0x1E696AD98] numberWithInt:v43];
      v20 = [v44 failureError:@"couldn't create dest buffer" object:v19];
      goto LABEL_17;
    }

    v19 = [MEMORY[0x1E695F658] imageWithCVPixelBuffer:src.data];
    v47 = objc_alloc(MEMORY[0x1E695F678]);
    v48 = [v47 initWithPixelBuffer:dest.data];
    context = [MEMORY[0x1E695F620] context];
    v50 = [context startTaskToRender:v19 toDestination:v48 error:error];

    if (v50)
    {
      v51 = [v50 waitUntilCompletedAndReturnError:error];
      if (v51)
      {
        CVPixelBufferRelease(src.data);
        CVPixelBufferRelease(dest.data);

        goto LABEL_23;
      }
    }

    goto LABEL_18;
  }

  format6 = [toBufferCopy format];
  rGBAf2 = [MEMORY[0x1E69B3BF0] RGBAf];
  v15 = [format6 isEqualToPixelFormat:rGBAf2];

  if (!v15)
  {
    goto LABEL_8;
  }

  src.data = [bufferCopy bytes];
  [bufferCopy size];
  src.height = v16;
  src.width = 4 * [bufferCopy size];
  src.rowBytes = [bufferCopy rowBytes];
  dest.height = src.height;
  dest.width = src.width;
  dest.data = [toBufferCopy mutableBytes];
  dest.rowBytes = [toBufferCopy rowBytes];
  v17 = vImageConvert_Planar16FtoPlanarF(&src, &dest, 0);
  if (!v17)
  {
    goto LABEL_23;
  }

  v18 = MEMORY[0x1E69B3A48];
  v19 = [MEMORY[0x1E696AD98] numberWithLong:v17];
  v20 = [v18 failureError:@"Bad half->float conversion" object:v19];
LABEL_17:
  *error = v20;
LABEL_18:

  v45 = 0;
LABEL_19:

  return v45;
}

+ (id)brushStrokeFromRetouchStrokeDictionary:(id)dictionary
{
  v40 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v29 = [dictionaryCopy objectForKeyedSubscript:@"radius"];
  v30 = [dictionaryCopy objectForKeyedSubscript:@"softness"];
  v3 = [dictionaryCopy objectForKeyedSubscript:@"clipRect"];
  NUPixelRectFromArray();

  v4 = objc_alloc(MEMORY[0x1E69B3B90]);
  [v29 floatValue];
  v6 = v5;
  [v30 floatValue];
  LODWORD(v8) = v7;
  memset(v38, 0, sizeof(v38));
  v31 = [v4 initWithRadius:v38 softness:0 opacity:COERCE_DOUBLE(v6) clipRect:v8 pressureMode:COERCE_DOUBLE(COERCE_UNSIGNED_INT(1.0))];
  v28 = [dictionaryCopy objectForKeyedSubscript:@"points"];
  v27 = [v28 count];
  v9 = [MEMORY[0x1E695DF88] dataWithLength:12 * v27];
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = [dictionaryCopy objectForKeyedSubscript:@"points"];
  v10 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v10)
  {
    v11 = 0;
    v12 = *v35;
    do
    {
      v13 = 0;
      v14 = 12 * v11;
      do
      {
        if (*v35 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v34 + 1) + 8 * v13);
        v16 = [v15 objectForKeyedSubscript:@"x"];
        [v16 floatValue];
        v18 = v17;

        v19 = [v15 objectForKeyedSubscript:@"y"];
        [v19 floatValue];
        v21 = v20;

        v22 = v9;
        ++v11;
        v23 = ([v9 mutableBytes] + v14);
        *v23 = v18;
        v23[1] = v21;
        v23[2] = 1065353216;
        ++v13;
        v14 += 12;
      }

      while (v10 != v13);
      v10 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v10);
  }

  v24 = v9;
  [v31 appendPoints:objc_msgSend(v9 pointCount:{"mutableBytes"), v27}];
  v25 = [v31 copy];

  return v25;
}

+ (void)calcExtentsForStrokeRadius:(double)radius offset:(id)offset inputImageExtent:(id *)extent maskExtent:(id *)maskExtent repairExtent:(id *)repairExtent textureExtent:(id *)textureExtent sourceExtent:(id *)sourceExtent
{
  v56 = *MEMORY[0x1E69E9840];
  if (!repairExtent)
  {
    v26 = NUAssertLogger();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "repairExtent != nil"];
      *buf = 138543362;
      *&buf[4] = v27;
      _os_log_error_impl(&dword_1C7694000, v26, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v28 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v30 = NUAssertLogger();
    v31 = os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v31)
      {
        v44 = dispatch_get_specific(*v28);
        callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
        v46 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v44;
        *&buf[12] = 2114;
        *&buf[14] = v46;
        _os_log_error_impl(&dword_1C7694000, v30, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }

      goto LABEL_32;
    }

    if (!v31)
    {
      goto LABEL_32;
    }

LABEL_23:
    callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
    v43 = [callStackSymbols2 componentsJoinedByString:@"\n"];
    *buf = 138543362;
    *&buf[4] = v43;
    _os_log_error_impl(&dword_1C7694000, v30, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);

    goto LABEL_32;
  }

  if (!textureExtent)
  {
    v32 = NUAssertLogger();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "textureExtent != nil"];
      *buf = 138543362;
      *&buf[4] = v33;
      _os_log_error_impl(&dword_1C7694000, v32, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v34 = MEMORY[0x1E69B38E8];
    v35 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v30 = NUAssertLogger();
    v36 = os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);
    if (v35)
    {
      if (v36)
      {
        v47 = dispatch_get_specific(*v34);
        callStackSymbols3 = [MEMORY[0x1E696AF00] callStackSymbols];
        v49 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v47;
        *&buf[12] = 2114;
        *&buf[14] = v49;
        _os_log_error_impl(&dword_1C7694000, v30, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }

      goto LABEL_32;
    }

    if (!v36)
    {
      goto LABEL_32;
    }

    goto LABEL_23;
  }

  if (!sourceExtent)
  {
    v37 = NUAssertLogger();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "sourceExtent != nil"];
      *buf = 138543362;
      *&buf[4] = v38;
      _os_log_error_impl(&dword_1C7694000, v37, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v39 = MEMORY[0x1E69B38E8];
    v40 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v30 = NUAssertLogger();
    v41 = os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);
    if (!v40)
    {
      if (!v41)
      {
        goto LABEL_32;
      }

      goto LABEL_23;
    }

    if (v41)
    {
      v50 = dispatch_get_specific(*v39);
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v52 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      *&buf[4] = v50;
      *&buf[12] = 2114;
      *&buf[14] = v52;
      _os_log_error_impl(&dword_1C7694000, v30, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

LABEL_32:

    _NUAssertFailHandler();
    __break(1u);
  }

  var1 = maskExtent->var1;
  repairExtent->var0 = maskExtent->var0;
  repairExtent->var1 = var1;
  NUPixelRectIntersection();
  v12 = *&buf[16];
  repairExtent->var0 = *buf;
  repairExtent->var1 = v12;
  NUPixelRectSetOrigin();
  v13 = *&buf[16];
  textureExtent->var0 = *buf;
  textureExtent->var1 = v13;
  NUPixelRectConstrainToRect();
  v14 = *&buf[16];
  textureExtent->var0 = *buf;
  textureExtent->var1 = v14;
  v15 = repairExtent->var1;
  *buf = repairExtent->var0;
  *&buf[16] = v15;
  if (NUPixelRectIsEmpty() & 1) != 0 || (v16 = textureExtent->var1, *buf = textureExtent->var0, *&buf[16] = v16, (NUPixelRectIsEmpty()))
  {
    v17 = MEMORY[0x1E69B3908];
    v18 = *(MEMORY[0x1E69B3908] + 16);
    textureExtent->var0 = *MEMORY[0x1E69B3908];
    textureExtent->var1 = v18;
    v19 = v17[1];
    repairExtent->var0 = *v17;
    repairExtent->var1 = v19;
    v20 = *v17;
    v21 = v17[1];
  }

  else
  {
    v22 = NUMinX();
    v23 = NUMinX();
    v24 = NUMinY();
    v25 = NUMinY();
    memset(buf, 0, 32);
    NUPixelRectInset();
    NUPixelRectIntersection();
    NUMinX();
    NUMinY();
    NUWidth();
    NUHeight();
    NUPixelRectIntersection();
    v53.var0 = NUMinX() + v22 - v23;
    v53.var1 = NUMinY() + v24 - v25;
    v54.var0 = NUWidth();
    v54.var1 = NUHeight();
    textureExtent->var0 = v53;
    textureExtent->var1 = v54;
    v20 = 0;
    v21 = 0;
  }

  sourceExtent->var0 = v20;
  sourceExtent->var1 = v21;
}

@end