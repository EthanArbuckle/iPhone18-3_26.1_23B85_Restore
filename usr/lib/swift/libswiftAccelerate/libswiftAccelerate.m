uint64_t storeEnumTagSinglePayload for BNNS.ConvolutionType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t BNNSGraph.CompileOptions.init()@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for BNNSGraph.CompileOptions.CompileOptionsRef();
  v2 = swift_allocObject();
  result = BNNSGraphCompileOptionsMakeDefault();
  *(v2 + 16) = result;
  *(v2 + 24) = v4;
  *a1 = v2;
  return result;
}

uint64_t static BNNSGraph.makeContext(options:_:)(uint64_t a1, uint64_t (*a2)(uint64_t *))
{
  type metadata accessor for BNNSGraph.Builder.ErrorMessagesWrapper();
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0xE000000000000000;
  v26 = v3;
  result = _bnns_graph_builder_make();
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v27 = result;
  result = a2(&v26);
  v5 = result;
  v6 = *(result + 16);
  if (v6)
  {
    v7 = 0;
    v8 = result + 32;
    v9 = v27;
    while (v7 < *(v5 + 16))
    {
      outlined init with copy of BNNSGraph.Builder.SliceIndex(v8, v23);
      v10 = v24;
      v11 = v25;
      __swift_project_boxed_opaque_existential_1(v23, v24);
      v12 = (*(v11 + 8))(v10, v11);
      result = __swift_destroy_boxed_opaque_existential_1(v23);
      if (v12)
      {
        if (!v9)
        {
          goto LABEL_17;
        }

        result = _bnns_graph_builder_register_output();
      }

      ++v7;
      v8 += 40;
      if (v6 == v7)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_9:
  v13 = v26;
  result = swift_beginAccess();
  v14 = *(v13 + 24);
  v15 = *(v13 + 16) & 0xFFFFFFFFFFFFLL;
  if ((v14 & 0x2000000000000000) != 0)
  {
    v15 = HIBYTE(v14) & 0xF;
  }

  if (v15)
  {

    v17 = *(v13 + 16);
    v16 = *(v13 + 24);
    lazy protocol witness table accessor for type BNNSGraph.Error and conformance BNNSGraph.Error();
    swift_allocError();
    *v18 = v17;
    v18[1] = v16;
    swift_willThrow();

    return v17;
  }

  if (v27)
  {

    v19 = _bnns_graph_builder_finalize();
    v21 = v20;
    type metadata accessor for BNNSGraph.Context();
    v17 = swift_allocObject();
    *(v17 + 48) = 0;
    *(v17 + 56) = 0;
    *(v17 + 16) = v19;
    *(v17 + 24) = v21;
    *(v17 + 32) = BNNSGraphContextMake();
    *(v17 + 40) = v22;

    return v17;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t type metadata instantiation function for BNNSGraph.Builder.Tensor()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 BNNSGraph.Builder.argument<A>(name:dataType:shape:intent:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X3>, char *a4@<X5>, unint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v13 = v6[1];
  v16[0] = *v6;
  v16[1] = v13;

  LOBYTE(v17) = 0;
  BNNSGraph.Builder.Tensor.init(_:intent:dataType:shape:builder:)(a1, a2, 1uLL, a3, v16, a4, a5, &v17);
  result = v18;
  v15 = v19;
  *a6 = v17;
  *(a6 + 8) = result;
  *(a6 + 24) = v15;
  return result;
}

uint64_t BNNSGraph.Builder.Tensor.init(_:intent:dataType:shape:builder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X4>, uint64_t *a5@<X5>, char *a6@<X6>, unint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v16 = *a5;
  v15 = a5[1];
  v82 = a2;
  *&v81 = v15;
  *(&v81 + 1) = a1;
  v80 = v16;
  v78 = v15;

  v17 = specialized static BNNSGraph.Builder.calculateStride(_:)(a4);
  if ((a3 & 0x100000000) != 0 || a3 != 1)
  {

    goto LABEL_6;
  }

  if (a2)
  {
    v18 = String.utf8CString.getter();
    closure #1 in BNNSGraph.Builder.Tensor.init(_:intent:dataType:shape:builder:)(v18 + 32, *(v18 + 16), a4, v17, &v80, v16, v78, a1, a2, a6, a7);

LABEL_6:

LABEL_7:
    *a8 = v80;
    *(a8 + 8) = v81;
    *(a8 + 24) = v82;
    return result;
  }

  v20 = a6;
  (*(a7 + 8))(a6, a7);
  v22 = *(a4 + 16);
  if (v22 > 0xFF)
  {
    __break(1u);
LABEL_79:
    v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), a7, 1, v20);
LABEL_22:
    *(v20 + 2) = a7;
    *&v20[8 * a3 + 32] = 0;
    if (a3 != 7)
    {
      v30 = *(v20 + 3);
      v31 = a3 + 2;
      if (a7 >= v30 >> 1)
      {
        v64 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), a3 + 2, 1, v20);
        v31 = a3 + 2;
        v20 = v64;
      }

      *(v20 + 2) = v31;
      *&v20[8 * a7 + 32] = 0;
      if (a3 <= 5)
      {
        v32 = *(v20 + 3);
        v33 = a3 + 3;
        if (v31 >= v32 >> 1)
        {
          v65 = v31;
          v66 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), a3 + 3, 1, v20);
          v31 = v65;
          v20 = v66;
        }

        *(v20 + 2) = v33;
        *&v20[8 * v31 + 32] = 0;
        if (a3 != 5)
        {
          v34 = *(v20 + 3);
          v35 = a3 + 4;
          if (v33 >= v34 >> 1)
          {
            v67 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), a3 + 4, 1, v20);
            v35 = a3 + 4;
            v20 = v67;
          }

          *(v20 + 2) = v35;
          *&v20[8 * v33 + 32] = 0;
          if (a3 <= 3)
          {
            v36 = *(v20 + 3);
            v37 = a3 + 5;
            if (v35 >= v36 >> 1)
            {
              v68 = v35;
              v69 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), a3 + 5, 1, v20);
              v37 = a3 + 5;
              v35 = v68;
              v20 = v69;
            }

            *(v20 + 2) = v37;
            *&v20[8 * v35 + 32] = 0;
            if (a3 != 3)
            {
              v38 = *(v20 + 3);
              v39 = a3 + 6;
              if (v37 >= v38 >> 1)
              {
                v71 = v37;
                v72 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), a3 + 6, 1, v20);
                v37 = v71;
                v20 = v72;
              }

              *(v20 + 2) = v39;
              *&v20[8 * v37 + 32] = 0;
              if (a3 <= 1)
              {
                v40 = *(v20 + 3);
                v41 = a3 + 7;
                if (v39 >= v40 >> 1)
                {
                  v75 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v40 > 1), a3 + 7, 1, v20);
                  v41 = a3 + 7;
                  v20 = v75;
                }

                *(v20 + 2) = v41;
                *&v20[8 * v39 + 32] = 0;
                if (!a3)
                {
                  v42 = *(v20 + 3);
                  if (v41 >= v42 >> 1)
                  {
                    v76 = v41;
                    v77 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v42 > 1), 8, 1, v20);
                    v41 = v76;
                    v20 = v77;
                  }

                  *(v20 + 2) = 8;
                  *&v20[8 * v41 + 32] = 0;
                }
              }
            }
          }
        }
      }
    }

    goto LABEL_44;
  }

  v20 = MEMORY[0x1E69E7CC0];
  if (v22)
  {
    v79 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v22, 0);
    v20 = v79;
    v23 = (a4 + 32);
    v24 = *(v79 + 16);
    do
    {
      v26 = *v23++;
      v25 = v26;
      v27 = *(v79 + 24);
      if (v24 >= v27 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v24 + 1, 1);
      }

      *(v79 + 16) = v24 + 1;
      *(v79 + 8 * v24++ + 32) = v25;
      --v22;
    }

    while (v22);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || *(v20 + 3) <= 0xFuLL)
  {
    if (*(v20 + 2) <= 8uLL)
    {
      v29 = 8;
    }

    else
    {
      v29 = *(v20 + 2);
    }

    v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v29, 0, v20);
  }

  a3 = *(v20 + 2);
  if (a3 < 8)
  {
    v21 = *(v20 + 3);
    a7 = a3 + 1;
    if (a3 < v21 >> 1)
    {
      goto LABEL_22;
    }

    goto LABEL_79;
  }

LABEL_44:

  v43 = swift_isUniquelyReferenced_nonNull_native();
  if (!v43 || (v44 = v17, *(v17 + 24) <= 0xFuLL))
  {
    if (*(v17 + 16) <= 8uLL)
    {
      v45 = 8;
    }

    else
    {
      v45 = *(v17 + 16);
    }

    v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v43, v45, 0, v17);
  }

  v46 = *(v44 + 2);
  if (v46 > 7)
  {
    goto LABEL_72;
  }

  v47 = *(v44 + 3);
  v48 = v46 + 1;
  if (v46 >= v47 >> 1)
  {
    v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v47 > 1), v46 + 1, 1, v44);
  }

  *(v44 + 2) = v48;
  *&v44[8 * v46 + 32] = 0;
  if (v46 == 7)
  {
    goto LABEL_72;
  }

  v49 = *(v44 + 3);
  v50 = v46 + 2;
  if (v48 >= v49 >> 1)
  {
    v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v49 > 1), v46 + 2, 1, v44);
  }

  *(v44 + 2) = v50;
  *&v44[8 * v48 + 32] = 0;
  if (v46 > 5)
  {
    goto LABEL_72;
  }

  v51 = *(v44 + 3);
  v52 = v46 + 3;
  if (v50 >= v51 >> 1)
  {
    v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v51 > 1), v46 + 3, 1, v44);
  }

  *(v44 + 2) = v52;
  *&v44[8 * v50 + 32] = 0;
  if (v46 == 5)
  {
    goto LABEL_72;
  }

  v53 = *(v44 + 3);
  v54 = v46 + 4;
  if (v52 >= v53 >> 1)
  {
    v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v53 > 1), v46 + 4, 1, v44);
  }

  *(v44 + 2) = v54;
  *&v44[8 * v52 + 32] = 0;
  if (v46 > 3)
  {
    goto LABEL_72;
  }

  v55 = *(v44 + 3);
  v56 = v46 + 5;
  if (v54 >= v55 >> 1)
  {
    v70 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v55 > 1), v46 + 5, 1, v44);
    v56 = v46 + 5;
    v44 = v70;
  }

  *(v44 + 2) = v56;
  *&v44[8 * v54 + 32] = 0;
  if (v46 == 3)
  {
    goto LABEL_72;
  }

  v57 = *(v44 + 3);
  v58 = v46 + 6;
  if (v56 >= v57 >> 1)
  {
    v73 = v56;
    v74 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v57 > 1), v46 + 6, 1, v44);
    v56 = v73;
    v44 = v74;
  }

  *(v44 + 2) = v58;
  *&v44[8 * v56 + 32] = 0;
  if (v46 > 1)
  {
    goto LABEL_72;
  }

  v59 = *(v44 + 3);
  v60 = v46 + 7;
  if (v58 >= v59 >> 1)
  {
    v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v59 > 1), v46 + 7, 1, v44);
  }

  *(v44 + 2) = v60;
  *&v44[8 * v58 + 32] = 0;
  if (v46)
  {
LABEL_72:
    v61 = v78;
  }

  else
  {
    v63 = *(v44 + 3);
    if (v60 >= v63 >> 1)
    {
      v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v63 > 1), 8, 1, v44);
    }

    v61 = v78;
    *(v44 + 2) = 8;
    *&v44[8 * v60 + 32] = 0;
  }

  if (v61)
  {

    v62 = _bnns_graph_builder_register_input();

    result = BNNSGraph.Builder.Tensor.setTensorData(_:operationName:)(v62, 0xD00000000000001CLL, 0x80000001B7E7DFF0);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t specialized static BNNSGraph.Builder.calculateStride(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
  result = swift_allocObject();
  *(result + 16) = xmmword_1B7E76D90;
  *(result + 32) = 1;
  if (v1 != 1)
  {
    v4 = 0;
    v5 = &v2[8 * v1 + 24];
    do
    {
      v6 = v4 + 1;
      if (v4 + 1 > v1)
      {
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      if (v4 == -1)
      {
        goto LABEL_27;
      }

      v7 = *v5;
      if (*v5 < 0)
      {
        v7 = 1;
      }

      v8 = *(result + 8 * v4 + 32);
      v9 = v7 * v8;
      if ((v7 * v8) >> 64 != (v7 * v8) >> 63)
      {
        goto LABEL_28;
      }

      v10 = *(result + 24);
      if (v6 >= v10 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v4 + 2, 1, result);
      }

      *(result + 16) = v4 + 2;
      *(result + 8 * v4++ + 40) = v9;
      --v5;
    }

    while (v6 + 1 != v1);
    v16 = result;
    specialized MutableCollection<>.reverse()();
    v4 = 8 * v1;
    v11 = 1 - v1;
    do
    {
      if (v11 == 1)
      {
        return v16;
      }

      v12 = *&v2[v4 + 24];
      v4 -= 8;
      ++v11;
    }

    while ((v12 & 0x8000000000000000) == 0);
    result = v16;
    if (v11 == 1)
    {
      return result;
    }

    v13 = *(v16 + 16);
    v14 = -v11;
    if (v13)
    {
      v15 = v14 < v13;
    }

    else
    {
      v15 = 0;
    }

    if (v15)
    {
      v2 = v16;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_23;
    }

LABEL_29:
    __break(1u);
LABEL_30:
    v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
LABEL_23:
    memset(v2 + 32, 255, v4);
    return v2;
  }

  return result;
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCySiGMd);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCySPySfGSgGMd);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCySPySo13vImage_BufferVGSgGMd);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCys6UInt32VGMd);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCySpySo21BNNSNDArrayDescriptoraGSgGMd);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCys6UInt64VGMd);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCySPySo21BNNSNDArrayDescriptoraGGMd);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCySpySo21BNNSNDArrayDescriptoraGGMd);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCySuGMd);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 25;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 3);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[8 * v9])
    {
      memmove(v14, v15, 8 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 8 * v9);
  }

  return v11;
}

{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 29;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 2);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[4 * v9])
    {
      memmove(v14, v15, 4 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 4 * v9);
  }

  return v11;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 25;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 3);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[8 * v9])
    {
      memmove(v14, v15, 8 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 8 * v9);
  }

  return v11;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, int64_t a2, char a3, char *a4)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySiGMd);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySPySo13vImage_BufferVGSgGMd);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySpySo21BNNSNDArrayDescriptoraGSgGMd);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySVGMd);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySPys4Int8VGSgGMd);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySpySo21BNNSNDArrayDescriptoraGGMd);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySPySo21BNNSNDArrayDescriptoraGGMd);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySvGMd);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySuGMd);
}

uint64_t BNNSGraph.Builder.Tensor.setTensorData(_:operationName:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    *(v3 + 32) = result;
  }

  else
  {

    MEMORY[0x1B8CB1340](a2, a3);
    MEMORY[0x1B8CB1340](23840, 0xE200000000000000);
    swift_beginAccess();
    MEMORY[0x1B8CB1340](0x3A726F727245205BLL, 0xE900000000000020);
    swift_endAccess();
  }

  return result;
}

uint64_t BNNSGraph.Builder.Tensor.argMax(axis:keepDimension:)@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;

  specialized static BNNSGraph.Builder.calculateStride(_:)(MEMORY[0x1E69E7CC0]);

  v5 = *(v1 + 1);
  result = BNNSGraph.Builder.Tensor.tensorData.getter();
  if (!result)
  {
    goto LABEL_5;
  }

  result = v5;
  if (v5)
  {
    result = _bnns_graph_builder_register_argmax();
    if (!result)
    {
      swift_beginAccess();

      MEMORY[0x1B8CB1340](0xD000000000000026, 0x80000001B7E7DA50);
      swift_endAccess();

      result = 0;
    }

LABEL_5:
    *a1 = v3;
    *(a1 + 8) = v5;
    *(a1 + 16) = xmmword_1B7E77980;
    *(a1 + 32) = result;
    return result;
  }

  __break(1u);
  return result;
}

__n128 BNNSTensor.init(data:shape:stride:dataType:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  specialized BNNSTensor.init(shape:stride:dataType:)(a3, a4, a5, v16);
  v9 = a2 - a1;
  if (!a1)
  {
    v9 = 0;
  }

  v10 = v16[7];
  *(a6 + 96) = v16[6];
  *(a6 + 112) = v10;
  v11 = v18;
  v12 = v17;
  v13 = v16[3];
  *(a6 + 32) = v16[2];
  *(a6 + 48) = v13;
  v14 = v16[5];
  *(a6 + 64) = v16[4];
  *(a6 + 80) = v14;
  result = v16[1];
  *a6 = v16[0];
  *(a6 + 16) = result;
  *(a6 + 128) = v12;
  *(a6 + 136) = a1;
  *(a6 + 144) = v9;
  *(a6 + 152) = v11;
  return result;
}

__n128 specialized BNNSTensor.init(shape:stride:dataType:)@<Q0>(uint64_t a1@<X0>, char *a2@<X1>, int a3@<W2>, unint64_t a4@<X8>)
{
  v10 = *(a1 + 16);
  if (v10 > 0xFF)
  {
    __break(1u);
LABEL_65:
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((a4 > 1), v8, 1, v7);
LABEL_10:
    *(v7 + 2) = v8;
    *&v7[8 * v9 + 32] = 0;
    if (v9 != 7)
    {
      v13 = *(v7 + 3);
      v14 = v9 + 2;
      if (v8 >= v13 >> 1)
      {
        v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v9 + 2, 1, v7);
      }

      *(v7 + 2) = v14;
      *&v7[8 * v8 + 32] = 0;
      if (v9 <= 5)
      {
        v15 = *(v7 + 3);
        v16 = v9 + 3;
        if (v14 >= v15 >> 1)
        {
          v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v9 + 3, 1, v7);
        }

        *(v7 + 2) = v16;
        *&v7[8 * v14 + 32] = 0;
        if (v9 != 5)
        {
          v17 = *(v7 + 3);
          v18 = v9 + 4;
          if (v16 >= v17 >> 1)
          {
            v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v9 + 4, 1, v7);
          }

          *(v7 + 2) = v18;
          *&v7[8 * v16 + 32] = 0;
          if (v9 <= 3)
          {
            v19 = *(v7 + 3);
            v20 = v9 + 5;
            if (v18 >= v19 >> 1)
            {
              v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v9 + 5, 1, v7);
            }

            *(v7 + 2) = v20;
            *&v7[8 * v18 + 32] = 0;
            if (v9 != 3)
            {
              v21 = *(v7 + 3);
              v22 = v9 + 6;
              if (v20 >= v21 >> 1)
              {
                v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v9 + 6, 1, v7);
              }

              *(v7 + 2) = v22;
              *&v7[8 * v20 + 32] = 0;
              if (v9 <= 1)
              {
                v23 = *(v7 + 3);
                v24 = v9 + 7;
                if (v22 >= v23 >> 1)
                {
                  v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v9 + 7, 1, v7);
                }

                *(v7 + 2) = v24;
                *&v7[8 * v22 + 32] = 0;
                if (!v9)
                {
                  v25 = *(v7 + 3);
                  if (v24 >= v25 >> 1)
                  {
                    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), 8, 1, v7);
                  }

                  *(v7 + 2) = 8;
                  *&v7[8 * v24 + 32] = 0;
                }
              }
            }
          }
        }
      }
    }

    goto LABEL_32;
  }

  v5 = a3;
  v6 = a2;
  v7 = a1;
  v4 = a4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || *(v7 + 3) <= 0xFuLL)
  {
    if (v10 <= 8)
    {
      v12 = 8;
    }

    else
    {
      v12 = v10;
    }

    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v12, 0, v7);
  }

  v9 = *(v7 + 2);
  if (v9 <= 7)
  {
    a4 = *(v7 + 3);
    v8 = v9 + 1;
    if (v9 < a4 >> 1)
    {
      goto LABEL_10;
    }

    goto LABEL_65;
  }

LABEL_32:
  v51 = *(v7 + 3);
  v52 = *(v7 + 2);
  v49 = *(v7 + 5);
  v50 = *(v7 + 4);

  v26 = swift_isUniquelyReferenced_nonNull_native();
  if (!v26 || *(v6 + 3) <= 0xFuLL)
  {
    if (*(v6 + 2) <= 8uLL)
    {
      v27 = 8;
    }

    else
    {
      v27 = *(v6 + 2);
    }

    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v26, v27, 0, v6);
  }

  v28 = *(v6 + 2);
  if (v28 <= 7)
  {
    v29 = *(v6 + 3);
    v30 = v28 + 1;
    if (v28 >= v29 >> 1)
    {
      v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v28 + 1, 1, v6);
    }

    *(v6 + 2) = v30;
    *&v6[8 * v28 + 32] = 0;
    if (v28 != 7)
    {
      v31 = *(v6 + 3);
      v32 = v28 + 2;
      if (v30 >= v31 >> 1)
      {
        v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v28 + 2, 1, v6);
      }

      *(v6 + 2) = v32;
      *&v6[8 * v30 + 32] = 0;
      if (v28 <= 5)
      {
        v33 = *(v6 + 3);
        v34 = v28 + 3;
        if (v32 >= v33 >> 1)
        {
          v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v28 + 3, 1, v6);
        }

        *(v6 + 2) = v34;
        *&v6[8 * v32 + 32] = 0;
        if (v28 != 5)
        {
          v35 = *(v6 + 3);
          v36 = v28 + 4;
          if (v34 >= v35 >> 1)
          {
            v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v28 + 4, 1, v6);
          }

          *(v6 + 2) = v36;
          *&v6[8 * v34 + 32] = 0;
          if (v28 <= 3)
          {
            v37 = *(v6 + 3);
            v38 = v28 + 5;
            if (v36 >= v37 >> 1)
            {
              v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v28 + 5, 1, v6);
            }

            *(v6 + 2) = v38;
            *&v6[8 * v36 + 32] = 0;
            if (v28 != 3)
            {
              v39 = *(v6 + 3);
              v40 = v28 + 6;
              if (v38 >= v39 >> 1)
              {
                v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v28 + 6, 1, v6);
              }

              *(v6 + 2) = v40;
              *&v6[8 * v38 + 32] = 0;
              if (v28 <= 1)
              {
                v41 = *(v6 + 3);
                v42 = v28 + 7;
                if (v40 >= v41 >> 1)
                {
                  v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v28 + 7, 1, v6);
                }

                *(v6 + 2) = v42;
                *&v6[8 * v40 + 32] = 0;
                if (!v28)
                {
                  v43 = *(v6 + 3);
                  if (v42 >= v43 >> 1)
                  {
                    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), 8, 1, v6);
                  }

                  *(v6 + 2) = 8;
                  *&v6[8 * v42 + 32] = 0;
                }
              }
            }
          }
        }
      }
    }
  }

  v47 = *(v6 + 4);
  v48 = *(v6 + 2);
  v45 = *(v6 + 5);
  v46 = *(v6 + 3);

  *v4 = v5;
  *(v4 + 4) = v10;
  *(v4 + 24) = v51;
  *(v4 + 8) = v52;
  *(v4 + 56) = v49;
  *(v4 + 40) = v50;
  *(v4 + 88) = v46;
  *(v4 + 72) = v48;
  *(v4 + 120) = v45;
  result = v47;
  *(v4 + 104) = v47;
  *(v4 + 144) = 0;
  *(v4 + 152) = 0;
  *(v4 + 136) = 0;
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> BNNSGraph.Context.executeFunction(_:arguments:)(Swift::String_optional _, Swift::OpaquePointer *arguments)
{
  object = _.value._object;
  rawValue = arguments->_rawValue;
  v4 = *(arguments->_rawValue + 2);
  BNNSGraphContextSetArgumentType();
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if (v4)
    {
LABEL_3:
      type metadata accessor for bnns_graph_argument_t(0);
      v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v6 = 0;
      *(v5 + 16) = v4;
      if (v4 < 4)
      {
        goto LABEL_7;
      }

      v6 = v4 & 0x7FFFFFFFFFFFFFFCLL;
      v7 = xmmword_1B7E781E0;
      v8 = (v5 + 64);
      v9 = vdupq_n_s64(rawValue + 32);
      v10 = 0uLL;
      v11 = vdupq_n_s64(0x140uLL);
      v12 = vdupq_n_s64(4uLL);
      v13 = v4 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v14.i64[0] = 160 * v7.i64[0];
        v14.i64[1] = 160 * v7.i64[1];
        v15 = v8 - 4;
        v16 = vaddq_s64(v9, v14);
        vst2q_f64(v15, *(&v10 - 1));
        v23.val[0] = vaddq_s64(v16, v11);
        v23.val[1] = 0uLL;
        vst2q_f64(v8, v23);
        v7 = vaddq_s64(v7, v12);
        v8 += 8;
        v13 -= 4;
      }

      while (v13);
      if (v4 != v6)
      {
LABEL_7:
        v17 = v4 - v6;
        v18 = rawValue + 160 * v6 + 32;
        v19 = (v5 + 16 * v6 + 40);
        do
        {
          *(v19 - 1) = v18;
          *v19 = 0;
          v18 += 160;
          v19 += 2;
          --v17;
        }

        while (v17);
      }

      *(v5 + 16) = v4;
      if (object)
      {
        goto LABEL_10;
      }

      goto LABEL_13;
    }
  }

  else
  {
    rawValue = specialized _ArrayBuffer._consumeAndCreateNew()(rawValue);
    if (v4)
    {
      goto LABEL_3;
    }
  }

  *(MEMORY[0x1E69E7CC0] + 16) = v4;
  if (object)
  {
LABEL_10:
    String.utf8CString.getter();
  }

LABEL_13:
  v20 = BNNSGraphContextExecute_v2();
  swift_unknownObjectRelease();

  if (v20)
  {
    lazy protocol witness table accessor for type BNNSGraph.Error and conformance BNNSGraph.Error();
    swift_allocError();
    *v21 = xmmword_1B7E781F0;
    swift_willThrow();
  }

  arguments->_rawValue = rawValue;
}

void type metadata accessor for vImageCVImageFormatRef(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

_DWORD *protocol witness for RawRepresentable.init(rawValue:) in conformance BLAS.ThreadingModel@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t getEnumTagSinglePayload for vImage.Size(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for vImage.Size(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for Quadrature.QAGPointsPerInterval(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

__n128 sub_1B7DD7060(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1B7DD723C@<X0>(_DWORD *a1@<X8>)
{
  result = BNNSGraphCompileOptionsGetOptimizationPreference();
  *a1 = result;
  return result;
}

uint64_t sub_1B7DD728C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = BNNSGraphContextEnableNanAndInfChecks();
  *(v3 + 48) = v2;
  return result;
}

uint64_t sub_1B7DD72D0(void *a1, void *a2)
{
  v2 = *a2;
  v2[7] = *a1;
  return MEMORY[0x1EEDB1368](v2[4], v2[5]);
}

float sub_1B7DD72F4@<S0>(float *a1@<X0>, _DWORD *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

_DWORD *sub_1B7DD7300(_DWORD *result, uint64_t a2)
{
  v2 = (*(a2 + 52) & 1) != 0;
  *a2 = *result;
  *(a2 + 52) = v2;
  return result;
}

float sub_1B7DD7328@<S0>(uint64_t a1@<X0>, float *a2@<X8>)
{
  result = *(a1 + 4);
  *a2 = result;
  return result;
}

_DWORD *sub_1B7DD7334(_DWORD *result, uint64_t a2)
{
  v2 = (*(a2 + 52) & 1) != 0;
  *(a2 + 4) = *result;
  *(a2 + 52) = v2;
  return result;
}

float sub_1B7DD735C@<S0>(uint64_t a1@<X0>, float *a2@<X8>)
{
  result = *(a1 + 8);
  *a2 = result;
  return result;
}

_DWORD *sub_1B7DD7368(_DWORD *result, uint64_t a2)
{
  v2 = (*(a2 + 52) & 1) != 0;
  *(a2 + 8) = *result;
  *(a2 + 52) = v2;
  return result;
}

float sub_1B7DD7390@<S0>(uint64_t a1@<X0>, float *a2@<X8>)
{
  result = *(a1 + 12);
  *a2 = result;
  return result;
}

_DWORD *sub_1B7DD739C(_DWORD *result, uint64_t a2)
{
  v2 = (*(a2 + 52) & 1) != 0;
  *(a2 + 12) = *result;
  *(a2 + 52) = v2;
  return result;
}

float sub_1B7DD73C4@<S0>(uint64_t a1@<X0>, float *a2@<X8>)
{
  result = *(a1 + 16);
  *a2 = result;
  return result;
}

_DWORD *sub_1B7DD73D0(_DWORD *result, uint64_t a2)
{
  v2 = (*(a2 + 52) & 1) != 0;
  *(a2 + 16) = *result;
  *(a2 + 52) = v2;
  return result;
}

float sub_1B7DD73F8@<S0>(uint64_t a1@<X0>, float *a2@<X8>)
{
  result = *(a1 + 20);
  *a2 = result;
  return result;
}

_DWORD *sub_1B7DD7404(_DWORD *result, uint64_t a2)
{
  v2 = (*(a2 + 52) & 1) != 0;
  *(a2 + 20) = *result;
  *(a2 + 52) = v2;
  return result;
}

float sub_1B7DD742C@<S0>(uint64_t a1@<X0>, float *a2@<X8>)
{
  result = *(a1 + 24);
  *a2 = result;
  return result;
}

_DWORD *sub_1B7DD7438(_DWORD *result, uint64_t a2)
{
  v2 = (*(a2 + 52) & 1) != 0;
  *(a2 + 24) = *result;
  *(a2 + 52) = v2;
  return result;
}

unint64_t sub_1B7DD7460@<X0>(uint64_t a1@<X8>)
{
  result = BNNS.AdamOptimizer.gradientBounds.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1B7DD74C4@<X0>(uint64_t result@<X0>, _DWORD *a2@<X8>)
{
  v2 = 40;
  if (*(result + 52))
  {
    v2 = 28;
  }

  *a2 = *(result + v2);
  return result;
}

int *sub_1B7DD74E4(int *result, uint64_t a2)
{
  v2 = *result;
  if (*(a2 + 52))
  {
    v3 = 1;
    *(a2 + 28) = v2;
  }

  else
  {
    v3 = 0;
    *(a2 + 40) = v2;
  }

  *(a2 + 52) = v3;
  return result;
}

uint64_t sub_1B7DD7590@<X0>(uint64_t a1@<X8>)
{
  result = BNNS.RMSPropOptimizer.gradientBounds.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1B7DD7614@<X0>(uint64_t result@<X0>, _DWORD *a2@<X8>)
{
  if (*(result + 8) >= 0)
  {
    v2 = *(result + 40);
  }

  else
  {
    LODWORD(v2) = *(result + 28);
  }

  *a2 = v2;
  return result;
}

uint64_t sub_1B7DD7674@<X0>(uint64_t a1@<X8>)
{
  result = BNNS.SGDMomentumOptimizer.gradientBounds.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1B7DD770C@<X0>(uint64_t result@<X0>, _DWORD *a2@<X8>)
{
  v2 = *(result + 16);
  if ((v2 & 0x80000000) != 0)
  {
    v3 = HIDWORD(v2);
  }

  else
  {
    v3 = *(result + 32);
  }

  *a2 = v3;
  return result;
}

uint64_t sub_1B7DD772C@<X0>(uint64_t result@<X0>, _DWORD *a2@<X8>)
{
  if (*(result + 16) < 0)
  {
    v2 = *(result + 24);
  }

  else
  {
    LODWORD(v2) = *(result + 36);
  }

  *a2 = v2;
  return result;
}

uint64_t _s10Accelerate41FusableTernaryInputLayerParametersWrapper_pWOb_0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

float sub_1B7DD77BC@<S0>(float *a1@<X0>, _DWORD *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

float sub_1B7DD77C8(float *a1, _DWORD *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

float sub_1B7DD77D4@<S0>(uint64_t a1@<X0>, float *a2@<X8>)
{
  result = *(a1 + 4);
  *a2 = result;
  return result;
}

float sub_1B7DD77E0(float *a1, uint64_t a2)
{
  result = *a1;
  *(a2 + 4) = *a1;
  return result;
}

float sub_1B7DD77EC@<S0>(uint64_t a1@<X0>, float *a2@<X8>)
{
  result = *(a1 + 8);
  *a2 = result;
  return result;
}

float sub_1B7DD77F8(float *a1, uint64_t a2)
{
  result = *a1;
  *(a2 + 8) = *a1;
  return result;
}

float sub_1B7DD7804@<S0>(uint64_t a1@<X0>, float *a2@<X8>)
{
  result = *(a1 + 12);
  *a2 = result;
  return result;
}

float sub_1B7DD7810(float *a1, uint64_t a2)
{
  result = *a1;
  *(a2 + 12) = *a1;
  return result;
}

float sub_1B7DD781C@<S0>(uint64_t a1@<X0>, float *a2@<X8>)
{
  result = *(a1 + 16);
  *a2 = result;
  return result;
}

float sub_1B7DD7828(float *a1, uint64_t a2)
{
  result = *a1;
  *(a2 + 16) = *a1;
  return result;
}

float sub_1B7DD7834@<S0>(uint64_t a1@<X0>, float *a2@<X8>)
{
  result = *(a1 + 20);
  *a2 = result;
  return result;
}

float sub_1B7DD7840(float *a1, uint64_t a2)
{
  result = *a1;
  *(a2 + 20) = *a1;
  return result;
}

float sub_1B7DD784C@<S0>(uint64_t a1@<X0>, float *a2@<X8>)
{
  result = *(a1 + 24);
  *a2 = result;
  return result;
}

float sub_1B7DD7858(float *a1, uint64_t a2)
{
  result = *a1;
  *(a2 + 24) = *a1;
  return result;
}

void sub_1B7DD7864(uint64_t a1@<X8>)
{
  BNNS.AdamWOptimizer.gradientClipping.getter(&v3);
  v2 = v4;
  *a1 = v3;
  *(a1 + 8) = v2;
}

void sub_1B7DD78C4(uint64_t a1@<X8>)
{
  BNNS.AdamOptimizer.gradientClipping.getter(&v3);
  v2 = v4;
  *a1 = v3;
  *(a1 + 8) = v2;
}

uint64_t sub_1B7DD7908(uint64_t *a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;
  return BNNS.AdamOptimizer.gradientClipping.setter(&v3);
}

uint64_t sub_1B7DD794C(uint64_t a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;
  return BNNS.SGDMomentumOptimizer.gradientClipping.setter(&v3);
}

uint64_t sub_1B7DD7990(uint64_t *a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;
  return BNNS.RMSPropOptimizer.gradientClipping.setter(&v3);
}

uint64_t sub_1B7DD79D8()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B7DD7A34()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

double sub_1B7DD7A6C@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 8);
  *a2 = result;
  return result;
}

double sub_1B7DD7A78(double *a1, uint64_t a2)
{
  result = *a1;
  *(a2 + 8) = *a1;
  return result;
}

double sub_1B7DD7A84@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 16);
  *a2 = result;
  return result;
}

double sub_1B7DD7A90(double *a1, uint64_t a2)
{
  result = *a1;
  *(a2 + 16) = *a1;
  return result;
}

uint64_t sub_1B7DD7B18@<X0>(_DWORD *a1@<X8>)
{
  result = BLASGetThreading();
  *a1 = result;
  return result;
}

uint64_t _s10Accelerate4BNNSO29FusedDequantizationParametersVwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 377))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s10Accelerate4BNNSO29FusedDequantizationParametersVwst_0(uint64_t result, int a2, int a3)
{
  if (a2)
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
    *(result + 376) = 0;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
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

  *(result + 377) = v3;
  return result;
}

char *_ss15ContiguousArrayV16_createNewBuffer14bufferIsUnique15minimumCapacity13growForAppendySb_SiSbtFSo07vImage_E0V_Tgq5_0(char *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *_ss15ContiguousArrayV16_createNewBuffer14bufferIsUnique15minimumCapacity13growForAppendySb_SiSbtFs5Int32V_Tgq5_0(char *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCys5Int32VGMd);
  *v3 = result;
  return result;
}

void *_ss15ContiguousArrayV16_createNewBuffer14bufferIsUnique15minimumCapacity13growForAppendySb_SiSbtF10Accelerate6vImageO05PixelE0Vy_AI7PlanarFVG_Tgq5_0(void *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10Accelerate6vImageO11PixelBufferVy_AE7PlanarFVGGMd, &_ss23_ContiguousArrayStorageCy10Accelerate6vImageO11PixelBufferVy_AE7PlanarFVGGMR, &_s10Accelerate6vImageO11PixelBufferVy_AC7PlanarFVGMd);
  *v3 = result;
  return result;
}

void *_ss15ContiguousArrayV16_createNewBuffer14bufferIsUnique15minimumCapacity13growForAppendySb_SiSbtF10Accelerate6vImageO05PixelE0Vy_AI7Planar8VG_Tgq5_0(void *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10Accelerate6vImageO11PixelBufferVy_AE7Planar8VGGMd, &_ss23_ContiguousArrayStorageCy10Accelerate6vImageO11PixelBufferVy_AE7Planar8VGGMR, &_s10Accelerate6vImageO11PixelBufferVy_AC7Planar8VGMd);
  *v3 = result;
  return result;
}

uint64_t sub_1B7DD7DA4@<X0>(void *a1@<X0>, BOOL *a2@<X8>)
{
  result = MEMORY[0x1B8CB3260](*a1);
  *a2 = result != 0;
  return result;
}

void sub_1B7DD7DDC(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = MEMORY[0x1B8CB32A0](*a1);
  vImageCVImageFormatRef.ChromaSiting.init(location:)(v3, &v4);
  *a2 = v4;
}

uint64_t sub_1B7DD7E54@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = MEMORY[0x1B8CB32B0](*a1);
  *a2 = result;
  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for BNNS.PoolingType(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t BNNSGraph.Builder.Tensor.batchNorm<A, B, C, D>(mean:variance:weight:bias:epsilon:)@<X0>(uint64_t a1@<X4>, uint64_t a2@<X5>, uint64_t a3@<X6>, uint64_t a4@<X7>, uint64_t a5@<X8>, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v30 = *v10;
  v13 = v30;
  v15 = *(a1 + 16);
  v14 = *(a1 + 24);
  swift_retain_n();
  LOBYTE(v33) = 1;
  v25 = *(v10 + 8);
  v26 = *(v10 + 24);
  v16 = *(v10 + 8);
  *&v31 = v16;
  BNNSGraph.Builder.Tensor.init(_:intent:dataType:shape:builder:)(0, 0xE000000000000000, 0x100000000uLL, MEMORY[0x1E69E7CC0], &v30, v15, v14, &v33);
  v30 = v13;
  v31 = v25;
  v32 = v26;
  if (!BNNSGraph.Builder.Tensor.tensorData.getter())
  {

    goto LABEL_11;
  }

  v27 = v13;
  *&v28 = v16;
  (*(a7 + 24))(&v30, &v27, a2);

  v27 = v30;
  v28 = v31;
  v29 = v32;
  v17 = BNNSGraph.Builder.Tensor.tensorData.getter();

  if (!v17 || (, v27 = v13, *&v28 = v16, (*(a8 + 24))(&v30, &v27, a3, a8), , v27 = v30, v28 = v31, v29 = v32, v18 = BNNSGraph.Builder.Tensor.tensorData.getter(), , !v18))
  {

LABEL_10:

    goto LABEL_11;
  }

  v27 = v13;
  *&v28 = v16;
  (*(a9 + 24))(&v30, &v27, a4, a9);

  v27 = v30;
  v28 = v31;
  v29 = v32;
  v19 = BNNSGraph.Builder.Tensor.tensorData.getter();

  if (!v19)
  {

    goto LABEL_10;
  }

  v27 = v13;
  *&v28 = v16;
  (*(a10 + 24))(&v30, &v27, a6, a10);

  v27 = v30;
  v28 = v31;
  v29 = v32;
  v20 = BNNSGraph.Builder.Tensor.tensorData.getter();

  if (!v20)
  {
LABEL_11:
    *a5 = v33;
    *(a5 + 8) = v34;
    *(a5 + 24) = v35;
    return result;
  }

  if (v16)
  {
    v22 = _bnns_graph_builder_register_batch_norm();
    result = BNNSGraph.Builder.Tensor.setTensorData(_:operationName:)(v22, 0xD00000000000002DLL, 0x80000001B7E7C750);
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t BNNSGraph.Builder.Tensor.batchNorm<A, B>(mean:variance:epsilon:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v25 = *v6;
  v10 = v25;
  v12 = *(a1 + 16);
  v11 = *(a1 + 24);
  swift_retain_n();
  LOBYTE(v28) = 1;
  v20 = *(v6 + 8);
  v21 = *(v6 + 24);
  v13 = *(v6 + 8);
  *&v26 = v13;
  BNNSGraph.Builder.Tensor.init(_:intent:dataType:shape:builder:)(0, 0xE000000000000000, 0x100000000uLL, MEMORY[0x1E69E7CC0], &v25, v12, v11, &v28);
  v25 = v10;
  v26 = v20;
  v27 = v21;
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
    v17 = _bnns_graph_builder_register_batch_norm();
    result = BNNSGraph.Builder.Tensor.setTensorData(_:operationName:)(v17, 0xD000000000000021, 0x80000001B7E7C780);
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t BNNSGraph.Builder.Tensor.channelNorm<A, B>(weight:bias:epsilon:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v25 = *v6;
  v10 = v25;
  v12 = *(a1 + 16);
  v11 = *(a1 + 24);
  swift_retain_n();
  LOBYTE(v28) = 1;
  v20 = *(v6 + 8);
  v21 = *(v6 + 24);
  v13 = *(v6 + 8);
  *&v26 = v13;
  BNNSGraph.Builder.Tensor.init(_:intent:dataType:shape:builder:)(0, 0xE000000000000000, 0x100000000uLL, MEMORY[0x1E69E7CC0], &v25, v12, v11, &v28);
  v25 = v10;
  v26 = v20;
  v27 = v21;
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
    v17 = _bnns_graph_builder_register_channel_norm();
    result = BNNSGraph.Builder.Tensor.setTensorData(_:operationName:)(v17, 0xD000000000000021, 0x80000001B7E7C7B0);
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t BNNSGraph.Builder.Tensor.channelNorm(epsilon:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
    v9 = _bnns_graph_builder_register_channel_norm();
    result = BNNSGraph.Builder.Tensor.setTensorData(_:operationName:)(v9, 0xD000000000000015, 0x80000001B7E7C7E0);
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

uint64_t BNNSGraph.Builder.Tensor.instanceNorm<A, B>(weight:bias:epsilon:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v25 = *v6;
  v10 = v25;
  v12 = *(a1 + 16);
  v11 = *(a1 + 24);
  swift_retain_n();
  LOBYTE(v28) = 1;
  v20 = *(v6 + 8);
  v21 = *(v6 + 24);
  v13 = *(v6 + 8);
  *&v26 = v13;
  BNNSGraph.Builder.Tensor.init(_:intent:dataType:shape:builder:)(0, 0xE000000000000000, 0x100000000uLL, MEMORY[0x1E69E7CC0], &v25, v12, v11, &v28);
  v25 = v10;
  v26 = v20;
  v27 = v21;
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
    v17 = _bnns_graph_builder_register_instance_norm();
    result = BNNSGraph.Builder.Tensor.setTensorData(_:operationName:)(v17, 0xD000000000000022, 0x80000001B7E7C800);
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t BNNSGraph.Builder.Tensor.instanceNorm(epsilon:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
    v9 = _bnns_graph_builder_register_instance_norm();
    result = BNNSGraph.Builder.Tensor.setTensorData(_:operationName:)(v9, 0xD000000000000016, 0x80000001B7E7C830);
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

uint64_t BNNSGraph.Builder.Tensor.layerNorm<A, B>(weight:bias:axes:epsilon:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  v27 = *v7;
  v11 = v27;
  v13 = *(a2 + 16);
  v12 = *(a2 + 24);
  swift_retain_n();
  LOBYTE(v30) = 1;
  v22 = *(v7 + 8);
  v23 = *(v7 + 24);
  v14 = *(v7 + 8);
  *&v28 = v14;
  BNNSGraph.Builder.Tensor.init(_:intent:dataType:shape:builder:)(0, 0xE000000000000000, 0x100000000uLL, MEMORY[0x1E69E7CC0], &v27, v13, v12, &v30);
  v27 = v11;
  v28 = v22;
  v29 = v23;
  if (!BNNSGraph.Builder.Tensor.tensorData.getter())
  {

    goto LABEL_8;
  }

  v24 = v11;
  *&v25 = v14;
  (*(a5 + 24))(&v27, &v24, a3, a5);

  v24 = v27;
  v25 = v28;
  v26 = v29;
  v15 = BNNSGraph.Builder.Tensor.tensorData.getter();

  if (!v15)
  {

    goto LABEL_8;
  }

  v24 = v11;
  *&v25 = v14;
  (*(a6 + 24))(&v27, &v24, a4);

  v24 = v27;
  v25 = v28;
  v26 = v29;
  v16 = BNNSGraph.Builder.Tensor.tensorData.getter();

  if (!v16)
  {
LABEL_8:
    *a7 = v30;
    *(a7 + 8) = v31;
    *(a7 + 24) = v32;
    return result;
  }

  if (v14)
  {
    specialized BNNSGraph.Builder.Tensor.arrayToBitmask(_:)(a1);
    v18 = _bnns_graph_builder_register_layer_norm();
    result = BNNSGraph.Builder.Tensor.setTensorData(_:operationName:)(v18, 0xD000000000000024, 0x80000001B7E7C850);
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t BNNSGraph.Builder.Tensor.layerNorm(axes:epsilon:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v15 = *v3;
  v6 = v15;
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);

  LOBYTE(v18) = 1;
  v13 = *(v3 + 8);
  v14 = *(v3 + 24);
  v9 = *(v3 + 8);
  *&v16 = v9;
  BNNSGraph.Builder.Tensor.init(_:intent:dataType:shape:builder:)(0, 0xE000000000000000, 0x100000000uLL, MEMORY[0x1E69E7CC0], &v15, v7, v8, &v18);
  v15 = v6;
  v17 = v14;
  v16 = v13;
  result = BNNSGraph.Builder.Tensor.tensorData.getter();
  if (!result)
  {
    goto LABEL_4;
  }

  if (v9)
  {
    specialized BNNSGraph.Builder.Tensor.arrayToBitmask(_:)(a1);
    v11 = _bnns_graph_builder_register_layer_norm();
    result = BNNSGraph.Builder.Tensor.setTensorData(_:operationName:)(v11, 0xD000000000000018, 0x80000001B7E7C880);
LABEL_4:
    *a3 = v18;
    v12 = v20;
    *(a3 + 8) = v19;
    *(a3 + 24) = v12;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t BNNSGraph.Builder.Tensor.l2Norm(epsilon:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
    v9 = _bnns_graph_builder_register_l2_spatial_norm();
    result = BNNSGraph.Builder.Tensor.setTensorData(_:operationName:)(v9, 0xD000000000000010, 0x80000001B7E7C8A0);
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

uint64_t BNNSGraph.Builder.Tensor.rmsNorm<A>(scale:epsilon:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v20 = *v4;
  v8 = v20;
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  swift_retain_n();
  LOBYTE(v23) = 1;
  v15 = *(v4 + 8);
  v16 = *(v4 + 24);
  v11 = *(v4 + 8);
  *&v21 = v11;
  BNNSGraph.Builder.Tensor.init(_:intent:dataType:shape:builder:)(0, 0xE000000000000000, 0x100000000uLL, MEMORY[0x1E69E7CC0], &v20, v9, v10, &v23);
  v20 = v8;
  v21 = v15;
  v22 = v16;
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
    v14 = _bnns_graph_builder_register_rms_spatial_norm();
    result = BNNSGraph.Builder.Tensor.setTensorData(_:operationName:)(v14, 0xD000000000000017, 0x80000001B7E7C8C0);
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CFStringRef()
{
  swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CFStringRef()
{
  Hasher.init(_seed:)();
  swift_getWitnessTable();
  _CFObject.hash(into:)();
  return Hasher._finalize()();
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for quadrature_integrate_options(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for quadrature_integrate_options(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
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

  *(result + 40) = v3;
  return result;
}

__n128 __swift_memcpy52_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for BNNSOptimizerAdamWithClippingFields(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 52))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for BNNSOptimizerAdamWithClippingFields(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
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

  *(result + 52) = v3;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 __swift_memcpy24_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for BNNSLayerParametersCropResize(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[24])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for BNNSLayerParametersCropResize(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy36_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for vImage_PerpsectiveTransform(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 36))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for vImage_PerpsectiveTransform(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 36) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for BNNSLayerParametersConvolution(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 840))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for BNNSLayerParametersConvolution(uint64_t result, int a2, int a3)
{
  if (a2)
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
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 824) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
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

  *(result + 840) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for BNNSLayerParametersQuantization(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 720))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for BNNSLayerParametersQuantization(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 712) = 0;
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

  *(result + 720) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for BNNSLayerParametersFullyConnected(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 752))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for BNNSLayerParametersFullyConnected(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 744) = 0;
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

  *(result + 752) = v3;
  return result;
}

uint64_t storeEnumTagSinglePayload for DSPComplex(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for DSPDoubleSplitComplex(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 16))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for DSPDoubleSplitComplex(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    if (a3 >= 2)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BNNSLayerParametersNormalization(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 1128))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for BNNSLayerParametersNormalization(uint64_t result, int a2, int a3)
{
  if (a2)
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
    *(result + 1096) = 0u;
    *(result + 1112) = 0u;
    *(result + 1080) = 0u;
    *(result + 1064) = 0u;
    *(result + 1048) = 0u;
    *(result + 1032) = 0u;
    *(result + 1016) = 0u;
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
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

  *(result + 1128) = v3;
  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for BNNSLayerParametersArithmetic(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 64))
  {
    return (*a1 + 2);
  }

  if (*(a1 + 8))
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for BNNSLayerParametersArithmetic(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
    }
  }

  return result;
}

__n128 __swift_memcpy176_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = result;
  *(a1 + 128) = v8;
  return result;
}

uint64_t getEnumTagSinglePayload for BNNSNDArrayDescriptor(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 176))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for BNNSNDArrayDescriptor(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 168) = 0;
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

  *(result + 176) = v3;
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for vImage_Buffer(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for vImage_Buffer(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

__n128 __swift_memcpy160_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = result;
  *(a1 + 112) = v7;
  return result;
}

uint64_t getEnumTagSinglePayload for BNNSTensor(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 160))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for BNNSTensor(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 160) = v3;
  return result;
}

__n128 __swift_memcpy48_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for BNNSOptimizerSGDMomentumWithClippingFields(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 48))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for BNNSOptimizerSGDMomentumWithClippingFields(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy40_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for BNNSOptimizerSGDMomentumFields(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 40))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for BNNSOptimizerSGDMomentumFields(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BNNSOptimizerRMSPropWithClippingFields(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 52))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 12);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for BNNSOptimizerRMSPropWithClippingFields(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 52) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 52) = 0;
    }

    if (a2)
    {
      *(result + 12) = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy44_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 28) = *(a2 + 28);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for BNNSOptimizerRMSPropFields(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 44))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 12);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for BNNSOptimizerRMSPropFields(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 44) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 44) = 0;
    }

    if (a2)
    {
      *(result + 12) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BNNSOptimizerAdamFields(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 44))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 28);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for BNNSOptimizerAdamFields(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 44) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 44) = 0;
    }

    if (a2)
    {
      *(result + 28) = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for BNNSActivation(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for BNNSActivation(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 48) = v3;
  return result;
}

uint64_t lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CFStringRef(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

vImage_Error vImage.PixelBuffer<>.init(planarBuffers:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v29 = *MEMORY[0x1E69E9840];
  if (a1[2] != 2)
  {
    __break(1u);
    goto LABEL_21;
  }

  v4 = a1[4];
  if (!v4[2])
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v5 = v4[6];
  if (v5 < 0)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v6 = v4[5];
  if (v6 < 0)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (!v5)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (!v6)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v7 = a1[5];
  if (!v7[2])
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v8 = v7[6];
  if (v8 < 0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v9 = v7[5];
  if (v9 < 0)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (!v8)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (!v9)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v5 != v8)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v6 != v9)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Accelerate6vImageO13BufferWrapperVGMd);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1B7E76D90;
  v11 = specialized vImage_Buffer.init(width:height:bitsPerPixel:)(v5, v6);
  v13 = v12;
  v15 = v14;
  v17 = v16;
  type metadata accessor for vImage.BufferReference();
  v18 = swift_allocObject();
  v18[2] = v11;
  v18[3] = v13;
  v18[4] = v15;
  v18[5] = v17;
  *(v10 + 32) = v11;
  *(v10 + 40) = v13;
  *(v10 + 48) = v15;
  *(v10 + 56) = v17;
  *(v10 + 64) = v18;
  v19 = a1[4];
  if (!*(v19 + 16))
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v20 = *(v19 + 48);
  v28[0] = *(v19 + 32);
  v28[1] = v20;
  v21 = a1[5];

  if (!*(v21 + 16))
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v23 = *(v21 + 48);
  v24 = *(v21 + 32);

  v27[0] = v24;
  v27[1] = v23;
  v26[0] = v28;
  v26[1] = v27;
  v25[0] = v11;
  if (!v11)
  {
    goto LABEL_37;
  }

  v25[1] = (v11 + 4);
  if ((v15 & 0x8000000000000000) != 0)
  {
    goto LABEL_35;
  }

  if ((v13 & 0x8000000000000000) != 0)
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
  }

  result = vImageConvert_PlanarToChunkyF(v26, v25, 2u, 8uLL, v15, v13, v17, 0);
  *a2 = v10;
  return result;
}

{
  v40 = *MEMORY[0x1E69E9840];
  if (a1[2] != 4)
  {
    __break(1u);
    goto LABEL_34;
  }

  v4 = a1[4];
  if (!v4[2])
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v5 = v4[6];
  if (v5 < 0)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v6 = v4[5];
  if (v6 < 0)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (!v5)
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

  v7 = a1[5];
  if (!v7[2])
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v8 = v7[6];
  if (v8 < 0)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v9 = v7[5];
  if (v9 < 0)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (!v8)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (!v9)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (v5 != v8)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (v6 != v9)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v10 = a1[6];
  if (!v10[2])
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v11 = v10[6];
  if (v11 < 0)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v12 = v10[5];
  if (v12 < 0)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (!v11)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (!v12)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if (v5 != v11)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (v6 != v12)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v13 = a1[7];
  if (!v13[2])
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v14 = v13[6];
  if (v14 < 0)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v15 = v13[5];
  if (v15 < 0)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  if (!v14)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  if (!v15)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  if (v5 != v14)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  if (v6 != v15)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Accelerate6vImageO13BufferWrapperVGMd);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1B7E76D90;
  v17 = specialized vImage_Buffer.init(width:height:bitsPerPixel:)(v5, v6);
  v19 = v18;
  v21 = v20;
  v23 = v22;
  type metadata accessor for vImage.BufferReference();
  v24 = swift_allocObject();
  v24[2] = v17;
  v24[3] = v19;
  v24[4] = v21;
  v24[5] = v23;
  *(v16 + 32) = v17;
  *(v16 + 40) = v19;
  *(v16 + 48) = v21;
  *(v16 + 56) = v23;
  *(v16 + 64) = v24;
  dest.data = v17;
  dest.height = v19;
  dest.width = v21;
  dest.rowBytes = v23;
  v25 = a1[4];
  if (!*(v25 + 16))
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v26 = *(v25 + 48);
  *&srcA.data = *(v25 + 32);
  *&srcA.width = v26;
  v27 = a1[5];
  if (!*(v27 + 16))
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v28 = *(v27 + 48);
  *&srcR.data = *(v27 + 32);
  *&srcR.width = v28;
  v29 = a1[6];
  if (!*(v29 + 16))
  {
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
  }

  v30 = *(v29 + 48);
  *&srcG.data = *(v29 + 32);
  *&srcG.width = v30;
  v31 = a1[7];

  if (!*(v31 + 16))
  {
    goto LABEL_63;
  }

  v33 = *(v31 + 48);
  v34 = *(v31 + 32);

  *&srcB.data = v34;
  *&srcB.width = v33;
  result = vImageConvert_PlanarFtoARGBFFFF(&srcA, &srcR, &srcG, &srcB, &dest, 0);
  *a2 = v16;
  return result;
}

{
  v29 = *MEMORY[0x1E69E9840];
  if (a1[2] != 2)
  {
    __break(1u);
    goto LABEL_21;
  }

  v4 = a1[4];
  if (!v4[2])
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v5 = v4[6];
  if (v5 < 0)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v6 = v4[5];
  if (v6 < 0)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (!v5)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (!v6)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v7 = a1[5];
  if (!v7[2])
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v8 = v7[6];
  if (v8 < 0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v9 = v7[5];
  if (v9 < 0)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (!v8)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (!v9)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v5 != v8)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v6 != v9)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Accelerate6vImageO13BufferWrapperVGMd);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1B7E76D90;
  v11 = specialized vImage_Buffer.init(width:height:bitsPerPixel:)(v5, v6);
  v13 = v12;
  v15 = v14;
  v17 = v16;
  type metadata accessor for vImage.BufferReference();
  v18 = swift_allocObject();
  v18[2] = v11;
  v18[3] = v13;
  v18[4] = v15;
  v18[5] = v17;
  *(v10 + 32) = v11;
  *(v10 + 40) = v13;
  *(v10 + 48) = v15;
  *(v10 + 56) = v17;
  *(v10 + 64) = v18;
  v19 = a1[4];
  if (!*(v19 + 16))
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v20 = *(v19 + 48);
  v28[0] = *(v19 + 32);
  v28[1] = v20;
  v21 = a1[5];

  if (!*(v21 + 16))
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v23 = *(v21 + 48);
  v24 = *(v21 + 32);

  v27[0] = v24;
  v27[1] = v23;
  v26[0] = v28;
  v26[1] = v27;
  v25[0] = v11;
  if (!v11)
  {
    goto LABEL_37;
  }

  v25[1] = (v11 + 1);
  if ((v15 & 0x8000000000000000) != 0)
  {
    goto LABEL_35;
  }

  if ((v13 & 0x8000000000000000) != 0)
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
  }

  result = vImageConvert_PlanarToChunky8(v26, v25, 2u, 2uLL, v15, v13, v17, 0);
  *a2 = v10;
  return result;
}

{
  v40 = *MEMORY[0x1E69E9840];
  if (a1[2] != 4)
  {
    __break(1u);
    goto LABEL_34;
  }

  v4 = a1[4];
  if (!v4[2])
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v5 = v4[6];
  if (v5 < 0)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v6 = v4[5];
  if (v6 < 0)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (!v5)
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

  v7 = a1[5];
  if (!v7[2])
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v8 = v7[6];
  if (v8 < 0)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v9 = v7[5];
  if (v9 < 0)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (!v8)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (!v9)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (v5 != v8)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (v6 != v9)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v10 = a1[6];
  if (!v10[2])
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v11 = v10[6];
  if (v11 < 0)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v12 = v10[5];
  if (v12 < 0)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (!v11)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (!v12)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if (v5 != v11)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (v6 != v12)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v13 = a1[7];
  if (!v13[2])
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v14 = v13[6];
  if (v14 < 0)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v15 = v13[5];
  if (v15 < 0)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  if (!v14)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  if (!v15)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  if (v5 != v14)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  if (v6 != v15)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Accelerate6vImageO13BufferWrapperVGMd);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1B7E76D90;
  v17 = specialized vImage_Buffer.init(width:height:bitsPerPixel:)(v5, v6);
  v19 = v18;
  v21 = v20;
  v23 = v22;
  type metadata accessor for vImage.BufferReference();
  v24 = swift_allocObject();
  v24[2] = v17;
  v24[3] = v19;
  v24[4] = v21;
  v24[5] = v23;
  *(v16 + 32) = v17;
  *(v16 + 40) = v19;
  *(v16 + 48) = v21;
  *(v16 + 56) = v23;
  *(v16 + 64) = v24;
  dest.data = v17;
  dest.height = v19;
  dest.width = v21;
  dest.rowBytes = v23;
  v25 = a1[4];
  if (!*(v25 + 16))
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v26 = *(v25 + 48);
  *&srcA.data = *(v25 + 32);
  *&srcA.width = v26;
  v27 = a1[5];
  if (!*(v27 + 16))
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v28 = *(v27 + 48);
  *&srcR.data = *(v27 + 32);
  *&srcR.width = v28;
  v29 = a1[6];
  if (!*(v29 + 16))
  {
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
  }

  v30 = *(v29 + 48);
  *&srcG.data = *(v29 + 32);
  *&srcG.width = v30;
  v31 = a1[7];

  if (!*(v31 + 16))
  {
    goto LABEL_63;
  }

  v33 = *(v31 + 48);
  v34 = *(v31 + 32);

  *&srcB.data = v34;
  *&srcB.width = v33;
  result = vImageConvert_Planar8toARGB8888(&srcA, &srcR, &srcG, &srcB, &dest, 0);
  *a2 = v16;
  return result;
}

{
  v40 = *MEMORY[0x1E69E9840];
  if (a1[2] != 4)
  {
    __break(1u);
    goto LABEL_34;
  }

  v4 = a1[4];
  if (!v4[2])
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v5 = v4[6];
  if (v5 < 0)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v6 = v4[5];
  if (v6 < 0)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (!v5)
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

  v7 = a1[5];
  if (!v7[2])
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v8 = v7[6];
  if (v8 < 0)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v9 = v7[5];
  if (v9 < 0)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (!v8)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (!v9)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (v5 != v8)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (v6 != v9)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v10 = a1[6];
  if (!v10[2])
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v11 = v10[6];
  if (v11 < 0)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v12 = v10[5];
  if (v12 < 0)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (!v11)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (!v12)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if (v5 != v11)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (v6 != v12)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v13 = a1[7];
  if (!v13[2])
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v14 = v13[6];
  if (v14 < 0)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v15 = v13[5];
  if (v15 < 0)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  if (!v14)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  if (!v15)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  if (v5 != v14)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  if (v6 != v15)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Accelerate6vImageO13BufferWrapperVGMd);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1B7E76D90;
  v17 = specialized vImage_Buffer.init(width:height:bitsPerPixel:)(v5, v6);
  v19 = v18;
  v21 = v20;
  v23 = v22;
  type metadata accessor for vImage.BufferReference();
  v24 = swift_allocObject();
  v24[2] = v17;
  v24[3] = v19;
  v24[4] = v21;
  v24[5] = v23;
  *(v16 + 32) = v17;
  *(v16 + 40) = v19;
  *(v16 + 48) = v21;
  *(v16 + 56) = v23;
  *(v16 + 64) = v24;
  dest.data = v17;
  dest.height = v19;
  dest.width = v21;
  dest.rowBytes = v23;
  v25 = a1[4];
  if (!*(v25 + 16))
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v26 = *(v25 + 48);
  *&alpha.data = *(v25 + 32);
  *&alpha.width = v26;
  v27 = a1[5];
  if (!*(v27 + 16))
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v28 = *(v27 + 48);
  *&red.data = *(v27 + 32);
  *&red.width = v28;
  v29 = a1[6];
  if (!*(v29 + 16))
  {
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
  }

  v30 = *(v29 + 48);
  *&green.data = *(v29 + 32);
  *&green.width = v30;
  v31 = a1[7];

  if (!*(v31 + 16))
  {
    goto LABEL_63;
  }

  v33 = *(v31 + 48);
  v34 = *(v31 + 32);

  *&blue.data = v34;
  *&blue.width = v33;
  result = vImageConvert_PlanarFToARGB8888(&alpha, &red, &green, &blue, &dest, flt_1F2FD0AE0, flt_1F2FD0B10, 0);
  *a2 = v16;
  return result;
}

{
  v34 = *MEMORY[0x1E69E9840];
  if (a1[2] != 3)
  {
    __break(1u);
    goto LABEL_26;
  }

  v4 = a1[4];
  if (!v4[2])
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v5 = v4[6];
  if (v5 < 0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v6 = v4[5];
  if (v6 < 0)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (!v5)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (!v6)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v7 = a1[5];
  if (!v7[2])
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v8 = v7[6];
  if (v8 < 0)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v9 = v7[5];
  if (v9 < 0)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (!v8)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (!v9)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v5 != v8)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v6 != v9)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v10 = a1[6];
  if (!v10[2])
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v11 = v10[6];
  if (v11 < 0)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v12 = v10[5];
  if (v12 < 0)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (!v11)
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

  if (v5 != v11)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (v6 != v12)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Accelerate6vImageO13BufferWrapperVGMd);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1B7E76D90;
  v14 = specialized vImage_Buffer.init(width:height:bitsPerPixel:)(v5, v6);
  v16 = v15;
  v18 = v17;
  v20 = v19;
  type metadata accessor for vImage.BufferReference();
  v21 = swift_allocObject();
  v21[2] = v14;
  v21[3] = v16;
  v21[4] = v18;
  v21[5] = v20;
  *(v13 + 32) = v14;
  *(v13 + 40) = v16;
  *(v13 + 48) = v18;
  *(v13 + 56) = v20;
  *(v13 + 64) = v21;
  rgbDest.data = v14;
  rgbDest.height = v16;
  rgbDest.width = v18;
  rgbDest.rowBytes = v20;
  v22 = a1[4];
  if (!*(v22 + 16))
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v23 = *(v22 + 48);
  *&planarRed.data = *(v22 + 32);
  *&planarRed.width = v23;
  v24 = a1[5];
  if (!*(v24 + 16))
  {
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
  }

  v25 = *(v24 + 48);
  *&planarGreen.data = *(v24 + 32);
  *&planarGreen.width = v25;
  v26 = a1[6];

  if (!*(v26 + 16))
  {
    goto LABEL_47;
  }

  v28 = *(v26 + 48);
  v29 = *(v26 + 32);

  *&planarBlue.data = v29;
  *&planarBlue.width = v28;
  result = vImageConvert_Planar8toRGB888(&planarRed, &planarGreen, &planarBlue, &rgbDest, 0);
  *a2 = v13;
  return result;
}

{
  v34 = *MEMORY[0x1E69E9840];
  if (a1[2] != 3)
  {
    __break(1u);
    goto LABEL_26;
  }

  v4 = a1[4];
  if (!v4[2])
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v5 = v4[6];
  if (v5 < 0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v6 = v4[5];
  if (v6 < 0)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (!v5)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (!v6)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v7 = a1[5];
  if (!v7[2])
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v8 = v7[6];
  if (v8 < 0)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v9 = v7[5];
  if (v9 < 0)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (!v8)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (!v9)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v5 != v8)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v6 != v9)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v10 = a1[6];
  if (!v10[2])
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v11 = v10[6];
  if (v11 < 0)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v12 = v10[5];
  if (v12 < 0)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (!v11)
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

  if (v5 != v11)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (v6 != v12)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Accelerate6vImageO13BufferWrapperVGMd);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1B7E76D90;
  v14 = specialized vImage_Buffer.init(width:height:bitsPerPixel:)(v5, v6);
  v16 = v15;
  v18 = v17;
  v20 = v19;
  type metadata accessor for vImage.BufferReference();
  v21 = swift_allocObject();
  v21[2] = v14;
  v21[3] = v16;
  v21[4] = v18;
  v21[5] = v20;
  *(v13 + 32) = v14;
  *(v13 + 40) = v16;
  *(v13 + 48) = v18;
  *(v13 + 56) = v20;
  *(v13 + 64) = v21;
  rgbDest.data = v14;
  rgbDest.height = v16;
  rgbDest.width = v18;
  rgbDest.rowBytes = v20;
  v22 = a1[4];
  if (!*(v22 + 16))
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v23 = *(v22 + 48);
  *&planarRed.data = *(v22 + 32);
  *&planarRed.width = v23;
  v24 = a1[5];
  if (!*(v24 + 16))
  {
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
  }

  v25 = *(v24 + 48);
  *&planarGreen.data = *(v24 + 32);
  *&planarGreen.width = v25;
  v26 = a1[6];

  if (!*(v26 + 16))
  {
    goto LABEL_47;
  }

  v28 = *(v26 + 48);
  v29 = *(v26 + 32);

  *&planarBlue.data = v29;
  *&planarBlue.width = v28;
  result = vImageConvert_PlanarFtoRGBFFF(&planarRed, &planarGreen, &planarBlue, &rgbDest, 0);
  *a2 = v13;
  return result;
}

{
  v40 = *MEMORY[0x1E69E9840];
  if (a1[2] != 4)
  {
    __break(1u);
    goto LABEL_34;
  }

  v4 = a1[4];
  if (!v4[2])
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v5 = v4[6];
  if (v5 < 0)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v6 = v4[5];
  if (v6 < 0)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (!v5)
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

  v7 = a1[5];
  if (!v7[2])
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v8 = v7[6];
  if (v8 < 0)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v9 = v7[5];
  if (v9 < 0)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (!v8)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (!v9)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (v5 != v8)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (v6 != v9)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v10 = a1[6];
  if (!v10[2])
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v11 = v10[6];
  if (v11 < 0)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v12 = v10[5];
  if (v12 < 0)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (!v11)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (!v12)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if (v5 != v11)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (v6 != v12)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v13 = a1[7];
  if (!v13[2])
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v14 = v13[6];
  if (v14 < 0)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v15 = v13[5];
  if (v15 < 0)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  if (!v14)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  if (!v15)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  if (v5 != v14)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  if (v6 != v15)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Accelerate6vImageO13BufferWrapperVGMd);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1B7E76D90;
  v17 = specialized vImage_Buffer.init(width:height:bitsPerPixel:)(v5, v6);
  v19 = v18;
  v21 = v20;
  v23 = v22;
  type metadata accessor for vImage.BufferReference();
  v24 = swift_allocObject();
  v24[2] = v17;
  v24[3] = v19;
  v24[4] = v21;
  v24[5] = v23;
  *(v16 + 32) = v17;
  *(v16 + 40) = v19;
  *(v16 + 48) = v21;
  *(v16 + 56) = v23;
  *(v16 + 64) = v24;
  argbDest.data = v17;
  argbDest.height = v19;
  argbDest.width = v21;
  argbDest.rowBytes = v23;
  v25 = a1[4];
  if (!*(v25 + 16))
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v26 = *(v25 + 48);
  *&aSrc.data = *(v25 + 32);
  *&aSrc.width = v26;
  v27 = a1[5];
  if (!*(v27 + 16))
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v28 = *(v27 + 48);
  *&rSrc.data = *(v27 + 32);
  *&rSrc.width = v28;
  v29 = a1[6];
  if (!*(v29 + 16))
  {
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
  }

  v30 = *(v29 + 48);
  *&gSrc.data = *(v29 + 32);
  *&gSrc.width = v30;
  v31 = a1[7];

  if (!*(v31 + 16))
  {
    goto LABEL_63;
  }

  v33 = *(v31 + 48);
  v34 = *(v31 + 32);

  *&bSrc.data = v34;
  *&bSrc.width = v33;
  result = vImageConvert_Planar16UtoARGB16U(&aSrc, &rSrc, &gSrc, &bSrc, &argbDest, 0);
  *a2 = v16;
  return result;
}

void *vImage.PixelBuffer<>.planarBuffers()()
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_10Accelerate6vImageO11PixelBufferVy_AI7PlanarFVGs5NeverOTgq5Tm(partial apply for closure #1 in vImage.PixelBuffer<>.planarBuffers(), v13, 0, 2, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:));
  v2 = *v0;
  if (!(*v0)[2])
  {
    __break(1u);
    goto LABEL_11;
  }

  v3 = v1;
  v4 = v1[2];
  if (!v4)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v5 = v1[4];
  if (!*(v5 + 16))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v6 = *(v5 + 48);
  v17[0] = *(v5 + 32);
  v17[1] = v6;
  if (v4 == 1)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = v1[5];
  if (!*(v7 + 16))
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v8 = *(v7 + 48);
  v16[0] = *(v7 + 32);
  v16[1] = v8;
  v9 = v2[4];
  if (!v9)
  {
    goto LABEL_17;
  }

  v15[0] = v2[4];
  v15[1] = v9 + 4;
  v14[0] = v17;
  v14[1] = v16;
  v10 = v2[6];
  if ((v10 & 0x8000000000000000) != 0)
  {
    goto LABEL_15;
  }

  v11 = v2[5];
  if ((v11 & 0x8000000000000000) != 0)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
  }

  vImageConvert_ChunkyToPlanarF(v15, v14, 2u, 8uLL, v10, v11, v2[7], 0);
  return v3;
}

{
  v21 = *MEMORY[0x1E69E9840];
  v1 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_10Accelerate6vImageO11PixelBufferVy_AI7Planar8VGs5NeverOTgq5(partial apply for closure #1 in vImage.PixelBuffer<>.planarBuffers(), v15, 0, 4);
  v2 = *v0;
  if (!*(*v0 + 16))
  {
    __break(1u);
    goto LABEL_12;
  }

  v3 = v1;
  v4 = *(v2 + 48);
  *&src.data = *(v2 + 32);
  *&src.width = v4;
  v5 = v1[2];
  if (!v5)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v6 = v1[4];
  if (!*(v6 + 16))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = *(v6 + 48);
  *&alpha.data = *(v6 + 32);
  *&alpha.width = v7;
  if (v5 == 1)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = v1[5];
  if (!*(v8 + 16))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = *(v8 + 48);
  *&red.data = *(v8 + 32);
  *&red.width = v9;
  if (v5 < 3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v10 = v1[6];
  if (!*(v10 + 16))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = *(v10 + 48);
  *&green.data = *(v10 + 32);
  *&green.width = v11;
  if (v5 == 3)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
  }

  v12 = v1[7];
  if (!*(v12 + 16))
  {
    goto LABEL_19;
  }

  v13 = *(v12 + 48);
  *&blue.data = *(v12 + 32);
  *&blue.width = v13;
  vImageConvert_ARGBFFFFtoPlanar8(&src, &alpha, &red, &green, &blue, flt_1F2FD0950, flt_1F2FD0980, 0);
  return v3;
}

{
  v21 = *MEMORY[0x1E69E9840];
  v1 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_10Accelerate6vImageO11PixelBufferVy_AI7PlanarFVGs5NeverOTgq5(partial apply for closure #1 in vImage.PixelBuffer<>.planarBuffers(), v15, 0, 4);
  v2 = *v0;
  if (!*(*v0 + 16))
  {
    __break(1u);
    goto LABEL_12;
  }

  v3 = v1;
  v4 = *(v2 + 48);
  *&srcARGB.data = *(v2 + 32);
  *&srcARGB.width = v4;
  v5 = v1[2];
  if (!v5)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v6 = v1[4];
  if (!*(v6 + 16))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = *(v6 + 48);
  *&destA.data = *(v6 + 32);
  *&destA.width = v7;
  if (v5 == 1)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = v1[5];
  if (!*(v8 + 16))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = *(v8 + 48);
  *&destR.data = *(v8 + 32);
  *&destR.width = v9;
  if (v5 < 3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v10 = v1[6];
  if (!*(v10 + 16))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = *(v10 + 48);
  *&destG.data = *(v10 + 32);
  *&destG.width = v11;
  if (v5 == 3)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
  }

  v12 = v1[7];
  if (!*(v12 + 16))
  {
    goto LABEL_19;
  }

  v13 = *(v12 + 48);
  *&destB.data = *(v12 + 32);
  *&destB.width = v13;
  vImageConvert_ARGBFFFFtoPlanarF(&srcARGB, &destA, &destR, &destG, &destB, 0);
  return v3;
}

{
  v18 = *MEMORY[0x1E69E9840];
  v1 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_10Accelerate6vImageO11PixelBufferVy_AI7Planar8VGs5NeverOTgq5(partial apply for closure #1 in vImage.PixelBuffer<>.planarBuffers(), v13, 0, 2);
  v2 = *v0;
  if (!(*v0)[2])
  {
    __break(1u);
    goto LABEL_11;
  }

  v3 = v1;
  v4 = v1[2];
  if (!v4)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v5 = v1[4];
  if (!*(v5 + 16))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v6 = *(v5 + 48);
  v17[0] = *(v5 + 32);
  v17[1] = v6;
  if (v4 == 1)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = v1[5];
  if (!*(v7 + 16))
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v8 = *(v7 + 48);
  v16[0] = *(v7 + 32);
  v16[1] = v8;
  v9 = v2[4];
  if (!v9)
  {
    goto LABEL_17;
  }

  v15[0] = v2[4];
  v15[1] = v9 + 1;
  v14[0] = v17;
  v14[1] = v16;
  v10 = v2[6];
  if ((v10 & 0x8000000000000000) != 0)
  {
    goto LABEL_15;
  }

  v11 = v2[5];
  if ((v11 & 0x8000000000000000) != 0)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
  }

  vImageConvert_ChunkyToPlanar8(v15, v14, 2u, 2uLL, v10, v11, v2[7], 0);
  return v3;
}

{
  v21 = *MEMORY[0x1E69E9840];
  v1 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_10Accelerate6vImageO11PixelBufferVy_AI7Planar8VGs5NeverOTgq5(partial apply for closure #1 in vImage.PixelBuffer<>.planarBuffers(), v15, 0, 4);
  v2 = *v0;
  if (!*(*v0 + 16))
  {
    __break(1u);
    goto LABEL_12;
  }

  v3 = v1;
  v4 = *(v2 + 48);
  *&srcARGB.data = *(v2 + 32);
  *&srcARGB.width = v4;
  v5 = v1[2];
  if (!v5)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v6 = v1[4];
  if (!*(v6 + 16))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = *(v6 + 48);
  *&destA.data = *(v6 + 32);
  *&destA.width = v7;
  if (v5 == 1)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = v1[5];
  if (!*(v8 + 16))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = *(v8 + 48);
  *&destR.data = *(v8 + 32);
  *&destR.width = v9;
  if (v5 < 3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v10 = v1[6];
  if (!*(v10 + 16))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = *(v10 + 48);
  *&destG.data = *(v10 + 32);
  *&destG.width = v11;
  if (v5 == 3)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
  }

  v12 = v1[7];
  if (!*(v12 + 16))
  {
    goto LABEL_19;
  }

  v13 = *(v12 + 48);
  *&destB.data = *(v12 + 32);
  *&destB.width = v13;
  vImageConvert_ARGB8888toPlanar8(&srcARGB, &destA, &destR, &destG, &destB, 0);
  return v3;
}

{
  v21 = *MEMORY[0x1E69E9840];
  v1 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_10Accelerate6vImageO11PixelBufferVy_AI7PlanarFVGs5NeverOTgq5(partial apply for closure #1 in vImage.PixelBuffer<>.planarBuffers(), v15, 0, 4);
  v2 = *v0;
  if (!*(*v0 + 16))
  {
    __break(1u);
    goto LABEL_12;
  }

  v3 = v1;
  v4 = *(v2 + 48);
  *&src.data = *(v2 + 32);
  *&src.width = v4;
  v5 = v1[2];
  if (!v5)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v6 = v1[4];
  if (!*(v6 + 16))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = *(v6 + 48);
  *&alpha.data = *(v6 + 32);
  *&alpha.width = v7;
  if (v5 == 1)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = v1[5];
  if (!*(v8 + 16))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = *(v8 + 48);
  *&red.data = *(v8 + 32);
  *&red.width = v9;
  if (v5 < 3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v10 = v1[6];
  if (!*(v10 + 16))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = *(v10 + 48);
  *&green.data = *(v10 + 32);
  *&green.width = v11;
  if (v5 == 3)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
  }

  v12 = v1[7];
  if (!*(v12 + 16))
  {
    goto LABEL_19;
  }

  v13 = *(v12 + 48);
  *&blue.data = *(v12 + 32);
  *&blue.width = v13;
  vImageConvert_ARGB8888toPlanarF(&src, &alpha, &red, &green, &blue, flt_1F2FD0B40, flt_1F2FD0B70, 0);
  return v3;
}

{
  v18 = *MEMORY[0x1E69E9840];
  v1 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_10Accelerate6vImageO11PixelBufferVy_AI7Planar8VGs5NeverOTgq5(partial apply for closure #1 in vImage.PixelBuffer<>.planarBuffers(), v13, 0, 3);
  v2 = *v0;
  if (!*(*v0 + 16))
  {
    __break(1u);
    goto LABEL_10;
  }

  v3 = v1;
  v4 = *(v2 + 48);
  *&rgbSrc.data = *(v2 + 32);
  *&rgbSrc.width = v4;
  v5 = v1[2];
  if (!v5)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = v1[4];
  if (!*(v6 + 16))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v7 = *(v6 + 48);
  *&redDest.data = *(v6 + 32);
  *&redDest.width = v7;
  if (v5 == 1)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v8 = v1[5];
  if (!*(v8 + 16))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = *(v8 + 48);
  *&greenDest.data = *(v8 + 32);
  *&greenDest.width = v9;
  if (v5 < 3)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
  }

  v10 = v1[6];
  if (!*(v10 + 16))
  {
    goto LABEL_15;
  }

  v11 = *(v10 + 48);
  *&blueDest.data = *(v10 + 32);
  *&blueDest.width = v11;
  vImageConvert_RGB888toPlanar8(&rgbSrc, &redDest, &greenDest, &blueDest, 0);
  return v3;
}

{
  v18 = *MEMORY[0x1E69E9840];
  v1 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_10Accelerate6vImageO11PixelBufferVy_AI7PlanarFVGs5NeverOTgq5(partial apply for closure #1 in vImage.PixelBuffer<>.planarBuffers(), v13, 0, 3);
  v2 = *v0;
  if (!*(*v0 + 16))
  {
    __break(1u);
    goto LABEL_10;
  }

  v3 = v1;
  v4 = *(v2 + 48);
  *&rgbSrc.data = *(v2 + 32);
  *&rgbSrc.width = v4;
  v5 = v1[2];
  if (!v5)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = v1[4];
  if (!*(v6 + 16))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v7 = *(v6 + 48);
  *&redDest.data = *(v6 + 32);
  *&redDest.width = v7;
  if (v5 == 1)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v8 = v1[5];
  if (!*(v8 + 16))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = *(v8 + 48);
  *&greenDest.data = *(v8 + 32);
  *&greenDest.width = v9;
  if (v5 < 3)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
  }

  v10 = v1[6];
  if (!*(v10 + 16))
  {
    goto LABEL_15;
  }

  v11 = *(v10 + 48);
  *&blueDest.data = *(v10 + 32);
  *&blueDest.width = v11;
  vImageConvert_RGBFFFtoPlanarF(&rgbSrc, &redDest, &greenDest, &blueDest, 0);
  return v3;
}

{
  v21 = *MEMORY[0x1E69E9840];
  v1 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_10Accelerate6vImageO11PixelBufferVy_AI9Planar16UVGs5NeverOTgq5(partial apply for closure #1 in vImage.PixelBuffer<>.planarBuffers(), v15, 0, 4);
  v2 = *v0;
  if (!*(*v0 + 16))
  {
    __break(1u);
    goto LABEL_12;
  }

  v3 = v1;
  v4 = *(v2 + 48);
  *&argbSrc.data = *(v2 + 32);
  *&argbSrc.width = v4;
  v5 = v1[2];
  if (!v5)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v6 = v1[4];
  if (!*(v6 + 16))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = *(v6 + 48);
  *&aDest.data = *(v6 + 32);
  *&aDest.width = v7;
  if (v5 == 1)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = v1[5];
  if (!*(v8 + 16))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = *(v8 + 48);
  *&rDest.data = *(v8 + 32);
  *&rDest.width = v9;
  if (v5 < 3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v10 = v1[6];
  if (!*(v10 + 16))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = *(v10 + 48);
  *&gDest.data = *(v10 + 32);
  *&gDest.width = v11;
  if (v5 == 3)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
  }

  v12 = v1[7];
  if (!*(v12 + 16))
  {
    goto LABEL_19;
  }

  v13 = *(v12 + 48);
  *&bDest.data = *(v12 + 32);
  *&bDest.width = v13;
  vImageConvert_ARGB16UtoPlanar16U(&argbSrc, &aDest, &rDest, &gDest, &bDest, 0);
  return v3;
}

void *closure #1 in vImage.PixelBuffer<>.planarBuffers()@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X8>)
{
  v5 = *a1;
  if (!*(*a1 + 16))
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = *(v5 + 48);
  if (v6 < 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v7 = *(v5 + 40);
  if (v7 < 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (!v6)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (!v7)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Accelerate6vImageO13BufferWrapperVGMd);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1B7E76D90;
  v9 = specialized vImage_Buffer.init(width:height:bitsPerPixel:)(v6, v7);
  if (!v2)
  {
    v13 = v9;
    v14 = v10;
    v15 = v11;
    v16 = v12;
    type metadata accessor for vImage.BufferReference();
    result = swift_allocObject();
    result[2] = v13;
    result[3] = v14;
    result[4] = v15;
    result[5] = v16;
    *(v8 + 32) = v13;
    *(v8 + 40) = v14;
    *(v8 + 48) = v15;
    *(v8 + 56) = v16;
    *(v8 + 64) = result;
    *a2 = v8;
    return result;
  }

LABEL_13:

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v5 = *a1;
  if (!*(*a1 + 16))
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = *(v5 + 48);
  if (v6 < 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v7 = *(v5 + 40);
  if (v7 < 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (!v6)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (!v7)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Accelerate6vImageO13BufferWrapperVGMd);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1B7E76D90;
  v9 = specialized vImage_Buffer.init(width:height:bitsPerPixel:)(v6, v7);
  v3 = v2;
  if (!v2)
  {
    v13 = v9;
    v14 = v10;
    v15 = v11;
    v16 = v12;
    type metadata accessor for vImage.BufferReference();
    result = swift_allocObject();
    result[2] = v13;
    result[3] = v14;
    result[4] = v15;
    result[5] = v16;
    *(v8 + 32) = v13;
    *(v8 + 40) = v14;
    *(v8 + 48) = v15;
    *(v8 + 56) = v16;
    *(v8 + 64) = result;
    *a2 = v8;
    return result;
  }

LABEL_13:

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v5 = *a1;
  if (!*(*a1 + 16))
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = *(v5 + 48);
  if (v6 < 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v7 = *(v5 + 40);
  if (v7 < 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (!v6)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (!v7)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Accelerate6vImageO13BufferWrapperVGMd);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1B7E76D90;
  v9 = specialized vImage_Buffer.init(width:height:bitsPerPixel:)(v6, v7);
  if (!v2)
  {
    v13 = v9;
    v14 = v10;
    v15 = v11;
    v16 = v12;
    type metadata accessor for vImage.BufferReference();
    result = swift_allocObject();
    result[2] = v13;
    result[3] = v14;
    result[4] = v15;
    result[5] = v16;
    *(v8 + 32) = v13;
    *(v8 + 40) = v14;
    *(v8 + 48) = v15;
    *(v8 + 56) = v16;
    *(v8 + 64) = result;
    *a2 = v8;
    return result;
  }

LABEL_13:

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v5 = *a1;
  if (!*(*a1 + 16))
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = *(v5 + 48);
  if (v6 < 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v7 = *(v5 + 40);
  if (v7 < 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (!v6)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (!v7)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Accelerate6vImageO13BufferWrapperVGMd);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1B7E76D90;
  v9 = specialized vImage_Buffer.init(width:height:bitsPerPixel:)(v6, v7);
  if (!v2)
  {
    v13 = v9;
    v14 = v10;
    v15 = v11;
    v16 = v12;
    type metadata accessor for vImage.BufferReference();
    result = swift_allocObject();
    result[2] = v13;
    result[3] = v14;
    result[4] = v15;
    result[5] = v16;
    *(v8 + 32) = v13;
    *(v8 + 40) = v14;
    *(v8 + 48) = v15;
    *(v8 + 56) = v16;
    *(v8 + 64) = result;
    *a2 = v8;
    return result;
  }

LABEL_13:

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_10Accelerate6vImageO11PixelBufferVy_AI7PlanarFVGs5NeverOTgq5Tm(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(BOOL, uint64_t, uint64_t))
{
  v6 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v7 = MEMORY[0x1E69E7CC0];
  if (!v6)
  {
    return v7;
  }

  v21 = MEMORY[0x1E69E7CC0];
  a5(0, v6 & ~(v6 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v9 = 0;
    v7 = v21;
    v10 = a4;
    if (a4 <= a3)
    {
      v10 = a3;
    }

    v11 = v10 - a3 + 1;
    while (v9 < v6)
    {
      v12 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_17;
      }

      v19 = a3 + v9;
      a1(&v20, &v19);
      if (v5)
      {
        goto LABEL_22;
      }

      v21 = v7;
      v14 = *(v7 + 16);
      v13 = *(v7 + 24);
      if (v14 >= v13 >> 1)
      {
        a5(v13 > 1, v14 + 1, 1);
        v7 = v21;
      }

      *(v7 + 16) = v14 + 1;
      *(v7 + 8 * v14 + 32) = v20;
      if (a4 < a3)
      {
        goto LABEL_18;
      }

      if (v11 == ++v9)
      {
        goto LABEL_19;
      }

      if (v12 == v6)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_21:
  __break(1u);
LABEL_22:

  __break(1u);
  return result;
}

vImage_Error vImage.PixelBuffer<>.convert(to:)(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  if (!*(*v1 + 16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v3 = v2[6];
  if (v3 < 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v4 = v2[5];
  if ((v4 & 0x8000000000000000) != 0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (!v3)
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

  v5 = *a1;
  if (!*(*a1 + 16))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v6 = v5[6];
  if (v6 < 0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v7 = v5[5];
  if (v7 < 0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (!v6)
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

  if (v3 != v6)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  if (v4 != v7)
  {
    goto LABEL_25;
  }

  v8 = v2[4];
  v9 = v5[4];
  v10 = v2[7];
  v11 = v5[7];
  src.data = v8;
  src.height = v4;
  src.width = 2 * v3;
  src.rowBytes = v10;
  dest.data = v9;
  dest.height = v4;
  dest.width = 2 * v3;
  dest.rowBytes = v11;
  return vImageConvert_PlanarFtoPlanar16F(&src, &dest, 0);
}

{
  v24 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  if (!*(*v1 + 16))
  {
    __break(1u);
    goto LABEL_18;
  }

  v3 = *(v2 + 48);
  if ((v3 & 0x8000000000000000) != 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v4 = *(v2 + 40);
  if ((v4 & 0x8000000000000000) != 0)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (!v3)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v4)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v5 = *a1;
  if (!*(*a1 + 16))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v6 = v5[6];
  if (v6 < 0)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v7 = v5[5];
  if (v7 < 0)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (!v6)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (!v7)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v3 != v6)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v4 != v7)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v8 = v5[4];
  v9 = v5[7];
  rgbDest.data = v8;
  rgbDest.height = v4;
  rgbDest.width = v3;
  rgbDest.rowBytes = v9;
  v10 = specialized vImage.PixelBuffer<>.vImageBuffers.getter(v2);
  if (!*(v10 + 16))
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v14 = *(v10 + 48);
  v17 = *(v10 + 32);

  *&planarRed.width = v14;
  *&planarRed.data = v17;
  v11 = specialized vImage.PixelBuffer<>.vImageBuffers.getter(v2);
  if (*(v11 + 16) < 2uLL)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
  }

  v15 = *(v11 + 80);
  v18 = *(v11 + 64);

  *&planarGreen.width = v15;
  *&planarGreen.data = v18;
  v12 = specialized vImage.PixelBuffer<>.vImageBuffers.getter(v2);
  if (*(v12 + 16) < 3uLL)
  {
    goto LABEL_31;
  }

  v16 = *(v12 + 112);
  v19 = *(v12 + 96);

  *&planarBlue.width = v16;
  *&planarBlue.data = v19;
  return vImageConvert_PlanarFtoRGBFFF(&planarRed, &planarGreen, &planarBlue, &rgbDest, 0);
}

{
  v28 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  if (!*(*v1 + 16))
  {
    __break(1u);
    goto LABEL_19;
  }

  v3 = *(v2 + 48);
  if ((v3 & 0x8000000000000000) != 0)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v4 = *(v2 + 40);
  if ((v4 & 0x8000000000000000) != 0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v3)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (!v4)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v5 = *a1;
  if (!*(*a1 + 16))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v6 = v5[6];
  if (v6 < 0)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v7 = v5[5];
  if (v7 < 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (!v6)
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

  if (v3 != v6)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v4 != v7)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v8 = v5[4];
  v9 = v5[7];
  dest.data = v8;
  dest.height = v4;
  dest.width = v3;
  dest.rowBytes = v9;
  v10 = specialized vImage.PixelBuffer<>.vImageBuffers.getter(v2);
  if (!*(v10 + 16))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v15 = *(v10 + 48);
  v19 = *(v10 + 32);

  *&srcA.width = v15;
  *&srcA.data = v19;
  v11 = specialized vImage.PixelBuffer<>.vImageBuffers.getter(v2);
  if (*(v11 + 16) < 2uLL)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v16 = *(v11 + 80);
  v20 = *(v11 + 64);

  *&srcR.width = v16;
  *&srcR.data = v20;
  v12 = specialized vImage.PixelBuffer<>.vImageBuffers.getter(v2);
  if (*(v12 + 16) < 3uLL)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
  }

  v17 = *(v12 + 112);
  v21 = *(v12 + 96);

  *&srcG.width = v17;
  *&srcG.data = v21;
  v13 = specialized vImage.PixelBuffer<>.vImageBuffers.getter(v2);
  if (*(v13 + 16) < 4uLL)
  {
    goto LABEL_33;
  }

  v18 = *(v13 + 144);
  v22 = *(v13 + 128);

  *&srcB.width = v18;
  *&srcB.data = v22;
  return vImageConvert_Planar8toARGB8888(&srcA, &srcR, &srcG, &srcB, &dest, 0);
}

{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  if (!*(*v1 + 16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v3 = v2[6];
  if ((v3 & 0x8000000000000000) != 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v4 = v2[5];
  if ((v4 & 0x8000000000000000) != 0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (!v3)
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

  v5 = *a1;
  if (!*(*a1 + 16))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v6 = v5[6];
  if (v6 < 0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v7 = v5[5];
  if (v7 < 0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (!v6)
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

  if (v3 != v6)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  if (v4 != v7)
  {
    goto LABEL_25;
  }

  v8 = v2[4];
  v9 = v2[7];
  src.data = v8;
  src.height = v4;
  src.width = v3;
  src.rowBytes = v9;
  v10 = v5[4];
  v11 = v5[7];
  dest.data = v10;
  dest.height = v4;
  dest.width = v3;
  dest.rowBytes = v11;
  return vImageConvert_16Uto16F(&src, &dest, 0);
}

{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  if (!*(*v1 + 16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v3 = v2[6];
  if ((v3 & 0x8000000000000000) != 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v4 = v2[5];
  if ((v4 & 0x8000000000000000) != 0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (!v3)
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

  v5 = *a1;
  if (!*(*a1 + 16))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v6 = v5[6];
  if (v6 < 0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v7 = v5[5];
  if (v7 < 0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (!v6)
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

  if (v3 != v6)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  if (v4 != v7)
  {
    goto LABEL_25;
  }

  v8 = v2[4];
  v9 = v2[7];
  src.data = v8;
  src.height = v4;
  src.width = v3;
  src.rowBytes = v9;
  v10 = v5[4];
  v11 = v5[7];
  dest.data = v10;
  dest.height = v4;
  dest.width = v3;
  dest.rowBytes = v11;
  return vImageConvert_ARGBFFFFtoARGB8888_dithered(&src, &dest, flt_1F2FD09B0, flt_1F2FD09E0, 0, byte_1F2FD0A10, 0);
}

{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  if (!*(*v1 + 16))
  {
    __break(1u);
    goto LABEL_16;
  }

  v3 = v2[6];
  if ((v3 & 0x8000000000000000) != 0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v4 = v2[5];
  if ((v4 & 0x8000000000000000) != 0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (!v3)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v4)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v5 = *a1;
  if (!*(*a1 + 16))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v6 = v5[6];
  if (v6 < 0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v7 = v5[5];
  if (v7 < 0)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (!v6)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (!v7)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v3 != v6)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v4 != v7)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  if (v3 >> 62)
  {
    goto LABEL_27;
  }

  v8 = v2[4];
  v9 = v2[7];
  src.data = v8;
  src.height = v4;
  src.width = 4 * v3;
  src.rowBytes = v9;
  v10 = v5[4];
  v11 = v5[7];
  dest.data = v10;
  dest.height = v4;
  dest.width = 4 * v3;
  dest.rowBytes = v11;
  return vImageConvert_FTo16U(&src, &dest, 0.0, 0.000015259, 0);
}

{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  if (!*(*v1 + 16))
  {
    __break(1u);
    goto LABEL_16;
  }

  v3 = v2[6];
  if ((v3 & 0x8000000000000000) != 0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v4 = v2[5];
  if ((v4 & 0x8000000000000000) != 0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (!v3)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v4)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v5 = *a1;
  if (!*(*a1 + 16))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v6 = v5[6];
  if (v6 < 0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v7 = v5[5];
  if (v7 < 0)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (!v6)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (!v7)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v3 != v6)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v4 != v7)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  if (v3 >> 62)
  {
    goto LABEL_27;
  }

  v8 = v2[4];
  v9 = v5[4];
  v10 = v2[7];
  v11 = v5[7];
  src.data = v8;
  src.height = v4;
  src.width = 4 * v3;
  src.rowBytes = v10;
  dest.data = v9;
  dest.height = v4;
  dest.width = 4 * v3;
  dest.rowBytes = v11;
  return vImageConvert_PlanarFtoPlanar16F(&src, &dest, 0);
}

{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  if (!*(*v1 + 16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v3 = v2[6];
  if (v3 < 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v4 = v2[5];
  if ((v4 & 0x8000000000000000) != 0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (!v3)
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

  v5 = *a1;
  if (!*(*a1 + 16))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v6 = v5[6];
  if (v6 < 0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v7 = v5[5];
  if (v7 < 0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (!v6)
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

  if (v3 != v6)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  if (v4 != v7)
  {
    goto LABEL_25;
  }

  v8 = v2[4];
  v9 = v5[4];
  v10 = v2[7];
  v11 = v5[7];
  src.data = v8;
  src.height = v4;
  src.width = 2 * v3;
  src.rowBytes = v10;
  dest.data = v9;
  dest.height = v4;
  dest.width = 2 * v3;
  dest.rowBytes = v11;
  return vImageConvert_Planar8toPlanar16F(&src, &dest, 0);
}

{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  if (!*(*v1 + 16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v3 = v2[6];
  if ((v3 & 0x8000000000000000) != 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v4 = v2[5];
  if ((v4 & 0x8000000000000000) != 0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (!v3)
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

  v5 = *a1;
  if (!*(*a1 + 16))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v6 = v5[6];
  if (v6 < 0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v7 = v5[5];
  if (v7 < 0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (!v6)
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

  if (v3 != v6)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  if (v4 != v7)
  {
    goto LABEL_25;
  }

  v8 = v2[4];
  v9 = v2[7];
  src.data = v8;
  src.height = v4;
  src.width = v3;
  src.rowBytes = v9;
  v10 = v5[4];
  v11 = v5[7];
  dest.data = v10;
  dest.height = v4;
  dest.width = v3;
  dest.rowBytes = v11;
  return vImageConvert_Planar8toPlanarF(&src, &dest, 1.0, 0.0, 0);
}

{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  if (!*(*v1 + 16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v3 = v2[6];
  if ((v3 & 0x8000000000000000) != 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v4 = v2[5];
  if ((v4 & 0x8000000000000000) != 0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (!v3)
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

  v5 = *a1;
  if (!*(*a1 + 16))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v6 = v5[6];
  if (v6 < 0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v7 = v5[5];
  if (v7 < 0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (!v6)
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

  if (v3 != v6)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  if (v4 != v7)
  {
    goto LABEL_25;
  }

  v8 = v2[4];
  v9 = v2[7];
  src.data = v8;
  src.height = v4;
  src.width = v3;
  src.rowBytes = v9;
  v10 = v5[4];
  v11 = v5[7];
  dest.data = v10;
  dest.height = v4;
  dest.width = v3;
  dest.rowBytes = v11;
  return vImageConvert_Planar8toPlanar16F(&src, &dest, 0);
}

{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  if (!*(*v1 + 16))
  {
    __break(1u);
    goto LABEL_18;
  }

  v3 = v2[6];
  if ((v3 & 0x8000000000000000) != 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v4 = v2[5];
  if ((v4 & 0x8000000000000000) != 0)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (!v3)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v4)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v5 = *a1;
  if (!*(*a1 + 16))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v6 = v5[6];
  if (v6 < 0)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v7 = v5[5];
  if (v7 < 0)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (!v6)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (!v7)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v3 != v6)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v4 != v7)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v8 = v2[4];
  if (!v8)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
  }

  if (v3 >> 61)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v9 = v5[4];
  if (!v9)
  {
    goto LABEL_31;
  }

  v10 = v2[7];
  v11 = v5[7];
  src.data = v8;
  src.height = v4;
  src.width = 4 * v3;
  src.rowBytes = v10;
  dest.data = v9;
  dest.height = v4;
  dest.width = 4 * v3;
  dest.rowBytes = v11;
  return vImageConvert_Planar8toPlanarF(&src, &dest, 1.0, 0.0, 0);
}

{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  if (!*(*v1 + 16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v3 = v2[6];
  if ((v3 & 0x8000000000000000) != 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v4 = v2[5];
  if ((v4 & 0x8000000000000000) != 0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (!v3)
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

  v5 = *a1;
  if (!*(*a1 + 16))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v6 = v5[6];
  if (v6 < 0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v7 = v5[5];
  if (v7 < 0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (!v6)
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

  if (v3 != v6)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  if (v4 != v7)
  {
    goto LABEL_25;
  }

  v8 = v2[4];
  v9 = v2[7];
  src.data = v8;
  src.height = v4;
  src.width = v3;
  src.rowBytes = v9;
  v10 = v5[4];
  v11 = v5[7];
  dest.data = v10;
  dest.height = v4;
  dest.width = v3;
  dest.rowBytes = v11;
  return vImageConvert_ARGB8888ToARGB16U(&src, &dest, byte_1F2FD0BA0, 0, word_1F2FD0BC8, 0);
}

{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  if (!*(*v1 + 16))
  {
    __break(1u);
    goto LABEL_16;
  }

  v3 = v2[6];
  if ((v3 & 0x8000000000000000) != 0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v4 = v2[5];
  if ((v4 & 0x8000000000000000) != 0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (!v3)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v4)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v5 = *a1;
  if (!*(*a1 + 16))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v6 = v5[6];
  if (v6 < 0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v7 = v5[5];
  if (v7 < 0)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (!v6)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (!v7)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v3 != v6)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v4 != v7)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  if (v3 >> 62)
  {
    goto LABEL_27;
  }

  v8 = v2[4];
  v9 = v5[4];
  v10 = v2[7];
  v11 = v5[7];
  src.data = v8;
  src.height = v4;
  src.width = 4 * v3;
  src.rowBytes = v10;
  dest.data = v9;
  dest.height = v4;
  dest.width = 4 * v3;
  dest.rowBytes = v11;
  return vImageConvert_Planar8toPlanar16F(&src, &dest, 0);
}

{
  v17 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  if (!*(*v1 + 16))
  {
    __break(1u);
    goto LABEL_19;
  }

  v3 = v2[6];
  if (v3 < 0)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v4 = v2[5];
  if ((v4 & 0x8000000000000000) != 0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v3)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (!v4)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v5 = *a1;
  if (!*(*a1 + 16))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v6 = v5[6];
  if (v6 < 0)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v7 = v5[5];
  if (v7 < 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (!v6)
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

  if (v3 != v6)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v4 != v7)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v8 = v2[4];
  if (!v8)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
  }

  v9 = (v3 * 3) >> 64;
  v10 = 3 * v3;
  if (v9 != v10 >> 63)
  {
    goto LABEL_30;
  }

  if (v10 < 0)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v11 = v5[4];
  if (!v11)
  {
    goto LABEL_33;
  }

  v12 = v2[7];
  v13 = v5[7];
  src.data = v8;
  src.height = v4;
  src.width = v10;
  src.rowBytes = v12;
  dest.data = v11;
  dest.height = v4;
  dest.width = v10;
  dest.rowBytes = v13;
  return vImageConvert_Planar8toPlanarF(&src, &dest, 1.0, 0.0, 0);
}

{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  if (!*(*v1 + 16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v3 = v2[6];
  if (v3 < 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v4 = v2[5];
  if ((v4 & 0x8000000000000000) != 0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (!v3)
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

  v5 = *a1;
  if (!*(*a1 + 16))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v6 = v5[6];
  if (v6 < 0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v7 = v5[5];
  if (v7 < 0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (!v6)
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

  if (v3 != v6)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  if (v4 != v7)
  {
    goto LABEL_25;
  }

  v8 = v2[4];
  v9 = v5[4];
  v10 = v2[7];
  v11 = v5[7];
  src.data = v8;
  src.height = v4;
  src.width = 2 * v3;
  src.rowBytes = v10;
  dest.data = v9;
  dest.height = v4;
  dest.width = 2 * v3;
  dest.rowBytes = v11;
  return vImageConvert_16Uto16F(&src, &dest, 0);
}

{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  if (!*(*v1 + 16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v3 = v2[6];
  if ((v3 & 0x8000000000000000) != 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v4 = v2[5];
  if ((v4 & 0x8000000000000000) != 0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (!v3)
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

  v5 = *a1;
  if (!*(*a1 + 16))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v6 = v5[6];
  if (v6 < 0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v7 = v5[5];
  if (v7 < 0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (!v6)
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

  if (v3 != v6)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  if (v4 != v7)
  {
    goto LABEL_25;
  }

  v8 = v2[4];
  v9 = v2[7];
  src.data = v8;
  src.height = v4;
  src.width = v3;
  src.rowBytes = v9;
  v10 = v5[4];
  v11 = v5[7];
  dest.data = v10;
  dest.height = v4;
  dest.width = v3;
  dest.rowBytes = v11;
  return vImageConvert_RGBFFFtoRGB888_dithered(&src, &dest, flt_1F2FD0E98, flt_1F2FD0EC8, 0, 0);
}

{
  v28 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  if (!*(*v1 + 16))
  {
    __break(1u);
    goto LABEL_19;
  }

  v3 = *(v2 + 48);
  if ((v3 & 0x8000000000000000) != 0)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v4 = *(v2 + 40);
  if ((v4 & 0x8000000000000000) != 0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v3)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (!v4)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v5 = *a1;
  if (!*(*a1 + 16))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v6 = v5[6];
  if (v6 < 0)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v7 = v5[5];
  if (v7 < 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (!v6)
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

  if (v3 != v6)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v4 != v7)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v8 = v5[4];
  v9 = v5[7];
  dest.data = v8;
  dest.height = v4;
  dest.width = v3;
  dest.rowBytes = v9;
  v10 = specialized vImage.PixelBuffer<>.vImageBuffers.getter(v2);
  if (!*(v10 + 16))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v15 = *(v10 + 48);
  v19 = *(v10 + 32);

  *&srcA.width = v15;
  *&srcA.data = v19;
  v11 = specialized vImage.PixelBuffer<>.vImageBuffers.getter(v2);
  if (*(v11 + 16) < 2uLL)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v16 = *(v11 + 80);
  v20 = *(v11 + 64);

  *&srcR.width = v16;
  *&srcR.data = v20;
  v12 = specialized vImage.PixelBuffer<>.vImageBuffers.getter(v2);
  if (*(v12 + 16) < 3uLL)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
  }

  v17 = *(v12 + 112);
  v21 = *(v12 + 96);

  *&srcG.width = v17;
  *&srcG.data = v21;
  v13 = specialized vImage.PixelBuffer<>.vImageBuffers.getter(v2);
  if (*(v13 + 16) < 4uLL)
  {
    goto LABEL_33;
  }

  v18 = *(v13 + 144);
  v22 = *(v13 + 128);

  *&srcB.width = v18;
  *&srcB.data = v22;
  return vImageConvert_PlanarFtoARGBFFFF(&srcA, &srcR, &srcG, &srcB, &dest, 0);
}

{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  if (!*(*v1 + 16))
  {
    __break(1u);
    goto LABEL_16;
  }

  v3 = v2[6];
  if ((v3 & 0x8000000000000000) != 0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v4 = v2[5];
  if ((v4 & 0x8000000000000000) != 0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (!v3)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v4)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v5 = *a1;
  if (!*(*a1 + 16))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v6 = v5[6];
  if (v6 < 0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v7 = v5[5];
  if (v7 < 0)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (!v6)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (!v7)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v3 != v6)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v4 != v7)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  if (v3 >> 62)
  {
    goto LABEL_27;
  }

  v8 = v2[4];
  v9 = v2[7];
  src.data = v8;
  src.height = v4;
  src.width = 4 * v3;
  src.rowBytes = v9;
  v10 = v5[4];
  v11 = v5[7];
  dest.data = v10;
  dest.height = v4;
  dest.width = 4 * v3;
  dest.rowBytes = v11;
  return vImageConvert_16UToF(&src, &dest, 0.0, 0.000015259, 0);
}

{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  if (!*(*v1 + 16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v3 = v2[6];
  if ((v3 & 0x8000000000000000) != 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v4 = v2[5];
  if ((v4 & 0x8000000000000000) != 0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (!v3)
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

  v5 = *a1;
  if (!*(*a1 + 16))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v6 = v5[6];
  if (v6 < 0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v7 = v5[5];
  if (v7 < 0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (!v6)
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

  if (v3 != v6)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  if (v4 != v7)
  {
    goto LABEL_25;
  }

  v8 = v2[4];
  v9 = v2[7];
  src.data = v8;
  src.height = v4;
  src.width = v3;
  src.rowBytes = v9;
  v10 = v5[4];
  v11 = v5[7];
  dest.data = v10;
  dest.height = v4;
  dest.width = v3;
  dest.rowBytes = v11;
  return vImageConvert_ARGB16UToARGB8888(&src, &dest, byte_1F2FD0F88, 0, byte_1F2FD0FB0, 0);
}

{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  if (!*(*v1 + 16))
  {
    __break(1u);
    goto LABEL_16;
  }

  v3 = v2[6];
  if ((v3 & 0x8000000000000000) != 0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v4 = v2[5];
  if ((v4 & 0x8000000000000000) != 0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (!v3)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v4)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v5 = *a1;
  if (!*(*a1 + 16))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v6 = v5[6];
  if (v6 < 0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v7 = v5[5];
  if (v7 < 0)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (!v6)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (!v7)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v3 != v6)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v4 != v7)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  if (v3 >> 62)
  {
    goto LABEL_27;
  }

  v8 = v2[4];
  v9 = v5[4];
  v10 = v2[7];
  v11 = v5[7];
  src.data = v8;
  src.height = v4;
  src.width = 4 * v3;
  src.rowBytes = v10;
  dest.data = v9;
  dest.height = v4;
  dest.width = 4 * v3;
  dest.rowBytes = v11;
  return vImageConvert_16Uto16F(&src, &dest, 0);
}

{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  if (!*(*v1 + 16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v3 = v2[6];
  if ((v3 & 0x8000000000000000) != 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v4 = v2[5];
  if ((v4 & 0x8000000000000000) != 0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (!v3)
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

  v5 = *a1;
  if (!*(*a1 + 16))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v6 = v5[6];
  if (v6 < 0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v7 = v5[5];
  if (v7 < 0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (!v6)
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

  if (v3 != v6)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  if (v4 != v7)
  {
    goto LABEL_25;
  }

  v8 = v2[4];
  v9 = v2[7];
  src.data = v8;
  src.height = v4;
  src.width = v3;
  src.rowBytes = v9;
  v10 = v5[4];
  v11 = v5[7];
  dest.data = v10;
  dest.height = v4;
  dest.width = v3;
  dest.rowBytes = v11;
  return vImageConvert_PlanarFtoPlanar16F(&src, &dest, 0);
}

{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  if (!*(*v1 + 16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v3 = v2[6];
  if ((v3 & 0x8000000000000000) != 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v4 = v2[5];
  if ((v4 & 0x8000000000000000) != 0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (!v3)
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

  v5 = *a1;
  if (!*(*a1 + 16))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v6 = v5[6];
  if (v6 < 0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v7 = v5[5];
  if (v7 < 0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (!v6)
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

  if (v3 != v6)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  if (v4 != v7)
  {
    goto LABEL_25;
  }

  v8 = v2[4];
  v9 = v2[7];
  src.data = v8;
  src.height = v4;
  src.width = v3;
  src.rowBytes = v9;
  v10 = v5[4];
  v11 = v5[7];
  dest.data = v10;
  dest.height = v4;
  dest.width = v3;
  dest.rowBytes = v11;
  return vImageConvert_PlanarFtoPlanar8(&src, &dest, 1.0, 0.0, 0);
}

{
  v24 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  if (!*(*v1 + 16))
  {
    __break(1u);
    goto LABEL_18;
  }

  v3 = *(v2 + 48);
  if ((v3 & 0x8000000000000000) != 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v4 = *(v2 + 40);
  if ((v4 & 0x8000000000000000) != 0)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (!v3)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v4)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v5 = *a1;
  if (!*(*a1 + 16))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v6 = v5[6];
  if (v6 < 0)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v7 = v5[5];
  if (v7 < 0)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (!v6)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (!v7)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v3 != v6)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v4 != v7)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v8 = v5[4];
  v9 = v5[7];
  rgbDest.data = v8;
  rgbDest.height = v4;
  rgbDest.width = v3;
  rgbDest.rowBytes = v9;
  v10 = specialized vImage.PixelBuffer<>.vImageBuffers.getter(v2);
  if (!*(v10 + 16))
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v14 = *(v10 + 48);
  v17 = *(v10 + 32);

  *&planarRed.width = v14;
  *&planarRed.data = v17;
  v11 = specialized vImage.PixelBuffer<>.vImageBuffers.getter(v2);
  if (*(v11 + 16) < 2uLL)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
  }

  v15 = *(v11 + 80);
  v18 = *(v11 + 64);

  *&planarGreen.width = v15;
  *&planarGreen.data = v18;
  v12 = specialized vImage.PixelBuffer<>.vImageBuffers.getter(v2);
  if (*(v12 + 16) < 3uLL)
  {
    goto LABEL_31;
  }

  v16 = *(v12 + 112);
  v19 = *(v12 + 96);

  *&planarBlue.width = v16;
  *&planarBlue.data = v19;
  return vImageConvert_Planar8toRGB888(&planarRed, &planarGreen, &planarBlue, &rgbDest, 0);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void *partial apply for closure #1 in vImage.PixelBuffer<>.planarBuffers()@<X0>(uint64_t *a1@<X8>)
{
  return closure #1 in vImage.PixelBuffer<>.planarBuffers()(*(v1 + 16), a1);
}

{
  return closure #1 in vImage.PixelBuffer<>.planarBuffers()(*(v1 + 16), a1);
}

{
  return closure #1 in vImage.PixelBuffer<>.planarBuffers()(*(v1 + 16), a1);
}

{
  return closure #1 in vImage.PixelBuffer<>.planarBuffers()(*(v1 + 16), a1);
}

{
  return closure #1 in vImage.PixelBuffer<>.planarBuffers()(*(v1 + 16), a1);
}

uint64_t getEnumTagSinglePayload for vImage(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for vImage(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

vImage_Error vImage.PixelBuffer<>.init(interleavedBuffer:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v49 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Accelerate6vImageO13BufferWrapperVGMd);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B7E76E00;
  if (!*(v3 + 16))
  {
    __break(1u);
    goto LABEL_19;
  }

  v5 = v4;
  v6 = *(v3 + 48);
  if (v6 < 0)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v7 = *(v3 + 40);
  if (v7 < 0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v6)
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

  v8 = specialized vImage_Buffer.init(width:height:bitsPerPixel:)(v6, v7);
  v10 = v9;
  v12 = v11;
  v14 = v13;
  type metadata accessor for vImage.BufferReference();
  v15 = swift_allocObject();
  v15[2] = v8;
  v15[3] = v10;
  v15[4] = v12;
  v15[5] = v14;
  v5[4] = v8;
  v5[5] = v10;
  v5[6] = v12;
  v5[7] = v14;
  v5[8] = v15;
  if (!*(v3 + 16))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = *(v3 + 48);
  if (v16 < 0)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v17 = *(v3 + 40);
  if (v17 < 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (!v16)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (!v17)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v42 = v14;
  v43 = a2;
  v18 = specialized vImage_Buffer.init(width:height:bitsPerPixel:)(v16, v17);
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = swift_allocObject();
  v25[2] = v18;
  v25[3] = v20;
  v25[4] = v22;
  v25[5] = v24;
  v5[9] = v18;
  v5[10] = v20;
  v5[11] = v22;
  v5[12] = v24;
  v5[13] = v25;
  if (!*(v3 + 16))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v26 = *(v3 + 48);
  if (v26 < 0)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v27 = *(v3 + 40);
  if (v27 < 0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (!v26)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (!v27)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
  }

  v38 = v20;
  v39 = v12;
  v40 = v10;
  v41 = v8;
  v28 = specialized vImage_Buffer.init(width:height:bitsPerPixel:)(v26, v27);
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v35 = swift_allocObject();
  v35[2] = v28;
  v35[3] = v30;
  v35[4] = v32;
  v35[5] = v34;
  v5[14] = v28;
  v5[15] = v30;
  v5[16] = v32;
  v5[17] = v34;
  v5[18] = v35;
  if (!*(v3 + 16))
  {
    goto LABEL_33;
  }

  v44 = *(v3 + 32);
  v37 = *(v3 + 48);

  *&rgbSrc.data = v44;
  *&rgbSrc.width = v37;
  redDest.data = v41;
  redDest.height = v40;
  redDest.width = v39;
  redDest.rowBytes = v42;
  greenDest.data = v18;
  greenDest.height = v38;
  greenDest.width = v22;
  greenDest.rowBytes = v24;
  blueDest.data = v28;
  blueDest.height = v30;
  blueDest.width = v32;
  blueDest.rowBytes = v34;
  result = vImageConvert_RGBFFFtoPlanarF(&rgbSrc, &redDest, &greenDest, &blueDest, 0);
  *v43 = v5;
  return result;
}

{
  v65 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Accelerate6vImageO13BufferWrapperVGMd);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B7E770E0;
  if (!*(v3 + 16))
  {
    __break(1u);
    goto LABEL_24;
  }

  v5 = v4;
  v6 = *(v3 + 48);
  if (v6 < 0)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v7 = *(v3 + 40);
  if (v7 < 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (!v6)
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

  v8 = specialized vImage_Buffer.init(width:height:bitsPerPixel:)(v6, v7);
  v10 = v9;
  v12 = v11;
  v14 = v13;
  type metadata accessor for vImage.BufferReference();
  v15 = swift_allocObject();
  v15[2] = v8;
  v15[3] = v10;
  v15[4] = v12;
  v15[5] = v14;
  v5[4] = v8;
  v5[5] = v10;
  v5[6] = v12;
  v5[7] = v14;
  v5[8] = v15;
  if (!*(v3 + 16))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v16 = *(v3 + 48);
  if (v16 < 0)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v17 = *(v3 + 40);
  if (v17 < 0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (!v16)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (!v17)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v57 = v10;
  v58 = v8;
  v59 = a2;
  v18 = specialized vImage_Buffer.init(width:height:bitsPerPixel:)(v16, v17);
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = swift_allocObject();
  v25[2] = v18;
  v25[3] = v20;
  v25[4] = v22;
  v25[5] = v24;
  v5[9] = v18;
  v5[10] = v20;
  v5[11] = v22;
  v5[12] = v24;
  v5[13] = v25;
  if (!*(v3 + 16))
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v26 = *(v3 + 48);
  if (v26 < 0)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v27 = *(v3 + 40);
  if (v27 < 0)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (!v26)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (!v27)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v52 = v24;
  v53 = v22;
  v54 = v20;
  v55 = v18;
  v56 = v14;
  v28 = specialized vImage_Buffer.init(width:height:bitsPerPixel:)(v26, v27);
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v35 = swift_allocObject();
  v35[2] = v28;
  v35[3] = v30;
  v35[4] = v32;
  v35[5] = v34;
  v5[14] = v28;
  v5[15] = v30;
  v5[16] = v32;
  v5[17] = v34;
  v5[18] = v35;
  if (!*(v3 + 16))
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v36 = *(v3 + 48);
  if (v36 < 0)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v37 = *(v3 + 40);
  if (v37 < 0)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (!v36)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (!v37)
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }

  v49 = v32;
  v50 = v28;
  v51 = v12;
  v38 = specialized vImage_Buffer.init(width:height:bitsPerPixel:)(v36, v37);
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v45 = swift_allocObject();
  v45[2] = v38;
  v45[3] = v40;
  v45[4] = v42;
  v45[5] = v44;
  v5[19] = v38;
  v5[20] = v40;
  v5[21] = v42;
  v5[22] = v44;
  v5[23] = v45;
  if (!*(v3 + 16))
  {
    goto LABEL_43;
  }

  v47 = *(v3 + 48);
  v48 = *(v3 + 32);

  *&srcARGB.data = v48;
  *&srcARGB.width = v47;
  destA.data = v58;
  destA.height = v57;
  destA.width = v51;
  destA.rowBytes = v56;
  destR.data = v55;
  destR.height = v54;
  destR.width = v53;
  destR.rowBytes = v52;
  destG.data = v50;
  destG.height = v30;
  destG.width = v49;
  destG.rowBytes = v34;
  destB.data = v38;
  destB.height = v40;
  destB.width = v42;
  destB.rowBytes = v44;
  result = vImageConvert_ARGB8888toPlanar8(&srcARGB, &destA, &destR, &destG, &destB, 0);
  *v59 = v5;
  return result;
}

{
  v65 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Accelerate6vImageO13BufferWrapperVGMd);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B7E770E0;
  if (!*(v3 + 16))
  {
    __break(1u);
    goto LABEL_24;
  }

  v5 = v4;
  v6 = *(v3 + 48);
  if (v6 < 0)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v7 = *(v3 + 40);
  if (v7 < 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (!v6)
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

  v8 = specialized vImage_Buffer.init(width:height:bitsPerPixel:)(v6, v7);
  v10 = v9;
  v12 = v11;
  v14 = v13;
  type metadata accessor for vImage.BufferReference();
  v15 = swift_allocObject();
  v15[2] = v8;
  v15[3] = v10;
  v15[4] = v12;
  v15[5] = v14;
  v5[4] = v8;
  v5[5] = v10;
  v5[6] = v12;
  v5[7] = v14;
  v5[8] = v15;
  if (!*(v3 + 16))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v16 = *(v3 + 48);
  if (v16 < 0)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v17 = *(v3 + 40);
  if (v17 < 0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (!v16)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (!v17)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v57 = v10;
  v58 = v8;
  v59 = a2;
  v18 = specialized vImage_Buffer.init(width:height:bitsPerPixel:)(v16, v17);
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = swift_allocObject();
  v25[2] = v18;
  v25[3] = v20;
  v25[4] = v22;
  v25[5] = v24;
  v5[9] = v18;
  v5[10] = v20;
  v5[11] = v22;
  v5[12] = v24;
  v5[13] = v25;
  if (!*(v3 + 16))
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v26 = *(v3 + 48);
  if (v26 < 0)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v27 = *(v3 + 40);
  if (v27 < 0)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (!v26)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (!v27)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v52 = v24;
  v53 = v22;
  v54 = v20;
  v55 = v18;
  v56 = v14;
  v28 = specialized vImage_Buffer.init(width:height:bitsPerPixel:)(v26, v27);
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v35 = swift_allocObject();
  v35[2] = v28;
  v35[3] = v30;
  v35[4] = v32;
  v35[5] = v34;
  v5[14] = v28;
  v5[15] = v30;
  v5[16] = v32;
  v5[17] = v34;
  v5[18] = v35;
  if (!*(v3 + 16))
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v36 = *(v3 + 48);
  if (v36 < 0)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v37 = *(v3 + 40);
  if (v37 < 0)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (!v36)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (!v37)
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }

  v49 = v32;
  v50 = v28;
  v51 = v12;
  v38 = specialized vImage_Buffer.init(width:height:bitsPerPixel:)(v36, v37);
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v45 = swift_allocObject();
  v45[2] = v38;
  v45[3] = v40;
  v45[4] = v42;
  v45[5] = v44;
  v5[19] = v38;
  v5[20] = v40;
  v5[21] = v42;
  v5[22] = v44;
  v5[23] = v45;
  if (!*(v3 + 16))
  {
    goto LABEL_43;
  }

  v47 = *(v3 + 48);
  v48 = *(v3 + 32);

  *&srcARGB.data = v48;
  *&srcARGB.width = v47;
  destA.data = v58;
  destA.height = v57;
  destA.width = v51;
  destA.rowBytes = v56;
  destR.data = v55;
  destR.height = v54;
  destR.width = v53;
  destR.rowBytes = v52;
  destG.data = v50;
  destG.height = v30;
  destG.width = v49;
  destG.rowBytes = v34;
  destB.data = v38;
  destB.height = v40;
  destB.width = v42;
  destB.rowBytes = v44;
  result = vImageConvert_ARGBFFFFtoPlanarF(&srcARGB, &destA, &destR, &destG, &destB, 0);
  *v59 = v5;
  return result;
}

{
  v49 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Accelerate6vImageO13BufferWrapperVGMd);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B7E76E00;
  if (!*(v3 + 16))
  {
    __break(1u);
    goto LABEL_19;
  }

  v5 = v4;
  v6 = *(v3 + 48);
  if (v6 < 0)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v7 = *(v3 + 40);
  if (v7 < 0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v6)
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

  v8 = specialized vImage_Buffer.init(width:height:bitsPerPixel:)(v6, v7);
  v10 = v9;
  v12 = v11;
  v14 = v13;
  type metadata accessor for vImage.BufferReference();
  v15 = swift_allocObject();
  v15[2] = v8;
  v15[3] = v10;
  v15[4] = v12;
  v15[5] = v14;
  v5[4] = v8;
  v5[5] = v10;
  v5[6] = v12;
  v5[7] = v14;
  v5[8] = v15;
  if (!*(v3 + 16))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = *(v3 + 48);
  if (v16 < 0)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v17 = *(v3 + 40);
  if (v17 < 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (!v16)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (!v17)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v42 = v14;
  v43 = a2;
  v18 = specialized vImage_Buffer.init(width:height:bitsPerPixel:)(v16, v17);
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = swift_allocObject();
  v25[2] = v18;
  v25[3] = v20;
  v25[4] = v22;
  v25[5] = v24;
  v5[9] = v18;
  v5[10] = v20;
  v5[11] = v22;
  v5[12] = v24;
  v5[13] = v25;
  if (!*(v3 + 16))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v26 = *(v3 + 48);
  if (v26 < 0)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v27 = *(v3 + 40);
  if (v27 < 0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (!v26)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (!v27)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
  }

  v38 = v20;
  v39 = v12;
  v40 = v10;
  v41 = v8;
  v28 = specialized vImage_Buffer.init(width:height:bitsPerPixel:)(v26, v27);
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v35 = swift_allocObject();
  v35[2] = v28;
  v35[3] = v30;
  v35[4] = v32;
  v35[5] = v34;
  v5[14] = v28;
  v5[15] = v30;
  v5[16] = v32;
  v5[17] = v34;
  v5[18] = v35;
  if (!*(v3 + 16))
  {
    goto LABEL_33;
  }

  v44 = *(v3 + 32);
  v37 = *(v3 + 48);

  *&rgbSrc.data = v44;
  *&rgbSrc.width = v37;
  redDest.data = v41;
  redDest.height = v40;
  redDest.width = v39;
  redDest.rowBytes = v42;
  greenDest.data = v18;
  greenDest.height = v38;
  greenDest.width = v22;
  greenDest.rowBytes = v24;
  blueDest.data = v28;
  blueDest.height = v30;
  blueDest.width = v32;
  blueDest.rowBytes = v34;
  result = vImageConvert_RGB888toPlanar8(&rgbSrc, &redDest, &greenDest, &blueDest, 0);
  *v43 = v5;
  return result;
}