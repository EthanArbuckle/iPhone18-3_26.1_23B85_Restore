@interface SyntheticLongStage
+ (int)_fillConstants:(SyntheticLongFuseBandsConsts *)a3 slPlist:(id)a4 ev0ExposureParams:(const exposureParameters *)a5;
+ (int)_fillConstantsForBand:(int)a3 consts:(SyntheticLongFuseBandsConsts *)a4 slPlist:(id)a5 ev0ExposureParams:(const exposureParameters *)a6;
+ (int)prewarmShaders:(id)a3;
- (SidecarWriter)sidecarWriter;
- (SyntheticLongStage)initWithMetalContext:(id)a3;
- (int)_doEv0sPlusRealLongWithBands:(id)a3 slFuseEv0Plist:(id)a4 slFuseLongPlist:(id)a5 slParameters:(const SyntheticLongParameters *)a6 slOutput:(id)a7 noiseDivisorTex:(id)a8 realLongNoiseDivisorTex:(id)a9 lscGainsTex:(id)a10 intermediateMetadata:(id)a11;
- (int)_fuseEv0s:(id)a3 slParameters:(const SyntheticLongParameters *)a4 slPlist:(id)a5 lscGainsTex:(id)a6 outputLuma:(id)a7 outputChroma:(id)a8 outputWeightsPyramid:(id)a9 noiseDivisorTex:(id)a10 intermediateMetadata:(id)a11;
- (int)_fuseInLong:(id)a3 slParameters:(const SyntheticLongParameters *)a4 slPlist:(id)a5 lscGainsTex:(id)a6 fusedEv0sPyramid:(id)a7 weightsPyramid:(id)a8 slOutput:(id)a9 noiseDivisorTex:(id)a10 realLongNoiseDivisorTex:(id)a11;
- (int)doSyntheticLongWithBands:(id)a3 slFuseEv0Plist:(id)a4 slFuseLongPlist:(id)a5 slParameters:(const SyntheticLongParameters *)a6 slOutput:(id)a7 noiseDivisorTex:(id)a8 realLongNoiseDivisorTex:(id)a9 lscGainsTex:(id)a10 intermediateMetadata:(id)a11;
- (int)pyramidDownscale:(id)a3 cscParams:(const ColorSpaceConversionParameters *)a4 band0IsLinearYCbCr:(BOOL)a5;
- (void)dealloc;
@end

@implementation SyntheticLongStage

- (SyntheticLongStage)initWithMetalContext:(id)a3
{
  v5 = a3;
  v19.receiver = self;
  v19.super_class = SyntheticLongStage;
  v6 = [(SyntheticLongStage *)&v19 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_metal, a3);
    v11 = objc_msgSend_sharedInstance(SyntheticLongShared, v8, v9, v10);
    v14 = objc_msgSend_getShaders_(v11, v12, v7[1], v13);
    v15 = v7[2];
    v7[2] = v14;

    v16 = v7;
    if (!v7[2])
    {
      sub_2958A452C(v7, &v20);
      v16 = v20;
    }
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  return v17;
}

+ (int)prewarmShaders:(id)a3
{
  v3 = a3;
  v4 = [SyntheticLongShaders alloc];
  v7 = objc_msgSend_initWithMetal_(v4, v5, v3, v6);

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = -12786;
  }

  return v8;
}

- (void)dealloc
{
  objc_msgSend_purgeResources(self, a2, v2, v3);
  v5.receiver = self;
  v5.super_class = SyntheticLongStage;
  [(SyntheticLongStage *)&v5 dealloc];
}

- (int)pyramidDownscale:(id)a3 cscParams:(const ColorSpaceConversionParameters *)a4 band0IsLinearYCbCr:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v11 = v7;
  v12 = *(v7 + 2);
  v87 = a4 && HIBYTE(a4[3].transferFunctionInv.nonLinearPower) == 1 && *(v7 + 82) != 0;
  if (v12 < 2)
  {
    v82 = 0;
  }

  else
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v86 = (v12 - 1);
    if (v87)
    {
      v17 = 64;
    }

    else
    {
      v17 = 0;
    }

    if (v5)
    {
      v18 = 128;
    }

    else
    {
      v18 = 0;
    }

    v84 = v18;
    v85 = v17;
    while (1)
    {
      v19 = v14;
      v20 = objc_msgSend_commandQueue(self->_metal, v8, v9, v10);
      v14 = objc_msgSend_commandBuffer(v20, v21, v22, v23);

      if (!v14)
      {
        break;
      }

      v27 = objc_msgSend_width(v11[v13 + 43], v24, v25, v26);
      v31 = objc_msgSend_height(v11[v13 + 43], v28, v29, v30);
      v35 = objc_msgSend_computeCommandEncoder(v14, v32, v33, v34);

      if (!v35)
      {
        sub_2958A47C0(&v96);
        v82 = v96;
        goto LABEL_34;
      }

      v107 = 0u;
      v108 = 0u;
      v105 = 0u;
      v106 = 0u;
      v103 = 0u;
      v104 = 0u;
      v101 = 0u;
      v102 = 0u;
      v99 = 0u;
      v100 = 0u;
      v97 = 0u;
      v98 = 0u;
      v96 = 0u;
      if (a4)
      {
        v37 = *&a4[3].transferFunctionInv.linearScale;
        v106 = *&a4[3].transferFunctionFwd.linearThreshold;
        v107 = v37;
        v108 = *&a4[3].transferFunctionInv.nonLinearPower;
        v38 = *&a4[2].transferFunctionFwd.nonLinearScale;
        v102 = *&a4[1].finalScale;
        v103 = v38;
        v39 = *&a4[2].finalScaleFwd;
        v104 = *&a4[2].transferFunctionInv.linearThreshold;
        v105 = v39;
        v40 = *&a4->outputToLinearYCbCr;
        v98 = *&a4->transferFunctionInv.nonLinearBias;
        v99 = v40;
        v41 = *&a4[1].transferFunctionInv.nonLinearScale;
        v100 = *&a4[1].transferFunctionFwd.nonLinearBias;
        v101 = v41;
        v42 = *&a4->transferFunctionFwd.nonLinearPower;
        v96 = *&a4->transferFunctionFwd.linearScale;
        v97 = v42;
      }

      v43 = !v87;
      if (v13)
      {
        v43 = 1;
      }

      if (v43)
      {
        objc_msgSend_setTexture_atIndex_(v35, v36, v11[v13 + 42], 0);
        objc_msgSend_setTexture_atIndex_(v35, v46, v11[v13 + 62], 1);
      }

      else
      {
        objc_msgSend_setTexture_atIndex_(v35, v36, v11[82], 0);
        objc_msgSend_setTexture_atIndex_(v35, v44, 0, 1);
      }

      objc_msgSend_setTexture_atIndex_(v35, v45, v11[v13 + 43], 2);
      objc_msgSend_setTexture_atIndex_(v35, v47, v11[v13 + 63], 3);
      objc_msgSend_setBytes_length_atIndex_(v35, v48, &v96, 208, 0);
      shaders = self->_shaders;
      if (!a4 || v13)
      {
        v52 = objc_msgSend_getKernel_(shaders, v49, 0, v50);

        if (!v52)
        {
          sub_2958A45DC(v95);
LABEL_43:
          v82 = v95[0];
LABEL_33:
          v16 = v35;
LABEL_34:
          v15 = v14;
          goto LABEL_35;
        }

        v57 = 16;
        v58 = 64;
      }

      else
      {
        v52 = objc_msgSend_getKernel_configFlags_(shaders, v49, 0, v85 | v84);

        if (!v52)
        {
          sub_2958A4724(v95);
          goto LABEL_43;
        }

        if (objc_msgSend_threadExecutionWidth(v52, v53, v54, v55) != 32)
        {
          sub_2958A4678(v52, v95);
          goto LABEL_43;
        }

        v57 = 18;
        v58 = 16;
      }

      v16 = v52;
      objc_msgSend_setImageblockWidth_height_(v35, v56, 16, v58);
      objc_msgSend_setComputePipelineState_(v35, v59, v52, v60);
      v95[0] = (v27 + 15) >> 4;
      v95[1] = (v31 + 15) >> 4;
      v95[2] = 1;
      v93 = v57;
      v94 = xmmword_2959D5F60;
      objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v35, v61, v95, &v93);
      objc_msgSend_endEncoding(v35, v62, v63, v64);
      if (*MEMORY[0x29EDB9270])
      {
        v68 = objc_msgSend_commandQueue(v14, v65, v66, v67);
        v72 = objc_msgSend_commandBuffer(v68, v69, v70, v71);

        objc_msgSend_setLabel_(v72, v73, @"KTRACE_MTLCMDBUF", v74);
        v91[0] = MEMORY[0x29EDCA5F8];
        v91[1] = 3221225472;
        v91[2] = sub_295833ED4;
        v91[3] = &unk_29EDDC0E0;
        v92 = v13;
        objc_msgSend_addCompletedHandler_(v72, v75, v91, v76);
        objc_msgSend_commit(v72, v77, v78, v79);
        v89[0] = MEMORY[0x29EDCA5F8];
        v89[1] = 3221225472;
        v89[2] = sub_295833F08;
        v89[3] = &unk_29EDDC0E0;
        v90 = v13;
        objc_msgSend_addCompletedHandler_(v14, v80, v89, v81);
      }

      ++v13;
      objc_msgSend_commit(v14, v65, v66, v67);
      v15 = v35;
      if (v86 == v13)
      {

        v82 = 0;
        goto LABEL_33;
      }
    }

    sub_2958A485C(&v96);
    v82 = v96;
LABEL_35:
  }

  return v82;
}

+ (int)_fillConstants:(SyntheticLongFuseBandsConsts *)a3 slPlist:(id)a4 ev0ExposureParams:(const exposureParameters *)a5
{
  v7 = a4;
  v8 = v7;
  if (!a3)
  {
    sub_2958A4ACC(&v15);
LABEL_11:
    v13 = v15;
    goto LABEL_6;
  }

  if (!v7)
  {
    sub_2958A4A30(&v15);
    goto LABEL_11;
  }

  if (!a5)
  {
    sub_2958A4994(&v15);
    goto LABEL_11;
  }

  gain = a5->gain;
  a3[3].var7.var1 = sub_29584472C(v7[7], a5->gain);
  a3[4].var0[0].transferFunctionFwd.nonLinearPower = sub_29584472C(v8[2], gain);
  a3[4].var0[0].transferFunctionInv.linearScale = sub_29584472C(v8[3], gain);
  a3[4].var0[0].transferFunctionFwd.linearScale = sub_29584472C(v8[4], gain);
  a3[4].var0[0].transferFunctionFwd.linearThreshold = sub_29584472C(v8[5], gain);
  a3[4].var0[0].transferFunctionFwd.nonLinearScale = sub_29584472C(v8[6], gain);
  objc_msgSend_getLumaPedestalWithProperties_plistSource_(DeepFusionCommon, v10, a5, v8[8]);
  a3[4].var0[0].transferFunctionInv.nonLinearBias = v11;
  if ((objc_msgSend_fillRawNoiseModelParameters_exposureParams_(DeepFusionCommon, v12, &a3[3].var0[3], a5) & 1) == 0)
  {
    sub_2958A48F8(&v15);
    goto LABEL_11;
  }

  v13 = 0;
LABEL_6:

  return v13;
}

+ (int)_fillConstantsForBand:(int)a3 consts:(SyntheticLongFuseBandsConsts *)a4 slPlist:(id)a5 ev0ExposureParams:(const exposureParameters *)a6
{
  v9 = a5;
  v12 = v9;
  if (a4)
  {
    if (v9)
    {
      if (a6)
      {
        gain = a6->gain;
        v14 = objc_msgSend_objectAtIndexedSubscript_(v9[1], v10, a3, v11);
        v37 = sub_29584472C(v14[1], gain);

        v17 = objc_msgSend_objectAtIndexedSubscript_(v12[1], v15, a3, v16);
        v36 = sub_29584472C(v17[2], gain);

        v20 = objc_msgSend_objectAtIndexedSubscript_(v12[1], v18, a3, v19);
        v35 = sub_29584472C(v20[3], gain);

        v23 = objc_msgSend_objectAtIndexedSubscript_(v12[1], v21, a3, v22);
        v34 = sub_29584472C(v23[4], gain);

        v26 = objc_msgSend_objectAtIndexedSubscript_(v12[1], v24, a3, v25);
        v27 = sub_29584472C(v26[5], gain);

        v30 = objc_msgSend_objectAtIndexedSubscript_(v12[1], v28, a3, v29);
        v31 = sub_29584472C(v30[6], gain);

        v32 = 0;
        a4[3].var5.var2 = v36;
        *&a4[3].var5.var0 = __PAIR64__(LODWORD(v36), LODWORD(v37));
        a4[3].var6 = v34;
        *&a4[3].var5.var4 = __PAIR64__(LODWORD(v34), LODWORD(v35));
        a4[4].var0[0].transferFunctionInv.linearThreshold = v27;
        a4[4].var0[0].transferFunctionInv.nonLinearScale = v31;
      }

      else
      {
        sub_2958A4B68(&v38);
        v32 = v38;
      }
    }

    else
    {
      sub_2958A4C04(&v39);
      v32 = v39;
    }
  }

  else
  {
    sub_2958A4CA0(&v40);
    v32 = v40;
  }

  return v32;
}

- (int)_fuseEv0s:(id)a3 slParameters:(const SyntheticLongParameters *)a4 slPlist:(id)a5 lscGainsTex:(id)a6 outputLuma:(id)a7 outputChroma:(id)a8 outputWeightsPyramid:(id)a9 noiseDivisorTex:(id)a10 intermediateMetadata:(id)a11
{
  v16 = a3;
  v402 = a5;
  v401 = a6;
  v390 = a7;
  v389 = a8;
  v17 = a9;
  v386 = a10;
  v21 = a11;
  v428 = 0;
  v429 = 0;
  v427 = 0;
  v22 = MEMORY[0x29EDB9270];
  v23 = *MEMORY[0x29EDB9270];
  if (*MEMORY[0x29EDB9270] == 1)
  {
    kdebug_trace();
    v23 = *v22;
  }

  v24 = self;
  if (v23)
  {
    v25 = objc_msgSend_commandQueue(self->_metal, v18, v19, v20);
    v29 = objc_msgSend_commandBuffer(v25, v26, v27, v28);

    objc_msgSend_setLabel_(v29, v30, @"KTRACE_START_MTL", v31);
    objc_msgSend_addCompletedHandler_(v29, v32, &unk_2A1CA9580, v33);
    objc_msgSend_commit(v29, v34, v35, v36);
  }

  if (!v16)
  {
    sub_2958A5F84(v418);
    goto LABEL_109;
  }

  if (!a4)
  {
    sub_2958A5EE8(v418);
    goto LABEL_109;
  }

  if (!v402)
  {
    sub_2958A5E4C(v418);
    goto LABEL_109;
  }

  if (!v401)
  {
    sub_2958A5DB0(v418);
    goto LABEL_109;
  }

  var1 = a4->var1;
  if ((var1 & 0x80000000) != 0)
  {
    sub_2958A5D14(v418);
    goto LABEL_109;
  }

  v425 = a4->var1;
  var0 = a4->var0;
  if (a4->var0 < 1)
  {
    goto LABEL_108;
  }

  v39 = 0;
  v40 = 1;
  do
  {
    if (var1 != v39 && v39 != a4->var2)
    {
      if (v40 > 3)
      {
        sub_2958A4D3C(v418);
        goto LABEL_109;
      }

      *&v426[4 * v40++ - 4] = v39;
    }

    ++v39;
  }

  while (var0 != v39);
  if ((v40 - 5) <= 0xFFFFFFFC)
  {
LABEL_108:
    sub_2958A5C78(v418);
LABEL_109:
    v413 = 0;
    v414 = 0;
    v77 = 0;
    v404 = 0;
    v405 = 0;
    v391 = 0;
    v400 = 0;
LABEL_110:
    v410 = 0;
    v157 = 0;
    v415 = 0;
LABEL_111:
    v370 = v418[0];
    goto LABEL_112;
  }

  if (!v386 && v40 == 4)
  {
    sub_2958A5BDC(v418);
    goto LABEL_109;
  }

  v41 = v40;
  v42 = objc_msgSend_objectAtIndexedSubscript_(v16, v18, var1, v20);
  var4 = a4->var4;
  v44 = a4->var4 + 224128 * a4->var1;
  v399 = v44[195];
  bzero(v419, 0x4E0uLL);
  v421 = v41;
  v398 = v44;
  v46 = objc_msgSend__fillConstants_slPlist_ev0ExposureParams_(SyntheticLongStage, v45, v419, v402, v44 + 288);
  v400 = v42;
  if (v46)
  {
    sub_2958A4DD8(v46, v418);
    v413 = 0;
    v414 = 0;
    v77 = 0;
    v404 = 0;
    v405 = 0;
    v391 = 0;
    goto LABEL_110;
  }

  v409 = v16;
  v51 = v424;
  *&v50 = v424;
  v52 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v47, v48, v49, v50);
  v385 = v21;
  objc_msgSend_setObject_forKeyedSubscript_(v21, v53, v52, @"syntheticLongPedestal");

  v57 = 0;
  v58 = &v422;
  v59 = v423;
  v60 = v41;
  v392 = v41;
  v61 = &v425;
  v62 = *MEMORY[0x29EDCA928];
  v63 = *(MEMORY[0x29EDCA928] + 16);
  v64 = *(MEMORY[0x29EDCA928] + 32);
  do
  {
    v65 = *v61++;
    v66 = var4 + 224128 * v65;
    v67 = &v419[v57];
    v68 = *(v66 + 3);
    v67[2] = *(v66 + 2);
    v67[3] = v68;
    v69 = *(v66 + 7);
    v67[6] = *(v66 + 6);
    v67[7] = v69;
    v70 = *(v66 + 5);
    v67[4] = *(v66 + 4);
    v67[5] = v70;
    v71 = *(v66 + 12);
    v67[11] = *(v66 + 11);
    v67[12] = v71;
    v72 = *(v66 + 10);
    v67[9] = *(v66 + 9);
    v67[10] = v72;
    v67[8] = *(v66 + 8);
    v73 = *(v66 + 1);
    *v67 = *v66;
    v67[1] = v73;
    *v58++ = *(v66 + 52);
    *v59 = v62;
    v59[1] = v63;
    v59[2] = v64;
    v59 += 3;
    v57 += 208;
  }

  while (208 * v41 != v57);
  v387 = var4;
  v74 = *&v423[89];
  v75 = *(v42 + 8);
  v76 = (v75 - 1);
  if (v17)
  {
    v77 = 0;
    goto LABEL_27;
  }

  v78 = objc_msgSend_allocator(self->_metal, v54, v55, v56);
  v77 = objc_msgSend_newTextureDescriptor(v78, v79, v80, v81);

  if (!v77)
  {
    sub_2958A5B40(v418);
    v413 = 0;
    v414 = 0;
    v404 = 0;
    v405 = 0;
    v391 = 0;
    goto LABEL_147;
  }

  v85 = objc_msgSend_width(*(v42 + 336 + 8 * v76), v82, v83, v84);
  v89 = objc_msgSend_desc(v77, v86, v87, v88);
  objc_msgSend_setWidth_(v89, v90, v85, v91);

  v95 = objc_msgSend_height(*(v42 + 336 + 8 * v76), v92, v93, v94);
  v99 = objc_msgSend_desc(v77, v96, v97, v98);
  objc_msgSend_setHeight_(v99, v100, v95, v101);

  v105 = objc_msgSend_desc(v77, v102, v103, v104);
  objc_msgSend_setUsage_(v105, v106, 3, v107);

  v111 = objc_msgSend_desc(v77, v108, v109, v110);
  objc_msgSend_setPixelFormat_(v111, v112, 25, v113);

LABEL_27:
  v391 = v77;
  v114 = objc_msgSend_allocator(self->_metal, v54, v55, v56);
  v77 = objc_msgSend_newTextureDescriptor(v114, v115, v116, v117);

  if (!v77)
  {
    sub_2958A5AA4(v418);
    v413 = 0;
    v414 = 0;
    v404 = 0;
    v405 = 0;
LABEL_147:
    v410 = 0;
    v157 = 0;
    goto LABEL_148;
  }

  v121 = objc_msgSend_width(*(v42 + 336 + 8 * v76), v118, v119, v120);
  v125 = objc_msgSend_desc(v77, v122, v123, v124);
  objc_msgSend_setWidth_(v125, v126, v121, v127);

  v131 = objc_msgSend_height(*(v42 + 336 + 8 * v76), v128, v129, v130);
  v135 = objc_msgSend_desc(v77, v132, v133, v134);
  objc_msgSend_setHeight_(v135, v136, v131, v137);

  v141 = objc_msgSend_desc(v77, v138, v139, v140);
  objc_msgSend_setUsage_(v141, v142, 3, v143);

  v405 = v77;
  v147 = objc_msgSend_desc(v77, v144, v145, v146);
  objc_msgSend_setPixelFormat_(v147, v148, 25, v149);

  v153 = objc_msgSend_allocator(self->_metal, v150, v151, v152);
  v157 = objc_msgSend_newTextureDescriptor(v153, v154, v155, v156);

  if (!v157)
  {
    sub_2958A5A08(v418);
    v413 = 0;
    v414 = 0;
    v77 = 0;
    v404 = 0;
    v410 = 0;
LABEL_148:
    v415 = 0;
    goto LABEL_149;
  }

  v408 = v17;
  v161 = objc_msgSend_width(*(v42 + 496 + 8 * v76), v158, v159, v160);
  objc_msgSend_desc(v157, v162, v163, v164);
  v166 = v165 = v157;
  objc_msgSend_setWidth_(v166, v167, v161, v168);

  v172 = objc_msgSend_height(*(v42 + 496 + 8 * v76), v169, v170, v171);
  v176 = objc_msgSend_desc(v165, v173, v174, v175);
  objc_msgSend_setHeight_(v176, v177, v172, v178);

  v182 = objc_msgSend_desc(v165, v179, v180, v181);
  objc_msgSend_setUsage_(v182, v183, 3, v184);

  v404 = v165;
  v188 = objc_msgSend_desc(v165, v185, v186, v187);
  objc_msgSend_setPixelFormat_(v188, v189, 65, v190);

  if (v75 < 1)
  {
    v410 = 0;
    v157 = 0;
    v415 = 0;
LABEL_98:
    if (v392 > 1)
    {
      v366 = v426;
      v367 = v60 - 1;
      do
      {
        v368 = *v366++;
        v369 = objc_msgSend_objectAtIndexedSubscript_(v16, v191, v368, v193);
        v369[2] = 0;

        --v367;
      }

      while (v367);
    }

    v17 = v408;
    if (v428)
    {
      sub_2958A5354(v418);
      v413 = 0;
      v77 = 0;
      goto LABEL_130;
    }

    v21 = v385;
    v22 = MEMORY[0x29EDB9270];
    if (!v427)
    {
      v413 = 0;
      v414 = 0;
      v77 = 0;
      v370 = 0;
      goto LABEL_112;
    }

    sub_2958A53F0(v418);
    v413 = 0;
    v414 = 0;
    v77 = 0;
    goto LABEL_111;
  }

  v415 = 0;
  v157 = 0;
  v410 = 0;
  if (v399)
  {
    v194 = 64;
  }

  else
  {
    v194 = 0;
  }

  v397 = (4 * (v392 == 3)) | (8 * (v392 == 4)) | v194 | (32 * (v51 != 0.0)) | (16 * (v74 != 1.0));
  v195 = 16;
  if (v392 == 4)
  {
    v195 = 8;
  }

  v403 = v195;
  v196 = 256;
  if (v392 == 4)
  {
    v196 = 64;
  }

  v395 = v60;
  v396 = v196;
  v197 = 1;
  if (v392 == 4)
  {
    v197 = 2;
  }

  v393 = v197;
  v394 = (v75 - 1);
  v388 = v60 - 1;
  v198 = v394;
  while (1)
  {
    v199 = objc_msgSend__fillConstantsForBand_consts_slPlist_ev0ExposureParams_(SyntheticLongStage, v191, v198, v419, v402, v398 + 288);
    if (v199)
    {
      sub_2958A4E74(v199, v418);
      v413 = 0;
      v414 = 0;
      v77 = 0;
LABEL_119:
      v370 = v418[0];
      v17 = v408;
      goto LABEL_131;
    }

    v203 = objc_msgSend_commandQueue(v24->_metal, v200, v201, v202);
    v207 = objc_msgSend_commandBuffer(v203, v204, v205, v206);

    if (!v207)
    {
      sub_2958A596C(v418);
      v413 = 0;
      v414 = 0;
      v77 = 0;
      v415 = 0;
      goto LABEL_119;
    }

    v211 = objc_msgSend_width(v400[v198 + 42], v208, v209, v210);
    v215 = objc_msgSend_height(v400[v198 + 42], v212, v213, v214);
    v415 = v207;
    v219 = objc_msgSend_computeCommandEncoder(v207, v216, v217, v218);

    v17 = v408;
    if (!v219)
    {
      sub_2958A58D0(v418);
      v413 = 0;
      v414 = 0;
      v77 = 0;
      v157 = 0;
LABEL_149:
      v370 = v418[0];
      v21 = v385;
      v22 = MEMORY[0x29EDB9270];
      v16 = v409;
      goto LABEL_112;
    }

    v157 = v219;
    *&v221 = 0.5 / v211;
    *(&v221 + 1) = 0.5 / v215;
    v420 = v221;
    v406 = v215;
    v407 = v211;
    if (!v198)
    {
      v242 = &v425;
      v243 = v60;
      v244 = 864;
      do
      {
        v245 = &v419[v244];
        v246 = *v242++;
        v247 = (&v387->var0.transferFunctionFwd.linearScale + 56032 * v246);
        v248 = v247[15];
        *v245 = v247[14];
        v245[1] = v248;
        v245[2] = v247[16];
        v244 += 48;
        --v243;
      }

      while (v243);
      objc_msgSend_setBytes_length_atIndex_(v219, v220, v419, 1248, 1);
      v413 = 0;
      v77 = 0;
      v16 = v409;
      goto LABEL_50;
    }

    objc_msgSend_setBytes_length_atIndex_(v219, v220, v419, 1248, 1);
    objc_msgSend_setLabel_(v405, v222, 0, v223);
    v227 = objc_msgSend_allocator(v24->_metal, v224, v225, v226);
    v77 = objc_msgSend_newTextureWithDescriptor_(v227, v228, v405, v229);

    if (!v77)
    {
      sub_2958A4FAC(v418);
      v413 = 0;
      v414 = 0;
      goto LABEL_149;
    }

    objc_msgSend_setLabel_(v404, v230, 0, v231);
    v235 = objc_msgSend_allocator(v24->_metal, v232, v233, v234);
    v238 = objc_msgSend_newTextureWithDescriptor_(v235, v236, v404, v237);

    v413 = v238;
    v16 = v409;
    if (!v238)
    {
      sub_2958A4F10(v418);
      v413 = 0;
      goto LABEL_130;
    }

LABEL_50:
    v249 = objc_msgSend_desc(v405, v239, v240, v241);
    v253 = objc_msgSend_width(v249, v250, v251, v252);
    objc_msgSend_setWidth_(v249, v254, 2 * v253, v255);

    v259 = objc_msgSend_desc(v405, v256, v257, v258);
    v263 = objc_msgSend_height(v259, v260, v261, v262);
    objc_msgSend_setHeight_(v259, v264, 2 * v263, v265);

    v269 = objc_msgSend_desc(v404, v266, v267, v268);
    v273 = objc_msgSend_width(v269, v270, v271, v272);
    objc_msgSend_setWidth_(v269, v274, 2 * v273, v275);

    v279 = objc_msgSend_desc(v404, v276, v277, v278);
    v283 = objc_msgSend_height(v279, v280, v281, v282);
    objc_msgSend_setHeight_(v279, v284, 2 * v283, v285);

    v412 = v77;
    if (!v408)
    {
      break;
    }

    v414 = *(v408 + v198 + 42);
LABEL_57:
    v317 = 0;
    if (v198)
    {
      v318 = 0;
    }

    else
    {
      v318 = v399;
    }

    v319 = v198 + 1;
    do
    {
      while (1)
      {
        v320 = objc_msgSend_objectAtIndexedSubscript_(v16, v288, *&v426[4 * v317 - 4], v289);
        v322 = v320;
        v323 = dword_2959D5F70[v317];
        if (v318)
        {
          objc_msgSend_setTexture_atIndex_(v157, v321, *(v320 + 656), dword_2959D5F70[v317]);
          objc_msgSend_setTexture_atIndex_(v157, v324, 0, v323 + 1);
        }

        else
        {
          objc_msgSend_setTexture_atIndex_(v157, v321, *(v320 + 336 + 8 * v198), dword_2959D5F70[v317]);
          objc_msgSend_setTexture_atIndex_(v157, v326, v322[v198 + 62], v323 + 1);
        }

        if (v198 != v76)
        {
          break;
        }

        if (++v317 == v60)
        {
          goto LABEL_72;
        }
      }

      objc_msgSend_setTexture_atIndex_(v157, v325, v322[v319 + 42], v323 + 2);
      objc_msgSend_setTexture_atIndex_(v157, v327, v322[v319 + 62], v323 + 3);

      ++v317;
    }

    while (v317 != v60);
    if (!v428)
    {
      sub_2958A5180(v418);
      v370 = v418[0];
      v17 = v408;
      v21 = v385;
      v24 = self;
      v77 = v412;
      goto LABEL_107;
    }

    v77 = v412;
    if (!v427)
    {
      sub_2958A50E4(v418);
      goto LABEL_133;
    }

    if (!v429)
    {
      sub_2958A5048(v418);
      goto LABEL_133;
    }

    objc_msgSend_setTexture_atIndex_(v157, v288, v428, 1);
    objc_msgSend_setTexture_atIndex_(v157, v328, v427, 2);
    objc_msgSend_setTexture_atIndex_(v157, v329, v429, 24);
LABEL_72:
    objc_msgSend_setTexture_atIndex_(v157, v288, v401, 0);
    if (v198)
    {
      v77 = v412;
      if (!v412)
      {
        sub_2958A52B8(v418);
        goto LABEL_133;
      }

      v331 = v412;
      v332 = v413;
      v17 = v408;
      if (!v413)
      {
        sub_2958A521C(v418);
        v413 = 0;
        goto LABEL_105;
      }
    }

    else
    {
      v331 = v390;
      v77 = v412;
      if (!v390)
      {
        sub_2958A5798(v418);
LABEL_133:
        v370 = v418[0];
        v17 = v408;
        goto LABEL_106;
      }

      v332 = v389;
      v17 = v408;
      if (!v389)
      {
        sub_2958A56FC(v418);
LABEL_105:
        v370 = v418[0];
LABEL_106:
        v21 = v385;
        v24 = self;
        goto LABEL_107;
      }
    }

    objc_msgSend_setTexture_atIndex_(v157, v330, v331, 3);
    objc_msgSend_setTexture_atIndex_(v157, v333, v332, 4);
    if (!v414)
    {
      sub_2958A5660(v418);
      v414 = 0;
      goto LABEL_105;
    }

    objc_msgSend_setTexture_atIndex_(v157, v334, v414, 5);
    v336 = v397;
    if (v198 == v76)
    {
      v336 = v397 + 1;
    }

    v337 = objc_msgSend_getKernel_configFlags_(self->_shaders, v335, 1, v336 | (2 * (v198 == 0)));

    if (!v337)
    {
      sub_2958A55C4(v418);
      v410 = 0;
      goto LABEL_105;
    }

    objc_msgSend_setComputePipelineState_(v157, v338, v337, v339);
    v410 = v337;
    v343 = objc_msgSend_maxTotalThreadsPerThreadgroup(v337, v340, v341, v342);
    v345 = v403;
    v346 = v403;
    if (v396 > v343)
    {
      v345 = v403;
      v346 = v403;
      while (v343 < v345 * v346)
      {
        v347 = v346 >> (v346 > v345);
        if (v347 <= 7)
        {
          sub_2958A5528(v418);
          goto LABEL_105;
        }

        v345 >>= v346 <= v345;
        v346 = v347;
        if (v345 <= 7)
        {
          sub_2958A548C(v418);
          goto LABEL_105;
        }
      }
    }

    objc_msgSend_setImageblockWidth_height_(v157, v344, v346, v345 << v393);
    v418[0] = (v407 + v346 - 2 - 1) / (v346 - 2);
    v418[1] = (v406 + v345 - 2 - 1) / (v345 - 2);
    v418[2] = 1;
    v417[0] = v346;
    v417[1] = v345;
    v417[2] = 1;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v157, v348, v418, v417);
    objc_msgSend_endEncoding(v157, v349, v350, v351);
    objc_msgSend_commit(v415, v352, v353, v354);
    FigMetalDecRef();
    FigMetalDecRef();
    if (!v17)
    {
      FigMetalDecRef();
    }

    v355 = v429;
    v429 = v414;

    v356 = v428;
    v428 = v77;

    v357 = v427;
    v427 = v413;

    v16 = v409;
    if (v198 != v76 && v392 >= 2)
    {
      v358 = v388;
      v359 = v426;
      do
      {
        v360 = *v359++;
        v361 = objc_msgSend_objectAtIndexedSubscript_(v409, v191, v360, v193);
        FigMetalDecRef();

        v364 = objc_msgSend_objectAtIndexedSubscript_(v409, v362, v360, v363);
        FigMetalDecRef();

        --v358;
      }

      while (v358);
    }

    v365 = v198-- <= 0;
    v24 = self;
    v76 = v394;
    v60 = v395;
    if (v365)
    {
      goto LABEL_98;
    }
  }

  if (v198)
  {
    objc_msgSend_setLabel_(v391, v286, 0, v287);
    v293 = objc_msgSend_allocator(v24->_metal, v290, v291, v292);
    v296 = objc_msgSend_newTextureWithDescriptor_(v293, v294, v391, v295);

    if (!v296)
    {
      goto LABEL_129;
    }

    goto LABEL_56;
  }

  v296 = v386;
  if (v296)
  {
LABEL_56:
    v414 = v296;
    v300 = objc_msgSend_desc(v391, v297, v298, v299);
    v304 = objc_msgSend_width(v300, v301, v302, v303);
    objc_msgSend_setWidth_(v300, v305, 2 * v304, v306);

    v310 = objc_msgSend_desc(v391, v307, v308, v309);
    v314 = objc_msgSend_height(v310, v311, v312, v313);
    objc_msgSend_setHeight_(v310, v315, 2 * v314, v316);

    goto LABEL_57;
  }

LABEL_129:
  sub_2958A5834(v418);
LABEL_130:
  v414 = 0;
  v370 = v418[0];
LABEL_131:
  v21 = v385;
LABEL_107:
  v22 = MEMORY[0x29EDB9270];
LABEL_112:
  v371 = *v22;
  if (*v22 == 1)
  {
    kdebug_trace();
    v371 = *v22;
  }

  if (v371)
  {
    v372 = objc_msgSend_commandQueue(v24->_metal, v191, v192, v193);
    v376 = objc_msgSend_commandBuffer(v372, v373, v374, v375);

    objc_msgSend_setLabel_(v376, v377, @"KTRACE_END_MTL", v378);
    v416[0] = MEMORY[0x29EDCA5F8];
    v416[1] = 3221225472;
    v416[2] = sub_295835564;
    v416[3] = &unk_29EDDBE78;
    v416[5] = 0;
    v416[6] = 0;
    v416[4] = 1;
    objc_msgSend_addCompletedHandler_(v376, v379, v416, v380);
    objc_msgSend_commit(v376, v381, v382, v383);
  }

  return v370;
}

- (int)_fuseInLong:(id)a3 slParameters:(const SyntheticLongParameters *)a4 slPlist:(id)a5 lscGainsTex:(id)a6 fusedEv0sPyramid:(id)a7 weightsPyramid:(id)a8 slOutput:(id)a9 noiseDivisorTex:(id)a10 realLongNoiseDivisorTex:(id)a11
{
  v353 = a3;
  v367 = a5;
  v366 = a6;
  v16 = a7;
  v358 = a8;
  v368 = a9;
  v356 = a10;
  v355 = a11;
  v406 = 0;
  v407 = 0;
  v405 = 0;
  v20 = *MEMORY[0x29EDB9270];
  if (*MEMORY[0x29EDB9270] == 1)
  {
    kdebug_trace();
    v20 = *MEMORY[0x29EDB9270];
  }

  v21 = self;
  if (v20)
  {
    v22 = objc_msgSend_commandQueue(self->_metal, v17, v18, v19);
    v26 = objc_msgSend_commandBuffer(v22, v23, v24, v25);

    objc_msgSend_setLabel_(v26, v27, @"KTRACE_START_MTL", v28);
    objc_msgSend_addCompletedHandler_(v26, v29, &unk_2A1CA95A0, v30);
    objc_msgSend_commit(v26, v31, v32, v33);
  }

  if (!v353)
  {
    sub_2958A7094(&v382);
LABEL_96:
    v374 = 0;
    v375 = 0;
    v378 = 0;
    v142 = 0;
    v364 = 0;
    v61 = 0;
    v357 = 0;
    v352 = 0;
LABEL_102:
    v298 = 0;
    v102 = 0;
LABEL_103:
    v183 = 0;
    v349 = v382.i32[0];
    v350 = MEMORY[0x29EDB9270];
    goto LABEL_68;
  }

  if (!a4)
  {
    sub_2958A6FF8(&v382);
    goto LABEL_96;
  }

  if (!v367)
  {
    sub_2958A6F5C(&v382);
    goto LABEL_96;
  }

  if (!v366)
  {
    sub_2958A6EC0(&v382);
    goto LABEL_96;
  }

  if (!v16)
  {
    sub_2958A6E24(&v382);
    goto LABEL_96;
  }

  if (!v358)
  {
    sub_2958A6D88(&v382);
    goto LABEL_96;
  }

  if (!v356)
  {
    sub_2958A6CEC(&v382);
    goto LABEL_96;
  }

  if (a4->var1 < 0)
  {
    sub_2958A6C50(&v382);
    goto LABEL_96;
  }

  if (a4->var2 < 0)
  {
    sub_2958A6BB4(&v382);
    goto LABEL_96;
  }

  v34 = v16;
  var1 = a4->var1;
  v357 = objc_msgSend_objectAtIndexedSubscript_(v353, v36, a4->var2, v37);
  v352 = v34;
  if ((a4->var0 - 6) <= 0xFFFFFFFC)
  {
    sub_2958A6B18(&v382);
LABEL_100:
    v374 = 0;
    v375 = 0;
    v378 = 0;
    v142 = 0;
    v364 = 0;
    v61 = 0;
    goto LABEL_102;
  }

  v38 = a4->var4 + 224128 * var1;
  v39 = a4->var4 + 224128 * a4->var2;
  v359 = v39[195];
  v40 = a4->var0 - 1;
  bzero(v384, 0x4E0uLL);
  v399 = v40;
  v363 = v38;
  v42 = objc_msgSend__fillConstants_slPlist_ev0ExposureParams_(SyntheticLongStage, v41, v384, v367, v38 + 288);
  if (v42)
  {
    sub_2958A6020(v42, &v382);
    goto LABEL_100;
  }

  if ((objc_msgSend_fillRawNoiseModelParameters_exposureParams_(DeepFusionCommon, v43, v404, (v39 + 288)) & 1) == 0)
  {
    sub_2958A60BC(&v382);
    goto LABEL_100;
  }

  v47 = *(v39 + 11);
  v395 = *(v39 + 10);
  v396 = v47;
  v397 = *(v39 + 12);
  v48 = *(v39 + 7);
  v391 = *(v39 + 6);
  v392 = v48;
  v49 = *(v39 + 9);
  v393 = *(v39 + 8);
  v394 = v49;
  v50 = *(v39 + 3);
  v387 = *(v39 + 2);
  v388 = v50;
  v51 = *(v39 + 5);
  v389 = *(v39 + 4);
  v390 = v51;
  v52 = *(v39 + 1);
  v385 = *v39;
  v386 = v52;
  v400 = *(v39 + 52);
  v53 = *(MEMORY[0x29EDCA928] + 16);
  v401 = *MEMORY[0x29EDCA928];
  v402 = v53;
  v403 = *(MEMORY[0x29EDCA928] + 32);
  v54 = *&v404[29];
  v55 = *&v404[32];
  v56 = v34[2];
  v57 = objc_msgSend_allocator(self->_metal, v44, v45, v46);
  v61 = objc_msgSend_newTextureDescriptor(v57, v58, v59, v60);

  if (!v61)
  {
    sub_2958A6A7C(&v382);
    v374 = 0;
    v375 = 0;
    v378 = 0;
    v142 = 0;
    v364 = 0;
    goto LABEL_102;
  }

  v354 = v39;
  v65 = v56 - 1;
  v66 = objc_msgSend_width(*&v34[2 * v56 + 82], v62, v63, v64);
  v70 = objc_msgSend_desc(v61, v67, v68, v69);
  objc_msgSend_setWidth_(v70, v71, v66, v72);

  v76 = objc_msgSend_height(*&v34[2 * v56 + 82], v73, v74, v75);
  v80 = objc_msgSend_desc(v61, v77, v78, v79);
  objc_msgSend_setHeight_(v80, v81, v76, v82);

  v86 = objc_msgSend_desc(v61, v83, v84, v85);
  objc_msgSend_setUsage_(v86, v87, 3, v88);

  v92 = objc_msgSend_desc(v61, v89, v90, v91);
  objc_msgSend_setPixelFormat_(v92, v93, 25, v94);

  v98 = objc_msgSend_allocator(self->_metal, v95, v96, v97);
  v102 = objc_msgSend_newTextureDescriptor(v98, v99, v100, v101);

  if (!v102)
  {
    sub_2958A69E0(&v382);
    v374 = 0;
    v375 = 0;
    v378 = 0;
    v142 = 0;
LABEL_106:
    v364 = 0;
    v298 = 0;
    goto LABEL_103;
  }

  v106 = objc_msgSend_width(*&v34[2 * v65 + 124], v103, v104, v105);
  v110 = objc_msgSend_desc(v102, v107, v108, v109);
  objc_msgSend_setWidth_(v110, v111, v106, v112);

  v116 = objc_msgSend_height(*&v34[2 * v65 + 124], v113, v114, v115);
  v120 = objc_msgSend_desc(v102, v117, v118, v119);
  objc_msgSend_setHeight_(v120, v121, v116, v122);

  v126 = objc_msgSend_desc(v102, v123, v124, v125);
  objc_msgSend_setUsage_(v126, v127, 3, v128);

  v132 = objc_msgSend_desc(v102, v129, v130, v131);
  objc_msgSend_setPixelFormat_(v132, v133, 65, v134);

  v138 = objc_msgSend_allocator(self->_metal, v135, v136, v137);
  v142 = objc_msgSend_newTextureDescriptor(v138, v139, v140, v141);

  v374 = v102;
  v102 = v142;
  if (!v142)
  {
    sub_2958A6944(&v382);
    v375 = 0;
    v378 = 0;
    goto LABEL_106;
  }

  v351 = v16;
  v146 = objc_msgSend_width(*&v34[2 * v65 + 84], v143, v144, v145);
  v150 = objc_msgSend_desc(v142, v147, v148, v149);
  objc_msgSend_setWidth_(v150, v151, v146, v152);

  v156 = objc_msgSend_height(*&v34[2 * v65 + 84], v153, v154, v155);
  v160 = objc_msgSend_desc(v102, v157, v158, v159);
  objc_msgSend_setHeight_(v160, v161, v156, v162);

  v166 = objc_msgSend_desc(v102, v163, v164, v165);
  objc_msgSend_setUsage_(v166, v167, 3, v168);

  v364 = v102;
  v172 = objc_msgSend_desc(v102, v169, v170, v171);
  objc_msgSend_setPixelFormat_(v172, v173, 25, v174);

  if (v56 >= 1)
  {
    v178 = (v56 - 1);
    v179 = 0;
    v102 = 0;
    v373 = 0;
    if (v359)
    {
      v180 = 64;
    }

    else
    {
      v180 = 0;
    }

    v362 = v180 | (16 * (v54 != 1.0)) | (32 * (v55 != 0.0));
    v365 = &v357[v178];
    v181 = &v358[v178];
    v182 = &v34[2 * v178];
    v183 = 0;
    v360 = (v56 - 1);
    v361 = v181;
    v371 = v61;
    while (1)
    {
      v184 = v178 + v179;
      v185 = objc_msgSend__fillConstantsForBand_consts_slPlist_ev0ExposureParams_(SyntheticLongStage, v175, v178 + v179, v384, v367, v363 + 288);
      if (v185)
      {
        break;
      }

      v189 = objc_msgSend_commandQueue(v21->_metal, v186, v187, v188);
      v142 = objc_msgSend_commandBuffer(v189, v190, v191, v192);

      if (!v142)
      {
        sub_2958A68A8(&v382);
        v375 = 0;
        v378 = 0;
        v183 = 0;
        goto LABEL_76;
      }

      v183 = v142;
      v142 = objc_msgSend_computeCommandEncoder(v142, v193, v194, v195);

      if (!v142)
      {
        sub_2958A680C(&v382);
        v375 = 0;
        v378 = 0;
        v102 = 0;
        goto LABEL_76;
      }

      v370 = v183;
      v102 = v142;
      v199 = objc_msgSend_width(*&v182[2 * v179 + 84], v196, v197, v198);
      v203 = objc_msgSend_height(*&v182[2 * v179 + 84], v200, v201, v202);
      *&v205 = 0.5 / v199;
      v369 = v203;
      *(&v205 + 1) = 0.5 / v203;
      v398 = v205;
      if (v184)
      {
        objc_msgSend_setBytes_length_atIndex_(v142, v204, v384, 1248, 1);
        objc_msgSend_setLabel_(v61, v206, 0, v207);
        v211 = objc_msgSend_allocator(v21->_metal, v208, v209, v210);
        v212 = v61;
        v215 = objc_msgSend_newTextureWithDescriptor_(v211, v213, v61, v214);

        if (!v215)
        {
          goto LABEL_78;
        }
      }

      else
      {
        v219 = v354[15];
        v401 = v354[14];
        v402 = v219;
        v403 = v354[16];
        objc_msgSend_setBytes_length_atIndex_(v142, v204, v384, 1248, 1);
        v212 = v61;
        objc_msgSend_setLabel_(v61, v220, 0, v221);
        v215 = v368[2];
        if (!v215)
        {
LABEL_78:
          sub_2958A6770(&v382);
          v375 = 0;
          v378 = 0;
          v142 = 0;
          v349 = v382.i32[0];
          v16 = v351;
          v350 = MEMORY[0x29EDB9270];
          v298 = v373;
          v183 = v370;
          v61 = v212;
          goto LABEL_68;
        }
      }

      v377 = v215;
      v61 = v212;
      v222 = objc_msgSend_desc(v212, v216, v217, v218);
      v226 = objc_msgSend_width(v222, v223, v224, v225);
      objc_msgSend_setWidth_(v222, v227, 2 * v226, v228);

      v232 = objc_msgSend_desc(v212, v229, v230, v231);
      v236 = objc_msgSend_height(v232, v233, v234, v235);
      objc_msgSend_setHeight_(v232, v237, 2 * v236, v238);

      objc_msgSend_setLabel_(v374, v239, 0, v240);
      if (v184)
      {
        v244 = objc_msgSend_allocator(v21->_metal, v241, v242, v243);
        v378 = objc_msgSend_newTextureWithDescriptor_(v244, v245, v374, v246);
      }

      else
      {
        v378 = v368[3];
      }

      if (!v378)
      {
        sub_2958A66D4(&v382);
        v375 = 0;
        v378 = 0;
        v349 = v382.i32[0];
        v16 = v351;
        v350 = MEMORY[0x29EDB9270];
        goto LABEL_81;
      }

      v250 = objc_msgSend_desc(v374, v247, v248, v249);
      v254 = objc_msgSend_width(v250, v251, v252, v253);
      objc_msgSend_setWidth_(v250, v255, 2 * v254, v256);

      v260 = objc_msgSend_desc(v374, v257, v258, v259);
      v264 = objc_msgSend_height(v260, v261, v262, v263);
      objc_msgSend_setHeight_(v260, v265, 2 * v264, v266);

      if (v184)
      {
        v270 = v364;
        objc_msgSend_setLabel_(v364, v267, 0, v269);
        v274 = objc_msgSend_allocator(self->_metal, v271, v272, v273);
        v277 = objc_msgSend_newTextureWithDescriptor_(v274, v275, v364, v276);

        v375 = v277;
        if (!v277)
        {
          sub_2958A61F4(&v382);
          v375 = 0;
          v349 = v382.i32[0];
          v16 = v351;
          v350 = MEMORY[0x29EDB9270];
          v61 = v371;
LABEL_81:
          v298 = v373;
LABEL_82:
          v183 = v370;
          v142 = v377;
          goto LABEL_68;
        }
      }

      else
      {
        v375 = 0;
        v270 = v364;
      }

      v278 = objc_msgSend_desc(v270, v267, v268, v269);
      v282 = objc_msgSend_width(v278, v279, v280, v281);
      objc_msgSend_setWidth_(v278, v283, 2 * v282, v284);

      v288 = objc_msgSend_desc(v270, v285, v286, v287);
      v292 = objc_msgSend_height(v288, v289, v290, v291);
      objc_msgSend_setHeight_(v288, v293, 2 * v292, v294);

      objc_msgSend_setTexture_atIndex_(v102, v295, *&v182[2 * v179 + 84], 8);
      objc_msgSend_setTexture_atIndex_(v102, v296, *&v182[2 * v179 + 124], 9);
      v61 = v371;
      v298 = v373;
      if (v179)
      {
        objc_msgSend_setTexture_atIndex_(v102, v297, *&v182[2 * v179 + 86], 10);
        objc_msgSend_setTexture_atIndex_(v102, v299, *&v182[2 * v179 + 126], 11);
        objc_msgSend_setTexture_atIndex_(v102, v300, v365[v179 + 43], 14);
        objc_msgSend_setTexture_atIndex_(v102, v301, v365[v179 + 63], 15);
        if (!v407)
        {
          sub_2958A63C8(&v382);
          goto LABEL_86;
        }

        if (!v406)
        {
          sub_2958A632C(&v382);
          goto LABEL_86;
        }

        if (!v405)
        {
          sub_2958A6290(&v382);
LABEL_86:
          v349 = v382.i32[0];
          v16 = v351;
          v350 = MEMORY[0x29EDB9270];
          v183 = v370;
          v142 = v377;
          goto LABEL_68;
        }

        objc_msgSend_setTexture_atIndex_(v102, v302, v407, 1);
        objc_msgSend_setTexture_atIndex_(v102, v303, v406, 2);
        objc_msgSend_setTexture_atIndex_(v102, v304, v405, 24);
      }

      if (v184 || !v359)
      {
        objc_msgSend_setTexture_atIndex_(v102, v297, v365[v179 + 42], 12);
        v306 = v365[v179 + 62];
      }

      else
      {
        objc_msgSend_setTexture_atIndex_(v102, v297, v357[82], 12);
        v306 = 0;
      }

      objc_msgSend_setTexture_atIndex_(v102, v305, v306, 13);
      objc_msgSend_setTexture_atIndex_(v102, v307, v361[v179 + 42], 5);
      objc_msgSend_setTexture_atIndex_(v102, v308, v366, 0);
      objc_msgSend_setTexture_atIndex_(v102, v309, v377, 3);
      objc_msgSend_setTexture_atIndex_(v102, v310, v378, 4);
      if (v184)
      {
        objc_msgSend_setTexture_atIndex_(v102, v311, v375, 25);
        v313 = 0;
      }

      else
      {
        objc_msgSend_setTexture_atIndex_(v102, v311, v356, 6);
        objc_msgSend_setTexture_atIndex_(v102, v314, v355, 7);
        v313 = 2;
      }

      objc_msgSend_setImageblockWidth_height_(v102, v312, 16, 16);
      if (v179)
      {
        v316 = v362;
      }

      else
      {
        v316 = v362 + 1;
      }

      v317 = objc_msgSend_getKernel_configFlags_(self->_shaders, v315, 2, v316 | v313);

      if (!v317)
      {
        sub_2958A6638(&v382);
        v298 = 0;
        v349 = v382.i32[0];
        v16 = v351;
        v350 = MEMORY[0x29EDB9270];
        v61 = v371;
        goto LABEL_82;
      }

      objc_msgSend_setComputePipelineState_(v102, v318, v317, v319);
      v320.i64[0] = v199;
      v320.i64[1] = v369;
      v321 = vaddq_s64(v320, vdupq_n_s64(0xDuLL));
      v321.i64[0] /= 0xEuLL;
      v321.i64[1] /= 0xEuLL;
      v382 = v321;
      v383 = 1;
      v380 = vdupq_n_s64(0x10uLL);
      v381 = 1;
      objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v102, v322, &v382, &v380);
      objc_msgSend_endEncoding(v102, v323, v324, v325);
      v183 = v370;
      objc_msgSend_commit(v370, v326, v327, v328);
      if (!v184)
      {
        v329 = v358[42];
        if (v329 == v368[2])
        {
          v358[42] = 0;
        }
      }

      v373 = v317;
      v61 = v371;
      v178 = v360;
      if (v361[v179 + 42])
      {
        FigMetalDecRef();
      }

      FigMetalDecRef();
      FigMetalDecRef();
      FigMetalDecRef();
      v330 = v407;
      v407 = v377;

      v331 = v406;
      v406 = v378;

      v332 = v405;
      v405 = v375;

      --v179;
      --v181;
      v21 = self;
      if (v360 + v179 + 1 <= 0)
      {
        goto LABEL_64;
      }
    }

    sub_2958A6158(v185, &v382);
    v375 = 0;
    v378 = 0;
    v142 = 0;
LABEL_76:
    v349 = v382.i32[0];
    v16 = v351;
    v350 = MEMORY[0x29EDB9270];
    goto LABEL_77;
  }

  v373 = 0;
  v102 = 0;
  v183 = 0;
LABEL_64:
  v350 = MEMORY[0x29EDB9270];
  if (v407 == v368[2])
  {
    v16 = v351;
    v298 = v373;
    if (v406 == v368[3])
    {
      if (!v405)
      {
        v375 = 0;
        v378 = 0;
        v142 = 0;
        v349 = 0;
        goto LABEL_68;
      }

      sub_2958A659C(&v382);
    }

    else
    {
      sub_2958A6500(&v382);
    }

    v375 = 0;
    v378 = 0;
    v142 = 0;
    v349 = v382.i32[0];
  }

  else
  {
    sub_2958A6464(&v382);
    v375 = 0;
    v378 = 0;
    v142 = 0;
    v349 = v382.i32[0];
    v16 = v351;
LABEL_77:
    v298 = v373;
  }

LABEL_68:
  v333 = *v350;
  if (*v350 == 1)
  {
    kdebug_trace();
    v333 = *v350;
  }

  if (v333)
  {
    objc_msgSend_commandQueue(self->_metal, v175, v176, v177);
    v334 = v142;
    v336 = v335 = v183;
    objc_msgSend_commandBuffer(v336, v337, v338, v339);
    v340 = v372 = v61;

    v183 = v335;
    v142 = v334;
    objc_msgSend_setLabel_(v340, v341, @"KTRACE_END_MTL", v342);
    v379[0] = MEMORY[0x29EDCA5F8];
    v379[1] = 3221225472;
    v379[2] = sub_295836788;
    v379[3] = &unk_29EDDBE78;
    v379[5] = 0;
    v379[6] = 0;
    v379[4] = 2;
    objc_msgSend_addCompletedHandler_(v340, v343, v379, v344);
    objc_msgSend_commit(v340, v345, v346, v347);

    v61 = v372;
  }

  return v349;
}

- (int)_doEv0sPlusRealLongWithBands:(id)a3 slFuseEv0Plist:(id)a4 slFuseLongPlist:(id)a5 slParameters:(const SyntheticLongParameters *)a6 slOutput:(id)a7 noiseDivisorTex:(id)a8 realLongNoiseDivisorTex:(id)a9 lscGainsTex:(id)a10 intermediateMetadata:(id)a11
{
  v17 = a3;
  v145 = a4;
  v18 = a5;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v149 = a10;
  v24 = a11;
  v151 = 0;
  v150 = 0;
  var1 = a6->var1;
  var2 = a6->var2;
  v148 = a6;
  if ((var1 & 0x80000000) != 0)
  {
    sub_2958A7A00(v152);
    v135 = 0;
    v134 = v152[0];
    v120 = v145;
    v27 = v20;
    goto LABEL_26;
  }

  v27 = v20;
  if (!v19)
  {
    sub_2958A7964(v152);
LABEL_31:
    v135 = 0;
    v134 = v152[0];
    v120 = v145;
    goto LABEL_26;
  }

  if (!*(v19 + 2))
  {
    sub_2958A78C8(v152);
    goto LABEL_31;
  }

  if (!*(v19 + 3))
  {
    sub_2958A782C(v152);
    goto LABEL_31;
  }

  v144 = v18;
  v143 = objc_msgSend_objectAtIndexedSubscript_(v17, v22, var1, v23);
  v146 = *(v143 + 8);
  v147 = objc_msgSend_width(*(v19 + 2), v28, v29, v30);
  v34 = objc_msgSend_height(*(v19 + 2), v31, v32, v33);
  if (var2 < 0)
  {
    v120 = v145;
    v122 = objc_msgSend__fuseEv0s_slParameters_slPlist_lscGainsTex_outputLuma_outputChroma_outputWeightsPyramid_noiseDivisorTex_intermediateMetadata_(self, v35, v17, v148, v145, v149, *(v19 + 2), *(v19 + 3), 0, v20, v24);
    if (!v122)
    {
      v134 = 0;
      goto LABEL_25;
    }

    v140 = v20;
    v114 = 0;
LABEL_45:
    sub_2958A7778(v122, v114, v152);
    v134 = v152[0];
    v27 = v140;
    goto LABEL_25;
  }

  v38 = v34;
  v142 = v24;
  v39 = objc_msgSend_allocator(self->_metal, v35, v36, v37);
  v43 = objc_msgSend_newTextureDescriptor(v39, v40, v41, v42);

  if (!v43)
  {
    sub_2958A76DC(v152);
    v134 = v152[0];
LABEL_49:

    v18 = v144;
    v120 = v145;
    goto LABEL_22;
  }

  v141 = v17;
  v47 = objc_msgSend_desc(v43, v44, v45, v46);
  objc_msgSend_setWidth_(v47, v48, v147, v49);

  v53 = objc_msgSend_desc(v43, v50, v51, v52);
  objc_msgSend_setHeight_(v53, v54, v38, v55);

  v59 = objc_msgSend_desc(v43, v56, v57, v58);
  objc_msgSend_setUsage_(v59, v60, 3, v61);

  v65 = objc_msgSend_desc(v43, v62, v63, v64);
  objc_msgSend_setPixelFormat_(v65, v66, 25, v67);

  objc_msgSend_setLabel_(v43, v68, 0, v69);
  v73 = objc_msgSend_allocator(self->_metal, v70, v71, v72);
  v76 = objc_msgSend_newTextureWithDescriptor_(v73, v74, v43, v75);
  v151 = v76;

  if (!v76)
  {
    sub_2958A7640(v152);
    v134 = v152[0];
    v17 = v141;
    goto LABEL_49;
  }

  v139 = v21;
  v80 = objc_msgSend_desc(v43, v77, v78, v79);
  objc_msgSend_setWidth_(v80, v81, v147 >> 1, v82);

  v86 = objc_msgSend_desc(v43, v83, v84, v85);
  objc_msgSend_setHeight_(v86, v87, v38 >> 1, v88);

  v92 = objc_msgSend_desc(v43, v89, v90, v91);
  objc_msgSend_setUsage_(v92, v93, 3, v94);

  v98 = objc_msgSend_desc(v43, v95, v96, v97);
  objc_msgSend_setPixelFormat_(v98, v99, 65, v100);

  objc_msgSend_setLabel_(v43, v101, 0, v102);
  v106 = objc_msgSend_allocator(self->_metal, v103, v104, v105);
  v109 = objc_msgSend_newTextureWithDescriptor_(v106, v107, v43, v108);
  v150 = v109;

  if (!v109)
  {
    sub_2958A75A4(v152);
    v134 = v152[0];
    v17 = v141;
LABEL_48:
    v21 = v139;
    goto LABEL_49;
  }

  v140 = v20;
  v110 = objc_opt_new();
  if (!v110)
  {
    sub_2958A7508(v152);
LABEL_47:
    v134 = v152[0];
    v27 = v20;
    v17 = v141;
    goto LABEL_48;
  }

  v114 = v110;
  *(v110 + 8) = v146;
  v118 = objc_msgSend_pixelFormat(*(v19 + 2), v111, v112, v113);
  if (v118 == 25 && objc_msgSend_isCompressed(*(v19 + 2), v115, v116, v117))
  {
    sub_2958A7454(v114, v152);
    goto LABEL_47;
  }

  *(&v137 + 1) = v118 == 25;
  LOBYTE(v137) = 0;
  Chroma_startingLevel_testSize_pyramid = objc_msgSend_allocatePyramidWithMetalContext_label_width_height_isFP16_createLuma_createChroma_startingLevel_testSize_pyramid_(PyramidStorage_NRF, v115, self->_metal, @"weightsPyramid", v147, v38, 1, 1, v137, v114);
  if (Chroma_startingLevel_testSize_pyramid)
  {
    sub_2958A7130(Chroma_startingLevel_testSize_pyramid, v114, v152);
    goto LABEL_47;
  }

  if (v118 == 25)
  {
    objc_storeStrong((v114 + 336), *(v19 + 2));
  }

  *(v114 + 664) = 1;

  v24 = v142;
  v120 = v145;
  v122 = objc_msgSend__fuseEv0s_slParameters_slPlist_lscGainsTex_outputLuma_outputChroma_outputWeightsPyramid_noiseDivisorTex_intermediateMetadata_(self, v121, v141, v148, v145, v149, v76, v109, v114, 0, v142);
  if (v122)
  {
    v17 = v141;
    v18 = v144;
    v21 = v139;
    goto LABEL_45;
  }

  v123 = objc_opt_new();
  v125 = v123;
  if (!v123)
  {
    sub_2958A73B8(v152);
LABEL_40:
    v134 = v152[0];
    v17 = v141;
    v18 = v144;
    goto LABEL_42;
  }

  *(v123 + 8) = v146;
  LOBYTE(v138) = 1;
  Chroma_pyramid = objc_msgSend_allocatePyramidWithMetalContext_label_width_height_isFP16_createLuma_createChroma_pyramid_(PyramidStorage_NRF, v124, self->_metal, @"fusedEv0sPyramid", v147, v38, 1, 1, v138, v123);
  if (Chroma_pyramid)
  {
    sub_2958A71E4(Chroma_pyramid, v152);
    goto LABEL_40;
  }

  objc_msgSend_setLumaTexture_chromaTexture_level_metal_(v125, v127, v76, v109, 0, self->_metal);
  v130 = objc_msgSend_pyramidDownscale_(self, v128, v125, v129);
  v18 = v144;
  if (!v130)
  {
    v21 = v139;
    v17 = v141;
    v132 = objc_msgSend__fuseInLong_slParameters_slPlist_lscGainsTex_fusedEv0sPyramid_weightsPyramid_slOutput_noiseDivisorTex_realLongNoiseDivisorTex_(self, v131, v141, v148, v144, v149, v125, v114, v19, v20, v139);
    if (v132)
    {
      sub_2958A731C(v132, v152);
      v134 = v152[0];
    }

    else
    {
      objc_msgSend_makePyramidAliasable_metal_(PyramidStorage_NRF, v133, v125, self->_metal);
      FigMetalDecRef();
      FigMetalDecRef();
      v134 = 0;
    }

    goto LABEL_21;
  }

  sub_2958A7280(v130, v152);
  v134 = v152[0];
  v17 = v141;
LABEL_42:
  v21 = v139;
LABEL_21:

  v27 = v20;
LABEL_22:
  v24 = v142;
LABEL_25:
  v135 = v143;
LABEL_26:

  return v134;
}

- (int)doSyntheticLongWithBands:(id)a3 slFuseEv0Plist:(id)a4 slFuseLongPlist:(id)a5 slParameters:(const SyntheticLongParameters *)a6 slOutput:(id)a7 noiseDivisorTex:(id)a8 realLongNoiseDivisorTex:(id)a9 lscGainsTex:(id)a10 intermediateMetadata:(id)a11
{
  v76 = a3;
  v75 = a4;
  v77 = a5;
  v17 = a7;
  v18 = a8;
  v19 = a9;
  v20 = a10;
  v24 = a11;
  if (!v17)
  {
    sub_2958A7FE4(&v78);
LABEL_24:
    v73 = v78;
    v54 = v75;
    v53 = v76;
    goto LABEL_13;
  }

  if (!*(v17 + 2))
  {
    sub_2958A7F48(&v78);
    goto LABEL_24;
  }

  if (!*(v17 + 3))
  {
    sub_2958A7EAC(&v78);
    goto LABEL_24;
  }

  if (!v18)
  {
    sub_2958A7E10(&v78);
    goto LABEL_24;
  }

  var2 = a6->var2;
  v26 = objc_msgSend_width(v18, v21, v22, v23);
  if (objc_msgSend_width(*(v17 + 2), v27, v28, v29) != 2 * v26)
  {
    sub_2958A7A9C(&v78);
    goto LABEL_24;
  }

  v33 = objc_msgSend_height(v18, v30, v31, v32);
  if (objc_msgSend_height(*(v17 + 2), v34, v35, v36) != 2 * v33)
  {
    sub_2958A7B38(&v78);
    goto LABEL_24;
  }

  if (var2 < 0)
  {
    goto LABEL_11;
  }

  if (!v19)
  {
    sub_2958A7D74(&v78);
    goto LABEL_24;
  }

  v40 = objc_msgSend_width(v19, v37, v38, v39);
  if (objc_msgSend_width(*(v17 + 2), v41, v42, v43) != 2 * v40)
  {
    sub_2958A7BD4(&v78);
    goto LABEL_24;
  }

  v47 = objc_msgSend_height(v19, v44, v45, v46);
  if (objc_msgSend_height(*(v17 + 2), v48, v49, v50) != 2 * v47)
  {
    sub_2958A7C70(&v78);
    goto LABEL_24;
  }

LABEL_11:
  var0 = a6->var0;
  v52 = self;
  v54 = v75;
  v53 = v76;
  v55 = objc_msgSend__doEv0sPlusRealLongWithBands_slFuseEv0Plist_slFuseLongPlist_slParameters_slOutput_noiseDivisorTex_realLongNoiseDivisorTex_lscGainsTex_intermediateMetadata_(v52, v37, v76, v75, v77, a6, v17, v18, v19, v20, v24);
  if (v55)
  {
    v73 = v55;
    sub_2958A7D0C();
  }

  else
  {
    v58 = objc_msgSend_numberWithBool_(MEMORY[0x29EDBA070], v56, var2 >= 0, v57);
    objc_msgSend_setObject_forKeyedSubscript_(v24, v59, v58, @"SyntheticLongUsedRealLong");

    v62 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x29EDBA070], v60, var0 + (~var2 >> 31), v61);
    objc_msgSend_setObject_forKeyedSubscript_(v24, v63, v62, @"ev0count");

    v64 = MEMORY[0x29EDBA070];
    v68 = objc_msgSend_intermediateVersion(DeepFusionCommon, v65, v66, v67);
    v71 = objc_msgSend_numberWithInt_(v64, v69, v68, v70);
    objc_msgSend_setObject_forKeyedSubscript_(v24, v72, v71, @"IntermediateVersion");

    v73 = 0;
  }

LABEL_13:

  return v73;
}

- (SidecarWriter)sidecarWriter
{
  WeakRetained = objc_loadWeakRetained(&self->_sidecarWriter);

  return WeakRetained;
}

@end