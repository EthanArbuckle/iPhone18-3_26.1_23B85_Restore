@interface PAEKeyer
- (BOOL)addParameters;
- (BOOL)canThrowRenderOutput:(id)output withInput:(id)input withInfo:(id *)info;
- (BOOL)frameSetup:(id *)setup inputInfo:(id *)info hardware:(BOOL *)hardware software:(BOOL *)software;
- (BOOL)pullInitialKey:(id *)key;
- (BOOL)sampleEdge:(void *)edge renderInfo:(id *)info width:(float)width height:(float)height;
- (BOOL)sampleRect:(void *)rect renderInfo:(id *)info width:(float)width height:(float)height;
- (PAEKeyer)initWithAPIManager:(id)manager;
- (double)autokeyAmountToHistoPercent:(double)percent;
- (id)getBlendOptionsAtTime:(id)time;
- (id)properties;
- (int)getColorPrimaries;
- (int)lut2DSize;
- (void)computeModel:(BOOL)model atTime:(id)time;
- (void)dealloc;
- (void)getInputWidth:(float *)width height:(float *)height renderInfo:(id *)info;
- (void)setInitialSamples:(void *)samples;
@end

@implementation PAEKeyer

- (BOOL)sampleEdge:(void *)edge renderInfo:(id *)info width:(float)width height:(float)height
{
  (*(*edge + 16))(&v161, edge, a2);
  (*(*edge + 24))(&v160, edge);
  v11 = [[FxHostCapabilities alloc] initWithAPIManager:self->super.super._apiManager];
  if ([(FxHostCapabilities *)v11 hostIsMotion])
  {
    v12 = *&v161;
  }

  else
  {
    v12 = *&v160;
    v13 = 1.0 - *(&v160 + 1);
    LODWORD(v160) = v161;
    *(&v160 + 1) = 1.0 - *(&v161 + 1);
    *(&v161 + 1) = v13;
  }

  v152 = edge + 48;
  *(edge + 7) = *(edge + 6);
  v14 = 0.0;
  v15 = 0.0;
  if (v12 >= 0.0)
  {
    v15 = 1.0;
    if (v12 <= 1.0)
    {
      v15 = v12;
    }
  }

  *&v161 = v15;
  if (*(&v161 + 1) >= 0.0)
  {
    v14 = 1.0;
    if (*(&v161 + 1) <= 1.0)
    {
      v14 = *(&v161 + 1);
    }
  }

  *(&v161 + 1) = v14;
  v16 = 0.0;
  v17 = 0.0;
  if (*&v160 >= 0.0)
  {
    v17 = 1.0;
    if (*&v160 <= 1.0)
    {
      v17 = *&v160;
    }
  }

  v18 = width * 0.5;
  *&v160 = v17;
  if (*(&v160 + 1) >= 0.0)
  {
    v16 = 1.0;
    if (*(&v160 + 1) <= 1.0)
    {
      v16 = *(&v160 + 1);
    }
  }

  *(&v160 + 1) = v16;
  v19 = (v15 * width) - v18;
  v20 = -v18;
  v21 = -v18;
  if (v19 >= -v18)
  {
    v21 = width * 0.5;
    if (v19 <= v18)
    {
      v21 = v19;
    }
  }

  v22 = height * 0.5;
  v23 = (v17 * width) - v18;
  v24 = -v18;
  if (v23 >= v20)
  {
    v24 = width * 0.5;
    if (v23 <= v18)
    {
      v24 = (v17 * width) - v18;
    }
  }

  v25 = (v14 * height) - v22;
  v26 = -v22;
  v27 = -v22;
  if (v25 >= -v22)
  {
    v27 = height * 0.5;
    if (v25 <= v22)
    {
      v27 = v25;
    }
  }

  v142 = v27;
  v144 = v24;
  v145 = v21;
  widthCopy = width;
  heightCopy = height;
  v28 = (v16 * height) - v22;
  v29 = -v22;
  if (v28 >= v26)
  {
    v29 = height * 0.5;
    if (v28 <= v22)
    {
      v29 = v28;
    }
  }

  v140 = v29;
  v30 = *(edge + 3);
  v31 = *v30;
  v32 = v30[1];
  v34 = v30[2];
  v33 = v30[3];
  if ([(FxHostCapabilities *)v11 hostIsMotion])
  {
    v35 = v32;
    v147 = v34;
    v34 = v31;
    v36 = v33;
  }

  else
  {
    v36 = 1.0 - v32;
    v35 = 1.0 - v33;
    v147 = v31;
  }

  v37 = (v34 * widthCopy) - v18;
  v38 = -v18;
  if (v37 >= v20)
  {
    v38 = v18;
    if (v37 <= v18)
    {
      v38 = (v34 * widthCopy) - v18;
    }
  }

  v39 = (v147 * widthCopy) - v18;
  if (v39 >= v20)
  {
    v20 = v18;
    if (v39 <= v18)
    {
      v20 = (v147 * widthCopy) - v18;
    }
  }

  v40 = rintf(v38);
  v41 = rintf(v20);
  v42 = v35;
  v43 = (v35 * heightCopy) - v22;
  if (v43 <= v22)
  {
    v44 = v43;
  }

  else
  {
    v44 = v22;
  }

  if (v43 >= v26)
  {
    v45 = v44;
  }

  else
  {
    v45 = -v22;
  }

  v46 = (v36 * heightCopy) - v22;
  if (v46 >= v26)
  {
    v26 = v22;
    if (v46 <= v22)
    {
      v26 = (v36 * heightCopy) - v22;
    }
  }

  v47 = rintf(v45);
  v48 = rintf(v26);
  if (v41 < v40 || v41 == v40 && v47 > v48)
  {
    v49 = v40;
    v50 = v47;
    v51 = v41;
  }

  else
  {
    v49 = v41;
    v50 = v48;
    v51 = v40;
    v48 = v47;
  }

  if (v41 == v40)
  {
    v56 = v34;
    v55 = 0.0;
    v53 = 0.0;
    v54 = 0.0;
LABEL_58:
    v57 = 0.0;
    goto LABEL_59;
  }

  v52 = v49 - v51;
  v53 = (v50 - v48) / v52;
  v54 = 0.0;
  if (v53 == 0.0)
  {
    v55 = 0.0;
  }

  else
  {
    v55 = 1.0 / v53;
  }

  v56 = v34;
  if (v53 >= 0.0)
  {
    goto LABEL_58;
  }

  v54 = (v48 - v50);
  v57 = v52;
LABEL_59:
  v58 = rintf(v145);
  v59 = rintf(v144);
  v60 = rintf(v142);
  v61 = rintf(v140);
  v62 = fabsf(v53);
  if (v41 == v40 || v62 >= 1.0)
  {
    v58 = v58 + -3.0;
    v59 = v59 + 3.0;
  }

  else
  {
    v60 = v60 + -3.0;
    v61 = v61 + 3.0;
  }

  if (vabds_f32(v60, v61) < 6.0 || vabds_f32(v58, v59) < 6.0)
  {
    return 0;
  }

  v159[0] = HGRectMake4i(v58, v60, v59, v61);
  v159[1] = v65;
  v158 = 0;
  v66 = *&info->var2;
  v67 = *&info->var4;
  v157[0] = *&info->var0.var0;
  v157[1] = v66;
  v157[2] = v67;
  v68 = [(PAEFilterDefaultBase *)self getInputBitmap:&v158 withInfo:v157 atTime:info->var0.var1 withROI:v159];
  v63 = v68;
  if (v68)
  {
    infoCopy = info;
    v137 = v68;
    width = [v158 width];
    height = [v158 height];
    dataPtr = [v158 dataPtr];
    pixelFormat = [v158 pixelFormat];
    v151 = pixelFormat != 0;
    if (pixelFormat)
    {
      v73 = 2;
    }

    else
    {
      v73 = 1;
    }

    if (pixelFormat)
    {
      v74 = 3;
    }

    else
    {
      v74 = 2;
    }

    v146 = [v158 rowBytes] >> 2;
    v75 = v146 * height;
    selfCopy = self;
    isLutExpandedForHDR = [(PAEKeyer *)self isLutExpandedForHDR];
    v149 = height;
    v77 = width;
    v138 = v11;
    edgeCopy = edge;
    if (v62 < 1.0)
    {
      v78 = height;
      v79 = width;
      if (width >= 1)
      {
        v93 = 0;
        do
        {
          v94 = dataPtr + 16 * v93 + 4 * (v54 + (v53 * v93)) * v146;
          v95 = 6;
          do
          {
            if (v94 >= dataPtr && v75 > ((v94 - dataPtr + 12) >> 2))
            {
              if (isLutExpandedForHDR)
              {
                v96 = *(v94 + 4 * v151);
                if (v96 < 0.0)
                {
                  v96 = 0.0;
                }

                v97 = *(v94 + 4 * v73);
                v98 = *(v94 + 4 * v74);
                if (v97 < 0.0)
                {
                  v97 = 0.0;
                }

                if (v98 < 0.0)
                {
                  v98 = 0.0;
                }
              }

              else
              {
                v99 = *(v94 + 4 * v151);
                if (v99 <= 1.0)
                {
                  v100 = *(v94 + 4 * v151);
                }

                else
                {
                  v100 = 1.0;
                }

                if (v99 >= 0.0)
                {
                  v96 = v100;
                }

                else
                {
                  v96 = 0.0;
                }

                v101 = *(v94 + 4 * v73);
                if (v101 <= 1.0)
                {
                  v102 = *(v94 + 4 * v73);
                }

                else
                {
                  v102 = 1.0;
                }

                if (v101 >= 0.0)
                {
                  v97 = v102;
                }

                else
                {
                  v97 = 0.0;
                }

                v103 = *(v94 + 4 * v74);
                if (v103 <= 1.0)
                {
                  v104 = *(v94 + 4 * v74);
                }

                else
                {
                  v104 = 1.0;
                }

                if (v103 >= 0.0)
                {
                  v98 = v104;
                }

                else
                {
                  v98 = 0.0;
                }
              }

              *&v157[0] = __PAIR64__(LODWORD(v97), LODWORD(v96));
              *(v157 + 2) = v98;
              std::vector<Vec3f>::push_back[abi:ne200100](v152, v157);
              v94 += 4 * v146;
              v79 = width;
            }

            --v95;
          }

          while (v95);
          ++v93;
          v78 = v149;
        }

        while (v93 != (width & 0x7FFFFFFF));
      }
    }

    else
    {
      v78 = height;
      v79 = width;
      if (height >= 1)
      {
        v80 = 0;
        v81 = dataPtr;
        do
        {
          v82 = v81 + 16 * (v57 + (v55 * v80));
          v83 = 6;
          do
          {
            if (v82 >= dataPtr && v75 > ((v82 - dataPtr + 12) >> 2))
            {
              if (isLutExpandedForHDR)
              {
                v84 = *(v82 + 4 * v151);
                if (v84 < 0.0)
                {
                  v84 = 0.0;
                }

                v85 = *(v82 + 4 * v73);
                v86 = *(v82 + 4 * v74);
                if (v85 < 0.0)
                {
                  v85 = 0.0;
                }

                if (v86 < 0.0)
                {
                  v86 = 0.0;
                }
              }

              else
              {
                v87 = *(v82 + 4 * v151);
                if (v87 <= 1.0)
                {
                  v88 = *(v82 + 4 * v151);
                }

                else
                {
                  v88 = 1.0;
                }

                if (v87 >= 0.0)
                {
                  v84 = v88;
                }

                else
                {
                  v84 = 0.0;
                }

                v89 = *(v82 + 4 * v73);
                if (v89 <= 1.0)
                {
                  v90 = *(v82 + 4 * v73);
                }

                else
                {
                  v90 = 1.0;
                }

                if (v89 >= 0.0)
                {
                  v85 = v90;
                }

                else
                {
                  v85 = 0.0;
                }

                v91 = *(v82 + 4 * v74);
                if (v91 <= 1.0)
                {
                  v92 = *(v82 + 4 * v74);
                }

                else
                {
                  v92 = 1.0;
                }

                if (v91 >= 0.0)
                {
                  v86 = v92;
                }

                else
                {
                  v86 = 0.0;
                }
              }

              *&v157[0] = __PAIR64__(LODWORD(v85), LODWORD(v84));
              *(v157 + 2) = v86;
              std::vector<Vec3f>::push_back[abi:ne200100](v152, v157);
              v82 += 16;
              v78 = v149;
              v79 = v77;
            }

            --v83;
          }

          while (v83);
          v81 += 4 * v146;
          ++v80;
        }

        while (v80 != v78);
      }
    }

    v105 = 4 * v79 - 4;
    v106 = v78;
    if (v56 <= v147)
    {
      v107 = 0;
    }

    else
    {
      v107 = 4 * v79 - 4;
    }

    if (v56 > v147)
    {
      v105 = 0;
    }

    v108 = (v106 << 32) - 0x100000000;
    if (v42 <= v36)
    {
      v109 = 0;
    }

    else
    {
      v109 = (v106 << 32) - 0x100000000;
    }

    v110 = dataPtr + ((v109 * v146) >> 30) + 4 * v107;
    v111 = *(v110 + 4 * v73);
    v112 = *(v110 + 4 * v74);
    LODWORD(v157[0]) = *(v110 + 4 * v151);
    *(v157 + 4) = __PAIR64__(v112, v111);
    if (v42 <= v36)
    {
      v113 = v108;
    }

    else
    {
      v113 = 0;
    }

    v114 = dataPtr + ((v113 * v146) >> 30) + 4 * v105;
    v115 = *(v114 + 4 * v73);
    v116 = *(v114 + 4 * v74);
    v156[0] = *(v114 + 4 * v151);
    v156[1] = v115;
    v156[2] = v116;
    v117 = [[PAEKeyerSetupUtil alloc] initWithAPIManager:selfCopy->super.super._apiManager colorPrimaries:[(PAEKeyer *)selfCopy getColorPrimaries] atTime:infoCopy->var0.var1];
    OMKeyer2D::getTolCenterCbCr([(PAEKeyerSetupUtil *)v117 omKeyer], &v155);
    v118 = vmul_f32(v155, 0x3F0000003F000000);

    OMColorUtil::getCbCrFromRGB(v157, 1, v119, v120, v121, v122, v123, v124, &v155);
    OMColorUtil::getCbCrFromRGB(v156, 1, v125, v126, v127, v128, v129, v130, &v154);
    v131 = vsub_f32(v118, v155);
    v132 = vmul_f32(v131, v131);
    v133 = vsub_f32(v118, v154);
    v134 = vmul_f32(v133, v133);
    v153 = vsqrt_f32(vadd_f32(vzip1_s32(v134, v132), vzip2_s32(v134, v132)));
    hostIsMotion = [(FxHostCapabilities *)v138 hostIsMotion];
    v136 = v153.f32[0] < v153.f32[1];
    if (!hostIsMotion)
    {
      v136 = v153.f32[0] > v153.f32[1];
    }

    edgeCopy[84] = v136;

    return v137;
  }

  else
  {
    fwrite("Failed to retrieve input bitmap in Keyer \n", 0x2AuLL, 1uLL, *MEMORY[0x277D85DF8]);
  }

  return v63;
}

- (BOOL)sampleRect:(void *)rect renderInfo:(id *)info width:(float)width height:(float)height
{
  (*(*rect + 16))(&v95, rect, a2);
  (*(*rect + 24))(&v94, rect);
  v11 = 0;
  v14 = *(rect + 6);
  v13 = rect + 48;
  v12 = v14;
  v15 = 1.0;
  if (*&v95 <= 1.0)
  {
    v16 = *&v95;
  }

  else
  {
    v16 = 1.0;
  }

  if (*&v95 < 0.0)
  {
    v16 = 0.0;
  }

  if (*(&v95 + 1) <= 1.0)
  {
    v17 = *(&v95 + 1);
  }

  else
  {
    v17 = 1.0;
  }

  if (*(&v95 + 1) < 0.0)
  {
    v17 = 0.0;
  }

  v18 = v94;
  if (*&v94 <= 1.0)
  {
    v19 = *&v94;
  }

  else
  {
    v19 = 1.0;
  }

  v13[1] = v12;
  v95 = __PAIR64__(LODWORD(v17), LODWORD(v16));
  if (*&v18 >= 0.0)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0.0;
  }

  if (*(&v18 + 1) <= 1.0)
  {
    v15 = *(&v18 + 1);
  }

  if (*(&v18 + 1) < 0.0)
  {
    v15 = 0.0;
  }

  v94 = __PAIR64__(LODWORD(v15), LODWORD(v20));
  if (v20 != v16 && v15 != v17)
  {
    v21 = width * 0.5;
    v22 = height * 0.5;
    v23 = (v16 * width) - (width * 0.5);
    v24 = -(width * 0.5);
    if (v23 <= (width * 0.5))
    {
      v25 = v23;
    }

    else
    {
      v25 = width * 0.5;
    }

    if (v23 >= v24)
    {
      v26 = v25;
    }

    else
    {
      v26 = -(width * 0.5);
    }

    v27 = rintf(v26);
    v28 = (v20 * width) - v21;
    if (v28 <= v21)
    {
      v29 = (v20 * width) - v21;
    }

    else
    {
      v29 = width * 0.5;
    }

    if (v28 >= v24)
    {
      v30 = v29;
    }

    else
    {
      v30 = -(width * 0.5);
    }

    v31 = rintf(v30);
    v32 = (v17 * height) - v22;
    v33 = -v22;
    if (v32 <= v22)
    {
      v34 = v32;
    }

    else
    {
      v34 = height * 0.5;
    }

    if (v32 >= v33)
    {
      v35 = v34;
    }

    else
    {
      v35 = -v22;
    }

    v36 = rintf(v35);
    v37 = (v15 * height) - v22;
    if (v37 <= v22)
    {
      v38 = v37;
    }

    else
    {
      v38 = height * 0.5;
    }

    if (v37 >= v33)
    {
      v33 = v38;
    }

    v39 = rintf(v33);
    v40 = v27 + 1.0;
    if (v31 != v27)
    {
      v40 = v31;
    }

    v41 = v27 == v21 && v31 == v21;
    if (v41)
    {
      v40 = v31;
    }

    if (v41)
    {
      v42 = v21 + -1.0;
    }

    else
    {
      v42 = v27;
    }

    if (v36 == v22 && v39 == v22)
    {
      v36 = v22 + -1.0;
    }

    else if (v39 == v36)
    {
      v39 = v36 + 1.0;
    }

    if (vabds_f32(v36, v39) >= 6.0 && vabds_f32(v42, v40) >= 6.0)
    {
      v93[0] = HGRectMake4i(v42, v36, v40, v39);
      v93[1] = v44;
      v92 = 0;
      v45 = *&info->var2;
      v46 = *&info->var4;
      v91[0] = *&info->var0.var0;
      v91[1] = v45;
      v91[2] = v46;
      v47 = [(PAEFilterDefaultBase *)self getInputBitmap:&v92 withInfo:v91 atTime:info->var0.var1 withROI:v93];
      v11 = v47;
      if (v47)
      {
        v85 = v47;
        dataPtr = [v92 dataPtr];
        pixelFormat = [v92 pixelFormat];
        v50 = pixelFormat != 0;
        if (pixelFormat)
        {
          v51 = 2;
        }

        else
        {
          v51 = 1;
        }

        if (pixelFormat)
        {
          v52 = 3;
        }

        else
        {
          v52 = 2;
        }

        width = [v92 width];
        height = [v92 height];
        isLutExpandedForHDR = [(PAEKeyer *)self isLutExpandedForHDR];
        v90 = height;
        if ([(PAEKeyer *)self isSimpleKey])
        {
          if (height)
          {
            v56 = 0;
            v57 = vcvts_n_f32_u64(width, 1uLL);
            v58 = vcvts_n_f32_u64(height, 1uLL);
            v86 = 4 * v52;
            v88 = 4 * v51;
            v59 = 4 * v50;
            do
            {
              if (width)
              {
                v60 = 0;
                v61 = vcvts_n_f32_u32(v56, 1uLL) - v58;
                v62 = v61 * v61;
                v63 = (dataPtr + v59);
                v64 = (dataPtr + v88);
                v65 = (dataPtr + v86);
                do
                {
                  v66 = vcvts_n_f32_u32(v60, 1uLL);
                  if (sqrtf(v62 + ((v66 - v57) * (v66 - v57))) < v57)
                  {
                    if (isLutExpandedForHDR)
                    {
                      v67 = *v63;
                      if (*v63 < 0.0)
                      {
                        v67 = 0.0;
                      }

                      v68 = *v64;
                      if (*v64 < 0.0)
                      {
                        v68 = 0.0;
                      }

                      v69 = *v65;
                      if (*v65 < 0.0)
                      {
                        v69 = 0.0;
                      }
                    }

                    else
                    {
                      if (*v63 <= 1.0)
                      {
                        v70 = *v63;
                      }

                      else
                      {
                        v70 = 1.0;
                      }

                      if (*v63 >= 0.0)
                      {
                        v67 = v70;
                      }

                      else
                      {
                        v67 = 0.0;
                      }

                      if (*v64 <= 1.0)
                      {
                        v71 = *v64;
                      }

                      else
                      {
                        v71 = 1.0;
                      }

                      if (*v64 >= 0.0)
                      {
                        v68 = v71;
                      }

                      else
                      {
                        v68 = 0.0;
                      }

                      if (*v65 <= 1.0)
                      {
                        v72 = *v65;
                      }

                      else
                      {
                        v72 = 1.0;
                      }

                      if (*v65 >= 0.0)
                      {
                        v69 = v72;
                      }

                      else
                      {
                        v69 = 0.0;
                      }
                    }

                    *&v91[0] = __PAIR64__(LODWORD(v68), LODWORD(v67));
                    *(v91 + 2) = v69;
                    std::vector<Vec3f>::push_back[abi:ne200100](v13, v91);
                  }

                  ++v60;
                  v63 += 4;
                  v64 += 4;
                  v65 += 4;
                }

                while (width != v60);
              }

              dataPtr += [v92 rowBytes] & 0xFFFFFFFFFFFFFFFCLL;
              ++v56;
            }

            while (v56 != v90);
          }
        }

        else if (height)
        {
          v73 = 0;
          v87 = 4 * v51;
          v89 = 4 * v50;
          v74 = 4 * v52;
          do
          {
            if (width)
            {
              v75 = (dataPtr + v89);
              v76 = (dataPtr + v87);
              v77 = (dataPtr + v74);
              v78 = width;
              do
              {
                if (isLutExpandedForHDR)
                {
                  v79 = *v75;
                  if (*v75 < 0.0)
                  {
                    v79 = 0.0;
                  }

                  v80 = *v76;
                  if (*v76 < 0.0)
                  {
                    v80 = 0.0;
                  }

                  v81 = *v77;
                  if (*v77 < 0.0)
                  {
                    v81 = 0.0;
                  }
                }

                else
                {
                  if (*v75 <= 1.0)
                  {
                    v82 = *v75;
                  }

                  else
                  {
                    v82 = 1.0;
                  }

                  if (*v75 >= 0.0)
                  {
                    v79 = v82;
                  }

                  else
                  {
                    v79 = 0.0;
                  }

                  if (*v76 <= 1.0)
                  {
                    v83 = *v76;
                  }

                  else
                  {
                    v83 = 1.0;
                  }

                  if (*v76 >= 0.0)
                  {
                    v80 = v83;
                  }

                  else
                  {
                    v80 = 0.0;
                  }

                  if (*v77 <= 1.0)
                  {
                    v84 = *v77;
                  }

                  else
                  {
                    v84 = 1.0;
                  }

                  if (*v77 >= 0.0)
                  {
                    v81 = v84;
                  }

                  else
                  {
                    v81 = 0.0;
                  }
                }

                *&v91[0] = __PAIR64__(LODWORD(v80), LODWORD(v79));
                *(v91 + 2) = v81;
                std::vector<Vec3f>::push_back[abi:ne200100](v13, v91);
                v75 += 4;
                v76 += 4;
                v77 += 4;
                --v78;
              }

              while (v78);
            }

            dataPtr += [v92 rowBytes] & 0xFFFFFFFFFFFFFFFCLL;
            ++v73;
          }

          while (v73 != v90);
        }

        return v85;
      }

      else
      {
        fwrite("Failed to retrieve input bitmap in Keyer \n", 0x2AuLL, 1uLL, *MEMORY[0x277D85DF8]);
      }
    }

    else
    {
      return 0;
    }
  }

  return v11;
}

- (void)setInitialSamples:(void *)samples
{
  v10 = [[PAEKeyerAutokeySetupUtil alloc] initWithAPIManager:self->super.super._apiManager];
  v6 = *(samples + 6);
  v5 = samples + 48;
  *(v5 + 1) = v6;
  if ([(PAEKeyer *)self use32x32Histogram])
  {
    v7 = 0.015625;
  }

  else
  {
    v7 = 0.0078125;
  }

  [(PAEKeyerAutokeySetupUtil *)v10 getHistogramScale];
  *&v9 = v7 * v8;
  [PAEKeyerInitialize setInitialSamples:v5 autokeySetupUtil:v10 sampleBoxHalfDim:v9];
}

- (void)getInputWidth:(float *)width height:(float *)height renderInfo:(id *)info
{
  v21 = 0;
  v8 = *&info->var2;
  v9 = *&info->var4;
  v20[0] = *&info->var0.var0;
  v20[1] = v8;
  v20[2] = v9;
  [(PAESharedDefaultBase *)self getHeliumImage:&v21 source:1 withInfo:v20 atTime:info->var0.var1];
  *width = [v21 width];
  *height = [v21 height];
  v10 = [[FxHostCapabilities alloc] initWithAPIManager:self->super.super._apiManager];
  if (!-[FxHostCapabilities hostIsMotion](v10, "hostIsMotion") && [v21 fieldOrder])
  {
    inversePixelTransform = [v21 inversePixelTransform];
    v12 = *width;
    v13 = *height;
    [inversePixelTransform transform2DPoint:{0.0, 0.0}];
    v15 = v14;
    v17 = v16;
    [inversePixelTransform transform2DPoint:{v12, v13}];
    *&v18 = v18 - v15;
    *width = fabsf(*&v18);
    *&v18 = v19 - v17;
    *height = fabsf(*&v18);
  }
}

- (void)computeModel:(BOOL)model atTime:(id)time
{
  modelCopy = model;
  v18 = [[PAEKeyerSetupUtil alloc] initWithAPIManager:self->super.super._apiManager colorPrimaries:[(PAEKeyer *)self getColorPrimaries] atTime:time.var1];
  omKeyer = [(PAEKeyerSetupUtil *)v18 omKeyer];
  if ([(PAEKeyer *)self isSimpleKey])
  {
    [(PAEKeyerSetupUtil *)v18 simpleKeyAmount];
  }

  else
  {
    [(PAEKeyerSetupUtil *)v18 autoAdjustSoftGap];
  }

  v9 = v8;
  tight = [(PAEKeyerSetupUtil *)v18 tight];
  omSamples = self->_omSamples;
  [(PAEKeyerSetupUtil *)v18 shadowsGain];
  v13 = v12;
  [(PAEKeyerSetupUtil *)v18 highlightsGain];
  v15 = v14;
  [(PAEKeyerSetupUtil *)v18 spreadGain];
  v17 = v16;
  OMKeyer2D::computeModel(omKeyer, modelCopy, v9, tight, omSamples, v13, v15, v17, [(PAEKeyer *)self isLumaKey], [(PAEKeyer *)self isSimpleKey]);
  [(PAEKeyerSetupUtil *)v18 syncWithDB:time.var1 setAsDefault:0];
}

- (PAEKeyer)initWithAPIManager:(id)manager
{
  v7.receiver = self;
  v7.super_class = PAEKeyer;
  v3 = [(PAESharedDefaultBase *)&v7 initWithAPIManager:manager];
  v4 = [[FxHostCapabilities alloc] initWithAPIManager:v3->super.super._apiManager];
  if (v4)
  {
    v3->_isMotion = [(FxHostCapabilities *)v4 hostIsMotion];
  }

  v3->_toggledAdvancedMode = 0;
  v3->_matteTools = objc_alloc_init(PAEKeyerMatteTools);
  v5 = objc_alloc_init(PAEKeyerPreprocess);
  v3->_preprocessTools = v5;
  v5->_apiManager = v3->super.super._apiManager;
  [(PAEKeyerPreprocess *)v3->_preprocessTools setKeyer:v3];
  operator new();
}

- (id)properties
{
  v2 = [-[PROAPIAccessing apiForProtocol:](self->super.super._apiManager apiForProtocol:{&unk_28735F2C8), "versionAtCreation"}];
  v3 = 1;
  if (v2 > 6)
  {
    v3 = 2;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = *"";
  block[2] = __22__PAEKeyer_properties__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = v3;
  if ([PAEKeyer properties]::once != -1)
  {
    dispatch_once(&[PAEKeyer properties]::once, block);
  }

  return [PAEKeyer properties]::sPropertiesDict;
}

uint64_t __22__PAEKeyer_properties__block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277CBEAC0]);
  v3 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v6 = [MEMORY[0x277CCABB0] numberWithInt:2];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:65792];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:590080];
  result = [v2 initWithObjectsAndKeys:{v3, @"PositionIndependent", v4, @"SupportsLargeRenderScale", v5, @"SupportsHeliumRendering", v6, @"DesiredProcessingColorInfo", v7, @"SDRWorkingSpace", v8, @"HDRWorkingSpace", objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", *(a1 + 32)), @"AutoColorProcessingSupport", 0}];
  [PAEKeyer properties]::sPropertiesDict = result;
  return result;
}

- (int)getColorPrimaries
{
  if ([-[PROAPIAccessing apiForProtocol:](self->super.super._apiManager apiForProtocol:{&unk_28735F2C8), "versionAtCreation"}] < 4 || (v3 = -[PROAPIAccessing apiForProtocol:](self->super.super._apiManager, "apiForProtocol:", &unk_287359A98)) == 0 || (v4 = objc_msgSend(v3, "colorPrimaries"), v4 != 1))
  {
    LODWORD(v4) = 0;
  }

  return v4;
}

- (BOOL)addParameters
{
  v41.receiver = self;
  v41.super_class = PAEKeyer;
  [(PAESharedDefaultBase *)&v41 addParameters];
  MainBundle = CFBundleGetMainBundle();
  if (MainBundle && (Identifier = CFBundleGetIdentifier(MainBundle)) != 0 && ((v5 = Identifier, CFStringCompare(Identifier, @"com.apple.FinalCut", 0) == kCFCompareEqualTo) || CFStringCompare(v5, @"com.apple.FinalCutTrial", 0) == kCFCompareEqualTo))
  {
    if (self->_isMotion)
    {
      v6 = 2;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735B348];
  v8 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735C660];
  v9 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735F2C8];
  if (v9)
  {
    v10 = [v9 versionAtCreation] > 1;
  }

  else
  {
    v10 = 1;
  }

  if (v7)
  {
    v11 = v8 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    return 1;
  }

  v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  isLumaKey = [(PAEKeyer *)self isLumaKey];
  isSimpleKey = [(PAEKeyer *)self isSimpleKey];
  if (isLumaKey)
  {
    v16 = 2;
  }

  else
  {
    v16 = 0;
  }

  if (isSimpleKey)
  {
    v17 = 2;
  }

  else
  {
    v17 = 0;
  }

  v40 = (self->_isMotion || v10) && !isSimpleKey;
  if (v40)
  {
    v18 = 0;
  }

  else
  {
    v18 = 2;
  }

  v38 = v18;
  LODWORD(v36) = 563;
  [v7 addIntSliderWithName:objc_msgSend(v13 parmId:"localizedStringForKey:value:table:" defaultValue:@"Keyer::OSCState" parameterMin:0 parameterMax:0) sliderMin:35 sliderMax:0 delta:0 parmFlags:{2, 0, 0x100000001, v36}];
  [v7 addFloatSliderWithName:objc_msgSend(v13 parmId:"localizedStringForKey:value:table:" defaultValue:@"Keyer::DefaultSoftness" parameterMin:@"DefaultSoftness" parameterMax:0) sliderMin:1 sliderMax:546 delta:9.0 parmFlags:{0.0, 20.0, 0.0, 20.0, 0.1}];
  if (isLumaKey)
  {
    [v7 addCustomParameterWithName:objc_msgSend(v13 parmId:"localizedStringForKey:value:table:" defaultValue:@"Keyer::LumaWidget" parmFlags:{@"Luma", 0), 5, objc_alloc_init(PAEKeyerLumaSetup), 576}];
    [v7 addToggleButtonWithName:objc_msgSend(v13 parmId:"localizedStringForKey:value:table:" defaultValue:@"Keyer::MatteInvert" parmFlags:{@"Invert", 0), 50, 0, 545}];
    [v7 addPercentSliderWithName:objc_msgSend(v13 parmId:"localizedStringForKey:value:table:" defaultValue:@"Keyer::LumaRolloff" parameterMin:@"Luma Rolloff" parameterMax:0) sliderMin:14 sliderMax:0 delta:0.0 parmFlags:{0.0, 1.0, 0.0, 1.0, 0.001}];
  }

  v19 = v17 | v16;
  [v7 addCustomParameterWithName:objc_msgSend(v13 parmId:"localizedStringForKey:value:table:" defaultValue:@"Keyer::Selection" parmFlags:{@"Define Mask", 0), 19, &stru_2872E16E0, v19 | 0x251}];
  if ([(PAEKeyer *)self isSimpleKey])
  {
    v20 = @"Softness";
    v21 = 0.00001;
    v22 = 0.5;
    v23 = 2.0;
    v24 = 1.0;
    v25 = v6 | v16 | 0x201u;
    v26 = v7;
    v27 = 0.00001;
  }

  else
  {
    v20 = [v13 localizedStringForKey:@"Keyer::Strength" value:@"Strength" table:0];
    v22 = 1.0;
    v21 = 0.0;
    v23 = 2.0;
    v27 = 0.0;
    v24 = 1.0;
    v25 = v6 | v16 | 0x201u;
    v26 = v7;
  }

  [v26 addPercentSliderWithName:v20 parmId:36 defaultValue:v25 parameterMin:v22 parameterMax:v21 sliderMin:v23 sliderMax:v27 delta:v24 parmFlags:0.001];
  LODWORD(v37) = 547;
  [v7 addIntSliderWithName:objc_msgSend(v13 parmId:"localizedStringForKey:value:table:" defaultValue:@"Keyer::ViewChannel" parameterMin:0 parameterMax:0) sliderMin:27 sliderMax:0 delta:0 parmFlags:{4, 0, 0x100000004, v37}];
  [v7 addCustomParameterWithName:objc_msgSend(v13 parmId:"localizedStringForKey:value:table:" defaultValue:@"Keyer::NavigateCtrl" parmFlags:{@"Navigate", 0), 37, &stru_2872E16E0, v19 | 0x251}];
  [v7 addCustomParameterWithName:objc_msgSend(v13 parmId:"localizedStringForKey:value:table:" defaultValue:@"Keyer::ViewChannelCtrl" parmFlags:{@"View", 0), 34, &stru_2872E16E0, v17 | 0x271}];
  v39 = isLumaKey || [(PAEKeyerMatteTools *)self->_matteTools addParametersWithParamAPI:v7 hideSimpleViewParam:v17 isLumaKey:0];
  [v7 addPercentSliderWithName:objc_msgSend(v13 parmId:"localizedStringForKey:value:table:" defaultValue:@"Keyer::Spill Level" parameterMin:@"Spill Level" parameterMax:0) sliderMin:20 sliderMax:v19 delta:0.46 parmFlags:{0.0, 1.0, 0.0, 1.0, 0.001}];
  if (!isLumaKey)
  {
    [v7 addToggleButtonWithName:objc_msgSend(v13 parmId:"localizedStringForKey:value:table:" defaultValue:@"Keyer::MatteInvert" parmFlags:{@"Invert", 0), 50, 0, v17 | 0x201}];
  }

  [v7 addCustomParameterWithName:objc_msgSend(v13 parmId:"localizedStringForKey:value:table:" defaultValue:@"Keyer::Autokey" parmFlags:{0, 0), 4, objc_alloc_init(PAEKeyerAutokeySetup), 34}];
  if (!(v40 ^ 1 | isLumaKey))
  {
    [v7 startParameterSubGroup:objc_msgSend(v13 parmId:"localizedStringForKey:value:table:" parmFlags:{@"Keyer::Advanced", @"Advanced", 0), 18, 8}];
  }

  v28 = [v13 localizedStringForKey:@"Keyer::EditMode" value:@"Graph" table:0];
  v29 = v38 | v16;
  v30 = v29 | v17;
  [v7 addCustomParameterWithName:v28 parmId:45 defaultValue:objc_msgSend(MEMORY[0x277CCABB0] parmFlags:{"numberWithInt:", isLumaKey), v30 | 0x261}];
  [v7 addCustomParameterWithName:objc_msgSend(v13 parmId:"localizedStringForKey:value:table:" defaultValue:@"Keyer::ChromaWidget" parmFlags:{@"Chroma", 0), 6, objc_alloc_init(PAEKeyerCbCrSetup), v30 | 0x260}];
  if (!isLumaKey)
  {
    [v7 addCustomParameterWithName:objc_msgSend(v13 parmId:"localizedStringForKey:value:table:" defaultValue:@"Keyer::LumaWidget" parmFlags:{@"Luma", 0), 5, objc_alloc_init(PAEKeyerLumaSetup), v38 | 0x260}];
  }

  [v7 addCustomParameterWithName:objc_msgSend(v13 parmId:"localizedStringForKey:value:table:" defaultValue:@"Keyer::Histogram" parmFlags:{@"Histogram", 0), 9, objc_alloc_init(PAEKeyerHistogram), 66}];
  v31 = v29 | 0x20;
  [v7 addPercentSliderWithName:objc_msgSend(v13 parmId:"localizedStringForKey:value:table:" defaultValue:@"Keyer::ChromaRolloff" parameterMin:@"Chroma Rolloff" parameterMax:0) sliderMin:16 sliderMax:v29 | 0x20u delta:0.1 parmFlags:{0.0, 1.0, 0.0, 1.0, 0.001}];
  [v7 addFloatSliderWithName:objc_msgSend(v13 parmId:"localizedStringForKey:value:table:" defaultValue:@"Keyer::ChromaErode" parameterMin:@"Chroma Erode" parameterMax:0) sliderMin:17 sliderMax:34 delta:0.0 parmFlags:{-0.5, 0.5, -0.25, 0.25, 0.02}];
  if (!isLumaKey)
  {
    [v7 addPercentSliderWithName:objc_msgSend(v13 parmId:"localizedStringForKey:value:table:" defaultValue:@"Keyer::LumaRolloff" parameterMin:@"Luma Rolloff" parameterMax:0) sliderMin:14 sliderMax:v38 | 0x120 delta:0.1 parmFlags:{0.0, 1.0, 0.0, 1.0, 0.001}];
  }

  [(PAEKeyerPreprocess *)self->_preprocessTools addAdvancedParametersWithParamAPI:v7 paramFlags:v30];
  if (!(v40 ^ 1 | isLumaKey))
  {
    [v7 endParameterSubGroup];
  }

  if (v40)
  {
    [v7 startParameterSubGroup:objc_msgSend(v13 parmId:"localizedStringForKey:value:table:" parmFlags:{@"Keyer::MatteTools", @"Matte Tools", 0), 47, 40}];
  }

  if (isLumaKey)
  {
    v39 = [(PAEKeyerMatteTools *)self->_matteTools addParametersWithParamAPI:v7 hideSimpleViewParam:0 isLumaKey:1];
  }

  [(PAEKeyerMatteTools *)self->_matteTools addLevelsParametersWithParamAPI:v8 hideSimpleViewParam:v38];
  [(PAEKeyerMatteTools *)self->_matteTools addAdvancedParametersWithParamAPI:v7 hideSimpleViewParam:v38];
  if (v40)
  {
    [v7 endParameterSubGroup];
  }

  [v7 addFloatSliderWithName:objc_msgSend(v13 parmId:"localizedStringForKey:value:table:" defaultValue:@"Keyer::MinGreen" parameterMin:@"MinGreen" parameterMax:0) sliderMin:38 sliderMax:547 delta:-3.0 parmFlags:{-10.0, 10.0, -10.0, 10.0, 0.1}];
  [v7 addFloatSliderWithName:objc_msgSend(v13 parmId:"localizedStringForKey:value:table:" defaultValue:@"Keyer::MaxGreen" parameterMin:@"MaxGreen" parameterMax:0) sliderMin:39 sliderMax:547 delta:-1.7 parmFlags:{-10.0, 10.0, -10.0, 10.0, 0.1}];
  [v7 addFloatSliderWithName:objc_msgSend(v13 parmId:"localizedStringForKey:value:table:" defaultValue:@"Keyer::GreenChroma" parameterMin:@"GreenChroma" parameterMax:0) sliderMin:40 sliderMax:547 delta:0.09 parmFlags:{-10.0, 10.0, -10.0, 10.0, 0.1}];
  [v7 addFloatSliderWithName:objc_msgSend(v13 parmId:"localizedStringForKey:value:table:" defaultValue:@"Keyer::MinBlue" parameterMin:@"MinBlue" parameterMax:0) sliderMin:41 sliderMax:547 delta:-1.25 parmFlags:{-10.0, 10.0, -10.0, 10.0, 0.1}];
  [v7 addFloatSliderWithName:objc_msgSend(v13 parmId:"localizedStringForKey:value:table:" defaultValue:@"Keyer::MaxBlue" parameterMin:@"MaxBlue" parameterMax:0) sliderMin:42 sliderMax:547 delta:0.125 parmFlags:{-10.0, 10.0, -10.0, 10.0, 0.1}];
  [v7 addFloatSliderWithName:objc_msgSend(v13 parmId:"localizedStringForKey:value:table:" defaultValue:@"Keyer::BlueChroma" parameterMin:@"BlueChroma" parameterMax:0) sliderMin:43 sliderMax:547 delta:0.09 parmFlags:{-10.0, 10.0, -10.0, 10.0, 0.1}];
  [v7 addToggleButtonWithName:objc_msgSend(v13 parmId:"localizedStringForKey:value:table:" defaultValue:@"Keyer::AddTolerance" parmFlags:{@"Add Tolerance", 0), 11, 0, 563}];
  [v7 addToggleButtonWithName:objc_msgSend(v13 parmId:"localizedStringForKey:value:table:" defaultValue:@"Keyer::DefineEdge" parmFlags:{@"Define Edge", 0), 12, 0, 563}];
  if (isLumaKey | v40 ^ 1u)
  {
    [v8 addLevelsWithName:objc_msgSend(v13 parmId:"localizedStringForKey:value:table:" hideGamma:@"Keyer::SpillLevels" parmFlags:{@"Spill Levels", 0), 26, 1, v30}];
    [v7 addPercentSliderWithName:objc_msgSend(v13 parmId:"localizedStringForKey:value:table:" defaultValue:@"Keyer::SubClr" parameterMin:@"Sub Clr" parameterMax:0) sliderMin:23 sliderMax:v31 | v17 delta:0.04 parmFlags:{0.0, 1.0, 0.0, 1.0, 0.001}];
    [v7 addPercentSliderWithName:objc_msgSend(v13 parmId:"localizedStringForKey:value:table:" defaultValue:@"Keyer::LateralSat" parameterMin:@"Lateral Sat" parameterMax:0) sliderMin:24 sliderMax:v31 | v17 delta:0.75 parmFlags:{0.0, 1.0, 0.0, 1.0, 0.001}];
    if ((v40 & 1) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_55;
  }

  [v7 startParameterSubGroup:objc_msgSend(v13 parmId:"localizedStringForKey:value:table:" parmFlags:{@"Keyer::SpillSuppression", @"Spill Suppression", 0), 28, 8}];
  [v8 addLevelsWithName:objc_msgSend(v13 parmId:"localizedStringForKey:value:table:" hideGamma:@"Keyer::SpillLevels" parmFlags:{@"Spill Levels", 0), 26, 1, v30}];
  [v7 addPercentSliderWithName:objc_msgSend(v13 parmId:"localizedStringForKey:value:table:" defaultValue:@"Keyer::SubClr" parameterMin:@"Sub Clr" parameterMax:0) sliderMin:23 sliderMax:v31 | v17 delta:0.04 parmFlags:{0.0, 1.0, 0.0, 1.0, 0.001}];
  [v7 addPercentSliderWithName:objc_msgSend(v13 parmId:"localizedStringForKey:value:table:" defaultValue:@"Keyer::LateralSat" parameterMin:@"Lateral Sat" parameterMax:0) sliderMin:24 sliderMax:v31 | v17 delta:0.75 parmFlags:{0.0, 1.0, 0.0, 1.0, 0.001}];
  [v7 endParameterSubGroup];
  if (v40)
  {
LABEL_55:
    [v7 startParameterSubGroup:objc_msgSend(v13 parmId:"localizedStringForKey:value:table:" parmFlags:{@"Keyer::LightWrap", @"Light Wrap", 0), 33, 8}];
  }

LABEL_56:
  [v7 addFloatSliderWithName:objc_msgSend(v13 parmId:"localizedStringForKey:value:table:" defaultValue:@"Keyer::LightWrapAmount" parameterMin:@"Amount" parameterMax:0) sliderMin:29 sliderMax:v38 | 0x20 delta:0.0 parmFlags:{0.0, 200.0, 0.0, 50.0, 1.0}];
  [v7 addPercentSliderWithName:objc_msgSend(v13 parmId:"localizedStringForKey:value:table:" defaultValue:@"Keyer::LightWrapIntensity" parameterMin:@"Intensity" parameterMax:0) sliderMin:30 sliderMax:v38 | 0x20 delta:1.0 parmFlags:{0.00100000005, 2.0, 0.00100000005, 1.0, 0.001}];
  [v7 addPercentSliderWithName:objc_msgSend(v13 parmId:"localizedStringForKey:value:table:" defaultValue:@"Keyer::LightWrapOpacity" parameterMin:@"Opacity" parameterMax:0) sliderMin:31 sliderMax:v38 | 0x20 delta:1.0 parmFlags:{0.0, 1.0, 0.0, 1.0, 0.001}];
  v32 = [v13 localizedStringForKey:@"Keyer::LightWrapMode" value:@"Mode" table:0];
  v33 = PCBlend::lightWrapModeMenuString(v32);
  [v7 addPopupMenuWithName:v32 parmId:32 defaultValue:0 menuEntries:objc_msgSend(objc_msgSend(v13 parmFlags:{"localizedStringForKey:value:table:", @"Keyer::LightWrapModes", PCString::ns_str(v33), 0), "componentsSeparatedByString:", @";", v38 | 0x221}];
  if (v40)
  {
    [v7 endParameterSubGroup];
  }

  [v7 addFloatSliderWithName:objc_msgSend(v13 parmId:"localizedStringForKey:value:table:" defaultValue:@"Keyer::LumaErode" parameterMin:@"Luma Erode" parameterMax:0) sliderMin:15 sliderMax:34 delta:0.0 parmFlags:{-0.5, 0.5, -0.25, 0.25, 0.02}];
  [v7 addToggleButtonWithName:objc_msgSend(v13 parmId:"localizedStringForKey:value:table:" defaultValue:@"Keyer::computeModel" parmFlags:{@"computeModel", 0), 13, 0, 563}];
  v34 = [v13 localizedStringForKey:@"Keyer::NoPremultiply" value:@"Preserve RGB" table:0];
  if (isLumaKey)
  {
    v35 = 545;
  }

  else
  {
    v35 = 547;
  }

  [v7 addToggleButtonWithName:v34 parmId:7 defaultValue:0 parmFlags:v35];
  [v7 addToggleButtonWithName:objc_msgSend(v13 parmId:"localizedStringForKey:value:table:" defaultValue:@"Keyer::KeyerIsInitialized" parmFlags:{@"KeyerIsInitialized", 0), 8, isLumaKey, 547}];
  return v39;
}

- (BOOL)pullInitialKey:(id *)key
{
  if (key)
  {
    *key = 0;
  }

  return 1;
}

- (double)autokeyAmountToHistoPercent:(double)percent
{
  v4 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735F2C8];
  if (percent <= 1.0 || [v4 versionAtCreation] > 6)
  {
    return percent * 0.9;
  }

  else
  {
    return (percent + -1.0) * 0.1 + 0.9;
  }
}

- (BOOL)canThrowRenderOutput:(id)output withInput:(id)input withInfo:(id *)info
{
  v9 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  v10 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735C2C8];
  if (v9)
  {
    v11 = v10 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    goto LABEL_103;
  }

  v12 = v10;
  v13 = [(PAESharedDefaultBase *)self getRenderMode:info->var0.var1];
  if (v13)
  {
    if ([input imageType] != 3)
    {
      goto LABEL_103;
    }

    width = [input width];
    height = [input height];
    upscalesFields = [[[FxHostCapabilities alloc] initWithAPIManager:self->super.super._apiManager] upscalesFields];
    outputCopy = output;
    [output pixelAspect];
    v18 = v17;
    if (info->var2 == 0 || upscalesFields)
    {
      v19 = 1.0;
    }

    else
    {
      v19 = 2.0;
    }

    if (info->var2 == 0 || upscalesFields)
    {
      v20 = v18;
    }

    else
    {
      v20 = v18 + v18;
    }

    nclcValue = [input nclcValue];
    if (input)
    {
      [input heliumRef];
      v117 = v118;
      if (v118)
      {
        (*(*v118 + 16))(v118);
        v116 = v118;
        (*(*v118 + 16))(v118);
        v115 = v118;
        (*(*v118 + 16))(v118);
        v114 = v118;
        (*(*v118 + 16))(v118);
        goto LABEL_18;
      }
    }

    else
    {
      v117 = 0;
      v118 = 0;
    }

    v116 = 0;
    v115 = 0;
    v114 = 0;
LABEL_18:
    [(PAESharedDefaultBase *)self getPixelTransformForImage:input];
    *&v22 = width;
    *&v23 = height;
    HIDWORD(v24) = HIDWORD(v112);
    HIDWORD(v25) = HIDWORD(v113);
    *&v24 = v112;
    v26 = v113;
    *&v25 = fabsf(v26);
    preprocessTools = self->_preprocessTools;
    v28 = *&info->var2;
    v101 = *&info->var0.var0;
    v102 = v28;
    v103 = *&info->var4;
    if (![(PAEKeyerPreprocess *)preprocessTools doPreprocessKeyerFootageWithParamAPI:v9 withInfo:&v101 linearInput:(nclcValue & 0xFF00) == 2048 scaleX:&v116 scaleY:&v117 width:&v115 height:v24 fixDVResult:v25 degrainResult:v22 outputNode:v23])
    {
      v35 = 0;
      goto LABEL_91;
    }

    v111 = 0;
    [v9 getBoolValue:&v111 fromParm:50 atFxTime:info->var0.var1];
    v29 = [[PAEKeyerSetupUtil alloc] initWithAPIManager:self->super.super._apiManager colorPrimaries:[(PAEKeyer *)self getColorPrimaries] atTime:info->var0.var1];
    v30 = [(PAEKeyerSetupUtil *)v29 keyerActiveAt:info->var0.var1];
    v75 = v29;
    omKeyer = [(PAEKeyerSetupUtil *)v29 omKeyer];
    if (v30)
    {
      v110 = v115;
      if (v115)
      {
        (*(*v115 + 16))(v115);
      }

      [(PAEKeyer *)self getKeyerNode:&v110 omKeyer:omKeyer atTime:info->var0.var1];
      if (v110)
      {
        (*(*v110 + 24))(v110);
      }

      v31 = v101;
      if (v115 != v101)
      {
        if (v115)
        {
          (*(*v115 + 24))(v115);
          v31 = v101;
        }

        v115 = v31;
        if (v31)
        {
          (*(*v31 + 16))(v31);
        }
      }

      isLumaKey = [(PAEKeyer *)self isLumaKey];
      isLumaKey2 = [(PAEKeyer *)self isLumaKey];
      if (v101)
      {
        (*(*v101 + 24))(v101);
      }

      v73 = !isLumaKey;
      v34 = !isLumaKey2;
    }

    else
    {
      v111 = 0;
      v36 = v118;
      if (v115 != v118)
      {
        if (v115)
        {
          (*(*v115 + 24))(v115);
          v36 = v118;
        }

        v115 = v36;
        if (v36)
        {
          (*(*v36 + 16))(v36);
        }
      }

      v34 = 0;
      v73 = 0;
    }

    matteTools = self->_matteTools;
    v38 = *&info->var2;
    v101 = *&info->var0.var0;
    v102 = v38;
    v103 = *&info->var4;
    v39 = v111;
    [(PAESharedDefaultBase *)self getBlendingGamma];
    LODWORD(v41) = v40;
    LOBYTE(v72) = 1;
    *&v42 = v20;
    *&v43 = v19;
    v35 = [(PAEKeyerMatteTools *)matteTools doMatteManipulationWithParamAPI:v9 withPrivateParamAPI:v12 withInfo:&v101 pixelAspectRatio:v39 fieldHeight:v34 doInvertMatte:1 inputIsInverted:v42 fillHoles:v43 scaling:v41 blendingGamma:v72 preKeyedInputNode:&v114 outputNode:&v115];
    if (!v35)
    {

      goto LABEL_91;
    }

    v109 = 0;
    [v9 getIntValue:&v109 fromParm:27 atFxTime:info->var0.var1];
    if (v109 > 2)
    {
      if (v109 == 3)
      {
        v44 = v115;
        v45 = v117;
        if (v115 == v117)
        {
          goto LABEL_87;
        }

        if (v115)
        {
          (*(*v115 + 24))(v115);
          v45 = v117;
        }

        goto LABEL_69;
      }

      if (v109 == 4)
      {
        v44 = v115;
        v45 = v116;
        if (v115 == v116)
        {
          goto LABEL_87;
        }

        if (v115)
        {
          (*(*v115 + 24))(v115);
          v45 = v116;
        }

        goto LABEL_69;
      }
    }

    else
    {
      if (v109 == 1)
      {
        if (v30)
        {
          v61 = HGObject::operator new(0x1A0uLL);
          HgcAlphaMult::HgcAlphaMult(v61);
          (*(*v61 + 120))(v61, 0, v114);
          (*(*v61 + 120))(v61, 1, v115);
          if (v115 != v61)
          {
            if (v115)
            {
              (*(*v115 + 24))(v115);
            }

            v115 = v61;
            (*(*v61 + 16))(v61);
          }

          (*(*v61 + 24))(v61);
        }

        v62 = HGObject::operator new(0x1A0uLL);
        *(v62 + 24) = 0u;
        *(v62 + 25) = 0u;
        *(v62 + 22) = 0u;
        *(v62 + 23) = 0u;
        *(v62 + 20) = 0u;
        *(v62 + 21) = 0u;
        *(v62 + 18) = 0u;
        *(v62 + 19) = 0u;
        *(v62 + 16) = 0u;
        *(v62 + 17) = 0u;
        *(v62 + 14) = 0u;
        *(v62 + 15) = 0u;
        *(v62 + 12) = 0u;
        *(v62 + 13) = 0u;
        *(v62 + 10) = 0u;
        *(v62 + 11) = 0u;
        *(v62 + 8) = 0u;
        *(v62 + 9) = 0u;
        *(v62 + 6) = 0u;
        *(v62 + 7) = 0u;
        *(v62 + 4) = 0u;
        *(v62 + 5) = 0u;
        *(v62 + 2) = 0u;
        *(v62 + 3) = 0u;
        *v62 = 0u;
        *(v62 + 1) = 0u;
        HgcCopyAlpha::HgcCopyAlpha(v62);
      }

      if (v109 == 2)
      {
        v44 = v115;
        v45 = v118;
        if (v115 == v118)
        {
          goto LABEL_87;
        }

        if (v115)
        {
          (*(*v115 + 24))();
          v45 = v118;
        }

LABEL_69:
        v115 = v45;
        if (!v45)
        {
          *&v101 = 0;
LABEL_89:
          [(PAESharedDefaultBase *)self crop:&v101 fromImage:input toImage:outputCopy];

          [outputCopy setHeliumRef:&v101];
          if (v101)
          {
            (*(*v101 + 24))(v101);
          }

LABEL_91:
          if (v114)
          {
            (*(*v114 + 24))(v114);
          }

          if (v115)
          {
            (*(*v115 + 24))(v115);
          }

          if (v116)
          {
            (*(*v116 + 24))(v116);
          }

          if (v117)
          {
            (*(*v117 + 24))(v117);
          }

          if (v118)
          {
            (*(*v118 + 24))(v118);
          }

          if (v35)
          {
            LOBYTE(v13) = 1;
            return v13;
          }

LABEL_103:
          LOBYTE(v13) = 0;
          return v13;
        }

        (*(*v45 + 16))(v45);
        goto LABEL_86;
      }
    }

    v44 = v115;
    if (v114 == v115)
    {
      goto LABEL_87;
    }

    v46 = HGObject::operator new(0x1A0uLL);
    HgcPostKeyer::HgcPostKeyer(v46);
    (*(*v46 + 120))(v46, 0, v115);
    (*(*v46 + 120))(v46, 1, v114);
    var1 = info->var0.var1;
    *&v101 = 0;
    [v9 getFloatValue:&v101 fromParm:20 atFxTime:var1];
    v48 = *&v101;
    v49 = v73;
    if (v48 < 0.1)
    {
      v49 = 0;
    }

    if (v49 != 1)
    {
      (*(*v46 + 120))(v46, 2, v114);
LABEL_79:
      LOBYTE(v101) = 0;
      [v9 getBoolValue:&v101 fromParm:7 atFxTime:info->var0.var1];
      v70.n128_u32[0] = 1.0;
      if (!v101)
      {
        v70.n128_f32[0] = -1.0;
      }

      (*(*v46 + 96))(v46, 0, v70, v70.n128_f32[0], v70.n128_f32[0], v70.n128_f32[0]);
      if (v115 != v46)
      {
        if (v115)
        {
          (*(*v115 + 24))();
        }

        v115 = v46;
        (*(*v46 + 16))(v46);
      }

      (*(*v46 + 24))(v46);
LABEL_86:
      v44 = v115;
LABEL_87:
      *&v101 = v44;
      if (v44)
      {
        (*(*v44 + 16))(v44);
      }

      goto LABEL_89;
    }

    v107 = 0x3F0000003F000000;
    v108 = 1056964608;
    v50 = info->var0.var1;
    *&v101 = 0;
    [v9 getFloatValue:&v101 fromParm:23 atFxTime:v50];
    v51 = *&v101;
    v52 = info->var0.var1;
    *&v101 = 0;
    [v9 getFloatValue:&v101 fromParm:24 atFxTime:v52];
    v53 = *&v101;
    v105 = 0.0;
    v106 = 0.0;
    v104 = 0;
    [v12 getLevelsBlack:&v106 White:&v105 Gamma:&v104 fromParm:26 atTime:info->var0.var1];
    v54 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735F2C8];
    v55 = (v48 + -0.100000001) / 9.0;
    if (v54)
    {
      versionAtCreation = [v54 versionAtCreation];
      v57 = v55;
      v58 = v106;
      if (versionAtCreation < 3)
      {
        v59 = 0;
        v60 = v105 + -1.0;
LABEL_75:
        getColorPrimaries = [(PAEKeyer *)self getColorPrimaries];
        isApplyTuningForRec2020 = [(PAEKeyer *)self isApplyTuningForRec2020];
        v65 = v53;
        OMKeyer2D::getSpillSuppressTransf(omKeyer, &v107, &v101, &v89, &v77, getColorPrimaries, isApplyTuningForRec2020, v57, v58, v60, 0.0, v65);
        v66 = HGObject::operator new(0x1A0uLL);
        if (v59)
        {
          HgcSpillRemovalDarkEdges::HgcSpillRemovalDarkEdges(v66);
          (*(*v66 + 96))(v66, 0, v89, v90, v91, v92);
          (*(*v66 + 96))(v66, 1, v93, v94, v95, v96);
          (*(*v66 + 96))(v66, 2, v97, v98, v99, v100);
          (*(*v66 + 96))(v66, 3, *&v103, *(&v103 + 1), *(&v103 + 2), *(&v103 + 3));
          (*(*v66 + 96))(v66, 4, *&v102, *(&v102 + 1), *(&v102 + 2), *(&v102 + 3));
          (*(*v66 + 96))(v66, 5, 0.0, 0.0, 0.0, 0.0);
          (*(*v66 + 96))(v66, 6, v77, v78, v79, v80);
          (*(*v66 + 96))(v66, 7, v81, v82, v83, v84);
          (*(*v66 + 96))(v66, 8, v85, v86, v87, v88);
          v67 = v51 * 20.0;
          (*(*v66 + 96))(v66, 9, v67, v67, v67, v67);
          v68 = v105;
          (*(*v66 + 96))(v66, 10, v68, v68, v68, 1.0);
          (*(*v66 + 96))(v66, 11, 10.0, 10.0, 10.0, 10.0);
        }

        else
        {
          HgcSpillRemoval::HgcSpillRemoval(v66);
          (*(*v66 + 96))(v66, 0, v89, v90, v91, v92);
          (*(*v66 + 96))(v66, 1, v93, v94, v95, v96);
          (*(*v66 + 96))(v66, 2, v97, v98, v99, v100);
          (*(*v66 + 96))(v66, 3, *&v103, *(&v103 + 1), *(&v103 + 2), *(&v103 + 3));
          (*(*v66 + 96))(v66, 4, *&v102, *(&v102 + 1), *(&v102 + 2), *(&v102 + 3));
          (*(*v66 + 96))(v66, 5, 0.0, 0.0, 0.0, 0.0);
          (*(*v66 + 96))(v66, 6, v77, v78, v79, v80);
          (*(*v66 + 96))(v66, 7, v81, v82, v83, v84);
          (*(*v66 + 96))(v66, 8, v85, v86, v87, v88);
          v69 = v51 * 20.0;
          (*(*v66 + 96))(v66, 9, v69, v69, v69, v69);
        }

        (*(*v66 + 120))(v66, 0, v114);
        (*(*v46 + 120))(v46, 2, v66);
        (*(*v66 + 24))(v66);
        goto LABEL_79;
      }
    }

    else
    {
      v57 = v55;
      v58 = v106;
    }

    v60 = 0.0;
    v59 = 1;
    goto LABEL_75;
  }

  return v13;
}

- (BOOL)frameSetup:(id *)setup inputInfo:(id *)info hardware:(BOOL *)hardware software:(BOOL *)software
{
  *software = 0;
  *hardware = 0;
  v6 = *&setup->var2;
  v8[0] = *&setup->var0.var0;
  v8[1] = v6;
  v8[2] = *&setup->var4;
  [(PAESharedDefaultBase *)self overrideFrameSetupForRenderMode:v8 hardware:hardware software:software];
  return 1;
}

- (void)dealloc
{
  omSamples = self->_omSamples;
  if (omSamples)
  {
    (*(*omSamples + 8))(omSamples, a2);
  }

  lutsBitmapLoaderCache = self->_lutsBitmapLoaderCache;
  if (lutsBitmapLoaderCache)
  {
    (*(*lutsBitmapLoaderCache + 24))(lutsBitmapLoaderCache);
  }

  v5.receiver = self;
  v5.super_class = PAEKeyer;
  [(PAESharedDefaultBase *)&v5 dealloc];
}

- (id)getBlendOptionsAtTime:(id)time
{
  v5 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735B348];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v19 = 0;
  [v5 getIntValue:&v19 fromParm:27 atFxTime:time.var1];
  v18 = 0.0;
  [v6 getFloatValue:&v18 fromParm:29 atFxTime:time.var1];
  v7 = 0;
  v8 = v18 * 0.5;
  v18 = v18 * 0.5;
  if (!v19 && v8 > 0.0)
  {
    v17 = 0;
    [v6 getIntValue:&v17 fromParm:32 atFxTime:time.var1];
    v20 = 0.0;
    [v6 getFloatValue:&v20 fromParm:30 atFxTime:time.var1];
    v9 = v20;
    if ([(PAEKeyer *)self isWideGamutHDR])
    {
      v10 = 42.333;
    }

    else
    {
      v10 = 1.0;
    }

    v20 = 0.0;
    [v6 getFloatValue:&v20 fromParm:31 atFxTime:time.var1];
    v11 = v20;
    v7 = objc_alloc_init(PCFxLightWrapOptions);
    [(PCFxBlendOptions *)v7 setBlendMode:35];
    HIDWORD(v12) = HIDWORD(v18);
    *&v12 = v18;
    [(PCFxLightWrapOptions *)v7 setAmount:v12];
    *&v13 = v9;
    [(PCFxLightWrapOptions *)v7 setIntensity:v13];
    *&v14 = v10;
    [(PCFxLightWrapOptions *)v7 setIntensityScale:v14];
    *&v15 = v11;
    [(PCFxLightWrapOptions *)v7 setOpacity:v15];
    [(PCFxLightWrapOptions *)v7 setLRBlendMode:PCBlend::lrBlendToPCBlend(v17)];
  }

  return v7;
}

- (int)lut2DSize
{
  if (!self->_lut2DSizeCached)
  {
    v3 = [[PAEKeyerAutokeySetupUtil alloc] initWithAPIManager:self->super.super._apiManager];
    [(PAEKeyerAutokeySetupUtil *)v3 getHistogramScale];
    v5 = v4 << 8;
    if (v5 <= 512)
    {
      v5 = 512;
    }

    self->_lut2DSize = v5;

    self->_lut2DSizeCached = 1;
  }

  return self->_lut2DSize;
}

@end