@interface BilateralSolverGPU
- (BilateralSolverGPU)initWithWidth:(unsigned int)a3 height:(unsigned int)a4 maxVertices:(unint64_t)a5 metalContext:(id)a6;
- (int)_doBistochastizeWithCommandBuffer:(id)a3 t_tex:(id)a4 c_tex:(id)a5 nIterations:(int)a6;
- (int)_doPCGWithCommandBuffer:(id)a3 nIterations:(int)a4;
- (int)_doSliceTrilinearWithCommandBuffer:(id)a3 ref_tex:(id)a4 o_tex:(id)a5;
- (int)_doSliceWithCommandBuffer:(id)a3 o_tex:(id)a4;
- (void)_prepareResources:(id)a3;
- (void)_setupBuffer;
- (void)_setupPipelines;
@end

@implementation BilateralSolverGPU

- (BilateralSolverGPU)initWithWidth:(unsigned int)a3 height:(unsigned int)a4 maxVertices:(unint64_t)a5 metalContext:(id)a6
{
  v11 = a6;
  if (!v11)
  {
    sub_29573DB24();
LABEL_11:
    v24 = 0;
    goto LABEL_7;
  }

  if (!a3)
  {
    sub_29573DAAC();
    goto LABEL_11;
  }

  if (!a4)
  {
    sub_29573DA34();
    goto LABEL_11;
  }

  v26.receiver = self;
  v26.super_class = BilateralSolverGPU;
  v12 = [(BilateralSolverGPU *)&v26 init];
  v13 = v12;
  if (v12)
  {
    v12->_useTrilinearInterpolation = 1;
    v12->_width = a3;
    v12->_height = a4;
    v12->_maxVertices = a5;
    objc_storeStrong(&v12->_metalContext, a6);
    objc_msgSend__setupPipelines(v13, v14, v15, v16, v17, v18);
    objc_msgSend__setupBuffer(v13, v19, v20, v21, v22, v23);
  }

  self = v13;
  v24 = self;
LABEL_7:

  return v24;
}

- (void)_setupPipelines
{
  v3 = 0;
  computePipelines = self->_computePipelines;
  do
  {
    v5 = objc_alloc(MEMORY[0x29EDBA0F8]);
    v10 = objc_msgSend_initWithUTF8String_(v5, v6, off_29EDD75E8[v3], v7, v8, v9);
    v14 = objc_msgSend_computePipelineStateFor_constants_(self->_metalContext, v11, v10, 0, v12, v13);
    v15 = computePipelines[v3];
    computePipelines[v3] = v14;

    ++v3;
  }

  while (v3 != 9);
}

- (void)_setupBuffer
{
  v114 = objc_msgSend_texture2DDescriptorWithPixelFormat_width_height_mipmapped_(MEMORY[0x29EDBB670], a2, 53, self->_width, self->_height, 0);
  v3 = 1;
  objc_msgSend_setUsage_(v114, v4, 1, v5, v6, v7);
  v13 = objc_msgSend_device(self->_metalContext, v8, v9, v10, v11, v12);
  v18 = objc_msgSend_newTextureWithDescriptor_(v13, v14, v114, v15, v16, v17);
  gridHashMatrix = self->_gridHashMatrix;
  self->_gridHashMatrix = v18;

  v25 = objc_msgSend_device(self->_metalContext, v20, v21, v22, v23, v24);
  v29 = objc_msgSend_newBufferWithLength_options_(v25, v26, 4 * self->_maxVertices, 0, v27, v28);
  A_buf = self->_A_buf;
  self->_A_buf = v29;

  v36 = objc_msgSend_device(self->_metalContext, v31, v32, v33, v34, v35);
  v40 = objc_msgSend_newBufferWithLength_options_(v36, v37, 4 * self->_maxVertices, 0, v38, v39);
  b_buf = self->_b_buf;
  self->_b_buf = v40;

  v47 = objc_msgSend_device(self->_metalContext, v42, v43, v44, v45, v46);
  v51 = objc_msgSend_newBufferWithLength_options_(v47, v48, 4 * self->_maxVertices, 0, v49, v50);
  s_buf = self->_s_buf;
  self->_s_buf = v51;

  v58 = objc_msgSend_device(self->_metalContext, v53, v54, v55, v56, v57);
  v62 = objc_msgSend_newBufferWithLength_options_(v58, v59, 4 * self->_maxVertices, 0, v60, v61);
  q_buf = self->_q_buf;
  self->_q_buf = v62;

  v69 = 0;
  Dn_buf = self->_Dn_buf;
  x_buf = self->_x_buf;
  r_buf = self->_r_buf;
  d_buf = self->_d_buf;
  do
  {
    v74 = v3;
    v75 = objc_msgSend_device(self->_metalContext, v64, v65, v66, v67, v68);
    v79 = objc_msgSend_newBufferWithLength_options_(v75, v76, 4 * self->_maxVertices, 0, v77, v78);
    v80 = Dn_buf[v69];
    Dn_buf[v69] = v79;

    v86 = objc_msgSend_device(self->_metalContext, v81, v82, v83, v84, v85);
    v90 = objc_msgSend_newBufferWithLength_options_(v86, v87, 4 * self->_maxVertices, 0, v88, v89);
    v91 = x_buf[v69];
    x_buf[v69] = v90;

    v97 = objc_msgSend_device(self->_metalContext, v92, v93, v94, v95, v96);
    v101 = objc_msgSend_newBufferWithLength_options_(v97, v98, 4 * self->_maxVertices, 0, v99, v100);
    v102 = r_buf[v69];
    r_buf[v69] = v101;

    v108 = objc_msgSend_device(self->_metalContext, v103, v104, v105, v106, v107);
    v112 = objc_msgSend_newBufferWithLength_options_(v108, v109, 4 * self->_maxVertices, 0, v110, v111);
    v113 = d_buf[v69];
    d_buf[v69] = v112;

    v3 = 0;
    v69 = 1;
  }

  while ((v74 & 1) != 0);
}

- (void)_prepareResources:(id)a3
{
  v4 = a3;
  v10 = objc_msgSend_hashTableSize(v4, v5, v6, v7, v8, v9);
  width = self->_width;
  height = self->_height;
  self->_threadGroupInfo.dispatchThreadgroups.width = (v10 + 127) >> 7;
  *&self->_threadGroupInfo.dispatchThreadgroups.height = vdupq_n_s64(1uLL);
  *&self->_threadGroupInfo.threadsPerThreadgroup.width = xmmword_2957431C0;
  self->_threadGroupInfo.threadsPerThreadgroup.depth = 1;
  v17 = objc_msgSend_hash_table(v4, v12, v13, v14, v15, v16);
  v18 = *(v17 + 24 * (v10 - 1) + 20);
  v24 = objc_msgSend_blur_table(v4, v19, v20, v21, v22, v23);
  v30 = objc_msgSend_coord_indices(v4, v25, v26, v27, v28, v29);
  v131 = objc_msgSend_coord_table(v4, v31, v32, v33, v34, v35);
  v132 = objc_msgSend_hash_matrix(v4, v36, v37, v38, v39, v40);
  v46 = objc_msgSend_interp_indices(v4, v41, v42, v43, v44, v45);
  v134 = objc_msgSend_interp_table(v4, v47, v48, v49, v50, v51);
  v135 = objc_msgSend_interp_pad(v4, v52, v53, v54, v55, v56);

  v57 = *(v46 + 4 * v10);
  v63 = objc_msgSend_device(self->_metalContext, v58, v59, v60, v61, v62);
  v66 = objc_msgSend_newBufferWithBytes_length_options_(v63, v64, v17, 24 * v10, 0, v65);
  gridHashBuffer = self->_gridHashBuffer;
  self->_gridHashBuffer = v66;

  v73 = objc_msgSend_device(self->_metalContext, v68, v69, v70, v71, v72);
  v76 = objc_msgSend_newBufferWithBytes_length_options_(v73, v74, v24, 4 * v18, 0, v75);
  gridBlurBuffer = self->_gridBlurBuffer;
  self->_gridBlurBuffer = v76;

  v83 = objc_msgSend_device(self->_metalContext, v78, v79, v80, v81, v82);
  v84 = 4 * (v10 + 1);
  v87 = objc_msgSend_newBufferWithBytes_length_options_(v83, v85, v30, v84, 0, v86);
  gridCoordIndicesBuffer = self->_gridCoordIndicesBuffer;
  self->_gridCoordIndicesBuffer = v87;

  v94 = objc_msgSend_device(self->_metalContext, v89, v90, v91, v92, v93);
  v97 = objc_msgSend_newBufferWithBytes_length_options_(v94, v95, v131, 4 * (height * width), 0, v96);
  gridCoordTableBuffer = self->_gridCoordTableBuffer;
  self->_gridCoordTableBuffer = v97;

  memset(v136, 0, 24);
  gridHashMatrix = self->_gridHashMatrix;
  v136[3] = width;
  v136[4] = height;
  v136[5] = 1;
  objc_msgSend_replaceRegion_mipmapLevel_withBytes_bytesPerRow_(gridHashMatrix, v100, v136, 0, v132, 4 * width);
  v106 = objc_msgSend_device(self->_metalContext, v101, v102, v103, v104, v105);
  v109 = objc_msgSend_newBufferWithBytes_length_options_(v106, v107, v46, v84, 0, v108);
  gridInterpIndicesBuffer = self->_gridInterpIndicesBuffer;
  self->_gridInterpIndicesBuffer = v109;

  v116 = objc_msgSend_device(self->_metalContext, v111, v112, v113, v114, v115);
  v119 = objc_msgSend_newBufferWithBytes_length_options_(v116, v117, v134, 4 * v57, 0, v118);
  gridInterpTableBuffer = self->_gridInterpTableBuffer;
  self->_gridInterpTableBuffer = v119;

  v126 = objc_msgSend_device(self->_metalContext, v121, v122, v123, v124, v125);
  v129 = objc_msgSend_newBufferWithBytes_length_options_(v126, v127, v135, v57, 0, v128);
  gridInterpPadBuffer = self->_gridInterpPadBuffer;
  self->_gridInterpPadBuffer = v129;
}

- (int)_doBistochastizeWithCommandBuffer:(id)a3 t_tex:(id)a4 c_tex:(id)a5 nIterations:(int)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  *&self->_idxDnBufIn = 0;
  v18 = objc_msgSend_computeCommandEncoder(v10, v13, v14, v15, v16, v17);
  objc_msgSend_setComputePipelineState_(v18, v19, self->_computePipelines[0], v20, v21, v22);
  objc_msgSend_setBuffer_offset_atIndex_(v18, v23, self->_gridHashBuffer, 0, 0, v24);
  objc_msgSend_setBuffer_offset_atIndex_(v18, v25, self->_gridBlurBuffer, 0, 1, v26);
  Dn_buf = self->_Dn_buf;
  objc_msgSend_setBuffer_offset_atIndex_(v18, v28, self->_Dn_buf[self->_idxDnBufIn], 0, 2, v29);
  objc_msgSend_setBytes_length_atIndex_(v18, v30, &self->_params, 20, 3, v31);
  v108 = *&self->_threadGroupInfo.dispatchThreadgroups.width;
  depth = self->_threadGroupInfo.dispatchThreadgroups.depth;
  threadsPerThreadgroup = self->_threadGroupInfo.threadsPerThreadgroup;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v18, v32, &v108, &threadsPerThreadgroup, v33, v34);
  objc_msgSend_endEncoding(v18, v35, v36, v37, v38, v39);

  if (a6 >= 2)
  {
    v45 = a6 - 1;
    do
    {
      v46 = objc_msgSend_computeCommandEncoder(v10, v40, v41, v42, v43, v44);
      objc_msgSend_setComputePipelineState_(v46, v47, self->_computePipelines[1], v48, v49, v50);
      objc_msgSend_setBuffer_offset_atIndex_(v46, v51, self->_gridHashBuffer, 0, 0, v52);
      objc_msgSend_setBuffer_offset_atIndex_(v46, v53, self->_gridBlurBuffer, 0, 1, v54);
      objc_msgSend_setBuffer_offset_atIndex_(v46, v55, Dn_buf[self->_idxDnBufIn], 0, 2, v56);
      objc_msgSend_setBuffer_offset_atIndex_(v46, v57, Dn_buf[self->_idxDnBufIn ^ 1], 0, 3, v58);
      objc_msgSend_setBytes_length_atIndex_(v46, v59, &self->_params, 20, 4, v60);
      v108 = *&self->_threadGroupInfo.dispatchThreadgroups.width;
      depth = self->_threadGroupInfo.dispatchThreadgroups.depth;
      threadsPerThreadgroup = self->_threadGroupInfo.threadsPerThreadgroup;
      objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v46, v61, &v108, &threadsPerThreadgroup, v62, v63);
      objc_msgSend_endEncoding(v46, v64, v65, v66, v67, v68);
      self->_idxDnBufIn ^= 1u;

      --v45;
    }

    while (v45);
  }

  v69 = objc_msgSend_computeCommandEncoder(v10, v40, v41, v42, v43, v44);
  objc_msgSend_setComputePipelineState_(v69, v70, self->_computePipelines[2], v71, v72, v73);
  objc_msgSend_setBuffer_offset_atIndex_(v69, v74, self->_gridHashBuffer, 0, 0, v75);
  objc_msgSend_setBuffer_offset_atIndex_(v69, v76, self->_gridBlurBuffer, 0, 1, v77);
  objc_msgSend_setBuffer_offset_atIndex_(v69, v78, self->_gridCoordIndicesBuffer, 0, 2, v79);
  objc_msgSend_setBuffer_offset_atIndex_(v69, v80, self->_gridCoordTableBuffer, 0, 3, v81);
  objc_msgSend_setTexture_atIndex_(v69, v82, v11, 0, v83, v84);
  objc_msgSend_setTexture_atIndex_(v69, v85, v12, 1, v86, v87);
  objc_msgSend_setBuffer_offset_atIndex_(v69, v88, Dn_buf[self->_idxDnBufIn], 0, 4, v89);
  objc_msgSend_setBuffer_offset_atIndex_(v69, v90, self->_A_buf, 0, 5, v91);
  objc_msgSend_setBuffer_offset_atIndex_(v69, v92, self->_b_buf, 0, 6, v93);
  objc_msgSend_setBuffer_offset_atIndex_(v69, v94, self->_x_buf[self->_idxSwapBufIn], 0, 7, v95);
  objc_msgSend_setBytes_length_atIndex_(v69, v96, &self->_params, 20, 8, v97);
  v108 = *&self->_threadGroupInfo.dispatchThreadgroups.width;
  depth = self->_threadGroupInfo.dispatchThreadgroups.depth;
  threadsPerThreadgroup = self->_threadGroupInfo.threadsPerThreadgroup;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v69, v98, &v108, &threadsPerThreadgroup, v99, v100);
  objc_msgSend_endEncoding(v69, v101, v102, v103, v104, v105);

  return 0;
}

- (int)_doPCGWithCommandBuffer:(id)a3 nIterations:(int)a4
{
  v6 = a3;
  v12 = objc_msgSend_device(self->_metalContext, v7, v8, v9, v10, v11);
  v16 = objc_msgSend_newBufferWithLength_options_(v12, v13, 4, 0, v14, v15);

  v22 = objc_msgSend_device(self->_metalContext, v17, v18, v19, v20, v21);
  v203 = objc_msgSend_newBufferWithLength_options_(v22, v23, 4, 0, v24, v25);

  v31 = objc_msgSend_device(self->_metalContext, v26, v27, v28, v29, v30);
  v35 = objc_msgSend_newBufferWithLength_options_(v31, v32, 1, 0, v33, v34);

  v41 = objc_msgSend_computeCommandEncoder(v6, v36, v37, v38, v39, v40);
  objc_msgSend_setComputePipelineState_(v41, v42, self->_computePipelines[3], v43, v44, v45);
  objc_msgSend_setBuffer_offset_atIndex_(v41, v46, self->_gridHashBuffer, 0, 0, v47);
  objc_msgSend_setBuffer_offset_atIndex_(v41, v48, self->_gridBlurBuffer, 0, 1, v49);
  objc_msgSend_setBuffer_offset_atIndex_(v41, v50, self->_Dn_buf[self->_idxDnBufIn], 0, 2, v51);
  objc_msgSend_setBuffer_offset_atIndex_(v41, v52, self->_A_buf, 0, 3, v53);
  objc_msgSend_setBuffer_offset_atIndex_(v41, v54, self->_b_buf, 0, 4, v55);
  objc_msgSend_setBuffer_offset_atIndex_(v41, v56, self->_x_buf[self->_idxSwapBufIn], 0, 5, v57);
  objc_msgSend_setBuffer_offset_atIndex_(v41, v58, self->_r_buf[self->_idxSwapBufIn], 0, 6, v59);
  d_buf = self->_d_buf;
  objc_msgSend_setBuffer_offset_atIndex_(v41, v61, self->_d_buf[self->_idxSwapBufIn], 0, 7, v62);
  objc_msgSend_setBuffer_offset_atIndex_(v41, v63, v16, 0, 8, v64);
  objc_msgSend_setBuffer_offset_atIndex_(v41, v65, v35, 0, 9, v66);
  objc_msgSend_setBytes_length_atIndex_(v41, v67, &self->_params, 20, 10, v68);
  v206 = *&self->_threadGroupInfo.dispatchThreadgroups.width;
  depth = self->_threadGroupInfo.dispatchThreadgroups.depth;
  threadsPerThreadgroup = self->_threadGroupInfo.threadsPerThreadgroup;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v41, v69, &v206, &threadsPerThreadgroup, v70, v71);
  objc_msgSend_endEncoding(v41, v72, v73, v74, v75, v76);

  if (a4 < 1)
  {
    v87 = v16;
  }

  else
  {
    Dn_buf = self->_Dn_buf;
    r_buf = self->_r_buf;
    x_buf = self->_x_buf;
    do
    {
      v204 = a4;
      v83 = objc_msgSend_device(self->_metalContext, v77, v78, v79, v80, v81, Dn_buf);
      v87 = objc_msgSend_newBufferWithLength_options_(v83, v84, 4, 0, v85, v86);

      v93 = objc_msgSend_computeCommandEncoder(v6, v88, v89, v90, v91, v92);
      objc_msgSend_setComputePipelineState_(v93, v94, self->_computePipelines[4], v95, v96, v97);
      objc_msgSend_setBuffer_offset_atIndex_(v93, v98, self->_gridHashBuffer, 0, 0, v99);
      objc_msgSend_setBuffer_offset_atIndex_(v93, v100, self->_gridBlurBuffer, 0, 1, v101);
      objc_msgSend_setBuffer_offset_atIndex_(v93, v102, Dn_buf[self->_idxDnBufIn], 0, 2, v103);
      objc_msgSend_setBuffer_offset_atIndex_(v93, v104, self->_A_buf, 0, 3, v105);
      objc_msgSend_setBuffer_offset_atIndex_(v93, v106, d_buf[self->_idxSwapBufIn], 0, 4, v107);
      objc_msgSend_setBuffer_offset_atIndex_(v93, v108, self->_q_buf, 0, 5, v109);
      objc_msgSend_setBuffer_offset_atIndex_(v93, v110, v203, 0, 6, v111);
      objc_msgSend_setBuffer_offset_atIndex_(v93, v112, v35, 0, 7, v113);
      objc_msgSend_setBytes_length_atIndex_(v93, v114, &self->_params, 20, 8, v115);
      v206 = *&self->_threadGroupInfo.dispatchThreadgroups.width;
      depth = self->_threadGroupInfo.dispatchThreadgroups.depth;
      threadsPerThreadgroup = self->_threadGroupInfo.threadsPerThreadgroup;
      objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v93, v116, &v206, &threadsPerThreadgroup, v117, v118);
      objc_msgSend_endEncoding(v93, v119, v120, v121, v122, v123);

      v129 = objc_msgSend_computeCommandEncoder(v6, v124, v125, v126, v127, v128);
      objc_msgSend_setComputePipelineState_(v129, v130, self->_computePipelines[5], v131, v132, v133);
      objc_msgSend_setBuffer_offset_atIndex_(v129, v134, self->_A_buf, 0, 0, v135);
      objc_msgSend_setBuffer_offset_atIndex_(v129, v136, x_buf[self->_idxSwapBufIn], 0, 1, v137);
      objc_msgSend_setBuffer_offset_atIndex_(v129, v138, r_buf[self->_idxSwapBufIn], 0, 2, v139);
      objc_msgSend_setBuffer_offset_atIndex_(v129, v140, d_buf[self->_idxSwapBufIn], 0, 3, v141);
      objc_msgSend_setBuffer_offset_atIndex_(v129, v142, self->_q_buf, 0, 4, v143);
      objc_msgSend_setBuffer_offset_atIndex_(v129, v144, x_buf[self->_idxSwapBufIn ^ 1], 0, 5, v145);
      objc_msgSend_setBuffer_offset_atIndex_(v129, v146, r_buf[self->_idxSwapBufIn ^ 1], 0, 6, v147);
      objc_msgSend_setBuffer_offset_atIndex_(v129, v148, self->_s_buf, 0, 7, v149);
      objc_msgSend_setBuffer_offset_atIndex_(v129, v150, v87, 0, 8, v151);
      objc_msgSend_setBuffer_offset_atIndex_(v129, v152, v16, 0, 9, v153);
      objc_msgSend_setBuffer_offset_atIndex_(v129, v154, v203, 0, 10, v155);
      objc_msgSend_setBuffer_offset_atIndex_(v129, v156, v35, 0, 11, v157);
      objc_msgSend_setBytes_length_atIndex_(v129, v158, &self->_params, 20, 12, v159);
      v206 = *&self->_threadGroupInfo.dispatchThreadgroups.width;
      depth = self->_threadGroupInfo.dispatchThreadgroups.depth;
      threadsPerThreadgroup = self->_threadGroupInfo.threadsPerThreadgroup;
      objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v129, v160, &v206, &threadsPerThreadgroup, v161, v162);
      objc_msgSend_endEncoding(v129, v163, v164, v165, v166, v167);

      v173 = objc_msgSend_computeCommandEncoder(v6, v168, v169, v170, v171, v172);
      objc_msgSend_setComputePipelineState_(v173, v174, self->_computePipelines[6], v175, v176, v177);
      objc_msgSend_setBuffer_offset_atIndex_(v173, v178, self->_s_buf, 0, 0, v179);
      objc_msgSend_setBuffer_offset_atIndex_(v173, v180, d_buf[self->_idxSwapBufIn], 0, 1, v181);
      objc_msgSend_setBuffer_offset_atIndex_(v173, v182, d_buf[self->_idxSwapBufIn ^ 1], 0, 2, v183);
      objc_msgSend_setBuffer_offset_atIndex_(v173, v184, v16, 0, 3, v185);
      objc_msgSend_setBuffer_offset_atIndex_(v173, v186, v87, 0, 4, v187);
      objc_msgSend_setBuffer_offset_atIndex_(v173, v188, v35, 0, 5, v189);
      objc_msgSend_setBytes_length_atIndex_(v173, v190, &self->_params, 20, 6, v191);
      v206 = *&self->_threadGroupInfo.dispatchThreadgroups.width;
      depth = self->_threadGroupInfo.dispatchThreadgroups.depth;
      threadsPerThreadgroup = self->_threadGroupInfo.threadsPerThreadgroup;
      objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v173, v192, &v206, &threadsPerThreadgroup, v193, v194);
      objc_msgSend_endEncoding(v173, v195, v196, v197, v198, v199);

      self->_idxSwapBufIn ^= 1u;
      v16 = v87;
      --a4;
    }

    while (v204 != 1);
  }

  return 0;
}

- (int)_doSliceWithCommandBuffer:(id)a3 o_tex:(id)a4
{
  width = self->_width;
  height = self->_height;
  v8 = self->_computePipelines[7];
  v9 = a4;
  v10 = a3;
  LODWORD(v8) = objc_msgSend_threadExecutionWidth(v8, v11, v12, v13, v14, v15);
  v21 = objc_msgSend_maxTotalThreadsPerThreadgroup(self->_computePipelines[7], v16, v17, v18, v19, v20) / v8;
  v27 = objc_msgSend_computeCommandEncoder(v10, v22, v23, v24, v25, v26);

  objc_msgSend_setComputePipelineState_(v27, v28, self->_computePipelines[7], v29, v30, v31);
  objc_msgSend_setTexture_atIndex_(v27, v32, self->_gridHashMatrix, 0, v33, v34);
  objc_msgSend_setBuffer_offset_atIndex_(v27, v35, self->_x_buf[self->_idxSwapBufIn], 0, 0, v36);
  objc_msgSend_setTexture_atIndex_(v27, v37, v9, 1, v38, v39);

  v50[0] = (width + v8 - 1) / v8;
  v50[1] = (height + v21 - 1) / v21;
  v50[2] = 1;
  v49[0] = v8;
  v49[1] = v21;
  v49[2] = 1;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v27, v40, v50, v49, v41, v42);
  objc_msgSend_endEncoding(v27, v43, v44, v45, v46, v47);

  return 0;
}

- (int)_doSliceTrilinearWithCommandBuffer:(id)a3 ref_tex:(id)a4 o_tex:(id)a5
{
  width = self->_width;
  height = self->_height;
  v10 = self->_computePipelines[8];
  v11 = a5;
  v12 = a4;
  v13 = a3;
  LODWORD(a3) = objc_msgSend_threadExecutionWidth(v10, v14, v15, v16, v17, v18);
  v24 = objc_msgSend_maxTotalThreadsPerThreadgroup(self->_computePipelines[8], v19, v20, v21, v22, v23) / a3;
  v30 = objc_msgSend_computeCommandEncoder(v13, v25, v26, v27, v28, v29);

  objc_msgSend_setComputePipelineState_(v30, v31, self->_computePipelines[8], v32, v33, v34);
  objc_msgSend_setTexture_atIndex_(v30, v35, self->_gridHashMatrix, 0, v36, v37);
  objc_msgSend_setBuffer_offset_atIndex_(v30, v38, self->_gridInterpIndicesBuffer, 0, 0, v39);
  objc_msgSend_setBuffer_offset_atIndex_(v30, v40, self->_gridInterpTableBuffer, 0, 1, v41);
  objc_msgSend_setBuffer_offset_atIndex_(v30, v42, self->_gridInterpPadBuffer, 0, 2, v43);
  objc_msgSend_setBuffer_offset_atIndex_(v30, v44, self->_x_buf[self->_idxSwapBufIn], 0, 3, v45);
  objc_msgSend_setTexture_atIndex_(v30, v46, v12, 1, v47, v48);

  objc_msgSend_setTexture_atIndex_(v30, v49, v11, 2, v50, v51);
  objc_msgSend_setBytes_length_atIndex_(v30, v52, &self->_params, 20, 4, v53);
  v64[0] = (a3 + (width >> 1) - 1) / a3;
  v64[1] = (v24 + (height >> 1) - 1) / v24;
  v64[2] = 1;
  v63[0] = a3;
  v63[1] = v24;
  v63[2] = 1;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v30, v54, v64, v63, v55, v56);
  objc_msgSend_endEncoding(v30, v57, v58, v59, v60, v61);

  return 0;
}

@end