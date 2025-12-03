@interface CMIDeepZoomTransferPreProcMetalStageV2
- (CMIDeepZoomTransferPreProcMetalStageV2)initWithMetalContext:(id)context withTileConfiguration:(id *)configuration;
- (int)computeLocalHomographies:(CMIDeepZoomTransferPreProcMetalStageV2 *)self referencePixelBuffer:(SEL)buffer referenceMetadata:(id)metadata nonReferencePixelBuffer:(__CVBuffer *)pixelBuffer nonReferenceMetadata:(id)referenceMetadata referenceNormalizedCropRectangle:(__CVBuffer *)rectangle nonReferenceNormalizedCropRectangle:(id)cropRectangle computeLocalHomographiesConfig:(CGRect *)config tileCount:(CGRect *)count tileIndex:(id)self0;
- (void)dealloc;
@end

@implementation CMIDeepZoomTransferPreProcMetalStageV2

- (void)dealloc
{
  sub_F1A8(self);
  v3.receiver = self;
  v3.super_class = CMIDeepZoomTransferPreProcMetalStageV2;
  [(CMIDeepZoomTransferPreProcMetalStageV2 *)&v3 dealloc];
}

- (CMIDeepZoomTransferPreProcMetalStageV2)initWithMetalContext:(id)context withTileConfiguration:(id *)configuration
{
  contextCopy = context;
  if (!configuration)
  {
    goto LABEL_15;
  }

  selfCopy = 0;
  if (*configuration && *(configuration + 1))
  {
    v21.receiver = self;
    v21.super_class = CMIDeepZoomTransferPreProcMetalStageV2;
    v9 = [(CMIDeepZoomTransferPreProcMetalStageV2 *)&v21 init];
    self = v9;
    if (!v9)
    {
LABEL_12:
      self = self;
      selfCopy = self;
      goto LABEL_13;
    }

    objc_storeStrong(&v9->_metalContext, context);
    if (self->_metalContext || (+[NSBundle bundleForClass:](NSBundle, "bundleForClass:", objc_opt_class()), v10 = objc_claimAutoreleasedReturnValue(), v11 = [[FigMetalContext alloc] initWithbundle:v10 andOptionalCommandQueue:0], metalContext = self->_metalContext, self->_metalContext = v11, metalContext, v10, self->_metalContext))
    {
      if (!sub_D184(self) && !sub_D240(self))
      {
        v19 = kCVMetalTextureCacheMaximumTextureAgeKey;
        v20 = &off_19028;
        v13 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
        device = [(FigMetalContext *)self->_metalContext device];
        v15 = CVMetalTextureCacheCreate(kCFAllocatorDefault, v13, device, 0, &self->_cvMetalTextureCacheRef);

        if (!v15)
        {
          v16 = [[RegWarpPP alloc] initWithConfig:0];
          regwarpCPU = self->_regwarpCPU;
          self->_regwarpCPU = v16;

          if (self->_regwarpCPU)
          {
            *self->_anon_30 = *configuration;

            goto LABEL_12;
          }
        }
      }
    }

LABEL_15:
    selfCopy = 0;
  }

LABEL_13:

  return selfCopy;
}

- (int)computeLocalHomographies:(CMIDeepZoomTransferPreProcMetalStageV2 *)self referencePixelBuffer:(SEL)buffer referenceMetadata:(id)metadata nonReferencePixelBuffer:(__CVBuffer *)pixelBuffer nonReferenceMetadata:(id)referenceMetadata referenceNormalizedCropRectangle:(__CVBuffer *)rectangle nonReferenceNormalizedCropRectangle:(id)cropRectangle computeLocalHomographiesConfig:(CGRect *)config tileCount:(CGRect *)count tileIndex:(id)self0
{
  metadataCopy = metadata;
  Width = referenceMetadata;
  cropRectangleCopy = cropRectangle;
  indexCopy = index;
  v17 = 0;
  origin = 0u;
  v209 = 0;
  v206 = 0u;
  v207 = 0;
  v18 = -12780;
  v176 = metadataCopy;
  if (!metadataCopy)
  {
    sub_3660();
    selfCopy7 = self;
    goto LABEL_121;
  }

  selfCopy7 = self;
  if (!pixelBuffer || !Width || !rectangle)
  {
    goto LABEL_127;
  }

  sub_3660();
  if (!cropRectangleCopy)
  {
    goto LABEL_121;
  }

  v17 = 0;
  if (!v214)
  {
LABEL_127:
    sub_3660();
    goto LABEL_121;
  }

  sub_3660();
  if (!v22)
  {
    goto LABEL_121;
  }

  v145 = Width;
  v18 = v215 << 16;
  v25.i32[0] = v215;
  v27 = vmovl_u16(v25);
  if (v215 << 16 != -65536 && v27.i16[2] != -1 && (v215 >= v23 || v27.i16[2] >= v22))
  {
    v17 = 0;
    sub_3694();
    v18 = -12780;
    goto LABEL_121;
  }

  v191 = v26;
  v195 = v27.u32[1];
  v169 = v24;
  rectangleCopy = rectangle;
  v189 = v23;
  v186 = v22;
  v146 = cropRectangleCopy;
  v29 = [cropRectangleCopy objectForKeyedSubscript:kFigCaptureSampleBufferMetadata_StillImageProcessingMetadata];
  v30 = [v29 objectForKeyedSubscript:kFigCaptureStillImageProcessingMetadataKey_RegistrationHomography];

  pixelBuffer = pixelBuffer;
  v144 = v30;
  if (v30)
  {
    v184 = [sub_352C() objectAtIndexedSubscript:?];
    [v184 floatValue];
    v31 = [v30 objectAtIndexedSubscript:3];
    [v31 floatValue];
    v32 = [v30 objectAtIndexedSubscript:6];
    [v32 floatValue];
    v33 = [v30 objectAtIndexedSubscript:1];
    [v33 floatValue];
    v34 = [v30 objectAtIndexedSubscript:4];
    [v34 floatValue];
    v182 = v35;
    v36 = [v30 objectAtIndexedSubscript:7];
    [v36 floatValue];
    v37 = [v30 objectAtIndexedSubscript:2];
    [v37 floatValue];
    v38 = [v30 objectAtIndexedSubscript:5];
    [v38 floatValue];
    v39 = [v30 objectAtIndexedSubscript:8];
    [v39 floatValue];
    v181.i32[1] = v182;

    pixelBuffer = pixelBuffer;
  }

  else
  {
    v180 = matrix_identity_float3x3.columns[0];
    v181 = matrix_identity_float3x3.columns[1];
    v179 = matrix_identity_float3x3.columns[2];
  }

  __asm { FMOV            V0.2D, #1.0 }

  if (config)
  {
    size = config->size;
    origin = config->origin;
    v209 = size;
  }

  else
  {
    origin = 0uLL;
    v209 = _Q0;
  }

  cropRectangleCopy = v146;
  selfCopy7 = self;
  if (count)
  {
    v44 = count->size;
    v206 = count->origin;
    v207 = v44;
  }

  else
  {
    v206 = 0uLL;
    v207 = _Q0;
  }

  metadataCopy = v195;
  v46 = v18 == -65536 && v195 == 0xFFFF;
  if (!(v18 | v195) || v46)
  {
    v143 = sub_E1EC(self, pixelBuffer, Width, rectangleCopy, v146, &origin, &v206, v169);
    if (v143)
    {
      v18 = v143;
      sub_3694();
      v17 = v144;
      goto LABEL_121;
    }
  }

  v17 = 0x1000040451B5BE8;
  Width = CVPixelBufferGetWidth(self->_opticalOutputFlowPixelBuffer);
  Height = CVPixelBufferGetHeight(self->_opticalOutputFlowPixelBuffer);
  cropRectangleCopy = Height;
  v48 = vand_s8(v191, 0xFFFF0000FFFFLL);
  v49 = vand_s8(vadd_s32(vadd_s32(v191, -1), __PAIR64__(Height, Width)), 0xFFFF0000FFFFLL);
  v49.i32[0] /= v48.i32[0];
  v49.i32[1] /= v48.i32[1];
  v193 = __PAIR64__(Height, Width);
  v197 = v49;
  BytesPerRow = CVPixelBufferGetBytesPerRow(self->_opticalOutputFlowPixelBuffer);
  selfCopy7 = (16 * v197.u32[0] * v197.u32[1]);
  v50 = malloc_type_malloc(selfCopy7, 0x1000040451B5BE8uLL);
  if (!v50)
  {
    sub_3694();
    sub_3700();
    goto LABEL_121;
  }

  v167 = v50;
  v51 = malloc_type_malloc(selfCopy7, 0x1000040451B5BE8uLL);
  if (!v51)
  {
    metadataCopy = 0;
    sub_3700();
    goto LABEL_120;
  }

  v166 = v51;
  selfCopy7 = self;
  if (CVPixelBufferLockBaseAddress(self->_opticalOutputFlowPixelBuffer, 1uLL) || (BaseAddress = CVPixelBufferGetBaseAddress(self->_opticalOutputFlowPixelBuffer)) == 0)
  {
    metadataCopy = 0;
    v18 = -12782;
    goto LABEL_115;
  }

  v52 = v189;
  if (v18 == -65536)
  {
    v53 = 0;
  }

  else
  {
    v52 = v215 + 1;
    v53 = v215;
  }

  v155 = v52;
  if (v53 >= v52)
  {
    metadataCopy = 0;
    v18 = 0;
LABEL_115:
    Width = v145;
    cropRectangleCopy = v146;
    goto LABEL_119;
  }

  v54.f32[0] = Width;
  v55 = metadataCopy;
  LODWORD(v56) = metadataCopy;
  metadataCopy = 0;
  v57 = v55 == 0xFFFF;
  if (v55 == 0xFFFF)
  {
    v58 = v186;
  }

  else
  {
    v58 = (v56 + 1);
  }

  v177 = v58;
  if (v57)
  {
    v56 = 0;
  }

  else
  {
    v56 = v56;
  }

  v164 = cropRectangleCopy;
  v165 = Width;
  v54.f32[1] = v164;
  v59 = vmul_f32(v54, 0x3974C40139379301);
  v67 = vmul_f32(v54, 0x3C2ED5263C031FDCLL);
  v148 = Width;
  v162 = *v67.i32;
  v163 = v59.f32[0];
  v60 = *&v67.i32[1];
  v61 = v59.f32[1];
  v62 = 2 * (BytesPerRow >> 1);
  HIWORD(v201) = WORD2(v193);
  LOWORD(v201) = v193;
  v63 = v56 * v197.u16[2];
  v175 = cropRectangleCopy;
  v147 = cropRectangleCopy - v63;
  v64 = 16 * v197.u16[0];
  v65 = v53 * v197.u16[0];
  v150 = v197.u16[0];
  v66 = v63 * (BytesPerRow >> 1) + 2 * v65;
  v159 = v197.u16[0];
  v149 = 2 * v197.u16[0];
  v174 = v197.u16[2];
  v168 = (BytesPerRow >> 1) * v197.u16[2];
  v172 = matrix_identity_float3x3.columns[1];
  v173 = matrix_identity_float3x3.columns[0];
  v170 = matrix_identity_float3x3.columns[2];
  v67.i32[1] = 1048679446;
  v151 = v56;
  while (1)
  {
    v157 = v66;
    v158 = v53;
    if (v56 < v177)
    {
      break;
    }

LABEL_112:
    v53 = v158 + 1;
    v56 = v151;
    v65 += v150;
    v66 = v157 + v149;
    if (v158 + 1 == v155)
    {
      v18 = 0;
LABEL_117:
      Width = v145;
      goto LABEL_118;
    }
  }

  v68 = v148 - v53 * v159;
  if (v68 >= v159)
  {
    v69 = v159;
  }

  else
  {
    v69 = v68;
  }

  v67.i32[0] = v69;
  v161 = vmovl_u16(v67).u16[0];
  v156 = 2 * v53 * v159;
  v70 = v66;
  v71 = v147;
  v72 = metadataCopy;
  while (1)
  {
    v198 = v72;
    v185 = v71 - v174;
    v73 = v71 >= v174 ? v174 : v71;
    v203 = v173;
    v204 = v172;
    v205 = v170;
    v187 = v56;
    v74 = v56 * v174;
    v75 = v175 - v56 * v174 >= v174 ? v174 : v175 - v56 * v174;
    if ([indexCopy useFlowWeightedAverage])
    {
      break;
    }

    if (v75)
    {
      sub_36F4();
      do
      {
        if (v69)
        {
          v85 = 0;
          v86 = 0;
          v87 = (v78 + v74);
          v88 = v81;
          do
          {
            _H2 = *(v88 - 1);
            __asm { FCVT            S2, H2 }

            _H3 = *v88;
            __asm { FCVT            S3, H3 }

            v93 = (v65 + v86);
            *&v94 = v93 / v165;
            v95 = v80 + v85;
            *&v96 = (v93 / v165) + (_S2 / v165);
            *(&v94 + 1) = v87 / v164;
            *v95 = v94;
            *(v95 + 8) = 0;
            v97 = (v79 + v85);
            *v97 = v96;
            *(&v96 + 1) = (_S3 / v164) + *(v80 + v85 + 4);
            v97[2] = 0;
            *v97 = v96;
            v98 = v93 + _S2;
            if (v98 >= 0.0 && v98 < v165 && (v87 + _S3) >= 0.0 && (v87 + _S3) < v164)
            {
              v101 = fabsf(_S2);
              v102 = fabsf(_S3);
              if (v101 < v162 && v102 < v60)
              {
                v105 = v101 >= v163;
                if (v102 >= v61)
                {
                  v105 = 1;
                }

                if (v105)
                {
                  v104 = 2.0;
                }

                else
                {
                  v104 = 1.0;
                }
              }

              else
              {
                ++v77;
                v104 = 3.0;
                v105 = 1;
              }

              v76 += v105;
              *(v80 + v85 + 8) = v104;
              *(v79 + v85 + 8) = v104;
            }

            ++v86;
            v85 += 16;
            v88 += 2;
          }

          while (v86 < v69);
        }

        ++v78;
        v80 += v64;
        v79 += v64;
        v81 = (v81 + v62);
      }

      while (v78 != v73);
    }

    else
    {
      sub_36F4();
    }

    v106 = (v75 * v69);
    if ((v77 / v106) > 0.6)
    {
      selfCopy6 = self;
      v136 = v166;
      v135 = v167;
LABEL_110:
      v137 = sub_EA84(selfCopy6, &v203, v135, v136);
      if (v137)
      {
        v18 = v137;
        goto LABEL_126;
      }

LABEL_107:
      sub_36F4();
      goto LABEL_91;
    }

    if ((v76 / v106) > 0.6)
    {
      selfCopy6 = self;
      v136 = v166;
      v135 = v167;
      goto LABEL_110;
    }

    v107 = 0;
LABEL_91:
    v108 = 0;
    v210[0] = v203;
    v210[1] = v204;
    v210[2] = v205;
    v211 = 0u;
    v212 = 0u;
    v213 = 0u;
    do
    {
      *(&v211 + v108 * 16) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v82, COERCE_FLOAT(*&v210[v108])), v83, *v210[v108].f32, 1), v84, v210[v108], 2);
      ++v108;
    }

    while (v108 != 3);
    v183 = v70;
    v203.i32[2] = DWORD2(v211);
    v204.i32[2] = DWORD2(v212);
    v203.i64[0] = v211;
    v204.i64[0] = v212;
    v205.i32[2] = DWORD2(v213);
    v205.i64[0] = v213;
    v109 = vmulq_n_f32(v203, 1.0 / *(&v213 + 2));
    v110 = vmulq_n_f32(v204, 1.0 / *(&v213 + 2));
    v203.i32[2] = v109.i32[2];
    v204.i32[2] = v110.i32[2];
    v203.i64[0] = v109.i64[0];
    v204.i64[0] = v110.i64[0];
    v111 = vmulq_n_f32(v205, 1.0 / *(&v213 + 2));
    v205.i32[2] = v111.i32[2];
    v205.i64[0] = v111.i64[0];
    if (v107)
    {
      v109.i64[0] = v203.i64[0];
      v112.i64[0] = v203.i64[0];
      v112.i64[1] = v204.i64[0];
      v113 = vdivq_f32(vaddq_f32(v112, xmmword_17890), xmmword_178A0);
      v114 = vmla_laneq_f32(vmla_laneq_f32(vmla_lane_f32(vmul_n_f32(0xBE85280BBF1B6F91, v113.f32[0]), 0x3F373FE7BE9B3608, *v113.f32, 1), 0xBF118277BEDC2CDDLL, v113, 2), 0x3E9F5F45BF186D29, v113, 3);
      v115 = v204.f32[1];
      if (fabsf(v114.f32[1]) > 2.0)
      {
        v116 = vmuls_lane_f32(v114.f32[0], v114, 1);
        v117 = fabsf(v114.f32[0]);
        if (v116 < 0.0 && v117 > 2.0)
        {
          v203 = v82;
          v204 = v83;
          v109.i64[0] = v82.i64[0];
          v115 = v181.f32[1];
          v205 = v84;
        }
      }

      if (v109.f32[0] < -0.1 || v115 < -0.1)
      {
        v203 = v82;
        v204 = v83;
        v109.i64[0] = v82.i64[0];
        v205 = v84;
      }
    }

    v194 = [NSNumber numberWithFloat:*v109.i64];
    v202[0] = v194;
    LODWORD(v119) = v203.i32[1];
    v192 = [NSNumber numberWithFloat:v119];
    v202[1] = v192;
    LODWORD(v120) = v203.i32[2];
    v190 = [NSNumber numberWithFloat:v120];
    v202[2] = v190;
    LODWORD(v121) = v204.i32[0];
    v188 = [NSNumber numberWithFloat:v121];
    v202[3] = v188;
    LODWORD(v122) = v204.i32[1];
    v123 = [NSNumber numberWithFloat:v122];
    v202[4] = v123;
    LODWORD(v124) = v204.i32[2];
    v125 = [NSNumber numberWithFloat:v124];
    v202[5] = v125;
    LODWORD(v126) = v205.i32[0];
    v127 = [NSNumber numberWithFloat:v126];
    v202[6] = v127;
    LODWORD(v128) = v205.i32[1];
    v129 = [NSNumber numberWithFloat:v128];
    v202[7] = v129;
    LODWORD(v130) = v205.i32[2];
    v131 = [NSNumber numberWithFloat:v130];
    v202[8] = v131;
    v132 = [NSArray arrayWithObjects:v202 count:9];
    metadataCopy = [NSMutableArray arrayWithArray:v132];

    if (!metadataCopy)
    {
      v18 = -12782;
      goto LABEL_117;
    }

    [v176 addObject:metadataCopy];
    v56 = v187 + 1;
    v70 = v183 + v168;
    v71 = v185;
    v72 = metadataCopy;
    v62 = 2 * (BytesPerRow >> 1);
    if (v187 + 1 == v177)
    {
      goto LABEL_112;
    }
  }

  WidthOfPlane = CVPixelBufferGetWidthOfPlane(pixelBuffer, 0);
  CVPixelBufferGetHeightOfPlane(pixelBuffer, 0);
  HIWORD(v199) = v75;
  LOWORD(v199) = v161;
  v133 = sub_E6E0(self, &v203, v201, WidthOfPlane, v199, BaseAddress + 2 * v156 + 2 * v74 * (BytesPerRow >> 1), BytesPerRow, indexCopy);
  if (!v133)
  {
    goto LABEL_107;
  }

  v18 = v133;
  fig_log_get_emitter();
  FigDebugAssert3();
LABEL_126:
  Width = v145;
  metadataCopy = v198;
LABEL_118:
  cropRectangleCopy = v146;
  selfCopy7 = self;
LABEL_119:
  v17 = v144;
  v20 = v166;
LABEL_120:
  v21 = v167;
LABEL_121:
  opticalOutputFlowPixelBuffer = selfCopy7->_opticalOutputFlowPixelBuffer;
  v139 = v20;
  v140 = metadataCopy;
  v141 = v21;
  CVPixelBufferUnlockBaseAddress(opticalOutputFlowPixelBuffer, 1uLL);
  free(v141);
  free(v139);

  return v18;
}

@end