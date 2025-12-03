@interface LearnedNRMetalStage
+ (int)prewarmShadersWithCommandQueue:(id)queue;
- (LearnedNRMetalStage)initWithCommandQueue:(id)queue cameraInfo:(id)info tuningParameters:(id)parameters isQuadra:(BOOL)quadra;
- (int)_compileShaders;
- (int)clearBuffer:(__CVBuffer *)buffer;
- (int)createRawTile:(__CVBuffer *)tile fromInputRaw:(__CVBuffer *)raw tileStart:(id *)start cmdBuffer:;
- (int)createRawTile:(__CVBuffer *)tile fromInputYuv:(__CVBuffer *)yuv tileStart:(id *)start cmdBuffer:;
- (int)updateParametersFromMetadata:(id)metadata lscSampleBuffer:(opaqueCMSampleBuffer *)buffer;
- (int)writeRgbTile:(__CVBuffer *)tile toYuvBuffer:(__CVBuffer *)buffer intermediateLumaBuffer:(__CVBuffer *)lumaBuffer intermediateDeltaBuffer:(__CVBuffer *)deltaBuffer origRawInputBuffer:(__CVBuffer *)inputBuffer srcStart:(id *)start dstStart:size:cmdBuffer:;
- (int)writeRgbTile:(__CVBuffer *)tile toYuvBuffer:(__CVBuffer *)buffer intermediateLumaBuffer:(__CVBuffer *)lumaBuffer intermediateDeltaBuffer:(__CVBuffer *)deltaBuffer origYuvInputBuffer:(__CVBuffer *)inputBuffer srcStart:(id *)start dstStart:size:cmdBuffer:;
- (void)_bindYuvBuffer:(__CVBuffer *)buffer toLumaTexture:(id *)texture chromaTexture:(id *)chromaTexture withUsage:(unint64_t)usage;
@end

@implementation LearnedNRMetalStage

+ (int)prewarmShadersWithCommandQueue:(id)queue
{
  queueCopy = queue;
  v4 = [LearnedNRMetalStage alloc];
  isQuadra = objc_msgSend_initWithCommandQueue_cameraInfo_tuningParameters_isQuadra_(v4, v5, queueCopy, 0, 0, 0);

  if (isQuadra)
  {
    v7 = 0;
  }

  else
  {
    v7 = -12786;
  }

  return v7;
}

- (LearnedNRMetalStage)initWithCommandQueue:(id)queue cameraInfo:(id)info tuningParameters:(id)parameters isQuadra:(BOOL)quadra
{
  queueCopy = queue;
  infoCopy = info;
  parametersCopy = parameters;
  v55.receiver = self;
  v55.super_class = LearnedNRMetalStage;
  v12 = [(LearnedNRMetalStage *)&v55 init];
  if (v12)
  {
    v13 = MEMORY[0x29EDB9F48];
    v14 = objc_opt_class();
    v17 = objc_msgSend_bundleForClass_(v13, v15, v14, v16);
    v18 = objc_alloc(MEMORY[0x29EDC0A40]);
    inited = objc_msgSend_initWithbundle_andOptionalCommandQueue_(v18, v19, v17, queueCopy);
    v21 = *(v12 + 1);
    *(v12 + 1) = inited;

    if (*(v12 + 1))
    {
      if (!objc_msgSend__compileShaders(v12, v22, v23, v24))
      {
        v47 = v17;
        v48 = infoCopy;
        v49 = queueCopy;
        v25 = objc_alloc_init(MEMORY[0x29EDB8E00]);
        v51 = 0u;
        v52 = 0u;
        v53 = 0u;
        v54 = 0u;
        v26 = parametersCopy;
        v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v27, &v51, v50, 16);
        if (v28)
        {
          v29 = v28;
          v30 = *v52;
          do
          {
            for (i = 0; i != v29; ++i)
            {
              if (*v52 != v30)
              {
                objc_enumerationMutation(v26);
              }

              v32 = *(*(&v51 + 1) + 8 * i);
              v33 = objc_alloc_init(LearnedNRTuningParams);
              v36 = objc_msgSend_objectForKeyedSubscript_(v26, v34, v32, v35, v47);
              objc_msgSend_readPlist_(v33, v37, v36, v38);

              objc_msgSend_setObject_forKeyedSubscript_(v25, v39, v33, v32);
            }

            v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v40, &v51, v50, 16);
          }

          while (v29);
        }

        objc_storeStrong(v12 + 44, v25);
        infoCopy = v48;
        if (v48)
        {
          v41 = [LSCGainsPlist alloc];
          v43 = objc_msgSend_initWithDictionary_metal_(v41, v42, v48, *(v12 + 1));
          v44 = *(v12 + 6);
          *(v12 + 6) = v43;

          if (!*(v12 + 6))
          {
            sub_2958770C4(v25, v47);
            v45 = 0;
            queueCopy = v49;
            goto LABEL_15;
          }
        }

        queueCopy = v49;
        goto LABEL_14;
      }

      sub_29587704C();
    }

    else
    {
      sub_295877154();
    }

    v45 = 0;
    goto LABEL_15;
  }

LABEL_14:
  v45 = v12;
LABEL_15:

  return v45;
}

- (int)_compileShaders
{
  v3 = objc_msgSend_computePipelineStateFor_constants_(self->_metalContext, a2, @"lumaChromaFullToRawTile", 0);
  lumaChromaFullToRawTilePipelineState = self->_lumaChromaFullToRawTilePipelineState;
  self->_lumaChromaFullToRawTilePipelineState = v3;

  if (!self->_lumaChromaFullToRawTilePipelineState)
  {
    sub_2958773D0(&v15);
    return v15;
  }

  v6 = objc_msgSend_computePipelineStateFor_constants_(self->_metalContext, v5, @"rgbTileToLumaTileAndChromaFull", 0);
  rgbTileToLumaTileAndChromaFullPipelineState = self->_rgbTileToLumaTileAndChromaFullPipelineState;
  self->_rgbTileToLumaTileAndChromaFullPipelineState = v6;

  if (!self->_rgbTileToLumaTileAndChromaFullPipelineState)
  {
    sub_295877324(&v15);
    return v15;
  }

  v9 = objc_msgSend_computePipelineStateFor_constants_(self->_metalContext, v8, @"lumaAddbackAndWriteToFull", 0);
  lumaAddbackAndWriteToFullPipelineState = self->_lumaAddbackAndWriteToFullPipelineState;
  self->_lumaAddbackAndWriteToFullPipelineState = v9;

  if (!self->_lumaAddbackAndWriteToFullPipelineState)
  {
    sub_295877278(&v15);
    return v15;
  }

  v12 = objc_msgSend_computePipelineStateFor_constants_(self->_metalContext, v11, @"learnedNRClearTexture", 0);
  clearTexturePipelineState = self->_clearTexturePipelineState;
  self->_clearTexturePipelineState = v12;

  if (!self->_clearTexturePipelineState)
  {
    sub_2958771CC(&v15);
    return v15;
  }

  return 0;
}

- (int)clearBuffer:(__CVBuffer *)buffer
{
  v6 = objc_msgSend_commandQueue(self->_metalContext, a2, buffer, v3);
  v10 = objc_msgSend_commandBuffer(v6, v7, v8, v9);

  v14 = objc_msgSend_computeCommandEncoder(v10, v11, v12, v13);
  v71 = 0;
  v72 = 0;
  objc_msgSend__bindYuvBuffer_toLumaTexture_chromaTexture_withUsage_(self, v15, buffer, &v72, &v71, 22);
  v16 = v72;
  v17 = v71;
  v20 = v17;
  if (!v16)
  {
    sub_295877528(&v68);
LABEL_7:
    v63 = v68;
    goto LABEL_4;
  }

  if (!v17)
  {
    sub_29587747C(&v68);
    goto LABEL_7;
  }

  objc_msgSend_setComputePipelineState_(v14, v18, self->_clearTexturePipelineState, v19);
  objc_msgSend_setTexture_atIndex_(v14, v21, v16, 0);
  v25 = objc_msgSend_threadExecutionWidth(self->_clearTexturePipelineState, v22, v23, v24);
  v29 = objc_msgSend_maxTotalThreadsPerThreadgroup(self->_clearTexturePipelineState, v26, v27, v28) / v25;
  v68 = objc_msgSend_width(v16, v30, v31, v32);
  v69 = objc_msgSend_height(v16, v33, v34, v35);
  v70 = 1;
  v65 = v25;
  v66 = v29;
  v67 = 1;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v14, v36, &v68, &v65);
  objc_msgSend_setComputePipelineState_(v14, v37, self->_clearTexturePipelineState, v38);
  objc_msgSend_setTexture_atIndex_(v14, v39, v20, 0);
  v43 = objc_msgSend_threadExecutionWidth(self->_clearTexturePipelineState, v40, v41, v42);
  v47 = objc_msgSend_maxTotalThreadsPerThreadgroup(self->_clearTexturePipelineState, v44, v45, v46) / v43;
  v51 = objc_msgSend_width(v20, v48, v49, v50);
  v55 = objc_msgSend_height(v20, v52, v53, v54);
  v68 = v51;
  v69 = v55;
  v70 = 1;
  v65 = v43;
  v66 = v47;
  v67 = 1;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v14, v56, &v68, &v65);
  objc_msgSend_endEncoding(v14, v57, v58, v59);
  objc_msgSend_commit(v10, v60, v61, v62);
  v63 = 0;
LABEL_4:

  return v63;
}

- (int)createRawTile:(__CVBuffer *)tile fromInputYuv:(__CVBuffer *)yuv tileStart:(id *)start cmdBuffer:
{
  v6 = v5;
  startCopy = start;
  v10 = objc_msgSend_commandQueue(self->_metalContext, a2, tile, yuv);
  v14 = objc_msgSend_commandBuffer(v10, v11, v12, v13);

  objc_msgSend_setLabel_(v14, v15, @"createRawTile", v16);
  v20 = objc_msgSend_computeCommandEncoder(v14, v17, v18, v19);
  v58 = 0;
  v59 = 0;
  objc_msgSend__bindYuvBuffer_toLumaTexture_chromaTexture_withUsage_(self, v21, yuv, &v59, &v58, 17);
  v22 = v59;
  v23 = v58;
  v25 = v23;
  if (!v22)
  {
    sub_2958777D8(v57);
LABEL_11:
    v28 = 0;
LABEL_14:
    v54 = v57[0];
    goto LABEL_8;
  }

  if (!v23)
  {
    sub_29587772C(v57);
    goto LABEL_11;
  }

  v28 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(self->_metalContext, v24, tile, 25, 23, 0);
  if (!v28)
  {
    sub_295877680(v57);
    goto LABEL_14;
  }

  objc_msgSend_setComputePipelineState_(v20, v26, self->_lumaChromaFullToRawTilePipelineState, v27);
  objc_msgSend_setTexture_atIndex_(v20, v29, v22, 0);
  objc_msgSend_setTexture_atIndex_(v20, v30, v25, 1);
  objc_msgSend_setTexture_atIndex_(v20, v31, v28, 2);
  objc_msgSend_setTexture_atIndex_(v20, v32, self->_lscGainsTex, 3);
  objc_msgSend_setBytes_length_atIndex_(v20, v33, &startCopy, 4, 0);
  objc_msgSend_setBytes_length_atIndex_(v20, v34, self->_anon_40, 288, 1);
  v38 = objc_msgSend_threadExecutionWidth(self->_lumaChromaFullToRawTilePipelineState, v35, v36, v37);
  v42 = objc_msgSend_maxTotalThreadsPerThreadgroup(self->_lumaChromaFullToRawTilePipelineState, v39, v40, v41) / v38;
  v57[0] = objc_msgSend_width(v28, v43, v44, v45);
  v57[1] = objc_msgSend_height(v28, v46, v47, v48) / 5uLL;
  v57[2] = 1;
  v56[0] = v38;
  v56[1] = v42;
  v56[2] = 1;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v20, v49, v57, v56);
  objc_msgSend_endEncoding(v20, v50, v51, v52);
  if (!v14)
  {
    sub_2958775D4(v57);
    goto LABEL_14;
  }

  if (v6)
  {
    v53 = v14;
    v54 = 0;
    *v6 = v14;
  }

  else
  {
    v54 = 0;
  }

LABEL_8:

  return v54;
}

- (int)createRawTile:(__CVBuffer *)tile fromInputRaw:(__CVBuffer *)raw tileStart:(id *)start cmdBuffer:
{
  v5 = objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x29EDB8DD0], a2, *MEMORY[0x29EDB8CC8], @"Not supported", 0);
  objc_exception_throw(v5);
}

- (int)writeRgbTile:(__CVBuffer *)tile toYuvBuffer:(__CVBuffer *)buffer intermediateLumaBuffer:(__CVBuffer *)lumaBuffer intermediateDeltaBuffer:(__CVBuffer *)deltaBuffer origYuvInputBuffer:(__CVBuffer *)inputBuffer srcStart:(id *)start dstStart:size:cmdBuffer:
{
  startCopy = start;
  v108[0] = start;
  v8.i16[0] = v109;
  v8.i16[2] = v110;
  v94 = v8;
  v16 = objc_msgSend_commandQueue(self->_metalContext, a2, tile, buffer);
  v20 = objc_msgSend_commandBuffer(v16, v17, v18, v19);

  v24 = objc_msgSend_computeCommandEncoder(v20, v21, v22, v23);
  v107 = 0;
  v106 = 0;
  objc_msgSend__bindYuvBuffer_toLumaTexture_chromaTexture_withUsage_(self, v25, buffer, &v107, &v106, 22);
  v26 = v107;
  v27 = v106;
  v29 = v27;
  v95 = v26;
  if (!v26)
  {
    sub_295877E90(&v99);
    lumaBuffer = 0;
    deltaBuffer = 0;
LABEL_18:
    v30 = 0;
LABEL_22:
    v34 = 0;
LABEL_29:
    v91 = v99.i32[0];
    goto LABEL_15;
  }

  if (!v27)
  {
    sub_295877DE4(&v99);
    lumaBuffer = 0;
    deltaBuffer = 0;
    v26 = 0;
    goto LABEL_18;
  }

  v104 = 0;
  v105 = 0;
  objc_msgSend__bindYuvBuffer_toLumaTexture_chromaTexture_withUsage_(self, v28, inputBuffer, &v105, &v104, 17);
  v30 = v105;
  v31 = v104;
  v26 = v31;
  if (!v30)
  {
    sub_295877D38(&v99);
LABEL_21:
    lumaBuffer = 0;
    deltaBuffer = 0;
    goto LABEL_22;
  }

  if (!v31)
  {
    sub_295877C8C(&v99);
    goto LABEL_21;
  }

  v34 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(self->_metalContext, v32, tile, 25, 17, 0);
  if (!v34)
  {
    sub_295877BE0(&v99);
    lumaBuffer = 0;
LABEL_26:
    deltaBuffer = 0;
    goto LABEL_29;
  }

  if (!lumaBuffer)
  {
    sub_295877B34(&v99);
    goto LABEL_26;
  }

  lumaBuffer = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(self->_metalContext, v33, lumaBuffer, 25, 23, 0);
  if (!lumaBuffer)
  {
    sub_295877A88(&v99);
    goto LABEL_26;
  }

  if (!deltaBuffer)
  {
    sub_2958779DC(&v99);
    goto LABEL_29;
  }

  deltaBuffer = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(self->_metalContext, v35, deltaBuffer, 25, 23, 0);
  if (!deltaBuffer)
  {
    sub_295877930(&v99);
    goto LABEL_29;
  }

  v93 = v26;
  v38.i32[0] = v111;
  v40 = vmovl_u16(v38).u64[0];
  v39.i32[0] = startCopy;
  v41 = vdup_n_s32(0xFFFEu);
  v42 = vadd_s32(*&vmovl_u16(v39), v41);
  v103[1] = v42.i16[2];
  v103[0] = v42.i16[0];
  v43 = vadd_s32(v94, v41);
  v102[1] = v43.i16[2];
  v102[0] = v43.i16[0];
  v44 = vand_s8(v40, 0xFFFF0000FFFFLL);
  v45 = vadd_s32(v40, 0x400000004);
  v40.i32[0] = v111;
  v46 = vadd_s32(v40, 0x200000002);
  v43.i32[0] = 131074;
  v43.i16[2] = v46.i16[0];
  v43.i16[3] = v46.i16[2];
  v101 = v43;
  objc_msgSend_setComputePipelineState_(v24, v36, self->_rgbTileToLumaTileAndChromaFullPipelineState, v37);
  objc_msgSend_setTexture_atIndex_(v24, v47, v34, 0);
  objc_msgSend_setTexture_atIndex_(v24, v48, v30, 1);
  objc_msgSend_setTexture_atIndex_(v24, v49, self->_lscGainsTex, 2);
  objc_msgSend_setTexture_atIndex_(v24, v50, lumaBuffer, 3);
  objc_msgSend_setTexture_atIndex_(v24, v51, deltaBuffer, 4);
  objc_msgSend_setTexture_atIndex_(v24, v52, v29, 5);
  objc_msgSend_setBytes_length_atIndex_(v24, v53, v103, 4, 0);
  objc_msgSend_setBytes_length_atIndex_(v24, v54, v102, 4, 1);
  objc_msgSend_setBytes_length_atIndex_(v24, v55, &v101, 8, 2);
  objc_msgSend_setBytes_length_atIndex_(v24, v56, self->_anon_40, 288, 3);
  v60 = objc_msgSend_threadExecutionWidth(self->_rgbTileToLumaTileAndChromaFullPipelineState, v57, v58, v59);
  v64 = objc_msgSend_maxTotalThreadsPerThreadgroup(self->_rgbTileToLumaTileAndChromaFullPipelineState, v61, v62, v63);
  v65.i64[0] = v45.u32[0];
  v65.i64[1] = v45.u32[1];
  v66.i64[0] = 0xFFFFLL;
  v66.i64[1] = 0xFFFFLL;
  v99 = vandq_s8(v65, v66);
  v100 = 1;
  v96 = v60;
  v97 = v64 / v60;
  v98 = 1;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v24, v67, &v99, &v96);
  v68 = vshr_n_u32(v44, 1uLL);
  objc_msgSend_setComputePipelineState_(v24, v69, self->_lumaAddbackAndWriteToFullPipelineState, v70);
  objc_msgSend_setTexture_atIndex_(v24, v71, lumaBuffer, 0);
  objc_msgSend_setTexture_atIndex_(v24, v72, deltaBuffer, 1);
  objc_msgSend_setTexture_atIndex_(v24, v73, v95, 2);
  objc_msgSend_setBytes_length_atIndex_(v24, v74, v108, 4, 0);
  objc_msgSend_setBytes_length_atIndex_(v24, v75, &v109, 4, 1);
  objc_msgSend_setBytes_length_atIndex_(v24, v76, self->_anon_40, 288, 2);
  v80 = objc_msgSend_threadExecutionWidth(self->_lumaAddbackAndWriteToFullPipelineState, v77, v78, v79);
  v84 = objc_msgSend_maxTotalThreadsPerThreadgroup(self->_lumaAddbackAndWriteToFullPipelineState, v81, v82, v83);
  v65.i64[0] = v68.u32[0];
  v65.i64[1] = v68.u32[1];
  v99 = v65;
  v100 = 1;
  v96 = v80;
  v97 = v84 / v80;
  v98 = 1;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v24, v85, &v99, &v96);
  objc_msgSend_endEncoding(v24, v86, v87, v88);
  if (v20)
  {
    v89 = v112;
    if (v112)
    {
      v90 = v20;
      v91 = 0;
      *v89 = v20;
    }

    else
    {
      v91 = 0;
    }
  }

  else
  {
    sub_295877884(&v99);
    v91 = v99.i32[0];
  }

  v26 = v93;
LABEL_15:

  return v91;
}

- (int)writeRgbTile:(__CVBuffer *)tile toYuvBuffer:(__CVBuffer *)buffer intermediateLumaBuffer:(__CVBuffer *)lumaBuffer intermediateDeltaBuffer:(__CVBuffer *)deltaBuffer origRawInputBuffer:(__CVBuffer *)inputBuffer srcStart:(id *)start dstStart:size:cmdBuffer:
{
  v8 = objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x29EDB8DD0], a2, *MEMORY[0x29EDB8CC8], @"Not supported", 0, deltaBuffer, inputBuffer, start);
  objc_exception_throw(v8);
}

- (int)updateParametersFromMetadata:(id)metadata lscSampleBuffer:(opaqueCMSampleBuffer *)buffer
{
  metadataCopy = metadata;
  v8 = metadataCopy;
  if (!metadataCopy)
  {
    sub_295877FA0(&v161);
    v111 = 0;
    v69 = 0;
    v148 = 0;
LABEL_59:
    v155 = v161.i32[0];
    goto LABEL_55;
  }

  v9 = objc_msgSend_objectForKeyedSubscript_(metadataCopy, v6, *MEMORY[0x29EDC0388], v7);
  v13 = v9;
  if (v9)
  {
    v14 = objc_msgSend_shortValue(v9, v10, v11, v12);
  }

  else
  {
    v14 = 4096.0;
  }

  v15 = objc_msgSend_objectForKeyedSubscript_(v8, v10, *MEMORY[0x29EDC0380], v12);

  if (v15)
  {
    v19 = objc_msgSend_shortValue(v15, v16, v17, v18);
  }

  else
  {
    v19 = 4096.0;
  }

  v20 = objc_msgSend_objectForKeyedSubscript_(v8, v16, *MEMORY[0x29EDC0378], v18);

  if (v20)
  {
    v24 = objc_msgSend_shortValue(v20, v21, v22, v23);
  }

  else
  {
    v24 = 4096.0;
  }

  v25 = objc_msgSend_objectForKeyedSubscript_(v8, v21, *MEMORY[0x29EDC0548], v23);

  if (v25)
  {
    *v29.i32 = vcvts_n_f32_s32(objc_msgSend_shortValue(v25, v26, v27, v28), 0xCuLL);
  }

  else
  {
    v29.i32[0] = 1.0;
  }

  v157 = v29;
  v30 = objc_msgSend_objectForKeyedSubscript_(v8, v26, *MEMORY[0x29EDC03F8], v28);

  v34 = 0.0;
  v35 = 0.0;
  if (v30)
  {
    v35 = objc_msgSend_intValue(v30, v31, v32, v33);
  }

  v36 = *MEMORY[0x29EDC0368];
  v37 = objc_msgSend_objectForKeyedSubscript_(v8, v31, *MEMORY[0x29EDC0368], v33);

  if (v37)
  {
    v34 = vcvts_n_f32_s32(objc_msgSend_intValue(v37, v38, v39, v40), 8uLL);
  }

  v41 = objc_msgSend_objectForKeyedSubscript_(v8, v38, *MEMORY[0x29EDC0770], v40);

  v45 = 0.0;
  v46 = 0.0;
  if (v41)
  {
    v46 = vcvts_n_f32_s32(objc_msgSend_intValue(v41, v42, v43, v44), 8uLL);
  }

  v47 = objc_msgSend_objectForKeyedSubscript_(v8, v42, *MEMORY[0x29EDC0758], v44);

  if (v47)
  {
    v45 = vcvts_n_f32_s32(objc_msgSend_intValue(v47, v48, v49, v50), 8uLL);
  }

  v51 = objc_msgSend_objectForKeyedSubscript_(v8, v48, *MEMORY[0x29EDC06A0], v50);

  if (v51)
  {
    v55 = objc_msgSend_BOOLValue(v51, v52, v53, v54);
  }

  else
  {
    v55 = 0;
  }

  v56 = objc_msgSend_objectForKeyedSubscript_(v8, v52, *MEMORY[0x29EDC0698], v54);

  if (v56)
  {
    goto LABEL_28;
  }

  v60 = objc_msgSend_objectForKeyedSubscript_(v8, v57, *MEMORY[0x29EDC04C8], v59);
  if (v60)
  {
    v56 = v60;
LABEL_28:
    objc_msgSend_floatValue(v56, v57, v58, v59);
    v62 = v61;

    goto LABEL_29;
  }

  v62 = 1.0;
LABEL_29:
  v63 = (v34 * v46) * v45;
  if (v55)
  {
    v63 = v63 * exp2f(-v62);
  }

  __asm { FMOV            V2.4S, #1.0 }

  _Q2.f32[0] = v14 / v19;
  _Q2.f32[2] = v24 / v19;
  *self->_anon_40 = vdivq_f32(_Q2, vdupq_lane_s32(v157, 0));
  v69 = objc_msgSend_objectForKeyedSubscript_(v8, v57, *MEMORY[0x29EDC0630], v59);
  self->_anon_40[272] = objc_msgSend_isEqualToString_(v69, v70, *MEMORY[0x29EDBFF50], v71);
  v72 = *MEMORY[0x29EDC0678];
  v73 = v8;
  v76 = objc_msgSend_objectForKeyedSubscript_(v73, v74, v72, v75);
  objc_msgSend_floatValue(v76, v77, v78, v79);
  v81 = v80 * 0.000015259;

  v84 = objc_msgSend_objectForKeyedSubscript_(v73, v82, *MEMORY[0x29EDC0680], v83);
  objc_msgSend_floatValue(v84, v85, v86, v87);
  v89 = v88 * 0.000015259;

  v92 = objc_msgSend_objectForKeyedSubscript_(v73, v90, *MEMORY[0x29EDC0478], v91);
  objc_msgSend_floatValue(v92, v93, v94, v95);
  v97 = v96 * 0.000015259;

  v100 = objc_msgSend_objectForKeyedSubscript_(v73, v98, v36, v99);

  v104 = vcvts_n_f32_s32(objc_msgSend_intValue(v100, v101, v102, v103), 8uLL);
  v105 = sqrtf(((v81 * v81) - (v89 * v89)) / 0.98438);
  v106 = sqrtf((v81 * v81) - (v105 * v105));
  *&self->_anon_40[264] = 0x3D80000041800000;
  *&self->_anon_40[260] = v97 * v104;
  v107 = sqrtf((v97 * v104) * ((v97 * v104) * (((v105 / v104) * (v105 / v104)) + (v106 * v106)))) / (v97 * v104);
  v110 = objc_msgSend_objectForKeyedSubscript_(self->_tuningParams, v108, v69, v109);
  v111 = v110;
  if (v110)
  {
    *&self->_anon_40[244] = v107 * sub_29584472C(*(v110 + 8), v63);
    *&self->_anon_40[260] = sub_29584472C(v111[2], v63) * *&self->_anon_40[260];
    *&self->_anon_40[248] = sub_29584472C(v111[3], v63);
    *&self->_anon_40[252] = sub_29584472C(v111[4], v63);
    v112 = sub_29584472C(v111[5], v63);
  }

  else
  {
    *&self->_anon_40[244] = v107;
    *&self->_anon_40[248] = 0;
    v112 = 100000.0;
  }

  v113 = 0;
  *&self->_anon_40[256] = v112;
  *&self->_anon_40[160] = xmmword_2958D59C0;
  *&self->_anon_40[176] = xmmword_2958D59D0;
  *&self->_anon_40[192] = 0x3F80000000000000;
  v158 = xmmword_2958D59E0;
  v159 = xmmword_2958D59F0;
  v161 = 0u;
  v162 = 0u;
  v163 = 0u;
  v160 = xmmword_2958D5A00;
  do
  {
    *(&v161 + v113) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_2958D5A10, COERCE_FLOAT(*(&v158 + v113))), xmmword_2958D5A20, *(&v158 + v113), 1), xmmword_2958D5A30, *(&v158 + v113), 2);
    v113 += 16;
  }

  while (v113 != 48);
  v164.columns[0] = v161;
  v164.columns[1] = v162;
  v164.columns[2] = v163;
  *&self->_anon_40[64] = v161;
  *&self->_anon_40[80] = v164.columns[1];
  *&self->_anon_40[96] = v164.columns[2];
  v164.columns[3] = xmmword_2958D5A40;
  v165 = __invert_f4(v164);
  *&self->_anon_40[16] = v165.columns[0];
  *&self->_anon_40[32] = v165.columns[1];
  *&self->_anon_40[48] = v165.columns[2];
  *&self->_anon_40[200] = 1.0 / *&self->_anon_40[204];
  v114 = MEMORY[0x29EDCA928];
  v165.columns[1] = *(MEMORY[0x29EDCA928] + 16);
  *&self->_anon_40[112] = *MEMORY[0x29EDCA928];
  *&self->_anon_40[128] = v165.columns[1];
  *&self->_anon_40[144] = *(v114 + 32);
  *&self->_anon_40[204] = 1065353216;
  *&self->_anon_40[208] = 0x10000;
  v117 = objc_msgSend_objectForKeyedSubscript_(v73, v115, *MEMORY[0x29EDC0740], v116);
  v121 = v117;
  if (v117)
  {
    v122 = objc_msgSend_intValue(v117, v118, v119, v120);
    switch(v122)
    {
      case 3:
        *&self->_anon_40[160] = xmmword_2958D5A50;
        *&self->_anon_40[176] = xmmword_2958D5A60;
        *&self->_anon_40[192] = 0x4019999A3D6147AELL;
        *&self->_anon_40[64] = xmmword_2958D5A70;
        *&self->_anon_40[80] = xmmword_2958D5A80;
        *&self->_anon_40[96] = xmmword_2958D5A90;
        *&self->_anon_40[204] = 1065204301;
        v168 = __invert_f4(*zmmword_2958D5AC0);
        *&self->_anon_40[16] = v168.columns[0];
        *&self->_anon_40[32] = v168.columns[1];
        *&self->_anon_40[48] = v168.columns[2];
        self->_anon_40[211] = 1;
        break;
      case 2:
        v125 = 0;
        *&self->_anon_40[160] = xmmword_2958D5AA0;
        *&self->_anon_40[176] = xmmword_2958D5AB0;
        *&self->_anon_40[192] = 0x400E38E43DCAC083;
        v126.i32[1] = 0;
        v126.i32[2] = 0;
        v126.f32[0] = 1.0 / (1.0 - (v35 / 65535.0));
        v158 = xmmword_2958D59E0;
        v159 = xmmword_2958D59F0;
        v160 = xmmword_2958D5A00;
        v161 = 0u;
        v162 = 0u;
        v163 = 0u;
        do
        {
          v126.f32[3] = -((v35 / 65535.0) * v126.f32[0]);
          *(&v161 + v125) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v126, COERCE_FLOAT(*(&v158 + v125))), xmmword_2958D5A20, *(&v158 + v125), 1), xmmword_2958D5A30, *(&v158 + v125), 2);
          v125 += 16;
        }

        while (v125 != 48);
        goto LABEL_45;
      case 0:
        v123 = 0;
        *&self->_anon_40[160] = xmmword_2958D59C0;
        *&self->_anon_40[176] = xmmword_2958D59D0;
        *&self->_anon_40[192] = 0x3F80000000000000;
        v124.i32[1] = 0;
        v124.i32[2] = 0;
        v124.f32[0] = 1.0 / (1.0 - (v35 / 65535.0));
        v158 = xmmword_2958D59E0;
        v159 = xmmword_2958D59F0;
        v160 = xmmword_2958D5A00;
        v161 = 0u;
        v162 = 0u;
        v163 = 0u;
        do
        {
          v124.f32[3] = -((v35 / 65535.0) * v124.f32[0]);
          *(&v161 + v123) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v124, COERCE_FLOAT(*(&v158 + v123))), xmmword_2958D5A20, *(&v158 + v123), 1), xmmword_2958D5A30, *(&v158 + v123), 2);
          v123 += 16;
        }

        while (v123 != 48);
LABEL_45:
        v166.columns[0] = v161;
        v166.columns[1] = v162;
        v166.columns[2] = v163;
        *&self->_anon_40[64] = v161;
        *&self->_anon_40[80] = v166.columns[1];
        *&self->_anon_40[96] = v166.columns[2];
        v166.columns[3] = xmmword_2958D5A40;
        v167 = __invert_f4(v166);
        *&self->_anon_40[16] = v167.columns[0];
        *&self->_anon_40[32] = v167.columns[1];
        *&self->_anon_40[48] = v167.columns[2];
        break;
    }
  }

  __asm { FMOV            V8.2S, #1.0 }

  *&self->_anon_40[200] = _D8;
  self->_anon_40[210] = 0;
  v128 = *MEMORY[0x29EDC06F0];
  CGRectIfPresent = FigCFDictionaryGetCGRectIfPresent();
  v132 = objc_msgSend_objectForKeyedSubscript_(v73, v130, *MEMORY[0x29EDC0670], v131);
  v136 = objc_msgSend_intValue(v132, v133, v134, v135);

  v139 = objc_msgSend_objectForKeyedSubscript_(v73, v137, *MEMORY[0x29EDC0668], v138);
  v143 = objc_msgSend_intValue(v139, v140, v141, v142);

  v146 = 0;
  if (CGRectIfPresent && v136 && v143)
  {
    __asm { FMOV            V1.2S, #1.0 }

    _D8 = vdiv_f32(_D1, vcvt_f32_u32(__PAIR64__(v143, v136)));
    v146 = vcvt_f32_f64(vmulq_f64(0, vcvtq_f64_f32(_D8)));
  }

  *&self->_anon_40[224] = _D8;
  *&self->_anon_40[232] = v146;
  *&self->_anon_40[240] = 1065353216;
  v148 = objc_msgSend_objectForKeyedSubscript_(v73, v144, *MEMORY[0x29EDC05A0], v145, 0x3F8000003F800000, 0x3F80000000000000, 1065353216, 1065353216);

  if (v148)
  {
    objc_msgSend_floatValue(v148, v149, v150, v151);
    *&self->_anon_40[240] = v152;
  }

  v153 = objc_msgSend_getTextureForPortType_(self->_lscGainsPlist, v149, v69, v151);
  lscGainsTex = self->_lscGainsTex;
  self->_lscGainsTex = v153;

  if (!self->_lscGainsTex)
  {
    sub_295877F3C(&v161);
    goto LABEL_59;
  }

  v155 = 0;
LABEL_55:

  return v155;
}

- (void)_bindYuvBuffer:(__CVBuffer *)buffer toLumaTexture:(id *)texture chromaTexture:(id *)chromaTexture withUsage:(unint64_t)usage
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(buffer);
  v13 = 0;
  if (PixelFormatType <= 792229423)
  {
    if (PixelFormatType <= 758670895)
    {
      if (PixelFormatType != 641230384 && PixelFormatType != 641234480)
      {
        if (PixelFormatType == 645424688)
        {
          v13 = 588;
        }

        else
        {
          v13 = 0;
        }

        if (PixelFormatType == 645424688)
        {
          v16 = 589;
        }

        else
        {
          v16 = 0;
        }

        goto LABEL_32;
      }

      goto LABEL_26;
    }

    if (PixelFormatType > 762865199)
    {
      if (PixelFormatType == 762865200)
      {
LABEL_30:
        v16 = 589;
        objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(self->_metalContext, v12, buffer, 588, usage, 0);
        goto LABEL_33;
      }

      v15 = 792225328;
    }

    else
    {
      if (PixelFormatType == 758670896)
      {
        goto LABEL_26;
      }

      v15 = 758674992;
    }

    goto LABEL_25;
  }

  if (PixelFormatType <= 2019963439)
  {
    if (PixelFormatType <= 875704421)
    {
      if (PixelFormatType != 792229424)
      {
        v14 = 796419632;
        goto LABEL_29;
      }

      goto LABEL_26;
    }

    if (PixelFormatType == 875704422)
    {
      goto LABEL_26;
    }

    v15 = 875704438;
LABEL_25:
    v16 = 0;
    if (PixelFormatType != v15)
    {
      goto LABEL_32;
    }

    goto LABEL_26;
  }

  if (PixelFormatType <= 2084075055)
  {
    if (PixelFormatType == 2019963440)
    {
      v16 = 578;
      v13 = 576;
      goto LABEL_32;
    }

    v15 = 2084070960;
    goto LABEL_25;
  }

  if (PixelFormatType != 2084075056)
  {
    v14 = 2088265264;
LABEL_29:
    v16 = 0;
    if (PixelFormatType == v14)
    {
      goto LABEL_30;
    }

LABEL_32:
    objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(self->_metalContext, v12, buffer, v13, usage, 0);
    goto LABEL_33;
  }

LABEL_26:
  v16 = 30;
  objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(self->_metalContext, v12, buffer, 10, usage, 0);
  *texture = LABEL_33:;
  *chromaTexture = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(self->_metalContext, v17, buffer, v16, usage, 1);
}

@end