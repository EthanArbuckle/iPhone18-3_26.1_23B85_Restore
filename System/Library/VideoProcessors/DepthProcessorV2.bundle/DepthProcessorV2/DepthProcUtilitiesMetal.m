@interface DepthProcUtilitiesMetal
- (DepthProcUtilitiesMetal)initWithMetalContext:(id)a3;
- (id)prepareForFbs:(id)a3 toF32:(id)a4 confidenceInF16:(id)a5 confidenceOutF32:(id)a6;
- (int)allocateResources;
- (int)buildFindMask:(id)a3 value:(float)a4 outputBuffer:(id)a5;
- (int)disparityDataOverrideOnGpu:(id)a3 To:(id)a4;
- (int)makeForegroundMask:(id)a3 personSegmentationMap:(id)a4 validForegroundMask:(id)a5 minSegmentationThreshold:(float)a6;
- (int)postErosion:(id)a3 outputConfidence:(id)a4 outputDisparity:(id)a5;
- (int)postFbs:(id)a3 toF16:(id)a4 prepareBuffer:(id)a5;
- (int)preprocessData:(float)a3 inputDisparity:(id)a4 outputDisparity:(id)a5 outputConfidence:(id)a6;
- (int)setFarWithDistance:(id)a3 inputDistanceTransformMap:(id)a4 inputDisparity:(id)a5 inoutConfidenceMap:(id)a6 outputDistanceTransformDisparity:(id)a7;
- (void)dealloc;
- (void)releaseResources;
@end

@implementation DepthProcUtilitiesMetal

- (DepthProcUtilitiesMetal)initWithMetalContext:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    sub_29573B0D0();
    goto LABEL_26;
  }

  v59.receiver = self;
  v59.super_class = DepthProcUtilitiesMetal;
  v6 = [(DepthProcUtilitiesMetal *)&v59 init];
  self = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_metalContext, a3);
    v10 = objc_msgSend_computePipelineStateFor_constants_(self->_metalContext, v7, @"kernelPreprocessData", 0, v8, v9);
    kernelPreprocessData = self->_kernelPreprocessData;
    self->_kernelPreprocessData = v10;

    if (self->_kernelPreprocessData)
    {
      v15 = objc_msgSend_computePipelineStateFor_constants_(self->_metalContext, v12, @"kernelPostErosion", 0, v13, v14);
      kernelPostErosion = self->_kernelPostErosion;
      self->_kernelPostErosion = v15;

      if (self->_kernelPostErosion)
      {
        v20 = objc_msgSend_computePipelineStateFor_constants_(self->_metalContext, v17, @"kernelGetFarDistanceMin", 0, v18, v19);
        kernelGetFarDistanceMin = self->_kernelGetFarDistanceMin;
        self->_kernelGetFarDistanceMin = v20;

        if (self->_kernelGetFarDistanceMin)
        {
          v25 = objc_msgSend_computePipelineStateFor_constants_(self->_metalContext, v22, @"kernelSetFarDistance", 0, v23, v24);
          kernelSetFarDistance = self->_kernelSetFarDistance;
          self->_kernelSetFarDistance = v25;

          if (self->_kernelSetFarDistance)
          {
            v30 = objc_msgSend_computePipelineStateFor_constants_(self->_metalContext, v27, @"kernelPostFbs", 0, v28, v29);
            kernelPostFbs = self->_kernelPostFbs;
            self->_kernelPostFbs = v30;

            if (self->_kernelPostFbs)
            {
              v35 = objc_msgSend_computePipelineStateFor_constants_(self->_metalContext, v32, @"_kernelPrepareFbsPart1", 0, v33, v34);
              kernelPrepareFbsPart1 = self->_kernelPrepareFbsPart1;
              self->_kernelPrepareFbsPart1 = v35;

              if (self->_kernelPrepareFbsPart1)
              {
                v40 = objc_msgSend_computePipelineStateFor_constants_(self->_metalContext, v37, @"kernelPrepareFbsPart2", 0, v38, v39);
                kernelPrepareFbsPart2 = self->_kernelPrepareFbsPart2;
                self->_kernelPrepareFbsPart2 = v40;

                if (self->_kernelPrepareFbsPart2)
                {
                  v45 = objc_msgSend_computePipelineStateFor_constants_(self->_metalContext, v42, @"kernelDisparityDataOverride", 0, v43, v44);
                  kernelDisparityDataOverride = self->_kernelDisparityDataOverride;
                  self->_kernelDisparityDataOverride = v45;

                  if (self->_kernelDisparityDataOverride)
                  {
                    v50 = objc_msgSend_computePipelineStateFor_constants_(self->_metalContext, v47, @"kernelmakeForegroundMask", 0, v48, v49);
                    kernelmakeForegroundMask = self->_kernelmakeForegroundMask;
                    self->_kernelmakeForegroundMask = v50;

                    if (self->_kernelmakeForegroundMask)
                    {
                      v55 = objc_msgSend_computePipelineStateFor_constants_(self->_metalContext, v52, @"kernelBuildFindMask", 0, v53, v54);
                      kernelBuildFindMask = self->_kernelBuildFindMask;
                      self->_kernelBuildFindMask = v55;

                      if (self->_kernelBuildFindMask)
                      {
                        goto LABEL_13;
                      }

                      sub_29573AC48();
                    }

                    else
                    {
                      sub_29573ACBC();
                    }
                  }

                  else
                  {
                    sub_29573AD30();
                  }
                }

                else
                {
                  sub_29573ADA4();
                }
              }

              else
              {
                sub_29573AE18();
              }
            }

            else
            {
              sub_29573AE8C();
            }
          }

          else
          {
            sub_29573AF00();
          }
        }

        else
        {
          sub_29573AF74();
        }
      }

      else
      {
        sub_29573AFE8();
      }
    }

    else
    {
      sub_29573B05C();
    }

LABEL_26:
    v57 = 0;
    goto LABEL_14;
  }

LABEL_13:
  self = self;
  v57 = self;
LABEL_14:

  return v57;
}

- (int)allocateResources
{
  v7 = 4 * objc_msgSend_maxTotalThreadsPerThreadgroup(self->_kernelGetFarDistanceMin, a2, v2, v3, v4, v5);
  v13 = objc_msgSend_device(self->_metalContext, v8, v9, v10, v11, v12);
  v17 = objc_msgSend_newBufferWithLength_options_(v13, v14, v7, 0, v15, v16);
  setFarDistFurthestDisparityArray = self->_setFarDistFurthestDisparityArray;
  self->_setFarDistFurthestDisparityArray = v17;

  if (!self->_setFarDistFurthestDisparityArray)
  {
    sub_29573B144();
  }

  return 0;
}

- (void)releaseResources
{
  setFarDistFurthestDisparityArray = self->_setFarDistFurthestDisparityArray;
  self->_setFarDistFurthestDisparityArray = 0;
  MEMORY[0x2A1C71028]();
}

- (void)dealloc
{
  objc_msgSend_releaseResources(self, a2, v2, v3, v4, v5);
  v7.receiver = self;
  v7.super_class = DepthProcUtilitiesMetal;
  [(DepthProcUtilitiesMetal *)&v7 dealloc];
}

- (int)preprocessData:(float)a3 inputDisparity:(id)a4 outputDisparity:(id)a5 outputConfidence:(id)a6
{
  v147 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v17 = v11;
  if (!v9)
  {
    sub_29573B6C8(v146);
    goto LABEL_25;
  }

  if (!v10)
  {
    sub_29573B61C(v146);
    goto LABEL_25;
  }

  if (!v11)
  {
    sub_29573B570(v146);
    goto LABEL_25;
  }

  v18 = objc_msgSend_width(v9, v12, v13, v14, v15, v16);
  v24 = objc_msgSend_height(v9, v19, v20, v21, v22, v23);
  if (objc_msgSend_pixelFormat(v9, v25, v26, v27, v28, v29) != 25)
  {
    sub_29573B204(v146);
    goto LABEL_25;
  }

  if (objc_msgSend_pixelFormat(v10, v30, v31, v32, v33, v34) != 25 || objc_msgSend_width(v10, v35, v36, v37, v38, v39) != v18 || objc_msgSend_height(v10, v40, v41, v42, v43, v44) != v24)
  {
    sub_29573B2B0(v146);
LABEL_25:
    v143 = v146[0];
    goto LABEL_16;
  }

  if (objc_msgSend_pixelFormat(v17, v45, v46, v47, v48, v49) != 25 || objc_msgSend_width(v17, v50, v51, v52, v53, v54) != v18 || objc_msgSend_height(v17, v55, v56, v57, v58, v59) != v24)
  {
    sub_29573B35C(v146);
    goto LABEL_25;
  }

  v65 = objc_msgSend_commandQueue(self->_metalContext, v60, v61, v62, v63, v64);
  v71 = objc_msgSend_commandBuffer(v65, v66, v67, v68, v69, v70);

  if (!v71)
  {
    sub_29573B4C4(v146);
    goto LABEL_25;
  }

  v77 = objc_msgSend_computeCommandEncoder(v71, v72, v73, v74, v75, v76);
  if (!v77)
  {
    sub_29573B408();
    goto LABEL_25;
  }

  v82 = v77;
  objc_msgSend_setComputePipelineState_(v77, v78, self->_kernelPreprocessData, v79, v80, v81);
  objc_msgSend_setTexture_atIndex_(v82, v83, v9, 0, v84, v85);
  objc_msgSend_setTexture_atIndex_(v82, v86, v10, 1, v87, v88);
  objc_msgSend_setTexture_atIndex_(v82, v89, v17, 2, v90, v91);
  objc_msgSend_setBytes_length_atIndex_(v82, v92, &v147, 4, 0, v93);
  v99 = objc_msgSend_threadExecutionWidth(self->_kernelPreprocessData, v94, v95, v96, v97, v98);
  v105 = objc_msgSend_maxTotalThreadsPerThreadgroup(self->_kernelPreprocessData, v100, v101, v102, v103, v104);
  v146[0] = v18 >> 1;
  v146[1] = v24 >> 1;
  v146[2] = 1;
  v145[0] = v99;
  v145[1] = v105 / v99;
  v145[2] = 1;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v82, v106, v146, v145, v107, v108);
  objc_msgSend_endEncoding(v82, v109, v110, v111, v112, v113);
  if (*MEMORY[0x29EDB9270])
  {
    v119 = objc_msgSend_commandQueue(v71, v114, v115, v116, v117, v118);
    v125 = objc_msgSend_commandBuffer(v119, v120, v121, v122, v123, v124);

    objc_msgSend_setLabel_(v125, v126, @"KTRACE_MTLCMDBUF", v127, v128, v129);
    objc_msgSend_addCompletedHandler_(v125, v130, &unk_2A1C98440, v131, v132, v133);
    objc_msgSend_commit(v125, v134, v135, v136, v137, v138);
    objc_msgSend_addCompletedHandler_(v71, v139, &unk_2A1C98460, v140, v141, v142);
  }

  objc_msgSend_commit(v71, v114, v115, v116, v117, v118);

  v143 = 0;
LABEL_16:

  return v143;
}

- (int)postErosion:(id)a3 outputConfidence:(id)a4 outputDisparity:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v16 = v10;
  if (!v8)
  {
    sub_29573BC38(v143);
    goto LABEL_25;
  }

  if (!v9)
  {
    sub_29573BB8C(v143);
    goto LABEL_25;
  }

  if (!v10)
  {
    sub_29573BAE0(v143);
    goto LABEL_25;
  }

  v17 = objc_msgSend_width(v8, v11, v12, v13, v14, v15);
  v23 = objc_msgSend_height(v8, v18, v19, v20, v21, v22);
  if (objc_msgSend_pixelFormat(v8, v24, v25, v26, v27, v28) != 25)
  {
    sub_29573B774(v143);
    goto LABEL_25;
  }

  if (objc_msgSend_pixelFormat(v9, v29, v30, v31, v32, v33) != 25 || objc_msgSend_width(v9, v34, v35, v36, v37, v38) != v17 || objc_msgSend_height(v9, v39, v40, v41, v42, v43) != v23)
  {
    sub_29573B820(v143);
LABEL_25:
    v140 = v143[0];
    goto LABEL_16;
  }

  if (objc_msgSend_pixelFormat(v16, v44, v45, v46, v47, v48) != 25 || objc_msgSend_width(v16, v49, v50, v51, v52, v53) != v17 || objc_msgSend_height(v16, v54, v55, v56, v57, v58) != v23)
  {
    sub_29573B8CC(v143);
    goto LABEL_25;
  }

  v64 = objc_msgSend_commandQueue(self->_metalContext, v59, v60, v61, v62, v63);
  v70 = objc_msgSend_commandBuffer(v64, v65, v66, v67, v68, v69);

  if (!v70)
  {
    sub_29573BA34(v143);
    goto LABEL_25;
  }

  v76 = objc_msgSend_computeCommandEncoder(v70, v71, v72, v73, v74, v75);
  if (!v76)
  {
    sub_29573B978();
    goto LABEL_25;
  }

  v81 = v76;
  objc_msgSend_setComputePipelineState_(v76, v77, self->_kernelPostErosion, v78, v79, v80);
  objc_msgSend_setTexture_atIndex_(v81, v82, v8, 0, v83, v84);
  objc_msgSend_setTexture_atIndex_(v81, v85, v9, 1, v86, v87);
  objc_msgSend_setTexture_atIndex_(v81, v88, v16, 2, v89, v90);
  v96 = objc_msgSend_threadExecutionWidth(self->_kernelPostErosion, v91, v92, v93, v94, v95);
  v102 = objc_msgSend_maxTotalThreadsPerThreadgroup(self->_kernelPostErosion, v97, v98, v99, v100, v101);
  v143[0] = v17 >> 1;
  v143[1] = v23 >> 1;
  v143[2] = 1;
  v142[0] = v96;
  v142[1] = v102 / v96;
  v142[2] = 1;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v81, v103, v143, v142, v104, v105);
  objc_msgSend_endEncoding(v81, v106, v107, v108, v109, v110);
  if (*MEMORY[0x29EDB9270])
  {
    v116 = objc_msgSend_commandQueue(v70, v111, v112, v113, v114, v115);
    v122 = objc_msgSend_commandBuffer(v116, v117, v118, v119, v120, v121);

    objc_msgSend_setLabel_(v122, v123, @"KTRACE_MTLCMDBUF", v124, v125, v126);
    objc_msgSend_addCompletedHandler_(v122, v127, &unk_2A1C98480, v128, v129, v130);
    objc_msgSend_commit(v122, v131, v132, v133, v134, v135);
    objc_msgSend_addCompletedHandler_(v70, v136, &unk_2A1C984A0, v137, v138, v139);
  }

  objc_msgSend_commit(v70, v111, v112, v113, v114, v115);

  v140 = 0;
LABEL_16:

  return v140;
}

- (int)setFarWithDistance:(id)a3 inputDistanceTransformMap:(id)a4 inputDisparity:(id)a5 inoutConfidenceMap:(id)a6 outputDistanceTransformDisparity:(id)a7
{
  v209 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v20 = v14;
  if (!self->_setFarDistFurthestDisparityArray)
  {
    sub_29573C3D8(&v207);
    goto LABEL_32;
  }

  if (!v11)
  {
    sub_29573C32C(&v207);
    goto LABEL_32;
  }

  if (!v12)
  {
    sub_29573C280(&v207);
    goto LABEL_32;
  }

  if (!v13)
  {
    sub_29573C1D4(&v207);
    goto LABEL_32;
  }

  if (!v14)
  {
    sub_29573C128(&v207);
    goto LABEL_32;
  }

  v21 = objc_msgSend_width(v11, v15, v16, v17, v18, v19);
  v27 = objc_msgSend_height(v11, v22, v23, v24, v25, v26);
  if (objc_msgSend_pixelFormat(v12, v28, v29, v30, v31, v32) != 25 || objc_msgSend_width(v12, v33, v34, v35, v36, v37) != v21 || objc_msgSend_height(v12, v38, v39, v40, v41, v42) != v27)
  {
    sub_29573BCE4(&v207);
LABEL_32:
    v201 = v207.i32[0];
    goto LABEL_21;
  }

  if (objc_msgSend_pixelFormat(v13, v43, v44, v45, v46, v47) != 25 || objc_msgSend_width(v13, v48, v49, v50, v51, v52) != v21 || objc_msgSend_height(v13, v53, v54, v55, v56, v57) != v27)
  {
    sub_29573BD90(&v207);
    goto LABEL_32;
  }

  if (objc_msgSend_pixelFormat(v20, v58, v59, v60, v61, v62) != 25 || objc_msgSend_width(v20, v63, v64, v65, v66, v67) != v21 || objc_msgSend_height(v20, v68, v69, v70, v71, v72) != v27)
  {
    sub_29573BE3C(&v207);
    goto LABEL_32;
  }

  v78 = objc_msgSend_commandQueue(self->_metalContext, v73, v74, v75, v76, v77);
  v84 = objc_msgSend_commandBuffer(v78, v79, v80, v81, v82, v83);

  if (!v84)
  {
    sub_29573C07C(&v207);
    goto LABEL_32;
  }

  v90 = objc_msgSend_computeCommandEncoder(v84, v85, v86, v87, v88, v89);
  if (!v90)
  {
    sub_29573BFC0();
    goto LABEL_32;
  }

  v96 = v90;
  v203 = v11;
  v97 = objc_msgSend_threadExecutionWidth(self->_kernelGetFarDistanceMin, v91, v92, v93, v94, v95);
  v103 = objc_msgSend_maxTotalThreadsPerThreadgroup(self->_kernelGetFarDistanceMin, v98, v99, v100, v101, v102) / v97;
  objc_msgSend_setComputePipelineState_(v96, v104, self->_kernelGetFarDistanceMin, v105, v106, v107);
  objc_msgSend_setTexture_atIndex_(v96, v108, v12, 0, v109, v110);
  objc_msgSend_setTexture_atIndex_(v96, v111, v13, 1, v112, v113);
  objc_msgSend_setBuffer_offset_atIndex_(v96, v114, self->_setFarDistFurthestDisparityArray, 0, 0, v115);
  objc_msgSend_setBytes_length_atIndex_(v96, v116, &v209, 16, 1, v117);
  v207 = vdupq_n_s64(1uLL);
  v208 = 1;
  v204 = v97;
  v205 = v103;
  v206 = 1;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v96, v118, &v207, &v204, v119, v120);
  objc_msgSend_endEncoding(v96, v121, v122, v123, v124, v125);
  v131 = objc_msgSend_computeCommandEncoder(v84, v126, v127, v128, v129, v130);

  if (v131)
  {
    objc_msgSend_setComputePipelineState_(v131, v132, self->_kernelSetFarDistance, v133, v134, v135);
    objc_msgSend_setTexture_atIndex_(v131, v136, v203, 0, v137, v138);
    objc_msgSend_setTexture_atIndex_(v131, v139, v12, 1, v140, v141);
    objc_msgSend_setTexture_atIndex_(v131, v142, v13, 2, v143, v144);
    objc_msgSend_setTexture_atIndex_(v131, v145, v20, 3, v146, v147);
    objc_msgSend_setBuffer_offset_atIndex_(v131, v148, self->_setFarDistFurthestDisparityArray, 0, 0, v149);
    objc_msgSend_setBytes_length_atIndex_(v131, v150, &v209, 16, 1, v151);
    v157 = objc_msgSend_threadExecutionWidth(self->_kernelSetFarDistance, v152, v153, v154, v155, v156);
    v163 = objc_msgSend_maxTotalThreadsPerThreadgroup(self->_kernelSetFarDistance, v158, v159, v160, v161, v162);
    v207.i64[0] = v21;
    v207.i64[1] = v27;
    v208 = 1;
    v204 = v157;
    v205 = v163 / v157;
    v206 = 1;
    objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v131, v164, &v207, &v204, v165, v166);
    objc_msgSend_endEncoding(v131, v167, v168, v169, v170, v171);
    if (*MEMORY[0x29EDB9270])
    {
      v177 = objc_msgSend_commandQueue(v84, v172, v173, v174, v175, v176);
      v183 = objc_msgSend_commandBuffer(v177, v178, v179, v180, v181, v182);

      objc_msgSend_setLabel_(v183, v184, @"KTRACE_MTLCMDBUF", v185, v186, v187);
      objc_msgSend_addCompletedHandler_(v183, v188, &unk_2A1C984C0, v189, v190, v191);
      objc_msgSend_commit(v183, v192, v193, v194, v195, v196);
      objc_msgSend_addCompletedHandler_(v84, v197, &unk_2A1C984E0, v198, v199, v200);
    }

    objc_msgSend_commit(v84, v172, v173, v174, v175, v176);

    v201 = 0;
    v11 = v203;
  }

  else
  {
    sub_29573BEE8(v84, &v207);
    v201 = v207.i32[0];
    v11 = v203;
  }

LABEL_21:

  return v201;
}

- (id)prepareForFbs:(id)a3 toF32:(id)a4 confidenceInF16:(id)a5 confidenceOutF32:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v19 = objc_msgSend_width(v10, v14, v15, v16, v17, v18);
  v25 = objc_msgSend_height(v10, v20, v21, v22, v23, v24);
  v210 = v11;
  if (!v10)
  {
    sub_29573CBE8(&v214);
    goto LABEL_33;
  }

  if (!v11)
  {
    sub_29573CB3C(&v214);
LABEL_34:
    v109 = 0;
    v208 = v214.i32[0];
    goto LABEL_40;
  }

  if (!v12)
  {
    sub_29573CA90(&v214);
    goto LABEL_33;
  }

  if (!v13)
  {
    sub_29573C9E4(&v214);
    goto LABEL_33;
  }

  v31 = v25;
  if (objc_msgSend_pixelFormat(v10, v26, v27, v28, v29, v30) != 25)
  {
    sub_29573C484(&v214);
    goto LABEL_33;
  }

  if (objc_msgSend_pixelFormat(v11, v32, v33, v34, v35, v36) != 55 || objc_msgSend_width(v11, v37, v38, v39, v40, v41) != v19 || objc_msgSend_height(v11, v42, v43, v44, v45, v46) != v31)
  {
    sub_29573C530(&v214);
LABEL_33:
    v11 = 0;
    goto LABEL_34;
  }

  if (objc_msgSend_pixelFormat(v12, v47, v48, v49, v50, v51) != 25 || objc_msgSend_width(v12, v52, v53, v54, v55, v56) != v19 || objc_msgSend_height(v12, v57, v58, v59, v60, v61) != v31)
  {
    sub_29573C5DC(&v214);
    goto LABEL_33;
  }

  if (objc_msgSend_pixelFormat(v13, v62, v63, v64, v65, v66) != 55 || objc_msgSend_width(v13, v67, v68, v69, v70, v71) != v19 || objc_msgSend_height(v13, v72, v73, v74, v75, v76) != v31)
  {
    sub_29573C688(&v214);
    goto LABEL_33;
  }

  v209 = v12;
  v82 = objc_msgSend_threadExecutionWidth(self->_kernelPrepareFbsPart1, v77, v78, v79, v80, v81);
  v88 = objc_msgSend_maxTotalThreadsPerThreadgroup(self->_kernelPrepareFbsPart1, v83, v84, v85, v86, v87) / v82;
  v94 = objc_msgSend_device(self->_metalContext, v89, v90, v91, v92, v93);
  v11 = objc_msgSend_newBufferWithLength_options_(v94, v95, 4 * v82 * v88, 0, v96, v97);

  if (!v11)
  {
    sub_29573C938(&v214);
    v109 = 0;
LABEL_39:
    v208 = v214.i32[0];
    v12 = v209;
LABEL_40:
    if (v208)
    {

      v139 = 0;
      v11 = 0;
    }

    else
    {
      v139 = 0;
    }

    goto LABEL_22;
  }

  v103 = objc_msgSend_commandQueue(self->_metalContext, v98, v99, v100, v101, v102);
  v109 = objc_msgSend_commandBuffer(v103, v104, v105, v106, v107, v108);

  if (!v109)
  {
    sub_29573C88C(&v214);
    goto LABEL_39;
  }

  v115 = objc_msgSend_computeCommandEncoder(v109, v110, v111, v112, v113, v114);
  if (!v115)
  {
    sub_29573C7E0(&v214);
    goto LABEL_39;
  }

  v120 = v115;
  objc_msgSend_setComputePipelineState_(v115, v116, self->_kernelPrepareFbsPart1, v117, v118, v119);
  objc_msgSend_setTexture_atIndex_(v120, v121, v10, 0, v122, v123);
  objc_msgSend_setBuffer_offset_atIndex_(v120, v124, v11, 0, 0, v125);
  v214 = vdupq_n_s64(1uLL);
  v215 = 1;
  v211 = v82;
  v212 = v88;
  v213 = 1;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v120, v126, &v214, &v211, v127, v128);
  objc_msgSend_endEncoding(v120, v129, v130, v131, v132, v133);
  v139 = objc_msgSend_computeCommandEncoder(v109, v134, v135, v136, v137, v138);

  if (!v139)
  {
    sub_29573C734(&v214);
    goto LABEL_39;
  }

  objc_msgSend_setComputePipelineState_(v139, v140, self->_kernelPrepareFbsPart2, v141, v142, v143);
  objc_msgSend_setTexture_atIndex_(v139, v144, v10, 0, v145, v146);
  objc_msgSend_setTexture_atIndex_(v139, v147, v210, 1, v148, v149);
  objc_msgSend_setTexture_atIndex_(v139, v150, v209, 2, v151, v152);
  objc_msgSend_setTexture_atIndex_(v139, v153, v13, 3, v154, v155);
  objc_msgSend_setBuffer_offset_atIndex_(v139, v156, v11, 0, 0, v157);
  v163 = objc_msgSend_threadExecutionWidth(self->_kernelPrepareFbsPart2, v158, v159, v160, v161, v162);
  v169 = objc_msgSend_maxTotalThreadsPerThreadgroup(self->_kernelPrepareFbsPart2, v164, v165, v166, v167, v168);
  v214.i64[0] = v19;
  v214.i64[1] = v31;
  v215 = 1;
  v211 = v163;
  v212 = v169 / v163;
  v213 = 1;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v139, v170, &v214, &v211, v171, v172);
  objc_msgSend_endEncoding(v139, v173, v174, v175, v176, v177);
  if (*MEMORY[0x29EDB9270])
  {
    v183 = objc_msgSend_commandQueue(v109, v178, v179, v180, v181, v182);
    v189 = objc_msgSend_commandBuffer(v183, v184, v185, v186, v187, v188);

    objc_msgSend_setLabel_(v189, v190, @"KTRACE_MTLCMDBUF", v191, v192, v193);
    objc_msgSend_addCompletedHandler_(v189, v194, &unk_2A1C98500, v195, v196, v197);
    objc_msgSend_commit(v189, v198, v199, v200, v201, v202);
    objc_msgSend_addCompletedHandler_(v109, v203, &unk_2A1C98520, v204, v205, v206);
  }

  objc_msgSend_commit(v109, v178, v179, v180, v181, v182);
  v12 = v209;
LABEL_22:

  return v11;
}

- (int)postFbs:(id)a3 toF16:(id)a4 prepareBuffer:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v16 = objc_msgSend_width(v8, v11, v12, v13, v14, v15);
  v22 = objc_msgSend_height(v8, v17, v18, v19, v20, v21);
  if (!v8)
  {
    sub_29573D000(v127);
    goto LABEL_19;
  }

  if (!v9)
  {
    sub_29573CF54(v127);
    goto LABEL_19;
  }

  v28 = v22;
  if (objc_msgSend_pixelFormat(v8, v23, v24, v25, v26, v27) != 55)
  {
    sub_29573CC94(v127);
    goto LABEL_19;
  }

  if (objc_msgSend_pixelFormat(v9, v29, v30, v31, v32, v33) != 25 || objc_msgSend_width(v9, v34, v35, v36, v37, v38) != v16 || objc_msgSend_height(v9, v39, v40, v41, v42, v43) != v28)
  {
    sub_29573CD40(v127);
LABEL_19:
    v124 = v127[0];
    goto LABEL_12;
  }

  v49 = objc_msgSend_commandQueue(self->_metalContext, v44, v45, v46, v47, v48);
  v55 = objc_msgSend_commandBuffer(v49, v50, v51, v52, v53, v54);

  if (!v55)
  {
    sub_29573CEA8(v127);
    goto LABEL_19;
  }

  v61 = objc_msgSend_computeCommandEncoder(v55, v56, v57, v58, v59, v60);
  if (!v61)
  {
    sub_29573CDEC();
    goto LABEL_19;
  }

  v66 = v61;
  objc_msgSend_setComputePipelineState_(v61, v62, self->_kernelPostFbs, v63, v64, v65);
  objc_msgSend_setTexture_atIndex_(v66, v67, v8, 0, v68, v69);
  objc_msgSend_setTexture_atIndex_(v66, v70, v9, 1, v71, v72);
  objc_msgSend_setBuffer_offset_atIndex_(v66, v73, v10, 0, 0, v74);
  v80 = objc_msgSend_threadExecutionWidth(self->_kernelPostFbs, v75, v76, v77, v78, v79);
  v86 = objc_msgSend_maxTotalThreadsPerThreadgroup(self->_kernelPostFbs, v81, v82, v83, v84, v85);
  v127[0] = v16;
  v127[1] = v28;
  v127[2] = 1;
  v126[0] = v80;
  v126[1] = v86 / v80;
  v126[2] = 1;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v66, v87, v127, v126, v88, v89);
  objc_msgSend_endEncoding(v66, v90, v91, v92, v93, v94);
  if (*MEMORY[0x29EDB9270])
  {
    v100 = objc_msgSend_commandQueue(v55, v95, v96, v97, v98, v99);
    v106 = objc_msgSend_commandBuffer(v100, v101, v102, v103, v104, v105);

    objc_msgSend_setLabel_(v106, v107, @"KTRACE_MTLCMDBUF", v108, v109, v110);
    objc_msgSend_addCompletedHandler_(v106, v111, &unk_2A1C98540, v112, v113, v114);
    objc_msgSend_commit(v106, v115, v116, v117, v118, v119);
    objc_msgSend_addCompletedHandler_(v55, v120, &unk_2A1C98560, v121, v122, v123);
  }

  objc_msgSend_commit(v55, v95, v96, v97, v98, v99);

  v124 = 0;
LABEL_12:

  return v124;
}

- (int)disparityDataOverrideOnGpu:(id)a3 To:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13 = objc_msgSend_width(v6, v8, v9, v10, v11, v12);
  v19 = objc_msgSend_height(v6, v14, v15, v16, v17, v18);
  if (!v6)
  {
    sub_29573D418(v98);
    goto LABEL_17;
  }

  if (!v7)
  {
    sub_29573D36C(v98);
    goto LABEL_17;
  }

  v25 = v19;
  if (objc_msgSend_pixelFormat(v6, v20, v21, v22, v23, v24) != 25)
  {
    sub_29573D0AC(v98);
    goto LABEL_17;
  }

  if (objc_msgSend_pixelFormat(v7, v26, v27, v28, v29, v30) != 25 || objc_msgSend_width(v7, v31, v32, v33, v34, v35) != v13 || objc_msgSend_height(v7, v36, v37, v38, v39, v40) != v25)
  {
    sub_29573D158(v98);
LABEL_17:
    v95 = v98[0];
    goto LABEL_10;
  }

  v46 = objc_msgSend_commandQueue(self->_metalContext, v41, v42, v43, v44, v45);
  v52 = objc_msgSend_commandBuffer(v46, v47, v48, v49, v50, v51);

  if (!v52)
  {
    sub_29573D2C0(v98);
    goto LABEL_17;
  }

  v58 = objc_msgSend_computeCommandEncoder(v52, v53, v54, v55, v56, v57);
  if (!v58)
  {
    sub_29573D204();
    goto LABEL_17;
  }

  v63 = v58;
  objc_msgSend_setComputePipelineState_(v58, v59, self->_kernelDisparityDataOverride, v60, v61, v62);
  objc_msgSend_setTexture_atIndex_(v63, v64, v6, 0, v65, v66);
  objc_msgSend_setTexture_atIndex_(v63, v67, v7, 1, v68, v69);
  v75 = objc_msgSend_threadExecutionWidth(self->_kernelDisparityDataOverride, v70, v71, v72, v73, v74);
  v81 = objc_msgSend_maxTotalThreadsPerThreadgroup(self->_kernelDisparityDataOverride, v76, v77, v78, v79, v80);
  v98[0] = v13;
  v98[1] = v25;
  v98[2] = 1;
  v97[0] = v75;
  v97[1] = v81 / v75;
  v97[2] = 1;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v63, v82, v98, v97, v83, v84);
  objc_msgSend_endEncoding(v63, v85, v86, v87, v88, v89);
  objc_msgSend_commit(v52, v90, v91, v92, v93, v94);

  v95 = 0;
LABEL_10:

  return v95;
}

- (int)makeForegroundMask:(id)a3 personSegmentationMap:(id)a4 validForegroundMask:(id)a5 minSegmentationThreshold:(float)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v112 = a6;
  v18 = objc_msgSend_width(v10, v13, v14, v15, v16, v17);
  v24 = objc_msgSend_height(v10, v19, v20, v21, v22, v23);
  v30 = objc_msgSend_commandQueue(self->_metalContext, v25, v26, v27, v28, v29);
  v36 = objc_msgSend_commandBuffer(v30, v31, v32, v33, v34, v35);

  if (!v36)
  {
    sub_29573D570(v111);
LABEL_9:
    v108 = v111[0];
    goto LABEL_6;
  }

  v42 = objc_msgSend_computeCommandEncoder(v36, v37, v38, v39, v40, v41);
  if (!v42)
  {
    sub_29573D4C4(v111);
    goto LABEL_9;
  }

  v47 = v42;
  objc_msgSend_setComputePipelineState_(v42, v43, self->_kernelmakeForegroundMask, v44, v45, v46);
  objc_msgSend_setTexture_atIndex_(v47, v48, v10, 0, v49, v50);
  objc_msgSend_setTexture_atIndex_(v47, v51, v11, 1, v52, v53);
  objc_msgSend_setTexture_atIndex_(v47, v54, v12, 2, v55, v56);
  objc_msgSend_setBytes_length_atIndex_(v47, v57, &v112, 4, 0, v58);
  v64 = objc_msgSend_threadExecutionWidth(self->_kernelmakeForegroundMask, v59, v60, v61, v62, v63);
  v70 = objc_msgSend_maxTotalThreadsPerThreadgroup(self->_kernelmakeForegroundMask, v65, v66, v67, v68, v69);
  v111[0] = v18;
  v111[1] = v24;
  v111[2] = 1;
  v110[0] = v64;
  v110[1] = v70 / v64;
  v110[2] = 1;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v47, v71, v111, v110, v72, v73);
  objc_msgSend_endEncoding(v47, v74, v75, v76, v77, v78);
  if (*MEMORY[0x29EDB9270])
  {
    v84 = objc_msgSend_commandQueue(v36, v79, v80, v81, v82, v83);
    v90 = objc_msgSend_commandBuffer(v84, v85, v86, v87, v88, v89);

    objc_msgSend_setLabel_(v90, v91, @"KTRACE_MTLCMDBUF", v92, v93, v94);
    objc_msgSend_addCompletedHandler_(v90, v95, &unk_2A1C98580, v96, v97, v98);
    objc_msgSend_commit(v90, v99, v100, v101, v102, v103);
    objc_msgSend_addCompletedHandler_(v36, v104, &unk_2A1C985A0, v105, v106, v107);
  }

  objc_msgSend_commit(v36, v79, v80, v81, v82, v83);

  v108 = 0;
LABEL_6:

  return v108;
}

- (int)buildFindMask:(id)a3 value:(float)a4 outputBuffer:(id)a5
{
  v8 = a3;
  v93 = a4;
  v9 = a5;
  v15 = objc_msgSend_width(v9, v10, v11, v12, v13, v14);
  v21 = objc_msgSend_height(v9, v16, v17, v18, v19, v20);
  if (!v8)
  {
    sub_29573D988(v92);
LABEL_15:
    v89 = v92[0];
    goto LABEL_8;
  }

  if (!v9)
  {
    sub_29573D8DC(v92);
    goto LABEL_15;
  }

  v27 = v21;
  if (objc_msgSend_pixelFormat(v8, v22, v23, v24, v25, v26) != 25)
  {
    sub_29573D61C(v92);
    goto LABEL_15;
  }

  if (objc_msgSend_pixelFormat(v9, v28, v29, v30, v31, v32) != 25)
  {
    sub_29573D6C8(v92);
    goto LABEL_15;
  }

  v38 = objc_msgSend_commandQueue(self->_metalContext, v33, v34, v35, v36, v37);
  v44 = objc_msgSend_commandBuffer(v38, v39, v40, v41, v42, v43);

  if (!v44)
  {
    sub_29573D830(v92);
    goto LABEL_15;
  }

  v50 = objc_msgSend_computeCommandEncoder(v44, v45, v46, v47, v48, v49);
  if (!v50)
  {
    sub_29573D774();
    goto LABEL_15;
  }

  v55 = v50;
  objc_msgSend_setComputePipelineState_(v50, v51, self->_kernelBuildFindMask, v52, v53, v54);
  objc_msgSend_setTexture_atIndex_(v55, v56, v8, 0, v57, v58);
  objc_msgSend_setTexture_atIndex_(v55, v59, v9, 1, v60, v61);
  objc_msgSend_setBytes_length_atIndex_(v55, v62, &v93, 4, 0, v63);
  v69 = objc_msgSend_threadExecutionWidth(self->_kernelBuildFindMask, v64, v65, v66, v67, v68);
  v75 = objc_msgSend_maxTotalThreadsPerThreadgroup(self->_kernelBuildFindMask, v70, v71, v72, v73, v74);
  v92[0] = v15;
  v92[1] = v27;
  v92[2] = 1;
  v91[0] = v69;
  v91[1] = v75 / v69;
  v91[2] = 1;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v55, v76, v92, v91, v77, v78);
  objc_msgSend_endEncoding(v55, v79, v80, v81, v82, v83);
  objc_msgSend_commit(v44, v84, v85, v86, v87, v88);

  v89 = 0;
LABEL_8:

  return v89;
}

@end