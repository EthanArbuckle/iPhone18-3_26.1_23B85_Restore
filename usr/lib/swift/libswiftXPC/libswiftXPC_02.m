uint64_t _s3XPC23_KeyedDecodingContainerV6decode_6forKeys5Int16VAGm_xts0C5ErrorOYKFTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(uint64_t *, char *))
{
  v29 = a8;
  v30 = a7;
  v15 = type metadata accessor for DecodingError();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v28 = &v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v26 - v20;
  v26 = a2;
  v27 = a3;
  v22 = v38;
  _s3XPC23_KeyedDecodingContainerV5value33_75B0D857E5E60FECD69B41037A8551756forKeyAA13EncodingGraphO5ValueOx_ts0C5ErrorOYKF(a1, a4, a5, a6, v30, &v26 - v20, &v35);
  if (v22)
  {
    (*(v16 + 32))(v29, v21, v15);
  }

  else
  {
    v38 = v15;
    v32 = v35;
    v33 = v36;
    v34 = v37;
    v31[3] = type metadata accessor for _KeyedDecodingContainer();
    v31[4] = &protocol witness table for _KeyedDecodingContainer<A>;
    v23 = swift_allocObject();
    v31[0] = v23;
    v24 = v27;
    v23[2] = v26;
    v23[3] = v24;
    v23[4] = a4;
    v23[5] = a5;

    a6 = a9(v31, v28);
    outlined consume of EncodingGraph.Value(v32, *(&v32 + 1), v33, v34);
    __swift_destroy_boxed_opaque_existential_1(v31);
  }

  return a6;
}

uint64_t *_KeyedDecodingContainer.superDecoder()@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v27 = a3;
  v28 = a4;
  v25 = a1;
  v26 = a2;
  v10 = type metadata accessor for DecodingError();
  v24 = *(v10 - 8);
  v11 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for _KeyedEncodingContainer._ContainerCodingKey();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v23 - v17;
  (*(*(a5 - 8) + 56))(&v23 - v17, 1, 1, a5);
  a7[3] = &type metadata for _TopLevelDecoder;
  a7[4] = lazy protocol witness table accessor for type _TopLevelDecoder and conformance _TopLevelDecoder();
  v19 = swift_allocObject();
  *a7 = v19;
  v20 = v29;
  _s3XPC23_KeyedDecodingContainerV10_container33_75B0D857E5E60FECD69B41037A855175LL_6forKey0M4Typeqd__qd__m_AA01_b8EncodingD0V01_d6CodingN0Oyx_GypXpSgts0C5ErrorOYKAA01_cD0Rd__lF(&type metadata for _TopLevelDecoder, v18, 0, v25, v26, v27, v28, v19 + 16, &type metadata for _TopLevelDecoder, a6, &protocol witness table for _TopLevelDecoder, v13);
  if (!v20)
  {
    return (*(v15 + 8))(v18, v14);
  }

  (*(v15 + 8))(v18, v14);
  swift_allocError();
  (*(v24 + 32))(v21, v13, v10);
  return __swift_deallocate_boxed_opaque_existential_1(a7);
}

uint64_t *_s3XPC23_KeyedDecodingContainerV12superDecoder6forKeys0F0_px_ts0C5ErrorOYKF@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v29 = a8;
  v30 = a2;
  v32 = a4;
  v33 = a5;
  v31 = a3;
  v13 = type metadata accessor for DecodingError();
  v27 = *(v13 - 8);
  v28 = v13;
  v14 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for _KeyedEncodingContainer._ContainerCodingKey();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v26 - v20;
  v22 = *(a6 - 8);
  (*(v22 + 16))(&v26 - v20, a1, a6);
  (*(v22 + 56))(v21, 0, 1, a6);
  a9[3] = &type metadata for _TopLevelDecoder;
  a9[4] = lazy protocol witness table accessor for type _TopLevelDecoder and conformance _TopLevelDecoder();
  v23 = swift_allocObject();
  *a9 = v23;
  v24 = v34;
  _s3XPC23_KeyedDecodingContainerV10_container33_75B0D857E5E60FECD69B41037A855175LL_6forKey0M4Typeqd__qd__m_AA01_b8EncodingD0V01_d6CodingN0Oyx_GypXpSgts0C5ErrorOYKAA01_cD0Rd__lF(&type metadata for _TopLevelDecoder, v21, 0, v30, v31, v32, v33, v23 + 16, &type metadata for _TopLevelDecoder, a7, &protocol witness table for _TopLevelDecoder, v16);
  if (!v24)
  {
    return (*(v18 + 8))(v21, v17);
  }

  (*(v18 + 8))(v21, v17);
  (*(v27 + 32))(v29, v16, v28);
  return __swift_deallocate_boxed_opaque_existential_1(a9);
}

uint64_t protocol witness for KeyedDecodingContainerProtocol.decode(_:forKey:) in conformance _KeyedDecodingContainer<A>()
{
  return KeyedDecodingContainerProtocol.decode(_:forKey:)();
}

{
  return KeyedDecodingContainerProtocol.decode(_:forKey:)();
}

uint64_t *__swift_deallocate_boxed_opaque_existential_1(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80));
    JUMPOUT(0x19A8E9CA0);
  }

  return result;
}

void __XPC_INTERNAL_CRASH__(_:file:line:)()
{
  __XPC_INTERNAL_CRASH__(_:file:line:)();
}

{
  MEMORY[0x19A8E8E70]();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t xpc_uuid_get_uuid(_:)(void *a1)
{
  bytes = xpc_uuid_get_bytes(a1);
  if (!bytes)
  {
    return 0;
  }

  v3 = *bytes;
  v2 = *(bytes + 1);
  return v3;
}

xpc_object_t xpc_uuid_create_with_uuid(_:)(unsigned __int8 a1, unsigned __int8 a2, unsigned __int8 a3, unsigned __int8 a4, unsigned __int8 a5, unsigned __int8 a6, unsigned __int8 a7, unsigned __int8 a8, int a9, int a10)
{
  v15 = *MEMORY[0x1E69E9840];
  uuid[0] = a1;
  uuid[1] = a2;
  uuid[2] = a3;
  uuid[3] = a4;
  uuid[4] = a5;
  uuid[5] = a6;
  uuid[6] = a7;
  uuid[7] = a8;
  v13 = a9;
  v14 = a10;
  result = xpc_uuid_create(uuid);
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t Array<A>.byteDescription.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v17 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v3 = v17;
    v4 = (a1 + 32);
    lazy protocol witness table accessor for type UInt8 and conformance UInt8();
    do
    {
      v5 = *v4++;
      v6 = String.init<A>(_:radix:uppercase:)();
      v18 = v3;
      v9 = *(v3 + 16);
      v8 = *(v3 + 24);
      if (v9 >= v8 >> 1)
      {
        v11 = v6;
        v12 = v7;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1);
        v7 = v12;
        v6 = v11;
        v3 = v18;
      }

      *(v3 + 16) = v9 + 1;
      v10 = v3 + 16 * v9;
      *(v10 + 32) = v6;
      *(v10 + 40) = v7;
      --v1;
    }

    while (v1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v13 = BidirectionalCollection<>.joined(separator:)();
  v15 = v14;

  MEMORY[0x19A8E8E70](v13, v15);

  MEMORY[0x19A8E8E70](93, 0xE100000000000000);
  return 91;
}

BOOL audit_token_t.isValid.getter(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if (HIDWORD(a3))
  {
    v4 = a4 >= 0xFFFFFFFF00000000;
  }

  else
  {
    v4 = 1;
  }

  return !v4;
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type UInt8 and conformance UInt8()
{
  result = lazy protocol witness table cache variable for type UInt8 and conformance UInt8;
  if (!lazy protocol witness table cache variable for type UInt8 and conformance UInt8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UInt8 and conformance UInt8);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [String] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [String] and conformance [A];
  if (!lazy protocol witness table cache variable for type [String] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [String] and conformance [A]);
  }

  return result;
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

uint64_t _s3XPC25_UnkeyedDecodingContainerV6decodeyS2Sms0C5ErrorOYKF(uint64_t a1)
{
  v4 = type metadata accessor for DecodingError();
  v5 = *(*(v4 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v4);
  v9 = (&v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = v1[3];
  v43 = v1[2];
  v44 = v10;
  v11 = v1[1];
  v42[0] = *v1;
  v42[1] = v11;
  if (__OFSUB__(v10 >> 1, *(&v43 + 1)))
  {
    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (*(&v44 + 1) == (v10 >> 1) - *(&v43 + 1))
  {
    v34[3] = &type metadata for _UnkeyedDecodingContainer;
    v34[4] = lazy protocol witness table accessor for type _UnkeyedDecodingContainer and conformance _UnkeyedDecodingContainer();
    v12 = swift_allocObject();
    v34[0] = v12;
    v13 = v1[1];
    v12[1] = *v1;
    v12[2] = v13;
    v14 = v1[3];
    v12[3] = v1[2];
    v12[4] = v14;
    v15 = "UnkeyedDecodingContainer";
    outlined init with copy of _UnkeyedDecodingContainer(v42, v40);
    static DecodingError.dataCorruptedError(in:debugDescription:)();
    __swift_destroy_boxed_opaque_existential_1(v34);
    swift_willThrowTypedImpl();
    return v15;
  }

  v16 = *(&v44 + 1) + 1;
  if (__OFADD__(*(&v44 + 1), 1))
  {
    goto LABEL_13;
  }

  if (v16 < *(&v43 + 1) || v16 >= (v10 >> 1))
  {
    goto LABEL_14;
  }

  v32 = v7;
  v33 = a1;
  v17 = v43 + 32 * v16;
  v45 = v2;
  v19 = *(v17 + 8);
  v20 = *(v17 + 16);
  v21 = *(v17 + 24);
  v36 = *v17;
  v18 = v36;
  v37 = v19;
  v38 = v20;
  v39 = v21;
  v22 = v1[1];
  v40[0] = *v1;
  v40[1] = v22;
  v23 = v1[3];
  v40[2] = v1[2];
  v41 = v23;
  v35[3] = &type metadata for _UnkeyedDecodingContainer;
  v35[4] = &protocol witness table for _UnkeyedDecodingContainer;
  v24 = swift_allocObject();
  v35[0] = v24;
  v25 = v1[1];
  v24[1] = *v1;
  v24[2] = v25;
  v26 = v1[3];
  v27 = v1;
  v24[3] = v1[2];
  v24[4] = v26;
  outlined copy of EncodingGraph.Value(v18, v19, v20, v21);
  outlined init with copy of _UnkeyedDecodingContainer(v40, v34);
  v15 = &v36;
  v28 = v45;
  v29 = _s3XPC13EncodingGraphO5ValueO6decode2as3forS2Sm_AA18_DecodingContainer_pts0H5ErrorOYKF(v35, v9);
  if (v28)
  {
    outlined consume of EncodingGraph.Value(v36, v37, v38, v39);
    (*(v32 + 32))(v33, v9, v4);
    __swift_destroy_boxed_opaque_existential_1(v35);
    return v15;
  }

  v15 = v29;
  v30 = *(&v41 + 1);
  outlined consume of EncodingGraph.Value(v36, v37, v38, v39);
  result = __swift_destroy_boxed_opaque_existential_1(v35);
  if (!__OFADD__(v30, 1))
  {
    *(v27 + 7) = v30 + 1;
    return v15;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t _s3XPC25_UnkeyedDecodingContainerV6decodeyS2fms0C5ErrorOYKF(uint64_t a1)
{
  v4 = type metadata accessor for DecodingError();
  v5 = *(*(v4 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v4);
  v9 = (&v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v1 + 48);
  v40 = *(v1 + 32);
  v41 = v10;
  v11 = *(v1 + 16);
  v39[0] = *v1;
  v39[1] = v11;
  if (__OFSUB__(v10 >> 1, *(&v40 + 1)))
  {
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (*(&v41 + 1) == (v10 >> 1) - *(&v40 + 1))
  {
    v31[3] = &type metadata for _UnkeyedDecodingContainer;
    v31[4] = lazy protocol witness table accessor for type _UnkeyedDecodingContainer and conformance _UnkeyedDecodingContainer();
    v12 = swift_allocObject();
    v31[0] = v12;
    v13 = *(v1 + 16);
    v12[1] = *v1;
    v12[2] = v13;
    v14 = *(v1 + 48);
    v12[3] = *(v1 + 32);
    v12[4] = v14;
    outlined init with copy of _UnkeyedDecodingContainer(v39, v37);
    static DecodingError.dataCorruptedError(in:debugDescription:)();
    __swift_destroy_boxed_opaque_existential_1(v31);
    return swift_willThrowTypedImpl();
  }

  v15 = *(&v41 + 1) + 1;
  if (__OFADD__(*(&v41 + 1), 1))
  {
    goto LABEL_12;
  }

  if (v15 < *(&v40 + 1) || v15 >= (v10 >> 1))
  {
    goto LABEL_13;
  }

  v28 = v7;
  v29 = a1;
  v16 = v40 + 32 * v15;
  v30 = v2;
  v18 = *(v16 + 8);
  v19 = *(v16 + 16);
  v20 = *(v16 + 24);
  v33 = *v16;
  v17 = v33;
  v34 = v18;
  v35 = v19;
  v36 = v20;
  v21 = *(v1 + 16);
  v37[0] = *v1;
  v37[1] = v21;
  v22 = *(v1 + 48);
  v37[2] = *(v1 + 32);
  v38 = v22;
  v32[3] = &type metadata for _UnkeyedDecodingContainer;
  v32[4] = &protocol witness table for _UnkeyedDecodingContainer;
  v23 = swift_allocObject();
  v32[0] = v23;
  v24 = *(v1 + 16);
  v23[1] = *v1;
  v23[2] = v24;
  v25 = *(v1 + 48);
  v23[3] = *(v1 + 32);
  v23[4] = v25;
  outlined copy of EncodingGraph.Value(v17, v18, v19, v20);
  outlined init with copy of _UnkeyedDecodingContainer(v37, v31);
  v26 = v30;
  _s3XPC13EncodingGraphO5ValueO6decode2as3forS2fm_AA18_DecodingContainer_pts0H5ErrorOYKF(v32, v9);
  if (v26)
  {
    outlined consume of EncodingGraph.Value(v33, v34, v35, v36);
    (*(v28 + 32))(v29, v9, v4);
    return __swift_destroy_boxed_opaque_existential_1(v32);
  }

  v27 = *(&v38 + 1);
  outlined consume of EncodingGraph.Value(v33, v34, v35, v36);
  result = __swift_destroy_boxed_opaque_existential_1(v32);
  if (!__OFADD__(v27, 1))
  {
    *(v1 + 56) = v27 + 1;
    return result;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t _s3XPC25_UnkeyedDecodingContainerV6decodeyS2dms0C5ErrorOYKF(uint64_t a1)
{
  v4 = type metadata accessor for DecodingError();
  v5 = *(*(v4 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v4);
  v9 = (&v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v1 + 48);
  v40 = *(v1 + 32);
  v41 = v10;
  v11 = *(v1 + 16);
  v39[0] = *v1;
  v39[1] = v11;
  if (__OFSUB__(v10 >> 1, *(&v40 + 1)))
  {
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (*(&v41 + 1) == (v10 >> 1) - *(&v40 + 1))
  {
    v31[3] = &type metadata for _UnkeyedDecodingContainer;
    v31[4] = lazy protocol witness table accessor for type _UnkeyedDecodingContainer and conformance _UnkeyedDecodingContainer();
    v12 = swift_allocObject();
    v31[0] = v12;
    v13 = *(v1 + 16);
    v12[1] = *v1;
    v12[2] = v13;
    v14 = *(v1 + 48);
    v12[3] = *(v1 + 32);
    v12[4] = v14;
    outlined init with copy of _UnkeyedDecodingContainer(v39, v37);
    static DecodingError.dataCorruptedError(in:debugDescription:)();
    __swift_destroy_boxed_opaque_existential_1(v31);
    return swift_willThrowTypedImpl();
  }

  v15 = *(&v41 + 1) + 1;
  if (__OFADD__(*(&v41 + 1), 1))
  {
    goto LABEL_12;
  }

  if (v15 < *(&v40 + 1) || v15 >= (v10 >> 1))
  {
    goto LABEL_13;
  }

  v28 = v7;
  v29 = a1;
  v16 = v40 + 32 * v15;
  v30 = v2;
  v18 = *(v16 + 8);
  v19 = *(v16 + 16);
  v20 = *(v16 + 24);
  v33 = *v16;
  v17 = v33;
  v34 = v18;
  v35 = v19;
  v36 = v20;
  v21 = *(v1 + 16);
  v37[0] = *v1;
  v37[1] = v21;
  v22 = *(v1 + 48);
  v37[2] = *(v1 + 32);
  v38 = v22;
  v32[3] = &type metadata for _UnkeyedDecodingContainer;
  v32[4] = &protocol witness table for _UnkeyedDecodingContainer;
  v23 = swift_allocObject();
  v32[0] = v23;
  v24 = *(v1 + 16);
  v23[1] = *v1;
  v23[2] = v24;
  v25 = *(v1 + 48);
  v23[3] = *(v1 + 32);
  v23[4] = v25;
  outlined copy of EncodingGraph.Value(v17, v18, v19, v20);
  outlined init with copy of _UnkeyedDecodingContainer(v37, v31);
  v26 = v30;
  _s3XPC13EncodingGraphO5ValueO6decode2as3forS2dm_AA18_DecodingContainer_pts0H5ErrorOYKF(v32, v9);
  if (v26)
  {
    outlined consume of EncodingGraph.Value(v33, v34, v35, v36);
    (*(v28 + 32))(v29, v9, v4);
    return __swift_destroy_boxed_opaque_existential_1(v32);
  }

  v27 = *(&v38 + 1);
  outlined consume of EncodingGraph.Value(v33, v34, v35, v36);
  result = __swift_destroy_boxed_opaque_existential_1(v32);
  if (!__OFADD__(v27, 1))
  {
    *(v1 + 56) = v27 + 1;
    return result;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t _s3XPC25_UnkeyedDecodingContainerV6decodeys4Int8VAFms0C5ErrorOYKFTm(uint64_t a1, uint64_t (*a2)(uint64_t *, char *))
{
  v6 = type metadata accessor for DecodingError();
  v7 = *(*(v6 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v6);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v2[3];
  v45 = v2[2];
  v46 = v12;
  v13 = v2[1];
  v44[0] = *v2;
  v44[1] = v13;
  if (__OFSUB__(v12 >> 1, *(&v45 + 1)))
  {
    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (*(&v46 + 1) == (v12 >> 1) - *(&v45 + 1))
  {
    v36[3] = &type metadata for _UnkeyedDecodingContainer;
    v36[4] = lazy protocol witness table accessor for type _UnkeyedDecodingContainer and conformance _UnkeyedDecodingContainer();
    v14 = swift_allocObject();
    v36[0] = v14;
    v15 = v2[1];
    v14[1] = *v2;
    v14[2] = v15;
    v16 = v2[3];
    v14[3] = v2[2];
    v14[4] = v16;
    v17 = "UnkeyedDecodingContainer";
    outlined init with copy of _UnkeyedDecodingContainer(v44, v42);
    static DecodingError.dataCorruptedError(in:debugDescription:)();
    __swift_destroy_boxed_opaque_existential_1(v36);
    swift_willThrowTypedImpl();
    return v17;
  }

  v18 = *(&v46 + 1) + 1;
  if (__OFADD__(*(&v46 + 1), 1))
  {
    goto LABEL_13;
  }

  if (v18 < *(&v45 + 1) || v18 >= (v12 >> 1))
  {
    goto LABEL_14;
  }

  v33 = v9;
  v34 = a1;
  v19 = v45 + 32 * v18;
  v47 = v3;
  v20 = *v19;
  v21 = *(v19 + 8);
  v22 = *(v19 + 16);
  v35 = a2;
  v23 = *(v19 + 24);
  v38 = v20;
  v39 = v21;
  v40 = v22;
  v41 = v23;
  v24 = v2[1];
  v42[0] = *v2;
  v42[1] = v24;
  v25 = v2[3];
  v42[2] = v2[2];
  v43 = v25;
  v37[3] = &type metadata for _UnkeyedDecodingContainer;
  v37[4] = &protocol witness table for _UnkeyedDecodingContainer;
  v26 = swift_allocObject();
  v37[0] = v26;
  v27 = v2[1];
  v26[1] = *v2;
  v26[2] = v27;
  v28 = v2[3];
  v29 = v2;
  v26[3] = v2[2];
  v26[4] = v28;
  outlined copy of EncodingGraph.Value(v20, v21, v22, v23);
  outlined init with copy of _UnkeyedDecodingContainer(v42, v36);
  v17 = &v38;
  v30 = v47;
  v31 = v35(v37, v11);
  if (v30)
  {
    outlined consume of EncodingGraph.Value(v38, v39, v40, v41);
    (*(v33 + 32))(v34, v11, v6);
    __swift_destroy_boxed_opaque_existential_1(v37);
    return v17;
  }

  v17 = v31;
  v32 = *(&v43 + 1);
  outlined consume of EncodingGraph.Value(v38, v39, v40, v41);
  result = __swift_destroy_boxed_opaque_existential_1(v37);
  if (!__OFADD__(v32, 1))
  {
    *(v29 + 7) = v32 + 1;
    return v17;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t _s3XPC25_UnkeyedDecodingContainerV6decodeys5Int16VAFms0C5ErrorOYKFTm(uint64_t a1, uint64_t (*a2)(uint64_t *, char *))
{
  v6 = type metadata accessor for DecodingError();
  v7 = *(*(v6 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v6);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v2[3];
  v45 = v2[2];
  v46 = v12;
  v13 = v2[1];
  v44[0] = *v2;
  v44[1] = v13;
  if (__OFSUB__(v12 >> 1, *(&v45 + 1)))
  {
    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (*(&v46 + 1) == (v12 >> 1) - *(&v45 + 1))
  {
    v36[3] = &type metadata for _UnkeyedDecodingContainer;
    v36[4] = lazy protocol witness table accessor for type _UnkeyedDecodingContainer and conformance _UnkeyedDecodingContainer();
    v14 = swift_allocObject();
    v36[0] = v14;
    v15 = v2[1];
    v14[1] = *v2;
    v14[2] = v15;
    v16 = v2[3];
    v14[3] = v2[2];
    v14[4] = v16;
    v17 = "UnkeyedDecodingContainer";
    outlined init with copy of _UnkeyedDecodingContainer(v44, v42);
    static DecodingError.dataCorruptedError(in:debugDescription:)();
    __swift_destroy_boxed_opaque_existential_1(v36);
    swift_willThrowTypedImpl();
    return v17;
  }

  v18 = *(&v46 + 1) + 1;
  if (__OFADD__(*(&v46 + 1), 1))
  {
    goto LABEL_13;
  }

  if (v18 < *(&v45 + 1) || v18 >= (v12 >> 1))
  {
    goto LABEL_14;
  }

  v33 = v9;
  v34 = a1;
  v19 = v45 + 32 * v18;
  v47 = v3;
  v20 = *v19;
  v21 = *(v19 + 8);
  v22 = *(v19 + 16);
  v35 = a2;
  v23 = *(v19 + 24);
  v38 = v20;
  v39 = v21;
  v40 = v22;
  v41 = v23;
  v24 = v2[1];
  v42[0] = *v2;
  v42[1] = v24;
  v25 = v2[3];
  v42[2] = v2[2];
  v43 = v25;
  v37[3] = &type metadata for _UnkeyedDecodingContainer;
  v37[4] = &protocol witness table for _UnkeyedDecodingContainer;
  v26 = swift_allocObject();
  v37[0] = v26;
  v27 = v2[1];
  v26[1] = *v2;
  v26[2] = v27;
  v28 = v2[3];
  v29 = v2;
  v26[3] = v2[2];
  v26[4] = v28;
  outlined copy of EncodingGraph.Value(v20, v21, v22, v23);
  outlined init with copy of _UnkeyedDecodingContainer(v42, v36);
  v17 = &v38;
  v30 = v47;
  v31 = v35(v37, v11);
  if (v30)
  {
    outlined consume of EncodingGraph.Value(v38, v39, v40, v41);
    (*(v33 + 32))(v34, v11, v6);
    __swift_destroy_boxed_opaque_existential_1(v37);
    return v17;
  }

  v17 = v31;
  v32 = *(&v43 + 1);
  outlined consume of EncodingGraph.Value(v38, v39, v40, v41);
  result = __swift_destroy_boxed_opaque_existential_1(v37);
  if (!__OFADD__(v32, 1))
  {
    *(v29 + 7) = v32 + 1;
    return v17;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t _s3XPC25_UnkeyedDecodingContainerV6decodeys5Int32VAFms0C5ErrorOYKFTm(uint64_t a1, uint64_t (*a2)(uint64_t *, char *))
{
  v6 = type metadata accessor for DecodingError();
  v7 = *(*(v6 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v6);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v2[3];
  v45 = v2[2];
  v46 = v12;
  v13 = v2[1];
  v44[0] = *v2;
  v44[1] = v13;
  if (__OFSUB__(v12 >> 1, *(&v45 + 1)))
  {
    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (*(&v46 + 1) == (v12 >> 1) - *(&v45 + 1))
  {
    v36[3] = &type metadata for _UnkeyedDecodingContainer;
    v36[4] = lazy protocol witness table accessor for type _UnkeyedDecodingContainer and conformance _UnkeyedDecodingContainer();
    v14 = swift_allocObject();
    v36[0] = v14;
    v15 = v2[1];
    v14[1] = *v2;
    v14[2] = v15;
    v16 = v2[3];
    v14[3] = v2[2];
    v14[4] = v16;
    v17 = "UnkeyedDecodingContainer";
    outlined init with copy of _UnkeyedDecodingContainer(v44, v42);
    static DecodingError.dataCorruptedError(in:debugDescription:)();
    __swift_destroy_boxed_opaque_existential_1(v36);
    swift_willThrowTypedImpl();
    return v17;
  }

  v18 = *(&v46 + 1) + 1;
  if (__OFADD__(*(&v46 + 1), 1))
  {
    goto LABEL_13;
  }

  if (v18 < *(&v45 + 1) || v18 >= (v12 >> 1))
  {
    goto LABEL_14;
  }

  v33 = v9;
  v34 = a1;
  v19 = v45 + 32 * v18;
  v47 = v3;
  v20 = *v19;
  v21 = *(v19 + 8);
  v22 = *(v19 + 16);
  v35 = a2;
  v23 = *(v19 + 24);
  v38 = v20;
  v39 = v21;
  v40 = v22;
  v41 = v23;
  v24 = v2[1];
  v42[0] = *v2;
  v42[1] = v24;
  v25 = v2[3];
  v42[2] = v2[2];
  v43 = v25;
  v37[3] = &type metadata for _UnkeyedDecodingContainer;
  v37[4] = &protocol witness table for _UnkeyedDecodingContainer;
  v26 = swift_allocObject();
  v37[0] = v26;
  v27 = v2[1];
  v26[1] = *v2;
  v26[2] = v27;
  v28 = v2[3];
  v29 = v2;
  v26[3] = v2[2];
  v26[4] = v28;
  outlined copy of EncodingGraph.Value(v20, v21, v22, v23);
  outlined init with copy of _UnkeyedDecodingContainer(v42, v36);
  v17 = &v38;
  v30 = v47;
  v31 = v35(v37, v11);
  if (v30)
  {
    outlined consume of EncodingGraph.Value(v38, v39, v40, v41);
    (*(v33 + 32))(v34, v11, v6);
    __swift_destroy_boxed_opaque_existential_1(v37);
    return v17;
  }

  v17 = v31;
  v32 = *(&v43 + 1);
  outlined consume of EncodingGraph.Value(v38, v39, v40, v41);
  result = __swift_destroy_boxed_opaque_existential_1(v37);
  if (!__OFADD__(v32, 1))
  {
    *(v29 + 7) = v32 + 1;
    return v17;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t _s3XPC25_UnkeyedDecodingContainerV10_container33_1016890FE93F2D24F6CF826DE25716D5LL_7forTypexxm_ypXpSgts0C5ErrorOYKAA01_cD0RzlFAC_Tt1g5@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _OWORD *a3@<X8>)
{
  v60 = a1;
  v7 = type metadata accessor for DecodingError();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v43 - v14;
  result = MEMORY[0x1EEE9AC00](v13);
  v18 = &v43 - v17;
  v19 = v3[3];
  v58 = v3[2];
  v59 = v19;
  v20 = v3[1];
  v56 = *v3;
  v57 = v20;
  if (__OFSUB__(v19 >> 1, *(&v58 + 1)))
  {
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    return result;
  }

  if (*(&v59 + 1) == (v59 >> 1) - *(&v58 + 1))
  {
    v53 = &type metadata for _UnkeyedDecodingContainer;
    v54 = lazy protocol witness table accessor for type _UnkeyedDecodingContainer and conformance _UnkeyedDecodingContainer();
    v21 = swift_allocObject();
    *&v52 = v21;
    v22 = v3[1];
    v21[1] = *v3;
    v21[2] = v22;
    v23 = v3[3];
    v21[3] = v3[2];
    v21[4] = v23;
    outlined init with copy of _UnkeyedDecodingContainer(&v56, &v49);
    static DecodingError.dataCorruptedError(in:debugDescription:)();
    __swift_destroy_boxed_opaque_existential_1(&v52);
    swift_willThrowTypedImpl();
    return (*(v8 + 32))(a2, v18, v7);
  }

  v24 = *(&v59 + 1) + 1;
  if (__OFADD__(*(&v59 + 1), 1))
  {
    goto LABEL_14;
  }

  if (v24 < *(&v58 + 1) || v24 >= (v59 >> 1))
  {
    goto LABEL_15;
  }

  v43 = a3;
  v46 = v7;
  v47 = a2;
  v45 = *(&v56 + 1);
  v48 = v56;
  v44 = v57;
  v25 = v58 + 32 * v24;
  v27 = *v25;
  v26 = *(v25 + 8);
  v28 = *(v25 + 16);
  v29 = *(v25 + 24);
  *(v3 + 7) = v24;
  *&v49 = v27;
  *(&v49 + 1) = v26;
  *&v50 = v28;
  BYTE8(v50) = v29;
  outlined copy of EncodingGraph.Value(v27, v26, v28, v29);
  _s3XPC13EncodingGraphO5ValueO19unwrapIntoContainerAC0G0_pyAA18EarlyDecodingErrorVYKF();
  v31 = v30;
  if (v4)
  {

    v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
    v33 = v47;
    *v47 = &type metadata for _UnkeyedDecodingContainer;
    *&v49 = 0;
    *(&v49 + 1) = 0xE000000000000000;

    _StringGuts.grow(_:)(16);
    v52 = v49;
    MEMORY[0x19A8E8E70](0x20646E756F46, 0xE600000000000000);
    *&v49 = v27;
    *(&v49 + 1) = v26;
    *&v50 = v28;
    BYTE8(v50) = v29;
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x19A8E8E70](0x64616574736E6920, 0xE800000000000000);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(v8 + 104))(v33, *MEMORY[0x1E69E6AF8], v46);
    swift_willThrowTypedImpl();
    return outlined consume of EncodingGraph.Value(v27, v26, v28, v29);
  }

  else
  {
    v51 = 0;
    v50 = 0u;
    v49 = 0u;
    v34 = v60;
    v60 = 0;
    v48 = CodingInfo.coding(forKey:forType:)(&v49, v34, v48);
    v45 = v35;
    v44 = v36;
    outlined destroy of [CodingKey](&v49, &_ss9CodingKey_pSgMd, &_ss9CodingKey_pSgMR);
    v37 = v60;
    _s3XPC25_UnkeyedDecodingContainerV10codingInfo9containerAcA06CodingF0V_AA13EncodingGraphO0D0_pts0C5ErrorOYKcfC(v48, v45, v44, v31, v12, v55);
    if (v37)
    {
      outlined consume of EncodingGraph.Value(v27, v26, v28, v29);
      v38 = *(v8 + 32);
      v39 = v46;
      v38(v15, v12, v46);
      return (v38)(v47, v15, v39);
    }

    else
    {
      result = outlined consume of EncodingGraph.Value(v27, v26, v28, v29);
      v40 = v55[1];
      v41 = v43;
      *v43 = v55[0];
      v41[1] = v40;
      v42 = v55[3];
      v41[2] = v55[2];
      v41[3] = v42;
    }
  }

  return result;
}

uint64_t protocol witness for UnkeyedDecodingContainer.decodeIfPresent(_:) in conformance _UnkeyedDecodingContainer()
{
  return UnkeyedDecodingContainer.decodeIfPresent(_:)();
}

{
  return UnkeyedDecodingContainer.decodeIfPresent(_:)();
}

{
  result = UnkeyedDecodingContainer.decodeIfPresent(_:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

{
  result = UnkeyedDecodingContainer.decodeIfPresent(_:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

{
  result = UnkeyedDecodingContainer.decodeIfPresent(_:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

{
  result = UnkeyedDecodingContainer.decodeIfPresent(_:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

{
  result = UnkeyedDecodingContainer.decodeIfPresent(_:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t protocol witness for UnkeyedDecodingContainer.decodeIfPresent(_:) in conformance _UnkeyedDecodingContainer(uint64_t a1, uint64_t a2)
{
  return protocol witness for UnkeyedDecodingContainer.decodeIfPresent(_:) in conformance _UnkeyedDecodingContainer(a1, a2, MEMORY[0x1E69E6FA8]);
}

{
  return protocol witness for UnkeyedDecodingContainer.decodeIfPresent(_:) in conformance _UnkeyedDecodingContainer(a1, a2, MEMORY[0x1E69E6FB0]);
}

{
  return protocol witness for UnkeyedDecodingContainer.decodeIfPresent(_:) in conformance _UnkeyedDecodingContainer(a1, a2, MEMORY[0x1E69E6FB8]);
}

{
  return protocol witness for UnkeyedDecodingContainer.decodeIfPresent(_:) in conformance _UnkeyedDecodingContainer(a1, a2, MEMORY[0x1E69E6FC0]);
}

{
  return protocol witness for UnkeyedDecodingContainer.decodeIfPresent(_:) in conformance _UnkeyedDecodingContainer(a1, a2, MEMORY[0x1E69E6FD0]);
}

{
  return protocol witness for UnkeyedDecodingContainer.decodeIfPresent(_:) in conformance _UnkeyedDecodingContainer(a1, a2, MEMORY[0x1E69E6FC8]);
}

{
  return protocol witness for UnkeyedDecodingContainer.decodeIfPresent(_:) in conformance _UnkeyedDecodingContainer(a1, a2, MEMORY[0x1E69E6FD8]);
}

{
  return protocol witness for UnkeyedDecodingContainer.decodeIfPresent(_:) in conformance _UnkeyedDecodingContainer(a1, a2, MEMORY[0x1E69E6FE0]);
}

{
  return protocol witness for UnkeyedDecodingContainer.decodeIfPresent(_:) in conformance _UnkeyedDecodingContainer(a1, a2, MEMORY[0x1E69E6FE8]);
}

uint64_t protocol witness for UnkeyedDecodingContainer.decodeIfPresent(_:) in conformance _UnkeyedDecodingContainer(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  return a3() & 0x1FF;
}

{
  return a3() & 0x1FFFF;
}

{
  v3 = a3();
  return v3 | ((HIDWORD(v3) & 1) << 32);
}

{
  result = a3();
  if (v3)
  {
    return v5;
  }

  return result;
}

uint64_t *protocol witness for UnkeyedDecodingContainer.nestedUnkeyedContainer() in conformance _UnkeyedDecodingContainer@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = type metadata accessor for DecodingError();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = (&v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  a3[3] = a1;
  a3[4] = a2;
  v12 = swift_allocObject();
  *a3 = v12;
  result = _s3XPC25_UnkeyedDecodingContainerV10_container33_1016890FE93F2D24F6CF826DE25716D5LL_7forTypexxm_ypXpSgts0C5ErrorOYKAA01_cD0RzlFAC_Tt1g5(0, v11, (v12 + 16));
  if (v3)
  {
    swift_allocError();
    (*(v8 + 32))(v14, v11, v7);
    return __swift_deallocate_boxed_opaque_existential_1(a3);
  }

  return result;
}

double protocol witness for UnkeyedDecodingContainer.superDecoder() in conformance _UnkeyedDecodingContainer@<D0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for DecodingError();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = (&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  a1[3] = &type metadata for _TopLevelDecoder;
  a1[4] = lazy protocol witness table accessor for type _TopLevelDecoder and conformance _TopLevelDecoder();
  v8 = swift_allocObject();
  *a1 = v8;
  _s3XPC25_UnkeyedDecodingContainerV10_container33_1016890FE93F2D24F6CF826DE25716D5LL_7forTypexxm_ypXpSgts0C5ErrorOYKAA01_cD0RzlFAA16_TopLevelDecoderV_Tt1g5(0, v7, v13);
  if (v1)
  {
    swift_allocError();
    (*(v4 + 32))(v9, v7, v3);
    __swift_deallocate_boxed_opaque_existential_1(a1);
  }

  else
  {
    result = *v13;
    v11 = v13[1];
    *(v8 + 16) = v13[0];
    *(v8 + 32) = v11;
    *(v8 + 48) = v14;
  }

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

uint64_t getEnumTagSinglePayload for _UnkeyedDecodingContainer(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t storeEnumTagSinglePayload for _UnkeyedDecodingContainer(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id XPC_BOOL_TRUE.getter(uint64_t (*a1)(void))
{
  result = a1();
  if (!result)
  {
    __break(1u);
  }

  return result;
}

xpc_session_t xpc_session_create_xpc_service(_:_:_:_:)(const char *a1, void *a2, xpc_session_create_flags_t *a3, xpc_rich_error_t *a4)
{
  xpc_service_0 = _swift_xpc_session_create_xpc_service_0(a1, a2, *a3, a4);

  return xpc_service_0;
}

xpc_session_t _swift_xpc_session_create_xpc_service_0(const char *a1, void *a2, xpc_session_create_flags_t a3, xpc_rich_error_t *a4)
{
  v7 = a2;
  xpc_service = xpc_session_create_xpc_service(a1, v7, a3, a4);

  return xpc_service;
}

xpc_session_t xpc_session_create_mach_service(_:_:_:_:)(const char *a1, void *a2, xpc_session_create_flags_t *a3, xpc_rich_error_t *a4)
{
  mach_service_0 = _swift_xpc_session_create_mach_service_0(a1, a2, *a3, a4);

  return mach_service_0;
}

uint64_t xpc_session_set_incoming_message_handler(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, void *))
{
  v9[4] = a2;
  v9[5] = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed (@guaranteed OS_xpc_object) -> ();
  v9[3] = a4;
  v7 = _Block_copy(v9);
  swift_unknownObjectRetain();

  a5(a1, v7);
  _Block_release(v7);
  return swift_unknownObjectRelease();
}

xpc_rich_error_t xpc_session_send_message(_:_:)(void *a1, void *a2)
{
  v2 = _swift_xpc_session_send_message(a1, a2);

  return v2;
}

id xpc_session_send_message_with_reply_sync(_:_:_:)(void *a1, void *a2, xpc_rich_error_t *a3)
{
  v3 = _swift_xpc_session_send_message_with_reply_sync(a1, a2, a3);

  return v3;
}

uint64_t xpc_session_send_message_with_reply_async(_:_:_:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8[4] = a3;
  v8[5] = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = thunk for @escaping @callee_guaranteed (@guaranteed OS_xpc_object?, @guaranteed OS_xpc_object?) -> ();
  v8[3] = &block_descriptor_6;
  v6 = _Block_copy(v8);
  swift_unknownObjectRetain();

  _swift_xpc_session_send_message_with_reply_async(a1, a2, v6);
  _Block_release(v6);
  return swift_unknownObjectRelease();
}

void xpc_listener_copy_description(_:)()
{
  _StringGuts.grow(_:)(77);
  MEMORY[0x19A8E8E70](0x5041204320435058, 0xEA00000000002049);
  v0 = StaticString.description.getter();
  MEMORY[0x19A8E8E70](v0);

  MEMORY[0x19A8E8E70](0xD000000000000041, 0x80000001979387B0);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void xpc_listener_create(_:_:_:_:_:)()
{
  _StringGuts.grow(_:)(77);
  MEMORY[0x19A8E8E70](0x5041204320435058, 0xEA00000000002049);
  v0 = StaticString.description.getter();
  MEMORY[0x19A8E8E70](v0);

  MEMORY[0x19A8E8E70](0xD000000000000041, 0x80000001979387B0);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void xpc_listener_activate(_:_:)()
{
  _StringGuts.grow(_:)(77);
  MEMORY[0x19A8E8E70](0x5041204320435058, 0xEA00000000002049);
  v0 = StaticString.description.getter();
  MEMORY[0x19A8E8E70](v0);

  MEMORY[0x19A8E8E70](0xD000000000000041, 0x80000001979387B0);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void xpc_listener_cancel(_:)()
{
  _StringGuts.grow(_:)(77);
  MEMORY[0x19A8E8E70](0x5041204320435058, 0xEA00000000002049);
  v0 = StaticString.description.getter();
  MEMORY[0x19A8E8E70](v0);

  MEMORY[0x19A8E8E70](0xD000000000000041, 0x80000001979387B0);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void xpc_listener_reject_peer(_:_:)()
{
  _StringGuts.grow(_:)(77);
  MEMORY[0x19A8E8E70](0x5041204320435058, 0xEA00000000002049);
  v0 = StaticString.description.getter();
  MEMORY[0x19A8E8E70](v0);

  MEMORY[0x19A8E8E70](0xD000000000000041, 0x80000001979387B0);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id xpc_retain(_:)(void *a1)
{
  result = _swift_xpc_retain(a1);
  if (!result)
  {
    __break(1u);
  }

  return result;
}

id _swift_xpc_retain(void *a1)
{
  v1 = a1;
  v2 = xpc_retain(v1);

  return v2;
}

void _swift_xpc_release(void *a1)
{
  v1 = a1;
  xpc_release(v1);
}

unint64_t lazy protocol witness table accessor for type xpc_session_create_flags_t and conformance xpc_session_create_flags_t()
{
  result = lazy protocol witness table cache variable for type xpc_session_create_flags_t and conformance xpc_session_create_flags_t;
  if (!lazy protocol witness table cache variable for type xpc_session_create_flags_t and conformance xpc_session_create_flags_t)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type xpc_session_create_flags_t and conformance xpc_session_create_flags_t);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type xpc_session_create_flags_t and conformance xpc_session_create_flags_t;
  if (!lazy protocol witness table cache variable for type xpc_session_create_flags_t and conformance xpc_session_create_flags_t)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type xpc_session_create_flags_t and conformance xpc_session_create_flags_t);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type xpc_session_create_flags_t and conformance xpc_session_create_flags_t;
  if (!lazy protocol witness table cache variable for type xpc_session_create_flags_t and conformance xpc_session_create_flags_t)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type xpc_session_create_flags_t and conformance xpc_session_create_flags_t);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type xpc_session_create_flags_t and conformance xpc_session_create_flags_t;
  if (!lazy protocol witness table cache variable for type xpc_session_create_flags_t and conformance xpc_session_create_flags_t)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type xpc_session_create_flags_t and conformance xpc_session_create_flags_t);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for xpc_listener_create_flags_t(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for xpc_listener_create_flags_t(_WORD *result, int a2, int a3)
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

uint64_t static CodingUserInfoKey.xpcCodable.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for xpcCodable != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for CodingUserInfoKey();
  v3 = __swift_project_value_buffer(v2, static CodingUserInfoKey.xpcCodable);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
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

uint64_t getEnumTagSinglePayload for _TopLevelDecoder(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t storeEnumTagSinglePayload for _TopLevelDecoder(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t XPCDictionary.init(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = MEMORY[0x19A8E9F90]();
  if (result == MEMORY[0x1E69E9E80])
  {
    *a2 = a1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t XPCDictionary.reply(_:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;
  result = xpc_dictionary_expects_reply();
  if (result)
  {

    return xpc_dictionary_send_reply_4SWIFT();
  }

  return result;
}

uint64_t _sSq7flatMapyqd_0_SgABxqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v30 = a5;
  v31 = a2;
  v32 = a1;
  v29 = *(a3 - 8);
  v10 = *(v29 + 64);
  v11 = (MEMORY[0x1EEE9AC00])();
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 16);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v11);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v24 = &v28 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v24, v26);
  if ((*(v16 + 48))(v24, 1, v15) == 1)
  {
    return (*(*(a4 - 8) + 56))(a6, 1, 1, a4);
  }

  (*(v16 + 32))(v20, v24, v15);
  v32(v20, v13);
  result = (*(v16 + 8))(v20, v15);
  if (v6)
  {
    return (*(v29 + 32))(v30, v13, a3);
  }

  return result;
}

uint64_t _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v29 = a5;
  v30 = a2;
  v32 = a4;
  v31 = a1;
  v28 = *(a3 - 8);
  v10 = *(v28 + 64);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 16);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v11);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v24 = &v28 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v24, v6);
  v26 = 1;
  if ((*(v16 + 48))(v24, 1, v15) != 1)
  {
    (*(v16 + 32))(v20, v24, v15);
    v31(v20, v13);
    (*(v16 + 8))(v20, v15);
    if (v7)
    {
      return (*(v28 + 32))(v29, v13, a3);
    }

    v26 = 0;
  }

  return (*(*(v32 - 8) + 56))(a6, v26, 1);
}

uint64_t specialized String.withCString<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void **a5)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    *key = a1;
    v12 = a2 & 0xFFFFFFFFFFFFFFLL;
    if (a4)
    {
      v7 = key;
      goto LABEL_8;
    }

    v8 = *a5;
    v9 = key;
LABEL_11:
    xpc_dictionary_set_value(v8, v9, 0);
  }

  if ((a1 & 0x1000000000000000) == 0)
  {
LABEL_13:
    _StringGuts._slowWithCString<A>(_:)();
  }

  v6 = a2 & 0xFFFFFFFFFFFFFFFLL;
  if (!a4)
  {
    v8 = *a5;
    v9 = (v6 + 32);
    goto LABEL_11;
  }

  v7 = (v6 + 32);
LABEL_8:
  specialized String.withCString<A>(_:)(a3, a4, a5, v7);
}

void specialized String.withCString<A>(_:)(uint64_t a1, uint64_t a2, void **a3, char *key)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      *string = a1;
      v7 = a2 & 0xFFFFFFFFFFFFFFLL;
      v4 = *a3;
      v5 = string;
      goto LABEL_6;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = *a3;
      v5 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
LABEL_6:
      xpc_dictionary_set_string(v4, key, v5);
      return;
    }
  }

  _StringGuts._slowWithCString<A>(_:)();
}

uint64_t specialized String.withCString<A>(_:)(uint64_t a1, uint64_t a2, void **a3, uint64_t a4)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    *key = a1;
    v10 = a2 & 0xFFFFFFFFFFFFFFLL;
    v5 = *a3;
    v6 = *(a4 + 16);
    v7 = key;
    goto LABEL_6;
  }

  if ((a1 & 0x1000000000000000) == 0)
  {
LABEL_8:
    _StringGuts._slowWithCString<A>(_:)();
  }

  v5 = *a3;
  v6 = *(a4 + 16);
  v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
LABEL_6:
  xpc_dictionary_set_data(v5, v7, (a4 + 32), v6);
}

uint64_t specialized Array.reserveCapacity(_:)(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
      v6 = *(v5 + 16);
LABEL_14:
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v3 = result;
      goto LABEL_15;
    }

LABEL_10:
    if (v3 < 0)
    {
      v7 = v3;
    }

    else
    {
      v7 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    MEMORY[0x19A8E9130](v7);
    goto LABEL_14;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
  if (a1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_9;
  }

LABEL_15:
  *v1 = v3;
  return result;
}

xpc_object_t XPCDictionary.init()@<X0>(void *a1@<X8>)
{
  result = xpc_dictionary_create_empty();
  *a1 = result;
  return result;
}

uint64_t XPCDictionary.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v11 = *v5;
  swift_unknownObjectRetain();
  v12 = specialized String.withCString<A>(_:)(a1, a2, v11);
  swift_unknownObjectRelease();
  if (v12)
  {
    v13 = MEMORY[0x19A8E9F90](v12);
    if (v13 == MEMORY[0x1E69E9EB0])
    {
      xpc_int64_get_value(v12);
      v16 = *(a4 + 24);
      lazy protocol witness table accessor for type Int64 and conformance Int64();
    }

    else
    {
      if (v13 != MEMORY[0x1E69E9F18])
      {
        if (v13 == MEMORY[0x1E69E9E88])
        {
          xpc_double_get_value(v12);
          lazy protocol witness table accessor for type Double and conformance Double();
          dispatch thunk of BinaryInteger.init<A>(exactly:)();
        }

        else
        {
          (*(*(a3 - 8) + 56))(a5, 1, 1, a3);
        }

        return swift_unknownObjectRelease();
      }

      xpc_uint64_get_value(v12);
      v17 = *(a4 + 24);
      lazy protocol witness table accessor for type UInt64 and conformance UInt64();
    }

    dispatch thunk of Numeric.init<A>(exactly:)();
    return swift_unknownObjectRelease();
  }

  v15 = *(*(a3 - 8) + 56);

  return v15(a5, 1, 1, a3);
}

{
  v11 = *v5;
  swift_unknownObjectRetain();
  v12 = specialized String.withCString<A>(_:)(a1, a2, v11);
  swift_unknownObjectRelease();
  if (v12)
  {
    v13 = MEMORY[0x19A8E9F90](v12);
    if (v13 == MEMORY[0x1E69E9EB0])
    {
      xpc_int64_get_value(v12);
      v16 = *(a4 + 16);
      lazy protocol witness table accessor for type Int64 and conformance Int64();
    }

    else
    {
      if (v13 != MEMORY[0x1E69E9F18])
      {
        if (v13 == MEMORY[0x1E69E9E88])
        {
          xpc_double_get_value(v12);
          lazy protocol witness table accessor for type Double and conformance Double();
          dispatch thunk of BinaryFloatingPoint.init<A>(exactly:)();
        }

        else
        {
          (*(*(a3 - 8) + 56))(a5, 1, 1, a3);
        }

        return swift_unknownObjectRelease();
      }

      xpc_uint64_get_value(v12);
      v17 = *(a4 + 16);
      lazy protocol witness table accessor for type UInt64 and conformance UInt64();
    }

    dispatch thunk of FloatingPoint.init<A>(exactly:)();
    return swift_unknownObjectRelease();
  }

  v15 = *(*(a3 - 8) + 56);

  return v15(a5, 1, 1, a3);
}

id XPCDictionary.subscript.getter(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  swift_unknownObjectRetain();
  v6 = specialized String.withCString<A>(_:)(a1, a2, v5);
  swift_unknownObjectRelease();
  return v6;
}

uint64_t XPCDictionary.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return XPCDictionary.subscript.setter(a1, a2, a3, a4, a5, partial apply for implicit closure #1 in XPCDictionary.subscript.setter, MEMORY[0x1E69E7360], MEMORY[0x1E69E9F90]);
}

{
  return XPCDictionary.subscript.setter(a1, a2, a3, a4, a5, partial apply for implicit closure #1 in XPCDictionary.subscript.setter, MEMORY[0x1E69E76D8], MEMORY[0x1E69E9FA0]);
}

{
  v6 = v5;
  v15[2] = a4;
  v15[3] = a5;
  v10 = type metadata accessor for Optional();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13OS_xpc_object_pMd, &_sSo13OS_xpc_object_pMR);
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in XPCDictionary.subscript.setter, v15, MEMORY[0x1E69E73E0], v11, v12, &v16);
  v13 = v16;
  if (v16)
  {
    swift_unknownObjectRetain();
    specialized String.withCString<A>(_:)(a2, a3, v13, v6);

    swift_unknownObjectRelease();
    return (*(*(v10 - 8) + 8))(a1, v10);
  }

  else
  {
    (*(*(v10 - 8) + 8))(a1, v10);
  }
}

uint64_t implicit closure #1 in XPCDictionary.subscript.setter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v34 = a4;
  v6 = *(a3 + 8);
  v7 = *(*(v6 + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(*(AssociatedTypeWitness - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = *(a2 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v32[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v32[-v16];
  (*(v11 + 16))(&v32[-v16], a1, a2);
  if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0 || dispatch thunk of BinaryInteger.bitWidth.getter() < 65)
  {
    goto LABEL_14;
  }

  v35 = 0x8000000000000000;
  if (dispatch thunk of static BinaryInteger.isSigned.getter())
  {
    if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
    {
      goto LABEL_13;
    }

    goto LABEL_8;
  }

  v33 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v18 = dispatch thunk of BinaryInteger.bitWidth.getter();
  if ((v33 & 1) == 0)
  {
    if (v18 >= 64)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (v18 > 64)
  {
LABEL_8:
    lazy protocol witness table accessor for type Int64 and conformance Int64();
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v19 = *(*(v6 + 32) + 8);
    v20 = dispatch thunk of static Comparable.< infix(_:_:)();
    v21 = *(v11 + 8);
    v21(v15, a2);
    if (v20)
    {
      goto LABEL_18;
    }

LABEL_14:
    if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64 && (dispatch thunk of BinaryInteger.bitWidth.getter() != 64 || (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0))
    {
      goto LABEL_24;
    }

    v35 = 0x7FFFFFFFFFFFFFFFLL;
    v24 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v25 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v24)
    {
      if (v25 > 64)
      {
        goto LABEL_17;
      }
    }

    else if (v25 > 63)
    {
LABEL_17:
      lazy protocol witness table accessor for type Int64 and conformance Int64();
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v26 = *(*(v6 + 32) + 8);
      v27 = dispatch thunk of static Comparable.< infix(_:_:)();
      v21 = *(v11 + 8);
      v21(v15, a2);
      if (v27)
      {
        goto LABEL_18;
      }

LABEL_24:
      v29 = dispatch thunk of BinaryInteger._lowWord.getter();
      result = (*(v11 + 8))(v17, a2);
      v30 = 0;
      goto LABEL_25;
    }

    dispatch thunk of BinaryInteger._lowWord.getter();
    goto LABEL_24;
  }

  swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  v22 = *(*(v6 + 32) + 8);
  v23 = dispatch thunk of static Comparable.< infix(_:_:)();
  v21 = *(v11 + 8);
  v21(v15, a2);
  if ((v23 & 1) == 0)
  {
LABEL_13:
    dispatch thunk of BinaryInteger._lowWord.getter();
    goto LABEL_14;
  }

LABEL_18:
  result = (v21)(v17, a2);
  v29 = 0;
  v30 = 1;
LABEL_25:
  v31 = v34;
  *v34 = v29;
  *(v31 + 8) = v30;
  return result;
}

{
  v39 = a4;
  v6 = *(a3 + 8);
  v40 = *(*(v6 + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(*(AssociatedTypeWitness - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = (&v36 - v10);
  v12 = *(a2 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v9);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v36 - v17;
  (*(v12 + 16))(&v36 - v17, a1, a2);
  if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0 || (swift_getAssociatedConformanceWitness(), dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)(), dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)(), v19 = *(*(v6 + 32) + 8), v20 = dispatch thunk of static Comparable.< infix(_:_:)(), v38 = *(v12 + 8), v38(v16, a2), (v20 & 1) == 0))
  {
    v38 = v11;
    if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
    {
      goto LABEL_15;
    }

    v41 = -1;
    v22 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v23 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v22)
    {
      v24 = v12;
      if (v23 > 64)
      {
        lazy protocol witness table accessor for type UInt64 and conformance UInt64();
        v25 = v16;
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v26 = *(*(v6 + 32) + 8);
        v27 = dispatch thunk of static Comparable.< infix(_:_:)();
        goto LABEL_10;
      }

      swift_getAssociatedConformanceWitness();
      v37 = v12;
      dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
      v32 = v16;
      dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
      v33 = *(*(v6 + 32) + 8);
      v34 = dispatch thunk of static Comparable.> infix(_:_:)();
      (*(v37 + 8))(v32, a2);
      if ((v34 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    else if (v23 >= 65)
    {
      lazy protocol witness table accessor for type UInt64 and conformance UInt64();
      v25 = v16;
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v28 = *(*(v6 + 32) + 8);
      v27 = dispatch thunk of static Comparable.< infix(_:_:)();
      v24 = v12;
LABEL_10:
      v29 = *(v24 + 8);
      v29(v25, a2);
      if (v27)
      {
        result = (v29)(v18, a2);
        goto LABEL_12;
      }

LABEL_15:
      v30 = dispatch thunk of BinaryInteger._lowWord.getter();
      result = (*(v12 + 8))(v18, a2);
      v31 = 0;
      goto LABEL_16;
    }

    dispatch thunk of BinaryInteger._lowWord.getter();
    goto LABEL_15;
  }

  result = (v38)(v18, a2);
LABEL_12:
  v30 = 0;
  v31 = 1;
LABEL_16:
  v35 = v39;
  *v39 = v30;
  *(v35 + 8) = v31;
  return result;
}

uint64_t XPCDictionary.subscript.setter(_xpc_connection_s *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    swift_unknownObjectRetain();
    specialized String.withCString<A>(_:)(a2, a3, a1, v3);
    swift_unknownObjectRelease();
  }
}

void (*XPCDictionary.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t **a1, char a2)
{
  v11 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(0x48uLL);
  }

  v13 = v12;
  *a1 = v12;
  v12[3] = a5;
  v12[4] = v5;
  v12[1] = a3;
  v12[2] = a4;
  *v12 = a2;
  v14 = type metadata accessor for Optional();
  v13[5] = v14;
  v15 = *(v14 - 8);
  v13[6] = v15;
  v16 = *(v15 + 64);
  if (v11)
  {
    v13[7] = swift_coroFrameAlloc();
    v17 = swift_coroFrameAlloc();
  }

  else
  {
    v13[7] = malloc(*(v15 + 64));
    v17 = malloc(v16);
  }

  v13[8] = v17;
  v19 = *v5;
  XPCDictionary.subscript.getter(a2, a3, a4, *(a5 + 8), v17);
  return XPCDictionary.subscript.modify;
}

{
  v11 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(0x48uLL);
  }

  v13 = v12;
  *a1 = v12;
  v12[3] = a5;
  v12[4] = v5;
  v12[1] = a3;
  v12[2] = a4;
  *v12 = a2;
  v14 = type metadata accessor for Optional();
  v13[5] = v14;
  v15 = *(v14 - 8);
  v13[6] = v15;
  v16 = *(v15 + 64);
  if (v11)
  {
    v13[7] = swift_coroFrameAlloc();
    v17 = swift_coroFrameAlloc();
  }

  else
  {
    v13[7] = malloc(*(v15 + 64));
    v17 = malloc(v16);
  }

  v13[8] = v17;
  v19 = *v5;
  XPCDictionary.subscript.getter(a2, a3, a4, *(a5 + 8), v17);
  return XPCDictionary.subscript.modify;
}

{
  v11 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(0x48uLL);
  }

  v13 = v12;
  *a1 = v12;
  v12[3] = a5;
  v12[4] = v5;
  v12[1] = a3;
  v12[2] = a4;
  *v12 = a2;
  v14 = type metadata accessor for Optional();
  v13[5] = v14;
  v15 = *(v14 - 8);
  v13[6] = v15;
  v16 = *(v15 + 64);
  if (v11)
  {
    v13[7] = swift_coroFrameAlloc();
    v17 = swift_coroFrameAlloc();
  }

  else
  {
    v13[7] = malloc(*(v15 + 64));
    v17 = malloc(v16);
  }

  v13[8] = v17;
  v19 = *v5;
  XPCDictionary.subscript.getter(a2, a3, a4, a5, v17);
  return XPCDictionary.subscript.modify;
}

void XPCDictionary.subscript.modify(uint64_t **a1, char a2)
{
  XPCDictionary.subscript.modify(a1, a2, XPCDictionary.subscript.setter);
}

{
  XPCDictionary.subscript.modify(a1, a2, XPCDictionary.subscript.setter);
}

{
  v2 = *a1;
  v3 = (*a1)[7];
  v4 = (*a1)[8];
  if (a2)
  {
    v5 = v2[5];
    v6 = v2[6];
    v8 = v2[3];
    v7 = v2[4];
    v10 = v2[1];
    v9 = v2[2];
    v11 = *v2;
    (*(v6 + 16))((*a1)[7], v4, v5);

    XPCDictionary.subscript.setter(v3, v11, v10, v9, v8);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    v13 = v2[3];
    v12 = v2[4];
    v15 = v2[1];
    v14 = v2[2];
    v16 = *v2;

    XPCDictionary.subscript.setter(v4, v16, v15, v14, v13);
  }

  free(v4);
  free(v3);

  free(v2);
}

{
  v3 = *a1;
  v5 = **a1;
  v4 = (*a1)[1];

  v7 = v3[4];
  v6 = v3[5];
  v9 = v3[2];
  v8 = v3[3];
  if (a2)
  {

    specialized String.withCString<A>(_:)(v9, v8, v5, v4, v7);

    v10 = v3[1];
  }

  else
  {
    specialized String.withCString<A>(_:)(v3[2], v3[3], v5, v4, v3[4]);
  }

  free(v3);
}

{
  v2 = *a1;
  v3 = **a1;
  if (a2)
  {
    if (!v3)
    {
LABEL_8:
      swift_unknownObjectRelease();
      goto LABEL_9;
    }

    v4 = v2[2];

    v5 = swift_unknownObjectRetain();
    v6 = xpc_copy(v5);
    if (v6)
    {
      v7 = v6;
      v9 = v2[3];
      v8 = v2[4];
      v11 = v2[1];
      v10 = v2[2];
      swift_unknownObjectRelease();
      swift_unknownObjectRetain();
      specialized String.withCString<A>(_:)(v11, v10, v7, v9);

      swift_unknownObjectRelease();
      v12 = *v2;
      goto LABEL_8;
    }

    __break(1u);
LABEL_13:
    __break(1u);
    return;
  }

  if (v3)
  {
    v13 = v2[2];

    v14 = swift_unknownObjectRetain();
    v15 = xpc_copy(v14);
    if (v15)
    {
      v16 = v15;
      v18 = v2[3];
      v17 = v2[4];
      v20 = v2[1];
      v19 = v2[2];
      swift_unknownObjectRelease_n();
      swift_unknownObjectRetain();
      specialized String.withCString<A>(_:)(v20, v19, v16, v18);

      goto LABEL_8;
    }

    goto LABEL_13;
  }

LABEL_9:

  free(v2);
}

uint64_t XPCDictionary.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *v5;
  return XPCDictionary.subscript.getter(a1, a2, a3, *(a4 + 8), a5);
}

{
  v7 = *v5;
  return XPCDictionary.subscript.getter(a1, a2, a3, a4, a5);
}

uint64_t key path setter for XPCDictionary.subscript<A>(_:) : <A>XPCDictionaryA(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = *(a3 + a4 - 16);
  v9 = *(a3 + a4 - 8);
  v10 = type metadata accessor for Optional();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - v12;
  v15 = *a3;
  v14 = a3[1];
  (*(v16 + 16))(&v18 - v12, a1);

  return a5(v13, v15, v14, v8, v9);
}

uint64_t XPCDictionary.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(char *, char *), uint64_t a7, uint64_t (*a8)(uint64_t))
{
  v12 = v8;
  v20[2] = a4;
  v20[3] = a5;
  v16 = type metadata accessor for Optional();
  _sSq7flatMapyqd_0_SgABxqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(a6, v20, MEMORY[0x1E69E73E0], a7, v17, &v21);
  if (v22)
  {
    (*(*(v16 - 8) + 8))(a1, v16);
  }

  else
  {
    v19 = a8(v21);
    swift_unknownObjectRetain();
    specialized String.withCString<A>(_:)(a2, a3, v19, v12);

    swift_unknownObjectRelease();
    return (*(*(v16 - 8) + 8))(a1, v16);
  }
}

void XPCDictionary.subscript.modify(uint64_t **a1, char a2, void (*a3)(void *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *a1;
  v5 = (*a1)[7];
  v6 = (*a1)[8];
  if (a2)
  {
    v7 = v4[5];
    v8 = v4[6];
    v9 = v4[3];
    v18 = v4[4];
    v11 = v4[1];
    v10 = v4[2];
    v12 = *v4;
    (*(v8 + 16))(v5, v6, v7);

    a3(v5, v12, v11, v10, v9);
    (*(v8 + 8))(v6, v7);
  }

  else
  {
    v14 = v4[3];
    v13 = v4[4];
    v16 = v4[1];
    v15 = v4[2];
    v17 = *v4;

    a3(v6, v17, v16, v15, v14);
  }

  free(v6);
  free(v5);

  free(v4);
}

xpc_object_t closure #1 in XPCDictionary.subscript.setter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *(*(a2 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  (*(v6 + 16))(v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  lazy protocol witness table accessor for type Double and conformance Double();
  BinaryFloatingPoint.init<A>(_:)();
  result = xpc_double_create(*&v8[1]);
  *a3 = result;
  return result;
}

uint64_t XPCDictionary.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void)@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v21[1] = a4;
  v22 = a3;
  v13 = type metadata accessor for Optional();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v21 - v16;
  v23 = *v7;
  XPCDictionary.subscript.getter(a1, a2, a5, a6, v21 - v16);
  v18 = *(a5 - 8);
  v19 = *(v18 + 48);
  if (v19(v17, 1, a5) != 1)
  {
    return (*(v18 + 32))(a7, v17, a5);
  }

  v22();
  result = (v19)(v17, 1, a5);
  if (result != 1)
  {
    return (*(v14 + 8))(v17, v13);
  }

  return result;
}

uint64_t XPCDictionary.subscript.getter(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  swift_unknownObjectRetain();
  v6 = specialized String.withCString<A>(_:)(a1, a2, v5);
  swift_unknownObjectRelease();
  if (!v6)
  {
    return 2;
  }

  if (MEMORY[0x19A8E9F90](v6) != MEMORY[0x1E69E9E58])
  {
    swift_unknownObjectRelease();
    return 2;
  }

  value = xpc_BOOL_get_value(v6);
  swift_unknownObjectRelease();
  return value;
}

{
  return XPCDictionary.subscript.getter(a1, a2, specialized String.withCString<A>(_:));
}

{
  v5 = *v2;
  swift_unknownObjectRetain();
  v6 = specialized String.withCString<A>(_:)(a1, a2, v5);
  swift_unknownObjectRelease();
  return v6;
}

id XPCDictionary.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  swift_unknownObjectRetain();
  v8 = specialized String.withCString<A>(_:)(a1, a2, v7);
  swift_unknownObjectRelease();
  if (v8 && MEMORY[0x19A8E9F90](v8) != a3)
  {
    swift_unknownObjectRelease();
    return 0;
  }

  return v8;
}

unsigned __int8 *key path setter for XPCDictionary.subscript(_:) : XPCDictionary(unsigned __int8 *result, void **a2, uint64_t *a3)
{
  v4 = *result;
  if (v4 != 2)
  {
    v7 = *a3;
    v6 = a3[1];
    v8 = xpc_BOOL_create(v4 & 1);
    swift_unknownObjectRetain();
    specialized String.withCString<A>(_:)(v7, v6, v8, a2);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t XPCDictionary.subscript.setter(char a1, uint64_t a2, uint64_t a3)
{
  if (a1 != 2)
  {
    v6 = xpc_BOOL_create(a1 & 1);
    swift_unknownObjectRetain();
    specialized String.withCString<A>(_:)(a2, a3, v6, v3);
    swift_unknownObjectRelease();
  }
}

void (*XPCDictionary.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[1] = a3;
  v7[2] = v3;
  *v7 = a2;
  v9 = *v3;
  swift_unknownObjectRetain();
  v10 = specialized String.withCString<A>(_:)(a2, a3, v9);
  v8[3] = 0;
  swift_unknownObjectRelease();
  if (v10)
  {
    if (MEMORY[0x19A8E9F90](v10) == MEMORY[0x1E69E9E58])
    {
      value = xpc_BOOL_get_value(v10);
      swift_unknownObjectRelease();
      goto LABEL_9;
    }

    swift_unknownObjectRelease();
  }

  value = 2;
LABEL_9:
  *(v8 + 32) = value;
  return XPCDictionary.subscript.modify;
}

void XPCDictionary.subscript.modify(uint64_t **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  if (v2 != 2)
  {
    v4 = v1[2];
    v3 = v1[3];
    v6 = *v1;
    v5 = v1[1];
    v7 = xpc_BOOL_create(v2 & 1);
    swift_unknownObjectRetain();
    specialized String.withCString<A>(_:)(v6, v5, v7, v4);
    swift_unknownObjectRelease();
  }

  free(v1);
}

uint64_t XPCDictionary.subscript.getter(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v7 = *v3;
  swift_unknownObjectRetain();
  v8 = specialized String.withCString<A>(_:)(a1, a2, v7);
  v9 = swift_unknownObjectRelease();
  if (!v8)
  {
    return a3(v9) & 1;
  }

  if (MEMORY[0x19A8E9F90](v8) != MEMORY[0x1E69E9E58])
  {
    v9 = swift_unknownObjectRelease();
    return a3(v9) & 1;
  }

  value = xpc_BOOL_get_value(v8);
  swift_unknownObjectRelease();
  return value;
}

uint64_t XPCDictionary.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = *v3;
  swift_unknownObjectRetain();
  return specialized String.withCString<A>(_:)(v7, a1, a2, a3);
}

{
  v7 = *v3;
  swift_unknownObjectRetain();
  return specialized String.withCString<A>(_:)(v7, a1, a2, a3);
}

xpc_object_t closure #1 in XPCDictionary.subscript.getter@<X0>(char *key@<X0>, xpc_object_t xdict@<X1>, void *a3@<X8>)
{
  result = xpc_dictionary_get_dictionary(xdict, key);
  v5 = result;
  if (result && (result = MEMORY[0x19A8E9F90](result), result != MEMORY[0x1E69E9E80]))
  {
    __break(1u);
  }

  else
  {
    *a3 = v5;
  }

  return result;
}

{
  result = xpc_dictionary_get_array(xdict, key);
  v5 = result;
  if (result && (result = MEMORY[0x19A8E9F90](result), result != MEMORY[0x1E69E9E50]))
  {
    __break(1u);
  }

  else
  {
    *a3 = v5;
  }

  return result;
}

uint64_t XPCDictionary.subscript.setter(void **a1, uint64_t a2, uint64_t a3)
{
  return XPCDictionary.subscript.setter(a1, a2, a3);
}

{
  return XPCDictionary.subscript.setter(a1, a2, a3);
}

{
  v6 = *a1;
  swift_unknownObjectRetain();
  specialized String.withCString<A>(_:)(a2, a3, v3, v6);
  swift_unknownObjectRelease();
}

void (*XPCDictionary.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(void ***a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[2] = a3;
  v7[3] = v3;
  v7[1] = a2;
  v9 = *v3;
  swift_unknownObjectRetain();
  specialized String.withCString<A>(_:)(v9, a2, a3, v8);
  v8[4] = 0;
  return XPCDictionary.subscript.modify;
}

{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[2] = a3;
  v7[3] = v3;
  v7[1] = a2;
  v9 = *v3;
  swift_unknownObjectRetain();
  specialized String.withCString<A>(_:)(v9, a2, a3, v8);
  v8[4] = 0;
  return XPCDictionary.subscript.modify;
}

void XPCDictionary.subscript.modify(void ***a1, char a2)
{
  XPCDictionary.subscript.modify(a1, a2);
}

{
  XPCDictionary.subscript.modify(a1, a2);
}

{
  v3 = *a1;
  v4 = **a1;
  swift_unknownObjectRetain();
  v6 = v3[3];
  v5 = v3[4];
  v8 = v3[1];
  v7 = v3[2];
  if (a2)
  {
    swift_unknownObjectRetain();
    specialized String.withCString<A>(_:)(v8, v7, v6, v4);
    swift_unknownObjectRelease();
    v9 = *v3;
  }

  else
  {
    specialized String.withCString<A>(_:)(v3[1], v3[2], v3[3], v4);
  }

  swift_unknownObjectRelease();

  free(v3);
}

void *key path getter for XPCDictionary.subscript(_:) : XPCDictionary@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *(*a3)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t)@<X3>, void *a4@<X8>)
{
  v6 = *a1;
  v7 = *a2;
  v8 = a2[1];
  swift_unknownObjectRetain();
  result = a3(&v10, v7, v8, v6);
  *a4 = v10;
  return result;
}

uint64_t key path setter for XPCDictionary.subscript(_:) : XPCDictionary(void **a1, void **a2, uint64_t *a3)
{
  v4 = *a3;
  v5 = a3[1];
  v6 = *a1;
  swift_unknownObjectRetain();
  return specialized String.withCString<A>(_:)(v4, v5, a2, v6);
}

uint64_t key path getter for XPCDictionary.subscript(_:) : XPCDictionary@<X0>(void **a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  v6 = a2[1];
  swift_unknownObjectRetain();
  v7 = specialized String.withCString<A>(_:)(v5, v6, v4);
  result = swift_unknownObjectRelease();
  *a3 = v7;
  return result;
}

_xpc_connection_s **key path setter for XPCDictionary.subscript(_:) : XPCDictionary(_xpc_connection_s **result, void **a2, uint64_t *a3)
{
  v3 = *result;
  if (*result)
  {
    v6 = *a3;
    v5 = a3[1];
    v7 = *result;
    swift_unknownObjectRetain();
    return specialized String.withCString<A>(_:)(v6, v5, v3, a2);
  }

  return result;
}

void closure #1 in XPCDictionary.subscript.setter(const char *a1, _xpc_connection_s *a2, void **a3)
{
  v6 = MEMORY[0x19A8E9F90](a2);
  v7 = *a3;
  if (v6 == MEMORY[0x1E69E9E68])
  {
    xpc_dictionary_set_connection(v7, a1, a2);
  }

  else
  {
    xpc_dictionary_set_value(v7, a1, a2);
  }
}

void (*XPCDictionary.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(_xpc_connection_s ***a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[2] = a3;
  v7[3] = v3;
  v7[1] = a2;
  v9 = *v3;
  swift_unknownObjectRetain();
  v10 = specialized String.withCString<A>(_:)(a2, a3, v9);
  v8[4] = 0;
  swift_unknownObjectRelease();
  *v8 = v10;
  return XPCDictionary.subscript.modify;
}

void XPCDictionary.subscript.modify(_xpc_connection_s ***a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  if (a2)
  {
    if (v3)
    {
      v5 = v2[3];
      v4 = v2[4];
      v7 = v2[1];
      v6 = v2[2];
      v8 = **a1;
      swift_unknownObjectRetain_n();
      specialized String.withCString<A>(_:)(v7, v6, v3, v5);
      swift_unknownObjectRelease();
      v9 = *v2;
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_7;
    }

    v11 = v2[3];
    v10 = v2[4];
    v13 = v2[1];
    v12 = v2[2];
    v14 = **a1;
    swift_unknownObjectRetain();
    specialized String.withCString<A>(_:)(v13, v12, v3, v11);
  }

  swift_unknownObjectRelease();
LABEL_7:

  free(v2);
}

uint64_t key path getter for XPCDictionary.subscript(_:) : XPCDictionary@<X0>(void **a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  v6 = a2[1];
  swift_unknownObjectRetain();
  v7 = specialized String.withCString<A>(_:)(v5, v6, v4);
  v9 = v8;
  result = swift_unknownObjectRelease();
  *a3 = v7;
  a3[1] = v9;
  return result;
}

uint64_t key path setter for XPCDictionary.subscript(_:) : XPCDictionary(uint64_t *a1, void **a2, uint64_t *a3)
{
  v4 = *a3;
  v5 = a3[1];
  v6 = *a1;
  v7 = a1[1];

  return specialized String.withCString<A>(_:)(v4, v5, v6, v7, a2);
}

uint64_t XPCDictionary.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  specialized String.withCString<A>(_:)(a3, a4, a1, a2, v4);
}

void closure #1 in XPCDictionary.subscript.setter(char *key, uint64_t a2, uint64_t a3, void **a4)
{
  if (a3)
  {
    specialized String.withCString<A>(_:)(a2, a3, a4, key);
  }

  else
  {
    xpc_dictionary_set_value(*a4, key, 0);
  }
}

void (*XPCDictionary.subscript.modify(uint64_t **a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x30uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[3] = a3;
  v7[4] = v3;
  v7[2] = a2;
  v9 = *v3;
  swift_unknownObjectRetain();
  v10 = specialized String.withCString<A>(_:)(a2, a3, v9);
  v12 = v11;
  v8[5] = 0;
  swift_unknownObjectRelease();
  *v8 = v10;
  v8[1] = v12;
  return XPCDictionary.subscript.modify;
}

uint64_t *key path setter for XPCDictionary.subscript(_:) : XPCDictionary(uint64_t *result, void **a2, uint64_t *a3)
{
  v3 = *result;
  if (*result)
  {
    v6 = *a3;
    v5 = a3[1];
    v7 = *result;

    return specialized String.withCString<A>(_:)(v6, v5, a2, v3);
  }

  return result;
}

uint64_t XPCDictionary.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {

    specialized String.withCString<A>(_:)(a2, a3, v3, a1);
  }
}

uint64_t *(*XPCDictionary.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t *result, char a2)
{
  a1[2] = a3;
  a1[3] = v3;
  a1[1] = a2;
  v5 = *v3;
  *a1 = specialized XPCDictionary.subscript.getter(a2, a3);
  return XPCDictionary.subscript.modify;
}

uint64_t *XPCDictionary.subscript.modify(uint64_t *result, char a2)
{
  v2 = *result;
  if (a2)
  {
    if (v2)
    {
      v4 = result[2];
      v3 = result[3];
      v5 = result[1];
      v6 = *result;
      swift_bridgeObjectRetain_n();
      specialized String.withCString<A>(_:)(v5, v4, v3, v2);
    }
  }

  else
  {
    if (!v2)
    {
      return result;
    }

    v8 = result[2];
    v7 = result[3];
    v9 = result[1];
    v10 = *result;

    specialized String.withCString<A>(_:)(v9, v8, v7, v2);
  }
}

uint64_t XPCDictionary.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *v3;
  swift_unknownObjectRetain();
  v8 = specialized String.withCString<A>(_:)(a1, a2, v7);
  result = swift_unknownObjectRelease();
  if (!v8)
  {
    v10 = 0;
    goto LABEL_6;
  }

  swift_getObjectType();
  result = OS_xpc_object.isCodable()();
  if (result)
  {
    result = xpc_copy(v8);
    if (result)
    {
      v10 = result;
      result = swift_unknownObjectRelease();
LABEL_6:
      *a3 = v10;
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

_xpc_connection_s *key path setter for XPCDictionary.subscript(_:) : XPCDictionary(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v6 = *a1;
  swift_unknownObjectRetain();

  return XPCDictionary.subscript.setter(&v6, v3, v4);
}

_xpc_connection_s *XPCDictionary.subscript.setter(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (*a1)
  {
    v6 = *a1;
    v7 = swift_unknownObjectRetain();
    result = xpc_copy(v7);
    if (!result)
    {
      __break(1u);
      return result;
    }

    v9 = result;
    swift_unknownObjectRelease_n();
    swift_unknownObjectRetain();
    specialized String.withCString<A>(_:)(a2, a3, v9, v3);
    swift_unknownObjectRelease();
  }
}

void (*XPCDictionary.subscript.modify(void (***a1)(uint64_t **a1, char a2), uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[2] = a3;
  v7[3] = v3;
  v7[1] = a2;
  v9 = *v3;
  swift_unknownObjectRetain();
  v10 = specialized String.withCString<A>(_:)(a2, a3, v9);
  v8[4] = 0;
  swift_unknownObjectRelease();
  if (!v10)
  {
    v12 = 0;
    goto LABEL_9;
  }

  swift_getObjectType();
  result = OS_xpc_object.isCodable()();
  if (result)
  {
    result = xpc_copy(v10);
    if (result)
    {
      v12 = result;
      swift_unknownObjectRelease();
LABEL_9:
      *v8 = v12;
      return XPCDictionary.subscript.modify;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t XPCDictionary.copy(into:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  v5 = swift_allocObject();
  *(v5 + 16) = partial apply for closure #1 in XPCDictionary.copy(into:);
  *(v5 + 24) = v4;
  v8[4] = partial apply for thunk for @callee_guaranteed (@unowned UnsafePointer<Int8>, @guaranteed OS_xpc_object) -> (@unowned Bool);
  v8[5] = v5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = thunk for @escaping @callee_guaranteed (@unowned UnsafePointer<Int8>, @guaranteed OS_xpc_object) -> (@unowned Bool);
  v8[3] = &block_descriptor_2;
  v6 = _Block_copy(v8);
  swift_unknownObjectRetain();

  xpc_dictionary_apply(v3, v6);
  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  return result;
}

uint64_t XPCDictionary.subscript.getter(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v7 = *v3;
  swift_unknownObjectRetain();
  v8 = a3(a1, a2, v7);
  swift_unknownObjectRelease();
  return v8;
}

uint64_t XPCDictionary.forEach(_:)(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  closure #1 in XPCDictionary.forEach(_:)(partial apply for thunk for @callee_guaranteed (@guaranteed String, @guaranteed OS_xpc_object) -> (@error @owned Error), v7, v6);
  if (v3)
  {
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (!isEscapingClosureAtFileLocation)
    {
      return result;
    }

    __break(1u);
  }

  v10 = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
  }

  return result;
}

{
  v9[3] = a2;
  v4 = *v2;
  v9[2] = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = partial apply for thunk for @callee_guaranteed (@guaranteed String, @guaranteed OS_xpc_object) -> (@error @owned Error);
  *(v5 + 24) = v9;
  closure #1 in XPCDictionary.forEach(_:)(thunk for @callee_guaranteed (@guaranteed String, @guaranteed OS_xpc_object) -> (@error @owned Error)partial apply, v5, v4);
  if (v3)
  {
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (!isEscapingClosureAtFileLocation)
    {
      return result;
    }

    __break(1u);
  }

  v8 = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in closure #1 in XPCDictionary.forEach(_:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = String.init(cString:)();
  a3(v4);

  return 1;
}

char *specialized XPCDictionary.map<A>(_:)(uint64_t a1, uint64_t a2, xpc_object_t xdict)
{
  count = xpc_dictionary_get_count(xdict);
  v8 = MEMORY[0x1E69E7CC0];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || count > *(v8 + 3) >> 1)
  {
    if (*(v8 + 2) <= count)
    {
      v10 = count;
    }

    else
    {
      v10 = *(v8 + 2);
    }

    isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v10, 0, v8);
    v8 = isUniquelyReferenced_nonNull_native;
  }

  v18 = v8;
  v11 = MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native);
  v17[6] = &v18;
  v17[7] = a1;
  v17[8] = a2;
  MEMORY[0x1EEE9AC00](v11);
  v17[2] = partial apply for specialized closure #1 in XPCDictionary.map<A>(_:);
  v17[3] = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = thunk for @callee_guaranteed (@guaranteed String, @guaranteed OS_xpc_object) -> (@error @owned Error)partial apply;
  *(v13 + 24) = v17;
  closure #1 in XPCDictionary.forEach(_:)(thunk for @callee_guaranteed (@guaranteed String, @guaranteed OS_xpc_object) -> (@error @owned Error)partial apply, v13, xdict);
  if (v3)
  {
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
    }

    __break(1u);
    goto LABEL_14;
  }

  v16 = swift_isEscapingClosureAtFileLocation();

  if (v16)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  return v18;
}

uint64_t specialized XPCDictionary.map<A>(_:)(uint64_t a1, uint64_t a2, xpc_object_t xdict)
{
  v17 = MEMORY[0x1E69E7CC0];
  count = xpc_dictionary_get_count(xdict);
  specialized Array.reserveCapacity(_:)(count);
  v14 = &v17;
  v15 = a1;
  v16 = a2;
  v12[2] = partial apply for specialized closure #1 in XPCDictionary.map<A>(_:);
  v12[3] = &v13;
  v8 = swift_allocObject();
  *(v8 + 16) = thunk for @callee_guaranteed (@guaranteed String, @guaranteed OS_xpc_object) -> (@error @owned Error)partial apply;
  *(v8 + 24) = v12;
  closure #1 in XPCDictionary.forEach(_:)(thunk for @callee_guaranteed (@guaranteed String, @guaranteed OS_xpc_object) -> (@error @owned Error)partial apply, v8, xdict);
  if (v3)
  {
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
    }

    __break(1u);
    goto LABEL_8;
  }

  v11 = swift_isEscapingClosureAtFileLocation();

  if (v11)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  return v17;
}

uint64_t XPCDictionary.map<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v20 = Array.init()();
  count = xpc_dictionary_get_count(v8);
  type metadata accessor for Array();
  Array.reserveCapacity(_:)(count);
  v16 = a3;
  v17 = &v20;
  v18 = a1;
  v19 = a2;
  v14[2] = partial apply for closure #1 in XPCDictionary.map<A>(_:);
  v14[3] = &v15;
  v10 = swift_allocObject();
  *(v10 + 16) = thunk for @callee_guaranteed (@guaranteed String, @guaranteed OS_xpc_object) -> (@error @owned Error)partial apply;
  *(v10 + 24) = v14;
  closure #1 in XPCDictionary.forEach(_:)(thunk for @callee_guaranteed (@guaranteed String, @guaranteed OS_xpc_object) -> (@error @owned Error)partial apply, v10, v8);
  if (v4)
  {
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
    }

    __break(1u);
    goto LABEL_8;
  }

  v13 = swift_isEscapingClosureAtFileLocation();

  if (v13)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  return v20;
}

uint64_t specialized closure #1 in XPCDictionary.map<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *(*a5)(void *__return_ptr))
{
  result = a5(v14);
  if (!v5)
  {
    v8 = v14[0];
    v9 = v14[1];
    v10 = *a4;
    result = swift_isUniquelyReferenced_nonNull_native();
    *a4 = v10;
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 16) + 1, 1, v10);
      v10 = result;
      *a4 = result;
    }

    v12 = *(v10 + 16);
    v11 = *(v10 + 24);
    if (v12 >= v11 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v10);
      v10 = result;
      *a4 = result;
    }

    *(v10 + 16) = v12 + 1;
    v13 = v10 + 16 * v12;
    *(v13 + 32) = v8;
    *(v13 + 40) = v9;
  }

  return result;
}

void *specialized closure #1 in XPCDictionary.map<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *(*a5)(uint64_t *__return_ptr))
{
  result = a5(&v9);
  if (!v5)
  {
    MEMORY[0x19A8E8F20](result);
    if (*((*a4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v8 = *((*a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    return specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  return result;
}

uint64_t closure #1 in XPCDictionary.map<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(*(a7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](a1);
  result = v10(v9);
  if (!v7)
  {
    type metadata accessor for Array();
    return Array.append(_:)();
  }

  return result;
}

uint64_t specialized implicit closure #1 in XPCDictionary.keys.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
}

xpc_object_t XPCDictionary.createReply()@<X0>(void *a1@<X8>)
{
  result = xpc_dictionary_create_reply(*v1);
  v4 = result;
  if (result && (result = MEMORY[0x19A8E9F90](result), result != MEMORY[0x1E69E9E80]))
  {
    __break(1u);
  }

  else
  {
    *a1 = v4;
  }

  return result;
}

Swift::Int XPCDictionary.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = xpc_hash(v1);
  MEMORY[0x19A8E9610](v2);
  return Hasher._finalize()();
}

uint64_t XPCDictionary.debugDescription.getter()
{
  v1 = MEMORY[0x19A8E9DF0](*v0);
  v2 = String.init(cString:)();
  free(v1);
  return v2;
}

uint64_t XPCDictionary.auditToken.getter()
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *v0;
  xpc_dictionary_get_audit_token();
  result = 0;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t XPCDictionary.decode<A>(as:forKey:withUserInfo:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v15 = *v7;
  swift_unknownObjectRetain();
  specialized String.withCString<A>(_:)(v15, a2, a3, &v26);
  v16 = v26;
  if (v26)
  {
    v17 = swift_unknownObjectRetain_n();
    v26 = xmmword_197937450;
    v18 = xpc_dictionary_get_value(v17, &v26);
    swift_unknownObjectRelease();
    if (v18)
    {
      v19 = MEMORY[0x19A8E9F90](v18) == MEMORY[0x1E69E9E58] && xpc_BOOL_get_value(v18);
      swift_unknownObjectRelease();
    }

    else
    {
      v19 = 0;
    }

    type metadata accessor for XPCReceivedMessage.XPCReceivedMessageMetadata();
    v25 = swift_allocObject();
    *(v25 + 16) = v19;
    *(v25 + 17) = v19;
    *&v26 = v16;
    *(&v26 + 1) = v25;
    XPCReceivedMessage.decode<A>(as:userInfo:)(a1, a4, a5, a6, a7);
    swift_unknownObjectRelease();

    return swift_unknownObjectRelease();
  }

  else
  {
    v20 = type metadata accessor for DecodingError();
    swift_allocError();
    v22 = v21;
    v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
    *v22 = a1;
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v20 - 8) + 104))(v22, *MEMORY[0x1E69E6B08], v20);
    return swift_willThrow();
  }
}

uint64_t XPCDictionary.encode<A>(_:forKey:withUserInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = static XPCReceivedMessage.encodeMessage<A>(_:userInfo:isSync:)(a4, 0, a5, &v11);
  if (!v6)
  {
    v10 = v11;
    swift_unknownObjectRetain();
    specialized String.withCString<A>(_:)(a2, a3, v5, v10);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t XPCDictionary.decode<A>(as:forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v15 = *v6;
  v13 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs17CodingUserInfoKeyV_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  XPCDictionary.decode<A>(as:forKey:withUserInfo:)(a1, a2, a3, v13, a4, a5, a6);
}

uint64_t XPCDictionary.encode<A>(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs17CodingUserInfoKeyV_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  XPCDictionary.encode<A>(_:forKey:withUserInfo:)(a1, a2, a3, v8, a4);
}

uint64_t partial apply for implicit closure #1 in XPCDictionary.subscript.setter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  return implicit closure #1 in XPCDictionary.subscript.setter(a1, *(v2 + 16), *(v2 + 24), a2);
}

{
  return implicit closure #1 in XPCDictionary.subscript.setter(a1, *(v2 + 16), *(v2 + 24), a2);
}

xpc_object_t specialized String.withCString<A>(_:)(uint64_t a1, unint64_t a2, xpc_object_t xdict)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      *key = a1;
      v10 = a2 & 0xFFFFFFFFFFFFFFLL;
      v6 = xpc_dictionary_get_value(xdict, key);
      v7 = key;
      goto LABEL_6;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v5 = a2 & 0xFFFFFFFFFFFFFFFLL;
      v6 = xpc_dictionary_get_value(xdict, ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32));
      v7 = (v5 + 32);
LABEL_6:
      xpc_dictionary_set_value(xdict, v7, 0);
      return v6;
    }
  }

  v6 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13OS_xpc_object_pSgMd, "x ");
  _StringGuts._slowWithCString<A>(_:)();
  if (!v3)
  {
    return v11;
  }

  return v6;
}

const void *specialized String.withCString<A>(_:)(uint64_t a1, uint64_t a2, xpc_object_t xdict, size_t *length)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      *key = a1;
      v8 = a2 & 0xFFFFFFFFFFFFFFLL;
      v5 = key;
      return xpc_dictionary_get_data(xdict, v5, length);
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v5 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      return xpc_dictionary_get_data(xdict, v5, length);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSVSgMd, &_sSVSgMR);
  result = _StringGuts._slowWithCString<A>(_:)();
  if (!v4)
  {
    return v9;
  }

  return result;
}

void *specialized XPCDictionary.subscript.getter(uint64_t a1, uint64_t a2)
{
  length[1] = *MEMORY[0x1E69E9840];
  v5 = *v2;
  length[0] = 0;
  swift_unknownObjectRetain();
  v6 = specialized String.withCString<A>(_:)(a1, a2, v5, length);
  swift_unknownObjectRelease();
  result = 0;
  v8 = length[0];
  if (length[0] >= 1 && v6 != 0)
  {
    v10 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1g5(length[0], 0);
    memcpy(v10 + 4, v6, v8);
    result = v10;
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t partial apply for thunk for @callee_guaranteed (@guaranteed String, @guaranteed OS_xpc_object) -> (@error @owned Error)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

unint64_t lazy protocol witness table accessor for type XPCDictionary and conformance XPCDictionary()
{
  result = lazy protocol witness table cache variable for type XPCDictionary and conformance XPCDictionary;
  if (!lazy protocol witness table cache variable for type XPCDictionary and conformance XPCDictionary)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCDictionary and conformance XPCDictionary);
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in XPCDictionary.forEach(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  return closure #1 in closure #1 in XPCDictionary.forEach(_:)(a1, a2, *(v2 + 16));
}

void partial apply for closure #1 in XPCDictionary.removeValue(forKey:)(char *key@<X0>, void *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = xpc_dictionary_get_value(v5, key);
  xpc_dictionary_set_value(v5, key, 0);
  *a2 = v6;
}

void partial apply for closure #1 in XPCDictionary.subscript.setter(char *key)
{
  xpc_dictionary_set_data(**(v1 + 16), key, (*(v1 + 24) + 32), *(*(v1 + 24) + 16));
}

{
  xpc_dictionary_set_value(**(v1 + 16), key, *(v1 + 24));
}

const void *partial apply for closure #1 in XPCDictionary.subscript.getter@<X0>(char *key@<X0>, void *a2@<X8>)
{
  result = xpc_dictionary_get_data(*(v2 + 16), key, *(v2 + 24));
  *a2 = result;
  return result;
}

uint64_t partial apply for closure #1 in XPCDictionary.subscript.getter@<X0>(char *key@<X0>, void *a2@<X8>)
{
  result = xpc_dictionary_get_string(*(v2 + 16), key);
  if (result)
  {
    result = String.init(cString:)();
  }

  else
  {
    v5 = 0;
  }

  *a2 = result;
  a2[1] = v5;
  return result;
}

xpc_object_t partial apply for closure #1 in XPCDictionary.subscript.getter@<X0>(char *a1@<X0>, void *a2@<X8>)
{
  return closure #1 in XPCDictionary.subscript.getter(a1, *(v2 + 16), a2);
}

{
  return closure #1 in XPCDictionary.subscript.getter(a1, *(v2 + 16), a2);
}

xpc_object_t partial apply for closure #1 in XPCDictionary.subscript.getter@<X0>(char *key@<X0>, void *a2@<X8>)
{
  result = xpc_dictionary_get_value(*(v2 + 16), key);
  *a2 = result;
  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for EncodingGraph.Value(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xEE && *(a1 + 25))
  {
    return (*a1 + 238);
  }

  v3 = *(a1 + 24);
  if (v3 <= 0x12)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for EncodingGraph.Value(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xED)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 238;
    if (a3 >= 0xEE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xEE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for EncodingGraph.Value(uint64_t result, unsigned int a2)
{
  v2 = a2 - 18;
  if (a2 >= 0x12)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 18;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

uint64_t getEnumTag for EncodingGraph.Key(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *destructiveInjectEnumTag for EncodingGraph.Key(void *result, int a2)
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

uint64_t _EncodingContainer.codingPath.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 32))();

  return v2;
}

uint64_t _DecodingContainer.codingPath.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 8))();

  return v2;
}

uint64_t _s3XPC13EncodingGraphO5ValueO6decode2as3fors4Int8VAJm_AA18_DecodingContainer_pts0I5ErrorOYKF(void *a1, void *a2)
{
  v6 = type metadata accessor for DecodingError();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v14 = &v40 - v13;
  v16 = *v2;
  v15 = *(v2 + 8);
  v17 = *(v2 + 16);
  v18 = *(v2 + 24);
  if (v18 == 17)
  {
    v42 = *(v2 + 16);
    v40 = v12;
    v52 = v11;
    v43 = a2;
    v19 = a1[3];
    v20 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v19);
    v41 = v15;
    v21 = *(v20 + 8);
    swift_unknownObjectRetain();
    v22 = v21(v19, v20);
    v45 = 0;
    memset(v44, 0, sizeof(v44));
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss4Int8VSgMd, &_ss4Int8VSgMR);
    v24 = CodingInfo.coding(forKey:forType:)(v44, v23, v22);
    v26 = v25;
    v28 = v27;

    outlined destroy of CodingKey?(v44);
    swift_unknownObjectRetain();
    v29 = v28;
    v30 = v41;
    _s3XPC46SingleValueDecodingContainer4OptionalPrimitiveV10codingInfo9containerAcA06CodingI0V_AA13EncodingGraphO9Container_pts0D5ErrorOYKcfC(v24, v26, v29, v41, v14, &v46);
    if (v3)
    {
      outlined consume of EncodingGraph.Value(v16, v30, v42, 0x11u);
      (*(v40 + 32))(v43, v14, v52);
    }

    else
    {
      v50[0] = v46;
      v50[1] = v47;
      v50[2] = v48;
      v51 = v49;
      v39 = _s3XPC35_SingleValueDecodingContainerCommonPAAE6decodeys4Int8VAFms0D5ErrorOYKFAA0bcD27Container4OptionalPrimitiveV_Tt0B5(v10);
      outlined consume of EncodingGraph.Value(v16, v30, v42, 0x11u);
      outlined destroy of SingleValueDecodingContainer4OptionalPrimitive(v50);
      return v39;
    }
  }

  else if (v18 != 5)
  {
    v31 = a2;
    v32 = *(v2 + 8);
    v33 = a1[3];
    v34 = a1[4];
    v52 = v11;
    v35 = a1;
    v36 = v12;
    v37 = v17;
    __swift_project_boxed_opaque_existential_1(v35, v33);
    (*(v34 + 8))(v33, v34);

    LODWORD(v33) = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
    *v31 = MEMORY[0x1E69E7230];
    *&v46 = 0;
    *(&v46 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(16);
    v44[0] = v46;
    MEMORY[0x19A8E8E70](0x20646E756F46, 0xE600000000000000);
    *&v46 = v16;
    *(&v46 + 1) = v32;
    *&v47 = v37;
    BYTE8(v47) = v18;
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x19A8E8E70](0x64616574736E6920, 0xE800000000000000);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(v36 + 104))(v31, *MEMORY[0x1E69E6AF8], v52);
    swift_willThrowTypedImpl();
  }

  return v16;
}

uint64_t _s3XPC13EncodingGraphO5ValueO6decode2as3fors6UInt16VAJm_AA18_DecodingContainer_pts0I5ErrorOYKF(void *a1, void *a2)
{
  v6 = type metadata accessor for DecodingError();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v14 = &v40 - v13;
  v16 = *v2;
  v15 = *(v2 + 8);
  v17 = *(v2 + 16);
  v18 = *(v2 + 24);
  if (v18 == 17)
  {
    v42 = *(v2 + 16);
    v40 = v12;
    v52 = v11;
    v43 = a2;
    v19 = a1[3];
    v20 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v19);
    v41 = v15;
    v21 = *(v20 + 8);
    swift_unknownObjectRetain();
    v22 = v21(v19, v20);
    v45 = 0;
    memset(v44, 0, sizeof(v44));
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt16VSgMd, &_ss6UInt16VSgMR);
    v24 = CodingInfo.coding(forKey:forType:)(v44, v23, v22);
    v26 = v25;
    v28 = v27;

    outlined destroy of CodingKey?(v44);
    swift_unknownObjectRetain();
    v29 = v28;
    v30 = v41;
    _s3XPC46SingleValueDecodingContainer4OptionalPrimitiveV10codingInfo9containerAcA06CodingI0V_AA13EncodingGraphO9Container_pts0D5ErrorOYKcfC(v24, v26, v29, v41, v14, &v46);
    if (v3)
    {
      outlined consume of EncodingGraph.Value(v16, v30, v42, 0x11u);
      (*(v40 + 32))(v43, v14, v52);
    }

    else
    {
      v50[0] = v46;
      v50[1] = v47;
      v50[2] = v48;
      v51 = v49;
      v39 = _s3XPC35_SingleValueDecodingContainerCommonPAAE6decodeys6UInt16VAFms0D5ErrorOYKFAA0bcD27Container4OptionalPrimitiveV_Tt0B5(v10);
      outlined consume of EncodingGraph.Value(v16, v30, v42, 0x11u);
      outlined destroy of SingleValueDecodingContainer4OptionalPrimitive(v50);
      return v39;
    }
  }

  else if (v18 != 11)
  {
    v31 = a2;
    v32 = *(v2 + 8);
    v33 = a1[3];
    v34 = a1[4];
    v52 = v11;
    v35 = a1;
    v36 = v12;
    v37 = v17;
    __swift_project_boxed_opaque_existential_1(v35, v33);
    (*(v34 + 8))(v33, v34);

    LODWORD(v33) = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
    *v31 = MEMORY[0x1E69E75F8];
    *&v46 = 0;
    *(&v46 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(16);
    v44[0] = v46;
    MEMORY[0x19A8E8E70](0x20646E756F46, 0xE600000000000000);
    *&v46 = v16;
    *(&v46 + 1) = v32;
    *&v47 = v37;
    BYTE8(v47) = v18;
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x19A8E8E70](0x64616574736E6920, 0xE800000000000000);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(v36 + 104))(v31, *MEMORY[0x1E69E6AF8], v52);
    swift_willThrowTypedImpl();
  }

  return v16;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance EncodingGraph.Key()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  if (v2)
  {
    MEMORY[0x19A8E9610](1);
    String.hash(into:)();
  }

  else
  {
    MEMORY[0x19A8E9610](0);
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance EncodingGraph.Key()
{
  if (!v0[1])
  {
    return MEMORY[0x19A8E9610](0);
  }

  v1 = *v0;
  MEMORY[0x19A8E9610](1);

  return String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance EncodingGraph.Key()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  if (v2)
  {
    MEMORY[0x19A8E9610](1);
    String.hash(into:)();
  }

  else
  {
    MEMORY[0x19A8E9610](0);
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance EncodingGraph.Key(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      if (*a1 != *a2 || v3 != v4)
      {
        return _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      return 1;
    }

    return 0;
  }

  return !v4;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance EncodingGraph.ContainerMetadata()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1 + 10);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance EncodingGraph.ContainerMetadata()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1 + 10);
  return Hasher._finalize()();
}

_BYTE *protocol witness for RawRepresentable.init(rawValue:) in conformance EncodingGraph.ContainerMetadata@<X0>(_BYTE *result@<X0>, char *a2@<X8>)
{
  if (*result - 10 >= 3)
  {
    v2 = 3;
  }

  else
  {
    v2 = *result - 10;
  }

  *a2 = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for CodingInfo(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for CodingInfo(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for EncodingGraph.ContainerMetadata(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for EncodingGraph.ContainerMetadata(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EncodingGraph.ContainerMetadata and conformance EncodingGraph.ContainerMetadata()
{
  result = lazy protocol witness table cache variable for type EncodingGraph.ContainerMetadata and conformance EncodingGraph.ContainerMetadata;
  if (!lazy protocol witness table cache variable for type EncodingGraph.ContainerMetadata and conformance EncodingGraph.ContainerMetadata)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EncodingGraph.ContainerMetadata and conformance EncodingGraph.ContainerMetadata);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EarlyDecodingError and conformance EarlyDecodingError()
{
  result = lazy protocol witness table cache variable for type EarlyDecodingError and conformance EarlyDecodingError;
  if (!lazy protocol witness table cache variable for type EarlyDecodingError and conformance EarlyDecodingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EarlyDecodingError and conformance EarlyDecodingError);
  }

  return result;
}

uint64_t _StringGuts._slowEnsureMatchingEncoding(_:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x19A8E8EA0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t getEnumTagSinglePayload for SecondPass #1 in SerializedEncodingGraph.init(of:)(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for SecondPass #1 in SerializedEncodingGraph.init(of:)(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BufferReader(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t storeEnumTagSinglePayload for BufferReader(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EarlyDecodingError(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for EarlyDecodingError(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for XPCBufferWriter(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for XPCBufferWriter(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t specialized SetAlgebra<>.init(arrayLiteral:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance XPCListener.IncomingSessionRequest.Decision._Decision()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x19A8E9610](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance XPCListener.IncomingSessionRequest.Decision._Decision()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x19A8E9610](v1);
  return Hasher._finalize()();
}

uint64_t XPCListener.IncomingSessionRequest.accept(incomingMessageHandler:cancellationHandler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  return XPCListener.IncomingSessionRequest.accept(incomingMessageHandler:cancellationHandler:)(a1, a2, a3, a4, XPCSession.setIncomingMessageHandler(_:), a5);
}

{
  return XPCListener.IncomingSessionRequest.accept(incomingMessageHandler:cancellationHandler:)(a1, a2, a3, a4, XPCSession.setIncomingMessageHandler(_:), a5);
}

uint64_t XPCListener.IncomingSessionRequest.accept<A>(incomingMessageHandler:cancellationHandler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _BYTE *a7@<X8>)
{
  XPCListener.IncomingSessionRequest.accept<A>(incomingMessageHandler:cancellationHandler:)(&v9, a1, a2, a3, a4, a5, a6);

  *a7 = v9;
  return result;
}

uint64_t XPCListener.IncomingSessionRequest.accept(incomingMessageHandler:cancellationHandler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(uint64_t, uint64_t)@<X4>, _BYTE *a6@<X8>)
{
  v8 = v6;
  v14 = *(v8 + 16);

  a5(a1, a2);

  XPCListener.IncomingSessionRequest._accept(cancellationHandler:)(&v16, a3, a4);

  *a6 = v16;
  return result;
}

uint64_t XPCListener.IncomingSessionRequest._accept(_:)@<X0>(void (*a1)(uint64_t)@<X0>, _BYTE *a2@<X8>)
{
  v5 = *(v2 + 16);

  a1(v6);

  *a2 = 0;
  return result;
}

uint64_t XPCListener.IncomingSessionRequest.accept(incomingMessageHandler:cancellationHandler:)(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return XPCListener.IncomingSessionRequest.accept(incomingMessageHandler:cancellationHandler:)(a1, a2, a3, a4, a5, XPCSession.setIncomingMessageHandler(_:));
}

{
  return XPCListener.IncomingSessionRequest.accept(incomingMessageHandler:cancellationHandler:)(a1, a2, a3, a4, a5, XPCSession.setIncomingMessageHandler(_:));
}

uint64_t XPCListener.IncomingSessionRequest.accept<A>(incomingMessageHandler:cancellationHandler:)(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v16 = *(v8 + 16);

  XPCSession.setIncomingMessageHandler<A>(_:)(a2, a3, a6, a7);

  return XPCListener.IncomingSessionRequest._accept(cancellationHandler:)(a1, a4, a5);
}

uint64_t XPCListener.IncomingSessionRequest.accept(incomingMessageHandler:cancellationHandler:)(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v8 = v6;
  v14 = *(v8 + 16);

  a6(a2, a3);

  return XPCListener.IncomingSessionRequest._accept(cancellationHandler:)(a1, a4, a5);
}

uint64_t (*implicit closure #1 in XPCListener.IncomingSessionRequest.accept<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7);
  v8 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  (*(v5 + 32))(v9 + v8, v7, a2);
  return partial apply for implicit closure #2 in implicit closure #1 in XPCListener.IncomingSessionRequest.accept<A>(_:);
}

uint64_t XPCListener.IncomingSessionRequest.accept<A>(_:)@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, _BYTE *a5@<X8>)
{
  v24 = a5;
  v10 = *(a2 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v5 + 16);

  a1(v15);

  v16 = implicit closure #1 in XPCListener.IncomingSessionRequest.accept<A>(_:)(v13, a2, a3, a4);
  v18 = v17;
  v19 = implicit closure #3 in XPCListener.IncomingSessionRequest.accept<A>(_:)(v13, a2, a3, a4);
  v21 = v20;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  XPCListener.IncomingSessionRequest.accept<A>(incomingMessageHandler:cancellationHandler:)(&v25, v16, v18, v19, v21, AssociatedTypeWitness, a4);

  *v24 = v25;

  return (*(v10 + 8))(v13, a2);
}

uint64_t (*implicit closure #1 in XPCListener.IncomingSessionRequest.accept<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v7 = *(a2 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  (*(v7 + 32))(&v11[v10], v9, a2);
  return partial apply for implicit closure #2 in implicit closure #1 in XPCListener.IncomingSessionRequest.accept<A>(_:);
}

uint64_t (*implicit closure #3 in XPCListener.IncomingSessionRequest.accept<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t a1)
{
  v7 = *(a2 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  (*(v7 + 32))(&v11[v10], v9, a2);
  return partial apply for implicit closure #4 in implicit closure #3 in XPCListener.IncomingSessionRequest.accept<A>(_:);
}

XPC::XPCListener::IncomingSessionRequest::Decision __swiftcall XPCListener.IncomingSessionRequest.reject(reason:)(Swift::String reason)
{
  v3 = v1;
  v4 = *(*(v2 + 16) + 16);
  String.utf8CString.getter();
  v5 = v4;
  _swift_xpc_listener_reject_peer(v5);

  v8 = 1;
  result.decision = XPCListener.IncomingSessionRequest.decision.setter(&v8);
  v7 = *(v2 + 24);
  if (v7 == 2)
  {
    __XPC_INTERNAL_CRASH__(_:file:line:)();
  }

  *v3 = v7 & 1;
  return result;
}

void _swift_xpc_listener_reject_peer(void *a1)
{
  v1 = a1;
  MEMORY[0x19A8EA030]();
}

uint64_t XPCListener.IncomingSessionRequest.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

void *XPCListener.targetQueue.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

uint64_t XPCListener.__allocating_init(service:targetQueue:options:incomingSessionHandler:)(uint64_t a1, uint64_t a2, void *a3, xpc_listener_create_flags_t *a4, uint64_t a5, uint64_t a6)
{
  v27[1] = *MEMORY[0x1E69E9840];
  v10 = swift_allocObject();
  v11 = *a4;
  v27[0] = 0;
  v12 = swift_allocObject();
  *(v12 + 16) = a5;
  *(v12 + 24) = a6;
  type metadata accessor for XPCListener.IncomingSessionRequest();

  v13 = ClientSpecifiedHandler.init(_:)(partial apply for thunk for @escaping @callee_guaranteed (@guaranteed XPCListener.IncomingSessionRequest) -> (@out XPCListener.IncomingSessionRequest.Decision));
  v15 = v14;
  v16 = swift_allocObject();
  *(v16 + 16) = v13;
  *(v16 + 24) = v15;
  aBlock[4] = closure #1 in XPCListener.init(service:targetQueue:options:incomingSessionHandler:)partial apply;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed OS_xpc_session) -> ();
  aBlock[3] = &block_descriptor_3;
  v17 = _Block_copy(aBlock);

  v18 = String.utf8CString.getter();
  v19 = _swift_xpc_listener_create((v18 + 32), a3, v11, v17, v27);
  _Block_release(v17);

  if (v19)
  {

    *(v10 + 16) = v19;
    *(v10 + 24) = a3;
    swift_unknownObjectRelease();
    v20 = v10;
  }

  else
  {
    if (!v27[0])
    {
      __XPC_INTERNAL_CRASH__(_:file:line:)();
    }

    swift_unknownObjectRetain_n();

    lazy protocol witness table accessor for type XPCRichError and conformance XPCRichError();
    swift_allocError();
    v22 = v21;
    v23 = swift_unknownObjectRetain();
    XPCRichError.init(_:)(v23, v22);
    swift_willThrow();

    swift_unknownObjectRelease_n();
    swift_unknownObjectRelease();
    v20 = v10;
    swift_deallocPartialClassInstance();
  }

  v24 = *MEMORY[0x1E69E9840];
  return v20;
}

uint64_t XPCListener.__allocating_init(targetQueue:options:incomingSessionHandler:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  XPCListener.init(targetQueue:options:incomingSessionHandler:)(a1, a2, a3, a4);
  return v8;
}

uint64_t XPCListener.init(targetQueue:options:incomingSessionHandler:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = *a2;
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  type metadata accessor for XPCListener.IncomingSessionRequest();

  v10 = ClientSpecifiedHandler.init(_:)(thunk for @escaping @callee_guaranteed (@guaranteed XPCListener.IncomingSessionRequest) -> (@out XPCListener.IncomingSessionRequest.Decision)partial apply);
  v12 = v11;
  v13 = swift_allocObject();
  *(v13 + 16) = v10;
  *(v13 + 24) = v12;
  v17[4] = partial apply for closure #1 in XPCListener.init(targetQueue:options:incomingSessionHandler:);
  v17[5] = v13;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = thunk for @escaping @callee_guaranteed (@guaranteed OS_xpc_session) -> ();
  v17[3] = &block_descriptor_24;
  v14 = _Block_copy(v17);

  anonymous = xpc_listener_create_anonymous();

  _Block_release(v14);
  *(v4 + 16) = anonymous;
  *(v4 + 24) = a1;
  return v4;
}

uint64_t XPCListener.setIncomingSessionHandler(_:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  type metadata accessor for XPCListener.IncomingSessionRequest();

  v6 = ClientSpecifiedHandler.init(_:)(thunk for @escaping @callee_guaranteed (@guaranteed XPCListener.IncomingSessionRequest) -> (@out XPCListener.IncomingSessionRequest.Decision)partial apply);
  v8 = v7;
  v9 = *(v2 + 16);
  v10 = swift_allocObject();
  *(v10 + 16) = v6;
  *(v10 + 24) = v8;
  v13[4] = closure #1 in XPCListener.init(service:targetQueue:options:incomingSessionHandler:)partial apply;
  v13[5] = v10;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = thunk for @escaping @callee_guaranteed (@guaranteed OS_xpc_session) -> ();
  v13[3] = &block_descriptor_34;
  v11 = _Block_copy(v13);

  _swift_xpc_listener_set_incoming_session_handler(v9, v11);
  _Block_release(v11);
}

void _swift_xpc_listener_set_incoming_session_handler(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  xpc_listener_set_incoming_session_handler();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> XPCListener.activate()()
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!_swift_xpc_listener_activate(*(v0 + 16), v5))
  {
    if (!v5[0])
    {
      __XPC_INTERNAL_CRASH__(_:file:line:)();
    }

    lazy protocol witness table accessor for type XPCRichError and conformance XPCRichError();
    swift_allocError();
    v2 = v1;
    v3 = swift_unknownObjectRetain_n();
    XPCRichError.init(_:)(v3, v2);
    swift_willThrow();
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
  v4 = *MEMORY[0x1E69E9840];
}

BOOL _swift_xpc_listener_activate(void *a1, xpc_rich_error_t *a2)
{
  v3 = a1;
  v4 = xpc_listener_activate(v3, a2);

  return v4;
}

void _swift_xpc_listener_cancel(void *a1)
{
  v1 = a1;
  xpc_listener_cancel(v1);
}

uint64_t XPCListener.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t XPCListener.endpoint.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  endpoint = xpc_listener_create_endpoint();
  swift_getObjectType();
  result = OS_xpc_object.isCodable()();
  if (result)
  {
    result = xpc_copy(endpoint);
    if (result)
    {
      v6 = result;
      result = swift_unknownObjectRelease();
      *a1 = v6;
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

unint64_t XPCListener.debugDescription.getter()
{
  v1 = _swift_xpc_listener_copy_description(*(v0 + 16));
  if (!v1)
  {
    return 0xD000000000000036;
  }

  v2 = v1;
  v3 = String.init(cString:)();
  free(v2);
  return v3;
}

char *_swift_xpc_listener_copy_description(void *a1)
{
  v1 = a1;
  v2 = xpc_listener_copy_description(v1);

  return v2;
}

unint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance XPCListener()
{
  v1 = _swift_xpc_listener_copy_description(*(*v0 + 16));
  if (!v1)
  {
    return 0xD000000000000036;
  }

  v2 = v1;
  v3 = String.init(cString:)();
  free(v2);
  return v3;
}

void _swift_xpc_listener_set_peer_requirement(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  xpc_listener_set_peer_requirement();
}

uint64_t XPCListener.__allocating_init(service:targetQueue:options:requirement:incomingSessionHandler:)(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void **a5, uint64_t a6, uint64_t a7)
{
  v31[1] = *MEMORY[0x1E69E9840];
  v10 = *a4;
  v29 = *a5;
  type metadata accessor for XPCListener();
  v11 = swift_allocObject();
  v31[0] = 0;
  v12 = swift_allocObject();
  *(v12 + 16) = a6;
  *(v12 + 24) = a7;
  type metadata accessor for XPCListener.IncomingSessionRequest();
  swift_retain_n();
  v13 = a3;
  v14 = ClientSpecifiedHandler.init(_:)(thunk for @escaping @callee_guaranteed (@guaranteed XPCListener.IncomingSessionRequest) -> (@out XPCListener.IncomingSessionRequest.Decision)partial apply);
  v16 = v15;
  v17 = swift_allocObject();
  *(v17 + 16) = v14;
  *(v17 + 24) = v16;
  aBlock[4] = closure #1 in XPCListener.init(service:targetQueue:options:incomingSessionHandler:)partial apply;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed OS_xpc_session) -> ();
  aBlock[3] = &block_descriptor_45;
  v18 = _Block_copy(aBlock);

  v19 = String.utf8CString.getter();
  v28 = v10;
  v20 = _swift_xpc_listener_create((v19 + 32), v13, (v10 | 1), v18, v31);
  _Block_release(v18);

  if (v20)
  {

    *(v11 + 16) = v20;
    *(v11 + 24) = a3;
    swift_unknownObjectRelease();
    _swift_xpc_listener_set_peer_requirement(*(v11 + 16), v29);

    v21 = v11;
    if ((v28 & 1) != 0 || (XPCListener.activate()(), !v22))
    {
    }

    else
    {
    }
  }

  else
  {
    v21 = v11;

    if (!v31[0])
    {
      __XPC_INTERNAL_CRASH__(_:file:line:)();
    }

    swift_unknownObjectRetain_n();

    lazy protocol witness table accessor for type XPCRichError and conformance XPCRichError();
    swift_allocError();
    v24 = v23;
    v25 = swift_unknownObjectRetain();
    XPCRichError.init(_:)(v25, v24);
    swift_willThrow();

    swift_unknownObjectRelease_n();
    swift_unknownObjectRelease();
    swift_deallocPartialClassInstance();
  }

  v26 = *MEMORY[0x1E69E9840];
  return v21;
}

uint64_t XPCListener.IncomingSessionRequest.satisfies(requirement:)(void **a1)
{
  v2 = *a1;
  v3 = *(*(v1 + 16) + 16);
  _xpc_session_get_peer_audit_token_4SWIFT();
  return _swift__xpc_peer_requirement_match_token(v2, &v5);
}

unint64_t lazy protocol witness table accessor for type XPCListener.InitializationOptions and conformance XPCListener.InitializationOptions()
{
  result = lazy protocol witness table cache variable for type XPCListener.InitializationOptions and conformance XPCListener.InitializationOptions;
  if (!lazy protocol witness table cache variable for type XPCListener.InitializationOptions and conformance XPCListener.InitializationOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCListener.InitializationOptions and conformance XPCListener.InitializationOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCListener.InitializationOptions and conformance XPCListener.InitializationOptions;
  if (!lazy protocol witness table cache variable for type XPCListener.InitializationOptions and conformance XPCListener.InitializationOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCListener.InitializationOptions and conformance XPCListener.InitializationOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCListener.InitializationOptions and conformance XPCListener.InitializationOptions;
  if (!lazy protocol witness table cache variable for type XPCListener.InitializationOptions and conformance XPCListener.InitializationOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCListener.InitializationOptions and conformance XPCListener.InitializationOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCListener.InitializationOptions and conformance XPCListener.InitializationOptions;
  if (!lazy protocol witness table cache variable for type XPCListener.InitializationOptions and conformance XPCListener.InitializationOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCListener.InitializationOptions and conformance XPCListener.InitializationOptions);
  }

  return result;
}

uint64_t dispatch thunk of XPCListener.IncomingSessionRequest.accept(incomingMessageHandler:cancellationHandler:)()
{
  return (*(*v0 + 176))();
}

{
  return (*(*v0 + 192))();
}

{
  return (*(*v0 + 216))();
}

{
  return (*(*v0 + 232))();
}

uint64_t dispatch thunk of XPCListener.IncomingSessionRequest.accept<A>(incomingMessageHandler:cancellationHandler:)()
{
  return (*(*v0 + 184))();
}

{
  return (*(*v0 + 224))();
}

uint64_t getEnumTagSinglePayload for XPCListener.IncomingSessionRequest.Decision(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for XPCListener.IncomingSessionRequest.Decision(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t lazy protocol witness table accessor for type XPCListener.IncomingSessionRequest.Decision._Decision and conformance XPCListener.IncomingSessionRequest.Decision._Decision()
{
  result = lazy protocol witness table cache variable for type XPCListener.IncomingSessionRequest.Decision._Decision and conformance XPCListener.IncomingSessionRequest.Decision._Decision;
  if (!lazy protocol witness table cache variable for type XPCListener.IncomingSessionRequest.Decision._Decision and conformance XPCListener.IncomingSessionRequest.Decision._Decision)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCListener.IncomingSessionRequest.Decision._Decision and conformance XPCListener.IncomingSessionRequest.Decision._Decision);
  }

  return result;
}

uint64_t objectdestroy_83Tm()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t partial apply for implicit closure #2 in implicit closure #1 in XPCListener.IncomingSessionRequest.accept<A>(_:)()
{
  v1 = *(v0 + 24);
  v2 = v0 + ((*(*(*(v0 + 16) - 8) + 80) + 40) & ~*(*(*(v0 + 16) - 8) + 80));
  return (*(v1 + 24))();
}

uint64_t objectdestroy_77Tm()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t partial apply for implicit closure #2 in implicit closure #1 in XPCListener.IncomingSessionRequest.accept<A>(_:)(uint64_t *a1)
{
  v2 = *(v1 + 24);
  v3 = (*(*(*(v1 + 16) - 8) + 80) + 32) & ~*(*(*(v1 + 16) - 8) + 80);
  v5 = *a1;
  return (*(v2 + 24))(&v5);
}

uint64_t specialized String.withCString<A>(_:)(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    return _StringGuts._slowWithCString<A>(_:)();
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v7[0] = a3;
    v7[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v5 = v7;
    return a1(v5);
  }

  if ((a3 & 0x1000000000000000) == 0)
  {
    return _StringGuts._slowWithCString<A>(_:)();
  }

  v5 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  return a1(v5);
}

uint64_t thunk for @escaping @callee_guaranteed () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

double XPCReceivedMessage.handoffReply(to:_:)@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *v3;
  v6 = v3[1];
  v9[4] = a1;
  v9[5] = a2;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed () -> ();
  v9[3] = &block_descriptor_4;
  v7 = _Block_copy(v9);
  swift_unknownObjectRetain();

  xpc_dictionary_handoff_reply();
  _Block_release(v7);
  swift_unknownObjectRelease();
  *(v6 + 16) = 0;
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0;
  return result;
}

BOOL _ss17FixedWidthIntegerPsE8_convert4fromxSg5value_Sb5exacttqd___tSBRd__lFZs5Int64V_SdTt1g5(uint64_t a1, double a2)
{
  v4 = (*&a2 >> 52) & 0x7FFLL;
  v5 = *&a2 & 0xFFFFFFFFFFFFFLL;
  v6 = v4 | *&a2 & 0xFFFFFFFFFFFFFLL;
  if (!v6)
  {
    v14 = 0;
    result = 1;
    goto LABEL_35;
  }

  if (v4 == 2047)
  {
    goto LABEL_38;
  }

  v7 = Double.exponent.getter();
  if (v7 > 63)
  {
    goto LABEL_38;
  }

  v8 = v7;
  v9 = Double.significandWidth.getter();
  result = v8 >= v9;
  v11 = v9 + __clz(__rbit64(v5));
  v12 = v8 - v11;
  if (__OFSUB__(v8, v11))
  {
    __break(1u);
    goto LABEL_37;
  }

  if (v11 <= 63)
  {
    if (v12 < -64 || v12 > 64)
    {
LABEL_8:
      if (v8 != 63)
      {
        if (v8 < -64)
        {
          do
          {
            v13 = 0;
            v14 = 0;
LABEL_29:
            v14 |= v13;
LABEL_30:
            if (a2 >= 0.0)
            {
              if ((v14 & 0x8000000000000000) == 0)
              {
                goto LABEL_34;
              }
            }

            else
            {
              if ((v14 & 0x8000000000000000) == 0)
              {
                goto LABEL_32;
              }

              __break(1u);
            }

            __break(1u);
LABEL_42:
            ;
          }

          while (v8 != -64);
          goto LABEL_15;
        }

        goto LABEL_17;
      }

LABEL_37:
      if (a2 >= 0.0)
      {
LABEL_38:
        v14 = 0;
        result = 0;
        LOBYTE(v6) = 1;
        goto LABEL_35;
      }

LABEL_50:
      LOBYTE(v6) = 0;
      v14 = 0x8000000000000000;
      goto LABEL_35;
    }

    if ((v12 & 0x8000000000000000) == 0)
    {
      if (v12 == 64)
      {
        goto LABEL_8;
      }

LABEL_24:
      v14 = v5 << v12;
      if (v8 != 63)
      {
        goto LABEL_25;
      }

      goto LABEL_48;
    }

    if (v12 == -64)
    {
      goto LABEL_8;
    }

LABEL_47:
    v14 = v5 >> (v11 - v8);
    if (v8 != 63)
    {
LABEL_25:
      if (v8 >= -64)
      {
        if ((v8 & 0x8000000000000000) == 0)
        {
LABEL_28:
          v13 = 1 << v8;
          goto LABEL_29;
        }

        if (v8 == -64)
        {
          goto LABEL_30;
        }
      }

      v13 = 0;
      goto LABEL_29;
    }

LABEL_48:
    if (a2 >= 0.0 || v14)
    {
      goto LABEL_38;
    }

    goto LABEL_50;
  }

  if (v12 >= -64 && v12 <= 64)
  {
    if (v12 < 0)
    {
      if (v12 != -64)
      {
        goto LABEL_47;
      }
    }

    else if (v12 != 64)
    {
      goto LABEL_24;
    }
  }

  if (v8 == 63)
  {
    goto LABEL_37;
  }

  if (v8 >= -64)
  {
LABEL_17:
    if (v8 < 0)
    {
      goto LABEL_42;
    }

    v14 = 0;
    goto LABEL_28;
  }

LABEL_15:
  v14 = 0;
  if (a2 < 0.0)
  {
LABEL_32:
    LOBYTE(v6) = 0;
    v14 = -v14;
  }

  else
  {
LABEL_34:
    LOBYTE(v6) = 0;
  }

LABEL_35:
  *a1 = v14;
  *(a1 + 8) = v6;
  return result;
}

void *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  v27 = type metadata accessor for CodingUserInfoKey();
  v29 = *(v27 - 8);
  v2 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v26 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys17CodingUserInfoKeyVypGMd, &_ss18_DictionaryStorageCys17CodingUserInfoKeyVypGMR);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v25[0] = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v28 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v25[1] = v29 + 32;
    v25[2] = v29 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v30 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v29;
        v21 = *(v29 + 72) * v19;
        v22 = v26;
        v23 = v27;
        (*(v29 + 16))(v26, *(v4 + 48) + v21, v27);
        v19 *= 32;
        outlined init with copy of Any(*(v4 + 56) + v19, v31);
        v24 = v28;
        (*(v20 + 32))(*(v28 + 48) + v21, v22, v23);
        result = outlined init with take of Any(v31, (*(v24 + 56) + v19));
        v14 = v30;
      }

      while (v30);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v25[0];
        v6 = v28;
        goto LABEL_18;
      }

      v18 = *(v8 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v30 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys6UInt32V3XPC16DecodedContainerCGMd, &_ss18_DictionaryStorageCys6UInt32V3XPC16DecodedContainerCGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 4 * v17) = *(*(v2 + 48) + 4 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy3XPC13EncodingGraphO3KeyOAE5ValueOGMd, &_ss18_DictionaryStorageCy3XPC13EncodingGraphO3KeyOAE5ValueOGMR);
  v24 = v0;
  v1 = *v0;
  v2 = static _DictionaryStorage.copy(original:)();
  v3 = v2;
  if (*(v1 + 16))
  {
    result = (v2 + 64);
    v5 = ((1 << *(v3 + 32)) + 63) >> 6;
    if (v3 != v1 || result >= v1 + 64 + 8 * v5)
    {
      result = memmove(result, (v1 + 64), 8 * v5);
    }

    v7 = 0;
    *(v3 + 16) = *(v1 + 16);
    v8 = 1 << *(v1 + 32);
    v9 = *(v1 + 64);
    v10 = -1;
    if (v8 < 64)
    {
      v10 = ~(-1 << v8);
    }

    v11 = v10 & v9;
    v12 = (v8 + 63) >> 6;
    if ((v10 & v9) != 0)
    {
      do
      {
        v13 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
LABEL_17:
        v16 = v13 | (v7 << 6);
        v17 = 16 * v16;
        v16 *= 32;
        v18 = *(v1 + 56) + v16;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v18 + 24);
        *(*(v3 + 48) + v17) = *(*(v1 + 48) + v17);
        v23 = *(v3 + 56) + v16;
        *v23 = v19;
        *(v23 + 8) = v20;
        *(v23 + 16) = v21;
        *(v23 + 24) = v22;

        result = outlined copy of EncodingGraph.Value(v19, v20, v21, v22);
      }

      while (v11);
    }

    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v7 >= v12)
      {
        goto LABEL_19;
      }

      v15 = *(v1 + 64 + 8 * v7);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v24 = v3;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy3XPC13EncodingGraphO3KeyOSiGMd, &_ss18_DictionaryStorageCy3XPC13EncodingGraphO3KeyOSiGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 16 * v17) = *(*(v2 + 48) + 16 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySOs6UInt32VGMd, &_ss18_DictionaryStorageCySOs6UInt32VGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 4 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 4 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t _swift_xpc_peer_requirement_match_received_message(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  matched = xpc_peer_requirement_match_received_message();

  return matched;
}

uint64_t getEnumTagSinglePayload for XPCReceivedMessage(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for XPCReceivedMessage(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t outlined init with copy of (CodingUserInfoKey, Any)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17CodingUserInfoKeyV_yptMd, &_ss17CodingUserInfoKeyV_yptMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t UnkeyedDecodingContainer.decodeIfPresent(_:)()
{
  return MEMORY[0x1EEE6AFB0]();
}

{
  return MEMORY[0x1EEE6AFB8]();
}

{
  return MEMORY[0x1EEE6AFC0]();
}

{
  return MEMORY[0x1EEE6AFC8]();
}

{
  return MEMORY[0x1EEE6AFD0]();
}

{
  return MEMORY[0x1EEE6AFE0]();
}

{
  return MEMORY[0x1EEE6AFE8]();
}

uint64_t UnkeyedDecodingContainer.decode(_:)()
{
  return MEMORY[0x1EEE6AFF0]();
}

{
  return MEMORY[0x1EEE6AFF8]();
}

uint64_t UnkeyedEncodingContainer.encode<A>(contentsOf:)()
{
  return MEMORY[0x1EEE6B098]();
}

{
  return MEMORY[0x1EEE6B0A0]();
}

{
  return MEMORY[0x1EEE6B0A8]();
}

{
  return MEMORY[0x1EEE6B0B0]();
}

{
  return MEMORY[0x1EEE6B0B8]();
}

{
  return MEMORY[0x1EEE6B0C0]();
}

{
  return MEMORY[0x1EEE6B0C8]();
}

{
  return MEMORY[0x1EEE6B0D0]();
}

{
  return MEMORY[0x1EEE6B0D8]();
}

{
  return MEMORY[0x1EEE6B0E0]();
}

{
  return MEMORY[0x1EEE6B0E8]();
}

{
  return MEMORY[0x1EEE6B0F8]();
}

{
  return MEMORY[0x1EEE6B100]();
}

{
  return MEMORY[0x1EEE6B108]();
}

{
  return MEMORY[0x1EEE6B110]();
}

{
  return MEMORY[0x1EEE6B118]();
}

uint64_t UnkeyedEncodingContainer.encode(_:)()
{
  return MEMORY[0x1EEE6B120]();
}

{
  return MEMORY[0x1EEE6B128]();
}

uint64_t DefaultStringInterpolation.appendInterpolation<A>(_:)()
{
  return MEMORY[0x1EEE6B178]();
}

{
  return MEMORY[0x1EEE6B180]();
}

uint64_t SingleValueDecodingContainer.decode(_:)()
{
  return MEMORY[0x1EEE6B270]();
}

{
  return MEMORY[0x1EEE6B278]();
}

uint64_t SingleValueEncodingContainer.encode(_:)()
{
  return MEMORY[0x1EEE6B308]();
}

{
  return MEMORY[0x1EEE6B310]();
}

uint64_t KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)()
{
  return MEMORY[0x1EEE6B378]();
}

{
  return MEMORY[0x1EEE6B380]();
}

{
  return MEMORY[0x1EEE6B388]();
}

{
  return MEMORY[0x1EEE6B390]();
}

{
  return MEMORY[0x1EEE6B398]();
}

{
  return MEMORY[0x1EEE6B3A8]();
}

{
  return MEMORY[0x1EEE6B3B0]();
}

uint64_t KeyedDecodingContainerProtocol.decode(_:forKey:)()
{
  return MEMORY[0x1EEE6B3B8]();
}

{
  return MEMORY[0x1EEE6B3C0]();
}

uint64_t KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)()
{
  return MEMORY[0x1EEE6B3E0]();
}

{
  return MEMORY[0x1EEE6B3E8]();
}

{
  return MEMORY[0x1EEE6B3F0]();
}

{
  return MEMORY[0x1EEE6B3F8]();
}

{
  return MEMORY[0x1EEE6B400]();
}

{
  return MEMORY[0x1EEE6B410]();
}

{
  return MEMORY[0x1EEE6B418]();
}

{
  return MEMORY[0x1EEE6B420]();
}

{
  return MEMORY[0x1EEE6B428]();
}

uint64_t KeyedEncodingContainerProtocol.encode(_:forKey:)()
{
  return MEMORY[0x1EEE6B438]();
}

{
  return MEMORY[0x1EEE6B440]();
}