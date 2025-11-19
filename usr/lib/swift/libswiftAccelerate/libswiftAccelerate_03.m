uint64_t BNNS.Shape.rank.getter()
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
  v5 = _s10Accelerate4BNNSO5ShapeOWOg(v7);
  if (v5 > 0x12)
  {
    return 8;
  }

  else
  {
    return qword_1B7E77FE8[v5];
  }
}

uint64_t BNNS.Shape.init(arrayLiteral:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[2];
  result = static BNNS.defaultLayoutForDimensions(_:)(v4, &v14);
  if (v14 != 21)
  {
    if (v14 > 0x14u)
    {
      v6 = 8;
    }

    else
    {
      v6 = qword_1B7E77F40[v14];
    }

    if (v4 == v6)
    {
      v11 = v14;
      static BNNS.makeShape(size:dataLayout:stride:)(a1, &v11, &outlined read-only object #0 of BNNS.Shape.init(arrayLiteral:), v12);

      v7 = v12[7];
      *(a2 + 96) = v12[6];
      *(a2 + 112) = v7;
      *(a2 + 128) = v13;
      v8 = v12[3];
      *(a2 + 32) = v12[2];
      *(a2 + 48) = v8;
      v9 = v12[5];
      *(a2 + 64) = v12[4];
      *(a2 + 80) = v9;
      v10 = v12[1];
      *a2 = v12[0];
      *(a2 + 16) = v10;
      return result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

__n128 __swift_memcpy129_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for BNNS.Shape(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xEC && *(a1 + 129))
  {
    return (*a1 + 236);
  }

  v3 = *(a1 + 128);
  if (v3 <= 0x14)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for BNNS.Shape(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xEB)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 128) = 0;
    *result = a2 - 236;
    if (a3 >= 0xEC)
    {
      *(result + 129) = 1;
    }
  }

  else
  {
    if (a3 >= 0xEC)
    {
      *(result + 129) = 0;
    }

    if (a2)
    {
      *(result + 128) = -a2;
    }
  }

  return result;
}

uint64_t BNNS.Shape.denseTensorSize.getter()
{
  v1 = v0[7];
  v63 = v0[6];
  v64 = v1;
  v65 = *(v0 + 128);
  v2 = v0[3];
  v59 = v0[2];
  v60 = v2;
  v3 = v0[5];
  v61 = v0[4];
  v62 = v3;
  v4 = v0[1];
  v57 = *v0;
  v58 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1B7E77EA0;
  BNNS.Shape.size.getter(v55);
  *(v5 + 32) = *&v55[0];
  v55[7] = v64;
  v56 = v65;
  v55[2] = v59;
  v55[3] = v60;
  v55[5] = v62;
  v55[6] = v63;
  v55[4] = v61;
  v55[0] = v57;
  v55[1] = v58;
  BNNS.Shape.size.getter(v53);
  *(v5 + 40) = *(&v53[0] + 1);
  v53[6] = v63;
  v53[7] = v64;
  v54 = v65;
  v53[2] = v59;
  v53[3] = v60;
  v53[4] = v61;
  v53[5] = v62;
  v53[0] = v57;
  v53[1] = v58;
  BNNS.Shape.size.getter(&v44);
  *(v5 + 48) = v45;
  v50 = v63;
  v51 = v64;
  v52 = v65;
  v46 = v59;
  v47 = v60;
  v48 = v61;
  v49 = v62;
  v44 = v57;
  v45 = v58;
  BNNS.Shape.size.getter(&v35);
  *(v5 + 56) = *(&v36 + 1);
  v41 = v63;
  v42 = v64;
  v43 = v65;
  v37 = v59;
  v38 = v60;
  v39 = v61;
  v40 = v62;
  v35 = v57;
  v36 = v58;
  BNNS.Shape.size.getter(v27);
  *(v5 + 64) = v28;
  v32 = v63;
  v33 = v64;
  v34 = v65;
  v28 = v59;
  v29 = v60;
  v30 = v61;
  v31 = v62;
  v27[0] = v57;
  v27[1] = v58;
  BNNS.Shape.size.getter(v19);
  *(v5 + 72) = *(&v20 + 1);
  v24 = v63;
  v25 = v64;
  v26 = v65;
  v20 = v59;
  v21 = v60;
  v22 = v61;
  v23 = v62;
  v19[0] = v57;
  v19[1] = v58;
  BNNS.Shape.size.getter(v12);
  *(v5 + 80) = v13;
  v16 = v63;
  v17 = v64;
  v18 = v65;
  v12[2] = v59;
  v13 = v60;
  v14 = v61;
  v15 = v62;
  v12[0] = v57;
  v12[1] = v58;
  BNNS.Shape.size.getter(v11);
  *(v5 + 88) = v11[7];
  result = _s10Accelerate4BNNSO5ShapeOWOg(&v57);
  if (result > 0x12)
  {
    v7 = 8;
  }

  else
  {
    v7 = qword_1B7E77FE8[result];
  }

  v8 = 1;
  for (i = 32; ; i += 8)
  {
    v10 = *(v5 + i);
    if ((v8 * v10) >> 64 != (v8 * v10) >> 63)
    {
      break;
    }

    v8 *= v10;
    if (!--v7)
    {

      return v8;
    }
  }

  __break(1u);
  return result;
}

uint64_t BNNS.PermuteLayer.__allocating_init(input:output:permutation:filterParameters:)(__int128 *a1, __int128 *a2, char *a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v79 = *MEMORY[0x1E69E9840];
  v12 = a2[9];
  v65 = a2[8];
  v66 = v12;
  v67 = a2[10];
  v13 = a2[5];
  v61 = a2[4];
  v62 = v13;
  v14 = a2[7];
  v63 = a2[6];
  v64 = v14;
  v15 = a2[1];
  v57 = *a2;
  v58 = v15;
  v16 = a2[3];
  v59 = a2[2];
  v60 = v16;
  v17 = a1[9];
  v76 = a1[8];
  v77 = v17;
  v78 = a1[10];
  v18 = a1[5];
  v72 = a1[4];
  v73 = v18;
  v19 = a1[6];
  v75 = a1[7];
  v74 = v19;
  v20 = a1[1];
  v68 = *a1;
  v69 = v20;
  v21 = a1[2];
  v71 = a1[3];
  v70 = v21;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || *(a3 + 3) <= 0xFuLL)
  {
    if (*(a3 + 2) <= 8uLL)
    {
      v23 = 8;
    }

    else
    {
      v23 = *(a3 + 2);
    }

    a3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v23, 0, a3);
  }

  v24 = *(a3 + 2);
  if (v24 <= 7)
  {
    v25 = *(a3 + 3);
    v26 = v24 + 1;
    if (v24 >= v25 >> 1)
    {
      a3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v24 + 1, 1, a3);
    }

    *(a3 + 2) = v26;
    *&a3[8 * v24 + 32] = 0;
    if (v24 != 7)
    {
      v27 = *(a3 + 3);
      v28 = v24 + 2;
      if (v26 >= v27 >> 1)
      {
        a3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v24 + 2, 1, a3);
      }

      *(a3 + 2) = v28;
      *&a3[8 * v26 + 32] = 0;
      if (v24 <= 5)
      {
        v29 = *(a3 + 3);
        v30 = v24 + 3;
        if (v28 >= v29 >> 1)
        {
          a3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v24 + 3, 1, a3);
        }

        *(a3 + 2) = v30;
        *&a3[8 * v28 + 32] = 0;
        if (v24 != 5)
        {
          v31 = *(a3 + 3);
          v32 = v24 + 4;
          if (v30 >= v31 >> 1)
          {
            a3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v24 + 4, 1, a3);
          }

          *(a3 + 2) = v32;
          *&a3[8 * v30 + 32] = 0;
          if (v24 <= 3)
          {
            v33 = *(a3 + 3);
            v34 = v24 + 5;
            if (v32 >= v33 >> 1)
            {
              a3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v24 + 5, 1, a3);
            }

            *(a3 + 2) = v34;
            *&a3[8 * v32 + 32] = 0;
            if (v24 != 3)
            {
              v35 = *(a3 + 3);
              v36 = v24 + 6;
              if (v34 >= v35 >> 1)
              {
                a3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v24 + 6, 1, a3);
              }

              *(a3 + 2) = v36;
              *&a3[8 * v34 + 32] = 0;
              if (v24 <= 1)
              {
                v37 = *(a3 + 3);
                v38 = v24 + 7;
                if (v36 >= v37 >> 1)
                {
                  a3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v24 + 7, 1, a3);
                }

                *(a3 + 2) = v38;
                *&a3[8 * v36 + 32] = 0;
                if (!v24)
                {
                  v39 = *(a3 + 3);
                  if (v38 >= v39 >> 1)
                  {
                    a3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), 8, 1, a3);
                  }

                  *(a3 + 2) = 8;
                  *&a3[8 * v38 + 32] = 0;
                }
              }
            }
          }
        }
      }
    }
  }

  v45 = *(a3 + 4);
  v46 = *(a3 + 2);
  v43 = *(a3 + 5);
  v44 = *(a3 + 3);

  __src[8] = v76;
  __src[9] = v77;
  __src[4] = v72;
  __src[5] = v73;
  __src[6] = v74;
  __src[7] = v75;
  __src[0] = v68;
  __src[1] = v69;
  __src[2] = v70;
  __src[3] = v71;
  __src[18] = v64;
  __src[19] = v65;
  __src[20] = v66;
  __src[21] = v67;
  __src[14] = v60;
  __src[15] = v61;
  __src[16] = v62;
  __src[17] = v63;
  __src[10] = v78;
  __src[11] = v57;
  __src[12] = v58;
  __src[13] = v59;
  memcpy(__dst, __src, sizeof(__dst));
  v53 = v46;
  v54 = v44;
  v55 = v45;
  v56 = v43;
  if (a6 == 1)
  {
    v40 = 0;
  }

  else
  {
    v47 = a4;
    v48 = a5;
    v49 = a6;
    v50 = a7;
    v40 = &v47;
  }

  v41 = MEMORY[0x1B8CB1AC0](__dst, v40);
  type metadata accessor for BNNS.PermuteLayer();
  result = swift_allocObject();
  if (v41)
  {
    *(result + 16) = v41;
  }

  else
  {
    type metadata accessor for BNNS.Layer();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return result;
}

uint64_t BNNS.PermuteLayer.__deallocating_deinit()
{
  BNNSFilterDestroy(*(v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t BNNS.UnaryLayer.applyBackward(batchSize:input:output:outputGradient:generatingInputGradient:)(size_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, _OWORD *a5)
{
  v33 = *MEMORY[0x1E69E9840];
  v7 = a4[9];
  *&out_delta.stride[7] = a4[8];
  *&out_delta.data_type = v7;
  *&out_delta.table_data_type = a4[10];
  v8 = a4[5];
  *&out_delta.size[7] = a4[4];
  *&out_delta.stride[1] = v8;
  v9 = a4[7];
  *&out_delta.stride[3] = a4[6];
  *&out_delta.stride[5] = v9;
  v10 = a4[1];
  *&out_delta.flags = *a4;
  *&out_delta.size[1] = v10;
  v11 = a4[3];
  *&out_delta.size[3] = a4[2];
  *&out_delta.size[5] = v11;
  v12 = a5[9];
  *&in_delta.stride[7] = a5[8];
  *&in_delta.data_type = v12;
  *&in_delta.table_data_type = a5[10];
  v13 = a5[5];
  *&in_delta.size[7] = a5[4];
  *&in_delta.stride[1] = v13;
  v14 = a5[7];
  *&in_delta.stride[3] = a5[6];
  *&in_delta.stride[5] = v14;
  v15 = a5[1];
  *&in_delta.flags = *a5;
  *&in_delta.size[1] = v15;
  v16 = a5[3];
  *&in_delta.size[3] = a5[2];
  *&in_delta.size[5] = v16;
  v17 = *(v5 + 16);
  v18 = *(a2 + 136);
  BNNSNDArrayDescriptor.shape.getter(v30);
  v19 = BNNS.Shape.batchStride.getter();
  BNNSNDArrayDescriptor.shape.getter(v29);
  v20 = BNNS.Shape.batchStride.getter();
  v21 = *(a3 + 136);
  BNNSNDArrayDescriptor.shape.getter(v28);
  v22 = BNNS.Shape.batchStride.getter();
  BNNSNDArrayDescriptor.shape.getter(v27);
  v23 = BNNS.Shape.batchStride.getter();
  result = BNNSFilterApplyBackwardBatch(v17, a1, v18, v19, &in_delta, v20, v21, v22, &out_delta, v23, 0, 0);
  if (result)
  {
    lazy protocol witness table accessor for type BNNS.Error and conformance BNNS.Error();
    swift_allocError();
    *v25 = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t BNNS.Layer.__allocating_init(bnnsFilter:)(uint64_t a1)
{
  result = swift_allocObject();
  if (a1)
  {
    *(result + 16) = a1;
  }

  else
  {
    swift_deallocPartialClassInstance();
    return 0;
  }

  return result;
}

uint64_t BNNS.UnaryLayer.__deallocating_deinit()
{
  BNNSFilterDestroy(*(v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t BNNS.BinaryLayer.apply(batchSize:inputA:inputB:output:)(size_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a2 + 136);
  if (v5 && (v6 = *(a3 + 136)) != 0 && (v7 = *(a4 + 136)) != 0)
  {
    v18 = *(v4 + 16);
    BNNSNDArrayDescriptor.shape.getter(v17);
    v9 = BNNS.Shape.batchStride.getter();
    BNNSNDArrayDescriptor.shape.getter(v16);
    v10 = BNNS.Shape.batchStride.getter();
    BNNSNDArrayDescriptor.shape.getter(&v15);
    v11 = BNNS.Shape.batchStride.getter();
    result = BNNSFilterApplyTwoInputBatch(v18, a1, v5, v9, v6, v10, v7, v11);
    if (!result)
    {
      return result;
    }

    v13 = 0;
  }

  else
  {
    v13 = 2;
  }

  lazy protocol witness table accessor for type BNNS.Error and conformance BNNS.Error();
  swift_allocError();
  *v14 = v13;
  return swift_willThrow();
}

uint64_t BNNS.BinaryLayer.applyBackward(batchSize:inputA:inputB:output:outputGradient:generatingInputAGradient:generatingInputBGradient:)(size_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5, _OWORD *a6, _OWORD *a7)
{
  v47 = *MEMORY[0x1E69E9840];
  v10 = a5[9];
  *&out_delta.stride[7] = a5[8];
  *&out_delta.data_type = v10;
  *&out_delta.table_data_type = a5[10];
  v11 = a5[5];
  *&out_delta.size[7] = a5[4];
  *&out_delta.stride[1] = v11;
  v12 = a5[6];
  *&out_delta.stride[5] = a5[7];
  *&out_delta.stride[3] = v12;
  v13 = a5[1];
  *&out_delta.flags = *a5;
  *&out_delta.size[1] = v13;
  v14 = a5[2];
  *&out_delta.size[5] = a5[3];
  *&out_delta.size[3] = v14;
  v15 = a6[9];
  *&inA_delta.stride[7] = a6[8];
  *&inA_delta.data_type = v15;
  *&inA_delta.table_data_type = a6[10];
  v16 = a6[5];
  *&inA_delta.size[7] = a6[4];
  *&inA_delta.stride[1] = v16;
  v17 = a6[6];
  *&inA_delta.stride[5] = a6[7];
  *&inA_delta.stride[3] = v17;
  v18 = a6[1];
  *&inA_delta.flags = *a6;
  *&inA_delta.size[1] = v18;
  v19 = a6[2];
  *&inA_delta.size[5] = a6[3];
  *&inA_delta.size[3] = v19;
  v20 = a7[9];
  *&inB_delta.stride[7] = a7[8];
  *&inB_delta.data_type = v20;
  *&inB_delta.table_data_type = a7[10];
  v21 = a7[5];
  *&inB_delta.size[7] = a7[4];
  *&inB_delta.stride[1] = v21;
  v22 = a7[7];
  *&inB_delta.stride[3] = a7[6];
  *&inB_delta.stride[5] = v22;
  v23 = a7[1];
  *&inB_delta.flags = *a7;
  *&inB_delta.size[1] = v23;
  v24 = a7[3];
  *&inB_delta.size[3] = a7[2];
  *&inB_delta.size[5] = v24;
  v35 = *(v7 + 16);
  v36 = *(a2 + 136);
  BNNSNDArrayDescriptor.shape.getter(v43);
  v25 = BNNS.Shape.batchStride.getter();
  BNNSNDArrayDescriptor.shape.getter(v42);
  v26 = BNNS.Shape.batchStride.getter();
  v27 = *(a3 + 136);
  BNNSNDArrayDescriptor.shape.getter(v41);
  v28 = BNNS.Shape.batchStride.getter();
  BNNSNDArrayDescriptor.shape.getter(v40);
  v29 = BNNS.Shape.batchStride.getter();
  out = *(a4 + 136);
  BNNSNDArrayDescriptor.shape.getter(v39);
  v31 = BNNS.Shape.batchStride.getter();
  BNNSNDArrayDescriptor.shape.getter(v38);
  v32 = BNNS.Shape.batchStride.getter();
  result = BNNSFilterApplyBackwardTwoInputBatch(v35, a1, v36, v25, &inA_delta, v26, v27, v28, &inB_delta, v29, out, v31, &out_delta, v32, 0, 0);
  if (result)
  {
    lazy protocol witness table accessor for type BNNS.Error and conformance BNNS.Error();
    swift_allocError();
    *v34 = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t BNNS.UnaryLayer.__allocating_init(bnnsFilter:)(uint64_t a1)
{
  result = swift_allocObject();
  if (a1)
  {
    *(result + 16) = a1;
  }

  else
  {
    type metadata accessor for BNNS.Layer();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return result;
}

uint64_t dispatch thunk of BNNS.UnaryLayer.apply(batchSize:input:output:)(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2[17];
  v5 = *(a2 + 36);
  v6 = a2[19];
  v7 = *(a2 + 40);
  v8 = a3[17];
  v9 = *(a3 + 36);
  v10 = a3[19];
  v11 = *(a3 + 40);
  v12 = *(*v3 + 96);
  v28 = *a2;
  v29 = *(a2 + 1);
  v30 = *(a2 + 3);
  v31 = *(a2 + 5);
  v32 = *(a2 + 7);
  v33 = *(a2 + 9);
  v34 = *(a2 + 11);
  v35 = *(a2 + 13);
  v36 = *(a2 + 15);
  v37 = v4;
  v38 = v5;
  v39 = v6;
  v40 = v7;
  v41 = *(a2 + 164);
  v14 = *a3;
  v15 = *(a3 + 1);
  v16 = *(a3 + 3);
  v17 = *(a3 + 5);
  v18 = *(a3 + 7);
  v19 = *(a3 + 9);
  v20 = *(a3 + 11);
  v21 = *(a3 + 13);
  v22 = *(a3 + 15);
  v23 = v8;
  v24 = v9;
  v25 = v10;
  v26 = v11;
  v27 = *(a3 + 164);
  return v12(a1, &v28, &v14);
}

uint64_t dispatch thunk of BNNS.UnaryLayer.applyBackward(batchSize:input:output:outputGradient:generatingInputGradient:)(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v6 = a2[17];
  v7 = *(a2 + 36);
  v8 = a2[19];
  v9 = *(a2 + 40);
  v10 = a3[17];
  v11 = *(a3 + 36);
  v12 = a3[19];
  v13 = *(a3 + 40);
  v14 = a4[17];
  v15 = *(a4 + 36);
  v16 = a4[19];
  v17 = *(a4 + 40);
  v18 = a5[17];
  v19 = *(a5 + 36);
  v20 = a5[19];
  v21 = *(a5 + 40);
  v83 = *(*v5 + 104);
  v69 = *a2;
  v70 = *(a2 + 1);
  v71 = *(a2 + 3);
  v72 = *(a2 + 5);
  v73 = *(a2 + 7);
  v74 = *(a2 + 9);
  v75 = *(a2 + 11);
  v76 = *(a2 + 13);
  v77 = *(a2 + 15);
  v78 = v6;
  v79 = v7;
  v80 = v8;
  v81 = v9;
  v82 = *(a2 + 164);
  v55 = *a3;
  v56 = *(a3 + 1);
  v57 = *(a3 + 3);
  v58 = *(a3 + 5);
  v59 = *(a3 + 7);
  v60 = *(a3 + 9);
  v61 = *(a3 + 11);
  v62 = *(a3 + 13);
  v63 = *(a3 + 15);
  v64 = v10;
  v65 = v11;
  v66 = v12;
  v67 = v13;
  v68 = *(a3 + 164);
  v41 = *a4;
  v42 = *(a4 + 1);
  v43 = *(a4 + 3);
  v44 = *(a4 + 5);
  v45 = *(a4 + 7);
  v46 = *(a4 + 9);
  v47 = *(a4 + 11);
  v48 = *(a4 + 13);
  v49 = *(a4 + 15);
  v50 = v14;
  v51 = v15;
  v52 = v16;
  v53 = v17;
  v54 = *(a4 + 164);
  v27 = *a5;
  v22 = *(a5 + 3);
  v28 = *(a5 + 1);
  v29 = v22;
  v23 = *(a5 + 7);
  v30 = *(a5 + 5);
  v31 = v23;
  v24 = *(a5 + 11);
  v32 = *(a5 + 9);
  v33 = v24;
  v25 = *(a5 + 15);
  v34 = *(a5 + 13);
  v35 = v25;
  v36 = v18;
  v37 = v19;
  v38 = v20;
  v39 = v21;
  v40 = *(a5 + 164);
  return v83(a1, &v69, &v55, &v41, &v27);
}

uint64_t dispatch thunk of BNNS.BinaryLayer.apply(batchSize:inputA:inputB:output:)(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
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
  v17 = *(*v4 + 96);
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

uint64_t dispatch thunk of BNNS.BinaryLayer.applyBackward(batchSize:inputA:inputB:output:outputGradient:generatingInputAGradient:generatingInputBGradient:)(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
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
  v86 = *(*v7 + 104);
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

uint64_t vImage.PixelBuffer<>.convert(to:)(uint64_t a1)
{
  v1 = MEMORY[0x1E6958888];

  return vImage.PixelBuffer<>.convert(to:)(a1, v1);
}

{
  v1 = MEMORY[0x1E6958880];

  return vImage.PixelBuffer<>.convert(to:)(a1, v1);
}

{
  v1 = MEMORY[0x1E6958890];

  return vImage.PixelBuffer<>.convert(to:)(a1, v1);
}

{
  v1 = MEMORY[0x1E6958880];

  return vImage.PixelBuffer<>.convert(to:)(a1, v1);
}

{
  v1 = MEMORY[0x1E6958888];

  return vImage.PixelBuffer<>.convert(to:)(a1, v1);
}

{
  v1 = MEMORY[0x1E6958890];

  return vImage.PixelBuffer<>.convert(to:)(a1, v1);
}

{
  v1 = MEMORY[0x1E6958890];

  return vImage.PixelBuffer<>.convert(to:)(a1, v1);
}

{
  v1 = MEMORY[0x1E6958880];

  return vImage.PixelBuffer<>.convert(to:)(a1, v1);
}

{
  v1 = MEMORY[0x1E6958888];

  return vImage.PixelBuffer<>.convert(to:)(a1, v1);
}

uint64_t vImage.PixelBuffer<>.convert(to:)(uint64_t a1, uint64_t (*a2)(void *, void *, void))
{
  v15[4] = *MEMORY[0x1E69E9840];
  v3 = *v2;
  if (!*(*v2 + 16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v4 = v3[6];
  if (v4 < 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v5 = v3[5];
  if (v5 < 0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (!v4)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (!v5)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v6 = *a1;
  if (!*(*a1 + 16))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v7 = v6[6];
  if (v7 < 0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v8 = v6[5];
  if (v8 < 0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (!v7)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (!v8)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v4 != v7)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  if (v5 != v8)
  {
    goto LABEL_25;
  }

  v9 = v3[4];
  v10 = v6[4];
  v11 = v3[7];
  v12 = v6[7];
  v15[0] = v9;
  v15[1] = v5;
  v15[2] = 2 * v4;
  v15[3] = v11;
  v14[0] = v10;
  v14[1] = v5;
  v14[2] = 2 * v4;
  v14[3] = v12;
  return a2(v15, v14, 0);
}

{
  v15[4] = *MEMORY[0x1E69E9840];
  v3 = *v2;
  if (!*(*v2 + 16))
  {
    __break(1u);
    goto LABEL_16;
  }

  v4 = v3[6];
  if ((v4 & 0x8000000000000000) != 0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v5 = v3[5];
  if (v5 < 0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (!v4)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v6 = *a1;
  if (!*(*a1 + 16))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v7 = v6[6];
  if (v7 < 0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v8 = v6[5];
  if (v8 < 0)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (!v7)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (!v8)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v4 != v7)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v5 != v8)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  if (v4 >> 62)
  {
    goto LABEL_27;
  }

  v9 = v3[4];
  v10 = v6[4];
  v11 = v3[7];
  v12 = v6[7];
  v15[0] = v9;
  v15[1] = v5;
  v15[2] = 4 * v4;
  v15[3] = v11;
  v14[0] = v10;
  v14[1] = v5;
  v14[2] = 4 * v4;
  v14[3] = v12;
  return a2(v15, v14, 0);
}

{
  v15[4] = *MEMORY[0x1E69E9840];
  v3 = *v2;
  if (!*(*v2 + 16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v4 = v3[6];
  if (v4 < 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v5 = v3[5];
  if (v5 < 0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (!v4)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (!v5)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v6 = *a1;
  if (!*(*a1 + 16))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v7 = v6[6];
  if (v7 < 0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v8 = v6[5];
  if (v8 < 0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (!v7)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (!v8)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v4 != v7)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  if (v5 != v8)
  {
    goto LABEL_25;
  }

  v9 = v3[4];
  v10 = v3[7];
  v15[0] = v9;
  v15[1] = v5;
  v15[2] = v4;
  v15[3] = v10;
  v11 = v6[4];
  v12 = v6[7];
  v14[0] = v11;
  v14[1] = v5;
  v14[2] = v4;
  v14[3] = v12;
  return a2(v15, v14, 0);
}

uint64_t vImage.FloodFillConnectivity.init(rawValue:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 8)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (result == 4)
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

uint64_t vImage.FloodFillConnectivity.rawValue.getter()
{
  if (*v0)
  {
    return 8;
  }

  else
  {
    return 4;
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance vImage.FloodFillConnectivity()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    v2 = 8;
  }

  else
  {
    v2 = 4;
  }

  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance vImage.FloodFillConnectivity()
{
  if (*v0)
  {
    v1 = 8;
  }

  else
  {
    v1 = 4;
  }

  Hasher._combine(_:)(v1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance vImage.FloodFillConnectivity()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    v2 = 8;
  }

  else
  {
    v2 = 4;
  }

  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

_DWORD *protocol witness for RawRepresentable.init(rawValue:) in conformance vImage.FloodFillConnectivity@<X0>(_DWORD *result@<X0>, char *a2@<X8>)
{
  if (*result == 8)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result == 4)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  *a2 = v3;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance vImage.FloodFillConnectivity(int *a1@<X8>)
{
  if (*v1)
  {
    v2 = 8;
  }

  else
  {
    v2 = 4;
  }

  *a1 = v2;
}

vImage_Error vImage.PixelBuffer<>.floodFill(from:newColor:connectivity:)(Pixel_8 a1, _BYTE *a2, double a3, double a4)
{
  v15 = *MEMORY[0x1E69E9840];
  if ((_ss17FixedWidthIntegerPsE8_convert4fromxSg5value_Sb5exacttqd___tSBRd__lFZSu_12CoreGraphics7CGFloatVTt1gq5(&seedY, a3) & 1) == 0 || LOBYTE(seedY.height) == 1)
  {
    goto LABEL_11;
  }

  data = seedY.data;
  if ((_ss17FixedWidthIntegerPsE8_convert4fromxSg5value_Sb5exacttqd___tSBRd__lFZSu_12CoreGraphics7CGFloatVTt1gq5(&seedY, a4) & 1) == 0 || LOBYTE(seedY.height) == 1)
  {
LABEL_12:
    __break(1u);
  }

  v9 = *v4;
  if (!*(*v4 + 16))
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v10 = seedY.data;
  v11 = *(v9 + 48);
  *&seedY.data = *(v9 + 32);
  *&seedY.width = v11;
  if (*a2)
  {
    v12 = 8;
  }

  else
  {
    v12 = 4;
  }

  return vImageFloodFill_Planar8(&seedY, 0, data, v10, a1, v12, 0);
}

vImage_Error vImage.PixelBuffer<>.floodFill(from:newColor:connectivity:)(Pixel_16U a1, _BYTE *a2, double a3, double a4)
{
  v15 = *MEMORY[0x1E69E9840];
  if ((_ss17FixedWidthIntegerPsE8_convert4fromxSg5value_Sb5exacttqd___tSBRd__lFZSu_12CoreGraphics7CGFloatVTt1gq5(&seedY, a3) & 1) == 0 || LOBYTE(seedY.height) == 1)
  {
    goto LABEL_11;
  }

  data = seedY.data;
  if ((_ss17FixedWidthIntegerPsE8_convert4fromxSg5value_Sb5exacttqd___tSBRd__lFZSu_12CoreGraphics7CGFloatVTt1gq5(&seedY, a4) & 1) == 0 || LOBYTE(seedY.height) == 1)
  {
LABEL_12:
    __break(1u);
  }

  v9 = *v4;
  if (!*(*v4 + 16))
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v10 = seedY.data;
  v11 = *(v9 + 48);
  *&seedY.data = *(v9 + 32);
  *&seedY.width = v11;
  if (*a2)
  {
    v12 = 8;
  }

  else
  {
    v12 = 4;
  }

  return vImageFloodFill_Planar16U(&seedY, 0, data, v10, a1, v12, 0);
}

vImage_Error vImage.PixelBuffer<>.floodFill(from:newColor:connectivity:)(uint8_t a1, uint8_t a2, uint8_t a3, uint8_t a4, _BYTE *a5, double a6, double a7)
{
  v22 = *MEMORY[0x1E69E9840];
  if ((_ss17FixedWidthIntegerPsE8_convert4fromxSg5value_Sb5exacttqd___tSBRd__lFZSu_12CoreGraphics7CGFloatVTt1gq5(&srcDest, a6) & 1) == 0 || LOBYTE(srcDest.height) == 1)
  {
    goto LABEL_11;
  }

  data = srcDest.data;
  if ((_ss17FixedWidthIntegerPsE8_convert4fromxSg5value_Sb5exacttqd___tSBRd__lFZSu_12CoreGraphics7CGFloatVTt1gq5(&srcDest, a7) & 1) == 0 || LOBYTE(srcDest.height) == 1)
  {
LABEL_12:
    __break(1u);
  }

  v15 = *v7;
  if (!*(*v7 + 16))
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v16 = srcDest.data;
  v17 = *(v15 + 48);
  *&srcDest.data = *(v15 + 32);
  *&srcDest.width = v17;
  v20[0] = a1;
  v20[1] = a2;
  v20[2] = a3;
  v20[3] = a4;
  if (*a5)
  {
    v18 = 8;
  }

  else
  {
    v18 = 4;
  }

  return vImageFloodFill_ARGB8888(&srcDest, 0, data, v16, v20, v18, 0);
}

vImage_Error vImage.PixelBuffer<>.floodFill(from:newColor:connectivity:)(uint16_t a1, uint16_t a2, uint16_t a3, uint16_t a4, _BYTE *a5, double a6, double a7)
{
  v22 = *MEMORY[0x1E69E9840];
  if ((_ss17FixedWidthIntegerPsE8_convert4fromxSg5value_Sb5exacttqd___tSBRd__lFZSu_12CoreGraphics7CGFloatVTt1gq5(&srcDest, a6) & 1) == 0 || LOBYTE(srcDest.height) == 1)
  {
    goto LABEL_11;
  }

  data = srcDest.data;
  if ((_ss17FixedWidthIntegerPsE8_convert4fromxSg5value_Sb5exacttqd___tSBRd__lFZSu_12CoreGraphics7CGFloatVTt1gq5(&srcDest, a7) & 1) == 0 || LOBYTE(srcDest.height) == 1)
  {
LABEL_12:
    __break(1u);
  }

  v15 = *v7;
  if (!*(*v7 + 16))
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v16 = srcDest.data;
  v17 = *(v15 + 48);
  *&srcDest.data = *(v15 + 32);
  *&srcDest.width = v17;
  v20[0] = a1;
  v20[1] = a2;
  v20[2] = a3;
  v20[3] = a4;
  if (*a5)
  {
    v18 = 8;
  }

  else
  {
    v18 = 4;
  }

  return vImageFloodFill_ARGB16U(&srcDest, 0, data, v16, v20, v18, 0);
}

uint64_t _ss17FixedWidthIntegerPsE8_convert4fromxSg5value_Sb5exacttqd___tSBRd__lFZSu_12CoreGraphics7CGFloatVTt1gq5(uint64_t a1, double a2)
{
  v2 = (*&a2 >> 52) & 0x7FFLL;
  v3 = *&a2 & 0xFFFFFFFFFFFFFLL;
  if (!(v2 | *&a2 & 0xFFFFFFFFFFFFFLL))
  {
    v5 = 0;
    v6 = 0;
    v4 = 1;
    goto LABEL_30;
  }

  v4 = 0;
  v5 = 0;
  v6 = 1;
  if (v2 != 2047 && a2 > -1.0)
  {
    if (v2)
    {
      if (v2 > 0x43E)
      {
        v5 = 0;
        v4 = 0;
        goto LABEL_30;
      }

      v4 = v2 - 1023;
      v7 = __clz(__rbit64(v3));
      v2 = 52 - v7;
      if (!v3)
      {
        v2 = 0;
      }
    }

    else
    {
      if (!v3)
      {
        __break(1u);
LABEL_34:
        v12 = 0;
        if (v4 == -64)
        {
          v11 = 0;
          goto LABEL_29;
        }

        goto LABEL_38;
      }

      v8 = __clz(v3);
      v4 = -1011 - v8;
      v7 = __clz(__rbit64(v3));
      v2 = (v8 ^ 0x3F) - v7;
    }

    v9 = v2 + v7;
    v10 = v4 - (v2 + v7);
    if (v9 > 63)
    {
      if (v10 >= -64 && v10 <= 64)
      {
        if ((v10 & 0x8000000000000000) == 0)
        {
LABEL_15:
          if (v10 != 64)
          {
            v11 = v3 << v10;
            if (v4 < -64)
            {
LABEL_17:
              v12 = 0;
LABEL_29:
              v6 = 0;
              v5 = v11 | v12;
              v4 = v4 >= v2;
              goto LABEL_30;
            }

            goto LABEL_27;
          }

          goto LABEL_20;
        }

LABEL_25:
        if (v10 != -64)
        {
          v11 = v3 >> -v10;
          if (v4 < -64)
          {
            goto LABEL_17;
          }

LABEL_27:
          if ((v4 & 0x8000000000000000) == 0)
          {
            goto LABEL_28;
          }

          if (v4 == -64)
          {
            goto LABEL_17;
          }

          v12 = v11;
LABEL_38:
          v11 = v12;
          goto LABEL_17;
        }
      }
    }

    else if (v10 >= -64 && v10 <= 64)
    {
      if ((v10 & 0x8000000000000000) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_25;
    }

LABEL_20:
    if (v4 < -64)
    {
      v12 = 0;
      v11 = 0;
      goto LABEL_29;
    }

    if ((v4 & 0x8000000000000000) == 0)
    {
      v11 = 0;
LABEL_28:
      v12 = 1 << v4;
      goto LABEL_29;
    }

    goto LABEL_34;
  }

LABEL_30:
  *a1 = v5;
  *(a1 + 8) = v6;
  return v4;
}

unint64_t lazy protocol witness table accessor for type vImage.FloodFillConnectivity and conformance vImage.FloodFillConnectivity()
{
  result = lazy protocol witness table cache variable for type vImage.FloodFillConnectivity and conformance vImage.FloodFillConnectivity;
  if (!lazy protocol witness table cache variable for type vImage.FloodFillConnectivity and conformance vImage.FloodFillConnectivity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type vImage.FloodFillConnectivity and conformance vImage.FloodFillConnectivity);
  }

  return result;
}

unint64_t _ss17FixedWidthIntegerPsE8_convert4fromxSg5value_Sb5exacttqd___tSBRd__lFZSi_12CoreGraphics7CGFloatVTt1g5(uint64_t a1, double a2)
{
  v3 = (*&a2 >> 52) & 0x7FFLL;
  v4 = *&a2 & 0xFFFFFFFFFFFFFLL;
  v5 = v3 | *&a2 & 0xFFFFFFFFFFFFFLL;
  if (!v5)
  {
    LOBYTE(v4) = 0;
    v3 = 1;
    goto LABEL_30;
  }

  if (v3 == 2047)
  {
    goto LABEL_42;
  }

  if (v3)
  {
    if (v3 > 0x43E)
    {
      goto LABEL_42;
    }

    v5 = v3 - 1023;
    v6 = __clz(__rbit64(v4));
    if (v4)
    {
      v7 = 52 - v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    if (!v4)
    {
      goto LABEL_36;
    }

    v8 = __clz(v4);
    v5 = -1011 - v8;
    v6 = __clz(__rbit64(v4));
    v7 = (v8 ^ 0x3F) - v6;
  }

  v3 = v5 >= v7;
  v9 = v7 + v6;
  v2 = v5 - v9;
  if (v9 > 63)
  {
    if (v2 < -64 || v2 > 64)
    {
      goto LABEL_16;
    }
  }

  else if (v2 < -64 || v2 > 64)
  {
    goto LABEL_16;
  }

  if (v2 < 0)
  {
    goto LABEL_37;
  }

  if (v2 != 64)
  {
    v4 <<= v2;
    if (v5 != 63)
    {
      goto LABEL_22;
    }

LABEL_39:
    if (a2 < 0.0 && !v4)
    {
      v5 = 0x8000000000000000;
      goto LABEL_30;
    }

    goto LABEL_42;
  }

LABEL_16:
  if (v5 == 63)
  {
    if (a2 < 0.0)
    {
      LOBYTE(v4) = 0;
      v5 = 0x8000000000000000;
      goto LABEL_30;
    }

LABEL_42:
    v5 = 0;
    v3 = 0;
    LOBYTE(v4) = 1;
    goto LABEL_30;
  }

  v2 = 0;
  v4 = 0;
  if (v5 < 0)
  {
    goto LABEL_25;
  }

LABEL_24:
  v2 = 1 << v5;
LABEL_25:
  while (1)
  {
    v5 = v4 | v2;
    if (a2 >= 0.0)
    {
      break;
    }

    if ((v4 & 0x8000000000000000) == 0)
    {
      LOBYTE(v4) = 0;
      v5 = -v5;
      goto LABEL_30;
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    if (v2 == -64)
    {
      goto LABEL_16;
    }

    v4 >>= -v2;
    if (v5 == 63)
    {
      goto LABEL_39;
    }

LABEL_22:
    if ((v5 & 0x8000000000000000) == 0)
    {
      goto LABEL_24;
    }

    v2 = 0;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    goto LABEL_35;
  }

  LOBYTE(v4) = 0;
LABEL_30:
  *a1 = v5;
  *(a1 + 8) = v4;
  return v3;
}

uint64_t BNNSGraph.CompileOptions.CompileOptionsRef.__deallocating_deinit()
{
  BNNSGraphCompileOptionsDestroy();

  return swift_deallocClassInstance();
}

uint64_t BNNSGraph.CompileOptions.init(useSingleThread:generateDebugInfo:optimizationPreference:)@<X0>(unsigned int *a1@<X2>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  type metadata accessor for BNNSGraph.CompileOptions.CompileOptionsRef();
  v4 = swift_allocObject();
  *(v4 + 16) = BNNSGraphCompileOptionsMakeDefault();
  *(v4 + 24) = v5;
  *a2 = v4;
  BNNSGraphCompileOptionsSetTargetSingleThread();
  BNNSGraphCompileOptionsSetGenerateDebugInfo();
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);

  return MEMORY[0x1EEDB1260](v6, v7, v3);
}

uint64_t (*BNNSGraph.CompileOptions.useSingleThread.modify(uint64_t a1))(unsigned __int8 *a1, uint64_t a2)
{
  *a1 = *v1;
  *(a1 + 8) = BNNSGraphCompileOptionsGetTargetSingleThread();
  return BNNSGraph.CompileOptions.useSingleThread.modify;
}

uint64_t (*BNNSGraph.CompileOptions.generateDebugInfo.modify(uint64_t a1))(unsigned __int8 *a1, uint64_t a2)
{
  *a1 = *v1;
  *(a1 + 8) = BNNSGraphCompileOptionsGetGenerateDebugInfo();
  return BNNSGraph.CompileOptions.generateDebugInfo.modify;
}

uint64_t BNNSGraph.CompileOptions.optimizationPreference.getter@<X0>(_DWORD *a1@<X8>)
{
  result = BNNSGraphCompileOptionsGetOptimizationPreference();
  *a1 = result;
  return result;
}

uint64_t (*BNNSGraph.CompileOptions.optimizationPreference.modify(uint64_t a1))(unsigned int *a1)
{
  *a1 = *v1;
  *(a1 + 8) = BNNSGraphCompileOptionsGetOptimizationPreference();
  return BNNSGraph.CompileOptions.optimizationPreference.modify;
}

uint64_t BNNSGraph.Context.deinit()
{
  BNNSGraphContextDestroy_v2();
  v1 = *(v0 + 16);
  if (v1)
  {
    MEMORY[0x1B8CB2C50](v1, -1, -1);
  }

  return v0;
}

uint64_t BNNSGraph.Context.__deallocating_deinit()
{
  BNNSGraphContextDestroy_v2();
  v1 = *(v0 + 16);
  if (v1)
  {
    MEMORY[0x1B8CB2C50](v1, -1, -1);
  }

  return swift_deallocClassInstance();
}

uint64_t BNNSGraph.Context.__allocating_init(compileFromPath:functionName:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  swift_allocObject();
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = BNNSGraph.Context.__allocating_init(compileFromPath:functionName:options:);

  return BNNSGraph.Context.init(compileFromPath:functionName:options:)(a1, a2, a3, a4, a5);
}

uint64_t BNNSGraph.Context.__allocating_init(compileFromPath:functionName:options:)(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t BNNSGraph.Context.init(compileFromPath:functionName:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = *a5;
  v6[6] = v5;
  v6[7] = v7;
  return MEMORY[0x1EEE6DFA0](BNNSGraph.Context.init(compileFromPath:functionName:options:), 0, 0);
}

uint64_t BNNSGraph.Context.init(compileFromPath:functionName:options:)()
{
  v1 = v0[6];
  v2 = v0[5];
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
  String.utf8CString.getter();

  if (v2)
  {
    String.utf8CString.getter();
  }

  v3 = v0[6];
  v4 = BNNSGraphCompileFromFile_v2();
  v6 = v5;
  swift_unknownObjectRelease();

  v3[2] = v4;
  v3[3] = v6;
  v7 = BNNSGraphContextMake();
  v3[4] = v7;
  v3[5] = v8;
  if (v3[3] && v3[2])
  {
    if (v8)
    {
      v9 = v7 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (!v9)
    {
      BNNSGraphContextSetArgumentType();

      v14 = v0[1];
      v15 = v0[6];

      return v14(v15);
    }

    lazy protocol witness table accessor for type BNNSGraph.Error and conformance BNNSGraph.Error();
    swift_allocError();
    *v10 = xmmword_1B7E781E0;
  }

  else
  {
    lazy protocol witness table accessor for type BNNSGraph.Error and conformance BNNSGraph.Error();
    swift_allocError();
    *v11 = 0;
    v11[1] = 0;
  }

  swift_willThrow();

  v12 = v0[1];

  return v12();
}

unint64_t lazy protocol witness table accessor for type BNNSGraph.Error and conformance BNNSGraph.Error()
{
  result = lazy protocol witness table cache variable for type BNNSGraph.Error and conformance BNNSGraph.Error;
  if (!lazy protocol witness table cache variable for type BNNSGraph.Error and conformance BNNSGraph.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BNNSGraph.Error and conformance BNNSGraph.Error);
  }

  return result;
}

uint64_t BNNSGraph.Context.__allocating_init(compileFromPath:functionName:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  BNNSGraph.Context.init(compileFromPath:functionName:options:)(a1, a2, a3, a4);
  return v8;
}

uint64_t BNNSGraph.Context.init(compileFromPath:functionName:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 48) = 0;
  *(v4 + 56) = 0;
  String.utf8CString.getter();

  if (a4)
  {
    String.utf8CString.getter();
  }

  v6 = BNNSGraphCompileFromFile_v2();
  v8 = v7;

  swift_unknownObjectRelease();
  *(v4 + 16) = v6;
  *(v4 + 24) = v8;
  v9 = BNNSGraphContextMake();
  *(v4 + 32) = v9;
  *(v4 + 40) = v10;
  if (!*(v4 + 24) || !*(v4 + 16))
  {
    lazy protocol witness table accessor for type BNNSGraph.Error and conformance BNNSGraph.Error();
    swift_allocError();
    *v13 = 0;
    v13[1] = 0;
    goto LABEL_12;
  }

  if (v10)
  {
    v11 = v9 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    lazy protocol witness table accessor for type BNNSGraph.Error and conformance BNNSGraph.Error();
    swift_allocError();
    *v12 = xmmword_1B7E781E0;
LABEL_12:
    swift_willThrow();

    goto LABEL_13;
  }

  BNNSGraphContextSetArgumentType();
LABEL_13:

  return v4;
}

uint64_t BNNSGraph.Context.setDynamicShapes(_:forFunction:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](BNNSGraph.Context.setDynamicShapes(_:forFunction:), 0, 0);
}

uint64_t BNNSGraph.Context.setDynamicShapes(_:forFunction:)()
{
  v2 = *(v0 + 16);
  v3 = *(v2 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v63 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
    v5 = 0;
    v60 = v63;
    __dst = v3;
    v57 = v2 + 32;
    while (1)
    {
      v6 = (v57 + 16 * v5);
      v7 = *v6;
      if (*v6)
      {
        v0 = v6[1];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7 & ~(v7 >> 63), 0);
        v8 = v7 < 1;
        v9 = v7 - 1;
        if (v8)
        {
          goto LABEL_78;
        }

        v10 = *v0;
        if ((*v0 & 0x8000000000000000) != 0)
        {
LABEL_70:
          __break(1u);
LABEL_71:
          v1 = MEMORY[0x1E69E7CC0];

          goto LABEL_34;
        }

        v11 = v4;
        v1 = *(v4 + 16);
        v4 = v0 + 8;
        while (1)
        {
          v12 = *(v11 + 24);
          v0 = v1 + 1;
          if (v1 >= v12 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v1 + 1, 1);
          }

          *(v11 + 16) = v0;
          *(v11 + 8 * v1 + 32) = v10;
          if (!v9)
          {
            break;
          }

          v13 = *v4;
          v4 += 8;
          v10 = v13;
          --v9;
          ++v1;
          if (v13 < 0)
          {
            goto LABEL_70;
          }
        }

        v14 = v1 + 1;
        v4 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v14 = *(v4 + 16);
        v11 = v4;
      }

      v15 = v60;
      if (v14 >> 60)
      {
        goto LABEL_75;
      }

      v1 = swift_slowAlloc();
      if (v14)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14, 0);
        v16 = v4;
        v4 = 32;
        v17 = v14;
        while (1)
        {
          v18 = *(v11 + v4);
          if (v18 < 0)
          {
            break;
          }

          v20 = v16[2];
          v19 = v16[3];
          v0 = v20 + 1;
          if (v20 >= v19 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1);
          }

          v16[2] = v0;
          v16[v20 + 4] = v18;
          v4 += 8;
          if (!--v17)
          {

            v4 = MEMORY[0x1E69E7CC0];
            v3 = __dst;
            v15 = v60;
            goto LABEL_23;
          }
        }

LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
        goto LABEL_76;
      }

      v16 = v4;
LABEL_23:
      memcpy(v1, v16 + 4, 8 * v14);

      v0 = *(v15 + 16);
      v21 = *(v15 + 24);
      v22 = v0 + 1;
      if (v0 >= v21 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v0 + 1, 1);
      }

      ++v5;
      *(v15 + 16) = v22;
      v60 = v15;
      v23 = v15 + 16 * v0;
      *(v23 + 32) = v14;
      *(v23 + 40) = v1;
      if (v5 == v3)
      {
        goto LABEL_29;
      }
    }
  }

  v22 = *(MEMORY[0x1E69E7CC0] + 16);
  if (!v22)
  {
    goto LABEL_71;
  }

  v15 = MEMORY[0x1E69E7CC0];
LABEL_29:
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v22, 0);
  v1 = v4;
  v24 = *(v4 + 16);
  v25 = 32;
  do
  {
    v26 = *(v15 + v25);
    v27 = *(v4 + 24);
    if (v24 >= v27 >> 1)
    {
      v61 = *(v15 + v25);
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v24 + 1, 1);
      v26 = v61;
    }

    *(v4 + 16) = v24 + 1;
    *(v4 + 16 * v24 + 32) = v26;
    v25 += 16;
    ++v24;
    --v22;
  }

  while (v22);

  v0 = v52;
LABEL_34:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_80;
  }

  while (1)
  {
    if (*(v0 + 32))
    {
      String.utf8CString.getter();
    }

    v54 = v1 + 32;
    BNNSGraphContextSetDynamicShapes_v2();
    swift_unknownObjectRelease();
    v28 = *(v1 + 16);
    if (!v28)
    {
      break;
    }

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v28, 0);
    v29 = 0;
    v30 = v4;
    __n = v1;
    v53 = v28;
    while (v29 < *(v1 + 16))
    {
      v31 = (v54 + 16 * v29);
      v0 = *v31;
      v32 = v31[1];
      if (*v31)
      {
        v33 = v31[1];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v0 & ~(v0 >> 63), 0);
        v34 = v0 - 1;
        if (v0 < 1)
        {
          goto LABEL_79;
        }

        v1 = *v33;
        if ((*v33 & 0x8000000000000000) != 0)
        {
LABEL_72:
          __break(1u);
          goto LABEL_73;
        }

        v35 = v30;
        v32 = v33;
        v36 = *(v4 + 16);
        v37 = v33 + 1;
        while (1)
        {
          v38 = *(v4 + 24);
          v0 = v36 + 1;
          if (v36 >= v38 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v36 + 1, 1);
            v32 = v33;
          }

          *(v4 + 16) = v0;
          *(v4 + 8 * v36 + 32) = v1;
          if (!v34)
          {
            break;
          }

          v39 = *v37++;
          v1 = v39;
          --v34;
          ++v36;
          if ((v39 & 0x8000000000000000) != 0)
          {
            goto LABEL_72;
          }
        }

        v40 = v36 + 1;
        v1 = __n;
        v30 = v35;
        if ((v36 + 1) >> 60)
        {
          goto LABEL_77;
        }
      }

      else
      {
        v40 = *(v4 + 16);
        if (v40 >> 60)
        {
          goto LABEL_77;
        }
      }

      v62 = v32;
      v41 = swift_slowAlloc();
      v42 = v41;
      if (v40)
      {
        __dsta = v41;
        v58 = v30;
        v64 = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v40, 0);
        v43 = v64;
        v44 = 32;
        v1 = v40;
        while (1)
        {
          v45 = *(v4 + v44);
          if (v45 < 0)
          {
            goto LABEL_74;
          }

          v47 = *(v64 + 16);
          v46 = *(v64 + 24);
          v0 = v47 + 1;
          if (v47 >= v46 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v46 > 1), v47 + 1, 1);
          }

          *(v64 + 16) = v0;
          *(v64 + 8 * v47 + 32) = v45;
          v44 += 8;
          if (!--v1)
          {

            v4 = MEMORY[0x1E69E7CC0];
            v30 = v58;
            v1 = __n;
            v42 = __dsta;
            goto LABEL_60;
          }
        }
      }

      v4 = MEMORY[0x1E69E7CC0];
      v43 = MEMORY[0x1E69E7CC0];
LABEL_60:
      memcpy(v42, (v43 + 32), 8 * v40);

      if (v62)
      {
        MEMORY[0x1B8CB2C50](v62, -1, -1);
      }

      v0 = *(v30 + 16);
      v48 = *(v30 + 24);
      if (v0 >= v48 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v48 > 1), v0 + 1, 1);
      }

      ++v29;
      *(v30 + 16) = v0 + 1;
      v49 = v30 + 16 * v0;
      *(v49 + 32) = v40;
      *(v49 + 40) = v42;
      if (v29 == v53)
      {

        v0 = v52;
        goto LABEL_67;
      }
    }

LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    v1 = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
  }

  v30 = MEMORY[0x1E69E7CC0];
LABEL_67:
  v50 = *(v0 + 8);

  return v50(v30);
}

char *BNNSGraph.Shape.dimensions.getter()
{
  v1 = *v0;
  result = MEMORY[0x1E69E7CC0];
  if (!*v0)
  {
    return result;
  }

  v3 = v0[1];
  v11 = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1 & ~(v1 >> 63), 0);
  v4 = v1 < 1;
  v5 = v1 - 1;
  if (v4)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v6 = *v3;
  if (*v3 < 0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  result = v11;
  v7 = *(v11 + 16);
  v8 = v3 + 1;
  while (1)
  {
    v12 = result;
    v9 = *(result + 3);
    if (v7 >= v9 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v7 + 1, 1);
      result = v12;
    }

    *(result + 2) = v7 + 1;
    *&result[8 * v7 + 32] = v6;
    if (!v5)
    {
      return result;
    }

    v10 = *v8++;
    v6 = v10;
    --v5;
    ++v7;
    if (v10 < 0)
    {
      goto LABEL_11;
    }
  }
}

uint64_t BNNSGraph.Shape.init(_:)@<X0>(uint64_t result@<X0>, unint64_t *a2@<X8>)
{
  v3 = *(result + 16);
  if (v3 >> 60)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v4 = result;
  v5 = swift_slowAlloc();
  if (v3)
  {
    v12 = a2;
    v13 = MEMORY[0x1E69E7CC0];
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
    v6 = 32;
    v7 = v13;
    v8 = v3;
    while (1)
    {
      v9 = *(v4 + v6);
      if (v9 < 0)
      {
        break;
      }

      v11 = *(v13 + 16);
      v10 = *(v13 + 24);
      if (v11 >= v10 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
      }

      *(v13 + 16) = v11 + 1;
      *(v13 + 8 * v11 + 32) = v9;
      v6 += 8;
      if (!--v8)
      {

        a2 = v12;
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_12;
  }

  v7 = MEMORY[0x1E69E7CC0];
LABEL_10:
  memcpy(v5, (v7 + 32), 8 * v3);

  *a2 = v3;
  a2[1] = v5;
  return result;
}

uint64_t BNNSGraph.Context.setBatchSize(_:forFunction:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](BNNSGraph.Context.setBatchSize(_:forFunction:), 0, 0);
}

uint64_t BNNSGraph.Context.setBatchSize(_:forFunction:)()
{
  if ((v0[2] & 0x8000000000000000) == 0)
  {
    if (v0[4])
    {
      String.utf8CString.getter();
    }

    BNNSGraphContextSetBatchSize_v2();
    swift_unknownObjectRelease();
  }

  v1 = v0[1];

  return v1();
}

Swift::Void __swiftcall BNNSGraph.Context.setBatchSize(_:forFunction:)(Swift::Int _, Swift::String_optional forFunction)
{
  if ((_ & 0x8000000000000000) == 0)
  {
    if (forFunction.value._object)
    {
      String.utf8CString.getter();
    }

    BNNSGraphContextSetBatchSize_v2();

    swift_unknownObjectRelease();
  }
}

uint64_t BNNSGraph.Context.checkForNaNsAndInfinities.setter(char a1)
{
  result = BNNSGraphContextEnableNanAndInfChecks();
  *(v1 + 48) = a1;
  return result;
}

uint64_t (*BNNSGraph.Context.checkForNaNsAndInfinities.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 48);
  return BNNSGraph.Context.checkForNaNsAndInfinities.modify;
}

uint64_t BNNSGraph.Context.checkForNaNsAndInfinities.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  result = BNNSGraphContextEnableNanAndInfChecks();
  *(v1 + 48) = v2;
  return result;
}

uint64_t BNNSGraph.Context.executeFunction(_:arguments:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](BNNSGraph.Context.executeFunction(_:arguments:), 0, 0);
}

uint64_t BNNSGraph.Context.executeFunction(_:arguments:)()
{
  v1 = v0[4];
  v2 = *v1;
  v3 = *(*v1 + 2);
  BNNSGraphContextSetArgumentType();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_11:
    v5 = MEMORY[0x1E69E7CC0];
    goto LABEL_12;
  }

  if (!v3)
  {
    goto LABEL_11;
  }

LABEL_3:
  type metadata accessor for bnns_graph_argument_t(0);
  v4 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  v5 = v4;
  v6 = 0;
  *(v4 + 16) = v3;
  if (v3 < 4)
  {
    goto LABEL_7;
  }

  v6 = v3 & 0x7FFFFFFFFFFFFFFCLL;
  v7 = xmmword_1B7E781E0;
  v8 = (v4 + 64);
  v9 = vdupq_n_s64((v2 + 32));
  v10 = 0uLL;
  v11 = vdupq_n_s64(0x140uLL);
  v12 = vdupq_n_s64(4uLL);
  v13 = v3 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v14.i64[0] = 160 * v7.i64[0];
    v14.i64[1] = 160 * v7.i64[1];
    v15 = v8 - 4;
    v16 = vaddq_s64(v9, v14);
    vst2q_f64(v15, *(&v10 - 1));
    v27.val[0] = vaddq_s64(v16, v11);
    v27.val[1] = 0uLL;
    vst2q_f64(v8, v27);
    v7 = vaddq_s64(v7, v12);
    v8 += 8;
    v13 -= 4;
  }

  while (v13);
  if (v3 != v6)
  {
LABEL_7:
    v17 = &v2[160 * v6 + 32];
    v18 = (v4 + 16 * v6 + 40);
    v19 = v3 - v6;
    do
    {
      *(v18 - 1) = v17;
      *v18 = 0;
      v17 += 160;
      v18 += 2;
      --v19;
    }

    while (v19);
  }

LABEL_12:
  v20 = v0[3];
  *(v5 + 16) = v3;
  if (v20)
  {
    String.utf8CString.getter();
  }

  v21 = BNNSGraphContextExecute_v2();

  swift_unknownObjectRelease();
  v22 = v0[4];
  if (v21)
  {
    lazy protocol witness table accessor for type BNNSGraph.Error and conformance BNNSGraph.Error();
    swift_allocError();
    *v23 = xmmword_1B7E781F0;
    swift_willThrow();
  }

  *v22 = v2;
  v24 = v0[1];

  return v24();
}

uint64_t BNNSGraph.Context.executeFunction<A>(_:arguments:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = MEMORY[0x1B8CB13E0](a3, a4);
  if (v12 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = v12;
    if (v12)
    {
      type metadata accessor for bnns_graph_argument_t(0);
      a1 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(a1 + 16) = v5;
    }

    else
    {
      a1 = MEMORY[0x1E69E7CC0];
    }

    v18 = 0;
    v17[0] = a1 + 32;
    v17[1] = v5;
    closure #1 in BNNSGraph.Context.executeFunction<A>(_:arguments:)(v17, &v18, v5, a3, a4, a5);
    if (v6)
    {
      goto LABEL_14;
    }

    if (v5 >= v18)
    {
      *(a1 + 16) = v18;
      BNNSGraphContextSetArgumentType();
      if (a2)
      {
        String.utf8CString.getter();
      }

      v13 = BNNSGraphContextExecute_v2();
      swift_unknownObjectRelease();

      if (v13)
      {
        lazy protocol witness table accessor for type BNNSGraph.Error and conformance BNNSGraph.Error();
        swift_allocError();
        *v15 = xmmword_1B7E781F0;
        return swift_willThrow();
      }

      return result;
    }
  }

  __break(1u);
LABEL_14:
  v16 = v18;
  if (v5 < v18)
  {
    __break(1u);
  }

  *(a1 + 16) = v16;

  __break(1u);
  return result;
}

uint64_t closure #1 in BNNSGraph.Context.executeFunction<A>(_:arguments:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a5 - 8);
  v34 = a1;
  v35 = v8;
  v9 = MEMORY[0x1EEE9AC00](a1);
  v32 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v9);
  v33 = v28 - v15;
  if (v13 < 0)
  {
LABEL_9:
    __break(1u);
  }

  else
  {
    v28[0] = v12;
    if (!v13)
    {
LABEL_7:
      *v28[0] = v13;
      return result;
    }

    v16 = 0;
    v17 = 0;
    v18 = (v35 + 8);
    v30 = a6 + 24;
    v31 = a6 + 16;
    v28[2] = v14;
    v29 = v13;
    while (1)
    {
      v19 = v33;
      v20 = *v34;
      v36 = v16;
      v21 = (v20 + v16);
      *v21 = 0;
      v21[1] = 0;
      Array.subscript.getter();
      v22 = (*(a6 + 16))(a5, a6);
      v23 = a6;
      v24 = *v18;
      result = (*v18)(v19, a5);
      if (!v22)
      {
        break;
      }

      *v21 = v22;
      v25 = v32;
      Array.subscript.getter();
      v26 = (*(v23 + 24))(a5, v23);
      result = v24(v25, a5);
      v27 = *(v35 + 72);
      if ((v26 * v27) >> 64 != (v26 * v27) >> 63)
      {
        __break(1u);
        goto LABEL_9;
      }

      ++v17;
      v21[1] = v26 * v27;
      v16 = v36 + 16;
      v13 = v29;
      a6 = v23;
      if (v29 == v17)
      {
        goto LABEL_7;
      }
    }
  }

  __break(1u);
  return result;
}

Swift::Int __swiftcall BNNSGraph.Context.argumentPosition(forFunction:argument:)(Swift::String_optional forFunction, Swift::String argument)
{
  if (forFunction.value._object)
  {
    String.utf8CString.getter();
  }

  String.utf8CString.getter();
  ArgumentPosition = BNNSGraphGetArgumentPosition();
  swift_unknownObjectRelease();

  return ArgumentPosition;
}

__n128 BNNSGraph.Context.tensor(forFunction:argument:fillKnownDynamicShapes:)@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v41 = *MEMORY[0x1E69E9840];
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  if (a1)
  {
    String.utf8CString.getter();
  }

  String.utf8CString.getter();
  Tensor = BNNSGraphContextGetTensor();
  swift_unknownObjectRelease();

  if (Tensor)
  {
    _sSo10BNNSTensoraSgWOi0_(&v20);
  }

  else
  {
    v15 = v37;
    v16 = v38;
    v17 = v39;
    v18 = v40;
    v11 = v33;
    v12 = v34;
    v13 = v35;
    v14 = v36;
    v9 = v31;
    v10 = v32;
    _sSo10BNNSTensoraSgWOi_(&v9);
    v28 = v17;
    v29 = v18;
    v30 = v19;
    v24 = v13;
    v25 = v14;
    v26 = v15;
    v27 = v16;
    v20 = v9;
    v21 = v10;
    v22 = v11;
    v23 = v12;
  }

  v4 = v29;
  *(a2 + 128) = v28;
  *(a2 + 144) = v4;
  *(a2 + 160) = v30;
  v5 = v25;
  *(a2 + 64) = v24;
  *(a2 + 80) = v5;
  v6 = v27;
  *(a2 + 96) = v26;
  *(a2 + 112) = v6;
  v7 = v21;
  *a2 = v20;
  *(a2 + 16) = v7;
  result = v23;
  *(a2 + 32) = v22;
  *(a2 + 48) = result;
  return result;
}

Swift::Int __swiftcall BNNSGraph.Context.argumentCount(forFunction:)(Swift::String_optional forFunction)
{
  if (forFunction.value._object)
  {
    String.utf8CString.getter();
  }

  ArgumentCount = BNNSGraphGetArgumentCount();
  swift_unknownObjectRelease();
  return ArgumentCount;
}

uint64_t BNNSGraph.Context.argumentNames(forFunction:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    String.utf8CString.getter();
  }

  ArgumentCount = BNNSGraphGetArgumentCount();
  result = swift_unknownObjectRelease();
  if (ArgumentCount < 0)
  {
    goto LABEL_17;
  }

  v5 = MEMORY[0x1E69E7CC0];
  if (!ArgumentCount)
  {
    v6 = MEMORY[0x1E69E7CC0];
    if (!a2)
    {
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSPys4Int8VGSgMd);
  v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v6 + 16) = ArgumentCount;
  bzero((v6 + 32), 8 * ArgumentCount);
  if (a2)
  {
LABEL_6:
    String.utf8CString.getter();
  }

LABEL_8:
  BNNSGraphGetArgumentNames();
  swift_unknownObjectRelease();
  v7 = *(v6 + 16);
  if (!v7)
  {
LABEL_15:

    return v5;
  }

  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
  v8 = 0;
  while (v8 < *(v6 + 16))
  {
    result = *(v6 + 8 * v8 + 32);
    if (!result)
    {
      goto LABEL_18;
    }

    result = String.init(cString:)();
    v11 = *(v5 + 16);
    v10 = *(v5 + 24);
    if (v11 >= v10 >> 1)
    {
      v13 = result;
      v14 = v9;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
      v9 = v14;
      result = v13;
    }

    ++v8;
    *(v5 + 16) = v11 + 1;
    v12 = v5 + 16 * v11;
    *(v12 + 32) = result;
    *(v12 + 40) = v9;
    if (v7 == v8)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

uint64_t BNNSGraph.Context.functionNames.getter()
{
  result = BNNSGraphGetFunctionCount();
  if ((result & 0x8000000000000000) == 0)
  {
    v1 = result;
    v2 = MEMORY[0x1E69E7CC0];
    if (result)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSPys4Int8VGSgMd);
      v3 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v3 + 16) = v1;
      bzero((v3 + 32), 8 * v1);
    }

    else
    {
      v3 = MEMORY[0x1E69E7CC0];
    }

    BNNSGraphGetFunctionNames();
    v4 = *(v3 + 16);
    if (!v4)
    {
LABEL_12:

      return v2;
    }

    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
    v5 = 0;
    while (v5 < *(v3 + 16))
    {
      result = *(v3 + 8 * v5 + 32);
      if (!result)
      {
        goto LABEL_15;
      }

      result = String.init(cString:)();
      v8 = *(v2 + 16);
      v7 = *(v2 + 24);
      if (v8 >= v7 >> 1)
      {
        v10 = result;
        v11 = v6;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1);
        v6 = v11;
        result = v10;
      }

      ++v5;
      *(v2 + 16) = v8 + 1;
      v9 = v2 + 16 * v8;
      *(v9 + 32) = result;
      *(v9 + 40) = v6;
      if (v4 == v5)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

uint64_t (*BNNSGraph.Context.streamingAdvanceCount.modify(void *a1))(void *a1)
{
  *a1 = *(v1 + 56);
  a1[1] = v1;
  return BNNSGraph.Context.streamingAdvanceCount.modify;
}

uint64_t BNNSGraph.Context.streamingAdvanceCount.modify(void *a1)
{
  v1 = a1[1];
  v1[7] = *a1;
  return MEMORY[0x1EEDB1368](v1[4], v1[5]);
}

double BNNSGraph.Shape.init(arrayLiteral:)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  BNNSGraph.Shape.init(_:)(a1, &v4);
  result = *&v4;
  *a2 = v4;
  return result;
}

double protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance BNNSGraph.Shape@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  BNNSGraph.Shape.init(_:)(a1, &v4);
  result = *&v4;
  *a2 = v4;
  return result;
}

char *specialized _ArrayBuffer._consumeAndCreateNew()(uint64_t a1)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

double _sSo10BNNSTensoraSgWOi0_(uint64_t a1)
{
  result = 0.0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 160) = 1;
  return result;
}

uint64_t keypath_getTm@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void, void)@<X3>, _BYTE *a3@<X8>)
{
  result = a2(*(*a1 + 16), *(*a1 + 24));
  *a3 = result;
  return result;
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *__swift_assignWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *__swift_assignWithTake_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for BNNSGraph.CompileOptions(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for BNNSGraph.CompileOptions(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t dispatch thunk of BNNSGraph.Context.__allocating_init(compileFromPath:functionName:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (*(v5 + 120) + **(v5 + 120));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = dispatch thunk of BNNSGraph.Context.__allocating_init(compileFromPath:functionName:options:);

  return v14(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of BNNSGraph.Context.__allocating_init(compileFromPath:functionName:options:)(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of BNNSGraph.Context.setDynamicShapes(_:forFunction:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 136) + **(*v3 + 136));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = dispatch thunk of BNNSGraph.Context.setDynamicShapes(_:forFunction:);

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of BNNSGraph.Context.setBatchSize(_:forFunction:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 144) + **(*v3 + 144));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = dispatch thunk of BNNSGraph.Context.setBatchSize(_:forFunction:);

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of BNNSGraph.Context.setBatchSize(_:forFunction:)()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

{
  return (*(*v0 + 152))();
}

uint64_t dispatch thunk of BNNSGraph.Context.executeFunction(_:arguments:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 208) + **(*v3 + 208));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = dispatch thunk of BNNSGraph.Context.setBatchSize(_:forFunction:);

  return v10(a1, a2, a3);
}

uint64_t get_enum_tag_for_layout_string_10Accelerate9BNNSGraphO5ErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for BNNSGraph.Error(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 16))
  {
    return (*a1 + 2147483644);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for BNNSGraph.Error(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for BNNSGraph.Error(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t static vDSP.powerToDecibels<A>(_:zeroReference:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return static vDSP.powerToDecibels<A>(_:zeroReference:)(a1, a2, a3, partial apply for closure #1 in static vDSP.powerToDecibels<A>(_:zeroReference:));
}

{
  return static vDSP.powerToDecibels<A>(_:zeroReference:)(a1, a2, a3, partial apply for closure #1 in static vDSP.powerToDecibels<A>(_:zeroReference:));
}

uint64_t partial apply for closure #1 in static vDSP.powerToDecibels<A>(_:zeroReference:)(uint64_t a1, uint64_t *a2)
{
  return closure #1 in static vDSP.powerToDecibels<A>(_:zeroReference:)(a1, a2, *(v2 + 32), *(v2 + 16), *(v2 + 24), static vDSP.convert<A, B>(power:toDecibels:zeroReference:), *(v2 + 40));
}

{
  return closure #1 in static vDSP.powerToDecibels<A>(_:zeroReference:)(a1, a2, *(v2 + 32), *(v2 + 16), *(v2 + 24), static vDSP.convert<A, B>(power:toDecibels:zeroReference:), *(v2 + 40));
}

uint64_t static vDSP.convert<A, B>(power:toDecibels:zeroReference:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return static vDSP.convert<A, B>(power:toDecibels:zeroReference:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in static vDSP.convert<A, B>(power:toDecibels:zeroReference:));
}

{
  return static vDSP.convert<A, B>(power:toDecibels:zeroReference:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in static vDSP.convert<A, B>(power:toDecibels:zeroReference:));
}

uint64_t static vDSP.amplitudeToDecibels<A>(_:zeroReference:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return static vDSP.powerToDecibels<A>(_:zeroReference:)(a1, a2, a3, partial apply for closure #1 in static vDSP.amplitudeToDecibels<A>(_:zeroReference:));
}

{
  return static vDSP.powerToDecibels<A>(_:zeroReference:)(a1, a2, a3, partial apply for closure #1 in static vDSP.amplitudeToDecibels<A>(_:zeroReference:));
}

uint64_t static vDSP.powerToDecibels<A>(_:zeroReference:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t *))
{
  v5 = (*(a3 + 16))(a2, a3);
  return _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSf_Tt1gq5(v5, a4);
}

{
  v5 = (*(a3 + 16))(a2, a3);
  return _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSd_Tt1gq5(v5, a4);
}

uint64_t closure #1 in static vDSP.powerToDecibels<A>(_:zeroReference:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, float), float a7)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSrySfGMd);
  v15 = lazy protocol witness table accessor for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>(&lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Float> and conformance UnsafeMutableBufferPointer<A>, &_sSrySfGMd);
  a6(a3, a1, a4, v14, a5, v15, a7);
  result = (*(a5 + 16))(a4, a5);
  *a2 = result;
  return result;
}

uint64_t static vDSP.convert<A, B>(amplitude:toDecibels:zeroReference:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return static vDSP.convert<A, B>(power:toDecibels:zeroReference:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in static vDSP.convert<A, B>(amplitude:toDecibels:zeroReference:));
}

{
  return static vDSP.convert<A, B>(power:toDecibels:zeroReference:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in static vDSP.convert<A, B>(amplitude:toDecibels:zeroReference:));
}

uint64_t static vDSP.convert<A, B>(power:toDecibels:zeroReference:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
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

void closure #1 in closure #1 in static vDSP.convert<A, B>(power:toDecibels:zeroReference:)(const float *a1, int a2, float **a3, vDSP_Length __N, unsigned int __F, float a6)
{
  v7 = *MEMORY[0x1E69E9840];
  __B = a6;
  if (!a1)
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

  vDSP_vdbcon(a1, 1, &__B, *a3, 1, __N, __F);
}

uint64_t closure #1 in static vDSP.powerToDecibels<A>(_:zeroReference:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, double), double a7)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSrySdGMd);
  v15 = lazy protocol witness table accessor for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>(&lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>, &_sSrySdGMd);
  a6(a3, a1, a4, v14, a5, v15, a7);
  result = (*(a5 + 16))(a4, a5);
  *a2 = result;
  return result;
}

void closure #1 in closure #1 in static vDSP.convert<A, B>(power:toDecibels:zeroReference:)(const double *a1, int a2, double **a3, vDSP_Length __N, unsigned int __F, double a6)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v6[0] = a6;
  if (!a1)
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

  vDSP_vdbconD(a1, 1, v6, *a3, 1, __N, __F);
}

uint64_t partial apply for closure #1 in static vDSP.convert<A, B>(power:toDecibels:zeroReference:)(uint64_t a1)
{
  return partial apply for closure #1 in static vDSP.convert<A, B>(power:toDecibels:zeroReference:)(a1, partial apply for closure #1 in closure #1 in static vDSP.convert<A, B>(power:toDecibels:zeroReference:));
}

{
  return partial apply for closure #1 in static vDSP.convert<A, B>(power:toDecibels:zeroReference:)(a1, partial apply for closure #1 in closure #1 in static vDSP.convert<A, B>(power:toDecibels:zeroReference:));
}

uint64_t partial apply for closure #1 in static vDSP.amplitudeToDecibels<A>(_:zeroReference:)(uint64_t a1, uint64_t *a2)
{
  return closure #1 in static vDSP.powerToDecibels<A>(_:zeroReference:)(a1, a2, *(v2 + 32), *(v2 + 16), *(v2 + 24), static vDSP.convert<A, B>(amplitude:toDecibels:zeroReference:), *(v2 + 40));
}

{
  return closure #1 in static vDSP.powerToDecibels<A>(_:zeroReference:)(a1, a2, *(v2 + 32), *(v2 + 16), *(v2 + 24), static vDSP.convert<A, B>(amplitude:toDecibels:zeroReference:), *(v2 + 40));
}

uint64_t partial apply for closure #1 in static vDSP.convert<A, B>(amplitude:toDecibels:zeroReference:)(uint64_t a1)
{
  return partial apply for closure #1 in static vDSP.convert<A, B>(power:toDecibels:zeroReference:)(a1, partial apply for closure #1 in closure #1 in static vDSP.convert<A, B>(amplitude:toDecibels:zeroReference:));
}

{
  return partial apply for closure #1 in static vDSP.convert<A, B>(power:toDecibels:zeroReference:)(a1, partial apply for closure #1 in closure #1 in static vDSP.convert<A, B>(amplitude:toDecibels:zeroReference:));
}

uint64_t partial apply for closure #1 in static vDSP.convert<A, B>(power:toDecibels:zeroReference:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 32);
  v5 = *(v2 + 64);
  v7[4] = *(v2 + 56);
  v8 = a1;
  v9 = v5;
  return (*(v4 + 24))(a2, v7, MEMORY[0x1E69E7CA8] + 8, v3);
}

{
  v3 = v2[2];
  v4 = v2[4];
  v5 = v2[8];
  v7[2] = v2[7];
  v7[3] = a1;
  v7[4] = v5;
  return (*(v4 + 24))(a2, v7, MEMORY[0x1E69E7CA8] + 8, v3);
}

uint64_t vDSP.DFTError.errorDescription.getter()
{
  v1 = *(v0 + 8);
  if (v1 < 0)
  {
    _StringGuts.grow(_:)(126);
    MEMORY[0x1B8CB1340](0x2064696C61766E49, 0xEF2820746E756F63);
    v5 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1B8CB1340](v5);

    v6 = 0x80000001B7E7D110;
    v4 = 0x100000000000006DLL;
  }

  else
  {
    if (v1)
    {
      _StringGuts.grow(_:)(136);
      MEMORY[0x1B8CB1340](0x2064696C61766E49, 0xEF2820746E756F63);
      v2 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1B8CB1340](v2);

      v3 = "_streamingAdvanceCount";
      v4 = 0x1000000000000077;
    }

    else
    {
      _StringGuts.grow(_:)(140);
      MEMORY[0x1B8CB1340](0x2064696C61766E49, 0xEF2820746E756F63);
      v7 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1B8CB1340](v7);

      v4 = 0x100000000000007BLL;
    }

    v6 = v3 | 0x8000000000000000;
  }

  MEMORY[0x1B8CB1340](v4, v6);
  return 0;
}

uint64_t vDSP.DiscreteFourierTransform.__allocating_init(previousDFT:count:direction:transformType:ofType:)(uint64_t a1, uint64_t a2, char *a3, char *a4)
{
  v8 = swift_allocObject();
  vDSP.DiscreteFourierTransform.init(previousDFT:count:direction:transformType:ofType:)(a1, a2, a3, a4);
  return v8;
}

uint64_t vDSP.DiscreteFourierTransform.init(previous:count:direction:transformType:ofType:)(uint64_t a1, uint64_t a2, char *a3, char *a4)
{
  v5 = v4;
  v6 = *a3;
  v7 = *a4;
  if (a1)
  {
    v8 = *(a1 + 16);
  }

  else
  {
    v8 = 0;
  }

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = v6;
  v16 = v7;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = (*(AssociatedConformanceWitness + 8))(v8, a2, &v17, &v16, AssociatedTypeWitness, AssociatedConformanceWitness);
  if (v15)
  {

    type metadata accessor for vDSP.DiscreteFourierTransform();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v12 = v11;

    *(v5 + 16) = v12;
  }

  return v5;
}

{
  return vDSP.DiscreteFourierTransform.init(previousDFT:count:direction:transformType:ofType:)(a1, a2, a3, a4);
}

uint64_t vDSP.DiscreteFourierTransform.deinit()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(v0 + 16);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 16))(v2, AssociatedTypeWitness, AssociatedConformanceWitness);
  return v0;
}

uint64_t vDSP.DiscreteFourierTransform.__deallocating_deinit()
{
  vDSP.DiscreteFourierTransform.deinit();

  return swift_deallocClassInstance();
}

uint64_t vDSP.DiscreteFourierTransform<>.transform<A>(real:imaginary:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return vDSP.DiscreteFourierTransform<>.transform<A>(real:imaginary:)(a1, a2, a3, a4, partial apply for closure #1 in vDSP.DiscreteFourierTransform<>.transform<A>(real:imaginary:), _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSf_Tt1gq5);
}

{
  return vDSP.DiscreteFourierTransform<>.transform<A>(real:imaginary:)(a1, a2, a3, a4, partial apply for closure #1 in vDSP.DiscreteFourierTransform<>.transform<A>(real:imaginary:), _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSd_Tt1gq5);
}

uint64_t vDSP.DiscreteFourierTransform<>.transform<A, B>(inputReal:inputImaginary:outputReal:outputImaginary:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  return vDSP.DiscreteFourierTransform<>.transform<A, B>(inputReal:inputImaginary:outputReal:outputImaginary:)(a1, a2, a3, a4, a5, a6, a7, a8, partial apply for closure #1 in vDSP.DiscreteFourierTransform<>.transform<A, B>(inputReal:inputImaginary:outputReal:outputImaginary:));
}

{
  return vDSP.DiscreteFourierTransform<>.transform<A, B>(inputReal:inputImaginary:outputReal:outputImaginary:)(a1, a2, a3, a4, a5, a6, a7, a8, partial apply for closure #1 in vDSP.DiscreteFourierTransform<>.transform<A, B>(inputReal:inputImaginary:outputReal:outputImaginary:));
}

uint64_t vDSP.DiscreteFourierTransform<>.transform<A>(real:imaginary:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, void *))
{
  v9 = v6;
  v17 = MEMORY[0x1E69E7CC0];
  v14 = (*(a4 + 16))(a3, a4);
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = &v17;
  v16[5] = a2;
  v16[6] = v9;
  v16[7] = a1;
  return a6(v14, a5, v16);
}

uint64_t closure #1 in vDSP.DiscreteFourierTransform<>.transform<A>(real:imaginary:)(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t (*a10)(uint64_t, uint64_t, char *))
{
  v27 = a2;
  v16 = *(a8 + 16);
  v17 = v16(a7, a8);
  v21 = a7;
  v22 = a8;
  v23 = a5;
  v24 = a6;
  v25 = a4;
  v26 = a1;
  *a3 = a10(v17, a9, v20);

  result = v16(a7, a8);
  *v27 = result;
  return result;
}

uint64_t closure #1 in closure #1 in vDSP.DiscreteFourierTransform<>.transform<A>(real:imaginary:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, unint64_t *a11, uint64_t a12)
{
  v21 = a7;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(a9);
  v23 = a8;
  v24 = lazy protocol witness table accessor for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>(a11, a9);
  v25 = a5;
  v26 = a6;
  v27 = a1;
  v28 = a3;
  (*(a8 + 24))(a12, v20, MEMORY[0x1E69E7CA8] + 8, v21, a8);
  result = (*(a8 + 16))(a7, a8);
  *a2 = result;
  return result;
}

uint64_t vDSP.DiscreteFourierTransform<>.transform<A, B>(inputReal:inputImaginary:outputReal:outputImaginary:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10[2] = a5;
  v10[3] = a6;
  v10[4] = a7;
  v10[5] = a8;
  v10[6] = a2;
  v10[7] = a3;
  v10[8] = a4;
  return (*(a7 + 24))(a9, v10, MEMORY[0x1E69E7CA8] + 8, a5, a7);
}

void *closure #1 in closure #1 in closure #1 in closure #1 in vDSP.DiscreteFourierTransform<>.transform<A, B>(inputReal:inputImaginary:outputReal:outputImaginary:)(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t (*a12)(void, uint64_t, uint64_t))
{
  if (!a3)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (!a5)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (!*a7)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (*result)
  {
    return a12(*(a2 + 16), a3, a5);
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t vDSP.DiscreteFourierTransform<>.transform<A>(input:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return vDSP.DiscreteFourierTransform<>.transform<A>(input:)(a1, a2, a3, partial apply for closure #1 in vDSP.DiscreteFourierTransform<>.transform<A>(input:), _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSo10DSPComplexV_Tt1g5);
}

{
  return vDSP.DiscreteFourierTransform<>.transform<A>(input:)(a1, a2, a3, partial apply for closure #1 in vDSP.DiscreteFourierTransform<>.transform<A>(input:), _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSo16DSPDoubleComplexV_Tt1g5);
}

uint64_t vDSP.DiscreteFourierTransform<>.transform<A, B>(input:output:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return vDSP.DiscreteFourierTransform<>.transform<A, B>(input:output:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in vDSP.DiscreteFourierTransform<>.transform<A, B>(input:output:));
}

{
  return vDSP.DiscreteFourierTransform<>.transform<A, B>(input:output:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in vDSP.DiscreteFourierTransform<>.transform<A, B>(input:output:));
}

uint64_t vDSP.DiscreteFourierTransform<>.transform<A>(input:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, void *))
{
  v8 = v5;
  v12 = (*(a3 + 16))(a2, a3);
  v14[2] = a2;
  v14[3] = a3;
  v14[4] = v8;
  v14[5] = a1;
  return a5(v12, a4, v14);
}

uint64_t closure #1 in vDSP.DiscreteFourierTransform<>.transform<A>(input:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, unint64_t *a9, uint64_t a10)
{
  v18 = a5;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(a7);
  v20 = a6;
  v21 = lazy protocol witness table accessor for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>(a9, a7);
  v22 = a1;
  v23 = a3;
  (*(a6 + 24))(a10, v17, MEMORY[0x1E69E7CA8] + 8, v18, a6);
  result = (*(a6 + 16))(a5, a6);
  *a2 = result;
  return result;
}

uint64_t vDSP.DiscreteFourierTransform<>.transform<A, B>(input:output:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[2] = a3;
  v8[3] = a4;
  v8[4] = a5;
  v8[5] = a6;
  v8[6] = a2;
  return (*(a5 + 24))(a7, v8, MEMORY[0x1E69E7CA8] + 8, a3);
}

uint64_t specialized static vDSP.DFTSinglePrecisionSplitComplexFunctions.makeDiscreteFourierTransform(previous:count:direction:transformType:)(uint64_t result, uint64_t a2, _BYTE *a3, char *a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t, uint64_t))
{
  v7 = *a4;
  if ((*a4 & 1) == 0)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      if (*a3)
      {
        v9 = 0xFFFFFFFFLL;
      }

      else
      {
        v9 = 1;
      }

      result = a5(result, a2, v9);
      if (!result)
      {
        goto LABEL_13;
      }

      return result;
    }

LABEL_16:
    __break(1u);
    return result;
  }

  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (*a3)
  {
    v8 = 0xFFFFFFFFLL;
  }

  else
  {
    v8 = 1;
  }

  result = a6(result, a2, v8);
  if (!result)
  {
LABEL_13:
    v10 = result;
    lazy protocol witness table accessor for type vDSP.DFTError and conformance vDSP.DFTError();
    swift_allocError();
    *v11 = a2;
    *(v11 + 8) = v7;
    swift_willThrow();
    return v10;
  }

  return result;
}

void specialized static vDSP.DFTSinglePrecisionInterleavedFunctions.makeDiscreteFourierTransform(previous:count:direction:transformType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (!a5())
  {
    lazy protocol witness table accessor for type vDSP.DFTError and conformance vDSP.DFTError();
    swift_allocError();
    *v6 = a2;
    *(v6 + 8) = 0x80;
    swift_willThrow();
  }
}

uint64_t partial apply for closure #1 in vDSP.DiscreteFourierTransform<>.transform<A>(real:imaginary:)(uint64_t a1, uint64_t *a2)
{
  return partial apply for closure #1 in vDSP.DiscreteFourierTransform<>.transform<A>(real:imaginary:)(a1, a2, partial apply for closure #1 in closure #1 in vDSP.DiscreteFourierTransform<>.transform<A>(real:imaginary:), _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSf_Tt1gq5);
}

{
  return partial apply for closure #1 in vDSP.DiscreteFourierTransform<>.transform<A>(real:imaginary:)(a1, a2, partial apply for closure #1 in closure #1 in vDSP.DiscreteFourierTransform<>.transform<A>(real:imaginary:), _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSd_Tt1gq5);
}

uint64_t partial apply for closure #1 in vDSP.DiscreteFourierTransform<>.transform<A, B>(inputReal:inputImaginary:outputReal:outputImaginary:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in vDSP.DiscreteFourierTransform<>.transform<A, B>(inputReal:inputImaginary:outputReal:outputImaginary:)(a1, a2, partial apply for closure #1 in closure #1 in vDSP.DiscreteFourierTransform<>.transform<A, B>(inputReal:inputImaginary:outputReal:outputImaginary:));
}

{
  return partial apply for closure #1 in vDSP.DiscreteFourierTransform<>.transform<A, B>(inputReal:inputImaginary:outputReal:outputImaginary:)(a1, a2, partial apply for closure #1 in closure #1 in vDSP.DiscreteFourierTransform<>.transform<A, B>(inputReal:inputImaginary:outputReal:outputImaginary:));
}

uint64_t partial apply for closure #1 in vDSP.DiscreteFourierTransform<>.transform<A, B>(inputReal:inputImaginary:outputReal:outputImaginary:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 72);
  v5 = *(v3 + 32);
  v8 = *(v3 + 16);
  v9 = v5;
  v10 = *(v3 + 56);
  v11 = v4;
  v12 = a1;
  v13 = a2;
  return (*(v5 + 24))(a3, &v7, MEMORY[0x1E69E7CA8] + 8, v8);
}

uint64_t partial apply for closure #1 in vDSP.DiscreteFourierTransform<>.transform<A>(input:)(uint64_t a1, uint64_t *a2)
{
  return closure #1 in vDSP.DiscreteFourierTransform<>.transform<A>(input:)(a1, a2, v2[4], v2[5], v2[2], v2[3], &_sSrySo10DSPComplexVGMd, &_sSrySo10DSPComplexVGMR, &lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<DSPComplex> and conformance UnsafeMutableBufferPointer<A>, partial apply for closure #1 in vDSP.DiscreteFourierTransform<>.transform<A, B>(input:output:));
}

{
  return closure #1 in vDSP.DiscreteFourierTransform<>.transform<A>(input:)(a1, a2, v2[4], v2[5], v2[2], v2[3], &_sSrySo16DSPDoubleComplexVGMd, &_sSrySo16DSPDoubleComplexVGMR, &lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<DSPDoubleComplex> and conformance UnsafeMutableBufferPointer<A>, partial apply for closure #1 in vDSP.DiscreteFourierTransform<>.transform<A, B>(input:output:));
}

uint64_t partial apply for closure #1 in vDSP.DiscreteFourierTransform<>.transform<A, B>(input:output:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in vDSP.DiscreteFourierTransform<>.transform<A, B>(input:output:)(a1, a2, partial apply for closure #1 in closure #1 in vDSP.DiscreteFourierTransform<>.transform<A, B>(input:output:));
}

{
  return partial apply for closure #1 in vDSP.DiscreteFourierTransform<>.transform<A, B>(input:output:)(a1, a2, partial apply for closure #1 in closure #1 in vDSP.DiscreteFourierTransform<>.transform<A, B>(input:output:));
}

uint64_t partial apply for closure #1 in vDSP.DiscreteFourierTransform<>.transform<A, B>(input:output:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 40);
  v5 = *(v3 + 56);
  v7[2] = *(v3 + 16);
  v8 = *(v3 + 24);
  v9 = v4;
  v10 = v5;
  v11 = a1;
  v12 = a2;
  return (*(v4 + 16))(a3, v7, MEMORY[0x1E69E7CA8] + 8, v8);
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for vDSP.DFTError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 9))
  {
    return (*a1 + 127);
  }

  v3 = (*(a1 + 8) & 0x7E | (*(a1 + 8) >> 7)) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for vDSP.DFTError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 8) = 0;
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    }
  }

  return result;
}

void *partial apply for closure #1 in closure #1 in vDSP.DiscreteFourierTransform<>.transform<A, B>(input:output:)(void *a1)
{
  return partial apply for closure #1 in closure #1 in vDSP.DiscreteFourierTransform<>.transform<A, B>(input:output:)(a1, MEMORY[0x1E6958B58]);
}

{
  return partial apply for closure #1 in closure #1 in vDSP.DiscreteFourierTransform<>.transform<A, B>(input:output:)(a1, MEMORY[0x1E6958B50]);
}

void *partial apply for closure #1 in closure #1 in vDSP.DiscreteFourierTransform<>.transform<A, B>(input:output:)(void *result, uint64_t (*a2)(void))
{
  if (*(v2 + 56))
  {
    if (*result)
    {
      return a2(*(*(v2 + 48) + 16));
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t partial apply for closure #1 in closure #1 in vDSP.DiscreteFourierTransform<>.transform<A, B>(inputReal:inputImaginary:outputReal:outputImaginary:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in closure #1 in vDSP.DiscreteFourierTransform<>.transform<A, B>(inputReal:inputImaginary:outputReal:outputImaginary:)(a1, a2, partial apply for closure #1 in closure #1 in closure #1 in vDSP.DiscreteFourierTransform<>.transform<A, B>(inputReal:inputImaginary:outputReal:outputImaginary:));
}

{
  return partial apply for closure #1 in closure #1 in vDSP.DiscreteFourierTransform<>.transform<A, B>(inputReal:inputImaginary:outputReal:outputImaginary:)(a1, a2, partial apply for closure #1 in closure #1 in closure #1 in vDSP.DiscreteFourierTransform<>.transform<A, B>(inputReal:inputImaginary:outputReal:outputImaginary:));
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in vDSP.DiscreteFourierTransform<>.transform<A, B>(inputReal:inputImaginary:outputReal:outputImaginary:)(uint64_t a1)
{
  return partial apply for closure #1 in closure #1 in closure #1 in vDSP.DiscreteFourierTransform<>.transform<A, B>(inputReal:inputImaginary:outputReal:outputImaginary:)(a1, partial apply for closure #1 in closure #1 in closure #1 in closure #1 in vDSP.DiscreteFourierTransform<>.transform<A, B>(inputReal:inputImaginary:outputReal:outputImaginary:));
}

{
  return partial apply for closure #1 in closure #1 in closure #1 in vDSP.DiscreteFourierTransform<>.transform<A, B>(inputReal:inputImaginary:outputReal:outputImaginary:)(a1, partial apply for closure #1 in closure #1 in closure #1 in closure #1 in vDSP.DiscreteFourierTransform<>.transform<A, B>(inputReal:inputImaginary:outputReal:outputImaginary:));
}

void *partial apply for closure #1 in closure #1 in closure #1 in closure #1 in vDSP.DiscreteFourierTransform<>.transform<A, B>(inputReal:inputImaginary:outputReal:outputImaginary:)(void *a1)
{
  return partial apply for closure #1 in closure #1 in closure #1 in closure #1 in vDSP.DiscreteFourierTransform<>.transform<A, B>(inputReal:inputImaginary:outputReal:outputImaginary:)(a1, MEMORY[0x1E6958B38]);
}

{
  return partial apply for closure #1 in closure #1 in closure #1 in closure #1 in vDSP.DiscreteFourierTransform<>.transform<A, B>(inputReal:inputImaginary:outputReal:outputImaginary:)(a1, MEMORY[0x1E6958B30]);
}

uint64_t partial apply for closure #1 in closure #1 in vDSP.DiscreteFourierTransform<>.transform<A>(real:imaginary:)(uint64_t a1, uint64_t *a2)
{
  return partial apply for closure #1 in closure #1 in vDSP.DiscreteFourierTransform<>.transform<A>(real:imaginary:)(a1, a2, &_sSrySdGMd, &_sSrySdGMR, &lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>, partial apply for closure #1 in vDSP.DiscreteFourierTransform<>.transform<A, B>(inputReal:inputImaginary:outputReal:outputImaginary:));
}

{
  return partial apply for closure #1 in closure #1 in vDSP.DiscreteFourierTransform<>.transform<A>(real:imaginary:)(a1, a2, &_sSrySfGMd, &_sSrySfGMR, &lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Float> and conformance UnsafeMutableBufferPointer<A>, partial apply for closure #1 in vDSP.DiscreteFourierTransform<>.transform<A, B>(inputReal:inputImaginary:outputReal:outputImaginary:));
}

uint64_t partial apply for closure #1 in closure #1 in vDSP.DiscreteFourierTransform<>.transform<A, B>(inputReal:inputImaginary:outputReal:outputImaginary:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = a2;
  v4 = *(v3 + 40);
  v7[2] = *(v3 + 16);
  v8 = *(v3 + 24);
  v9 = v4;
  v5 = *(v3 + 72);
  v10 = *(v3 + 56);
  v11 = v5;
  v12 = a1;
  return (*(v4 + 16))(a3, v7, MEMORY[0x1E69E7CA8] + 8, v8);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in vDSP.DiscreteFourierTransform<>.transform<A, B>(inputReal:inputImaginary:outputReal:outputImaginary:)(uint64_t a1, uint64_t a2)
{
  v13 = a1;
  v3 = *(v2 + 40);
  v4 = *(v2 + 56);
  v7[2] = *(v2 + 16);
  v5 = *(v2 + 80);
  v11 = *(v2 + 64);
  v8 = *(v2 + 24);
  v9 = v3;
  v10 = v4;
  v12 = v5;
  return (*(v3 + 16))(a2, v7, MEMORY[0x1E69E7CA8] + 8, v8);
}

unint64_t lazy protocol witness table accessor for type vDSP.DFTError and conformance vDSP.DFTError()
{
  result = lazy protocol witness table cache variable for type vDSP.DFTError and conformance vDSP.DFTError;
  if (!lazy protocol witness table cache variable for type vDSP.DFTError and conformance vDSP.DFTError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type vDSP.DFTError and conformance vDSP.DFTError);
  }

  return result;
}

void vImage.PixelBuffer<>.makeArray<A>(of:channelCount:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  if (!*(*v2 + 16))
  {
    __break(1u);
    goto LABEL_8;
  }

  v4 = *(v3 + 48);
  if (v4 < 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = *(v3 + 40);
  if (v5 < 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v6 = v4 * v5;
  if ((v4 * v5) >> 64 != (v4 * v5) >> 63)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((v6 * a2) >> 64 == (v6 * a2) >> 63)
  {
    MEMORY[0x1EEE9AC00](v6 * a2);
    Array.init(_unsafeUninitializedCapacity:initializingWith:)();
    return;
  }

LABEL_11:
  __break(1u);
}

vImage_Error closure #1 in vImage.PixelBuffer<>.makeArray<A>(of:channelCount:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23 = *MEMORY[0x1E69E9840];
  v12 = UnsafeMutableBufferPointer.baseAddress.getter();
  v13 = *a3;
  if (!*(*a3 + 16))
  {
    __break(1u);
    goto LABEL_10;
  }

  v14 = v13[5];
  if ((v14 & 0x8000000000000000) != 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v15 = v13[6];
  if (v15 < 0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v16 = *(*(a6 - 8) + 72);
  v17 = v15 * v16;
  if ((v15 * v16) >> 64 != (v15 * v16) >> 63)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if ((v17 * a4) >> 64 != (v17 * a4) >> 63)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
  }

  dest.data = v12;
  dest.height = v14;
  dest.width = v15;
  dest.rowBytes = v17 * a4;
  if ((v16 * a4) >> 64 != (v16 * a4) >> 63)
  {
    goto LABEL_14;
  }

  v18 = v13[7];
  v19 = v13[4];
  v21 = 0;
  result = vImage_Buffer.copy(destinationBuffer:pixelSize:flags:)(&dest, v16 * a4, &v21, v19, v14, v15, v18);
  if (v6)
  {
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    *a2 = a5;
  }

  return result;
}

Swift::Int BNNS.ArithmeticTernaryFunction.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x1B8CB1810](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance BNNS.ArithmeticTernaryFunction()
{
  Hasher.init(_seed:)();
  MEMORY[0x1B8CB1810](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance BNNS.ArithmeticTernaryFunction()
{
  Hasher.init(_seed:)();
  MEMORY[0x1B8CB1810](0);
  return Hasher._finalize()();
}

uint64_t BNNS.TernaryArithmeticLayer.__allocating_init(inputA:inputADescriptorType:inputB:inputBDescriptorType:inputC:inputCDescriptorType:output:outputDescriptorType:function:activation:filterParameters:)(_OWORD *a1, unsigned __int8 *a2, _OWORD *a3, unsigned __int8 *a4, _OWORD *a5, unsigned __int8 *a6, _OWORD *a7, unsigned __int8 *a8, uint64_t a9, uint64_t *a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v95 = *MEMORY[0x1E69E9840];
  v14 = a1[9];
  v51[8] = a1[8];
  v51[9] = v14;
  v51[10] = a1[10];
  v15 = a1[5];
  v51[4] = a1[4];
  v51[5] = v15;
  v16 = a1[7];
  v51[6] = a1[6];
  v51[7] = v16;
  v17 = a1[1];
  v51[0] = *a1;
  v51[1] = v17;
  v18 = a1[3];
  v51[2] = a1[2];
  v51[3] = v18;
  v19 = a3[6];
  *&v94[116] = a3[7];
  v20 = a3[9];
  *&v94[132] = a3[8];
  *&v94[148] = v20;
  *&v94[164] = a3[10];
  v21 = a3[2];
  *&v94[52] = a3[3];
  v22 = a3[5];
  *&v94[68] = a3[4];
  *&v94[84] = v22;
  *&v94[100] = v19;
  v23 = a3[1];
  *&v94[4] = *a3;
  *&v94[20] = v23;
  *&v94[36] = v21;
  v24 = a5[6];
  *&v93[116] = a5[7];
  v25 = a5[9];
  *&v93[132] = a5[8];
  *&v93[148] = v25;
  *&v93[164] = a5[10];
  v26 = a5[2];
  *&v93[52] = a5[3];
  v27 = a5[5];
  *&v93[68] = a5[4];
  *&v93[84] = v27;
  *&v93[100] = v24;
  v28 = a5[1];
  *&v93[4] = *a5;
  *&v93[20] = v28;
  *&v93[36] = v26;
  v29 = a7[6];
  *&v92[116] = a7[7];
  v30 = a7[9];
  *&v92[132] = a7[8];
  *&v92[148] = v30;
  *&v92[164] = a7[10];
  v31 = a7[2];
  *&v92[52] = a7[3];
  v32 = a7[5];
  *&v92[68] = a7[4];
  *&v92[84] = v32;
  *&v92[100] = v29;
  v33 = a7[1];
  *&v92[4] = *a7;
  *&v92[20] = v33;
  *&v92[36] = v31;
  v62 = *&v94[144];
  v63 = *&v94[160];
  v58 = *&v94[80];
  v59 = *&v94[96];
  v34 = *a2;
  v35 = *a4;
  v36 = *a6;
  v37 = *a8;
  v38 = *a10;
  v39 = *(a10 + 8);
  v60 = *&v94[112];
  v61 = *&v94[128];
  v52 = v34;
  v64 = *&v94[176];
  v57 = *&v94[64];
  v53 = *v94;
  v54 = *&v94[16];
  v55 = *&v94[32];
  v56 = *&v94[48];
  v65 = v35;
  v74 = *&v93[128];
  v75 = *&v93[144];
  v76 = *&v93[160];
  v70 = *&v93[64];
  v71 = *&v93[80];
  v72 = *&v93[96];
  v73 = *&v93[112];
  v66 = *v93;
  v67 = *&v93[16];
  v68 = *&v93[32];
  v69 = *&v93[48];
  v77 = *&v93[176];
  v78 = v36;
  v87 = *&v92[128];
  v88 = *&v92[144];
  v89 = *&v92[160];
  v83 = *&v92[64];
  v84 = *&v92[80];
  v85 = *&v92[96];
  v86 = *&v92[112];
  v79 = *v92;
  v80 = *&v92[16];
  v81 = *&v92[32];
  v82 = *&v92[48];
  v90 = *&v92[176];
  v91 = v37;
  v44 = v38;
  LOBYTE(v45) = v39;
  v40.n128_f64[0] = BNNS.ActivationFunction.bnnsActivation.getter(&v50);
  v48 = 28;
  v49 = v51;
  if (a13 == 1)
  {
    v41 = 0;
  }

  else
  {
    LODWORD(v44) = a11;
    v45 = a12;
    v46 = a13;
    v47 = a14;
    v41 = &v44;
  }

  v42 = MEMORY[0x1B8CB1A20](&v48, v41, v40);
  type metadata accessor for BNNS.TernaryArithmeticLayer();
  result = swift_allocObject();
  if (v42)
  {
    *(result + 16) = v42;
  }

  else
  {
    type metadata accessor for BNNS.Layer();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return result;
}

uint64_t BNNS.TernaryArithmeticLayer.apply(batchSize:inputA:inputB:inputC:output:)(size_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a2 + 136);
  if (v6 && (v7 = *(a3 + 136)) != 0 && (v8 = *(a4 + 136)) != 0 && (v9 = *(a5 + 136)) != 0)
  {
    v22 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySVGMd);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1B7E76E00;
    *(v10 + 32) = v6;
    v11 = (v10 + 32);
    *(v10 + 40) = v7;
    *(v10 + 48) = v8;
    v12 = *(v5 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
    v13 = swift_allocObject();
    BNNSNDArrayDescriptor.shape.getter(v21);
    *(v13 + 32) = BNNS.Shape.batchStride.getter();
    BNNSNDArrayDescriptor.shape.getter(v20);
    *(v13 + 40) = BNNS.Shape.batchStride.getter();
    BNNSNDArrayDescriptor.shape.getter(v19);
    *(v13 + 48) = BNNS.Shape.batchStride.getter();
    BNNSNDArrayDescriptor.shape.getter(v21);
    v14 = BNNS.Shape.batchStride.getter();
    v15 = BNNSArithmeticFilterApplyBatch(v12, v22, 3uLL, v11, (v13 + 32), v9, v14);
    swift_setDeallocating();
    swift_deallocClassInstance();

    if (!v15)
    {
      return result;
    }

    v17 = 0;
  }

  else
  {
    v17 = 2;
  }

  lazy protocol witness table accessor for type BNNS.Error and conformance BNNS.Error();
  swift_allocError();
  *v18 = v17;
  return swift_willThrow();
}

uint64_t BNNS.TernaryArithmeticLayer.applyBackward(batchSize:inputA:inputB:inputC:output:outputGradient:generatingInputAGradient:generatingInputBGradient:generatingInputCGradient:)(size_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _OWORD *a6, __int128 *a7, _OWORD *a8, __int128 *a9)
{
  v65 = *MEMORY[0x1E69E9840];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySVSgGMd);
  v15 = swift_allocObject();
  v15[4] = *(a2 + 136);
  v56 = (v15 + 4);
  v16 = *(a4 + 136);
  v15[5] = *(a3 + 136);
  v15[6] = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
  v17 = swift_allocObject();
  BNNSNDArrayDescriptor.shape.getter(v64);
  *(v17 + 32) = BNNS.Shape.batchStride.getter();
  BNNSNDArrayDescriptor.shape.getter(v63);
  *(v17 + 40) = BNNS.Shape.batchStride.getter();
  BNNSNDArrayDescriptor.shape.getter(v62);
  v18 = BNNS.Shape.batchStride.getter();
  v19 = a7[8];
  v20 = a7[9];
  v21 = a7[6];
  v64[7] = a7[7];
  v64[8] = v19;
  v22 = a7[10];
  v64[9] = v20;
  v64[10] = v22;
  v23 = a7[4];
  v24 = a7[5];
  v25 = a7[2];
  v64[3] = a7[3];
  v64[4] = v23;
  v64[5] = v24;
  v64[6] = v21;
  v26 = *a7;
  v64[1] = a7[1];
  v64[2] = v25;
  v27 = a8[9];
  v63[8] = a8[8];
  v63[9] = v27;
  v63[10] = a8[10];
  v64[0] = v26;
  v28 = a8[5];
  v63[4] = a8[4];
  v63[5] = v28;
  v29 = a8[7];
  v63[6] = a8[6];
  v63[7] = v29;
  v30 = a8[1];
  v63[0] = *a8;
  v63[1] = v30;
  v31 = a8[3];
  v63[2] = a8[2];
  v63[3] = v31;
  v32 = a9[8];
  v33 = a9[9];
  v34 = a9[6];
  v62[7] = a9[7];
  v62[8] = v32;
  v35 = a9[10];
  v62[9] = v33;
  v62[10] = v35;
  v36 = a9[4];
  v37 = a9[5];
  v38 = a9[2];
  v62[3] = a9[3];
  v62[4] = v36;
  *(v17 + 48) = v18;
  v62[5] = v37;
  v62[6] = v34;
  v39 = *a9;
  v62[1] = a9[1];
  v62[2] = v38;
  v40 = a6[9];
  *&out_delta.stride[7] = a6[8];
  *&out_delta.data_type = v40;
  *&out_delta.table_data_type = a6[10];
  v62[0] = v39;
  v41 = a6[5];
  *&out_delta.size[7] = a6[4];
  *&out_delta.stride[1] = v41;
  v42 = a6[7];
  *&out_delta.stride[3] = a6[6];
  *&out_delta.stride[5] = v42;
  v43 = a6[1];
  *&out_delta.flags = *a6;
  *&out_delta.size[1] = v43;
  v44 = a6[3];
  *&out_delta.size[3] = a6[2];
  *&out_delta.size[5] = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySpySo21BNNSNDArrayDescriptoraGGMd);
  v45 = swift_allocObject();
  v45[4] = v64;
  v46 = (v45 + 4);
  v45[5] = v63;
  v45[6] = v62;
  v54 = *(v53 + 16);
  v47 = swift_allocObject();
  BNNSNDArrayDescriptor.shape.getter(v60);
  *(v47 + 32) = BNNS.Shape.batchStride.getter();
  BNNSNDArrayDescriptor.shape.getter(v59);
  *(v47 + 40) = BNNS.Shape.batchStride.getter();
  BNNSNDArrayDescriptor.shape.getter(v58);
  *(v47 + 48) = BNNS.Shape.batchStride.getter();
  v48 = *(a5 + 136);
  BNNSNDArrayDescriptor.shape.getter(v60);
  out_stride = BNNS.Shape.batchStride.getter();
  BNNSNDArrayDescriptor.shape.getter(v59);
  v50 = BNNS.Shape.batchStride.getter();
  LODWORD(a2) = BNNSArithmeticFilterApplyBackwardBatch(v54, a1, 3uLL, v56, (v47 + 32), v46, (v17 + 32), v48, out_stride, &out_delta, v50);
  swift_setDeallocating();
  swift_deallocClassInstance();
  swift_setDeallocating();
  swift_deallocClassInstance();
  swift_setDeallocating();
  swift_deallocClassInstance();
  if (a2)
  {
    lazy protocol witness table accessor for type BNNS.Error and conformance BNNS.Error();
    swift_allocError();
    *v51 = 0;
    swift_willThrow();
  }

  swift_setDeallocating();
  return swift_deallocClassInstance();
}

uint64_t BNNS.TernaryArithmeticLayer.__deallocating_deinit()
{
  BNNSFilterDestroy(*(v0 + 16));

  return swift_deallocClassInstance();
}

unint64_t lazy protocol witness table accessor for type BNNS.ArithmeticTernaryFunction and conformance BNNS.ArithmeticTernaryFunction()
{
  result = lazy protocol witness table cache variable for type BNNS.ArithmeticTernaryFunction and conformance BNNS.ArithmeticTernaryFunction;
  if (!lazy protocol witness table cache variable for type BNNS.ArithmeticTernaryFunction and conformance BNNS.ArithmeticTernaryFunction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BNNS.ArithmeticTernaryFunction and conformance BNNS.ArithmeticTernaryFunction);
  }

  return result;
}

uint64_t dispatch thunk of BNNS.TernaryArithmeticLayer.apply(batchSize:inputA:inputB:inputC:output:)(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v6 = a2[17];
  v7 = *(a2 + 36);
  v8 = a2[19];
  v9 = *(a2 + 40);
  v10 = a3[17];
  v11 = *(a3 + 36);
  v12 = a3[19];
  v13 = *(a3 + 40);
  v14 = a4[17];
  v15 = *(a4 + 36);
  v16 = a4[19];
  v17 = *(a4 + 40);
  v18 = a5[17];
  v19 = *(a5 + 36);
  v20 = a5[19];
  v21 = *(a5 + 40);
  v83 = *(*v5 + 96);
  v69 = *a2;
  v70 = *(a2 + 1);
  v71 = *(a2 + 3);
  v72 = *(a2 + 5);
  v73 = *(a2 + 7);
  v74 = *(a2 + 9);
  v75 = *(a2 + 11);
  v76 = *(a2 + 13);
  v77 = *(a2 + 15);
  v78 = v6;
  v79 = v7;
  v80 = v8;
  v81 = v9;
  v82 = *(a2 + 164);
  v55 = *a3;
  v56 = *(a3 + 1);
  v57 = *(a3 + 3);
  v58 = *(a3 + 5);
  v59 = *(a3 + 7);
  v60 = *(a3 + 9);
  v61 = *(a3 + 11);
  v62 = *(a3 + 13);
  v63 = *(a3 + 15);
  v64 = v10;
  v65 = v11;
  v66 = v12;
  v67 = v13;
  v68 = *(a3 + 164);
  v41 = *a4;
  v42 = *(a4 + 1);
  v43 = *(a4 + 3);
  v44 = *(a4 + 5);
  v45 = *(a4 + 7);
  v46 = *(a4 + 9);
  v47 = *(a4 + 11);
  v48 = *(a4 + 13);
  v49 = *(a4 + 15);
  v50 = v14;
  v51 = v15;
  v52 = v16;
  v53 = v17;
  v54 = *(a4 + 164);
  v27 = *a5;
  v22 = *(a5 + 3);
  v28 = *(a5 + 1);
  v29 = v22;
  v23 = *(a5 + 7);
  v30 = *(a5 + 5);
  v31 = v23;
  v24 = *(a5 + 11);
  v32 = *(a5 + 9);
  v33 = v24;
  v25 = *(a5 + 15);
  v34 = *(a5 + 13);
  v35 = v25;
  v36 = v18;
  v37 = v19;
  v38 = v20;
  v39 = v21;
  v40 = *(a5 + 164);
  return v83(a1, &v69, &v55, &v41, &v27);
}

uint64_t dispatch thunk of BNNS.TernaryArithmeticLayer.applyBackward(batchSize:inputA:inputB:inputC:output:outputGradient:generatingInputAGradient:generatingInputBGradient:generatingInputCGradient:)(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = *(a2 + 36);
  v11 = a2[19];
  v12 = *(a2 + 40);
  v13 = a3[17];
  v14 = *(a3 + 36);
  v15 = a3[19];
  v16 = *(a3 + 40);
  v17 = *(a4 + 136);
  v18 = *(a4 + 144);
  v19 = *(a4 + 152);
  v20 = *(a4 + 160);
  v21 = *(a5 + 136);
  v22 = *(a5 + 144);
  v23 = *(a5 + 152);
  v24 = *(a5 + 160);
  v104 = *(a6 + 136);
  v103 = *(a6 + 144);
  v102 = *(a6 + 152);
  HIDWORD(v101) = *(a6 + 160);
  v25 = *(a2 + 1);
  v26 = *(a2 + 3);
  v27 = *(a2 + 5);
  v28 = *(a2 + 7);
  v29 = *(a2 + 9);
  v30 = *(a2 + 11);
  v31 = *(a2 + 13);
  v32 = *a2;
  v33 = *(a2 + 15);
  v34 = *(a2 + 164);
  v105 = *(a7 + 136);
  v35 = *(a3 + 1);
  v36 = *(a3 + 3);
  v37 = *(a3 + 5);
  v38 = *(a3 + 7);
  v39 = *(a3 + 9);
  v40 = *(a3 + 11);
  v41 = *(a3 + 13);
  v42 = *a3;
  v43 = *(a3 + 15);
  v44 = *(a4 + 8);
  v45 = *(a7 + 144);
  v46 = *(a7 + 152);
  LODWORD(v101) = *(a7 + 160);
  v109 = *(a8 + 136);
  v108 = *(a8 + 144);
  v107 = *(a8 + 152);
  v106 = *(a8 + 160);
  v113 = *(a9 + 136);
  v112 = *(a9 + 144);
  v111 = *(a9 + 152);
  v110 = *(a9 + 160);
  v114 = *(*v9 + 104);
  v47 = *(a3 + 164);
  v223 = a2[17];
  v224 = v10;
  v225 = v11;
  v226 = v12;
  v220 = v30;
  v221 = v31;
  v222 = v33;
  v227 = v34;
  v48 = *(a4 + 24);
  v49 = *(a4 + 40);
  v50 = *(a4 + 56);
  v51 = *(a4 + 72);
  v52 = *(a4 + 88);
  v53 = *(a4 + 104);
  *&v30 = *a4;
  v54 = *(a4 + 120);
  v55 = *(a4 + 164);
  v209 = v13;
  v210 = v14;
  v211 = v15;
  v212 = v16;
  v215 = v25;
  v216 = v26;
  v217 = v27;
  v218 = v28;
  v219 = v29;
  v206 = v40;
  v207 = v41;
  v208 = v43;
  v213 = v47;
  v56 = *(a5 + 8);
  v57 = *(a5 + 24);
  v58 = *(a5 + 40);
  v59 = *(a5 + 56);
  v60 = *(a5 + 72);
  v61 = *(a5 + 88);
  v62 = *(a5 + 104);
  *&v25 = *a5;
  v63 = *(a5 + 120);
  v64 = *(a5 + 164);
  v195 = v17;
  v196 = v18;
  v197 = v19;
  v198 = v20;
  v201 = v35;
  v202 = v36;
  v203 = v37;
  v204 = v38;
  v205 = v39;
  v192 = v52;
  v193 = v53;
  v194 = v54;
  v199 = v55;
  v65 = *(a6 + 8);
  v66 = *(a6 + 24);
  v67 = *(a6 + 40);
  v68 = *(a6 + 56);
  v69 = *(a6 + 72);
  v70 = *(a6 + 88);
  v71 = *(a6 + 104);
  *&v35 = *a6;
  v72 = *(a6 + 120);
  v73 = *(a6 + 164);
  v181 = v21;
  v182 = v22;
  v183 = v23;
  v184 = v24;
  v187 = v44;
  v188 = v48;
  v189 = v49;
  v190 = v50;
  v191 = v51;
  v178 = v61;
  v179 = v62;
  v180 = v63;
  v185 = v64;
  v74 = *(a7 + 8);
  v75 = *(a7 + 24);
  v76 = *(a7 + 40);
  v77 = *(a7 + 56);
  v78 = *(a7 + 72);
  v79 = *(a7 + 88);
  v80 = *(a7 + 104);
  *&v44 = *a7;
  v81 = *(a7 + 120);
  v82 = *(a7 + 164);
  v167 = v104;
  v168 = v103;
  v169 = v102;
  v170 = HIDWORD(v101);
  v173 = v56;
  v174 = v57;
  v175 = v58;
  v176 = v59;
  v177 = v60;
  v164 = v70;
  v165 = v71;
  v166 = v72;
  v171 = v73;
  v83 = *(a8 + 8);
  v84 = *(a8 + 24);
  v85 = *(a8 + 40);
  v86 = *(a8 + 56);
  v87 = *(a8 + 72);
  v88 = *(a8 + 88);
  v89 = *(a8 + 104);
  *&v70 = *a8;
  v90 = *(a8 + 120);
  v91 = *(a8 + 164);
  v153 = v105;
  v154 = v45;
  v155 = v46;
  v156 = v101;
  v159 = v65;
  v160 = v66;
  v161 = v67;
  v162 = v68;
  v163 = v69;
  v150 = v79;
  v151 = v80;
  v152 = v81;
  v157 = v82;
  v139 = v109;
  v140 = v108;
  v141 = v107;
  v142 = v106;
  v145 = v74;
  v146 = v75;
  v147 = v76;
  v148 = v77;
  v149 = v78;
  v136 = v88;
  v137 = v89;
  v138 = v90;
  v143 = v91;
  v92 = *(a9 + 8);
  v93 = *(a9 + 24);
  v94 = *(a9 + 40);
  v95 = *(a9 + 56);
  v96 = *(a9 + 72);
  *&v75 = *a9;
  v97 = *(a9 + 88);
  v98 = *(a9 + 104);
  v99 = *(a9 + 120);
  *&v78 = *(a9 + 164);
  v125 = v113;
  v126 = v112;
  v127 = v111;
  v128 = v110;
  v214 = v32;
  v200 = v42;
  v186 = v30;
  v172 = v25;
  v158 = v35;
  v144 = v44;
  v130 = v70;
  v131 = v83;
  v132 = v84;
  v133 = v85;
  v134 = v86;
  v135 = v87;
  v116 = v75;
  v117 = v92;
  v118 = v93;
  v119 = v94;
  v120 = v95;
  v121 = v96;
  v122 = v97;
  v123 = v98;
  v124 = v99;
  v129 = v78;
  return v114(a1, &v214, &v200, &v186, &v172, &v158, &v144, &v130, &v116, v101, v102);
}

uint64_t BNNS.GramLayer.__allocating_init(input:output:alpha:filterParameters:)(_OWORD *a1, _OWORD *a2, uint32_t a3, size_t a4, int (__cdecl *a5)(void **, size_t, size_t), void (__cdecl *a6)(void *), float a7)
{
  v25 = *MEMORY[0x1E69E9840];
  v7 = a2[8];
  v8 = a2[9];
  v9 = a2[6];
  *&layer_params.o_desc.stride[5] = a2[7];
  *&layer_params.o_desc.stride[7] = v7;
  v10 = a2[10];
  *&layer_params.o_desc.data_type = v8;
  *&layer_params.o_desc.table_data_type = v10;
  v11 = a2[4];
  *&layer_params.o_desc.stride[1] = a2[5];
  *&layer_params.o_desc.stride[3] = v9;
  v12 = a2[2];
  *&layer_params.o_desc.size[5] = a2[3];
  *&layer_params.o_desc.size[7] = v11;
  v13 = a2[1];
  *&layer_params.o_desc.flags = *a2;
  *&layer_params.o_desc.size[1] = v13;
  *&layer_params.o_desc.size[3] = v12;
  v14 = a1[5];
  *&v24[68] = a1[4];
  v15 = a1[2];
  *&v24[52] = a1[3];
  v16 = a1[6];
  *&v24[116] = a1[7];
  v17 = a1[9];
  *&v24[132] = a1[8];
  *&v24[148] = v17;
  *&v24[164] = a1[10];
  *&v24[84] = v14;
  *&v24[100] = v16;
  v18 = a1[1];
  *&v24[4] = *a1;
  *&v24[20] = v18;
  *&v24[36] = v15;
  layer_params.alpha = a7;
  *(&layer_params.i_desc.stride[6] + 4) = *&v24[128];
  *(&layer_params.i_desc.data + 4) = *&v24[144];
  *(&layer_params.i_desc.table_data + 4) = *&v24[160];
  *(&layer_params.i_desc.data_bias + 1) = *&v24[176];
  *(&layer_params.i_desc.size[6] + 4) = *&v24[64];
  *(layer_params.i_desc.stride + 4) = *&v24[80];
  *(&layer_params.i_desc.stride[2] + 4) = *&v24[96];
  *(&layer_params.i_desc.stride[4] + 4) = *&v24[112];
  *(&layer_params.alpha + 1) = *v24;
  *(layer_params.i_desc.size + 4) = *&v24[16];
  *(&layer_params.i_desc.size[2] + 4) = *&v24[32];
  *(&layer_params.i_desc.size[4] + 4) = *&v24[48];
  if (a5 == 1)
  {
    p_filter_params = 0;
  }

  else
  {
    filter_params.flags = a3;
    filter_params.n_threads = a4;
    filter_params.alloc_memory = a5;
    filter_params.free_memory = a6;
    p_filter_params = &filter_params;
  }

  v20 = BNNSFilterCreateLayerGram(&layer_params, p_filter_params);
  type metadata accessor for BNNS.GramLayer();
  result = swift_allocObject();
  if (v20)
  {
    *(result + 16) = v20;
  }

  else
  {
    type metadata accessor for BNNS.Layer();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return result;
}

uint64_t BNNS.GramLayer.__deallocating_deinit()
{
  BNNSFilterDestroy(*(v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t vImage.PixelBuffer<>.applyGamma(_:intermediateBuffer:destination:)(unsigned int *a1, uint64_t *a2, void **a3)
{
  return vImage.PixelBuffer<>.applyGamma(_:intermediateBuffer:destination:)(a1, a2, a3, 4);
}

{
  return vImage.PixelBuffer<>.applyGamma(_:intermediateBuffer:destination:)(a1, a2, a3, 3);
}

{
  return vImage.PixelBuffer<>.applyGamma(_:intermediateBuffer:destination:)(a1, a2, a3, 2);
}

{
  return vImage.PixelBuffer<>.applyGamma(_:intermediateBuffer:destination:)(a1, a2, a3, 1);
}

uint64_t _s10Accelerate6vImageO11PixelBufferVA2A06StaticC6FormatRzs5UInt8V13ComponentTypeRtzrlE11_applyGamma_012intermediateD011destination15widthMultiplier05pixelF0yAC0K0O_AEy_qd_0_GSgAEy_qd__GSiqd__mtAaFRd__AaFRd_0_r0_lFAC14Interleaved8x4V_AvC14InterleavedFx4VTt3B5Tm(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v32 = *MEMORY[0x1E69E9840];
  if (!a5[2])
  {
    __break(1u);
    goto LABEL_35;
  }

  v9 = a5[6];
  if (v9 < 0)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v10 = a5[5];
  if ((v10 & 0x8000000000000000) != 0)
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

  if (!v10)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (!a3[2])
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v12 = a3[6];
  if (v12 < 0)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v13 = a3[5];
  if (v13 < 0)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (!v12)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (!v13)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (v9 != v12)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (v10 != v13)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (a2)
  {
    v14 = a2;
    if (*(a2 + 16))
    {
      v15 = *(a2 + 48);
      if ((v15 & 0x8000000000000000) == 0)
      {
        goto LABEL_16;
      }

LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v28 = a5;
  v29 = a4;
  v27 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Accelerate6vImageO13BufferWrapperVGMd);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1B7E76D90;
  v5 = specialized vImage_Buffer.init(width:height:bitsPerPixel:)(v9, v10);
  v6 = v19;
  v7 = v20;
  v8 = v21;
  type metadata accessor for vImage.BufferReference();
  v22 = swift_allocObject();
  v22[2] = v5;
  v22[3] = v6;
  v22[4] = v7;
  v22[5] = v8;
  *(v14 + 32) = v5;
  *(v14 + 40) = v6;
  *(v14 + 48) = v7;
  *(v14 + 56) = v8;
  *(v14 + 64) = v22;
  a1 = v27;
  a5 = v28;
  a4 = v29;
  v15 = *(v14 + 48);
  if (v15 < 0)
  {
    goto LABEL_29;
  }

LABEL_16:
  v16 = *(v14 + 40);
  if (v16 < 0)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if (!v15)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (!v16)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (v9 != v15)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if (v10 != v16)
  {
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v7 = a5[4];
  if (!v7)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v5 = v9 * a4;
  if ((v9 * a4) >> 64 != (v9 * a4) >> 63)
  {
    goto LABEL_52;
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v9 = *(v14 + 32);
  if (!v9)
  {
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
  }

  v8 = a5[7];
  v6 = *(v14 + 56);
  if (BYTE4(a1) == 1)
  {
LABEL_30:
    v18 = *&a1;
    v17 = 1;
    goto LABEL_32;
  }

  if (BYTE4(a1))
  {
    v17 = a1 + 2;
    v18 = 0.0;
  }

  else
  {
    v17 = 0;
    v18 = *&a1;
  }

LABEL_32:

  GammaFunction = vImageCreateGammaFunction(v18, v17, 0);
  src.data = v7;
  src.height = v10;
  src.width = v5;
  src.rowBytes = v8;
  dest.data = v9;
  dest.height = v10;
  dest.width = v5;
  dest.rowBytes = v6;
  vImageGamma_Planar8toPlanarF(&src, &dest, GammaFunction, 0);
  v24 = a3[4];
  if (!v24)
  {
    goto LABEL_56;
  }

  v25 = a3[7];
  src.data = v9;
  src.height = v10;
  src.width = v5;
  src.rowBytes = v6;
  dest.data = v24;
  dest.height = v10;
  dest.width = v5;
  dest.rowBytes = v25;
  vImageConvert_PlanarFtoPlanar8(&src, &dest, 1.0, 0.0, 0);
  vImageDestroyGammaFunction(GammaFunction);
}

void vImage.PixelBuffer<>._applyGamma<A, B>(_:intermediateBuffer:destination:widthMultiplier:pixelFormat:)(int *a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v32 = a4;
  v33 = a8;
  v14 = *a1;
  v36 = *(a1 + 4);
  v15 = *a2;
  v16 = *a3;
  v17 = *v11;
  v40 = *v11;
  vImage.PixelBuffer.size.getter(&v39);
  v18 = v39;
  v34 = a10;
  v35 = v16;
  v38 = v16;
  type metadata accessor for vImage.PixelBuffer();
  vImage.PixelBuffer.size.getter(&v37);
  if (v18 == v37)
  {
    v31 = v14;
    v20 = a7;
    if (v15)
    {
      v22 = v32;
      v21 = v33;
      v23 = v15;
    }

    else
    {
      v22 = v32;
      v38 = v17;
      vImage.PixelBuffer.size.getter(&v39);
      v37 = v39;
      v21 = v33;
      v19 = vImage.PixelBuffer<>.init(size:pixelFormat:)(&v37, v33, a11, &v40);
      v23 = v40;
    }

    v33 = &v30;
    *&v39 = v23;
    MEMORY[0x1EEE9AC00](v19);
    v26[2] = *(a6 + 16);
    v26[3] = v20;
    v26[4] = v21;
    v26[5] = a9;
    v26[6] = v34;
    v26[7] = a11;
    v26[8] = v17;
    v26[9] = v23;
    v26[10] = v22;
    v27 = v31;
    v28 = v36;
    v29 = v35;
    v24 = type metadata accessor for vImage.PixelBuffer();

    _ss20withExtendedLifetimeyq0_x_q0_yq_YKXEtq_YKs5ErrorR_Ri_zRi0_zRi_0_r1_lF(&v39, partial apply for closure #1 in vImage.PixelBuffer<>._applyGamma<A, B>(_:intermediateBuffer:destination:widthMultiplier:pixelFormat:), v26, v24, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v25);
  }

  else
  {
    __break(1u);
  }
}

void closure #1 in vImage.PixelBuffer<>._applyGamma<A, B>(_:intermediateBuffer:destination:widthMultiplier:pixelFormat:)(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v38 = *MEMORY[0x1E69E9840];
  type metadata accessor for vImage.PixelBuffer();
  vImage.PixelBuffer.size.getter(&src);
  data = src.data;
  height = src.height;
  type metadata accessor for vImage.PixelBuffer();
  vImage.PixelBuffer.size.getter(&dest);
  if (data != dest.data || height != dest.height)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v31 = vImage.PixelBuffer<>.vImageBuffer.getter();
  if (!v31)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  src.data = a1;
  v9 = vImage.PixelBuffer.width.getter();
  v10 = v9 * a3;
  if ((v9 * a3) >> 64 != (v9 * a3) >> 63)
  {
    goto LABEL_19;
  }

  v11 = vImage.PixelBuffer.height.getter();
  vImage.PixelBuffer<>.vImageBuffer.getter();
  if (((v11 | v10) & 0x8000000000000000) != 0)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v30 = v12;
  v13 = vImage.PixelBuffer<>.vImageBuffer.getter();
  if (!v13)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v14 = v13;
  src.data = a2;
  v15 = vImage.PixelBuffer.width.getter();
  v16 = v15 * a3;
  if ((v15 * a3) >> 64 != (v15 * a3) >> 63)
  {
    goto LABEL_21;
  }

  v17 = v10;
  v18 = vImage.PixelBuffer.height.getter();
  vImage.PixelBuffer<>.vImageBuffer.getter();
  v34 = v19;
  if (((v18 | v16) & 0x8000000000000000) != 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (BYTE4(a4) == 1)
  {
    v22 = *&a4;
    v21 = 1;
    v20 = v31;
  }

  else
  {
    v20 = v31;
    if (BYTE4(a4))
    {
      v21 = a4 + 2;
      v22 = 0.0;
    }

    else
    {
      v21 = 0;
      v22 = *&a4;
    }
  }

  GammaFunction = vImageCreateGammaFunction(v22, v21, 0);
  src.data = v20;
  src.height = v11;
  src.width = v17;
  src.rowBytes = v30;
  dest.data = v14;
  dest.height = v18;
  dest.width = v16;
  dest.rowBytes = v34;
  vImageGamma_Planar8toPlanarF(&src, &dest, GammaFunction, 0);
  type metadata accessor for vImage.PixelBuffer();
  v24 = vImage.PixelBuffer<>.vImageBuffer.getter();
  if (!v24)
  {
LABEL_27:
    __break(1u);
  }

  v25 = v24;
  src.data = a5;
  v26 = vImage.PixelBuffer.width.getter();
  v27 = v26 * a3;
  if ((v26 * a3) >> 64 != (v26 * a3) >> 63)
  {
    goto LABEL_23;
  }

  v28 = vImage.PixelBuffer.height.getter();
  vImage.PixelBuffer<>.vImageBuffer.getter();
  if (((v28 | v27) & 0x8000000000000000) != 0)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  src.data = v14;
  src.height = v18;
  src.width = v16;
  src.rowBytes = v34;
  dest.data = v25;
  dest.height = v28;
  dest.width = v27;
  dest.rowBytes = v29;
  vImageConvert_PlanarFtoPlanar8(&src, &dest, 1.0, 0.0, 0);
  vImageDestroyGammaFunction(GammaFunction);
}

uint64_t _ss20withExtendedLifetimeyq0_x_q0_yq_YKXEtq_YKs5ErrorR_Ri_zRi0_zRi_0_r1_lF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v14(v13);
  if (v8)
  {
    return (*(v11 + 32))(a8, v13, a5);
  }

  return result;
}

void vImage.PixelBuffer<>.applyGamma(_:destination:)(uint64_t a1, void **a2, uint64_t a3, uint64_t a4)
{
  v6 = (*(a4 + 24))(*(a3 + 16), a4);

  vImage.PixelBuffer<>._applyGamma<A>(_:destination:widthMultiplier:pixelFormat:)(a1, a2, v6);
}

void vImage.PixelBuffer<>._applyGamma<A>(_:destination:widthMultiplier:pixelFormat:)(uint64_t a1, void **a2, uint64_t a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v27 = *a1;
  v28 = *(a1 + 4);
  v5 = *a2;
  v6 = *v3;
  vImage.PixelBuffer.size.getter(&src);
  data = src.data;
  height = src.height;
  type metadata accessor for vImage.PixelBuffer();
  vImage.PixelBuffer.size.getter(&dest);
  if (data != dest.data || height != dest.height)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = vImage.PixelBuffer<>.vImageBuffer.getter();
  if (!v9)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
  }

  v10 = v9;
  src.data = v6;
  v11 = vImage.PixelBuffer.width.getter();
  v12 = v11 * a3;
  if ((v11 * a3) >> 64 != (v11 * a3) >> 63)
  {
    goto LABEL_16;
  }

  v26 = v10;
  v13 = vImage.PixelBuffer.height.getter();
  vImage.PixelBuffer<>.vImageBuffer.getter();
  if (((v13 | v12) & 0x8000000000000000) != 0)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v15 = v14;
  v16 = vImage.PixelBuffer<>.vImageBuffer.getter();
  if (!v16)
  {
    goto LABEL_21;
  }

  v17 = v16;
  src.data = v5;
  v18 = vImage.PixelBuffer.width.getter();
  v19 = v18 * a3;
  if ((v18 * a3) >> 64 != (v18 * a3) >> 63)
  {
    goto LABEL_18;
  }

  v20 = vImage.PixelBuffer.height.getter();
  vImage.PixelBuffer<>.vImageBuffer.getter();
  if (((v20 | v19) & 0x8000000000000000) != 0)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v22 = v21;
  if (v28 == 1)
  {
    v24 = v27;
    v23 = 1;
  }

  else if (v28)
  {
    v23 = LODWORD(v27) + 2;
    v24 = 0.0;
  }

  else
  {
    v23 = 0;
    v24 = v27;
  }

  GammaFunction = vImageCreateGammaFunction(v24, v23, 0);
  src.data = v26;
  src.height = v13;
  src.width = v12;
  src.rowBytes = v15;
  dest.data = v17;
  dest.height = v20;
  dest.width = v19;
  dest.rowBytes = v22;
  vImageGamma_PlanarF(&src, &dest, GammaFunction, 0);
  vImageDestroyGammaFunction(GammaFunction);
}

vImage_Error vImage.PixelBuffer<>.applyGamma(linearParameters:exponentialParameters:boundary:destination:)(float a1, float a2, float a3, float a4, float a5, float a6, float a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v43 = *MEMORY[0x1E69E9840];
  vImage.PixelBuffer.size.getter(&src);
  vImage.PixelBuffer.size.getter(&dest);
  if (src.data != dest.data || src.height != dest.height)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v20 = vImage.PixelBuffer<>.vImageBuffer.getter();
  if (!v20)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
  }

  v21 = v20;
  v22 = vImage.PixelBuffer.width.getter();
  v23 = *(a9 + 16);
  v37 = *(a10 + 24);
  v24 = v37(v23, a10);
  if ((v22 * v24) >> 64 != (v22 * v24) >> 63)
  {
    goto LABEL_13;
  }

  v38 = v22 * v24;
  v25 = vImage.PixelBuffer.height.getter();
  vImage.PixelBuffer<>.vImageBuffer.getter();
  if (((v25 | v38) & 0x8000000000000000) != 0)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v35 = v26;
  v36 = v21;
  v27 = vImage.PixelBuffer<>.vImageBuffer.getter();
  if (!v27)
  {
    goto LABEL_18;
  }

  v28 = v27;
  v29 = vImage.PixelBuffer.width.getter();
  v30 = v37(v23, a10);
  v31 = v29 * v30;
  if ((v29 * v30) >> 64 != (v29 * v30) >> 63)
  {
    goto LABEL_15;
  }

  v32 = vImage.PixelBuffer.height.getter();
  vImage.PixelBuffer<>.vImageBuffer.getter();
  if (((v32 | v31) & 0x8000000000000000) != 0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  src.data = v36;
  src.height = v25;
  src.width = v38;
  src.rowBytes = v35;
  dest.data = v28;
  dest.height = v32;
  dest.width = v31;
  dest.rowBytes = v33;
  v40[0] = a3;
  v40[1] = a4;
  v40[2] = a6;
  v39[0] = a1;
  v39[1] = a2;
  return vImagePiecewiseGamma_PlanarF(&src, &dest, v40, a5, v39, a7, 0);
}

vImage_Error vImage.PixelBuffer<>.applyGamma(linearParameters:exponentialParameters:boundary:destination:)(Pixel_8 a1, float a2, float a3, float a4, float a5, float a6, float a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v45 = *MEMORY[0x1E69E9840];
  vImage.PixelBuffer.size.getter(&src);
  vImage.PixelBuffer.size.getter(&dest);
  if (src.data != dest.data || src.height != dest.height)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v39 = a1;
  v38 = vImage.PixelBuffer<>.vImageBuffer.getter();
  if (!v38)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
  }

  v20 = vImage.PixelBuffer.width.getter();
  v21 = *(a9 + 16);
  v22 = *(a10 + 24);
  v23 = v22(v21, a10);
  if ((v20 * v23) >> 64 != (v20 * v23) >> 63)
  {
    goto LABEL_13;
  }

  v24 = v20 * v23;
  v40 = v22;
  v25 = vImage.PixelBuffer.height.getter();
  vImage.PixelBuffer<>.vImageBuffer.getter();
  v37 = v25;
  if (((v25 | v24) & 0x8000000000000000) != 0)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v35 = v26;
  v36 = v24;
  v27 = vImage.PixelBuffer<>.vImageBuffer.getter();
  if (!v27)
  {
    goto LABEL_18;
  }

  v28 = v27;
  v29 = vImage.PixelBuffer.width.getter();
  v30 = v40(v21, a10);
  v31 = v29 * v30;
  if ((v29 * v30) >> 64 != (v29 * v30) >> 63)
  {
    goto LABEL_15;
  }

  v32 = vImage.PixelBuffer.height.getter();
  vImage.PixelBuffer<>.vImageBuffer.getter();
  if (((v32 | v31) & 0x8000000000000000) != 0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  src.data = v38;
  src.height = v37;
  src.width = v36;
  src.rowBytes = v35;
  dest.data = v28;
  dest.height = v32;
  dest.width = v31;
  dest.rowBytes = v33;
  v42[0] = a4;
  v42[1] = a5;
  v42[2] = a7;
  v41[0] = a2;
  v41[1] = a3;
  return vImagePiecewiseGamma_Planar8(&src, &dest, v42, a6, v41, v39, 0);
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for vImage.Gamma(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 5))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 4);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for vImage.Gamma(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 4) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTag for vImage.Gamma(uint64_t a1)
{
  if (*(a1 + 4) <= 1u)
  {
    return *(a1 + 4);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t destructiveInjectEnumTag for vImage.Gamma(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 4) = a2;
  return result;
}

void *BNNS.FusedFullyConnectedParameters.init(weights:bias:)@<X0>(_OWORD *a1@<X0>, __int128 *a2@<X1>, void *a3@<X8>)
{
  _sSo21BNNSNDArrayDescriptoraSgWOi0_(&v22[11]);
  v6 = a1[9];
  v22[8] = a1[8];
  v22[9] = v6;
  v7 = a1[5];
  v22[4] = a1[4];
  v22[5] = v7;
  v8 = a1[7];
  v22[6] = a1[6];
  v22[7] = v8;
  v9 = a1[1];
  v22[0] = *a1;
  v22[1] = v9;
  v10 = a1[3];
  v22[2] = a1[2];
  v22[3] = v10;
  v11 = a2[8];
  v12 = a2[10];
  v22[20] = a2[9];
  v22[21] = v12;
  v13 = a2[4];
  v14 = a2[6];
  v15 = a2[7];
  v22[16] = a2[5];
  v22[17] = v14;
  v16 = a1[10];
  v22[18] = v15;
  v22[19] = v11;
  v17 = *a2;
  v18 = a2[1];
  v22[10] = v16;
  v22[11] = v17;
  v19 = a2[2];
  v20 = a2[3];
  v22[12] = v18;
  v22[13] = v19;
  LOBYTE(v22[22]) = *(a2 + 176);
  v22[14] = v20;
  v22[15] = v13;
  return memcpy(a3, v22, 0x161uLL);
}

__n128 BNNS.FusedFullyConnectedParameters.weights.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 144);
  *(a1 + 128) = *(v1 + 128);
  *(a1 + 144) = v2;
  *(a1 + 160) = *(v1 + 160);
  v3 = *(v1 + 80);
  *(a1 + 64) = *(v1 + 64);
  *(a1 + 80) = v3;
  v4 = *(v1 + 112);
  *(a1 + 96) = *(v1 + 96);
  *(a1 + 112) = v4;
  v5 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v5;
  result = *(v1 + 48);
  *(a1 + 32) = *(v1 + 32);
  *(a1 + 48) = result;
  return result;
}

__n128 BNNS.FusedFullyConnectedParameters.weights.setter(uint64_t a1)
{
  v2 = *(a1 + 144);
  *(v1 + 128) = *(a1 + 128);
  *(v1 + 144) = v2;
  *(v1 + 160) = *(a1 + 160);
  v3 = *(a1 + 80);
  *(v1 + 64) = *(a1 + 64);
  *(v1 + 80) = v3;
  v4 = *(a1 + 112);
  *(v1 + 96) = *(a1 + 96);
  *(v1 + 112) = v4;
  v5 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v5;
  result = *(a1 + 48);
  *(v1 + 32) = *(a1 + 32);
  *(v1 + 48) = result;
  return result;
}

__n128 BNNS.FusedFullyConnectedParameters.bias.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 320);
  *(a1 + 128) = *(v1 + 304);
  *(a1 + 144) = v2;
  *(a1 + 160) = *(v1 + 336);
  *(a1 + 176) = *(v1 + 352);
  v3 = *(v1 + 256);
  *(a1 + 64) = *(v1 + 240);
  *(a1 + 80) = v3;
  v4 = *(v1 + 288);
  *(a1 + 96) = *(v1 + 272);
  *(a1 + 112) = v4;
  v5 = *(v1 + 192);
  *a1 = *(v1 + 176);
  *(a1 + 16) = v5;
  result = *(v1 + 208);
  v7 = *(v1 + 224);
  *(a1 + 32) = result;
  *(a1 + 48) = v7;
  return result;
}

__n128 BNNS.FusedFullyConnectedParameters.bias.setter(uint64_t a1)
{
  v2 = *(a1 + 144);
  *(v1 + 304) = *(a1 + 128);
  *(v1 + 320) = v2;
  *(v1 + 336) = *(a1 + 160);
  *(v1 + 352) = *(a1 + 176);
  v3 = *(a1 + 80);
  *(v1 + 240) = *(a1 + 64);
  *(v1 + 256) = v3;
  v4 = *(a1 + 112);
  *(v1 + 272) = *(a1 + 96);
  *(v1 + 288) = v4;
  v5 = *(a1 + 16);
  *(v1 + 176) = *a1;
  *(v1 + 192) = v5;
  result = *(a1 + 32);
  v7 = *(a1 + 48);
  *(v1 + 208) = result;
  *(v1 + 224) = v7;
  return result;
}

double protocol witness for FusableLayerParametersWrapper.layerParameters(input:output:) in conformance BNNS.FusedFullyConnectedParameters@<D0>(_OWORD *a1@<X0>, _OWORD *a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = v3[9];
  v56 = v3[8];
  v57 = v7;
  v8 = v3[11];
  v58 = v3[10];
  v9 = v3[5];
  v52 = v3[4];
  v53 = v9;
  v10 = v3[7];
  v54 = v3[6];
  v55 = v10;
  v11 = v3[1];
  v48 = *v3;
  v49 = v11;
  v12 = v3[3];
  v50 = v3[2];
  v51 = v12;
  v13 = v3[20];
  v14 = v3[21];
  v15 = v3[18];
  v67 = v3[19];
  v68 = v13;
  v69 = v14;
  v16 = v3[16];
  v17 = v3[17];
  v18 = v3[14];
  v63 = v3[15];
  v64 = v16;
  v65 = v17;
  v66 = v15;
  v19 = v3[12];
  v20 = v3[13];
  v59 = v8;
  v60 = v19;
  v70 = *(v3 + 352);
  v61 = v20;
  v62 = v18;
  if (_sSo21BNNSNDArrayDescriptoraSgWOg(&v59) == 1)
  {
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v37 = 0u;
  }

  else
  {
    v45 = v67;
    v46 = v68;
    v47 = v69;
    v41 = v63;
    v42 = v64;
    v43 = v65;
    v44 = v66;
    v37 = v59;
    v38 = v60;
    v39 = v61;
    v40 = v62;
  }

  v21 = a1[9];
  v36[8] = a1[8];
  v36[9] = v21;
  v22 = a1[10];
  v23 = a1[5];
  v36[4] = a1[4];
  v36[5] = v23;
  v24 = a1[7];
  v36[6] = a1[6];
  v36[7] = v24;
  v25 = a1[1];
  v36[0] = *a1;
  v36[1] = v25;
  v26 = a1[3];
  v36[2] = a1[2];
  v36[3] = v26;
  v36[18] = v55;
  v36[19] = v56;
  v36[20] = v57;
  v36[21] = v58;
  v36[14] = v51;
  v36[15] = v52;
  v36[16] = v53;
  v36[17] = v54;
  v36[10] = v22;
  v36[11] = v48;
  v36[12] = v49;
  v36[13] = v50;
  v27 = a2[9];
  v36[30] = a2[8];
  v36[31] = v27;
  v28 = a2[5];
  v36[26] = a2[4];
  v36[27] = v28;
  v29 = a2[7];
  v36[28] = a2[6];
  v36[29] = v29;
  v30 = a2[1];
  v36[22] = *a2;
  v36[23] = v30;
  v31 = a2[3];
  v36[24] = a2[2];
  v36[25] = v31;
  v36[40] = v44;
  v36[41] = v45;
  v36[42] = v46;
  v36[43] = v47;
  v36[36] = v40;
  v36[37] = v41;
  v32 = a2[10];
  v36[38] = v42;
  v36[39] = v43;
  v36[32] = v32;
  v36[33] = v37;
  v36[34] = v38;
  v36[35] = v39;
  type metadata accessor for BNNSLayerParametersFullyConnected(0);
  a3[3] = v33;
  a3[4] = &protocol witness table for BNNSLayerParametersFullyConnected;
  v34 = swift_allocObject();
  *a3 = v34;
  memcpy((v34 + 16), v36, 0x2C0uLL);
  *(v34 + 720) = 0x7FC0000000000000;
  *(v34 + 728) = 0x17FC00000;
  result = 0.0;
  *(v34 + 736) = 0u;
  *(v34 + 752) = 0u;
  return result;
}

uint64_t getEnumTagSinglePayload for BNNS.FusedFullyConnectedParameters(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 353))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for BNNS.FusedFullyConnectedParameters(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 344) = 0;
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
    *(result + 328) = 0u;
    *(result + 352) = 0;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = (a2 - 1);
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

  *(result + 353) = v3;
  return result;
}

void BNNSTensor.makeArray<A>(of:)(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 - 8) + 72);
  if (v3)
  {
    if (*(v2 + 144) != 0x8000000000000000 || v3 != -1)
    {
      UnsafeMutableBufferPointer.init(start:count:)();
      type metadata accessor for UnsafeMutableBufferPointer();
      swift_getWitnessTable();
      Array.init<A>(_:)();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t BNNSTensor.allocate<A, B>(initializingFrom:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *v5 = (*(a4 + 8))(a2, a4);
  result = (*(a5 + 16))(a3, a5);
  v10 = *(*(a2 - 8) + 72);
  if ((result * v10) >> 64 == (result * v10) >> 63)
  {
    *(v5 + 144) = result * v10;
    MEMORY[0x1EEE9AC00](result);
    return (*(a5 + 24))(partial apply for closure #1 in BNNSTensor.allocate<A, B>(initializingFrom:));
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *closure #1 in BNNSTensor.allocate<A, B>(initializingFrom:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  (*(a8 + 16))(a6, a8);
  static UnsafeMutableBufferPointer.allocate(capacity:)();
  result = UnsafeMutableBufferPointer.baseAddress.getter();
  if (!result)
  {
    *(a4 + 136) = 0;
    return result;
  }

  v10 = result;
  *(a4 + 136) = result;
  result = UnsafeBufferPointer.baseAddress.getter();
  if (!result)
  {
    goto LABEL_9;
  }

  v11 = *(a4 + 144);
  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  return memmove(v10, result, v11);
}

uint64_t BNNSTensor.allocate<A>(as:count:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  result = (*(a4 + 8))(a3, a4);
  *v5 = result;
  v9 = *(*(a3 - 8) + 72);
  if ((a2 * v9) >> 64 == (a2 * v9) >> 63)
  {
    *(v5 + 144) = a2 * v9;
    static UnsafeMutableBufferPointer.allocate(capacity:)();
    result = UnsafeMutableBufferPointer.baseAddress.getter();
    *(v5 + 136) = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double BNNSTensor.init<A, B>(initializingFrom:shape:stride:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, _OWORD *a7@<X8>)
{
  static BNNSTensor.allocate<A>(initializingFrom:shape:stride:)(a2, a3, a6, a5, v16);

  (*(*(a4 - 8) + 8))(a1, a4);
  v10 = v16[7];
  a7[6] = v16[6];
  a7[7] = v10;
  v11 = v16[9];
  a7[8] = v16[8];
  a7[9] = v11;
  v12 = v16[3];
  a7[2] = v16[2];
  a7[3] = v12;
  v13 = v16[5];
  a7[4] = v16[4];
  a7[5] = v13;
  result = *v16;
  v15 = v16[1];
  *a7 = v16[0];
  a7[1] = v15;
  return result;
}

uint64_t static BNNSTensor.allocate<A>(initializingFrom:shape:stride:)@<X0>(uint64_t a1@<X1>, char *a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X5>, _OWORD *a5@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(a4 + 8);

  v11 = v10(AssociatedTypeWitness, a4);
  specialized BNNSTensor.init(shape:stride:dataType:)(a1, a2, v11, &v20);
  v46 = v26;
  v47 = v27;
  v48 = v28;
  v49 = v29;
  v42 = v22;
  v43 = v23;
  v44 = v24;
  v45 = v25;
  v40 = v20;
  v41 = v21;
  result = BNNSTensor.count.getter();
  v13 = *(*(AssociatedTypeWitness - 8) + 72);
  if ((result * v13) >> 64 == (result * v13) >> 63)
  {
    *&v29 = result * v13;
    v36 = v26;
    v37 = v27;
    v32 = v22;
    v33 = v23;
    v34 = v24;
    v35 = v25;
    v30 = v20;
    v31 = v21;
    v38 = v28;
    v39 = v29;
    BNNSTensor.count.getter();
    static UnsafeMutableBufferPointer.allocate(capacity:)();
    result = UnsafeMutableBufferPointer.baseAddress.getter();
    if (result)
    {
      *(&v28 + 1) = result;
      MEMORY[0x1EEE9AC00](result);
      result = (*(a3 + 24))(partial apply for closure #1 in static BNNSTensor.allocate<A>(initializingFrom:shape:stride:));
      v14 = v27;
      a5[6] = v26;
      a5[7] = v14;
      v15 = v29;
      a5[8] = v28;
      a5[9] = v15;
      v16 = v23;
      a5[2] = v22;
      a5[3] = v16;
      v17 = v25;
      a5[4] = v24;
      a5[5] = v17;
      v18 = v21;
      *a5 = v20;
      a5[1] = v18;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

double BNNSTensor.init(shape:stride:dataType:)@<D0>(uint64_t a1@<X0>, char *a2@<X1>, int a3@<W2>, _OWORD *a4@<X8>)
{
  specialized BNNSTensor.init(shape:stride:dataType:)(a1, a2, a3, v11);
  v5 = v11[7];
  a4[6] = v11[6];
  a4[7] = v5;
  v6 = v11[9];
  a4[8] = v11[8];
  a4[9] = v6;
  v7 = v11[3];
  a4[2] = v11[2];
  a4[3] = v7;
  v8 = v11[5];
  a4[4] = v11[4];
  a4[5] = v8;
  result = *v11;
  v10 = v11[1];
  *a4 = v11[0];
  a4[1] = v10;
  return result;
}

double BNNSTensor.init(dataType:shape:stride:)@<D0>(int a1@<W0>, uint64_t a2@<X1>, char *a3@<X2>, _OWORD *a4@<X8>)
{
  specialized BNNSTensor.init(shape:stride:dataType:)(a2, a3, a1, v11);
  v5 = v11[7];
  a4[6] = v11[6];
  a4[7] = v5;
  v6 = v11[9];
  a4[8] = v11[8];
  a4[9] = v6;
  v7 = v11[3];
  a4[2] = v11[2];
  a4[3] = v7;
  v8 = v11[5];
  a4[4] = v11[4];
  a4[5] = v8;
  result = *v11;
  v10 = v11[1];
  *a4 = v11[0];
  a4[1] = v10;
  return result;
}

uint64_t BNNSTensor.init<A>(data:shape:stride:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v11 = (*(a5 + 8))(a4, a5);
  specialized BNNSTensor.init(shape:stride:dataType:)(a2, a3, v11, v21);
  v12 = v23;
  result = UnsafeMutableBufferPointer.baseAddress.getter();
  v14 = *(*(a4 - 8) + 72);
  v15 = a1 * v14;
  if ((a1 * v14) >> 64 == (a1 * v14) >> 63)
  {
    v16 = v21[7];
    *(a6 + 96) = v21[6];
    *(a6 + 112) = v16;
    v17 = v22;
    v18 = v21[3];
    *(a6 + 32) = v21[2];
    *(a6 + 48) = v18;
    v19 = v21[5];
    *(a6 + 64) = v21[4];
    *(a6 + 80) = v19;
    v20 = v21[1];
    *a6 = v21[0];
    *(a6 + 16) = v20;
    *(a6 + 128) = v17;
    *(a6 + 136) = result;
    *(a6 + 144) = v15;
    *(a6 + 152) = v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double static BNNSTensor.allocateUninitialized(scalarType:shape:stride:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, _OWORD *a5@<X8>)
{
  v9 = (*(a2 + 8))();
  helper #1 <A>(_:) in static BNNSTensor.allocateUninitialized(scalarType:shape:stride:)(a3, a4, v9, a1, v16);
  v10 = v16[7];
  a5[6] = v16[6];
  a5[7] = v10;
  v11 = v16[9];
  a5[8] = v16[8];
  a5[9] = v11;
  v12 = v16[3];
  a5[2] = v16[2];
  a5[3] = v12;
  v13 = v16[5];
  a5[4] = v16[4];
  a5[5] = v13;
  result = *v16;
  v15 = v16[1];
  *a5 = v16[0];
  a5[1] = v15;
  return result;
}

int64_t helper #1 <A>(_:) in static BNNSTensor.allocateUninitialized(scalarType:shape:stride:)@<X0>(uint64_t a1@<X1>, char *a2@<X2>, int a3@<W3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{

  specialized BNNSTensor.init(shape:stride:dataType:)(a1, a2, a3, &v20);
  v10 = v30;
  v49 = v26;
  v50 = v27;
  v51 = v28;
  v45 = v22;
  v46 = v23;
  v47 = v24;
  v48 = v25;
  v43 = v20;
  v44 = v21;
  v19 = v29;
  v52 = v29;
  v53 = v30;
  result = BNNSTensor.count.getter();
  v12 = *(*(a4 - 8) + 72);
  v13 = result * v12;
  if ((result * v12) >> 64 == (result * v12) >> 63)
  {
    v37 = v26;
    v38 = v27;
    v39 = v28;
    v33 = v22;
    v34 = v23;
    v35 = v24;
    v36 = v25;
    v31 = v20;
    v32 = v21;
    v40 = v19;
    v41 = result * v12;
    v42 = v10;
    BNNSTensor.count.getter();
    static UnsafeMutableBufferPointer.allocate(capacity:)();
    result = UnsafeMutableBufferPointer.baseAddress.getter();
    if (result)
    {
      v14 = v27;
      *(a5 + 96) = v26;
      *(a5 + 112) = v14;
      v15 = v28;
      v16 = v23;
      *(a5 + 32) = v22;
      *(a5 + 48) = v16;
      v17 = v25;
      *(a5 + 64) = v24;
      *(a5 + 80) = v17;
      v18 = v21;
      *a5 = v20;
      *(a5 + 16) = v18;
      *(a5 + 128) = v15;
      *(a5 + 136) = result;
      *(a5 + 144) = v13;
      *(a5 + 152) = v10;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t BNNSTensor.count.getter()
{
  v1 = v0[2];
  if (v0[1] <= 1uLL)
  {
    v2 = 1;
  }

  else
  {
    v2 = v0[1];
  }

  if (v1 <= 1)
  {
    v1 = 1;
  }

  v3 = v2 * v1;
  if ((v2 * v1) >> 64 != (v2 * v1) >> 63)
  {
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    return result;
  }

  if (v0[3] <= 1uLL)
  {
    v4 = 1;
  }

  else
  {
    v4 = v0[3];
  }

  v5 = v3 * v4;
  if ((v3 * v4) >> 64 != (v3 * v4) >> 63)
  {
    goto LABEL_32;
  }

  if (v0[4] <= 1uLL)
  {
    v6 = 1;
  }

  else
  {
    v6 = v0[4];
  }

  v7 = v5 * v6;
  if ((v5 * v6) >> 64 != (v5 * v6) >> 63)
  {
    goto LABEL_33;
  }

  if (v0[5] <= 1uLL)
  {
    v8 = 1;
  }

  else
  {
    v8 = v0[5];
  }

  v9 = v7 * v8;
  if ((v7 * v8) >> 64 != (v7 * v8) >> 63)
  {
    goto LABEL_34;
  }

  if (v0[6] <= 1uLL)
  {
    v10 = 1;
  }

  else
  {
    v10 = v0[6];
  }

  v11 = v9 * v10;
  if ((v9 * v10) >> 64 != (v9 * v10) >> 63)
  {
    goto LABEL_35;
  }

  if (v0[7] <= 1uLL)
  {
    v12 = 1;
  }

  else
  {
    v12 = v0[7];
  }

  v13 = v11 * v12;
  if ((v11 * v12) >> 64 != (v11 * v12) >> 63)
  {
    goto LABEL_36;
  }

  v14 = v0[8];
  if (v14 <= 1)
  {
    v14 = 1;
  }

  result = v13 * v14;
  if ((v13 * v14) >> 64 != (v13 * v14) >> 63)
  {
    goto LABEL_37;
  }

  return result;
}

void closure #1 in static BNNSTensor.allocate<A>(initializingFrom:shape:stride:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*(a3 + 136))
  {
    swift_getAssociatedTypeWitness();
    if (UnsafeBufferPointer.baseAddress.getter())
    {
      (*(a6 + 16))(a5, a6);
      UnsafeMutableRawPointer.initializeMemory<A>(as:from:count:)();
    }

    else
    {
      __break(1u);
    }
  }
}

int64_t static BNNSTensor.allocate<A>(repeating:shape:stride:)@<X0>(uint64_t a1@<X1>, char *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v10 = *(a4 + 8);

  v11 = v10(a3, a4);
  specialized BNNSTensor.init(shape:stride:dataType:)(a1, a2, v11, &v23);
  v12 = v33;
  v64 = v29;
  v65 = v30;
  v66 = v31;
  v60 = v25;
  v61 = v26;
  v62 = v27;
  v63 = v28;
  v58 = v23;
  v59 = v24;
  v22 = v32;
  v67 = v32;
  v68 = v33;
  result = BNNSTensor.count.getter();
  v14 = *(*(a3 - 8) + 72);
  v15 = result * v14;
  if ((result * v14) >> 64 == (result * v14) >> 63)
  {
    v52 = v29;
    v53 = v30;
    v54 = v31;
    v48 = v25;
    v49 = v26;
    v50 = v27;
    v51 = v28;
    v46 = v23;
    v47 = v24;
    v55 = v22;
    v56 = result * v14;
    v57 = v12;
    BNNSTensor.count.getter();
    static UnsafeMutableBufferPointer.allocate(capacity:)();
    result = UnsafeMutableBufferPointer.baseAddress.getter();
    if (result)
    {
      v16 = result;
      v40 = v29;
      v41 = v30;
      v36 = v25;
      v37 = v26;
      v38 = v27;
      v39 = v28;
      v34 = v23;
      v35 = v24;
      v42 = v31;
      v43 = result;
      v44 = v15;
      v45 = v12;
      BNNSTensor.count.getter();
      result = UnsafeMutableRawPointer.initializeMemory<A>(as:repeating:count:)();
      v17 = v30;
      *(a5 + 96) = v29;
      *(a5 + 112) = v17;
      v18 = v31;
      v19 = v26;
      *(a5 + 32) = v25;
      *(a5 + 48) = v19;
      v20 = v28;
      *(a5 + 64) = v27;
      *(a5 + 80) = v20;
      v21 = v24;
      *a5 = v23;
      *(a5 + 16) = v21;
      *(a5 + 128) = v18;
      *(a5 + 136) = v16;
      *(a5 + 144) = v15;
      *(a5 + 152) = v12;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall BNNSTensor.deallocate()()
{
  if (*(v0 + 136))
  {
    JUMPOUT(0x1B8CB2C50);
  }
}

uint64_t vImage.BufferReference.__deallocating_deinit()
{
  result = *(v0 + 16);
  if (result)
  {
    MEMORY[0x1B8CB2C50](result, -1, -1);

    return swift_deallocClassInstance();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for vImage.BufferWrapper(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for vImage.BufferWrapper(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

void *specialized vImage.BufferWrapper.init(copying:bitsPerPixel:)@<X0>(void *a1@<X0>, vImagePixelCount a2@<X1>, vImagePixelCount a3@<X2>, size_t a4@<X3>, unint64_t a5@<X4>, void *a6@<X8>)
{
  v24 = *MEMORY[0x1E69E9840];
  dest.data = a1;
  dest.height = a2;
  dest.width = a3;
  dest.rowBytes = a4;
  MEMORY[0x1B8CB31D0](&dest);
  if ((a5 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_5:
    __break(1u);
  }

  if (HIDWORD(a5))
  {
    goto LABEL_5;
  }

  dest.data = specialized vImage_Buffer.init(size:bitsPerPixel:)(v12, v13);
  dest.height = v14;
  dest.width = v15;
  dest.rowBytes = v16;
  v22[0] = 0;
  vImage_Buffer.copy(destinationBuffer:pixelSize:flags:)(&dest, a5 >> 3, v22, a1, a2, a3, a4);
  data = dest.data;
  height = dest.height;
  width = dest.width;
  rowBytes = dest.rowBytes;
  type metadata accessor for vImage.BufferReference();
  result = swift_allocObject();
  result[2] = data;
  result[3] = height;
  result[4] = width;
  result[5] = rowBytes;
  *a6 = data;
  a6[1] = height;
  a6[2] = width;
  a6[3] = rowBytes;
  a6[4] = result;
  return result;
}

uint64_t specialized vImage.BufferWrapper.init(cgImage:format:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v15 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v4 = MEMORY[0x1B8CB3200](&v13, a2, 0, a1, 0);
  if (v4)
  {
    v5 = v4;
    lazy protocol witness table accessor for type vImage.Error and conformance vImage.Error();
    swift_allocError();
    v7 = v6;
    vImage.Error.init(rawValue:)(v5, &v12);
    v8 = v12;
    if (v12 == 20)
    {
      v8 = 11;
    }

    *v7 = v8;
    return swift_willThrow();
  }

  else
  {
    v10 = v13;
    v11 = v14;
    type metadata accessor for vImage.BufferReference();
    result = swift_allocObject();
    *(result + 16) = v10;
    *(result + 32) = v11;
    *a3 = v10;
    *(a3 + 16) = v11;
    *(a3 + 32) = result;
  }

  return result;
}

uint64_t specialized vImage.BufferWrapper.init(cvPixelBuffer:cvImageFormat:cgImageFormat:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v16 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v5 = MEMORY[0x1B8CB3210](&v14, a3, a1, a2, 0, 0);
  if (v5)
  {
    v6 = v5;
    lazy protocol witness table accessor for type vImage.Error and conformance vImage.Error();
    swift_allocError();
    v8 = v7;
    vImage.Error.init(rawValue:)(v6, &v13);
    v9 = v13;
    if (v13 == 20)
    {
      v9 = 11;
    }

    *v8 = v9;
    return swift_willThrow();
  }

  else
  {
    v11 = v14;
    v12 = v15;
    type metadata accessor for vImage.BufferReference();
    result = swift_allocObject();
    *(result + 16) = v11;
    *(result + 32) = v12;
    *a4 = v11;
    *(a4 + 16) = v12;
    *(a4 + 32) = result;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type vImage.Error and conformance vImage.Error()
{
  result = lazy protocol witness table cache variable for type vImage.Error and conformance vImage.Error;
  if (!lazy protocol witness table cache variable for type vImage.Error and conformance vImage.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type vImage.Error and conformance vImage.Error);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type vImage.Error and conformance vImage.Error;
  if (!lazy protocol witness table cache variable for type vImage.Error and conformance vImage.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type vImage.Error and conformance vImage.Error);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type vImage.Error and conformance vImage.Error;
  if (!lazy protocol witness table cache variable for type vImage.Error and conformance vImage.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type vImage.Error and conformance vImage.Error);
  }

  return result;
}

uint64_t vImage.PixelBuffer<>.init(interleavedBuffer:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  if (!*(*a1 + 16))
  {
    __break(1u);
    goto LABEL_8;
  }

  v5 = *(v4 + 48);
  if (v5 < 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v2 = *(v4 + 40);
  if (v2 < 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (!v5)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Accelerate6vImageO13BufferWrapperVGMd);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1B7E76D90;
    v7 = specialized vImage_Buffer.init(width:height:bitsPerPixel:)(v5, v2);
    v9 = v8;
    v11 = v10;
    v13 = v12;
    type metadata accessor for vImage.BufferReference();
    v14 = swift_allocObject();
    v14[2] = v7;
    v14[3] = v9;
    v14[4] = v11;
    v14[5] = v13;
    *(v6 + 32) = v7;
    *(v6 + 40) = v9;
    *(v6 + 48) = v11;
    *(v6 + 56) = v13;
    *(v6 + 64) = v14;
    v16[0] = v6;
    v16[1] = v4;

    vImage.PixelBuffer<>.convert(to:)(v16);

    *a2 = v6;
    return result;
  }

LABEL_11:
  __break(1u);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

vImage_Error vImage.PixelBuffer<>.convert(to:channelOrdering:)(uint64_t a1, _BYTE *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = *v2;
  if (!*(*v2 + 16))
  {
    __break(1u);
    goto LABEL_18;
  }

  v4 = v3[6];
  if ((v4 & 0x8000000000000000) != 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v5 = v3[5];
  if ((v5 & 0x8000000000000000) != 0)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (!v4)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v5)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v6 = *a1;
  if (!*(*a1 + 16))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v7 = v6[6];
  if (v7 < 0)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v8 = v6[5];
  if (v8 < 0)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (!v7)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (!v8)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v4 != v7)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  if (v5 != v8)
  {
    goto LABEL_28;
  }

  v9 = v3[4];
  v10 = v3[7];
  src.data = v9;
  src.height = v5;
  src.width = v4;
  src.rowBytes = v10;
  v11 = v6[4];
  v12 = v6[7];
  dest.data = v11;
  dest.height = v5;
  dest.width = v4;
  dest.rowBytes = v12;
  if (*a2)
  {
    return vImageConvert_RGBAFFFFtoRGBFFF(&src, &dest, 0);
  }

  else
  {
    return vImageConvert_ARGBFFFFtoRGBFFF(&src, &dest, 0);
  }
}

{
  v16 = *MEMORY[0x1E69E9840];
  v3 = *v2;
  if (!*(*v2 + 16))
  {
    __break(1u);
    goto LABEL_18;
  }

  v4 = v3[6];
  if ((v4 & 0x8000000000000000) != 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v5 = v3[5];
  if ((v5 & 0x8000000000000000) != 0)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (!v4)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v5)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v6 = *a1;
  if (!*(*a1 + 16))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v7 = v6[6];
  if (v7 < 0)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v8 = v6[5];
  if (v8 < 0)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (!v7)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (!v8)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v4 != v7)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  if (v5 != v8)
  {
    goto LABEL_28;
  }

  v9 = v3[4];
  v10 = v3[7];
  v15.data = v9;
  v15.height = v5;
  v15.width = v4;
  v15.rowBytes = v10;
  v11 = v6[4];
  v12 = v6[7];
  v14.data = v11;
  v14.height = v5;
  v14.width = v4;
  v14.rowBytes = v12;
  if (*a2)
  {
    return vImageConvert_RGBA8888toRGB888(&v15, &v14, 0);
  }

  else
  {
    return vImageConvert_ARGB8888toRGB888(&v15, &v14, 0);
  }
}

vImage_Error vImage.PixelBuffer<>.interleave(planarSourceBuffers:)(void *a1)
{
  v31 = *MEMORY[0x1E69E9840];
  if (a1[2] != 4)
  {
    __break(1u);
    goto LABEL_37;
  }

  v2 = *v1;
  if (!*(*v1 + 16))
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v3 = v2[6];
  if ((v3 & 0x8000000000000000) != 0)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v4 = v2[5];
  if ((v4 & 0x8000000000000000) != 0)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (!v3)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (!v4)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v5 = a1[4];
  if (!v5[2])
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v6 = v5[6];
  if (v6 < 0)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v7 = v5[5];
  if (v7 < 0)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (!v6)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (!v7)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (v3 != v6)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if (v4 != v7)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v8 = a1[5];
  if (!v8[2])
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v9 = v8[6];
  if (v9 < 0)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v10 = v8[5];
  if (v10 < 0)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (!v9)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  if (!v10)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  if (v3 != v9)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  if (v4 != v10)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v11 = a1[6];
  if (!*(v11 + 16))
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v12 = *(v11 + 48);
  if (v12 < 0)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v13 = *(v11 + 40);
  if (v13 < 0)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  if (!v12)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  if (!v13)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  if (v3 != v12)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  if (v4 != v13)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v14 = a1[7];
  if (!*(v14 + 16))
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v15 = *(v14 + 48);
  if (v15 < 0)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v16 = *(v14 + 40);
  if (v16 < 0)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  if (!v15)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  if (!v16)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  if (v3 != v15)
  {
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
  }

  if (v4 != v16)
  {
    goto LABEL_69;
  }

  v17 = v5[4];
  v18 = v5[7];
  srcA.data = v17;
  srcA.height = v4;
  srcA.width = v3;
  srcA.rowBytes = v18;
  v19 = v8[4];
  v20 = v8[7];
  srcR.data = v19;
  srcR.height = v4;
  srcR.width = v3;
  srcR.rowBytes = v20;
  v21 = *(v11 + 56);
  srcG.data = *(v11 + 32);
  srcG.height = v4;
  srcG.width = v3;
  srcG.rowBytes = v21;
  v22 = *(v14 + 56);
  srcB.data = *(v14 + 32);
  srcB.height = v4;
  srcB.width = v3;
  srcB.rowBytes = v22;
  v23 = v2[4];
  v24 = v2[7];
  dest.data = v23;
  dest.height = v4;
  dest.width = v3;
  dest.rowBytes = v24;
  return vImageConvert_PlanarFtoARGBFFFF(&srcA, &srcR, &srcG, &srcB, &dest, 0);
}

{
  v31 = *MEMORY[0x1E69E9840];
  if (a1[2] != 4)
  {
    __break(1u);
    goto LABEL_37;
  }

  v2 = *v1;
  if (!*(*v1 + 16))
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v3 = v2[6];
  if ((v3 & 0x8000000000000000) != 0)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v4 = v2[5];
  if ((v4 & 0x8000000000000000) != 0)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (!v3)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (!v4)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v5 = a1[4];
  if (!v5[2])
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v6 = v5[6];
  if (v6 < 0)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v7 = v5[5];
  if (v7 < 0)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (!v6)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (!v7)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (v3 != v6)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if (v4 != v7)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v8 = a1[5];
  if (!v8[2])
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v9 = v8[6];
  if (v9 < 0)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v10 = v8[5];
  if (v10 < 0)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (!v9)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  if (!v10)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  if (v3 != v9)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  if (v4 != v10)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v11 = a1[6];
  if (!*(v11 + 16))
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v12 = *(v11 + 48);
  if (v12 < 0)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v13 = *(v11 + 40);
  if (v13 < 0)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  if (!v12)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  if (!v13)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  if (v3 != v12)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  if (v4 != v13)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v14 = a1[7];
  if (!*(v14 + 16))
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v15 = *(v14 + 48);
  if (v15 < 0)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v16 = *(v14 + 40);
  if (v16 < 0)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  if (!v15)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  if (!v16)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  if (v3 != v15)
  {
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
  }

  if (v4 != v16)
  {
    goto LABEL_69;
  }

  v17 = v5[4];
  v18 = v5[7];
  aSrc.data = v17;
  aSrc.height = v4;
  aSrc.width = v3;
  aSrc.rowBytes = v18;
  v19 = v8[4];
  v20 = v8[7];
  rSrc.data = v19;
  rSrc.height = v4;
  rSrc.width = v3;
  rSrc.rowBytes = v20;
  v21 = *(v11 + 56);
  gSrc.data = *(v11 + 32);
  gSrc.height = v4;
  gSrc.width = v3;
  gSrc.rowBytes = v21;
  v22 = *(v14 + 56);
  bSrc.data = *(v14 + 32);
  bSrc.height = v4;
  bSrc.width = v3;
  bSrc.rowBytes = v22;
  v23 = v2[4];
  v24 = v2[7];
  argbDest.data = v23;
  argbDest.height = v4;
  argbDest.width = v3;
  argbDest.rowBytes = v24;
  return vImageConvert_Planar16UtoARGB16U(&aSrc, &rSrc, &gSrc, &bSrc, &argbDest, 0);
}

{
  v31 = *MEMORY[0x1E69E9840];
  if (a1[2] != 4)
  {
    __break(1u);
    goto LABEL_37;
  }

  v2 = *v1;
  if (!*(*v1 + 16))
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v3 = v2[6];
  if ((v3 & 0x8000000000000000) != 0)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v4 = v2[5];
  if ((v4 & 0x8000000000000000) != 0)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (!v3)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (!v4)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v5 = a1[4];
  if (!v5[2])
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v6 = v5[6];
  if (v6 < 0)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v7 = v5[5];
  if (v7 < 0)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (!v6)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (!v7)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (v3 != v6)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if (v4 != v7)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v8 = a1[5];
  if (!v8[2])
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v9 = v8[6];
  if (v9 < 0)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v10 = v8[5];
  if (v10 < 0)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (!v9)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  if (!v10)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  if (v3 != v9)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  if (v4 != v10)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v11 = a1[6];
  if (!*(v11 + 16))
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v12 = *(v11 + 48);
  if (v12 < 0)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v13 = *(v11 + 40);
  if (v13 < 0)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  if (!v12)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  if (!v13)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  if (v3 != v12)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  if (v4 != v13)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v14 = a1[7];
  if (!*(v14 + 16))
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v15 = *(v14 + 48);
  if (v15 < 0)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v16 = *(v14 + 40);
  if (v16 < 0)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  if (!v15)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  if (!v16)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  if (v3 != v15)
  {
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
  }

  if (v4 != v16)
  {
    goto LABEL_69;
  }

  v17 = v5[4];
  v18 = v5[7];
  srcA.data = v17;
  srcA.height = v4;
  srcA.width = v3;
  srcA.rowBytes = v18;
  v19 = v8[4];
  v20 = v8[7];
  srcR.data = v19;
  srcR.height = v4;
  srcR.width = v3;
  srcR.rowBytes = v20;
  v21 = *(v11 + 56);
  srcG.data = *(v11 + 32);
  srcG.height = v4;
  srcG.width = v3;
  srcG.rowBytes = v21;
  v22 = *(v14 + 56);
  srcB.data = *(v14 + 32);
  srcB.height = v4;
  srcB.width = v3;
  srcB.rowBytes = v22;
  v23 = v2[4];
  v24 = v2[7];
  dest.data = v23;
  dest.height = v4;
  dest.width = v3;
  dest.rowBytes = v24;
  return vImageConvert_Planar8toARGB8888(&srcA, &srcR, &srcG, &srcB, &dest, 0);
}

{
  v26 = *MEMORY[0x1E69E9840];
  if (a1[2] != 3)
  {
    __break(1u);
    goto LABEL_30;
  }

  v2 = *v1;
  if (!*(*v1 + 16))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v3 = v2[6];
  if ((v3 & 0x8000000000000000) != 0)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v4 = v2[5];
  if ((v4 & 0x8000000000000000) != 0)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v3)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (!v4)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v5 = a1[4];
  if (!v5[2])
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v6 = v5[6];
  if (v6 < 0)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v7 = v5[5];
  if (v7 < 0)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (!v6)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (!v7)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v3 != v6)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (v4 != v7)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v8 = a1[5];
  if (!v8[2])
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v9 = v8[6];
  if (v9 < 0)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v10 = v8[5];
  if (v10 < 0)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (!v9)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (!v10)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (v3 != v9)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if (v4 != v10)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v11 = a1[6];
  if (!*(v11 + 16))
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v12 = *(v11 + 48);
  if (v12 < 0)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v13 = *(v11 + 40);
  if (v13 < 0)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (!v12)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  if (!v13)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  if (v3 != v12)
  {
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
  }

  if (v4 != v13)
  {
    goto LABEL_55;
  }

  v14 = v5[4];
  v15 = v5[7];
  planarRed.data = v14;
  planarRed.height = v4;
  planarRed.width = v3;
  planarRed.rowBytes = v15;
  v16 = v8[4];
  v17 = v8[7];
  planarGreen.data = v16;
  planarGreen.height = v4;
  planarGreen.width = v3;
  planarGreen.rowBytes = v17;
  v18 = *(v11 + 56);
  planarBlue.data = *(v11 + 32);
  planarBlue.height = v4;
  planarBlue.width = v3;
  planarBlue.rowBytes = v18;
  v19 = v2[4];
  v20 = v2[7];
  rgbDest.data = v19;
  rgbDest.height = v4;
  rgbDest.width = v3;
  rgbDest.rowBytes = v20;
  return vImageConvert_Planar8toRGB888(&planarRed, &planarGreen, &planarBlue, &rgbDest, 0);
}

{
  v26 = *MEMORY[0x1E69E9840];
  if (a1[2] != 3)
  {
    __break(1u);
    goto LABEL_30;
  }

  v2 = *v1;
  if (!*(*v1 + 16))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v3 = v2[6];
  if ((v3 & 0x8000000000000000) != 0)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v4 = v2[5];
  if ((v4 & 0x8000000000000000) != 0)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v3)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (!v4)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v5 = a1[4];
  if (!v5[2])
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v6 = v5[6];
  if (v6 < 0)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v7 = v5[5];
  if (v7 < 0)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (!v6)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (!v7)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v3 != v6)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (v4 != v7)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v8 = a1[5];
  if (!v8[2])
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v9 = v8[6];
  if (v9 < 0)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v10 = v8[5];
  if (v10 < 0)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (!v9)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (!v10)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (v3 != v9)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if (v4 != v10)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v11 = a1[6];
  if (!*(v11 + 16))
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v12 = *(v11 + 48);
  if (v12 < 0)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v13 = *(v11 + 40);
  if (v13 < 0)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (!v12)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  if (!v13)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  if (v3 != v12)
  {
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
  }

  if (v4 != v13)
  {
    goto LABEL_55;
  }

  v14 = v5[4];
  v15 = v5[7];
  planarRed.data = v14;
  planarRed.height = v4;
  planarRed.width = v3;
  planarRed.rowBytes = v15;
  v16 = v8[4];
  v17 = v8[7];
  planarGreen.data = v16;
  planarGreen.height = v4;
  planarGreen.width = v3;
  planarGreen.rowBytes = v17;
  v18 = *(v11 + 56);
  planarBlue.data = *(v11 + 32);
  planarBlue.height = v4;
  planarBlue.width = v3;
  planarBlue.rowBytes = v18;
  v19 = v2[4];
  v20 = v2[7];
  rgbDest.data = v19;
  rgbDest.height = v4;
  rgbDest.width = v3;
  rgbDest.rowBytes = v20;
  return vImageConvert_PlanarFtoRGBFFF(&planarRed, &planarGreen, &planarBlue, &rgbDest, 0);
}

{
  v31 = *MEMORY[0x1E69E9840];
  if (a1[2] != 4)
  {
    __break(1u);
    goto LABEL_37;
  }

  v2 = *v1;
  if (!*(*v1 + 16))
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v3 = v2[6];
  if ((v3 & 0x8000000000000000) != 0)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v4 = v2[5];
  if ((v4 & 0x8000000000000000) != 0)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (!v3)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (!v4)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v5 = a1[4];
  if (!v5[2])
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v6 = v5[6];
  if (v6 < 0)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v7 = v5[5];
  if (v7 < 0)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (!v6)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (!v7)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (v3 != v6)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if (v4 != v7)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v8 = a1[5];
  if (!v8[2])
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v9 = v8[6];
  if (v9 < 0)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v10 = v8[5];
  if (v10 < 0)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (!v9)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  if (!v10)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  if (v3 != v9)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  if (v4 != v10)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v11 = a1[6];
  if (!*(v11 + 16))
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v12 = *(v11 + 48);
  if (v12 < 0)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v13 = *(v11 + 40);
  if (v13 < 0)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  if (!v12)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  if (!v13)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  if (v3 != v12)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  if (v4 != v13)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v14 = a1[7];
  if (!*(v14 + 16))
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v15 = *(v14 + 48);
  if (v15 < 0)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v16 = *(v14 + 40);
  if (v16 < 0)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  if (!v15)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  if (!v16)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  if (v3 != v15)
  {
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
  }

  if (v4 != v16)
  {
    goto LABEL_69;
  }

  v17 = v5[4];
  v18 = v5[7];
  aSrc.data = v17;
  aSrc.height = v4;
  aSrc.width = v3;
  aSrc.rowBytes = v18;
  v19 = v8[4];
  v20 = v8[7];
  rSrc.data = v19;
  rSrc.height = v4;
  rSrc.width = v3;
  rSrc.rowBytes = v20;
  v21 = *(v11 + 56);
  gSrc.data = *(v11 + 32);
  gSrc.height = v4;
  gSrc.width = v3;
  gSrc.rowBytes = v21;
  v22 = *(v14 + 56);
  bSrc.data = *(v14 + 32);
  bSrc.height = v4;
  bSrc.width = v3;
  bSrc.rowBytes = v22;
  v23 = v2[4];
  v24 = v2[7];
  argbDest.data = v23;
  argbDest.height = v4;
  argbDest.width = v3;
  argbDest.rowBytes = v24;
  return vImageConvert_Planar16UtoARGB16U(&aSrc, &rSrc, &gSrc, &bSrc, &argbDest, 0);
}

vImage_Error vImage.PixelBuffer<>.deinterleave(planarDestinationBuffers:)(void *a1)
{
  v31 = *MEMORY[0x1E69E9840];
  if (a1[2] != 4)
  {
    __break(1u);
    goto LABEL_37;
  }

  v2 = *v1;
  if (!*(*v1 + 16))
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v3 = v2[6];
  if ((v3 & 0x8000000000000000) != 0)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v4 = v2[5];
  if ((v4 & 0x8000000000000000) != 0)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (!v3)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (!v4)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v5 = a1[4];
  if (!v5[2])
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v6 = v5[6];
  if (v6 < 0)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v7 = v5[5];
  if (v7 < 0)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (!v6)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (!v7)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (v3 != v6)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if (v4 != v7)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v8 = a1[5];
  if (!v8[2])
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v9 = v8[6];
  if (v9 < 0)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v10 = v8[5];
  if (v10 < 0)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (!v9)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  if (!v10)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  if (v3 != v9)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  if (v4 != v10)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v11 = a1[6];
  if (!*(v11 + 16))
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v12 = *(v11 + 48);
  if (v12 < 0)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v13 = *(v11 + 40);
  if (v13 < 0)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  if (!v12)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  if (!v13)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  if (v3 != v12)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  if (v4 != v13)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v14 = a1[7];
  if (!*(v14 + 16))
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v15 = *(v14 + 48);
  if (v15 < 0)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v16 = *(v14 + 40);
  if (v16 < 0)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  if (!v15)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  if (!v16)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  if (v3 != v15)
  {
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
  }

  if (v4 != v16)
  {
    goto LABEL_69;
  }

  v17 = v5[4];
  v18 = v5[7];
  destA.data = v17;
  destA.height = v4;
  destA.width = v3;
  destA.rowBytes = v18;
  v19 = v8[4];
  v20 = v8[7];
  destR.data = v19;
  destR.height = v4;
  destR.width = v3;
  destR.rowBytes = v20;
  v21 = *(v11 + 56);
  destG.data = *(v11 + 32);
  destG.height = v4;
  destG.width = v3;
  destG.rowBytes = v21;
  v22 = *(v14 + 56);
  destB.data = *(v14 + 32);
  destB.height = v4;
  destB.width = v3;
  destB.rowBytes = v22;
  v23 = v2[4];
  v24 = v2[7];
  srcARGB.data = v23;
  srcARGB.height = v4;
  srcARGB.width = v3;
  srcARGB.rowBytes = v24;
  return vImageConvert_ARGBFFFFtoPlanarF(&srcARGB, &destA, &destR, &destG, &destB, 0);
}

{
  v31 = *MEMORY[0x1E69E9840];
  if (a1[2] != 4)
  {
    __break(1u);
    goto LABEL_37;
  }

  v2 = *v1;
  if (!*(*v1 + 16))
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v3 = v2[6];
  if ((v3 & 0x8000000000000000) != 0)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v4 = v2[5];
  if ((v4 & 0x8000000000000000) != 0)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (!v3)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (!v4)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v5 = a1[4];
  if (!v5[2])
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v6 = v5[6];
  if (v6 < 0)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v7 = v5[5];
  if (v7 < 0)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (!v6)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (!v7)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (v3 != v6)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if (v4 != v7)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v8 = a1[5];
  if (!v8[2])
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v9 = v8[6];
  if (v9 < 0)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v10 = v8[5];
  if (v10 < 0)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (!v9)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  if (!v10)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  if (v3 != v9)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  if (v4 != v10)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v11 = a1[6];
  if (!*(v11 + 16))
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v12 = *(v11 + 48);
  if (v12 < 0)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v13 = *(v11 + 40);
  if (v13 < 0)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  if (!v12)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  if (!v13)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  if (v3 != v12)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  if (v4 != v13)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v14 = a1[7];
  if (!*(v14 + 16))
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v15 = *(v14 + 48);
  if (v15 < 0)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v16 = *(v14 + 40);
  if (v16 < 0)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  if (!v15)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  if (!v16)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  if (v3 != v15)
  {
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
  }

  if (v4 != v16)
  {
    goto LABEL_69;
  }

  v17 = v5[4];
  v18 = v5[7];
  aDest.data = v17;
  aDest.height = v4;
  aDest.width = v3;
  aDest.rowBytes = v18;
  v19 = v8[4];
  v20 = v8[7];
  rDest.data = v19;
  rDest.height = v4;
  rDest.width = v3;
  rDest.rowBytes = v20;
  v21 = *(v11 + 56);
  gDest.data = *(v11 + 32);
  gDest.height = v4;
  gDest.width = v3;
  gDest.rowBytes = v21;
  v22 = *(v14 + 56);
  bDest.data = *(v14 + 32);
  bDest.height = v4;
  bDest.width = v3;
  bDest.rowBytes = v22;
  v23 = v2[4];
  v24 = v2[7];
  argbSrc.data = v23;
  argbSrc.height = v4;
  argbSrc.width = v3;
  argbSrc.rowBytes = v24;
  return vImageConvert_ARGB16UtoPlanar16U(&argbSrc, &aDest, &rDest, &gDest, &bDest, 0);
}

{
  v31 = *MEMORY[0x1E69E9840];
  if (a1[2] != 4)
  {
    __break(1u);
    goto LABEL_37;
  }

  v2 = *v1;
  if (!*(*v1 + 16))
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v3 = v2[6];
  if ((v3 & 0x8000000000000000) != 0)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v4 = v2[5];
  if ((v4 & 0x8000000000000000) != 0)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (!v3)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (!v4)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v5 = a1[4];
  if (!v5[2])
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v6 = v5[6];
  if (v6 < 0)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v7 = v5[5];
  if (v7 < 0)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (!v6)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (!v7)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (v3 != v6)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if (v4 != v7)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v8 = a1[5];
  if (!v8[2])
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v9 = v8[6];
  if (v9 < 0)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v10 = v8[5];
  if (v10 < 0)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (!v9)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  if (!v10)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  if (v3 != v9)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  if (v4 != v10)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v11 = a1[6];
  if (!*(v11 + 16))
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v12 = *(v11 + 48);
  if (v12 < 0)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v13 = *(v11 + 40);
  if (v13 < 0)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  if (!v12)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  if (!v13)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  if (v3 != v12)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  if (v4 != v13)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v14 = a1[7];
  if (!*(v14 + 16))
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v15 = *(v14 + 48);
  if (v15 < 0)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v16 = *(v14 + 40);
  if (v16 < 0)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  if (!v15)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  if (!v16)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  if (v3 != v15)
  {
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
  }

  if (v4 != v16)
  {
    goto LABEL_69;
  }

  v17 = v5[4];
  v18 = v5[7];
  destA.data = v17;
  destA.height = v4;
  destA.width = v3;
  destA.rowBytes = v18;
  v19 = v8[4];
  v20 = v8[7];
  destR.data = v19;
  destR.height = v4;
  destR.width = v3;
  destR.rowBytes = v20;
  v21 = *(v11 + 56);
  destG.data = *(v11 + 32);
  destG.height = v4;
  destG.width = v3;
  destG.rowBytes = v21;
  v22 = *(v14 + 56);
  destB.data = *(v14 + 32);
  destB.height = v4;
  destB.width = v3;
  destB.rowBytes = v22;
  v23 = v2[4];
  v24 = v2[7];
  srcARGB.data = v23;
  srcARGB.height = v4;
  srcARGB.width = v3;
  srcARGB.rowBytes = v24;
  return vImageConvert_ARGB8888toPlanar8(&srcARGB, &destA, &destR, &destG, &destB, 0);
}

{
  v26 = *MEMORY[0x1E69E9840];
  if (a1[2] != 3)
  {
    __break(1u);
    goto LABEL_30;
  }

  v2 = *v1;
  if (!*(*v1 + 16))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v3 = v2[6];
  if ((v3 & 0x8000000000000000) != 0)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v4 = v2[5];
  if ((v4 & 0x8000000000000000) != 0)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v3)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (!v4)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v5 = a1[4];
  if (!v5[2])
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v6 = v5[6];
  if (v6 < 0)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v7 = v5[5];
  if (v7 < 0)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (!v6)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (!v7)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v3 != v6)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (v4 != v7)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v8 = a1[5];
  if (!v8[2])
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v9 = v8[6];
  if (v9 < 0)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v10 = v8[5];
  if (v10 < 0)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (!v9)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (!v10)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (v3 != v9)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if (v4 != v10)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v11 = a1[6];
  if (!*(v11 + 16))
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v12 = *(v11 + 48);
  if (v12 < 0)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v13 = *(v11 + 40);
  if (v13 < 0)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (!v12)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  if (!v13)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  if (v3 != v12)
  {
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
  }

  if (v4 != v13)
  {
    goto LABEL_55;
  }

  v14 = v5[4];
  v15 = v5[7];
  redDest.data = v14;
  redDest.height = v4;
  redDest.width = v3;
  redDest.rowBytes = v15;
  v16 = v8[4];
  v17 = v8[7];
  greenDest.data = v16;
  greenDest.height = v4;
  greenDest.width = v3;
  greenDest.rowBytes = v17;
  v18 = *(v11 + 56);
  blueDest.data = *(v11 + 32);
  blueDest.height = v4;
  blueDest.width = v3;
  blueDest.rowBytes = v18;
  v19 = v2[4];
  v20 = v2[7];
  rgbSrc.data = v19;
  rgbSrc.height = v4;
  rgbSrc.width = v3;
  rgbSrc.rowBytes = v20;
  return vImageConvert_RGB888toPlanar8(&rgbSrc, &redDest, &greenDest, &blueDest, 0);
}

{
  v26 = *MEMORY[0x1E69E9840];
  if (a1[2] != 3)
  {
    __break(1u);
    goto LABEL_30;
  }

  v2 = *v1;
  if (!*(*v1 + 16))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v3 = v2[6];
  if ((v3 & 0x8000000000000000) != 0)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v4 = v2[5];
  if ((v4 & 0x8000000000000000) != 0)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v3)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (!v4)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v5 = a1[4];
  if (!v5[2])
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v6 = v5[6];
  if (v6 < 0)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v7 = v5[5];
  if (v7 < 0)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (!v6)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (!v7)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v3 != v6)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (v4 != v7)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v8 = a1[5];
  if (!v8[2])
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v9 = v8[6];
  if (v9 < 0)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v10 = v8[5];
  if (v10 < 0)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (!v9)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (!v10)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (v3 != v9)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if (v4 != v10)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v11 = a1[6];
  if (!*(v11 + 16))
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v12 = *(v11 + 48);
  if (v12 < 0)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v13 = *(v11 + 40);
  if (v13 < 0)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (!v12)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  if (!v13)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  if (v3 != v12)
  {
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
  }

  if (v4 != v13)
  {
    goto LABEL_55;
  }

  v14 = v5[4];
  v15 = v5[7];
  redDest.data = v14;
  redDest.height = v4;
  redDest.width = v3;
  redDest.rowBytes = v15;
  v16 = v8[4];
  v17 = v8[7];
  greenDest.data = v16;
  greenDest.height = v4;
  greenDest.width = v3;
  greenDest.rowBytes = v17;
  v18 = *(v11 + 56);
  blueDest.data = *(v11 + 32);
  blueDest.height = v4;
  blueDest.width = v3;
  blueDest.rowBytes = v18;
  v19 = v2[4];
  v20 = v2[7];
  rgbSrc.data = v19;
  rgbSrc.height = v4;
  rgbSrc.width = v3;
  rgbSrc.rowBytes = v20;
  return vImageConvert_RGBFFFtoPlanarF(&rgbSrc, &redDest, &greenDest, &blueDest, 0);
}

{
  v31 = *MEMORY[0x1E69E9840];
  if (a1[2] != 4)
  {
    __break(1u);
    goto LABEL_37;
  }

  v2 = *v1;
  if (!*(*v1 + 16))
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v3 = v2[6];
  if ((v3 & 0x8000000000000000) != 0)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v4 = v2[5];
  if ((v4 & 0x8000000000000000) != 0)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (!v3)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (!v4)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v5 = a1[4];
  if (!v5[2])
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v6 = v5[6];
  if (v6 < 0)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v7 = v5[5];
  if (v7 < 0)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (!v6)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (!v7)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (v3 != v6)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if (v4 != v7)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v8 = a1[5];
  if (!v8[2])
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v9 = v8[6];
  if (v9 < 0)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v10 = v8[5];
  if (v10 < 0)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (!v9)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  if (!v10)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  if (v3 != v9)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  if (v4 != v10)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v11 = a1[6];
  if (!*(v11 + 16))
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v12 = *(v11 + 48);
  if (v12 < 0)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v13 = *(v11 + 40);
  if (v13 < 0)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  if (!v12)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  if (!v13)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  if (v3 != v12)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  if (v4 != v13)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v14 = a1[7];
  if (!*(v14 + 16))
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v15 = *(v14 + 48);
  if (v15 < 0)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v16 = *(v14 + 40);
  if (v16 < 0)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  if (!v15)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  if (!v16)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  if (v3 != v15)
  {
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
  }

  if (v4 != v16)
  {
    goto LABEL_69;
  }

  v17 = v5[4];
  v18 = v5[7];
  aDest.data = v17;
  aDest.height = v4;
  aDest.width = v3;
  aDest.rowBytes = v18;
  v19 = v8[4];
  v20 = v8[7];
  rDest.data = v19;
  rDest.height = v4;
  rDest.width = v3;
  rDest.rowBytes = v20;
  v21 = *(v11 + 56);
  gDest.data = *(v11 + 32);
  gDest.height = v4;
  gDest.width = v3;
  gDest.rowBytes = v21;
  v22 = *(v14 + 56);
  bDest.data = *(v14 + 32);
  bDest.height = v4;
  bDest.width = v3;
  bDest.rowBytes = v22;
  v23 = v2[4];
  v24 = v2[7];
  argbSrc.data = v23;
  argbSrc.height = v4;
  argbSrc.width = v3;
  argbSrc.rowBytes = v24;
  return vImageConvert_ARGB16UtoPlanar16U(&argbSrc, &aDest, &rDest, &gDest, &bDest, 0);
}