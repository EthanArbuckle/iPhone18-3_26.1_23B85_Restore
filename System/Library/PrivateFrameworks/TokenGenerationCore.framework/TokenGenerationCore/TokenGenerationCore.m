uint64_t type metadata instantiation function for Overridable()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void Overridable<A>.init(key:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  Overridable<A>.init(key:)(a1, a2, partial apply for closure #1 in Overridable<A>.init(key:), a3);
}

{
  Overridable<A>.init(key:)(a1, a2, partial apply for closure #1 in Overridable<A>.init(key:), a3);
}

{
  Overridable<A>.init(key:)(a1, a2, partial apply for closure #1 in Overridable<A>.init(key:), a3);
}

{
  Overridable<A>.init(key:)(a1, a2, partial apply for closure #1 in Overridable<A>.init(key:), a3);
}

{
  Overridable<A>.init(key:)(a1, a2, partial apply for closure #1 in Overridable<A>.init(key:), a3);
}

uint64_t sub_1A8E86D38()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void Overridable<A>.init(key:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = objc_allocWithZone(MEMORY[0x1E695E000]);

  v10 = MEMORY[0x1AC57BF60](0xD000000000000019, 0x80000001A8FD9420);
  v11 = [v9 initWithSuiteName_];

  if (v11)
  {
    *a4 = v11;
    a4[1] = a1;
    a4[2] = a2;
    a4[3] = a3;
    a4[4] = v8;
  }

  else
  {
    __break(1u);
  }
}

uint64_t getEnumTagSinglePayload for ModelConfiguration(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t protocol witness for TokenIDToTextConverterProtocol.textsForTokenID(_:isStopTokenID:) in conformance TokenIDToTextConverter(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 40);
  v6 = *(*v2 + 48);
  __swift_project_boxed_opaque_existential_1((*v2 + 16), v5);
  return (*(v6 + 24))(a1, a2, v5, v6);
}

uint64_t TokenIDToTextConverterProtocol.textsForTokenIDs(_:stopTokenIDs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = 0;
  v20 = MEMORY[0x1E69E7CC0];
  v8 = *(a1 + 16);
  v18 = a1 + 32;
  v9 = (a2 + 32);
  while (1)
  {
    if (v7 == v8)
    {
      return v20;
    }

    v10 = *(v18 + 8 * v7++);
    v11 = *(a2 + 16);
    v12 = v9;
    do
    {
      v13 = v11;
      if (v11-- == 0)
      {
        break;
      }

      v15 = *v12++;
    }

    while (v15 != v10);
    v16 = (*(a4 + 24))(v10, v13 != 0, a3, a4);
    if (v4)
    {
      break;
    }

    specialized Array.append<A>(contentsOf:)(v16);
    if (v13)
    {
      return v20;
    }
  }
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

char *LegacyTokenIDToTextConverterImpl.textsForTokenID(_:isStopTokenID:)(uint64_t a1, char a2)
{
  v5 = v2;
  v7 = a1;
  v8 = LegacyTokenIDToTextConverterImpl.shouldBufferTokenID(tokenID:isStopTokenID:)(a1, a2);
  if (v3)
  {
    return v4;
  }

  object = *(v2 + 56);
  if (v8)
  {
    v10 = *(v2 + 56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + 56) = object;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_4:
      v13 = *(object + 16);
      v12 = *(object + 24);
      if (v13 >= v12 >> 1)
      {
        object = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, object);
      }

      *(object + 16) = v13 + 1;
      *(object + 8 * v13 + 32) = v7;
      *(v5 + 56) = object;
      return MEMORY[0x1E69E7CC0];
    }

LABEL_53:
    object = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(object + 16) + 1, 1, object);
    *(v5 + 56) = object;
    goto LABEL_4;
  }

  if (!*(object + 16))
  {
    v4 = MEMORY[0x1E69E7CC0];
    if (a2)
    {
      return v4;
    }

    goto LABEL_28;
  }

  v126._rawValue = *(v2 + 16);

  v14 = object;
  v4 = 0;
  specialized Array.append<A>(contentsOf:)(v14);
  v15 = *(v2 + 24);
  v16 = TokenizerRunner.detokenize(_:)(v126);
  countAndFlagsBits = v16._countAndFlagsBits;
  if (v17)
  {
    goto LABEL_30;
  }

  object = v16._object;
  v114 = a2;
  v116 = v7;
  v18 = *(v5 + 16);
  *(v5 + 16) = v126;

  v19 = *(v5 + 32);
  v22 = *(v19 + 64);
  v21 = v19 + 64;
  v20 = v22;
  v23 = 1 << *(*(v5 + 32) + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & v20;
  v7 = (v23 + 63) >> 6;
  v118 = *(v5 + 32);

  v26 = 0;
  if (v25)
  {
    while (1)
    {
      v27 = v26;
LABEL_17:
      v28 = __clz(__rbit64(v25));
      v25 &= v25 - 1;
      v29 = (v27 << 10) | (16 * v28);
      v30 = *(v118 + 48) + v29;
      v31 = *v30;
      v32 = *(v30 + 8);
      v33 = (*(v118 + 56) + v29);
      v34 = *v33;
      v35 = v33[1];
      v126._rawValue = countAndFlagsBits;
      v127 = object;
      v124._rawValue = v31;
      v125 = v32;
      v120 = v34;
      v121 = v35;
      lazy protocol witness table accessor for type String and conformance String();

      countAndFlagsBits = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v37 = v36;

      object = v37;
      if (!v25)
      {
        goto LABEL_13;
      }
    }
  }

  while (1)
  {
LABEL_13:
    v27 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      __break(1u);
      goto LABEL_52;
    }

    if (v27 >= v7)
    {
      break;
    }

    v25 = *(v21 + 8 * v27);
    ++v26;
    if (v25)
    {
      v26 = v27;
      goto LABEL_17;
    }
  }

  swift_beginAccess();
  v38 = *(v5 + 40);
  v39 = *(v5 + 48);

  v40 = String.count.getter();

  v41 = specialized Collection.dropFirst(_:)(v40, countAndFlagsBits, object);
  v43 = v42;
  v45 = v44;
  v47 = v46;

  v48 = MEMORY[0x1AC57C040](v41, v43, v45, v47);
  v50 = v49;

  swift_beginAccess();
  MEMORY[0x1AC57C120](v48, v50);
  swift_endAccess();
  if (one-time initialization token for tokenization != -1)
  {
    swift_once();
  }

  v51 = type metadata accessor for Logger();
  __swift_project_value_buffer(v51, static Log.tokenization);

  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    countAndFlagsBits = swift_slowAlloc();
    v124._rawValue = countAndFlagsBits;
    *v54 = 136643075;
    v55 = *(v5 + 56);

    v57 = MEMORY[0x1AC57C2C0](v56, MEMORY[0x1E69E6530]);
    v59 = v58;

    v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v59, &v124);

    *(v54 + 4) = v60;
    *(v54 + 12) = 2085;
    *(v54 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v50, &v124);
    _os_log_impl(&dword_1A8E85000, v52, v53, "Detokenized buffered token ids %{sensitive}s to %{sensitive}s", v54, 0x16u);
    v61 = countAndFlagsBits;
    swift_arrayDestroy();
    MEMORY[0x1AC57DBF0](v61, -1, -1);
    MEMORY[0x1AC57DBF0](v54, -1, -1);
  }

  v62 = MEMORY[0x1E69E7CC0];
  v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v64 = *(v4 + 2);
  v63 = *(v4 + 3);
  if (v64 >= v63 >> 1)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v63 > 1), v64 + 1, 1, v4);
  }

  *(v4 + 2) = v64 + 1;
  v65 = &v4[16 * v64];
  *(v65 + 4) = v48;
  *(v65 + 5) = v50;
  v66 = *(v5 + 56);
  *(v5 + 56) = v62;

  v7 = v116;
  if ((v114 & 1) == 0)
  {
LABEL_28:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1A8FC9400;
    *(inited + 32) = v7;
    v124._rawValue = *(v5 + 16);

    specialized Array.append<A>(contentsOf:)(inited);
    rawValue = v124._rawValue;
    v69 = *(v5 + 24);
    v70 = TokenizerRunner.detokenize(_:)(v124);
    countAndFlagsBits = v70._countAndFlagsBits;
    if (!v71)
    {
      v72 = v70._object;
      v115 = v4;
      v117 = v7;
      v73 = *(v5 + 16);
      *(v5 + 16) = rawValue;

      v74 = *(v5 + 32);
      v77 = *(v74 + 64);
      v76 = v74 + 64;
      v75 = v77;
      v78 = 1 << *(*(v5 + 32) + 32);
      v79 = -1;
      if (v78 < 64)
      {
        v79 = ~(-1 << v78);
      }

      object = v79 & v75;
      v7 = (v78 + 63) >> 6;
      v119 = *(v5 + 32);

      for (i = 0; object; v72 = v91)
      {
        v81 = i;
LABEL_39:
        v82 = __clz(__rbit64(object));
        object &= object - 1;
        v83 = (v81 << 10) | (16 * v82);
        v84 = (*(v119 + 48) + v83);
        v85 = *v84;
        v86 = v84[1];
        v87 = (*(v119 + 56) + v83);
        v88 = *v87;
        v89 = v87[1];
        v124._rawValue = countAndFlagsBits;
        v125 = v72;
        v120 = v85;
        v121 = v86;
        v122 = v88;
        v123 = v89;
        lazy protocol witness table accessor for type String and conformance String();

        countAndFlagsBits = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        v91 = v90;
      }

      while (1)
      {
        v81 = i + 1;
        if (__OFADD__(i, 1))
        {
          break;
        }

        if (v81 >= v7)
        {

          swift_beginAccess();
          v93 = *(v5 + 40);
          v92 = *(v5 + 48);

          v94 = String.count.getter();

          v95 = specialized Collection.dropFirst(_:)(v94, countAndFlagsBits, v72);
          v97 = v96;
          v99 = v98;
          v101 = v100;

          v102 = MEMORY[0x1AC57C040](v95, v97, v99, v101);
          v104 = v103;

          swift_beginAccess();
          MEMORY[0x1AC57C120](v102, v104);
          swift_endAccess();
          if (one-time initialization token for tokenization != -1)
          {
            swift_once();
          }

          v105 = type metadata accessor for Logger();
          __swift_project_value_buffer(v105, static Log.tokenization);

          v106 = Logger.logObject.getter();
          v107 = static os_log_type_t.debug.getter();

          v4 = v115;
          if (os_log_type_enabled(v106, v107))
          {
            v108 = swift_slowAlloc();
            v109 = swift_slowAlloc();
            v120 = v109;
            *v108 = 134545923;
            *(v108 + 4) = v117;
            *(v108 + 12) = 2085;
            *(v108 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v102, v104, &v120);
            _os_log_impl(&dword_1A8E85000, v106, v107, "Detokenized %{sensitive}ld to %{sensitive}s", v108, 0x16u);
            __swift_destroy_boxed_opaque_existential_0(v109);
            MEMORY[0x1AC57DBF0](v109, -1, -1);
            MEMORY[0x1AC57DBF0](v108, -1, -1);
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v115 + 2) + 1, 1, v115);
          }

          v111 = *(v4 + 2);
          v110 = *(v4 + 3);
          if (v111 >= v110 >> 1)
          {
            v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v110 > 1), v111 + 1, 1, v4);
          }

          *(v4 + 2) = v111 + 1;
          v112 = &v4[16 * v111];
          *(v112 + 4) = v102;
          *(v112 + 5) = v104;
          return v4;
        }

        object = *(v76 + 8 * v81);
        ++i;
        if (object)
        {
          i = v81;
          goto LABEL_39;
        }
      }

LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

LABEL_30:
  }

  return v4;
}

uint64_t LegacyTokenIDToTextConverterImpl.shouldBufferTokenID(tokenID:isStopTokenID:)(uint64_t a1, char a2)
{
  v5 = type metadata accessor for Unicode.Scalar.Properties();
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v13 = v36 - v12;
  if (a2)
  {
    v14 = 0;
    return v14 & 1;
  }

  if (*(v2 + 64))
  {
LABEL_4:
    v14 = 1;
    return v14 & 1;
  }

  v16 = v11;
  v37 = v10;
  v17 = *(v2 + 24);
  v18 = v17[5];
  v19 = v17[6];
  __swift_project_boxed_opaque_existential_1(v17 + 2, v18);
  if (((*(v19 + 64))(a1, v18, v19) & 1) == 0)
  {
    v23 = v17[5];
    v24 = v17[6];
    __swift_project_boxed_opaque_existential_1(v17 + 2, v23);
    v36[6] = (*(v24 + 16))(a1, v23, v24);
    v36[7] = v25;
    v26 = String.init<A>(_:)();
    v28 = specialized BidirectionalCollection.last.getter(v26, v27);

    if ((v28 & 0x100000000) == 0)
    {
      Unicode.Scalar.properties.getter();
      v29 = Unicode.Scalar.Properties.isEmoji.getter();
      v30 = *(v16 + 8);
      v30(v13, v37);
      if ((v29 & 1) == 0)
      {
        Unicode.Scalar.properties.getter();
        v31 = Unicode.Scalar.Properties.isEmojiModifier.getter();
        v30(v9, v37);
        if ((v31 & 1) == 0)
        {
          Unicode.Scalar.properties.getter();
          v32 = Unicode.Scalar.Properties.isEmojiPresentation.getter();
          v30(v9, v37);
          if ((v32 & 1) == 0)
          {
            Unicode.Scalar.properties.getter();
            v33 = Unicode.Scalar.Properties.isEmojiModifierBase.getter();
            v30(v9, v37);
            if ((v33 & 1) == 0)
            {
              Unicode.Scalar.properties.getter();
              v34 = Unicode.Scalar.Properties.isJoinControl.getter();
              v30(v9, v37);
              if ((v34 & 1) == 0)
              {
                Unicode.Scalar.properties.getter();
                v14 = Unicode.Scalar.Properties.isVariationSelector.getter();
                v30(v9, v37);
                return v14 & 1;
              }
            }
          }
        }
      }
    }

    goto LABEL_4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A8FC9400;
  *(inited + 32) = a1;
  v14 = v17;
  v21 = TokenizerRunner.detokenize(_:)(inited);
  if (v22)
  {
    swift_setDeallocating();
  }

  else
  {
    swift_setDeallocating();
    v35 = specialized Collection.first.getter(v21._countAndFlagsBits, v21._object);

    v14 = (v35 & 0x100) != 0 || (v35 & 0x80) != 0;
  }

  return v14 & 1;
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

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

  memcpy((v3 + 8 * v8 + 32), (v6 + 32), 8 * v2);

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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySnySiGGMd, &_ss23_ContiguousArrayStorageCySnySiGGMR);
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
    memcpy(v13, v14, 16 * v8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore9Regex2BNFO4RuleVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore9Regex2BNFO4RuleVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySsGMd, &_ss23_ContiguousArrayStorageCySsGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7Float16VGMd, &_ss23_ContiguousArrayStorageCys7Float16VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore16EarleyRecognizerC0H6SymbolOGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore16EarleyRecognizerC0H6SymbolOGMR);
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
  v15 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore16EarleyRecognizerC4ItemVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore16EarleyRecognizerC4ItemVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 40 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore17RecognizerElementOGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore17RecognizerElementOGMR);
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
  v15 = 8 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7UnicodeO6ScalarVGMd, &_ss23_ContiguousArrayStorageCys7UnicodeO6ScalarVGMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV8ToolCallV8FunctionVGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV8ToolCallV8FunctionVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore21TokenizedPromptModuleVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore21TokenizedPromptModuleVGMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore12PromptModuleOGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore12PromptModuleOGMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV4TurnV7SegmentOGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV4TurnV7SegmentOGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV8ToolCallVGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV8ToolCallVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV14ToolCallResultVGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV14ToolCallResultVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore14ToolCallParserV13FunctionDeltaVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore14ToolCallParserV13FunctionDeltaVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
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

Swift::tuple_tokens_OpaquePointer_stopSequence_String_optional __swiftcall StopSequenceMonitor.handleOutputTokens(_:)(Swift::OpaquePointer a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v77 = &v69 - v6;
  v85 = v1[1];
  v72 = v85;

  rawValue = a1._rawValue;
  specialized Array.append<A>(contentsOf:)(v7);
  v8 = 0xE000000000000000;
  v83 = 0;
  v84 = 0xE000000000000000;
  v9 = *(v85 + 16);
  v76 = v85;
  v74 = v1 + 1;
  if (v9)
  {
    v10 = (v85 + 40);
    do
    {
      v11 = *(v10 - 1);
      v12 = *v10;

      MEMORY[0x1AC57C120](v11, v12);

      v10 += 2;
      --v9;
    }

    while (v9);
    v8 = v84;
    v78 = v83;
  }

  else
  {
    v78 = 0;
  }

  v13 = *v1;
  v14 = *(*v1 + 56);
  v75 = *v1 + 56;
  v15 = v13[32];
  v73 = 1;
  v16 = 1 << v15;
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v14;
  v19 = (v16 + 63) >> 6;
  v79 = v13;

  v69 = 0;
  v20 = 0;
  v70 = 2;
LABEL_9:
  if (v18)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v21 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v21 >= v19)
    {

      if (v73)
      {

        v32 = 0;
        v9 = 0;
        *v74 = MEMORY[0x1E69E7CC0];
        v33 = v76;
      }

      else
      {

        specialized Array.append<A>(contentsOf:)(v34);
        v32 = 0;
        v9 = 0;
        v33 = MEMORY[0x1E69E7CC0];
      }

      goto LABEL_38;
    }

    v18 = *(v75 + 8 * v21);
    ++v20;
    if (v18)
    {
      v20 = v21;
LABEL_14:
      v22 = v78;
      v23 = *(v79 + 6) + ((v20 << 10) | (16 * __clz(__rbit64(v18))));
      v2 = *v23;
      v24 = *(v23 + 8);
      v82[0] = v78;
      v82[1] = v8;
      v80 = v2;
      v81 = v24;
      v25 = type metadata accessor for Locale();
      v9 = v77;
      (*(*(v25 - 8) + 56))(v77, 1, 1, v25);
      lazy protocol witness table accessor for type String and conformance String();

      v26 = StringProtocol.range<A>(of:options:range:locale:)();
      v28 = v27;
      outlined destroy of Locale?(v9);
      if ((v28 & 1) == 0)
      {
        v77 = v26;
        v75 = v8;

        outlined consume of StopSequenceMonitor.StopSequenceMatch(v69, 0, 0, v70);
        v35 = one-time initialization token for stopSequenceMonitor;

        v9 = v24;
        if (v35 == -1)
        {
          goto LABEL_21;
        }

        goto LABEL_48;
      }

      v18 &= v18 - 1;
      v29 = specialized static StopSequenceMonitor.endsWithPrefix(_:stopSequence:)(v22, v8);
      v31 = v30;

      if ((v31 & 1) == 0)
      {
        outlined consume of StopSequenceMonitor.StopSequenceMatch(v69, 0, 0, v70);
        v73 = 0;
        v70 = 1;
        v69 = v29;
      }

      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  swift_once();
LABEL_21:
  v36 = type metadata accessor for Logger();
  __swift_project_value_buffer(v36, static Log.stopSequenceMonitor);

  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.debug.getter();

  v39 = os_log_type_enabled(v37, v38);
  v40 = v76;
  rawValue = v2;
  if (v39)
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v82[0] = v42;
    *v41 = 136642819;
    *(v41 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(rawValue, v9, v82);
    _os_log_impl(&dword_1A8E85000, v37, v38, "Found stop sequence in output:%{sensitive}s", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v42);
    MEMORY[0x1AC57DBF0](v42, -1, -1);
    MEMORY[0x1AC57DBF0](v41, -1, -1);
  }

  v43 = v77;
  if (*(v40 + 2))
  {
    v44 = *(v40 + 2);
    v45 = 0;
    v73 = v77 >> 14;
    v2 = v40 + 40;
    v79 = MEMORY[0x1E69E7CC0];
    v46 = 15;
    while (1)
    {
      if (v45 >= *(v40 + 2))
      {
        goto LABEL_47;
      }

      v48 = *(v2 - 1);
      v47 = *v2;

      String.count.getter();
      v49 = String.index(_:offsetBy:limitedBy:)();
      if ((v50 & 1) == 0)
      {
        v43 = v49;
      }

      if (v43 >> 14 >= v73)
      {
        break;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v79 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v79 + 2) + 1, 1, v79);
      }

      v52 = *(v79 + 2);
      v51 = *(v79 + 3);
      if (v52 >= v51 >> 1)
      {
        v79 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v51 > 1), v52 + 1, 1, v79);
      }

      ++v45;
      v53 = v79;
      *(v79 + 2) = v52 + 1;
      v54 = &v53[16 * v52];
      *(v54 + 4) = v48;
      *(v54 + 5) = v47;
      v2 += 2;
      v46 = v43;
      v40 = v76;
      v43 = v77;
      if (v44 == v45)
      {
        goto LABEL_36;
      }
    }

    if (v43 >> 14 < v46 >> 14)
    {
      __break(1u);
    }

    else
    {
      v56 = String.subscript.getter();
      v58 = v57;
      v60 = v59;
      v62 = v61;

      if ((v56 ^ v58) < 0x4000)
      {

        v48 = v74;
        v43 = v77;
        goto LABEL_37;
      }

      v47 = MEMORY[0x1AC57C040](v56, v58, v60, v62);
      v43 = v63;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v48 = v74;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_43;
      }
    }

    v79 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v79 + 2) + 1, 1, v79);
LABEL_43:
    v66 = *(v79 + 2);
    v65 = *(v79 + 3);
    if (v66 >= v65 >> 1)
    {
      v79 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v65 > 1), v66 + 1, 1, v79);
    }

    v67 = v79;
    *(v79 + 2) = v66 + 1;
    v68 = &v67[16 * v66];
    *(v68 + 4) = v47;
    *(v68 + 5) = v43;
    v43 = v77;
    goto LABEL_37;
  }

  v79 = MEMORY[0x1E69E7CC0];
LABEL_36:

  v48 = v74;
LABEL_37:
  outlined consume of StopSequenceMonitor.StopSequenceMatch(v43, rawValue, v9, 0);

  v32 = rawValue;
  *v48 = MEMORY[0x1E69E7CC0];
  v33 = v79;
LABEL_38:
  v55 = v9;
  result.stopSequence.value._object = v55;
  result.stopSequence.value._countAndFlagsBits = v32;
  result.tokens._rawValue = v33;
  return result;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, int64_t a2, char a3, char *a4)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy15TokenGeneration0D0VGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration0D0VGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore9Regex2BNFO6ChoiceVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore9Regex2BNFO6ChoiceVGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore9Regex2BNFO6SymbolOGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore9Regex2BNFO6SymbolOGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySJGMd, &_ss23_ContiguousArrayStorageCySJGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore16EarleyRecognizerC0H4RuleVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore16EarleyRecognizerC0H4RuleVGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore16EarleyRecognizerC5StateVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore16EarleyRecognizerC5StateVGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore17NonTerminalSymbolVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore17NonTerminalSymbolVGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore4JSONOGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore4JSONOGMR);
}

uint64_t getEnumTagSinglePayload for Prompt.Rendering(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t storeEnumTagSinglePayload for Prompt.Rendering(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t ModelConfiguration.init(modelConfigurationData:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for _LoadedModelConfiguration();
  v7 = static _LoadedModelConfiguration.create(modelConfigurationData:)();
  result = outlined consume of Data._Representation(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t static _LoadedModelConfiguration.create(modelConfigurationData:)()
{
  v1 = type metadata accessor for JSONDecoder();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  lazy protocol witness table accessor for type _LoadedModelConfiguration and conformance _LoadedModelConfiguration();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  if (!v0)
  {
    return v5;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _LoadedModelConfiguration and conformance _LoadedModelConfiguration()
{
  result = lazy protocol witness table cache variable for type _LoadedModelConfiguration and conformance _LoadedModelConfiguration;
  if (!lazy protocol witness table cache variable for type _LoadedModelConfiguration and conformance _LoadedModelConfiguration)
  {
    type metadata accessor for _LoadedModelConfiguration();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _LoadedModelConfiguration and conformance _LoadedModelConfiguration);
  }

  return result;
}

uint64_t protocol witness for Decodable.init(from:) in conformance _LoadedModelConfiguration@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 128))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

double sentencepiece::SentencePieceProcessor::SentencePieceProcessor(sentencepiece::SentencePieceProcessor *this)
{
  *this = &unk_1F1CABBD8;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  return result;
}

uint64_t TokenizerRunner.init(tokenizerPath:substitutionTextForInputTokenText:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 96) = 1;
  v6 = objc_allocWithZone(TokenizerRunnerObjC);
  v7 = @nonobjc TokenizerRunnerObjC.init(tokenizerPath:)();
  if (v4)
  {

    type metadata accessor for TokenizerRunner();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v8 = v7;
    v11 = type metadata accessor for TokenizerRunnerObjC();
    v12 = &protocol witness table for TokenizerRunnerObjC;
    *&v10 = v8;
    outlined init with take of PromptComponentValueConvertible(&v10, v3 + 16);
    v11 = &type metadata for GenerationOverrides;
    v12 = &protocol witness table for GenerationOverrides;
    *&v10 = swift_allocObject();
    GenerationOverrides.init()((v10 + 16));
    outlined init with take of PromptComponentValueConvertible(&v10, v3 + 56);
    *(v3 + 104) = a3;
  }

  return v3;
}

uint64_t outlined init with take of PromptComponentValueConvertible(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1A8E88B88()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  v3 = *(v0 + 72);

  v4 = *(v0 + 88);

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

id @nonobjc TokenizerRunnerObjC.init(tokenizerPath:)()
{
  v7[1] = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1AC57BF60]();

  v7[0] = 0;
  v2 = [v0 initWithTokenizerPath:v1 error:v7];

  if (v2)
  {
    v3 = v7[0];
  }

  else
  {
    v4 = v7[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v5 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t _LoadedModelConfiguration.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  _LoadedModelConfiguration.init(from:)(a1);
  return v2;
}

uint64_t _LoadedModelConfiguration.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19TokenGenerationCore25_LoadedModelConfigurationC10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy19TokenGenerationCore25_LoadedModelConfigurationC10CodingKeysOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v45 - v8;
  *(v3 + 40) = 0u;
  *(v3 + 56) = 0u;
  v10 = a1[3];
  v11 = a1[4];
  v49 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  lazy protocol witness table accessor for type _LoadedModelConfiguration.CodingKeys and conformance _LoadedModelConfiguration.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    v40 = *(v3 + 56);
    v41 = *(v3 + 64);
    outlined consume of (start: String, end: String)?(*(v3 + 40), *(v3 + 48));
    type metadata accessor for _LoadedModelConfiguration();
    swift_deallocPartialClassInstance();
LABEL_19:
    __swift_destroy_boxed_opaque_existential_0(v49);
    return v3;
  }

  v48 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
  v51 = 0;
  lazy protocol witness table accessor for type [String : String] and conformance <> [A : B]();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v12 = v50;
  if (!v50)
  {
    v35 = 0;
LABEL_17:
    *(v3 + 16) = v35;
    swift_beginAccess();
    v36 = *(v3 + 40);
    v37 = *(v3 + 48);
    v38 = *(v3 + 56);
    v39 = *(v3 + 64);
    *(v3 + 40) = 0u;
    *(v3 + 56) = 0u;
    outlined consume of (start: String, end: String)?(v36, v37);
    v51 = 1;
    v42 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v44 = v43;
    (*(v48 + 8))(v9, v5);
    *(v3 + 24) = v42;
    *(v3 + 32) = v44 & 1;
    goto LABEL_19;
  }

  v45 = v9;
  v46 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS19TokenGenerationCore32ModelConfigurationPromptTemplateVGMd, &_ss18_DictionaryStorageCySS19TokenGenerationCore32ModelConfigurationPromptTemplateVGMR);
  result = static _DictionaryStorage.copy(original:)();
  v14 = result;
  v15 = 0;
  v16 = 1 << *(v12 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(v12 + 64);
  v19 = (v16 + 63) >> 6;
  v47 = result + 64;
  if (v18)
  {
    while (1)
    {
      v20 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_12:
      v23 = v20 | (v15 << 6);
      v24 = 16 * v23;
      v25 = (*(v12 + 48) + 16 * v23);
      v26 = *v25;
      result = v25[1];
      v27 = (*(v12 + 56) + 16 * v23);
      v28 = *v27;
      v29 = v27[1];
      *(v47 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      v30 = (v14[6] + 16 * v23);
      *v30 = v26;
      v30[1] = result;
      v31 = (v14[7] + v24);
      *v31 = v28;
      v31[1] = v29;
      v32 = v14[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        break;
      }

      v14[2] = v34;

      if (!v18)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    v21 = v15;
    while (1)
    {
      v15 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v15 >= v19)
      {

        v35 = v14;
        v9 = v45;
        v5 = v46;
        goto LABEL_17;
      }

      v22 = *(v12 + 64 + 8 * v15);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v18 = (v22 - 1) & v22;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type _LoadedModelConfiguration.CodingKeys and conformance _LoadedModelConfiguration.CodingKeys()
{
  result = lazy protocol witness table cache variable for type _LoadedModelConfiguration.CodingKeys and conformance _LoadedModelConfiguration.CodingKeys;
  if (!lazy protocol witness table cache variable for type _LoadedModelConfiguration.CodingKeys and conformance _LoadedModelConfiguration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _LoadedModelConfiguration.CodingKeys and conformance _LoadedModelConfiguration.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _LoadedModelConfiguration.CodingKeys and conformance _LoadedModelConfiguration.CodingKeys;
  if (!lazy protocol witness table cache variable for type _LoadedModelConfiguration.CodingKeys and conformance _LoadedModelConfiguration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _LoadedModelConfiguration.CodingKeys and conformance _LoadedModelConfiguration.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _LoadedModelConfiguration.CodingKeys and conformance _LoadedModelConfiguration.CodingKeys;
  if (!lazy protocol witness table cache variable for type _LoadedModelConfiguration.CodingKeys and conformance _LoadedModelConfiguration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _LoadedModelConfiguration.CodingKeys and conformance _LoadedModelConfiguration.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _LoadedModelConfiguration.CodingKeys and conformance _LoadedModelConfiguration.CodingKeys;
  if (!lazy protocol witness table cache variable for type _LoadedModelConfiguration.CodingKeys and conformance _LoadedModelConfiguration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _LoadedModelConfiguration.CodingKeys and conformance _LoadedModelConfiguration.CodingKeys);
  }

  return result;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance _LoadedModelConfiguration.CodingKeys()
{
  if (*v0)
  {
    result = 0xD000000000000022;
  }

  else
  {
    result = 0x655474706D6F7270;
  }

  *v0;
  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t outlined consume of (start: String, end: String)?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> TokenizerRunner.detokenize(_:)(Swift::OpaquePointer a1)
{
  v4 = v1[5];
  v5 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v4);
  (*(v5 + 32))(a1._rawValue, v4, v5);
  if (v2)
  {

    if (one-time initialization token for tokenization != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Log.tokenization);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1A8E85000, v7, v8, "Failed to detokenize the tokenIDs associated with prompt", v9, 2u);
      MEMORY[0x1AC57DBF0](v9, -1, -1);
    }

    type metadata accessor for GenerationError();
    _s19TokenGenerationCore0B5ErrorOACs0D0AAWlTm_0(&lazy protocol witness table cache variable for type GenerationError and conformance GenerationError, type metadata accessor for GenerationError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    v10 = swift_willThrow();
  }

  else
  {
    v10 = String.init<A>(_:)();
  }

  result._object = v11;
  result._countAndFlagsBits = v10;
  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> TokenizerRunnerObjC.detokenize(tokenIDs:)(Swift::OpaquePointer tokenIDs)
{
  v2 = v1;
  v18[1] = *MEMORY[0x1E69E9840];
  v3 = *(tokenIDs._rawValue + 2);
  if (v3)
  {
    v18[0] = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    v5 = (tokenIDs._rawValue + 32);
    do
    {
      v6 = *v5++;
      [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v7 = *(v18[0] + 2);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v3;
    }

    while (v3);
  }

  type metadata accessor for NSNumber();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v18[0] = 0;
  v9 = [v1 detokenize:isa error:v18];

  v10 = v18[0];
  if (v9)
  {
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v2 = v12;
    v13 = v10;
  }

  else
  {
    v11 = v18[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v14 = *MEMORY[0x1E69E9840];
  v15 = v11;
  v16 = v2;
  result._object = v16;
  result._countAndFlagsBits = v15;
  return result;
}

unint64_t type metadata accessor for NSNumber()
{
  result = lazy cache variable for type metadata for NSNumber;
  if (!lazy cache variable for type metadata for NSNumber)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSNumber);
  }

  return result;
}

void std::vector<int>::resize(std::vector<int> *this, std::vector<int>::size_type __sz)
{
  v2 = this->__end_ - this->__begin_;
  if (__sz <= v2)
  {
    if (__sz < v2)
    {
      this->__end_ = &this->__begin_[__sz];
    }
  }

  else
  {
    std::vector<int>::__append(this, __sz - v2);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<int>::__append(std::vector<int> *this, std::vector<int>::size_type __n)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (__n <= value - end)
  {
    if (__n)
    {
      bzero(this->__end_, 4 * __n);
      end += __n;
    }

    this->__end_ = end;
  }

  else
  {
    begin = this->__begin_;
    v7 = end - this->__begin_;
    v8 = __n + (v7 >> 2);
    if (v8 >> 62)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v9 = value - begin;
    if (v9 >> 1 > v8)
    {
      v8 = v9 >> 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v10 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(this, v10);
    }

    v11 = (4 * (v7 >> 2));
    bzero(v11, 4 * __n);
    memcpy(0, begin, v7);
    v12 = this->__begin_;
    this->__begin_ = 0;
    this->__end_ = &v11[4 * __n];
    this->__end_cap_.__value_ = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

void sentencepiece::SentencePieceProcessor::Decode(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, sentencepiece::util::Status *a4@<X8>)
{
  (*(*a1 + 88))(a1);
  if (!*a4)
  {
    sentencepiece::util::Status::~Status(a4);
    if (a3)
    {
      if (*(a3 + 23) < 0)
      {
        **a3 = 0;
        *(a3 + 8) = 0;
      }

      else
      {
        *a3 = 0;
        *(a3 + 23) = 0;
      }

      sentencepiece::SentencePieceText::SentencePieceText(&v9, 0);
      (*(*a1 + 280))(a1, a2, &v9);
      if (!*a4)
      {
        sentencepiece::util::Status::~Status(a4);
        std::string::operator=(a3, (v12[6].__locale_ & 0xFFFFFFFFFFFFFFFELL));
        sentencepiece::util::Status::Status(a4);
      }

      sentencepiece::SentencePieceText::~SentencePieceText(&v9);
    }

    else
    {
      v9 = 13;
      v8 = std::ostringstream::basic_ostringstream[abi:ne200100](&v10);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "(", 1);
      MEMORY[0x1AC57D010](&v10, 458);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, ") [", 3);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "detokenized", 11);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "] ", 2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "output container is null", 24);
      sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(&v9, a4);
      v10 = *MEMORY[0x1E69E54E8];
      *(&v10 + *(v10 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
      v11 = MEMORY[0x1E69E5548] + 16;
      if (v13 < 0)
      {
        operator delete(v12[7].__locale_);
      }

      v11 = MEMORY[0x1E69E5538] + 16;
      std::locale::~locale(v12);
      std::ostream::~ostream();
      MEMORY[0x1AC57D130](&v14);
    }
  }
}

{
  (*(*a1 + 88))(a1);
  if (!*a4)
  {
    sentencepiece::util::Status::~Status(a4);
    if (a3)
    {
      if (*(a3 + 23) < 0)
      {
        **a3 = 0;
        *(a3 + 8) = 0;
      }

      else
      {
        *a3 = 0;
        *(a3 + 23) = 0;
      }

      sentencepiece::SentencePieceText::SentencePieceText(&v9, 0);
      (*(*a1 + 272))(a1, a2, &v9);
      if (!*a4)
      {
        sentencepiece::util::Status::~Status(a4);
        std::string::operator=(a3, (v12[6].__locale_ & 0xFFFFFFFFFFFFFFFELL));
        sentencepiece::util::Status::Status(a4);
      }

      sentencepiece::SentencePieceText::~SentencePieceText(&v9);
    }

    else
    {
      v9 = 13;
      v8 = std::ostringstream::basic_ostringstream[abi:ne200100](&v10);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "(", 1);
      MEMORY[0x1AC57D010](&v10, 447);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, ") [", 3);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "detokenized", 11);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "] ", 2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "output container is null", 24);
      sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(&v9, a4);
      v10 = *MEMORY[0x1E69E54E8];
      *(&v10 + *(v10 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
      v11 = MEMORY[0x1E69E5548] + 16;
      if (v13 < 0)
      {
        operator delete(v12[7].__locale_);
      }

      v11 = MEMORY[0x1E69E5538] + 16;
      std::locale::~locale(v12);
      std::ostream::~ostream();
      MEMORY[0x1AC57D130](&v14);
    }
  }
}

uint64_t sentencepiece::SentencePieceProcessor::Load(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!sentencepiece::IsMMappableFile())
  {
    absl::make_unique<sentencepiece::ModelProto>();
  }

  v6 = *(*a1 + 64);

  return v6(a1, a2, a3);
}

void sub_1A8E89EA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, sentencepiece::ModelProto *a9, sentencepiece::ModelProto *a10)
{
  std::unique_ptr<sentencepiece::ModelProto>::~unique_ptr[abi:ne200100](&a9);
  std::unique_ptr<sentencepiece::ModelProto>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

uint64_t sentencepiece::IsMMappableFile()
{
  v4[19] = *MEMORY[0x1E69E9840];
  std::ifstream::basic_ifstream(v2);
  if ((v3[*(v2[0] - 24) + 16] & 5) == 0)
  {
    std::istream::read();
  }

  v2[0] = *MEMORY[0x1E69E54C8];
  *(v2 + *(v2[0] - 24)) = *(MEMORY[0x1E69E54C8] + 24);
  MEMORY[0x1AC57CF40](v3);
  std::istream::~istream();
  MEMORY[0x1AC57D130](v4);
  v0 = *MEMORY[0x1E69E9840];
  return 0;
}

void sub_1A8E8A03C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  std::ifstream::~ifstream(&a10, MEMORY[0x1E69E54C8]);
  MEMORY[0x1AC57D130](&a63);
  _Unwind_Resume(a1);
}

uint64_t *std::ifstream::basic_ifstream(uint64_t *a1)
{
  a1[59] = 0;
  v2 = MEMORY[0x1E69E5528] + 64;
  a1[53] = MEMORY[0x1E69E5528] + 64;
  v3 = *(MEMORY[0x1E69E54C8] + 16);
  v4 = *(MEMORY[0x1E69E54C8] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  a1[1] = 0;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 2);
  v6 = MEMORY[0x1E69E5528] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[53] = v2;
  MEMORY[0x1AC57CF30](a1 + 2);
  if (!std::filebuf::open())
  {
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

void sub_1A8E8A1F8(_Unwind_Exception *a1)
{
  std::istream::~istream();
  MEMORY[0x1AC57D130](v1);
  _Unwind_Resume(a1);
}

void sub_1A8E8A358(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(std::string *this, std::string **a2)
{
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  v3 = *a2;
  v4 = (v3 - 1);
  do
  {
    v5 = v4->__r_.__value_.__s.__data_[1];
    v4 = (v4 + 1);
  }

  while (v5);
  std::string::append[abi:ne200100]<char const*,0>(this, v3, v4);
  return this;
}

void sub_1A8E8A3B8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *std::string::append[abi:ne200100]<char const*,0>(std::string *this, std::string *__src, std::string *a3)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  v7 = a3 - __src;
  if ((size & 0x8000000000000000) != 0)
  {
    if (a3 == __src)
    {
      return this;
    }

    size = this->__r_.__value_.__l.__size_;
    v11 = this->__r_.__value_.__r.__words[2];
    v8 = (v11 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v10 = this->__r_.__value_.__r.__words[0];
    v9 = HIBYTE(v11);
  }

  else
  {
    if (a3 == __src)
    {
      return this;
    }

    v8 = 22;
    LOBYTE(v9) = *(&this->__r_.__value_.__s + 23);
    v10 = this;
  }

  if (v10 > __src || (&v10->__r_.__value_.__l.__data_ + size + 1) <= __src)
  {
    if (v8 - size < v7)
    {
      std::string::__grow_by(this, v8, size - v8 + v7, size, size, 0, 0);
      this->__r_.__value_.__l.__size_ = size;
      LOBYTE(v9) = *(&this->__r_.__value_.__s + 23);
    }

    v14 = this;
    if ((v9 & 0x80) != 0)
    {
      v14 = this->__r_.__value_.__r.__words[0];
    }

    v15 = v14 + size;
    if (a3 != __src)
    {
      memmove(v14 + size, __src, v7);
    }

    v15[v7] = 0;
    v16 = v7 + size;
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      this->__r_.__value_.__l.__size_ = v16;
    }

    else
    {
      *(&this->__r_.__value_.__s + 23) = v16 & 0x7F;
    }
  }

  else
  {
    std::string::__init_with_size[abi:ne200100]<char const*,char const*>(__p, __src, a3, v7);
    if ((v19 & 0x80u) == 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    if ((v19 & 0x80u) == 0)
    {
      v13 = v19;
    }

    else
    {
      v13 = __p[1];
    }

    std::string::append(this, v12, v13);
    if (v19 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return this;
}

void sub_1A8E8A530(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

void sentencepiece::Mmap<char>::open(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  sentencepiece::Mmap<char>::close(a1);
  if (!a3)
  {
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
    }

    else
    {
      __p = *a2;
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v9 = open(p_p, 0, __p.__r_.__value_.__r.__words[0], __p.__r_.__value_.__l.__size_, __p.__r_.__value_.__r.__words[2]);
    v10 = v9;
    *(a1 + 24) = v9;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if ((v10 & 0x80000000) == 0)
      {
        goto LABEL_52;
      }
    }

    else if ((v9 & 0x80000000) == 0)
    {
      goto LABEL_52;
    }

    LODWORD(__p.__r_.__value_.__l.__data_) = 13;
    v11 = std::ostringstream::basic_ostringstream[abi:ne200100](&__p.__r_.__value_.__l.__size_);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/mmap.h", 62);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__l.__size_, "(", 1);
    MEMORY[0x1AC57D010](&__p.__r_.__value_.__r.__words[1], 66);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__l.__size_, ") [", 3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__l.__size_, "(fd = ::open(filename.string().data(), mode)) >= 0", 50);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__l.__size_, "] ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__l.__size_, "open failed: ", 13);
    v12 = *(a2 + 23);
    if ((v12 & 0x80u) == 0)
    {
      v13 = a2;
    }

    else
    {
      v13 = *a2;
    }

    if ((v12 & 0x80u) != 0)
    {
      v12 = *(a2 + 8);
    }

LABEL_66:
    std::__quoted_output[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__l.__size_, v13, &v13[v12], 0x22u, 0x5Cu);
    sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(&__p, a4);
    __p.__r_.__value_.__l.__size_ = *MEMORY[0x1E69E54E8];
    *(&__p.__r_.__value_.__r.__words[1] + *(__p.__r_.__value_.__l.__size_ - 24)) = *(MEMORY[0x1E69E54E8] + 24);
    __p.__r_.__value_.__r.__words[2] = MEMORY[0x1E69E5548] + 16;
    if (v29 < 0)
    {
      operator delete(v28);
    }

    __p.__r_.__value_.__r.__words[2] = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v27);
    std::ostream::~ostream();
    MEMORY[0x1AC57D130](v30);
    return;
  }

  std::__fs::filesystem::path::parent_path[abi:ne200100](a2, &v32);
  std::__fs::filesystem::path::filename[abi:ne200100](a2, &v31);
  std::__fs::filesystem::__status(&v32, 0);
  if (__p.__r_.__value_.__s.__data_[0] != 2)
  {
    goto LABEL_30;
  }

  if (SHIBYTE(v32.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v32.__pn_.__r_.__value_.__l.__data_, v32.__pn_.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v32.__pn_;
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = &__p;
  }

  else
  {
    v14 = __p.__r_.__value_.__r.__words[0];
  }

  v15 = open(v14, 0, __p.__r_.__value_.__r.__words[0], __p.__r_.__value_.__l.__size_, __p.__r_.__value_.__r.__words[2]);
  v16 = v15;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((v16 & 0x80000000) == 0)
    {
      goto LABEL_27;
    }

LABEL_30:
    LODWORD(__p.__r_.__value_.__l.__data_) = 13;
    std::ostringstream::basic_ostringstream[abi:ne200100](&__p.__r_.__value_.__l.__size_);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__l.__size_, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/mmap.h", 62);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__l.__size_, "(", 1);
    MEMORY[0x1AC57D010](&__p.__r_.__value_.__r.__words[1], 59);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__l.__size_, ") [", 3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__l.__size_, "std::filesystem::is_directory(dir) && (dirfd = ::open(dir.string().data(), mode)) >= 0", 86);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__l.__size_, "] ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__l.__size_, "open failed: ", 13);
    size = HIBYTE(v32.__pn_.__r_.__value_.__r.__words[2]);
    if ((v32.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v18 = &v32;
    }

    else
    {
      v18 = v32.__pn_.__r_.__value_.__r.__words[0];
    }

    if ((v32.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v32.__pn_.__r_.__value_.__l.__size_;
    }

    std::__quoted_output[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__l.__size_, v18, v18 + size, 0x22u, 0x5Cu);
    sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(&__p, a4);
    __p.__r_.__value_.__l.__size_ = *MEMORY[0x1E69E54E8];
    *(&__p.__r_.__value_.__r.__words[1] + *(__p.__r_.__value_.__l.__size_ - 24)) = *(MEMORY[0x1E69E54E8] + 24);
    __p.__r_.__value_.__r.__words[2] = MEMORY[0x1E69E5548] + 16;
    if (v29 < 0)
    {
      operator delete(v28);
    }

    goto LABEL_37;
  }

  if (v15 < 0)
  {
    goto LABEL_30;
  }

LABEL_27:
  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v31.__r_.__value_.__l.__data_, v31.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v31;
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v19 = &__p;
  }

  else
  {
    v19 = __p.__r_.__value_.__r.__words[0];
  }

  *(a1 + 24) = openat_authenticated_np(v16, v19, 0, -1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  close(v16);
  if ((*(a1 + 24) & 0x80000000) == 0)
  {
    if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v31.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v32.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v32.__pn_.__r_.__value_.__l.__data_);
    }

LABEL_52:
    if (fstat(*(a1 + 24), &v33) < 0)
    {
      LODWORD(__p.__r_.__value_.__l.__data_) = 13;
      v22 = std::ostringstream::basic_ostringstream[abi:ne200100](&__p.__r_.__value_.__l.__size_);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/mmap.h", 62);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__l.__size_, "(", 1);
      MEMORY[0x1AC57D010](&__p.__r_.__value_.__r.__words[1], 70);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__l.__size_, ") [", 3);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__l.__size_, "::fstat(fd, &st) >= 0", 21);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__l.__size_, "] ", 2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__l.__size_, "failed to get file size: ", 25);
      v12 = *(a2 + 23);
      if ((v12 & 0x80u) == 0)
      {
        v13 = a2;
      }

      else
      {
        v13 = *a2;
      }

      if ((v12 & 0x80u) != 0)
      {
        v12 = *(a2 + 8);
      }
    }

    else
    {
      st_size = v33.st_size;
      *(a1 + 16) = v33.st_size;
      v21 = mmap(0, st_size, 1, 1, *(a1 + 24), 0);
      if (v21 != -1)
      {
        *(a1 + 8) = v21;
        close(*(a1 + 24));
        *(a1 + 24) = -1;
        sentencepiece::util::Status::Status(a4);
        return;
      }

      LODWORD(__p.__r_.__value_.__l.__data_) = 13;
      v23 = std::ostringstream::basic_ostringstream[abi:ne200100](&__p.__r_.__value_.__l.__size_);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/mmap.h", 62);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__l.__size_, "(", 1);
      MEMORY[0x1AC57D010](&__p.__r_.__value_.__r.__words[1], 78);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__l.__size_, ") [", 3);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__l.__size_, "(p = reinterpret_cast<char*>( ::mmap(0, length, PROT_READ, MAP_SHARED, fd, 0))) != MAP_FAILED", 93);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__l.__size_, "] ", 2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__l.__size_, "mmap() failed: ", 15);
      v12 = *(a2 + 23);
      if ((v12 & 0x80u) == 0)
      {
        v13 = a2;
      }

      else
      {
        v13 = *a2;
      }

      if ((v12 & 0x80u) != 0)
      {
        v12 = *(a2 + 8);
      }
    }

    goto LABEL_66;
  }

  LODWORD(__p.__r_.__value_.__l.__data_) = 13;
  std::ostringstream::basic_ostringstream[abi:ne200100](&__p.__r_.__value_.__l.__size_);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__l.__size_, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/mmap.h", 62);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__l.__size_, "(", 1);
  MEMORY[0x1AC57D010](&__p.__r_.__value_.__r.__words[1], 64);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__l.__size_, ") [", 3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__l.__size_, "fd >= 0", 7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__l.__size_, "] ", 2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__l.__size_, "open failed: ", 13);
  v24 = *(a2 + 23);
  if ((v24 & 0x80u) == 0)
  {
    v25 = a2;
  }

  else
  {
    v25 = *a2;
  }

  if ((v24 & 0x80u) != 0)
  {
    v24 = *(a2 + 8);
  }

  std::__quoted_output[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__l.__size_, v25, &v25[v24], 0x22u, 0x5Cu);
  sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(&__p, a4);
  __p.__r_.__value_.__l.__size_ = *MEMORY[0x1E69E54E8];
  *(&__p.__r_.__value_.__r.__words[1] + *(__p.__r_.__value_.__l.__size_ - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  __p.__r_.__value_.__r.__words[2] = MEMORY[0x1E69E5548] + 16;
  if (v29 < 0)
  {
    operator delete(v28);
  }

LABEL_37:
  __p.__r_.__value_.__r.__words[2] = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v27);
  std::ostream::~ostream();
  MEMORY[0x1AC57D130](v30);
  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v32.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__pn_.__r_.__value_.__l.__data_);
  }
}

void sub_1A8E8AF64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (*(v14 - 217) < 0)
  {
    operator delete(*(v14 - 240));
  }

  if (*(v14 - 193) < 0)
  {
    operator delete(*(v14 - 216));
  }

  _Unwind_Resume(exception_object);
}

void *sentencepiece::Mmap<char>::close(uint64_t a1)
{
  v2 = *(a1 + 24);
  if ((v2 & 0x80000000) == 0)
  {
    close(v2);
    *(a1 + 24) = -1;
  }

  result = *(a1 + 8);
  if (result)
  {
    result = munmap(result, *(a1 + 16));
  }

  *(a1 + 8) = 0;
  return result;
}

void *sentencepiece::SentencePieceProcessor::LoadFromMemoryMappedFile@<X0>(const char *a1@<X1>, unint64_t a2@<X2>, sentencepiece::util::Status *a3@<X8>)
{
  v16 = a1;
  v17 = a2;
  if (a2 <= 0x13)
  {
    LODWORD(v10) = 13;
    v7 = std::ostringstream::basic_ostringstream[abi:ne200100](&v11);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, "(", 1);
    MEMORY[0x1AC57D010](&v11, 1230);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, ") [", 3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, "(size) >= (sizeof(MMapHeader))", 30);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, "] ", 2);
    sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(&v10, a3);
  }

  else if (*a1)
  {
    LODWORD(v10) = 13;
    v6 = std::ostringstream::basic_ostringstream[abi:ne200100](&v11);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, "(", 1);
    MEMORY[0x1AC57D010](&v11, 1233);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, ") [", 3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, "header->sentinel == 0", 21);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, "] ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, "This file format is not for mmap-based loading.", 47);
    sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(&v10, a3);
  }

  else
  {
    result = sentencepiece::mmap_util::RemovePrefix(&v16, 0x14uLL, a3);
    if (*a3)
    {
      return result;
    }

    sentencepiece::util::Status::~Status(a3);
    if (v17 >= *(a1 + 1))
    {
      operator new();
    }

    LODWORD(v10) = 13;
    v9 = std::ostringstream::basic_ostringstream[abi:ne200100](&v11);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, "(", 1);
    MEMORY[0x1AC57D010](&v11, 1238);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, ") [", 3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, "(blob.size()) >= (header->model_proto_size)", 43);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, "] ", 2);
    sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(&v10, a3);
  }

  v11 = *MEMORY[0x1E69E54E8];
  *(&v11 + *(v11 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v12 = MEMORY[0x1E69E5548] + 16;
  if (v14 < 0)
  {
    operator delete(v13[7].__locale_);
  }

  v12 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v13);
  std::ostream::~ostream();
  return MEMORY[0x1AC57D130](&v15);
}

void sub_1A8E8BBDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sentencepiece::util::StatusBuilder::~StatusBuilder(va);
  _Unwind_Resume(a1);
}

void *sentencepiece::mmap_util::RemovePrefix@<X0>(void *a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = a1[1];
  v5 = v4 >= a2;
  v6 = v4 - a2;
  if (v5)
  {
    *a1 += a2;
    a1[1] = v6;

    return sentencepiece::util::Status::Status(a3);
  }

  else
  {
    v9 = 13;
    v7 = std::ostringstream::basic_ostringstream[abi:ne200100](&v10);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/util.cc", 63);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "(", 1);
    MEMORY[0x1AC57D010](&v10, 287);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, ") [", 3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "string.size() >= size", 21);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "] ", 2);
    sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(&v9, a3);
    v10 = *MEMORY[0x1E69E54E8];
    *(&v10 + *(v10 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
    v11 = MEMORY[0x1E69E5548] + 16;
    if (v13 < 0)
    {
      operator delete(v12[7].__locale_);
    }

    v11 = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v12);
    std::ostream::~ostream();
    return MEMORY[0x1AC57D130](&v14);
  }
}

void sentencepiece::util::Status::~Status(sentencepiece::util::Status *this)
{
  v1 = *this;
  *this = 0;
  if (v1)
  {
    std::default_delete<sentencepiece::util::Status::Rep>::operator()[abi:ne200100](this, v1);
  }
}

void *sentencepiece::MemoryMappedModelProto::Init@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X1>, unint64_t a3@<X2>, sentencepiece::util::Status *a4@<X8>)
{
  v13 = a2;
  v14 = a3;
  v12 = 0;
  result = sentencepiece::mmap_util::DecodePrefix<unsigned int>(a2, a3, &v12, a4);
  if (!*a4)
  {
    sentencepiece::util::Status::~Status(a4);
    result = sentencepiece::mmap_util::RemovePrefix(&v13, 4uLL, a4);
    if (!*a4)
    {
      sentencepiece::util::Status::~Status(a4);
      *(a1 + 8) = v12;
      v11 = 0;
      result = sentencepiece::mmap_util::DecodePrefix<unsigned int>(v13, v14, &v11, a4);
      if (!*a4)
      {
        sentencepiece::util::Status::~Status(a4);
        result = sentencepiece::mmap_util::RemovePrefix(&v13, 4uLL, a4);
        if (!*a4)
        {
          sentencepiece::util::Status::~Status(a4);
          *(a1 + 24) = v11;
          v10 = 0;
          result = sentencepiece::mmap_util::DecodePrefix<unsigned int>(v13, v14, &v10, a4);
          if (!*a4)
          {
            sentencepiece::util::Status::~Status(a4);
            result = sentencepiece::mmap_util::RemovePrefix(&v13, 4uLL, a4);
            if (!*a4)
            {
              sentencepiece::util::Status::~Status(a4);
              v7 = v10;
              *(a1 + 48) = 0;
              *(a1 + 40) = v7;
              result = sentencepiece::mmap_util::DecodePrefix<int>(v13, v14, (a1 + 48), a4);
              if (!*a4)
              {
                sentencepiece::util::Status::~Status(a4);
                result = sentencepiece::mmap_util::RemovePrefix(&v13, 4uLL, a4);
                if (!*a4)
                {
                  sentencepiece::util::Status::~Status(a4);
                  *(a1 + 56) = v13;
                  v8 = sentencepiece::mmap_util::RoundUp(*(a1 + 48), 4uLL);
                  result = sentencepiece::mmap_util::RemovePrefix(&v13, v8, a4);
                  if (!*a4)
                  {
                    sentencepiece::util::Status::~Status(a4);
                    *(a1 + 64) = v13;
                    result = sentencepiece::mmap_util::RemovePrefix(&v13, 4 * *(a1 + 48), a4);
                    if (!*a4)
                    {
                      sentencepiece::util::Status::~Status(a4);
                      *(a1 + 72) = v13;
                      result = sentencepiece::mmap_util::RemovePrefix(&v13, 4 * *(a1 + 48) + 20, a4);
                      if (!*a4)
                      {
                        sentencepiece::util::Status::~Status(a4);
                        *(a1 + 80) = v13;
                        return sentencepiece::util::Status::Status(v9);
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void *sentencepiece::mmap_util::DecodePrefix<unsigned int>@<X0>(_DWORD *a1@<X0>, unint64_t a2@<X1>, _DWORD *a3@<X2>, void *a4@<X8>)
{
  if (a2 <= 3)
  {
    v7 = 13;
    v6 = std::ostringstream::basic_ostringstream[abi:ne200100](&v8);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/util.h", 62);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "(", 1);
    MEMORY[0x1AC57D010](&v8, 448);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, ") [", 3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "string.size() >= sizeof(T)", 26);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "] ", 2);
    sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(&v7, a4);
    v8 = *MEMORY[0x1E69E54E8];
    *(&v8 + *(v8 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
    v9 = MEMORY[0x1E69E5548] + 16;
    if (v11 < 0)
    {
      operator delete(v10[7].__locale_);
    }

    v9 = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v10);
    std::ostream::~ostream();
    return MEMORY[0x1AC57D130](&v12);
  }

  else
  {
    *a3 = *a1;

    return sentencepiece::util::Status::Status(a4);
  }
}

void *sentencepiece::mmap_util::DecodePrefix<int>@<X0>(_DWORD *a1@<X0>, unint64_t a2@<X1>, _DWORD *a3@<X2>, void *a4@<X8>)
{
  if (a2 <= 3)
  {
    v7 = 13;
    v6 = std::ostringstream::basic_ostringstream[abi:ne200100](&v8);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/util.h", 62);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "(", 1);
    MEMORY[0x1AC57D010](&v8, 448);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, ") [", 3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "string.size() >= sizeof(T)", 26);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "] ", 2);
    sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(&v7, a4);
    v8 = *MEMORY[0x1E69E54E8];
    *(&v8 + *(v8 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
    v9 = MEMORY[0x1E69E5548] + 16;
    if (v11 < 0)
    {
      operator delete(v10[7].__locale_);
    }

    v9 = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v10);
    std::ostream::~ostream();
    return MEMORY[0x1AC57D130](&v12);
  }

  else
  {
    *a3 = *a1;

    return sentencepiece::util::Status::Status(a4);
  }
}

unint64_t sentencepiece::mmap_util::RoundUp(sentencepiece::mmap_util *this, unint64_t a2)
{
  if (!a2)
  {
    sentencepiece::mmap_util::RoundUp();
  }

  return (this + a2 - 1) / a2 * a2;
}

void sentencepiece::util::Status::operator=(uint64_t *a1, void *a2)
{
  v3 = *a1;
  if (*a1 != *a2)
  {
    if (*a2)
    {
      operator new();
    }

    *a1 = 0;
    if (v3)
    {

      std::default_delete<sentencepiece::util::Status::Rep>::operator()[abi:ne200100](a1, v3);
    }
  }
}

void sentencepiece::ModelFactory::Create(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v16[1] = a2;
  v16[2] = a3;
  v6 = (*(*a1 + 80))(a1);
  if (v6 == 1)
  {
    absl::make_unique<sentencepiece::bpe::Model,sentencepiece::MemoryMappedModelProto const&,std::string_view &>();
  }

  if (!v6)
  {
    absl::make_unique<sentencepiece::unigram::Model,sentencepiece::MemoryMappedModelProto const&,std::string_view &>();
  }

  if (sentencepiece::logging::GetMinLogLevel(v6) <= 2)
  {
    LOBYTE(v16[0]) = 0;
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5300], "model_factory.cc", 16);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "(", 1);
    v9 = MEMORY[0x1AC57D010](v8, 61);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, ") ", 2);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "LOG(", 4);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "ERROR", 5);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ") ", 2);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "Unknown model_type: ", 20);
    v15 = (*(*a1 + 80))(a1);
    MEMORY[0x1AC57D020](v14, v15);
    sentencepiece::error::Die::~Die(v16);
  }

  *a4 = 0;
}

void sub_1A8E8C724(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sentencepiece::error::Die::~Die(va);
  _Unwind_Resume(a1);
}

uint64_t sentencepiece::ModelInterface::ModelInterface(uint64_t a1, uint64_t a2, _DWORD *a3, unint64_t a4)
{
  *a1 = &unk_1F1CAB9B0;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = &unk_1F1CABAD0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = &unk_1F1CABAD0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  sentencepiece::util::Status::Status((a1 + 96));
  sentencepiece::ModelInterface::InitFromMMappedFile(a1, a3, a4, &v8);
  sentencepiece::util::Status::operator=((a1 + 96), &v8);
  sentencepiece::util::Status::~Status(&v8);
  return a1;
}

void sub_1A8E8C8AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sentencepiece::util::Status::~Status(va);
  sentencepiece::util::Status::~Status((v4 + 96));
  Darts::DoubleArrayImpl<void,void,int,void>::~DoubleArrayImpl(v5);
  Darts::DoubleArrayImpl<void,void,int,void>::~DoubleArrayImpl(v3);
  v7 = *v2;
  *v2 = 0;
  if (v7)
  {
    std::default_delete<sentencepiece::normalizer::PrefixMatcher>::operator()[abi:ne200100](v2, v7);
  }

  _Unwind_Resume(a1);
}

void *sentencepiece::ModelInterface::InitFromMMappedFile@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X1>, unint64_t a3@<X2>, sentencepiece::util::Status *a4@<X8>)
{
  v8 = a2;
  v9 = a3;
  result = sentencepiece::mmap_util::DecodePrefix<int>(a2, a3, (a1 + 88), a4);
  if (!*a4)
  {
    sentencepiece::util::Status::~Status(a4);
    result = sentencepiece::mmap_util::RemovePrefix(&v8, 4uLL, a4);
    if (!*a4)
    {
      sentencepiece::util::Status::~Status(a4);
      result = sentencepiece::mmap_util::DecodePrefix<int>(v8, v9, (a1 + 92), a4);
      if (!*a4)
      {
        sentencepiece::util::Status::~Status(a4);
        result = sentencepiece::mmap_util::RemovePrefix(&v8, 4uLL, a4);
        if (!*a4)
        {
          sentencepiece::util::Status::~Status(a4);
          v7 = 0;
          result = sentencepiece::mmap_util::DecodePrefix<unsigned int>(v8, v9, &v7, a4);
          if (!*a4)
          {
            sentencepiece::util::Status::~Status(a4);
            result = sentencepiece::mmap_util::RemovePrefix(&v8, 4uLL, a4);
            if (!*a4)
            {
              sentencepiece::util::Status::~Status(a4);
              absl::make_unique<sentencepiece::normalizer::PrefixMatcher,std::string_view>();
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_1A8E8CF64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sentencepiece::util::StatusBuilder::~StatusBuilder(va);
  _Unwind_Resume(a1);
}

void *sentencepiece::bpe::Model::Model(uint64_t a1, uint64_t a2, _DWORD *a3, unint64_t a4)
{
  result = sentencepiece::ModelInterface::ModelInterface(a1, a2, a3, a4);
  *result = &unk_1F1CACB38;
  return result;
}

void *sentencepiece::normalizer::PrefixMatcher::PrefixMatcher(void *result, uint64_t a2, uint64_t a3)
{
  *result = 0;
  if (a3)
  {
    operator new();
  }

  return result;
}

void sub_1A8E8D128(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  *v1 = 0;
  if (v3)
  {
    sentencepiece::normalizer::PrefixMatcher::PrefixMatcher(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sentencepiece::normalizer::Normalizer::Normalizer(uint64_t a1, uint64_t a2, _DWORD *a3, unint64_t a4)
{
  *(a1 + 8) = 0;
  *a1 = &unk_1F1CABB40;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = a2;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  sentencepiece::util::Status::Status((a1 + 56));
  v10 = 0;
  sentencepiece::mmap_util::DecodePrefix<unsigned int>(a3, a4, &v10, &v9);
  sentencepiece::util::Status::operator=((a1 + 56), &v9);
  sentencepiece::util::Status::~Status(&v9);
  (*(*a1 + 24))(&v9, a1);
  v7 = v9;
  sentencepiece::util::Status::~Status(&v9);
  if (!v7)
  {
    *(a1 + 48) = v10 != 0;
    sentencepiece::normalizer::Normalizer::Init(a1, a3 + 1, a4 - 4);
  }

  return a1;
}

void sub_1A8E8D2D4(_Unwind_Exception *a1)
{
  sentencepiece::util::Status::~Status((v1 + 56));
  v4 = *v2;
  *v2 = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  _Unwind_Resume(a1);
}

void sentencepiece::normalizer::Normalizer::Init(uint64_t a1, unsigned int *a2, unint64_t a3)
{
  if (a3)
  {
    v6[0] = 0;
    v6[1] = 0;
    v5 = 0uLL;
    sentencepiece::normalizer::Normalizer::DecodePrecompiledCharsMap(a2, a3, v6, &v5, &v4);
    sentencepiece::util::Status::operator=((a1 + 56), &v4);
    sentencepiece::util::Status::~Status(&v4);
    if (!*(a1 + 56))
    {
      operator new();
    }
  }
}

void sub_1A8E8D498(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sentencepiece::util::Status::~Status(va);
  _Unwind_Resume(a1);
}

unint64_t type metadata accessor for TokenizerRunnerObjC()
{
  result = lazy cache variable for type metadata for TokenizerRunnerObjC;
  if (!lazy cache variable for type metadata for TokenizerRunnerObjC)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for TokenizerRunnerObjC);
  }

  return result;
}

uint64_t TokenizerRunner.vocabularyCount.getter()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  return (*(v2 + 56))(v1, v2);
}

void *sentencepiece::util::Status::Status(void *this, const sentencepiece::util::Status *a2)
{
  if (*a2)
  {
    operator new();
  }

  *this = 0;
  return this;
}

uint64_t google::protobuf::internal::ExtensionSet::ExtensionSet(uint64_t result, uint64_t a2)
{
  *result = a2;
  *(result + 8) = 0;
  *(result + 16) = 0;
  return result;
}

uint64_t sentencepiece::MemoryMappedModelProto::MemoryMappedModelProto(uint64_t a1, _DWORD *a2, unint64_t a3)
{
  *a1 = &unk_1F1CACEE0;
  *(a1 + 16) = &unk_1F1CACEA0;
  *(a1 + 24) = 0;
  *(a1 + 32) = &unk_1F1CACEA0;
  *(a1 + 40) = 0;
  sentencepiece::util::Status::Status((a1 + 88));
  sentencepiece::MemoryMappedModelProto::Init(a1, a2, a3, &v7);
  sentencepiece::util::Status::operator=((a1 + 88), &v7);
  sentencepiece::util::Status::~Status(&v7);
  return a1;
}

void sub_1A8E8D6F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sentencepiece::util::Status::~Status(va);
  sentencepiece::util::Status::~Status((v2 + 88));
  _Unwind_Resume(a1);
}

uint64_t sentencepiece::SentencePieceProcessor::GetPieceSize(sentencepiece::SentencePieceProcessor *this)
{
  (*(*this + 88))(&v17);
  v2 = v17;
  sentencepiece::util::Status::~Status(&v17);
  if (!v2)
  {
    return (*(**(this + 1) + 128))(*(this + 1));
  }

  if (sentencepiece::logging::GetMinLogLevel(v3) <= 2)
  {
    v16 = 0;
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5300], "sentencepiece_processor.cc", 26);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "(", 1);
    v6 = MEMORY[0x1AC57D010](v5, 961);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, ") ", 2);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "LOG(", 4);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "ERROR", 5);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, ") ", 2);
    (*(*this + 88))(&v17, this);
    v11 = sentencepiece::util::Status::error_message(&v17);
    v12 = strlen(v11);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, v11, v12);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "\nReturns default value ", 23);
    MEMORY[0x1AC57D010](v14, 0);
    sentencepiece::util::Status::~Status(&v17);
    sentencepiece::error::Die::~Die(&v16);
  }

  return 0;
}

uint64_t sentencepiece::SentencePieceText::SentencePieceText(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F1CAC3C8;
  *(a1 + 8) = a2;
  google::protobuf::internal::ExtensionSet::ExtensionSet(a1 + 16, a2);
  *(a1 + 48) = a2;
  *(a1 + 40) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  if (atomic_load_explicit(scc_info_SentencePieceText_sentencepiece_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_SentencePieceText_sentencepiece_2eproto);
  }

  *(a1 + 72) = &google::protobuf::internal::fixed_address_empty_string;
  *(a1 + 80) = 0;
  return a1;
}

void sub_1A8E8D9CC(_Unwind_Exception *a1)
{
  google::protobuf::RepeatedPtrField<sentencepiece::SentencePieceText_SentencePiece>::~RepeatedPtrField(v2);
  google::protobuf::internal::ExtensionSet::~ExtensionSet((v1 + 16));
  _Unwind_Resume(a1);
}

void sentencepiece::SentencePieceProcessor::Decode(uint64_t a1@<X0>, signed int **a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  memset(&v19, 0, sizeof(v19));
  v8 = (*(*a1 + 496))(a1);
  std::vector<std::string>::reserve(&v19, a2[1] - *a2);
  v10 = *a2;
  v9 = a2[1];
  while (1)
  {
    if (v10 == v9)
    {
      (*(*a1 + 264))(a1, &v19, a3);
      goto LABEL_18;
    }

    v11 = *v10;
    v18 = v11;
    if (v11 < 0 || v11 >= v8)
    {
      break;
    }

    __p.__r_.__value_.__r.__words[0] = (*(*a1 + 512))(a1);
    __p.__r_.__value_.__l.__size_ = v12;
    end = v19.__end_;
    if (v19.__end_ >= v19.__end_cap_.__value_)
    {
      v14 = std::vector<std::string>::__emplace_back_slow_path<std::string_view>(&v19, &__p);
    }

    else
    {
      std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string_view>(&v19, &__p);
      v14 = end + 1;
    }

    v19.__end_ = v14;
    ++v10;
  }

  absl::StrCat<int>("Invalid id: ", 0xCuLL, &v18, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  sentencepiece::util::Status::Status(a4, 11, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_18:
  __p.__r_.__value_.__r.__words[0] = &v19;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
}

void sub_1A8E8DBAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, char a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  __p = &a17;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string_view,int>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<std::string>::reserve(std::vector<std::string> *this, std::vector<std::string>::size_type __n)
{
  if (0xAAAAAAAAAAAAAAABLL * ((this->__end_cap_.__value_ - this->__begin_) >> 3) < __n)
  {
    if (__n < 0xAAAAAAAAAAAAAABLL)
    {
      v2 = this->__end_ - this->__begin_;
      v3.__end_cap_.__value_ = this;
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(this, __n);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }
}

void std::__split_buffer<std::string>::~__split_buffer(std::__split_buffer<std::string> *this)
{
  std::__split_buffer<std::string>::__destruct_at_end[abi:ne200100](this, &this->__begin_->__r_.__value_.__l.__data_);
  if (this->__first_)
  {
    operator delete(this->__first_);
  }
}

void std::__split_buffer<std::string>::__destruct_at_end[abi:ne200100](uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

const char *sentencepiece::SentencePieceProcessor::IdToPiece(sentencepiece::SentencePieceProcessor *this, uint64_t a2)
{
  (*(*this + 88))(&v19);
  v4 = v19;
  sentencepiece::util::Status::~Status(&v19);
  if (!v4)
  {
    return (*(**(this + 1) + 120))(*(this + 1), a2);
  }

  if (sentencepiece::logging::GetMinLogLevel(v5) <= 2)
  {
    v18 = 0;
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5300], "sentencepiece_processor.cc", 26);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "(", 1);
    v8 = MEMORY[0x1AC57D010](v7, 971);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ") ", 2);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "LOG(", 4);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "ERROR", 5);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ") ", 2);
    (*(*this + 88))(&v19, this);
    v13 = sentencepiece::util::Status::error_message(&v19);
    v14 = strlen(v13);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, v13, v14);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "\nReturns default value ", 23);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "", 0);
    sentencepiece::util::Status::~Status(&v19);
    sentencepiece::error::Die::~Die(&v18);
  }

  return "";
}

uint64_t sentencepiece::MemoryMappedModelProto::IdToPiece(sentencepiece::MemoryMappedModelProto *this, int a2)
{
  v2 = *(this + 10);
  v3 = *(*(this + 9) + 4 * (a2 + 5));
  strlen((v2 + v3));
  return v2 + v3;
}

void *std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string_view>(void *result, uint64_t a2)
{
  v2 = result;
  v3 = result[1];
  v4 = *(a2 + 8);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = *a2;
  if (v4 >= 0x17)
  {
    operator new();
  }

  v3[23] = v4;
  if (v4)
  {
    result = memmove(v3, v5, v4);
  }

  v3[v4] = 0;
  v2[1] = v3 + 24;
  return result;
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

void *sentencepiece::SentencePieceProcessor::status@<X0>(sentencepiece::SentencePieceProcessor *this@<X0>, sentencepiece::util::Status *a2@<X8>)
{
  v4 = *(this + 1);
  if (v4)
  {
    if (*(this + 2))
    {
      result = (*(*v4 + 16))(v4);
      if (!*a2)
      {
        sentencepiece::util::Status::~Status(a2);
        result = (*(**(this + 2) + 24))(*(this + 2));
        if (!*a2)
        {
          sentencepiece::util::Status::~Status(a2);

          return sentencepiece::util::Status::Status(v6);
        }
      }

      return result;
    }

    v9 = 13;
    v8 = std::ostringstream::basic_ostringstream[abi:ne200100](&v10);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "(", 1);
    MEMORY[0x1AC57D010](&v10, 320);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, ") [", 3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "normalizer_", 11);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "] ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "Normalizer is not initialized.", 30);
    sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(&v9, a2);
  }

  else
  {
    v9 = 13;
    v7 = std::ostringstream::basic_ostringstream[abi:ne200100](&v10);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "(", 1);
    MEMORY[0x1AC57D010](&v10, 319);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, ") [", 3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "model_", 6);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "] ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "Model is not initialized.", 25);
    sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(&v9, a2);
  }

  v10 = *MEMORY[0x1E69E54E8];
  *(&v10 + *(v10 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v11 = MEMORY[0x1E69E5548] + 16;
  if (v13 < 0)
  {
    operator delete(v12[7].__locale_);
  }

  v11 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v12);
  std::ostream::~ostream();
  return MEMORY[0x1AC57D130](&v14);
}

uint64_t sentencepiece::ModelInterface::GetPieceSize(sentencepiece::ModelInterface *this)
{
  result = *(this + 1);
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

uint64_t sub_1A8E8E428()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

_OWORD *_sypWOb_0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1A8E8E4F0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_25:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v23 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 48) + 24 * (v17 | (v12 << 6)));
      v19 = v18[1];
      v20 = v18[2];
      *v11 = *v18;
      v11[1] = v19;
      v11[2] = v20;
      if (v14 == v10)
      {

        goto LABEL_23;
      }

      v11 += 3;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= v12 + 1)
    {
      v22 = v12 + 1;
    }

    else
    {
      v22 = v13;
    }

    v12 = v22 - 1;
    v10 = result;
LABEL_23:
    v7 = v23;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1A8E8E690()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[9];

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1A8E8E6E0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A8E8E73C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for CharacterSet();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void *sub_1A8E8E7E8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for CharacterSet();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A8E8E88C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1A8E8E89C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1A8E8E8EC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1A8E8E934()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

unint64_t _s19TokenGenerationCore14AutomationJSONV25OutputSafetyConfigurationV10GuardrailsV10CodingKeys33_868917FC943B4116B462CF14C383974DLLOs0J3KeyAAsAKP11stringValueSSvgTW_0()
{
  if (*v0)
  {
    result = 0xD000000000000010;
  }

  else
  {
    result = 7566959;
  }

  *v0;
  return result;
}

uint64_t get_enum_tag_for_layout_string_19TokenGenerationCore14AutomationJSONV25OutputSafetyConfigurationVSg_0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t get_enum_tag_for_layout_string_19TokenGenerationCore14AutomationJSONV14RenderedPromptVSg_0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1A8E8EB54()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A8E8EBA0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for OSSignposter();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = type metadata accessor for OSSignpostID();
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[7]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_1A8E8ECA8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for OSSignposter();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    result = type metadata accessor for OSSignpostID();
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[7]) = (a2 - 1);
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[6];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

uint64_t sub_1A8E8EDAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1A8E8EE78(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for URL();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

void *_s15TokenGeneration6PromptVs43ExpressibleByExtendedGraphemeClusterLiteralAAsADP08extendedghI0x0fghI4TypeQz_tcfCTW_0@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  v3 = MEMORY[0x1E69E7CC0];
  a2[2] = MEMORY[0x1E69E7CC0];
  a2[3] = v3;
  return result;
}

uint64_t sub_1A8E8EF94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1A8E8F050(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A8E8F190(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Schema();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1A8E8F23C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Schema();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A8E8F2E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Prompt.SpecialToken(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1A8E8F394(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Prompt.SpecialToken(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A8E8F438@<X0>(uint64_t *a1@<X8>)
{
  result = Prompt.Turn.content.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1A8E8F468(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV14ResponseFormatVSgMd, &_s15TokenGeneration6PromptV14ResponseFormatVSgMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[5];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[6]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[7];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_1A8E8F5A8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV14ResponseFormatVSgMd, &_s15TokenGeneration6PromptV14ResponseFormatVSgMR);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[5];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6]) = (a2 - 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[7];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

uint64_t sub_1A8E8F6E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 40);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1A8E8F7B0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 32) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A8E8F860(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 44);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1A8E8F928(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 16) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A8E8F9DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1A8E8FA98(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A8E8FB48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PromptTemplateInfo.RichVariableBinding.Component.Content(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1A8E8FBB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PromptTemplateInfo.RichVariableBinding.Component.Content(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1A8E8FC24()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1A8E8FC5C()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1A8E8FC94(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 251)
  {
    v4 = *a1;
    if (v4 >= 5)
    {
      return v4 - 4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PromptKit0A0V9ComponentVSgMd, &_s9PromptKit0A0V9ComponentVSgMR);
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_1A8E8FD48(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 251)
  {
    *result = a2 + 4;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PromptKit0A0V9ComponentVSgMd, &_s9PromptKit0A0V9ComponentVSgMR);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A8E8FDF4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A8E8FE2C()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1A8E8FE64(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PromptKit15ChatMessageRoleO4role_tMd, &_s9PromptKit15ChatMessageRoleO4role_tMR);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 4)
  {
    return v5 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A8E8FEDC(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 3);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PromptKit15ChatMessageRoleO4role_tMd, &_s9PromptKit15ChatMessageRoleO4role_tMR);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

void sub_1A8E9059C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  sentencepiece::util::Status::~Status(va);
  _Unwind_Resume(a1);
}

void sub_1A8E90B5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, void *__p, uint64_t a13)
{
  sentencepiece::util::Status::~Status(&a11);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1A8E90EA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28)
{
  sentencepiece::util::Status::~Status(&a11);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a27)
  {
    a28 = a27;
    operator delete(a27);
  }

  _Unwind_Resume(a1);
}

void sub_1A8E91060(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A8E913E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, void *__p, uint64_t a18)
{
  sentencepiece::util::Status::~Status(&a16);
  if (__p)
  {
    a18 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_1E785E4C0, MEMORY[0x1E69E5278]);
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

uint64_t std::string_view::compare[abi:ne200100](void *a1, unint64_t a2, size_t a3, void *__s2, size_t a5)
{
  v5 = a1[1];
  v6 = v5 >= a2;
  v7 = v5 - a2;
  if (!v6)
  {
    std::__throw_out_of_range[abi:ne200100]("string_view::substr");
  }

  if (v7 >= a3)
  {
    v9 = a3;
  }

  else
  {
    v9 = v7;
  }

  if (a5 >= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = a5;
  }

  LODWORD(result) = memcmp((*a1 + a2), __s2, v10);
  if (v9 < a5)
  {
    v12 = -1;
  }

  else
  {
    v12 = 1;
  }

  if (v9 == a5)
  {
    v12 = 0;
  }

  if (result)
  {
    return result;
  }

  else
  {
    return v12;
  }
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_1E785E4C8, MEMORY[0x1E69E5280]);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B8] + 16);
  return result;
}

uint64_t std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1A8E91EE4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<int>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

void OUTLINED_FUNCTION_0(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, a5, 0xCu);
}

uint64_t specialized Regex2BNFBNFNode.description.getter(unsigned __int8 a1)
{
  if (a1 > 2u)
  {
    if (a1 > 4u)
    {
      if (a1 == 5)
      {
        return 0x554E4148504C413CLL;
      }
    }

    else if (a1 == 3)
    {
      return 0xD000000000000010;
    }

    goto LABEL_10;
  }

  if (a1)
  {
    if (a1 == 1)
    {
      return 0xD00000000000001ALL;
    }

LABEL_10:
    type metadata accessor for GenerationError();
    lazy protocol witness table accessor for type IOSurfacePropertyKey and conformance IOSurfacePropertyKey(&lazy protocol witness table cache variable for type GenerationError and conformance GenerationError, type metadata accessor for GenerationError);
    v2 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    MEMORY[0x1AC57C120](0x203A524F525245, 0xE700000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    _print_unlocked<A, B>(_:_:)();

    return 0;
  }

  return 0xD00000000000002BLL;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Regex2BNF.Expression.render()()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = v0;
    v15 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v3 = (v2 + 32);
    while (1)
    {
      v4 = *v3;

      v5 = Regex2BNF.Choice.render()();
      if (v6)
      {
        break;
      }

      v8 = *(v15 + 16);
      v7 = *(v15 + 24);
      if (v8 >= v7 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1);
      }

      *(v15 + 16) = v8 + 1;
      *(v15 + 16 * v8 + 32) = v5;
      ++v3;
      if (!--v1)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v9 = BidirectionalCollection<>.joined(separator:)();
    v11 = v10;

    MEMORY[0x1AC57C120](v9, v11);

    v12 = 0;
    v13 = 0xE000000000000000;
  }

  result._object = v13;
  result._countAndFlagsBits = v12;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Regex2BNF.Rule()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  return specialized Regex2BNF.Rule.render()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Regex2BNF.NonTerminalSymbol()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Regex2BNF.NonTerminalSymbol()
{
  v1 = *v0;
  v2 = v0[1];
  return String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Regex2BNF.NonTerminalSymbol()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Regex2BNF.NonTerminalSymbol(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Regex2BNF.NonTerminalSymbol()
{
  MEMORY[0x1AC57C120](*v0, v0[1]);
  MEMORY[0x1AC57C120](62, 0xE100000000000000);
  return 60;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Regex2BNF.Choice.render()()
{
  v1 = *(v0 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
LABEL_40:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v39 = BidirectionalCollection<>.joined(separator:)();
    v41 = v40;

    MEMORY[0x1AC57C120](v39, v41);

    v20 = 0;
    v21 = 0xE000000000000000;
    goto LABEL_46;
  }

  v3 = v0;
  v53 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  v4 = 0;
  v46 = v3 + 32;
  v5 = v53;
  v44 = v1;
  while (1)
  {
    v6 = v46 + 24 * v4;
    v8 = *v6;
    v7 = *(v6 + 8);
    v9 = *(v6 + 16);
    v10 = v9 >> 6;
    if (v9 >> 6 <= 1)
    {
      break;
    }

    if (v10 == 2)
    {
      v51 = 60;
      v52 = 0xE100000000000000;
      v17 = v7;
      v18 = v7;
      v12 = v4;
      outlined copy of Regex2BNF.Symbol(v8, v17, v9);
      MEMORY[0x1AC57C120](v8, v18);
      MEMORY[0x1AC57C120](62, 0xE100000000000000);
      v14 = v8;
      v15 = v18;
      v16 = v9;
LABEL_29:
      outlined consume of Regex2BNF.Symbol(v14, v15, v16);
      v4 = v12;
      v36 = v51;
      v37 = v52;
      goto LABEL_30;
    }

    if (v8 <= 2u)
    {
      if (v8)
      {
        if (v8 != 1)
        {
          goto LABEL_43;
        }

        v36 = 0xD00000000000001ALL;
        v37 = 0x80000001A8FD8460;
      }

      else
      {
        v36 = 0xD00000000000002BLL;
        v37 = 0x80000001A8FD8480;
      }
    }

    else if (v8 > 4u)
    {
      if (v8 != 5)
      {
LABEL_43:
        type metadata accessor for GenerationError();
        lazy protocol witness table accessor for type IOSurfacePropertyKey and conformance IOSurfacePropertyKey(&lazy protocol witness table cache variable for type GenerationError and conformance GenerationError, type metadata accessor for GenerationError);
        swift_allocError();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
LABEL_39:

        goto LABEL_46;
      }

      v36 = 0x554E4148504C413CLL;
      v37 = 0xEF3E53434952454DLL;
    }

    else
    {
      if (v8 != 3)
      {
        goto LABEL_43;
      }

      v36 = 0xD000000000000010;
      v37 = 0x80000001A8FD8440;
    }

LABEL_30:
    v54 = v5;
    v31 = *(v5 + 16);
    v30 = *(v5 + 24);
    if (v31 >= v30 >> 1)
    {
      v38 = v4;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1);
      v4 = v38;
      v5 = v54;
    }

    ++v4;
    *(v5 + 16) = v31 + 1;
    v32 = v5 + 16 * v31;
    *(v32 + 32) = v36;
    *(v32 + 40) = v37;
    if (v4 == v1)
    {
      goto LABEL_40;
    }
  }

  if (!v10)
  {
    if (v9 <= 0)
    {
      v51 = 0;
      v52 = 0xE000000000000000;
      v29 = v7;
      v12 = v4;
      MEMORY[0x1AC57C120](34, 0xE100000000000000);
      Unicode.Scalar.write<A>(to:)();
      MEMORY[0x1AC57C120](34, 0xE100000000000000);
      v14 = v8;
      v15 = v29;
      v16 = 0;
    }

    else
    {
      if (v9 != 1)
      {
        type metadata accessor for GenerationError();
        lazy protocol witness table accessor for type IOSurfacePropertyKey and conformance IOSurfacePropertyKey(&lazy protocol witness table cache variable for type GenerationError and conformance GenerationError, type metadata accessor for GenerationError);
        swift_allocError();
        swift_storeEnumTagMultiPayload();
        if (v9 == 2)
        {
          outlined copy of Regex2BNF.Symbol(v8, v7, 2u);
        }

        swift_willThrow();
        outlined consume of Regex2BNF.Symbol(v8, v7, v9);
        goto LABEL_39;
      }

      v51 = 34;
      v52 = 0xE100000000000000;
      v11 = v7;
      v12 = v4;
      v13 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1AC57C120](v13);

      MEMORY[0x1AC57C120](34, 0xE100000000000000);
      v14 = v8;
      v15 = v11;
      v16 = 1;
    }

    goto LABEL_29;
  }

  v19 = *(v8 + 16);
  if (!v19)
  {
    v37 = 0xE200000000000000;
    v36 = 8738;
    v1 = v44;
    goto LABEL_30;
  }

  v45 = v7;
  v43 = v4;
  v50 = v2;

  v20 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v19, 0);
  v22 = 0;
  v23 = (v8 + 48);
  v47 = v8;
  while (v22 < *(v8 + 16))
  {
    v24 = *(v23 - 2);
    if (*v23)
    {
      if (*v23 != 1)
      {
        type metadata accessor for GenerationError();
        lazy protocol witness table accessor for type IOSurfacePropertyKey and conformance IOSurfacePropertyKey(&lazy protocol witness table cache variable for type GenerationError and conformance GenerationError, type metadata accessor for GenerationError);
        swift_allocError();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        outlined consume of Regex2BNF.Symbol(v8, v45, v9);

        goto LABEL_39;
      }

      v48 = 34;
      v49 = 0xE100000000000000;
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1AC57C120](v25);
    }

    else
    {
      v48 = 0;
      v49 = 0xE000000000000000;
      MEMORY[0x1AC57C120](34, 0xE100000000000000);
      Unicode.Scalar.write<A>(to:)();
    }

    v20 = MEMORY[0x1AC57C120](34, 0xE100000000000000);
    v27 = *(v50 + 16);
    v26 = *(v50 + 24);
    if (v27 >= v26 >> 1)
    {
      v20 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1);
    }

    ++v22;
    *(v50 + 16) = v27 + 1;
    v28 = v50 + 16 * v27;
    *(v28 + 32) = v48;
    *(v28 + 40) = v49;
    v23 += 24;
    v8 = v47;
    if (v19 == v22)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type [String] and conformance [A]();
      v33 = BidirectionalCollection<>.joined(separator:)();
      v35 = v34;

      MEMORY[0x1AC57C120](v33, v35);

      outlined consume of Regex2BNF.Symbol(v47, v45, v9);
      v36 = 0;
      v37 = 0xE000000000000000;
      v4 = v43;
      v2 = MEMORY[0x1E69E7CC0];
      v1 = v44;
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_46:
  result._object = v21;
  result._countAndFlagsBits = v20;
  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Regex2BNF.Symbol.render()()
{
  if ((v1 >> 6) <= 1u)
  {
    if (!(v1 >> 6))
    {
      v4 = Regex2BNF.TerminalSymbol.render()();
      object = v4._object;
      countAndFlagsBits = v4._countAndFlagsBits;
      goto LABEL_31;
    }

    v5 = *(v0 + 16);
    if (!v5)
    {
      object = 0xE200000000000000;
      countAndFlagsBits = 8738;
      goto LABEL_31;
    }

    v21 = MEMORY[0x1E69E7CC0];
    v6 = v0;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
    v7 = (v6 + 48);
    while (1)
    {
      v8 = *(v7 - 2);
      v9 = *v7;
      if (*v7)
      {
        if (v9 != 1)
        {
          v14 = *(v7 - 1);
          type metadata accessor for GenerationError();
          lazy protocol witness table accessor for type IOSurfacePropertyKey and conformance IOSurfacePropertyKey(&lazy protocol witness table cache variable for type GenerationError and conformance GenerationError, type metadata accessor for GenerationError);
          swift_allocError();
          swift_storeEnumTagMultiPayload();
          if (v9 == 2)
          {
            outlined copy of Regex2BNF.TerminalSymbol(v8, v14, 2);
          }

          swift_willThrow();
          outlined consume of Regex2BNF.TerminalSymbol(v8, v14, v9);

          goto LABEL_31;
        }

        v19 = 34;
        v20 = 0xE100000000000000;
        v10 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x1AC57C120](v10);
      }

      else
      {
        v19 = 0;
        v20 = 0xE000000000000000;
        MEMORY[0x1AC57C120](34, 0xE100000000000000);
        Unicode.Scalar.write<A>(to:)();
      }

      MEMORY[0x1AC57C120](34, 0xE100000000000000);
      v12 = *(v21 + 16);
      v11 = *(v21 + 24);
      if (v12 >= v11 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
      }

      v7 += 24;
      *(v21 + 16) = v12 + 1;
      v13 = v21 + 16 * v12;
      *(v13 + 32) = v19;
      *(v13 + 40) = v20;
      if (!--v5)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        lazy protocol witness table accessor for type [String] and conformance [A]();
        v15 = BidirectionalCollection<>.joined(separator:)();
        v17 = v16;

        MEMORY[0x1AC57C120](v15, v17);

        countAndFlagsBits = 0;
        object = 0xE000000000000000;
        goto LABEL_31;
      }
    }
  }

  if (v1 >> 6 != 2)
  {
    if (v0 <= 2u)
    {
      if (!v0)
      {
        object = 0x80000001A8FD8480;
        countAndFlagsBits = 0xD00000000000002BLL;
        goto LABEL_31;
      }

      if (v0 == 1)
      {
        object = 0x80000001A8FD8460;
        countAndFlagsBits = 0xD00000000000001ALL;
        goto LABEL_31;
      }
    }

    else if (v0 > 4u)
    {
      if (v0 == 5)
      {
        object = 0xEF3E53434952454DLL;
        countAndFlagsBits = 0x554E4148504C413CLL;
        goto LABEL_31;
      }
    }

    else if (v0 == 3)
    {
      countAndFlagsBits = 0xD000000000000010;
      object = 0x80000001A8FD8440;
      goto LABEL_31;
    }

    type metadata accessor for GenerationError();
    lazy protocol witness table accessor for type IOSurfacePropertyKey and conformance IOSurfacePropertyKey(&lazy protocol witness table cache variable for type GenerationError and conformance GenerationError, type metadata accessor for GenerationError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    countAndFlagsBits = swift_willThrow();
    goto LABEL_31;
  }

  MEMORY[0x1AC57C120]();
  MEMORY[0x1AC57C120](62, 0xE100000000000000);
  countAndFlagsBits = 60;
  object = 0xE100000000000000;
LABEL_31:
  result._object = object;
  result._countAndFlagsBits = countAndFlagsBits;
  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Regex2BNF.TerminalSymbol.render()()
{
  if (v0 - 2 >= 2)
  {
    if (v0)
    {
      v5 = 34;
      v6 = 0xE100000000000000;
      v3 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1AC57C120](v3);
    }

    else
    {
      v5 = 0;
      v6 = 0xE000000000000000;
      MEMORY[0x1AC57C120](34, 0xE100000000000000);
      Unicode.Scalar.write<A>(to:)();
    }

    MEMORY[0x1AC57C120](34, 0xE100000000000000);
    v1 = v5;
    v2 = v6;
  }

  else
  {
    type metadata accessor for GenerationError();
    lazy protocol witness table accessor for type IOSurfacePropertyKey and conformance IOSurfacePropertyKey(&lazy protocol witness table cache variable for type GenerationError and conformance GenerationError, type metadata accessor for GenerationError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    v1 = swift_willThrow();
  }

  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Regex2BNF.Symbol()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  result = Regex2BNF.Symbol.render()()._countAndFlagsBits;
  if (v5)
  {
    MEMORY[0x1AC57C120](0x203A524F525245, 0xE700000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    _print_unlocked<A, B>(_:_:)();

    return 0;
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Regex2BNF.Builtin()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1AC57CB80](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Regex2BNF.Builtin()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1AC57CB80](v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Regex2BNF.TerminalSymbol()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  result = Regex2BNF.TerminalSymbol.render()()._countAndFlagsBits;
  if (v4)
  {
    MEMORY[0x1AC57C120](0x203A524F525245, 0xE700000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    _print_unlocked<A, B>(_:_:)();

    return 0;
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

uint64_t getEnumTagSinglePayload for _opaque_pthread_mutex_t(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for _opaque_pthread_mutex_t(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
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

  *(result + 64) = v3;
  return result;
}

void type metadata accessor for _opaque_pthread_mutex_t(uint64_t a1, unint64_t *a2)
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

uint64_t protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance IOSurfacePropertyKey(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance IOSurfacePropertyKey(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance IOSurfacePropertyKey@<X0>(uint64_t *a1@<X8>)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = MEMORY[0x1AC57BF60](v2);

  *a1 = v3;
  return result;
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance IOSurfacePropertyKey()
{
  v1 = *v0;
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = MEMORY[0x1AC57C1E0](v2);

  return v3;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance IOSurfacePropertyKey()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance IOSurfacePropertyKey()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance IOSurfacePropertyKey(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance IOSurfacePropertyKey@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = MEMORY[0x1AC57BF60](*a1, a1[1]);

  *a2 = v3;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance IOSurfacePropertyKey@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance IOSurfacePropertyKey(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type IOSurfacePropertyKey and conformance IOSurfacePropertyKey(&lazy protocol witness table cache variable for type IOSurfacePropertyKey and conformance IOSurfacePropertyKey, type metadata accessor for IOSurfacePropertyKey);
  v3 = lazy protocol witness table accessor for type IOSurfacePropertyKey and conformance IOSurfacePropertyKey(&lazy protocol witness table cache variable for type IOSurfacePropertyKey and conformance IOSurfacePropertyKey, type metadata accessor for IOSurfacePropertyKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t lazy protocol witness table accessor for type IOSurfacePropertyKey and conformance IOSurfacePropertyKey(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t specialized Regex2BNF.BNF.render()(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v15 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  for (i = (a1 + 56); ; i += 4)
  {
    v4 = *(i - 3);
    v5 = *(i - 2);
    v6 = *(i - 1);
    v7 = *i;

    MEMORY[0x1AC57C120](v4, v5);
    MEMORY[0x1AC57C120](62, 0xE100000000000000);
    MEMORY[0x1AC57C120](0x203D3A3A20, 0xE500000000000000);
    countAndFlagsBits = Regex2BNF.Expression.render()()._countAndFlagsBits;
    if (v9)
    {
      break;
    }

    MEMORY[0x1AC57C120](countAndFlagsBits);

    v11 = *(v15 + 16);
    v10 = *(v15 + 24);
    if (v11 >= v10 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
    }

    *(v15 + 16) = v11 + 1;
    v12 = v15 + 16 * v11;
    *(v12 + 32) = 60;
    *(v12 + 40) = 0xE100000000000000;
    if (!--v1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type [String] and conformance [A]();
      v13 = BidirectionalCollection<>.joined(separator:)();

      MEMORY[0x1AC57C120](10, 0xE100000000000000);

      return v13;
    }
  }
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

uint64_t outlined copy of Regex2BNF.Symbol(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  if ((a3 >> 6) > 1u)
  {
    if (a3 >> 6 != 2)
    {
      return result;
    }
  }

  else if (!(a3 >> 6))
  {
    return outlined copy of Regex2BNF.TerminalSymbol(result, a2, a3);
  }
}

uint64_t outlined copy of Regex2BNF.TerminalSymbol(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 2)
  {
  }

  return result;
}

uint64_t outlined consume of Regex2BNF.Symbol(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  if ((a3 >> 6) > 1u)
  {
    if (a3 >> 6 != 2)
    {
      return result;
    }
  }

  else if (!(a3 >> 6))
  {
    return outlined consume of Regex2BNF.TerminalSymbol(result, a2, a3);
  }
}

uint64_t outlined consume of Regex2BNF.TerminalSymbol(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 2)
  {
  }

  return result;
}

uint64_t specialized Regex2BNF.Rule.render()()
{
  MEMORY[0x1AC57C120]();
  MEMORY[0x1AC57C120](62, 0xE100000000000000);
  MEMORY[0x1AC57C120](0x203D3A3A20, 0xE500000000000000);
  countAndFlagsBits = Regex2BNF.Expression.render()()._countAndFlagsBits;
  if (v1)
  {
  }

  MEMORY[0x1AC57C120](countAndFlagsBits);

  return 60;
}

uint64_t specialized Regex2BNF.Choice.init(_:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v11 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v3 = v11;
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v8 = *(v11 + 16);
      v7 = *(v11 + 24);

      if (v8 >= v7 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1);
      }

      *(v11 + 16) = v8 + 1;
      v9 = v11 + 24 * v8;
      *(v9 + 32) = v6;
      *(v9 + 40) = v5;
      *(v9 + 48) = 0x80;
      v4 += 2;
      --v2;
    }

    while (v2);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

uint64_t get_enum_tag_for_layout_string_19TokenGenerationCore9Regex2BNFO14TerminalSymbolO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Regex2BNF.TerminalSymbol(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for Regex2BNF.TerminalSymbol(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for Regex2BNF.TerminalSymbol(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for Regex2BNF.Symbol(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3D && *(a1 + 17))
  {
    return (*a1 + 61);
  }

  v3 = (*(a1 + 16) & 0x3C | (*(a1 + 16) >> 6)) ^ 0x3F;
  if (v3 >= 0x3C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for Regex2BNF.Symbol(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3C)
  {
    *(result + 16) = 0;
    *result = a2 - 61;
    *(result + 8) = 0;
    if (a3 >= 0x3D)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3D)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 4 * (((-a2 >> 2) & 0xF) - 16 * a2);
    }
  }

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

uint64_t getEnumTagSinglePayload for Regex2BNF.Rule(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for Regex2BNF.Rule(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for Regex2BNF.CharacterPredicate(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for Regex2BNF.CharacterPredicate(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for Regex2BNF.NonTerminalSymbol(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for Regex2BNF.NonTerminalSymbol(uint64_t result, int a2, int a3)
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

unint64_t instantiation function for generic protocol witness table for Regex2BNF.NonTerminalSymbol(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Regex2BNF.NonTerminalSymbol and conformance Regex2BNF.NonTerminalSymbol();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type Regex2BNF.NonTerminalSymbol and conformance Regex2BNF.NonTerminalSymbol()
{
  result = lazy protocol witness table cache variable for type Regex2BNF.NonTerminalSymbol and conformance Regex2BNF.NonTerminalSymbol;
  if (!lazy protocol witness table cache variable for type Regex2BNF.NonTerminalSymbol and conformance Regex2BNF.NonTerminalSymbol)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Regex2BNF.NonTerminalSymbol and conformance Regex2BNF.NonTerminalSymbol);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Regex2BNF.NonTerminalSymbol and conformance Regex2BNF.NonTerminalSymbol;
  if (!lazy protocol witness table cache variable for type Regex2BNF.NonTerminalSymbol and conformance Regex2BNF.NonTerminalSymbol)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Regex2BNF.NonTerminalSymbol and conformance Regex2BNF.NonTerminalSymbol);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for Regex2BNF.Expression(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Regex2BNF.Expression and conformance Regex2BNF.Expression();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type Regex2BNF.Expression and conformance Regex2BNF.Expression()
{
  result = lazy protocol witness table cache variable for type Regex2BNF.Expression and conformance Regex2BNF.Expression;
  if (!lazy protocol witness table cache variable for type Regex2BNF.Expression and conformance Regex2BNF.Expression)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Regex2BNF.Expression and conformance Regex2BNF.Expression);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for Regex2BNF.Rule(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Regex2BNF.Rule and conformance Regex2BNF.Rule();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type Regex2BNF.Rule and conformance Regex2BNF.Rule()
{
  result = lazy protocol witness table cache variable for type Regex2BNF.Rule and conformance Regex2BNF.Rule;
  if (!lazy protocol witness table cache variable for type Regex2BNF.Rule and conformance Regex2BNF.Rule)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Regex2BNF.Rule and conformance Regex2BNF.Rule);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for Regex2BNF.Choice(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Regex2BNF.Choice and conformance Regex2BNF.Choice();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type Regex2BNF.Choice and conformance Regex2BNF.Choice()
{
  result = lazy protocol witness table cache variable for type Regex2BNF.Choice and conformance Regex2BNF.Choice;
  if (!lazy protocol witness table cache variable for type Regex2BNF.Choice and conformance Regex2BNF.Choice)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Regex2BNF.Choice and conformance Regex2BNF.Choice);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for Regex2BNF.Symbol(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Regex2BNF.Symbol and conformance Regex2BNF.Symbol();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type Regex2BNF.Symbol and conformance Regex2BNF.Symbol()
{
  result = lazy protocol witness table cache variable for type Regex2BNF.Symbol and conformance Regex2BNF.Symbol;
  if (!lazy protocol witness table cache variable for type Regex2BNF.Symbol and conformance Regex2BNF.Symbol)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Regex2BNF.Symbol and conformance Regex2BNF.Symbol);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for Regex2BNF.TerminalSymbol(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Regex2BNF.TerminalSymbol and conformance Regex2BNF.TerminalSymbol();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type Regex2BNF.TerminalSymbol and conformance Regex2BNF.TerminalSymbol()
{
  result = lazy protocol witness table cache variable for type Regex2BNF.TerminalSymbol and conformance Regex2BNF.TerminalSymbol;
  if (!lazy protocol witness table cache variable for type Regex2BNF.TerminalSymbol and conformance Regex2BNF.TerminalSymbol)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Regex2BNF.TerminalSymbol and conformance Regex2BNF.TerminalSymbol);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Regex2BNF.Builtin(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Regex2BNF.Builtin(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t instantiation function for generic protocol witness table for Regex2BNF.Builtin(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Regex2BNF.Builtin and conformance Regex2BNF.Builtin();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type Regex2BNF.Builtin and conformance Regex2BNF.Builtin()
{
  result = lazy protocol witness table cache variable for type Regex2BNF.Builtin and conformance Regex2BNF.Builtin;
  if (!lazy protocol witness table cache variable for type Regex2BNF.Builtin and conformance Regex2BNF.Builtin)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Regex2BNF.Builtin and conformance Regex2BNF.Builtin);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Regex2BNF.Builtin and conformance Regex2BNF.Builtin;
  if (!lazy protocol witness table cache variable for type Regex2BNF.Builtin and conformance Regex2BNF.Builtin)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Regex2BNF.Builtin and conformance Regex2BNF.Builtin);
  }

  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay12_RegexParser3ASTV4NodeOG_19TokenGenerationCore9Regex2BNFO6ChoiceVsAE_pTg504_s19hi5Core9k43BNFO10BNFConvertV7convertySayAC6SymbolOG12_d12Parser3ASTV4g6OKFAC6M9VANKXEfU_AN0Q0VTf1cn_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v13 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v3 = v13;
    v5 = *(type metadata accessor for AST.Node() - 8);
    v6 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v7 = *(v5 + 72);
    while (1)
    {
      v8 = Regex2BNF.BNFConvert.convert(_:)(v6);
      if (v1)
      {
        break;
      }

      v14 = v3;
      v10 = *(v3 + 16);
      v9 = *(v3 + 24);
      if (v10 >= v9 >> 1)
      {
        v11 = v8;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1);
        v8 = v11;
        v3 = v14;
      }

      *(v3 + 16) = v10 + 1;
      *(v3 + 8 * v10 + 32) = v8;
      v6 += v7;
      if (!--v2)
      {
        return v3;
      }
    }
  }

  return v3;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay12_RegexParser3ASTV4NodeOG_Say19TokenGenerationCore9Regex2BNFO6SymbolOGsAE_pTg504_s19hi5Core9k32BNFO10BNFConvertV7convertySayAC6m5OG12_d12Parser3ASTV4G13OKFAiNKXEfU0_AN0Q0VTf1cn_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v13 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v3 = v13;
    v5 = *(type metadata accessor for AST.Node() - 8);
    v6 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v7 = *(v5 + 72);
    while (1)
    {
      v8 = Regex2BNF.BNFConvert.convert(_:)(v6);
      if (v1)
      {
        break;
      }

      v14 = v3;
      v10 = *(v3 + 16);
      v9 = *(v3 + 24);
      if (v10 >= v9 >> 1)
      {
        v11 = v8;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1);
        v8 = v11;
        v3 = v14;
      }

      *(v3 + 16) = v10 + 1;
      *(v3 + 8 * v10 + 32) = v8;
      v6 += v7;
      if (!--v2)
      {
        return v3;
      }
    }
  }

  return v3;
}

unint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore9Regex2BNFO14TerminalSymbolOs5NeverOTg504_s19gh5Core9j32BNFO10BNFConvertV7convertySayAC6m33OG12_RegexParser3ASTV4NodeOKFAC08l5H0Os7d2O6E7VXEfU2_Tf1cn_n(unint64_t a1, unint64_t a2)
{
  v3 = specialized Collection.count.getter(a1, a2);
  v4 = MEMORY[0x1E69E7CC0];
  if (!v3)
  {
    return v4;
  }

  v5 = v3;
  v37 = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3 & ~(v3 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v7 = 0;
    v4 = v37;
    v8 = a1;
    v9 = (a1 >> 59) & 1;
    if ((a2 & 0x1000000000000000) == 0)
    {
      LOBYTE(v9) = 1;
    }

    v10 = 4 << v9;
    if ((a2 & 0x2000000000000000) != 0)
    {
      v11 = HIBYTE(a2) & 0xF;
    }

    else
    {
      v11 = a1 & 0xFFFFFFFFFFFFLL;
    }

    v12 = 15;
    v31 = v5;
    v32 = v11;
    v33 = 4 << v9;
    while (1)
    {
      v13 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v14 = v12 & 0xC;
      v15 = (v12 & 1) == 0 || v14 == v10;
      v16 = v15;
      if (v15)
      {
        result = v12;
        if (v14 == v10)
        {
          result = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, v8, a2);
          v11 = v32;
          v10 = v33;
        }

        v17 = result >> 16;
        if (result >> 16 >= v11)
        {
          goto LABEL_61;
        }

        if ((result & 1) == 0)
        {
          v18 = _StringGuts.scalarAlignSlow(_:)(result, v8, a2);
          v11 = v32;
          v10 = v33;
          v17 = v18 >> 16;
        }
      }

      else
      {
        v17 = v12 >> 16;
        result = v12;
        if (v12 >> 16 >= v11)
        {
          goto LABEL_62;
        }
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        result = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
        v11 = v32;
        v10 = v33;
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v35 = v8;
          v36 = a2 & 0xFFFFFFFFFFFFFFLL;
          v20 = &v35 + v17;
        }

        else
        {
          v19 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((v8 & 0x1000000000000000) == 0)
          {
            v19 = _StringObject.sharedUTF8.getter();
            v11 = v32;
            v10 = v33;
          }

          v20 = (v19 + v17);
        }

        result = *v20;
        if (*v20 < 0)
        {
          v29 = (__clz(result ^ 0xFF) - 24);
          if (v29 > 2)
          {
            if (v29 == 3)
            {
              result = ((result & 0xF) << 12) | ((v20[1] & 0x3F) << 6) | v20[2] & 0x3F;
            }

            else
            {
              result = ((result & 0xF) << 18) | ((v20[1] & 0x3F) << 12) | ((v20[2] & 0x3F) << 6) | v20[3] & 0x3F;
            }
          }

          else if (v29 != 1)
          {
            result = v20[1] & 0x3F | ((result & 0x1F) << 6);
          }
        }
      }

      v37 = v4;
      v22 = *(v4 + 16);
      v21 = *(v4 + 24);
      if (v22 >= v21 >> 1)
      {
        v30 = result;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1);
        v11 = v32;
        v10 = v33;
        result = v30;
        v4 = v37;
      }

      *(v4 + 16) = v22 + 1;
      v23 = v4 + 24 * v22;
      *(v23 + 32) = result;
      *(v23 + 40) = 0;
      *(v23 + 48) = 0;
      if (v16)
      {
        v8 = a1;
        v24 = v31;
        if (v14 == v10)
        {
          result = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a1, a2);
          v11 = v32;
          v10 = v33;
          v12 = result;
          if (v32 <= result >> 16)
          {
            goto LABEL_63;
          }
        }

        else if (v11 <= v12 >> 16)
        {
          goto LABEL_63;
        }

        if ((v12 & 1) == 0)
        {
          result = _StringGuts.scalarAlignSlow(_:)(v12, a1, a2);
          v11 = v32;
          v10 = v33;
          v12 = v12 & 0xC | result & 0xFFFFFFFFFFFFFFF3 | 1;
        }
      }

      else
      {
        v8 = a1;
        v24 = v31;
        if (v11 <= v12 >> 16)
        {
          goto LABEL_64;
        }
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        result = String.UnicodeScalarView._foreignIndex(after:)();
        v11 = v32;
        v10 = v33;
        v12 = result;
      }

      else
      {
        v25 = v12 >> 16;
        if ((a2 & 0x2000000000000000) != 0)
        {
          v35 = v8;
          v36 = a2 & 0xFFFFFFFFFFFFFFLL;
          v26 = *(&v35 + v25);
        }

        else
        {
          result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((v8 & 0x1000000000000000) == 0)
          {
            result = _StringObject.sharedUTF8.getter();
            v11 = v32;
            v10 = v33;
          }

          v26 = *(result + v25);
        }

        v27 = v26;
        v28 = __clz(v26 ^ 0xFF) - 24;
        if (v27 >= 0)
        {
          LOBYTE(v28) = 1;
        }

        v12 = ((v25 + v28) << 16) | 5;
      }

      ++v7;
      if (v13 == v24)
      {
        return v4;
      }
    }

    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
  }

  __break(1u);
  return result;
}

Swift::String __swiftcall Regex2BNF.SymbolGenerator.genSuffix(for:)(Swift::String a1)
{
  v2 = v1;
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v5 = *(v1 + 16);
  if (!*(v5 + 16))
  {
    goto LABEL_6;
  }

  v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1._countAndFlagsBits, a1._object);
  if ((v7 & 1) == 0)
  {
    v14 = *(v2 + 16);
LABEL_6:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *(v2 + 16);
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(0, countAndFlagsBits, object, isUniquelyReferenced_nonNull_native);
    v10 = 0;
    *(v2 + 16) = v18;
    v11 = 0xE000000000000000;
    goto LABEL_9;
  }

  v8 = *(*(v5 + 56) + 8 * v6);
  v9 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1AC57C120](v9);

  if (__OFADD__(v8, 1))
  {
    __break(1u);
  }

  else
  {
    v12 = *(v2 + 16);
    v13 = swift_isUniquelyReferenced_nonNull_native();
    v17 = *(v2 + 16);
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v8 + 1, countAndFlagsBits, object, v13);
    v11 = 0xE100000000000000;
    v10 = 95;
    *(v2 + 16) = v17;
  }

LABEL_9:
  result._object = v11;
  result._countAndFlagsBits = v10;
  return result;
}

uint64_t Regex2BNF.BNFConvert.convert(_:)(uint64_t a1)
{
  v193 = a1;
  v155 = type metadata accessor for AST.CustomCharacterClass.Start();
  v154 = *(v155 - 8);
  v1 = *(v154 + 64);
  v2 = MEMORY[0x1EEE9AC00](v155);
  v159 = &v148 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v160 = &v148 - v4;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser6SourceV7LocatedVy_AA3ASTV20CustomCharacterClassV5StartOGMd, &_s12_RegexParser6SourceV7LocatedVy_AA3ASTV20CustomCharacterClassV5StartOGMR);
  v152 = *(v153 - 8);
  v5 = *(v152 + 64);
  MEMORY[0x1EEE9AC00](v153);
  v151 = &v148 - v6;
  v158 = type metadata accessor for AST.CustomCharacterClass();
  v157 = *(v158 - 8);
  v7 = *(v157 + 64);
  MEMORY[0x1EEE9AC00](v158);
  v156 = &v148 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = type metadata accessor for AST.Atom.EscapedBuiltin();
  v149 = *(v150 - 8);
  v9 = *(v149 + 64);
  MEMORY[0x1EEE9AC00](v150);
  v148 = &v148 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = type metadata accessor for AST.Atom.Kind();
  v162 = *(v163 - 8);
  v11 = *(v162 + 64);
  MEMORY[0x1EEE9AC00](v163);
  v161 = &v148 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = type metadata accessor for AST.Atom();
  v13 = *(v165 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v165);
  v164 = &v148 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = type metadata accessor for AST.Quantification.Amount();
  v176 = *(v177 - 8);
  v16 = *(v176 + 64);
  MEMORY[0x1EEE9AC00](v177);
  v175 = (&v148 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser6SourceV7LocatedVy_AA3ASTV14QuantificationV6AmountOGMd, &_s12_RegexParser6SourceV7LocatedVy_AA3ASTV14QuantificationV6AmountOGMR);
  v171 = *(v173 - 8);
  v18 = *(v171 + 64);
  MEMORY[0x1EEE9AC00](v173);
  v169 = &v148 - v19;
  v174 = type metadata accessor for AST.Quantification.Kind();
  v172 = *(v174 - 8);
  v20 = *(v172 + 64);
  MEMORY[0x1EEE9AC00](v174);
  v170 = &v148 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser6SourceV7LocatedVy_AA3ASTV14QuantificationV4KindOGMd, &_s12_RegexParser6SourceV7LocatedVy_AA3ASTV14QuantificationV4KindOGMR);
  v167 = *(v168 - 8);
  v22 = *(v167 + 64);
  MEMORY[0x1EEE9AC00](v168);
  v166 = &v148 - v23;
  v24 = type metadata accessor for AST.Quantification();
  v179 = *(v24 - 8);
  v180 = v24;
  v25 = *(v179 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v178 = &v148 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for AST.Group.Kind();
  v184 = *(v27 - 8);
  v185 = v27;
  v28 = *(v184 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v187 = &v148 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser6SourceV7LocatedVy_AA3ASTV5GroupV4KindOGMd, &_s12_RegexParser6SourceV7LocatedVy_AA3ASTV5GroupV4KindOGMR);
  v182 = *(v30 - 8);
  v183 = v30;
  v31 = *(v182 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v148 - v32;
  v188 = type metadata accessor for AST.Group();
  v186 = *(v188 - 8);
  v34 = *(v186 + 64);
  MEMORY[0x1EEE9AC00](v188);
  v189 = &v148 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for AST.Concatenation();
  v191 = *(v36 - 8);
  v192 = v36;
  v37 = *(v191 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v190 = &v148 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for AST.Alternation();
  v40 = *(v39 - 8);
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v43 = &v148 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for AST.Node();
  v45 = *(v44 - 8);
  v46 = *(v45 + 64);
  v47 = MEMORY[0x1EEE9AC00](v44);
  v49 = &v148 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = MEMORY[0x1EEE9AC00](v47);
  v181 = &v148 - v51;
  MEMORY[0x1EEE9AC00](v50);
  v53 = (&v148 - v52);
  (*(v45 + 16))(&v148 - v52, v193, v44);
  v54 = (*(v45 + 88))(v53, v44);
  if (v54 == *MEMORY[0x1E69E8D98])
  {
    (*(v45 + 96))(v53, v44);
    v55 = *v53;
    v56 = swift_projectBox();
    (*(v40 + 16))(v43, v56, v39);
    v33 = AST.Alternation.children.getter();
    v57 = v194;
    v58 = v199;
    v59 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay12_RegexParser3ASTV4NodeOG_19TokenGenerationCore9Regex2BNFO6ChoiceVsAE_pTg504_s19hi5Core9k43BNFO10BNFConvertV7convertySayAC6SymbolOG12_d12Parser3ASTV4g6OKFAC6M9VANKXEfU_AN0Q0VTf1cn_n(v33);
    if (v58)
    {
      (*(v40 + 8))(v43, v39);
LABEL_7:

      return v33;
    }

    v199 = 0;
    v193 = v39;
    v75 = v59;

    v76._countAndFlagsBits = 5524545;
    v76._object = 0xE300000000000000;
    v77 = Regex2BNF.SymbolGenerator.genSuffix(for:)(v76);
    v78 = v57[1];
    v197 = *v57;
    v198 = v78;

    MEMORY[0x1AC57C120](5524545, 0xE300000000000000);

    MEMORY[0x1AC57C120](v77._countAndFlagsBits, v77._object);

    v79 = v197;
    v80 = v198;
    if (!*(v57[3] + 16) || (v81 = v57[3], , specialized __RawDictionaryStorage.find<A>(_:)(v79, v80), v83 = v82, , (v83 & 1) == 0))
    {

      v84 = v57[3];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v197 = v57[3];
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v75, v79, v80, isUniquelyReferenced_nonNull_native);

      v57[3] = v197;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore9Regex2BNFO6SymbolOGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore9Regex2BNFO6SymbolOGMR);
      v33 = swift_allocObject();
      *(v33 + 1) = xmmword_1A8FC9400;
      *(v33 + 4) = v79;
      *(v33 + 5) = v80;
      v33[48] = 0x80;
      (*(v40 + 8))(v43, v193);
      goto LABEL_62;
    }

    goto LABEL_124;
  }

  v60 = v194;
  if (v54 == *MEMORY[0x1E69E8DA8])
  {
    (*(v45 + 96))(v53, v44);
    v61 = *v53;
    v62 = swift_projectBox();
    v64 = v190;
    v63 = v191;
    v49 = v192;
    (*(v191 + 16))(v190, v62, v192);
    v33 = AST.Concatenation.children.getter();
    v65 = v199;
    v66 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay12_RegexParser3ASTV4NodeOG_Say19TokenGenerationCore9Regex2BNFO6SymbolOGsAE_pTg504_s19hi5Core9k32BNFO10BNFConvertV7convertySayAC6m5OG12_d12Parser3ASTV4G13OKFAiNKXEfU0_AN0Q0VTf1cn_n(v33);
    if (v65)
    {
      (*(v63 + 8))(v64, v49);
      goto LABEL_7;
    }

    v86 = v66;
    v193 = v61;

    v45 = *(v86 + 16);
    v199 = 0;
    if (!v45)
    {
      v33 = MEMORY[0x1E69E7CC0];
LABEL_44:

      (*(v191 + 8))(v190, v192);
      goto LABEL_62;
    }

    v87 = 0;
    v44 = v86 + 32;
    v33 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v87 >= *(v86 + 16))
      {
        goto LABEL_86;
      }

      v49 = *(v44 + 8 * v87);
      v60 = *(v49 + 2);
      v88 = *(v33 + 2);
      v89 = v60 + v88;
      if (__OFADD__(v88, v60))
      {
        goto LABEL_87;
      }

      v90 = *(v44 + 8 * v87);

      v91 = swift_isUniquelyReferenced_nonNull_native();
      if (v91 && v89 <= *(v33 + 3) >> 1)
      {
        if (!*(v49 + 2))
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v88 <= v89)
        {
          v92 = v60 + v88;
        }

        else
        {
          v92 = v88;
        }

        v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v91, v92, 1, v33);
        if (!*(v49 + 2))
        {
LABEL_20:

          if (v60)
          {
            goto LABEL_88;
          }

          goto LABEL_21;
        }
      }

      if ((*(v33 + 3) >> 1) - *(v33 + 2) < v60)
      {
        goto LABEL_89;
      }

      swift_arrayInitWithCopy();

      if (v60)
      {
        v94 = *(v33 + 2);
        v95 = __OFADD__(v94, v60);
        v96 = v60 + v94;
        if (v95)
        {
          __break(1u);
          goto LABEL_96;
        }

        *(v33 + 2) = v96;
      }

LABEL_21:
      if (v45 == ++v87)
      {
        goto LABEL_44;
      }
    }
  }

  if (v54 != *MEMORY[0x1E69E8DE0])
  {
    if (v54 == *MEMORY[0x1E69E8DA0])
    {
LABEL_17:
      (*(v45 + 8))(v53, v44);
      v33 = type metadata accessor for GenerationError();
      lazy protocol witness table accessor for type GenerationError and conformance GenerationError(&lazy protocol witness table cache variable for type GenerationError and conformance GenerationError, type metadata accessor for GenerationError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      return v33;
    }

    if (v54 == *MEMORY[0x1E69E8DC0])
    {
      (*(v45 + 96))(v53, v44);
      v100 = *v53;
      v101 = swift_projectBox();
      v103 = v178;
      v102 = v179;
      v104 = v180;
      (*(v179 + 16))(v178, v101, v180);
      AST.Quantification.child.getter();
      v105 = v199;
      v106 = Regex2BNF.BNFConvert.convert(_:)(v49);
      if (v105)
      {
        (*(v45 + 8))(v49, v44);
        v107 = *(v102 + 8);
        v33 = (v102 + 8);
        v107(v103, v104);
        goto LABEL_62;
      }

      v199 = 0;
      v193 = v100;
      v118 = v106;
      (*(v45 + 8))(v49, v44);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore9Regex2BNFO6ChoiceVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore9Regex2BNFO6ChoiceVGMR);
      v119 = swift_allocObject();
      *(v119 + 16) = xmmword_1A8FC9400;
      *(v119 + 32) = v118;

      v120._countAndFlagsBits = 0x48435F544E415551;
      v120._object = 0xEB00000000444C49;
      v121 = Regex2BNF.SymbolGenerator.genSuffix(for:)(v120);
      v122 = v60[1];
      v197 = *v60;
      v198 = v122;

      MEMORY[0x1AC57C120](0x48435F544E415551, 0xEB00000000444C49);

      MEMORY[0x1AC57C120](v121._countAndFlagsBits, v121._object);

      v123 = v197;
      v124 = v198;
      if (!*(v60[3] + 16) || (v125 = v60[3], , specialized __RawDictionaryStorage.find<A>(_:)(v123, v124), v127 = v126, , (v127 & 1) == 0))
      {

        v128 = v60[3];
        v129 = swift_isUniquelyReferenced_nonNull_native();
        v197 = v60[3];
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v119, v123, v124, v129);

        v60[3] = v197;
        v130 = v166;
        v131 = v178;
        AST.Quantification.kind.getter();
        v132 = v170;
        v133 = v123;
        v134 = v168;
        MEMORY[0x1AC57B0A0](v168);
        (*(v167 + 8))(v130, v134);
        v135 = v169;
        AST.Quantification.amount.getter();
        v136 = v175;
        v137 = v173;
        MEMORY[0x1AC57B0A0](v173);
        (*(v171 + 8))(v135, v137);
        v33 = Regex2BNF.BNFConvert.createQuantify(_:_:_:)(v133, v124, v132, v136);

        (*(v176 + 8))(v136, v177);
        (*(v172 + 8))(v132, v174);
        (*(v179 + 8))(v131, v180);
        goto LABEL_62;
      }

      goto LABEL_124;
    }

    v87 = v199;
    if (v54 == *MEMORY[0x1E69E8DE8] || v54 == *MEMORY[0x1E69E8DF0] || v54 == *MEMORY[0x1E69E8DB0])
    {
      goto LABEL_17;
    }

    if (v54 == *MEMORY[0x1E69E8DD0])
    {
      (*(v45 + 96))(v53, v44);
      v108 = *v53;
      v109 = swift_projectBox();
      v88 = v13;
      v60 = v164;
      v49 = v165;
      (*(v13 + 16))(v164, v109, v165);
      v33 = v161;
      AST.Atom.kind.getter();
      v44 = v162;
      v86 = v163;
      v93 = (*(v162 + 88))(v33, v163);
      if (v93 != *MEMORY[0x1E69E8D58])
      {
        if (v93 == *MEMORY[0x1E69E8D60] || v93 == *MEMORY[0x1E69E8D28])
        {
          v142 = v33;
          v33 = type metadata accessor for GenerationError();
          lazy protocol witness table accessor for type GenerationError and conformance GenerationError(&lazy protocol witness table cache variable for type GenerationError and conformance GenerationError, type metadata accessor for GenerationError);
          swift_allocError();
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
          (*(v88 + 8))(v60, v49);
          (*(v44 + 8))(v142, v86);
          goto LABEL_62;
        }

LABEL_96:
        if (v93 == *MEMORY[0x1E69E8D80])
        {
          goto LABEL_97;
        }

        if (v93 == *MEMORY[0x1E69E8D70])
        {
          (*(v44 + 96))(v33, v86);
          v145 = v148;
          (*(v149 + 32))(v148, v33, v150);
          v146 = specialized Regex2BNF.BNFConvert.mapEscapedBuiltin(_:)(v145);
          if (v87)
          {
            (*(v149 + 8))(v148, v150);
            (*(v88 + 8))(v164, v165);

            return v33;
          }

          v147 = v146;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore9Regex2BNFO6SymbolOGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore9Regex2BNFO6SymbolOGMR);
          v33 = swift_allocObject();
          *(v33 + 1) = xmmword_1A8FC9400;
          *(v33 + 4) = v147;
          *(v33 + 5) = 0;
          v33[48] = -64;
          (*(v149 + 8))(v148, v150);
          (*(v88 + 8))(v164, v165);
          goto LABEL_62;
        }

        if (v93 == *MEMORY[0x1E69E8D30] || v93 == *MEMORY[0x1E69E8D10] || v93 == *MEMORY[0x1E69E8D38])
        {
          (*(v162 + 8))(v161, v163);
          v33 = type metadata accessor for GenerationError();
          lazy protocol witness table accessor for type GenerationError and conformance GenerationError(&lazy protocol witness table cache variable for type GenerationError and conformance GenerationError, type metadata accessor for GenerationError);
          swift_allocError();
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
          (*(v88 + 8))(v164, v165);
          goto LABEL_62;
        }

        v49 = v165;
        v60 = v164;
        v86 = v163;
        v44 = v162;
        v33 = v161;
        if (v93 == *MEMORY[0x1E69E8D20] || v93 == *MEMORY[0x1E69E8D18] || v93 == *MEMORY[0x1E69E8CF8] || v93 == *MEMORY[0x1E69E8D68] || v93 == *MEMORY[0x1E69E8D40] || v93 == *MEMORY[0x1E69E8D48])
        {
LABEL_97:
          (*(v44 + 8))(v33, v86);
        }

        else
        {
          if (v93 == *MEMORY[0x1E69E8D50])
          {
            (*(v88 + 8))(v164, v165);
            v33 = &outlined read-only object #0 of Regex2BNF.BNFConvert.convert(_:);
            goto LABEL_62;
          }

          v49 = v165;
          v60 = v164;
          if (v93 != *MEMORY[0x1E69E8D00] && v93 != *MEMORY[0x1E69E8D08] && v93 != *MEMORY[0x1E69E8D78])
          {
            goto LABEL_125;
          }
        }

        v33 = type metadata accessor for GenerationError();
        lazy protocol witness table accessor for type GenerationError and conformance GenerationError(&lazy protocol witness table cache variable for type GenerationError and conformance GenerationError, type metadata accessor for GenerationError);
        swift_allocError();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        (*(v88 + 8))(v60, v49);
        goto LABEL_62;
      }

      (*(v44 + 96))(v33, v86);
      v111 = *v33;
      v110 = *(v33 + 1);
      v112 = HIBYTE(v110) & 0xF;
      if ((v110 & 0x2000000000000000) == 0)
      {
        v112 = v111;
      }

      v113 = 7;
      if (((v110 >> 60) & ((v111 & 0x800000000000000) == 0)) != 0)
      {
        v113 = 11;
      }

      if (String.UnicodeScalarView.distance(from:to:)(0xFuLL, v113 | (v112 << 16), v111, v110) == 1)
      {
        v114 = specialized Collection.first.getter(v111, v110);
        if ((v114 & 0x100000000) != 0)
        {
          __break(1u);
LABEL_124:
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
          goto LABEL_125;
        }

        LODWORD(v116) = v114;

        v115 = 0;
        v116 = v116;
      }

      else
      {
        v116 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore9Regex2BNFO14TerminalSymbolOs5NeverOTg504_s19gh5Core9j32BNFO10BNFConvertV7convertySayAC6m33OG12_RegexParser3ASTV4NodeOKFAC08l5H0Os7d2O6E7VXEfU2_Tf1cn_n(v111, v110);

        v115 = 64;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore9Regex2BNFO6SymbolOGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore9Regex2BNFO6SymbolOGMR);
      v33 = swift_allocObject();
      *(v33 + 1) = xmmword_1A8FC9400;
      *(v33 + 4) = v116;
      *(v33 + 5) = 0;
      v33[48] = v115;
      outlined consume of Regex2BNF.Symbol(v116, 0, v115);
      (*(v88 + 8))(v60, v49);
      goto LABEL_62;
    }

    if (v54 == *MEMORY[0x1E69E8DC8])
    {
      (*(v45 + 96))(v53, v44);
      v199 = *v53;
      v138 = swift_projectBox();
      v45 = v157;
      v44 = v156;
      v49 = v158;
      (*(v157 + 16))(v156, v138, v158);
      v139 = v151;
      AST.CustomCharacterClass.start.getter();
      v33 = v160;
      v140 = v153;
      MEMORY[0x1AC57B0A0](v153);
      (*(v152 + 8))(v139, v140);
      v60 = v154;
      v87 = v155;
      (*(v154 + 104))(v159, *MEMORY[0x1E69E8B08], v155);
      lazy protocol witness table accessor for type GenerationError and conformance GenerationError(&lazy protocol witness table cache variable for type AST.CustomCharacterClass.Start and conformance AST.CustomCharacterClass.Start, MEMORY[0x1E69E8B10]);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v197 == v195 && v198 == v196)
      {
        v141 = v60[1];
        v141(v159, v87);
        v141(v160, v87);

        goto LABEL_79;
      }
    }

    else
    {
      if (v54 == *MEMORY[0x1E69E8DB8] || v54 == *MEMORY[0x1E69E8DD8])
      {
        goto LABEL_17;
      }

      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
    }

    v143 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v33 = v60[1];
    (v33)(v159, v87);
    (v33)(v160, v87);

    if (v143)
    {
      goto LABEL_92;
    }

    v144 = *(AST.CustomCharacterClass.members.getter() + 16);

    if (v144 >= 2)
    {
      goto LABEL_92;
    }

    AST.CustomCharacterClass.members.getter();
LABEL_79:

LABEL_92:
    type metadata accessor for GenerationError();
    lazy protocol witness table accessor for type GenerationError and conformance GenerationError(&lazy protocol witness table cache variable for type GenerationError and conformance GenerationError, type metadata accessor for GenerationError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    (*(v45 + 8))(v44, v49);
    goto LABEL_62;
  }

  (*(v45 + 96))(v53, v44);
  v193 = *v53;
  v67 = swift_projectBox();
  v68 = v186;
  (*(v186 + 16))(v189, v67, v188);
  AST.Group.kind.getter();
  v69 = v187;
  v70 = v183;
  MEMORY[0x1AC57B0A0](v183);
  (*(v182 + 8))(v33, v70);
  v72 = v184;
  v71 = v185;
  v73 = (*(v184 + 88))(v69, v185);
  if (v73 == *MEMORY[0x1E69E8E10] || v73 == *MEMORY[0x1E69E8E20])
  {
    (*(v72 + 8))(v187, v71);
    v97 = v189;
    v74 = v181;
LABEL_37:
    AST.Group.child.getter();
    v98 = v199;
    v99 = Regex2BNF.BNFConvert.convert(_:)(v74);
    if (!v98)
    {
      v33 = v99;
      (*(v45 + 8))(v74, v44);
      (*(v68 + 8))(v97, v188);
      goto LABEL_62;
    }

    (*(v45 + 8))(v74, v44);
    goto LABEL_39;
  }

  v74 = v181;
  if (v73 == *MEMORY[0x1E69E8E58])
  {
    v33 = type metadata accessor for GenerationError();
    lazy protocol witness table accessor for type GenerationError and conformance GenerationError(&lazy protocol witness table cache variable for type GenerationError and conformance GenerationError, type metadata accessor for GenerationError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    (*(v68 + 8))(v189, v188);
    (*(v72 + 8))(v187, v71);
LABEL_62:

    return v33;
  }

  v97 = v189;
  if (v73 == *MEMORY[0x1E69E8E60] || v73 == *MEMORY[0x1E69E8E08])
  {
    goto LABEL_37;
  }

  if (v73 == *MEMORY[0x1E69E8E28])
  {
    v33 = type metadata accessor for GenerationError();
    lazy protocol witness table accessor for type GenerationError and conformance GenerationError(&lazy protocol witness table cache variable for type GenerationError and conformance GenerationError, type metadata accessor for GenerationError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
LABEL_39:
    (*(v68 + 8))(v97, v188);
    goto LABEL_62;
  }

  if (v73 == *MEMORY[0x1E69E8E38] || v73 == *MEMORY[0x1E69E8E68] || v73 == *MEMORY[0x1E69E8E30] || v73 == *MEMORY[0x1E69E8E48] || v73 == *MEMORY[0x1E69E8E00] || v73 == *MEMORY[0x1E69E8E40] || v73 == *MEMORY[0x1E69E8E50])
  {
    v33 = type metadata accessor for GenerationError();
    lazy protocol witness table accessor for type GenerationError and conformance GenerationError(&lazy protocol witness table cache variable for type GenerationError and conformance GenerationError, type metadata accessor for GenerationError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    (*(v68 + 8))(v97, v188);
    goto LABEL_62;
  }

  if (v73 == *MEMORY[0x1E69E8E70] || v73 == *MEMORY[0x1E69E8E18])
  {
    v33 = type metadata accessor for GenerationError();
    lazy protocol witness table accessor for type GenerationError and conformance GenerationError(&lazy protocol witness table cache variable for type GenerationError and conformance GenerationError, type metadata accessor for GenerationError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    (*(v186 + 8))(v189, v188);
    goto LABEL_62;
  }

LABEL_125:
  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t Regex2BNF.BNFConvert.createQuantify(_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t, char *))
{
  v140 = a4;
  v143 = a2;
  v144 = a1;
  v5 = type metadata accessor for Source.Location();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v139 = &v130 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AST.Atom.Number();
  v137 = *(v8 - 8);
  v9 = *(v137 + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v134 = &v130 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v133 = &v130 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v135 = &v130 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v138 = &v130 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v130 - v18;
  v20 = type metadata accessor for AST.Quantification.Amount();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v130 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v130 - v26;
  v28 = type metadata accessor for AST.Quantification.Kind();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v130 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *(v29 + 16);
  *&v141 = a3;
  v33(v32, a3, v28);
  LODWORD(v34) = (*(v29 + 88))(v32, v28);
  if (v34 != *MEMORY[0x1E69E8A88])
  {
    goto LABEL_40;
  }

  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore9Regex2BNFO6SymbolOGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore9Regex2BNFO6SymbolOGMR);
  v36 = swift_allocObject();
  v136 = xmmword_1A8FC9400;
  *(v36 + 16) = xmmword_1A8FC9400;
  *(v36 + 32) = MEMORY[0x1E69E7CC0];
  *(v36 + 40) = 0;
  *(v36 + 48) = 64;
  (*(v21 + 16))(v27, v140, v20);
  v37 = (*(v21 + 88))(v27, v20);
  LODWORD(v140) = *MEMORY[0x1E69E8AC8];
  if (v37 == v140)
  {

    (*(v21 + 96))(v27, v20);
    v38 = v137;
    (*(v137 + 32))(v19, v27, v8);
    v39 = AST.Atom.Number.value.getter();
    if (v40)
    {
      goto LABEL_45;
    }

    v41 = v39;
    v42 = v143;

    v43 = _sSa9repeating5countSayxGx_SitcfC19TokenGenerationCore9Regex2BNFO6SymbolO_Tt1g5Tf4gn_n(v144, v42, 0x80u, v41);

    (*(v38 + 8))(v19, v8);
    return v43;
  }

  if (v37 == *MEMORY[0x1E69E8AD0])
  {

    (*(v21 + 96))(v27, v20);
    v45 = v137;
    v46 = v138;
    (*(v137 + 32))(v138, v27, v8);
    (*(v45 + 16))(v25, v46, v8);
    v139 = *(v21 + 104);
    (v139)(v25, v140, v20);
    v132 = v8;
    v47 = v144;
    v48 = v143;
    v49 = Regex2BNF.BNFConvert.createQuantify(_:_:_:)(v144, v143, v141, v25);
    v50 = *(v21 + 8);
    v50(v25, v20);
    v146 = v49;
    (v139)(v25, *MEMORY[0x1E69E8AB0], v20);
    v51 = Regex2BNF.BNFConvert.createQuantify(_:_:_:)(v47, v48, v141, v25);
    v50(v25, v20);
    specialized Array.append<A>(contentsOf:)(v51);
    (*(v45 + 8))(v138, v132);
    return v146;
  }

  v52 = *MEMORY[0x1E69E8AC0];
  v138 = v20;
  if (v37 != v52)
  {
    if (v37 == *MEMORY[0x1E69E8AB8])
    {

      (*(v21 + 96))(v27, v20);
      v73 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser3ASTV4AtomV6NumberV_AGtMd, &_s12_RegexParser3ASTV4AtomV6NumberV_AGtMR) + 48);
      v74 = *(v137 + 32);
      v74(v133, v27, v8);
      v132 = v8;
      v74(v134, &v27[v73], v8);
      v75 = AST.Atom.Number.value.getter();
      if (v76)
      {
        goto LABEL_45;
      }

      v77 = v75;
      *&v136 = AST.Atom.Number.value.getter();
      if (v78)
      {
        goto LABEL_45;
      }

      static Source.Location.fake.getter();
      AST.Atom.Number.init(_:at:)();
      v135 = v77;
      v79 = v140;
      v80 = v138;
      v140 = *(v21 + 104);
      v140(v25, v79, v138);
      v81 = v144;
      v82 = v143;
      v83 = v141;
      v84 = Regex2BNF.BNFConvert.createQuantify(_:_:_:)(v144, v143, v141, v25);
      v131 = *(v21 + 8);
      LODWORD(v34) = v131(v25, v80);
      v146 = v84;
      if (__OFSUB__(v136, v135))
      {
        goto LABEL_39;
      }

      static Source.Location.fake.getter();
      AST.Atom.Number.init(_:at:)();
      v140(v25, v52, v80);
      v85 = Regex2BNF.BNFConvert.createQuantify(_:_:_:)(v81, v82, v83, v25);
      v131(v25, v80);
      specialized Array.append<A>(contentsOf:)(v85);
      v86 = *(v137 + 8);
      v87 = v132;
      v86(v134, v132);
      v86(v133, v87);
      return v146;
    }

    if (v37 == *MEMORY[0x1E69E8AB0])
    {
      v98._countAndFlagsBits = 0x2A5F544E415551;
      v98._object = 0xE700000000000000;
      v99 = v142;
      v100 = Regex2BNF.SymbolGenerator.genSuffix(for:)(v98);
      v101 = v99[1];
      v146 = *v99;
      v147 = v101;

      MEMORY[0x1AC57C120](0x2A5F544E415551, 0xE700000000000000);

      MEMORY[0x1AC57C120](v100._countAndFlagsBits, v100._object);

      v102 = v146;
      v103 = v147;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore9Regex2BNFO6ChoiceVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore9Regex2BNFO6ChoiceVGMR);
      v104 = swift_allocObject();
      v141 = xmmword_1A8FC9410;
      *(v104 + 16) = xmmword_1A8FC9410;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore9Regex2BNFO17NonTerminalSymbolVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore9Regex2BNFO17NonTerminalSymbolVGMR);
      inited = swift_initStackObject();
      *(inited + 16) = v141;
      *(inited + 32) = v102;
      *(inited + 40) = v103;
      v106 = v143;
      *(inited + 48) = v144;
      *(inited + 56) = v106;
    }

    else
    {
      v107 = v142;
      v108 = v143;
      if (v37 == *MEMORY[0x1E69E8AD8])
      {

        v109._countAndFlagsBits = 0x2B5F544E415551;
        v109._object = 0xE700000000000000;
        v110 = Regex2BNF.SymbolGenerator.genSuffix(for:)(v109);
        v111 = v107[1];
        v146 = *v107;
        v147 = v111;

        MEMORY[0x1AC57C120](0x2B5F544E415551, 0xE700000000000000);

        MEMORY[0x1AC57C120](v110._countAndFlagsBits, v110._object);

        v102 = v146;
        v103 = v147;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore9Regex2BNFO6ChoiceVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore9Regex2BNFO6ChoiceVGMR);
        v112 = swift_allocObject();
        v141 = xmmword_1A8FC9410;
        *(v112 + 16) = xmmword_1A8FC9410;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore9Regex2BNFO17NonTerminalSymbolVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore9Regex2BNFO17NonTerminalSymbolVGMR);
        v113 = swift_initStackObject();
        *(v113 + 16) = v141;
        *(v113 + 32) = v102;
        *(v113 + 40) = v103;
        v114 = v144;
        *(v113 + 48) = v144;
        *(v113 + 56) = v108;

        *(v112 + 32) = specialized Regex2BNF.Choice.init(_:)(v113);
        v115 = swift_initStackObject();
        *(v115 + 16) = v136;
        *(v115 + 32) = v114;
        *(v115 + 40) = v108;

        *(v112 + 40) = specialized Regex2BNF.Choice.init(_:)(v115);
        if (*(v107[3] + 16))
        {
          v116 = v107[3];

          specialized __RawDictionaryStorage.find<A>(_:)(v102, v103);
          v118 = v117;

          if (v118)
          {
            goto LABEL_45;
          }
        }

        v119 = v142;
        v120 = v142[3];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v146 = v119[3];
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v112, v102, v103, isUniquelyReferenced_nonNull_native);
        goto LABEL_37;
      }

      if (v37 != *MEMORY[0x1E69E8AE0])
      {
        result = _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
        return result;
      }

      v122._countAndFlagsBits = 0x3F5F544E415551;
      v122._object = 0xE700000000000000;
      v99 = v142;
      v123 = Regex2BNF.SymbolGenerator.genSuffix(for:)(v122);
      v124 = v107[1];
      v146 = *v107;
      v147 = v124;

      MEMORY[0x1AC57C120](0x3F5F544E415551, 0xE700000000000000);

      MEMORY[0x1AC57C120](v123._countAndFlagsBits, v123._object);

      v102 = v146;
      v103 = v147;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore9Regex2BNFO6ChoiceVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore9Regex2BNFO6ChoiceVGMR);
      v104 = swift_allocObject();
      *(v104 + 16) = xmmword_1A8FC9410;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore9Regex2BNFO17NonTerminalSymbolVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore9Regex2BNFO17NonTerminalSymbolVGMR);
      inited = swift_initStackObject();
      *(inited + 16) = v136;
      *(inited + 32) = v144;
      *(inited + 40) = v108;
    }

    *(v104 + 32) = specialized Regex2BNF.Choice.init(_:)(inited);
    *(v104 + 40) = v36;
    if (*(v99[3] + 16))
    {
      v125 = v99[3];

      specialized __RawDictionaryStorage.find<A>(_:)(v102, v103);
      v127 = v126;

      if (v127)
      {
        goto LABEL_45;
      }
    }

    v119 = v142;
    v128 = v142[3];
    v129 = swift_isUniquelyReferenced_nonNull_native();
    v146 = v119[3];
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v104, v102, v103, v129);
LABEL_37:

    v119[3] = v146;
    result = swift_allocObject();
    *(result + 16) = v136;
    *(result + 32) = v102;
    *(result + 40) = v103;
    *(result + 48) = 0x80;
    return result;
  }

  (*(v21 + 96))(v27, v20);
  v53 = *(v137 + 32);
  v132 = v8;
  v53(v135, v27, v8);
  v54._countAndFlagsBits = 0x50555F544E415551;
  v54._object = 0xEC0000004E5F4F54;
  v55 = v142;
  v56 = Regex2BNF.SymbolGenerator.genSuffix(for:)(v54);
  v57 = v55[1];
  v146 = *v55;
  v147 = v57;

  MEMORY[0x1AC57C120](0x50555F544E415551, 0xEC0000004E5F4F54);

  MEMORY[0x1AC57C120](v56._countAndFlagsBits, v56._object);

  v58 = v146;
  v59 = v147;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore9Regex2BNFO6ChoiceVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore9Regex2BNFO6ChoiceVGMR);
  v60 = swift_allocObject();
  *(v60 + 16) = v136;
  *(v60 + 32) = v36;
  v34 = AST.Atom.Number.value.getter();
  if (v61)
  {
    goto LABEL_45;
  }

  v62 = v34;
  v131 = v59;
  v133 = v58;
  v134 = v35;
  v63 = v144;
  if (v34 < 1)
  {
    goto LABEL_38;
  }

  v64 = (v21 + 104);
  v65 = (v21 + 8);
  v66 = 1;
  v67 = v141;
  while (1)
  {
    static Source.Location.fake.getter();
    AST.Atom.Number.init(_:at:)();
    v68 = v138;
    (*v64)(v25, v140, v138);
    v69 = Regex2BNF.BNFConvert.createQuantify(_:_:_:)(v63, v143, v67, v25);
    LODWORD(v34) = (*v65)(v25, v68);
    v71 = *(v60 + 16);
    v70 = *(v60 + 24);
    if (v71 >= v70 >> 1)
    {
      v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v70 > 1), v71 + 1, 1, v60);
      v60 = v34;
    }

    *(v60 + 16) = v71 + 1;
    *(v60 + 8 * v71 + 32) = v69;
    if (v62 == v66)
    {
      break;
    }

    v72 = __OFADD__(v66++, 1);
    v63 = v144;
    v67 = v141;
    if (v72)
    {
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      if (v34 != *MEMORY[0x1E69E8A90] && v34 != *MEMORY[0x1E69E8A80])
      {
        _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
      }

      while (1)
      {
LABEL_45:
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }
    }
  }

  v146 = v60;
  specialized MutableCollection<>.reverse()();
  v88 = v146;
  v89 = v142;
  v90 = v133;
  v91 = v131;
  if (*(v142[3] + 16))
  {
    v92 = v142[3];

    specialized __RawDictionaryStorage.find<A>(_:)(v90, v91);
    v94 = v93;

    if (v94)
    {
      goto LABEL_45;
    }
  }

  v95 = v89[3];
  v96 = swift_isUniquelyReferenced_nonNull_native();
  v145 = v89[3];
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v88, v90, v91, v96);

  v89[3] = v145;
  v97 = swift_allocObject();
  *(v97 + 16) = v136;
  *(v97 + 32) = v90;
  *(v97 + 40) = v91;
  *(v97 + 48) = 0x80;
  (*(v137 + 8))(v135, v132);
  return v97;
}

Swift::Void __swiftcall Regex2BNF.BNFConvert.optimize()()
{
  v1 = MEMORY[0x1E69E7CC8];
LABEL_2:
  v2 = v0[3];
  v3 = v2 + 64;
  v4 = 1 << *(v2 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(v2 + 64);
  v7 = (v4 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v8 = 0;
  v111 = v2 + 64;
  v112 = v2;
  while (v6)
  {
LABEL_11:
    v10 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v11 = v10 | (v8 << 6);
    v12 = *(*(v2 + 56) + 8 * v11);
    if (*(v12 + 16) == 1)
    {
      v13 = *(v12 + 32);
      if (*(v13 + 16) == 1)
      {
        v14 = *(v13 + 32);
        v15 = *(v13 + 48);
        if ((v15 & 0xC0) != 0x40 || *(v14 + 16) <= 3uLL)
        {
          v16 = (*(v2 + 48) + 16 * v11);
          v17 = v1;
          v18 = *v16;
          v19 = v16[1];
          v20 = *(v13 + 40);

          outlined copy of Regex2BNF.Symbol(v14, v20, v15);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v122 = v18;
          v22 = specialized __RawDictionaryStorage.find<A>(_:)(v18, v19);
          v24 = v17[2];
          v25 = (v23 & 1) == 0;
          v26 = __OFADD__(v24, v25);
          v27 = v24 + v25;
          if (v26)
          {
            goto LABEL_91;
          }

          v28 = v23;
          if (v17[3] >= v27)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              v30 = v20;
              v31 = v17;
              if (v23)
              {
                goto LABEL_22;
              }
            }

            else
            {
              v30 = v20;
              v36 = v22;
              specialized _NativeDictionary.copy()();
              v22 = v36;
              v31 = v17;
              if (v28)
              {
                goto LABEL_22;
              }
            }
          }

          else
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v27, isUniquelyReferenced_nonNull_native);
            v22 = specialized __RawDictionaryStorage.find<A>(_:)(v122, v19);
            if ((v28 & 1) != (v29 & 1))
            {
              goto LABEL_94;
            }

            v30 = v20;
            v31 = v17;
            if (v28)
            {
LABEL_22:
              v32 = v31[7] + 24 * v22;
              v33 = *v32;
              v34 = *(v32 + 8);
              *v32 = v14;
              *(v32 + 8) = v30;
              v35 = *(v32 + 16);
              *(v32 + 16) = v15;
              outlined consume of Regex2BNF.Symbol(v33, v34, v35);

              v1 = v31;
              goto LABEL_26;
            }
          }

          v31[(v22 >> 6) + 8] |= 1 << v22;
          v37 = (v31[6] + 16 * v22);
          *v37 = v122;
          v37[1] = v19;
          v38 = v31[7] + 24 * v22;
          *v38 = v14;
          *(v38 + 8) = v30;
          *(v38 + 16) = v15;
          v39 = v31[2];
          v26 = __OFADD__(v39, 1);
          v40 = v39 + 1;
          if (v26)
          {
            goto LABEL_92;
          }

          v1 = v31;
          v31[2] = v40;
LABEL_26:
          v3 = v111;
          v2 = v112;
        }
      }
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
LABEL_85:
      __break(1u);
      return;
    }

    if (v9 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v9);
    ++v8;
    if (v6)
    {
      v8 = v9;
      goto LABEL_11;
    }
  }

  v41 = v112;
  v104 = 0;
  v42 = 0;
  v43 = 1 << *(v112 + 32);
  if (v43 < 64)
  {
    v44 = ~(-1 << v43);
  }

  else
  {
    v44 = -1;
  }

  v45 = v44 & *(v112 + 64);
  v46 = (v43 + 63) >> 6;
  v105 = v46;
  v106 = v112;
LABEL_31:
  v47 = v111;
LABEL_32:
  while (v45)
  {
LABEL_37:
    v49 = __clz(__rbit64(v45));
    v45 &= v45 - 1;
    v50 = v49 | (v42 << 6);
    v51 = *(*(v41 + 56) + 8 * v50);
    v52 = *(v51 + 16);
    if (v52)
    {
      v109 = v45;
      v110 = v42;
      v53 = (*(v41 + 48) + 16 * v50);
      v54 = v53[1];
      v103 = *v53;
      v117 = v51 + 32;
      swift_bridgeObjectRetain_n();
      v108 = v54;

      v55 = 0;
      v113 = 0;
      v56 = v51;
      v114 = v52;
      v115 = v51;
      while (v55 < *(v51 + 16))
      {
        v57 = v55 + 1;
        v58 = *(v117 + 8 * v55);
        v59 = *(v58 + 16);
        if (v59)
        {
          v116 = v55;
          v118 = v55 + 1;
          v119 = v56;
          swift_bridgeObjectRetain_n();
          v60 = 0;
          v61 = 0;
          v121 = v58;
          v123 = v58;
          while (2)
          {
            v120 = v60;
            v62 = 24 * v61 + 48;
            while (1)
            {
              if (v61 >= v59)
              {
                __break(1u);
LABEL_83:
                __break(1u);
LABEL_84:
                __break(1u);
                goto LABEL_85;
              }

              v63 = v61 + 1;
              if (__OFADD__(v61, 1))
              {
                goto LABEL_83;
              }

              if (v61 >= *(v58 + 16))
              {
                goto LABEL_84;
              }

              v64 = v58 + v62;
              v65 = *(v58 + v62);
              if ((v65 & 0xC0) == 0x80)
              {
                if (v1[2])
                {
                  v66 = v59;
                  v67 = v1;
                  v69 = *(v64 - 16);
                  v68 = *(v64 - 8);

                  v70 = specialized __RawDictionaryStorage.find<A>(_:)(v69, v68);
                  v72 = v71;
                  v73 = v68;
                  v1 = v67;
                  v59 = v66;
                  v58 = v123;
                  outlined consume of Regex2BNF.Symbol(v69, v73, v65);
                  if (v72)
                  {
                    break;
                  }
                }
              }

              ++v61;
              v62 += 24;
              if (v63 == v59)
              {

                v52 = v114;
                v51 = v115;
                v56 = v119;
                if ((v120 & 1) == 0)
                {

                  v57 = v118;
                  goto LABEL_40;
                }

                goto LABEL_59;
              }
            }

            v74 = v1[7] + 24 * v70;
            v76 = *v74;
            v75 = *(v74 + 8);
            v77 = *(v74 + 16);
            outlined copy of Regex2BNF.Symbol(*v74, v75, v77);
            v78 = v121;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v78 = specialized _ArrayBuffer._consumeAndCreateNew()(v121);
            }

            if (v61 >= *(v78 + 2))
            {
              goto LABEL_90;
            }

            v121 = v78;
            v79 = &v78[v62];
            v80 = *&v78[v62 - 16];
            v81 = *&v78[v62 - 8];
            *(v79 - 2) = v76;
            *(v79 - 1) = v75;
            v82 = v78[v62];
            *v79 = v77;
            outlined consume of Regex2BNF.Symbol(v80, v81, v82);
            v60 = 1;
            ++v61;
            if (v63 != v59)
            {
              continue;
            }

            break;
          }

          v52 = v114;
          v51 = v115;
          v56 = v119;
LABEL_59:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v56 = specialized _ArrayBuffer._consumeAndCreateNew()(v56);
          }

          if (v116 >= *(v56 + 2))
          {
            goto LABEL_89;
          }

          v83 = &v56[8 * v116];
          v84 = *(v83 + 4);
          *(v83 + 4) = v121;

          v57 = v118;
          if (v118 != v52)
          {
            v113 = 1;
            goto LABEL_41;
          }

LABEL_67:
          v85 = v107[3];
          v86 = swift_isUniquelyReferenced_nonNull_native();
          v124 = v107[3];
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v56, v103, v108, v86);

          v106 = v124;
          v107[3] = v124;
          v104 = 1;
          v41 = v112;
          v45 = v109;
          v42 = v110;
          v46 = v105;
          goto LABEL_31;
        }

LABEL_40:
        if (v57 == v52)
        {

          if ((v113 & 1) == 0)
          {

            v47 = v111;
            v41 = v112;
            v45 = v109;
            v42 = v110;
            v46 = v105;
            goto LABEL_32;
          }

          goto LABEL_67;
        }

LABEL_41:
        v55 = v57;
        if (v57 == v52)
        {
          goto LABEL_87;
        }
      }

      __break(1u);
LABEL_87:
      __break(1u);
      goto LABEL_88;
    }
  }

  while (1)
  {
    v48 = v42 + 1;
    if (__OFADD__(v42, 1))
    {
      break;
    }

    if (v48 >= v46)
    {

      v87 = v107[5];
      if (!v87)
      {
        goto LABEL_93;
      }

      v88 = v107[4];
      v89 = *(v106 + 16);
      v90 = v107[5];

      if (!v89)
      {
        goto LABEL_93;
      }

      v91 = specialized __RawDictionaryStorage.find<A>(_:)(v88, v87);
      if ((v92 & 1) == 0)
      {
        goto LABEL_93;
      }

      v93 = *(*(v106 + 56) + 8 * v91);
      if (*(v93 + 16) == 1)
      {
        v94 = *(v93 + 32);
        if (*(v94 + 16) == 1)
        {
          v95 = *(v94 + 48);
          if ((v95 & 0xC0) == 0x80)
          {
            if (*(v106 + 16))
            {
              v96 = *(v94 + 32);
              v97 = *(v94 + 40);

              v98 = specialized __RawDictionaryStorage.find<A>(_:)(v96, v97);
              v100 = v99;
              outlined consume of Regex2BNF.Symbol(v96, v97, v95);
              if (v100)
              {
                v101 = *(*(v106 + 56) + 8 * v98);
              }

              else
              {
                v102 = 0;
              }
            }

            else
            {
              v102 = 0;
            }

            specialized Dictionary.subscript.setter(v102, v88, v87);

            v0 = v107;
            v1 = MEMORY[0x1E69E7CC8];
            goto LABEL_2;
          }
        }
      }

      v0 = v107;
      v1 = MEMORY[0x1E69E7CC8];
      if (v104)
      {
        goto LABEL_2;
      }

      return;
    }

    v45 = *(v47 + 8 * v48);
    ++v42;
    if (v45)
    {
      v42 = v48;
      goto LABEL_37;
    }
  }

LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
LABEL_94:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}