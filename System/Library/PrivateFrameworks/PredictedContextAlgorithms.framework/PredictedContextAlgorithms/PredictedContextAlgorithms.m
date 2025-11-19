uint64_t PCNeuralNetModel.modelHasBeenTrained.setter(char a1)
{
  v3 = OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge16PCNeuralNetModel_modelHasBeenTrained;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

Swift::tuple_OpaquePointer_OpaquePointer_OpaquePointer __swiftcall DataSetFeatureMatrix.getSequenceForIndex(i:)(Swift::Int i)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00]();
  v8 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1E69E7D40];
  if ((*((*MEMORY[0x1E69E7D40] & *v1) + 0xC0))(v6) <= i)
  {
    Logger.init(subsystem:category:)();
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_1CEE74000, v36, v37, "sequence index requested was larger than number of data points", v38, 2u);
      MEMORY[0x1D3865FA0](v38, -1, -1);
    }

    (*(v4 + 8))(v8, v3);
LABEL_76:
    v52 = MEMORY[0x1E69E7CC0];
    v18 = MEMORY[0x1E69E7CC0];
    v42 = MEMORY[0x1E69E7CC0];
    goto LABEL_79;
  }

  v10 = *((*v9 & *v1) + 0xD8);
  v11 = (*v9 & *v1) + 216;
  v12 = (v10)();
  v13 = i + v12;
  if (__OFADD__(i, v12))
  {
    goto LABEL_50;
  }

  v65 = v11;
  v14 = v12;
  if (v13 < i)
  {
    goto LABEL_51;
  }

  v64 = v10;
  v15 = (*((*v9 & *v1) + 0x90))();
  if (i < 0)
  {
    goto LABEL_52;
  }

  v10 = v15;
  v66 = v1;
  v16 = *(v15 + 16);
  if (v16 < i || v16 < v13)
  {
    goto LABEL_53;
  }

  if (v16 != v14)
  {
    goto LABEL_54;
  }

  for (j = i; v16; j = i)
  {
    i = 0;
    v18 = MEMORY[0x1E69E7CC0];
    v13 = MEMORY[0x1E69E7CC0];
    while (i < *(v10 + 16))
    {
      v19 = *(v10 + 8 * i + 32);
      if (!*(v19 + 16))
      {
        goto LABEL_42;
      }

      v20 = *(v19 + 32);
      if ((LODWORD(v20) & 0x7FFFFFFFu) > 0x7F7FFFFF)
      {
        goto LABEL_43;
      }

      if (v20 <= -9.2234e18)
      {
        goto LABEL_44;
      }

      if (v20 >= 9.2234e18)
      {
        goto LABEL_45;
      }

      v21 = *(v10 + 8 * i + 32);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v18 + 2) + 1, 1, v18);
      }

      v23 = *(v18 + 2);
      v22 = *(v18 + 3);
      if (v23 >= v22 >> 1)
      {
        v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v18);
      }

      *(v18 + 2) = v23 + 1;
      *&v18[8 * v23 + 32] = v20;
      v24 = *(v19 + 32);
      if ((LODWORD(v24) & 0x7FFFFFFFu) > 0x7F7FFFFF)
      {
        goto LABEL_46;
      }

      if (v24 <= -9.2234e18)
      {
        goto LABEL_47;
      }

      if (v24 >= 9.2234e18)
      {
        goto LABEL_48;
      }

      if ((*((*v9 & *v66) + 0x138))() == v24)
      {

        goto LABEL_76;
      }

      v25 = *(v19 + 16);
      if (!v25)
      {
        goto LABEL_49;
      }

      v26 = v18;
      v27 = v10;
      v28 = v16;
      v29 = v9;
      v30 = v25 - 1;
      if (v25 == 1)
      {
        v31 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
        v31 = swift_allocObject();
        v32 = _swift_stdlib_malloc_size(v31);
        v33 = v32 - 32;
        if (v32 < 32)
        {
          v33 = v32 - 29;
        }

        v31[2] = v30;
        v31[3] = 2 * (v33 >> 2);
        memcpy(v31 + 4, (v19 + 36), 4 * v30);
      }

      v9 = v29;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 16) + 1, 1, v13, &_ss23_ContiguousArrayStorageCySaySfGGMd, &_ss23_ContiguousArrayStorageCySaySfGGMR, &_sSaySfGMd, &_sSaySfGMR);
      }

      v16 = v28;
      v35 = *(v13 + 16);
      v34 = *(v13 + 24);
      v10 = v27;
      if (v35 >= v34 >> 1)
      {
        v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1, v13, &_ss23_ContiguousArrayStorageCySaySfGGMd, &_ss23_ContiguousArrayStorageCySaySfGGMR, &_sSaySfGMd, &_sSaySfGMR);
      }

      v18 = v26;
      ++i;
      *(v13 + 16) = v35 + 1;
      *(v13 + 8 * v35 + 32) = v31;
      if (v16 == i)
      {
        goto LABEL_56;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    specialized _copyCollectionToContiguousArray<A>(_:)(v10, v10 + 32, i, (2 * v13) | 1);
    v40 = v39;

    v16 = *(v40 + 16);
    v10 = v40;
  }

  v18 = MEMORY[0x1E69E7CC0];
  v13 = MEMORY[0x1E69E7CC0];
LABEL_56:
  v62 = v13;
  v41 = v66;
  v42 = *((*v9 & *v66) + 0xA8);
  if ((v42)())
  {

    v44 = v64;
    v45 = v41;
    v46 = (v64)(v43);
    v47 = j;
    v61 = j + v46;
    if (__OFADD__(j, v46))
    {
LABEL_84:
      __break(1u);
    }

    else
    {
      v48 = v44();
      v49 = __OFADD__(v47, v48);
      v47 += v48;
      if (!v49)
      {
        v50 = (*((*v9 & *v41) + 0xF0))();
        v49 = __OFADD__(v47, v50);
        v47 += v50;
        if (!v49)
        {
          v45 = v61;
          v51 = v47 - v61;
          if (v47 >= v61)
          {
            v52 = (v42)();
            if (!v52)
            {
              __break(1u);
              goto LABEL_92;
            }

            v42 = v52;

            if ((v45 & 0x8000000000000000) == 0)
            {
              v55 = *(v42 + 16);
              if (v55 >= v45 && v55 >= v47)
              {
                if (v55 == v51)
                {
                  goto LABEL_68;
                }

                goto LABEL_90;
              }

LABEL_89:
              __break(1u);
LABEL_90:
              specialized _copyCollectionToContiguousArray<A>(_:)(v42, v42 + 32, v45, (2 * v47) | 1);
              v60 = v59;

              v55 = *(v60 + 16);
              v42 = v60;
LABEL_68:
              v57 = 0;
              v47 = 3741319169;
              while (v55 != v57)
              {
                if (v57 >= *(v42 + 16))
                {
                  __break(1u);
LABEL_81:
                  __break(1u);
LABEL_82:
                  __break(1u);
LABEL_83:
                  __break(1u);
                  goto LABEL_84;
                }

                v58 = *(v42 + 4 * v57 + 32);
                if ((LODWORD(v58) & 0x7FFFFFFFu) > 0x7F7FFFFF)
                {
                  goto LABEL_81;
                }

                if (v58 <= -9.2234e18)
                {
                  goto LABEL_82;
                }

                if (v58 >= 9.2234e18)
                {
                  goto LABEL_83;
                }

                ++v57;
                if ((*((*v9 & *v66) + 0x138))() == v58)
                {

                  goto LABEL_76;
                }
              }

              goto LABEL_78;
            }

LABEL_88:
            __break(1u);
            goto LABEL_89;
          }

LABEL_87:
          __break(1u);
          goto LABEL_88;
        }

LABEL_86:
        __break(1u);
        goto LABEL_87;
      }
    }

    __break(1u);
    goto LABEL_86;
  }

  v42 = MEMORY[0x1E69E7CC0];
LABEL_78:
  v52 = v62;
LABEL_79:
  v53 = v18;
  v54 = v42;
LABEL_92:
  result._2._rawValue = v54;
  result._1._rawValue = v53;
  result._0._rawValue = v52;
  return result;
}

uint64_t DataSetFeatureMatrix.nDataPoints.getter()
{
  v1 = OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge20DataSetFeatureMatrix_nDataPoints;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DataSetFeatureMatrix.inputSteps.getter()
{
  v1 = OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge20DataSetFeatureMatrix_inputSteps;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DataSetFeatureMatrix.x.getter()
{
  v1 = OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge20DataSetFeatureMatrix_x;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

void specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd, &_sSaySfGMR);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySaySfGGMd, &_ss23_ContiguousArrayStorageCySaySfGGMR);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 3);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x1E69E7CC0];
      if (v4 != a3)
      {
LABEL_7:
        memcpy(v8 + 4, (a2 + 4 * a3), 4 * v5);
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 29;
      }

      v8[2] = v5;
      v8[3] = 2 * (v10 >> 2);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t DataSetFeatureMatrix.unknownLoiId.getter()
{
  v1 = OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge20DataSetFeatureMatrix_unknownLoiId;
  swift_beginAccess();
  return *(v0 + v1);
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

uint64_t DataSetFeatureMatrix.y.getter()
{
  v1 = OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge20DataSetFeatureMatrix_y;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t DataSetFeatureMatrix.outputSteps.getter()
{
  v1 = OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge20DataSetFeatureMatrix_outputSteps;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t lazy protocol witness table accessor for type Sequential<Sequential<Sequential<Conv1D, ReLU>, Flatten>, Dense> and conformance Sequential<A, B>(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t DataSetFeatureMatrix.inputShape.getter()
{
  v1 = OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge20DataSetFeatureMatrix_inputShape;
  swift_beginAccess();
  return *(v0 + v1);
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi_Tt1gq5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

uint64_t specialized Sequence.reversed()(uint64_t result, uint64_t a2)
{
  v2 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    goto LABEL_18;
  }

  if (!v2)
  {
    goto LABEL_5;
  }

  v4 = result;
  v5 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi_Tt1gq5(a2 - result, 0);
  result = specialized Sequence._copySequenceContents(initializing:)(v13, (v5 + 4), v2, v4, a2);
  if (result != v2)
  {
    __break(1u);
LABEL_5:
    v5 = MEMORY[0x1E69E7CC0];
  }

  v6 = v5[2];
  if (v6 < 2)
  {
    return v5;
  }

  v7 = v6 >> 1;
  v8 = v6 + 3;
  for (i = 4; ; ++i)
  {
    if (i == v8)
    {
      goto LABEL_10;
    }

    v10 = v5[2];
    if (i - 4 >= v10)
    {
      break;
    }

    if (v8 - 4 >= v10)
    {
      goto LABEL_17;
    }

    v11 = v5[i];
    v12 = v5[v8];
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
      v5 = result;
    }

    v5[i] = v12;
    v5[v8] = v11;
LABEL_10:
    --v8;
    if (!--v7)
    {
      return v5;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

uint64_t *specialized Sequence._copySequenceContents(initializing:)(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
LABEL_15:
    a3 = 0;
LABEL_16:
    v8 = a4;
LABEL_19:
    *result = a4;
    result[1] = a5;
    result[2] = v8;
    return a3;
  }

  if (!a3)
  {
    goto LABEL_16;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    if (a5 <= a4)
    {
      v6 = a4;
    }

    else
    {
      v6 = a5;
    }

    v7 = a4 - v6;
    while (1)
    {
      if (!(a4 - a5 + v5))
      {
        v8 = a5;
        a3 = a5 - a4;
        goto LABEL_19;
      }

      if (a5 < a4)
      {
        break;
      }

      if (!(v7 + v5))
      {
        goto LABEL_21;
      }

      *(a2 + 8 * v5) = a4 + v5;
      if (a3 - 1 == v5)
      {
        v8 = a4 + v5 + 1;
        goto LABEL_19;
      }

      if (__OFADD__(++v5, 1))
      {
        __break(1u);
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t DataSetFeatureMatrix.outputShape.getter()
{
  v1 = OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge20DataSetFeatureMatrix_outputShape;
  swift_beginAccess();
  return *(v0 + v1);
}

size_t specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14NeuralNetworks6TensorVGMd, &_ss23_ContiguousArrayStorageCy14NeuralNetworks6TensorVGMR);
  v10 = *(type metadata accessor for Tensor() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for Tensor() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

id PCNeuralNetModel.config.getter()
{
  v1 = OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge16PCNeuralNetModel_config;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

uint64_t NeuralNetConfig.batchSize.getter()
{
  v1 = OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge15NeuralNetConfig_batchSize;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t PCNeuralNetModel.model.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge16PCNeuralNetModel_model;
  swift_beginAccess();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14NeuralNetworks10SequentialVyACyACyACyAA6Conv1DVAA4ReLUVGAA7FlattenVGAA5DenseVGAA7ReshapeVGMd, &_s14NeuralNetworks10SequentialVyACyACyACyAA6Conv1DVAA4ReLUVGAA7FlattenVGAA5DenseVGAA7ReshapeVGMR);
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t outlined destroy of OneHotEncoder<String>.Transformer?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1CEE7729C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t LCGRandomNumberGenerator.__allocating_init(seed:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = xmmword_1CEF0B420;
  *(result + 32) = 0x100000000;
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    *(result + 40) = a1;
  }

  return result;
}

uint64_t LCGRandomNumberGenerator.init(seed:)(uint64_t result)
{
  *(v1 + 16) = xmmword_1CEF0B420;
  *(v1 + 32) = 0x100000000;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 40) = result;
    return v1;
  }

  return result;
}

Swift::UInt64 __swiftcall LCGRandomNumberGenerator.next()()
{
  v1 = *(v0 + 40);
  if (!is_mul_ok(v1, 0x19660DuLL))
  {
    __break(1u);
    goto LABEL_8;
  }

  v2 = 1664525 * v1;
  v3 = __CFADD__(v2, 1013904223);
  v4 = v2 + 1013904223;
  if (v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  *(v0 + 40) = v4;
  v5 = vcvtd_n_f64_u64(v4, 0x20uLL) * 1.84467441e19;
  if (v5 == INFINITY)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v5 <= -1.0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v5 < 1.84467441e19)
  {
    return v5;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t key path getter for DataPoint.x : DataPoint@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 96))();
  *a2 = result;
  return result;
}

uint64_t key path setter for DataPoint.x : DataPoint(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 104);

  return v3(v4);
}

uint64_t DataPoint.x.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
}

uint64_t DataPoint.x.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t key path getter for DataPoint.y : DataPoint@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 120))();
  *a2 = result;
  return result;
}

uint64_t key path setter for DataPoint.y : DataPoint(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 128);

  return v3(v4);
}

uint64_t DataPoint.y.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
}

uint64_t DataPoint.y.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  *(v1 + 24) = a1;
}

uint64_t DataPoint.__allocating_init(x:y:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t DataPoint.init(x:y:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t DataPoint.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t DataPoint.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t key path getter for DataSetFeatureMatrix.x : DataSetFeatureMatrix@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x90))();
  *a2 = result;
  return result;
}

uint64_t key path setter for DataSetFeatureMatrix.x : DataSetFeatureMatrix(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x98);

  return v3(v4);
}

uint64_t DataSetFeatureMatrix.x.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge20DataSetFeatureMatrix_x;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t key path getter for DataSetFeatureMatrix.y : DataSetFeatureMatrix@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xA8))();
  *a2 = result;
  return result;
}

uint64_t key path setter for DataSetFeatureMatrix.y : DataSetFeatureMatrix(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0xB0);

  return v3(v4);
}

uint64_t DataSetFeatureMatrix.y.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge20DataSetFeatureMatrix_y;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t key path getter for DataSetFeatureMatrix.nDataPoints : DataSetFeatureMatrix@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xC0))();
  *a2 = result;
  return result;
}

uint64_t DataSetFeatureMatrix.nDataPoints.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge20DataSetFeatureMatrix_nDataPoints;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t key path getter for DataSetFeatureMatrix.inputSteps : DataSetFeatureMatrix@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xD8))();
  *a2 = result;
  return result;
}

uint64_t DataSetFeatureMatrix.inputSteps.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge20DataSetFeatureMatrix_inputSteps;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t key path getter for DataSetFeatureMatrix.outputSteps : DataSetFeatureMatrix@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xF0))();
  *a2 = result;
  return result;
}

uint64_t DataSetFeatureMatrix.outputSteps.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge20DataSetFeatureMatrix_outputSteps;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t key path getter for DataSetFeatureMatrix.inputShape : DataSetFeatureMatrix@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x108))();
  *a2 = result;
  return result;
}

uint64_t DataSetFeatureMatrix.inputShape.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge20DataSetFeatureMatrix_inputShape;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t key path getter for DataSetFeatureMatrix.outputShape : DataSetFeatureMatrix@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x120))();
  *a2 = result;
  return result;
}

uint64_t DataSetFeatureMatrix.outputShape.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge20DataSetFeatureMatrix_outputShape;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t key path getter for DataSetFeatureMatrix.unknownLoiId : DataSetFeatureMatrix@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x138))();
  *a2 = result;
  return result;
}

uint64_t DataSetFeatureMatrix.unknownLoiId.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge20DataSetFeatureMatrix_unknownLoiId;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void *DataSetFeatureMatrix.init(x:inputSteps:unknownLoiId:)(void *result, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge20DataSetFeatureMatrix_y] = 0;
  *&v3[OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge20DataSetFeatureMatrix_x] = result;
  *&v3[OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge20DataSetFeatureMatrix_inputSteps] = a2;
  v4 = a2 - 1;
  if (__OFSUB__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    v5 = result[2];
    v6 = __OFSUB__(v5, v4);
    v7 = v5 - v4;
    if (!v6)
    {
      *&v3[OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge20DataSetFeatureMatrix_nDataPoints] = v7;
      *&v3[OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge20DataSetFeatureMatrix_outputSteps] = 0;
      *&v3[OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge20DataSetFeatureMatrix_inputShape] = 0;
      *&v3[OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge20DataSetFeatureMatrix_outputShape] = 0;
      *&v3[OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge20DataSetFeatureMatrix_unknownLoiId] = a3;
      v8.receiver = v3;
      v8.super_class = type metadata accessor for DataSetFeatureMatrix();
      return objc_msgSendSuper2(&v8, sel_init);
    }
  }

  __break(1u);
  return result;
}

char *DataSetFeatureMatrix.init(x:y:inputSteps:outputSteps:unknownLoiId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00]();
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge20DataSetFeatureMatrix_y;
  *&v5[OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge20DataSetFeatureMatrix_y] = 0;
  *&v5[OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge20DataSetFeatureMatrix_unknownLoiId] = a5;
  *&v5[OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge20DataSetFeatureMatrix_x] = a1;
  result = swift_beginAccess();
  *&v5[v16] = a2;
  v18 = a3 - 1;
  if (__OFSUB__(a3, 1))
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, v18);
  v21 = v19 - v18;
  if (v20)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v20 = __OFSUB__(v21, a4);
  v22 = v21 - a4;
  if (v20)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v37 = v12;
  v23 = OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge20DataSetFeatureMatrix_nDataPoints;
  *&v5[OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge20DataSetFeatureMatrix_nDataPoints] = v22;
  if (v22 > 0)
  {

LABEL_10:
    *&v5[OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge20DataSetFeatureMatrix_inputSteps] = a3;
    *&v5[OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge20DataSetFeatureMatrix_outputSteps] = a4;
    v28 = *(a1 + 16);
    if (!v28)
    {
      v29 = 0;
      v30 = 0;
LABEL_27:

      if (!__OFADD__(v29, 1))
      {
        *&v5[OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge20DataSetFeatureMatrix_inputShape] = v29 + 1;
        if (!__OFADD__(v30, 1))
        {
          *&v5[OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge20DataSetFeatureMatrix_outputShape] = v30 + 1;
          v35 = type metadata accessor for DataSetFeatureMatrix();
          v38.receiver = v5;
          v38.super_class = v35;
          return objc_msgSendSuper2(&v38, sel_init);
        }

        goto LABEL_41;
      }

LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    if (v28 > *(a2 + 16))
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v29 = 0;
    v30 = 0;
    v31 = (a2 + 32);
    v32 = a1 + 32;
    while (1)
    {
      v33 = *v31;
      if ((*v31 & 0x7FFFFFFFu) > 0x7F7FFFFF)
      {
        break;
      }

      if (v33 <= -9.2234e18)
      {
        goto LABEL_31;
      }

      if (v33 >= 9.2234e18)
      {
        goto LABEL_32;
      }

      if (v30 <= v33)
      {
        v30 = v33;
      }

      if (!*(*v32 + 16))
      {
        goto LABEL_33;
      }

      v34 = *(*v32 + 32);
      if ((LODWORD(v34) & 0x7FFFFFFFu) > 0x7F7FFFFF)
      {
        goto LABEL_34;
      }

      if (v34 <= -9.2234e18)
      {
        goto LABEL_35;
      }

      if (v34 >= 9.2234e18)
      {
        goto LABEL_36;
      }

      if (v29 <= v34)
      {
        v29 = v34;
      }

      v32 += 8;
      ++v31;
      if (!--v28)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_31:
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
    goto LABEL_37;
  }

  Logger.init(subsystem:category:)();
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();
  if (!os_log_type_enabled(v24, v25))
  {
LABEL_9:

    (*(v37 + 8))(v15, v11);
    result = swift_beginAccess();
    *&v5[v23] = 0;
    goto LABEL_10;
  }

  result = swift_slowAlloc();
  *result = 134217984;
  if (!__OFADD__(a3, a4))
  {
    *(result + 4) = a3 + a4;
    v26 = v25;
    v27 = result;
    _os_log_impl(&dword_1CEE74000, v24, v26, "dataset has fewer than %ld data points", result, 0xCu);
    MEMORY[0x1D3865FA0](v27, -1, -1);
    goto LABEL_9;
  }

LABEL_43:
  __break(1u);
  return result;
}

unint64_t PCNeuralNetworkTrainingResultCode.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

uint64_t specialized == infix<A>(_:_:)(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE500000000000000;
  v4 = 0xD000000000000019;
  v5 = 0x6168537475706E69;
  v6 = 0xEA00000000006570;
  if (a1 != 4)
  {
    v5 = 0xD000000000000013;
    v6 = 0x80000001CEF0C160;
  }

  if (a1 == 3)
  {
    v7 = 0x80000001CEF0C130;
  }

  else
  {
    v4 = v5;
    v7 = v6;
  }

  v8 = 0xE600000000000000;
  if (a1 == 1)
  {
    v9 = 0x6769666E6F63;
  }

  else
  {
    v9 = 0xD000000000000014;
  }

  if (a1 != 1)
  {
    v8 = 0x80000001CEF0C110;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x6C65646F6DLL;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v7;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0x80000001CEF0C130;
      if (v10 != 0xD000000000000019)
      {
        goto LABEL_38;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xEA00000000006570;
      if (v10 != 0x6168537475706E69)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v12 = 0x80000001CEF0C160;
      if (v10 != 0xD000000000000013)
      {
LABEL_38:
        v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_39;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x6769666E6F63)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v12 = 0x80000001CEF0C110;
      if (v10 != 0xD000000000000014)
      {
        goto LABEL_38;
      }
    }
  }

  else
  {
    v12 = 0xE500000000000000;
    if (v10 != 0x6C65646F6DLL)
    {
      goto LABEL_38;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_38;
  }

  v13 = 1;
LABEL_39:

  return v13 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PCNeuralNetworkTrainingResultCode()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1D38655B0](v1);
  return Hasher._finalize()();
}

Swift::Int specialized RawRepresentable<>.hashValue.getter()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PCNeuralNetworkTrainingResultCode()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1D38655B0](v1);
  return Hasher._finalize()();
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t *protocol witness for RawRepresentable.init(rawValue:) in conformance PCNeuralNetworkTrainingResultCode@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t key path getter for NeuralNetConfig.batchSize : NeuralNetConfig@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x80))();
  *a2 = result;
  return result;
}

uint64_t NeuralNetConfig.batchSize.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge15NeuralNetConfig_batchSize;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t key path getter for NeuralNetConfig.outSteps : NeuralNetConfig@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x98))();
  *a2 = result;
  return result;
}

uint64_t NeuralNetConfig.outSteps.getter()
{
  v1 = OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge15NeuralNetConfig_outSteps;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t NeuralNetConfig.outSteps.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge15NeuralNetConfig_outSteps;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t key path getter for NeuralNetConfig.hiddenLayerSize : NeuralNetConfig@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xB0))();
  *a2 = result;
  return result;
}

uint64_t NeuralNetConfig.hiddenLayerSize.getter()
{
  v1 = OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge15NeuralNetConfig_hiddenLayerSize;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t NeuralNetConfig.hiddenLayerSize.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge15NeuralNetConfig_hiddenLayerSize;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t key path getter for NeuralNetConfig.epochs : NeuralNetConfig@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xC8))();
  *a2 = result;
  return result;
}

uint64_t NeuralNetConfig.epochs.getter()
{
  v1 = OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge15NeuralNetConfig_epochs;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t NeuralNetConfig.epochs.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge15NeuralNetConfig_epochs;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t key path getter for NeuralNetConfig.trainOnGpu : NeuralNetConfig@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xE0))();
  *a2 = result & 1;
  return result;
}

uint64_t NeuralNetConfig.trainOnGpu.getter()
{
  v1 = OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge15NeuralNetConfig_trainOnGpu;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t NeuralNetConfig.trainOnGpu.setter(char a1)
{
  v3 = OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge15NeuralNetConfig_trainOnGpu;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t key path getter for NeuralNetConfig.unknownLoiID : NeuralNetConfig@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xF8))();
  *a2 = result;
  return result;
}

uint64_t NeuralNetConfig.unknownLoiID.getter()
{
  v1 = OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge15NeuralNetConfig_unknownLoiID;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t NeuralNetConfig.unknownLoiID.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge15NeuralNetConfig_unknownLoiID;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id NeuralNetConfig.__allocating_init(hiddenLayers:outSteps:epochs:batchSize:trainOnGpu:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v11 = objc_allocWithZone(v5);
  *&v11[OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge15NeuralNetConfig_unknownLoiID] = -1;
  *&v11[OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge15NeuralNetConfig_outSteps] = a2;
  *&v11[OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge15NeuralNetConfig_hiddenLayerSize] = a1;
  *&v11[OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge15NeuralNetConfig_epochs] = a3;
  *&v11[OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge15NeuralNetConfig_batchSize] = a4;
  v11[OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge15NeuralNetConfig_trainOnGpu] = a5;
  v13.receiver = v11;
  v13.super_class = v5;
  return objc_msgSendSuper2(&v13, sel_init);
}

id NeuralNetConfig.init(hiddenLayers:outSteps:epochs:batchSize:trainOnGpu:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *&v5[OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge15NeuralNetConfig_unknownLoiID] = -1;
  *&v5[OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge15NeuralNetConfig_outSteps] = a2;
  *&v5[OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge15NeuralNetConfig_hiddenLayerSize] = a1;
  *&v5[OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge15NeuralNetConfig_epochs] = a3;
  *&v5[OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge15NeuralNetConfig_batchSize] = a4;
  v5[OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge15NeuralNetConfig_trainOnGpu] = a5;
  v7.receiver = v5;
  v7.super_class = type metadata accessor for NeuralNetConfig();
  return objc_msgSendSuper2(&v7, sel_init);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance NeuralNetConfig.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1D38655B0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NeuralNetConfig.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1D38655B0](v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance NeuralNetConfig.CodingKeys()
{
  v1 = *v0;
  v2 = 0x7A69536863746162;
  v3 = 0x7368636F7065;
  v4 = 0x476E4F6E69617274;
  if (v1 != 4)
  {
    v4 = 0x4C6E776F6E6B6E75;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x737065745374756FLL;
  if (v1 != 1)
  {
    v5 = 0x614C6E6564646968;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance NeuralNetConfig.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized NeuralNetConfig.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance NeuralNetConfig.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NeuralNetConfig.CodingKeys and conformance NeuralNetConfig.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NeuralNetConfig.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NeuralNetConfig.CodingKeys and conformance NeuralNetConfig.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t NeuralNetConfig.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy28PCNeuralNetworkSupportBridge15NeuralNetConfigC10CodingKeys33_5E3324A45488CAD9EFDF1E72CC9262A7LLOGMd, &_ss22KeyedEncodingContainerVy28PCNeuralNetworkSupportBridge15NeuralNetConfigC10CodingKeys33_5E3324A45488CAD9EFDF1E72CC9262A7LLOGMR);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v9 = &v19[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type NeuralNetConfig.CodingKeys and conformance NeuralNetConfig.CodingKeys();
  v11 = dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v3) + 0x80))(v11);
  v19[15] = 0;
  v13 = KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    (*((*v12 & *v3) + 0x98))(v13);
    v19[14] = 1;
    v14 = KeyedEncodingContainer.encode(_:forKey:)();
    (*((*v12 & *v3) + 0xB0))(v14);
    v19[13] = 2;
    v15 = KeyedEncodingContainer.encode(_:forKey:)();
    (*((*v12 & *v3) + 0xC8))(v15);
    v19[12] = 3;
    v16 = KeyedEncodingContainer.encode(_:forKey:)();
    (*((*v12 & *v3) + 0xE0))(v16);
    v19[11] = 4;
    v17 = KeyedEncodingContainer.encode(_:forKey:)();
    (*((*v12 & *v3) + 0xF8))(v17);
    v19[10] = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

char *NeuralNetConfig.init(from:)(uint64_t *a1)
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy28PCNeuralNetworkSupportBridge15NeuralNetConfigC10CodingKeys33_5E3324A45488CAD9EFDF1E72CC9262A7LLOGMd, &_ss22KeyedDecodingContainerVy28PCNeuralNetworkSupportBridge15NeuralNetConfigC10CodingKeys33_5E3324A45488CAD9EFDF1E72CC9262A7LLOGMR);
  v4 = *(v16 - 8);
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v7 = &v13 - v6;
  v8 = OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge15NeuralNetConfig_unknownLoiID;
  *(v1 + OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge15NeuralNetConfig_unknownLoiID) = -1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type NeuralNetConfig.CodingKeys and conformance NeuralNetConfig.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    type metadata accessor for NeuralNetConfig();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v15 = 0;
    *(v1 + OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge15NeuralNetConfig_batchSize) = KeyedDecodingContainer.decode(_:forKey:)();
    v15 = 1;
    *(v1 + OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge15NeuralNetConfig_outSteps) = KeyedDecodingContainer.decode(_:forKey:)();
    v15 = 2;
    *(v1 + OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge15NeuralNetConfig_hiddenLayerSize) = KeyedDecodingContainer.decode(_:forKey:)();
    v15 = 3;
    *(v1 + OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge15NeuralNetConfig_epochs) = KeyedDecodingContainer.decode(_:forKey:)();
    v15 = 4;
    *(v1 + OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge15NeuralNetConfig_trainOnGpu) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    v15 = 5;
    v11 = KeyedDecodingContainer.decode(_:forKey:)();
    swift_beginAccess();
    *&v8[v1] = v11;
    v12 = type metadata accessor for NeuralNetConfig();
    v14.receiver = v1;
    v14.super_class = v12;
    v8 = objc_msgSendSuper2(&v14, sel_init);
    (*(v4 + 8))(v7, v16);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v8;
}

uint64_t protocol witness for Decodable.init(from:) in conformance NeuralNetConfig@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 296))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t closure #1 in variable initialization expression of PCNeuralNetModel.model@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v1 = *(*(type metadata accessor for TensorShape() - 8) + 64);
  MEMORY[0x1EEE9AC00]();
  v31 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for Reshape();
  v3 = *(*(v33 - 8) + 64);
  MEMORY[0x1EEE9AC00]();
  v28 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for Dense();
  v32 = *(v30 - 8);
  v5 = *(v32 + 64);
  MEMORY[0x1EEE9AC00]();
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for ReLU();
  v29 = *(v27 - 8);
  v8 = *(v29 + 64);
  MEMORY[0x1EEE9AC00]();
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14NeuralNetworks13ComputeDeviceVSgMd, &_s14NeuralNetworks13ComputeDeviceVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v13 = &v25 - v12;
  v26 = type metadata accessor for Conv1D();
  v14 = *(v26 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00]();
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ParameterInitializer();
  v18 = type metadata accessor for ComputeDevice();
  v19 = *(*(v18 - 8) + 56);
  v19(v13, 1, 1, v18);
  static ParameterInitializer.glorotUniform(seed:scalarType:on:)();
  outlined destroy of OneHotEncoder<String>.Transformer?(v13, &_s14NeuralNetworks13ComputeDeviceVSgMd, &_s14NeuralNetworks13ComputeDeviceVSgMR);
  static ParameterInitializer.zeros.getter();
  Conv1D.init(filterCount:kernelSize:stride:padding:dilation:groupCount:weightInitializer:biasInitializer:)();
  ReLU.init()();
  Flatten.init()();
  v19(v13, 1, 1, v18);
  static ParameterInitializer.glorotUniform(seed:scalarType:on:)();
  outlined destroy of OneHotEncoder<String>.Transformer?(v13, &_s14NeuralNetworks13ComputeDeviceVSgMd, &_s14NeuralNetworks13ComputeDeviceVSgMR);
  static ParameterInitializer.zeros.getter();
  Dense.init(unitCount:weightInitializer:biasInitializer:)();
  MEMORY[0x1D3865040](&outlined read-only object #0 of closure #1 in variable initialization expression of PCNeuralNetModel.model);
  v20 = v28;
  Reshape.init(_:)();
  v21 = v30;
  v23 = v26;
  v22 = v27;
  static SequentialBuilder.buildBlock<A, B, C, D, E>(_:_:_:_:_:)();
  outlined destroy of Reshape(v20);
  (*(v32 + 8))(v7, v21);
  (*(v29 + 8))(v10, v22);
  return (*(v14 + 8))(v17, v23);
}

uint64_t key path setter for PCNeuralNetModel.model : PCNeuralNetModel(uint64_t a1, void **a2)
{
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14NeuralNetworks10SequentialVyACyACyACyAA6Conv1DVAA4ReLUVGAA7FlattenVGAA5DenseVGAA7ReshapeVGMd, &_s14NeuralNetworks10SequentialVyACyACyACyAA6Conv1DVAA4ReLUVGAA7FlattenVGAA5DenseVGAA7ReshapeVGMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v6 = &v9 - v5;
  (*(v7 + 16))(&v9 - v5, a1);
  return (*((*MEMORY[0x1E69E7D40] & **a2) + 0x98))(v6);
}

uint64_t PCNeuralNetModel.model.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge16PCNeuralNetModel_model;
  swift_beginAccess();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14NeuralNetworks10SequentialVyACyACyACyAA6Conv1DVAA4ReLUVGAA7FlattenVGAA5DenseVGAA7ReshapeVGMd, &_s14NeuralNetworks10SequentialVyACyACyACyAA6Conv1DVAA4ReLUVGAA7FlattenVGAA5DenseVGAA7ReshapeVGMR);
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t key path getter for PCNeuralNetModel.config : PCNeuralNetModel@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xA8))();
  *a2 = result;
  return result;
}

void PCNeuralNetModel.config.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge16PCNeuralNetModel_config;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t key path setter for PCNeuralNetModel.encoderAsTransformer : PCNeuralNetModel(uint64_t a1, void **a2)
{
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s18CreateMLComponents13OneHotEncoderV11TransformerVySS_GSgMd, &_s18CreateMLComponents13OneHotEncoderV11TransformerVySS_GSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v6 = &v8 - v5;
  outlined init with copy of OneHotEncoder<String>.Transformer?(a1, &v8 - v5, &_s18CreateMLComponents13OneHotEncoderV11TransformerVySS_GSgMd, &_s18CreateMLComponents13OneHotEncoderV11TransformerVySS_GSgMR);
  return (*((*MEMORY[0x1E69E7D40] & **a2) + 0xC8))(v6);
}

uint64_t key path setter for PCNeuralNetModel.labelEncoderAsTransformer : PCNeuralNetModel(uint64_t a1, void **a2)
{
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s18CreateMLComponents14OrdinalEncoderV11TransformerVySS_GSgMd, &_s18CreateMLComponents14OrdinalEncoderV11TransformerVySS_GSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v6 = &v8 - v5;
  outlined init with copy of OneHotEncoder<String>.Transformer?(a1, &v8 - v5, &_s18CreateMLComponents14OrdinalEncoderV11TransformerVySS_GSgMd, &_s18CreateMLComponents14OrdinalEncoderV11TransformerVySS_GSgMR);
  return (*((*MEMORY[0x1E69E7D40] & **a2) + 0xE0))(v6);
}

uint64_t PCNeuralNetModel.encoderAsTransformer.getter@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  swift_beginAccess();
  return outlined init with copy of OneHotEncoder<String>.Transformer?(v4 + v8, a4, a2, a3);
}

uint64_t PCNeuralNetModel.encoderAsTransformer.setter(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = *a2;
  swift_beginAccess();
  outlined assign with take of OneHotEncoder<String>.Transformer?(a1, v4 + v8, a3, a4);
  return swift_endAccess();
}

uint64_t key path getter for PCNeuralNetModel.inputShape : PCNeuralNetModel@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xF0))();
  *a2 = result;
  return result;
}

uint64_t PCNeuralNetModel.inputShape.getter()
{
  v1 = OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge16PCNeuralNetModel_inputShape;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t PCNeuralNetModel.inputShape.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge16PCNeuralNetModel_inputShape;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t key path getter for PCNeuralNetModel.modelHasBeenTrained : PCNeuralNetModel@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x108))();
  *a2 = result & 1;
  return result;
}

uint64_t PCNeuralNetModel.modelHasBeenTrained.getter()
{
  v1 = OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge16PCNeuralNetModel_modelHasBeenTrained;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t key path getter for PCNeuralNetModel.shouldInterruptTraining : PCNeuralNetModel@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x120))();
  *a2 = result & 1;
  return result;
}

uint64_t PCNeuralNetModel.shouldInterruptTraining.getter()
{
  v1 = OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge16PCNeuralNetModel_shouldInterruptTraining;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t PCNeuralNetModel.shouldInterruptTraining.setter(char a1)
{
  v3 = OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge16PCNeuralNetModel_shouldInterruptTraining;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t key path getter for PCNeuralNetModel.lock : PCNeuralNetModel@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x138))();
  *a2 = result;
  return result;
}

id PCNeuralNetModel.lock.getter()
{
  v1 = OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge16PCNeuralNetModel_lock;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void PCNeuralNetModel.lock.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge16PCNeuralNetModel_lock;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id PCNeuralNetModel.init(config:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14NeuralNetworks10SequentialVyACyACyAA6Conv1DVAA4ReLUVGAA7FlattenVGAA5DenseVGMd, &_s14NeuralNetworks10SequentialVyACyACyAA6Conv1DVAA4ReLUVGAA7FlattenVGAA5DenseVGMR);
  type metadata accessor for Reshape();
  lazy protocol witness table accessor for type Sequential<Sequential<Sequential<Conv1D, ReLU>, Flatten>, Dense> and conformance Sequential<A, B>(&lazy protocol witness table cache variable for type Sequential<Sequential<Sequential<Conv1D, ReLU>, Flatten>, Dense> and conformance Sequential<A, B>, &_s14NeuralNetworks10SequentialVyACyACyAA6Conv1DVAA4ReLUVGAA7FlattenVGAA5DenseVGMd, &_s14NeuralNetworks10SequentialVyACyACyAA6Conv1DVAA4ReLUVGAA7FlattenVGAA5DenseVGMR);
  Sequential.init(layers:)();
  v3 = OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge16PCNeuralNetModel_encoderAsTransformer;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18CreateMLComponents13OneHotEncoderV11TransformerVySS_GMd, &_s18CreateMLComponents13OneHotEncoderV11TransformerVySS_GMR);
  (*(*(v4 - 8) + 56))(&v1[v3], 1, 1, v4);
  v5 = OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge16PCNeuralNetModel_labelEncoderAsTransformer;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18CreateMLComponents14OrdinalEncoderV11TransformerVySS_GMd, &_s18CreateMLComponents14OrdinalEncoderV11TransformerVySS_GMR);
  (*(*(v6 - 8) + 56))(&v1[v5], 1, 1, v6);
  *&v1[OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge16PCNeuralNetModel_inputShape] = 0;
  v1[OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge16PCNeuralNetModel_modelHasBeenTrained] = 0;
  v1[OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge16PCNeuralNetModel_shouldInterruptTraining] = 0;
  v7 = OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge16PCNeuralNetModel_lock;
  *&v1[v7] = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  *&v1[OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge16PCNeuralNetModel_config] = a1;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for PCNeuralNetModel();
  return objc_msgSendSuper2(&v9, sel_init);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PCNeuralNetModel.CodingKeys()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance PCNeuralNetModel.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized PCNeuralNetModel.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance PCNeuralNetModel.CodingKeys(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x6C65646F6DLL;
  v5 = 0x80000001CEF0C130;
  v6 = 0xD000000000000019;
  v7 = 0xEA00000000006570;
  v8 = 0x6168537475706E69;
  if (v2 != 4)
  {
    v8 = 0xD000000000000013;
    v7 = 0x80000001CEF0C160;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE600000000000000;
  v10 = 0x6769666E6F63;
  if (v2 != 1)
  {
    v10 = 0xD000000000000014;
    v9 = 0x80000001CEF0C110;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance PCNeuralNetModel.CodingKeys()
{
  v1 = *v0;
  v2 = 0x6C65646F6DLL;
  v3 = 0xD000000000000019;
  v4 = 0x6168537475706E69;
  if (v1 != 4)
  {
    v4 = 0xD000000000000013;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6769666E6F63;
  if (v1 != 1)
  {
    v5 = 0xD000000000000014;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance PCNeuralNetModel.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized PCNeuralNetModel.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PCNeuralNetModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PCNeuralNetModel.CodingKeys and conformance PCNeuralNetModel.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PCNeuralNetModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PCNeuralNetModel.CodingKeys and conformance PCNeuralNetModel.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id PCNeuralNetModel.init(from:)(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v52 = a1;
  v5 = type metadata accessor for Logger();
  v47 = *(v5 - 8);
  v48 = v5;
  v6 = *(v47 + 64);
  MEMORY[0x1EEE9AC00]();
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s18CreateMLComponents14OrdinalEncoderV11TransformerVySS_GSgMd, &_s18CreateMLComponents14OrdinalEncoderV11TransformerVySS_GSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v46 = &v41 - v8;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s18CreateMLComponents13OneHotEncoderV11TransformerVySS_GSgMd, &_s18CreateMLComponents13OneHotEncoderV11TransformerVySS_GSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v45 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14NeuralNetworks10SequentialVyACyACyACyAA6Conv1DVAA4ReLUVGAA7FlattenVGAA5DenseVGAA7ReshapeVGMd, &_s14NeuralNetworks10SequentialVyACyACyACyAA6Conv1DVAA4ReLUVGAA7FlattenVGAA5DenseVGAA7ReshapeVGMR);
  v12 = *(v11 - 8);
  v49 = v11;
  v50 = v12;
  v13 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v42 = &v41 - v14;
  v15 = OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge16PCNeuralNetModel_model;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14NeuralNetworks10SequentialVyACyACyAA6Conv1DVAA4ReLUVGAA7FlattenVGAA5DenseVGMd, &_s14NeuralNetworks10SequentialVyACyACyAA6Conv1DVAA4ReLUVGAA7FlattenVGAA5DenseVGMR);
  type metadata accessor for Reshape();
  lazy protocol witness table accessor for type Sequential<Sequential<Sequential<Conv1D, ReLU>, Flatten>, Dense> and conformance Sequential<A, B>(&lazy protocol witness table cache variable for type Sequential<Sequential<Sequential<Conv1D, ReLU>, Flatten>, Dense> and conformance Sequential<A, B>, &_s14NeuralNetworks10SequentialVyACyACyAA6Conv1DVAA4ReLUVGAA7FlattenVGAA5DenseVGMd, &_s14NeuralNetworks10SequentialVyACyACyAA6Conv1DVAA4ReLUVGAA7FlattenVGAA5DenseVGMR);
  v16 = a2;
  Sequential.init(layers:)();
  v17 = OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge16PCNeuralNetModel_encoderAsTransformer;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18CreateMLComponents13OneHotEncoderV11TransformerVySS_GMd, &_s18CreateMLComponents13OneHotEncoderV11TransformerVySS_GMR);
  (*(*(v18 - 8) + 56))(&v2[v17], 1, 1, v18);
  v19 = OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge16PCNeuralNetModel_labelEncoderAsTransformer;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18CreateMLComponents14OrdinalEncoderV11TransformerVySS_GMd, &_s18CreateMLComponents14OrdinalEncoderV11TransformerVySS_GMR);
  (*(*(v20 - 8) + 56))(&v2[v19], 1, 1, v20);
  v43 = OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge16PCNeuralNetModel_inputShape;
  *&v2[OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge16PCNeuralNetModel_inputShape] = 0;
  v44 = OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge16PCNeuralNetModel_modelHasBeenTrained;
  v2[OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge16PCNeuralNetModel_modelHasBeenTrained] = 0;
  v2[OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge16PCNeuralNetModel_shouldInterruptTraining] = 0;
  v21 = OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge16PCNeuralNetModel_lock;
  *&v2[v21] = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  v22 = type metadata accessor for JSONDecoder();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  swift_getObjectType();
  v25 = type metadata accessor for PCNeuralNetModel();
  lazy protocol witness table accessor for type PCNeuralNetModel and conformance PCNeuralNetModel(&lazy protocol witness table cache variable for type PCNeuralNetModel and conformance PCNeuralNetModel, 255, type metadata accessor for PCNeuralNetModel);
  v51 = v16;
  v26 = dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  v27 = v54;
  v28 = MEMORY[0x1E69E7D40];
  v29 = v42;
  (*((*MEMORY[0x1E69E7D40] & *v54) + 0x90))(v26);
  swift_beginAccess();
  (*(v50 + 40))(&v3[v15], v29, v49);
  v30 = swift_endAccess();
  v31 = v45;
  (*((*v28 & *v27) + 0xC0))(v30);
  swift_beginAccess();
  outlined assign with take of OneHotEncoder<String>.Transformer?(v31, &v3[v17], &_s18CreateMLComponents13OneHotEncoderV11TransformerVySS_GSgMd, &_s18CreateMLComponents13OneHotEncoderV11TransformerVySS_GSgMR);
  v32 = swift_endAccess();
  v33 = v46;
  (*((*v28 & *v27) + 0xD8))(v32);
  swift_beginAccess();
  outlined assign with take of OneHotEncoder<String>.Transformer?(v33, &v3[v19], &_s18CreateMLComponents14OrdinalEncoderV11TransformerVySS_GSgMd, &_s18CreateMLComponents14OrdinalEncoderV11TransformerVySS_GSgMR);
  v34 = swift_endAccess();
  *&v3[OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge16PCNeuralNetModel_config] = (*((*v28 & *v27) + 0xA8))(v34);
  v35 = (*((*v28 & *v27) + 0xF0))();
  v36 = v43;
  v37 = swift_beginAccess();
  *&v3[v36] = v35;
  LOBYTE(v35) = (*((*v28 & *v27) + 0x108))(v37);

  v38 = v44;
  swift_beginAccess();
  v3[v38] = v35 & 1;
  v53.receiver = v3;
  v53.super_class = v25;
  v39 = objc_msgSendSuper2(&v53, sel_init);
  outlined consume of Data._Representation(v52, v51);
  return v39;
}

void PCNeuralNetModel.interruptTraining()(uint64_t a1, const char *a2)
{
  v5 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00]();
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1E69E7D40];
  v13 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x138);
  v14 = v13(v9);
  [v14 lock];

  (*((*v12 & *v5) + 0x128))(a1);
  Logger.init(subsystem:category:)();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_1CEE74000, v15, v16, a2, v17, 2u);
    MEMORY[0x1D3865FA0](v17, -1, -1);
  }

  v18 = (*(v7 + 8))(v11, v6);
  v19 = v13(v18);
  [v19 unlock];
}

uint64_t PCNeuralNetModel.getEncodedModel()()
{
  v0 = type metadata accessor for JSONEncoder();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  type metadata accessor for PCNeuralNetModel();
  lazy protocol witness table accessor for type PCNeuralNetModel and conformance PCNeuralNetModel(&lazy protocol witness table cache variable for type PCNeuralNetModel and conformance PCNeuralNetModel, 255, type metadata accessor for PCNeuralNetModel);
  v3 = dispatch thunk of JSONEncoder.encode<A>(_:)();

  return v3;
}

uint64_t PCNeuralNetModel.encodeWithLabelEncoder(array:)(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = type metadata accessor for Logger();
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s18CreateMLComponents14OrdinalEncoderV11TransformerVySS_GSgMd, &_s18CreateMLComponents14OrdinalEncoderV11TransformerVySS_GSgMR) - 8) + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](PCNeuralNetModel.encodeWithLabelEncoder(array:), 0, 0);
}

uint64_t PCNeuralNetModel.encodeWithLabelEncoder(array:)()
{
  v106 = v0;
  v1 = *(v0 + 120);
  v103 = *((*MEMORY[0x1E69E7D40] & **(v0 + 48)) + 0xD8);
  v103();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18CreateMLComponents14OrdinalEncoderV11TransformerVySS_GMd, &_s18CreateMLComponents14OrdinalEncoderV11TransformerVySS_GMR);
  *(v0 + 128) = v2;
  v3 = *(v2 - 8);
  *(v0 + 136) = v3;
  v102 = *(v3 + 48);
  v4 = v102(v1, 1, v2);
  isUniquelyReferenced_nonNull_native = outlined destroy of OneHotEncoder<String>.Transformer?(v1, &_s18CreateMLComponents14OrdinalEncoderV11TransformerVySS_GSgMd, &_s18CreateMLComponents14OrdinalEncoderV11TransformerVySS_GSgMR);
  if (v4 == 1)
  {
    v6 = *(v0 + 88);
    Logger.init(subsystem:category:)();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 88);
    v11 = *(v0 + 56);
    v12 = *(v0 + 64);
    if (v9)
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1CEE74000, v7, v8, "error: no label encoder exits", v13, 2u);
      MEMORY[0x1D3865FA0](v13, -1, -1);
    }

    (*(v12 + 8))(v10, v11);
    v14 = 0;
LABEL_53:
    v88 = *(v0 + 112);
    v87 = *(v0 + 120);
    v90 = *(v0 + 96);
    v89 = *(v0 + 104);
    v92 = *(v0 + 80);
    v91 = *(v0 + 88);
    v93 = *(v0 + 72);

    v94 = *(v0 + 8);

    return v94(v14);
  }

  v15 = *(v0 + 40);
  v100 = v0;
  v98 = *(v15 + 16);
  if (!v98)
  {
    v17 = MEMORY[0x1E69E7CC0];
LABEL_46:
    *(v0 + 144) = v17;
    v70 = *(v0 + 96);
    v71 = *(v0 + 48);
    (v103)(isUniquelyReferenced_nonNull_native);
    v25 = v102(v70, 1, v2);
    if (v25 == 1)
    {
      goto LABEL_58;
    }

    v73 = specialized _arrayForceCast<A, B>(_:)(v72);
    *(v0 + 152) = v73;

    v74 = *(v73 + 16);
    *(v0 + 160) = v74;
    v75 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v74, 0, MEMORY[0x1E69E7CC0]);
    v14 = v75;
    if (v74)
    {
      *(v0 + 168) = v75;
      *(v0 + 176) = 0;
      v76 = *(v0 + 152);
      v77 = *(v76 + 40);
      *(v0 + 184) = v77;
      *(v0 + 16) = *(v76 + 32);
      *(v0 + 24) = v77;

      static Task<>.checkCancellation()();
      v83 = lazy protocol witness table accessor for type Sequential<Sequential<Sequential<Conv1D, ReLU>, Flatten>, Dense> and conformance Sequential<A, B>(&lazy protocol witness table cache variable for type OrdinalEncoder<String>.Transformer and conformance OrdinalEncoder<A>.Transformer, &_s18CreateMLComponents14OrdinalEncoderV11TransformerVySS_GMd, &_s18CreateMLComponents14OrdinalEncoderV11TransformerVySS_GMR);
      v84 = *(MEMORY[0x1E69662E8] + 4);
      v85 = swift_task_alloc();
      *(v0 + 192) = v85;
      *v85 = v0;
      v85[1] = PCNeuralNetModel.encodeWithLabelEncoder(array:);
      v29 = *(v0 + 128);
      v86 = *(v0 + 96);
      v25 = v0 + 32;
      v26 = v0 + 16;
      v27 = 0;
      v28 = 0;
      v30 = v83;

      return MEMORY[0x1EEDBFAF8](v25, v26, v27, v28, v29, v30);
    }

    v79 = *(v0 + 144);
    v78 = *(v0 + 152);
    v80 = *(v0 + 128);
    v81 = *(v0 + 136);
    v82 = *(v0 + 96);

    (*(v81 + 8))(v82, v80);

    goto LABEL_53;
  }

  v16 = 0;
  v97 = v15 + 32;
  v101 = (v3 + 8);
  v96 = (*(v0 + 64) + 8);
  v17 = MEMORY[0x1E69E7CC0];
  v99 = v2;
  while (1)
  {
    v104 = v17;
    v20 = *(v0 + 112);
    v21 = *(v0 + 48);
    v22 = (v97 + 16 * v16);
    v23 = *v22;
    v18 = v22[1];

    (v103)(v24);
    v25 = v102(v20, 1, v2);
    if (v25 == 1)
    {
      break;
    }

    v31 = *(v0 + 112);
    v32 = OrdinalEncoder.Transformer.categories.getter();
    v33 = *v101;
    (*v101)(v31, v2);
    if (*(v32 + 16))
    {
      v34 = *(v32 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(1u);

      String.hash(into:)();
      v35 = Hasher._finalize()();
      v36 = -1 << *(v32 + 32);
      v37 = v35 & ~v36;
      if ((*(v32 + 56 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37))
      {
        v38 = ~v36;
        v39 = *(v32 + 48);
        while (1)
        {
          v40 = (v39 + 16 * v37);
          v41 = v40[1];
          if (v41)
          {
            v42 = *v40 == v23 && v41 == v18;
            if (v42 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }
          }

          v37 = (v37 + 1) & v38;
          if (((*(v32 + 56 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37) & 1) == 0)
          {
            goto LABEL_24;
          }
        }

        v17 = v104;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v104 + 16) + 1, 1, v104);
          v17 = isUniquelyReferenced_nonNull_native;
        }

        v2 = v99;
        v0 = v100;
        v44 = *(v17 + 16);
        v43 = *(v17 + 24);
        v45 = v44 + 1;
        if (v44 >= v43 >> 1)
        {
          isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), v44 + 1, 1, v17);
          v17 = isUniquelyReferenced_nonNull_native;
        }

        goto LABEL_8;
      }

LABEL_24:

      v2 = v99;
      v0 = v100;
    }

    v46 = *(v0 + 104);
    v47 = *(v0 + 48);

    (v103)(v48);
    v25 = v102(v46, 1, v2);
    if (v25 == 1)
    {
      goto LABEL_57;
    }

    v49 = *(v0 + 104);
    v50 = OrdinalEncoder.Transformer.categories.getter();
    v33(v49, v2);
    if (*(v50 + 16) && (v51 = *(v50 + 40), Hasher.init(_seed:)(), Hasher._combine(_:)(1u), String.hash(into:)(), v52 = Hasher._finalize()(), v53 = -1 << *(v50 + 32), v54 = v52 & ~v53, ((*(v50 + 56 + ((v54 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v54) & 1) != 0))
    {
      v55 = ~v53;
      v56 = *(v50 + 48);
      while (1)
      {
        v57 = (v56 + 16 * v54);
        v58 = v57[1];
        if (v58)
        {
          v59 = *v57 == 0x6E696C6576617274 && v58 == 0xE900000000000067;
          if (v59 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }
        }

        v54 = (v54 + 1) & v55;
        if (((*(v50 + 56 + ((v54 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v54) & 1) == 0)
        {
          goto LABEL_37;
        }
      }
    }

    else
    {
LABEL_37:
      v60 = *(v0 + 80);

      Logger.init(subsystem:category:)();

      v61 = Logger.logObject.getter();
      v62 = static os_log_type_t.error.getter();

      v63 = os_log_type_enabled(v61, v62);
      v64 = *(v0 + 80);
      v65 = *(v0 + 56);
      if (v63)
      {
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v105 = v67;
        *v66 = 136315138;
        v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v18, &v105);

        *(v66 + 4) = v68;
        _os_log_impl(&dword_1CEE74000, v61, v62, "error: invalid loiId %s", v66, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v67);
        MEMORY[0x1D3865FA0](v67, -1, -1);
        MEMORY[0x1D3865FA0](v66, -1, -1);
      }

      else
      {
      }

      (*v96)(v64, v65);
      v2 = v99;
      v0 = v100;
    }

    v17 = v104;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v104 + 16) + 1, 1, v104);
      v17 = isUniquelyReferenced_nonNull_native;
    }

    v44 = *(v17 + 16);
    v69 = *(v17 + 24);
    v45 = v44 + 1;
    v23 = 0x6E696C6576617274;
    if (v44 >= v69 >> 1)
    {
      isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v69 > 1), v44 + 1, 1, v17);
      v17 = isUniquelyReferenced_nonNull_native;
    }

    v18 = 0xE900000000000067;
LABEL_8:
    ++v16;
    *(v17 + 16) = v45;
    v19 = v17 + 16 * v44;
    *(v19 + 32) = v23;
    *(v19 + 40) = v18;
    if (v16 == v98)
    {
      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
  return MEMORY[0x1EEDBFAF8](v25, v26, v27, v28, v29, v30);
}

{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v7 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v4 = *(v2 + 168);

    v5 = PCNeuralNetModel.encodeWithLabelEncoder(array:);
  }

  else
  {
    v5 = PCNeuralNetModel.encodeWithLabelEncoder(array:);
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

{
  v50 = v0;
  v1 = *(v0 + 32);
  v2 = *(v0 + 168);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v3 > 1), v4 + 1, 1, *(v0 + 168));
  }

  v5 = *(v0 + 184);
  v6 = *(v0 + 160);
  v7 = *(v0 + 176) + 1;
  *(v2 + 2) = v4 + 1;
  *&v2[8 * v4 + 32] = v1;

  if (v7 == v6)
  {
    v9 = *(v0 + 144);
    v8 = *(v0 + 152);
    v10 = *(v0 + 128);
    v11 = *(v0 + 136);
    v12 = *(v0 + 96);

    (*(v11 + 8))(v12, v10);

LABEL_13:
    v39 = *(v0 + 112);
    v38 = *(v0 + 120);
    v41 = *(v0 + 96);
    v40 = *(v0 + 104);
    v43 = *(v0 + 80);
    v42 = *(v0 + 88);
    v44 = *(v0 + 72);

    v45 = *(v0 + 8);

    return v45(v2);
  }

  v13 = *(v0 + 200);
  v14 = *(v0 + 176) + 1;
  *(v0 + 168) = v2;
  *(v0 + 176) = v14;
  v15 = *(v0 + 152) + 16 * v14;
  v16 = *(v15 + 40);
  *(v0 + 184) = v16;
  *(v0 + 16) = *(v15 + 32);
  *(v0 + 24) = v16;

  static Task<>.checkCancellation()();
  if (v13)
  {
    v17 = *(v0 + 152);

    v18 = *(v0 + 72);
    (*(*(v0 + 136) + 8))(*(v0 + 96), *(v0 + 128));
    Logger.init(subsystem:category:)();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    v21 = os_log_type_enabled(v19, v20);
    v22 = *(v0 + 144);
    v24 = *(v0 + 64);
    v23 = *(v0 + 72);
    v25 = *(v0 + 56);
    if (v21)
    {
      v48 = *(v0 + 56);
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v49 = v27;
      *v26 = 136315138;

      v29 = MEMORY[0x1D3865420](v28, MEMORY[0x1E69E6158]);
      v47 = v23;
      v31 = v30;

      v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v31, &v49);

      *(v26 + 4) = v32;
      _os_log_impl(&dword_1CEE74000, v19, v20, "error encoding array %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      MEMORY[0x1D3865FA0](v27, -1, -1);
      MEMORY[0x1D3865FA0](v26, -1, -1);

      (*(v24 + 8))(v47, v48);
    }

    else
    {

      (*(v24 + 8))(v23, v25);
    }

    v2 = 0;
    goto LABEL_13;
  }

  v33 = lazy protocol witness table accessor for type Sequential<Sequential<Sequential<Conv1D, ReLU>, Flatten>, Dense> and conformance Sequential<A, B>(&lazy protocol witness table cache variable for type OrdinalEncoder<String>.Transformer and conformance OrdinalEncoder<A>.Transformer, &_s18CreateMLComponents14OrdinalEncoderV11TransformerVySS_GMd, &_s18CreateMLComponents14OrdinalEncoderV11TransformerVySS_GMR);
  v34 = *(MEMORY[0x1E69662E8] + 4);
  v35 = swift_task_alloc();
  *(v0 + 192) = v35;
  *v35 = v0;
  v35[1] = PCNeuralNetModel.encodeWithLabelEncoder(array:);
  v36 = *(v0 + 128);
  v37 = *(v0 + 96);

  return MEMORY[0x1EEDBFAF8](v0 + 32, v0 + 16, 0, 0, v36, v33);
}

{
  v31 = v0;
  v1 = v0[23];
  v2 = v0[19];

  v3 = v0[25];
  v4 = v0[9];
  (*(v0[17] + 8))(v0[12], v0[16]);
  Logger.init(subsystem:category:)();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[18];
  v9 = v0[8];
  v10 = v0[9];
  v11 = v0[7];
  if (v7)
  {
    v29 = v0[9];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v30 = v13;
    *v12 = 136315138;

    v15 = MEMORY[0x1D3865420](v14, MEMORY[0x1E69E6158]);
    v28 = v3;
    v17 = v16;

    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, &v30);

    *(v12 + 4) = v18;
    _os_log_impl(&dword_1CEE74000, v5, v6, "error encoding array %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x1D3865FA0](v13, -1, -1);
    MEMORY[0x1D3865FA0](v12, -1, -1);

    (*(v9 + 8))(v29, v11);
  }

  else
  {

    (*(v9 + 8))(v10, v11);
  }

  v20 = v0[14];
  v19 = v0[15];
  v22 = v0[12];
  v21 = v0[13];
  v24 = v0[10];
  v23 = v0[11];
  v25 = v0[9];

  v26 = v0[1];

  return v26(0);
}

uint64_t specialized _arrayForceCast<A, B>(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v12 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v2 = v12;
    v4 = (a1 + 40);
    do
    {
      v9 = *(v4 - 1);
      v10 = *v4;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
      swift_dynamicCast();
      v5 = v11;
      v7 = *(v12 + 16);
      v6 = *(v12 + 24);
      if (v7 >= v6 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1);
        v5 = v11;
      }

      *(v12 + 16) = v7 + 1;
      *(v12 + 16 * v7 + 32) = v5;
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t @objc closure #1 in PCNeuralNetModel.encodeWithLabelEncoder(array:)(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v3[4] = v5;
  a3;
  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = @objc closure #1 in PCNeuralNetModel.encodeWithLabelEncoder(array:);

  return PCNeuralNetModel.encodeWithLabelEncoder(array:)(v5);
}

uint64_t PCNeuralNetModel.fitLabelEncoder(array:)(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  v3 = type metadata accessor for Logger();
  v2[12] = v3;
  v4 = *(v3 - 8);
  v2[13] = v4;
  v5 = *(v4 + 64) + 15;
  v2[14] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s18CreateMLComponents14OrdinalEncoderV11TransformerVySS_GSgMd, &_s18CreateMLComponents14OrdinalEncoderV11TransformerVySS_GSgMR) - 8) + 64) + 15;
  v2[15] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18CreateMLComponents14OrdinalEncoderV11TransformerVySS_GMd, &_s18CreateMLComponents14OrdinalEncoderV11TransformerVySS_GMR);
  v2[16] = v7;
  v8 = *(v7 - 8);
  v2[17] = v8;
  v9 = *(v8 + 64) + 15;
  v2[18] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18CreateMLComponents14OrdinalEncoderVySSGMd, &_s18CreateMLComponents14OrdinalEncoderVySSGMR);
  v2[19] = v10;
  v11 = *(v10 - 8);
  v2[20] = v11;
  v12 = *(v11 + 64) + 15;
  v2[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](PCNeuralNetModel.fitLabelEncoder(array:), 0, 0);
}

uint64_t PCNeuralNetModel.fitLabelEncoder(array:)()
{
  v1 = v0[21];
  v2 = v0[10];
  OrdinalEncoder.init()();
  v3 = specialized _arrayForceCast<A, B>(_:)(v2);
  v0[22] = v3;
  v0[7] = v3;
  v4 = lazy protocol witness table accessor for type Sequential<Sequential<Sequential<Conv1D, ReLU>, Flatten>, Dense> and conformance Sequential<A, B>(&lazy protocol witness table cache variable for type OrdinalEncoder<String> and conformance OrdinalEncoder<A>, &_s18CreateMLComponents14OrdinalEncoderVySSGMd, &_s18CreateMLComponents14OrdinalEncoderVySSGMR);
  v5 = *(MEMORY[0x1E6966348] + 4);
  v6 = swift_task_alloc();
  v0[23] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSSgGMd, &_sSaySSSgGMR);
  v8 = lazy protocol witness table accessor for type Sequential<Sequential<Sequential<Conv1D, ReLU>, Flatten>, Dense> and conformance Sequential<A, B>(&lazy protocol witness table cache variable for type [String?] and conformance [A], &_sSaySSSgGMd, &_sSaySSSgGMR);
  *v6 = v0;
  v6[1] = PCNeuralNetModel.fitLabelEncoder(array:);
  v9 = v0[21];
  v10 = v0[18];
  v11 = v0[19];

  return MEMORY[0x1EEDBFB88](v10, v0 + 7, 0, 0, v7, v8, v11, v4);
}

{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v4 = *v1;
  *(*v1 + 192) = v0;

  v5 = *(v2 + 176);

  if (v0)
  {
    v6 = PCNeuralNetModel.fitLabelEncoder(array:);
  }

  else
  {
    v6 = PCNeuralNetModel.fitLabelEncoder(array:);
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

{
  v53 = v0;
  v1 = specialized _arrayForceCast<A, B>(_:)(v0[10]);
  v0[25] = v1;
  v2 = *(v1 + 16);
  v0[26] = v2;
  v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0, MEMORY[0x1E69E7CC0]);
  v4 = v3;
  if (!v2)
  {
    v28 = v0[25];
    v30 = v0[20];
    v29 = v0[21];
    v32 = v0[18];
    v31 = v0[19];
    v33 = v0[16];
    v34 = v0[17];
    v35 = v0[15];
    v36 = v0[11];

    (*(v34 + 16))(v35, v32, v33);
    (*(v34 + 56))(v35, 0, 1, v33);
    (*((*MEMORY[0x1E69E7D40] & *v36) + 0xE0))(v35);
    (*(v34 + 8))(v32, v33);
    (*(v30 + 8))(v29, v31);
LABEL_11:
    v42 = v0[21];
    v43 = v0[18];
    v45 = v0[14];
    v44 = v0[15];

    v46 = v0[1];

    return v46(v4);
  }

  v0[27] = v3;
  v0[28] = 0;
  v6 = v0[24];
  v5 = v0[25];
  v7 = *(v5 + 40);
  v0[29] = v7;
  v0[5] = *(v5 + 32);
  v0[6] = v7;

  static Task<>.checkCancellation()();
  if (v6)
  {
    v8 = v0[25];

    (*(v0[17] + 8))(v0[18], v0[16]);
    v9 = v0[14];
    Logger.init(subsystem:category:)();
    v10 = v6;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    v13 = os_log_type_enabled(v11, v12);
    v15 = v0[20];
    v14 = v0[21];
    v16 = v0[19];
    v18 = v0[13];
    v17 = v0[14];
    v19 = v0[12];
    if (v13)
    {
      v51 = v0[12];
      v20 = swift_slowAlloc();
      v50 = v16;
      v21 = swift_slowAlloc();
      v52 = v21;
      *v20 = 136315138;
      swift_getErrorValue();
      v49 = v14;
      v23 = v0[2];
      v22 = v0[3];
      v24 = v0[4];
      v25 = Error.localizedDescription.getter();
      v48 = v17;
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v52);

      *(v20 + 4) = v27;
      _os_log_impl(&dword_1CEE74000, v11, v12, "error: %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      MEMORY[0x1D3865FA0](v21, -1, -1);
      MEMORY[0x1D3865FA0](v20, -1, -1);

      (*(v18 + 8))(v48, v51);
      (*(v15 + 8))(v49, v50);
    }

    else
    {

      (*(v18 + 8))(v17, v19);
      (*(v15 + 8))(v14, v16);
    }

    v4 = 0;
    goto LABEL_11;
  }

  v37 = lazy protocol witness table accessor for type Sequential<Sequential<Sequential<Conv1D, ReLU>, Flatten>, Dense> and conformance Sequential<A, B>(&lazy protocol witness table cache variable for type OrdinalEncoder<String>.Transformer and conformance OrdinalEncoder<A>.Transformer, &_s18CreateMLComponents14OrdinalEncoderV11TransformerVySS_GMd, &_s18CreateMLComponents14OrdinalEncoderV11TransformerVySS_GMR);
  v38 = *(MEMORY[0x1E69662E8] + 4);
  v39 = swift_task_alloc();
  v0[30] = v39;
  *v39 = v0;
  v39[1] = PCNeuralNetModel.fitLabelEncoder(array:);
  v40 = v0[18];
  v41 = v0[16];

  return MEMORY[0x1EEDBFAF8](v0 + 9, v0 + 5, 0, 0, v41, v37);
}

{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v7 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v4 = *(v2 + 216);

    v5 = PCNeuralNetModel.fitLabelEncoder(array:);
  }

  else
  {
    v5 = PCNeuralNetModel.fitLabelEncoder(array:);
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

{
  v56 = v0;
  v1 = *(v0 + 72);
  v2 = *(v0 + 216);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v3 > 1), v4 + 1, 1, *(v0 + 216));
  }

  v5 = *(v0 + 232);
  v6 = *(v0 + 208);
  v7 = *(v0 + 224) + 1;
  *(v2 + 2) = v4 + 1;
  *&v2[8 * v4 + 32] = v1;

  if (v7 == v6)
  {
    v8 = *(v0 + 200);
    v10 = *(v0 + 160);
    v9 = *(v0 + 168);
    v12 = *(v0 + 144);
    v11 = *(v0 + 152);
    v13 = *(v0 + 128);
    v14 = *(v0 + 136);
    v15 = *(v0 + 120);
    v16 = *(v0 + 88);

    (*(v14 + 16))(v15, v12, v13);
    (*(v14 + 56))(v15, 0, 1, v13);
    (*((*MEMORY[0x1E69E7D40] & *v16) + 0xE0))(v15);
    (*(v14 + 8))(v12, v13);
    (*(v10 + 8))(v9, v11);
LABEL_13:
    v45 = *(v0 + 168);
    v46 = *(v0 + 144);
    v48 = *(v0 + 112);
    v47 = *(v0 + 120);

    v49 = *(v0 + 8);

    return v49(v2);
  }

  v17 = *(v0 + 248);
  v18 = *(v0 + 224) + 1;
  *(v0 + 216) = v2;
  *(v0 + 224) = v18;
  v19 = *(v0 + 200) + 16 * v18;
  v20 = *(v19 + 40);
  *(v0 + 232) = v20;
  *(v0 + 40) = *(v19 + 32);
  *(v0 + 48) = v20;

  static Task<>.checkCancellation()();
  if (v17)
  {
    v21 = *(v0 + 200);

    (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
    v22 = *(v0 + 112);
    Logger.init(subsystem:category:)();
    v23 = v17;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    v26 = os_log_type_enabled(v24, v25);
    v28 = *(v0 + 160);
    v27 = *(v0 + 168);
    v29 = *(v0 + 152);
    v31 = *(v0 + 104);
    v30 = *(v0 + 112);
    v54 = *(v0 + 96);
    if (v26)
    {
      v52 = *(v0 + 152);
      v53 = *(v0 + 168);
      v32 = swift_slowAlloc();
      v51 = v30;
      v33 = swift_slowAlloc();
      v55 = v33;
      *v32 = 136315138;
      swift_getErrorValue();
      v35 = *(v0 + 16);
      v34 = *(v0 + 24);
      v36 = *(v0 + 32);
      v37 = Error.localizedDescription.getter();
      v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v38, &v55);

      *(v32 + 4) = v39;
      _os_log_impl(&dword_1CEE74000, v24, v25, "error: %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v33);
      MEMORY[0x1D3865FA0](v33, -1, -1);
      MEMORY[0x1D3865FA0](v32, -1, -1);

      (*(v31 + 8))(v51, v54);
      (*(v28 + 8))(v53, v52);
    }

    else
    {

      (*(v31 + 8))(v30, v54);
      (*(v28 + 8))(v27, v29);
    }

    v2 = 0;
    goto LABEL_13;
  }

  v40 = lazy protocol witness table accessor for type Sequential<Sequential<Sequential<Conv1D, ReLU>, Flatten>, Dense> and conformance Sequential<A, B>(&lazy protocol witness table cache variable for type OrdinalEncoder<String>.Transformer and conformance OrdinalEncoder<A>.Transformer, &_s18CreateMLComponents14OrdinalEncoderV11TransformerVySS_GMd, &_s18CreateMLComponents14OrdinalEncoderV11TransformerVySS_GMR);
  v41 = *(MEMORY[0x1E69662E8] + 4);
  v42 = swift_task_alloc();
  *(v0 + 240) = v42;
  *v42 = v0;
  v42[1] = PCNeuralNetModel.fitLabelEncoder(array:);
  v43 = *(v0 + 144);
  v44 = *(v0 + 128);

  return MEMORY[0x1EEDBFAF8](v0 + 72, v0 + 40, 0, 0, v44, v40);
}

{
  v35 = v0;
  v1 = v0[29];
  v2 = v0[25];

  v3 = v0[31];
  (*(v0[17] + 8))(v0[18], v0[16]);
  v4 = v0[14];
  Logger.init(subsystem:category:)();
  v5 = v3;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[20];
    v32 = v0[19];
    v33 = v0[21];
    v9 = v0[13];
    v30 = v0[12];
    v31 = v0[14];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v34 = v11;
    *v10 = 136315138;
    swift_getErrorValue();
    v13 = v0[2];
    v12 = v0[3];
    v14 = v0[4];
    v15 = Error.localizedDescription.getter();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v34);

    *(v10 + 4) = v17;
    _os_log_impl(&dword_1CEE74000, v6, v7, "error: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x1D3865FA0](v11, -1, -1);
    MEMORY[0x1D3865FA0](v10, -1, -1);

    (*(v9 + 8))(v31, v30);
    (*(v8 + 8))(v33, v32);
  }

  else
  {
    v19 = v0[20];
    v18 = v0[21];
    v20 = v0[19];
    v22 = v0[13];
    v21 = v0[14];
    v23 = v0[12];

    (*(v22 + 8))(v21, v23);
    (*(v19 + 8))(v18, v20);
  }

  v24 = v0[21];
  v25 = v0[18];
  v27 = v0[14];
  v26 = v0[15];

  v28 = v0[1];

  return v28(0);
}

{
  v33 = v0;
  v1 = v0[24];
  v2 = v0[14];
  Logger.init(subsystem:category:)();
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[20];
    v30 = v0[19];
    v31 = v0[21];
    v7 = v0[13];
    v28 = v0[12];
    v29 = v0[14];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v32 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v11 = v0[2];
    v10 = v0[3];
    v12 = v0[4];
    v13 = Error.localizedDescription.getter();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v32);

    *(v8 + 4) = v15;
    _os_log_impl(&dword_1CEE74000, v4, v5, "error: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x1D3865FA0](v9, -1, -1);
    MEMORY[0x1D3865FA0](v8, -1, -1);

    (*(v7 + 8))(v29, v28);
    (*(v6 + 8))(v31, v30);
  }

  else
  {
    v17 = v0[20];
    v16 = v0[21];
    v18 = v0[19];
    v20 = v0[13];
    v19 = v0[14];
    v21 = v0[12];

    (*(v20 + 8))(v19, v21);
    (*(v17 + 8))(v16, v18);
  }

  v22 = v0[21];
  v23 = v0[18];
  v25 = v0[14];
  v24 = v0[15];

  v26 = v0[1];

  return v26(0);
}

uint64_t @objc closure #1 in PCNeuralNetModel.fitLabelEncoder(array:)(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v3[4] = v5;
  a3;
  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = @objc closure #1 in PCNeuralNetModel.fitLabelEncoder(array:);

  return PCNeuralNetModel.fitLabelEncoder(array:)(v5);
}

uint64_t @objc closure #1 in PCNeuralNetModel.fitLabelEncoder(array:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 16);
  v7 = *v1;

  if (a1)
  {
    v8.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v8.super.isa = 0;
  }

  v9 = *(v3 + 24);
  (v9)[2](v9, v8.super.isa);

  _Block_release(v9);
  v10 = *(v7 + 8);

  return v10();
}

Swift::String_optional __swiftcall PCNeuralNetModel.decodeLabel(index:)(Swift::Int index)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18CreateMLComponents14OrdinalEncoderV11TransformerVySS_GMd, &_s18CreateMLComponents14OrdinalEncoderV11TransformerVySS_GMR);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v6 = &v14 - v5;
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s18CreateMLComponents14OrdinalEncoderV11TransformerVySS_GSgMd, &_s18CreateMLComponents14OrdinalEncoderV11TransformerVySS_GSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00]();
  v10 = &v14 - v9;
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0xD8))(v8);
  if ((*(v3 + 48))(v10, 1, v2))
  {
    v11 = outlined destroy of OneHotEncoder<String>.Transformer?(v10, &_s18CreateMLComponents14OrdinalEncoderV11TransformerVySS_GSgMd, &_s18CreateMLComponents14OrdinalEncoderV11TransformerVySS_GSgMR);
    __break(1u);
    goto LABEL_5;
  }

  (*(v3 + 16))(v6, v10, v2);
  outlined destroy of OneHotEncoder<String>.Transformer?(v10, &_s18CreateMLComponents14OrdinalEncoderV11TransformerVySS_GSgMd, &_s18CreateMLComponents14OrdinalEncoderV11TransformerVySS_GSgMR);
  OrdinalEncoder.Transformer.category(at:)();
  v11 = (*(v3 + 8))(v6, v2);
  v12 = v15;
  if (!v15)
  {
LABEL_5:
    __break(1u);
    goto LABEL_6;
  }

  v11 = v14;
LABEL_6:
  result.value._object = v12;
  result.value._countAndFlagsBits = v11;
  return result;
}

void PCNeuralNetModel.trainFromTensors(datasetX:datasetY:timesteps:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v425 = a3;
  *&v426 = a2;
  v395 = type metadata accessor for FloatingPointRoundingRule();
  v424 = *(v395 - 8);
  v4 = v424[8];
  (MEMORY[0x1EEE9AC00])();
  v394 = &v349 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14NeuralNetworks10ScalarTypeOSgMd, &_s14NeuralNetworks10ScalarTypeOSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x1EEE9AC00])();
  v402 = &v349 - v7;
  v353 = type metadata accessor for TensorShape();
  v350 = *(v353 - 8);
  v8 = *(v350 + 64);
  (MEMORY[0x1EEE9AC00])();
  v423 = &v349 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v397 = type metadata accessor for Tensor();
  v403 = *(v397 - 8);
  v10 = *(v403 + 64);
  v11 = (MEMORY[0x1EEE9AC00])();
  v355 = &v349 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v356 = &v349 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v358 = &v349 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v366 = &v349 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v393 = &v349 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v392 = &v349 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v431 = &v349 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v416 = &v349 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v401 = &v349 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v430 = &v349 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v404 = &v349 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v419 = &v349 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v418 = &v349 - v36;
  MEMORY[0x1EEE9AC00](v35);
  v433 = &v349 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14NeuralNetworks13ComputeDeviceVSgMd, &_s14NeuralNetworks13ComputeDeviceVSgMR);
  v39 = *(*(v38 - 8) + 64);
  v40 = MEMORY[0x1EEE9AC00](v38 - 8);
  v420 = &v349 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v422 = &v349 - v42;
  v43 = type metadata accessor for ComputeDevice();
  v435 = *(v43 - 8);
  v436 = v43;
  v44 = *(v435 + 64);
  v45 = MEMORY[0x1EEE9AC00](v43);
  *&v417 = &v349 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  *&v421 = &v349 - v47;
  v434 = type metadata accessor for LearningPhase();
  v432 = *(v434 - 8);
  v48 = *(v432 + 64);
  MEMORY[0x1EEE9AC00](v434);
  v429 = (&v349 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0));
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14NeuralNetworks18RegularizationKindOSgMd, &_s14NeuralNetworks18RegularizationKindOSgMR);
  v51 = (*(*(v50 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v50 - 8);
  v428 = &v349 - v52;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14NeuralNetworks20GradientClippingModeOSgMd, &_s14NeuralNetworks20GradientClippingModeOSgMR);
  v54 = (*(*(v53 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v53 - 8);
  v427 = &v349 - v55;
  v365 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14NeuralNetworks4AdamVyAA10SequentialVyAEyAEyAEyAA6Conv1DVAA4ReLUVGAA7FlattenVGAA5DenseVGAA7ReshapeVGGMd, &_s14NeuralNetworks4AdamVyAA10SequentialVyAEyAEyAEyAA6Conv1DVAA4ReLUVGAA7FlattenVGAA5DenseVGAA7ReshapeVGGMR);
  v56 = (*(*(v365 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v365);
  v377 = &v349 - v57;
  v384 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14NeuralNetworks10SequentialVyACyACyACyAA6Conv1DVAA4ReLUVGAA7FlattenVGAA5DenseVGAA7ReshapeVGMd, &_s14NeuralNetworks10SequentialVyACyACyACyAA6Conv1DVAA4ReLUVGAA7FlattenVGAA5DenseVGAA7ReshapeVGMR);
  v383 = *(v384 - 8);
  v58 = (*(v383 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v384);
  v382 = &v349 - v59;
  v60 = type metadata accessor for Logger();
  v61 = *(v60 - 8);
  v62 = *(v61 + 64);
  v63 = MEMORY[0x1EEE9AC00](v60);
  v351 = &v349 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = MEMORY[0x1EEE9AC00](v63);
  v352 = &v349 - v66;
  v67 = MEMORY[0x1EEE9AC00](v65);
  v357 = &v349 - v68;
  v69 = MEMORY[0x1EEE9AC00](v67);
  v364 = &v349 - v70;
  v71 = MEMORY[0x1EEE9AC00](v69);
  v371 = &v349 - v72;
  v73 = MEMORY[0x1EEE9AC00](v71);
  v354 = &v349 - v74;
  v75 = MEMORY[0x1EEE9AC00](v73);
  v437 = (&v349 - v76);
  MEMORY[0x1EEE9AC00](v75);
  v78 = &v349 - v77;
  v379 = "modelHasBeenTrained";
  v380 = "com.apple.CoreRoutine";
  Logger.init(subsystem:category:)();
  v79 = Logger.logObject.getter();
  v80 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v79, v80))
  {
    v81 = swift_slowAlloc();
    *v81 = 0;
    _os_log_impl(&dword_1CEE74000, v79, v80, "generating dataset...", v81, 2u);
    MEMORY[0x1D3865FA0](v81, -1, -1);
  }

  v378 = *(v61 + 8);
  v378(v78, v60);
  v82 = v412;
  v83 = MEMORY[0x1E69E7D40];
  v84 = *((*MEMORY[0x1E69E7D40] & *v412) + 0xA8);
  v85 = (*MEMORY[0x1E69E7D40] & *v412) + 168;

  v86 = a1;
  v87 = v426;

  v89 = (v84)(v88);
  v90 = (*((*v83 & *v89) + 0x98))();

  v405 = v84;
  v410 = v85;
  v91 = v84();
  v92 = (*((*v83 & *v91) + 0xF8))();

  v93 = objc_allocWithZone(type metadata accessor for DataSetFeatureMatrix());
  v94 = v86;
  v95 = v425;
  v439 = DataSetFeatureMatrix.init(x:y:inputSteps:outputSteps:unknownLoiId:)(v94, v87, v425, v90, v92);
  v96 = *((*v83 & *v439) + 0x108);
  v97 = v439;
  v98 = v96();

  v99 = (*((*v83 & *v82) + 0xF8))(v98);
  MEMORY[0x1EEE9AC00](v99);
  *(&v349 - 4) = v82;
  *(&v349 - 3) = v95;
  *(&v349 - 2) = &v439;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14NeuralNetworks10SequentialVyACyACyAA6Conv1DVAA4ReLUVGAA7FlattenVGAA5DenseVGMd, &_s14NeuralNetworks10SequentialVyACyACyAA6Conv1DVAA4ReLUVGAA7FlattenVGAA5DenseVGMR);
  type metadata accessor for Reshape();
  lazy protocol witness table accessor for type Sequential<Sequential<Sequential<Conv1D, ReLU>, Flatten>, Dense> and conformance Sequential<A, B>(&lazy protocol witness table cache variable for type Sequential<Sequential<Sequential<Conv1D, ReLU>, Flatten>, Dense> and conformance Sequential<A, B>, &_s14NeuralNetworks10SequentialVyACyACyAA6Conv1DVAA4ReLUVGAA7FlattenVGAA5DenseVGMd, &_s14NeuralNetworks10SequentialVyACyACyAA6Conv1DVAA4ReLUVGAA7FlattenVGAA5DenseVGMR);
  v100 = v382;
  v101 = v83;
  Sequential.init(layers:)();
  (*((*v83 & *v82) + 0x98))(v100);
  v102 = v437;
  Logger.init(subsystem:category:)();
  v103 = v82;
  v104 = Logger.logObject.getter();
  v105 = static os_log_type_t.info.getter();

  v106 = os_log_type_enabled(v104, v105);
  v375 = v60;
  v372 = v61 + 8;
  if (v106)
  {
    v107 = swift_slowAlloc();
    *&v426 = swift_slowAlloc();
    v438[0] = v426;
    *v107 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
    v108 = swift_allocObject();
    *(v108 + 16) = xmmword_1CEF0B430;
    v109 = v405;
    v110 = v405();
    v111 = (*((*MEMORY[0x1E69E7D40] & *v110) + 0x80))();

    *(v108 + 32) = v111;
    v112 = v109();
    v113 = (*((*MEMORY[0x1E69E7D40] & *v112) + 0x98))();

    *(v108 + 40) = v113;
    swift_beginAccess();
    v114 = *((*MEMORY[0x1E69E7D40] & *v439) + 0x120);
    v115 = v439;
    v116 = v114();

    *(v108 + 48) = v116;
    v117 = MEMORY[0x1D3865420](v108, MEMORY[0x1E69E6530]);
    v119 = v118;

    v120 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v117, v119, v438);

    *(v107 + 4) = v120;
    _os_log_impl(&dword_1CEE74000, v104, v105, "Model output shape: %s", v107, 0xCu);
    v121 = v426;
    __swift_destroy_boxed_opaque_existential_1Tm(v426);
    v101 = MEMORY[0x1E69E7D40];
    MEMORY[0x1D3865FA0](v121, -1, -1);
    MEMORY[0x1D3865FA0](v107, -1, -1);

    v122 = v437;
    v123 = v375;
  }

  else
  {

    v122 = v102;
    v123 = v60;
  }

  v124 = (v378)(v122, v123);
  v125 = (*v101 & *v103) + 144;
  v126 = v382;
  v369 = *((*v101 & *v103) + 0x90);
  v368 = v125;
  v369(v124);
  v127 = type metadata accessor for GradientClippingMode();
  v128 = v103;
  (*(*(v127 - 8) + 56))(v427, 1, 1, v127);
  v129 = type metadata accessor for RegularizationKind();
  (*(*(v129 - 8) + 56))(v428, 1, 1, v129);
  v381 = lazy protocol witness table accessor for type Sequential<Sequential<Sequential<Conv1D, ReLU>, Flatten>, Dense> and conformance Sequential<A, B>(&lazy protocol witness table cache variable for type Sequential<Sequential<Sequential<Sequential<Conv1D, ReLU>, Flatten>, Dense>, Reshape> and conformance Sequential<A, B>, &_s14NeuralNetworks10SequentialVyACyACyACyAA6Conv1DVAA4ReLUVGAA7FlattenVGAA5DenseVGAA7ReshapeVGMd, &_s14NeuralNetworks10SequentialVyACyACyACyAA6Conv1DVAA4ReLUVGAA7FlattenVGAA5DenseVGAA7ReshapeVGMR);
  v130 = v384;
  Adam.init(for:learningRate:beta1:beta2:usesAMSGrad:epsilon:gradientClippingMode:regularizationKind:gradientScale:)();
  v131 = *(v383 + 8);
  v383 += 8;
  v367 = v131;
  v131(v126, v130);
  v132 = v432;
  v133 = v101;
  v134 = v429;
  v135 = v434;
  (*(v432 + 104))(v429, *MEMORY[0x1E69B3810], v434);
  v136 = *((*v133 & *v128) + 0xA0);
  v137 = (*v133 & *v128) + 160;
  v138 = v136(v438);
  Layer.prepare(for:)();
  (*(v132 + 8))(v134, v135);
  v139 = (v138)(v438, 0);
  v140 = v405;
  v141 = (v405)(v139);
  LOBYTE(v138) = (*((*v133 & *v141) + 0xE0))();

  v374 = v136;
  v373 = v137;
  if (v138)
  {
    v142 = v422;
    static ComputeDevice.gpu.getter();
    v144 = v435;
    v143 = v436;
    v145 = *(v435 + 48);
    if (v145(v142, 1, v436) == 1)
    {
      v146 = v421;
      static ComputeDevice.cpu.getter();
      if (v145(v142, 1, v143) != 1)
      {
        outlined destroy of OneHotEncoder<String>.Transformer?(v142, &_s14NeuralNetworks13ComputeDeviceVSgMd, &_s14NeuralNetworks13ComputeDeviceVSgMR);
      }
    }

    else
    {
      v146 = v421;
      (*(v144 + 32))(v421, v142, v143);
    }

    v150 = v374(v438);
    Layer.place(on:)();
    (*(v144 + 8))(v146, v143);
    v149 = v150(v438, 0);
  }

  else
  {
    v147 = v417;
    static ComputeDevice.cpu.getter();
    v148 = v136(v438);
    Layer.place(on:)();
    v144 = v435;
    (*(v435 + 8))(v147, v436);
    v149 = v148(v438, 0);
  }

  v151 = (v140)(v149);
  v152 = (*((*MEMORY[0x1E69E7D40] & *v151) + 0xC8))();

  v363 = v152;
  if (v152 < 1)
  {
LABEL_138:
    __break(1u);
LABEL_139:
    __break(1u);
LABEL_140:
    __break(1u);
LABEL_141:
    __break(1u);
    return;
  }

  swift_beginAccess();
  v422 = (v403 + 16);
  v435 = v403 + 8;
  v391 = *MEMORY[0x1E69E7020];
  v390 = (v424 + 13);
  v389 = (v424 + 1);
  v388 = (v403 + 32);
  v153 = 1;
  *&v154 = 134218240;
  v359 = v154;
  v421 = xmmword_1CEF0B450;
  v417 = xmmword_1CEF0B460;
  v362 = xmmword_1CEF0B440;
  v361 = vdupq_n_s64(2uLL);
  v360 = vdupq_n_s64(4uLL);
  v424 = v128;
  v155 = MEMORY[0x1E69E7D40];
  v432 = v144 + 56;
  while (1)
  {
    v376 = v153;
    v156 = v439;
    v157 = *((*v155 & *v439) + 0xC0);
    v158 = v439;
    v159 = v157();
    v411 = v158;

    if ((v159 & 0x8000000000000000) != 0)
    {
LABEL_137:
      __break(1u);
      goto LABEL_138;
    }

    if (!v159)
    {
      v160 = MEMORY[0x1E69E7CC0];
      goto LABEL_26;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
    v160 = swift_allocObject();
    v161 = _swift_stdlib_malloc_size(v160);
    v162 = v161 - 32;
    if (v161 < 32)
    {
      v162 = v161 - 25;
    }

    *(v160 + 16) = v159;
    *(v160 + 24) = 2 * (v162 >> 3);
    v163 = (v160 + 32);
    if (v159 < 4)
    {
      for (i = 0; i != v159; ++i)
      {
LABEL_25:
        *v163++ = i;
      }

      goto LABEL_26;
    }

    i = v159 & 0x7FFFFFFFFFFFFFFCLL;
    v163 += v159 & 0x7FFFFFFFFFFFFFFCLL;
    v165 = (v160 + 48);
    v166 = v159 & 0x7FFFFFFFFFFFFFFCLL;
    v167 = v362;
    v168 = v361;
    v169 = v360;
    do
    {
      v165[-1] = v167;
      *v165 = vaddq_s64(v167, v168);
      v167 = vaddq_s64(v167, v169);
      v165 += 2;
      v166 -= 4;
    }

    while (v166);
    if (v159 != i)
    {
      goto LABEL_25;
    }

LABEL_26:
    v170 = *(v160 + 16);
    v171 = v170 - 2;
    if (v170 >= 2)
    {
      break;
    }

LABEL_49:
    v434 = v156;
    if (v170)
    {
      v185 = 0;
      v370 = 0;
      v400 = v160 + 32;
      v186 = (*v155 & *v411) + 352;
      v399 = *((*v155 & *v411) + 0x160);
      v398 = v186;
      v187 = 0.0;
      v188 = MEMORY[0x1E69E7CC0];
      v437 = MEMORY[0x1E69E7CC0];
      v396 = v160;
      while (1)
      {
        if (v185 >= *(v160 + 16))
        {
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        v415 = v185;
        v189 = *(v400 + 8 * v185);
        v190 = v411;
        v191 = v399(v189);
        v193 = v192;
        v195 = v194;
        v429 = v190;

        v196 = *(v191 + 16);
        v414 = v188;
        v413 = v195;
        v428 = v193;
        if (v196)
        {
          break;
        }

        if (*(v193 + 2) || *(v195 + 2))
        {
          v199 = MEMORY[0x1E69E7CC0];
LABEL_68:
          v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
          v206 = swift_allocObject();
          *(v206 + 16) = v421;
          *(v206 + 32) = v196;
          if (!*(v191 + 16))
          {
            goto LABEL_135;
          }

          v207 = v206;
          v208 = *(v191 + 32);

          v209 = *(v208 + 16);

          *(v207 + 40) = v209;
          MEMORY[0x1D3865040](v207);
          v438[0] = v199;
          v210 = *v432;
          v211 = v420;
          (*v432)(v420, 1, 1, v436);
          v212 = v210;
          v427 = v210;
          v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd, &_sSaySfGMR);
          v214 = lazy protocol witness table accessor for type Sequential<Sequential<Sequential<Conv1D, ReLU>, Flatten>, Dense> and conformance Sequential<A, B>(&lazy protocol witness table cache variable for type [Float] and conformance [A], &_sSaySfGMd, &_sSaySfGMR);
          v408 = v213;
          v407 = v214;
          Tensor.init<A>(shape:scalars:on:)();
          v409 = v205;
          v215 = swift_allocObject();
          *(v215 + 16) = v417;
          v216 = v428;
          *(v215 + 32) = *(v428 + 2);
          MEMORY[0x1D3865040]();
          v438[0] = v216;
          v212(v211, 1, 1, v436);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd, &_sSaySiGMR);
          lazy protocol witness table accessor for type Sequential<Sequential<Sequential<Conv1D, ReLU>, Flatten>, Dense> and conformance Sequential<A, B>(&lazy protocol witness table cache variable for type [Int] and conformance [A], &_sSaySiGMd, &_sSaySiGMR);
          v217 = v418;
          Tensor.init<A>(shape:scalars:on:)();
          v218 = v403;
          v428 = *(v403 + 16);
          v219 = v404;
          v198 = v397;
          (v428)(v404, v217, v397);
          v220 = *((*MEMORY[0x1E69E7D40] & *v429) + 0x108);
          v221 = v429;
          v220();
          v406 = v221;

          (v427)(v211, 1, 1, v436);
          v222 = v419;
          Tensor.init(oneHotAtIndices:depth:onValue:offValue:on:)();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14NeuralNetworks6TensorVGMd, &_ss23_ContiguousArrayStorageCy14NeuralNetworks6TensorVGMR);
          v223 = *(v218 + 72);
          v224 = v428;
          v225 = (*(v218 + 80) + 32) & ~*(v218 + 80);
          v226 = swift_allocObject();
          *(v226 + 16) = v421;
          v425 = v225;
          v227 = v226 + v225;
          (v224)(v227, v222, v198);
          *&v426 = v223;
          (v224)(v227 + v223, v433, v198);
          v228 = type metadata accessor for ScalarType();
          v229 = *(v228 - 8);
          v387 = *(v229 + 56);
          v386 = v229 + 56;
          v387(v402, 1, 1, v228);
          v230 = v401;
          Tensor.init(concatenating:alongAxis:scalarType:)();
          v231 = Tensor.rank.getter();
          if (v231 < 0)
          {
            goto LABEL_136;
          }

          v385 = v228;
          specialized Sequence.reversed()(0, v231);
          Tensor.transposed(permutation:)();

          v232 = *v435;
          (*v435)(v230, v198);
          v429 = v232;
          Tensor.expandingShape(at:)();
          v232(v219, v198);
          v233 = swift_allocObject();
          *(v233 + 16) = v417;
          v234 = v413;
          *(v233 + 32) = *(v413 + 2);
          MEMORY[0x1D3865040]();
          v438[0] = v234;
          v235 = v420;
          v236 = v436;
          v237 = v427;
          (v427)(v420, 1, 1, v436);
          Tensor.init<A>(shape:scalars:on:)();
          v238 = v394;
          v239 = v395;
          (*v390)(v394, v391, v395);
          Tensor.cast(to:roundingRule:)();
          (*v389)(v238, v239);
          v240 = *((*MEMORY[0x1E69E7D40] & *v406) + 0x120);
          v241 = v406;
          v240();
          v242 = v428;
          v413 = v241;

          (v237)(v235, 1, 1, v236);
          Tensor.init(oneHotAtIndices:depth:onValue:offValue:on:)();
          Tensor.expandingShape(at:)();
          v429(v219, v198);
          v243 = v392;
          (v242)(v392, v430, v198);
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v244 = v393;
            v245 = v388;
            v246 = v414;
            v247 = v437;
          }

          else
          {
            v247 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v437[2] + 1, 1, v437);
            v244 = v393;
            v245 = v388;
            v246 = v414;
          }

          v249 = v247[2];
          v248 = v247[3];
          if (v249 >= v248 >> 1)
          {
            v247 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v248 > 1, v249 + 1, 1, v247);
          }

          v247[2] = v249 + 1;
          v437 = v247;
          v250 = v247 + v425 + v249 * v426;
          v251 = *v245;
          (*v245)(v250, v243, v198);
          (v242)(v244, v431, v198);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v246 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v246[2] + 1, 1, v246);
          }

          v253 = v246[2];
          v252 = v246[3];
          if (v253 >= v252 >> 1)
          {
            v246 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v252 > 1, v253 + 1, 1, v246);
          }

          v246[2] = v253 + 1;
          v254 = v251(v246 + v425 + v253 * v426, v244, v198);
          v255 = v437[2];
          v256 = v246;
          v257 = v424;
          v258 = v405;
          v259 = (v405)(v254);
          v260 = MEMORY[0x1E69E7D40];
          v261 = (*((*MEMORY[0x1E69E7D40] & *v259) + 0x80))();

          if (v255 == v261 && (v263 = v256[2], v264 = v258(), v265 = (*((*v260 & *v264) + 0x80))(), v264, v263 == v265))
          {
            v266 = v402;
            v267 = v385;
            v268 = v387;
            v387(v402, 1, 1, v385);
            v269 = v404;
            Tensor.init(concatenating:alongAxis:scalarType:)();
            v268(v266, 1, 1, v267);

            v270 = v401;
            v271 = Tensor.init(concatenating:alongAxis:scalarType:)();
            v272 = v382;
            v273 = (v369)(v271);
            MEMORY[0x1EEE9AC00](v273);
            *(&v349 - 2) = v269;
            *(&v349 - 1) = v270;
            v274 = v270;
            v275 = v366;
            v276 = v384;
            valueWithGradient<A>(at:of:)();
            v367(v272, v276);
            v277 = v374(v438);
            Adam.update(_:with:)();

            v277(v438, 0);
            (*((*MEMORY[0x1E69E7D40] & *v257) + 0x110))(1);
            Tensor.scalar<A>(as:)();
            v187 = v187 + *v438;
            v278 = v429;
            v429(v275, v198);

            v278(v274, v198);
            v262 = (v278)(v404, v198);
            v279 = MEMORY[0x1E69E7CC0];
            v437 = MEMORY[0x1E69E7CC0];
          }

          else
          {
            v279 = v256;
          }

          v280 = v424;
          v281 = *((*MEMORY[0x1E69E7D40] & *v424) + 0x138);
          v282 = (v281)(v262);
          [v282 lock];

          LOBYTE(v282) = (*((*MEMORY[0x1E69E7D40] & *v280) + 0x120))();
          v283 = v281();
          [v283 unlock];

          if (v282)
          {
LABEL_102:

            PCNeuralNetModel.clearTrainingInterrupt()();
            v299 = v354;
            Logger.init(subsystem:category:)();
            v300 = Logger.logObject.getter();
            v301 = static os_log_type_t.info.getter();
            if (os_log_type_enabled(v300, v301))
            {
              v302 = swift_slowAlloc();
              *v302 = 134217984;
              *(v302 + 4) = v376;
              _os_log_impl(&dword_1CEE74000, v300, v301, "training interrupted at epoch %ld", v302, 0xCu);
              MEMORY[0x1D3865FA0](v302, -1, -1);
            }

            v378(v299, v375);
            v303 = v429;
            v429(v431, v198);
            v303(v416, v198);
            v303(v430, v198);
            v303(v419, v198);
            v303(v418, v198);
            v303(v433, v198);
            outlined destroy of OneHotEncoder<String>.Transformer?(v377, &_s14NeuralNetworks4AdamVyAA10SequentialVyAEyAEyAEyAA6Conv1DVAA4ReLUVGAA7FlattenVGAA5DenseVGAA7ReshapeVGGMd, &_s14NeuralNetworks4AdamVyAA10SequentialVyAEyAEyAEyAA6Conv1DVAA4ReLUVGAA7FlattenVGAA5DenseVGAA7ReshapeVGGMR);

            return;
          }

          v284 = v429;
          v429(v431, v198);
          v284(v416, v198);
          v284(v430, v198);
          v284(v419, v198);
          v284(v418, v198);
          v284(v433, v198);
          v188 = v279;
        }

        else
        {

          if (__OFADD__(v370++, 1))
          {
            goto LABEL_140;
          }
        }

        v160 = v396;
        v185 = v415 + 1;
        if (v415 + 1 == v170)
        {

          v298 = v370 > 0;
          goto LABEL_91;
        }
      }

      v197 = 0;
      v198 = v191 + 32;
      v199 = MEMORY[0x1E69E7CC0];
      while (v197 < *(v191 + 16))
      {
        v200 = *(*(v198 + 8 * v197) + 16);
        if (v200)
        {
          v201 = 0;
          while (1)
          {
            v202 = *(v198 + 8 * v197);
            if (v201 >= *(v202 + 16))
            {
              break;
            }

            v203 = *(v202 + 4 * v201 + 32);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v199 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v199 + 2) + 1, 1, v199);
            }

            v160 = *(v199 + 2);
            v204 = *(v199 + 3);
            if (v160 >= v204 >> 1)
            {
              v199 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v204 > 1), v160 + 1, 1, v199);
            }

            ++v201;
            *(v199 + 2) = v160 + 1;
            *&v199[4 * v160 + 32] = v203;
            if (v200 == v201)
            {
              goto LABEL_54;
            }
          }

          __break(1u);
          goto LABEL_102;
        }

LABEL_54:
        if (++v197 == v196)
        {
          goto LABEL_68;
        }
      }

      goto LABEL_108;
    }

    v370 = 0;
    v298 = 0;
    v187 = 0.0;
LABEL_91:

    Logger.init(subsystem:category:)();
    v160 = v424;
    v286 = Logger.logObject.getter();
    v287 = static os_log_type_t.info.getter();

    v288 = os_log_type_enabled(v286, v287);
    v170 = v375;
    if (v288)
    {
      v289 = swift_slowAlloc();
      *v289 = v359;
      *(v289 + 4) = v376;
      *(v289 + 12) = 2048;
      v290 = v405();
      v291 = (*((*MEMORY[0x1E69E7D40] & *v290) + 0x80))();

      *(v289 + 14) = v187 * v291;
      _os_log_impl(&dword_1CEE74000, v286, v287, "Epoch: %ld, Loss: %f", v289, 0x16u);
      MEMORY[0x1D3865FA0](v289, -1, -1);
    }

    v378(v371, v170);
    if (v298)
    {
      Logger.init(subsystem:category:)();
      v292 = Logger.logObject.getter();
      v293 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v292, v293))
      {
        v294 = swift_slowAlloc();
        *v294 = v359;
        *(v294 + 4) = v370;
        *(v294 + 12) = 2048;
        v295 = *((*MEMORY[0x1E69E7D40] & *v411) + 0xC0);
        v296 = v411;
        v297 = v295();

        *(v294 + 14) = v297;
        _os_log_impl(&dword_1CEE74000, v292, v293, "datapoints skipped due to unknown visit history information: %ld, total datapoints: %ld", v294, 0x16u);
        MEMORY[0x1D3865FA0](v294, -1, -1);
      }

      v378(v364, v170);
    }

    if (v376 == v363)
    {
      goto LABEL_109;
    }

    v153 = v376 + 1;
    v155 = MEMORY[0x1E69E7D40];
    if (__OFADD__(v376, 1))
    {
      goto LABEL_139;
    }
  }

  v172 = 0;
  LODWORD(v173) = 1;
  while (1)
  {
    v173 = (1664525 * v173 + 1013904223);
    v175 = vcvtd_n_f64_u64(v173, 0x20uLL) * 1.84467441e19;
    if (v175 == INFINITY)
    {
      __break(1u);
LABEL_120:
      __break(1u);
LABEL_121:
      __break(1u);
LABEL_122:
      __break(1u);
LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
LABEL_125:
      __break(1u);
LABEL_126:
      __break(1u);
      goto LABEL_127;
    }

    if (v175 <= -1.0)
    {
      goto LABEL_120;
    }

    if (v175 >= 1.84467441e19)
    {
      goto LABEL_121;
    }

    v176 = v175 * v170;
    v177 = (v175 * v170) >> 64;
    if (v170 > v176)
    {
      v178 = -v170 % v170;
      if (v178 > v176)
      {
        break;
      }
    }

LABEL_39:
    v180 = v172 + v177;
    if (__OFADD__(v172, v177))
    {
      goto LABEL_122;
    }

    if (v172 != v180)
    {
      v181 = *(v160 + 16);
      if (v172 >= v181)
      {
        goto LABEL_123;
      }

      if (v180 >= v181)
      {
        goto LABEL_124;
      }

      v182 = *(v160 + 32 + 8 * v172);
      v183 = *(v160 + 32 + 8 * v180);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v160 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v160);
      }

      v184 = *(v160 + 16);
      if (v172 >= v184)
      {
        goto LABEL_125;
      }

      *(v160 + 32 + 8 * v172) = v183;
      if (v180 >= v184)
      {
        goto LABEL_126;
      }

      *(v160 + 32 + 8 * v180) = v182;
    }

    --v170;
    if (v172++ == v171)
    {
      v170 = *(v160 + 16);
      goto LABEL_49;
    }
  }

  while (1)
  {
    v173 = (1664525 * v173 + 1013904223);
    v179 = vcvtd_n_f64_u64(v173, 0x20uLL) * 1.84467441e19;
    if (v179 == INFINITY)
    {
      break;
    }

    if (v179 <= -1.0)
    {
      goto LABEL_106;
    }

    if (v179 >= 1.84467441e19)
    {
      goto LABEL_107;
    }

    if (v178 <= v179 * v170)
    {
      v177 = (v179 * v170) >> 64;
      goto LABEL_39;
    }
  }

  __break(1u);
LABEL_106:
  __break(1u);
LABEL_107:
  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  v155 = MEMORY[0x1E69E7D40];
  v304 = (*((*MEMORY[0x1E69E7D40] & *v160) + 0x108))();
  v305 = v423;
  if ((v304 & 1) == 0)
  {
    outlined destroy of OneHotEncoder<String>.Transformer?(v377, &_s14NeuralNetworks4AdamVyAA10SequentialVyAEyAEyAEyAA6Conv1DVAA4ReLUVGAA7FlattenVGAA5DenseVGAA7ReshapeVGGMd, &_s14NeuralNetworks4AdamVyAA10SequentialVyAEyAEyAEyAA6Conv1DVAA4ReLUVGAA7FlattenVGAA5DenseVGAA7ReshapeVGGMR);

    return;
  }

  v306 = v382;
  (v369)();
  v307 = v384;
  v308 = Layer.parameters(recursively:)();
  v367(v306, v307);
  v310 = *(v308 + 16);
  if (v310)
  {
    v311 = 0;
    v312 = (*(v403 + 80) + 32) & ~*(v403 + 80);
    v425 = v308;
    v313 = v308 + v312;
    v431 = *(v403 + 72);
    v433 = *(v403 + 16);
    v427 = (v350 + 8);
    *&v309 = 136315394;
    v426 = v309;
    v432 = v435 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v314 = v356;
    v428 = v160;
    while (1)
    {
      v436 = v310;
      v437 = v311;
      v315 = v358;
      v316 = v397;
      v317 = v433;
      (v433)(v358, v313, v397);
      Logger.init(subsystem:category:)();
      v317(v314, v315, v316);
      v318 = v355;
      v317(v355, v315, v316);
      v319 = Logger.logObject.getter();
      v320 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v319, v320))
      {
        v321 = swift_slowAlloc();
        v430 = swift_slowAlloc();
        v438[0] = v430;
        *v321 = v426;
        LODWORD(v429) = v320;
        Tensor.shape.getter();
        lazy protocol witness table accessor for type PCNeuralNetModel and conformance PCNeuralNetModel(&lazy protocol witness table cache variable for type TensorShape and conformance TensorShape, 255, MEMORY[0x1E69B3800]);
        v322 = v305;
        v323 = v353;
        v324 = dispatch thunk of CustomStringConvertible.description.getter();
        v326 = v325;
        (*v427)(v322, v323);
        v327 = *v435;
        (*v435)(v314, v316);
        v328 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v324, v326, v438);

        *(v321 + 4) = v328;
        *(v321 + 12) = 2048;
        v329 = Tensor.scalarCount.getter();
        v327(v318, v316);
        *(v321 + 14) = v329;
        _os_log_impl(&dword_1CEE74000, v319, v429, "layer shape: %s,  parameters: %ld", v321, 0x16u);
        v330 = v430;
        __swift_destroy_boxed_opaque_existential_1Tm(v430);
        MEMORY[0x1D3865FA0](v330, -1, -1);
        v331 = v321;
        v160 = v428;
        MEMORY[0x1D3865FA0](v331, -1, -1);
      }

      else
      {
        v327 = *v435;
        (*v435)(v318, v316);

        v327(v314, v316);
      }

      v170 = v375;
      v378(v357, v375);
      v332 = v358;
      v333 = Tensor.scalarCount.getter();
      v327(v332, v316);
      v311 = (v437 + v333);
      if (__OFADD__(v437, v333))
      {
        goto LABEL_141;
      }

      v313 += v431;
      v310 = v436 - 1;
      v305 = v423;
      v314 = v356;
      v155 = MEMORY[0x1E69E7D40];
      if (v436 == 1)
      {

        goto LABEL_128;
      }
    }
  }

LABEL_127:

  v311 = 0;
LABEL_128:
  Logger.init(subsystem:category:)();
  v334 = v160;
  v335 = Logger.logObject.getter();
  v336 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v335, v336))
  {
    v337 = swift_slowAlloc();
    *v337 = v359;
    v338 = v405();
    v339 = v311;
    v340 = (*((*v155 & *v338) + 0x98))();

    *(v337 + 4) = v340;
    *(v337 + 12) = 2048;
    v341 = *((*v155 & *v411) + 0x120);
    v342 = v411;
    v343 = v341();
    v311 = v339;
    v344 = v343;

    *(v337 + 14) = v344;
    _os_log_impl(&dword_1CEE74000, v335, v336, "output steps: %ld,  output lois: %ld", v337, 0x16u);
    MEMORY[0x1D3865FA0](v337, -1, -1);
  }

  else
  {

    v335 = v334;
  }

  v345 = v351;

  v378(v352, v170);
  Logger.init(subsystem:category:)();
  v346 = Logger.logObject.getter();
  v347 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v346, v347))
  {
    v348 = swift_slowAlloc();
    *v348 = 134217984;
    *(v348 + 4) = v311;
    _os_log_impl(&dword_1CEE74000, v346, v347, "model size: %ld parameters", v348, 0xCu);
    MEMORY[0x1D3865FA0](v348, -1, -1);
  }

  v378(v345, v170);
  outlined destroy of OneHotEncoder<String>.Transformer?(v377, &_s14NeuralNetworks4AdamVyAA10SequentialVyAEyAEyAEyAA6Conv1DVAA4ReLUVGAA7FlattenVGAA5DenseVGAA7ReshapeVGGMd, &_s14NeuralNetworks4AdamVyAA10SequentialVyAEyAEyAEyAA6Conv1DVAA4ReLUVGAA7FlattenVGAA5DenseVGAA7ReshapeVGGMR);
}

void closure #1 in PCNeuralNetModel.trainFromTensors(datasetX:datasetY:timesteps:)(void *a1@<X0>, char *a2@<X1>, id *a3@<X2>, uint64_t a4@<X8>)
{
  v69 = a2;
  v70 = a3;
  v67 = a4;
  v5 = *(*(type metadata accessor for TensorShape() - 8) + 64);
  MEMORY[0x1EEE9AC00]();
  v62 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for Reshape();
  v7 = *(*(v64 - 8) + 64);
  MEMORY[0x1EEE9AC00]();
  v66 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for Dense();
  v63 = *(v65 - 8);
  v9 = *(v63 + 64);
  MEMORY[0x1EEE9AC00]();
  v60 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for ReLU();
  v59 = *(v61 - 8);
  v11 = *(v59 + 64);
  MEMORY[0x1EEE9AC00]();
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14NeuralNetworks13ComputeDeviceVSgMd, &_s14NeuralNetworks13ComputeDeviceVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v16 = &v53 - v15;
  v17 = type metadata accessor for Conv1D();
  v57 = *(v17 - 8);
  v58 = v17;
  v18 = *(v57 + 64);
  v19 = MEMORY[0x1EEE9AC00]();
  v21 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1E69E7D40];
  v23 = *((*MEMORY[0x1E69E7D40] & *a1) + 0xA8);
  v24 = a1;
  v25 = (v23)(v19);
  v68 = (*((*v22 & *v25) + 0xB0))();

  type metadata accessor for ParameterInitializer();
  v26 = type metadata accessor for ComputeDevice();
  v27 = *(v26 - 8);
  v28 = *(v27 + 56);
  v53 = v27 + 56;
  v54 = v28;
  v28(v16, 1, 1, v26);
  static ParameterInitializer.glorotUniform(seed:scalarType:on:)();
  outlined destroy of OneHotEncoder<String>.Transformer?(v16, &_s14NeuralNetworks13ComputeDeviceVSgMd, &_s14NeuralNetworks13ComputeDeviceVSgMR);
  static ParameterInitializer.zeros.getter();
  v56 = v21;
  Conv1D.init(filterCount:kernelSize:stride:padding:dilation:groupCount:weightInitializer:biasInitializer:)();
  v69 = v13;
  ReLU.init()();
  v29 = Flatten.init()();
  v68 = v24;
  v30 = MEMORY[0x1E69E7D40];
  v55 = v23;
  v31 = (v23)(v29);
  v32 = (*((*v30 & *v31) + 0x98))();

  v33 = v30;
  v34 = *((*v30 & **v70) + 0x120);
  v35 = *v70;
  v36 = v34();

  if ((v32 * v36) >> 64 == (v32 * v36) >> 63)
  {
    v54(v16, 1, 1, v26);
    static ParameterInitializer.glorotUniform(seed:scalarType:on:)();
    outlined destroy of OneHotEncoder<String>.Transformer?(v16, &_s14NeuralNetworks13ComputeDeviceVSgMd, &_s14NeuralNetworks13ComputeDeviceVSgMR);
    static ParameterInitializer.zeros.getter();
    v37 = v60;
    Dense.init(unitCount:weightInitializer:biasInitializer:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_1CEF0B430;
    v39 = v55;
    v40 = v55();
    v41 = (*((*v30 & *v40) + 0x80))();

    *(v38 + 32) = v41;
    v42 = v39();
    v43 = (*((*v30 & *v42) + 0x98))();

    *(v38 + 40) = v43;
    v44 = *((*v33 & **v70) + 0x120);
    v45 = *v70;
    v46 = v44();

    *(v38 + 48) = v46;
    MEMORY[0x1D3865040](v38);
    v47 = v66;
    Reshape.init(_:)();
    v48 = v65;
    v49 = v56;
    v50 = v69;
    v51 = v58;
    v52 = v61;
    static SequentialBuilder.buildBlock<A, B, C, D, E>(_:_:_:_:_:)();
    outlined destroy of Reshape(v47);
    (*(v63 + 8))(v37, v48);
    (*(v59 + 8))(v50, v52);
    (*(v57 + 8))(v49, v51);
  }

  else
  {
    __break(1u);
  }
}

uint64_t closure #2 in PCNeuralNetModel.trainFromTensors(datasetX:datasetY:timesteps:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15[1] = a3;
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14NeuralNetworks13LossReductionOSgMd, &_s14NeuralNetworks13LossReductionOSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v5 = v15 - v4;
  v6 = type metadata accessor for Tensor();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00]();
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14NeuralNetworks10SequentialVyACyACyACyAA6Conv1DVAA4ReLUVGAA7FlattenVGAA5DenseVGAA7ReshapeVGMd, &_s14NeuralNetworks10SequentialVyACyACyACyAA6Conv1DVAA4ReLUVGAA7FlattenVGAA5DenseVGAA7ReshapeVGMR);
  lazy protocol witness table accessor for type Sequential<Sequential<Sequential<Conv1D, ReLU>, Flatten>, Dense> and conformance Sequential<A, B>(&lazy protocol witness table cache variable for type Sequential<Sequential<Sequential<Sequential<Conv1D, ReLU>, Flatten>, Dense>, Reshape> and conformance Sequential<A, B>, &_s14NeuralNetworks10SequentialVyACyACyACyAA6Conv1DVAA4ReLUVGAA7FlattenVGAA5DenseVGAA7ReshapeVGMd, &_s14NeuralNetworks10SequentialVyACyACyACyAA6Conv1DVAA4ReLUVGAA7FlattenVGAA5DenseVGAA7ReshapeVGMR);
  Layer.callAsFunction(_:)();
  v11 = *MEMORY[0x1E69B3820];
  v12 = type metadata accessor for LossReduction();
  v13 = *(v12 - 8);
  (*(v13 + 104))(v5, v11, v12);
  (*(v13 + 56))(v5, 0, 1, v12);
  softmaxCrossEntropy(logits:labels:labelSmoothing:axis:reduction:)();
  outlined destroy of OneHotEncoder<String>.Transformer?(v5, &_s14NeuralNetworks13LossReductionOSgMd, &_s14NeuralNetworks13LossReductionOSgMR);
  return (*(v7 + 8))(v10, v6);
}

uint64_t closure #1 in PCNeuralNetModel.predictFromTensor(xPredict:xPredictMatrix:timesteps:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v46 = a1;
  v41 = a3;
  v4 = type metadata accessor for TensorShape();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Tensor.scalarCount.getter();
  Tensor.shape.getter();
  v9 = TensorShape.subscript.getter();
  v10 = *(v5 + 8);
  result = v10(v8, v4);
  if (!__OFSUB__(v9, 1))
  {
    if (v9 - 1 < 0)
    {
      goto LABEL_52;
    }

    v12 = 0;
    v42 = v9 - 1;
    v43 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      Tensor.shape.getter();
      v13 = TensorShape.subscript.getter();
      result = v10(v8, v4);
      if (__OFSUB__(v13, 1))
      {
        break;
      }

      if (v13 - 1 < 0)
      {
        goto LABEL_50;
      }

      v14 = 0;
      v15 = MEMORY[0x1E69E7CC0];
      v44 = v13 - 1;
LABEL_7:
      v48 = v14;
      Tensor.shape.getter();
      v16 = TensorShape.subscript.getter();
      result = v10(v8, v4);
      if (__OFSUB__(v16, 1))
      {
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
        break;
      }

      if (v16 - 1 < 0)
      {
        goto LABEL_47;
      }

      v45 = v15;
      v17 = 0;
      v49 = MEMORY[0x1E69E7CC0];
      v47 = v16 - 1;
      while (1)
      {
        Tensor.shape.getter();
        v18 = TensorShape.subscript.getter();
        result = v10(v8, v4);
        v19 = v12 * v18;
        if ((v12 * v18) >> 64 != (v12 * v18) >> 63)
        {
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          *v41 = v43;
          return result;
        }

        Tensor.shape.getter();
        v20 = TensorShape.subscript.getter();
        result = v10(v8, v4);
        v21 = a2;
        v22 = v19 * v20;
        if ((v19 * v20) >> 64 != (v19 * v20) >> 63)
        {
          goto LABEL_40;
        }

        v23 = v21;
        Tensor.shape.getter();
        v24 = TensorShape.subscript.getter();
        result = v10(v8, v4);
        v25 = v48 * v24;
        if ((v48 * v24) >> 64 != (v48 * v24) >> 63)
        {
          goto LABEL_41;
        }

        v26 = __OFADD__(v22, v25);
        v27 = v22 + v25;
        if (v26)
        {
          goto LABEL_42;
        }

        v26 = __OFADD__(v27, v17);
        v28 = v27 + v17;
        if (v26)
        {
          goto LABEL_43;
        }

        v29 = *(v46 + 4 * v28);
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v49 + 2) + 1, 1, v49);
          v49 = result;
        }

        v31 = *(v49 + 2);
        v30 = *(v49 + 3);
        if (v31 >= v30 >> 1)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1, v49);
          v49 = result;
        }

        v32 = v47;
        v33 = v49;
        *(v49 + 2) = v31 + 1;
        *&v33[4 * v31 + 32] = v29;
        if (v32 == v17)
        {
          break;
        }

        v26 = __OFADD__(v17++, 1);
        a2 = v23;
        if (v26)
        {
          goto LABEL_44;
        }
      }

      v15 = v45;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v15[2] + 1, 1, v15, &_ss23_ContiguousArrayStorageCySaySfGGMd, &_ss23_ContiguousArrayStorageCySaySfGGMR, &_sSaySfGMd, &_sSaySfGMR);
        v15 = result;
      }

      v35 = v15[2];
      v34 = v15[3];
      v36 = v48;
      if (v35 >= v34 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1, v15, &_ss23_ContiguousArrayStorageCySaySfGGMd, &_ss23_ContiguousArrayStorageCySaySfGGMR, &_sSaySfGMd, &_sSaySfGMR);
        v36 = v48;
        v15 = result;
      }

      v15[2] = v35 + 1;
      v15[v35 + 4] = v49;
      if (v36 != v44)
      {
        v26 = __OFADD__(v36, 1);
        v14 = v36 + 1;
        a2 = v23;
        if (v26)
        {
          goto LABEL_48;
        }

        goto LABEL_7;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v43[2] + 1, 1, v43, &_ss23_ContiguousArrayStorageCySaySaySfGGGMd, &_ss23_ContiguousArrayStorageCySaySaySfGGGMR, &_sSaySaySfGGMd, &_sSaySaySfGGMR);
        v43 = result;
      }

      v38 = v43[2];
      v37 = v43[3];
      if (v38 >= v37 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v38 + 1, 1, v43, &_ss23_ContiguousArrayStorageCySaySaySfGGGMd, &_ss23_ContiguousArrayStorageCySaySaySfGGGMR, &_sSaySaySfGGMd, &_sSaySaySfGGMR);
        v43 = result;
      }

      v39 = v43;
      v43[2] = v38 + 1;
      v39[v38 + 4] = v15;
      if (v12 == v42)
      {
        goto LABEL_45;
      }

      v26 = __OFADD__(v12++, 1);
      a2 = v23;
      if (v26)
      {
        goto LABEL_53;
      }
    }

    __break(1u);
LABEL_50:
    __break(1u);
  }

  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
  return result;
}

uint64_t PCNeuralNetModel.predictFromDataset(featureMatrix:)(void *a1)
{
  v202 = a1;
  v154 = type metadata accessor for Logger();
  v153 = *(v154 - 8);
  v2 = *(v153 + 64);
  MEMORY[0x1EEE9AC00](v154);
  v155 = v151 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14NeuralNetworks10SequentialVyACyACyACyAA6Conv1DVAA4ReLUVGAA7FlattenVGAA5DenseVGAA7ReshapeVGMd, &_s14NeuralNetworks10SequentialVyACyACyACyAA6Conv1DVAA4ReLUVGAA7FlattenVGAA5DenseVGAA7ReshapeVGMR);
  *&v194 = *(v181 - 8);
  v4 = *(v194 + 64);
  MEMORY[0x1EEE9AC00](v181);
  v173 = v151 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14NeuralNetworks10ScalarTypeOSgMd, &_s14NeuralNetworks10ScalarTypeOSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v176 = v151 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14NeuralNetworks13ComputeDeviceVSgMd, &_s14NeuralNetworks13ComputeDeviceVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v175 = v151 - v11;
  v184 = type metadata accessor for TensorShape();
  v190 = *(v184 - 8);
  v12 = *(v190 + 64);
  v13 = MEMORY[0x1EEE9AC00](v184);
  v159 = v151 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v158 = v151 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v172 = v151 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v200 = v151 - v19;
  v199 = type metadata accessor for Tensor();
  v178 = *(v199 - 8);
  v20 = *(v178 + 64);
  v21 = MEMORY[0x1EEE9AC00](v199);
  v171 = v151 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v170 = v151 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v169 = v151 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v168 = v151 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v167 = v151 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v166 = v151 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v174 = v151 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v195 = v151 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v198 = v151 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v197 = v151 - v40;
  v41 = MEMORY[0x1EEE9AC00](v39);
  v196 = v151 - v42;
  MEMORY[0x1EEE9AC00](v41);
  v204 = v151 - v43;
  v203 = type metadata accessor for ComputeDevice();
  v201 = *(v203 - 8);
  v44 = *(v201 + 8);
  MEMORY[0x1EEE9AC00](v203);
  v46 = v151 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for LearningPhase();
  v48 = *(v47 - 8);
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v51 = v151 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v48 + 104))(v51, *MEMORY[0x1E69B3818], v47);
  v182 = v1;
  v52 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xA0);
  v53 = v52(&v205);
  v54 = lazy protocol witness table accessor for type Sequential<Sequential<Sequential<Conv1D, ReLU>, Flatten>, Dense> and conformance Sequential<A, B>(&lazy protocol witness table cache variable for type Sequential<Sequential<Sequential<Sequential<Conv1D, ReLU>, Flatten>, Dense>, Reshape> and conformance Sequential<A, B>, &_s14NeuralNetworks10SequentialVyACyACyACyAA6Conv1DVAA4ReLUVGAA7FlattenVGAA5DenseVGAA7ReshapeVGMd, &_s14NeuralNetworks10SequentialVyACyACyACyAA6Conv1DVAA4ReLUVGAA7FlattenVGAA5DenseVGAA7ReshapeVGMR);
  Layer.prepare(for:)();
  (*(v48 + 8))(v51, v47);
  v55 = v201;
  v56 = v53(&v205, 0);
  v57 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v182) + 0x1B8))(v56);
  v58 = v52(&v205);
  v165 = v54;
  Layer.place(on:)();
  (*(v55 + 1))(v46, v203);
  v59 = v58(&v205, 0);
  v60 = *((*v57 & *v202) + 0xC0);
  v61 = (*v57 & *v202) + 192;
  result = (v60)(v59);
  if (result < 0)
  {
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
  }

  else
  {
    v63 = result;
    v152 = v60;
    v151[1] = v61;
    v64 = &v190;
    if (result)
    {
      v160 = 0;
      v65 = 0;
      v66 = (*v57 & *v202);
      v193 = (v55 + 56);
      v192 = v178 + 16;
      v183 = (v178 + 8);
      v66 += 44;
      v180 = *v66;
      v179 = v66;
      v157 = (v190 + 16);
      v162 = (v194 + 8);
      v161 = (v178 + 32);
      v67 = MEMORY[0x1E69E7CC0];
      v194 = xmmword_1CEF0B450;
      v164 = xmmword_1CEF0B460;
      v156 = xmmword_1CEF0B430;
      v163 = result;
      v191 = (v190 + 8);
      while (1)
      {
        v68 = v180(v65);
        v70 = v69;

        result = _sSasSQRzlE2eeoiySbSayxG_ABtFZSaySfG_Tt1g5(v68, MEMORY[0x1E69E7CC0]);
        if ((result & 1) != 0 && !*(v70 + 16))
        {

          if (__OFADD__(v160, 1))
          {
            goto LABEL_48;
          }

          ++v160;
        }

        else
        {
          v190 = v65;
          v189 = v67;
          v71 = *(v68 + 16);
          if (v71)
          {
            v72 = 0;
            v73 = v68 + 32;
            v74 = MEMORY[0x1E69E7CC0];
            while (1)
            {
              if (v72 >= *(v68 + 16))
              {
                __break(1u);
                goto LABEL_45;
              }

              v75 = *(*(v73 + 8 * v72) + 16);
              if (v75)
              {
                break;
              }

LABEL_8:
              if (++v72 == v71)
              {
                goto LABEL_20;
              }
            }

            v76 = 0;
            while (1)
            {
              v64 = *(v73 + 8 * v72);
              if (v76 >= v64[2])
              {
                break;
              }

              v77 = *(v64 + v76 + 8);
              result = swift_isUniquelyReferenced_nonNull_native();
              if ((result & 1) == 0)
              {
                result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v74 + 16) + 1, 1, v74);
                v74 = result;
              }

              v79 = *(v74 + 16);
              v78 = *(v74 + 24);
              if (v79 >= v78 >> 1)
              {
                result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v78 > 1), v79 + 1, 1, v74);
                v74 = result;
              }

              ++v76;
              *(v74 + 16) = v79 + 1;
              *(v74 + 4 * v79 + 32) = v77;
              if (v75 == v76)
              {
                goto LABEL_8;
              }
            }

            __break(1u);
            break;
          }

          v74 = MEMORY[0x1E69E7CC0];
LABEL_20:
          v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
          result = swift_allocObject();
          *(result + 16) = v194;
          *(result + 32) = v71;
          if (!*(v68 + 16))
          {
LABEL_45:
            __break(1u);
LABEL_46:
            __break(1u);
            goto LABEL_47;
          }

          v81 = result;
          v82 = *(v68 + 32);

          v83 = *(v82 + 16);

          *(v81 + 40) = v83;
          MEMORY[0x1D3865040](v81);
          v205 = v74;
          v84 = *v193;
          v85 = v175;
          v86 = v203;
          (*v193)(v175, 1, 1, v203);
          v201 = v84;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd, &_sSaySfGMR);
          lazy protocol witness table accessor for type Sequential<Sequential<Sequential<Conv1D, ReLU>, Flatten>, Dense> and conformance Sequential<A, B>(&lazy protocol witness table cache variable for type [Float] and conformance [A], &_sSaySfGMd, &_sSaySfGMR);
          Tensor.init<A>(shape:scalars:on:)();
          v177 = v80;
          v87 = swift_allocObject();
          *(v87 + 16) = v164;
          *(v87 + 32) = *(v70 + 16);
          MEMORY[0x1D3865040]();
          v205 = v70;
          v84(v85, 1, 1, v86);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd, &_sSaySiGMR);
          lazy protocol witness table accessor for type Sequential<Sequential<Sequential<Conv1D, ReLU>, Flatten>, Dense> and conformance Sequential<A, B>(&lazy protocol witness table cache variable for type [Int] and conformance [A], &_sSaySiGMd, &_sSaySiGMR);
          v88 = v196;
          Tensor.init<A>(shape:scalars:on:)();
          v89 = v178;
          v90 = *(v178 + 16);
          v91 = v199;
          v92 = v90(v198, v88, v199);
          v93 = v182;
          (*((*MEMORY[0x1E69E7D40] & *v182) + 0xF0))(v92);
          v201(v85, 1, 1, v203);
          v94 = v197;
          Tensor.init(oneHotAtIndices:depth:onValue:offValue:on:)();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14NeuralNetworks6TensorVGMd, &_ss23_ContiguousArrayStorageCy14NeuralNetworks6TensorVGMR);
          v95 = *(v89 + 72);
          v96 = (*(v89 + 80) + 32) & ~*(v89 + 80);
          v97 = swift_allocObject();
          *(v97 + 16) = v194;
          v98 = v97 + v96;
          v90((v97 + v96), v94, v91);
          v188 = v90;
          v90((v98 + v95), v204, v91);
          v99 = type metadata accessor for ScalarType();
          (*(*(v99 - 8) + 56))(v176, 1, 1, v99);
          v100 = v174;
          Tensor.init(concatenating:alongAxis:scalarType:)();
          result = Tensor.rank.getter();
          if (result < 0)
          {
            goto LABEL_46;
          }

          v186 = v96;
          v187 = v95;
          specialized Sequence.reversed()(0, result);
          v101 = v198;
          Tensor.transposed(permutation:)();

          v102 = *v183;
          (*v183)(v100, v91);
          Tensor.expandingShape(at:)();
          v201 = v102;
          v102(v101, v91);
          v103 = v200;
          Tensor.shape.getter();
          v104 = TensorShape.subscript.getter();
          v185 = *v191;
          v105 = v185(v103, v184);
          v106 = MEMORY[0x1E69E7D40];
          v107 = *((*MEMORY[0x1E69E7D40] & *v93) + 0xA8);
          v108 = v107(v105);
          v109 = v93;
          v110 = (*((*v106 & *v108) + 0x80))();

          if (v104 == v110)
          {
            v111 = v173;
            (*((*MEMORY[0x1E69E7D40] & *v109) + 0x90))();
            v112 = v195;
            v113 = v181;
            Layer.callAsFunction(_:)();
            (*v162)(v111, v113);
            v114 = v166;
            softmax(_:alongAxis:)();
            v115 = v101;
            v116 = v199;
            v117 = v201;
            (v201)(v115, v199);
            v188(v167, v114, v116);
            v67 = v189;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v65 = v190;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v67 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v67[2] + 1, 1, v67);
            }

            v63 = v163;
            v120 = v67[2];
            v119 = v67[3];
            v121 = v120 + 1;
            if (v120 >= v119 >> 1)
            {
              v67 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v119 > 1, v120 + 1, 1, v67);
            }

            (v117)(v166, v116);
            v122 = v167;
          }

          else
          {
            v123 = v195;
            v124 = Tensor.shape.getter();
            v125 = v107(v124);
            (*((*MEMORY[0x1E69E7D40] & *v125) + 0x80))();

            v126 = v184;
            (*v157)(v172, v103, v184);
            TensorShape.subscript.setter();
            v185(v103, v126);
            v127 = v123;
            v128 = Tensor.broadcasted(to:)();
            v129 = v173;
            (*((*MEMORY[0x1E69E7D40] & *v109) + 0x90))(v128);
            v130 = v181;
            Layer.callAsFunction(_:)();
            (*v162)(v129, v130);
            softmax(_:alongAxis:)();
            v131 = v101;
            v116 = v199;
            (v201)(v131, v199);
            v132 = swift_allocObject();
            *(v132 + 16) = v156;
            v133 = v127;
            Tensor.shape.getter();
            v134 = TensorShape.subscript.getter();
            v135 = v103;
            v136 = v185;
            v185(v135, v126);
            *(v132 + 32) = v134;
            v137 = v158;
            Tensor.shape.getter();
            v138 = TensorShape.subscript.getter();
            v136(v137, v126);
            *(v132 + 40) = v138;
            v139 = v159;
            Tensor.shape.getter();
            v140 = TensorShape.subscript.getter();
            v136(v139, v126);
            *(v132 + 48) = v140;
            v141 = v170;
            Tensor.slice(lowerBounds:upperBounds:)();

            v188(v171, v141, v116);
            v67 = v189;
            v112 = v133;
            v142 = v126;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v67 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v67[2] + 1, 1, v67);
            }

            v65 = v190;
            v120 = v67[2];
            v143 = v67[3];
            v121 = v120 + 1;
            if (v120 >= v143 >> 1)
            {
              v67 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v143 > 1, v120 + 1, 1, v67);
            }

            v144 = v201;
            (v201)(v170, v116);
            (v144)(v169, v116);
            (v144)(v168, v116);
            v136(v172, v142);
            v117 = v144;
            v122 = v171;
            v63 = v163;
          }

          (v117)(v112, v116);
          (v117)(v197, v116);
          (v117)(v196, v116);
          (v117)(v204, v116);
          v67[2] = v121;
          (*v161)(v67 + v186 + v120 * v187, v122, v116);
        }

        if (++v65 == v63)
        {
          goto LABEL_40;
        }
      }
    }

    *(v64 - 32) = 0;
    v67 = MEMORY[0x1E69E7CC0];
LABEL_40:
    Logger.init(subsystem:category:)();
    v145 = v202;
    v146 = Logger.logObject.getter();
    v147 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v146, v147))
    {
      v148 = swift_slowAlloc();
      *v148 = 134218240;
      *(v148 + 4) = v160;
      *(v148 + 12) = 2048;
      *(v148 + 14) = v152();

      _os_log_impl(&dword_1CEE74000, v146, v147, "datapoints skipped due to unknown visit history information: %ld, total datapoints: %ld", v148, 0x16u);
      MEMORY[0x1D3865FA0](v148, -1, -1);
    }

    else
    {

      v146 = v145;
    }

    v149 = v154;
    v150 = v153;

    (*(v150 + 8))(v155, v149);
    return v67;
  }

  return result;
}

uint64_t PCNeuralNetModel.getBNNSComputeDevice()@<X0>(uint64_t a1@<X8>)
{
  v27 = type metadata accessor for Logger();
  v2 = *(v27 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v27);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v26 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14NeuralNetworks13ComputeDeviceVSgMd, &_s14NeuralNetworks13ComputeDeviceVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v26 - v11;
  v13 = type metadata accessor for ComputeDevice();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  static ComputeDevice.bnnsCPU.getter();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    outlined destroy of OneHotEncoder<String>.Transformer?(v12, &_s14NeuralNetworks13ComputeDeviceVSgMd, &_s14NeuralNetworks13ComputeDeviceVSgMR);
    Logger.init(subsystem:category:)();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1CEE74000, v18, v19, "BNNS unavailable, falling back to CPU backend", v20, 2u);
      MEMORY[0x1D3865FA0](v20, -1, -1);
    }

    (*(v2 + 8))(v6, v27);
    return static ComputeDevice.cpu.getter();
  }

  else
  {
    v26 = a1;
    v22 = *(v14 + 32);
    v22(v17, v12, v13);
    Logger.init(subsystem:category:)();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1CEE74000, v23, v24, "Using BNNS backend", v25, 2u);
      MEMORY[0x1D3865FA0](v25, -1, -1);
    }

    (*(v2 + 8))(v8, v27);
    return (v22)(v26, v17, v13);
  }
}

id PCNeuralNetModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DataSetFeatureMatrix.__deallocating_deinit(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t PCNeuralNetModel.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18CreateMLComponents14OrdinalEncoderV11TransformerVySS_GSgMd, &_s18CreateMLComponents14OrdinalEncoderV11TransformerVySS_GSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v39 = &v39 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18CreateMLComponents13OneHotEncoderV11TransformerVySS_GSgMd, &_s18CreateMLComponents13OneHotEncoderV11TransformerVySS_GSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v40 = &v39 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14NeuralNetworks10SequentialVyACyACyACyAA6Conv1DVAA4ReLUVGAA7FlattenVGAA5DenseVGAA7ReshapeVGMd, &_s14NeuralNetworks10SequentialVyACyACyACyAA6Conv1DVAA4ReLUVGAA7FlattenVGAA5DenseVGAA7ReshapeVGMR);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v39 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy28PCNeuralNetworkSupportBridge0D8NetModelC10CodingKeys33_5E3324A45488CAD9EFDF1E72CC9262A7LLOGMd, &_ss22KeyedEncodingContainerVy28PCNeuralNetworkSupportBridge0D8NetModelC10CodingKeys33_5E3324A45488CAD9EFDF1E72CC9262A7LLOGMR);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v39 - v16;
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PCNeuralNetModel.CodingKeys and conformance PCNeuralNetModel.CodingKeys();
  v19 = v42;
  v20 = dispatch thunk of Encoder.container<A>(keyedBy:)();
  (*((*MEMORY[0x1E69E7D40] & *v19) + 0x90))(v20);
  v50 = 0;
  lazy protocol witness table accessor for type Sequential<Sequential<Sequential<Sequential<Conv1D, ReLU>, Flatten>, Dense>, Reshape> and conformance <> Sequential<A, B>(&lazy protocol witness table cache variable for type Sequential<Sequential<Sequential<Sequential<Conv1D, ReLU>, Flatten>, Dense>, Reshape> and conformance <> Sequential<A, B>);
  v43 = v17;
  v21 = v41;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v21)
  {
    (*(v9 + 8))(v12, v8);
    v22 = *(v14 + 8);
    v23 = v43;
  }

  else
  {
    v41 = v14;
    v25 = (*(v9 + 8))(v12, v8);
    v26 = MEMORY[0x1E69E7D40];
    v27 = (*((*MEMORY[0x1E69E7D40] & *v19) + 0xA8))(v25);
    v44 = v27;
    v49 = 1;
    type metadata accessor for NeuralNetConfig();
    lazy protocol witness table accessor for type PCNeuralNetModel and conformance PCNeuralNetModel(&lazy protocol witness table cache variable for type NeuralNetConfig and conformance NeuralNetConfig, v28, type metadata accessor for NeuralNetConfig);
    KeyedEncodingContainer.encode<A>(_:forKey:)();

    v29 = v40;
    (*((*v26 & *v19) + 0xC0))();
    v48 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s18CreateMLComponents13OneHotEncoderV11TransformerVySS_GMd, &_s18CreateMLComponents13OneHotEncoderV11TransformerVySS_GMR);
    lazy protocol witness table accessor for type Sequential<Sequential<Sequential<Conv1D, ReLU>, Flatten>, Dense> and conformance Sequential<A, B>(&lazy protocol witness table cache variable for type OneHotEncoder<String>.Transformer and conformance OneHotEncoder<A>.Transformer, &_s18CreateMLComponents13OneHotEncoderV11TransformerVySS_GMd, &_s18CreateMLComponents13OneHotEncoderV11TransformerVySS_GMR);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v30 = outlined destroy of OneHotEncoder<String>.Transformer?(v29, &_s18CreateMLComponents13OneHotEncoderV11TransformerVySS_GSgMd, &_s18CreateMLComponents13OneHotEncoderV11TransformerVySS_GSgMR);
    v31 = *((*v26 & *v42) + 0xD8);
    v32 = v39;
    v31(v30);
    v47 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s18CreateMLComponents14OrdinalEncoderV11TransformerVySS_GMd, &_s18CreateMLComponents14OrdinalEncoderV11TransformerVySS_GMR);
    lazy protocol witness table accessor for type Sequential<Sequential<Sequential<Conv1D, ReLU>, Flatten>, Dense> and conformance Sequential<A, B>(&lazy protocol witness table cache variable for type OrdinalEncoder<String>.Transformer and conformance OrdinalEncoder<A>.Transformer, &_s18CreateMLComponents14OrdinalEncoderV11TransformerVySS_GMd, &_s18CreateMLComponents14OrdinalEncoderV11TransformerVySS_GMR);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v33 = outlined destroy of OneHotEncoder<String>.Transformer?(v32, &_s18CreateMLComponents14OrdinalEncoderV11TransformerVySS_GSgMd, &_s18CreateMLComponents14OrdinalEncoderV11TransformerVySS_GSgMR);
    v34 = v42;
    v35 = MEMORY[0x1E69E7D40];
    (*((*MEMORY[0x1E69E7D40] & *v42) + 0xF0))(v33);
    v46 = 4;
    v36 = KeyedEncodingContainer.encode(_:forKey:)();
    v37 = v41;
    (*((*v35 & *v34) + 0x108))(v36);
    v45 = 5;
    v38 = v43;
    KeyedEncodingContainer.encode(_:forKey:)();
    v22 = *(v37 + 8);
    v23 = v38;
  }

  return v22(v23, v13);
}

char *PCNeuralNetModel.init(from:)(uint64_t *a1)
{
  v2 = v1;
  v65 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18CreateMLComponents14OrdinalEncoderV11TransformerVySS_GSgMd, &_s18CreateMLComponents14OrdinalEncoderV11TransformerVySS_GSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v49 = &v47 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18CreateMLComponents13OneHotEncoderV11TransformerVySS_GSgMd, &_s18CreateMLComponents13OneHotEncoderV11TransformerVySS_GSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v50 = &v47 - v8;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14NeuralNetworks10SequentialVyACyACyACyAA6Conv1DVAA4ReLUVGAA7FlattenVGAA5DenseVGAA7ReshapeVGMd, &_s14NeuralNetworks10SequentialVyACyACyACyAA6Conv1DVAA4ReLUVGAA7FlattenVGAA5DenseVGAA7ReshapeVGMR);
  v61 = *(v56 - 8);
  v9 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v56);
  v51 = &v47 - v10;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy28PCNeuralNetworkSupportBridge0D8NetModelC10CodingKeys33_5E3324A45488CAD9EFDF1E72CC9262A7LLOGMd, &_ss22KeyedDecodingContainerVy28PCNeuralNetworkSupportBridge0D8NetModelC10CodingKeys33_5E3324A45488CAD9EFDF1E72CC9262A7LLOGMR);
  v52 = *(v54 - 8);
  v11 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v54);
  v13 = &v47 - v12;
  v14 = OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge16PCNeuralNetModel_model;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14NeuralNetworks10SequentialVyACyACyAA6Conv1DVAA4ReLUVGAA7FlattenVGAA5DenseVGMd, &_s14NeuralNetworks10SequentialVyACyACyAA6Conv1DVAA4ReLUVGAA7FlattenVGAA5DenseVGMR);
  type metadata accessor for Reshape();
  lazy protocol witness table accessor for type Sequential<Sequential<Sequential<Conv1D, ReLU>, Flatten>, Dense> and conformance Sequential<A, B>(&lazy protocol witness table cache variable for type Sequential<Sequential<Sequential<Conv1D, ReLU>, Flatten>, Dense> and conformance Sequential<A, B>, &_s14NeuralNetworks10SequentialVyACyACyAA6Conv1DVAA4ReLUVGAA7FlattenVGAA5DenseVGMd, &_s14NeuralNetworks10SequentialVyACyACyAA6Conv1DVAA4ReLUVGAA7FlattenVGAA5DenseVGMR);
  v59 = v14;
  Sequential.init(layers:)();
  v15 = OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge16PCNeuralNetModel_encoderAsTransformer;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18CreateMLComponents13OneHotEncoderV11TransformerVySS_GMd, &_s18CreateMLComponents13OneHotEncoderV11TransformerVySS_GMR);
  v17 = *(*(v16 - 8) + 56);
  v60 = v15;
  v17(&v2[v15], 1, 1, v16);
  v18 = OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge16PCNeuralNetModel_labelEncoderAsTransformer;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18CreateMLComponents14OrdinalEncoderV11TransformerVySS_GMd, &_s18CreateMLComponents14OrdinalEncoderV11TransformerVySS_GMR);
  v20 = *(*(v19 - 8) + 56);
  v58 = v18;
  v20(&v2[v18], 1, 1, v19);
  v21 = OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge16PCNeuralNetModel_inputShape;
  *&v2[OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge16PCNeuralNetModel_inputShape] = 0;
  v22 = OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge16PCNeuralNetModel_modelHasBeenTrained;
  v2[OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge16PCNeuralNetModel_modelHasBeenTrained] = 0;
  v2[OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge16PCNeuralNetModel_shouldInterruptTraining] = 0;
  v23 = OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge16PCNeuralNetModel_lock;
  v24 = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  v55 = v23;
  *&v2[v23] = v24;
  v25 = v65[4];
  __swift_project_boxed_opaque_existential_1(v65, v65[3]);
  lazy protocol witness table accessor for type PCNeuralNetModel.CodingKeys and conformance PCNeuralNetModel.CodingKeys();
  v53 = v13;
  v26 = v57;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v26)
  {
    v27 = v56;
    v31 = v61;
    v32 = v59;
    v33 = v60;
    v34 = v58;
    __swift_destroy_boxed_opaque_existential_1Tm(v65);
    (*(v31 + 8))(&v2[v32], v27);
    outlined destroy of OneHotEncoder<String>.Transformer?(&v2[v33], &_s18CreateMLComponents13OneHotEncoderV11TransformerVySS_GSgMd, &_s18CreateMLComponents13OneHotEncoderV11TransformerVySS_GSgMR);
    outlined destroy of OneHotEncoder<String>.Transformer?(&v2[v34], &_s18CreateMLComponents14OrdinalEncoderV11TransformerVySS_GSgMd, &_s18CreateMLComponents14OrdinalEncoderV11TransformerVySS_GSgMR);

    type metadata accessor for PCNeuralNetModel();
    v35 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x30);
    v36 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v57 = v19;
    v48 = v21;
    v47 = v22;
    v28 = v50;
    LOBYTE(v64) = 0;
    lazy protocol witness table accessor for type Sequential<Sequential<Sequential<Sequential<Conv1D, ReLU>, Flatten>, Dense>, Reshape> and conformance <> Sequential<A, B>(&lazy protocol witness table cache variable for type Sequential<Sequential<Sequential<Sequential<Conv1D, ReLU>, Flatten>, Dense>, Reshape> and conformance <> Sequential<A, B>);
    v29 = v51;
    v30 = v56;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v38 = v59;
    swift_beginAccess();
    (*(v61 + 40))(&v2[v38], v29, v30);
    swift_endAccess();
    type metadata accessor for NeuralNetConfig();
    v63 = 1;
    lazy protocol witness table accessor for type PCNeuralNetModel and conformance PCNeuralNetModel(&lazy protocol witness table cache variable for type NeuralNetConfig and conformance NeuralNetConfig, v39, type metadata accessor for NeuralNetConfig);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *&v2[OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge16PCNeuralNetModel_config] = v64;
    LOBYTE(v64) = 2;
    lazy protocol witness table accessor for type Sequential<Sequential<Sequential<Conv1D, ReLU>, Flatten>, Dense> and conformance Sequential<A, B>(&lazy protocol witness table cache variable for type OneHotEncoder<String>.Transformer and conformance OneHotEncoder<A>.Transformer, &_s18CreateMLComponents13OneHotEncoderV11TransformerVySS_GMd, &_s18CreateMLComponents13OneHotEncoderV11TransformerVySS_GMR);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v40 = v60;
    swift_beginAccess();
    outlined assign with take of OneHotEncoder<String>.Transformer?(v28, &v2[v40], &_s18CreateMLComponents13OneHotEncoderV11TransformerVySS_GSgMd, &_s18CreateMLComponents13OneHotEncoderV11TransformerVySS_GSgMR);
    swift_endAccess();
    LOBYTE(v64) = 3;
    lazy protocol witness table accessor for type Sequential<Sequential<Sequential<Conv1D, ReLU>, Flatten>, Dense> and conformance Sequential<A, B>(&lazy protocol witness table cache variable for type OrdinalEncoder<String>.Transformer and conformance OrdinalEncoder<A>.Transformer, &_s18CreateMLComponents14OrdinalEncoderV11TransformerVySS_GMd, &_s18CreateMLComponents14OrdinalEncoderV11TransformerVySS_GMR);
    v41 = v49;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v42 = v58;
    swift_beginAccess();
    outlined assign with take of OneHotEncoder<String>.Transformer?(v41, &v2[v42], &_s18CreateMLComponents14OrdinalEncoderV11TransformerVySS_GSgMd, &_s18CreateMLComponents14OrdinalEncoderV11TransformerVySS_GSgMR);
    swift_endAccess();
    LOBYTE(v64) = 4;
    v43 = KeyedDecodingContainer.decode(_:forKey:)();
    v44 = v48;
    swift_beginAccess();
    *&v2[v44] = v43;
    v63 = 5;
    LOBYTE(v43) = KeyedDecodingContainer.decode(_:forKey:)();
    v45 = v47;
    swift_beginAccess();
    v2[v45] = v43 & 1;
    v46 = type metadata accessor for PCNeuralNetModel();
    v62.receiver = v2;
    v62.super_class = v46;
    v2 = objc_msgSendSuper2(&v62, sel_init);
    (*(v52 + 8))(v53, v54);
    __swift_destroy_boxed_opaque_existential_1Tm(v65);
  }

  return v2;
}

uint64_t protocol witness for Decodable.init(from:) in conformance PCNeuralNetModel@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 456))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t _sIeghH_IeAgH_TR(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = _sIeghH_IeAgH_TRTQ0_;

  return v7();
}

uint64_t _sIeAgH_ytIeAgHr_TR(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = _sIeAgH_ytIeAgHr_TRTQ0_;

  return v8();
}

uint64_t _sIeAgH_ytIeAgHr_TRTQ0_()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v11 = v24 - v10;
  outlined init with copy of OneHotEncoder<String>.Transformer?(a3, v24 - v10, &_sScPSgMd, &_sScPSgMR);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    outlined destroy of OneHotEncoder<String>.Transformer?(v11, &_sScPSgMd, &_sScPSgMR);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  TaskPriority.rawValue.getter();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v14 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v15 = dispatch thunk of Actor.unownedExecutor.getter();
  v17 = v16;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v18 = String.utf8CString.getter() + 32;
    v19 = swift_allocObject();
    *(v19 + 16) = a4;
    *(v19 + 24) = a5;

    if (v17 | v15)
    {
      v25[0] = 0;
      v25[1] = 0;
      v20 = v25;
      v25[2] = v15;
      v25[3] = v17;
    }

    else
    {
      v20 = 0;
    }

    v24[1] = 7;
    v24[2] = v20;
    v24[3] = v18;
    v22 = swift_task_create();

    outlined destroy of OneHotEncoder<String>.Transformer?(a3, &_sScPSgMd, &_sScPSgMR);

    return v22;
  }

LABEL_8:
  outlined destroy of OneHotEncoder<String>.Transformer?(a3, &_sScPSgMd, &_sScPSgMR);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5TQ0_;

  return v7(a1);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5TQ0_()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    outlined init with copy of Any(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t _StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v4 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NeuralNetConfig.CodingKeys and conformance NeuralNetConfig.CodingKeys()
{
  result = lazy protocol witness table cache variable for type NeuralNetConfig.CodingKeys and conformance NeuralNetConfig.CodingKeys;
  if (!lazy protocol witness table cache variable for type NeuralNetConfig.CodingKeys and conformance NeuralNetConfig.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NeuralNetConfig.CodingKeys and conformance NeuralNetConfig.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NeuralNetConfig.CodingKeys and conformance NeuralNetConfig.CodingKeys;
  if (!lazy protocol witness table cache variable for type NeuralNetConfig.CodingKeys and conformance NeuralNetConfig.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NeuralNetConfig.CodingKeys and conformance NeuralNetConfig.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NeuralNetConfig.CodingKeys and conformance NeuralNetConfig.CodingKeys;
  if (!lazy protocol witness table cache variable for type NeuralNetConfig.CodingKeys and conformance NeuralNetConfig.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NeuralNetConfig.CodingKeys and conformance NeuralNetConfig.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NeuralNetConfig.CodingKeys and conformance NeuralNetConfig.CodingKeys;
  if (!lazy protocol witness table cache variable for type NeuralNetConfig.CodingKeys and conformance NeuralNetConfig.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NeuralNetConfig.CodingKeys and conformance NeuralNetConfig.CodingKeys);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t outlined assign with take of OneHotEncoder<String>.Transformer?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t type metadata accessor for PCNeuralNetModel()
{
  result = type metadata singleton initialization cache for PCNeuralNetModel;
  if (!type metadata singleton initialization cache for PCNeuralNetModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined consume of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSSgGMd, &_ss23_ContiguousArrayStorageCySSSgGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

BOOL _sSasSQRzlE2eeoiySbSayxG_ABtFZSaySfG_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = a1 + 32;
    v4 = *(a1 + 32);
    v5 = *(a2 + 32);
    v6 = *(v4 + 16);
    if (v6 == *(v5 + 16))
    {
      v7 = 1;
      while (!v6 || v4 == v5)
      {
LABEL_11:
        result = v7 == v2;
        if (v7 != v2)
        {
          v4 = *(v3 + 8 * v7);
          v5 = *(a2 + 32 + 8 * v7++);
          v6 = *(v4 + 16);
          if (v6 == *(v5 + 16))
          {
            continue;
          }
        }

        return result;
      }

      v8 = (v4 + 32);
      v9 = (v5 + 32);
      while (*v8 == *v9)
      {
        ++v8;
        ++v9;
        if (!--v6)
        {
          goto LABEL_11;
        }
      }
    }

    return 0;
  }

  return 1;
}

uint64_t specialized NeuralNetConfig.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7A69536863746162 && a2 == 0xE900000000000065;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x737065745374756FLL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x614C6E6564646968 && a2 == 0xEF657A6953726579 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7368636F7065 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x476E4F6E69617274 && a2 == 0xEA00000000007570 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x4C6E776F6E6B6E75 && a2 == 0xEC0000004449696FLL)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

unint64_t specialized PCNeuralNetModel.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PCNeuralNetModel.CodingKeys.init(rawValue:), v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

void *specialized PCNeuralNetModel.predictFromTensor(xPredict:xPredictMatrix:timesteps:)(void *a1, uint64_t a2)
{
  v5 = type metadata accessor for Tensor();
  v6 = *(v5 - 8);
  v45 = v5;
  v46 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1E69E7D40];
  if (((*((*MEMORY[0x1E69E7D40] & *v2) + 0x108))(v13) & 1) == 0)
  {
    Logger.init(subsystem:category:)();
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_1CEE74000, v39, v40, "model has not been trained, skipping prediction", v41, 2u);
      MEMORY[0x1D3865FA0](v41, -1, -1);
    }

    (*(v11 + 8))(v15, v10);
    return MEMORY[0x1E69E7CC0];
  }

  v17 = *((*v16 & *v2) + 0xA8);

  v19 = v17(v18);
  v20 = (*((*v16 & *v19) + 0xF8))();

  v21 = objc_allocWithZone(type metadata accessor for DataSetFeatureMatrix());
  v22 = DataSetFeatureMatrix.init(x:inputSteps:unknownLoiId:)(a1, a2, v20);
  v23 = PCNeuralNetModel.predictFromDataset(featureMatrix:)(v22);
  v24 = v23[2];
  if (!v24)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v42[0] = v22;
  v42[1] = v23;
  v44 = *(v46 + 16);
  v25 = v23 + ((*(v46 + 80) + 32) & ~*(v46 + 80));
  v26 = (v46 + 8);
  v27 = MEMORY[0x1E69E7CC0];
  v46 += 16;
  v43 = *(v46 + 56);
  for (i = v44(v9, v25, v45); ; i = v44(v9, v25, v30))
  {
    MEMORY[0x1EEE9AC00](i);
    v42[-2] = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySaySaySfGGGMd, &_sSaySaySaySfGGGMR);
    result = Tensor.withUnsafeBytes<A>(_:)();
    v31 = v47;
    v32 = *(v47 + 16);
    v33 = v27[2];
    v34 = v33 + v32;
    if (__OFADD__(v33, v32))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v34 <= v27[3] >> 1)
    {
      if (*(v31 + 16))
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (v33 <= v34)
      {
        v35 = v33 + v32;
      }

      else
      {
        v35 = v33;
      }

      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v35, 1, v27, &_ss23_ContiguousArrayStorageCySaySaySfGGGMd, &_ss23_ContiguousArrayStorageCySaySaySfGGGMR, &_sSaySaySfGGMd, &_sSaySaySfGGMR);
      v27 = result;
      if (*(v31 + 16))
      {
LABEL_16:
        if ((v27[3] >> 1) - v27[2] < v32)
        {
          goto LABEL_29;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySaySfGGMd, &_sSaySaySfGGMR);
        swift_arrayInitWithCopy();

        if (v32)
        {
          v36 = v27[2];
          v37 = __OFADD__(v36, v32);
          v38 = v36 + v32;
          if (v37)
          {
            goto LABEL_30;
          }

          v27[2] = v38;
        }

        goto LABEL_5;
      }
    }

    if (v32)
    {
      goto LABEL_28;
    }

LABEL_5:
    v30 = v45;
    (*v26)(v9, v45);
    v25 += v43;
    if (!--v24)
    {

      return v27;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type PCNeuralNetModel.CodingKeys and conformance PCNeuralNetModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PCNeuralNetModel.CodingKeys and conformance PCNeuralNetModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type PCNeuralNetModel.CodingKeys and conformance PCNeuralNetModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PCNeuralNetModel.CodingKeys and conformance PCNeuralNetModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PCNeuralNetModel.CodingKeys and conformance PCNeuralNetModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type PCNeuralNetModel.CodingKeys and conformance PCNeuralNetModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PCNeuralNetModel.CodingKeys and conformance PCNeuralNetModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PCNeuralNetModel.CodingKeys and conformance PCNeuralNetModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type PCNeuralNetModel.CodingKeys and conformance PCNeuralNetModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PCNeuralNetModel.CodingKeys and conformance PCNeuralNetModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PCNeuralNetModel.CodingKeys and conformance PCNeuralNetModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type PCNeuralNetModel.CodingKeys and conformance PCNeuralNetModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PCNeuralNetModel.CodingKeys and conformance PCNeuralNetModel.CodingKeys);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Sequential<Sequential<Sequential<Conv1D, ReLU>, Flatten>, Dense> and conformance <> Sequential<A, B>(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s14NeuralNetworks10SequentialVyACyACyAA6Conv1DVAA4ReLUVGAA7FlattenVGAA5DenseVGMd, &_s14NeuralNetworks10SequentialVyACyACyAA6Conv1DVAA4ReLUVGAA7FlattenVGAA5DenseVGMR);
    lazy protocol witness table accessor for type Sequential<Sequential<Conv1D, ReLU>, Flatten> and conformance <> Sequential<A, B>(&lazy protocol witness table cache variable for type Sequential<Sequential<Conv1D, ReLU>, Flatten> and conformance <> Sequential<A, B>);
    lazy protocol witness table accessor for type Sequential<Sequential<Conv1D, ReLU>, Flatten> and conformance <> Sequential<A, B>(&lazy protocol witness table cache variable for type Sequential<Sequential<Conv1D, ReLU>, Flatten> and conformance <> Sequential<A, B>);
    v3 = MEMORY[0x1E69B3850];
    lazy protocol witness table accessor for type PCNeuralNetModel and conformance PCNeuralNetModel(&lazy protocol witness table cache variable for type Dense and conformance Dense, 255, MEMORY[0x1E69B3850]);
    lazy protocol witness table accessor for type PCNeuralNetModel and conformance PCNeuralNetModel(&lazy protocol witness table cache variable for type Dense and conformance Dense, 255, v3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Sequential<Sequential<Conv1D, ReLU>, Flatten> and conformance <> Sequential<A, B>(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s14NeuralNetworks10SequentialVyACyAA6Conv1DVAA4ReLUVGAA7FlattenVGMd, &_s14NeuralNetworks10SequentialVyACyAA6Conv1DVAA4ReLUVGAA7FlattenVGMR);
    lazy protocol witness table accessor for type Sequential<Conv1D, ReLU> and conformance <> Sequential<A, B>(&lazy protocol witness table cache variable for type Sequential<Conv1D, ReLU> and conformance <> Sequential<A, B>);
    lazy protocol witness table accessor for type Sequential<Conv1D, ReLU> and conformance <> Sequential<A, B>(&lazy protocol witness table cache variable for type Sequential<Conv1D, ReLU> and conformance <> Sequential<A, B>);
    lazy protocol witness table accessor for type Flatten and conformance Flatten();
    lazy protocol witness table accessor for type Flatten and conformance Flatten();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Sequential<Conv1D, ReLU> and conformance <> Sequential<A, B>(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s14NeuralNetworks10SequentialVyAA6Conv1DVAA4ReLUVGMd, &_s14NeuralNetworks10SequentialVyAA6Conv1DVAA4ReLUVGMR);
    v3 = MEMORY[0x1E69B3870];
    lazy protocol witness table accessor for type PCNeuralNetModel and conformance PCNeuralNetModel(&lazy protocol witness table cache variable for type Conv1D and conformance Conv1D, 255, MEMORY[0x1E69B3870]);
    lazy protocol witness table accessor for type PCNeuralNetModel and conformance PCNeuralNetModel(&lazy protocol witness table cache variable for type Conv1D and conformance Conv1D, 255, v3);
    v4 = MEMORY[0x1E69B3830];
    lazy protocol witness table accessor for type PCNeuralNetModel and conformance PCNeuralNetModel(&lazy protocol witness table cache variable for type ReLU and conformance ReLU, 255, MEMORY[0x1E69B3830]);
    lazy protocol witness table accessor for type PCNeuralNetModel and conformance PCNeuralNetModel(&lazy protocol witness table cache variable for type ReLU and conformance ReLU, 255, v4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Flatten and conformance Flatten()
{
  result = lazy protocol witness table cache variable for type Flatten and conformance Flatten;
  if (!lazy protocol witness table cache variable for type Flatten and conformance Flatten)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Flatten and conformance Flatten);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Flatten and conformance Flatten;
  if (!lazy protocol witness table cache variable for type Flatten and conformance Flatten)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Flatten and conformance Flatten);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Sequential<Sequential<Sequential<Sequential<Conv1D, ReLU>, Flatten>, Dense>, Reshape> and conformance <> Sequential<A, B>(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s14NeuralNetworks10SequentialVyACyACyACyAA6Conv1DVAA4ReLUVGAA7FlattenVGAA5DenseVGAA7ReshapeVGMd, &_s14NeuralNetworks10SequentialVyACyACyACyAA6Conv1DVAA4ReLUVGAA7FlattenVGAA5DenseVGAA7ReshapeVGMR);
    lazy protocol witness table accessor for type Sequential<Sequential<Sequential<Conv1D, ReLU>, Flatten>, Dense> and conformance <> Sequential<A, B>(&lazy protocol witness table cache variable for type Sequential<Sequential<Sequential<Conv1D, ReLU>, Flatten>, Dense> and conformance <> Sequential<A, B>);
    lazy protocol witness table accessor for type Sequential<Sequential<Sequential<Conv1D, ReLU>, Flatten>, Dense> and conformance <> Sequential<A, B>(&lazy protocol witness table cache variable for type Sequential<Sequential<Sequential<Conv1D, ReLU>, Flatten>, Dense> and conformance <> Sequential<A, B>);
    v3 = MEMORY[0x1E69B38B0];
    lazy protocol witness table accessor for type PCNeuralNetModel and conformance PCNeuralNetModel(&lazy protocol witness table cache variable for type Reshape and conformance Reshape, 255, MEMORY[0x1E69B38B0]);
    lazy protocol witness table accessor for type PCNeuralNetModel and conformance PCNeuralNetModel(&lazy protocol witness table cache variable for type Reshape and conformance Reshape, 255, v3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type PCNeuralNetModel and conformance PCNeuralNetModel(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PCNeuralNetworkTrainingResultCode and conformance PCNeuralNetworkTrainingResultCode()
{
  result = lazy protocol witness table cache variable for type PCNeuralNetworkTrainingResultCode and conformance PCNeuralNetworkTrainingResultCode;
  if (!lazy protocol witness table cache variable for type PCNeuralNetworkTrainingResultCode and conformance PCNeuralNetworkTrainingResultCode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PCNeuralNetworkTrainingResultCode and conformance PCNeuralNetworkTrainingResultCode);
  }

  return result;
}

void type metadata completion function for PCNeuralNetModel()
{
  type metadata accessor for Sequential<Sequential<Sequential<Sequential<Conv1D, ReLU>, Flatten>, Dense>, Reshape>();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    type metadata accessor for OneHotEncoder<String>.Transformer?(319, &lazy cache variable for type metadata for OneHotEncoder<String>.Transformer?, &_s18CreateMLComponents13OneHotEncoderV11TransformerVySS_GMd, &_s18CreateMLComponents13OneHotEncoderV11TransformerVySS_GMR);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      type metadata accessor for OneHotEncoder<String>.Transformer?(319, &lazy cache variable for type metadata for OrdinalEncoder<String>.Transformer?, &_s18CreateMLComponents14OrdinalEncoderV11TransformerVySS_GMd, &_s18CreateMLComponents14OrdinalEncoderV11TransformerVySS_GMR);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t dispatch thunk of PCNeuralNetModel.__allocating_init(from:)()
{
  return (*(v0 + 344))();
}

{
  return (*(v0 + 456))();
}

uint64_t dispatch thunk of PCNeuralNetModel.encodeWithLabelEncoder(array:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x188);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = dispatch thunk of PCNeuralNetModel.encodeWithLabelEncoder(array:);

  return v8(a1);
}

uint64_t dispatch thunk of PCNeuralNetModel.fitLabelEncoder(array:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x190);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = dispatch thunk of PCNeuralNetModel.fitLabelEncoder(array:);

  return v8(a1);
}

{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

void type metadata accessor for Sequential<Sequential<Sequential<Sequential<Conv1D, ReLU>, Flatten>, Dense>, Reshape>()
{
  if (!lazy cache variable for type metadata for Sequential<Sequential<Sequential<Sequential<Conv1D, ReLU>, Flatten>, Dense>, Reshape>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s14NeuralNetworks10SequentialVyACyACyAA6Conv1DVAA4ReLUVGAA7FlattenVGAA5DenseVGMd, &_s14NeuralNetworks10SequentialVyACyACyAA6Conv1DVAA4ReLUVGAA7FlattenVGAA5DenseVGMR);
    type metadata accessor for Reshape();
    lazy protocol witness table accessor for type Sequential<Sequential<Sequential<Conv1D, ReLU>, Flatten>, Dense> and conformance Sequential<A, B>(&lazy protocol witness table cache variable for type Sequential<Sequential<Sequential<Conv1D, ReLU>, Flatten>, Dense> and conformance Sequential<A, B>, &_s14NeuralNetworks10SequentialVyACyACyAA6Conv1DVAA4ReLUVGAA7FlattenVGAA5DenseVGMd, &_s14NeuralNetworks10SequentialVyACyACyAA6Conv1DVAA4ReLUVGAA7FlattenVGAA5DenseVGMR);
    v0 = type metadata accessor for Sequential();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Sequential<Sequential<Sequential<Sequential<Conv1D, ReLU>, Flatten>, Dense>, Reshape>);
    }
  }
}

void type metadata accessor for OneHotEncoder<String>.Transformer?(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = type metadata accessor for Optional();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for PCNeuralNetModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PCNeuralNetModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t partial apply for @objc closure #1 in PCNeuralNetModel.fitLabelEncoder(array:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = _sIeAgH_ytIeAgHr_TRTQ0_;

  return @objc closure #1 in PCNeuralNetModel.fitLabelEncoder(array:)(v2, v3, v4);
}

uint64_t _sIeghH_IeAgH_TRTA()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = _sIeghH_IeAgH_TRTQ0_;

  return _sIeghH_IeAgH_TR(v2, v3, v5);
}

uint64_t _sIeAgH_ytIeAgHr_TRTA(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = _sIeghH_IeAgH_TRTQ0_;

  return _sIeAgH_ytIeAgHr_TR(a1, v4, v5, v7);
}

uint64_t outlined init with copy of OneHotEncoder<String>.Transformer?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5TA(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = _sIeghH_IeAgH_TRTQ0_;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5(a1, v5);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5TA_70(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = _sIeAgH_ytIeAgHr_TRTQ0_;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5(a1, v5);
}

uint64_t objectdestroyTm()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t partial apply for @objc closure #1 in PCNeuralNetModel.encodeWithLabelEncoder(array:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = _sIeghH_IeAgH_TRTQ0_;

  return @objc closure #1 in PCNeuralNetModel.encodeWithLabelEncoder(array:)(v2, v3, v4);
}

uint64_t objectdestroy_56Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t outlined destroy of Reshape(uint64_t a1)
{
  v2 = type metadata accessor for Reshape();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_1CEE8D4B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t PCPInteractionRecordReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v22) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v22 & 0x7F) << v5;
        if ((v22 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        switch(v13)
        {
          case 0:
            v15 = 0;
            while (1)
            {
              LOBYTE(v22) = 0;
              v16 = [a2 position] + 1;
              if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
              {
                v18 = [a2 data];
                [v18 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              if ((v22 & 0x80000000) == 0)
              {
                break;
              }

              if (v15++ > 8)
              {
                goto LABEL_55;
              }
            }

            [a2 hasError];
            goto LABEL_55;
          case 1:
            [a1 clearOneofValuesForInteractionCommand];
            *(a1 + 64) |= 1u;
            *(a1 + 24) = 1;
            v14 = objc_alloc_init(PCPLifecycleEvent);
            objc_storeStrong((a1 + 40), v14);
            v22 = 0;
            v23 = 0;
            if (!PBReaderPlaceMark() || !PCPLifecycleEventReadFrom(v14, a2))
            {
LABEL_59:

              return 0;
            }

            goto LABEL_54;
          case 2:
            [a1 clearOneofValuesForInteractionCommand];
            *(a1 + 64) |= 1u;
            *(a1 + 24) = 2;
            v14 = objc_alloc_init(PCPApplyState);
            objc_storeStrong((a1 + 8), v14);
            v22 = 0;
            v23 = 0;
            if (!PBReaderPlaceMark() || !PCPApplyStateReadFrom(v14, a2))
            {
              goto LABEL_59;
            }

            goto LABEL_54;
        }
      }

      else if (v13 > 4)
      {
        if (v13 == 5)
        {
          [a1 clearOneofValuesForInteractionCommand];
          *(a1 + 64) |= 1u;
          *(a1 + 24) = 5;
          v14 = objc_alloc_init(PCPPredictRequest);
          objc_storeStrong((a1 + 48), v14);
          v22 = 0;
          v23 = 0;
          if (!PBReaderPlaceMark() || !PCPPredictRequestReadFrom(v14, a2))
          {
            goto LABEL_59;
          }

          goto LABEL_54;
        }

        if (v13 == 6)
        {
          [a1 clearOneofValuesForInteractionCommand];
          *(a1 + 64) |= 1u;
          *(a1 + 24) = 6;
          v14 = objc_alloc_init(PCPComputeInterruptRequest);
          objc_storeStrong((a1 + 32), v14);
          v22 = 0;
          v23 = 0;
          if (!PBReaderPlaceMark() || !PCPComputeInterruptRequestReadFrom(v14, a2))
          {
            goto LABEL_59;
          }

          goto LABEL_54;
        }
      }

      else
      {
        if (v13 == 3)
        {
          [a1 clearOneofValuesForInteractionCommand];
          *(a1 + 64) |= 1u;
          *(a1 + 24) = 3;
          v14 = objc_alloc_init(PCPRetrieveState);
          objc_storeStrong((a1 + 56), v14);
          v22 = 0;
          v23 = 0;
          if (!PBReaderPlaceMark() || !PCPRetrieveStateReadFrom(v14, a2))
          {
            goto LABEL_59;
          }

          goto LABEL_54;
        }

        if (v13 == 4)
        {
          [a1 clearOneofValuesForInteractionCommand];
          *(a1 + 64) |= 1u;
          *(a1 + 24) = 4;
          v14 = objc_alloc_init(PCPComputeRequest);
          objc_storeStrong((a1 + 16), v14);
          v22 = 0;
          v23 = 0;
          if (!PBReaderPlaceMark() || !PCPComputeRequestReadFrom(v14, a2))
          {
            goto LABEL_59;
          }

LABEL_54:
          PBReaderRecallMark();

          goto LABEL_55;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_55:
      v20 = [a2 position];
    }

    while (v20 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t PCPMapsViewedPlaceReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v19[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19[0] & 0x7F) << v5;
        if ((v19[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v15 = objc_alloc_init(PCPLocation);
        objc_storeStrong((a1 + 16), v15);
        v19[0] = 0;
        v19[1] = 0;
        if (!PBReaderPlaceMark() || !PCPLocationReadFrom(v15, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((v12 >> 3) == 1)
      {
        *(a1 + 24) |= 1u;
        v19[0] = 0;
        v13 = [a2 position] + 8;
        if (v13 >= [a2 position] && (v14 = objc_msgSend(a2, "position") + 8, v14 <= objc_msgSend(a2, "length")))
        {
          v16 = [a2 data];
          [v16 getBytes:v19 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v19[0];
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v17 = [a2 position];
    }

    while (v17 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t PCPApplyStateReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(PCPAlgorithmState);
        objc_storeStrong((a1 + 8), v13);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !PCPAlgorithmStateReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t PCPMotionActivityReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v34 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v34 & 0x7F) << v5;
        if ((v34 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        *(a1 + 24) |= 1u;
        v33 = 0;
        v27 = [a2 position] + 8;
        if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 8, v28 <= objc_msgSend(a2, "length")))
        {
          v31 = [a2 data];
          [v31 getBytes:&v33 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v33;
      }

      else
      {
        if (v13 == 2)
        {
          v21 = 0;
          v22 = 0;
          v23 = 0;
          *(a1 + 24) |= 2u;
          while (1)
          {
            v35 = 0;
            v24 = [a2 position] + 1;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
            {
              v26 = [a2 data];
              [v26 getBytes:&v35 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v23 |= (v35 & 0x7F) << v21;
            if ((v35 & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v11 = v22++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_46;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v23;
          }

LABEL_46:
          v30 = 16;
        }

        else
        {
          if (v13 != 1)
          {
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_54;
          }

          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 24) |= 4u;
          while (1)
          {
            v36 = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v36 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v36 & 0x7F) << v14;
            if ((v36 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_50;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v16;
          }

LABEL_50:
          v30 = 20;
        }

        *(a1 + v30) = v20;
      }

LABEL_54:
      v32 = [a2 position];
    }

    while (v32 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t PCPPredictedContextResultReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v24) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          v14 = objc_alloc_init(PCPPredictedContextLocation);
          [a1 addPredictedContextLocations:v14];
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !PCPPredictedContextLocationReadFrom(v14, a2))
          {
LABEL_50:

            return 0;
          }

          goto LABEL_43;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(PCPPredictedContextTransition);
          [a1 addPredictedContextTransitions:v14];
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !PCPPredictedContextTransitionReadFrom(&v14->super.super.isa, a2))
          {
            goto LABEL_50;
          }

          goto LABEL_43;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v14 = objc_alloc_init(PCPPredictedContextWorkout);
            [a1 addPredictedContextWorkouts:v14];
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !PCPPredictedContextWorkoutReadFrom(v14, a2))
            {
              goto LABEL_50;
            }

            goto LABEL_43;
          case 4:
            v15 = 0;
            v16 = 0;
            v17 = 0;
            *(a1 + 44) |= 1u;
            while (1)
            {
              LOBYTE(v24) = 0;
              v18 = [a2 position] + 1;
              if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
              {
                v20 = [a2 data];
                [v20 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v17 |= (v24 & 0x7F) << v15;
              if ((v24 & 0x80) == 0)
              {
                break;
              }

              v15 += 7;
              v11 = v16++ >= 9;
              if (v11)
              {
                LOBYTE(v21) = 0;
                goto LABEL_47;
              }
            }

            v21 = (v17 != 0) & ~[a2 hasError];
LABEL_47:
            *(a1 + 40) = v21;
            goto LABEL_48;
          case 5:
            v14 = objc_alloc_init(PCPPredictedContextAnalytics);
            objc_storeStrong((a1 + 8), v14);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !PCPPredictedContextAnalyticsReadFrom(v14, a2))
            {
              goto LABEL_50;
            }

LABEL_43:
            PBReaderRecallMark();

            goto LABEL_48;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_48:
      v22 = [a2 position];
    }

    while (v22 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t PCPLocationOfInterestReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v34) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v34 & 0x7F) << v5;
        if ((v34 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 3)
      {
        switch(v13)
        {
          case 4:
            *(a1 + 52) |= 1u;
            v34 = 0;
            v24 = [a2 position] + 8;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 8, v25 <= objc_msgSend(a2, "length")))
            {
              v28 = [a2 data];
              [v28 getBytes:&v34 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            v29 = v34;
            v30 = 8;
            goto LABEL_56;
          case 5:
            *(a1 + 52) |= 2u;
            v34 = 0;
            v26 = [a2 position] + 8;
            if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 8, v27 <= objc_msgSend(a2, "length")))
            {
              v31 = [a2 data];
              [v31 getBytes:&v34 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            v29 = v34;
            v30 = 16;
LABEL_56:
            *(a1 + v30) = v29;
            goto LABEL_57;
          case 6:
            v21 = objc_alloc_init(PCPMapItem);
            objc_storeStrong((a1 + 40), v21);
            v34 = 0;
            v35 = 0;
            if (!PBReaderPlaceMark() || !PCPMapItemReadFrom(v21, a2))
            {
LABEL_59:

              return 0;
            }

            goto LABEL_44;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v22 = PBReaderReadData();
            v23 = *(a1 + 32);
            *(a1 + 32) = v22;

            goto LABEL_57;
          case 2:
            v21 = objc_alloc_init(PCPLocation);
            objc_storeStrong((a1 + 24), v21);
            v34 = 0;
            v35 = 0;
            if (!PBReaderPlaceMark() || !PCPLocationReadFrom(v21, a2))
            {
              goto LABEL_59;
            }

LABEL_44:
            PBReaderRecallMark();

            goto LABEL_57;
          case 3:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 52) |= 4u;
            while (1)
            {
              LOBYTE(v34) = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v34 & 0x7F) << v14;
              if ((v34 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_51;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v16;
            }

LABEL_51:
            *(a1 + 48) = v20;
            goto LABEL_57;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_57:
      v32 = [a2 position];
    }

    while (v32 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t PCPPredictedContextTransportReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v26 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v26 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26 & 0x7F) << v5;
        if ((v26 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        *(a1 + 20) |= 1u;
        v25 = 0;
        v20 = [a2 position] + 8;
        if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 8, v21 <= objc_msgSend(a2, "length")))
        {
          v23 = [a2 data];
          [v23 getBytes:&v25 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v25;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 20) |= 2u;
        while (1)
        {
          v27 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v27 & 0x7F) << v13;
          if ((v27 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_36;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_36:
        *(a1 + 16) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v24 = [a2 position];
    }

    while (v24 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1CEEA1A9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char *a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  a26 = &a30;
  std::vector<std::vector<double>>::__destroy_vector::operator()[abi:ne200100](&a26);

  _Unwind_Resume(a1);
}

void std::vector<double>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    std::vector<double>::__append(a1, a2 - v2);
  }
}

void sub_1CEEA2438(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1CEEA2588(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void **a13)
{
  a13 = &a10;
  std::vector<std::vector<double>>::__destroy_vector::operator()[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::vector<double>>::__init_with_size[abi:ne200100]<std::vector<double>*,std::vector<double>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::vector<double>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1CEEA2664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::vector<double>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::vector<double>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<double>>>(a1, a2);
  }

  std::vector<std::vector<double>>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<double>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_1E83B7E08, MEMORY[0x1E69E5278]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B0] + 16);
  return result;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x1E69E5420], MEMORY[0x1E69E52A8]);
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<double>>,std::vector<double>*,std::vector<double>*,std::vector<double>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(v4, *v6, v6[1], (v6[1] - *v6) >> 3);
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<double>>,std::vector<double>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<double>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1CEEA292C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<double>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a1, a2);
  }

  std::vector<std::vector<double>>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<double>>,std::vector<double>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<double>>,std::vector<double>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<double>>,std::vector<double>*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    v3 = **(a1 + 16);
    do
    {
      v5 = *(v3 - 24);
      v3 -= 24;
      v4 = v5;
      if (v5)
      {
        *(v1 - 16) = v4;
        operator delete(v4);
      }

      v1 = v3;
    }

    while (v3 != v2);
  }
}

void std::vector<std::vector<double>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::vector<double>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::vector<double>>::clear[abi:ne200100](uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 24);
      v4 -= 24;
      v5 = v6;
      if (v6)
      {
        *(v2 - 16) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

void *std::vector<std::vector<double>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<std::vector<double>>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void std::vector<double>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      std::vector<std::vector<double>>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a1, v10);
    }

    v11 = (8 * (v7 >> 3));
    bzero(v11, 8 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[8 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

void *std::vector<double>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<double>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_1CEEA2D30(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::unique_ptr<Hdbscan>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 200);
    if (v3)
    {
      *(v2 + 208) = v3;
      operator delete(v3);
    }

    v4 = *(v2 + 176);
    if (v4)
    {
      *(v2 + 184) = v4;
      operator delete(v4);
    }

    v5 = *(v2 + 152);
    if (v5)
    {
      *(v2 + 160) = v5;
      operator delete(v5);
    }

    v6 = *(v2 + 128);
    if (v6)
    {
      *(v2 + 136) = v6;
      operator delete(v6);
    }

    v10 = (v2 + 104);
    std::vector<std::vector<double>>::__destroy_vector::operator()[abi:ne200100](&v10);
    v10 = (v2 + 80);
    std::vector<std::vector<double>>::__destroy_vector::operator()[abi:ne200100](&v10);
    v7 = *(v2 + 48);
    if (v7)
    {
      *(v2 + 56) = v7;
      operator delete(v7);
    }

    v8 = *(v2 + 24);
    if (v8)
    {
      *(v2 + 32) = v8;
      operator delete(v8);
    }

    v9 = *v2;
    if (*v2)
    {
      *(v2 + 8) = v9;
      operator delete(v9);
    }

    JUMPOUT(0x1D3865860);
  }

  return result;
}

uint64_t PCPHealthKitWorkoutReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v21 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v21 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v21 & 0x7F) << v5;
        if ((v21 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        *(a1 + 24) |= 1u;
        v20 = 0;
        v15 = [a2 position] + 8;
        if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 8, v16 <= objc_msgSend(a2, "length")))
        {
          v18 = [a2 data];
          [v18 getBytes:&v20 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v20;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadData();
        v14 = *(a1 + 16);
        *(a1 + 16) = v13;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v19 = [a2 position];
    }

    while (v19 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t PCPClusterPhenotypeReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 >= [a2 length])
  {
    return [a2 hasError] ^ 1;
  }

  while (2)
  {
    if ([a2 hasError])
    {
      return [a2 hasError] ^ 1;
    }

    v5 = 0;
    v6 = 0;
    v7 = 0;
    while (1)
    {
      LOBYTE(v56[0]) = 0;
      v8 = [a2 position] + 1;
      if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
      {
        v10 = [a2 data];
        [v10 getBytes:v56 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v7 |= (v56[0] & 0x7F) << v5;
      if ((v56[0] & 0x80) == 0)
      {
        break;
      }

      v5 += 7;
      v11 = v6++ >= 9;
      if (v11)
      {
        v12 = 0;
        goto LABEL_15;
      }
    }

    v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
    {
      return [a2 hasError] ^ 1;
    }

    switch((v12 >> 3))
    {
      case 1u:
        v13 = PBReaderReadString();
        v14 = 64;
        goto LABEL_45;
      case 2u:
        v13 = PBReaderReadString();
        v14 = 80;
        goto LABEL_45;
      case 3u:
        v13 = PBReaderReadString();
        v14 = 88;
LABEL_45:
        v31 = *(a1 + v14);
        *(a1 + v14) = v13;

        goto LABEL_87;
      case 4u:
        v28 = objc_alloc_init(PCPLocation);
        objc_storeStrong((a1 + 72), v28);
        v56[0] = 0;
        v56[1] = 0;
        if (PBReaderPlaceMark() && PCPLocationReadFrom(v28, a2))
        {
          PBReaderRecallMark();

LABEL_87:
          v54 = [a2 position];
          if (v54 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

        return 0;
      case 5u:
        *(a1 + 104) |= 1u;
        v56[0] = 0;
        v17 = [a2 position] + 8;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 8, v18 <= objc_msgSend(a2, "length")))
        {
          v48 = [a2 data];
          [v48 getBytes:v56 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v46 = v56[0];
        v47 = 8;
        goto LABEL_86;
      case 6u:
        *(a1 + 104) |= 2u;
        v56[0] = 0;
        v32 = [a2 position] + 8;
        if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 8, v33 <= objc_msgSend(a2, "length")))
        {
          v51 = [a2 data];
          [v51 getBytes:v56 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v46 = v56[0];
        v47 = 16;
        goto LABEL_86;
      case 7u:
        *(a1 + 104) |= 8u;
        v56[0] = 0;
        v34 = [a2 position] + 8;
        if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 8, v35 <= objc_msgSend(a2, "length")))
        {
          v52 = [a2 data];
          [v52 getBytes:v56 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v46 = v56[0];
        v47 = 32;
        goto LABEL_86;
      case 8u:
        *(a1 + 104) |= 0x20u;
        v56[0] = 0;
        v29 = [a2 position] + 8;
        if (v29 >= [a2 position] && (v30 = objc_msgSend(a2, "position") + 8, v30 <= objc_msgSend(a2, "length")))
        {
          v50 = [a2 data];
          [v50 getBytes:v56 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v46 = v56[0];
        v47 = 48;
        goto LABEL_86;
      case 9u:
        *(a1 + 104) |= 0x40u;
        v56[0] = 0;
        v43 = [a2 position] + 8;
        if (v43 >= [a2 position] && (v44 = objc_msgSend(a2, "position") + 8, v44 <= objc_msgSend(a2, "length")))
        {
          v53 = [a2 data];
          [v53 getBytes:v56 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v46 = v56[0];
        v47 = 56;
        goto LABEL_86;
      case 0xAu:
        v21 = 0;
        v22 = 0;
        v23 = 0;
        *(a1 + 104) |= 0x80u;
        while (1)
        {
          LOBYTE(v56[0]) = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:v56 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v56[0] & 0x7F) << v21;
          if ((v56[0] & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v11 = v22++ >= 9;
          if (v11)
          {
            v27 = 0;
            goto LABEL_69;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v23;
        }

LABEL_69:
        *(a1 + 96) = v27;
        goto LABEL_87;
      case 0xBu:
        v36 = 0;
        v37 = 0;
        v38 = 0;
        *(a1 + 104) |= 0x100u;
        while (1)
        {
          LOBYTE(v56[0]) = 0;
          v39 = [a2 position] + 1;
          if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
          {
            v41 = [a2 data];
            [v41 getBytes:v56 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v38 |= (v56[0] & 0x7F) << v36;
          if ((v56[0] & 0x80) == 0)
          {
            break;
          }

          v36 += 7;
          v11 = v37++ >= 9;
          if (v11)
          {
            LOBYTE(v42) = 0;
            goto LABEL_71;
          }
        }

        v42 = (v38 != 0) & ~[a2 hasError];
LABEL_71:
        *(a1 + 100) = v42;
        goto LABEL_87;
      case 0xCu:
        *(a1 + 104) |= 0x10u;
        v56[0] = 0;
        v15 = [a2 position] + 8;
        if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 8, v16 <= objc_msgSend(a2, "length")))
        {
          v45 = [a2 data];
          [v45 getBytes:v56 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v46 = v56[0];
        v47 = 40;
        goto LABEL_86;
      case 0xDu:
        *(a1 + 104) |= 4u;
        v56[0] = 0;
        v19 = [a2 position] + 8;
        if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 8, v20 <= objc_msgSend(a2, "length")))
        {
          v49 = [a2 data];
          [v49 getBytes:v56 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v46 = v56[0];
        v47 = 24;
LABEL_86:
        *(a1 + v47) = v46;
        goto LABEL_87;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_87;
    }
  }
}

uint64_t PCPWorkoutClusterReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v28[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v28 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v28[0] & 0x7F) << v5;
        if ((v28[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 3)
      {
        switch(v13)
        {
          case 1:
            v17 = PBReaderReadString();
            v18 = 56;
            goto LABEL_33;
          case 2:
            *(a1 + 64) |= 2u;
            v28[0] = 0;
            v20 = [a2 position] + 8;
            if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 8, v21 <= objc_msgSend(a2, "length")))
            {
              v25 = [a2 data];
              [v25 getBytes:v28 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            v23 = v28[0];
            v24 = 16;
            goto LABEL_49;
          case 3:
            *(a1 + 64) |= 1u;
            v28[0] = 0;
            v15 = [a2 position] + 8;
            if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 8, v16 <= objc_msgSend(a2, "length")))
            {
              v22 = [a2 data];
              [v22 getBytes:v28 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            v23 = v28[0];
            v24 = 8;
LABEL_49:
            *(a1 + v24) = v23;
            goto LABEL_50;
        }
      }

      else if (v13 > 5)
      {
        if (v13 == 6)
        {
          v14 = objc_alloc_init(PCPClusterPhenotype);
          objc_storeStrong((a1 + 24), v14);
          v28[0] = 0;
          v28[1] = 0;
          if (!PBReaderPlaceMark() || !PCPClusterPhenotypeReadFrom(v14, a2))
          {

            return 0;
          }

          PBReaderRecallMark();
          goto LABEL_41;
        }

        if (v13 == 7)
        {
          v17 = PBReaderReadString();
          v18 = 32;
LABEL_33:
          v19 = *(a1 + v18);
          *(a1 + v18) = v17;

          goto LABEL_50;
        }
      }

      else
      {
        if (v13 == 4)
        {
          v14 = PBReaderReadString();
          if (v14)
          {
            [a1 addEmbeddingIdentifiersWithPhenotype:v14];
          }

          goto LABEL_41;
        }

        if (v13 == 5)
        {
          v14 = PBReaderReadString();
          if (v14)
          {
            [a1 addEmbeddingIdentifiers:v14];
          }

LABEL_41:

          goto LABEL_50;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_50:
      v26 = [a2 position];
    }

    while (v26 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}