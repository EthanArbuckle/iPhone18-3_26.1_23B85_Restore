uint64_t dispatch thunk of BNNS.PoolingLayer.applyBackward(batchSize:input:output:outputGradient:generatingInputGradient:generatingBiasGradient:)(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, __int128 *a6)
{
  v7 = *(a2 + 36);
  v8 = a2[19];
  v9 = *(a2 + 40);
  v10 = a3[17];
  v11 = *(a3 + 36);
  v12 = a3[19];
  v13 = *(a3 + 40);
  v14 = *(a4 + 136);
  v15 = *(a4 + 144);
  v16 = *(a4 + 152);
  v17 = *(a4 + 160);
  v18 = *(a5 + 136);
  v19 = *(a5 + 144);
  v20 = *(a5 + 152);
  v21 = *(a5 + 160);
  v22 = *(a6 + 176);
  v23 = *(*v6 + 200);
  v126 = a2[17];
  v127 = v7;
  v128 = v8;
  v129 = v9;
  v24 = *a2;
  v25 = *(a2 + 1);
  v26 = *(a2 + 3);
  v27 = *(a2 + 5);
  v28 = *(a2 + 7);
  v29 = *(a2 + 9);
  v30 = *(a2 + 13);
  v31 = *(a2 + 15);
  v32 = *(a2 + 164);
  v123 = *(a2 + 11);
  v124 = v30;
  v125 = v31;
  v130 = v32;
  v112 = v10;
  v113 = v11;
  v114 = v12;
  v115 = v13;
  v33 = *a3;
  v34 = *(a3 + 1);
  v35 = *(a3 + 3);
  v36 = *(a3 + 5);
  v37 = *(a3 + 7);
  v38 = *(a3 + 9);
  v39 = *(a3 + 11);
  v40 = *(a3 + 13);
  v41 = *(a3 + 15);
  v42 = *(a3 + 164);
  v118 = v25;
  v119 = v26;
  v120 = v27;
  v121 = v28;
  v122 = v29;
  v109 = v39;
  v110 = v40;
  v111 = v41;
  v116 = v42;
  v98 = v14;
  v99 = v15;
  v100 = v16;
  v101 = v17;
  *&v25 = *a4;
  v43 = *(a4 + 8);
  v44 = *(a4 + 24);
  v45 = *(a4 + 40);
  v46 = *(a4 + 56);
  v47 = *(a4 + 72);
  v48 = *(a4 + 88);
  v49 = *(a4 + 104);
  v50 = *(a4 + 120);
  v51 = *(a4 + 164);
  v104 = v34;
  v105 = v35;
  v106 = v36;
  v107 = v37;
  v108 = v38;
  v95 = v48;
  v96 = v49;
  v97 = v50;
  v102 = v51;
  v84 = v18;
  v85 = v19;
  v86 = v20;
  v87 = v21;
  *&v34 = *a5;
  v52 = *(a5 + 8);
  v53 = *(a5 + 24);
  v54 = *(a5 + 40);
  v55 = *(a5 + 56);
  v56 = *(a5 + 72);
  v57 = *(a5 + 88);
  v58 = *(a5 + 104);
  v59 = *(a5 + 120);
  v60 = *(a5 + 164);
  v90 = v43;
  v91 = v44;
  v92 = v45;
  v93 = v46;
  v94 = v47;
  v76 = v52;
  v77 = v53;
  v78 = v54;
  v79 = v55;
  v80 = v56;
  v81 = v57;
  v82 = v58;
  v83 = v59;
  v88 = v60;
  v61 = *a6;
  v62 = a6[1];
  v63 = a6[2];
  v64 = a6[3];
  v65 = a6[4];
  v66 = a6[5];
  v67 = a6[6];
  v68 = a6[7];
  v69 = a6[8];
  v70 = a6[9];
  v71 = a6[10];
  v74 = v22;
  v117 = v24;
  v103 = v33;
  v89 = v25;
  v75 = v34;
  v73[0] = v61;
  v73[1] = v62;
  v73[2] = v63;
  v73[3] = v64;
  v73[4] = v65;
  v73[5] = v66;
  v73[6] = v67;
  v73[7] = v68;
  v73[8] = v69;
  v73[9] = v70;
  v73[10] = v71;
  return v23(a1, &v117, &v103, &v89, &v75, v73);
}

uint64_t BNNS.ConvolutionLayer.__allocating_init(type:input:weights:output:bias:padding:activation:groupCount:stride:dilationStride:filterParameters:)(char *a1, _OWORD *a2, __int128 *a3, _OWORD *a4, __int128 *a5, __int128 *a6, uint64_t *a7, size_t a8, size_t a9, size_t a10, size_t a11, size_t a12, uint32_t a13, size_t a14, int (__cdecl *a15)(void **, size_t, size_t), void (__cdecl *a16)(void *))
{
  v17 = v16;
  v80 = *MEMORY[0x1E69E9840];
  if (*(a6 + 32) == 1)
  {
    v59 = a6[1];
    v61 = *a6;
    v62 = 0u;
  }

  else
  {
    v61 = 0u;
    v62 = *a6;
    v59 = 0u;
  }

  v60 = *a1;
  v22 = *a7;
  v23 = *(a7 + 8);
  v24 = a5[9];
  v78[8] = a5[8];
  v78[9] = v24;
  v78[10] = a5[10];
  v79 = *(a5 + 176);
  v25 = a5[5];
  v78[4] = a5[4];
  v78[5] = v25;
  v26 = a5[7];
  v78[6] = a5[6];
  v78[7] = v26;
  v27 = a5[1];
  v78[0] = *a5;
  v78[1] = v27;
  v28 = a5[3];
  v78[2] = a5[2];
  v78[3] = v28;
  if (_sSo21BNNSNDArrayDescriptoraSgWOg(v78) == 1)
  {
    v77 = 0u;
    v76 = 0u;
    v75 = 0u;
    v74 = 0u;
    v73 = 0u;
    v72 = 0u;
    v71 = 0u;
    v70 = 0u;
    v69 = 0u;
    v68 = 0u;
    v67 = 0u;
  }

  else
  {
    v29 = a5[9];
    v75 = a5[8];
    v76 = v29;
    v77 = a5[10];
    v30 = a5[5];
    v71 = a5[4];
    v72 = v30;
    v31 = a5[6];
    v74 = a5[7];
    v73 = v31;
    v32 = a5[1];
    v67 = *a5;
    v68 = v32;
    v33 = a5[2];
    v70 = a5[3];
    v69 = v33;
  }

  *&__dst.i_desc.flags = v22;
  LOBYTE(__dst.i_desc.size[0]) = v23;
  BNNS.ActivationFunction.bnnsActivation.getter(&__src[44]);
  v34 = a2[9];
  __src[8] = a2[8];
  __src[9] = v34;
  v35 = a2[10];
  v36 = a2[5];
  __src[4] = a2[4];
  __src[5] = v36;
  v37 = a2[7];
  __src[6] = a2[6];
  __src[7] = v37;
  v38 = a2[1];
  __src[0] = *a2;
  __src[1] = v38;
  v39 = a2[3];
  __src[2] = a2[2];
  __src[3] = v39;
  v40 = a3[8];
  v41 = a3[9];
  v42 = a3[6];
  __src[18] = a3[7];
  __src[19] = v40;
  v43 = a3[10];
  __src[20] = v41;
  __src[21] = v43;
  v44 = a3[4];
  v45 = a3[5];
  v46 = a3[2];
  __src[14] = a3[3];
  __src[15] = v44;
  __src[16] = v45;
  __src[17] = v42;
  v47 = *a3;
  v48 = a3[1];
  __src[10] = v35;
  __src[11] = v47;
  __src[12] = v48;
  __src[13] = v46;
  v49 = a4[9];
  __src[30] = a4[8];
  __src[31] = v49;
  v50 = a4[5];
  __src[26] = a4[4];
  __src[27] = v50;
  v51 = a4[7];
  __src[28] = a4[6];
  __src[29] = v51;
  v52 = a4[1];
  __src[22] = *a4;
  __src[23] = v52;
  v53 = a4[3];
  __src[24] = a4[2];
  __src[25] = v53;
  __src[40] = v74;
  __src[41] = v75;
  __src[42] = v76;
  __src[43] = v77;
  __src[36] = v70;
  __src[37] = v71;
  v54 = a4[10];
  __src[38] = v72;
  __src[39] = v73;
  __src[32] = v54;
  __src[33] = v67;
  __src[34] = v68;
  __src[35] = v69;
  memcpy(&__dst, __src, 0x2F0uLL);
  __dst.x_stride = a9;
  __dst.y_stride = a10;
  __dst.x_dilation_stride = a11;
  __dst.y_dilation_stride = a12;
  *&__dst.x_padding = v62;
  __dst.groups = a8;
  *__dst.pad = v61;
  *&__dst.pad[2] = v59;
  if (a15 != 1)
  {
    filter_params.flags = a13;
    filter_params.n_threads = a14;
    filter_params.alloc_memory = a15;
    filter_params.free_memory = a16;
    if (v60)
    {
      p_filter_params = &filter_params;
      goto LABEL_12;
    }

    v57 = &filter_params;
LABEL_15:
    v56 = MEMORY[0x1B8CB1A40](&__dst, v57);
    return (*(v17 + 88))(v56);
  }

  if ((v60 & 1) == 0)
  {
    v57 = 0;
    goto LABEL_15;
  }

  p_filter_params = 0;
LABEL_12:
  v56 = BNNSFilterCreateLayerTransposedConvolution(&__dst, p_filter_params);
  return (*(v17 + 88))(v56);
}

uint64_t BNNS.ConvolutionLayer.applyBackward(batchSize:input:output:outputGradient:generatingInputGradient:generatingWeightsGradient:generatingBiasGradient:)(size_t a1, uint64_t a2, uint64_t a3, __int128 *a4, _OWORD *a5, uint64_t a6, uint64_t a7)
{
  v70 = *MEMORY[0x1E69E9840];
  v11 = a4[6];
  *&out_delta.stride[5] = a4[7];
  v12 = a4[9];
  *&out_delta.stride[7] = a4[8];
  *&out_delta.data_type = v12;
  *&out_delta.table_data_type = a4[10];
  v13 = a4[4];
  v14 = a4[5];
  v15 = a4[2];
  *&out_delta.size[5] = a4[3];
  *&out_delta.size[7] = v13;
  *&out_delta.stride[1] = v14;
  *&out_delta.stride[3] = v11;
  v16 = *a4;
  *&out_delta.size[1] = a4[1];
  *&out_delta.size[3] = v15;
  v17 = a5[9];
  *&in_delta.stride[7] = a5[8];
  *&in_delta.data_type = v17;
  *&in_delta.table_data_type = a5[10];
  *&out_delta.flags = v16;
  v18 = a5[5];
  *&in_delta.size[7] = a5[4];
  *&in_delta.stride[1] = v18;
  v19 = a5[7];
  *&in_delta.stride[3] = a5[6];
  *&in_delta.stride[5] = v19;
  v20 = a5[1];
  *&in_delta.flags = *a5;
  *&in_delta.size[1] = v20;
  v21 = a5[3];
  *&in_delta.size[3] = a5[2];
  *&in_delta.size[5] = v21;
  v22 = *(a6 + 144);
  *&v68.stride[7] = *(a6 + 128);
  *&v68.data_type = v22;
  *&v68.table_data_type = *(a6 + 160);
  v23 = *(a6 + 80);
  *&v68.size[7] = *(a6 + 64);
  *&v68.stride[1] = v23;
  v24 = *(a6 + 112);
  *&v68.stride[3] = *(a6 + 96);
  *&v68.stride[5] = v24;
  v25 = *(a6 + 16);
  *&v68.flags = *a6;
  *&v68.size[1] = v25;
  v26 = *(a6 + 48);
  *&v68.size[3] = *(a6 + 32);
  v69 = *(a6 + 176);
  *&v68.size[5] = v26;
  if (_sSo21BNNSNDArrayDescriptoraSgWOg(&v68) == 1)
  {
    v27 = *(a7 + 144);
    *&v66.stride[7] = *(a7 + 128);
    *&v66.data_type = v27;
    *&v66.table_data_type = *(a7 + 160);
    v28 = *(a7 + 80);
    *&v66.size[7] = *(a7 + 64);
    *&v66.stride[1] = v28;
    v29 = *(a7 + 112);
    *&v66.stride[3] = *(a7 + 96);
    *&v66.stride[5] = v29;
    v30 = *(a7 + 16);
    *&v66.flags = *a7;
    *&v66.size[1] = v30;
    v31 = *(a7 + 48);
    *&v66.size[3] = *(a7 + 32);
    v67 = *(a7 + 176);
    *&v66.size[5] = v31;
    if (_sSo21BNNSNDArrayDescriptoraSgWOg(&v66) == 1)
    {
      v32 = *(v7 + 16);
      v33 = *(a2 + 136);
      BNNSNDArrayDescriptor.shape.getter(&v59);
      v34 = BNNS.Shape.batchStride.getter();
      BNNSNDArrayDescriptor.shape.getter(&v57);
      v35 = BNNS.Shape.batchStride.getter();
      v36 = *(a3 + 136);
      BNNSNDArrayDescriptor.shape.getter(v61);
      v37 = BNNS.Shape.batchStride.getter();
      BNNSNDArrayDescriptor.shape.getter(v60);
      v38 = BNNS.Shape.batchStride.getter();
      weights_delta = 0;
      v54 = 0;
    }

    else
    {
      v59 = v66;
      v32 = *(v7 + 16);
      v33 = *(a2 + 136);
      BNNSNDArrayDescriptor.shape.getter(&v57);
      v34 = BNNS.Shape.batchStride.getter();
      BNNSNDArrayDescriptor.shape.getter(v61);
      v35 = BNNS.Shape.batchStride.getter();
      v36 = *(a3 + 136);
      BNNSNDArrayDescriptor.shape.getter(v60);
      v37 = BNNS.Shape.batchStride.getter();
      BNNSNDArrayDescriptor.shape.getter(v58);
      v38 = BNNS.Shape.batchStride.getter();
      weights_delta = 0;
      v54 = &v59;
    }

    goto LABEL_7;
  }

  v59 = v68;
  v39 = *(a7 + 144);
  *&v64.stride[7] = *(a7 + 128);
  *&v64.data_type = v39;
  *&v64.table_data_type = *(a7 + 160);
  v40 = *(a7 + 80);
  *&v64.size[7] = *(a7 + 64);
  *&v64.stride[1] = v40;
  v41 = *(a7 + 112);
  *&v64.stride[3] = *(a7 + 96);
  *&v64.stride[5] = v41;
  v42 = *(a7 + 16);
  *&v64.flags = *a7;
  *&v64.size[1] = v42;
  v43 = *(a7 + 48);
  *&v64.size[3] = *(a7 + 32);
  v65 = *(a7 + 176);
  *&v64.size[5] = v43;
  if (_sSo21BNNSNDArrayDescriptoraSgWOg(&v64) == 1)
  {
    v32 = *(v7 + 16);
    v33 = *(a2 + 136);
    BNNSNDArrayDescriptor.shape.getter(&v57);
    v34 = BNNS.Shape.batchStride.getter();
    BNNSNDArrayDescriptor.shape.getter(v61);
    v35 = BNNS.Shape.batchStride.getter();
    v36 = *(a3 + 136);
    BNNSNDArrayDescriptor.shape.getter(v60);
    v37 = BNNS.Shape.batchStride.getter();
    BNNSNDArrayDescriptor.shape.getter(v58);
    v38 = BNNS.Shape.batchStride.getter();
    weights_delta = &v59;
    v54 = 0;
LABEL_7:
    result = BNNSFilterApplyBackwardBatch(v32, a1, v33, v34, &in_delta, v35, v36, v37, &out_delta, v38, weights_delta, v54);
    goto LABEL_9;
  }

  v57 = v64;
  v45 = *(v7 + 16);
  v46 = *(a2 + 136);
  BNNSNDArrayDescriptor.shape.getter(v61);
  v47 = BNNS.Shape.batchStride.getter();
  BNNSNDArrayDescriptor.shape.getter(v60);
  v48 = BNNS.Shape.batchStride.getter();
  v49 = *(a3 + 136);
  BNNSNDArrayDescriptor.shape.getter(v58);
  v50 = BNNS.Shape.batchStride.getter();
  BNNSNDArrayDescriptor.shape.getter(v56);
  v52 = BNNS.Shape.batchStride.getter();
  result = BNNSFilterApplyBackwardBatch(v45, a1, v46, v47, &in_delta, v48, v49, v50, &out_delta, v52, &v59, &v57);
LABEL_9:
  if (result)
  {
    lazy protocol witness table accessor for type BNNS.Error and conformance BNNS.Error();
    swift_allocError();
    *v51 = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t BNNS.ConvolutionLayer.__deallocating_deinit()
{
  BNNSFilterDestroy(*(v0 + 16));

  return swift_deallocClassInstance();
}

double static BNNS.ConvolutionPadding.zero.getter@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

Swift::Int BNNS.ConvolutionType.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1B8CB1810](v1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type BNNS.ConvolutionType and conformance BNNS.ConvolutionType()
{
  result = lazy protocol witness table cache variable for type BNNS.ConvolutionType and conformance BNNS.ConvolutionType;
  if (!lazy protocol witness table cache variable for type BNNS.ConvolutionType and conformance BNNS.ConvolutionType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BNNS.ConvolutionType and conformance BNNS.ConvolutionType);
  }

  return result;
}

uint64_t dispatch thunk of BNNS.ConvolutionLayer.applyBackward(batchSize:input:output:outputGradient:generatingInputGradient:generatingWeightsGradient:generatingBiasGradient:)(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, __int128 *a6, __int128 *a7)
{
  v8 = a2[17];
  v9 = *(a2 + 36);
  v10 = a2[19];
  v11 = *(a2 + 40);
  v12 = a3[17];
  v13 = *(a3 + 36);
  v14 = a3[19];
  v15 = *(a3 + 40);
  v16 = *(a4 + 136);
  v17 = *(a4 + 144);
  v18 = *(a4 + 152);
  v19 = *(a4 + 160);
  v20 = *(a5 + 136);
  v21 = *(a5 + 144);
  v22 = *(a5 + 152);
  v23 = *(a5 + 160);
  v24 = *(a6 + 176);
  v25 = *(a7 + 176);
  v146 = *(*v7 + 112);
  v141 = v8;
  v142 = v9;
  v143 = v10;
  v144 = v11;
  v26 = *a2;
  v27 = *(a2 + 1);
  v28 = *(a2 + 3);
  v29 = *(a2 + 5);
  v30 = *(a2 + 7);
  v31 = *(a2 + 9);
  v32 = *(a2 + 13);
  v33 = *(a2 + 15);
  v34 = *(a2 + 164);
  v138 = *(a2 + 11);
  v139 = v32;
  v140 = v33;
  v145 = v34;
  v127 = v12;
  v128 = v13;
  v129 = v14;
  v130 = v15;
  v35 = *a3;
  v36 = *(a3 + 1);
  v37 = *(a3 + 3);
  v38 = *(a3 + 5);
  v39 = *(a3 + 7);
  v40 = *(a3 + 9);
  v41 = *(a3 + 11);
  v42 = *(a3 + 13);
  v43 = *(a3 + 15);
  v44 = *(a3 + 164);
  v133 = v27;
  v134 = v28;
  v135 = v29;
  v136 = v30;
  v137 = v31;
  v124 = v41;
  v125 = v42;
  v126 = v43;
  v131 = v44;
  v113 = v16;
  v114 = v17;
  v115 = v18;
  v116 = v19;
  *&v27 = *a4;
  v45 = *(a4 + 8);
  v46 = *(a4 + 24);
  v47 = *(a4 + 40);
  v48 = *(a4 + 56);
  v49 = *(a4 + 72);
  v50 = *(a4 + 88);
  v51 = *(a4 + 104);
  v52 = *(a4 + 120);
  v53 = *(a4 + 164);
  v119 = v36;
  v120 = v37;
  v121 = v38;
  v122 = v39;
  v123 = v40;
  v110 = v50;
  v111 = v51;
  v112 = v52;
  v117 = v53;
  v99 = v20;
  v100 = v21;
  v101 = v22;
  v102 = v23;
  *&v50 = *a5;
  v54 = *(a5 + 8);
  v55 = *(a5 + 24);
  v56 = *(a5 + 40);
  v57 = *(a5 + 56);
  v58 = *(a5 + 72);
  v59 = *(a5 + 88);
  v60 = *(a5 + 104);
  v61 = *(a5 + 120);
  v62 = *(a5 + 164);
  v105 = v45;
  v106 = v46;
  v107 = v47;
  v108 = v48;
  v109 = v49;
  v91 = v54;
  v92 = v55;
  v93 = v56;
  v94 = v57;
  v95 = v58;
  v96 = v59;
  v97 = v60;
  v98 = v61;
  v103 = v62;
  v63 = *a6;
  v64 = a6[1];
  v65 = a6[2];
  v66 = a6[3];
  v67 = a6[4];
  v68 = a6[5];
  v69 = a6[6];
  v70 = a6[7];
  v71 = a6[8];
  v72 = a6[9];
  v73 = a6[10];
  v89 = v24;
  v74 = *a7;
  v75 = a7[1];
  v76 = a7[2];
  v77 = a7[3];
  v78 = a7[4];
  v79 = a7[5];
  v80 = a7[6];
  v81 = a7[7];
  v83 = a7[8];
  v82 = a7[9];
  v84 = a7[10];
  v87 = v25;
  v132 = v26;
  v118 = v35;
  v104 = v27;
  v90 = v50;
  v88[0] = v63;
  v88[1] = v64;
  v88[2] = v65;
  v88[3] = v66;
  v88[4] = v67;
  v88[5] = v68;
  v88[6] = v69;
  v88[7] = v70;
  v88[8] = v71;
  v88[9] = v72;
  v88[10] = v73;
  v86[0] = v74;
  v86[1] = v75;
  v86[2] = v76;
  v86[3] = v77;
  v86[4] = v78;
  v86[5] = v79;
  v86[6] = v80;
  v86[7] = v81;
  v86[8] = v83;
  v86[9] = v82;
  v86[10] = v84;
  return v146(a1, &v132, &v118, &v104, &v90, v88, v86);
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for BNNS.ConvolutionPadding(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for BNNS.ConvolutionPadding(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BNNS.ConvolutionType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t static vDSP.convert(splitComplexVector:toInterleavedComplexVector:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = MEMORY[0x1E69591F8];

  return static vDSP.convert(splitComplexVector:toInterleavedComplexVector:)(a1, a2, a3, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), v3);
}

{
  v3 = MEMORY[0x1E6959200];

  return static vDSP.convert(splitComplexVector:toInterleavedComplexVector:)(a1, a2, a3, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), v3);
}

uint64_t static vDSP.convert(splitComplexVector:toInterleavedComplexVector:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void, uint64_t, void, uint64_t), uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11[2] = *MEMORY[0x1E69E9840];
  v11[0] = a1;
  v11[1] = a2;
  v8 = *a3;
  v9 = *(*a3 + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = a4(0, v9, 0, v8);
  }

  *a3 = v8;
  return a5(v11, 1, v8 + 32, 2, v9);
}

double one-time initialization function for fillAll()
{
  result = 0.0;
  static BNNSGraph.Builder.SliceRange.fillAll = xmmword_1B7E776F0;
  return result;
}

uint64_t BNNSGraph.Builder.SliceRange.init(startIndex:endIndex:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

double static BNNSGraph.Builder.SliceRange.fillAll.getter@<D0>(_OWORD *a1@<X8>)
{
  if (one-time initialization token for fillAll != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  result = *&static BNNSGraph.Builder.SliceRange.fillAll;
  *a1 = static BNNSGraph.Builder.SliceRange.fillAll;
  return result;
}

uint64_t BNNSGraph.Builder.Tensor.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = specialized BNNSGraph.Builder.Tensor.calculateBeginAndEnd(ranges:)(a1);
  BNNSGraph.Builder.Tensor.getSlice(begin:end:)(v5, v6, a2, a3);
}

double key path getter for BNNSGraph.Builder.Tensor.subscript(_:) : <A>BNNSGraph.Builder.Tensor<A>A@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  v11 = *a1;
  v5 = *(a1 + 3);
  v12 = *(a1 + 1);
  v13 = v5;
  v6 = type metadata accessor for BNNSGraph.Builder.Tensor();
  BNNSGraph.Builder.Tensor.subscript.getter(v4, v6, &v8);
  *a3 = v8;
  *(a3 + 8) = v9;
  result = *&v10;
  *(a3 + 24) = v10;
  return result;
}

double key path setter for BNNSGraph.Builder.Tensor.subscript(_:) : <A>BNNSGraph.Builder.Tensor<A>A(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v7 = *a1;
  v4 = *(a1 + 24);
  v8 = *(a1 + 8);
  v9 = v4;
  v5 = type metadata accessor for BNNSGraph.Builder.Tensor();

  *&result = BNNSGraph.Builder.Tensor.subscript.setter(&v7, v3, v5).n128_u64[0];
  return result;
}

__n128 BNNSGraph.Builder.Tensor.subscript.setter(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *a1;

  v9 = specialized BNNSGraph.Builder.Tensor.calculateBeginAndEnd(ranges:)(a2);
  v11 = v10;

  v17 = *v4;
  v18 = *(v4 + 1);
  v19 = *(v4 + 3);
  v14 = v8;
  v13 = *(a1 + 3);
  v15 = *(a1 + 1);
  v16 = v13;
  BNNSGraph.Builder.Tensor.setSlice(begin:end:newValue:)(v9, v11, &v14, a3, &v20);

  *v4 = v20;
  result = v22;
  *(v4 + 1) = v21;
  *(v4 + 3) = result;
  return result;
}

uint64_t BNNSGraph.Builder.Tensor.setSlice(begin:end:newValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  result = *(a1 + 16);
  if (result == *(a2 + 16))
  {
    v20 = *a3;
    v21 = *(a3 + 24);
    v22 = *(a3 + 8);
    v11 = v5[3];
    v10 = v5[4];
    v12 = v5[1];
    v13 = v5[2];
    v14 = *v5;
    v15 = specialized _copyCollectionToContiguousArray<A>(_:)(result, 1uLL);
    v24 = v14;
    *&v25 = v12;
    v16 = *(a4 + 16);
    v17 = *(a4 + 24);

    LOBYTE(v27) = 1;
    BNNSGraph.Builder.Tensor.init(_:intent:dataType:shape:builder:)(v13, v11, 0x100000000uLL, MEMORY[0x1E69E7CC0], &v24, v16, v17, &v27);
    v24 = v14;
    *&v25 = v12;
    *(&v25 + 1) = v13;
    *&v26 = v11;
    *(&v26 + 1) = v10;
    if (!BNNSGraph.Builder.Tensor.tensorData.getter() || (v24 = v20, v25 = v22, v26 = v21, (result = BNNSGraph.Builder.Tensor.tensorData.getter()) == 0))
    {

LABEL_13:
      *a5 = v27;
      v19 = v29;
      *(a5 + 8) = v28;
      *(a5 + 24) = v19;
      return result;
    }

    if (v12)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a2 + 16), 0, a2);
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 16), 0, v15);
      }

      v18 = _bnns_graph_builder_register_slice_update();

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      result = BNNSGraph.Builder.Tensor.setTensorData(_:operationName:)(v18, 0xD00000000000001DLL, 0x80000001B7E7CB80);
      goto LABEL_13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t BNNSGraph.Builder.Tensor.getSlice(begin:end:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = *(a1 + 16);
  if (result == *(a2 + 16))
  {
    v10 = v4[3];
    v9 = v4[4];
    v11 = v4[1];
    v12 = v4[2];
    v13 = *v4;
    v19 = specialized _copyCollectionToContiguousArray<A>(_:)(result, 1uLL);
    v20 = v13;
    v21 = v11;
    v14 = *(a3 + 16);
    v15 = *(a3 + 24);

    LOBYTE(v25) = 1;
    BNNSGraph.Builder.Tensor.init(_:intent:dataType:shape:builder:)(v12, v10, 0x100000000uLL, MEMORY[0x1E69E7CC0], &v20, v14, v15, &v25);
    v20 = v13;
    v21 = v11;
    v22 = v12;
    v23 = v10;
    v24 = v9;
    result = BNNSGraph.Builder.Tensor.tensorData.getter();
    if (!result)
    {

LABEL_12:
      *a4 = v25;
      v17 = v27;
      *(a4 + 8) = v26;
      *(a4 + 24) = v17;
      return result;
    }

    if (v11)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a2 + 16), 0, a2);
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v19 + 16), 0, v19);
      }

      v16 = _bnns_graph_builder_register_slice();

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      result = BNNSGraph.Builder.Tensor.setTensorData(_:operationName:)(v16, 0xD000000000000014, 0x80000001B7E7CBA0);
      goto LABEL_12;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void (*BNNSGraph.Builder.Tensor.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x40uLL);
  }

  *a1 = v7;
  v7[6] = a3;
  v7[7] = v3;
  v7[5] = a2;
  BNNSGraph.Builder.Tensor.subscript.getter(a2, a3, v7);
  return BNNSGraph.Builder.Tensor.subscript.modify;
}

void BNNSGraph.Builder.Tensor.subscript.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v6 = (*a1)[2];
  v5 = (*a1)[3];
  v7 = v2[6];
  v8 = v2[4];
  v9 = v2[5];
  v10[0] = v4;
  v10[1] = v3;
  v10[2] = v6;
  v10[3] = v5;
  v10[4] = v8;
  if (a2)
  {

    BNNSGraph.Builder.Tensor.subscript.setter(v10, v9, v7);
  }

  else
  {

    BNNSGraph.Builder.Tensor.subscript.setter(v10, v9, v7);
  }

  free(v2);
}

uint64_t specialized BNNSGraph.Builder.Tensor.calculateBeginAndEnd(ranges:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = MEMORY[0x1E69E7CC0];
  v3 = a1 + 32;
  v4 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    outlined init with copy of BNNSGraph.Builder.SliceIndex(v3, v28);
    outlined init with copy of BNNSGraph.Builder.SliceIndex(v28, v27);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Accelerate9BNNSGraphO7BuilderV10SliceIndex_pMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd);
    if (swift_dynamicCast())
    {
      v5 = v26;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
      }

      v7 = *(v4 + 2);
      v6 = *(v4 + 3);
      if (v7 >= v6 >> 1)
      {
        v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v4);
      }

      *(v4 + 2) = v7 + 1;
      *&v4[8 * v7 + 32] = v25;
      goto LABEL_17;
    }

    outlined init with copy of BNNSGraph.Builder.SliceIndex(v28, v27);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNySiGMd);
    if (swift_dynamicCast())
    {
      break;
    }

    outlined init with copy of BNNSGraph.Builder.SliceIndex(v28, v27);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16PartialRangeFromVySiGMd);
    if (swift_dynamicCast())
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
      }

      v14 = *(v4 + 2);
      v13 = *(v4 + 3);
      if (v14 >= v13 >> 1)
      {
        v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v4);
      }

      *(v4 + 2) = v14 + 1;
      *&v4[8 * v14 + 32] = v25;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 2) + 1, 1, v2);
      }

      v11 = *(v2 + 2);
      v15 = *(v2 + 3);
      v12 = v11 + 1;
      if (v11 >= v15 >> 1)
      {
        v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v11 + 1, 1, v2);
      }

      v5 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_4;
    }

    outlined init with copy of BNNSGraph.Builder.SliceIndex(v28, v27);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss19PartialRangeThroughVySiGMd);
    if (swift_dynamicCast())
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
      }

      v17 = *(v4 + 2);
      v16 = *(v4 + 3);
      if (v17 >= v16 >> 1)
      {
        v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v4);
      }

      *(v4 + 2) = v17 + 1;
      *&v4[8 * v17 + 32] = 0;
      v5 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        goto LABEL_61;
      }
    }

    else
    {
      outlined init with copy of BNNSGraph.Builder.SliceIndex(v28, v27);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16PartialRangeUpToVySiGMd);
      if (swift_dynamicCast())
      {
        v5 = v25;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
        }

        v19 = *(v4 + 2);
        v18 = *(v4 + 3);
        if (v19 >= v18 >> 1)
        {
          v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v4);
        }

        *(v4 + 2) = v19 + 1;
        *&v4[8 * v19 + 32] = 0;
      }

      else
      {
        outlined init with copy of BNNSGraph.Builder.SliceIndex(v28, v27);
        if (swift_dynamicCast())
        {
          v5 = v26;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
          }

          v21 = *(v4 + 2);
          v20 = *(v4 + 3);
          if (v21 >= v20 >> 1)
          {
            v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v4);
          }

          *(v4 + 2) = v21 + 1;
          *&v4[8 * v21 + 32] = v25;
        }

        else
        {
          outlined init with copy of BNNSGraph.Builder.SliceIndex(v28, v27);
          if (!swift_dynamicCast())
          {
            goto LABEL_63;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
          }

          v23 = *(v4 + 2);
          v22 = *(v4 + 3);
          if (v23 >= v22 >> 1)
          {
            v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v4);
          }

          *(v4 + 2) = v23 + 1;
          *&v4[8 * v23 + 32] = v25;
          v5 = v25 + 1;
          if (__OFADD__(v25, 1))
          {
            goto LABEL_62;
          }
        }
      }
    }

LABEL_17:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 2) + 1, 1, v2);
    }

    v11 = *(v2 + 2);
    v10 = *(v2 + 3);
    v12 = v11 + 1;
    if (v11 >= v10 >> 1)
    {
      v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v2);
    }

LABEL_4:
    __swift_destroy_boxed_opaque_existential_1(v28);
    *(v2 + 2) = v12;
    *&v2[8 * v11 + 32] = v5;
    v3 += 40;
    if (!--v1)
    {
      return v4;
    }
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
  }

  v9 = *(v4 + 2);
  v8 = *(v4 + 3);
  if (v9 >= v8 >> 1)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v4);
  }

  *(v4 + 2) = v9 + 1;
  *&v4[8 * v9 + 32] = v25;
  v5 = v26 + 1;
  if (!__OFADD__(v26, 1))
  {
    goto LABEL_17;
  }

  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  v27[0] = 0;
  v27[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(18);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1B8CB1340](0xD000000000000010, 0x80000001B7E7CBF0);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t outlined init with copy of BNNSGraph.Builder.SliceIndex(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

Swift::Int BNNS.LearningPhase.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1B8CB1810](a1 & 1);
  return Hasher._finalize()();
}

uint64_t BNNS.FusedLayer.apply(batchSize:input:output:for:)(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  v5 = *(a2 + 136);
  if (!v5)
  {
    __break(1u);
    goto LABEL_7;
  }

  v8 = result;
  v9 = *(v4 + 16);
  BNNSNDArrayDescriptor.shape.getter(v15);
  result = BNNS.Shape.batchStride.getter();
  v10 = *(a3 + 136);
  if (!v10)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v11 = result;
  BNNSNDArrayDescriptor.shape.getter(v14);
  v12 = BNNS.Shape.batchStride.getter();
  result = BNNSFusedFilterApplyBatch(v9, v8, v5, v11, v10, v12, (a4 & 1) == 0);
  if (result)
  {
    lazy protocol witness table accessor for type BNNS.Error and conformance BNNS.Error();
    swift_allocError();
    *v13 = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t BNNS.FusedLayer.applyBackward(batchSize:input:output:outputGradient:generatingInputGradient:generatingParameterGradients:)(size_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, _OWORD *a5, uint64_t a6)
{
  v64 = *MEMORY[0x1E69E9840];
  v11 = *(a6 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  if (v11)
  {
    *&out_delta.flags = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11, 0);
    v12 = *&out_delta.flags;
    v14 = (a6 + 32);
    do
    {
      v15 = v14[9];
      *&in_delta.stride[7] = v14[8];
      *&in_delta.data_type = v15;
      *&in_delta.table_data_type = v14[10];
      v16 = v14[5];
      *&in_delta.size[7] = v14[4];
      *&in_delta.stride[1] = v16;
      v17 = v14[7];
      *&in_delta.stride[3] = v14[6];
      *&in_delta.stride[5] = v17;
      v18 = v14[1];
      *&in_delta.flags = *v14;
      *&in_delta.size[1] = v18;
      v19 = v14[3];
      *&in_delta.size[3] = v14[2];
      *&in_delta.size[5] = v19;
      v20 = swift_slowAlloc();
      v21 = *&in_delta.data_type;
      v20[8] = *&in_delta.stride[7];
      v20[9] = v21;
      v20[10] = *&in_delta.table_data_type;
      v22 = *&in_delta.stride[1];
      v20[4] = *&in_delta.size[7];
      v20[5] = v22;
      v23 = *&in_delta.stride[5];
      v20[6] = *&in_delta.stride[3];
      v20[7] = v23;
      v24 = *&in_delta.size[1];
      *v20 = *&in_delta.flags;
      v20[1] = v24;
      v25 = *&in_delta.size[5];
      v20[2] = *&in_delta.size[3];
      v20[3] = v25;
      v27 = *(v12 + 2);
      v26 = *(v12 + 3);
      *&out_delta.flags = v12;
      if (v27 >= v26 >> 1)
      {
        v28 = v20;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1);
        v20 = v28;
        v12 = *&out_delta.flags;
      }

      *(v12 + 2) = v27 + 1;
      *&v12[8 * v27 + 32] = v20;
      v14 += 11;
      --v11;
    }

    while (v11);
    v6 = v55;
    a3 = v56;
  }

  v29 = a5[9];
  *&in_delta.stride[7] = a5[8];
  *&in_delta.data_type = v29;
  *&in_delta.table_data_type = a5[10];
  v30 = a5[5];
  *&in_delta.size[7] = a5[4];
  *&in_delta.stride[1] = v30;
  v31 = a5[7];
  *&in_delta.stride[3] = a5[6];
  *&in_delta.stride[5] = v31;
  v32 = a5[1];
  *&in_delta.flags = *a5;
  *&in_delta.size[1] = v32;
  v33 = a5[3];
  *&in_delta.size[3] = a5[2];
  *&in_delta.size[5] = v33;
  v34 = a4[9];
  *&out_delta.stride[7] = a4[8];
  *&out_delta.data_type = v34;
  *&out_delta.table_data_type = a4[10];
  v35 = a4[5];
  *&out_delta.size[7] = a4[4];
  *&out_delta.stride[1] = v35;
  v36 = a4[7];
  *&out_delta.stride[3] = a4[6];
  *&out_delta.stride[5] = v36;
  v37 = a4[1];
  *&out_delta.flags = *a4;
  *&out_delta.size[1] = v37;
  v38 = a4[3];
  *&out_delta.size[3] = a4[2];
  *&out_delta.size[5] = v38;
  v39 = *(v6 + 16);
  v40 = *(a2 + 136);
  BNNSNDArrayDescriptor.shape.getter(v61);
  v41 = BNNS.Shape.batchStride.getter();
  BNNSNDArrayDescriptor.shape.getter(v60);
  v42 = BNNS.Shape.batchStride.getter();
  v43 = *(a3 + 136);
  BNNSNDArrayDescriptor.shape.getter(v59);
  v44 = BNNS.Shape.batchStride.getter();
  BNNSNDArrayDescriptor.shape.getter(v58);
  out_delta_stride = BNNS.Shape.batchStride.getter();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 2), 0, v12);
  }

  v46 = (v12 + 32);
  if (BNNSFusedFilterApplyBackwardBatch(v39, a1, v40, v41, &in_delta, v42, v43, v44, &out_delta, out_delta_stride, v12 + 4))
  {
    lazy protocol witness table accessor for type BNNS.Error and conformance BNNS.Error();
    swift_allocError();
    *v47 = 0;
    swift_willThrow();
    for (i = *(v12 + 2); i; --i)
    {
      v50 = *v46++;
      v49 = v50;
      if (v50)
      {
        MEMORY[0x1B8CB2C50](v49, -1, -1);
      }
    }
  }

  else
  {
    for (j = *(v12 + 2); j; --j)
    {
      v54 = *v46++;
      v53 = v54;
      if (v54)
      {
        MEMORY[0x1B8CB2C50](v53, -1, -1);
      }
    }
  }
}

uint64_t BNNS.FusedLayer.__deallocating_deinit()
{
  BNNSFilterDestroy(*(v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t BNNS.FusedConvolutionNormalizationLayer.__allocating_init(input:output:convolutionWeights:convolutionBias:convolutionStride:convolutionDilationStride:convolutionPadding:normalization:normalizationBeta:normalizationGamma:normalizationMomentum:normalizationEpsilon:normalizationActivation:filterParameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int8x16_t *a9, const void *a10, __int128 *a11, __int128 *a12, uint64_t *a13, int a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v17 = MEMORY[0x1EEE9AC00](a1);
  v90 = v18;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v249 = *MEMORY[0x1E69E9840];
  v31 = a12[6];
  v201 = a12[7];
  v32 = a12[9];
  v202 = a12[8];
  v203 = v32;
  v204 = a12[10];
  v33 = a12[2];
  v197 = a12[3];
  v34 = a12[5];
  v198 = a12[4];
  v199 = v34;
  v200 = v31;
  v35 = a12[1];
  v194 = *a12;
  v195 = v35;
  v196 = v33;
  v36 = a11[6];
  v212 = a11[7];
  v37 = a11[9];
  v213 = a11[8];
  v214 = v37;
  v215 = a11[10];
  v38 = a11[2];
  v208 = a11[3];
  v39 = a11[5];
  v209 = a11[4];
  v210 = v39;
  v211 = v36;
  v40 = a11[1];
  v205 = *a11;
  v206 = v40;
  v207 = v38;
  v42 = v41[6];
  v223 = v41[7];
  v43 = v41[9];
  v224 = v41[8];
  v225 = v43;
  v226 = v41[10];
  v44 = v41[2];
  v219 = v41[3];
  v45 = v41[5];
  v220 = v41[4];
  v221 = v45;
  v222 = v42;
  v46 = v41[1];
  v216 = *v41;
  v217 = v46;
  v218 = v44;
  v48 = v47[6];
  v234 = v47[7];
  v49 = v47[9];
  v235 = v47[8];
  v236 = v49;
  v237 = v47[10];
  v50 = v47[2];
  v230 = v47[3];
  v51 = v47[5];
  v231 = v47[4];
  v232 = v51;
  v233 = v48;
  v52 = v47[1];
  v227 = *v47;
  v228 = v52;
  v229 = v50;
  v53 = v17[6];
  v245 = v17[7];
  v54 = v17[9];
  v246 = v17[8];
  v247 = v54;
  v248 = v17[10];
  v55 = v17[2];
  v241 = v17[3];
  v56 = v17[5];
  v242 = v17[4];
  v243 = v56;
  v244 = v53;
  v57 = v17[1];
  v238 = *v17;
  v239 = v57;
  v240 = v55;
  v86 = a9[1];
  v88 = *a9;
  v58 = a9[2].u8[0];
  memcpy(v167, a10, 0x169uLL);
  v59 = *a13;
  v60 = *(a13 + 8);
  memcpy(v169, a10, 0x169uLL);
  v61 = _s10Accelerate4BNNSO17NormalizationTypeOWOg(v169);
  v62 = destructiveProjectEnumData for BNNS.NormalizationType(v169);
  if (v61 >= 2)
  {
    if (v61 == 2)
    {
      v71 = 0;
      v72 = 0uLL;
      v112 = 0u;
      v113 = 0u;
      v110 = 0u;
      v111 = 0u;
      v108 = 0u;
      v109 = 0u;
      v106 = 0u;
      v107 = 0u;
      v104 = 0u;
      v105 = 0u;
    }

    else
    {
      v71 = *v62;
      v72 = 0uLL;
      v104 = 0u;
      v105 = 0u;
      v106 = 0u;
      v107 = 0u;
      v108 = 0u;
      v109 = 0u;
      v110 = 0u;
      v111 = 0u;
      v112 = 0u;
      v113 = 0u;
    }

    v92 = v72;
    v93 = v72;
    v94 = v72;
    v95 = v72;
    v96 = v72;
    v97 = v72;
    v98 = v72;
    v99 = v72;
    v100 = v72;
    v101 = v72;
    v102 = v72;
    v103 = v72;
  }

  else
  {
    v63 = *(v62 + 144);
    v178 = *(v62 + 128);
    v179 = v63;
    v180 = *(v62 + 160);
    v64 = *(v62 + 80);
    v174 = *(v62 + 64);
    v175 = v64;
    v65 = *(v62 + 112);
    v176 = *(v62 + 96);
    v177 = v65;
    v66 = *(v62 + 16);
    v170 = *v62;
    v171 = v66;
    v67 = *(v62 + 48);
    v172 = *(v62 + 32);
    v173 = v67;
    v68 = *(v62 + 296);
    v190 = *(v62 + 312);
    v69 = *(v62 + 344);
    v191 = *(v62 + 328);
    v192 = v69;
    v186 = *(v62 + 248);
    v70 = *(v62 + 280);
    v187 = *(v62 + 264);
    v181 = *(v62 + 176);
    v193 = *(v62 + 360);
    v188 = v70;
    v189 = v68;
    v182 = *(v62 + 184);
    v183 = *(v62 + 200);
    v184 = *(v62 + 216);
    v185 = *(v62 + 232);
    v118[8] = v178;
    v118[9] = v179;
    v118[10] = v180;
    LOBYTE(v118[11]) = v181;
    v118[4] = v174;
    v118[5] = v175;
    v118[6] = v176;
    v118[7] = v177;
    v118[0] = v170;
    v118[1] = v171;
    v118[2] = v172;
    v118[3] = v173;
    if (_sSo21BNNSNDArrayDescriptoraSgWOg(v118) == 1)
    {
      v112 = 0u;
      v113 = 0u;
      v110 = 0u;
      v111 = 0u;
      v108 = 0u;
      v109 = 0u;
      v106 = 0u;
      v107 = 0u;
      v104 = 0u;
      v105 = 0u;
      v103 = 0u;
    }

    else
    {
      v111 = v178;
      v112 = v179;
      v113 = v180;
      v107 = v174;
      v108 = v175;
      v109 = v176;
      v110 = v177;
      v103 = v170;
      v104 = v171;
      v105 = v172;
      v106 = v173;
    }

    v139[8] = v190;
    v139[9] = v191;
    v139[10] = v192;
    LOBYTE(v139[11]) = v193;
    v139[4] = v186;
    v139[5] = v187;
    v139[6] = v188;
    v139[7] = v189;
    v139[0] = v182;
    v139[1] = v183;
    v139[2] = v184;
    v139[3] = v185;
    if (_sSo21BNNSNDArrayDescriptoraSgWOg(v139) == 1)
    {
      v101 = 0u;
      v102 = 0u;
      v100 = 0u;
      v98 = 0u;
      v99 = 0u;
      v96 = 0u;
      v97 = 0u;
      v94 = 0u;
      v95 = 0u;
      v92 = 0u;
      v93 = 0u;
    }

    else
    {
      v100 = v190;
      v101 = v191;
      v102 = v192;
      v96 = v186;
      v97 = v187;
      v98 = v188;
      v99 = v189;
      v92 = v182;
      v93 = v183;
      v94 = v184;
      v95 = v185;
    }

    v71 = 0;
  }

  if (v58)
  {
    v73 = -1;
  }

  else
  {
    v73 = 0;
  }

  v84 = vdupq_n_s64(v73);
  v74 = v26[9];
  v163 = v26[8];
  v164 = v74;
  v165 = v26[10];
  v166 = *(v26 + 176);
  v75 = v26[5];
  v159 = v26[4];
  v160 = v75;
  v76 = v26[7];
  v161 = v26[6];
  v162 = v76;
  v77 = v26[1];
  v155 = *v26;
  v156 = v77;
  v78 = v26[3];
  v157 = v26[2];
  v158 = v78;
  if (_sSo21BNNSNDArrayDescriptoraSgWOg(&v155) == 1)
  {
    v154 = 0u;
    v153 = 0u;
    v152 = 0u;
    v151 = 0u;
    v150 = 0u;
    v149 = 0u;
    v148 = 0u;
    v147 = 0u;
    v146 = 0u;
    v145 = 0u;
    v144 = 0u;
  }

  else
  {
    v151 = v162;
    v152 = v163;
    v153 = v164;
    v154 = v165;
    v147 = v158;
    v148 = v159;
    v149 = v160;
    v150 = v161;
    v144 = v155;
    v145 = v156;
    v146 = v157;
  }

  v85 = vandq_s8(v86, v84);
  v87 = vandq_s8(v88, v84);
  v89 = vbicq_s8(v88, v84);
  __src[7] = v245;
  __src[8] = v246;
  __src[9] = v247;
  __src[10] = v248;
  __src[3] = v241;
  __src[4] = v242;
  __src[5] = v243;
  __src[6] = v244;
  __src[0] = v238;
  __src[1] = v239;
  __src[2] = v240;
  __src[18] = v234;
  __src[19] = v235;
  __src[20] = v236;
  __src[21] = v237;
  __src[14] = v230;
  __src[15] = v231;
  __src[16] = v232;
  __src[17] = v233;
  __src[11] = v227;
  __src[12] = v228;
  __src[13] = v229;
  __src[29] = v223;
  __src[30] = v224;
  __src[31] = v225;
  __src[32] = v226;
  __src[25] = v219;
  __src[26] = v220;
  __src[27] = v221;
  __src[28] = v222;
  __src[22] = v216;
  __src[23] = v217;
  __src[24] = v218;
  __src[40] = v151;
  __src[41] = v152;
  __src[42] = v153;
  __src[43] = v154;
  __src[36] = v147;
  __src[37] = v148;
  __src[38] = v149;
  __src[39] = v150;
  __src[33] = v144;
  __src[34] = v145;
  __src[35] = v146;
  v140 = v59;
  v141 = v60;
  BNNS.ActivationFunction.bnnsActivation.getter(v143);
  memcpy(v168, v167, 0x169uLL);
  if (_s10Accelerate4BNNSO17NormalizationTypeOWOg(v168) == 2)
  {
    v79 = *destructiveProjectEnumData for BNNS.NormalizationType(v168);
  }

  else
  {
    v79 = 0;
  }

  v139[7] = v223;
  v139[8] = v224;
  v139[9] = v225;
  v139[10] = v226;
  v139[3] = v219;
  v139[4] = v220;
  v139[5] = v221;
  v139[6] = v222;
  v139[0] = v216;
  v139[1] = v217;
  v139[2] = v218;
  v139[18] = v223;
  v139[19] = v224;
  v139[20] = v225;
  v139[21] = v226;
  v139[14] = v219;
  v139[15] = v220;
  v139[16] = v221;
  v139[17] = v222;
  v139[11] = v216;
  v139[12] = v217;
  v139[13] = v218;
  v139[29] = v212;
  v139[30] = v213;
  v139[31] = v214;
  v139[32] = v215;
  v139[25] = v208;
  v139[26] = v209;
  v139[27] = v210;
  v139[28] = v211;
  v139[22] = v205;
  v139[23] = v206;
  v139[24] = v207;
  v139[40] = v201;
  v139[41] = v202;
  v139[42] = v203;
  v139[43] = v204;
  v139[36] = v197;
  v139[37] = v198;
  v139[38] = v199;
  v139[39] = v200;
  v139[33] = v194;
  v139[34] = v195;
  v139[35] = v196;
  v139[51] = v110;
  v139[52] = v111;
  v139[53] = v112;
  v139[54] = v113;
  v139[47] = v106;
  v139[48] = v107;
  v139[49] = v108;
  v139[50] = v109;
  v139[44] = v103;
  v139[45] = v104;
  v139[46] = v105;
  v139[62] = v99;
  v139[63] = v100;
  v139[64] = v101;
  v139[65] = v102;
  v139[58] = v95;
  v139[59] = v96;
  v139[60] = v97;
  v139[61] = v98;
  v139[55] = v92;
  v139[56] = v93;
  v139[57] = v94;
  memcpy(__dst, __src, sizeof(__dst));
  v127 = 0x7FC0000000000000;
  v128 = 0x17FC00000;
  v129 = 0u;
  v130 = 0u;
  v131 = v24;
  v132 = v22;
  v133 = v20;
  v134 = v90;
  v135 = v89;
  v136 = v71;
  v137 = v87;
  v138 = v85;
  memcpy(v118, v139, sizeof(v118));
  v119 = v30;
  v120 = v28;
  v121 = v143[0];
  v122 = v143[1];
  v123 = v143[2];
  v124 = v71;
  v125 = v79;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySVGMd);
  v80 = swift_allocObject();
  *(v80 + 16) = xmmword_1B7E77850;
  *(v80 + 32) = __dst;
  *(v80 + 40) = v118;
  v91 = v80;
  if (a16 == 1)
  {
    v81 = 0;
  }

  else
  {
    v114 = a14;
    v115 = a15;
    v116 = a16;
    v117 = a17;
    v81 = &v114;
  }

  v82 = closure #1 in closure #1 in closure #1 in BNNS.FusedConvolutionNormalizationLayer.init(input:output:convolutionWeights:convolutionBias:convolutionStride:convolutionDilationStride:convolutionPadding:normalization:normalizationBeta:normalizationGamma:normalizationMomentum:normalizationEpsilon:normalizationActivation:filterParameters:)(v81, v167, &v91, 0);

  type metadata accessor for BNNS.FusedConvolutionNormalizationLayer();
  result = swift_allocObject();
  if (v82)
  {
    *(result + 16) = v82;
  }

  else
  {
    type metadata accessor for BNNS.Layer();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return result;
}

uint64_t BNNS.FusedFullyConnectedNormalizationLayer.__allocating_init(input:output:fullyConnectedWeights:fullyConnectedBias:normalization:normalizationBeta:normalizationGamma:normalizationMomentum:normalizationEpsilon:normalizationActivation:filterParameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v12 = MEMORY[0x1EEE9AC00](a1);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = v12;
  v212 = *MEMORY[0x1E69E9840];
  v29 = v28[6];
  v186 = v28[7];
  v30 = v28[9];
  v187 = v28[8];
  v188 = v30;
  v189 = v28[10];
  v31 = v28[2];
  v182 = v28[3];
  v32 = v28[5];
  v183 = v28[4];
  v184 = v32;
  v185 = v29;
  v33 = v28[1];
  v179 = *v28;
  v180 = v33;
  v181 = v31;
  v35 = v34[6];
  v197 = v34[7];
  v36 = v34[9];
  v198 = v34[8];
  v199 = v36;
  v200 = v34[10];
  v37 = v34[2];
  v193 = v34[3];
  v38 = v34[5];
  v194 = v34[4];
  v195 = v38;
  v196 = v35;
  v39 = v34[1];
  v190 = *v34;
  v191 = v39;
  v192 = v37;
  v40 = v25[6];
  v208 = v25[7];
  v41 = v25[9];
  v209 = v25[8];
  v210 = v41;
  v211 = v25[10];
  v42 = v25[2];
  v204 = v25[3];
  v43 = v25[5];
  v205 = v25[4];
  v206 = v43;
  v207 = v40;
  v44 = v25[1];
  v201 = *v25;
  v202 = v44;
  v203 = v42;
  memcpy(v165, v15, 0x169uLL);
  v45 = *v14;
  v46 = *(v14 + 8);
  v47 = v18[9];
  v161 = v18[8];
  v162 = v47;
  v163 = v18[10];
  v164 = *(v18 + 176);
  v48 = v18[5];
  v157 = v18[4];
  v158 = v48;
  v49 = v18[7];
  v159 = v18[6];
  v160 = v49;
  v50 = v18[1];
  v153 = *v18;
  v154 = v50;
  v51 = v18[3];
  v155 = v18[2];
  v156 = v51;
  if (_sSo21BNNSNDArrayDescriptoraSgWOg(&v153) == 1)
  {
    v178 = 0u;
    v177 = 0u;
    v176 = 0u;
    v175 = 0u;
    v174 = 0u;
    v173 = 0u;
    v172 = 0u;
    v171 = 0u;
    v170 = 0u;
    v169 = 0u;
    v168 = 0u;
  }

  else
  {
    v175 = v160;
    v176 = v161;
    v177 = v162;
    v178 = v163;
    v171 = v156;
    v172 = v157;
    v173 = v158;
    v174 = v159;
    v168 = v153;
    v169 = v154;
    v170 = v155;
  }

  v52 = v27[6];
  __src[7] = v27[7];
  v53 = v27[9];
  __src[8] = v27[8];
  __src[9] = v53;
  __src[10] = v27[10];
  v54 = v27[2];
  __src[3] = v27[3];
  v55 = v27[5];
  __src[4] = v27[4];
  __src[5] = v55;
  __src[6] = v52;
  v56 = v27[1];
  __src[0] = *v27;
  __src[1] = v56;
  __src[2] = v54;
  v57 = v20[6];
  __src[18] = v20[7];
  v58 = v20[9];
  __src[19] = v20[8];
  __src[20] = v58;
  __src[21] = v20[10];
  v59 = v20[2];
  __src[14] = v20[3];
  v60 = v20[5];
  __src[15] = v20[4];
  __src[16] = v60;
  __src[17] = v57;
  v61 = v20[1];
  __src[11] = *v20;
  __src[12] = v61;
  __src[13] = v59;
  v62 = v26[6];
  __src[29] = v26[7];
  v63 = v26[9];
  __src[30] = v26[8];
  __src[31] = v63;
  __src[32] = v26[10];
  v64 = v26[2];
  __src[25] = v26[3];
  v65 = v26[5];
  __src[26] = v26[4];
  __src[27] = v65;
  __src[28] = v62;
  v66 = v26[1];
  __src[22] = *v26;
  __src[23] = v66;
  __src[24] = v64;
  __src[40] = v175;
  __src[41] = v176;
  __src[42] = v177;
  __src[43] = v178;
  __src[36] = v171;
  __src[37] = v172;
  __src[38] = v173;
  __src[39] = v174;
  __src[33] = v168;
  __src[34] = v169;
  __src[35] = v170;
  memcpy(v167, v16, 0x169uLL);
  v67 = _s10Accelerate4BNNSO17NormalizationTypeOWOg(v167);
  v68 = destructiveProjectEnumData for BNNS.NormalizationType(v167);
  if (v67 >= 2)
  {
    if (v67 == 2)
    {
      v77 = 0;
      v78 = 0uLL;
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
    }

    else
    {
      v77 = *v68;
      v78 = 0uLL;
      v97 = 0u;
      v98 = 0u;
      v99 = 0u;
      v100 = 0u;
      v101 = 0u;
      v102 = 0u;
      v103 = 0u;
      v104 = 0u;
      v105 = 0u;
      v106 = 0u;
    }

    v85 = v78;
    v86 = v78;
    v87 = v78;
    v88 = v78;
    v89 = v78;
    v90 = v78;
    v91 = v78;
    v92 = v78;
    v93 = v78;
    v94 = v78;
    v95 = v78;
    v96 = v78;
  }

  else
  {
    v69 = *(v68 + 144);
    v136 = *(v68 + 128);
    v137 = v69;
    v138 = *(v68 + 160);
    v70 = *(v68 + 80);
    v132 = *(v68 + 64);
    v133 = v70;
    v71 = *(v68 + 112);
    v134 = *(v68 + 96);
    v135 = v71;
    v72 = *(v68 + 16);
    v128 = *v68;
    v129 = v72;
    v73 = *(v68 + 48);
    v130 = *(v68 + 32);
    v131 = v73;
    v74 = *(v68 + 296);
    v148 = *(v68 + 312);
    v75 = *(v68 + 344);
    v149 = *(v68 + 328);
    v150 = v75;
    v144 = *(v68 + 248);
    v76 = *(v68 + 280);
    v145 = *(v68 + 264);
    v139 = *(v68 + 176);
    v151 = *(v68 + 360);
    v146 = v76;
    v147 = v74;
    v140 = *(v68 + 184);
    v141 = *(v68 + 200);
    v142 = *(v68 + 216);
    v143 = *(v68 + 232);
    v111[8] = v136;
    v111[9] = v137;
    v111[10] = v138;
    LOBYTE(v111[11]) = v139;
    v111[4] = v132;
    v111[5] = v133;
    v111[6] = v134;
    v111[7] = v135;
    v111[0] = v128;
    v111[1] = v129;
    v111[2] = v130;
    v111[3] = v131;
    if (_sSo21BNNSNDArrayDescriptoraSgWOg(v111) == 1)
    {
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
    }

    else
    {
      v104 = v136;
      v105 = v137;
      v106 = v138;
      v100 = v132;
      v101 = v133;
      v102 = v134;
      v103 = v135;
      v96 = v128;
      v97 = v129;
      v98 = v130;
      v99 = v131;
    }

    v124[8] = v148;
    v124[9] = v149;
    v124[10] = v150;
    LOBYTE(v124[11]) = v151;
    v124[4] = v144;
    v124[5] = v145;
    v124[6] = v146;
    v124[7] = v147;
    v124[0] = v140;
    v124[1] = v141;
    v124[2] = v142;
    v124[3] = v143;
    if (_sSo21BNNSNDArrayDescriptoraSgWOg(v124) == 1)
    {
      v94 = 0u;
      v95 = 0u;
      v93 = 0u;
      v91 = 0u;
      v92 = 0u;
      v89 = 0u;
      v90 = 0u;
      v87 = 0u;
      v88 = 0u;
      v85 = 0u;
      v86 = 0u;
    }

    else
    {
      v93 = v148;
      v94 = v149;
      v95 = v150;
      v89 = v144;
      v90 = v145;
      v91 = v146;
      v92 = v147;
      v85 = v140;
      v86 = v141;
      v87 = v142;
      v88 = v143;
    }

    v77 = 0;
  }

  v125 = v45;
  v126 = v46;
  BNNS.ActivationFunction.bnnsActivation.getter(v127);
  memcpy(v166, v165, 0x169uLL);
  if (_s10Accelerate4BNNSO17NormalizationTypeOWOg(v166) == 2)
  {
    v79 = *destructiveProjectEnumData for BNNS.NormalizationType(v166);
  }

  else
  {
    v79 = 0;
  }

  v124[7] = v208;
  v124[8] = v209;
  v124[9] = v210;
  v124[10] = v211;
  v124[3] = v204;
  v124[4] = v205;
  v124[5] = v206;
  v124[6] = v207;
  v124[0] = v201;
  v124[1] = v202;
  v124[2] = v203;
  v124[18] = v208;
  v124[19] = v209;
  v124[20] = v210;
  v124[21] = v211;
  v124[14] = v204;
  v124[15] = v205;
  v124[16] = v206;
  v124[17] = v207;
  v124[11] = v201;
  v124[12] = v202;
  v124[13] = v203;
  v124[29] = v197;
  v124[30] = v198;
  v124[31] = v199;
  v124[32] = v200;
  v124[25] = v193;
  v124[26] = v194;
  v124[27] = v195;
  v124[28] = v196;
  v124[22] = v190;
  v124[23] = v191;
  v124[24] = v192;
  v124[40] = v186;
  v124[41] = v187;
  v124[42] = v188;
  v124[43] = v189;
  v124[36] = v182;
  v124[37] = v183;
  v124[38] = v184;
  v124[39] = v185;
  v124[33] = v179;
  v124[34] = v180;
  v124[35] = v181;
  v124[51] = v103;
  v124[52] = v104;
  v124[53] = v105;
  v124[54] = v106;
  v124[47] = v99;
  v124[48] = v100;
  v124[49] = v101;
  v124[50] = v102;
  v124[44] = v96;
  v124[45] = v97;
  v124[46] = v98;
  v124[62] = v92;
  v124[63] = v93;
  v124[64] = v94;
  v124[65] = v95;
  v124[58] = v88;
  v124[59] = v89;
  v124[60] = v90;
  v124[61] = v91;
  v124[55] = v85;
  v124[56] = v86;
  v124[57] = v87;
  memcpy(__dst, __src, sizeof(__dst));
  v120 = 0x7FC0000000000000;
  v121 = 0x17FC00000;
  v122 = 0u;
  v123 = 0u;
  memcpy(v111, v124, sizeof(v111));
  v112 = v24;
  v113 = v22;
  v114 = v127[0];
  v115 = v127[1];
  v116 = v127[2];
  v117 = v77;
  v118 = v79;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySVGMd);
  v80 = swift_allocObject();
  *(v80 + 16) = xmmword_1B7E77850;
  *(v80 + 32) = __dst;
  *(v80 + 40) = v111;
  v84 = v80;
  if (a11 == 1)
  {
    v81 = 0;
  }

  else
  {
    v107 = a9;
    v108 = a10;
    v109 = a11;
    v110 = a12;
    v81 = &v107;
  }

  v82 = closure #1 in closure #1 in closure #1 in BNNS.FusedConvolutionNormalizationLayer.init(input:output:convolutionWeights:convolutionBias:convolutionStride:convolutionDilationStride:convolutionPadding:normalization:normalizationBeta:normalizationGamma:normalizationMomentum:normalizationEpsilon:normalizationActivation:filterParameters:)(v81, v165, &v84, 1);

  type metadata accessor for BNNS.FusedFullyConnectedNormalizationLayer();
  result = swift_allocObject();
  if (v82)
  {
    *(result + 16) = v82;
  }

  else
  {
    type metadata accessor for BNNS.Layer();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return result;
}

void *closure #1 in closure #1 in closure #1 in BNNS.FusedConvolutionNormalizationLayer.init(input:output:convolutionWeights:convolutionBias:convolutionStride:convolutionDilationStride:convolutionPadding:normalization:normalizationBeta:normalizationGamma:normalizationMomentum:normalizationEpsilon:normalizationActivation:filterParameters:)(const BNNSFilterParameters *a1, const void *a2, char **a3, int a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo14BNNSFilterTypeaGMd);
  v8 = swift_allocObject();
  *(v8 + 32) = a4;
  memcpy(v14, a2, 0x169uLL);
  v9 = _s10Accelerate4BNNSO17NormalizationTypeOWOg(v14);
  destructiveProjectEnumData for BNNS.NormalizationType(v14);
  *(v8 + 36) = v9 + 2;
  v10 = *a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a3 = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2), 0, v10);
  }

  *a3 = v10;
  FusedLayer = BNNSFilterCreateFusedLayer(2uLL, (v8 + 32), v10 + 4, a1);
  swift_setDeallocating();
  swift_deallocClassInstance();
  return FusedLayer;
}

unint64_t lazy protocol witness table accessor for type BNNS.LearningPhase and conformance BNNS.LearningPhase()
{
  result = lazy protocol witness table cache variable for type BNNS.LearningPhase and conformance BNNS.LearningPhase;
  if (!lazy protocol witness table cache variable for type BNNS.LearningPhase and conformance BNNS.LearningPhase)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BNNS.LearningPhase and conformance BNNS.LearningPhase);
  }

  return result;
}

uint64_t dispatch thunk of BNNS.FusedLayer.apply(batchSize:input:output:for:)(uint64_t a1, uint64_t *a2, uint64_t *a3, char a4)
{
  v5 = a2[17];
  v6 = *(a2 + 36);
  v7 = a2[19];
  v8 = *(a2 + 40);
  v9 = a3[17];
  v10 = *(a3 + 36);
  v11 = a3[19];
  v12 = *(a3 + 40);
  v13 = *(*v4 + 96);
  v29 = *a2;
  v30 = *(a2 + 1);
  v31 = *(a2 + 3);
  v32 = *(a2 + 5);
  v33 = *(a2 + 7);
  v34 = *(a2 + 9);
  v35 = *(a2 + 11);
  v36 = *(a2 + 13);
  v37 = *(a2 + 15);
  v38 = v5;
  v39 = v6;
  v40 = v7;
  v41 = v8;
  v42 = *(a2 + 164);
  v15 = *a3;
  v16 = *(a3 + 1);
  v17 = *(a3 + 3);
  v18 = *(a3 + 5);
  v19 = *(a3 + 7);
  v20 = *(a3 + 9);
  v21 = *(a3 + 11);
  v22 = *(a3 + 13);
  v23 = *(a3 + 15);
  v24 = v9;
  v25 = v10;
  v26 = v11;
  v27 = v12;
  v28 = *(a3 + 164);
  return v13(a1, &v29, &v15, a4 & 1);
}

uint64_t dispatch thunk of BNNS.FusedLayer.applyBackward(batchSize:input:output:outputGradient:generatingInputGradient:generatingParameterGradients:)(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t a6)
{
  v7 = a2[17];
  v8 = *(a2 + 36);
  v9 = a2[19];
  v10 = *(a2 + 40);
  v11 = a3[17];
  v12 = *(a3 + 36);
  v13 = a3[19];
  v14 = *(a3 + 40);
  v15 = a4[17];
  v16 = *(a4 + 36);
  v17 = a4[19];
  v18 = *(a4 + 40);
  v19 = a5[17];
  v20 = *(a5 + 36);
  v21 = a5[19];
  v22 = *(a5 + 40);
  v29 = *(*v6 + 104);
  v72 = *a2;
  v73 = *(a2 + 1);
  v74 = *(a2 + 3);
  v75 = *(a2 + 5);
  v76 = *(a2 + 7);
  v77 = *(a2 + 9);
  v78 = *(a2 + 11);
  v79 = *(a2 + 13);
  v80 = *(a2 + 15);
  v81 = v7;
  v82 = v8;
  v83 = v9;
  v84 = v10;
  v85 = *(a2 + 164);
  v58 = *a3;
  v59 = *(a3 + 1);
  v60 = *(a3 + 3);
  v61 = *(a3 + 5);
  v62 = *(a3 + 7);
  v63 = *(a3 + 9);
  v64 = *(a3 + 11);
  v65 = *(a3 + 13);
  v66 = *(a3 + 15);
  v67 = v11;
  v68 = v12;
  v69 = v13;
  v70 = v14;
  v71 = *(a3 + 164);
  v44 = *a4;
  v45 = *(a4 + 1);
  v46 = *(a4 + 3);
  v47 = *(a4 + 5);
  v48 = *(a4 + 7);
  v49 = *(a4 + 9);
  v50 = *(a4 + 11);
  v51 = *(a4 + 13);
  v52 = *(a4 + 15);
  v53 = v15;
  v54 = v16;
  v55 = v17;
  v56 = v18;
  v57 = *(a4 + 164);
  v30 = *a5;
  v23 = *(a5 + 3);
  v31 = *(a5 + 1);
  v32 = v23;
  v24 = *(a5 + 7);
  v33 = *(a5 + 5);
  v34 = v24;
  v25 = *(a5 + 11);
  v35 = *(a5 + 9);
  v36 = v25;
  v26 = *(a5 + 15);
  v37 = *(a5 + 13);
  v38 = v26;
  v39 = v19;
  v40 = v20;
  v41 = v21;
  v42 = v22;
  v43 = *(a5 + 164);
  return v29(a1, &v72, &v58, &v44, &v30, a6);
}

uint64_t static BNNSGraph.Builder.OperationParameter.* infix(_:_:)@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, void)@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v21 = *a1;
  v12 = v21;
  v13 = *(a3 + 24);

  v16 = *(a1 + 1);
  v17 = *(a1 + 3);
  *&v22 = a1[1];
  v13(&v24, &v21, a2, a3);

  v21 = v24;
  v22 = v25;
  v23 = v26;
  v18 = v12;
  v20 = v17;
  v19 = v16;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v14 = type metadata accessor for BNNSGraph.Builder.Tensor();
  BNNSGraph.Builder.Tensor.operationHelper(fn:y:funcName:)(a4, &v18, a5, 0xE700000000000000, v14, a6);
}

uint64_t static BNNSGraph.Builder.OperationParameter.* infix(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, void)@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v21 = *a1;
  v11 = *(a1 + 3);
  v22 = *(a1 + 1);
  v23 = v11;
  v15 = v21;
  *&v16 = v22;
  v12 = *(a3 + 24);

  v12(&v18, &v15, a2, a3);

  v15 = v18;
  v16 = v19;
  v17 = v20;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v13 = type metadata accessor for BNNSGraph.Builder.Tensor();
  BNNSGraph.Builder.Tensor.operationHelper(fn:y:funcName:)(a4, &v15, a5, 0xE700000000000000, v13, a6);
}

uint64_t static BNNSGraph.Builder.Tensor<>..== infix(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, void)@<X5>, uint64_t a4@<X6>, uint64_t a5@<X7>, uint64_t a6@<X8>)
{
  v10 = *a2;
  v16 = *a1;
  v11 = *(a1 + 3);
  v17 = *(a1 + 1);
  v18 = v11;
  v13 = v10;
  v14 = *(a2 + 1);
  v15 = *(a2 + 3);
  type metadata accessor for BNNSGraph.Builder.Tensor();
  return BNNSGraph.Builder.Tensor.operationHelper_BOOL(fn:y:funcName:)(a3, &v13, a4, a5, a6);
}

uint64_t static BNNSGraph.Builder.Tensor<>..! prefix(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[4];

  specialized static BNNSGraph.Builder.calculateStride(_:)(MEMORY[0x1E69E7CC0]);

  if (!v5)
  {
    goto LABEL_5;
  }

  if (v4)
  {
    result = _bnns_graph_builder_register_not();
    if (result)
    {
LABEL_6:
      *a2 = v3;
      *(a2 + 8) = v4;
      *(a2 + 16) = xmmword_1B7E77980;
      *(a2 + 32) = result;
      return result;
    }

    swift_beginAccess();

    MEMORY[0x1B8CB1340](0xD000000000000011, 0x80000001B7E7CCC0);
    swift_endAccess();

LABEL_5:
    result = 0;
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t static BNNSGraph.Builder.Tensor<>..& infix(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[4];
  v7 = *(a2 + 32);

  specialized static BNNSGraph.Builder.calculateStride(_:)(MEMORY[0x1E69E7CC0]);

  if (!v6 || !v7)
  {
    goto LABEL_6;
  }

  if (v5)
  {
    result = _bnns_graph_builder_register_and();
    if (result)
    {
LABEL_7:
      *a3 = v4;
      *(a3 + 8) = v5;
      *(a3 + 16) = xmmword_1B7E77980;
      *(a3 + 32) = result;
      return result;
    }

    swift_beginAccess();

    MEMORY[0x1B8CB1340](0xD000000000000013, 0x80000001B7E7CCE0);
    swift_endAccess();

LABEL_6:
    result = 0;
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t static BNNSGraph.Builder.Tensor<>..| infix(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[4];
  v7 = *(a2 + 32);

  specialized static BNNSGraph.Builder.calculateStride(_:)(MEMORY[0x1E69E7CC0]);

  if (!v6 || !v7)
  {
    goto LABEL_6;
  }

  if (v5)
  {
    result = _bnns_graph_builder_register_or();
    if (result)
    {
LABEL_7:
      *a3 = v4;
      *(a3 + 8) = v5;
      *(a3 + 16) = xmmword_1B7E77980;
      *(a3 + 32) = result;
      return result;
    }

    swift_beginAccess();

    MEMORY[0x1B8CB1340](0xD000000000000013, 0x80000001B7E7CD00);
    swift_endAccess();

LABEL_6:
    result = 0;
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t static BNNSGraph.Builder.Tensor<>..^ infix(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[4];
  v7 = *(a2 + 32);

  specialized static BNNSGraph.Builder.calculateStride(_:)(MEMORY[0x1E69E7CC0]);

  if (!v6 || !v7)
  {
    goto LABEL_6;
  }

  if (v5)
  {
    result = _bnns_graph_builder_register_xor();
    if (result)
    {
LABEL_7:
      *a3 = v4;
      *(a3 + 8) = v5;
      *(a3 + 16) = xmmword_1B7E77980;
      *(a3 + 32) = result;
      return result;
    }

    swift_beginAccess();

    MEMORY[0x1B8CB1340](0xD000000000000013, 0x80000001B7E7CD20);
    swift_endAccess();

LABEL_6:
    result = 0;
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t vImage.PixelBuffer<>.flatten(channelOrdering:backgroundColor:isPremultiplied:destination:)(_BYTE *a1, char a2, char a3, char a4, char a5, char a6, uint64_t a7)
{
  v22[4] = *MEMORY[0x1E69E9840];
  v8 = *v7;
  if (!*(*v7 + 16))
  {
    __break(1u);
    goto LABEL_17;
  }

  v9 = v8[6];
  if (v9 < 0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v10 = v8[5];
  if (v10 < 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v9)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (!v10)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v11 = *a7;
  if (!*(*a7 + 16))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v12 = v11[6];
  if (v12 < 0)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v13 = v11[5];
  if (v13 < 0)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (!v12)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (!v13)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v9 != v12)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  if (v10 != v13)
  {
    goto LABEL_27;
  }

  v14 = @nonobjc vImageFlatten_ARGB8888ToRGB888(_:_:_:_:_:);
  v15 = v8[4];
  v16 = v8[7];
  if (*a1)
  {
    v14 = @nonobjc vImageFlatten_RGBA8888ToRGB888(_:_:_:_:_:);
  }

  v22[0] = v15;
  v22[1] = v10;
  v22[2] = v9;
  v22[3] = v16;
  v17 = v11[4];
  v18 = v11[7];
  v21[0] = v17;
  v21[1] = v10;
  v21[2] = v9;
  v21[3] = v18;
  v20[0] = a2;
  v20[1] = a3;
  v20[2] = a4;
  v20[3] = a5;
  return v14(v22, v21, v20, a6 & 1, 0);
}

uint64_t vImage.PixelBuffer<>.flatten(channelOrdering:backgroundColor:isPremultiplied:destination:)(_BYTE *a1, char a2, uint64_t a3, float a4, float a5, float a6, float a7)
{
  v22[4] = *MEMORY[0x1E69E9840];
  v8 = *v7;
  if (!*(*v7 + 16))
  {
    __break(1u);
    goto LABEL_17;
  }

  v9 = v8[6];
  if (v9 < 0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v10 = v8[5];
  if (v10 < 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v9)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (!v10)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v11 = *a3;
  if (!*(*a3 + 16))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v12 = v11[6];
  if (v12 < 0)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v13 = v11[5];
  if (v13 < 0)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (!v12)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (!v13)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v9 != v12)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  if (v10 != v13)
  {
    goto LABEL_27;
  }

  v14 = @nonobjc vImageFlatten_ARGBFFFFToRGBFFF(_:_:_:_:_:);
  v15 = v8[4];
  v16 = v8[7];
  if (*a1)
  {
    v14 = @nonobjc vImageFlatten_RGBAFFFFToRGBFFF(_:_:_:_:_:);
  }

  v22[0] = v15;
  v22[1] = v10;
  v22[2] = v9;
  v22[3] = v16;
  v17 = v11[4];
  v18 = v11[7];
  v21[0] = v17;
  v21[1] = v10;
  v21[2] = v9;
  v21[3] = v18;
  *v20 = a4;
  *&v20[1] = a5;
  *&v20[2] = a6;
  *&v20[3] = a7;
  return v14(v22, v21, v20, a2 & 1, 0);
}

Swift::Int vImage.ChannelOrdering.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1B8CB1810](v1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type vImage.ChannelOrdering and conformance vImage.ChannelOrdering()
{
  result = lazy protocol witness table cache variable for type vImage.ChannelOrdering and conformance vImage.ChannelOrdering;
  if (!lazy protocol witness table cache variable for type vImage.ChannelOrdering and conformance vImage.ChannelOrdering)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type vImage.ChannelOrdering and conformance vImage.ChannelOrdering);
  }

  return result;
}

uint64_t static BNNS.tile(input:output:filterParameters:)(__int128 *a1, __int128 *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v54 = *MEMORY[0x1E69E9840];
  if (a5 != 1)
  {
    v28 = a3;
    v29 = a4;
    v30 = a5;
    v31 = a6;
    v17 = a1[9];
    v51 = a1[8];
    v52 = v17;
    v53 = a1[10];
    v18 = a1[5];
    v47 = a1[4];
    v48 = v18;
    v19 = a1[7];
    v49 = a1[6];
    v50 = v19;
    v20 = a1[1];
    v43 = *a1;
    v44 = v20;
    v21 = a1[3];
    v45 = a1[2];
    v46 = v21;
    v22 = a2[9];
    v40 = a2[8];
    v41 = v22;
    v42 = a2[10];
    v23 = a2[5];
    v36 = a2[4];
    v37 = v23;
    v24 = a2[7];
    v38 = a2[6];
    v39 = v24;
    v25 = a2[1];
    v32 = *a2;
    v33 = v25;
    v26 = a2[3];
    v34 = a2[2];
    v35 = v26;
    result = MEMORY[0x1B8CB1E70](&v43, &v32, &v28);
    if (!result)
    {
      return result;
    }

    goto LABEL_5;
  }

  v6 = a1[9];
  v51 = a1[8];
  v52 = v6;
  v53 = a1[10];
  v7 = a1[5];
  v47 = a1[4];
  v48 = v7;
  v8 = a1[7];
  v49 = a1[6];
  v50 = v8;
  v9 = a1[1];
  v43 = *a1;
  v44 = v9;
  v10 = a1[3];
  v45 = a1[2];
  v46 = v10;
  v11 = a2[9];
  v40 = a2[8];
  v41 = v11;
  v42 = a2[10];
  v12 = a2[5];
  v36 = a2[4];
  v37 = v12;
  v13 = a2[7];
  v38 = a2[6];
  v39 = v13;
  v14 = a2[1];
  v32 = *a2;
  v33 = v14;
  v15 = a2[3];
  v34 = a2[2];
  v35 = v15;
  result = MEMORY[0x1B8CB1E70](&v43, &v32, 0);
  if (result)
  {
LABEL_5:
    lazy protocol witness table accessor for type BNNS.Error and conformance BNNS.Error();
    swift_allocError();
    *v27 = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t static BNNS.tileBackward(outputGradient:generatingInputGradient:filterParameters:)(__int128 *a1, __int128 *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v54 = *MEMORY[0x1E69E9840];
  if (a5 != 1)
  {
    v28 = a3;
    v29 = a4;
    v30 = a5;
    v31 = a6;
    v17 = a1[9];
    v51 = a1[8];
    v52 = v17;
    v53 = a1[10];
    v18 = a1[5];
    v47 = a1[4];
    v48 = v18;
    v19 = a1[7];
    v49 = a1[6];
    v50 = v19;
    v20 = a1[1];
    v43 = *a1;
    v44 = v20;
    v21 = a1[3];
    v45 = a1[2];
    v46 = v21;
    v22 = a2[9];
    v40 = a2[8];
    v41 = v22;
    v42 = a2[10];
    v23 = a2[5];
    v36 = a2[4];
    v37 = v23;
    v24 = a2[7];
    v38 = a2[6];
    v39 = v24;
    v25 = a2[1];
    v32 = *a2;
    v33 = v25;
    v26 = a2[3];
    v34 = a2[2];
    v35 = v26;
    result = MEMORY[0x1B8CB1E80](&v32, &v43, &v28);
    if (!result)
    {
      return result;
    }

    goto LABEL_5;
  }

  v6 = a1[9];
  v51 = a1[8];
  v52 = v6;
  v53 = a1[10];
  v7 = a1[5];
  v47 = a1[4];
  v48 = v7;
  v8 = a1[7];
  v49 = a1[6];
  v50 = v8;
  v9 = a1[1];
  v43 = *a1;
  v44 = v9;
  v10 = a1[3];
  v45 = a1[2];
  v46 = v10;
  v11 = a2[9];
  v40 = a2[8];
  v41 = v11;
  v42 = a2[10];
  v12 = a2[5];
  v36 = a2[4];
  v37 = v12;
  v13 = a2[7];
  v38 = a2[6];
  v39 = v13;
  v14 = a2[1];
  v32 = *a2;
  v33 = v14;
  v15 = a2[3];
  v34 = a2[2];
  v35 = v15;
  result = MEMORY[0x1B8CB1E80](&v32, &v43, 0);
  if (result)
  {
LABEL_5:
    lazy protocol witness table accessor for type BNNS.Error and conformance BNNS.Error();
    swift_allocError();
    *v27 = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t static BNNS.copyBandPart(_:to:lowerBandCount:upperBandCount:filterParameters:)(_OWORD *a1, _OWORD *a2, uint64_t a3, char a4, uint64_t a5, char a6, uint32_t a7, size_t a8, int (__cdecl *a9)(void **, size_t, size_t), void (__cdecl *a10)(void *))
{
  v39 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    a3 = -1;
  }

  if (a3 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (a3 > 0x7FFFFFFF)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }

  if (a6)
  {
    a5 = -1;
  }

  if (a5 < 0xFFFFFFFF80000000)
  {
    goto LABEL_19;
  }

  if (a5 > 0x7FFFFFFF)
  {
    goto LABEL_20;
  }

  if (a9 == 1)
  {
    v14 = a1[9];
    *&input.stride[7] = a1[8];
    *&input.data_type = v14;
    *&input.table_data_type = a1[10];
    v15 = a1[5];
    *&input.size[7] = a1[4];
    *&input.stride[1] = v15;
    v16 = a1[7];
    *&input.stride[3] = a1[6];
    *&input.stride[5] = v16;
    v17 = a1[1];
    *&input.flags = *a1;
    *&input.size[1] = v17;
    v18 = a1[3];
    *&input.size[3] = a1[2];
    *&input.size[5] = v18;
    v19 = a2[9];
    *&output.stride[7] = a2[8];
    *&output.data_type = v19;
    *&output.table_data_type = a2[10];
    v20 = a2[5];
    *&output.size[7] = a2[4];
    *&output.stride[1] = v20;
    v21 = a2[7];
    *&output.stride[3] = a2[6];
    *&output.stride[5] = v21;
    v22 = a2[1];
    *&output.flags = *a2;
    *&output.size[1] = v22;
    v23 = a2[3];
    *&output.size[3] = a2[2];
    *&output.size[5] = v23;
    result = BNNSBandPart(a3, a5, &input, &output, 0);
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v36.flags = a7;
    v36.n_threads = a8;
    v36.alloc_memory = a9;
    v36.free_memory = a10;
    v25 = a1[9];
    *&input.stride[7] = a1[8];
    *&input.data_type = v25;
    *&input.table_data_type = a1[10];
    v26 = a1[5];
    *&input.size[7] = a1[4];
    *&input.stride[1] = v26;
    v27 = a1[7];
    *&input.stride[3] = a1[6];
    *&input.stride[5] = v27;
    v28 = a1[1];
    *&input.flags = *a1;
    *&input.size[1] = v28;
    v29 = a1[3];
    *&input.size[3] = a1[2];
    *&input.size[5] = v29;
    v30 = a2[9];
    *&output.stride[7] = a2[8];
    *&output.data_type = v30;
    *&output.table_data_type = a2[10];
    v31 = a2[5];
    *&output.size[7] = a2[4];
    *&output.stride[1] = v31;
    v32 = a2[7];
    *&output.stride[3] = a2[6];
    *&output.stride[5] = v32;
    v33 = a2[1];
    *&output.flags = *a2;
    *&output.size[1] = v33;
    v34 = a2[3];
    *&output.size[3] = a2[2];
    *&output.size[5] = v34;
    result = BNNSBandPart(a3, a5, &input, &output, &v36);
    if (!result)
    {
      return result;
    }
  }

  lazy protocol witness table accessor for type BNNS.Error and conformance BNNS.Error();
  swift_allocError();
  *v35 = 0;
  return swift_willThrow();
}

uint64_t BNNS.CropResizeLayer.__allocating_init(coordinatesAreNormalized:spatialScale:extrapolationValue:samplingMode:boxCoordinateMode:)(char a1, unsigned __int8 *a2, unsigned __int8 *a3, float a4, float a5)
{
  result = swift_allocObject();
  v11 = *a2;
  v12 = *a3;
  *(result + 16) = a1;
  *(result + 20) = a4;
  *(result + 24) = a5;
  *(result + 28) = v11;
  *(result + 32) = v12;
  *(result + 36) = 1;
  return result;
}

uint64_t BNNS.CropResizeLayer.init(coordinatesAreNormalized:spatialScale:extrapolationValue:samplingMode:boxCoordinateMode:)(char a1, unsigned __int8 *a2, unsigned __int8 *a3, float a4, float a5)
{
  v6 = *a2;
  v7 = *a3;
  *(v5 + 16) = a1;
  *(v5 + 20) = a4;
  *(v5 + 24) = a5;
  *(v5 + 28) = v6;
  *(v5 + 32) = v7;
  *(v5 + 36) = 1;
  return v5;
}

uint64_t BNNS.CropResizeLayer.apply(input:regionOfInterest:output:filterParameters:)(__int128 *a1, __int128 *a2, __int128 *a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v94 = *MEMORY[0x1E69E9840];
  if (a6 != 1)
  {
    v55 = *(v7 + 20);
    v56 = *(v7 + 28);
    v31 = a1[8];
    v32 = a1[9];
    v33 = a1[6];
    v90 = a1[7];
    v91 = v31;
    v34 = a1[10];
    v92 = v32;
    v93 = v34;
    v35 = a1[4];
    v36 = a1[5];
    v37 = a1[2];
    v86 = a1[3];
    v87 = v35;
    v88 = v36;
    v89 = v33;
    v38 = *a1;
    v84 = a1[1];
    v85 = v37;
    v39 = a2[9];
    v80 = a2[8];
    v81 = v39;
    v82 = a2[10];
    v83 = v38;
    v40 = a2[5];
    v76 = a2[4];
    v77 = v40;
    v41 = a2[7];
    v78 = a2[6];
    v79 = v41;
    v42 = a2[1];
    v72 = *a2;
    v73 = v42;
    v43 = a2[3];
    v74 = a2[2];
    v75 = v43;
    v44 = a3[8];
    v45 = a3[9];
    v46 = a3[6];
    v68 = a3[7];
    v69 = v44;
    v47 = a3[10];
    v70 = v45;
    v71 = v47;
    v49 = a3[4];
    v48 = a3[5];
    *&v59[4] = a5;
    *&v59[12] = a6;
    v60 = a7;
    v50 = *(v7 + 36);
    v54[0] = *(v7 + 16);
    v57 = v50;
    v58 = a4;
    v66 = v48;
    v67 = v46;
    v51 = a3[1];
    v61 = *a3;
    v62 = v51;
    v52 = a3[2];
    v64 = a3[3];
    v65 = v49;
    v63 = v52;
    result = MEMORY[0x1B8CB1950](v54, &v83, &v72, &v61, &v58);
    if (!result)
    {
      return result;
    }

    goto LABEL_5;
  }

  *v59 = *(v7 + 20);
  *&v59[8] = *(v7 + 28);
  v8 = a1[8];
  v9 = a1[9];
  v10 = a1[6];
  v90 = a1[7];
  v91 = v8;
  v11 = a1[10];
  v92 = v9;
  v93 = v11;
  v12 = a1[4];
  v13 = a1[5];
  v14 = a1[2];
  v86 = a1[3];
  v87 = v12;
  v88 = v13;
  v89 = v10;
  v15 = *a1;
  v84 = a1[1];
  v85 = v14;
  v16 = a2[9];
  v80 = a2[8];
  v81 = v16;
  v82 = a2[10];
  v83 = v15;
  v17 = a2[5];
  v76 = a2[4];
  v77 = v17;
  v18 = a2[7];
  v78 = a2[6];
  v79 = v18;
  v19 = a2[1];
  v72 = *a2;
  v73 = v19;
  v20 = a2[3];
  v74 = a2[2];
  v75 = v20;
  v21 = a3[8];
  v22 = a3[9];
  v23 = a3[6];
  v68 = a3[7];
  v69 = v21;
  v24 = a3[10];
  v70 = v22;
  v71 = v24;
  v26 = a3[4];
  v25 = a3[5];
  v27 = *(v7 + 36);
  LOBYTE(v58) = *(v7 + 16);
  *&v59[16] = v27;
  v66 = v25;
  v67 = v23;
  v28 = a3[1];
  v61 = *a3;
  v62 = v28;
  v29 = a3[2];
  v64 = a3[3];
  v65 = v26;
  v63 = v29;
  result = MEMORY[0x1B8CB1950](&v58, &v83, &v72, &v61, 0);
  if (result)
  {
LABEL_5:
    lazy protocol witness table accessor for type BNNS.Error and conformance BNNS.Error();
    swift_allocError();
    *v53 = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t BNNS.CropResizeLayer.applyBackward(regionOfInterest:outputGradient:generatingInputGradient:filterParameters:)(__int128 *a1, __int128 *a2, __int128 *a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v94 = *MEMORY[0x1E69E9840];
  if (a6 != 1)
  {
    v55 = *(v7 + 20);
    v56 = *(v7 + 28);
    v31 = a3[8];
    v32 = a3[9];
    v33 = a3[6];
    v90 = a3[7];
    v91 = v31;
    v34 = a3[10];
    v92 = v32;
    v93 = v34;
    v35 = a3[4];
    v36 = a3[5];
    v37 = a3[2];
    v86 = a3[3];
    v87 = v35;
    v88 = v36;
    v89 = v33;
    v38 = *a3;
    v84 = a3[1];
    v85 = v37;
    v39 = a1[9];
    v80 = a1[8];
    v81 = v39;
    v82 = a1[10];
    v83 = v38;
    v40 = a1[5];
    v76 = a1[4];
    v77 = v40;
    v41 = a1[7];
    v78 = a1[6];
    v79 = v41;
    v42 = a1[1];
    v72 = *a1;
    v73 = v42;
    v43 = a1[3];
    v74 = a1[2];
    v75 = v43;
    v44 = a2[8];
    v45 = a2[9];
    v46 = a2[6];
    v68 = a2[7];
    v69 = v44;
    v47 = a2[10];
    v70 = v45;
    v71 = v47;
    v49 = a2[4];
    v48 = a2[5];
    *&v59[4] = a5;
    *&v59[12] = a6;
    v60 = a7;
    v50 = *(v7 + 36);
    v54[0] = *(v7 + 16);
    v57 = v50;
    v58 = a4;
    v66 = v48;
    v67 = v46;
    v51 = a2[1];
    v61 = *a2;
    v62 = v51;
    v52 = a2[2];
    v64 = a2[3];
    v65 = v49;
    v63 = v52;
    result = MEMORY[0x1B8CB1960](v54, &v83, &v72, &v61, &v58);
    if (!result)
    {
      return result;
    }

    goto LABEL_5;
  }

  *v59 = *(v7 + 20);
  *&v59[8] = *(v7 + 28);
  v8 = a3[8];
  v9 = a3[9];
  v10 = a3[6];
  v90 = a3[7];
  v91 = v8;
  v11 = a3[10];
  v92 = v9;
  v93 = v11;
  v12 = a3[4];
  v13 = a3[5];
  v14 = a3[2];
  v86 = a3[3];
  v87 = v12;
  v88 = v13;
  v89 = v10;
  v15 = *a3;
  v84 = a3[1];
  v85 = v14;
  v16 = a1[9];
  v80 = a1[8];
  v81 = v16;
  v82 = a1[10];
  v83 = v15;
  v17 = a1[5];
  v76 = a1[4];
  v77 = v17;
  v18 = a1[7];
  v78 = a1[6];
  v79 = v18;
  v19 = a1[1];
  v72 = *a1;
  v73 = v19;
  v20 = a1[3];
  v74 = a1[2];
  v75 = v20;
  v21 = a2[8];
  v22 = a2[9];
  v23 = a2[6];
  v68 = a2[7];
  v69 = v21;
  v24 = a2[10];
  v70 = v22;
  v71 = v24;
  v26 = a2[4];
  v25 = a2[5];
  v27 = *(v7 + 36);
  LOBYTE(v58) = *(v7 + 16);
  *&v59[16] = v27;
  v66 = v25;
  v67 = v23;
  v28 = a2[1];
  v61 = *a2;
  v62 = v28;
  v29 = a2[2];
  v64 = a2[3];
  v65 = v26;
  v63 = v29;
  result = MEMORY[0x1B8CB1960](&v58, &v83, &v72, &v61, 0);
  if (result)
  {
LABEL_5:
    lazy protocol witness table accessor for type BNNS.Error and conformance BNNS.Error();
    swift_allocError();
    *v53 = 0;
    return swift_willThrow();
  }

  return result;
}

Swift::Int BNNS.ShuffleType.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1B8CB1810](v1);
  return Hasher._finalize()();
}

uint64_t static BNNS.shuffle(_:input:output:filterParameters:)(unsigned __int8 *a1, _OWORD *a2, _OWORD *a3, uint32_t a4, size_t a5, int (__cdecl *a6)(void **, size_t, size_t), void (__cdecl *a7)(void *))
{
  v33 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  if (a6 != 1)
  {
    v30.flags = a4;
    v30.n_threads = a5;
    v30.alloc_memory = a6;
    v30.free_memory = a7;
    v19 = a2[9];
    *&input.stride[7] = a2[8];
    *&input.data_type = v19;
    *&input.table_data_type = a2[10];
    v20 = a2[5];
    *&input.size[7] = a2[4];
    *&input.stride[1] = v20;
    v21 = a2[7];
    *&input.stride[3] = a2[6];
    *&input.stride[5] = v21;
    v22 = a2[1];
    *&input.flags = *a2;
    *&input.size[1] = v22;
    v23 = a2[3];
    *&input.size[3] = a2[2];
    *&input.size[5] = v23;
    v24 = a3[9];
    *&output.stride[7] = a3[8];
    *&output.data_type = v24;
    *&output.table_data_type = a3[10];
    v25 = a3[5];
    *&output.size[7] = a3[4];
    *&output.stride[1] = v25;
    v26 = a3[7];
    *&output.stride[3] = a3[6];
    *&output.stride[5] = v26;
    v27 = a3[1];
    *&output.flags = *a3;
    *&output.size[1] = v27;
    v28 = a3[3];
    *&output.size[3] = a3[2];
    *&output.size[5] = v28;
    result = BNNSShuffle(v7, &input, &output, &v30);
    if (!result)
    {
      return result;
    }

    goto LABEL_5;
  }

  v8 = a2[9];
  *&input.stride[7] = a2[8];
  *&input.data_type = v8;
  *&input.table_data_type = a2[10];
  v9 = a2[5];
  *&input.size[7] = a2[4];
  *&input.stride[1] = v9;
  v10 = a2[7];
  *&input.stride[3] = a2[6];
  *&input.stride[5] = v10;
  v11 = a2[1];
  *&input.flags = *a2;
  *&input.size[1] = v11;
  v12 = a2[3];
  *&input.size[3] = a2[2];
  *&input.size[5] = v12;
  v13 = a3[9];
  *&output.stride[7] = a3[8];
  *&output.data_type = v13;
  *&output.table_data_type = a3[10];
  v14 = a3[5];
  *&output.size[7] = a3[4];
  *&output.stride[1] = v14;
  v15 = a3[7];
  *&output.stride[3] = a3[6];
  *&output.stride[5] = v15;
  v16 = a3[1];
  *&output.flags = *a3;
  *&output.size[1] = v16;
  v17 = a3[3];
  *&output.size[3] = a3[2];
  *&output.size[5] = v17;
  result = BNNSShuffle(v7, &input, &output, 0);
  if (result)
  {
LABEL_5:
    lazy protocol witness table accessor for type BNNS.Error and conformance BNNS.Error();
    swift_allocError();
    *v29 = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t BNNSNDArrayDescriptor.dataSize.getter()
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = v0[9];
  v7[8] = v0[8];
  v7[9] = v1;
  v7[10] = v0[10];
  v2 = v0[5];
  v7[4] = v0[4];
  v7[5] = v2;
  v3 = v0[7];
  v7[6] = v0[6];
  v7[7] = v3;
  v4 = v0[1];
  v7[0] = *v0;
  v7[1] = v4;
  v5 = v0[3];
  v7[2] = v0[2];
  v7[3] = v5;
  return MEMORY[0x1B8CB1D40](v7);
}

uint64_t static BNNS.gather(input:indices:output:axis:filterParameters:)(_OWORD *a1, _OWORD *a2, _OWORD *a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v32 = *MEMORY[0x1E69E9840];
  v8 = a1[9];
  v31[8] = a1[8];
  v31[9] = v8;
  v31[10] = a1[10];
  v9 = a1[5];
  v31[4] = a1[4];
  v31[5] = v9;
  v10 = a1[7];
  v31[6] = a1[6];
  v31[7] = v10;
  v11 = a1[1];
  v31[0] = *a1;
  v31[1] = v11;
  v12 = a1[3];
  v31[2] = a1[2];
  v31[3] = v12;
  v13 = a2[9];
  v30[8] = a2[8];
  v30[9] = v13;
  v30[10] = a2[10];
  v14 = a2[5];
  v30[4] = a2[4];
  v30[5] = v14;
  v15 = a2[7];
  v30[6] = a2[6];
  v30[7] = v15;
  v16 = a2[1];
  v30[0] = *a2;
  v30[1] = v16;
  v17 = a2[3];
  v30[2] = a2[2];
  v30[3] = v17;
  v18 = a3[9];
  v29[8] = a3[8];
  v29[9] = v18;
  v29[10] = a3[10];
  v19 = a3[5];
  v29[4] = a3[4];
  v29[5] = v19;
  v20 = a3[7];
  v29[6] = a3[6];
  v29[7] = v20;
  v21 = a3[1];
  v29[0] = *a3;
  v29[1] = v21;
  v22 = a3[3];
  v29[2] = a3[2];
  v29[3] = v22;
  if (a7 != 1)
  {
    v25 = a5;
    v26 = a6;
    v27 = a7;
    v28 = a8;
    result = MEMORY[0x1B8CB1B60](a4, v31, v30, v29, &v25);
    if (!result)
    {
      return result;
    }

    goto LABEL_5;
  }

  result = MEMORY[0x1B8CB1B60](a4, v31, v30, v29, 0);
  if (result)
  {
LABEL_5:
    lazy protocol witness table accessor for type BNNS.Error and conformance BNNS.Error();
    swift_allocError();
    *v24 = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t static BNNS.gatherND(input:indices:output:filterParameters:)(_OWORD *a1, _OWORD *a2, _OWORD *a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v31 = *MEMORY[0x1E69E9840];
  v7 = a1[9];
  v30[8] = a1[8];
  v30[9] = v7;
  v30[10] = a1[10];
  v8 = a1[5];
  v30[4] = a1[4];
  v30[5] = v8;
  v9 = a1[7];
  v30[6] = a1[6];
  v30[7] = v9;
  v10 = a1[1];
  v30[0] = *a1;
  v30[1] = v10;
  v11 = a1[3];
  v30[2] = a1[2];
  v30[3] = v11;
  v12 = a2[9];
  v29[8] = a2[8];
  v29[9] = v12;
  v29[10] = a2[10];
  v13 = a2[5];
  v29[4] = a2[4];
  v29[5] = v13;
  v14 = a2[7];
  v29[6] = a2[6];
  v29[7] = v14;
  v15 = a2[1];
  v29[0] = *a2;
  v29[1] = v15;
  v16 = a2[3];
  v29[2] = a2[2];
  v29[3] = v16;
  v17 = a3[9];
  v28[8] = a3[8];
  v28[9] = v17;
  v28[10] = a3[10];
  v18 = a3[5];
  v28[4] = a3[4];
  v28[5] = v18;
  v19 = a3[7];
  v28[6] = a3[6];
  v28[7] = v19;
  v20 = a3[1];
  v28[0] = *a3;
  v28[1] = v20;
  v21 = a3[3];
  v28[2] = a3[2];
  v28[3] = v21;
  if (a6 != 1)
  {
    v24 = a4;
    v25 = a5;
    v26 = a6;
    v27 = a7;
    result = MEMORY[0x1B8CB1B70](v30, v29, v28, &v24);
    if (!result)
    {
      return result;
    }

    goto LABEL_5;
  }

  result = MEMORY[0x1B8CB1B70](v30, v29, v28, 0);
  if (result)
  {
LABEL_5:
    lazy protocol witness table accessor for type BNNS.Error and conformance BNNS.Error();
    swift_allocError();
    *v23 = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t static BNNS.scatter(input:indices:output:axis:reductionFunction:filterParameters:)(_OWORD *a1, _OWORD *a2, _OWORD *a3, uint64_t a4, int *a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v37 = *MEMORY[0x1E69E9840];
  v9 = *a5;
  v10 = *(a5 + 4);
  v11 = a1[9];
  v36[8] = a1[8];
  v36[9] = v11;
  v36[10] = a1[10];
  v12 = a1[5];
  v36[4] = a1[4];
  v36[5] = v12;
  v13 = a1[7];
  v36[6] = a1[6];
  v36[7] = v13;
  v14 = a1[1];
  v36[0] = *a1;
  v36[1] = v14;
  v15 = a1[3];
  v36[2] = a1[2];
  v36[3] = v15;
  v16 = a2[9];
  v35[8] = a2[8];
  v35[9] = v16;
  v35[10] = a2[10];
  v17 = a2[5];
  v35[4] = a2[4];
  v35[5] = v17;
  v18 = a2[7];
  v35[6] = a2[6];
  v35[7] = v18;
  v19 = a2[1];
  v35[0] = *a2;
  v35[1] = v19;
  v20 = a2[3];
  v35[2] = a2[2];
  v35[3] = v20;
  v21 = a3[9];
  v34[8] = a3[8];
  v34[9] = v21;
  v34[10] = a3[10];
  v22 = a3[5];
  v34[4] = a3[4];
  v34[5] = v22;
  v23 = a3[7];
  v34[6] = a3[6];
  v34[7] = v23;
  v24 = a3[1];
  v34[0] = *a3;
  v34[1] = v24;
  v25 = a3[3];
  v34[2] = a3[2];
  v34[3] = v25;
  if (a8 == 1)
  {
    if (v10)
    {
      v26 = dword_1B7E77C00[v9];
    }

    else
    {
      v26 = 8;
    }

    result = MEMORY[0x1B8CB1E40](a4, v26, v36, v35, v34, 0);
    if (!result)
    {
      return result;
    }

LABEL_11:
    lazy protocol witness table accessor for type BNNS.Error and conformance BNNS.Error();
    swift_allocError();
    *v29 = 0;
    return swift_willThrow();
  }

  v30 = a6;
  v31 = a7;
  v32 = a8;
  v33 = a9;
  if (v10)
  {
    v27 = dword_1B7E77C00[v9];
  }

  else
  {
    v27 = 8;
  }

  result = MEMORY[0x1B8CB1E40](a4, v27, v36, v35, v34, &v30);
  if (result)
  {
    goto LABEL_11;
  }

  return result;
}

uint64_t static BNNS.scatterND(input:indices:output:reductionFunction:filterParameters:)(_OWORD *a1, _OWORD *a2, _OWORD *a3, int *a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = *MEMORY[0x1E69E9840];
  v8 = *a4;
  v9 = *(a4 + 4);
  v10 = a1[9];
  v35[8] = a1[8];
  v35[9] = v10;
  v35[10] = a1[10];
  v11 = a1[5];
  v35[4] = a1[4];
  v35[5] = v11;
  v12 = a1[7];
  v35[6] = a1[6];
  v35[7] = v12;
  v13 = a1[1];
  v35[0] = *a1;
  v35[1] = v13;
  v14 = a1[3];
  v35[2] = a1[2];
  v35[3] = v14;
  v15 = a2[9];
  v34[8] = a2[8];
  v34[9] = v15;
  v34[10] = a2[10];
  v16 = a2[5];
  v34[4] = a2[4];
  v34[5] = v16;
  v17 = a2[7];
  v34[6] = a2[6];
  v34[7] = v17;
  v18 = a2[1];
  v34[0] = *a2;
  v34[1] = v18;
  v19 = a2[3];
  v34[2] = a2[2];
  v34[3] = v19;
  v20 = a3[9];
  v33[8] = a3[8];
  v33[9] = v20;
  v33[10] = a3[10];
  v21 = a3[5];
  v33[4] = a3[4];
  v33[5] = v21;
  v22 = a3[7];
  v33[6] = a3[6];
  v33[7] = v22;
  v23 = a3[1];
  v33[0] = *a3;
  v33[1] = v23;
  v24 = a3[3];
  v33[2] = a3[2];
  v33[3] = v24;
  if (a7 == 1)
  {
    if (v9)
    {
      v25 = dword_1B7E77C00[v8];
    }

    else
    {
      v25 = 8;
    }

    result = MEMORY[0x1B8CB1E50](v25, v35, v34, v33, 0);
    if (!result)
    {
      return result;
    }

LABEL_11:
    lazy protocol witness table accessor for type BNNS.Error and conformance BNNS.Error();
    swift_allocError();
    *v28 = 0;
    return swift_willThrow();
  }

  v29 = a5;
  v30 = a6;
  v31 = a7;
  v32 = a8;
  if (v9)
  {
    v26 = dword_1B7E77C00[v8];
  }

  else
  {
    v26 = 8;
  }

  result = MEMORY[0x1B8CB1E50](v26, v35, v34, v33, &v29);
  if (result)
  {
    goto LABEL_11;
  }

  return result;
}

uint64_t static BNNS.scatter(input:indices:output:axis:filterParameters:)(_OWORD *a1, _OWORD *a2, _OWORD *a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v32 = *MEMORY[0x1E69E9840];
  v8 = a1[9];
  v31[8] = a1[8];
  v31[9] = v8;
  v31[10] = a1[10];
  v9 = a1[5];
  v31[4] = a1[4];
  v31[5] = v9;
  v10 = a1[7];
  v31[6] = a1[6];
  v31[7] = v10;
  v11 = a1[1];
  v31[0] = *a1;
  v31[1] = v11;
  v12 = a1[3];
  v31[2] = a1[2];
  v31[3] = v12;
  v13 = a2[9];
  v30[8] = a2[8];
  v30[9] = v13;
  v30[10] = a2[10];
  v14 = a2[5];
  v30[4] = a2[4];
  v30[5] = v14;
  v15 = a2[7];
  v30[6] = a2[6];
  v30[7] = v15;
  v16 = a2[1];
  v30[0] = *a2;
  v30[1] = v16;
  v17 = a2[3];
  v30[2] = a2[2];
  v30[3] = v17;
  v18 = a3[9];
  v29[8] = a3[8];
  v29[9] = v18;
  v29[10] = a3[10];
  v19 = a3[5];
  v29[4] = a3[4];
  v29[5] = v19;
  v20 = a3[7];
  v29[6] = a3[6];
  v29[7] = v20;
  v21 = a3[1];
  v29[0] = *a3;
  v29[1] = v21;
  v22 = a3[3];
  v29[2] = a3[2];
  v29[3] = v22;
  if (a7 != 1)
  {
    v25 = a5;
    v26 = a6;
    v27 = a7;
    v28 = a8;
    result = MEMORY[0x1B8CB1E40](a4, 15, v31, v30, v29, &v25);
    if (!result)
    {
      return result;
    }

    goto LABEL_5;
  }

  result = MEMORY[0x1B8CB1E40](a4, 15, v31, v30, v29, 0);
  if (result)
  {
LABEL_5:
    lazy protocol witness table accessor for type BNNS.Error and conformance BNNS.Error();
    swift_allocError();
    *v24 = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t static BNNS.scatterND(input:indices:output:filterParameters:)(_OWORD *a1, _OWORD *a2, _OWORD *a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v31 = *MEMORY[0x1E69E9840];
  v7 = a1[9];
  v30[8] = a1[8];
  v30[9] = v7;
  v30[10] = a1[10];
  v8 = a1[5];
  v30[4] = a1[4];
  v30[5] = v8;
  v9 = a1[7];
  v30[6] = a1[6];
  v30[7] = v9;
  v10 = a1[1];
  v30[0] = *a1;
  v30[1] = v10;
  v11 = a1[3];
  v30[2] = a1[2];
  v30[3] = v11;
  v12 = a2[9];
  v29[8] = a2[8];
  v29[9] = v12;
  v29[10] = a2[10];
  v13 = a2[5];
  v29[4] = a2[4];
  v29[5] = v13;
  v14 = a2[7];
  v29[6] = a2[6];
  v29[7] = v14;
  v15 = a2[1];
  v29[0] = *a2;
  v29[1] = v15;
  v16 = a2[3];
  v29[2] = a2[2];
  v29[3] = v16;
  v17 = a3[9];
  v28[8] = a3[8];
  v28[9] = v17;
  v28[10] = a3[10];
  v18 = a3[5];
  v28[4] = a3[4];
  v28[5] = v18;
  v19 = a3[7];
  v28[6] = a3[6];
  v28[7] = v19;
  v20 = a3[1];
  v28[0] = *a3;
  v28[1] = v20;
  v21 = a3[3];
  v28[2] = a3[2];
  v28[3] = v21;
  if (a6 != 1)
  {
    v24 = a4;
    v25 = a5;
    v26 = a6;
    v27 = a7;
    result = MEMORY[0x1B8CB1E50](15, v30, v29, v28, &v24);
    if (!result)
    {
      return result;
    }

    goto LABEL_5;
  }

  result = MEMORY[0x1B8CB1E50](15, v30, v29, v28, 0);
  if (result)
  {
LABEL_5:
    lazy protocol witness table accessor for type BNNS.Error and conformance BNNS.Error();
    swift_allocError();
    *v23 = 0;
    return swift_willThrow();
  }

  return result;
}

void static BNNSNDArrayDescriptor.allocate<A>(randomNormalUsing:mean:standardDeviation:shape:batchSize:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v29 = a2;
  v30 = a3;
  v38 = *MEMORY[0x1E69E9840];
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 112);
  v34[6] = *(v13 + 96);
  v34[7] = v14;
  v35 = *(v13 + 128);
  v15 = *(v13 + 48);
  v34[2] = *(v13 + 32);
  v34[3] = v15;
  v16 = *(v13 + 80);
  v34[4] = *(v13 + 64);
  v34[5] = v16;
  v17 = *(v13 + 16);
  v34[0] = *v13;
  v34[1] = v17;
  v20 = (*(v18 + 8))(v19, v18);
  helper #1 <A>(_:) in static BNNSNDArrayDescriptor.allocateUninitialized(scalarType:shape:batchSize:)(a4, v34, v20, &v33);
  v21 = *(a1 + 16);
  v22 = *(v10 + 16);
  v22(v12, v29, a5);
  lazy protocol witness table accessor for type Float and conformance Float();
  BinaryFloatingPoint.init<A>(_:)();
  v23 = *&v36.flags;
  v22(v12, v30, a5);
  BinaryFloatingPoint.init<A>(_:)();
  if (BNNSRandomFillNormalFloat(v21, &v33, v23, *&v31.flags))
  {
    if (v33.data)
    {
      MEMORY[0x1B8CB2C50](v33.data, -1, -1);
    }

    _sSo21BNNSNDArrayDescriptoraSgWOi0_(&v36);
  }

  else
  {
    v31 = v33;
    _sSo21BNNSNDArrayDescriptoraSgWOi_(&v31);
    v36 = v31;
    v37 = v32;
  }

  v24 = *&v36.data_type;
  *(a6 + 128) = *&v36.stride[7];
  *(a6 + 144) = v24;
  *(a6 + 160) = *&v36.table_data_type;
  *(a6 + 176) = v37;
  v25 = *&v36.stride[1];
  *(a6 + 64) = *&v36.size[7];
  *(a6 + 80) = v25;
  v26 = *&v36.stride[5];
  *(a6 + 96) = *&v36.stride[3];
  *(a6 + 112) = v26;
  v27 = *&v36.size[1];
  *a6 = *&v36.flags;
  *(a6 + 16) = v27;
  v28 = *&v36.size[5];
  *(a6 + 32) = *&v36.size[3];
  *(a6 + 48) = v28;
}

unint64_t lazy protocol witness table accessor for type Float and conformance Float()
{
  result = lazy protocol witness table cache variable for type Float and conformance Float;
  if (!lazy protocol witness table cache variable for type Float and conformance Float)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Float and conformance Float);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BNNS.CropResizeLayer.BoxCoordinateMode and conformance BNNS.CropResizeLayer.BoxCoordinateMode()
{
  result = lazy protocol witness table cache variable for type BNNS.CropResizeLayer.BoxCoordinateMode and conformance BNNS.CropResizeLayer.BoxCoordinateMode;
  if (!lazy protocol witness table cache variable for type BNNS.CropResizeLayer.BoxCoordinateMode and conformance BNNS.CropResizeLayer.BoxCoordinateMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BNNS.CropResizeLayer.BoxCoordinateMode and conformance BNNS.CropResizeLayer.BoxCoordinateMode);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BNNS.CropResizeLayer.LinearSamplingMode and conformance BNNS.CropResizeLayer.LinearSamplingMode()
{
  result = lazy protocol witness table cache variable for type BNNS.CropResizeLayer.LinearSamplingMode and conformance BNNS.CropResizeLayer.LinearSamplingMode;
  if (!lazy protocol witness table cache variable for type BNNS.CropResizeLayer.LinearSamplingMode and conformance BNNS.CropResizeLayer.LinearSamplingMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BNNS.CropResizeLayer.LinearSamplingMode and conformance BNNS.CropResizeLayer.LinearSamplingMode);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BNNS.ShuffleType and conformance BNNS.ShuffleType()
{
  result = lazy protocol witness table cache variable for type BNNS.ShuffleType and conformance BNNS.ShuffleType;
  if (!lazy protocol witness table cache variable for type BNNS.ShuffleType and conformance BNNS.ShuffleType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BNNS.ShuffleType and conformance BNNS.ShuffleType);
  }

  return result;
}

uint64_t dispatch thunk of BNNS.CropResizeLayer.apply(input:regionOfInterest:output:filterParameters:)(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a1[17];
  v5 = *(a1 + 36);
  v6 = a1[19];
  v7 = *(a1 + 40);
  v8 = a2[17];
  v9 = *(a2 + 36);
  v10 = a2[19];
  v11 = *(a2 + 40);
  v12 = a3[17];
  v13 = *(a3 + 36);
  v14 = a3[19];
  v15 = *(a3 + 40);
  v16 = *(*v3 + 96);
  v50 = *a1;
  v51 = *(a1 + 1);
  v52 = *(a1 + 3);
  v53 = *(a1 + 5);
  v54 = *(a1 + 7);
  v55 = *(a1 + 9);
  v56 = *(a1 + 11);
  v57 = *(a1 + 13);
  v58 = *(a1 + 15);
  v59 = v4;
  v60 = v5;
  v61 = v6;
  v62 = v7;
  v63 = *(a1 + 164);
  v36 = *a2;
  v37 = *(a2 + 1);
  v38 = *(a2 + 3);
  v39 = *(a2 + 5);
  v40 = *(a2 + 7);
  v41 = *(a2 + 9);
  v42 = *(a2 + 11);
  v43 = *(a2 + 13);
  v44 = *(a2 + 15);
  v45 = v8;
  v46 = v9;
  v47 = v10;
  v48 = v11;
  v49 = *(a2 + 164);
  v22 = *a3;
  v17 = *(a3 + 3);
  v23 = *(a3 + 1);
  v24 = v17;
  v18 = *(a3 + 7);
  v25 = *(a3 + 5);
  v26 = v18;
  v19 = *(a3 + 11);
  v27 = *(a3 + 9);
  v28 = v19;
  v20 = *(a3 + 15);
  v29 = *(a3 + 13);
  v30 = v20;
  v31 = v12;
  v32 = v13;
  v33 = v14;
  v34 = v15;
  v35 = *(a3 + 164);
  return v16(&v50, &v36, &v22);
}

uint64_t dispatch thunk of BNNS.CropResizeLayer.applyBackward(regionOfInterest:outputGradient:generatingInputGradient:filterParameters:)(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a1[17];
  v5 = *(a1 + 36);
  v6 = a1[19];
  v7 = *(a1 + 40);
  v8 = a2[17];
  v9 = *(a2 + 36);
  v10 = a2[19];
  v11 = *(a2 + 40);
  v12 = a3[17];
  v13 = *(a3 + 36);
  v14 = a3[19];
  v15 = *(a3 + 40);
  v16 = *(*v3 + 104);
  v50 = *a1;
  v51 = *(a1 + 1);
  v52 = *(a1 + 3);
  v53 = *(a1 + 5);
  v54 = *(a1 + 7);
  v55 = *(a1 + 9);
  v56 = *(a1 + 11);
  v57 = *(a1 + 13);
  v58 = *(a1 + 15);
  v59 = v4;
  v60 = v5;
  v61 = v6;
  v62 = v7;
  v63 = *(a1 + 164);
  v36 = *a2;
  v37 = *(a2 + 1);
  v38 = *(a2 + 3);
  v39 = *(a2 + 5);
  v40 = *(a2 + 7);
  v41 = *(a2 + 9);
  v42 = *(a2 + 11);
  v43 = *(a2 + 13);
  v44 = *(a2 + 15);
  v45 = v8;
  v46 = v9;
  v47 = v10;
  v48 = v11;
  v49 = *(a2 + 164);
  v22 = *a3;
  v17 = *(a3 + 3);
  v23 = *(a3 + 1);
  v24 = v17;
  v18 = *(a3 + 7);
  v25 = *(a3 + 5);
  v26 = v18;
  v19 = *(a3 + 11);
  v27 = *(a3 + 9);
  v28 = v19;
  v20 = *(a3 + 15);
  v29 = *(a3 + 13);
  v30 = v20;
  v31 = v12;
  v32 = v13;
  v33 = v14;
  v34 = v15;
  v35 = *(a3 + 164);
  return v16(&v50, &v36, &v22);
}

uint64_t getEnumTagSinglePayload for BNNS.CropResizeLayer.LinearSamplingMode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BNNS.CropResizeLayer.LinearSamplingMode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

double BNNS.FusedNormalizationParameters.layerParameters(input:output:)(uint64_t a1)
{
  v2 = MEMORY[0x1EEE9AC00](a1);
  v4 = v3;
  v6 = v5[9];
  v152 = v5[8];
  v153 = v6;
  v154 = v5[10];
  v7 = v5[5];
  v148 = v5[4];
  v149 = v7;
  v8 = v5[6];
  v151 = v5[7];
  v150 = v8;
  v9 = v5[1];
  v144 = *v5;
  v145 = v9;
  v10 = v5[2];
  v147 = v5[3];
  v146 = v10;
  v11 = v2[9];
  v163 = v2[8];
  v164 = v11;
  v165 = v2[10];
  v12 = v2[5];
  v159 = v2[4];
  v160 = v12;
  v13 = v2[6];
  v162 = v2[7];
  v161 = v13;
  v14 = v2[1];
  v155 = *v2;
  v156 = v14;
  v15 = v2[2];
  v158 = v2[3];
  v157 = v15;
  memcpy(__dst, v1, sizeof(__dst));
  v16 = *(v1 + 732);
  v17 = *(v1 + 740);
  v18 = *(v1 + 748);
  _sSo21BNNSNDArrayDescriptoraSgWOi0_(&v167);
  memcpy(v179, v1, 0x169uLL);
  v19 = _s10Accelerate4BNNSO17NormalizationTypeOWOg(v179);
  v20 = destructiveProjectEnumData for BNNS.NormalizationType(v179);
  if (v19 >= 2)
  {
    if (v19 == 2)
    {
      v21 = 0;
      v140 = v175;
      v141 = v176;
      v142 = v177;
      v34 = v170;
      v136 = v171;
      v137 = v172;
      v138 = v173;
      v139 = v174;
      v132 = v167;
      v133 = v168;
      v35 = v169;
      v134 = v169;
      v135 = v170;
      v128 = v175;
      v129 = v176;
      v130 = v177;
      v124 = v171;
      v125 = v172;
      v126 = v173;
      v127 = v174;
      v120 = v167;
      v121 = v168;
    }

    else
    {
      v140 = v175;
      v141 = v176;
      v142 = v177;
      v34 = v170;
      v136 = v171;
      v137 = v172;
      v138 = v173;
      v139 = v174;
      v132 = v167;
      v133 = v168;
      v35 = v169;
      v134 = v169;
      v135 = v170;
      v128 = v175;
      v129 = v176;
      v130 = v177;
      v124 = v171;
      v125 = v172;
      v126 = v173;
      v127 = v174;
      v120 = v167;
      v121 = v168;
      v21 = *v20;
    }

    v143 = v178;
    v131 = v178;
    v122 = v35;
    v123 = v34;
  }

  else
  {
    v21 = 0;
    v22 = *(v20 + 144);
    v128 = *(v20 + 128);
    v129 = v22;
    v130 = *(v20 + 160);
    v23 = *(v20 + 80);
    v124 = *(v20 + 64);
    v125 = v23;
    v24 = *(v20 + 112);
    v126 = *(v20 + 96);
    v127 = v24;
    v25 = *(v20 + 16);
    v120 = *v20;
    v121 = v25;
    v26 = *(v20 + 48);
    v122 = *(v20 + 32);
    v123 = v26;
    v27 = *(v20 + 328);
    v28 = *(v20 + 344);
    v29 = *(v20 + 296);
    v140 = *(v20 + 312);
    v141 = v27;
    v142 = v28;
    v30 = *(v20 + 264);
    v31 = *(v20 + 280);
    v136 = *(v20 + 248);
    v137 = v30;
    v131 = *(v20 + 176);
    v143 = *(v20 + 360);
    v138 = v31;
    v139 = v29;
    v32 = *(v20 + 200);
    v132 = *(v20 + 184);
    v133 = v32;
    v33 = *(v20 + 232);
    v134 = *(v20 + 216);
    v135 = v33;
  }

  v36 = (v1 + 552);
  v37 = *(v1 + 512);
  v118[8] = *(v1 + 496);
  v118[9] = v37;
  v118[10] = *(v1 + 528);
  v119 = *(v1 + 544);
  v38 = *(v1 + 448);
  v118[4] = *(v1 + 432);
  v118[5] = v38;
  v39 = *(v1 + 480);
  v118[6] = *(v1 + 464);
  v118[7] = v39;
  v40 = *(v1 + 384);
  v118[0] = *(v1 + 368);
  v118[1] = v40;
  v41 = *(v1 + 416);
  v118[2] = *(v1 + 400);
  v118[3] = v41;
  if (_sSo21BNNSNDArrayDescriptoraSgWOg(v118) == 1)
  {
    v117 = 0u;
    v116 = 0u;
    v115 = 0u;
    v114 = 0u;
    v113 = 0u;
    v112 = 0u;
    v111 = 0u;
    v110 = 0u;
    v109 = 0u;
    v108 = 0u;
    v107 = 0u;
  }

  else
  {
    v42 = *(v1 + 512);
    v115 = *(v1 + 496);
    v116 = v42;
    v117 = *(v1 + 528);
    v43 = *(v1 + 448);
    v111 = *(v1 + 432);
    v112 = v43;
    v44 = *(v1 + 464);
    v114 = *(v1 + 480);
    v113 = v44;
    v45 = *(v1 + 384);
    v107 = *(v1 + 368);
    v108 = v45;
    v46 = *(v1 + 400);
    v110 = *(v1 + 416);
    v109 = v46;
  }

  v47 = *(v1 + 696);
  v105[8] = *(v1 + 680);
  v105[9] = v47;
  v105[10] = *(v1 + 712);
  v106 = *(v1 + 728);
  v48 = *(v1 + 632);
  v105[4] = *(v1 + 616);
  v105[5] = v48;
  v49 = *(v1 + 664);
  v105[6] = *(v1 + 648);
  v105[7] = v49;
  v50 = *(v1 + 568);
  v105[0] = *v36;
  v105[1] = v50;
  v51 = *(v1 + 600);
  v105[2] = *(v1 + 584);
  v105[3] = v51;
  if (_sSo21BNNSNDArrayDescriptoraSgWOg(v105) == 1)
  {
    v104 = 0u;
    v103 = 0u;
    v102 = 0u;
    v101 = 0u;
    v100 = 0u;
    v99 = 0u;
    v98 = 0u;
    v97 = 0u;
    v96 = 0u;
    v95 = 0u;
    v94 = 0u;
  }

  else
  {
    v52 = *(v1 + 696);
    v102 = *(v1 + 680);
    v103 = v52;
    v104 = *(v1 + 712);
    v53 = *(v1 + 632);
    v98 = *(v1 + 616);
    v99 = v53;
    v54 = *(v1 + 648);
    v101 = *(v1 + 664);
    v100 = v54;
    v55 = *(v1 + 568);
    v94 = *v36;
    v95 = v55;
    v56 = *(v1 + 584);
    v97 = *(v1 + 600);
    v96 = v56;
  }

  v92[8] = v128;
  v92[9] = v129;
  v92[10] = v130;
  v93 = v131;
  v92[4] = v124;
  v92[5] = v125;
  v92[6] = v126;
  v92[7] = v127;
  v92[0] = v120;
  v92[1] = v121;
  v92[2] = v122;
  v92[3] = v123;
  if (_sSo21BNNSNDArrayDescriptoraSgWOg(v92) == 1)
  {
    v91 = 0u;
    v90 = 0u;
    v89 = 0u;
    v88 = 0u;
    v87 = 0u;
    v86 = 0u;
    v85 = 0u;
    v84 = 0u;
    v83 = 0u;
    v82 = 0u;
    v81 = 0u;
  }

  else
  {
    v89 = v128;
    v90 = v129;
    v91 = v130;
    v85 = v124;
    v86 = v125;
    v88 = v127;
    v87 = v126;
    v81 = v120;
    v82 = v121;
    v84 = v123;
    v83 = v122;
  }

  v79[8] = v140;
  v79[9] = v141;
  v79[10] = v142;
  v80 = v143;
  v79[4] = v136;
  v79[5] = v137;
  v79[6] = v138;
  v79[7] = v139;
  v79[0] = v132;
  v79[1] = v133;
  v79[2] = v134;
  v79[3] = v135;
  if (_sSo21BNNSNDArrayDescriptoraSgWOg(v79) == 1)
  {
    v78 = 0u;
    v77 = 0u;
    v76 = 0u;
    v75 = 0u;
    v74 = 0u;
    v73 = 0u;
    v72 = 0u;
    v71 = 0u;
    v70 = 0u;
    v69 = 0u;
    v68 = 0u;
  }

  else
  {
    v76 = v140;
    v77 = v141;
    v78 = v142;
    v72 = v136;
    v73 = v137;
    v75 = v139;
    v74 = v138;
    v68 = v132;
    v69 = v133;
    v71 = v135;
    v70 = v134;
  }

  v63 = v17;
  v64 = v18;
  BNNS.ActivationFunction.bnnsActivation.getter(v65);
  memcpy(v67, __dst, 0x169uLL);
  if (_s10Accelerate4BNNSO17NormalizationTypeOWOg(v67) == 2)
  {
    v57 = *destructiveProjectEnumData for BNNS.NormalizationType(v67);
  }

  else
  {
    v57 = 0;
  }

  v62[8] = v163;
  v62[9] = v164;
  v62[4] = v159;
  v62[5] = v160;
  v62[6] = v161;
  v62[7] = v162;
  v62[0] = v155;
  v62[1] = v156;
  v62[2] = v157;
  v62[3] = v158;
  v62[18] = v151;
  v62[19] = v152;
  v62[20] = v153;
  v62[21] = v154;
  v62[14] = v147;
  v62[15] = v148;
  v62[16] = v149;
  v62[17] = v150;
  v62[10] = v165;
  v62[11] = v144;
  v62[12] = v145;
  v62[13] = v146;
  v62[30] = v115;
  v62[31] = v116;
  v62[26] = v111;
  v62[27] = v112;
  v62[28] = v113;
  v62[29] = v114;
  v62[22] = v107;
  v62[23] = v108;
  v62[24] = v109;
  v62[25] = v110;
  v62[40] = v101;
  v62[41] = v102;
  v62[42] = v103;
  v62[43] = v104;
  v62[36] = v97;
  v62[37] = v98;
  v62[38] = v99;
  v62[39] = v100;
  v62[32] = v117;
  v62[33] = v94;
  v62[34] = v95;
  v62[35] = v96;
  v62[52] = v89;
  v62[53] = v90;
  v62[48] = v85;
  v62[49] = v86;
  v62[50] = v87;
  v62[51] = v88;
  v62[44] = v81;
  v62[45] = v82;
  v62[46] = v83;
  v62[47] = v84;
  v62[62] = v75;
  v62[63] = v76;
  v62[64] = v77;
  v62[65] = v78;
  v62[58] = v71;
  v62[59] = v72;
  v62[60] = v73;
  v62[61] = v74;
  v62[54] = v91;
  v62[55] = v68;
  v62[56] = v69;
  v62[57] = v70;
  type metadata accessor for BNNSLayerParametersNormalization(0);
  v4[3] = v58;
  v4[4] = &protocol witness table for BNNSLayerParametersNormalization;
  v59 = swift_allocObject();
  *v4 = v59;
  memcpy((v59 + 16), v62, 0x420uLL);
  *(v59 + 1072) = v16;
  v60 = v65[1];
  *(v59 + 1080) = v65[0];
  *(v59 + 1096) = v60;
  result = *&v66;
  *(v59 + 1112) = v66;
  *(v59 + 1128) = v21;
  *(v59 + 1136) = v57;
  return result;
}

void *BNNS.FusedNormalizationParameters.init(type:beta:gamma:momentum:epsilon:activation:)@<X0>(void *__src@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>, float a6@<S0>, float a7@<S1>)
{
  memcpy(__dst, __src, 0x169uLL);
  v13 = *a4;
  LOBYTE(a4) = *(a4 + 8);
  _sSo21BNNSNDArrayDescriptoraSgWOi0_(v26);
  v14 = *(a2 + 144);
  __dst[31] = *(a2 + 128);
  __dst[32] = v14;
  __dst[33] = *(a2 + 160);
  LOBYTE(__dst[34]) = *(a2 + 176);
  v15 = *(a2 + 80);
  __dst[27] = *(a2 + 64);
  __dst[28] = v15;
  v16 = *(a2 + 112);
  __dst[29] = *(a2 + 96);
  __dst[30] = v16;
  v17 = *(a2 + 16);
  __dst[23] = *a2;
  __dst[24] = v17;
  v18 = *(a2 + 48);
  __dst[25] = *(a2 + 32);
  __dst[26] = v18;
  v19 = *(a3 + 144);
  *(&__dst[42] + 8) = *(a3 + 128);
  *(&__dst[43] + 8) = v19;
  *(&__dst[44] + 8) = *(a3 + 160);
  v20 = *(a3 + 80);
  *(&__dst[38] + 8) = *(a3 + 64);
  *(&__dst[39] + 8) = v20;
  v21 = *(a3 + 112);
  *(&__dst[40] + 8) = *(a3 + 96);
  *(&__dst[41] + 8) = v21;
  v22 = *(a3 + 16);
  *(&__dst[34] + 8) = *a3;
  *(&__dst[35] + 8) = v22;
  v23 = *(a3 + 48);
  *(&__dst[36] + 8) = *(a3 + 32);
  *(&__dst[37] + 8) = v23;
  BYTE8(__dst[45]) = *(a3 + 176);
  result = memcpy(a5, __dst, 0x2DCuLL);
  *(a5 + 732) = a6;
  *(a5 + 736) = a7;
  *(a5 + 740) = v13;
  *(a5 + 748) = a4;
  return result;
}

__n128 BNNS.FusedNormalizationParameters.beta.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 512);
  *(a1 + 128) = *(v1 + 496);
  *(a1 + 144) = v2;
  *(a1 + 160) = *(v1 + 528);
  *(a1 + 176) = *(v1 + 544);
  v3 = *(v1 + 448);
  *(a1 + 64) = *(v1 + 432);
  *(a1 + 80) = v3;
  v4 = *(v1 + 480);
  *(a1 + 96) = *(v1 + 464);
  *(a1 + 112) = v4;
  v5 = *(v1 + 384);
  *a1 = *(v1 + 368);
  *(a1 + 16) = v5;
  result = *(v1 + 400);
  v7 = *(v1 + 416);
  *(a1 + 32) = result;
  *(a1 + 48) = v7;
  return result;
}

__n128 BNNS.FusedNormalizationParameters.beta.setter(uint64_t a1)
{
  v2 = *(a1 + 144);
  *(v1 + 496) = *(a1 + 128);
  *(v1 + 512) = v2;
  *(v1 + 528) = *(a1 + 160);
  *(v1 + 544) = *(a1 + 176);
  v3 = *(a1 + 80);
  *(v1 + 432) = *(a1 + 64);
  *(v1 + 448) = v3;
  v4 = *(a1 + 112);
  *(v1 + 464) = *(a1 + 96);
  *(v1 + 480) = v4;
  v5 = *(a1 + 16);
  *(v1 + 368) = *a1;
  *(v1 + 384) = v5;
  result = *(a1 + 32);
  v7 = *(a1 + 48);
  *(v1 + 400) = result;
  *(v1 + 416) = v7;
  return result;
}

__n128 BNNS.FusedNormalizationParameters.gamma.getter@<Q0>(uint64_t a1@<X8>)
{
  *(a1 + 176) = *(v1 + 728);
  v2 = *(v1 + 696);
  *(a1 + 128) = *(v1 + 680);
  *(a1 + 144) = v2;
  *(a1 + 160) = *(v1 + 712);
  v3 = *(v1 + 632);
  *(a1 + 64) = *(v1 + 616);
  *(a1 + 80) = v3;
  v4 = *(v1 + 664);
  *(a1 + 96) = *(v1 + 648);
  *(a1 + 112) = v4;
  v5 = *(v1 + 568);
  *a1 = *(v1 + 552);
  *(a1 + 16) = v5;
  result = *(v1 + 584);
  v7 = *(v1 + 600);
  *(a1 + 32) = result;
  *(a1 + 48) = v7;
  return result;
}

__n128 BNNS.FusedNormalizationParameters.gamma.setter(uint64_t a1)
{
  v2 = *(a1 + 144);
  *(v1 + 680) = *(a1 + 128);
  *(v1 + 696) = v2;
  *(v1 + 712) = *(a1 + 160);
  *(v1 + 728) = *(a1 + 176);
  v3 = *(a1 + 80);
  *(v1 + 616) = *(a1 + 64);
  *(v1 + 632) = v3;
  v4 = *(a1 + 112);
  *(v1 + 648) = *(a1 + 96);
  *(v1 + 664) = v4;
  v5 = *(a1 + 16);
  *(v1 + 552) = *a1;
  *(v1 + 568) = v5;
  result = *(a1 + 32);
  v7 = *(a1 + 48);
  *(v1 + 584) = result;
  *(v1 + 600) = v7;
  return result;
}

void BNNS.FusedNormalizationParameters.activation.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 748);
  *a1 = *(v1 + 740);
  *(a1 + 8) = v2;
}

uint64_t BNNS.FusedNormalizationParameters.activation.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 740) = *result;
  *(v1 + 748) = v2;
  return result;
}

uint64_t protocol witness for FusableLayerParametersWrapper.filterType.getter in conformance BNNS.FusedNormalizationParameters()
{
  memcpy(__dst, v0, 0x169uLL);
  v1 = _s10Accelerate4BNNSO17NormalizationTypeOWOg(__dst);
  destructiveProjectEnumData for BNNS.NormalizationType(__dst);
  return (v1 + 2);
}

uint64_t getEnumTagSinglePayload for BNNS.FusedNormalizationParameters(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 749))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 176) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for BNNS.FusedNormalizationParameters(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 748) = 0;
    *(result + 744) = 0;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 749) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 144) = 0u;
      *(result + 160) = 0u;
      *(result + 112) = 0u;
      *(result + 128) = 0u;
      *(result + 80) = 0u;
      *(result + 96) = 0u;
      *(result + 48) = 0u;
      *(result + 64) = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *result = 0u;
      *(result + 176) = 2 * -a2;
      *(result + 200) = 0u;
      *(result + 216) = 0u;
      *(result + 232) = 0u;
      *(result + 248) = 0u;
      *(result + 360) = 0;
      *(result + 184) = 0u;
      result += 184;
      *(result + 80) = 0u;
      *(result + 96) = 0u;
      *(result + 112) = 0u;
      *(result + 128) = 0u;
      *(result + 144) = 0u;
      *(result + 160) = 0u;
      return result;
    }

    *(result + 749) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

float static vDSP.maximum<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return static vDSP.maximum<A>(_:)(a1, a2, a3, partial apply for closure #1 in static vDSP.maximum<A>(_:));
}

uint64_t partial apply for closure #1 in static vDSP.maximum<A>(_:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in static vDSP.maximum<A>(_:)(a1, a2, MEMORY[0x1E6958CB8]);
}

{
  return partial apply for closure #1 in static vDSP.maximum<A>(_:)(a1, a2, MEMORY[0x1E6958CC0]);
}

double static vDSP.maximum<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return static vDSP.maximum<A>(_:)(a1, a2, a3, partial apply for closure #1 in static vDSP.maximum<A>(_:));
}

float static vDSP.maximumMagnitude<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return static vDSP.maximum<A>(_:)(a1, a2, a3, partial apply for closure #1 in static vDSP.maximumMagnitude<A>(_:));
}

uint64_t partial apply for closure #1 in static vDSP.maximumMagnitude<A>(_:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in static vDSP.maximum<A>(_:)(a1, a2, MEMORY[0x1E6958C90]);
}

{
  return partial apply for closure #1 in static vDSP.maximum<A>(_:)(a1, a2, MEMORY[0x1E6958C98]);
}

double static vDSP.maximumMagnitude<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return static vDSP.maximum<A>(_:)(a1, a2, a3, partial apply for closure #1 in static vDSP.maximumMagnitude<A>(_:));
}

float static vDSP.minimum<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return static vDSP.maximum<A>(_:)(a1, a2, a3, partial apply for closure #1 in static vDSP.minimum<A>(_:));
}

uint64_t partial apply for closure #1 in static vDSP.minimum<A>(_:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in static vDSP.maximum<A>(_:)(a1, a2, MEMORY[0x1E6958D08]);
}

{
  return partial apply for closure #1 in static vDSP.maximum<A>(_:)(a1, a2, MEMORY[0x1E6958D18]);
}

double static vDSP.minimum<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return static vDSP.maximum<A>(_:)(a1, a2, a3, partial apply for closure #1 in static vDSP.minimum<A>(_:));
}

float static vDSP.sum<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return static vDSP.maximum<A>(_:)(a1, a2, a3, partial apply for closure #1 in static vDSP.sum<A>(_:));
}

uint64_t partial apply for closure #1 in static vDSP.sum<A>(_:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in static vDSP.maximum<A>(_:)(a1, a2, MEMORY[0x1E6958D78]);
}

{
  return partial apply for closure #1 in static vDSP.maximum<A>(_:)(a1, a2, MEMORY[0x1E6958D80]);
}

double static vDSP.sum<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return static vDSP.maximum<A>(_:)(a1, a2, a3, partial apply for closure #1 in static vDSP.sum<A>(_:));
}

float static vDSP.sumOfSquares<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return static vDSP.maximum<A>(_:)(a1, a2, a3, partial apply for closure #1 in static vDSP.sumOfSquares<A>(_:));
}

uint64_t partial apply for closure #1 in static vDSP.sumOfSquares<A>(_:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in static vDSP.maximum<A>(_:)(a1, a2, MEMORY[0x1E6958DB0]);
}

{
  return partial apply for closure #1 in static vDSP.maximum<A>(_:)(a1, a2, MEMORY[0x1E6958DC0]);
}

double static vDSP.sumOfSquares<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return static vDSP.maximum<A>(_:)(a1, a2, a3, partial apply for closure #1 in static vDSP.sumOfSquares<A>(_:));
}

float static vDSP.sumAndSumOfSquares<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(a3 + 16))(a2, a3);
  if (v4 < 0)
  {
    __break(1u);
  }

  MEMORY[0x1EEE9AC00](v4);
  (*(a3 + 24))(partial apply for closure #1 in static vDSP.sumAndSumOfSquares<A>(_:));
  return NAN;
}

uint64_t partial apply for closure #1 in static vDSP.sumAndSumOfSquares<A>(_:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in static vDSP.sumAndSumOfSquares<A>(_:)(a1, a2, MEMORY[0x1E6958D88]);
}

{
  return partial apply for closure #1 in static vDSP.sumAndSumOfSquares<A>(_:)(a1, a2, MEMORY[0x1E6958D90]);
}

double static vDSP.sumAndSumOfSquares<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(a3 + 16))(a2, a3);
  if (v4 < 0)
  {
    __break(1u);
  }

  MEMORY[0x1EEE9AC00](v4);
  (*(a3 + 24))(partial apply for closure #1 in static vDSP.sumAndSumOfSquares<A>(_:));
  return NAN;
}

float static vDSP.sumOfMagnitudes<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return static vDSP.maximum<A>(_:)(a1, a2, a3, partial apply for closure #1 in static vDSP.sumOfMagnitudes<A>(_:));
}

uint64_t partial apply for closure #1 in static vDSP.sumOfMagnitudes<A>(_:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in static vDSP.maximum<A>(_:)(a1, a2, MEMORY[0x1E6958D98]);
}

{
  return partial apply for closure #1 in static vDSP.maximum<A>(_:)(a1, a2, MEMORY[0x1E6958DA8]);
}

double static vDSP.sumOfMagnitudes<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return static vDSP.maximum<A>(_:)(a1, a2, a3, partial apply for closure #1 in static vDSP.sumOfMagnitudes<A>(_:));
}

float static vDSP.indexOfMaximum<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return static vDSP.indexOfMaximum<A>(_:)(a1, a2, a3, partial apply for closure #1 in static vDSP.indexOfMaximum<A>(_:));
}

uint64_t partial apply for closure #1 in static vDSP.indexOfMaximum<A>(_:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in static vDSP.sumAndSumOfSquares<A>(_:)(a1, a2, MEMORY[0x1E6958CC8]);
}

{
  return partial apply for closure #1 in static vDSP.sumAndSumOfSquares<A>(_:)(a1, a2, MEMORY[0x1E6958CD0]);
}

double static vDSP.indexOfMaximum<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return static vDSP.indexOfMaximum<A>(_:)(a1, a2, a3, partial apply for closure #1 in static vDSP.indexOfMaximum<A>(_:));
}

float static vDSP.indexOfMaximumMagnitude<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return static vDSP.indexOfMaximum<A>(_:)(a1, a2, a3, partial apply for closure #1 in static vDSP.indexOfMaximumMagnitude<A>(_:));
}

uint64_t partial apply for closure #1 in static vDSP.indexOfMaximumMagnitude<A>(_:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in static vDSP.sumAndSumOfSquares<A>(_:)(a1, a2, MEMORY[0x1E6958CA0]);
}

{
  return partial apply for closure #1 in static vDSP.sumAndSumOfSquares<A>(_:)(a1, a2, MEMORY[0x1E6958CA8]);
}

double static vDSP.indexOfMaximumMagnitude<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return static vDSP.indexOfMaximum<A>(_:)(a1, a2, a3, partial apply for closure #1 in static vDSP.indexOfMaximumMagnitude<A>(_:));
}

float static vDSP.indexOfMinimum<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return static vDSP.indexOfMaximum<A>(_:)(a1, a2, a3, partial apply for closure #1 in static vDSP.indexOfMinimum<A>(_:));
}

float static vDSP.indexOfMaximum<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = (*(a3 + 16))(a2, a3);
  if (v6 < 0)
  {
    __break(1u);
  }

  MEMORY[0x1EEE9AC00](v6);
  (*(a3 + 24))(a4);
  return NAN;
}

uint64_t partial apply for closure #1 in static vDSP.indexOfMinimum<A>(_:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in static vDSP.sumAndSumOfSquares<A>(_:)(a1, a2, MEMORY[0x1E6958D20]);
}

{
  return partial apply for closure #1 in static vDSP.sumAndSumOfSquares<A>(_:)(a1, a2, MEMORY[0x1E6958D28]);
}

double static vDSP.indexOfMinimum<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return static vDSP.indexOfMaximum<A>(_:)(a1, a2, a3, partial apply for closure #1 in static vDSP.indexOfMinimum<A>(_:));
}

double static vDSP.indexOfMaximum<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = (*(a3 + 16))(a2, a3);
  if (v6 < 0)
  {
    __break(1u);
  }

  MEMORY[0x1EEE9AC00](v6);
  (*(a3 + 24))(a4);
  return NAN;
}

uint64_t partial apply for closure #1 in static vDSP.sumAndSumOfSquares<A>(_:)(uint64_t result, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, void, void, void))
{
  if (result)
  {
    return a3(result, 1, v3[2], v3[3], v3[4]);
  }

  __break(1u);
  return result;
}

float static vDSP.meanSquare<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return static vDSP.maximum<A>(_:)(a1, a2, a3, partial apply for closure #1 in static vDSP.meanSquare<A>(_:));
}

uint64_t partial apply for closure #1 in static vDSP.meanSquare<A>(_:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in static vDSP.maximum<A>(_:)(a1, a2, MEMORY[0x1E6958CF8]);
}

{
  return partial apply for closure #1 in static vDSP.maximum<A>(_:)(a1, a2, MEMORY[0x1E6958D00]);
}

double static vDSP.meanSquare<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return static vDSP.maximum<A>(_:)(a1, a2, a3, partial apply for closure #1 in static vDSP.meanSquare<A>(_:));
}

float static vDSP.meanMagnitude<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return static vDSP.maximum<A>(_:)(a1, a2, a3, partial apply for closure #1 in static vDSP.meanMagnitude<A>(_:));
}

uint64_t partial apply for closure #1 in static vDSP.meanMagnitude<A>(_:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in static vDSP.maximum<A>(_:)(a1, a2, MEMORY[0x1E6958CD8]);
}

{
  return partial apply for closure #1 in static vDSP.maximum<A>(_:)(a1, a2, MEMORY[0x1E6958CE0]);
}

double static vDSP.meanMagnitude<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return static vDSP.maximum<A>(_:)(a1, a2, a3, partial apply for closure #1 in static vDSP.meanMagnitude<A>(_:));
}

float static vDSP.mean<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return static vDSP.maximum<A>(_:)(a1, a2, a3, partial apply for closure #1 in static vDSP.mean<A>(_:));
}

uint64_t partial apply for closure #1 in static vDSP.mean<A>(_:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in static vDSP.maximum<A>(_:)(a1, a2, MEMORY[0x1E6958CE8]);
}

{
  return partial apply for closure #1 in static vDSP.maximum<A>(_:)(a1, a2, MEMORY[0x1E6958CF0]);
}

double static vDSP.mean<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return static vDSP.maximum<A>(_:)(a1, a2, a3, partial apply for closure #1 in static vDSP.mean<A>(_:));
}

float static vDSP.rootMeanSquare<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return static vDSP.maximum<A>(_:)(a1, a2, a3, partial apply for closure #1 in static vDSP.rootMeanSquare<A>(_:));
}

float static vDSP.maximum<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = (*(a3 + 16))(a2, a3);
  if (v6 < 0)
  {
    __break(1u);
  }

  MEMORY[0x1EEE9AC00](v6);
  (*(a3 + 24))(a4);
  return NAN;
}

uint64_t partial apply for closure #1 in static vDSP.rootMeanSquare<A>(_:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in static vDSP.maximum<A>(_:)(a1, a2, MEMORY[0x1E6958D60]);
}

{
  return partial apply for closure #1 in static vDSP.maximum<A>(_:)(a1, a2, MEMORY[0x1E6958D68]);
}

double static vDSP.rootMeanSquare<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return static vDSP.maximum<A>(_:)(a1, a2, a3, partial apply for closure #1 in static vDSP.rootMeanSquare<A>(_:));
}

double static vDSP.maximum<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = (*(a3 + 16))(a2, a3);
  if (v6 < 0)
  {
    __break(1u);
  }

  MEMORY[0x1EEE9AC00](v6);
  (*(a3 + 24))(a4);
  return NAN;
}

uint64_t partial apply for closure #1 in static vDSP.maximum<A>(_:)(uint64_t result, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, void, void))
{
  if (result)
  {
    return a3(result, 1, *(v3 + 16), *(v3 + 24));
  }

  __break(1u);
  return result;
}

uint64_t BNNS.BroadcastMatrixMultiplyLayer.__allocating_init(inputA:transposed:isWeights:inputB:transposed:isWeights:output:alpha:accumulatesToOutput:isQuadratic:filterParameters:)(_OWORD *a1, char a2, char a3, _OWORD *a4, char a5, char a6, __int128 *a7, char a8, float a9, char a10, int a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v47 = *MEMORY[0x1E69E9840];
  if ((a3 & 1) == 0 || (a6 & 1) == 0)
  {
    v15 = a1[6];
    *&v45[115] = a1[7];
    if (a8)
    {
      v16 = 1.0;
    }

    else
    {
      v16 = 0.0;
    }

    v17 = a1[9];
    *&v45[131] = a1[8];
    *&v45[147] = v17;
    *&v45[163] = a1[10];
    v18 = a1[2];
    *&v45[51] = a1[3];
    v19 = a1[5];
    *&v45[67] = a1[4];
    *&v45[83] = v19;
    *&v45[99] = v15;
    v20 = a1[1];
    *&v45[3] = *a1;
    *&v45[19] = v20;
    *&v45[35] = v18;
    v21 = a4[9];
    *&layer_params.iB_desc.stride[7] = a4[8];
    *&layer_params.iB_desc.data_type = v21;
    v22 = a4[5];
    *&layer_params.iB_desc.size[7] = a4[4];
    *&layer_params.iB_desc.stride[1] = v22;
    v23 = a4[7];
    *&layer_params.iB_desc.stride[3] = a4[6];
    *&layer_params.iB_desc.stride[5] = v23;
    v24 = a4[1];
    *&layer_params.iB_desc.flags = *a4;
    *&layer_params.iB_desc.size[1] = v24;
    v25 = a4[3];
    *&layer_params.iB_desc.size[3] = a4[2];
    *&layer_params.iB_desc.size[5] = v25;
    v26 = a7[8];
    v27 = a7[9];
    v28 = a7[6];
    *&layer_params.o_desc.stride[5] = a7[7];
    *&layer_params.o_desc.stride[7] = v26;
    v29 = a7[10];
    *&layer_params.o_desc.data_type = v27;
    *&layer_params.o_desc.table_data_type = v29;
    v30 = a7[4];
    v31 = a7[5];
    v32 = a7[2];
    *&layer_params.o_desc.size[5] = a7[3];
    *&layer_params.o_desc.size[7] = v30;
    v33 = a4[10];
    *&layer_params.o_desc.stride[1] = v31;
    *&layer_params.o_desc.stride[3] = v28;
    v34 = *a7;
    v35 = a7[1];
    *&layer_params.iB_desc.table_data_type = v33;
    *&layer_params.o_desc.flags = v34;
    v36 = a3 & 1;
    v37 = a6 & 1;
    *&layer_params.o_desc.size[1] = v35;
    *&layer_params.o_desc.size[3] = v32;
    layer_params.alpha = a9;
    layer_params.beta = v16;
    layer_params.transA = a2 & 1;
    layer_params.transB = a5 & 1;
    layer_params.quadratic = a10 & 1;
    layer_params.a_is_weights = a3 & 1;
    layer_params.b_is_weights = a6 & 1;
    *(&layer_params.iA_desc.stride[6] + 5) = *&v45[128];
    *(&layer_params.iA_desc.data + 5) = *&v45[144];
    *(&layer_params.iA_desc.table_data + 5) = *&v45[160];
    *(&layer_params.iA_desc.data_bias + 1) = *&v45[175];
    *(&layer_params.iA_desc.size[6] + 5) = *&v45[64];
    *(layer_params.iA_desc.stride + 5) = *&v45[80];
    *(&layer_params.iA_desc.stride[2] + 5) = *&v45[96];
    *(&layer_params.iA_desc.stride[4] + 5) = *&v45[112];
    *(&layer_params.b_is_weights + 1) = *v45;
    *(layer_params.iA_desc.size + 5) = *&v45[16];
    *(&layer_params.iA_desc.size[2] + 5) = *&v45[32];
    *(&layer_params.iA_desc.size[4] + 5) = *&v45[48];
    if (a14 == 1)
    {
      v38 = 0;
    }

    else
    {
      v41 = a12;
      v42 = a13;
      v43 = a14;
      v44 = a15;
      v38 = &v41;
    }

    v39 = BNNSFilterCreateLayerBroadcastMatMul(&layer_params, v38);
    type metadata accessor for BNNS.BroadcastMatrixMultiplyLayer();
    result = swift_allocObject();
    *(result + 24) = v36;
    *(result + 25) = v37;
    if (v39)
    {
      *(result + 16) = v39;
      return result;
    }

    type metadata accessor for BNNS.Layer();
    swift_deallocPartialClassInstance();
  }

  return 0;
}

uint64_t BNNS.BroadcastMatrixMultiplyLayer.apply(batchSize:inputA:inputB:output:)(size_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  if (*(v4 + 24) & 1) != 0 || (v5 = a2, (*(v4 + 25)))
  {
    v6 = *(v5 + 136);
    if (v6)
    {
      v7 = *(a4 + 136);
      if (v7)
      {
        BNNSNDArrayDescriptor.shape.getter(v24);
        v18 = BNNS.Shape.batchStride.getter();
        v19 = *(v4 + 16);
        BNNSNDArrayDescriptor.shape.getter(v24);
        v20 = BNNS.Shape.batchStride.getter();
        result = BNNSFilterApplyBatch(v19, a1, v6, v18, v7, v20);
        if (!result)
        {
          return result;
        }

        goto LABEL_13;
      }
    }

LABEL_11:
    v17 = 2;
LABEL_14:
    lazy protocol witness table accessor for type BNNS.Error and conformance BNNS.Error();
    swift_allocError();
    *v21 = v17;
    return swift_willThrow();
  }

  v9 = *(a2 + 136);
  if (!v9)
  {
    goto LABEL_11;
  }

  v10 = *(a3 + 136);
  if (!v10)
  {
    goto LABEL_11;
  }

  v11 = *(a4 + 136);
  if (!v11)
  {
    goto LABEL_11;
  }

  v25 = *(v4 + 16);
  BNNSNDArrayDescriptor.shape.getter(v24);
  v13 = BNNS.Shape.batchStride.getter();
  BNNSNDArrayDescriptor.shape.getter(v23);
  v14 = BNNS.Shape.batchStride.getter();
  BNNSNDArrayDescriptor.shape.getter(&v22);
  v15 = BNNS.Shape.batchStride.getter();
  result = BNNSFilterApplyTwoInputBatch(v25, a1, v9, v13, v10, v14, v11, v15);
  if (result)
  {
LABEL_13:
    v17 = 0;
    goto LABEL_14;
  }

  return result;
}

uint64_t BNNS.BroadcastMatrixMultiplyLayer.applyBackward(batchSize:inputA:inputB:output:outputGradient:generatingInputAGradient:generatingInputBGradient:)(size_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5, _OWORD *a6, _OWORD *a7)
{
  v9 = a6;
  v87 = *MEMORY[0x1E69E9840];
  v12 = a6[9];
  v85[8] = a6[8];
  v85[9] = v12;
  v85[10] = a6[10];
  v13 = a6[5];
  v85[4] = a6[4];
  v85[5] = v13;
  v14 = a6[6];
  v85[7] = a6[7];
  v85[6] = v14;
  v15 = a6[1];
  v85[0] = *a6;
  v85[1] = v15;
  v16 = a6[2];
  v85[3] = a6[3];
  v85[2] = v16;
  v17 = a7[9];
  v86[8] = a7[8];
  v86[9] = v17;
  v86[10] = a7[10];
  v18 = a7[5];
  v86[4] = a7[4];
  v86[5] = v18;
  v19 = a7[6];
  v86[7] = a7[7];
  v86[6] = v19;
  v20 = a7[1];
  v86[0] = *a7;
  v86[1] = v20;
  v21 = a7[2];
  v86[3] = a7[3];
  v86[2] = v21;
  if (*(v7 + 24))
  {
    v71 = *(a3 + 136);
    BNNSNDArrayDescriptor.shape.getter(&out_delta);
    v22 = BNNS.Shape.batchStride.getter();
    BNNSNDArrayDescriptor.shape.getter(&out_delta);
    v23 = BNNS.Shape.batchStride.getter();
    v24 = v86;
    goto LABEL_5;
  }

  if (*(v7 + 25))
  {
    v71 = *(a2 + 136);
    BNNSNDArrayDescriptor.shape.getter(&out_delta);
    v22 = BNNS.Shape.batchStride.getter();
    BNNSNDArrayDescriptor.shape.getter(&out_delta);
    v23 = BNNS.Shape.batchStride.getter();
    v24 = v85;
    v9 = a7;
LABEL_5:
    v25 = v9[9];
    *&v83.stride[7] = v9[8];
    *&v83.data_type = v25;
    *&v83.table_data_type = v9[10];
    v26 = v9[5];
    *&v83.size[7] = v9[4];
    *&v83.stride[1] = v26;
    v27 = v9[6];
    *&v83.stride[5] = v9[7];
    *&v83.stride[3] = v27;
    v28 = v9[1];
    *&v83.flags = *v9;
    *&v83.size[1] = v28;
    v29 = v9[2];
    *&v83.size[5] = v9[3];
    *&v83.size[3] = v29;
    v30 = v24[9];
    *&v84.stride[7] = v24[8];
    *&v84.data_type = v30;
    *&v84.table_data_type = v24[10];
    v31 = v24[5];
    *&v84.size[7] = v24[4];
    *&v84.stride[1] = v31;
    v32 = v24[6];
    *&v84.stride[5] = v24[7];
    *&v84.stride[3] = v32;
    v33 = v24[1];
    *&v84.flags = *v24;
    *&v84.size[1] = v33;
    v34 = v24[2];
    *&v84.size[5] = v24[3];
    *&v84.size[3] = v34;
    v35 = a5[9];
    *&out_delta.stride[7] = a5[8];
    *&out_delta.data_type = v35;
    *&out_delta.table_data_type = a5[10];
    v36 = a5[5];
    *&out_delta.size[7] = a5[4];
    *&out_delta.stride[1] = v36;
    v37 = a5[6];
    *&out_delta.stride[5] = a5[7];
    *&out_delta.stride[3] = v37;
    v38 = a5[1];
    *&out_delta.flags = *a5;
    *&out_delta.size[1] = v38;
    v39 = a5[2];
    *&out_delta.size[5] = a5[3];
    *&out_delta.size[3] = v39;
    in_delta = v84;
    inB_delta = v83;
    v40 = *(v7 + 16);
    v41 = *(a4 + 136);
    BNNSNDArrayDescriptor.shape.getter(v79);
    v42 = BNNS.Shape.batchStride.getter();
    BNNSNDArrayDescriptor.shape.getter(v78);
    v43 = BNNS.Shape.batchStride.getter();
    result = BNNSFilterApplyBackwardBatch(v40, a1, v71, v22, &in_delta, v23, v41, v42, &out_delta, v43, &inB_delta, 0);
    if (!result)
    {
      return result;
    }

    goto LABEL_6;
  }

  v46 = a5[9];
  *&out_delta.stride[7] = a5[8];
  *&out_delta.data_type = v46;
  *&out_delta.table_data_type = a5[10];
  v47 = a5[5];
  *&out_delta.size[7] = a5[4];
  *&out_delta.stride[1] = v47;
  v48 = a5[6];
  *&out_delta.stride[5] = a5[7];
  *&out_delta.stride[3] = v48;
  v49 = a5[1];
  *&out_delta.flags = *a5;
  *&out_delta.size[1] = v49;
  v50 = a5[2];
  *&out_delta.size[5] = a5[3];
  *&out_delta.size[3] = v50;
  v51 = a6[9];
  *&in_delta.stride[7] = a6[8];
  *&in_delta.data_type = v51;
  *&in_delta.table_data_type = a6[10];
  v52 = a6[5];
  *&in_delta.size[7] = a6[4];
  *&in_delta.stride[1] = v52;
  v53 = a6[6];
  *&in_delta.stride[5] = a6[7];
  *&in_delta.stride[3] = v53;
  v54 = a6[1];
  *&in_delta.flags = *a6;
  *&in_delta.size[1] = v54;
  v55 = a6[2];
  *&in_delta.size[5] = a6[3];
  *&in_delta.size[3] = v55;
  v56 = a7[9];
  *&inB_delta.stride[7] = a7[8];
  *&inB_delta.data_type = v56;
  *&inB_delta.table_data_type = a7[10];
  v57 = a7[5];
  *&inB_delta.size[7] = a7[4];
  *&inB_delta.stride[1] = v57;
  v58 = a7[7];
  *&inB_delta.stride[3] = a7[6];
  *&inB_delta.stride[5] = v58;
  v59 = a7[1];
  *&inB_delta.flags = *a7;
  *&inB_delta.size[1] = v59;
  v60 = a7[3];
  *&inB_delta.size[3] = a7[2];
  *&inB_delta.size[5] = v60;
  v70 = *(v7 + 16);
  v72 = *(a2 + 136);
  BNNSNDArrayDescriptor.shape.getter(v79);
  inA_stride = BNNS.Shape.batchStride.getter();
  BNNSNDArrayDescriptor.shape.getter(v78);
  v62 = BNNS.Shape.batchStride.getter();
  v63 = *(a3 + 136);
  BNNSNDArrayDescriptor.shape.getter(v77);
  v64 = BNNS.Shape.batchStride.getter();
  BNNSNDArrayDescriptor.shape.getter(v76);
  v65 = BNNS.Shape.batchStride.getter();
  v66 = *(a4 + 136);
  BNNSNDArrayDescriptor.shape.getter(v75);
  v67 = BNNS.Shape.batchStride.getter();
  BNNSNDArrayDescriptor.shape.getter(v74);
  v68 = BNNS.Shape.batchStride.getter();
  result = BNNSFilterApplyBackwardTwoInputBatch(v70, a1, v72, inA_stride, &in_delta, v62, v63, v64, &inB_delta, v65, v66, v67, &out_delta, v68, 0, 0);
  if (!result)
  {
    return result;
  }

LABEL_6:
  lazy protocol witness table accessor for type BNNS.Error and conformance BNNS.Error();
  swift_allocError();
  *v45 = 0;
  return swift_willThrow();
}

uint64_t BNNS.BroadcastMatrixMultiplyLayer.__deallocating_deinit()
{
  BNNSFilterDestroy(*(v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t dispatch thunk of BNNS.BroadcastMatrixMultiplyLayer.apply(batchSize:inputA:inputB:output:)(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v5 = a2[17];
  v6 = *(a2 + 36);
  v7 = a2[19];
  v8 = *(a2 + 40);
  v9 = a3[17];
  v10 = *(a3 + 36);
  v11 = a3[19];
  v12 = *(a3 + 40);
  v13 = a4[17];
  v14 = *(a4 + 36);
  v15 = a4[19];
  v16 = *(a4 + 40);
  v17 = *(*v4 + 120);
  v47 = *a2;
  v48 = *(a2 + 1);
  v49 = *(a2 + 3);
  v50 = *(a2 + 5);
  v51 = *(a2 + 7);
  v52 = *(a2 + 9);
  v53 = *(a2 + 11);
  v54 = *(a2 + 13);
  v55 = *(a2 + 15);
  v56 = v5;
  v57 = v6;
  v58 = v7;
  v59 = v8;
  v60 = *(a2 + 164);
  v33 = *a3;
  v34 = *(a3 + 1);
  v35 = *(a3 + 3);
  v36 = *(a3 + 5);
  v37 = *(a3 + 7);
  v38 = *(a3 + 9);
  v39 = *(a3 + 11);
  v40 = *(a3 + 13);
  v41 = *(a3 + 15);
  v42 = v9;
  v43 = v10;
  v44 = v11;
  v45 = v12;
  v46 = *(a3 + 164);
  v19 = *a4;
  v20 = *(a4 + 1);
  v21 = *(a4 + 3);
  v22 = *(a4 + 5);
  v23 = *(a4 + 7);
  v24 = *(a4 + 9);
  v25 = *(a4 + 11);
  v26 = *(a4 + 13);
  v27 = *(a4 + 15);
  v28 = v13;
  v29 = v14;
  v30 = v15;
  v31 = v16;
  v32 = *(a4 + 164);
  return v17(a1, &v47, &v33, &v19);
}

uint64_t dispatch thunk of BNNS.BroadcastMatrixMultiplyLayer.applyBackward(batchSize:inputA:inputB:output:outputGradient:generatingInputAGradient:generatingInputBGradient:)(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(a2 + 36);
  v9 = a2[19];
  v10 = *(a2 + 40);
  v11 = a3[17];
  v12 = *(a3 + 36);
  v13 = a3[19];
  v14 = *(a3 + 40);
  v15 = *(a4 + 136);
  v16 = *(a4 + 144);
  v17 = *(a4 + 152);
  v18 = *(a4 + 160);
  v19 = *(a5 + 136);
  v20 = *(a5 + 144);
  v21 = *(a5 + 152);
  v22 = *(a5 + 160);
  v81 = *(a6 + 136);
  v23 = *(a6 + 144);
  v24 = *(a6 + 152);
  v25 = *(a6 + 160);
  v85 = *(a7 + 136);
  v84 = *(a7 + 144);
  v83 = *(a7 + 152);
  v82 = *(a7 + 160);
  v86 = *(*v7 + 128);
  v167 = a2[17];
  v168 = v8;
  v169 = v9;
  v170 = v10;
  v26 = *a2;
  v27 = *(a2 + 1);
  v28 = *(a2 + 3);
  v29 = *(a2 + 5);
  v30 = *(a2 + 7);
  v31 = *(a2 + 9);
  v32 = *(a2 + 13);
  v33 = *(a2 + 15);
  v34 = *(a2 + 164);
  v164 = *(a2 + 11);
  v165 = v32;
  v166 = v33;
  v171 = v34;
  v153 = v11;
  v154 = v12;
  v155 = v13;
  v156 = v14;
  v35 = *a3;
  v36 = *(a3 + 1);
  v37 = *(a3 + 3);
  v38 = *(a3 + 5);
  v39 = *(a3 + 7);
  v40 = *(a3 + 9);
  v41 = *(a3 + 11);
  v42 = *(a3 + 13);
  v43 = *(a3 + 15);
  v44 = *(a3 + 164);
  v159 = v27;
  v160 = v28;
  v161 = v29;
  v162 = v30;
  v163 = v31;
  v150 = v41;
  v151 = v42;
  v152 = v43;
  v157 = v44;
  v139 = v15;
  v140 = v16;
  v141 = v17;
  v142 = v18;
  *&v27 = *a4;
  v45 = *(a4 + 8);
  v46 = *(a4 + 24);
  v47 = *(a4 + 40);
  v48 = *(a4 + 56);
  v49 = *(a4 + 72);
  v50 = *(a4 + 88);
  v51 = *(a4 + 104);
  v52 = *(a4 + 120);
  v53 = *(a4 + 164);
  v145 = v36;
  v146 = v37;
  v147 = v38;
  v148 = v39;
  v149 = v40;
  v136 = v50;
  v137 = v51;
  v138 = v52;
  v143 = v53;
  v125 = v19;
  v126 = v20;
  v127 = v21;
  v128 = v22;
  *&v50 = *a5;
  v54 = *(a5 + 8);
  v55 = *(a5 + 24);
  v56 = *(a5 + 40);
  v57 = *(a5 + 56);
  v58 = *(a5 + 72);
  v59 = *(a5 + 88);
  v60 = *(a5 + 104);
  v61 = *(a5 + 120);
  v62 = *(a5 + 164);
  v131 = v45;
  v132 = v46;
  v133 = v47;
  v134 = v48;
  v135 = v49;
  v122 = v59;
  v123 = v60;
  v124 = v61;
  v129 = v62;
  v111 = v81;
  v112 = v23;
  v113 = v24;
  v114 = v25;
  *&v45 = *a6;
  v63 = *(a6 + 8);
  v64 = *(a6 + 24);
  v65 = *(a6 + 40);
  v66 = *(a6 + 56);
  v67 = *(a6 + 72);
  v68 = *(a6 + 88);
  v69 = *(a6 + 104);
  v70 = *(a6 + 120);
  v71 = *(a6 + 164);
  v117 = v54;
  v118 = v55;
  v119 = v56;
  v120 = v57;
  v121 = v58;
  v108 = v68;
  v109 = v69;
  v110 = v70;
  v115 = v71;
  v103 = v63;
  v104 = v64;
  v105 = v65;
  v106 = v66;
  v107 = v67;
  v101 = *(a7 + 164);
  *&v63 = *a7;
  v72 = *(a7 + 8);
  v73 = *(a7 + 24);
  v74 = *(a7 + 40);
  v75 = *(a7 + 56);
  v76 = *(a7 + 72);
  v77 = *(a7 + 88);
  v78 = *(a7 + 104);
  v79 = *(a7 + 120);
  v97 = v85;
  v98 = v84;
  v99 = v83;
  v100 = v82;
  v158 = v26;
  v144 = v35;
  v130 = v27;
  v116 = v50;
  v102 = v45;
  v88 = v63;
  v89 = v72;
  v90 = v73;
  v91 = v74;
  v92 = v75;
  v93 = v76;
  v94 = v77;
  v95 = v78;
  v96 = v79;
  return v86(a1, &v158, &v144, &v130, &v116, &v102, &v88);
}

vImage_Error closure #1 in closure #1 in static vDSP.convertElements<A, B>(of:to:)(void **a1, void *a2, uint64_t a3, vImagePixelCount a4)
{
  v8 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    goto LABEL_12;
  }

  if ((a4 + 0x4000000000000000) < 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if ((a4 & 0x8000000000000000) != 0)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v4 = *a1;
  if (!*a1)
  {
    goto LABEL_13;
  }

  if (a4 >> 61)
  {
    goto LABEL_10;
  }

  if (!a4)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
  }

  src.data = a2;
  src.height = 1;
  src.width = a4;
  src.rowBytes = 2 * a4;
  dest.data = v4;
  dest.height = 1;
  dest.width = a4;
  dest.rowBytes = 4 * a4;
  return vImageConvert_Planar16FtoPlanarF(&src, &dest, 0);
}

{
  v8 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    goto LABEL_10;
  }

  if ((a4 - 0x2000000000000000) >> 62 != 3)
  {
    __break(1u);
    goto LABEL_8;
  }

  if ((a4 & 0x8000000000000000) != 0)
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
  }

  v4 = *a1;
  if (!*a1)
  {
    goto LABEL_11;
  }

  if (!a4)
  {
    goto LABEL_9;
  }

  src.data = a2;
  src.height = 1;
  src.width = a4;
  src.rowBytes = 4 * a4;
  dest.data = v4;
  dest.height = 1;
  dest.width = a4;
  dest.rowBytes = 2 * a4;
  return vImageConvert_PlanarFtoPlanar16F(&src, &dest, 0);
}

uint64_t static vDSP.convertElements<A, B>(of:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return static vDSP.convertElements<A, B>(of:to:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in static vDSP.convertElements<A, B>(of:to:));
}

{
  return static vDSP.convertElements<A, B>(of:to:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in static vDSP.convertElements<A, B>(of:to:));
}

{
  return static vDSP.convertElements<A, B>(of:to:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in static vDSP.convertElements<A, B>(of:to:));
}

{
  return static vDSP.convertElements<A, B>(of:to:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in static vDSP.convertElements<A, B>(of:to:));
}

{
  return static vDSP.convertElements<A, B>(of:to:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in static vDSP.convertElements<A, B>(of:to:));
}

{
  return static vDSP.convertElements<A, B>(of:to:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in static vDSP.convertElements<A, B>(of:to:));
}

{
  return static vDSP.convertElements<A, B>(of:to:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in static vDSP.convertElements<A, B>(of:to:));
}

{
  return static vDSP.convertElements<A, B>(of:to:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in static vDSP.convertElements<A, B>(of:to:));
}

{
  return static vDSP.convertElements<A, B>(of:to:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in static vDSP.convertElements<A, B>(of:to:));
}

{
  return static vDSP.convertElements<A, B>(of:to:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in static vDSP.convertElements<A, B>(of:to:));
}

{
  return static vDSP.convertElements<A, B>(of:to:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in static vDSP.convertElements<A, B>(of:to:));
}

{
  return static vDSP.convertElements<A, B>(of:to:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in static vDSP.convertElements<A, B>(of:to:));
}

{
  return static vDSP.convertElements<A, B>(of:to:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in static vDSP.convertElements<A, B>(of:to:));
}

{
  return static vDSP.convertElements<A, B>(of:to:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in static vDSP.convertElements<A, B>(of:to:));
}

{
  return static vDSP.convertElements<A, B>(of:to:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in static vDSP.convertElements<A, B>(of:to:));
}

{
  return static vDSP.convertElements<A, B>(of:to:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in static vDSP.convertElements<A, B>(of:to:));
}

uint64_t closure #1 in static vDSP.float16ToFloat<A>(_:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, unint64_t *a8, void (*a9)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(a6);
  v16 = lazy protocol witness table accessor for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>(a8, a6);
  a9(a3, a1, a4, v15, a5, v16);
  result = (*(a5 + 16))(a4, a5);
  *a2 = result;
  return result;
}

uint64_t static vDSP.convertElements<A, B>(of:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = *(a5 + 16);
  v12 = v11(a3, a5);
  result = (*(*(a6 + 8) + 16))(a4);
  if (v12 == result)
  {
    v14 = v11(a3, a5);
    MEMORY[0x1EEE9AC00](v14);
    return (*(a5 + 24))(a7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  v11 = *(a5 + 16);
  v12 = v11(a3, a5);
  result = (*(*(a6 + 8) + 16))(a4);
  if (v12 == result)
  {
    result = v11(a3, a5);
    if ((result & 0x8000000000000000) == 0)
    {
      MEMORY[0x1EEE9AC00](result);
      return (*(a6 + 16))(a7);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v10 = (*(a5 + 16))(a3, a5);
  result = (*(*(a6 + 8) + 16))(a4);
  if (result >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = result;
  }

  if (v12 < 0)
  {
    __break(1u);
  }

  else
  {
    MEMORY[0x1EEE9AC00](result);
    return (*(a6 + 16))(a7);
  }

  return result;
}

Swift::Int vDSP.RoundingMode.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1B8CB1810](v1);
  return Hasher._finalize()();
}

uint64_t static vDSP.convertElements<A, B>(of:to:rounding:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  return static vDSP.convertElements<A, B>(of:to:rounding:)(a1, a2, a3, a4, a5, a6, a7, partial apply for closure #1 in static vDSP.convertElements<A, B>(of:to:rounding:));
}

{
  return static vDSP.convertElements<A, B>(of:to:rounding:)(a1, a2, a3, a4, a5, a6, a7, partial apply for closure #1 in static vDSP.convertElements<A, B>(of:to:rounding:));
}

{
  return static vDSP.convertElements<A, B>(of:to:rounding:)(a1, a2, a3, a4, a5, a6, a7, partial apply for closure #1 in static vDSP.convertElements<A, B>(of:to:rounding:));
}

{
  return static vDSP.convertElements<A, B>(of:to:rounding:)(a1, a2, a3, a4, a5, a6, a7, partial apply for closure #1 in static vDSP.convertElements<A, B>(of:to:rounding:));
}

{
  return static vDSP.convertElements<A, B>(of:to:rounding:)(a1, a2, a3, a4, a5, a6, a7, partial apply for closure #1 in static vDSP.convertElements<A, B>(of:to:rounding:));
}

{
  return static vDSP.convertElements<A, B>(of:to:rounding:)(a1, a2, a3, a4, a5, a6, a7, partial apply for closure #1 in static vDSP.convertElements<A, B>(of:to:rounding:));
}

{
  return static vDSP.convertElements<A, B>(of:to:rounding:)(a1, a2, a3, a4, a5, a6, a7, partial apply for closure #1 in static vDSP.convertElements<A, B>(of:to:rounding:));
}

{
  return static vDSP.convertElements<A, B>(of:to:rounding:)(a1, a2, a3, a4, a5, a6, a7, partial apply for closure #1 in static vDSP.convertElements<A, B>(of:to:rounding:));
}

{
  return static vDSP.convertElements<A, B>(of:to:rounding:)(a1, a2, a3, a4, a5, a6, a7, partial apply for closure #1 in static vDSP.convertElements<A, B>(of:to:rounding:));
}

{
  return static vDSP.convertElements<A, B>(of:to:rounding:)(a1, a2, a3, a4, a5, a6, a7, partial apply for closure #1 in static vDSP.convertElements<A, B>(of:to:rounding:));
}

{
  return static vDSP.convertElements<A, B>(of:to:rounding:)(a1, a2, a3, a4, a5, a6, a7, partial apply for closure #1 in static vDSP.convertElements<A, B>(of:to:rounding:));
}

{
  return static vDSP.convertElements<A, B>(of:to:rounding:)(a1, a2, a3, a4, a5, a6, a7, partial apply for closure #1 in static vDSP.convertElements<A, B>(of:to:rounding:));
}

uint64_t static vDSP.convertElements<A, B>(of:to:rounding:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = (*(a6 + 16))(a4, a6);
  result = (*(*(a7 + 8) + 16))(a5);
  if (result >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = result;
  }

  if (v13 < 0)
  {
    __break(1u);
  }

  else
  {
    MEMORY[0x1EEE9AC00](result);
    return (*(a7 + 16))(a8);
  }

  return result;
}

uint64_t closure #1 in closure #1 in static vDSP.convertElements<A, B>(of:to:rounding:)(uint64_t result, uint64_t a2, char a3, void *a4, uint64_t a5, uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  if (a3)
  {
    if (result)
    {
      if (*a4)
      {
        return a7();
      }

      goto LABEL_10;
    }

    __break(1u);
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (!result)
  {
    goto LABEL_9;
  }

  if (*a4)
  {
    return a6();
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t static vDSP.integerToFloatingPoint<A, B>(_:floatingPointType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return static vDSP.integerToFloatingPoint<A, B>(_:floatingPointType:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in static vDSP.integerToFloatingPoint<A, B>(_:floatingPointType:), partial apply for closure #2 in static vDSP.integerToFloatingPoint<A, B>(_:floatingPointType:));
}

{
  return static vDSP.integerToFloatingPoint<A, B>(_:floatingPointType:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in static vDSP.integerToFloatingPoint<A, B>(_:floatingPointType:), partial apply for closure #2 in static vDSP.integerToFloatingPoint<A, B>(_:floatingPointType:));
}

{
  return static vDSP.integerToFloatingPoint<A, B>(_:floatingPointType:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in static vDSP.integerToFloatingPoint<A, B>(_:floatingPointType:), partial apply for closure #2 in static vDSP.integerToFloatingPoint<A, B>(_:floatingPointType:));
}

{
  return static vDSP.integerToFloatingPoint<A, B>(_:floatingPointType:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in static vDSP.integerToFloatingPoint<A, B>(_:floatingPointType:), partial apply for closure #2 in static vDSP.integerToFloatingPoint<A, B>(_:floatingPointType:));
}

{
  return static vDSP.integerToFloatingPoint<A, B>(_:floatingPointType:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in static vDSP.integerToFloatingPoint<A, B>(_:floatingPointType:), partial apply for closure #2 in static vDSP.integerToFloatingPoint<A, B>(_:floatingPointType:));
}

{
  return static vDSP.integerToFloatingPoint<A, B>(_:floatingPointType:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in static vDSP.integerToFloatingPoint<A, B>(_:floatingPointType:), partial apply for closure #2 in static vDSP.integerToFloatingPoint<A, B>(_:floatingPointType:));
}

uint64_t closure #1 in static vDSP.integerToFloatingPoint<A, B>(_:floatingPointType:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8, uint64_t a9, unint64_t *a10, void (*a11)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(a8);
  v17 = lazy protocol witness table accessor for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>(a10, a8);
  a11(a3, a1, a4, v16, a6, v17);
  result = (*(a6 + 16))(a4, a6);
  *a2 = result;
  return result;
}

uint64_t static vDSP.integerToFloatingPoint<A, B>(_:floatingPointType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void *, uint64_t *), uint64_t (*a8)(void *, uint64_t *))
{
  if (swift_dynamicCastMetatype())
  {
    v12 = (*(a5 + 16))(a3, a5);
    v13 = MEMORY[0x1EEE9AC00](v12);
    _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSf_Tt1gq5(v13, a7);
LABEL_5:
    v16 = _arrayForceCast<A, B>(_:)();

    return v16;
  }

  if (swift_dynamicCastMetatype())
  {
    v14 = (*(a5 + 16))(a3, a5);
    v15 = MEMORY[0x1EEE9AC00](v14);
    _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSd_Tt1gq5(v15, a8);
    goto LABEL_5;
  }

  _StringGuts.grow(_:)(39);
  _typeName(_:qualified:)();

  MEMORY[0x1B8CB1340](0xD000000000000025, 0x80000001B7E7CE40);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t static vDSP.floatingPointToInteger<A, B>(_:integerType:rounding:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (swift_dynamicCastMetatype())
  {
    v8 = (*(a6 + 16))(a4, a6);
    v9 = MEMORY[0x1EEE9AC00](v8);
    _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCs5UInt8V_Tt1gq5(v9, partial apply for closure #1 in static vDSP.floatingPointToInteger<A, B>(_:integerType:rounding:));
LABEL_13:
    v20 = _arrayForceCast<A, B>(_:)();

    return v20;
  }

  if (swift_dynamicCastMetatype())
  {
    v10 = (*(a6 + 16))(a4, a6);
    v11 = MEMORY[0x1EEE9AC00](v10);
    _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCs6UInt16V_Tt1gq5(v11, partial apply for closure #2 in static vDSP.floatingPointToInteger<A, B>(_:integerType:rounding:));
    goto LABEL_13;
  }

  if (swift_dynamicCastMetatype())
  {
    v12 = (*(a6 + 16))(a4, a6);
    v13 = MEMORY[0x1EEE9AC00](v12);
    _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCs6UInt32V_Tt1gq5(v13, partial apply for closure #3 in static vDSP.floatingPointToInteger<A, B>(_:integerType:rounding:));
    goto LABEL_13;
  }

  if (swift_dynamicCastMetatype())
  {
    v14 = (*(a6 + 16))(a4, a6);
    v15 = MEMORY[0x1EEE9AC00](v14);
    _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCs4Int8V_Tt1gq5(v15, partial apply for closure #4 in static vDSP.floatingPointToInteger<A, B>(_:integerType:rounding:));
    goto LABEL_13;
  }

  if (swift_dynamicCastMetatype())
  {
    v16 = (*(a6 + 16))(a4, a6);
    v17 = MEMORY[0x1EEE9AC00](v16);
    _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCs5Int16V_Tt1gq5(v17, partial apply for closure #5 in static vDSP.floatingPointToInteger<A, B>(_:integerType:rounding:));
    goto LABEL_13;
  }

  if (swift_dynamicCastMetatype())
  {
    v18 = (*(a6 + 16))(a4, a6);
    v19 = MEMORY[0x1EEE9AC00](v18);
    _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCs5Int32V_Tt1gq5(v19, partial apply for closure #6 in static vDSP.floatingPointToInteger<A, B>(_:integerType:rounding:));
    goto LABEL_13;
  }

  _StringGuts.grow(_:)(39);
  _typeName(_:qualified:)();

  MEMORY[0x1B8CB1340](0xD000000000000025, 0x80000001B7E7CE40);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  if (swift_dynamicCastMetatype())
  {
    v8 = (*(a6 + 16))(a4, a6);
    v9 = MEMORY[0x1EEE9AC00](v8);
    _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCs5UInt8V_Tt1gq5(v9, partial apply for closure #1 in static vDSP.floatingPointToInteger<A, B>(_:integerType:rounding:));
LABEL_13:
    v20 = _arrayForceCast<A, B>(_:)();

    return v20;
  }

  if (swift_dynamicCastMetatype())
  {
    v10 = (*(a6 + 16))(a4, a6);
    v11 = MEMORY[0x1EEE9AC00](v10);
    _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCs6UInt16V_Tt1gq5(v11, partial apply for closure #2 in static vDSP.floatingPointToInteger<A, B>(_:integerType:rounding:));
    goto LABEL_13;
  }

  if (swift_dynamicCastMetatype())
  {
    v12 = (*(a6 + 16))(a4, a6);
    v13 = MEMORY[0x1EEE9AC00](v12);
    _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCs6UInt32V_Tt1gq5(v13, partial apply for closure #3 in static vDSP.floatingPointToInteger<A, B>(_:integerType:rounding:));
    goto LABEL_13;
  }

  if (swift_dynamicCastMetatype())
  {
    v14 = (*(a6 + 16))(a4, a6);
    v15 = MEMORY[0x1EEE9AC00](v14);
    _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCs4Int8V_Tt1gq5(v15, partial apply for closure #4 in static vDSP.floatingPointToInteger<A, B>(_:integerType:rounding:));
    goto LABEL_13;
  }

  if (swift_dynamicCastMetatype())
  {
    v16 = (*(a6 + 16))(a4, a6);
    v17 = MEMORY[0x1EEE9AC00](v16);
    _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCs5Int16V_Tt1gq5(v17, partial apply for closure #5 in static vDSP.floatingPointToInteger<A, B>(_:integerType:rounding:));
    goto LABEL_13;
  }

  if (swift_dynamicCastMetatype())
  {
    v18 = (*(a6 + 16))(a4, a6);
    v19 = MEMORY[0x1EEE9AC00](v18);
    _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCs5Int32V_Tt1gq5(v19, partial apply for closure #6 in static vDSP.floatingPointToInteger<A, B>(_:integerType:rounding:));
    goto LABEL_13;
  }

  _StringGuts.grow(_:)(39);
  _typeName(_:qualified:)();

  MEMORY[0x1B8CB1340](0xD000000000000025, 0x80000001B7E7CE40);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t closure #1 in static vDSP.floatingPointToInteger<A, B>(_:integerType:rounding:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, unint64_t *a11, void (*a12)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(a9);
  v18 = lazy protocol witness table accessor for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>(a11, a9);
  a12(a3, a1, a4, a5, v17, a7, v18);
  result = (*(a7 + 16))(a5, a7);
  *a2 = result;
  return result;
}

uint64_t static vDSP.float16ToFloat<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, void *))
{
  v10 = (*(a3 + 16))(a2, a3);
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = a1;
  return a5(v10, a4, v12);
}

uint64_t closure #1 in static vDSP.floatToDouble<A>(_:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, unint64_t *a8, void (*a9)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(a6);
  v16 = lazy protocol witness table accessor for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>(a8, a6);
  a9(a3, a1, a4, v15, a5, v16);
  result = (*(a5 + 16))(a4, a5);
  *a2 = result;
  return result;
}

uint64_t partial apply for closure #1 in static vDSP.convertElements<A, B>(of:to:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in static vDSP.convertElements<A, B>(of:to:)(a1, a2, partial apply for closure #1 in closure #1 in static vDSP.convertElements<A, B>(of:to:));
}

{
  return partial apply for closure #1 in static vDSP.convertElements<A, B>(of:to:)(a1, a2, partial apply for closure #1 in closure #1 in static vDSP.convertElements<A, B>(of:to:));
}

{
  v3 = *(v2 + 16);
  v4 = *(v2 + 32);
  v6[2] = a1;
  return (*(v4 + 24))(a2, v6, MEMORY[0x1E69E7CA8] + 8, v3);
}

uint64_t partial apply for closure #1 in static vDSP.convertElements<A, B>(of:to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[3];
  v5 = v3[5];
  v6 = v3[7];
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = v6;
  return (*(v5 + 16))(a3, v8, MEMORY[0x1E69E7CA8] + 8, v4);
}

uint64_t partial apply for closure #1 in static vDSP.convertElements<A, B>(of:to:)(uint64_t a1)
{
  return partial apply for closure #1 in static vDSP.convertElements<A, B>(of:to:)(a1, partial apply for closure #1 in closure #1 in static vDSP.convertElements<A, B>(of:to:));
}

{
  return partial apply for closure #1 in static vDSP.convertElements<A, B>(of:to:)(a1, partial apply for closure #1 in closure #1 in static vDSP.convertElements<A, B>(of:to:));
}

{
  return partial apply for closure #1 in static vDSP.convertElements<A, B>(of:to:)(a1, partial apply for closure #1 in closure #1 in static vDSP.convertElements<A, B>(of:to:));
}

{
  return partial apply for closure #1 in static vDSP.convertElements<A, B>(of:to:)(a1, partial apply for closure #1 in closure #1 in static vDSP.convertElements<A, B>(of:to:));
}

{
  return partial apply for closure #1 in static vDSP.convertElements<A, B>(of:to:)(a1, partial apply for closure #1 in closure #1 in static vDSP.convertElements<A, B>(of:to:));
}

{
  return partial apply for closure #1 in static vDSP.convertElements<A, B>(of:to:)(a1, partial apply for closure #1 in closure #1 in static vDSP.convertElements<A, B>(of:to:));
}

{
  return partial apply for closure #1 in static vDSP.convertElements<A, B>(of:to:)(a1, partial apply for closure #1 in closure #1 in static vDSP.convertElements<A, B>(of:to:));
}

{
  return partial apply for closure #1 in static vDSP.convertElements<A, B>(of:to:)(a1, partial apply for closure #1 in closure #1 in static vDSP.convertElements<A, B>(of:to:));
}

{
  return partial apply for closure #1 in static vDSP.convertElements<A, B>(of:to:)(a1, partial apply for closure #1 in closure #1 in static vDSP.convertElements<A, B>(of:to:));
}

{
  return partial apply for closure #1 in static vDSP.convertElements<A, B>(of:to:)(a1, partial apply for closure #1 in closure #1 in static vDSP.convertElements<A, B>(of:to:));
}

{
  return partial apply for closure #1 in static vDSP.convertElements<A, B>(of:to:)(a1, partial apply for closure #1 in closure #1 in static vDSP.convertElements<A, B>(of:to:));
}

{
  return partial apply for closure #1 in static vDSP.convertElements<A, B>(of:to:)(a1, partial apply for closure #1 in closure #1 in static vDSP.convertElements<A, B>(of:to:));
}

{
  return partial apply for closure #1 in static vDSP.convertElements<A, B>(of:to:)(a1, partial apply for closure #1 in closure #1 in static vDSP.convertElements<A, B>(of:to:));
}

{
  return partial apply for closure #1 in static vDSP.convertElements<A, B>(of:to:)(a1, partial apply for closure #1 in closure #1 in static vDSP.convertElements<A, B>(of:to:));
}

uint64_t partial apply for closure #1 in static vDSP.convertElements<A, B>(of:to:rounding:)(uint64_t a1)
{
  return partial apply for closure #1 in static vDSP.convertElements<A, B>(of:to:rounding:)(a1, partial apply for closure #1 in closure #1 in static vDSP.convertElements<A, B>(of:to:rounding:));
}

{
  return partial apply for closure #1 in static vDSP.convertElements<A, B>(of:to:rounding:)(a1, partial apply for closure #1 in closure #1 in static vDSP.convertElements<A, B>(of:to:rounding:));
}

{
  return partial apply for closure #1 in static vDSP.convertElements<A, B>(of:to:rounding:)(a1, partial apply for closure #1 in closure #1 in static vDSP.convertElements<A, B>(of:to:rounding:));
}

{
  return partial apply for closure #1 in static vDSP.convertElements<A, B>(of:to:rounding:)(a1, partial apply for closure #1 in closure #1 in static vDSP.convertElements<A, B>(of:to:rounding:));
}

{
  return partial apply for closure #1 in static vDSP.convertElements<A, B>(of:to:rounding:)(a1, partial apply for closure #1 in closure #1 in static vDSP.convertElements<A, B>(of:to:rounding:));
}

{
  return partial apply for closure #1 in static vDSP.convertElements<A, B>(of:to:rounding:)(a1, partial apply for closure #1 in closure #1 in static vDSP.convertElements<A, B>(of:to:rounding:));
}

{
  return partial apply for closure #1 in static vDSP.convertElements<A, B>(of:to:rounding:)(a1, partial apply for closure #1 in closure #1 in static vDSP.convertElements<A, B>(of:to:rounding:));
}

{
  return partial apply for closure #1 in static vDSP.convertElements<A, B>(of:to:rounding:)(a1, partial apply for closure #1 in closure #1 in static vDSP.convertElements<A, B>(of:to:rounding:));
}

{
  return partial apply for closure #1 in static vDSP.convertElements<A, B>(of:to:rounding:)(a1, partial apply for closure #1 in closure #1 in static vDSP.convertElements<A, B>(of:to:rounding:));
}

{
  return partial apply for closure #1 in static vDSP.convertElements<A, B>(of:to:rounding:)(a1, partial apply for closure #1 in closure #1 in static vDSP.convertElements<A, B>(of:to:rounding:));
}

{
  return partial apply for closure #1 in static vDSP.convertElements<A, B>(of:to:rounding:)(a1, partial apply for closure #1 in closure #1 in static vDSP.convertElements<A, B>(of:to:rounding:));
}

{
  return partial apply for closure #1 in static vDSP.convertElements<A, B>(of:to:rounding:)(a1, partial apply for closure #1 in closure #1 in static vDSP.convertElements<A, B>(of:to:rounding:));
}

uint64_t partial apply for closure #1 in static vDSP.convertElements<A, B>(of:to:rounding:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 32);
  v5 = *(v2 + 64);
  v7[16] = *(v2 + 56);
  v8 = a1;
  v9 = v5;
  return (*(v4 + 24))(a2, v7, MEMORY[0x1E69E7CA8] + 8, v3);
}

uint64_t partial apply for closure #2 in static vDSP.integerToFloatingPoint<A, B>(_:floatingPointType:)(uint64_t a1, uint64_t *a2)
{
  return partial apply for closure #2 in static vDSP.integerToFloatingPoint<A, B>(_:floatingPointType:)(a1, a2, &_sSrySdGMd, &_sSrySdGMR, &lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>, static vDSP.convertElements<A, B>(of:to:));
}

{
  return partial apply for closure #2 in static vDSP.integerToFloatingPoint<A, B>(_:floatingPointType:)(a1, a2, &_sSrySdGMd, &_sSrySdGMR, &lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>, static vDSP.convertElements<A, B>(of:to:));
}

{
  return partial apply for closure #2 in static vDSP.integerToFloatingPoint<A, B>(_:floatingPointType:)(a1, a2, &_sSrySdGMd, &_sSrySdGMR, &lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>, static vDSP.convertElements<A, B>(of:to:));
}

{
  return partial apply for closure #2 in static vDSP.integerToFloatingPoint<A, B>(_:floatingPointType:)(a1, a2, &_sSrySdGMd, &_sSrySdGMR, &lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>, static vDSP.convertElements<A, B>(of:to:));
}

{
  return partial apply for closure #2 in static vDSP.integerToFloatingPoint<A, B>(_:floatingPointType:)(a1, a2, &_sSrySdGMd, &_sSrySdGMR, &lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>, static vDSP.convertElements<A, B>(of:to:));
}

{
  return partial apply for closure #2 in static vDSP.integerToFloatingPoint<A, B>(_:floatingPointType:)(a1, a2, &_sSrySdGMd, &_sSrySdGMR, &lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>, static vDSP.convertElements<A, B>(of:to:));
}

uint64_t partial apply for closure #1 in static vDSP.integerToFloatingPoint<A, B>(_:floatingPointType:)(uint64_t a1, uint64_t *a2)
{
  return partial apply for closure #2 in static vDSP.integerToFloatingPoint<A, B>(_:floatingPointType:)(a1, a2, &_sSrySfGMd, &_sSrySfGMR, &lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Float> and conformance UnsafeMutableBufferPointer<A>, static vDSP.convertElements<A, B>(of:to:));
}

{
  return partial apply for closure #2 in static vDSP.integerToFloatingPoint<A, B>(_:floatingPointType:)(a1, a2, &_sSrySfGMd, &_sSrySfGMR, &lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Float> and conformance UnsafeMutableBufferPointer<A>, static vDSP.convertElements<A, B>(of:to:));
}

{
  return partial apply for closure #2 in static vDSP.integerToFloatingPoint<A, B>(_:floatingPointType:)(a1, a2, &_sSrySfGMd, &_sSrySfGMR, &lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Float> and conformance UnsafeMutableBufferPointer<A>, static vDSP.convertElements<A, B>(of:to:));
}

{
  return partial apply for closure #2 in static vDSP.integerToFloatingPoint<A, B>(_:floatingPointType:)(a1, a2, &_sSrySfGMd, &_sSrySfGMR, &lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Float> and conformance UnsafeMutableBufferPointer<A>, static vDSP.convertElements<A, B>(of:to:));
}

{
  return partial apply for closure #2 in static vDSP.integerToFloatingPoint<A, B>(_:floatingPointType:)(a1, a2, &_sSrySfGMd, &_sSrySfGMR, &lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Float> and conformance UnsafeMutableBufferPointer<A>, static vDSP.convertElements<A, B>(of:to:));
}

{
  return partial apply for closure #2 in static vDSP.integerToFloatingPoint<A, B>(_:floatingPointType:)(a1, a2, &_sSrySfGMd, &_sSrySfGMR, &lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Float> and conformance UnsafeMutableBufferPointer<A>, static vDSP.convertElements<A, B>(of:to:));
}

uint64_t partial apply for closure #6 in static vDSP.floatingPointToInteger<A, B>(_:integerType:rounding:)(uint64_t a1, uint64_t *a2)
{
  return partial apply for closure #6 in static vDSP.floatingPointToInteger<A, B>(_:integerType:rounding:)(a1, a2, &_sSrys5Int32VGMd, &_sSrys5Int32VGMR, &lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Int32> and conformance UnsafeMutableBufferPointer<A>, static vDSP.convertElements<A, B>(of:to:rounding:));
}

{
  return partial apply for closure #6 in static vDSP.floatingPointToInteger<A, B>(_:integerType:rounding:)(a1, a2, &_sSrys5Int32VGMd, &_sSrys5Int32VGMR, &lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Int32> and conformance UnsafeMutableBufferPointer<A>, static vDSP.convertElements<A, B>(of:to:rounding:));
}

uint64_t partial apply for closure #5 in static vDSP.floatingPointToInteger<A, B>(_:integerType:rounding:)(uint64_t a1, uint64_t *a2)
{
  return partial apply for closure #6 in static vDSP.floatingPointToInteger<A, B>(_:integerType:rounding:)(a1, a2, &_sSrys5Int16VGMd, &_sSrys5Int16VGMR, &lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Int16> and conformance UnsafeMutableBufferPointer<A>, static vDSP.convertElements<A, B>(of:to:rounding:));
}

{
  return partial apply for closure #6 in static vDSP.floatingPointToInteger<A, B>(_:integerType:rounding:)(a1, a2, &_sSrys5Int16VGMd, &_sSrys5Int16VGMR, &lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Int16> and conformance UnsafeMutableBufferPointer<A>, static vDSP.convertElements<A, B>(of:to:rounding:));
}

uint64_t partial apply for closure #4 in static vDSP.floatingPointToInteger<A, B>(_:integerType:rounding:)(uint64_t a1, uint64_t *a2)
{
  return partial apply for closure #6 in static vDSP.floatingPointToInteger<A, B>(_:integerType:rounding:)(a1, a2, &_sSrys4Int8VGMd, &_sSrys4Int8VGMR, &lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Int8> and conformance UnsafeMutableBufferPointer<A>, static vDSP.convertElements<A, B>(of:to:rounding:));
}

{
  return partial apply for closure #6 in static vDSP.floatingPointToInteger<A, B>(_:integerType:rounding:)(a1, a2, &_sSrys4Int8VGMd, &_sSrys4Int8VGMR, &lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Int8> and conformance UnsafeMutableBufferPointer<A>, static vDSP.convertElements<A, B>(of:to:rounding:));
}

uint64_t partial apply for closure #3 in static vDSP.floatingPointToInteger<A, B>(_:integerType:rounding:)(uint64_t a1, uint64_t *a2)
{
  return partial apply for closure #6 in static vDSP.floatingPointToInteger<A, B>(_:integerType:rounding:)(a1, a2, &_sSrys6UInt32VGMd, &_sSrys6UInt32VGMR, &lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<UInt32> and conformance UnsafeMutableBufferPointer<A>, static vDSP.convertElements<A, B>(of:to:rounding:));
}

{
  return partial apply for closure #6 in static vDSP.floatingPointToInteger<A, B>(_:integerType:rounding:)(a1, a2, &_sSrys6UInt32VGMd, &_sSrys6UInt32VGMR, &lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<UInt32> and conformance UnsafeMutableBufferPointer<A>, static vDSP.convertElements<A, B>(of:to:rounding:));
}

uint64_t partial apply for closure #2 in static vDSP.floatingPointToInteger<A, B>(_:integerType:rounding:)(uint64_t a1, uint64_t *a2)
{
  return partial apply for closure #6 in static vDSP.floatingPointToInteger<A, B>(_:integerType:rounding:)(a1, a2, &_sSrys6UInt16VGMd, &_sSrys6UInt16VGMR, &lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<UInt16> and conformance UnsafeMutableBufferPointer<A>, static vDSP.convertElements<A, B>(of:to:rounding:));
}

{
  return partial apply for closure #6 in static vDSP.floatingPointToInteger<A, B>(_:integerType:rounding:)(a1, a2, &_sSrys6UInt16VGMd, &_sSrys6UInt16VGMR, &lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<UInt16> and conformance UnsafeMutableBufferPointer<A>, static vDSP.convertElements<A, B>(of:to:rounding:));
}

uint64_t partial apply for closure #1 in static vDSP.floatingPointToInteger<A, B>(_:integerType:rounding:)(uint64_t a1, uint64_t *a2)
{
  return partial apply for closure #6 in static vDSP.floatingPointToInteger<A, B>(_:integerType:rounding:)(a1, a2, &_sSrys5UInt8VGMd, &_sSrys5UInt8VGMR, &lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<UInt8> and conformance UnsafeMutableBufferPointer<A>, static vDSP.convertElements<A, B>(of:to:rounding:));
}

{
  return partial apply for closure #6 in static vDSP.floatingPointToInteger<A, B>(_:integerType:rounding:)(a1, a2, &_sSrys5UInt8VGMd, &_sSrys5UInt8VGMR, &lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<UInt8> and conformance UnsafeMutableBufferPointer<A>, static vDSP.convertElements<A, B>(of:to:rounding:));
}

unint64_t lazy protocol witness table accessor for type vDSP.RoundingMode and conformance vDSP.RoundingMode()
{
  result = lazy protocol witness table cache variable for type vDSP.RoundingMode and conformance vDSP.RoundingMode;
  if (!lazy protocol witness table cache variable for type vDSP.RoundingMode and conformance vDSP.RoundingMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type vDSP.RoundingMode and conformance vDSP.RoundingMode);
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in static vDSP.convertElements<A, B>(of:to:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in closure #1 in static vDSP.convertElements<A, B>(of:to:)(a1, a2, MEMORY[0x1E6958E88]);
}

{
  return partial apply for closure #1 in closure #1 in static vDSP.convertElements<A, B>(of:to:)(a1, a2, MEMORY[0x1E6959170]);
}

{
  return partial apply for closure #1 in closure #1 in static vDSP.convertElements<A, B>(of:to:)(a1, a2, MEMORY[0x1E6958F68]);
}

{
  return partial apply for closure #1 in closure #1 in static vDSP.convertElements<A, B>(of:to:)(a1, a2, MEMORY[0x1E6958F60]);
}

{
  return partial apply for closure #1 in closure #1 in static vDSP.convertElements<A, B>(of:to:)(a1, a2, MEMORY[0x1E6958F58]);
}

{
  return partial apply for closure #1 in closure #1 in static vDSP.convertElements<A, B>(of:to:)(a1, a2, MEMORY[0x1E6958F50]);
}

{
  return partial apply for closure #1 in closure #1 in static vDSP.convertElements<A, B>(of:to:)(a1, a2, MEMORY[0x1E6958F78]);
}

{
  return partial apply for closure #1 in closure #1 in static vDSP.convertElements<A, B>(of:to:)(a1, a2, MEMORY[0x1E6958F70]);
}

{
  return partial apply for closure #1 in closure #1 in static vDSP.convertElements<A, B>(of:to:)(a1, a2, MEMORY[0x1E6958F98]);
}

{
  return partial apply for closure #1 in closure #1 in static vDSP.convertElements<A, B>(of:to:)(a1, a2, MEMORY[0x1E6958F90]);
}

{
  return partial apply for closure #1 in closure #1 in static vDSP.convertElements<A, B>(of:to:)(a1, a2, MEMORY[0x1E6958F88]);
}

{
  return partial apply for closure #1 in closure #1 in static vDSP.convertElements<A, B>(of:to:)(a1, a2, MEMORY[0x1E6958F80]);
}

{
  return partial apply for closure #1 in closure #1 in static vDSP.convertElements<A, B>(of:to:)(a1, a2, MEMORY[0x1E6958FA8]);
}

{
  return partial apply for closure #1 in closure #1 in static vDSP.convertElements<A, B>(of:to:)(a1, a2, MEMORY[0x1E6958FA0]);
}

uint64_t partial apply for closure #1 in closure #1 in static vDSP.convertElements<A, B>(of:to:rounding:)(uint64_t a1, uint64_t a2)
{
  return closure #1 in closure #1 in static vDSP.convertElements<A, B>(of:to:rounding:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), MEMORY[0x1E6958F48], MEMORY[0x1E6958F18]);
}

{
  return closure #1 in closure #1 in static vDSP.convertElements<A, B>(of:to:rounding:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), MEMORY[0x1E6958F40], MEMORY[0x1E6958F10]);
}

{
  return closure #1 in closure #1 in static vDSP.convertElements<A, B>(of:to:rounding:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), MEMORY[0x1E6958EB8], MEMORY[0x1E6958EE8]);
}

{
  return closure #1 in closure #1 in static vDSP.convertElements<A, B>(of:to:rounding:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), MEMORY[0x1E6958EB0], MEMORY[0x1E6958EE0]);
}

{
  return closure #1 in closure #1 in static vDSP.convertElements<A, B>(of:to:rounding:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), MEMORY[0x1E6958E98], MEMORY[0x1E6958EC8]);
}

{
  return closure #1 in closure #1 in static vDSP.convertElements<A, B>(of:to:rounding:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), MEMORY[0x1E6958E90], MEMORY[0x1E6958EC0]);
}

{
  return closure #1 in closure #1 in static vDSP.convertElements<A, B>(of:to:rounding:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), MEMORY[0x1E6958F38], MEMORY[0x1E6958F08]);
}

{
  return closure #1 in closure #1 in static vDSP.convertElements<A, B>(of:to:rounding:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), MEMORY[0x1E6958F30], MEMORY[0x1E6958F00]);
}

{
  return closure #1 in closure #1 in static vDSP.convertElements<A, B>(of:to:rounding:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), MEMORY[0x1E6958F28], MEMORY[0x1E6958EF8]);
}

{
  return closure #1 in closure #1 in static vDSP.convertElements<A, B>(of:to:rounding:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), MEMORY[0x1E6958F20], MEMORY[0x1E6958EF0]);
}

{
  return closure #1 in closure #1 in static vDSP.convertElements<A, B>(of:to:rounding:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), MEMORY[0x1E6958EA8], MEMORY[0x1E6958ED8]);
}

{
  return closure #1 in closure #1 in static vDSP.convertElements<A, B>(of:to:rounding:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), MEMORY[0x1E6958EA0], MEMORY[0x1E6958ED0]);
}

uint64_t partial apply for closure #1 in closure #1 in static vDSP.convertElements<A, B>(of:to:)(uint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  if (result)
  {
    if (**(v3 + 16))
    {
      return a3();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

vImage_Error partial apply for closure #1 in closure #1 in static vDSP.convertElements<A, B>(of:to:)(void **a1)
{
  return closure #1 in closure #1 in static vDSP.convertElements<A, B>(of:to:)(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32));
}

{
  return closure #1 in closure #1 in static vDSP.convertElements<A, B>(of:to:)(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32));
}

uint64_t static BNNS.applyTopK(k:input:bestValues:bestIndices:axis:batchSize:filterParameters:)(uint64_t a1, _OWORD *a2, __int128 *a3, _OWORD *a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t (*a11)(uint64_t, uint64_t, uint64_t, _OWORD *, uint64_t, _OWORD *, uint64_t, _OWORD *, uint64_t, int *))
{
  v50 = *MEMORY[0x1E69E9840];
  v14 = a2[9];
  v49[8] = a2[8];
  v49[9] = v14;
  v49[10] = a2[10];
  v15 = a2[5];
  v49[4] = a2[4];
  v49[5] = v15;
  v16 = a2[7];
  v49[6] = a2[6];
  v49[7] = v16;
  v17 = a2[1];
  v49[0] = *a2;
  v49[1] = v17;
  v18 = a2[3];
  v49[2] = a2[2];
  v49[3] = v18;
  v19 = a3[8];
  v20 = a3[9];
  v21 = a3[6];
  v48[7] = a3[7];
  v48[8] = v19;
  v22 = a3[10];
  v48[9] = v20;
  v48[10] = v22;
  v23 = a3[4];
  v24 = a3[5];
  v25 = a3[2];
  v48[3] = a3[3];
  v48[4] = v23;
  v48[5] = v24;
  v48[6] = v21;
  v26 = *a3;
  v48[1] = a3[1];
  v48[2] = v25;
  v27 = a4[9];
  v47[8] = a4[8];
  v47[9] = v27;
  v47[10] = a4[10];
  v48[0] = v26;
  v28 = a4[5];
  v47[4] = a4[4];
  v47[5] = v28;
  v29 = a4[7];
  v47[6] = a4[6];
  v47[7] = v29;
  v30 = a4[1];
  v47[0] = *a4;
  v47[1] = v30;
  v31 = a4[3];
  v47[2] = a4[2];
  v47[3] = v31;
  if (a9 == 1)
  {
    BNNSNDArrayDescriptor.shape.getter(v46);
    v32 = BNNS.Shape.batchStride.getter();
    BNNSNDArrayDescriptor.shape.getter(v45);
    v33 = BNNS.Shape.batchStride.getter();
    BNNSNDArrayDescriptor.shape.getter(v44);
    v34 = BNNS.Shape.batchStride.getter();
    result = a11(a1, a5, a6, v49, v32, v48, v33, v47, v34, 0);
  }

  else
  {
    v40 = a7;
    v41 = a8;
    v42 = a9;
    v43 = a10;
    BNNSNDArrayDescriptor.shape.getter(v46);
    v36 = BNNS.Shape.batchStride.getter();
    BNNSNDArrayDescriptor.shape.getter(v45);
    v37 = BNNS.Shape.batchStride.getter();
    BNNSNDArrayDescriptor.shape.getter(v44);
    v38 = BNNS.Shape.batchStride.getter();
    result = a11(a1, a5, a6, v49, v36, v48, v37, v47, v38, &v40);
  }

  if (result)
  {
    lazy protocol witness table accessor for type BNNS.Error and conformance BNNS.Error();
    swift_allocError();
    *v39 = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t static vDSP.taperedMerge<A, B, C>(_:_:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  return static vDSP.taperedMerge<A, B, C>(_:_:result:)(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

{
  return static vDSP.taperedMerge<A, B, C>(_:_:result:)(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

{
  v13 = *(a7 + 16);
  v14 = v13(a4, a7);
  result = (*(a8 + 16))(a5, a8);
  if (v14 != result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v16 = v13(a4, a7);
  result = (*(*(a9 + 8) + 16))(a6);
  if (v16 != result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = v13(a4, a7);
  if ((result & 0x8000000000000000) == 0)
  {
    MEMORY[0x1EEE9AC00](result);
    return (*(a7 + 24))(v17);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t partial apply for closure #1 in static vDSP.taperedMerge<A, B, C>(_:_:result:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in static vDSP.taperedMerge<A, B, C>(_:_:result:)(a1, a2, partial apply for closure #1 in closure #1 in static vDSP.taperedMerge<A, B, C>(_:_:result:));
}

{
  return partial apply for closure #1 in static vDSP.taperedMerge<A, B, C>(_:_:result:)(a1, a2, partial apply for closure #1 in closure #1 in static vDSP.taperedMerge<A, B, C>(_:_:result:));
}

uint64_t partial apply for closure #1 in static vDSP.taperedMerge<A, B, C>(_:_:result:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 40);
  v5 = *(v3 + 72);
  v7[2] = *(v3 + 16);
  v8 = *(v3 + 24);
  v9 = v4;
  v10 = *(v3 + 48);
  v11 = v5;
  v12 = a1;
  v13 = a2;
  return (*(v10 + 24))(a3, v7, MEMORY[0x1E69E7CA8] + 8, v8);
}

void *closure #1 in closure #1 in closure #1 in static vDSP.taperedMerge<A, B, C>(_:_:result:)(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, void, uint64_t, uint64_t))
{
  if (!a2)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (!a4)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (*result)
  {
    return a7(a2, 1, a4, 1, *result, 1, a6);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t static vDSP.taperedMerge<A, B>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return static vDSP.taperedMerge<A, B>(_:_:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in static vDSP.taperedMerge<A, B>(_:_:), _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSf_Tt1gq5);
}

{
  return static vDSP.taperedMerge<A, B>(_:_:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in static vDSP.taperedMerge<A, B>(_:_:), _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSd_Tt1gq5);
}

uint64_t partial apply for closure #1 in static vDSP.taperedMerge<A, B>(_:_:)(uint64_t a1, void *a2)
{
  return partial apply for closure #1 in static vDSP.taperedMerge<A, B>(_:_:)(a1, a2, &_sSrySfGMd, &_sSrySfGMR, &lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Float> and conformance UnsafeMutableBufferPointer<A>, static vDSP.taperedMerge<A, B, C>(_:_:result:));
}

{
  return partial apply for closure #1 in static vDSP.taperedMerge<A, B>(_:_:)(a1, a2, &_sSrySdGMd, &_sSrySdGMR, &lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>, static vDSP.taperedMerge<A, B, C>(_:_:result:));
}

uint64_t static vDSP.taperedMerge<A, B>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t, void *))
{
  v16 = (*(a5 + 16))(a3, a5);
  v18[2] = a3;
  v18[3] = a4;
  v18[4] = a5;
  v18[5] = a6;
  v18[6] = a1;
  v18[7] = a2;
  v18[8] = v16;
  return a8(v16, a7, v18);
}

uint64_t static vDSP.swapElements<A, B>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return static vDSP.swapElements<A, B>(_:_:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in static vDSP.swapElements<A, B>(_:_:));
}

{
  return static vDSP.swapElements<A, B>(_:_:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in static vDSP.swapElements<A, B>(_:_:));
}

uint64_t static vDSP.swapElements<A, B>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = *(a5 + 8);
  v12 = *(v11 + 16);
  v13 = v12(a3, v11);
  result = (*(*(a6 + 8) + 16))(a4);
  if (v13 == result)
  {
    result = v12(a3, v11);
    if ((result & 0x8000000000000000) == 0)
    {
      MEMORY[0x1EEE9AC00](result);
      return (*(a5 + 16))(a7);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in closure #1 in static vDSP.swapElements<A, B>(_:_:)(void *a1, uint64_t *a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = *a2;
  if (*a2)
  {
    if (*a1)
    {
      return a4();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t static vDSP.gather<A, B, C>(_:indices:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  return static vDSP.gather<A, B, C>(_:indices:result:)(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

{
  return static vDSP.gather<A, B, C>(_:indices:result:)(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

{
  v10 = (*(a8 + 16))(a5, a8);
  v11 = *(a9 + 8);
  v12 = *(v11 + 16);
  result = v12(a6, v11);
  if (v10 == result)
  {
    result = v12(a6, v11);
    if ((result & 0x8000000000000000) == 0)
    {
      MEMORY[0x1EEE9AC00](result);
      return (*(a9 + 16))(v14);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in static vDSP.gather<A, B, C>(_:indices:result:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, void, uint64_t))
{
  if (!a3)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (*a5)
  {
    return a7(a3, result, 1, *a5, 1);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t static vDSP.gather<A, B>(_:indices:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return static vDSP.gather<A, B>(_:indices:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in static vDSP.gather<A, B>(_:indices:), _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSf_Tt1gq5);
}

{
  return static vDSP.gather<A, B>(_:indices:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in static vDSP.gather<A, B>(_:indices:), _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSd_Tt1gq5);
}

uint64_t static vDSP.gather<A, B>(_:indices:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t, void *))
{
  v16 = (*(a6 + 16))(a4, a6);
  v18[2] = a3;
  v18[3] = a4;
  v18[4] = a5;
  v18[5] = a6;
  v18[6] = a1;
  v18[7] = a2;
  v18[8] = v16;
  return a8(v16, a7, v18);
}

uint64_t static vDSP.compress<A, B, C>(_:gatingVector:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  return static vDSP.compress<A, B, C>(_:gatingVector:result:)(a1, a2, a3, a4, a5, a6, a7, a8);
}

{
  return static vDSP.compress<A, B, C>(_:gatingVector:result:)(a1, a2, a3, a4, a5, a6, a7, a8);
}

{
  v12 = *(a7 + 16);
  v13 = v12(a4, a7);
  result = (*(a8 + 16))(a5, a8);
  if (v13 == result)
  {
    result = v12(a4, a7);
    if ((result & 0x8000000000000000) == 0)
    {
      MEMORY[0x1EEE9AC00](result);
      return (*(v15 + 16))(v16);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in static vDSP.compress<A, B, C>(_:gatingVector:result:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (!a3)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v7 = *a5;
  if (v7)
  {
    return a7(a3, 1, result, 1, v7, 1, a6);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t static vDSP.compress<A, B>(_:gatingVector:nonZeroGatingCount:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a4)
  {
    v8 = (*(a8 + 16))(a6, a8);
    v9 = MEMORY[0x1EEE9AC00](v8);
    _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSf_Tt1gq5(v9, partial apply for closure #1 in static vDSP.compress<A, B>(_:gatingVector:nonZeroGatingCount:));
  }

  MEMORY[0x1EEE9AC00](a1);
  return _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSf_Tt1gq5(v10, partial apply for closure #2 in static vDSP.compress<A, B>(_:gatingVector:nonZeroGatingCount:));
}

{
  if (a4)
  {
    v8 = (*(a8 + 16))(a6, a8);
    v9 = MEMORY[0x1EEE9AC00](v8);
    _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSd_Tt1gq5(v9, partial apply for closure #1 in static vDSP.compress<A, B>(_:gatingVector:nonZeroGatingCount:));
  }

  MEMORY[0x1EEE9AC00](a1);
  return _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSd_Tt1gq5(v10, partial apply for closure #2 in static vDSP.compress<A, B>(_:gatingVector:nonZeroGatingCount:));
}

void closure #1 in closure #1 in static vDSP.compress<A, B>(_:gatingVector:nonZeroGatingCount:)(const float *a1, uint64_t a2, const float *a3, float **a4, uint64_t a5, vDSP_Length *a6, vDSP_Length *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (!a1)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v11 = *a4;
  if (*a4)
  {
    v16 = (*(a11 + 16))(a9);
    if ((v16 & 0x8000000000000000) == 0)
    {
      vDSP_vclipc(a1, 1, a3, a3, v11, 1, v16, a6, a7);
      return;
    }

    __break(1u);
    goto LABEL_6;
  }

LABEL_7:
  __break(1u);
}

void closure #1 in closure #1 in static vDSP.compress<A, B>(_:gatingVector:nonZeroGatingCount:)(const double *a1, uint64_t a2, const double *a3, double **a4, uint64_t a5, vDSP_Length *a6, vDSP_Length *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (!a1)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v11 = *a4;
  if (*a4)
  {
    v16 = (*(a11 + 16))(a9);
    if ((v16 & 0x8000000000000000) == 0)
    {
      vDSP_vclipcD(a1, 1, a3, a3, v11, 1, v16, a6, a7);
      return;
    }

    __break(1u);
    goto LABEL_6;
  }

LABEL_7:
  __break(1u);
}

uint64_t partial apply for closure #1 in static vDSP.taperedMerge<A, B>(_:_:)(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, unint64_t *a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = v6[2];
  v10 = v6[3];
  v18 = v6[5];
  v19 = v6[4];
  v12 = v6[6];
  v13 = v6[7];
  v17 = v6[8];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v15 = lazy protocol witness table accessor for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>(a5, a3);
  result = a6(v12, v13, a1, v11, v10, v14, v19, v18, v15);
  *a2 = v17;
  return result;
}

uint64_t partial apply for closure #1 in static vDSP.swapElements<A, B>(_:_:)(uint64_t a1)
{
  return partial apply for closure #1 in static vDSP.swapElements<A, B>(_:_:)(a1, partial apply for closure #1 in closure #1 in static vDSP.swapElements<A, B>(_:_:));
}

{
  return partial apply for closure #1 in static vDSP.swapElements<A, B>(_:_:)(a1, partial apply for closure #1 in closure #1 in static vDSP.swapElements<A, B>(_:_:));
}

uint64_t partial apply for closure #1 in static vDSP.swapElements<A, B>(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 40);
  v6[2] = a1;
  return (*(v4 + 16))(a2, v6, MEMORY[0x1E69E7CA8] + 8, v3);
}

uint64_t partial apply for closure #1 in static vDSP.gather<A, B, C>(_:indices:result:)(uint64_t a1)
{
  return partial apply for closure #1 in static vDSP.convolve<A, B, C>(_:withKernel:result:)(a1, partial apply for closure #1 in closure #1 in static vDSP.gather<A, B, C>(_:indices:result:));
}

{
  return partial apply for closure #1 in static vDSP.convolve<A, B, C>(_:withKernel:result:)(a1, partial apply for closure #1 in closure #1 in static vDSP.gather<A, B, C>(_:indices:result:));
}

uint64_t partial apply for closure #1 in static vDSP.gather<A, B>(_:indices:)(uint64_t a1, void *a2)
{
  return partial apply for closure #1 in static vDSP.taperedMerge<A, B>(_:_:)(a1, a2, &_sSrySfGMd, &_sSrySfGMR, &lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Float> and conformance UnsafeMutableBufferPointer<A>, static vDSP.gather<A, B, C>(_:indices:result:));
}

{
  return partial apply for closure #1 in static vDSP.taperedMerge<A, B>(_:_:)(a1, a2, &_sSrySdGMd, &_sSrySdGMR, &lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>, static vDSP.gather<A, B, C>(_:indices:result:));
}

uint64_t partial apply for closure #1 in static vDSP.compress<A, B, C>(_:gatingVector:result:)(uint64_t a1)
{
  return partial apply for closure #1 in static vDSP.convolve<A, B, C>(_:withKernel:result:)(a1, partial apply for closure #1 in closure #1 in static vDSP.compress<A, B, C>(_:gatingVector:result:));
}

{
  return partial apply for closure #1 in static vDSP.convolve<A, B, C>(_:withKernel:result:)(a1, partial apply for closure #1 in closure #1 in static vDSP.compress<A, B, C>(_:gatingVector:result:));
}

uint64_t partial apply for closure #1 in static vDSP.compress<A, B>(_:gatingVector:nonZeroGatingCount:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in static vDSP.compress<A, B>(_:gatingVector:nonZeroGatingCount:)(a1, a2, partial apply for closure #1 in closure #1 in static vDSP.compress<A, B>(_:gatingVector:nonZeroGatingCount:));
}

{
  return partial apply for closure #1 in static vDSP.compress<A, B>(_:gatingVector:nonZeroGatingCount:)(a1, a2, partial apply for closure #1 in closure #1 in static vDSP.compress<A, B>(_:gatingVector:nonZeroGatingCount:));
}

uint64_t partial apply for closure #2 in static vDSP.compress<A, B>(_:gatingVector:nonZeroGatingCount:)(uint64_t a1, void *a2)
{
  return partial apply for closure #1 in static vDSP.taperedMerge<A, B>(_:_:)(a1, a2, &_sSrySfGMd, &_sSrySfGMR, &lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Float> and conformance UnsafeMutableBufferPointer<A>, static vDSP.compress<A, B, C>(_:gatingVector:result:));
}

{
  return partial apply for closure #1 in static vDSP.taperedMerge<A, B>(_:_:)(a1, a2, &_sSrySdGMd, &_sSrySdGMR, &lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>, static vDSP.compress<A, B, C>(_:gatingVector:result:));
}

uint64_t partial apply for closure #1 in static vDSP.compress<A, B>(_:gatingVector:nonZeroGatingCount:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 40);
  v5 = *(v3 + 48);
  v6 = *(v3 + 56);
  v8[2] = *(v3 + 16);
  v9 = *(v3 + 24);
  v10 = v4;
  v11 = v6;
  v12 = a1;
  v13 = v5;
  v14 = *(v3 + 64);
  return (*(v4 + 24))(a3, v8, MEMORY[0x1E69E7CA8] + 8, v9);
}

uint64_t partial apply for closure #1 in closure #1 in static vDSP.compress<A, B, C>(_:gatingVector:result:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in closure #1 in static vDSP.compress<A, B, C>(_:gatingVector:result:)(a1, a2, partial apply for closure #1 in closure #1 in closure #1 in static vDSP.compress<A, B, C>(_:gatingVector:result:));
}

{
  return partial apply for closure #1 in closure #1 in static vDSP.compress<A, B, C>(_:gatingVector:result:)(a1, a2, partial apply for closure #1 in closure #1 in closure #1 in static vDSP.compress<A, B, C>(_:gatingVector:result:));
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in static vDSP.compress<A, B, C>(_:gatingVector:result:)(uint64_t a1, uint64_t a2)
{
  return closure #1 in closure #1 in closure #1 in static vDSP.compress<A, B, C>(_:gatingVector:result:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), MEMORY[0x1E6958E60]);
}

{
  return closure #1 in closure #1 in closure #1 in static vDSP.compress<A, B, C>(_:gatingVector:result:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), MEMORY[0x1E6958E58]);
}

uint64_t partial apply for closure #1 in closure #1 in static vDSP.gather<A, B, C>(_:indices:result:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in closure #1 in static vDSP.compress<A, B, C>(_:gatingVector:result:)(a1, a2, partial apply for closure #1 in closure #1 in closure #1 in static vDSP.gather<A, B, C>(_:indices:result:));
}

{
  return partial apply for closure #1 in closure #1 in static vDSP.compress<A, B, C>(_:gatingVector:result:)(a1, a2, partial apply for closure #1 in closure #1 in closure #1 in static vDSP.gather<A, B, C>(_:indices:result:));
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in static vDSP.gather<A, B, C>(_:indices:result:)(uint64_t a1, uint64_t a2)
{
  return closure #1 in closure #1 in closure #1 in static vDSP.gather<A, B, C>(_:indices:result:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), MEMORY[0x1E6958FC8]);
}

{
  return closure #1 in closure #1 in closure #1 in static vDSP.gather<A, B, C>(_:indices:result:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), MEMORY[0x1E6958FC0]);
}

uint64_t partial apply for closure #1 in closure #1 in static vDSP.compress<A, B, C>(_:gatingVector:result:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[3];
  v5 = v3[6];
  v6 = v3[9];
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = v6;
  return (*(v5 + 24))(a3, v8, MEMORY[0x1E69E7CA8] + 8, v4);
}

uint64_t partial apply for closure #1 in closure #1 in static vDSP.swapElements<A, B>(_:_:)(void *a1)
{
  return closure #1 in closure #1 in static vDSP.swapElements<A, B>(_:_:)(a1, *(v1 + 16), *(v1 + 24), MEMORY[0x1E69591B0]);
}

{
  return closure #1 in closure #1 in static vDSP.swapElements<A, B>(_:_:)(a1, *(v1 + 16), *(v1 + 24), MEMORY[0x1E69591A8]);
}

uint64_t partial apply for closure #1 in closure #1 in static vDSP.taperedMerge<A, B, C>(_:_:result:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in closure #1 in static vDSP.taperedMerge<A, B, C>(_:_:result:)(a1, a2, partial apply for closure #1 in closure #1 in closure #1 in static vDSP.taperedMerge<A, B, C>(_:_:result:));
}

{
  return partial apply for closure #1 in closure #1 in static vDSP.taperedMerge<A, B, C>(_:_:result:)(a1, a2, partial apply for closure #1 in closure #1 in closure #1 in static vDSP.taperedMerge<A, B, C>(_:_:result:));
}

void *partial apply for closure #1 in closure #1 in closure #1 in static vDSP.taperedMerge<A, B, C>(_:_:result:)(void *a1)
{
  return partial apply for closure #1 in closure #1 in closure #1 in static vDSP.taperedMerge<A, B, C>(_:_:result:)(a1, MEMORY[0x1E69591D0]);
}

{
  return partial apply for closure #1 in closure #1 in closure #1 in static vDSP.taperedMerge<A, B, C>(_:_:result:)(a1, MEMORY[0x1E69591C8]);
}

uint64_t partial apply for closure #1 in closure #1 in static vDSP.taperedMerge<A, B, C>(_:_:result:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 32);
  v5 = *(v3 + 56);
  v6 = *(v3 + 88);
  v8[1] = *(v3 + 72);
  v9 = a1;
  v10 = a2;
  v11 = v6;
  return (*(v5 + 16))(a3, v8, MEMORY[0x1E69E7CA8] + 8, v4);
}

uint64_t BNNS.Shape.batchStride.getter()
{
  BNNS.Shape.size.getter(&v39);
  v1 = v39;
  v0 = v40;
  v3 = v41;
  v2 = v42;
  v5 = v43;
  v4 = v44;
  v7 = v45;
  v6 = v46;
  result = BNNS.Shape.stride.getter(&v39);
  v9 = v39;
  if (v1 <= 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = v1;
  }

  if (v39 <= 1)
  {
    v9 = 1;
  }

  v11 = v10 * v9;
  if ((v10 * v9) >> 64 != (v10 * v9) >> 63)
  {
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
    return result;
  }

  if (v0 <= 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = v0;
  }

  v13 = v11 * v12;
  if ((v11 * v12) >> 64 != (v11 * v12) >> 63)
  {
    goto LABEL_64;
  }

  if (v40 <= 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = v40;
  }

  v15 = v13 * v14;
  if ((v13 * v14) >> 64 != (v13 * v14) >> 63)
  {
    goto LABEL_65;
  }

  if (v3 <= 1)
  {
    v16 = 1;
  }

  else
  {
    v16 = v3;
  }

  v17 = v15 * v16;
  if ((v15 * v16) >> 64 != (v15 * v16) >> 63)
  {
    goto LABEL_66;
  }

  if (v41 <= 1)
  {
    v18 = 1;
  }

  else
  {
    v18 = v41;
  }

  v19 = v17 * v18;
  if ((v17 * v18) >> 64 != (v17 * v18) >> 63)
  {
    goto LABEL_67;
  }

  if (v2 <= 1)
  {
    v20 = 1;
  }

  else
  {
    v20 = v2;
  }

  v21 = v19 * v20;
  if ((v19 * v20) >> 64 != (v19 * v20) >> 63)
  {
    goto LABEL_68;
  }

  if (v42 <= 1)
  {
    v22 = 1;
  }

  else
  {
    v22 = v42;
  }

  v23 = v21 * v22;
  if ((v21 * v22) >> 64 != (v21 * v22) >> 63)
  {
    goto LABEL_69;
  }

  if (v5 <= 1)
  {
    v24 = 1;
  }

  else
  {
    v24 = v5;
  }

  v25 = v23 * v24;
  if ((v23 * v24) >> 64 != (v23 * v24) >> 63)
  {
    goto LABEL_70;
  }

  if (v43 <= 1)
  {
    v26 = 1;
  }

  else
  {
    v26 = v43;
  }

  v27 = v25 * v26;
  if ((v25 * v26) >> 64 != (v25 * v26) >> 63)
  {
    goto LABEL_71;
  }

  if (v4 <= 1)
  {
    v28 = 1;
  }

  else
  {
    v28 = v4;
  }

  v29 = v27 * v28;
  if ((v27 * v28) >> 64 != (v27 * v28) >> 63)
  {
    goto LABEL_72;
  }

  if (v44 <= 1)
  {
    v30 = 1;
  }

  else
  {
    v30 = v44;
  }

  v31 = v29 * v30;
  if ((v29 * v30) >> 64 != (v29 * v30) >> 63)
  {
    goto LABEL_73;
  }

  if (v7 <= 1)
  {
    v32 = 1;
  }

  else
  {
    v32 = v7;
  }

  v33 = v31 * v32;
  if ((v31 * v32) >> 64 != (v31 * v32) >> 63)
  {
    goto LABEL_74;
  }

  if (v45 <= 1)
  {
    v34 = 1;
  }

  else
  {
    v34 = v45;
  }

  v35 = v33 * v34;
  if ((v33 * v34) >> 64 != (v33 * v34) >> 63)
  {
    goto LABEL_75;
  }

  if (v6 <= 1)
  {
    v36 = 1;
  }

  else
  {
    v36 = v6;
  }

  v37 = v35 * v36;
  if ((v35 * v36) >> 64 != (v35 * v36) >> 63)
  {
    goto LABEL_76;
  }

  v38 = v46;
  if (v46 <= 1)
  {
    v38 = 1;
  }

  result = v37 * v38;
  if ((v37 * v38) >> 64 != (v37 * v38) >> 63)
  {
    goto LABEL_77;
  }

  return result;
}

uint64_t BNNS.Shape.layout.getter()
{
  v1 = *(v0 + 112);
  v7[6] = *(v0 + 96);
  v7[7] = v1;
  v8 = *(v0 + 128);
  v2 = *(v0 + 48);
  v7[2] = *(v0 + 32);
  v7[3] = v2;
  v3 = *(v0 + 80);
  v7[4] = *(v0 + 64);
  v7[5] = v3;
  v4 = *(v0 + 16);
  v7[0] = *v0;
  v7[1] = v4;
  switch(_s10Accelerate4BNNSO5ShapeOWOg(v7))
  {
    case 1u:
      destructiveProjectEnumData for vImage(v7);
      return 131073;
    case 2u:
      destructiveProjectEnumData for vImage(v7);
      return 0x20000;
    case 3u:
      destructiveProjectEnumData for vImage(v7);
      v6 = 163840;
      goto LABEL_23;
    case 4u:
      destructiveProjectEnumData for vImage(v7);
      return 163840;
    case 5u:
      destructiveProjectEnumData for vImage(v7);
      return 196608;
    case 6u:
      destructiveProjectEnumData for vImage(v7);
      return 229377;
    case 7u:
      destructiveProjectEnumData for vImage(v7);
      return 229376;
    case 8u:
      destructiveProjectEnumData for vImage(v7);
      return 196609;
    case 9u:
      destructiveProjectEnumData for vImage(v7);
      return 196610;
    case 0xAu:
      destructiveProjectEnumData for vImage(v7);
      return 0x40000;
    case 0xBu:
      destructiveProjectEnumData for vImage(v7);
      v6 = 294912;
      goto LABEL_23;
    case 0xCu:
      destructiveProjectEnumData for vImage(v7);
      return 294912;
    case 0xDu:
      destructiveProjectEnumData for vImage(v7);
      return 360449;
    case 0xEu:
      destructiveProjectEnumData for vImage(v7);
      return 360448;
    case 0xFu:
      destructiveProjectEnumData for vImage(v7);
      v6 = 425984;
      goto LABEL_23;
    case 0x10u:
      destructiveProjectEnumData for vImage(v7);
      return 425984;
    case 0x11u:
      destructiveProjectEnumData for vImage(v7);
      return 491521;
    case 0x12u:
      destructiveProjectEnumData for vImage(v7);
      return 491520;
    case 0x13u:
      destructiveProjectEnumData for vImage(v7);
      v6 = 557056;
LABEL_23:
      result = v6 | 1u;
      break;
    case 0x14u:
      destructiveProjectEnumData for vImage(v7);
      result = 557056;
      break;
    default:
      destructiveProjectEnumData for vImage(v7);
      result = 0x10000;
      break;
  }

  return result;
}

void *BNNS.Shape.size.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 112);
  v12[6] = *(v1 + 96);
  v12[7] = v3;
  v13 = *(v1 + 128);
  v4 = *(v1 + 48);
  v12[2] = *(v1 + 32);
  v12[3] = v4;
  v5 = *(v1 + 80);
  v12[4] = *(v1 + 64);
  v12[5] = v5;
  v6 = *(v1 + 16);
  v12[0] = *v1;
  v12[1] = v6;
  switch(_s10Accelerate4BNNSO5ShapeOWOg(v12))
  {
    case 1u:
    case 2u:
    case 3u:
    case 4u:
      result = destructiveProjectEnumData for vImage(v12);
      v8 = 0;
      *&v9 = result[1];
      goto LABEL_9;
    case 5u:
    case 6u:
    case 7u:
    case 8u:
    case 9u:
      result = destructiveProjectEnumData for vImage(v12);
      v8 = 0;
      v9 = *(result + 1);
      goto LABEL_9;
    case 0xAu:
    case 0xBu:
    case 0xCu:
      result = destructiveProjectEnumData for vImage(v12);
      v8 = 0;
      v9 = *(result + 1);
      *&v10 = result[3];
      goto LABEL_10;
    case 0xDu:
    case 0xEu:
      result = destructiveProjectEnumData for vImage(v12);
      v8 = 0;
      v9 = *(result + 1);
      v10 = *(result + 3);
      goto LABEL_10;
    case 0xFu:
    case 0x10u:
      result = destructiveProjectEnumData for vImage(v12);
      v8 = 0;
      v9 = *(result + 1);
      v10 = *(result + 3);
      *&v11 = result[5];
      goto LABEL_11;
    case 0x11u:
    case 0x12u:
      result = destructiveProjectEnumData for vImage(v12);
      v8 = 0;
      v9 = *(result + 1);
      v10 = *(result + 3);
      v11 = *(result + 5);
      goto LABEL_11;
    case 0x13u:
    case 0x14u:
      result = destructiveProjectEnumData for vImage(v12);
      v9 = *(result + 1);
      v10 = *(result + 3);
      v11 = *(result + 5);
      v8 = result[7];
      goto LABEL_11;
    default:
      result = destructiveProjectEnumData for vImage(v12);
      v8 = 0;
      v9 = 0uLL;
LABEL_9:
      v10 = 0uLL;
LABEL_10:
      v11 = 0uLL;
LABEL_11:
      *a1 = *result;
      *(a1 + 8) = v9;
      *(a1 + 24) = v10;
      *(a1 + 40) = v11;
      *(a1 + 56) = v8;
      return result;
  }
}

uint64_t BNNS.Shape.stride.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 112);
  v13[6] = *(v1 + 96);
  v13[7] = v3;
  v14 = *(v1 + 128);
  v4 = *(v1 + 48);
  v13[2] = *(v1 + 32);
  v13[3] = v4;
  v5 = *(v1 + 80);
  v13[4] = *(v1 + 64);
  v13[5] = v5;
  v6 = *(v1 + 16);
  v13[0] = *v1;
  v13[1] = v6;
  switch(_s10Accelerate4BNNSO5ShapeOWOg(v13))
  {
    case 1u:
    case 2u:
    case 3u:
    case 4u:
      result = destructiveProjectEnumData for vImage(v13);
      v8 = 0;
      v9 = (result + 16);
      *&v10 = *(result + 24);
      goto LABEL_9;
    case 5u:
    case 6u:
    case 7u:
    case 8u:
    case 9u:
      result = destructiveProjectEnumData for vImage(v13);
      v8 = 0;
      v9 = (result + 24);
      v10 = *(result + 32);
      goto LABEL_9;
    case 0xAu:
    case 0xBu:
    case 0xCu:
      result = destructiveProjectEnumData for vImage(v13);
      v8 = 0;
      v9 = (result + 32);
      v10 = *(result + 40);
      *&v11 = *(result + 56);
      goto LABEL_10;
    case 0xDu:
    case 0xEu:
      result = destructiveProjectEnumData for vImage(v13);
      v8 = 0;
      v9 = (result + 40);
      v10 = *(result + 48);
      v11 = *(result + 64);
      goto LABEL_10;
    case 0xFu:
    case 0x10u:
      result = destructiveProjectEnumData for vImage(v13);
      v8 = 0;
      v9 = (result + 48);
      v10 = *(result + 56);
      v11 = *(result + 72);
      *&v12 = *(result + 88);
      goto LABEL_11;
    case 0x11u:
    case 0x12u:
      result = destructiveProjectEnumData for vImage(v13);
      v8 = 0;
      v9 = (result + 56);
      v10 = *(result + 64);
      v11 = *(result + 80);
      v12 = *(result + 96);
      goto LABEL_11;
    case 0x13u:
    case 0x14u:
      result = destructiveProjectEnumData for vImage(v13);
      v9 = (result + 64);
      v10 = *(result + 72);
      v11 = *(result + 88);
      v12 = *(result + 104);
      v8 = *(result + 120);
      goto LABEL_11;
    default:
      result = destructiveProjectEnumData for vImage(v13);
      v8 = 0;
      v9 = (result + 8);
      v10 = 0uLL;
LABEL_9:
      v11 = 0uLL;
LABEL_10:
      v12 = 0uLL;
LABEL_11:
      *a1 = *v9;
      *(a1 + 8) = v10;
      *(a1 + 24) = v11;
      *(a1 + 40) = v12;
      *(a1 + 56) = v8;
      return result;
  }
}

uint64_t BNNS.Shape.init(_:dataLayout:stride:)@<X0>(uint64_t result@<X0>, unsigned __int8 *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = result;
  v7 = *a2;
  if (v7 == 21)
  {
    result = static BNNS.defaultLayoutForDimensions(_:)(*(result + 16), v14);
    v7 = LOBYTE(v14[0]);
    if (LOBYTE(v14[0]) == 21)
    {
      goto LABEL_15;
    }
  }

  if (a3)
  {
    v8 = v5[2];
    if (v8 != a3[2])
    {
LABEL_14:
      __break(1u);
LABEL_15:
      __break(1u);
      return result;
    }

    if (v7 <= 0x14)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v8 = v5[2];
    if (v7 <= 0x14)
    {
LABEL_6:
      v9 = qword_1B7E77F40[v7];
      goto LABEL_9;
    }
  }

  v9 = 8;
LABEL_9:
  if (v8 != v9)
  {
    __break(1u);
    goto LABEL_14;
  }

  v16 = v7;
  if (!a3)
  {
    a3 = &outlined read-only object #0 of BNNS.Shape.init(_:dataLayout:stride:);
  }

  static BNNS.makeShape(size:dataLayout:stride:)(v5, &v16, a3, v14);

  v10 = v14[7];
  *(a4 + 96) = v14[6];
  *(a4 + 112) = v10;
  *(a4 + 128) = v15;
  v11 = v14[3];
  *(a4 + 32) = v14[2];
  *(a4 + 48) = v11;
  v12 = v14[5];
  *(a4 + 64) = v14[4];
  *(a4 + 80) = v12;
  v13 = v14[1];
  *a4 = v14[0];
  *(a4 + 16) = v13;
  return result;
}

void *static BNNS.makeShape(size:dataLayout:stride:)@<X0>(void *result@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  switch(*a2)
  {
    case 1:
      v84 = result[2];
      if (!v84)
      {
        goto LABEL_211;
      }

      if (v84 == 1)
      {
        goto LABEL_232;
      }

      v85 = *(a3 + 16);
      if (!v85)
      {
        goto LABEL_252;
      }

      if (v85 == 1)
      {
        goto LABEL_272;
      }

      v86 = result[5];
      *&v168 = result[4];
      *(&v168 + 1) = v86;
      v169 = *(a3 + 32);
      result = _s10Accelerate4BNNSO5ShapeOWOi1_(&v168);
      goto LABEL_199;
    case 2:
      v59 = result[2];
      if (!v59)
      {
        goto LABEL_206;
      }

      if (v59 == 1)
      {
        goto LABEL_227;
      }

      v60 = *(a3 + 16);
      if (!v60)
      {
        goto LABEL_248;
      }

      if (v60 == 1)
      {
        goto LABEL_268;
      }

      v61 = result[5];
      *&v168 = result[4];
      *(&v168 + 1) = v61;
      v169 = *(a3 + 32);
      result = _s10Accelerate4BNNSO5ShapeOWOi0_(&v168);
      goto LABEL_199;
    case 3:
      v76 = result[2];
      if (!v76)
      {
        goto LABEL_208;
      }

      if (v76 == 1)
      {
        goto LABEL_229;
      }

      v77 = *(a3 + 16);
      if (!v77)
      {
        goto LABEL_250;
      }

      if (v77 == 1)
      {
        goto LABEL_270;
      }

      v78 = result[5];
      *&v168 = result[4];
      *(&v168 + 1) = v78;
      v169 = *(a3 + 32);
      result = _s10Accelerate4BNNSO5ShapeOWOi2_(&v168);
      goto LABEL_199;
    case 4:
      v40 = result[2];
      if (!v40)
      {
        goto LABEL_203;
      }

      if (v40 == 1)
      {
        goto LABEL_224;
      }

      v41 = *(a3 + 16);
      if (!v41)
      {
        goto LABEL_245;
      }

      if (v41 == 1)
      {
        goto LABEL_265;
      }

      v42 = result[5];
      *&v168 = result[4];
      *(&v168 + 1) = v42;
      v169 = *(a3 + 32);
      result = _s10Accelerate4BNNSO5ShapeOWOi3_(&v168);
      goto LABEL_199;
    case 5:
      v108 = result[2];
      if (!v108)
      {
        goto LABEL_214;
      }

      if (v108 == 1)
      {
        goto LABEL_235;
      }

      if (v108 < 3)
      {
        goto LABEL_255;
      }

      v109 = *(a3 + 16);
      if (!v109)
      {
        goto LABEL_275;
      }

      if (v109 == 1)
      {
        goto LABEL_291;
      }

      if (v109 < 3)
      {
        goto LABEL_307;
      }

      v110 = result[5];
      v111 = result[6];
      v112 = *(a3 + 32);
      *&v168 = result[4];
      *(&v168 + 1) = v110;
      *&v169 = v111;
      *(&v169 + 1) = v112;
      v170 = *(a3 + 40);
      result = _s10Accelerate4BNNSO5ShapeOWOi4_(&v168);
      goto LABEL_199;
    case 6:
      v124 = result[2];
      if (!v124)
      {
        goto LABEL_216;
      }

      if (v124 == 1)
      {
        goto LABEL_237;
      }

      if (v124 < 3)
      {
        goto LABEL_257;
      }

      v125 = *(a3 + 16);
      if (!v125)
      {
        goto LABEL_277;
      }

      if (v125 == 1)
      {
        goto LABEL_293;
      }

      if (v125 < 3)
      {
        goto LABEL_309;
      }

      v126 = result[5];
      v127 = result[6];
      v128 = *(a3 + 32);
      *&v168 = result[4];
      *(&v168 + 1) = v126;
      *&v169 = v127;
      *(&v169 + 1) = v128;
      v170 = *(a3 + 40);
      result = _s10Accelerate4BNNSO5ShapeOWOi5_(&v168);
      goto LABEL_199;
    case 7:
      v79 = result[2];
      if (!v79)
      {
        goto LABEL_209;
      }

      if (v79 == 1)
      {
        goto LABEL_230;
      }

      if (v79 < 3)
      {
        goto LABEL_251;
      }

      v80 = *(a3 + 16);
      if (!v80)
      {
        goto LABEL_271;
      }

      if (v80 == 1)
      {
        goto LABEL_288;
      }

      if (v80 < 3)
      {
        goto LABEL_304;
      }

      v81 = result[5];
      v82 = result[6];
      v83 = *(a3 + 32);
      *&v168 = result[4];
      *(&v168 + 1) = v81;
      *&v169 = v82;
      *(&v169 + 1) = v83;
      v170 = *(a3 + 40);
      result = _s10Accelerate4BNNSO5ShapeOWOi6_(&v168);
      goto LABEL_199;
    case 8:
      v152 = result[2];
      if (!v152)
      {
        goto LABEL_219;
      }

      if (v152 == 1)
      {
        goto LABEL_240;
      }

      if (v152 < 3)
      {
        goto LABEL_260;
      }

      if (v152 == 3)
      {
        goto LABEL_280;
      }

      v153 = *(a3 + 16);
      if (!v153)
      {
        goto LABEL_296;
      }

      if (v153 == 1)
      {
        goto LABEL_312;
      }

      if (v153 < 3)
      {
        goto LABEL_324;
      }

      if (v153 == 3)
      {
        goto LABEL_335;
      }

      v154 = result[5];
      v155 = result[6];
      v156 = result[7];
      v157 = *(a3 + 32);
      v158 = *(a3 + 40);
      *&v168 = result[4];
      *(&v168 + 1) = v154;
      *&v169 = v155;
      *(&v169 + 1) = v156;
      *&v170 = v157;
      *(&v170 + 1) = v158;
      v171 = *(a3 + 48);
      result = _s10Accelerate4BNNSO5ShapeOWOi9_(&v168);
      goto LABEL_199;
    case 9:
      v52 = result[2];
      if (!v52)
      {
        goto LABEL_205;
      }

      if (v52 == 1)
      {
        goto LABEL_226;
      }

      if (v52 < 3)
      {
        goto LABEL_247;
      }

      if (v52 == 3)
      {
        goto LABEL_267;
      }

      v53 = *(a3 + 16);
      if (!v53)
      {
        goto LABEL_286;
      }

      if (v53 == 1)
      {
        goto LABEL_302;
      }

      if (v53 < 3)
      {
        goto LABEL_318;
      }

      if (v53 == 3)
      {
        goto LABEL_329;
      }

      v54 = result[5];
      v55 = result[6];
      v56 = result[7];
      v57 = *(a3 + 32);
      v58 = *(a3 + 40);
      *&v168 = result[4];
      *(&v168 + 1) = v54;
      *&v169 = v55;
      *(&v169 + 1) = v56;
      *&v170 = v57;
      *(&v170 + 1) = v58;
      v171 = *(a3 + 48);
      result = _s10Accelerate4BNNSO5ShapeOWOi10_(&v168);
      goto LABEL_199;
    case 0xA:
      v145 = result[2];
      if (!v145)
      {
        goto LABEL_218;
      }

      if (v145 == 1)
      {
        goto LABEL_239;
      }

      if (v145 < 3)
      {
        goto LABEL_259;
      }

      if (v145 == 3)
      {
        goto LABEL_279;
      }

      v146 = *(a3 + 16);
      if (!v146)
      {
        goto LABEL_295;
      }

      if (v146 == 1)
      {
        goto LABEL_311;
      }

      if (v146 < 3)
      {
        goto LABEL_323;
      }

      if (v146 == 3)
      {
        goto LABEL_334;
      }

      v147 = result[5];
      v148 = result[6];
      v149 = result[7];
      v150 = *(a3 + 32);
      v151 = *(a3 + 40);
      *&v168 = result[4];
      *(&v168 + 1) = v147;
      *&v169 = v148;
      *(&v169 + 1) = v149;
      *&v170 = v150;
      *(&v170 + 1) = v151;
      v171 = *(a3 + 48);
      result = _s10Accelerate4BNNSO5ShapeOWOi11_(&v168);
      goto LABEL_199;
    case 0xB:
      v31 = result[2];
      if (!v31)
      {
        goto LABEL_202;
      }

      if (v31 == 1)
      {
        goto LABEL_223;
      }

      if (v31 < 3)
      {
        goto LABEL_244;
      }

      if (v31 == 3)
      {
        goto LABEL_264;
      }

      if (v31 < 5)
      {
        goto LABEL_284;
      }

      v32 = *(a3 + 16);
      if (!v32)
      {
        goto LABEL_300;
      }

      if (v32 == 1)
      {
        goto LABEL_316;
      }

      if (v32 < 3)
      {
        goto LABEL_327;
      }

      if (v32 == 3)
      {
        goto LABEL_338;
      }

      if (v32 < 5)
      {
        goto LABEL_346;
      }

      v33 = result[5];
      v34 = result[6];
      v35 = result[7];
      v36 = result[8];
      v37 = *(a3 + 32);
      v38 = *(a3 + 40);
      v39 = *(a3 + 48);
      *&v168 = result[4];
      *(&v168 + 1) = v33;
      *&v169 = v34;
      *(&v169 + 1) = v35;
      *&v170 = v36;
      *(&v170 + 1) = v37;
      *&v171 = v38;
      *(&v171 + 1) = v39;
      v172 = *(a3 + 56);
      result = _s10Accelerate4BNNSO5ShapeOWOi12_(&v168);
      goto LABEL_199;
    case 0xC:
      v43 = result[2];
      if (!v43)
      {
        goto LABEL_204;
      }

      if (v43 == 1)
      {
        goto LABEL_225;
      }

      if (v43 < 3)
      {
        goto LABEL_246;
      }

      if (v43 == 3)
      {
        goto LABEL_266;
      }

      if (v43 < 5)
      {
        goto LABEL_285;
      }

      v44 = *(a3 + 16);
      if (!v44)
      {
        goto LABEL_301;
      }

      if (v44 == 1)
      {
        goto LABEL_317;
      }

      if (v44 < 3)
      {
        goto LABEL_328;
      }

      if (v44 == 3)
      {
        goto LABEL_339;
      }

      if (v44 < 5)
      {
        goto LABEL_347;
      }

      v45 = result[5];
      v46 = result[6];
      v47 = result[7];
      v48 = result[8];
      v49 = *(a3 + 32);
      v50 = *(a3 + 40);
      v51 = *(a3 + 48);
      *&v168 = result[4];
      *(&v168 + 1) = v45;
      *&v169 = v46;
      *(&v169 + 1) = v47;
      *&v170 = v48;
      *(&v170 + 1) = v49;
      *&v171 = v50;
      *(&v171 + 1) = v51;
      v172 = *(a3 + 56);
      result = _s10Accelerate4BNNSO5ShapeOWOi13_(&v168);
      goto LABEL_199;
    case 0xD:
      v113 = result[2];
      if (!v113)
      {
        goto LABEL_215;
      }

      if (v113 == 1)
      {
        goto LABEL_236;
      }

      if (v113 < 3)
      {
        goto LABEL_256;
      }

      if (v113 == 3)
      {
        goto LABEL_276;
      }

      if (v113 < 5)
      {
        goto LABEL_292;
      }

      if (v113 == 5)
      {
        goto LABEL_308;
      }

      v114 = *(a3 + 16);
      if (!v114)
      {
        goto LABEL_321;
      }

      if (v114 == 1)
      {
        goto LABEL_332;
      }

      if (v114 < 3)
      {
        goto LABEL_342;
      }

      if (v114 == 3)
      {
        goto LABEL_350;
      }

      if (v114 < 5)
      {
        goto LABEL_356;
      }

      if (v114 == 5)
      {
        goto LABEL_362;
      }

      v115 = result[5];
      v116 = result[6];
      v117 = result[7];
      v118 = result[8];
      v119 = result[9];
      v120 = *(a3 + 32);
      v121 = *(a3 + 40);
      v122 = *(a3 + 48);
      v123 = *(a3 + 56);
      *&v168 = result[4];
      *(&v168 + 1) = v115;
      *&v169 = v116;
      *(&v169 + 1) = v117;
      *&v170 = v118;
      *(&v170 + 1) = v119;
      *&v171 = v120;
      *(&v171 + 1) = v121;
      *&v172 = v122;
      *(&v172 + 1) = v123;
      v173 = *(a3 + 64);
      result = _s10Accelerate4BNNSO5ShapeOWOi14_(&v168);
      goto LABEL_199;
    case 0xE:
      v20 = result[2];
      if (!v20)
      {
        goto LABEL_201;
      }

      if (v20 == 1)
      {
        goto LABEL_222;
      }

      if (v20 < 3)
      {
        goto LABEL_243;
      }

      if (v20 == 3)
      {
        goto LABEL_263;
      }

      if (v20 < 5)
      {
        goto LABEL_283;
      }

      if (v20 == 5)
      {
        goto LABEL_299;
      }

      v21 = *(a3 + 16);
      if (!v21)
      {
        goto LABEL_315;
      }

      if (v21 == 1)
      {
        goto LABEL_326;
      }

      if (v21 < 3)
      {
        goto LABEL_337;
      }

      if (v21 == 3)
      {
        goto LABEL_345;
      }

      if (v21 < 5)
      {
        goto LABEL_353;
      }

      if (v21 == 5)
      {
        goto LABEL_359;
      }

      v22 = result[5];
      v23 = result[6];
      v24 = result[7];
      v25 = result[8];
      v26 = result[9];
      v27 = *(a3 + 32);
      v28 = *(a3 + 40);
      v29 = *(a3 + 48);
      v30 = *(a3 + 56);
      *&v168 = result[4];
      *(&v168 + 1) = v22;
      *&v169 = v23;
      *(&v169 + 1) = v24;
      *&v170 = v25;
      *(&v170 + 1) = v26;
      *&v171 = v27;
      *(&v171 + 1) = v28;
      *&v172 = v29;
      *(&v172 + 1) = v30;
      v173 = *(a3 + 64);
      result = _s10Accelerate4BNNSO5ShapeOWOi15_(&v168);
      goto LABEL_199;
    case 0xF:
      v62 = result[2];
      if (!v62)
      {
        goto LABEL_207;
      }

      if (v62 == 1)
      {
        goto LABEL_228;
      }

      if (v62 < 3)
      {
        goto LABEL_249;
      }

      if (v62 == 3)
      {
        goto LABEL_269;
      }

      if (v62 < 5)
      {
        goto LABEL_287;
      }

      if (v62 == 5)
      {
        goto LABEL_303;
      }

      if (v62 < 7)
      {
        goto LABEL_319;
      }

      v63 = *(a3 + 16);
      if (!v63)
      {
        goto LABEL_330;
      }

      if (v63 == 1)
      {
        goto LABEL_340;
      }

      if (v63 < 3)
      {
        goto LABEL_348;
      }

      if (v63 == 3)
      {
        goto LABEL_354;
      }

      if (v63 < 5)
      {
        goto LABEL_360;
      }

      if (v63 == 5)
      {
        goto LABEL_365;
      }

      if (v63 < 7)
      {
        goto LABEL_369;
      }

      v64 = result[4];
      v65 = result[5];
      v66 = result[6];
      v67 = result[7];
      v68 = result[8];
      v69 = result[9];
      v70 = result[10];
      v71 = *(a3 + 32);
      v72 = *(a3 + 40);
      v74 = *(a3 + 48);
      v73 = *(a3 + 56);
      v75 = *(a3 + 64);
      *&v168 = v64;
      *(&v168 + 1) = v65;
      *&v169 = v66;
      *(&v169 + 1) = v67;
      *&v170 = v68;
      *(&v170 + 1) = v69;
      *&v171 = v70;
      *(&v171 + 1) = v71;
      *&v172 = v72;
      *(&v172 + 1) = v74;
      *&v173 = v73;
      *(&v173 + 1) = v75;
      v174 = *(a3 + 72);
      result = _s10Accelerate4BNNSO5ShapeOWOi16_(&v168);
      goto LABEL_199;
    case 0x10:
      v6 = result[2];
      if (!v6)
      {
        __break(1u);
LABEL_201:
        __break(1u);
LABEL_202:
        __break(1u);
LABEL_203:
        __break(1u);
LABEL_204:
        __break(1u);
LABEL_205:
        __break(1u);
LABEL_206:
        __break(1u);
LABEL_207:
        __break(1u);
LABEL_208:
        __break(1u);
LABEL_209:
        __break(1u);
LABEL_210:
        __break(1u);
LABEL_211:
        __break(1u);
LABEL_212:
        __break(1u);
LABEL_213:
        __break(1u);
LABEL_214:
        __break(1u);
LABEL_215:
        __break(1u);
LABEL_216:
        __break(1u);
LABEL_217:
        __break(1u);
LABEL_218:
        __break(1u);
LABEL_219:
        __break(1u);
LABEL_220:
        __break(1u);
LABEL_221:
        __break(1u);
LABEL_222:
        __break(1u);
LABEL_223:
        __break(1u);
LABEL_224:
        __break(1u);
LABEL_225:
        __break(1u);
LABEL_226:
        __break(1u);
LABEL_227:
        __break(1u);
LABEL_228:
        __break(1u);
LABEL_229:
        __break(1u);
LABEL_230:
        __break(1u);
LABEL_231:
        __break(1u);
LABEL_232:
        __break(1u);
LABEL_233:
        __break(1u);
LABEL_234:
        __break(1u);
LABEL_235:
        __break(1u);
LABEL_236:
        __break(1u);
LABEL_237:
        __break(1u);
LABEL_238:
        __break(1u);
LABEL_239:
        __break(1u);
LABEL_240:
        __break(1u);
LABEL_241:
        __break(1u);
LABEL_242:
        __break(1u);
LABEL_243:
        __break(1u);
LABEL_244:
        __break(1u);
LABEL_245:
        __break(1u);
LABEL_246:
        __break(1u);
LABEL_247:
        __break(1u);
LABEL_248:
        __break(1u);
LABEL_249:
        __break(1u);
LABEL_250:
        __break(1u);
LABEL_251:
        __break(1u);
LABEL_252:
        __break(1u);
LABEL_253:
        __break(1u);
LABEL_254:
        __break(1u);
LABEL_255:
        __break(1u);
LABEL_256:
        __break(1u);
LABEL_257:
        __break(1u);
LABEL_258:
        __break(1u);
LABEL_259:
        __break(1u);
LABEL_260:
        __break(1u);
LABEL_261:
        __break(1u);
LABEL_262:
        __break(1u);
LABEL_263:
        __break(1u);
LABEL_264:
        __break(1u);
LABEL_265:
        __break(1u);
LABEL_266:
        __break(1u);
LABEL_267:
        __break(1u);
LABEL_268:
        __break(1u);
LABEL_269:
        __break(1u);
LABEL_270:
        __break(1u);
LABEL_271:
        __break(1u);
LABEL_272:
        __break(1u);
LABEL_273:
        __break(1u);
LABEL_274:
        __break(1u);
LABEL_275:
        __break(1u);
LABEL_276:
        __break(1u);
LABEL_277:
        __break(1u);
LABEL_278:
        __break(1u);
LABEL_279:
        __break(1u);
LABEL_280:
        __break(1u);
LABEL_281:
        __break(1u);
LABEL_282:
        __break(1u);
LABEL_283:
        __break(1u);
LABEL_284:
        __break(1u);
LABEL_285:
        __break(1u);
LABEL_286:
        __break(1u);
LABEL_287:
        __break(1u);
LABEL_288:
        __break(1u);
LABEL_289:
        __break(1u);
LABEL_290:
        __break(1u);
LABEL_291:
        __break(1u);
LABEL_292:
        __break(1u);
LABEL_293:
        __break(1u);
LABEL_294:
        __break(1u);
LABEL_295:
        __break(1u);
LABEL_296:
        __break(1u);
LABEL_297:
        __break(1u);
LABEL_298:
        __break(1u);
LABEL_299:
        __break(1u);
LABEL_300:
        __break(1u);
LABEL_301:
        __break(1u);
LABEL_302:
        __break(1u);
LABEL_303:
        __break(1u);
LABEL_304:
        __break(1u);
LABEL_305:
        __break(1u);
LABEL_306:
        __break(1u);
LABEL_307:
        __break(1u);
LABEL_308:
        __break(1u);
LABEL_309:
        __break(1u);
LABEL_310:
        __break(1u);
LABEL_311:
        __break(1u);
LABEL_312:
        __break(1u);
LABEL_313:
        __break(1u);
LABEL_314:
        __break(1u);
LABEL_315:
        __break(1u);
LABEL_316:
        __break(1u);
LABEL_317:
        __break(1u);
LABEL_318:
        __break(1u);
LABEL_319:
        __break(1u);
LABEL_320:
        __break(1u);
LABEL_321:
        __break(1u);
LABEL_322:
        __break(1u);
LABEL_323:
        __break(1u);
LABEL_324:
        __break(1u);
LABEL_325:
        __break(1u);
LABEL_326:
        __break(1u);
LABEL_327:
        __break(1u);
LABEL_328:
        __break(1u);
LABEL_329:
        __break(1u);
LABEL_330:
        __break(1u);
LABEL_331:
        __break(1u);
LABEL_332:
        __break(1u);
LABEL_333:
        __break(1u);
LABEL_334:
        __break(1u);
LABEL_335:
        __break(1u);
LABEL_336:
        __break(1u);
LABEL_337:
        __break(1u);
LABEL_338:
        __break(1u);
LABEL_339:
        __break(1u);
LABEL_340:
        __break(1u);
LABEL_341:
        __break(1u);
LABEL_342:
        __break(1u);
LABEL_343:
        __break(1u);
LABEL_344:
        __break(1u);
LABEL_345:
        __break(1u);
LABEL_346:
        __break(1u);
LABEL_347:
        __break(1u);
LABEL_348:
        __break(1u);
LABEL_349:
        __break(1u);
LABEL_350:
        __break(1u);
LABEL_351:
        __break(1u);
LABEL_352:
        __break(1u);
LABEL_353:
        __break(1u);
LABEL_354:
        __break(1u);
LABEL_355:
        __break(1u);
LABEL_356:
        __break(1u);
LABEL_357:
        __break(1u);
LABEL_358:
        __break(1u);
LABEL_359:
        __break(1u);
LABEL_360:
        __break(1u);
LABEL_361:
        __break(1u);
LABEL_362:
        __break(1u);
LABEL_363:
        __break(1u);
LABEL_364:
        __break(1u);
LABEL_365:
        __break(1u);
LABEL_366:
        __break(1u);
LABEL_367:
        __break(1u);
LABEL_368:
        __break(1u);
LABEL_369:
        __break(1u);
LABEL_370:
        __break(1u);
LABEL_371:
        __break(1u);
LABEL_372:
        __break(1u);
LABEL_373:
        __break(1u);
LABEL_374:
        __break(1u);
LABEL_375:
        __break(1u);
        return result;
      }

      if (v6 == 1)
      {
        goto LABEL_221;
      }

      if (v6 < 3)
      {
        goto LABEL_242;
      }

      if (v6 == 3)
      {
        goto LABEL_262;
      }

      if (v6 < 5)
      {
        goto LABEL_282;
      }

      if (v6 == 5)
      {
        goto LABEL_298;
      }

      if (v6 < 7)
      {
        goto LABEL_314;
      }

      v7 = *(a3 + 16);
      if (!v7)
      {
        goto LABEL_325;
      }

      if (v7 == 1)
      {
        goto LABEL_336;
      }

      if (v7 < 3)
      {
        goto LABEL_344;
      }

      if (v7 == 3)
      {
        goto LABEL_352;
      }

      if (v7 < 5)
      {
        goto LABEL_358;
      }

      if (v7 == 5)
      {
        goto LABEL_364;
      }

      if (v7 < 7)
      {
        goto LABEL_368;
      }

      v8 = result[4];
      v9 = result[5];
      v10 = result[6];
      v11 = result[7];
      v12 = result[8];
      v13 = result[9];
      v14 = result[10];
      v15 = *(a3 + 32);
      v16 = *(a3 + 40);
      v18 = *(a3 + 48);
      v17 = *(a3 + 56);
      v19 = *(a3 + 64);
      *&v168 = v8;
      *(&v168 + 1) = v9;
      *&v169 = v10;
      *(&v169 + 1) = v11;
      *&v170 = v12;
      *(&v170 + 1) = v13;
      *&v171 = v14;
      *(&v171 + 1) = v15;
      *&v172 = v16;
      *(&v172 + 1) = v18;
      *&v173 = v17;
      *(&v173 + 1) = v19;
      v174 = *(a3 + 72);
      result = _s10Accelerate4BNNSO5ShapeOWOi17_(&v168);
LABEL_199:
      v164 = v175;
      *(a4 + 96) = v174;
      *(a4 + 112) = v164;
      *(a4 + 128) = v176;
      v165 = v171;
      *(a4 + 32) = v170;
      *(a4 + 48) = v165;
      v166 = v173;
      *(a4 + 64) = v172;
      *(a4 + 80) = v166;
      v167 = v169;
      *a4 = v168;
      *(a4 + 16) = v167;
      return result;
    case 0x11:
      v87 = result[2];
      if (!v87)
      {
        goto LABEL_212;
      }

      if (v87 == 1)
      {
        goto LABEL_233;
      }

      if (v87 < 3)
      {
        goto LABEL_253;
      }

      if (v87 == 3)
      {
        goto LABEL_273;
      }

      if (v87 < 5)
      {
        goto LABEL_289;
      }

      if (v87 == 5)
      {
        goto LABEL_305;
      }

      if (v87 < 7)
      {
        goto LABEL_320;
      }

      if (v87 == 7)
      {
        goto LABEL_331;
      }

      v88 = *(a3 + 16);
      if (!v88)
      {
        goto LABEL_341;
      }

      if (v88 == 1)
      {
        goto LABEL_349;
      }

      if (v88 < 3)
      {
        goto LABEL_355;
      }

      if (v88 == 3)
      {
        goto LABEL_361;
      }

      if (v88 < 5)
      {
        goto LABEL_366;
      }

      if (v88 == 5)
      {
        goto LABEL_370;
      }

      if (v88 < 7)
      {
        goto LABEL_372;
      }

      if (v88 == 7)
      {
        goto LABEL_374;
      }

      v89 = result[4];
      v90 = result[5];
      v91 = result[6];
      v92 = result[7];
      v93 = result[8];
      v94 = result[9];
      v95 = result[10];
      v96 = result[11];
      v97 = *(a3 + 32);
      v98 = *(a3 + 40);
      v99 = *(a3 + 48);
      v100 = *(a3 + 56);
      v101 = *(a3 + 64);
      v102 = *(a3 + 72);
      *&v168 = v89;
      *(&v168 + 1) = v90;
      *&v169 = v91;
      *(&v169 + 1) = v92;
      *&v170 = v93;
      *(&v170 + 1) = v94;
      *&v171 = v95;
      *(&v171 + 1) = v96;
      *&v172 = v97;
      *(&v172 + 1) = v98;
      *&v173 = v99;
      *(&v173 + 1) = v100;
      *&v174 = v101;
      *(&v174 + 1) = v102;
      v175 = *(a3 + 80);
      result = _s10Accelerate4BNNSO5ShapeOWOi18_(&v168);
      goto LABEL_199;
    case 0x12:
      v129 = result[2];
      if (!v129)
      {
        goto LABEL_217;
      }

      if (v129 == 1)
      {
        goto LABEL_238;
      }

      if (v129 < 3)
      {
        goto LABEL_258;
      }

      if (v129 == 3)
      {
        goto LABEL_278;
      }

      if (v129 < 5)
      {
        goto LABEL_294;
      }

      if (v129 == 5)
      {
        goto LABEL_310;
      }

      if (v129 < 7)
      {
        goto LABEL_322;
      }

      if (v129 == 7)
      {
        goto LABEL_333;
      }

      v130 = *(a3 + 16);
      if (!v130)
      {
        goto LABEL_343;
      }

      if (v130 == 1)
      {
        goto LABEL_351;
      }

      if (v130 < 3)
      {
        goto LABEL_357;
      }

      if (v130 == 3)
      {
        goto LABEL_363;
      }

      if (v130 < 5)
      {
        goto LABEL_367;
      }

      if (v130 == 5)
      {
        goto LABEL_371;
      }

      if (v130 < 7)
      {
        goto LABEL_373;
      }

      if (v130 == 7)
      {
        goto LABEL_375;
      }

      v131 = result[4];
      v132 = result[5];
      v133 = result[6];
      v134 = result[7];
      v135 = result[8];
      v136 = result[9];
      v137 = result[10];
      v138 = result[11];
      v139 = *(a3 + 32);
      v140 = *(a3 + 40);
      v141 = *(a3 + 48);
      v142 = *(a3 + 56);
      v143 = *(a3 + 64);
      v144 = *(a3 + 72);
      *&v168 = v131;
      *(&v168 + 1) = v132;
      *&v169 = v133;
      *(&v169 + 1) = v134;
      *&v170 = v135;
      *(&v170 + 1) = v136;
      *&v171 = v137;
      *(&v171 + 1) = v138;
      *&v172 = v139;
      *(&v172 + 1) = v140;
      *&v173 = v141;
      *(&v173 + 1) = v142;
      *&v174 = v143;
      *(&v174 + 1) = v144;
      v175 = *(a3 + 80);
      result = _s10Accelerate4BNNSO5ShapeOWOi19_(&v168);
      goto LABEL_199;
    case 0x13:
      v159 = result[2];
      if (!v159)
      {
        goto LABEL_220;
      }

      if (v159 == 1)
      {
        goto LABEL_241;
      }

      if (v159 < 3)
      {
        goto LABEL_261;
      }

      v160 = *(a3 + 16);
      if (!v160)
      {
        goto LABEL_281;
      }

      if (v160 == 1)
      {
        goto LABEL_297;
      }

      if (v160 < 3)
      {
        goto LABEL_313;
      }

      v161 = result[5];
      v162 = result[6];
      v163 = *(a3 + 32);
      *&v168 = result[4];
      *(&v168 + 1) = v161;
      *&v169 = v162;
      *(&v169 + 1) = v163;
      v170 = *(a3 + 40);
      result = _s10Accelerate4BNNSO5ShapeOWOi7_(&v168);
      goto LABEL_199;
    case 0x14:
      v103 = result[2];
      if (!v103)
      {
        goto LABEL_213;
      }

      if (v103 == 1)
      {
        goto LABEL_234;
      }

      if (v103 < 3)
      {
        goto LABEL_254;
      }

      v104 = *(a3 + 16);
      if (!v104)
      {
        goto LABEL_274;
      }

      if (v104 == 1)
      {
        goto LABEL_290;
      }

      if (v104 < 3)
      {
        goto LABEL_306;
      }

      v105 = result[5];
      v106 = result[6];
      v107 = *(a3 + 32);
      *&v168 = result[4];
      *(&v168 + 1) = v105;
      *&v169 = v106;
      *(&v169 + 1) = v107;
      v170 = *(a3 + 40);
      result = _s10Accelerate4BNNSO5ShapeOWOi8_(&v168);
      goto LABEL_199;
    default:
      if (!result[2])
      {
        goto LABEL_210;
      }

      if (!*(a3 + 16))
      {
        goto LABEL_231;
      }

      v5 = *(a3 + 32);
      *&v168 = result[4];
      *(&v168 + 1) = v5;
      result = _s10Accelerate4BNNSO5ShapeOWOi_(&v168);
      goto LABEL_199;
  }
}