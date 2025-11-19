uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance BNNSGraph.Builder.Padding(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 4);
  if (*(a1 + 4) != 1)
  {
    return (v4 & 1) == 0 && v2 == v3;
  }

  v5 = LODWORD(v3) == 0;
  if (v3 == 0.0)
  {
    v6 = *(a2 + 4);
  }

  else
  {
    v6 = 0;
  }

  if (v5)
  {
    v4 = 0;
  }

  if (v2 == 0.0)
  {
    return v6;
  }

  else
  {
    return v4;
  }
}

uint64_t BNNSGraph.Builder.ConvolutionPadding.hash(into:)()
{
  v1 = *v0;
  if (*v0 < 3)
  {
    return MEMORY[0x1B8CB1810](qword_1B7E792C8[v1]);
  }

  MEMORY[0x1B8CB1810](1);
  result = MEMORY[0x1B8CB1810](*(v1 + 16));
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = (v1 + 32);
    do
    {
      v5 = *v4++;
      result = MEMORY[0x1B8CB1810](v5);
      --v3;
    }

    while (v3);
  }

  return result;
}

Swift::Int BNNSGraph.Builder.ConvolutionPadding.hashValue.getter()
{
  Hasher.init(_seed:)();
  BNNSGraph.Builder.ConvolutionPadding.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance BNNSGraph.Builder.ConvolutionPadding()
{
  Hasher.init(_seed:)();
  BNNSGraph.Builder.ConvolutionPadding.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance BNNSGraph.Builder.ConvolutionPadding()
{
  Hasher.init(_seed:)();
  BNNSGraph.Builder.ConvolutionPadding.hash(into:)();
  return Hasher._finalize()();
}

uint64_t BNNSGraph.Builder.Tensor.matmul<A, B>(transpose:other:transposeOther:bias:)@<X0>(uint64_t a1@<X4>, uint64_t a2@<X5>, uint64_t a3@<X6>, uint64_t a4@<X7>, uint64_t a5@<X8>, uint64_t a6)
{
  v24 = *v6;
  v10 = v24;
  v12 = *(a1 + 16);
  v11 = *(a1 + 24);
  swift_retain_n();
  v19 = *(v6 + 24);
  v20 = *(v6 + 8);
  v13 = *(v6 + 8);
  *&v25 = v13;

  LOBYTE(v27) = 1;
  BNNSGraph.Builder.Tensor.init(_:intent:dataType:shape:builder:)(*(&v20 + 1), v19, 0x100000000uLL, MEMORY[0x1E69E7CC0], &v24, v12, v11, &v27);
  v24 = v10;
  v25 = v20;
  v26 = v19;
  if (!BNNSGraph.Builder.Tensor.tensorData.getter())
  {

    goto LABEL_8;
  }

  v21 = v10;
  *&v22 = v13;
  (*(a4 + 24))(&v24, &v21, a2, a4);

  v21 = v24;
  v22 = v25;
  v23 = v26;
  v14 = BNNSGraph.Builder.Tensor.tensorData.getter();

  if (!v14)
  {

    goto LABEL_8;
  }

  v21 = v10;
  *&v22 = v13;
  (*(a6 + 24))(&v24, &v21, a3, a6);

  v21 = v24;
  v22 = v25;
  v23 = v26;
  v15 = BNNSGraph.Builder.Tensor.tensorData.getter();

  if (!v15)
  {
LABEL_8:
    *a5 = v27;
    *(a5 + 8) = v28;
    *(a5 + 24) = v29;
    return result;
  }

  if (v13)
  {
    v17 = _bnns_graph_builder_register_matmul();
    result = BNNSGraph.Builder.Tensor.setTensorData(_:operationName:)(v17, 0xD00000000000002CLL, 0x80000001B7E7D300);
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t BNNSGraph.Builder.Tensor.matmul<A>(transpose:other:transposeOther:)@<X0>(uint64_t a1@<X3>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X8>)
{
  v20 = *v4;
  v8 = v20;
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  swift_retain_n();
  v15 = *(v4 + 24);
  v16 = *(v4 + 8);
  v11 = *(v4 + 8);
  *&v21 = v11;

  LOBYTE(v23) = 1;
  BNNSGraph.Builder.Tensor.init(_:intent:dataType:shape:builder:)(*(&v16 + 1), v15, 0x100000000uLL, MEMORY[0x1E69E7CC0], &v20, v9, v10, &v23);
  v20 = v8;
  v21 = v16;
  v22 = v15;
  if (!BNNSGraph.Builder.Tensor.tensorData.getter())
  {

    goto LABEL_6;
  }

  v17 = v8;
  *&v18 = v11;
  (*(a3 + 24))(&v20, &v17, a2, a3);

  v17 = v20;
  v18 = v21;
  v19 = v22;
  v12 = BNNSGraph.Builder.Tensor.tensorData.getter();

  if (!v12)
  {
LABEL_6:
    *a4 = v23;
    *(a4 + 8) = v24;
    *(a4 + 24) = v25;
    return result;
  }

  if (v11)
  {
    v14 = _bnns_graph_builder_register_matmul();
    result = BNNSGraph.Builder.Tensor.setTensorData(_:operationName:)(v14, 0xD000000000000027, 0x80000001B7E7D330);
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t BNNSGraph.Builder.Tensor.linear<A, B>(weight:bias:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v25 = *v6;
  v10 = v25;
  v12 = *(a1 + 16);
  v11 = *(a1 + 24);
  swift_retain_n();
  v20 = *(v6 + 24);
  v21 = *(v6 + 8);
  v13 = *(v6 + 8);
  *&v26 = v13;

  LOBYTE(v28) = 1;
  BNNSGraph.Builder.Tensor.init(_:intent:dataType:shape:builder:)(*(&v21 + 1), v20, 0x100000000uLL, MEMORY[0x1E69E7CC0], &v25, v12, v11, &v28);
  v25 = v10;
  v26 = v21;
  v27 = v20;
  if (!BNNSGraph.Builder.Tensor.tensorData.getter())
  {

    goto LABEL_8;
  }

  v22 = v10;
  *&v23 = v13;
  (*(a4 + 24))(&v25, &v22, a2, a4);

  v22 = v25;
  v23 = v26;
  v24 = v27;
  v14 = BNNSGraph.Builder.Tensor.tensorData.getter();

  if (!v14)
  {

    goto LABEL_8;
  }

  v22 = v10;
  *&v23 = v13;
  (*(a5 + 24))(&v25, &v22, a3);

  v22 = v25;
  v23 = v26;
  v24 = v27;
  v15 = BNNSGraph.Builder.Tensor.tensorData.getter();

  if (!v15)
  {
LABEL_8:
    *a6 = v28;
    *(a6 + 8) = v29;
    *(a6 + 24) = v30;
    return result;
  }

  if (v13)
  {
    v17 = _bnns_graph_builder_register_linear();
    result = BNNSGraph.Builder.Tensor.setTensorData(_:operationName:)(v17, 0xD000000000000014, 0x80000001B7E7D360);
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t BNNSGraph.Builder.Tensor.linear<A>(weight:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v20 = *v4;
  v8 = v20;
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  swift_retain_n();
  v15 = *(v4 + 24);
  v16 = *(v4 + 8);
  v11 = *(v4 + 8);
  *&v21 = v11;

  LOBYTE(v23) = 1;
  BNNSGraph.Builder.Tensor.init(_:intent:dataType:shape:builder:)(*(&v16 + 1), v15, 0x100000000uLL, MEMORY[0x1E69E7CC0], &v20, v9, v10, &v23);
  v20 = v8;
  v21 = v16;
  v22 = v15;
  if (!BNNSGraph.Builder.Tensor.tensorData.getter())
  {

    goto LABEL_6;
  }

  v17 = v8;
  *&v18 = v11;
  (*(a3 + 24))(&v20, &v17, a2, a3);

  v17 = v20;
  v18 = v21;
  v19 = v22;
  v12 = BNNSGraph.Builder.Tensor.tensorData.getter();

  if (!v12)
  {
LABEL_6:
    *a4 = v23;
    *(a4 + 8) = v24;
    *(a4 + 24) = v25;
    return result;
  }

  if (v11)
  {
    v14 = _bnns_graph_builder_register_linear();
    result = BNNSGraph.Builder.Tensor.setTensorData(_:operationName:)(v14, 0x77287261656E696CLL, 0xEF293A7468676965);
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t BNNSGraph.Builder.Tensor.cast<A>(to:)@<X0>(char *a1@<X2>, unint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v14 = *v3;
  v7 = v14;
  v12 = *(v3 + 24);
  v13 = *(v3 + 8);
  v8 = *(v3 + 8);
  *&v15 = v8;

  LOBYTE(v17) = 1;
  BNNSGraph.Builder.Tensor.init(_:intent:dataType:shape:builder:)(*(&v13 + 1), v12, 0x100000000uLL, MEMORY[0x1E69E7CC0], &v14, a1, a2, &v17);
  v14 = v7;
  v16 = v12;
  v15 = v13;
  result = BNNSGraph.Builder.Tensor.tensorData.getter();
  if (!result)
  {
    goto LABEL_4;
  }

  if (v8)
  {
    (*(a2 + 8))(a1, a2);
    v10 = _bnns_graph_builder_register_cast();
    type metadata accessor for BNNSGraph.Builder.Tensor();
    result = BNNSGraph.Builder.Tensor.setTensorData(_:operationName:)(v10, 0x3A6F742874736163, 0xE900000000000029);
LABEL_4:
    *a3 = v17;
    v11 = v19;
    *(a3 + 8) = v18;
    *(a3 + 24) = v11;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t BNNSGraph.Builder.Tensor.conv<A>(weight:strides:padding:dilations:groupCount:)@<X0>(unint64_t *a1@<X2>, uint64_t a2@<X5>, uint64_t a3@<X6>, uint64_t a4@<X7>, uint64_t a5@<X8>)
{
  v8 = *a1;
  v9 = *v5;
  v16 = *(v5 + 24);
  v17 = *(v5 + 8);
  v21 = *v5;
  *&v22 = v17;
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  swift_retain_n();

  LOBYTE(v24) = 1;
  BNNSGraph.Builder.Tensor.init(_:intent:dataType:shape:builder:)(*(&v17 + 1), v16, 0x100000000uLL, MEMORY[0x1E69E7CC0], &v21, v10, v11, &v24);
  if (v8 >= 3)
  {
  }

  v21 = v9;
  v22 = v17;
  v23 = v16;
  if (!BNNSGraph.Builder.Tensor.tensorData.getter())
  {

    goto LABEL_9;
  }

  v18 = v9;
  *&v19 = v17;
  (*(a4 + 24))(&v21, &v18, a3, a4);

  v18 = v21;
  v19 = v22;
  v20 = v23;
  v12 = BNNSGraph.Builder.Tensor.tensorData.getter();

  if (!v12)
  {

    goto LABEL_9;
  }

  if (v17)
  {
    v14 = _bnns_graph_builder_register_conv();

    result = BNNSGraph.Builder.Tensor.setTensorData(_:operationName:)(v14, 0xD000000000000032, 0x80000001B7E7D380);
LABEL_9:
    *a5 = v24;
    *(a5 + 8) = v25;
    *(a5 + 24) = v26;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t BNNSGraph.Builder.Tensor.conv<A, B>(weight:strides:bias:padding:dilations:groupCount:)@<X0>(unint64_t *a1@<X3>, uint64_t a2@<X6>, uint64_t a3@<X7>, uint64_t a4@<X8>, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *a1;
  v10 = *v7;
  v18 = *(v7 + 24);
  v19 = *(v7 + 8);
  v23 = *v7;
  *&v24 = v19;
  v11 = *(a2 + 16);
  v12 = *(a2 + 24);
  swift_retain_n();

  LOBYTE(v26) = 1;
  BNNSGraph.Builder.Tensor.init(_:intent:dataType:shape:builder:)(*(&v19 + 1), v18, 0x100000000uLL, MEMORY[0x1E69E7CC0], &v23, v11, v12, &v26);
  if (v9 >= 3)
  {
  }

  v23 = v10;
  v24 = v19;
  v25 = v18;
  if (!BNNSGraph.Builder.Tensor.tensorData.getter())
  {

    goto LABEL_11;
  }

  v20 = v10;
  *&v21 = v19;
  (*(a6 + 24))(&v23, &v20, a3);

  v20 = v23;
  v21 = v24;
  v22 = v25;
  v13 = BNNSGraph.Builder.Tensor.tensorData.getter();

  if (!v13)
  {

    goto LABEL_11;
  }

  v20 = v10;
  *&v21 = v19;
  (*(a7 + 24))(&v23, &v20, a5, a7);

  v20 = v23;
  v21 = v24;
  v22 = v25;
  v14 = BNNSGraph.Builder.Tensor.tensorData.getter();

  if (!v14)
  {

    goto LABEL_11;
  }

  if (v19)
  {
    v16 = _bnns_graph_builder_register_conv();

    result = BNNSGraph.Builder.Tensor.setTensorData(_:operationName:)(v16, 0xD000000000000037, 0x80000001B7E7D3C0);
LABEL_11:
    *a4 = v26;
    *(a4 + 8) = v27;
    *(a4 + 24) = v28;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t BNNSGraph.Builder.Tensor.convTranspose<A>(weight:strides:padding:outputPaddingValues:dilations:groupCount:)@<X0>(unint64_t *a1@<X2>, uint64_t a2@<X6>, uint64_t a3@<X7>, uint64_t a4@<X8>, uint64_t a5)
{
  v15 = *a1;
  v21 = *v5;
  v8 = v21;
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  swift_retain_n();
  v16 = *(v5 + 24);
  v17 = *(v5 + 8);
  v11 = *(v5 + 8);
  *&v22 = v11;

  LOBYTE(v24) = 1;
  BNNSGraph.Builder.Tensor.init(_:intent:dataType:shape:builder:)(*(&v17 + 1), v16, 0x100000000uLL, MEMORY[0x1E69E7CC0], &v21, v9, v10, &v24);
  v21 = v8;
  v22 = v17;
  v23 = v16;
  if (!BNNSGraph.Builder.Tensor.tensorData.getter())
  {

    goto LABEL_7;
  }

  v18 = v8;
  *&v19 = v11;
  (*(a5 + 24))(&v21, &v18, a3);

  v18 = v21;
  v19 = v22;
  v20 = v23;
  v12 = BNNSGraph.Builder.Tensor.tensorData.getter();

  if (!v12)
  {

    goto LABEL_7;
  }

  if (v11)
  {
    outlined copy of BNNSGraph.Builder.ConvolutionPadding(v15);
    v14 = _bnns_graph_builder_register_conv_transpose();

    result = BNNSGraph.Builder.Tensor.setTensorData(_:operationName:)(v14, 0xD00000000000004FLL, 0x80000001B7E7D400);
LABEL_7:
    *a4 = v24;
    *(a4 + 8) = v25;
    *(a4 + 24) = v26;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t BNNSGraph.Builder.Tensor.convTranspose<A, B>(weight:strides:bias:padding:outputPaddingValues:dilations:groupCount:)@<X0>(unint64_t *a1@<X3>, uint64_t a2@<X7>, uint64_t a3@<X8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17 = *a1;
  v23 = *v7;
  v9 = v23;
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  swift_retain_n();
  v18 = *(v7 + 24);
  v19 = *(v7 + 8);
  v12 = *(v7 + 8);
  *&v24 = v12;

  LOBYTE(v26) = 1;
  BNNSGraph.Builder.Tensor.init(_:intent:dataType:shape:builder:)(*(&v19 + 1), v18, 0x100000000uLL, MEMORY[0x1E69E7CC0], &v23, v10, v11, &v26);
  v23 = v9;
  v24 = v19;
  v25 = v18;
  if (!BNNSGraph.Builder.Tensor.tensorData.getter())
  {

    goto LABEL_9;
  }

  v20 = v9;
  *&v21 = v12;
  (*(a6 + 24))(&v23, &v20, a4);

  v20 = v23;
  v21 = v24;
  v22 = v25;
  v13 = BNNSGraph.Builder.Tensor.tensorData.getter();

  if (!v13)
  {

    goto LABEL_9;
  }

  v20 = v9;
  *&v21 = v12;
  (*(a7 + 24))(&v23, &v20, a5, a7);

  v20 = v23;
  v21 = v24;
  v22 = v25;
  v14 = BNNSGraph.Builder.Tensor.tensorData.getter();

  if (!v14)
  {

    goto LABEL_9;
  }

  if (v12)
  {
    outlined copy of BNNSGraph.Builder.ConvolutionPadding(v17);
    v16 = _bnns_graph_builder_register_conv_transpose();

    result = BNNSGraph.Builder.Tensor.setTensorData(_:operationName:)(v16, 0xD000000000000054, 0x80000001B7E7D450);
LABEL_9:
    *a3 = v26;
    *(a3 + 8) = v27;
    *(a3 + 24) = v28;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t BNNSGraph.Builder.Tensor.prelu(alpha:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v13 = *v2;
  v4 = v13;
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);

  LOBYTE(v16) = 1;
  v11 = *(v2 + 8);
  v12 = *(v2 + 24);
  v7 = *(v2 + 8);
  *&v14 = v7;
  BNNSGraph.Builder.Tensor.init(_:intent:dataType:shape:builder:)(0, 0xE000000000000000, 0x100000000uLL, MEMORY[0x1E69E7CC0], &v13, v5, v6, &v16);
  v13 = v4;
  v15 = v12;
  v14 = v11;
  result = BNNSGraph.Builder.Tensor.tensorData.getter();
  if (!result)
  {
    goto LABEL_4;
  }

  if (v7)
  {
    v9 = _bnns_graph_builder_register_prelu();
    result = BNNSGraph.Builder.Tensor.setTensorData(_:operationName:)(v9, 0x6C6128756C657270, 0xED0000293A616870);
LABEL_4:
    *a2 = v16;
    v10 = v18;
    *(a2 + 8) = v17;
    *(a2 + 24) = v10;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t BNNSGraph.Builder.Tensor.fma<A, B>(y:z:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v30 = *v6;
  v10 = v30;
  v14 = *(v6 + 1);
  v11 = *(v6 + 3);
  v31 = v14;
  v32 = v11;
  v24 = v30;
  *&v25 = v14;
  v12 = *(a4 + 24);
  swift_retain_n();
  v12(&v27, &v24, a2, a4);

  v24 = v27;
  v25 = v28;
  v26 = v29;
  v18 = v10;
  *&v19 = v14;
  (*(a5 + 24))(&v21, &v18, a3, a5);

  v18 = v21;
  v19 = v22;
  v20 = v23;
  BNNSGraph.Builder.Tensor.operationHelper(fn:y:z:funcName:)(@nonobjc _bnns_graph_builder_register_fma(_:_:_:_:_:), &v24, &v18, 0x3A7A3A7928616D66, 0xE900000000000029, a1, a6);
}

uint64_t BNNSGraph.Builder.Tensor.unsqueeze(axis:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v13 = *v2;
  v4 = v13;
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v11 = *(v2 + 24);
  v12 = *(v2 + 8);
  v7 = *(v2 + 8);
  *&v14 = v7;

  LOBYTE(v16) = 1;
  BNNSGraph.Builder.Tensor.init(_:intent:dataType:shape:builder:)(*(&v12 + 1), v11, 0x100000000uLL, MEMORY[0x1E69E7CC0], &v13, v5, v6, &v16);
  v13 = v4;
  v15 = v11;
  v14 = v12;
  result = BNNSGraph.Builder.Tensor.tensorData.getter();
  if (!result)
  {
    goto LABEL_4;
  }

  if (v7)
  {
    v9 = _bnns_graph_builder_register_unsqueeze();
    result = BNNSGraph.Builder.Tensor.setTensorData(_:operationName:)(v9, 0xD000000000000010, 0x80000001B7E7D5D0);
LABEL_4:
    *a2 = v16;
    v10 = v18;
    *(a2 + 8) = v17;
    *(a2 + 24) = v10;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t BNNSGraph.Builder.Tensor.squeeze(axis:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v13 = *v2;
  v4 = v13;
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v11 = *(v2 + 24);
  v12 = *(v2 + 8);
  v7 = *(v2 + 8);
  *&v14 = v7;

  LOBYTE(v16) = 1;
  BNNSGraph.Builder.Tensor.init(_:intent:dataType:shape:builder:)(*(&v12 + 1), v11, 0x100000000uLL, MEMORY[0x1E69E7CC0], &v13, v5, v6, &v16);
  v13 = v4;
  v15 = v11;
  v14 = v12;
  result = BNNSGraph.Builder.Tensor.tensorData.getter();
  if (!result)
  {
    goto LABEL_4;
  }

  if (v7)
  {
    v9 = _bnns_graph_builder_register_squeeze();
    result = BNNSGraph.Builder.Tensor.setTensorData(_:operationName:)(v9, 0x28657A6565757173, 0xEE00293A73697861);
LABEL_4:
    *a2 = v16;
    v10 = v18;
    *(a2 + 8) = v17;
    *(a2 + 24) = v10;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t BNNSGraph.Builder.Tensor.pow<A>(y:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, void)@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v22 = *v6;
  v13 = *(v6 + 3);
  v23 = *(v6 + 1);
  v24 = v13;
  v16 = v22;
  *&v17 = v23;
  v14 = *(a3 + 24);

  v14(&v19, &v16, a2, a3);

  v16 = v19;
  v17 = v20;
  v18 = v21;
  BNNSGraph.Builder.Tensor.operationHelper(fn:y:funcName:)(a4, &v16, a5, 0xE700000000000000, a1, a6);
}

uint64_t BNNSGraph.Builder.Tensor<>.select<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a1;
  v18 = *(a1 + 8);
  v19 = *(a1 + 24);
  v10 = *a2;
  v16 = *(a2 + 24);
  v17 = *(a2 + 8);
  v11 = v5[1];
  v12 = v5[4];
  v20 = *v5;
  *&v21 = v11;

  LOBYTE(v23) = 1;
  result = BNNSGraph.Builder.Tensor.init(_:intent:dataType:shape:builder:)(0, 0xE000000000000000, 0x100000000uLL, MEMORY[0x1E69E7CC0], &v20, a3, a4, &v23);
  if (!v12)
  {
    goto LABEL_6;
  }

  v20 = v9;
  v21 = v18;
  v22 = v19;
  type metadata accessor for BNNSGraph.Builder.Tensor();
  result = BNNSGraph.Builder.Tensor.tensorData.getter();
  if (!result)
  {
    goto LABEL_6;
  }

  v20 = v10;
  v22 = v16;
  v21 = v17;
  result = BNNSGraph.Builder.Tensor.tensorData.getter();
  if (!result)
  {
    goto LABEL_6;
  }

  if (v11)
  {
    v14 = _bnns_graph_builder_register_select();
    result = BNNSGraph.Builder.Tensor.setTensorData(_:operationName:)(v14, 0x5F287463656C6573, 0xEC000000293A5F3ALL);
LABEL_6:
    *a5 = v23;
    v15 = v25;
    *(a5 + 8) = v24;
    *(a5 + 24) = v15;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t BNNSGraph.Builder.Tensor<>.select<A>(_:_:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *a1;
  v19 = *(a1 + 8);
  v20 = *(a1 + 24);
  v12 = *v5;
  v11 = v5[1];
  v13 = v5[4];
  v24 = *v5;
  *&v25 = v11;
  swift_retain_n();
  LOBYTE(v27) = 1;
  BNNSGraph.Builder.Tensor.init(_:intent:dataType:shape:builder:)(0, 0xE000000000000000, 0x100000000uLL, MEMORY[0x1E69E7CC0], &v24, a3, a4, &v27);
  if (!v13 || (v24 = v10, v25 = v19, v26 = v20, type metadata accessor for BNNSGraph.Builder.Tensor(), !BNNSGraph.Builder.Tensor.tensorData.getter()))
  {

    goto LABEL_7;
  }

  v14 = a2[3];
  v15 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v14);
  v21 = v12;
  *&v22 = v11;
  (*(v15 + 24))(&v24, &v21, v14, v15);

  v21 = v24;
  v22 = v25;
  v23 = v26;
  v16 = BNNSGraph.Builder.Tensor.tensorData.getter();

  if (!v16)
  {
LABEL_7:
    *a5 = v27;
    *(a5 + 8) = v28;
    *(a5 + 24) = v29;
    return result;
  }

  if (v11)
  {
    v18 = _bnns_graph_builder_register_select();
    result = BNNSGraph.Builder.Tensor.setTensorData(_:operationName:)(v18, 0x5F287463656C6573, 0xEC000000293A5F3ALL);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t BNNSGraph.Builder.Tensor<>.select<A>(_:_:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *a2;
  v20 = *(a2 + 24);
  v21 = *(a2 + 8);
  v12 = *v5;
  v11 = v5[1];
  v13 = v5[4];
  v25 = *v5;
  *&v26 = v11;
  swift_retain_n();
  LOBYTE(v28) = 1;
  BNNSGraph.Builder.Tensor.init(_:intent:dataType:shape:builder:)(0, 0xE000000000000000, 0x100000000uLL, MEMORY[0x1E69E7CC0], &v25, a3, a4, &v28);
  if (!v13)
  {

    goto LABEL_8;
  }

  v19 = v10;
  v14 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v14);
  v22 = v12;
  *&v23 = v11;
  (*(v15 + 24))(&v25, &v22, v14, v15);

  v22 = v25;
  v23 = v26;
  v24 = v27;
  type metadata accessor for BNNSGraph.Builder.Tensor();
  v16 = BNNSGraph.Builder.Tensor.tensorData.getter();

  if (!v16)
  {

    goto LABEL_8;
  }

  v25 = v19;
  v26 = v21;
  v27 = v20;
  result = BNNSGraph.Builder.Tensor.tensorData.getter();
  if (!result)
  {
LABEL_8:
    *a5 = v28;
    *(a5 + 8) = v29;
    *(a5 + 24) = v30;
    return result;
  }

  if (v11)
  {
    v18 = _bnns_graph_builder_register_select();
    result = BNNSGraph.Builder.Tensor.setTensorData(_:operationName:)(v18, 0x5F287463656C6573, 0xEC000000293A5F3ALL);
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

unint64_t *specialized static BNNSGraph.Builder.ConvolutionPadding.== infix(_:_:)(unint64_t *result, unint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  if (!*result)
  {
    if (!v3)
    {
      goto LABEL_9;
    }

LABEL_15:
    v4 = 0;
    goto LABEL_16;
  }

  if (v2 == 1)
  {
    if (v3 == 1)
    {
      goto LABEL_9;
    }

    goto LABEL_15;
  }

  if (v2 == 2)
  {
    if (v3 != 2)
    {
      goto LABEL_15;
    }

LABEL_9:
    v4 = 1;
LABEL_17:
    outlined copy of BNNSGraph.Builder.ConvolutionPadding(v3);
    outlined consume of BNNSGraph.Builder.ConvolutionPadding(v2);
    outlined consume of BNNSGraph.Builder.ConvolutionPadding(v3);
    return v4;
  }

  if (v3 < 3)
  {
    goto LABEL_15;
  }

  v5 = *(v2 + 16);
  if (v5 != *(v3 + 16))
  {
    goto LABEL_15;
  }

  if (!v5 || v2 == v3)
  {
    v4 = 1;
LABEL_16:
    outlined copy of BNNSGraph.Builder.ConvolutionPadding(*result);
    goto LABEL_17;
  }

  v6 = (v2 + 32);
  v7 = (v3 + 32);
  while (v5)
  {
    v9 = *v6++;
    v8 = v9;
    v10 = *v7++;
    v4 = v8 == v10;
    if (v8 != v10 || v5-- == 1)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type BNNSGraph.Builder.ScatterMode and conformance BNNSGraph.Builder.ScatterMode()
{
  result = lazy protocol witness table cache variable for type BNNSGraph.Builder.ScatterMode and conformance BNNSGraph.Builder.ScatterMode;
  if (!lazy protocol witness table cache variable for type BNNSGraph.Builder.ScatterMode and conformance BNNSGraph.Builder.ScatterMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BNNSGraph.Builder.ScatterMode and conformance BNNSGraph.Builder.ScatterMode);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BNNSGraph.Builder.Direction and conformance BNNSGraph.Builder.Direction()
{
  result = lazy protocol witness table cache variable for type BNNSGraph.Builder.Direction and conformance BNNSGraph.Builder.Direction;
  if (!lazy protocol witness table cache variable for type BNNSGraph.Builder.Direction and conformance BNNSGraph.Builder.Direction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BNNSGraph.Builder.Direction and conformance BNNSGraph.Builder.Direction);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BNNSGraph.Builder.Activation and conformance BNNSGraph.Builder.Activation()
{
  result = lazy protocol witness table cache variable for type BNNSGraph.Builder.Activation and conformance BNNSGraph.Builder.Activation;
  if (!lazy protocol witness table cache variable for type BNNSGraph.Builder.Activation and conformance BNNSGraph.Builder.Activation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BNNSGraph.Builder.Activation and conformance BNNSGraph.Builder.Activation);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BNNSGraph.Builder.SortOrder and conformance BNNSGraph.Builder.SortOrder()
{
  result = lazy protocol witness table cache variable for type BNNSGraph.Builder.SortOrder and conformance BNNSGraph.Builder.SortOrder;
  if (!lazy protocol witness table cache variable for type BNNSGraph.Builder.SortOrder and conformance BNNSGraph.Builder.SortOrder)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BNNSGraph.Builder.SortOrder and conformance BNNSGraph.Builder.SortOrder);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BNNSGraph.Builder.PoolingFunction and conformance BNNSGraph.Builder.PoolingFunction()
{
  result = lazy protocol witness table cache variable for type BNNSGraph.Builder.PoolingFunction and conformance BNNSGraph.Builder.PoolingFunction;
  if (!lazy protocol witness table cache variable for type BNNSGraph.Builder.PoolingFunction and conformance BNNSGraph.Builder.PoolingFunction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BNNSGraph.Builder.PoolingFunction and conformance BNNSGraph.Builder.PoolingFunction);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BNNSGraph.Builder.CeilingMode and conformance BNNSGraph.Builder.CeilingMode()
{
  result = lazy protocol witness table cache variable for type BNNSGraph.Builder.CeilingMode and conformance BNNSGraph.Builder.CeilingMode;
  if (!lazy protocol witness table cache variable for type BNNSGraph.Builder.CeilingMode and conformance BNNSGraph.Builder.CeilingMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BNNSGraph.Builder.CeilingMode and conformance BNNSGraph.Builder.CeilingMode);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BNNSGraph.Builder.Padding and conformance BNNSGraph.Builder.Padding()
{
  result = lazy protocol witness table cache variable for type BNNSGraph.Builder.Padding and conformance BNNSGraph.Builder.Padding;
  if (!lazy protocol witness table cache variable for type BNNSGraph.Builder.Padding and conformance BNNSGraph.Builder.Padding)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BNNSGraph.Builder.Padding and conformance BNNSGraph.Builder.Padding);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BNNSGraph.Builder.ConvolutionPadding and conformance BNNSGraph.Builder.ConvolutionPadding()
{
  result = lazy protocol witness table cache variable for type BNNSGraph.Builder.ConvolutionPadding and conformance BNNSGraph.Builder.ConvolutionPadding;
  if (!lazy protocol witness table cache variable for type BNNSGraph.Builder.ConvolutionPadding and conformance BNNSGraph.Builder.ConvolutionPadding)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BNNSGraph.Builder.ConvolutionPadding and conformance BNNSGraph.Builder.ConvolutionPadding);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BNNSGraph.Builder.ScatterMode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BNNSGraph.Builder.ScatterMode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BNNSGraph.Builder.Activation(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BNNSGraph.Builder.Activation(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BNNSGraph.Builder.PoolingFunction(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD)
  {
    v2 = a2 + 3;
    if (a2 + 3 >= 0xFFFF00)
    {
      v3 = 4;
    }

    else
    {
      v3 = 2;
    }

    if (v2 >> 8 < 0xFF)
    {
      v3 = 1;
    }

    if (v2 >= 0x100)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    if (v4 > 1)
    {
      if (v4 == 2)
      {
        v5 = *(a1 + 1);
        if (!*(a1 + 1))
        {
          goto LABEL_19;
        }
      }

      else
      {
        v5 = *(a1 + 1);
        if (!v5)
        {
          goto LABEL_19;
        }
      }
    }

    else
    {
      if (!v4)
      {
        goto LABEL_19;
      }

      v5 = a1[1];
      if (!a1[1])
      {
        goto LABEL_19;
      }
    }

    return (*a1 | (v5 << 8)) - 3;
  }

LABEL_19:
  v7 = *a1;
  if (*a1 >= 2u)
  {
    v8 = (v7 & 0xFE) + 2147483646;
    if ((v8 & 0x7FFFFFFE) != 0)
    {
      return (v8 & 0x7FFFFFFE | v7 & 1u) - 1;
    }
  }

  return 0;
}

uint64_t storeEnumTagSinglePayload for BNNSGraph.Builder.PoolingFunction(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 3;
  if (a3 + 3 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFD)
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t getEnumTag for BNNSGraph.Builder.PoolingFunction(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_BYTE *destructiveInjectEnumTag for BNNSGraph.Builder.PoolingFunction(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BNNSGraph.Builder.Padding(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for BNNSGraph.Builder.Padding(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 5) = v3;
  return result;
}

uint64_t getEnumTag for BNNSGraph.Builder.Padding(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t destructiveInjectEnumTag for BNNSGraph.Builder.Padding(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 1;
  }

  else
  {
    *(result + 4) = 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Accelerate9BNNSGraphO7BuilderV18ConvolutionPaddingO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for BNNSGraph.Builder.ConvolutionPadding(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for BNNSGraph.Builder.ConvolutionPadding(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for BNNSGraph.Builder.ConvolutionPadding(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

unint64_t outlined consume of BNNSGraph.Builder.ConvolutionPadding(unint64_t result)
{
  if (result >= 3)
  {
  }

  return result;
}

uint64_t static vDSP.clip<A>(_:to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return static vDSP.clip<A>(_:to:)(a1, a2, a3, partial apply for closure #1 in static vDSP.clip<A>(_:to:));
}

{
  return static vDSP.clip<A>(_:to:)(a1, a2, a3, partial apply for closure #1 in static vDSP.clip<A>(_:to:));
}

uint64_t partial apply for closure #1 in static vDSP.clip<A>(_:to:)(uint64_t a1, uint64_t *a2)
{
  return partial apply for closure #1 in static vDSP.clip<A>(_:to:)(a1, a2, static vDSP.clip<A, B>(_:to:result:));
}

{
  return partial apply for closure #1 in static vDSP.clip<A>(_:to:)(a1, a2, static vDSP.clip<A, B>(_:to:result:));
}

uint64_t static vDSP.clip<A, B>(_:to:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, float a7, float a8)
{

  return static vDSP.clip<A, B>(_:to:result:)(a1, a7, a8, a2, a3, a4, a5, a6, partial apply for closure #1 in closure #1 in closure #1 in static vDSP.clip<A, B>(_:to:result:));
}

uint64_t static vDSP.clip<A, B>(_:to:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, double a8)
{

  return static vDSP.clip<A, B>(_:to:result:)(a1, a7, a8, a2, a3, a4, a5, a6, partial apply for closure #1 in closure #1 in closure #1 in static vDSP.clip<A, B>(_:to:result:));
}

uint64_t static vDSP.invertedClip<A>(_:to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return static vDSP.clip<A>(_:to:)(a1, a2, a3, partial apply for closure #1 in static vDSP.invertedClip<A>(_:to:));
}

{
  return static vDSP.clip<A>(_:to:)(a1, a2, a3, partial apply for closure #1 in static vDSP.invertedClip<A>(_:to:));
}

uint64_t closure #1 in static vDSP.clip<A>(_:to:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, float, float), float a7, float a8)
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSrySfGMd);
  v17 = lazy protocol witness table accessor for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>(&lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Float> and conformance UnsafeMutableBufferPointer<A>, &_sSrySfGMd);
  a6(a3, a1, a4, v16, a5, v17, a7, a8);
  result = (*(a5 + 16))(a4, a5);
  *a2 = result;
  return result;
}

uint64_t static vDSP.invertedClip<A, B>(_:to:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, float a7, float a8)
{

  return static vDSP.clip<A, B>(_:to:result:)(a1, a7, a8, a2, a3, a4, a5, a6, partial apply for closure #1 in closure #1 in closure #1 in static vDSP.invertedClip<A, B>(_:to:result:));
}

uint64_t closure #1 in static vDSP.clip<A>(_:to:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, double, double), double a7, double a8)
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSrySdGMd);
  v17 = lazy protocol witness table accessor for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>(&lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>, &_sSrySdGMd);
  a6(a3, a1, a4, v16, a5, v17, a7, a8);
  result = (*(a5 + 16))(a4, a5);
  *a2 = result;
  return result;
}

uint64_t static vDSP.invertedClip<A, B>(_:to:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, double a8)
{

  return static vDSP.clip<A, B>(_:to:result:)(a1, a7, a8, a2, a3, a4, a5, a6, partial apply for closure #1 in closure #1 in closure #1 in static vDSP.invertedClip<A, B>(_:to:result:));
}

uint64_t static vDSP.threshold<A>(_:to:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = (*(a4 + 16))(a3, a4);
  return _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSf_Tt1gq5(v4, partial apply for closure #1 in static vDSP.threshold<A>(_:to:with:));
}

{
  v4 = (*(a4 + 16))(a3, a4);
  return _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSd_Tt1gq5(v4, partial apply for closure #1 in static vDSP.threshold<A>(_:to:with:));
}

uint64_t closure #1 in static vDSP.threshold<A>(_:to:with:)(uint64_t a1, uint64_t *a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, float a7)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSrySfGMd);
  v15 = lazy protocol witness table accessor for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>(&lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Float> and conformance UnsafeMutableBufferPointer<A>, &_sSrySfGMd);
  static vDSP.threshold<A, B>(_:to:with:result:)(a3, a4, a7, a1, a5, v14, a6, v15);
  result = (*(a6 + 16))(a5, a6);
  *a2 = result;
  return result;
}

uint64_t static vDSP.threshold<A, B>(_:to:with:result:)(uint64_t a1, int *a2, float a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = *MEMORY[0x1E69E9840];
  v14 = *a2;
  v15 = *(a2 + 4);
  v16 = (*(*(a8 + 8) + 16))(a6);
  if ((*(a7 + 16))(a5, a7) != v16)
  {
    __break(1u);
  }

  v18 = a3;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  v23 = a8;
  v24 = a1;
  v25 = v14;
  v26 = v15;
  v27 = &v18;
  v28 = v16;
  return (*(a8 + 16))(partial apply for closure #1 in closure #1 in static vDSP.threshold<A, B>(_:to:with:result:), v19, MEMORY[0x1E69E7CA8] + 8, a6, a8);
}

void closure #1 in closure #1 in closure #1 in static vDSP.threshold<A, B>(_:to:with:result:)(const float *a1, int a2, uint64_t a3, const float *__B, float **a5, vDSP_Length __N)
{
  if ((a3 & 0x100000000) == 0)
  {
    if (!a1)
    {
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v7 = a3;
    v6 = *a5;
    if (!v6)
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    if ((__N & 0x8000000000000000) == 0)
    {
      vDSP_vthrsc(a1, 1, __B, &v7, v6, 1, __N);
      return;
    }

    __break(1u);
    goto LABEL_17;
  }

  if (a3)
  {
    if (!a1)
    {
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    if (!*a5)
    {
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    if ((__N & 0x8000000000000000) == 0)
    {
      vDSP_vthres(a1, 1, __B, *a5, 1, __N);
      return;
    }

LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!a1)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (!*a5)
  {
LABEL_24:
    __break(1u);
    return;
  }

  if ((__N & 0x8000000000000000) != 0)
  {
    goto LABEL_18;
  }

  vDSP_vthr(a1, 1, __B, *a5, 1, __N);
}

uint64_t closure #1 in static vDSP.threshold<A>(_:to:with:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, double a7)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSrySdGMd);
  v15 = lazy protocol witness table accessor for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>(&lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>, &_sSrySdGMd);
  static vDSP.threshold<A, B>(_:to:with:result:)(a3, a4, a7, a1, a5, v14, a6, v15);
  result = (*(a6 + 16))(a5, a6);
  *a2 = result;
  return result;
}

uint64_t static vDSP.threshold<A, B>(_:to:with:result:)(uint64_t a1, uint64_t *a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = *MEMORY[0x1E69E9840];
  v14 = *a2;
  v15 = *(a2 + 8);
  v16 = (*(*(a8 + 8) + 16))(a6);
  if ((*(a7 + 16))(a5, a7) != v16)
  {
    __break(1u);
  }

  v18 = a3;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  v23 = a8;
  v24 = a1;
  v25 = v14;
  v26 = v15;
  v27 = &v18;
  v28 = v16;
  return (*(a8 + 16))(partial apply for closure #1 in closure #1 in static vDSP.threshold<A, B>(_:to:with:result:), v19, MEMORY[0x1E69E7CA8] + 8, a6, a8);
}

void closure #1 in closure #1 in closure #1 in static vDSP.threshold<A, B>(_:to:with:result:)(const double *a1, int a2, uint64_t a3, char a4, const double *__B, double **a6, vDSP_Length __N)
{
  if ((a4 & 1) == 0)
  {
    if (!a1)
    {
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v7 = a3;
    if (!*a6)
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    if ((__N & 0x8000000000000000) == 0)
    {
      vDSP_vthrscD(a1, 1, __B, &v7, *a6, 1, __N);
      return;
    }

    __break(1u);
    goto LABEL_17;
  }

  if (a3)
  {
    if (!a1)
    {
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    if (!*a6)
    {
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    if ((__N & 0x8000000000000000) == 0)
    {
      vDSP_vthresD(a1, 1, __B, *a6, 1, __N);
      return;
    }

LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!a1)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (!*a6)
  {
LABEL_24:
    __break(1u);
    return;
  }

  if ((__N & 0x8000000000000000) != 0)
  {
    goto LABEL_18;
  }

  vDSP_vthrD(a1, 1, __B, *a6, 1, __N);
}

uint64_t static vDSP.limit<A>(_:limit:withOutputConstant:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return static vDSP.clip<A>(_:to:)(a1, a2, a3, partial apply for closure #1 in static vDSP.limit<A>(_:limit:withOutputConstant:));
}

{
  return static vDSP.clip<A>(_:to:)(a1, a2, a3, partial apply for closure #1 in static vDSP.limit<A>(_:limit:withOutputConstant:));
}

uint64_t static vDSP.clip<A>(_:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t *))
{
  v5 = (*(a3 + 16))(a2, a3);
  return _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSf_Tt1gq5(v5, a4);
}

{
  v5 = (*(a3 + 16))(a2, a3);
  return _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSd_Tt1gq5(v5, a4);
}

uint64_t static vDSP.limit<A, B>(_:limit:withOutputConstant:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, float a7, float a8)
{

  return static vDSP.clip<A, B>(_:to:result:)(a1, a7, a8, a2, a3, a4, a5, a6, partial apply for closure #1 in closure #1 in closure #1 in static vDSP.limit<A, B>(_:limit:withOutputConstant:result:));
}

uint64_t static vDSP.clip<A, B>(_:to:result:)(uint64_t a1, float a2, float a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v30 = *MEMORY[0x1E69E9840];
  v17 = (*(*(a8 + 8) + 16))(a6);
  if ((*(a7 + 16))(a5, a7) != v17)
  {
    __break(1u);
  }

  v19 = a2;
  v20 = a3;
  v22 = a5;
  v23 = a6;
  v24 = a7;
  v25 = a8;
  v26 = a1;
  v27 = &v19;
  v28 = &v20;
  v29 = v17;
  return (*(a8 + 16))(a9, v21, MEMORY[0x1E69E7CA8] + 8, a6, a8);
}

uint64_t static vDSP.limit<A, B>(_:limit:withOutputConstant:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, double a8)
{

  return static vDSP.clip<A, B>(_:to:result:)(a1, a7, a8, a2, a3, a4, a5, a6, partial apply for closure #1 in closure #1 in closure #1 in static vDSP.limit<A, B>(_:limit:withOutputConstant:result:));
}

uint64_t static vDSP.clip<A, B>(_:to:result:)(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v30 = *MEMORY[0x1E69E9840];
  v17 = (*(*(a8 + 8) + 16))(a6);
  if ((*(a7 + 16))(a5, a7) != v17)
  {
    __break(1u);
  }

  v19 = a2;
  v20 = a3;
  v22 = a5;
  v23 = a6;
  v24 = a7;
  v25 = a8;
  v26 = a1;
  v27 = &v19;
  v28 = &v20;
  v29 = v17;
  return (*(a8 + 16))(a9, v21, MEMORY[0x1E69E7CA8] + 8, a6, a8);
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in static vDSP.clip<A, B>(_:to:result:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t (*a7)(void))
{
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (*a5)
  {
    if ((a6 & 0x8000000000000000) == 0)
    {
      return a7();
    }

    __break(1u);
    goto LABEL_6;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t partial apply for closure #1 in static vDSP.invertedClip<A>(_:to:)(uint64_t a1, uint64_t *a2)
{
  return partial apply for closure #1 in static vDSP.clip<A>(_:to:)(a1, a2, static vDSP.invertedClip<A, B>(_:to:result:));
}

{
  return partial apply for closure #1 in static vDSP.clip<A>(_:to:)(a1, a2, static vDSP.invertedClip<A, B>(_:to:result:));
}

uint64_t partial apply for closure #1 in static vDSP.threshold<A>(_:to:with:)(uint64_t a1, uint64_t *a2)
{
  return closure #1 in static vDSP.threshold<A>(_:to:with:)(a1, a2, *(v2 + 32), *(v2 + 48), *(v2 + 16), *(v2 + 24), *(v2 + 40));
}

{
  return closure #1 in static vDSP.threshold<A>(_:to:with:)(a1, a2, *(v2 + 32), *(v2 + 48), *(v2 + 16), *(v2 + 24), *(v2 + 40));
}

uint64_t partial apply for closure #1 in static vDSP.limit<A>(_:limit:withOutputConstant:)(uint64_t a1, uint64_t *a2)
{
  return partial apply for closure #1 in static vDSP.clip<A>(_:to:)(a1, a2, static vDSP.limit<A, B>(_:limit:withOutputConstant:result:));
}

{
  return partial apply for closure #1 in static vDSP.clip<A>(_:to:)(a1, a2, static vDSP.limit<A, B>(_:limit:withOutputConstant:result:));
}

uint64_t type metadata completion function for vDSP.ThresholdRule()
{
  v0 = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t getEnumTagSinglePayload for vDSP.ThresholdRule(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 2;
  v7 = *(v4 + 64);
  if (v5 <= 1)
  {
    v6 = 0;
    if (v7 <= 3)
    {
      v9 = (~(-1 << (8 * v7)) - v5 + 2) >> (8 * v7);
      if (v9 > 0xFFFE)
      {
        v8 = 4;
      }

      else
      {
        v10 = 1;
        if (v9 >= 0xFF)
        {
          v10 = 2;
        }

        if (v9)
        {
          v8 = v10;
        }

        else
        {
          v8 = 0;
        }
      }
    }

    else
    {
      v8 = 1;
    }

    v7 += v8;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = a2 - v6;
  if (a2 <= v6)
  {
    goto LABEL_36;
  }

  v12 = 8 * v7;
  if (v7 <= 3)
  {
    v14 = ((v11 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v14))
    {
      v13 = *(a1 + v7);
      if (!v13)
      {
        goto LABEL_35;
      }

      goto LABEL_22;
    }

    if (v14 > 0xFF)
    {
      v13 = *(a1 + v7);
      if (!*(a1 + v7))
      {
        goto LABEL_35;
      }

      goto LABEL_22;
    }

    if (v14 < 2)
    {
LABEL_35:
      if (v6)
      {
LABEL_36:
        v18 = (*(v4 + 48))(a1, v5);
        if (v18 >= 3)
        {
          return v18 - 2;
        }

        else
        {
          return 0;
        }
      }

      return 0;
    }
  }

  v13 = *(a1 + v7);
  if (!*(a1 + v7))
  {
    goto LABEL_35;
  }

LABEL_22:
  v15 = (v13 - 1) << v12;
  if (v7 > 3)
  {
    v15 = 0;
  }

  if (v7)
  {
    if (v7 <= 3)
    {
      v16 = v7;
    }

    else
    {
      v16 = 4;
    }

    if (v16 > 2)
    {
      if (v16 == 3)
      {
        v17 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v17 = *a1;
      }
    }

    else if (v16 == 1)
    {
      v17 = *a1;
    }

    else
    {
      v17 = *a1;
    }
  }

  else
  {
    v17 = 0;
  }

  return v6 + (v17 | v15) + 1;
}

unsigned int *storeEnumTagSinglePayload for vDSP.ThresholdRule(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = v6 - 2;
  if (v6 <= 1)
  {
    v8 = 0;
    if (v7 <= 3)
    {
      v10 = (~(-1 << (8 * v7)) - v6 + 2) >> (8 * v7);
      if (v10 > 0xFFFE)
      {
        v9 = 4;
      }

      else
      {
        v11 = 1;
        if (v10 >= 0xFF)
        {
          v11 = 2;
        }

        if (v10)
        {
          v9 = v11;
        }

        else
        {
          v9 = 0;
        }
      }
    }

    else
    {
      v9 = 1;
    }

    v7 += v9;
  }

  v12 = a3 >= v8;
  v13 = a3 - v8;
  if (v13 != 0 && v12)
  {
    v14 = 1;
    if (v7 <= 3)
    {
      v15 = ((v13 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      v16 = HIWORD(v15);
      if (v15 < 0x100)
      {
        v17 = 1;
      }

      else
      {
        v17 = 2;
      }

      if (v15 >= 2)
      {
        v18 = v17;
      }

      else
      {
        v18 = 0;
      }

      if (v16)
      {
        v14 = 4;
      }

      else
      {
        v14 = v18;
      }
    }

    if (v8 >= a2)
    {
LABEL_29:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *(result + v7) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_41;
        }

        *(result + v7) = 0;
      }

      else if (v14)
      {
        *(result + v7) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_41;
      }

      if (!a2)
      {
        return result;
      }

LABEL_41:
      v24 = *(v5 + 56);

      return v24();
    }
  }

  else
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_29;
    }
  }

  v19 = ~v8 + a2;
  if (v7 >= 4)
  {
    v20 = result;
    bzero(result, v7);
    result = v20;
    *v20 = v19;
    v21 = 1;
    if (v14 > 1)
    {
      goto LABEL_51;
    }

    goto LABEL_48;
  }

  v21 = (v19 >> (8 * v7)) + 1;
  if (!v7)
  {
LABEL_47:
    if (v14 > 1)
    {
      goto LABEL_51;
    }

    goto LABEL_48;
  }

  v22 = v19 & ~(-1 << (8 * v7));
  v23 = result;
  bzero(result, v7);
  result = v23;
  if (v7 == 3)
  {
    *v23 = v22;
    *(v23 + 2) = BYTE2(v22);
    goto LABEL_47;
  }

  if (v7 == 2)
  {
    *v23 = v22;
    if (v14 > 1)
    {
LABEL_51:
      if (v14 == 2)
      {
        *(result + v7) = v21;
      }

      else
      {
        *(result + v7) = v21;
      }

      return result;
    }
  }

  else
  {
    *v23 = v19;
    if (v14 > 1)
    {
      goto LABEL_51;
    }
  }

LABEL_48:
  if (v14)
  {
    *(result + v7) = v21;
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in static vDSP.limit<A, B>(_:limit:withOutputConstant:result:)(uint64_t a1)
{
  return partial apply for closure #1 in closure #1 in closure #1 in static vDSP.limit<A, B>(_:limit:withOutputConstant:result:)(a1, partial apply for closure #1 in closure #1 in closure #1 in closure #1 in static vDSP.limit<A, B>(_:limit:withOutputConstant:result:));
}

{
  return partial apply for closure #1 in closure #1 in closure #1 in static vDSP.limit<A, B>(_:limit:withOutputConstant:result:)(a1, partial apply for closure #1 in closure #1 in closure #1 in closure #1 in static vDSP.limit<A, B>(_:limit:withOutputConstant:result:));
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in closure #1 in static vDSP.limit<A, B>(_:limit:withOutputConstant:result:)(uint64_t a1, uint64_t a2)
{
  return closure #1 in closure #1 in closure #1 in closure #1 in static vDSP.clip<A, B>(_:to:result:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), MEMORY[0x1E6958FF8]);
}

{
  return closure #1 in closure #1 in closure #1 in closure #1 in static vDSP.clip<A, B>(_:to:result:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), MEMORY[0x1E6958FF0]);
}

uint64_t partial apply for closure #1 in closure #1 in static vDSP.threshold<A, B>(_:to:with:result:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  v4 = *(v1 + 64);
  v5 = *(v1 + 72);
  v6 = *(v1 + 80);
  v8[2] = *(v1 + 56);
  v9 = v4;
  v10 = v5;
  v11 = a1;
  v12 = v6;
  return (*(v3 + 24))(partial apply for closure #1 in closure #1 in closure #1 in static vDSP.threshold<A, B>(_:to:with:result:), v8, MEMORY[0x1E69E7CA8] + 8, v2);
}

{
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  v4 = *(v1 + 60);
  v5 = *(v1 + 64);
  v7[4] = *(v1 + 56);
  v8 = v4;
  v9 = v5;
  v10 = a1;
  return (*(v3 + 24))(partial apply for closure #1 in closure #1 in closure #1 in static vDSP.threshold<A, B>(_:to:with:result:), v7, MEMORY[0x1E69E7CA8] + 8, v2);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in static vDSP.invertedClip<A, B>(_:to:result:)(uint64_t a1)
{
  return partial apply for closure #1 in closure #1 in closure #1 in static vDSP.limit<A, B>(_:limit:withOutputConstant:result:)(a1, partial apply for closure #1 in closure #1 in closure #1 in closure #1 in static vDSP.invertedClip<A, B>(_:to:result:));
}

{
  return partial apply for closure #1 in closure #1 in closure #1 in static vDSP.limit<A, B>(_:limit:withOutputConstant:result:)(a1, partial apply for closure #1 in closure #1 in closure #1 in closure #1 in static vDSP.invertedClip<A, B>(_:to:result:));
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in closure #1 in static vDSP.invertedClip<A, B>(_:to:result:)(uint64_t a1, uint64_t a2)
{
  return closure #1 in closure #1 in closure #1 in closure #1 in static vDSP.clip<A, B>(_:to:result:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), MEMORY[0x1E6958FE8]);
}

{
  return closure #1 in closure #1 in closure #1 in closure #1 in static vDSP.clip<A, B>(_:to:result:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), MEMORY[0x1E6958FE0]);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in static vDSP.clip<A, B>(_:to:result:)(uint64_t a1)
{
  return partial apply for closure #1 in closure #1 in closure #1 in static vDSP.limit<A, B>(_:limit:withOutputConstant:result:)(a1, partial apply for closure #1 in closure #1 in closure #1 in closure #1 in static vDSP.clip<A, B>(_:to:result:));
}

{
  return partial apply for closure #1 in closure #1 in closure #1 in static vDSP.limit<A, B>(_:limit:withOutputConstant:result:)(a1, partial apply for closure #1 in closure #1 in closure #1 in closure #1 in static vDSP.clip<A, B>(_:to:result:));
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in closure #1 in static vDSP.clip<A, B>(_:to:result:)(uint64_t a1, uint64_t a2)
{
  return closure #1 in closure #1 in closure #1 in closure #1 in static vDSP.clip<A, B>(_:to:result:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), MEMORY[0x1E6958E40]);
}

{
  return closure #1 in closure #1 in closure #1 in closure #1 in static vDSP.clip<A, B>(_:to:result:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), MEMORY[0x1E6958E38]);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in static vDSP.limit<A, B>(_:limit:withOutputConstant:result:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 32);
  v6[1] = *(v2 + 56);
  v7 = a1;
  return (*(v4 + 24))(a2, v6, MEMORY[0x1E69E7CA8] + 8, v3);
}

uint64_t vImage.PixelBuffer<>.permuteChannels(to:destination:)(char a1, char a2, char a3, char a4, void **a5)
{
  return vImage.PixelBuffer<>.permuteChannels(to:destination:)(a1, a2, a3, a4, a5, MEMORY[0x1E69589A8]);
}

{
  return vImage.PixelBuffer<>.permuteChannels(to:destination:)(a1, a2, a3, a4, a5, MEMORY[0x1E69589A0]);
}

{
  return vImage.PixelBuffer<>.permuteChannels(to:destination:)(a1, a2, a3, a4, a5, MEMORY[0x1E6958998]);
}

{
  return vImage.PixelBuffer<>.permuteChannels(to:destination:)(a1, a2, a3, a4, a5, MEMORY[0x1E69589B0]);
}

uint64_t specialized vImage.PixelBuffer<>._permute<A>(permuteArray:destination:permuteFunc:)(uint64_t a1, void *a2, void *a3, uint64_t (*a4)(void *, void *, uint64_t, void), double a5, uint8x16_t a6)
{
  v18[4] = *MEMORY[0x1E69E9840];
  if ((specialized Sequence<>.max()(a1, a5, a6) & 0x1FC) != 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (!a3[2])
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v10 = a3[6];
  if (v10 < 0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = a3[5];
  if (v11 < 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (!v11)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!a2[2])
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v12 = a2[6];
  if (v12 < 0)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v13 = a2[5];
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

  if (v10 != v12)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  if (v11 != v13)
  {
    goto LABEL_27;
  }

  v14 = a3[7];
  v18[0] = a3[4];
  v18[1] = v11;
  v18[2] = v10;
  v18[3] = v14;
  v15 = a2[7];
  v17[0] = a2[4];
  v17[1] = v11;
  v17[2] = v10;
  v17[3] = v15;
  return a4(v18, v17, a1 + 32, 0);
}

uint64_t vImage.PixelBuffer<>._permute<A>(permuteArray:destination:permuteFunc:)(uint64_t a1, double a2, uint8x16_t a3, uint64_t a4, uint64_t (*a5)(uint64_t *, uint64_t *, uint64_t, void))
{
  v25 = *MEMORY[0x1E69E9840];
  if ((specialized Sequence<>.max()(a1, a2, a3) & 0x1FC) != 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  v16 = a5;
  vImage.PixelBuffer.size.getter(&v21);
  v8 = v21;
  v7 = v22;
  type metadata accessor for vImage.PixelBuffer();
  vImage.PixelBuffer.size.getter(&v17);
  if (v8 != v17 || v7 != v18)
  {
LABEL_6:
    __break(1u);
  }

  v17 = vImage.PixelBuffer<>.vImageBuffer.getter();
  v18 = v9;
  v19 = v10;
  v20 = v11;
  v21 = vImage.PixelBuffer<>.vImageBuffer.getter();
  v22 = v12;
  v23 = v13;
  v24 = v14;
  return v16(&v17, &v21, a1 + 32, 0);
}

uint64_t vImage.PixelBuffer<>.permuteChannels(to:destination:)(char a1, char a2, char a3, void **a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B7E76E00;
  *(inited + 32) = a1;
  *(inited + 33) = a2;
  *(inited + 34) = a3;
  specialized vImage.PixelBuffer<>._permute<A>(permuteArray:destination:permuteFunc:)(inited, *a4, *v4, MEMORY[0x1E69589B8], COERCE_DOUBLE(3), v10);
  return swift_setDeallocating();
}

uint64_t vImage.PixelBuffer<>.permuteChannels(to:destination:)(char a1, char a2, char a3, char a4, void **a5, uint64_t (*a6)(void *, void *, uint64_t, void))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B7E770E0;
  *(inited + 32) = a1;
  *(inited + 33) = a2;
  *(inited + 34) = a3;
  *(inited + 35) = a4;
  specialized vImage.PixelBuffer<>._permute<A>(permuteArray:destination:permuteFunc:)(inited, *a5, *v6, a6, COERCE_DOUBLE(4), v14);
  return swift_setDeallocating();
}

float _swift_vDSP_dotpr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a5 + 16);
  v11 = v10(a3, a5);
  if (v11 != (*(a6 + 16))(a4, a6))
  {
    __break(1u);
LABEL_5:
    __break(1u);
  }

  v12 = v10(a3, a5);
  if (v12 < 0)
  {
    goto LABEL_5;
  }

  MEMORY[0x1EEE9AC00](v12);
  (*(a5 + 24))(partial apply for closure #1 in static vDSP.dot<A, B>(_:_:));
  return NAN;
}

double _swift_vDSP_dotprD(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a5 + 16);
  v11 = v10(a3, a5);
  if (v11 != (*(a6 + 16))(a4, a6))
  {
    __break(1u);
LABEL_5:
    __break(1u);
  }

  v12 = v10(a3, a5);
  if (v12 < 0)
  {
    goto LABEL_5;
  }

  MEMORY[0x1EEE9AC00](v12);
  (*(a5 + 24))(partial apply for closure #1 in static vDSP.dot<A, B>(_:_:));
  return NAN;
}

uint64_t static vDSP.hypot<A, B>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return static vDSP.hypot<A, B>(_:_:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in static vDSP.hypot<A, B>(_:_:), _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSf_Tt1gq5);
}

{
  return static vDSP.hypot<A, B>(_:_:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in static vDSP.hypot<A, B>(_:_:), _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSd_Tt1gq5);
}

uint64_t partial apply for closure #1 in static vDSP.hypot<A, B>(_:_:)(uint64_t a1, uint64_t *a2)
{
  return partial apply for closure #1 in static vDSP.hypot<A, B>(_:_:)(a1, a2, &_sSrySfGMd, &_sSrySfGMR, &lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Float> and conformance UnsafeMutableBufferPointer<A>, static vDSP.hypot<A, B, C>(_:_:result:));
}

{
  return partial apply for closure #1 in static vDSP.hypot<A, B>(_:_:)(a1, a2, &_sSrySdGMd, &_sSrySdGMR, &lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>, static vDSP.hypot<A, B, C>(_:_:result:));
}

uint64_t static vDSP.hypot<A, B, C>(_:_:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  return static vDSP.hypot<A, B, C>(_:_:result:)(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

{
  return static vDSP.hypot<A, B, C>(_:_:result:)(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

{
  v13 = (*(a7 + 16))(a4, a7);
  v14 = *(a8 + 16);
  result = v14(a5, a8);
  if (v13 != result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v16 = v14(a5, a8);
  v17 = *(a9 + 8);
  v18 = *(v17 + 16);
  result = v18(a6, v17);
  if (v16 != result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = v18(a6, v17);
  if ((result & 0x8000000000000000) == 0)
  {
    MEMORY[0x1EEE9AC00](result);
    return (*(a7 + 24))(v19);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t static vDSP.hypot<A, B>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t))
{
  v12 = *(a5 + 16);
  v13 = v12(a3, a5);
  result = (*(a6 + 16))(a4, a6);
  if (v13 == result)
  {
    v15 = v12(a3, a5);
    v16 = MEMORY[0x1EEE9AC00](v15);
    return a8(v16, a7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in static vDSP.hypot<A, B>(_:_:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, unint64_t *a11, void (*a12)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(a9);
  v18 = lazy protocol witness table accessor for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>(a11, a9);
  a12(a3, a4, a1, a5, a6, v17, a7, a8, v18);
  result = (*(a7 + 16))(a5, a7);
  *a2 = result;
  return result;
}

void *closure #1 in closure #1 in closure #1 in static vDSP.hypot<A, B, C>(_:_:result:)(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, void, uint64_t, uint64_t))
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

uint64_t static vDSP.hypot<A, B, C, D>(x0:x1:y0:y1:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  return static vDSP.hypot<A, B, C, D>(x0:x1:y0:y1:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, partial apply for closure #1 in static vDSP.hypot<A, B, C, D>(x0:x1:y0:y1:), _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSf_Tt1gq5);
}

{
  return static vDSP.hypot<A, B, C, D>(x0:x1:y0:y1:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, partial apply for closure #1 in static vDSP.hypot<A, B, C, D>(x0:x1:y0:y1:), _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSd_Tt1gq5);
}

uint64_t static vDSP.hypot<A, B, C, D, E>(x0:x1:y0:y1:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  return static vDSP.hypot<A, B, C, D, E>(x0:x1:y0:y1:result:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15);
}

{
  return static vDSP.hypot<A, B, C, D, E>(x0:x1:y0:y1:result:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15);
}

{
  v17 = *(a11 + 16);
  v18 = v17(a6, a11);
  result = (*(a12 + 16))(a7, a12);
  if (v18 != result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v20 = v17(a6, a11);
  v21 = *(a15 + 8);
  v22 = *(v21 + 16);
  result = v22(a10, v21);
  if (v20 != result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v26 = *(a13 + 16);
  v23 = v26(a8, a13);
  result = (*(a14 + 16))(a9, a14);
  if (v23 != result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v24 = v26(a8, a13);
  result = v22(a10, v21);
  if (v24 != result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = v22(a10, v21);
  if ((result & 0x8000000000000000) == 0)
  {
    MEMORY[0x1EEE9AC00](result);
    return (*(a11 + 24))(v25);
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t static vDSP.hypot<A, B, C, D>(x0:x1:y0:y1:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t (*a14)(uint64_t, uint64_t))
{
  v23 = *(a9 + 16);
  v16 = v23(a5, a9);
  result = (*(a10 + 16))(a6, a10);
  if (v16 != result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v18 = *(a11 + 16);
  v19 = v18(a7, a11);
  result = (*(a12 + 16))(a8, a12);
  if (v19 != result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v20 = v23(a5, a9);
  result = v18(a7, a11);
  if (v20 == result)
  {
    v21 = v23(a5, a9);
    v22 = MEMORY[0x1EEE9AC00](v21);
    return a14(v22, a13);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t closure #1 in static vDSP.hypot<A, B, C, D>(x0:x1:y0:y1:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t *a15, uint64_t a16, unint64_t *a17, void (*a18)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(a15);
  v21 = lazy protocol witness table accessor for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>(a17, a15);
  a18(a3, a4, a5, a6, a1, a7, a8, a9, a10, v20, a11, a12, a13, a14, v21);
  result = (*(a11 + 16))(a7, a11);
  *a2 = result;
  return result;
}

void *closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in static vDSP.hypot<A, B, C, D, E>(x0:x1:y0:y1:result:)(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t (*a11)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void, uint64_t, uint64_t))
{
  if (!a2)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (!a4)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (!a6)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (!a8)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (*result)
  {
    return a11(a2, 1, a4, 1, a6, 1, a8, 1, *result, 1, a10);
  }

LABEL_11:
  __break(1u);
  return result;
}

float static vDSP.distanceSquared<A, B>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a5 + 16);
  v11 = v10(a3, a5);
  if (v11 != (*(*(a6 + 8) + 16))(a4))
  {
    __break(1u);
LABEL_5:
    __break(1u);
  }

  v12 = v10(a3, a5);
  if (v12 < 0)
  {
    goto LABEL_5;
  }

  MEMORY[0x1EEE9AC00](v12);
  (*(a5 + 24))(partial apply for closure #1 in static vDSP.distanceSquared<A, B>(_:_:));
  return NAN;
}

double static vDSP.distanceSquared<A, B>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a5 + 16);
  v11 = v10(a3, a5);
  if (v11 != (*(*(a6 + 8) + 16))(a4))
  {
    __break(1u);
LABEL_5:
    __break(1u);
  }

  v12 = v10(a3, a5);
  if (v12 < 0)
  {
    goto LABEL_5;
  }

  MEMORY[0x1EEE9AC00](v12);
  (*(a5 + 24))(partial apply for closure #1 in static vDSP.distanceSquared<A, B>(_:_:));
  return NAN;
}

uint64_t partial apply for closure #1 in static vDSP.hypot<A, B, C>(_:_:result:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in static vDSP.taperedMerge<A, B, C>(_:_:result:)(a1, a2, partial apply for closure #1 in closure #1 in static vDSP.hypot<A, B, C>(_:_:result:));
}

{
  return partial apply for closure #1 in static vDSP.taperedMerge<A, B, C>(_:_:result:)(a1, a2, partial apply for closure #1 in closure #1 in static vDSP.hypot<A, B, C>(_:_:result:));
}

uint64_t partial apply for closure #1 in static vDSP.hypot<A, B, C, D>(x0:x1:y0:y1:)(uint64_t a1, uint64_t *a2)
{
  return partial apply for closure #1 in static vDSP.hypot<A, B, C, D>(x0:x1:y0:y1:)(a1, a2, &_sSrySfGMd, &_sSrySfGMR, &lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Float> and conformance UnsafeMutableBufferPointer<A>, static vDSP.hypot<A, B, C, D, E>(x0:x1:y0:y1:result:));
}

{
  return partial apply for closure #1 in static vDSP.hypot<A, B, C, D>(x0:x1:y0:y1:)(a1, a2, &_sSrySdGMd, &_sSrySdGMR, &lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>, static vDSP.hypot<A, B, C, D, E>(x0:x1:y0:y1:result:));
}

uint64_t partial apply for closure #1 in static vDSP.hypot<A, B, C, D, E>(x0:x1:y0:y1:result:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in static vDSP.hypot<A, B, C, D, E>(x0:x1:y0:y1:result:)(a1, a2, partial apply for closure #1 in closure #1 in static vDSP.hypot<A, B, C, D, E>(x0:x1:y0:y1:result:));
}

{
  return partial apply for closure #1 in static vDSP.hypot<A, B, C, D, E>(x0:x1:y0:y1:result:)(a1, a2, partial apply for closure #1 in closure #1 in static vDSP.hypot<A, B, C, D, E>(x0:x1:y0:y1:result:));
}

uint64_t partial apply for closure #1 in static vDSP.hypot<A, B, C, D, E>(x0:x1:y0:y1:result:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 56);
  v5 = *(v3 + 120);
  v6 = *(v3 + 128);
  v9[2] = *(v3 + 16);
  v10 = *(v3 + 24);
  v11 = *(v3 + 40);
  v12 = v4;
  v7 = *(v3 + 80);
  v13 = *(v3 + 64);
  v14 = v7;
  v15 = *(v3 + 104);
  v16 = v5;
  v17 = a1;
  v18 = a2;
  v19 = v6;
  return (*(v13 + 24))(a3, v9, MEMORY[0x1E69E7CA8] + 8, v10);
}

uint64_t partial apply for closure #1 in static vDSP.distanceSquared<A, B>(_:_:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in static vDSP.distanceSquared<A, B>(_:_:)(a1, a2, partial apply for closure #1 in closure #1 in static vDSP.distanceSquared<A, B>(_:_:));
}

{
  return partial apply for closure #1 in static vDSP.distanceSquared<A, B>(_:_:)(a1, a2, partial apply for closure #1 in closure #1 in static vDSP.distanceSquared<A, B>(_:_:));
}

uint64_t partial apply for closure #1 in static vDSP.distanceSquared<A, B>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[3];
  v5 = v3[5];
  v6 = v3[7];
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = v6;
  return (*(*(v5 + 8) + 24))(a3, v8, MEMORY[0x1E69E7CA8] + 8, v4);
}

uint64_t partial apply for closure #1 in closure #1 in static vDSP.distanceSquared<A, B>(_:_:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in closure #1 in static vDSP.distanceSquared<A, B>(_:_:)(a1, a2, MEMORY[0x1E6958C18]);
}

{
  return partial apply for closure #1 in closure #1 in static vDSP.distanceSquared<A, B>(_:_:)(a1, a2, MEMORY[0x1E6958C10]);
}

uint64_t partial apply for closure #1 in closure #1 in static vDSP.hypot<A, B, C, D, E>(x0:x1:y0:y1:result:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in closure #1 in static vDSP.hypot<A, B, C, D, E>(x0:x1:y0:y1:result:)(a1, a2, partial apply for closure #1 in closure #1 in closure #1 in static vDSP.hypot<A, B, C, D, E>(x0:x1:y0:y1:result:));
}

{
  return partial apply for closure #1 in closure #1 in static vDSP.hypot<A, B, C, D, E>(x0:x1:y0:y1:result:)(a1, a2, partial apply for closure #1 in closure #1 in closure #1 in static vDSP.hypot<A, B, C, D, E>(x0:x1:y0:y1:result:));
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in static vDSP.hypot<A, B, C, D, E>(x0:x1:y0:y1:result:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in closure #1 in closure #1 in static vDSP.hypot<A, B, C, D, E>(x0:x1:y0:y1:result:)(a1, a2, partial apply for closure #1 in closure #1 in closure #1 in closure #1 in static vDSP.hypot<A, B, C, D, E>(x0:x1:y0:y1:result:));
}

{
  return partial apply for closure #1 in closure #1 in closure #1 in static vDSP.hypot<A, B, C, D, E>(x0:x1:y0:y1:result:)(a1, a2, partial apply for closure #1 in closure #1 in closure #1 in closure #1 in static vDSP.hypot<A, B, C, D, E>(x0:x1:y0:y1:result:));
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in closure #1 in static vDSP.hypot<A, B, C, D, E>(x0:x1:y0:y1:result:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in closure #1 in closure #1 in closure #1 in static vDSP.hypot<A, B, C, D, E>(x0:x1:y0:y1:result:)(a1, a2, partial apply for closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in static vDSP.hypot<A, B, C, D, E>(x0:x1:y0:y1:result:));
}

{
  return partial apply for closure #1 in closure #1 in closure #1 in closure #1 in static vDSP.hypot<A, B, C, D, E>(x0:x1:y0:y1:result:)(a1, a2, partial apply for closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in static vDSP.hypot<A, B, C, D, E>(x0:x1:y0:y1:result:));
}

void *partial apply for closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in static vDSP.hypot<A, B, C, D, E>(x0:x1:y0:y1:result:)(void *a1)
{
  return partial apply for closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in static vDSP.hypot<A, B, C, D, E>(x0:x1:y0:y1:result:)(a1, MEMORY[0x1E69590C8]);
}

{
  return partial apply for closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in static vDSP.hypot<A, B, C, D, E>(x0:x1:y0:y1:result:)(a1, MEMORY[0x1E69590C0]);
}

uint64_t partial apply for closure #1 in closure #1 in static vDSP.hypot<A, B, C, D, E>(x0:x1:y0:y1:result:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 64);
  v5 = *(v3 + 88);
  v6 = *(v3 + 136);
  v7 = *(v3 + 32);
  v10[1] = *(v3 + 16);
  v10[2] = v7;
  v10[3] = *(v3 + 48);
  v11 = v4;
  v12 = *(v3 + 72);
  v13 = v5;
  v8 = *(v3 + 120);
  v14 = *(v3 + 104);
  v15 = v8;
  v16 = a1;
  v17 = a2;
  v18 = v6;
  return (*(v12 + 24))(a3, v10, MEMORY[0x1E69E7CA8] + 8, v7);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in static vDSP.hypot<A, B, C, D, E>(x0:x1:y0:y1:result:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 32);
  v5 = *(v3 + 72);
  v6 = *(v3 + 104);
  v7 = *(v3 + 144);
  v10[1] = *(v3 + 16);
  v11 = v4;
  v12 = *(v3 + 40);
  v13 = *(v3 + 56);
  v14 = v5;
  v8 = *(v3 + 128);
  v17 = *(v3 + 112);
  v15 = *(v3 + 80);
  v16 = v6;
  v18 = a1;
  v19 = a2;
  v20 = v8;
  v21 = v7;
  return (*(v15 + 24))(a3, v10, MEMORY[0x1E69E7CA8] + 8, v12);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in closure #1 in static vDSP.hypot<A, B, C, D, E>(x0:x1:y0:y1:result:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 48);
  v5 = *(v3 + 88);
  v6 = *(v3 + 152);
  v7 = *(v3 + 120);
  v9[1] = *(v3 + 104);
  v9[2] = v7;
  v9[3] = *(v3 + 136);
  v10 = a1;
  v11 = a2;
  v12 = v6;
  return (*(v5 + 16))(a3, v9, MEMORY[0x1E69E7CA8] + 8, v4);
}

uint64_t partial apply for closure #1 in closure #1 in static vDSP.hypot<A, B, C>(_:_:result:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in closure #1 in static vDSP.taperedMerge<A, B, C>(_:_:result:)(a1, a2, partial apply for closure #1 in closure #1 in closure #1 in static vDSP.hypot<A, B, C>(_:_:result:));
}

{
  return partial apply for closure #1 in closure #1 in static vDSP.taperedMerge<A, B, C>(_:_:result:)(a1, a2, partial apply for closure #1 in closure #1 in closure #1 in static vDSP.hypot<A, B, C>(_:_:result:));
}

void *partial apply for closure #1 in closure #1 in closure #1 in static vDSP.hypot<A, B, C>(_:_:result:)(void *a1)
{
  return partial apply for closure #1 in closure #1 in closure #1 in static vDSP.hypot<A, B, C>(_:_:result:)(a1, MEMORY[0x1E6958E70]);
}

{
  return partial apply for closure #1 in closure #1 in closure #1 in static vDSP.hypot<A, B, C>(_:_:result:)(a1, MEMORY[0x1E6958E68]);
}

uint64_t partial apply for closure #1 in static vDSP.dot<A, B>(_:_:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in static vDSP.dot<A, B>(_:_:)(a1, a2, partial apply for closure #1 in closure #1 in static vDSP.dot<A, B>(_:_:));
}

{
  return partial apply for closure #1 in static vDSP.dot<A, B>(_:_:)(a1, a2, partial apply for closure #1 in closure #1 in static vDSP.dot<A, B>(_:_:));
}

uint64_t partial apply for closure #1 in closure #1 in static vDSP.dot<A, B>(_:_:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in closure #1 in static vDSP.distanceSquared<A, B>(_:_:)(a1, a2, MEMORY[0x1E6958C28]);
}

{
  return partial apply for closure #1 in closure #1 in static vDSP.distanceSquared<A, B>(_:_:)(a1, a2, MEMORY[0x1E6958C20]);
}

uint64_t partial apply for closure #1 in static vDSP.dot<A, B>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[3];
  v5 = v3[5];
  v6 = v3[7];
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = v6;
  return (*(v5 + 24))(a3, v8, MEMORY[0x1E69E7CA8] + 8, v4);
}

uint64_t partial apply for closure #1 in closure #1 in static vDSP.distanceSquared<A, B>(_:_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  result = *(v3 + 16);
  if (result)
  {
    if (a1)
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

vImage_Error vImage.PixelBuffer<>.separableConvolve(horizontalKernel:verticalKernel:bias:edgeMode:destination:)(uint64_t a1, uint64_t a2, Pixel_16U *a3, uint64_t a4, float a5, uint64_t a6, uint64_t a7)
{
  v28 = *MEMORY[0x1E69E9840];
  vImage.PixelBuffer.size.getter(&v27);
  vImage.PixelBuffer.size.getter(v26);
  if (v27.data != v26[0] || v27.height != v26[1])
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if ((*(a1 + 16) & 1) == 0)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((*(a2 + 16) & 1) == 0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  result = (*(a7 + 32))();
  if (result < 0)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
  }

  v13 = result;
  if (result)
  {
    v14 = 0;
    while (1)
    {
      v15 = vImage.PixelBuffer<>.vImageBuffers.getter();
      if (v14 >= *(v15 + 16))
      {
        break;
      }

      v16 = *(v15 + 32 * v14 + 32);

      v17 = vImage.PixelBuffer<>.vImageBuffers.getter();
      if (v14 >= *(v17 + 16))
      {
        goto LABEL_25;
      }

      v18 = *(v17 + 32 * v14 + 32);

      if (v16)
      {
        if (v18)
        {
          v19 = v16 == v18;
        }

        else
        {
          v19 = 0;
        }

        if (v19)
        {
          goto LABEL_27;
        }
      }

      else if (!v18)
      {
        goto LABEL_32;
      }

      v20 = vImage.PixelBuffer<>.vImageBuffers.getter();
      if (v14 >= *(v20 + 16))
      {
        goto LABEL_26;
      }

      v21 = v20 + 32 * v14;
      v24 = *(v21 + 48);
      v25 = *(v21 + 32);

      *&v27.width = v24;
      *&v27.data = v25;
      result = closure #1 in vImage.PixelBuffer<>.separableConvolve(horizontalKernel:verticalKernel:bias:edgeMode:destination:)(&v27, a5, a4, v14++, a1, a2, a3);
      if (v14 == v13)
      {
        return result;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  return result;
}

vImage_Error closure #1 in vImage.PixelBuffer<>.separableConvolve(horizontalKernel:verticalKernel:bias:edgeMode:destination:)(const vImage_Buffer *a1, float a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, Pixel_16U *a7)
{
  v23 = *MEMORY[0x1E69E9840];
  type metadata accessor for vImage.PixelBuffer();
  v13 = vImage.PixelBuffer<>.vImageBuffers.getter();
  if ((a4 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v13 + 16) <= a4)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v14 = v13 + 32 * a4;
  v20 = *(v14 + 48);
  v21 = *(v14 + 32);

  *&dest.width = v20;
  *&dest.data = v21;
  v15 = *(a5 + 16);
  if (HIDWORD(v15))
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
  }

  kernelY_width = *(a6 + 16);
  if (HIDWORD(kernelY_width))
  {
    goto LABEL_12;
  }

  if (*(a7 + 2) == 1)
  {
    backgroundColor = 0;
    flags = dword_1B7E79434[*a7];
  }

  else
  {
    backgroundColor = *a7;
    flags = 4;
  }

  return vImageSepConvolve_Planar8(a1, &dest, 0, 0, 0, (a5 + 32), v15, (a6 + 32), kernelY_width, a2, backgroundColor, flags);
}

uint64_t vImage.EdgeMode.backgroundColor.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6);
  v7 = *(a1 + 16);
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 3, v7))
  {
    (*(v8 + 56))(a2, 1, 1, v7);
    return (*(v4 + 8))(v6, a1);
  }

  else
  {
    (*(v8 + 32))(a2, v6, v7);
    return (*(v8 + 56))(a2, 0, 1, v7);
  }
}

uint64_t vImage.EdgeMode.vImageFlags.getter(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v3);
  v5 = *(a1 + 16);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 48))(v3, 3, v5);
  if (v7 > 1)
  {
    if (v7 == 2)
    {
      return 64;
    }

    else
    {
      return 8;
    }
  }

  else if (v7)
  {
    return 2;
  }

  else
  {
    (*(v6 + 8))(v3, v5);
    return 4;
  }
}

vImage_Error vImage.PixelBuffer<>.separableConvolve(horizontalKernel:verticalKernel:bias:edgeMode:destination:)(vImage_Error result, uint64_t a2, Pixel_16U *a3, uint64_t a4, float a5)
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = *v5;
  if (!*(*v5 + 16))
  {
    __break(1u);
    goto LABEL_25;
  }

  v7 = v6[6];
  if ((v7 & 0x8000000000000000) != 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v8 = v6[5];
  if ((v8 & 0x8000000000000000) != 0)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (!v7)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (!v8)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v9 = *a4;
  if (!*(*a4 + 16))
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v10 = v9[6];
  if (v10 < 0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v11 = v9[5];
  if (v11 < 0)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (!v10)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v11)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v7 != v10)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v8 != v11)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v12 = *(result + 16);
  if ((v12 & 1) == 0)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  kernelY_width = *(a2 + 16);
  if ((kernelY_width & 1) == 0)
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
  }

  v14 = v6[4];
  v15 = v9[4];
  if (v14)
  {
    if (v14 != v15)
    {
      goto LABEL_19;
    }

    __break(1u);
  }

  if (!v15)
  {
    __break(1u);
    return result;
  }

LABEL_19:
  v16 = v6[7];
  src.data = v14;
  src.height = v8;
  src.width = v7;
  src.rowBytes = v16;
  v17 = v9[7];
  dest.data = v15;
  dest.height = v8;
  dest.width = v7;
  dest.rowBytes = v17;
  if ((kernelY_width | v12) >> 32)
  {
    goto LABEL_38;
  }

  if (*(a3 + 2) == 1)
  {
    backgroundColor = 0;
    flags = dword_1B7E79434[*a3];
  }

  else
  {
    backgroundColor = *a3;
    flags = 4;
  }

  return vImageSepConvolve_Planar8(&src, &dest, 0, 0, 0, (result + 32), v12, (a2 + 32), kernelY_width, a5, backgroundColor, flags);
}

vImage_Error vImage.PixelBuffer<>.separableConvolve(horizontalKernel:verticalKernel:bias:edgeMode:useFloat16Accumulator:destination:)(vImage_Error result, uint64_t a2, Pixel_16F *a3, char a4, uint64_t a5, float a6)
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = *v6;
  if (!*(*v6 + 16))
  {
    __break(1u);
    goto LABEL_28;
  }

  v8 = v7[6];
  if ((v8 & 0x8000000000000000) != 0)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v9 = v7[5];
  if ((v9 & 0x8000000000000000) != 0)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (!v8)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (!v9)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v10 = *a5;
  if (!*(*a5 + 16))
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v11 = v10[6];
  if (v11 < 0)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v12 = v10[5];
  if (v12 < 0)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (!v11)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (!v12)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v8 != v11)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v9 != v12)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v13 = *(result + 16);
  if ((v13 & 1) == 0)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  kernelY_width = *(a2 + 16);
  if ((kernelY_width & 1) == 0)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }

  v15 = v7[4];
  v16 = v10[4];
  if (v15)
  {
    if (v15 != v16)
    {
      goto LABEL_19;
    }

    __break(1u);
  }

  if (!v16)
  {
    __break(1u);
    return result;
  }

LABEL_19:
  v17 = v7[7];
  src.data = v15;
  src.height = v9;
  src.width = v8;
  src.rowBytes = v17;
  v18 = v10[7];
  dest.data = v16;
  dest.height = v9;
  dest.width = v8;
  dest.rowBytes = v18;
  if ((kernelY_width | v13) >> 32)
  {
    goto LABEL_41;
  }

  if (*(a3 + 2) == 1)
  {
    backgroundColor = 0;
    v20 = dword_1B7E79434[*a3];
  }

  else
  {
    backgroundColor = *a3;
    v20 = 4;
  }

  if (a4)
  {
    v21 = 4096;
  }

  else
  {
    v21 = 0;
  }

  return vImageSepConvolve_Planar16F(&src, &dest, 0, 0, 0, (result + 32), v13, (a2 + 32), kernelY_width, a6, backgroundColor, v20 | v21);
}

vImage_Error vImage.PixelBuffer<>.separableConvolve(horizontalKernel:verticalKernel:bias:edgeMode:destination:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float a5, uint64_t a6, uint64_t a7)
{
  v28 = *MEMORY[0x1E69E9840];
  vImage.PixelBuffer.size.getter(&v27);
  vImage.PixelBuffer.size.getter(v26);
  if (v27.data != v26[0] || v27.height != v26[1])
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if ((*(a1 + 16) & 1) == 0)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((*(a2 + 16) & 1) == 0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  result = (*(a7 + 32))();
  if (result < 0)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
  }

  v13 = result;
  if (result)
  {
    v14 = 0;
    while (1)
    {
      v15 = vImage.PixelBuffer<>.vImageBuffers.getter();
      if (v14 >= *(v15 + 16))
      {
        break;
      }

      v16 = *(v15 + 32 * v14 + 32);

      v17 = vImage.PixelBuffer<>.vImageBuffers.getter();
      if (v14 >= *(v17 + 16))
      {
        goto LABEL_25;
      }

      v18 = *(v17 + 32 * v14 + 32);

      if (v16)
      {
        if (v18)
        {
          v19 = v16 == v18;
        }

        else
        {
          v19 = 0;
        }

        if (v19)
        {
          goto LABEL_27;
        }
      }

      else if (!v18)
      {
        goto LABEL_32;
      }

      v20 = vImage.PixelBuffer<>.vImageBuffers.getter();
      if (v14 >= *(v20 + 16))
      {
        goto LABEL_26;
      }

      v21 = v20 + 32 * v14;
      v24 = *(v21 + 48);
      v25 = *(v21 + 32);

      *&v27.width = v24;
      *&v27.data = v25;
      result = closure #1 in vImage.PixelBuffer<>.separableConvolve(horizontalKernel:verticalKernel:bias:edgeMode:destination:)(&v27, a5, a4, v14++, a1, a2, a3);
      if (v14 == v13)
      {
        return result;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  return result;
}

vImage_Error closure #1 in vImage.PixelBuffer<>.separableConvolve(horizontalKernel:verticalKernel:bias:edgeMode:destination:)(const vImage_Buffer *a1, float a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v22 = *MEMORY[0x1E69E9840];
  type metadata accessor for vImage.PixelBuffer();
  v13 = vImage.PixelBuffer<>.vImageBuffers.getter();
  if ((a4 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v13 + 16) <= a4)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v14 = v13 + 32 * a4;
  v19 = *(v14 + 48);
  v20 = *(v14 + 32);

  *&dest.width = v19;
  *&dest.data = v20;
  v15 = *(a5 + 16);
  if (HIDWORD(v15))
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
  }

  if (HIDWORD(*(a6 + 16)))
  {
    goto LABEL_12;
  }

  v16 = *a7;
  if (*(a7 + 4) == 1)
  {
    v17 = dword_1B7E79434[SLODWORD(v16)];
    v16 = 0.0;
  }

  else
  {
    v17 = 4;
  }

  return vImageSepConvolve_PlanarF(a1, &dest, 0, 0, 0, (a5 + 32), v15, (a6 + 32), *(a6 + 16), a2, v16, v17);
}

vImage_Error vImage.PixelBuffer<>.separableConvolve(horizontalKernel:verticalKernel:bias:edgeMode:destination:)(vImage_Error result, uint64_t a2, uint64_t a3, uint64_t a4, float a5)
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = *v5;
  if (!*(*v5 + 16))
  {
    __break(1u);
    goto LABEL_25;
  }

  v7 = v6[6];
  if ((v7 & 0x8000000000000000) != 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v8 = v6[5];
  if ((v8 & 0x8000000000000000) != 0)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (!v7)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (!v8)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v9 = *a4;
  if (!*(*a4 + 16))
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v10 = v9[6];
  if (v10 < 0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v11 = v9[5];
  if (v11 < 0)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (!v10)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v11)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v7 != v10)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v8 != v11)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v12 = *(result + 16);
  if ((v12 & 1) == 0)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  kernelY_width = *(a2 + 16);
  if ((kernelY_width & 1) == 0)
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
  }

  v14 = v6[4];
  v15 = v9[4];
  if (v14)
  {
    if (v14 != v15)
    {
      goto LABEL_19;
    }

    __break(1u);
  }

  if (!v15)
  {
    __break(1u);
    return result;
  }

LABEL_19:
  v16 = v6[7];
  src.data = v14;
  src.height = v8;
  src.width = v7;
  src.rowBytes = v16;
  v17 = v9[7];
  dest.data = v15;
  dest.height = v8;
  dest.width = v7;
  dest.rowBytes = v17;
  if ((kernelY_width | v12) >> 32)
  {
    goto LABEL_38;
  }

  v18 = *a3;
  if (*(a3 + 4) == 1)
  {
    v19 = dword_1B7E79434[SLODWORD(v18)];
    v18 = 0.0;
  }

  else
  {
    v19 = 4;
  }

  return vImageSepConvolve_PlanarF(&src, &dest, 0, 0, 0, (result + 32), v12, (a2 + 32), kernelY_width, a5, v18, v19);
}

unint64_t *vImage.PixelBuffer<>.boxConvolve(kernelSize:edgeMode:destination:)(unint64_t *result, char *a2, uint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = *v3;
  if (!*(*v3 + 16))
  {
    __break(1u);
    goto LABEL_26;
  }

  v5 = v4[6];
  if ((v5 & 0x8000000000000000) != 0)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v6 = v4[5];
  if ((v6 & 0x8000000000000000) != 0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (!v5)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (!v6)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v7 = *a3;
  if (!*(*a3 + 16))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v8 = v7[6];
  if (v8 < 0)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v9 = v7[5];
  if (v9 < 0)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v8)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (!v9)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v5 != v8)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v6 != v9)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v10 = v4[4];
  v11 = v7[4];
  if (v10)
  {
    if (v10 != v11)
    {
      goto LABEL_17;
    }

    __break(1u);
  }

  if (!v11)
  {
    __break(1u);
    return result;
  }

LABEL_17:
  v12 = *result;
  if ((*result & 0x8000000000000000) != 0)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (HIDWORD(v12))
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v13 = result[1];
  if ((v13 & 0x8000000000000000) != 0)
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
  }

  if (HIDWORD(v13))
  {
    goto LABEL_40;
  }

  v14 = *a2;
  v15 = a2[1];
  v16 = v4[7];
  src.data = v10;
  src.height = v6;
  src.width = v5;
  src.rowBytes = v16;
  v17 = v7[7];
  dest.data = v11;
  dest.height = v6;
  dest.width = v5;
  dest.rowBytes = v17;
  if (v15)
  {
    v18 = 0;
    flags = dword_1B7E79434[v14];
  }

  else
  {
    v18 = v14;
    flags = 4;
  }

  return vImageBoxConvolve_Planar8(&src, &dest, 0, 0, 0, v13 | 1, v12 | 1, v18, flags);
}

unint64_t *vImage.PixelBuffer<>.tentConvolve(kernelSize:edgeMode:destination:)(unint64_t *result, char *a2, uint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = *v3;
  if (!*(*v3 + 16))
  {
    __break(1u);
    goto LABEL_26;
  }

  v5 = v4[6];
  if ((v5 & 0x8000000000000000) != 0)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v6 = v4[5];
  if ((v6 & 0x8000000000000000) != 0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (!v5)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (!v6)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v7 = *a3;
  if (!*(*a3 + 16))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v8 = v7[6];
  if (v8 < 0)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v9 = v7[5];
  if (v9 < 0)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v8)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (!v9)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v5 != v8)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v6 != v9)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v10 = v4[4];
  v11 = v7[4];
  if (v10)
  {
    if (v10 != v11)
    {
      goto LABEL_17;
    }

    __break(1u);
  }

  if (!v11)
  {
    __break(1u);
    return result;
  }

LABEL_17:
  v12 = *result;
  if ((*result & 0x8000000000000000) != 0)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (HIDWORD(v12))
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v13 = result[1];
  if ((v13 & 0x8000000000000000) != 0)
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
  }

  if (HIDWORD(v13))
  {
    goto LABEL_40;
  }

  v14 = *a2;
  v15 = a2[1];
  v16 = v4[7];
  src.data = v10;
  src.height = v6;
  src.width = v5;
  src.rowBytes = v16;
  v17 = v7[7];
  dest.data = v11;
  dest.height = v6;
  dest.width = v5;
  dest.rowBytes = v17;
  if (v15)
  {
    v18 = 0;
    flags = dword_1B7E79434[v14];
  }

  else
  {
    v18 = v14;
    flags = 4;
  }

  return vImageTentConvolve_Planar8(&src, &dest, 0, 0, 0, v13 | 1, v12 | 1, v18, flags);
}

unint64_t *vImage.PixelBuffer<>.boxConvolve(kernelSize:edgeMode:destination:)(unint64_t *result, unsigned int *a2, uint64_t a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = *v3;
  if (!*(*v3 + 16))
  {
    __break(1u);
    goto LABEL_29;
  }

  v5 = v4[6];
  if ((v5 & 0x8000000000000000) != 0)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v6 = v4[5];
  if ((v6 & 0x8000000000000000) != 0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (!v5)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (!v6)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v7 = *a3;
  if (!*(*a3 + 16))
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v8 = v7[6];
  if (v8 < 0)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v9 = v7[5];
  if (v9 < 0)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (!v8)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (!v9)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v5 != v8)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v6 != v9)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v10 = v4[4];
  v11 = v7[4];
  if (v10)
  {
    if (v10 != v11)
    {
      goto LABEL_17;
    }

    __break(1u);
  }

  if (!v11)
  {
    __break(1u);
    return result;
  }

LABEL_17:
  v12 = *result;
  if ((*result & 0x8000000000000000) != 0)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (HIDWORD(v12))
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v13 = result[1];
  if ((v13 & 0x8000000000000000) != 0)
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }

  if (HIDWORD(v13))
  {
    goto LABEL_43;
  }

  v14 = *(a2 + 4);
  if (v14)
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v16 = *a2;
    v23 = HIWORD(*a2);
    v24 = *a2 >> 8;
    v22 = HIBYTE(*a2);
    v17 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd);
    v18 = swift_allocObject();
    v11 = v17;
    v15 = v18;
    *(v18 + 16) = xmmword_1B7E770E0;
    *(v18 + 32) = v16;
    *(v18 + 33) = v24;
    *(v18 + 34) = v23;
    *(v18 + 35) = v22;
  }

  v19 = v4[7];
  src.data = v10;
  src.height = v6;
  src.width = v5;
  src.rowBytes = v19;
  v20 = v7[7];
  dest.data = v11;
  dest.height = v6;
  dest.width = v5;
  dest.rowBytes = v20;
  if (v14)
  {
    flags = dword_1B7E79434[*a2];
  }

  else
  {
    flags = 4;
  }

  vImageBoxConvolve_ARGB8888(&src, &dest, 0, 0, 0, v13 | 1, v12 | 1, (v15 + 32), flags);
}

uint64_t vImage.PixelBuffer<>.boxConvolved(kernelSize:edgeMode:)@<X0>(uint64_t *a1@<X0>, int *a2@<X1>, uint64_t (*a3)(void *, int *, uint64_t *)@<X2>, uint64_t *a4@<X8>)
{
  v6 = *v4;
  if (!*(*v4 + 16))
  {
    __break(1u);
    goto LABEL_8;
  }

  v7 = *(v6 + 48);
  if (v7 < 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = *(v6 + 40);
  if (v5 < 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (!v7)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v5)
  {
    v9 = *a1;
    v8 = a1[1];
    v10 = *a2;
    v21 = *(a2 + 4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Accelerate6vImageO13BufferWrapperVGMd);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1B7E76D90;
    v12 = specialized vImage_Buffer.init(width:height:bitsPerPixel:)(v7, v5);
    v14 = v13;
    v16 = v15;
    v18 = v17;
    type metadata accessor for vImage.BufferReference();
    v19 = swift_allocObject();
    v19[2] = v12;
    v19[3] = v14;
    v19[4] = v16;
    v19[5] = v18;
    *(v11 + 32) = v12;
    *(v11 + 40) = v14;
    *(v11 + 48) = v16;
    *(v11 + 56) = v18;
    *(v11 + 64) = v19;
    v27[1] = v8;
    v27[2] = v6;
    v27[0] = v9;
    v25 = v10;
    v26 = v21;
    v24 = v11;
    result = a3(v27, &v25, &v24);
    *a4 = v11;
    return result;
  }

LABEL_11:
  __break(1u);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

unint64_t *vImage.PixelBuffer<>.tentConvolve(kernelSize:edgeMode:destination:)(unint64_t *result, unsigned int *a2, uint64_t a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = *v3;
  if (!*(*v3 + 16))
  {
    __break(1u);
    goto LABEL_29;
  }

  v5 = v4[6];
  if ((v5 & 0x8000000000000000) != 0)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v6 = v4[5];
  if ((v6 & 0x8000000000000000) != 0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (!v5)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (!v6)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v7 = *a3;
  if (!*(*a3 + 16))
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v8 = v7[6];
  if (v8 < 0)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v9 = v7[5];
  if (v9 < 0)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (!v8)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (!v9)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v5 != v8)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v6 != v9)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v10 = v4[4];
  v11 = v7[4];
  if (v10)
  {
    if (v10 != v11)
    {
      goto LABEL_17;
    }

    __break(1u);
  }

  if (!v11)
  {
    __break(1u);
    return result;
  }

LABEL_17:
  v12 = *result;
  if ((*result & 0x8000000000000000) != 0)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (HIDWORD(v12))
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v13 = result[1];
  if ((v13 & 0x8000000000000000) != 0)
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }

  if (HIDWORD(v13))
  {
    goto LABEL_43;
  }

  v14 = *(a2 + 4);
  if (v14)
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v16 = *a2;
    v23 = HIWORD(*a2);
    v24 = *a2 >> 8;
    v22 = HIBYTE(*a2);
    v17 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd);
    v18 = swift_allocObject();
    v11 = v17;
    v15 = v18;
    *(v18 + 16) = xmmword_1B7E770E0;
    *(v18 + 32) = v16;
    *(v18 + 33) = v24;
    *(v18 + 34) = v23;
    *(v18 + 35) = v22;
  }

  v19 = v4[7];
  src.data = v10;
  src.height = v6;
  src.width = v5;
  src.rowBytes = v19;
  v20 = v7[7];
  dest.data = v11;
  dest.height = v6;
  dest.width = v5;
  dest.rowBytes = v20;
  if (v14)
  {
    flags = dword_1B7E79434[*a2];
  }

  else
  {
    flags = 4;
  }

  vImageTentConvolve_ARGB8888(&src, &dest, 0, 0, 0, v13 | 1, v12 | 1, (v15 + 32), flags);
}

uint64_t vImage.PixelBuffer<>.boxConvolve(kernelSize:edgeMode:destination:)(unint64_t *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return vImage.PixelBuffer<>.boxConvolve(kernelSize:edgeMode:destination:)(a1, a2, a3, a4, a5, closure #1 in vImage.PixelBuffer<>.boxConvolve(kernelSize:edgeMode:destination:));
}

vImage_Error closure #1 in vImage.PixelBuffer<>.boxConvolve(kernelSize:edgeMode:destination:)(const vImage_Buffer *a1, uint64_t a2, unint64_t a3, uint32_t a4, uint32_t a5, Pixel_8 a6, char *a7)
{
  v20 = *MEMORY[0x1E69E9840];
  type metadata accessor for vImage.PixelBuffer();
  v13 = vImage.PixelBuffer<>.vImageBuffers.getter();
  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_8:
    __break(1u);
  }

  if (*(v13 + 16) <= a3)
  {
    goto LABEL_8;
  }

  v14 = v13 + 32 * a3;
  v17 = *(v14 + 48);
  v18 = *(v14 + 32);

  *&dest.width = v17;
  *&dest.data = v18;
  if (a7[1] == 1)
  {
    flags = dword_1B7E79434[*a7];
  }

  else
  {
    flags = 4;
  }

  return vImageBoxConvolve_Planar8(a1, &dest, 0, 0, 0, a4, a5, a6, flags);
}

uint64_t vImage.PixelBuffer<>.tentConvolve(kernelSize:edgeMode:destination:)(unint64_t *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return vImage.PixelBuffer<>.boxConvolve(kernelSize:edgeMode:destination:)(a1, a2, a3, a4, a5, closure #1 in vImage.PixelBuffer<>.tentConvolve(kernelSize:edgeMode:destination:));
}

uint64_t vImage.PixelBuffer<>.boxConvolve(kernelSize:edgeMode:destination:)(unint64_t *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(_OWORD *, uint64_t, unint64_t, void, void, void, unsigned __int8 *, uint64_t, uint64_t))
{
  v34 = *MEMORY[0x1E69E9840];
  vImage.PixelBuffer.size.getter(v33);
  vImage.PixelBuffer.size.getter(v32);
  if (*&v33[0] != v32[0] || *(&v33[0] + 1) != v32[1])
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v11 = *a1;
  if ((*a1 & 0x8000000000000000) != 0)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (HIDWORD(v11))
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v12 = a1[1];
  if ((v12 & 0x8000000000000000) != 0)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (HIDWORD(v12))
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
  }

  v13 = *a2;
  if (a2[1])
  {
    v13 = 0;
  }

  v27 = v13;
  v26 = *(a4 + 16);
  result = (*(a5 + 32))();
  if (result < 0)
  {
    goto LABEL_37;
  }

  v15 = result;
  if (result)
  {
    v16 = 0;
    while (1)
    {
      v17 = vImage.PixelBuffer<>.vImageBuffers.getter();
      if (v16 >= *(v17 + 16))
      {
        break;
      }

      v18 = v12;
      v19 = v11;
      v20 = *(v17 + 32 * v16 + 32);

      v21 = vImage.PixelBuffer<>.vImageBuffers.getter();
      if (v16 >= *(v21 + 16))
      {
        goto LABEL_29;
      }

      v22 = *(v21 + 32 * v16 + 32);

      if (v20)
      {
        if (v22)
        {
          v23 = v20 == v22;
        }

        else
        {
          v23 = 0;
        }

        v11 = v19;
        if (v23)
        {
          goto LABEL_31;
        }
      }

      else
      {
        v11 = v19;
        if (!v22)
        {
          goto LABEL_38;
        }
      }

      v24 = vImage.PixelBuffer<>.vImageBuffers.getter();
      if (v16 >= *(v24 + 16))
      {
        goto LABEL_30;
      }

      v25 = v24 + 32 * v16;
      v30 = *(v25 + 48);
      v31 = *(v25 + 32);

      v33[0] = v31;
      v33[1] = v30;
      v12 = v18;
      result = a6(v33, a3, v16++, v18 | 1, v11 | 1, v27, a2, v26, a5);
      if (v16 == v15)
      {
        return result;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  return result;
}

vImage_Error closure #1 in vImage.PixelBuffer<>.tentConvolve(kernelSize:edgeMode:destination:)(const vImage_Buffer *a1, uint64_t a2, unint64_t a3, uint32_t a4, uint32_t a5, Pixel_8 a6, char *a7)
{
  v20 = *MEMORY[0x1E69E9840];
  type metadata accessor for vImage.PixelBuffer();
  v13 = vImage.PixelBuffer<>.vImageBuffers.getter();
  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_8:
    __break(1u);
  }

  if (*(v13 + 16) <= a3)
  {
    goto LABEL_8;
  }

  v14 = v13 + 32 * a3;
  v17 = *(v14 + 48);
  v18 = *(v14 + 32);

  *&dest.width = v17;
  *&dest.data = v18;
  if (a7[1] == 1)
  {
    flags = dword_1B7E79434[*a7];
  }

  else
  {
    flags = 4;
  }

  return vImageTentConvolve_Planar8(a1, &dest, 0, 0, 0, a4, a5, a6, flags);
}

uint64_t vImage.ConvolutionKernel2D.init(values:width:height:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t *a5@<X8>)
{
  v5 = a3 & ~(a3 >> 63);
  if ((v5 & 1) == 0 || a3 < 1 || a2 < 1 || (v6 = a2 & ~(a2 >> 63), (v6 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v7 = result;
  result = MEMORY[0x1B8CB13E0](result, a4);
  if (!is_mul_ok(v6, v5))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((result & 0x8000000000000000) == 0 && result == v6 * v5)
  {
    *a5 = v6;
    a5[1] = v5;
    a5[2] = v7;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

double vImage.ConvolutionKernel2D.init(values:size:)@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  vImage.ConvolutionKernel2D.init(values:width:height:)(a1, *a2, a2[1], a3, &v7);
  v5 = v8;
  result = *&v7;
  *a4 = v7;
  *(a4 + 16) = v5;
  return result;
}

uint64_t vImage.PixelBuffer<>.convolve(with:bias:edgeMode:destination:)(uint64_t result, uint64_t a2, unsigned int *a3, uint64_t a4)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = *v4;
  if (!v5[2])
  {
    __break(1u);
    goto LABEL_33;
  }

  v6 = *a4;
  if (!*(*a4 + 16))
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v7 = result;
  v8 = v5[4];
  v9 = v6[4];
  if (v8)
  {
    if (v9)
    {
      v10 = v8 == v9;
    }

    else
    {
      v10 = 0;
    }

    if (!v10)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  if (!v9)
  {
    __break(1u);
    return result;
  }

LABEL_11:
  v11 = v5[6];
  if ((v11 & 0x8000000000000000) != 0)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v12 = v5[5];
  if ((v12 & 0x8000000000000000) != 0)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (!v11)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (!v12)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v13 = v6[6];
  if (v13 < 0)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v14 = v6[5];
  if (v14 < 0)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (!v13)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (!v14)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (v11 != v13)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (v12 != v14)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
  }

  v15 = *(a3 + 4);
  if (v15)
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v17 = *a3;
    v25 = HIWORD(*a3);
    v26 = *a3 >> 8;
    v24 = HIBYTE(*a3);
    v27 = a2;
    v18 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd);
    v16 = swift_allocObject();
    a3 = v18;
    a2 = v27;
    *(v16 + 16) = xmmword_1B7E770E0;
    *(v16 + 32) = v17;
    *(v16 + 33) = v26;
    *(v16 + 34) = v25;
    *(v16 + 35) = v24;
  }

  v19 = v5[7];
  src.data = v8;
  src.height = v12;
  src.width = v11;
  src.rowBytes = v19;
  v20 = v6[7];
  dest.data = v9;
  dest.height = v12;
  v21 = v7[1];
  dest.width = v11;
  dest.rowBytes = v20;
  if (HIDWORD(v21))
  {
    goto LABEL_44;
  }

  if (HIDWORD(*v7))
  {
    goto LABEL_45;
  }

  if (v15)
  {
    flags = dword_1B7E79434[*a3];
  }

  else
  {
    flags = 4;
  }

  v23 = *&a2;
  if ((a2 & 0x100000000) != 0)
  {
    v23 = 0.0;
  }

  vImageConvolveFloatKernel_ARGB8888(&src, &dest, 0, 0, 0, (v7[2] + 32), v21, *v7, v23, (v16 + 32), flags);
}

uint64_t vImage.PixelBuffer<>.separableConvolve(horizontalKernel:verticalKernel:bias:edgeMode:destination:)(uint64_t result, uint64_t a2, unsigned int *a3, uint64_t a4, float a5)
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = *v5;
  if (!*(*v5 + 16))
  {
    __break(1u);
    goto LABEL_28;
  }

  v7 = v6[6];
  if ((v7 & 0x8000000000000000) != 0)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v8 = v6[5];
  if ((v8 & 0x8000000000000000) != 0)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (!v7)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (!v8)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v9 = *a4;
  if (!*(*a4 + 16))
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v10 = v9[6];
  if (v10 < 0)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v11 = v9[5];
  if (v11 < 0)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (!v10)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (!v11)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v7 != v10)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v8 != v11)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v12 = result;
  v13 = *(result + 16);
  if ((v13 & 1) == 0)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v14 = a2;
  kernelY_width = *(a2 + 16);
  if ((kernelY_width & 1) == 0)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v16 = v6[4];
  v17 = v9[4];
  if (v16)
  {
    if (v16 != v17)
    {
      goto LABEL_19;
    }

    __break(1u);
  }

  if (!v17)
  {
    __break(1u);
    return result;
  }

LABEL_19:
  v18 = *(a3 + 4);
  if (v18)
  {
    v19 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v20 = *a3;
    v26 = HIWORD(*a3);
    v27 = *a3 >> 8;
    v25 = HIBYTE(*a3);
    v21 = a5;
    v29 = result;
    v28 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd);
    v19 = swift_allocObject();
    a3 = v28;
    v12 = v29;
    v14 = a2;
    a5 = v21;
    *(v19 + 16) = xmmword_1B7E770E0;
    *(v19 + 32) = v20;
    *(v19 + 33) = v27;
    *(v19 + 34) = v26;
    *(v19 + 35) = v25;
  }

  v22 = v6[7];
  src.data = v16;
  src.height = v8;
  src.width = v7;
  src.rowBytes = v22;
  v23 = v9[7];
  dest.data = v17;
  dest.height = v8;
  dest.width = v7;
  dest.rowBytes = v23;
  if ((kernelY_width | v13) >> 32)
  {
LABEL_41:
    __break(1u);
  }

  if (v18)
  {
    flags = dword_1B7E79434[*a3];
  }

  else
  {
    flags = 4;
  }

  vImageSepConvolve_ARGB8888(&src, &dest, 0, 0, 0, (v12 + 32), v13, (v14 + 32), kernelY_width, a5, (v19 + 32), flags);
}

uint64_t vImage.PixelBuffer<>.convolve(with:divisor:bias:edgeMode:destination:)(uint64_t result, uint64_t divisor, uint64_t a3, int *a4, uint64_t a5)
{
  v8 = a3;
  v9 = divisor;
  v10 = result;
  v44 = *MEMORY[0x1E69E9840];
  if ((divisor & 0x100000000) != 0)
  {
    v11 = *(result + 16);
    v12 = *(v11 + 16);
    data = MEMORY[0x1E69E7CC0];
    if (v12)
    {
      src.data = MEMORY[0x1E69E7CC0];

      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12, 0);
      data = src.data;
      v14 = *(src.data + 2);
      v15 = 32;
      do
      {
        v16 = *(v11 + v15);
        src.data = data;
        v17 = *(data + 3);
        if (v14 >= v17 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v14 + 1, 1);
          data = src.data;
        }

        *(data + 2) = v14 + 1;
        data[v14 + 8] = v16;
        v15 += 2;
        ++v14;
        --v12;
      }

      while (v12);

      v8 = a3;
    }

    v18 = *(data + 2);
    v5 = v40;
    a5 = v41;
    v9 = 0;
    if (v18)
    {
      v19 = data + 8;
      while (1)
      {
        v20 = *v19++;
        v21 = __OFADD__(v9, v20);
        v9 += v20;
        if (v21)
        {
          break;
        }

        if (!--v18)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
      goto LABEL_40;
    }

LABEL_12:
  }

  v22 = *a4;
  if (a4[1])
  {
    flags = dword_1B7E79434[v22];
    v24 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd);
    result = swift_allocObject();
    v24 = result;
    *(result + 16) = xmmword_1B7E770E0;
    *(result + 32) = v22;
    *(result + 34) = BYTE2(v22);
    *(result + 35) = BYTE3(v22);
    flags = 4;
  }

  v25 = *v5;
  if (!*(*v5 + 16))
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v26 = *a5;
  if (!*(*a5 + 16))
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v28 = *v10;
  v27 = v10[1];
  v29 = v10[2];
  v30 = v25[4];
  v31 = v26[4];
  if (v30)
  {
    if (!v31 || v30 != v31)
    {
      goto LABEL_23;
    }

    __break(1u);
  }

  if (!v31)
  {
    __break(1u);
    return result;
  }

LABEL_23:
  v32 = v25[6];
  if ((v32 & 0x8000000000000000) != 0)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v33 = v25[5];
  if ((v33 & 0x8000000000000000) != 0)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (!v32)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (!v33)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v34 = v26[6];
  if (v34 < 0)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v35 = v26[5];
  if (v35 < 0)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if (!v34)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (!v35)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (v32 != v34)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if (v33 != v35)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v36 = v25[7];
  src.data = v30;
  src.height = v33;
  src.width = v32;
  src.rowBytes = v36;
  v37 = v26[7];
  dest.data = v31;
  dest.height = v33;
  dest.width = v32;
  dest.rowBytes = v37;
  v38 = (v27 | v28) >> 32;
  if ((v8 & 0x100000000) != 0)
  {
    if (v38)
    {
      goto LABEL_53;
    }

    vImageConvolve_ARGB8888(&src, &dest, 0, 0, 0, (v29 + 32), v27, v28, v9, (v24 + 32), flags);
  }

  else
  {
    if (v38)
    {
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
    }

    vImageConvolveWithBias_ARGB8888(&src, &dest, 0, 0, 0, (v29 + 32), v27, v28, v9, v8, (v24 + 32), flags);
  }
}

uint64_t vImage.PixelBuffer<>._convolve<A, B, C, D>(kernel:divisor:bias:backgroundColor:flags:destination:convolveFunc:convolveWithBiasFunc:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t *a6, void (*a7)(uint64_t, uint64_t, void, void, void, unint64_t, uint64_t, uint64_t, uint64_t, uint64_t, int), uint64_t a8, void (*a9)(uint64_t, uint64_t, void, void, void, uint64_t, uint64_t, uint64_t, uint64_t, char *, uint64_t, int, uint64_t), uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void (*a14)(uint64_t, uint64_t, void, void, void, unint64_t, uint64_t, uint64_t, uint64_t, uint64_t, int))
{
  v39 = *MEMORY[0x1E69E9840];
  v31 = a1[1];
  v32 = *a1;
  v33 = a1[2];
  v18 = *a6;
  v19 = *v14;
  v35 = *v14;
  v20 = vImage.PixelBuffer<>.vImageBuffer.getter();
  v34[0] = v18;
  type metadata accessor for vImage.PixelBuffer();
  v21 = vImage.PixelBuffer<>.vImageBuffer.getter();
  if (!v20)
  {
    if (v21)
    {
      goto LABEL_4;
    }

LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v21 && v20 == v21)
  {
    goto LABEL_8;
  }

LABEL_4:
  v34[3] = v19;
  vImage.PixelBuffer.size.getter(&v35);
  v23 = v35;
  v22 = v36;
  v34[2] = v18;
  vImage.PixelBuffer.size.getter(v34);
  if (v23 != v34[0] || v22 != v34[1])
  {
LABEL_9:
    __break(1u);
  }

  v34[0] = v19;
  v35 = vImage.PixelBuffer<>.vImageBuffer.getter();
  v36 = v24;
  v37 = v25;
  v38 = v26;
  return closure #1 in vImage.PixelBuffer<>._convolve<A, B, C, D>(kernel:divisor:bias:backgroundColor:flags:destination:convolveFunc:convolveWithBiasFunc:)(&v35, v18, a3, a9, a10, v32, v31, v33, v31, v32, a2, a4, a5, a7, a8, *(a11 + 16), a12, a13, a14);
}

unint64_t *vImage.PixelBuffer<>.convolve(with:divisor:bias:edgeMode:destination:)(unint64_t *result, uint64_t divisor, uint64_t a3, Pixel_8 *a4, uint64_t a5)
{
  v8 = a3;
  v9 = divisor;
  v10 = result;
  v44 = *MEMORY[0x1E69E9840];
  if ((divisor & 0x100000000) != 0)
  {
    v11 = result[2];
    v12 = *(v11 + 16);
    data = MEMORY[0x1E69E7CC0];
    if (v12)
    {
      src.data = MEMORY[0x1E69E7CC0];

      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12, 0);
      data = src.data;
      v14 = *(src.data + 2);
      v15 = 32;
      do
      {
        v16 = *(v11 + v15);
        src.data = data;
        v17 = *(data + 3);
        if (v14 >= v17 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v14 + 1, 1);
          data = src.data;
        }

        *(data + 2) = v14 + 1;
        data[v14 + 8] = v16;
        v15 += 2;
        ++v14;
        --v12;
      }

      while (v12);

      a5 = v40;
      v8 = a3;
      v5 = v39;
    }

    v18 = *(data + 2);
    if (v18)
    {
      v9 = 0;
      v19 = data + 8;
      while (1)
      {
        v20 = *v19++;
        v21 = __OFADD__(v9, v20);
        v9 += v20;
        if (v21)
        {
          break;
        }

        if (!--v18)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
      goto LABEL_47;
    }

    v9 = 0;
LABEL_14:
  }

  if (a4[1])
  {
    backgroundColor = 0;
  }

  else
  {
    backgroundColor = *a4;
  }

  if (a4[1] == 1)
  {
    flags = dword_1B7E79434[*a4];
  }

  else
  {
    flags = 4;
  }

  v24 = *v5;
  if (!*(*v5 + 16))
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v25 = *a5;
  if (!*(*a5 + 16))
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v27 = *v10;
  v26 = v10[1];
  v28 = v10[2];
  v29 = v24[4];
  v30 = v25[4];
  if (v29)
  {
    if (v30)
    {
      v31 = v29 == v30;
    }

    else
    {
      v31 = 0;
    }

    if (!v31)
    {
      goto LABEL_31;
    }

    __break(1u);
  }

  if (!v30)
  {
    __break(1u);
    return result;
  }

LABEL_31:
  v32 = v24[6];
  if ((v32 & 0x8000000000000000) != 0)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v33 = v24[5];
  if ((v33 & 0x8000000000000000) != 0)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if (!v32)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (!v33)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v34 = v25[6];
  if (v34 < 0)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v35 = v25[5];
  if (v35 < 0)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  if (!v34)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  if (!v35)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  if (v32 != v34)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  if (v33 != v35)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v36 = v24[7];
  src.data = v29;
  src.height = v33;
  src.width = v32;
  src.rowBytes = v36;
  v37 = v25[7];
  dest.data = v30;
  dest.height = v33;
  dest.width = v32;
  dest.rowBytes = v37;
  v38 = (v26 | v27) >> 32;
  if ((v8 & 0x100000000) != 0)
  {
    if (v38)
    {
      goto LABEL_60;
    }

    return vImageConvolve_Planar8(&src, &dest, 0, 0, 0, (v28 + 32), v26, v27, v9, backgroundColor, flags);
  }

  else
  {
    if (v38)
    {
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
    }

    return vImageConvolveWithBias_Planar8(&src, &dest, 0, 0, 0, (v28 + 32), v26, v27, v9, v8, backgroundColor, flags);
  }
}

uint64_t vImage.PixelBuffer<>.convolve(with:divisor:bias:edgeMode:destination:)(uint64_t result, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a6;
  v10 = a2;
  v33 = result;
  if ((a2 & 0x100000000) != 0)
  {
    v11 = *(result + 16);
    v12 = *(v11 + 16);
    v13 = MEMORY[0x1E69E7CC0];
    if (v12)
    {
      v40 = MEMORY[0x1E69E7CC0];

      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12, 0);
      v13 = v40;
      v14 = *(v40 + 16);
      v15 = 32;
      do
      {
        v16 = *(v11 + v15);
        v40 = v13;
        v17 = *(v13 + 24);
        if (v14 >= v17 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v14 + 1, 1);
          v13 = v40;
        }

        *(v13 + 16) = v14 + 1;
        *(v13 + 4 * v14 + 32) = v16;
        v15 += 2;
        ++v14;
        --v12;
      }

      while (v12);

      v8 = a6;
    }

    v18 = *(v13 + 16);
    if (v18)
    {
      v10 = 0;
      v19 = (v13 + 32);
      while (1)
      {
        v20 = *v19++;
        v21 = __OFADD__(v10, v20);
        v10 += v20;
        if (v21)
        {
          break;
        }

        if (!--v18)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
      goto LABEL_27;
    }

    v10 = 0;
LABEL_14:
  }

  v22 = *a4;
  v23 = a4[1];
  if (a4[1])
  {
    v24 = 0;
  }

  else
  {
    v24 = *a4;
  }

  result = (*(a7 + 32))(*(v8 + 16), a7);
  if (result < 0)
  {
LABEL_27:
    __break(1u);
    return result;
  }

  if (result)
  {
    v25 = v24;
    if (v23)
    {
      v26 = dword_1B7E79434[v22];
    }

    else
    {
      v26 = 4;
    }

    v27 = 0;
    v28 = v25;
    do
    {
      v29 = result;
      vImage.PixelBuffer<>.subscript.getter(v27, &v40);
      vImage.PixelBuffer<>.subscript.getter(v27, &v39);
      v38 = v10;
      v36 = a3;
      v37 = BYTE4(a3) & 1;
      v35 = v28;
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      v31 = type metadata accessor for vImage.PixelBuffer();
      vImage.PixelBuffer<>._convolve<A, B, C, D>(kernel:divisor:bias:backgroundColor:flags:destination:convolveFunc:convolveWithBiasFunc:)(v33, &v38, &v36, &v35, v26, &v39, specialized thunk for @callee_guaranteed (@unowned UnsafePointer<vImage_Buffer>, @unowned UnsafePointer<vImage_Buffer>, @unowned UnsafeMutableRawPointer?, @unowned UInt, @unowned UInt, @unowned UnsafePointer<Int16>?, @unowned UInt32, @unowned UInt32, @unowned Int32, @unowned UInt8, @unowned UInt32) -> (@unowned Int), 0, specialized thunk for @callee_guaranteed (@unowned UnsafePointer<vImage_Buffer>, @unowned UnsafePointer<vImage_Buffer>, @unowned UnsafeMutableRawPointer?, @unowned UInt, @unowned UInt, @unowned UnsafePointer<Int16>?, @unowned UInt32, @unowned UInt32, @unowned Int32, @unowned Int32, @unowned UInt8, @unowned UInt32) -> (@unowned Int), 0, v31, AssociatedTypeWitness, MEMORY[0x1E69E7290], MEMORY[0x1E69E72F0]);

      result = v29;
      ++v27;
    }

    while (v29 != v27);
  }

  return result;
}

uint64_t vImage.PixelBuffer<>.convolve(with:bias:edgeMode:destination:)(uint64_t result, uint64_t a2, __int128 *a3, uint64_t a4)
{
  v8 = result;
  v29 = *MEMORY[0x1E69E9840];
  if (a3[1])
  {
    flags = dword_1B7E79434[*a3];
    v10 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd);
    result = swift_allocObject();
    v10 = result;
    v11 = *a3;
    *(result + 16) = xmmword_1B7E770E0;
    *(result + 32) = v11;
    flags = 4;
  }

  v12 = *v4;
  if (!v12[2])
  {
    __break(1u);
    goto LABEL_31;
  }

  v13 = *a4;
  if (!*(*a4 + 16))
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v14 = *v8;
  v15 = v8[1];
  v16 = v8[2];
  v17 = v12[4];
  v18 = v13[4];
  if (v17)
  {
    if (v18)
    {
      v19 = v17 == v18;
    }

    else
    {
      v19 = 0;
    }

    if (!v19)
    {
LABEL_14:
      v20 = v12[6];
      if ((v20 & 0x8000000000000000) == 0)
      {
        v21 = v12[5];
        if ((v21 & 0x8000000000000000) == 0)
        {
          if (v20)
          {
            if (v21)
            {
              v22 = v13[6];
              if ((v22 & 0x8000000000000000) == 0)
              {
                v23 = v13[5];
                if ((v23 & 0x8000000000000000) == 0)
                {
                  if (v22)
                  {
                    if (v23)
                    {
                      if (v20 == v22)
                      {
                        if (v21 == v23)
                        {
                          v24 = v12[7];
                          src.data = v17;
                          src.height = v21;
                          src.width = v20;
                          src.rowBytes = v24;
                          v25 = v13[7];
                          dest.data = v18;
                          dest.height = v21;
                          dest.width = v20;
                          dest.rowBytes = v25;
                          v26 = (v15 | v14) >> 32;
                          if ((a2 & 0x100000000) != 0)
                          {
                            if (!v26)
                            {
                              swift_bridgeObjectRetain_n();
                              vImageConvolve_ARGBFFFF(&src, &dest, 0, 0, 0, (v16 + 32), v15, v14, (v10 + 32), flags);
                              goto LABEL_29;
                            }

LABEL_43:
                            __break(1u);
                          }

                          if (!v26)
                          {
                            swift_bridgeObjectRetain_n();
                            vImageConvolveWithBias_ARGBFFFF(&src, &dest, 0, 0, 0, (v16 + 32), v15, v14, *&a2, (v10 + 32), flags);
LABEL_29:

                            return swift_bridgeObjectRelease_n();
                          }

LABEL_42:
                          __break(1u);
                          goto LABEL_43;
                        }

LABEL_41:
                        __break(1u);
                        goto LABEL_42;
                      }

LABEL_40:
                      __break(1u);
                      goto LABEL_41;
                    }

LABEL_39:
                    __break(1u);
                    goto LABEL_40;
                  }

LABEL_38:
                  __break(1u);
                  goto LABEL_39;
                }

LABEL_37:
                __break(1u);
                goto LABEL_38;
              }

LABEL_36:
              __break(1u);
              goto LABEL_37;
            }

LABEL_35:
            __break(1u);
            goto LABEL_36;
          }

LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    __break(1u);
  }

  if (v18)
  {
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

unint64_t *vImage.PixelBuffer<>.convolve(with:bias:edgeMode:destination:)(unint64_t *result, uint64_t a2, int *a3, uint64_t a4)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = 0.0;
  if (*(a3 + 4))
  {
    flags = dword_1B7E79434[*a3];
  }

  else
  {
    v5 = *a3;
    flags = 4;
  }

  v7 = *v4;
  if (!*(*v4 + 16))
  {
    __break(1u);
    goto LABEL_30;
  }

  v8 = *a4;
  if (!*(*a4 + 16))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v10 = *result;
  v9 = result[1];
  v11 = result[2];
  v12 = v7[4];
  v13 = v8[4];
  if (v12)
  {
    if (v13)
    {
      v14 = v12 == v13;
    }

    else
    {
      v14 = 0;
    }

    if (!v14)
    {
      goto LABEL_14;
    }

    __break(1u);
  }

  if (!v13)
  {
    __break(1u);
    return result;
  }

LABEL_14:
  v15 = v7[6];
  if ((v15 & 0x8000000000000000) != 0)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v16 = v7[5];
  if ((v16 & 0x8000000000000000) != 0)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v15)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (!v16)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v17 = v8[6];
  if (v17 < 0)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v18 = v8[5];
  if (v18 < 0)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (!v17)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (!v18)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v15 != v17)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v16 != v18)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
  }

  v19 = v7[7];
  src.data = v12;
  src.height = v16;
  src.width = v15;
  src.rowBytes = v19;
  v20 = v8[7];
  dest.data = v13;
  dest.height = v16;
  dest.width = v15;
  dest.rowBytes = v20;
  v21 = (v9 | v10) >> 32;
  if ((a2 & 0x100000000) == 0)
  {
    if (!v21)
    {
      return vImageConvolveWithBias_PlanarF(&src, &dest, 0, 0, 0, (v11 + 32), v9, v10, *&a2, v5, flags);
    }

    goto LABEL_41;
  }

  if (v21)
  {
    goto LABEL_42;
  }

  return vImageConvolve_PlanarF(&src, &dest, 0, 0, 0, (v11 + 32), v9, v10, v5, flags);
}

const vImage_Buffer *vImage.PixelBuffer<>.vImageConvolve_PlanarF_wrapper(_:_:_:_:_:_:_:_:unusedDivisor:_:_:)(const vImage_Buffer *result, const vImage_Buffer *a2, void *a3, vImagePixelCount a4, vImagePixelCount a5, const float *a6, uint32_t a7, uint32_t a8, uint64_t flags, vImage_Flags a10)
{
  if ((flags & 0x100000000) == 0)
  {
    return vImageConvolve_PlanarF(result, a2, a3, a4, a5, a6, a7, a8, *&flags, a10);
  }

  __break(1u);
  return result;
}

const vImage_Buffer *vImage.PixelBuffer<>.vImageConvolveWithBias_PlanarF_wrapper(_:_:_:_:_:_:_:_:unusedDivisor:_:_:_:)(const vImage_Buffer *result, const vImage_Buffer *a2, void *a3, vImagePixelCount a4, vImagePixelCount a5, const float *a6, uint32_t a7, uint32_t a8, double a9, float a10, uint64_t flags, vImage_Flags a12)
{
  if ((flags & 0x100000000) == 0)
  {
    return vImageConvolveWithBias_PlanarF(result, a2, a3, a4, a5, a6, a7, a8, a10, *&flags, a12);
  }

  __break(1u);
  return result;
}

unint64_t *vImage.PixelBuffer<>.convolve(with:bias:edgeMode:useFloat16Accumulator:destination:)(unint64_t *result, uint64_t a2, uint64_t *a3, char a4, uint64_t a5)
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = *v5;
  if (!*(*v5 + 16))
  {
    __break(1u);
    goto LABEL_40;
  }

  v7 = *a5;
  if (!*(*a5 + 16))
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v8 = v6[4];
  v9 = v7[4];
  if (v8)
  {
    if (v9)
    {
      v10 = v8 == v9;
    }

    else
    {
      v10 = 0;
    }

    if (!v10)
    {
LABEL_11:
      v11 = v6[6];
      if ((v11 & 0x8000000000000000) == 0)
      {
        v12 = v6[5];
        if ((v12 & 0x8000000000000000) == 0)
        {
          if (v11)
          {
            if (v12)
            {
              v13 = v7[6];
              if ((v13 & 0x8000000000000000) == 0)
              {
                v14 = v7[5];
                if ((v14 & 0x8000000000000000) == 0)
                {
                  if (v13)
                  {
                    if (v14)
                    {
                      if (v11 == v13)
                      {
                        if (v12 == v14)
                        {
                          v15 = *result;
                          v16 = result[1];
                          v17 = *(a3 + 8);
                          if (v17)
                          {
                            v18 = MEMORY[0x1E69E7CC0];
                          }

                          else
                          {
                            v19 = *a3;
                            v29 = *a3 >> 16;
                            v30 = HIDWORD(*a3);
                            v31 = HIWORD(*a3);
                            v32 = *result;
                            v34 = a2;
                            v35 = result;
                            v33 = a3;
                            v20 = a4;
                            v21 = v8;
                            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt16VGMd);
                            v22 = swift_allocObject();
                            v8 = v21;
                            a4 = v20;
                            a3 = v33;
                            a2 = v34;
                            v18 = v22;
                            result = v35;
                            *(v18 + 16) = xmmword_1B7E770E0;
                            *(v18 + 32) = v19;
                            *(v18 + 34) = v29;
                            *(v18 + 36) = v30;
                            v15 = v32;
                            *(v18 + 38) = v31;
                          }

                          if (a4)
                          {
                            v23 = 4096;
                          }

                          else
                          {
                            v23 = 0;
                          }

                          v24 = v6[7];
                          src.data = v8;
                          src.height = v12;
                          src.width = v11;
                          src.rowBytes = v24;
                          v25 = v7[7];
                          dest.data = v9;
                          dest.height = v12;
                          dest.width = v11;
                          dest.rowBytes = v25;
                          v26 = (v16 | v15) >> 32;
                          if ((a2 & 0x100000000) != 0)
                          {
                            if (!v26)
                            {
                              if (v17)
                              {
                                v28 = dword_1B7E79434[*a3];
                              }

                              else
                              {
                                v28 = 4;
                              }

                              vImageConvolve_ARGB16F(&src, &dest, 0, 0, 0, (result[2] + 32), v16, v15, (v18 + 32), v28 | v23);
                            }

LABEL_52:
                            __break(1u);
                          }

                          if (!v26)
                          {
                            if (v17)
                            {
                              v27 = dword_1B7E79434[*a3];
                            }

                            else
                            {
                              v27 = 4;
                            }

                            vImageConvolveWithBias_ARGB16F(&src, &dest, 0, 0, 0, (result[2] + 32), v16, v15, *&a2, (v18 + 32), v27 | v23);
                          }

LABEL_51:
                          __break(1u);
                          goto LABEL_52;
                        }

LABEL_50:
                        __break(1u);
                        goto LABEL_51;
                      }

LABEL_49:
                      __break(1u);
                      goto LABEL_50;
                    }

LABEL_48:
                    __break(1u);
                    goto LABEL_49;
                  }

LABEL_47:
                  __break(1u);
                  goto LABEL_48;
                }

LABEL_46:
                __break(1u);
                goto LABEL_47;
              }

LABEL_45:
              __break(1u);
              goto LABEL_46;
            }

LABEL_44:
            __break(1u);
            goto LABEL_45;
          }

LABEL_43:
          __break(1u);
          goto LABEL_44;
        }

LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    __break(1u);
  }

  if (v9)
  {
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

unint64_t *vImage.PixelBuffer<>.convolve(with:bias:edgeMode:useFloat16Accumulator:destination:)(unint64_t *result, uint64_t a2, Pixel_16F *a3, char a4, uint64_t a5)
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = *v5;
  if (!*(*v5 + 16))
  {
    __break(1u);
    goto LABEL_40;
  }

  v7 = *a5;
  if (!*(*a5 + 16))
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v8 = v6[4];
  v9 = v7[4];
  if (v8)
  {
    if (v9)
    {
      v10 = v8 == v9;
    }

    else
    {
      v10 = 0;
    }

    if (!v10)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  if (!v9)
  {
    __break(1u);
    return result;
  }

LABEL_11:
  v11 = v6[6];
  if ((v11 & 0x8000000000000000) != 0)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v12 = v6[5];
  if ((v12 & 0x8000000000000000) != 0)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (!v11)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (!v12)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v13 = v7[6];
  if (v13 < 0)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v14 = v7[5];
  if (v14 < 0)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (!v13)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if (!v14)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (v11 != v13)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (v12 != v14)
  {
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
  }

  if (a4)
  {
    v15 = 4096;
  }

  else
  {
    v15 = 0;
  }

  v17 = *result;
  v16 = result[1];
  v18 = *a3;
  v19 = *(a3 + 2);
  if (*(a3 + 2))
  {
    backgroundColor = 0;
  }

  else
  {
    backgroundColor = *a3;
  }

  v21 = v6[7];
  src.data = v8;
  src.height = v12;
  src.width = v11;
  src.rowBytes = v21;
  v22 = v7[7];
  dest.data = v9;
  dest.height = v12;
  dest.width = v11;
  dest.rowBytes = v22;
  v23 = (v16 | v17) >> 32;
  if ((a2 & 0x100000000) == 0)
  {
    if (!v23)
    {
      if (v19)
      {
        v24 = dword_1B7E79434[v18];
      }

      else
      {
        v24 = 4;
      }

      return vImageConvolveWithBias_Planar16F(&src, &dest, 0, 0, 0, (result[2] + 32), v16, v17, *&a2, backgroundColor, v24 | v15);
    }

    goto LABEL_51;
  }

  if (v23)
  {
    goto LABEL_52;
  }

  if (v19)
  {
    v25 = dword_1B7E79434[v18];
  }

  else
  {
    v25 = 4;
  }

  return vImageConvolve_Planar16F(&src, &dest, 0, 0, 0, (result[2] + 32), v16, v17, backgroundColor, v25 | v15);
}

uint64_t vImage.PixelBuffer<>.convolve(with:bias:edgeMode:destination:)(uint64_t *a1, unint64_t a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v13 = *a3;
  v14 = *(a3 + 4);
  v15 = *(a5 + 16);
  result = (*(a6 + 32))(v15, a6);
  if (result < 0)
  {
    __break(1u);
  }

  else if (result)
  {
    v17 = a1;
    v18 = a6;
    if (v14)
    {
      v19 = 0;
    }

    else
    {
      v19 = v13;
    }

    if (v14)
    {
      v20 = dword_1B7E79434[v13];
    }

    else
    {
      v20 = 4;
    }

    v35 = v20;
    v21 = 0;
    v38 = v18;
    v39 = HIDWORD(a2) & 1;
    v36 = v15;
    v37 = v17;
    v42 = a4;
    v43 = a5;
    v41 = result;
    v40 = v19;
    do
    {
      v46 = v21 + 1;
      vImage.PixelBuffer<>.subscript.getter(v21, &v53);
      vImage.PixelBuffer<>.subscript.getter(v21, &v52);
      v51 = 0;
      v49 = a2;
      v50 = v39;
      v47 = v19;
      v48 = 0;
      v22 = *v7;
      v23 = swift_allocObject();
      v24 = v36;
      v23[2] = v36;
      v23[3] = v18;
      v23[4] = v22;

      v45 = &v34;
      MEMORY[0x1EEE9AC00](v25);
      v44 = v33;
      v33[2] = partial apply for implicit closure #2 in implicit closure #1 in vImage.PixelBuffer<>.convolve(with:bias:edgeMode:destination:);
      v33[3] = v23;
      v26 = swift_allocObject();
      v26[2] = v24;
      v26[3] = v18;
      v26[4] = v22;
      v27 = MEMORY[0x1EEE9AC00](v26);
      v32[2] = partial apply for implicit closure #4 in implicit closure #3 in vImage.PixelBuffer<>.convolve(with:bias:edgeMode:destination:);
      v32[3] = v27;
      v28 = a2;
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      v30 = type metadata accessor for vImage.PixelBuffer();

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSfSgMd);
      v31 = AssociatedTypeWitness;
      a2 = v28;
      v19 = v40;
      vImage.PixelBuffer<>._convolve<A, B, C, D>(kernel:divisor:bias:backgroundColor:flags:destination:convolveFunc:convolveWithBiasFunc:)(v37, &v51, &v49, &v47, v35, &v52, partial apply for thunk for @callee_guaranteed (@unowned UnsafePointer<vImage_Buffer>, @unowned UnsafePointer<vImage_Buffer>, @unowned UnsafeMutableRawPointer?, @unowned UInt, @unowned UInt, @unowned UnsafePointer<Float>?, @unowned UInt32, @unowned UInt32, @unowned Float, @unowned Float?, @unowned UInt32) -> (@unowned Int), v44, partial apply for thunk for @callee_guaranteed (@unowned UnsafePointer<vImage_Buffer>, @unowned UnsafePointer<vImage_Buffer>, @unowned UnsafeMutableRawPointer?, @unowned UInt, @unowned UInt, @unowned UnsafePointer<Float>?, @unowned UInt32, @unowned UInt32, @unowned Float, @unowned Float, @unowned Float?, @unowned UInt32) -> (@unowned Int), v32, v30, v31, MEMORY[0x1E69E6448], MEMORY[0x1E69E6448]);

      result = v41;
      v21 = v46;
    }

    while (v41 != v46);
  }

  return result;
}

uint64_t closure #1 in vImage.PixelBuffer<>._convolve<A, B, C, D>(kernel:divisor:bias:backgroundColor:flags:destination:convolveFunc:convolveWithBiasFunc:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, void, void, void, uint64_t, uint64_t, uint64_t, uint64_t, char *, uint64_t, int, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, void (*a14)(uint64_t, uint64_t, void, void, void, unint64_t, uint64_t, uint64_t, uint64_t, uint64_t, int), uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void (*a19)(uint64_t, uint64_t, void, void, void, unint64_t, uint64_t, uint64_t, uint64_t, uint64_t, int))
{
  v30[4] = *MEMORY[0x1E69E9840];
  type metadata accessor for vImage.PixelBuffer();
  v30[0] = vImage.PixelBuffer<>.vImageBuffer.getter();
  v30[1] = v19;
  v30[2] = v20;
  v30[3] = v21;
  return closure #1 in closure #1 in vImage.PixelBuffer<>._convolve<A, B, C, D>(kernel:divisor:bias:backgroundColor:flags:destination:convolveFunc:convolveWithBiasFunc:)(v30, a3, a4, a5, a1, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19);
}

uint64_t closure #1 in closure #1 in vImage.PixelBuffer<>._convolve<A, B, C, D>(kernel:divisor:bias:backgroundColor:flags:destination:convolveFunc:convolveWithBiasFunc:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, void, void, void, uint64_t, uint64_t, uint64_t, uint64_t, char *, uint64_t, int, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, void (*a14)(uint64_t, uint64_t, void, void, void, unint64_t, uint64_t, uint64_t, uint64_t, uint64_t, int), uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void (*a19)(uint64_t, uint64_t, void, void, void, unint64_t, uint64_t, uint64_t, uint64_t, uint64_t, int))
{
  v54 = a5;
  v46 = a4;
  v47 = a3;
  v55 = a2;
  v20 = a19;
  v48 = a18;
  v49 = a13;
  v50 = a12;
  v51 = a11;
  v52 = a1;
  v21 = type metadata accessor for Optional();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v46 - v24;
  v26 = *(a19 - 1);
  MEMORY[0x1EEE9AC00](v23);
  v28 = &v46 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v25, v55, v21);
  v29 = (*(v26 + 48))(v25, 1, a19);
  v55 = a10;
  v53 = a9;
  v30 = a10 | a9;
  if (v29 != 1)
  {
    (*(v26 + 32))(v28, v25, a19);
    if (HIDWORD(v30))
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v33 = v48;
    if ((_swift_isClassOrObjCExistentialType() & 1) != 0 && (a8 < 0 || (a8 & 0x4000000000000000) != 0))
    {
      if (MEMORY[0x1B8CB13F0](a8, v33))
      {
        v56 = a8;
        type metadata accessor for _ArrayBuffer();
        swift_getWitnessTable();
        v44 = Array.init<A>(_:)();
        destructiveProjectEnumData for vImage(v44);
        swift_unknownObjectRetain();
        v45 = MEMORY[0x1B8CB1700](v44, v33);

        v47(v54, v52, 0, 0, 0, v45, v53, v55, v51, v28, v50, v49, v46);
LABEL_30:
        (*(v26 + 8))(v28, a19);
        return swift_unknownObjectRelease();
      }

      v34 = 0;
    }

    else
    {

      if (_swift_isClassOrObjCExistentialType())
      {
        v34 = ((*(*(v33 - 8) + 80) + 32) & ~*(*(v33 - 8) + 80)) + (a8 & 0xFFFFFFFFFFFFFF8);
      }

      else
      {
        v34 = a8 + ((*(*(v33 - 8) + 80) + 32) & ~*(*(v33 - 8) + 80));
      }
    }

    if ((_swift_isClassOrObjCExistentialType() & 1) != 0 && (a8 < 0 || (a8 & 0x4000000000000000) != 0))
    {
      specialized _ArrayBuffer._nonNative.getter(a8);
      swift_unknownObjectRetain();
    }

    else
    {
      _swift_isClassOrObjCExistentialType();
    }

    if (!v34)
    {
      v34 = (~*(*(v33 - 8) + 80) | 0xFFFFFF00);
    }

    v47(v54, v52, 0, 0, 0, v34, v53, v55, v51, v28, v50, v49, v46);
    goto LABEL_30;
  }

  v31 = *(v22 + 8);
  v22 += 8;
  v31(v25, v21);
  if (HIDWORD(v30))
  {
    __break(1u);
    goto LABEL_33;
  }

  v20 = a14;

  v22 = v48;
  if ((_swift_isClassOrObjCExistentialType() & 1) == 0 || (a8 & 0x8000000000000000) == 0 && (a8 & 0x4000000000000000) == 0)
  {

    if (_swift_isClassOrObjCExistentialType())
    {
      v32 = ((*(*(v22 - 8) + 80) + 32) & ~*(*(v22 - 8) + 80)) + (a8 & 0xFFFFFFFFFFFFFF8);
    }

    else
    {
      v32 = a8 + ((*(*(v22 - 8) + 80) + 32) & ~*(*(v22 - 8) + 80));
    }

    goto LABEL_15;
  }

LABEL_34:
  if (!MEMORY[0x1B8CB13F0](a8, v22))
  {

    v32 = 0;
LABEL_15:
    if ((_swift_isClassOrObjCExistentialType() & 1) != 0 && (a8 < 0 || (a8 & 0x4000000000000000) != 0))
    {
      specialized _ArrayBuffer._nonNative.getter(a8);
      swift_unknownObjectRetain();
    }

    else
    {
      _swift_isClassOrObjCExistentialType();
    }

    v35 = v55;
    v37 = v53;
    v36 = v54;
    v39 = v51;
    v38 = v52;
    v40 = v50;
    v41 = v49;
    if (!v32)
    {
      v32 = (~*(*(v22 - 8) + 80) | 0xFFFFFF00);
    }

    goto LABEL_21;
  }

  v56 = a8;
  type metadata accessor for _ArrayBuffer();
  swift_getWitnessTable();
  v43 = Array.init<A>(_:)();
  destructiveProjectEnumData for vImage(v43);
  swift_unknownObjectRetain();
  v32 = MEMORY[0x1B8CB1700](v43, v22);

  v35 = v55;
  v37 = v53;
  v36 = v54;
  v39 = v51;
  v38 = v52;
  v40 = v50;
  v41 = v49;
LABEL_21:
  v20(v36, v38, 0, 0, 0, v32, v37, v35, v39, v40, v41);
  return swift_unknownObjectRelease();
}

unint64_t *vImage.PixelBuffer<>.convolve(with:divisors:biases:edgeMode:destination:)(unint64_t *result, unint64_t *a2, unint64_t *a3, uint64_t *a4, unint64_t a5, int a6, char a7, int32_t a8, int32_t a9, int32_t a10, int32_t a11, int *a12, uint64_t a13)
{
  v112 = *MEMORY[0x1E69E9840];
  v16 = *result;
  v17 = result[1];
  v18 = result[2];
  v20 = *a2;
  v19 = a2[1];
  v21 = a2[2];
  v23 = *a3;
  v22 = a3[1];
  v24 = a3[2];
  v26 = *a4;
  v25 = a4[1];
  v27 = a4[2];
  v94[0] = *result;
  v94[1] = v17;
  v89 = v21;
  v90 = v18;
  v94[2] = v18;
  v94[3] = v20;
  v94[4] = v19;
  v94[5] = v21;
  v94[6] = v23;
  v94[7] = v22;
  v87 = v27;
  v88 = v24;
  v94[8] = v24;
  v94[9] = v26;
  v93 = v25;
  v94[10] = v25;
  v94[11] = v27;
  v28 = *v13;
  if (!*(*v13 + 16))
  {
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  v29 = *a13;
  if (!*(*a13 + 16))
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  v83 = *a12;
  v84 = *(a12 + 4);
  v30 = v28[4];
  v21 = v29[4];
  if (v30)
  {
    if (!v21 || v30 != v21)
    {
      goto LABEL_8;
    }

    __break(1u);
  }

  if (!v21)
  {
    __break(1u);
    return result;
  }

LABEL_8:
  v31 = v28[6];
  if (v31 < 0)
  {
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  v21 = v28[5];
  if ((v21 & 0x8000000000000000) != 0)
  {
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  if (!v31)
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  if (!v21)
  {
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  v32 = v29[6];
  if (v32 < 0)
  {
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  v33 = v29[5];
  if (v33 < 0)
  {
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  if (!v32)
  {
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  if (!v33)
  {
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  if (v31 != v32)
  {
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  if (v21 == v33)
  {
    LOBYTE(v92) = a7;
    v79 = a5;
    LODWORD(v91) = a6;
    v81 = v28;
    v82 = v29;
    v80 = a8;
    outlined init with copy of (vImage.ConvolutionKernel2D<Int16>, vImage.ConvolutionKernel2D<Int16>, vImage.ConvolutionKernel2D<Int16>, vImage.ConvolutionKernel2D<Int16>)(v94, &src);

    v14 = v87;

    v85 = v17;
    v86 = v16;
    v100 = v16;
    v101 = v17;
    v102 = v90;
    outlined init with copy of (vImage.ConvolutionKernel2D<Int16>, vImage.ConvolutionKernel2D<Int16>, vImage.ConvolutionKernel2D<Int16>, vImage.ConvolutionKernel2D<Int16>)(v94, &src);

    v103 = v20;
    v104 = v19;
    v105 = v89;
    outlined init with copy of (vImage.ConvolutionKernel2D<Int16>, vImage.ConvolutionKernel2D<Int16>, vImage.ConvolutionKernel2D<Int16>, vImage.ConvolutionKernel2D<Int16>)(v94, &src);

    v106 = v23;
    v107 = v22;
    v108 = v88;
    outlined init with copy of (vImage.ConvolutionKernel2D<Int16>, vImage.ConvolutionKernel2D<Int16>, vImage.ConvolutionKernel2D<Int16>, vImage.ConvolutionKernel2D<Int16>)(v94, &src);

    v109 = v26;
    v110 = v93;
    v111 = v87;
    v15 = MEMORY[0x1E69E7CC0];
    src.data = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 4, 0);
    data = src.data;
    v17 = *(src.data + 2);
    v21 = *(src.data + 3);
    v35 = v21 >> 1;
    v16 = v17 + 1;
    if (v21 >> 1 > v17)
    {
      goto LABEL_19;
    }

    goto LABEL_88;
  }

LABEL_87:
  __break(1u);
LABEL_88:
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v16, 1);
  data = src.data;
  v21 = *(src.data + 3);
  v35 = v21 >> 1;
LABEL_19:
  data[2] = v16;
  data[v17 + 4] = v86;
  v36 = v17 + 2;
  if (v35 < v36)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v36, 1);
    data = src.data;
  }

  data[2] = v36;
  data[v16 + 4] = v20;
  v38 = data[2];
  v37 = data[3];
  v39 = v38 + 1;
  if (v38 >= v37 >> 1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v38 + 1, 1);
  }

  v40 = src.data;
  *(src.data + 2) = v39;
  v40[v38 + 4] = v23;
  v41 = v40[3];
  v42 = v38 + 2;
  v43 = v84;
  if (v42 > (v41 >> 1))
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v42, 1);
    v40 = src.data;
  }

  v40[2] = v42;
  v40[v39 + 4] = v26;
  v44 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSu_SaySuGTt0g5Tf4g_n(v40);

  v45 = *(v44 + 16);

  if (v45 != 1)
  {
    __break(1u);
    goto LABEL_90;
  }

  src.data = v15;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 4, 0);
  v47 = src.data;
  v42 = *(src.data + 2);
  v46 = *(src.data + 3);
  v48 = v46 >> 1;
  v44 = v42 + 1;
  if (v46 >> 1 <= v42)
  {
LABEL_90:
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v46 > 1), v44, 1);
    v47 = src.data;
    v46 = *(src.data + 3);
    v48 = v46 >> 1;
  }

  v47[2] = v44;
  v47[v42 + 4] = v85;
  v49 = v42 + 2;
  if (v48 < v49)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v46 > 1), v49, 1);
    v47 = src.data;
  }

  v47[2] = v49;
  v47[v44 + 4] = v19;
  v51 = v47[2];
  v50 = v47[3];
  v52 = v51 + 1;
  if (v51 >= v50 >> 1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v50 > 1), v51 + 1, 1);
  }

  v53 = src.data;
  *(src.data + 2) = v52;
  v53[v51 + 4] = v22;
  v54 = v53[3];
  v17 = v51 + 2;
  if (v17 > (v54 >> 1))
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v54 > 1), v17, 1);
    v53 = src.data;
  }

  v53[2] = v17;
  v53[v52 + 4] = v93;
  v16 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSu_SaySuGTt0g5Tf4g_n(v53);

  v55 = *(v16 + 16);

  if (v55 != 1)
  {
    __break(1u);
    goto LABEL_92;
  }

  v22 = &v99;
  if ((v92 & 1) == 0)
  {
    v16 = HIDWORD(v79);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Accelerate6vImageO19ConvolutionKernel2DVy_s5Int16VGMd);
    swift_arrayDestroy();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5Int32VGMd);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1B7E770E0;
    *(v26 + 32) = v79;
    *(v26 + 40) = v91;
    *(v26 + 44) = v91;
    if ((v84 & 1) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_64;
  }

  src.data = v15;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 4, 0);
  v56 = src.data;
  v17 = v102;
  v19 = *(src.data + 2);
  v14 = *(src.data + 3);
  v16 = v19 + 1;

  if (v19 >= v14 >> 1)
  {
    goto LABEL_95;
  }

  while (1)
  {
    v56[2] = v16;
    v56[v19 + 4] = v17;
    v57 = v105;
    v58 = v56[3];
    v59 = v19 + 2;

    if (v16 >= v58 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v58 > 1), v59, 1);
      v56 = src.data;
    }

    v56[2] = v59;
    v56[v16 + 4] = v57;
    v60 = v108;
    v62 = v56[2];
    v61 = v56[3];
    v63 = v62 + 1;

    if (v62 >= v61 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v61 > 1), v62 + 1, 1);
    }

    v19 = src.data;
    *(src.data + 2) = v63;
    *(v19 + 8 * v62 + 32) = v60;
    v17 = v111;
    v64 = *(v19 + 24);
    v14 = v62 + 2;

    if (v63 >= v64 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v64 > 1), v14, 1);
      v19 = src.data;
    }

    *(v19 + 16) = v14;
    v93 = (v19 + 32);
    *(v19 + 32 + 8 * v63) = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Accelerate6vImageO19ConvolutionKernel2DVy_s5Int16VGMd);
    swift_arrayDestroy();
    v16 = *(v19 + 16);
    if (v16)
    {
      src.data = v15;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16, 0);
      v20 = 0;
      v26 = src.data;
      v23 = v16;
      v91 = v16;
      v92 = v19;
      do
      {
        if (v20 >= *(v19 + 16))
        {
          goto LABEL_75;
        }

        v17 = *&v93[8 * v20];
        v65 = *(v17 + 16);
        if (v65)
        {
          v66 = v15;
          dest.data = v15;

          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v65, 0);
          v67 = dest.data;
          v68 = (v17 + 32);
          v69 = *(dest.data + 2);
          do
          {
            v70 = *v68++;
            v16 = v70;
            dest.data = v67;
            v71 = v67[3];
            v14 = v69 + 1;
            if (v69 >= v71 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v71 > 1), v69 + 1, 1);
              v67 = dest.data;
            }

            v67[2] = v14;
            *(v67 + v69++ + 8) = v16;
            --v65;
          }

          while (v65);
          v15 = v66;
          v23 = v91;
          v19 = v92;
LABEL_52:
          LODWORD(v22) = 0;
          v72 = 32;
          while (1)
          {
            v21 = *(v67 + v72);
            v73 = __OFADD__(v22, v21);
            v22 = (v22 + v21);
            if (v73)
            {
              break;
            }

            v72 += 4;
            if (!--v14)
            {

              goto LABEL_56;
            }
          }

          __break(1u);
LABEL_75:
          __break(1u);
          goto LABEL_76;
        }

        v14 = v15[2];

        v67 = v15;
        if (v14)
        {
          goto LABEL_52;
        }

        v22 = 0;
LABEL_56:
        src.data = v26;
        v16 = *(v26 + 16);
        v74 = *(v26 + 24);
        v17 = v16 + 1;
        if (v16 >= v74 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v74 > 1), v16 + 1, 1);
          v26 = src.data;
        }

        ++v20;
        *(v26 + 16) = v17;
        *(v26 + 4 * v16 + 32) = v22;
      }

      while (v20 != v23);

      v43 = v84;
      if (v84)
      {
LABEL_64:
        v75 = MEMORY[0x1E69E7CC0];
        goto LABEL_67;
      }
    }

    else
    {

      v26 = MEMORY[0x1E69E7CC0];
      if (v43)
      {
        goto LABEL_64;
      }
    }

LABEL_66:
    v19 = v83;
    v16 = v83 >> 8;
    v17 = BYTE3(v83);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd);
    v75 = swift_allocObject();
    *(v75 + 16) = xmmword_1B7E770E0;
    *(v75 + 32) = v83;
    *(v75 + 34) = BYTE2(v83);
    *(v75 + 35) = BYTE3(v83);
LABEL_67:
    if (!v81[2])
    {
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
      goto LABEL_94;
    }

    v76 = *(v81 + 3);
    *&src.data = *(v81 + 2);
    *&src.width = v76;
    if (!v82[2])
    {
      goto LABEL_93;
    }

    v77 = *(v82 + 3);
    *&dest.data = *(v82 + 2);
    *&dest.width = v77;
    v96[0] = (v90 + 32);
    v96[1] = (v89 + 32);
    v96[2] = (v88 + 32);
    v96[3] = (v87 + 32);
    if (!((v85 | v86) >> 32))
    {
      break;
    }

LABEL_94:
    __break(1u);
LABEL_95:
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v16, 1);
    v56 = src.data;
  }

  biases[0] = v80;
  biases[1] = a9;
  biases[2] = a10;
  biases[3] = a11;
  if (v43)
  {
    flags = dword_1B7E79434[v83];
  }

  else
  {
    flags = 4;
  }

  vImageConvolveMultiKernel_ARGB8888(&src, &dest, 0, 0, 0, v96, v85, v86, (v26 + 32), biases, (v75 + 32), flags);
}

uint64_t outlined init with copy of (vImage.ConvolutionKernel2D<Int16>, vImage.ConvolutionKernel2D<Int16>, vImage.ConvolutionKernel2D<Int16>, vImage.ConvolutionKernel2D<Int16>)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Accelerate6vImageO19ConvolutionKernel2DVy_s5Int16VG_A3HtMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata instantiation function for vImage.ConvolutionKernel2D()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for vImage.ConvolutionKernel2D(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for vImage.ConvolutionKernel2D(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata completion function for vImage.EdgeMode()
{
  v0 = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t getEnumTagSinglePayload for vImage.EdgeMode(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 3;
  v7 = *(v4 + 64);
  if (v5 <= 2)
  {
    v6 = 0;
    if (v7 <= 3)
    {
      v9 = (~(-1 << (8 * v7)) - v5 + 3) >> (8 * v7);
      if (v9 > 0xFFFE)
      {
        v8 = 4;
      }

      else
      {
        v10 = 1;
        if (v9 >= 0xFF)
        {
          v10 = 2;
        }

        if (v9)
        {
          v8 = v10;
        }

        else
        {
          v8 = 0;
        }
      }
    }

    else
    {
      v8 = 1;
    }

    v7 += v8;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = a2 - v6;
  if (a2 > v6)
  {
    v12 = 8 * v7;
    if (v7 <= 3)
    {
      v14 = ((v11 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v14))
      {
        v13 = *(a1 + v7);
        if (!v13)
        {
          goto LABEL_35;
        }

        goto LABEL_22;
      }

      if (v14 > 0xFF)
      {
        v13 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_35;
        }

        goto LABEL_22;
      }

      if (v14 < 2)
      {
LABEL_35:
        if (!v6)
        {
          return 0;
        }

        goto LABEL_36;
      }
    }

    v13 = *(a1 + v7);
    if (!*(a1 + v7))
    {
      goto LABEL_35;
    }

LABEL_22:
    v15 = (v13 - 1) << v12;
    if (v7 > 3)
    {
      v15 = 0;
    }

    if (v7)
    {
      if (v7 <= 3)
      {
        v16 = v7;
      }

      else
      {
        v16 = 4;
      }

      if (v16 > 2)
      {
        if (v16 == 3)
        {
          v17 = *a1 | (*(a1 + 2) << 16);
        }

        else
        {
          v17 = *a1;
        }
      }

      else if (v16 == 1)
      {
        v17 = *a1;
      }

      else
      {
        v17 = *a1;
      }
    }

    else
    {
      v17 = 0;
    }

    return v6 + (v17 | v15) + 1;
  }

LABEL_36:
  if (!v5)
  {
    return 0;
  }

  v18 = (*(v4 + 48))(a1, v5);
  v19 = v18 >= 3;
  result = v18 - 3;
  if (result == 0 || !v19)
  {
    return 0;
  }

  return result;
}

void storeEnumTagSinglePayload for vImage.EdgeMode(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  v9 = v7 - 3;
  v10 = v8;
  if (v7 <= 2)
  {
    v9 = 0;
    if (v8 <= 3)
    {
      v12 = (~(-1 << (8 * v8)) - v7 + 3) >> (8 * v8);
      if (v12 > 0xFFFE)
      {
        v11 = 4;
      }

      else
      {
        v13 = 1;
        if (v12 >= 0xFF)
        {
          v13 = 2;
        }

        if (v12)
        {
          v11 = v13;
        }

        else
        {
          v11 = 0;
        }
      }
    }

    else
    {
      v11 = 1;
    }

    v10 = v11 + v8;
  }

  v14 = a3 >= v9;
  v15 = a3 - v9;
  if (v15 != 0 && v14)
  {
    v16 = 1;
    if (v10 <= 3)
    {
      v17 = ((v15 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      v18 = HIWORD(v17);
      if (v17 < 0x100)
      {
        v19 = 1;
      }

      else
      {
        v19 = 2;
      }

      if (v17 >= 2)
      {
        v20 = v19;
      }

      else
      {
        v20 = 0;
      }

      if (v18)
      {
        v16 = 4;
      }

      else
      {
        v16 = v20;
      }
    }

    if (v9 >= a2)
    {
LABEL_29:
      if (v16 > 1)
      {
        if (v16 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_41;
        }

        *&a1[v10] = 0;
      }

      else if (v16)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return;
        }

LABEL_41:
        if (a2 + 3 <= v7)
        {
          v27 = *(v6 + 56);

          v27();
        }

        else
        {
          if (v8 <= 3)
          {
            v24 = ~(-1 << (8 * v8));
          }

          else
          {
            v24 = -1;
          }

          if (v8)
          {
            v25 = v24 & (a2 - v7 + 2);
            if (v8 <= 3)
            {
              v26 = v8;
            }

            else
            {
              v26 = 4;
            }

            bzero(a1, v8);
            if (v26 > 2)
            {
              if (v26 == 3)
              {
                *a1 = v25;
                a1[2] = BYTE2(v25);
              }

              else
              {
                *a1 = v25;
              }
            }

            else if (v26 == 1)
            {
              *a1 = v25;
            }

            else
            {
              *a1 = v25;
            }
          }
        }

        return;
      }

      if (!a2)
      {
        return;
      }

      goto LABEL_41;
    }
  }

  else
  {
    v16 = 0;
    if (v9 >= a2)
    {
      goto LABEL_29;
    }
  }

  v21 = ~v9 + a2;
  if (v10 >= 4)
  {
    bzero(a1, v10);
    *a1 = v21;
    v22 = 1;
    if (v16 > 1)
    {
      goto LABEL_62;
    }

    goto LABEL_59;
  }

  v22 = (v21 >> (8 * v10)) + 1;
  if (!v10)
  {
LABEL_58:
    if (v16 > 1)
    {
      goto LABEL_62;
    }

    goto LABEL_59;
  }

  v23 = v21 & ~(-1 << (8 * v10));
  bzero(a1, v10);
  if (v10 == 3)
  {
    *a1 = v23;
    a1[2] = BYTE2(v23);
    goto LABEL_58;
  }

  if (v10 == 2)
  {
    *a1 = v23;
    if (v16 > 1)
    {
LABEL_62:
      if (v16 == 2)
      {
        *&a1[v10] = v22;
      }

      else
      {
        *&a1[v10] = v22;
      }

      return;
    }
  }

  else
  {
    *a1 = v21;
    if (v16 > 1)
    {
      goto LABEL_62;
    }
  }

LABEL_59:
  if (v16)
  {
    a1[v10] = v22;
  }
}

const vImage_Buffer *partial apply for implicit closure #4 in implicit closure #3 in vImage.PixelBuffer<>.convolve(with:bias:edgeMode:destination:)(const vImage_Buffer *result, const vImage_Buffer *a2, void *a3, vImagePixelCount a4, vImagePixelCount a5, const float *a6, uint32_t a7, uint32_t a8, double a9, float a10, double a11, double a12, double a13, double a14, double a15, double a16, Pixel_F a17, char a18, vImage_Flags a19)
{
  if ((a18 & 1) == 0)
  {
    return vImageConvolveWithBias_PlanarF(result, a2, a3, a4, a5, a6, a7, a8, a10, a17, a19);
  }

  __break(1u);
  return result;
}

const vImage_Buffer *partial apply for implicit closure #2 in implicit closure #1 in vImage.PixelBuffer<>.convolve(with:bias:edgeMode:destination:)(const vImage_Buffer *result, const vImage_Buffer *a2, void *a3, vImagePixelCount a4, vImagePixelCount a5, const float *a6, uint32_t a7, uint32_t a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, Pixel_F a17, char a18, vImage_Flags a19)
{
  if ((a18 & 1) == 0)
  {
    return vImageConvolve_PlanarF(result, a2, a3, a4, a5, a6, a7, a8, a17, a19);
  }

  __break(1u);
  return result;
}

uint64_t static vDSP.add<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return static vDSP.add<A>(_:_:)(a1, a2, a3, partial apply for closure #1 in static vDSP.add<A>(_:_:));
}

{
  return static vDSP.add<A>(_:_:)(a1, a2, a3, partial apply for closure #1 in static vDSP.add<A>(_:_:));
}

uint64_t partial apply for closure #1 in static vDSP.add<A>(_:_:)(uint64_t a1, uint64_t *a2)
{
  return closure #1 in static vDSP.add<A>(_:_:)(a1, a2, *(v2 + 40), *(v2 + 16), *(v2 + 24), static vDSP.add<A, B>(_:_:result:), *(v2 + 32));
}

{
  return closure #1 in static vDSP.add<A>(_:_:)(a1, a2, *(v2 + 40), *(v2 + 16), *(v2 + 24), static vDSP.add<A, B>(_:_:result:), *(v2 + 32));
}

uint64_t static vDSP.add<A, B>(_:_:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return static vDSP.add<A, B>(_:_:result:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in static vDSP.add<A, B>(_:_:result:));
}

{
  return static vDSP.add<A, B>(_:_:result:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in static vDSP.add<A, B>(_:_:result:));
}

uint64_t static vDSP.add<A, B>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return static vDSP.add<A, B>(_:_:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in static vDSP.add<A, B>(_:_:), _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSf_Tt1gq5);
}

{
  return static vDSP.add<A, B>(_:_:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in static vDSP.add<A, B>(_:_:), _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSd_Tt1gq5);
}

uint64_t static vDSP.add<A, B, C>(_:_:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  return static vDSP.add<A, B, C>(_:_:result:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, partial apply for closure #1 in static vDSP.add<A, B, C>(_:_:result:));
}

{
  return static vDSP.add<A, B, C>(_:_:result:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, partial apply for closure #1 in static vDSP.add<A, B, C>(_:_:result:));
}

uint64_t closure #1 in static vDSP.add<A, B>(_:_:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, unint64_t *a11, void (*a12)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(a9);
  v18 = lazy protocol witness table accessor for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>(a11, a9);
  a12(a3, a4, a1, a5, a6, v17, a7, a8, v18);
  result = (*(a7 + 16))(a5, a7);
  *a2 = result;
  return result;
}

uint64_t static vDSP.subtract<A, B>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return static vDSP.subtract<A, B>(_:_:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in static vDSP.subtract<A, B>(_:_:), _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSf_Tt1gq5);
}

{
  return static vDSP.subtract<A, B>(_:_:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in static vDSP.subtract<A, B>(_:_:), _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSd_Tt1gq5);
}

uint64_t static vDSP.subtract<A, B, C>(_:_:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  return static vDSP.subtract<A, B, C>(_:_:result:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, partial apply for closure #1 in static vDSP.subtract<A, B, C>(_:_:result:));
}

{
  return static vDSP.subtract<A, B, C>(_:_:result:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, partial apply for closure #1 in static vDSP.subtract<A, B, C>(_:_:result:));
}

uint64_t static vDSP.subtract<A, B>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t, void *))
{
  v16 = (*(a6 + 16))(a4, a6);
  v18[2] = a3;
  v18[3] = a4;
  v18[4] = a5;
  v18[5] = a6;
  v18[6] = a1;
  v18[7] = a2;
  return a8(v16, a7, v18);
}

uint64_t closure #1 in static vDSP.subtract<A, B>(_:_:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, unint64_t *a11, void (*a12)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(a9);
  v18 = lazy protocol witness table accessor for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>(a11, a9);
  a12(a3, a4, a1, a5, a6, v17, a7, a8, v18);
  result = (*(a8 + 16))(a6, a8);
  *a2 = result;
  return result;
}

uint64_t static vDSP.subtract<A, B, C>(_:_:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v14 = (*(*(a9 + 8) + 16))(a6);
  result = (*(a8 + 16))(a5, a8);
  if (result == v14)
  {
    result = (*(a7 + 16))(a4, a7);
    if (result == v14)
    {
      v16 = MEMORY[0x1EEE9AC00](a10);
      return (*(a9 + 16))(v16);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t static vDSP.multiply<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return static vDSP.add<A>(_:_:)(a1, a2, a3, partial apply for closure #1 in static vDSP.multiply<A>(_:_:));
}

{
  return static vDSP.add<A>(_:_:)(a1, a2, a3, partial apply for closure #1 in static vDSP.multiply<A>(_:_:));
}

uint64_t closure #1 in static vDSP.add<A>(_:_:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, float), float a7)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSrySfGMd);
  v15 = lazy protocol witness table accessor for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>(&lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Float> and conformance UnsafeMutableBufferPointer<A>, &_sSrySfGMd);
  a6(a3, a1, a4, v14, a5, v15, a7);
  result = (*(a5 + 16))(a4, a5);
  *a2 = result;
  return result;
}

uint64_t static vDSP.multiply<A, B>(_:_:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return static vDSP.add<A, B>(_:_:result:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in static vDSP.multiply<A, B>(_:_:result:));
}

{
  return static vDSP.add<A, B>(_:_:result:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in static vDSP.multiply<A, B>(_:_:result:));
}

uint64_t closure #1 in closure #1 in static vDSP.add<A, B>(_:_:result:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(void))
{
  if (!a1)
  {
    goto LABEL_6;
  }

  if (!*a3)
  {
    goto LABEL_7;
  }

  if (a4 < 0)
  {
    __break(1u);
LABEL_6:
    __break(1u);
LABEL_7:
    __break(1u);
  }

  return a5();
}

uint64_t closure #1 in static vDSP.add<A>(_:_:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, double), double a7)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSrySdGMd);
  v15 = lazy protocol witness table accessor for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>(&lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>, &_sSrySdGMd);
  a6(a3, a1, a4, v14, a5, v15, a7);
  result = (*(a5 + 16))(a4, a5);
  *a2 = result;
  return result;
}

uint64_t static vDSP.multiply<A, B>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return static vDSP.add<A, B>(_:_:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in static vDSP.multiply<A, B>(_:_:), _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSf_Tt1gq5);
}

{
  return static vDSP.add<A, B>(_:_:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in static vDSP.multiply<A, B>(_:_:), _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSd_Tt1gq5);
}

uint64_t static vDSP.multiply<A, B, C>(_:_:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  return static vDSP.add<A, B, C>(_:_:result:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, partial apply for closure #1 in static vDSP.multiply<A, B, C>(_:_:result:));
}

{
  return static vDSP.add<A, B, C>(_:_:result:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, partial apply for closure #1 in static vDSP.multiply<A, B, C>(_:_:result:));
}

uint64_t closure #1 in closure #1 in closure #1 in static vDSP.add<A, B, C>(_:_:result:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (!a3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (*a5)
  {
    if ((a6 & 0x8000000000000000) == 0)
    {
      return a7(a3, 1, result, 1);
    }

    __break(1u);
    goto LABEL_7;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t static vDSP.divide<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (*(a3 + 16))(a2, a3);
  return _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSf_Tt1gq5(v3, partial apply for closure #1 in static vDSP.divide<A>(_:_:));
}

{
  v3 = (*(a3 + 16))(a2, a3);
  return _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSd_Tt1gq5(v3, partial apply for closure #1 in static vDSP.divide<A>(_:_:));
}

{
  return static vDSP.add<A>(_:_:)(a1, a2, a3, partial apply for closure #1 in static vDSP.divide<A>(_:_:));
}

{
  return static vDSP.add<A>(_:_:)(a1, a2, a3, partial apply for closure #1 in static vDSP.divide<A>(_:_:));
}

uint64_t closure #1 in static vDSP.divide<A>(_:_:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSrySfGMd);
  v11 = lazy protocol witness table accessor for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>(&lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Float> and conformance UnsafeMutableBufferPointer<A>, &_sSrySfGMd);
  static vDSP.divide<A, B>(_:_:result:)(a3, a1, a4, v10, a5, v11);
  result = (*(a5 + 16))(a4, a5);
  *a2 = result;
  return result;
}

{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSrySdGMd);
  v11 = lazy protocol witness table accessor for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>(&lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>, &_sSrySdGMd);
  static vDSP.divide<A, B>(_:_:result:)(a3, a1, a4, v10, a5, v11);
  result = (*(a5 + 16))(a4, a5);
  *a2 = result;
  return result;
}

uint64_t static vDSP.divide<A, B>(_:_:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = (*(*(a6 + 8) + 16))(a4);
  result = (*(a5 + 16))(a3, a5);
  if (result == v9)
  {
    MEMORY[0x1EEE9AC00](result);
    return (*(a6 + 16))(partial apply for closure #1 in static vDSP.divide<A, B>(_:_:result:));
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  v9 = (*(*(a6 + 8) + 16))(a4);
  result = (*(a5 + 16))(a3, a5);
  if (result == v9)
  {
    MEMORY[0x1EEE9AC00](result);
    return (*(a6 + 16))(partial apply for closure #1 in static vDSP.divide<A, B>(_:_:result:));
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  return static vDSP.add<A, B>(_:_:result:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in static vDSP.divide<A, B>(_:_:result:));
}

{
  return static vDSP.add<A, B>(_:_:result:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in static vDSP.divide<A, B>(_:_:result:));
}

void closure #1 in closure #1 in static vDSP.divide<A, B>(_:_:result:)(const float *a1, int a2, float **a3, vDSP_Length __N, float a5)
{
  if (!a1)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v5 = a5;
  if (*a3)
  {
    if ((__N & 0x8000000000000000) == 0)
    {
      vDSP_vsdiv(a1, 1, &v5, *a3, 1, __N);
      return;
    }

    __break(1u);
    goto LABEL_6;
  }

LABEL_7:
  __break(1u);
}

uint64_t closure #1 in closure #1 in static vDSP.add<A, B>(_:_:result:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!a1)
  {
    goto LABEL_6;
  }

  if (!*a3)
  {
    goto LABEL_7;
  }

  if (a4 < 0)
  {
    __break(1u);
LABEL_6:
    __break(1u);
LABEL_7:
    __break(1u);
  }

  return a5(a1, 1);
}

uint64_t static vDSP.add<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t *))
{
  v5 = (*(a3 + 16))(a2, a3);
  return _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSf_Tt1gq5(v5, a4);
}

{
  v5 = (*(a3 + 16))(a2, a3);
  return _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSd_Tt1gq5(v5, a4);
}

uint64_t static vDSP.add<A, B>(_:_:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = (*(*(a6 + 8) + 16))(a4);
  result = (*(a5 + 16))(a3, a5);
  if (result == v11)
  {
    MEMORY[0x1EEE9AC00](result);
    return (*(a6 + 16))(a7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  v11 = (*(*(a6 + 8) + 16))(a4);
  result = (*(a5 + 16))(a3, a5);
  if (result == v11)
  {
    MEMORY[0x1EEE9AC00](result);
    return (*(a6 + 16))(a7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void closure #1 in closure #1 in static vDSP.divide<A, B>(_:_:result:)(const float *__B, int a2, float **a3, vDSP_Length __N, float a5)
{
  v6 = *MEMORY[0x1E69E9840];
  __A = a5;
  if (!__B)
  {
    goto LABEL_6;
  }

  if (!*a3)
  {
    goto LABEL_7;
  }

  if ((__N & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_6:
    __break(1u);
LABEL_7:
    __break(1u);
  }

  vDSP_svdiv(&__A, __B, 1, *a3, 1, __N);
}

void closure #1 in closure #1 in static vDSP.divide<A, B>(_:_:result:)(const double *__B, int a2, double **a3, vDSP_Length __N, double a5)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = a5;
  if (!__B)
  {
    goto LABEL_6;
  }

  if (!*a3)
  {
    goto LABEL_7;
  }

  if ((__N & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_6:
    __break(1u);
LABEL_7:
    __break(1u);
  }

  vDSP_svdivD(v5, __B, 1, *a3, 1, __N);
}

uint64_t static vDSP.divide<A, B>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return static vDSP.add<A, B>(_:_:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in static vDSP.divide<A, B>(_:_:), _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSf_Tt1gq5);
}

{
  return static vDSP.add<A, B>(_:_:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in static vDSP.divide<A, B>(_:_:), _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSd_Tt1gq5);
}

uint64_t static vDSP.divide<A, B, C>(_:_:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  return static vDSP.add<A, B, C>(_:_:result:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, partial apply for closure #1 in static vDSP.divide<A, B, C>(_:_:result:));
}

{
  return static vDSP.add<A, B, C>(_:_:result:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, partial apply for closure #1 in static vDSP.divide<A, B, C>(_:_:result:));
}

uint64_t static vDSP.add<A, B>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t, void *))
{
  v16 = (*(a5 + 16))(a3, a5);
  v18[2] = a3;
  v18[3] = a4;
  v18[4] = a5;
  v18[5] = a6;
  v18[6] = a1;
  v18[7] = a2;
  return a8(v16, a7, v18);
}

uint64_t static vDSP.add<A, B, C>(_:_:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v14 = (*(*(a9 + 8) + 16))(a6);
  result = (*(a7 + 16))(a4, a7);
  if (result == v14)
  {
    result = (*(a8 + 16))(a5, a8);
    if (result == v14)
    {
      v16 = MEMORY[0x1EEE9AC00](a10);
      return (*(a9 + 16))(v16);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in static vDSP.divide<A, B, C>(_:_:result:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t (*a7)(void))
{
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (!a3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (*a5)
  {
    if ((a6 & 0x8000000000000000) == 0)
    {
      return a7();
    }

    __break(1u);
    goto LABEL_7;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t static vDSP.addSubtract<A, B, C, D>(_:_:addResult:subtractResult:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  return static vDSP.addSubtract<A, B, C, D>(_:_:addResult:subtractResult:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, partial apply for closure #1 in static vDSP.addSubtract<A, B, C, D>(_:_:addResult:subtractResult:));
}

{
  return static vDSP.addSubtract<A, B, C, D>(_:_:addResult:subtractResult:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, partial apply for closure #1 in static vDSP.addSubtract<A, B, C, D>(_:_:addResult:subtractResult:));
}

uint64_t static vDSP.addSubtract<A, B, C, D>(_:_:addResult:subtractResult:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v15 = (*(*(a11 + 8) + 16))(a7);
  result = (*(a9 + 16))(a5, a9);
  if (result != v15)
  {
    __break(1u);
    goto LABEL_6;
  }

  result = (*(a10 + 16))(a6, a10);
  if (result != v15)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = (*(*(a12 + 8) + 16))(a8);
  if (result == v15)
  {
    v17 = MEMORY[0x1EEE9AC00](a13);
    return (*(a11 + 16))(v17);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in static vDSP.addSubtract<A, B, C, D>(_:_:addResult:subtractResult:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7, uint64_t (*a8)(uint64_t))
{
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (!a3)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (!*a5)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (*a6)
  {
    if ((a7 & 0x8000000000000000) == 0)
    {
      return a8(result);
    }

    __break(1u);
    goto LABEL_8;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t static vDSP.multiply<A, B, C>(addition:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  return static vDSP.multiply<A, B, C>(addition:_:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, partial apply for closure #1 in static vDSP.multiply<A, B, C>(addition:_:), _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSf_Tt1gq5);
}

{
  return static vDSP.multiply<A, B, C>(addition:_:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, partial apply for closure #1 in static vDSP.multiply<A, B, C>(addition:_:), _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSd_Tt1gq5);
}

uint64_t static vDSP.multiply<A, B, C, D>(addition:_:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  return static vDSP.multiply<A, B, C, D>(addition:_:result:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, partial apply for closure #1 in static vDSP.multiply<A, B, C, D>(addition:_:result:));
}

{
  return static vDSP.multiply<A, B, C, D>(addition:_:result:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, partial apply for closure #1 in static vDSP.multiply<A, B, C, D>(addition:_:result:));
}

uint64_t closure #1 in static vDSP.multiply<A, B, C>(addition:_:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, unint64_t *a13, void (*a14)(char *, char *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v31 = a8;
  v32 = a7;
  v33 = a2;
  v27 = a9;
  v28 = a1;
  v29 = a14;
  v30 = a4;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v19 = &v26 - v18;
  (*(v20 + 16))(&v26 - v18, a3, TupleTypeMetadata2);
  v21 = *(TupleTypeMetadata2 + 48);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(a11);
  v23 = lazy protocol witness table accessor for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>(a13, a11);
  v24 = v32;
  v29(v19, &v19[v21], v30, v28, a5, a6, v32, v22, v31, v27, a10, v23);
  (*(*(a6 - 8) + 8))(&v19[v21], a6);
  (*(*(a5 - 8) + 8))(v19, a5);
  result = (*(a10 + 16))(v24, a10);
  *v33 = result;
  return result;
}

uint64_t closure #1 in static vDSP.multiply<A, B>(addition:_:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(char *, char *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, float, uint64_t), float a9)
{
  v24 = a7;
  v25 = a8;
  v26 = a2;
  v23 = a1;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v16 = &v22 - v15;
  (*(v17 + 16))(&v22 - v15, a3, TupleTypeMetadata2);
  v18 = *(TupleTypeMetadata2 + 48);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSrySfGMd);
  v20 = lazy protocol witness table accessor for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>(&lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Float> and conformance UnsafeMutableBufferPointer<A>, &_sSrySfGMd);
  v25(v16, &v16[v18], v23, a4, a5, v19, a6, v24, a9, v20);
  (*(*(a5 - 8) + 8))(&v16[v18], a5);
  (*(*(a4 - 8) + 8))(v16, a4);
  result = (*(a6 + 16))(a4, a6);
  *v26 = result;
  return result;
}

uint64_t closure #1 in static vDSP.multiply<A, B>(addition:_:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(char *, char *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, double, uint64_t), double a9)
{
  v24 = a7;
  v25 = a8;
  v26 = a2;
  v23 = a1;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v16 = &v22 - v15;
  (*(v17 + 16))(&v22 - v15, a3, TupleTypeMetadata2);
  v18 = *(TupleTypeMetadata2 + 48);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSrySdGMd);
  v20 = lazy protocol witness table accessor for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>(&lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>, &_sSrySdGMd);
  v25(v16, &v16[v18], v23, a4, a5, v19, a6, v24, a9, v20);
  (*(*(a5 - 8) + 8))(&v16[v18], a5);
  (*(*(a4 - 8) + 8))(v16, a4);
  result = (*(a6 + 16))(a4, a6);
  *v26 = result;
  return result;
}

uint64_t static vDSP.multiply<A, B, C>(subtraction:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  return static vDSP.multiply<A, B, C>(addition:_:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, partial apply for closure #1 in static vDSP.multiply<A, B, C>(subtraction:_:), _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSf_Tt1gq5);
}

{
  return static vDSP.multiply<A, B, C>(addition:_:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, partial apply for closure #1 in static vDSP.multiply<A, B, C>(subtraction:_:), _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSd_Tt1gq5);
}

uint64_t static vDSP.multiply<A, B, C, D>(subtraction:_:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  return static vDSP.multiply<A, B, C, D>(addition:_:result:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, partial apply for closure #1 in static vDSP.multiply<A, B, C, D>(subtraction:_:result:));
}

{
  return static vDSP.multiply<A, B, C, D>(addition:_:result:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, partial apply for closure #1 in static vDSP.multiply<A, B, C, D>(subtraction:_:result:));
}

uint64_t static vDSP.add<A, B>(multiplication:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, float a7)
{
  return static vDSP.multiply<A, B>(addition:_:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in static vDSP.add<A, B>(multiplication:_:), a7);
}

{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v15 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v17 = &v21[-v16];
  (*(*(a3 - 8) + 16))(&v21[-v16], a1, a3);
  *&v17[*(TupleTypeMetadata2 + 48)] = a7;
  v18 = (*(a6 + 16))(a4, a6);
  v22 = a3;
  v23 = a4;
  v24 = a5;
  v25 = a6;
  v26 = v17;
  v27 = a2;
  v19 = _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSf_Tt1gq5(v18, partial apply for closure #1 in static vDSP.add<A, B>(multiplication:_:));
  (*(v15 + 8))(v17, TupleTypeMetadata2);
  return v19;
}

uint64_t static vDSP.multiply<A, B>(addition:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void *, uint64_t *), float a8)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v17 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v19 = &v23[-v18];
  (*(*(a3 - 8) + 16))(&v23[-v18], a1, a3);
  (*(*(a4 - 8) + 16))(&v19[*(TupleTypeMetadata2 + 48)], a2, a4);
  v20 = (*(a5 + 16))(a3, a5);
  v24 = a3;
  v25 = a4;
  v26 = a5;
  v27 = a6;
  v28 = v19;
  v29 = a8;
  v21 = _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSf_Tt1gq5(v20, a7);
  (*(v17 + 8))(v19, TupleTypeMetadata2);
  return v21;
}

uint64_t static vDSP.multiply<A, B, C>(addition:_:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float a9, uint64_t a10, uint64_t a11)
{
  v30 = a2;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v27 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v21 = &v26 - v20;
  (*(*(a4 - 8) + 16))(&v26 - v20, a1, a4);
  v28 = TupleTypeMetadata2;
  (*(*(a5 - 8) + 16))(&v21[*(TupleTypeMetadata2 + 48)], v30, a5);
  v22 = *(*(a10 + 8) + 16);
  v29 = a3;
  v30 = a6;
  v23 = v22(a6);
  result = (*(a7 + 16))(a4, a7);
  if (result == v23)
  {
    result = (*(a8 + 16))(a5, a8);
    if (result == v23)
    {
      v25 = MEMORY[0x1EEE9AC00](a11);
      *(&v26 - 10) = a4;
      *(&v26 - 9) = a5;
      *(&v26 - 8) = v30;
      *(&v26 - 7) = a7;
      *(&v26 - 6) = a8;
      *(&v26 - 5) = a10;
      *(&v26 - 4) = v21;
      *(&v26 - 6) = a9;
      *(&v26 - 2) = v23;
      (*(a10 + 16))(v25);
      return (*(v27 + 8))(v21, v28);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in static vDSP.multiply<A, B, C>(addition:_:result:)(uint64_t a1, float a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, float *))
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = a2;
  if (!a4)
  {
    goto LABEL_7;
  }

  if (!a1)
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
  }

  if (!*a6)
  {
    goto LABEL_9;
  }

  if (a7 < 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  return a8(a4, 1, a1, 1, &v9);
}

uint64_t static vDSP.add<A, B>(multiplication:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  return static vDSP.multiply<A, B>(addition:_:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in static vDSP.add<A, B>(multiplication:_:), a7);
}

{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v15 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v17 = &v21[-v16];
  (*(*(a3 - 8) + 16))(&v21[-v16], a1, a3);
  *&v17[*(TupleTypeMetadata2 + 48)] = a7;
  v18 = (*(a6 + 16))(a4, a6);
  v22 = a3;
  v23 = a4;
  v24 = a5;
  v25 = a6;
  v26 = v17;
  v27 = a2;
  v19 = _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSd_Tt1gq5(v18, partial apply for closure #1 in static vDSP.add<A, B>(multiplication:_:));
  (*(v15 + 8))(v17, TupleTypeMetadata2);
  return v19;
}

uint64_t static vDSP.multiply<A, B>(addition:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void *, uint64_t *), double a8)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v17 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v19 = &v23[-v18];
  (*(*(a3 - 8) + 16))(&v23[-v18], a1, a3);
  (*(*(a4 - 8) + 16))(&v19[*(TupleTypeMetadata2 + 48)], a2, a4);
  v20 = (*(a5 + 16))(a3, a5);
  v24 = a3;
  v25 = a4;
  v26 = a5;
  v27 = a6;
  v28 = v19;
  v29 = a8;
  v21 = _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSd_Tt1gq5(v20, a7);
  (*(v17 + 8))(v19, TupleTypeMetadata2);
  return v21;
}

uint64_t static vDSP.multiply<A, B, C>(addition:_:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10, uint64_t a11)
{
  v30 = a2;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v27 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v21 = &v26 - v20;
  (*(*(a4 - 8) + 16))(&v26 - v20, a1, a4);
  v28 = TupleTypeMetadata2;
  (*(*(a5 - 8) + 16))(&v21[*(TupleTypeMetadata2 + 48)], v30, a5);
  v22 = *(*(a10 + 8) + 16);
  v29 = a3;
  v30 = a6;
  v23 = v22(a6);
  result = (*(a7 + 16))(a4, a7);
  if (result == v23)
  {
    result = (*(a8 + 16))(a5, a8);
    if (result == v23)
    {
      v25 = MEMORY[0x1EEE9AC00](a11);
      *(&v26 - 10) = a4;
      *(&v26 - 9) = a5;
      *(&v26 - 8) = v30;
      *(&v26 - 7) = a7;
      *(&v26 - 6) = a8;
      *(&v26 - 5) = a10;
      *(&v26 - 4) = v21;
      *(&v26 - 3) = a9;
      *(&v26 - 2) = v23;
      (*(a10 + 16))(v25);
      return (*(v27 + 8))(v21, v28);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in static vDSP.multiply<A, B, C>(addition:_:result:)(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, void *))
{
  v9[1] = *MEMORY[0x1E69E9840];
  *v9 = a2;
  if (!a4)
  {
    goto LABEL_7;
  }

  if (!a1)
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
  }

  if (!*a6)
  {
    goto LABEL_9;
  }

  if (a7 < 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  return a8(a4, 1, a1, 1, v9);
}

uint64_t closure #1 in static vDSP.add<A, B>(multiplication:_:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24 = a2;
  v23 = a7;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v16 = &v22 - v15;
  (*(v17 + 16))(&v22 - v15, a3, TupleTypeMetadata2);
  v18 = *&v16[*(TupleTypeMetadata2 + 48)];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSrySfGMd);
  v20 = lazy protocol witness table accessor for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>(&lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Float> and conformance UnsafeMutableBufferPointer<A>, &_sSrySfGMd);
  static vDSP.add<A, B, C>(multiplication:_:result:)(v16, a4, v18, a1, a5, a6, v19, v23, a8, v20);
  (*(*(a5 - 8) + 8))(v16, a5);
  result = (*(a8 + 16))(a6, a8);
  *v24 = result;
  return result;
}

{
  v24 = a2;
  v23 = a7;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v16 = &v22 - v15;
  (*(v17 + 16))(&v22 - v15, a3, TupleTypeMetadata2);
  v18 = *&v16[*(TupleTypeMetadata2 + 48)];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSrySdGMd);
  v20 = lazy protocol witness table accessor for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>(&lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>, &_sSrySdGMd);
  static vDSP.add<A, B, C>(multiplication:_:result:)(v16, a4, v18, a1, a5, a6, v19, v23, a8, v20);
  (*(*(a5 - 8) + 8))(v16, a5);
  result = (*(a8 + 16))(a6, a8);
  *v24 = result;
  return result;
}

uint64_t static vDSP.add<A, B, C>(multiplication:_:result:)(uint64_t a1, uint64_t a2, float a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v25 = a2;
  v26 = a9;
  v24 = a6;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v16 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v18 = &v24 - v17;
  (*(*(a5 - 8) + 16))(&v24 - v17, a1, a5);
  *&v18[*(TupleTypeMetadata2 + 48)] = a3;
  v19 = (*(*(a10 + 8) + 16))(a7);
  result = (*(a8 + 16))(a5, a8);
  if (result == v19)
  {
    MEMORY[0x1EEE9AC00](result);
    v21 = v24;
    *(&v24 - 10) = a5;
    *(&v24 - 9) = v21;
    *(&v24 - 8) = v22;
    *(&v24 - 7) = a8;
    v23 = v25;
    *(&v24 - 6) = v26;
    *(&v24 - 5) = a10;
    *(&v24 - 4) = v18;
    *(&v24 - 3) = v23;
    *(&v24 - 2) = v19;
    (*(a10 + 16))(partial apply for closure #1 in static vDSP.add<A, B, C>(multiplication:_:result:));
    return (*(v16 + 8))(v18, TupleTypeMetadata2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in static vDSP.add<A, B, C>(multiplication:_:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v13 = *MEMORY[0x1E69E9840];
  v12 = *(a3 + *(swift_getTupleTypeMetadata2() + 48));
  if (!a4)
  {
    goto LABEL_7;
  }

  if (!a1)
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
  }

  if (!*a6)
  {
    goto LABEL_9;
  }

  if (a7 < 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  return MEMORY[0x1B8CB2FA0](a4, 1, &v12, a1, 1);
}

uint64_t static vDSP.add<A, B, C>(multiplication:_:result:)(uint64_t a1, uint64_t a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v25 = a2;
  v26 = a9;
  v24 = a6;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v16 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v18 = &v24 - v17;
  (*(*(a5 - 8) + 16))(&v24 - v17, a1, a5);
  *&v18[*(TupleTypeMetadata2 + 48)] = a3;
  v19 = (*(*(a10 + 8) + 16))(a7);
  result = (*(a8 + 16))(a5, a8);
  if (result == v19)
  {
    MEMORY[0x1EEE9AC00](result);
    v21 = v24;
    *(&v24 - 10) = a5;
    *(&v24 - 9) = v21;
    *(&v24 - 8) = v22;
    *(&v24 - 7) = a8;
    v23 = v25;
    *(&v24 - 6) = v26;
    *(&v24 - 5) = a10;
    *(&v24 - 4) = v18;
    *(&v24 - 3) = v23;
    *(&v24 - 2) = v19;
    (*(a10 + 16))(partial apply for closure #1 in static vDSP.add<A, B, C>(multiplication:_:result:));
    return (*(v16 + 8))(v18, TupleTypeMetadata2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void closure #1 in closure #1 in closure #1 in static vDSP.add<A, B, C>(multiplication:_:result:)(const double *a1, uint64_t a2, uint64_t a3, const double *a4, uint64_t a5, double **a6, vDSP_Length a7)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v11[0] = *(a3 + *(swift_getTupleTypeMetadata2() + 48));
  if (!a4)
  {
    goto LABEL_7;
  }

  if (!a1)
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
  }

  if (!*a6)
  {
    goto LABEL_9;
  }

  if ((a7 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  vDSP_vsmaD(a4, 1, v11, a1, 1, *a6, 1, a7);
}

uint64_t static vDSP.add<A, B, C>(multiplication:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  return static vDSP.multiply<A, B, C>(addition:_:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, partial apply for closure #1 in static vDSP.add<A, B, C>(multiplication:_:), _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSf_Tt1gq5);
}

{
  return static vDSP.multiply<A, B, C>(addition:_:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, partial apply for closure #1 in static vDSP.add<A, B, C>(multiplication:_:), _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSd_Tt1gq5);
}

uint64_t static vDSP.add<A, B, C, D>(multiplication:_:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  return static vDSP.multiply<A, B, C, D>(addition:_:result:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, partial apply for closure #1 in static vDSP.add<A, B, C, D>(multiplication:_:result:));
}

{
  return static vDSP.multiply<A, B, C, D>(addition:_:result:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, partial apply for closure #1 in static vDSP.add<A, B, C, D>(multiplication:_:result:));
}

uint64_t static vDSP.multiply<A, B, C>(addition:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t (*a11)(uint64_t, uint64_t, char *))
{
  v26 = a8;
  v27 = a11;
  v24 = a7;
  v25 = a10;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v18 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v20 = &v24 - v19;
  (*(*(a4 - 8) + 16))(&v24 - v19, a1, a4);
  (*(*(a5 - 8) + 16))(&v20[*(TupleTypeMetadata2 + 48)], a2, a5);
  v21 = (*(a9 + 16))(a6, a9);
  v29 = a4;
  v30 = a5;
  v31 = a6;
  v32 = v24;
  v33 = v26;
  v34 = a9;
  v35 = v20;
  v36 = a3;
  v22 = v27(v21, v25, v28);
  (*(v18 + 8))(v20, TupleTypeMetadata2);
  return v22;
}

uint64_t static vDSP.multiply<A, B, C, D>(addition:_:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v29 = a7;
  v30 = a3;
  v33 = a2;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v19 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v21 = &v29 - v20;
  (*(*(a5 - 8) + 16))(&v29 - v20, a1, a5);
  v31 = TupleTypeMetadata2;
  (*(*(a6 - 8) + 16))(&v21[*(TupleTypeMetadata2 + 48)], v33, a6);
  v22 = *(*(a12 + 8) + 16);
  v32 = a4;
  v33 = a8;
  v23 = v22(a8);
  result = (*(a9 + 16))(a5, a9);
  if (result == v23)
  {
    result = (*(a10 + 16))(a6, a10);
    if (result == v23)
    {
      v25 = MEMORY[0x1EEE9AC00](a13);
      *(&v29 - 12) = a5;
      *(&v29 - 11) = a6;
      v26 = v33;
      *(&v29 - 10) = v29;
      *(&v29 - 9) = v26;
      *(&v29 - 8) = a9;
      *(&v29 - 7) = a10;
      *(&v29 - 6) = v27;
      *(&v29 - 5) = a12;
      v28 = v30;
      *(&v29 - 4) = v21;
      *(&v29 - 3) = v28;
      *(&v29 - 2) = v23;
      (*(a12 + 16))(v25);
      return (*(v19 + 8))(v21, v31);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t static vDSP.subtract<A, B, C>(multiplication:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  return static vDSP.subtract<A, B, C>(multiplication:_:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, partial apply for closure #1 in static vDSP.subtract<A, B, C>(multiplication:_:), _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSf_Tt1gq5);
}

{
  return static vDSP.subtract<A, B, C>(multiplication:_:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, partial apply for closure #1 in static vDSP.subtract<A, B, C>(multiplication:_:), _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSd_Tt1gq5);
}

uint64_t static vDSP.subtract<A, B, C, D>(multiplication:_:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  return static vDSP.subtract<A, B, C, D>(multiplication:_:result:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, partial apply for closure #1 in static vDSP.subtract<A, B, C, D>(multiplication:_:result:));
}

{
  return static vDSP.subtract<A, B, C, D>(multiplication:_:result:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, partial apply for closure #1 in static vDSP.subtract<A, B, C, D>(multiplication:_:result:));
}

uint64_t static vDSP.subtract<A, B, C>(multiplication:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t (*a11)(uint64_t, uint64_t, char *))
{
  v27 = a8;
  v28 = a11;
  v25 = a9;
  v26 = a10;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v19 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v21 = &v25 - v20;
  (*(*(a5 - 8) + 16))(&v25 - v20, a1, a5);
  (*(*(a6 - 8) + 16))(&v21[*(TupleTypeMetadata2 + 48)], a2, a6);
  v22 = (*(a7 + 16))(a4, a7);
  v30 = a4;
  v31 = a5;
  v32 = a6;
  v33 = a7;
  v34 = v27;
  v35 = v25;
  v36 = v21;
  v37 = a3;
  v23 = v28(v22, v26, v29);
  (*(v19 + 8))(v21, TupleTypeMetadata2);
  return v23;
}