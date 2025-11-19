uint64_t specialized closure #1 in closure #1 in Trace_Handle.write<A>(attachment:)(char *a1, uint64_t a2, unint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *&v97 = a7;
  *(&v97 + 1) = a8;
  *(&v96 + 1) = a6;
  *&v96 = a5;
  v13 = type metadata accessor for String.Encoding();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v99 = &v93 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = &unk_280495000;
  v101 = a4;
  *&v102 = a2;
  if (!attachmentAssertion.value._rawValue)
  {
    v27 = 0;
    goto LABEL_14;
  }

  v100 = a3;
  v8 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSW_Tt0g5(a1, a2);
  v18 = v17;
  LODWORD(a4) = *(a4[3] + 49);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  rawValue = attachmentAssertion.value._rawValue;
  *&v103 = attachmentAssertion.value._rawValue;
  attachmentAssertion.value._rawValue = 0x8000000000000000;
  a3 = specialized __RawDictionaryStorage.find<A>(_:)(v8, v18);
  v22 = *(rawValue + 16);
  v23 = (v21 & 1) == 0;
  v24 = v22 + v23;
  if (__OFADD__(v22, v23))
  {
LABEL_116:
    __break(1u);
    goto LABEL_117;
  }

  LOBYTE(a2) = v21;
  if (*(rawValue + 24) < v24)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v24, isUniquelyReferenced_nonNull_native);
    rawValue = v103;
    v25 = specialized __RawDictionaryStorage.find<A>(_:)(v8, v18);
    if ((a2 & 1) == (v26 & 1))
    {
      a3 = v25;
      goto LABEL_8;
    }

    goto LABEL_129;
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_121;
  }

  while (1)
  {
LABEL_8:
    v28 = *(v16 + 1248);
    *(v16 + 1248) = rawValue;

    v29 = *(v16 + 1248);
    if ((a2 & 1) == 0)
    {
      specialized _NativeDictionary._insert(at:key:value:)(a3, v8, v18, MEMORY[0x277D84F90], *(v16 + 1248));
      outlined copy of Data._Representation(v8, v18);
    }

    isUniquelyReferenced_nonNull_native = *(v29 + 56);
    rawValue = *(isUniquelyReferenced_nonNull_native + 8 * a3);
    v30 = swift_isUniquelyReferenced_nonNull_native();
    *(isUniquelyReferenced_nonNull_native + 8 * a3) = rawValue;
    if ((v30 & 1) == 0)
    {
LABEL_117:
      rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(rawValue + 16) + 1, 1, rawValue);
      *(isUniquelyReferenced_nonNull_native + 8 * a3) = rawValue;
    }

    v16 = *(rawValue + 16);
    v31 = *(rawValue + 24);
    if (v16 >= v31 >> 1)
    {
      rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v16 + 1, 1, rawValue);
      *(isUniquelyReferenced_nonNull_native + 8 * a3) = rawValue;
    }

    *(rawValue + 16) = v16 + 1;
    v32 = rawValue + 8 * v16;
    a3 = v100;
    *(v32 + 32) = v100;
    *(v32 + 36) = a4 ^ 1;
    outlined consume of Data._Representation(v8, v18);
    v27 = specialized thunk for @callee_guaranteed () -> (@owned [EventRef]);
    a4 = v101;
    a2 = v102;
LABEL_14:
    v33 = *(a4[3] + 49);
    v108 = a2 - a1;
    if (a1)
    {
      v18 = a2 - a1;
    }

    else
    {
      v18 = 0;
    }

    if (v33)
    {
      if ((v18 & 0x8000000000000000) == 0)
      {
        if (v18 < 0xFFFFFFFF)
        {
          v34 = 2;
        }

        else
        {
          v34 = 3;
        }

        if (v18 >= 0xFFFFFFFF)
        {
          v35 = 28677;
        }

        else
        {
          v35 = 24581;
        }

        if (v18 >= 0xFFFF)
        {
          v36 = v34;
        }

        else
        {
          v36 = 1;
        }

        if (v18 >= 0xFFFF)
        {
          v37 = v35;
        }

        else
        {
          v37 = 20485;
        }

        if (v18 >= 0xFF)
        {
          v38 = v36;
        }

        else
        {
          v38 = 0;
        }

        if (v18 >= 0xFF)
        {
          v39 = v37;
        }

        else
        {
          v39 = 16389;
        }

        v98 = v39;
        if (readingDebug)
        {
          if (one-time initialization token for readingDebugLog != -1)
          {
            swift_once();
          }

          v40 = readingDebugLog;
          v41 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v40, v41))
          {
            v42 = swift_slowAlloc();
            v95 = v27;
            v43 = v42;
            v44 = swift_slowAlloc();
            v94 = v40;
            v45 = v44;
            *&v103 = v44;
            *v43 = 136315138;
            v46 = T_TracepointID.describe(state:)(v44, v98);
            v100 = a3;
            v48 = v38;
            v49 = a4;
            v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v47, &v103);
            a3 = v100;

            *(v43 + 4) = v50;
            a4 = v49;
            v38 = v48;
            _os_log_impl(&dword_26C161000, v94, v41, "id: %s", v43, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v45);
            MEMORY[0x26D69EAB0](v45, -1, -1);
            v51 = v43;
            v27 = v95;
            MEMORY[0x26D69EAB0](v51, -1, -1);
          }
        }

        rawValue = a4[4];
        if (!*(rawValue + 56))
        {
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        a2 = v102;
        if (*(rawValue + 52) == 2)
        {
          goto LABEL_54;
        }

        v52 = *(rawValue + 32);
        LODWORD(v53) = *(rawValue + 48);
        v54 = v53 | (*(rawValue + 52) << 32);
        if (v52)
        {
          v55 = *(rawValue + 40) - v52;
          v56 = v55 < v53;
          v57 = v55 - v53;
          if (!v56)
          {
            if (v57 >= 17)
            {
              v58 = 4;
              goto LABEL_55;
            }

            goto LABEL_53;
          }

          __break(1u);
        }

        else if (!*(rawValue + 48))
        {
LABEL_53:
          CircularBuffer.Transaction.commit()();
LABEL_54:
          v58 = CircularBuffer.Transaction.begin()() + 4;
          v53 = *(rawValue + 48);
          v54 = v53 | (*(rawValue + 52) << 32);
LABEL_55:
          if (BYTE4(v54) != 2)
          {
            *(*(rawValue + 32) + v53) = v98;
            *(rawValue + 48) = v53 + 4;
            a4[15] += CircularBuffer.Transaction.write(size:)(v18, v38) + v58;
            if (!a1)
            {
              goto LABEL_69;
            }

            goto LABEL_57;
          }

          goto LABEL_127;
        }

        __break(1u);
LABEL_124:
        swift_once();
LABEL_104:
        v85 = readingDebugLog;
        v86 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v85, v86))
        {
          v87 = swift_slowAlloc();
          v88 = swift_slowAlloc();
          v107[0] = v88;
          *v87 = 136315138;
          v103 = v96;
          v104 = v97;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport16BufferAttachmentVySo11T_TypeFieldaGMd, &_s21SwiftUITracingSupport16BufferAttachmentVySo11T_TypeFieldaGMR);
          v89 = String.init<A>(describing:)();
          v91 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v89, v90, v107);

          *(v87 + 4) = v91;
          _os_log_impl(&dword_26C161000, v85, v86, "w a Spread %s!", v87, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v88);
          MEMORY[0x26D69EAB0](v88, -1, -1);
          MEMORY[0x26D69EAB0](v87, -1, -1);
        }

LABEL_106:
        v71 = a4;
        return outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(v71);
      }

      __break(1u);
LABEL_119:
      __break(1u);
      goto LABEL_120;
    }

    if ((v18 & 0x8000000000000000) != 0)
    {
      goto LABEL_119;
    }

    if (!HIDWORD(v18))
    {
      break;
    }

LABEL_120:
    __break(1u);
LABEL_121:
    specialized _NativeDictionary.copy()();
    rawValue = v103;
  }

  rawValue = a4;
  specialized Trace_Handle.write<A>(_:omit:)(a3 | (v18 << 32));
  if (!a1)
  {
LABEL_69:
    v71 = v27;
    return outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(v71);
  }

LABEL_57:
  if (v108 <= 0)
  {
    goto LABEL_69;
  }

  v95 = v27;
  if (readingDebug)
  {
    *&v103 = specialized Collection.prefix(_:)(40, a1, a2);
    *(&v103 + 1) = v59;
    *&v104 = v60;
    *(&v104 + 1) = v61;
    static String.Encoding.utf8.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SliceVySWGMd, &_ss5SliceVySWGMR);
    lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type Slice<UnsafeRawBufferPointer> and conformance Slice<A>, &_ss5SliceVySWGMd, &_ss5SliceVySWGMR);
    v62 = String.init<A>(bytes:encoding:)();
    if (v63)
    {
      rawValue = v62;
    }

    else
    {
      rawValue = 0;
    }

    if (v63)
    {
      v64 = v63;
    }

    else
    {
      v64 = 0xE000000000000000;
    }

    v65 = a4[7];
    if (one-time initialization token for readingDebugLog != -1)
    {
      swift_once();
    }

    v66 = readingDebugLog;
    v67 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      *&v103 = v69;
      *v68 = 134219010;
      *(v68 + 4) = v65;
      *(v68 + 12) = 1024;
      *(v68 + 14) = a3;
      *(v68 + 18) = 2080;
      *(v68 + 20) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x800000026C33E310, &v103);
      *(v68 + 28) = 2048;
      *(v68 + 30) = v108;
      *(v68 + 38) = 2080;
      rawValue = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(rawValue, v64, &v103);

      *(v68 + 40) = rawValue;
      _os_log_impl(&dword_26C161000, v66, v67, "w a %ld: (%u)  %s %ld bytes %s", v68, 0x30u);
      swift_arrayDestroy();
      MEMORY[0x26D69EAB0](v69, -1, -1);
      v70 = v68;
      a4 = v101;
      MEMORY[0x26D69EAB0](v70, -1, -1);
    }

    else
    {
    }
  }

  v72 = a4[4];
  if (*(v72 + 56))
  {
    v18 = 0;
    v102 = xmmword_26C328DC0;
    LODWORD(a4) = 2;
    isUniquelyReferenced_nonNull_native = v108;
    do
    {
      if (*(v72 + 52) == 2)
      {
        rawValue = v72;
        v8 = CircularBuffer.Transaction.begin()();
        v74 = *(v72 + 48) | (*(v72 + 52) << 32);
        v75 = *(v72 + 48);
      }

      else
      {
        v8 = 0;
        v75 = *(v72 + 48);
        v74 = v75 | (*(v72 + 52) << 32);
      }

      if (BYTE4(v74) == 2)
      {
        __break(1u);
        goto LABEL_126;
      }

      v76 = *(v72 + 32);
      if (v76)
      {
        v77 = *(v72 + 40) - v76;
        rawValue = v77 - v75;
        if (v77 < v75)
        {
          goto LABEL_114;
        }

        if (isUniquelyReferenced_nonNull_native >= rawValue)
        {
          a3 = v77 - v75;
        }

        else
        {
          a3 = isUniquelyReferenced_nonNull_native;
        }

        if ((rawValue & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
          goto LABEL_116;
        }

        v78 = &a1[a3];
        if (a1)
        {
          memmove((v76 + v75), a1, a3);
        }

        if (HIDWORD(a3))
        {
          goto LABEL_110;
        }

        v79 = *(v72 + 48);
        v80 = __CFADD__(v79, a3);
        v81 = v79 + a3;
        if (v80)
        {
          goto LABEL_111;
        }
      }

      else
      {
        if (v75)
        {
          goto LABEL_115;
        }

        rawValue = 0;
        a3 = 0;
        v78 = a1;
        v81 = 0;
      }

      *(v72 + 48) = v81;
      v82 = v8 + a3;
      if (__OFADD__(v8, a3))
      {
        goto LABEL_112;
      }

      v83 = __OFADD__(v18, v82);
      v18 += v82;
      if (v83)
      {
        goto LABEL_113;
      }

      if (rawValue < isUniquelyReferenced_nonNull_native)
      {
        if ((*(v72 + 4) & 1) == 0 && ((*(v72 + 48) | (*(v72 + 52) << 32)) & 0xFF00000000) != 0x200000000)
        {
          *(v72 + 52);
          *(*(v72 + 32) + 4) = *(v72 + 48);
        }

        if (readingDebug)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
          v84 = swift_allocObject();
          *(v84 + 16) = v102;
          *(v84 + 56) = MEMORY[0x277D837D0];
          *(v84 + 32) = 0x54494D4D4F432077;
          *(v84 + 40) = 0xEA00000000002021;
          print(_:separator:terminator:)();
        }

        v73 = *(v72 + 8);
        v103 = *v72;
        v104 = *(v72 + 16);
        v105 = *(v72 + 32);
        v106 = *(v72 + 48);
        *v107 = v73;
        rawValue = v107;
        CircularBuffer.commit(_:)(&v103);
        *(v72 + 24) = 0;
        *(v72 + 32) = 0;
        *(v72 + 40) = 0;
        *(v72 + 52) = 2;
        *(v72 + 48) = 0;
      }

      isUniquelyReferenced_nonNull_native = &a1[isUniquelyReferenced_nonNull_native] - v78;
      a1 = v78;
    }

    while (isUniquelyReferenced_nonNull_native > 0);
    v101[15] += v18;
    if (!readingDebug)
    {
      v71 = v95;
      return outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(v71);
    }

    a4 = v95;
    if (v108 >= v18)
    {
      goto LABEL_106;
    }

    if (one-time initialization token for readingDebugLog == -1)
    {
      goto LABEL_104;
    }

    goto LABEL_124;
  }

LABEL_128:
  __break(1u);
LABEL_129:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  *&v98 = a7;
  *(&v98 + 1) = a8;
  *(&v97 + 1) = a6;
  *&v97 = a5;
  v13 = type metadata accessor for String.Encoding();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v100 = &v94 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = &unk_280495000;
  v102 = a4;
  *&v103 = a2;
  if (!attachmentAssertion.value._rawValue)
  {
    v27 = 0;
    goto LABEL_17;
  }

  v101 = a3;
  v8 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSW_Tt0g5(a1, a2);
  v18 = v17;
  LODWORD(a4) = *(a4[3] + 49);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  rawValue = attachmentAssertion.value._rawValue;
  *&v104 = attachmentAssertion.value._rawValue;
  attachmentAssertion.value._rawValue = 0x8000000000000000;
  a3 = specialized __RawDictionaryStorage.find<A>(_:)(v8, v18);
  v22 = *(rawValue + 16);
  v23 = (v21 & 1) == 0;
  v24 = v22 + v23;
  if (__OFADD__(v22, v23))
  {
LABEL_119:
    __break(1u);
    goto LABEL_120;
  }

  LOBYTE(a2) = v21;
  if (*(rawValue + 24) < v24)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v24, isUniquelyReferenced_nonNull_native);
    rawValue = v104;
    v25 = specialized __RawDictionaryStorage.find<A>(_:)(v8, v18);
    if ((a2 & 1) == (v26 & 1))
    {
      a3 = v25;
      goto LABEL_8;
    }

    goto LABEL_132;
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_124;
  }

  while (1)
  {
LABEL_8:
    v28 = *(v16 + 1248);
    *(v16 + 1248) = rawValue;

    v29 = *(v16 + 1248);
    if ((a2 & 1) == 0)
    {
      specialized _NativeDictionary._insert(at:key:value:)(a3, v8, v18, MEMORY[0x277D84F90], *(v16 + 1248));
      outlined copy of Data._Representation(v8, v18);
    }

    isUniquelyReferenced_nonNull_native = *(v29 + 56);
    rawValue = *(isUniquelyReferenced_nonNull_native + 8 * a3);
    v30 = swift_isUniquelyReferenced_nonNull_native();
    *(isUniquelyReferenced_nonNull_native + 8 * a3) = rawValue;
    if ((v30 & 1) == 0)
    {
LABEL_120:
      rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(rawValue + 16) + 1, 1, rawValue);
      *(isUniquelyReferenced_nonNull_native + 8 * a3) = rawValue;
    }

    v16 = *(rawValue + 16);
    v31 = *(rawValue + 24);
    if (v16 >= v31 >> 1)
    {
      rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v16 + 1, 1, rawValue);
      *(isUniquelyReferenced_nonNull_native + 8 * a3) = rawValue;
    }

    if (a4)
    {
      v32 = 2;
    }

    else
    {
      v32 = 1;
    }

    *(rawValue + 16) = v16 + 1;
    v33 = rawValue + 8 * v16;
    a3 = v101;
    *(v33 + 32) = v101;
    *(v33 + 36) = v32;
    outlined consume of Data._Representation(v8, v18);
    v27 = specialized thunk for @callee_guaranteed () -> (@owned [EventRef]);
    a4 = v102;
    a2 = v103;
LABEL_17:
    v34 = *(a4[3] + 49);
    v109 = a2 - a1;
    if (a1)
    {
      v18 = a2 - a1;
    }

    else
    {
      v18 = 0;
    }

    if (v34)
    {
      if ((v18 & 0x8000000000000000) == 0)
      {
        if (v18 < 0xFFFFFFFF)
        {
          v35 = 2;
        }

        else
        {
          v35 = 3;
        }

        if (v18 >= 0xFFFFFFFF)
        {
          v36 = 28673;
        }

        else
        {
          v36 = 24577;
        }

        if (v18 >= 0xFFFF)
        {
          v37 = v35;
        }

        else
        {
          v37 = 1;
        }

        if (v18 >= 0xFFFF)
        {
          v38 = v36;
        }

        else
        {
          v38 = 20481;
        }

        if (v18 >= 0xFF)
        {
          v39 = v37;
        }

        else
        {
          v39 = 0;
        }

        if (v18 >= 0xFF)
        {
          v40 = v38;
        }

        else
        {
          v40 = 16385;
        }

        v99 = v40;
        if (readingDebug)
        {
          if (one-time initialization token for readingDebugLog != -1)
          {
            swift_once();
          }

          v41 = readingDebugLog;
          v42 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v41, v42))
          {
            v43 = swift_slowAlloc();
            v96 = v27;
            v44 = v43;
            v45 = swift_slowAlloc();
            v95 = v41;
            v46 = v45;
            *&v104 = v45;
            *v44 = 136315138;
            v47 = T_TracepointID.describe(state:)(v45, v99);
            v101 = a3;
            v49 = v39;
            v50 = a4;
            v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v48, &v104);
            a3 = v101;

            *(v44 + 4) = v51;
            a4 = v50;
            v39 = v49;
            _os_log_impl(&dword_26C161000, v95, v42, "id: %s", v44, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v46);
            MEMORY[0x26D69EAB0](v46, -1, -1);
            v52 = v44;
            v27 = v96;
            MEMORY[0x26D69EAB0](v52, -1, -1);
          }
        }

        rawValue = a4[4];
        if (!*(rawValue + 56))
        {
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
          goto LABEL_131;
        }

        a2 = v103;
        if (*(rawValue + 52) == 2)
        {
          goto LABEL_57;
        }

        v53 = *(rawValue + 32);
        LODWORD(v54) = *(rawValue + 48);
        v55 = v54 | (*(rawValue + 52) << 32);
        if (v53)
        {
          v56 = *(rawValue + 40) - v53;
          v57 = v56 < v54;
          v58 = v56 - v54;
          if (!v57)
          {
            if (v58 >= 17)
            {
              v59 = 4;
              goto LABEL_58;
            }

            goto LABEL_56;
          }

          __break(1u);
        }

        else if (!*(rawValue + 48))
        {
LABEL_56:
          CircularBuffer.Transaction.commit()();
LABEL_57:
          v59 = CircularBuffer.Transaction.begin()() + 4;
          v54 = *(rawValue + 48);
          v55 = v54 | (*(rawValue + 52) << 32);
LABEL_58:
          if (BYTE4(v55) != 2)
          {
            *(*(rawValue + 32) + v54) = v99;
            *(rawValue + 48) = v54 + 4;
            a4[15] += CircularBuffer.Transaction.write(size:)(v18, v39) + v59;
            if (!a1)
            {
              goto LABEL_72;
            }

            goto LABEL_60;
          }

          goto LABEL_130;
        }

        __break(1u);
LABEL_127:
        swift_once();
LABEL_107:
        v86 = readingDebugLog;
        v87 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v86, v87))
        {
          v88 = swift_slowAlloc();
          v89 = swift_slowAlloc();
          v108[0] = v89;
          *v88 = 136315138;
          v104 = v97;
          v105 = v98;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport16BufferAttachmentVyAA7AddressVGMd, &_s21SwiftUITracingSupport16BufferAttachmentVyAA7AddressVGMR);
          v90 = String.init<A>(describing:)();
          v92 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v90, v91, v108);

          *(v88 + 4) = v92;
          _os_log_impl(&dword_26C161000, v86, v87, "w a Spread %s!", v88, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v89);
          MEMORY[0x26D69EAB0](v89, -1, -1);
          MEMORY[0x26D69EAB0](v88, -1, -1);
        }

LABEL_109:
        v72 = a4;
        return outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(v72);
      }

      __break(1u);
LABEL_122:
      __break(1u);
      goto LABEL_123;
    }

    if ((v18 & 0x8000000000000000) != 0)
    {
      goto LABEL_122;
    }

    if (!HIDWORD(v18))
    {
      break;
    }

LABEL_123:
    __break(1u);
LABEL_124:
    specialized _NativeDictionary.copy()();
    rawValue = v104;
  }

  rawValue = a4;
  specialized Trace_Handle.write<A>(_:omit:)(a3 | (v18 << 32));
  if (!a1)
  {
LABEL_72:
    v72 = v27;
    return outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(v72);
  }

LABEL_60:
  if (v109 <= 0)
  {
    goto LABEL_72;
  }

  v96 = v27;
  if (readingDebug)
  {
    *&v104 = specialized Collection.prefix(_:)(40, a1, a2);
    *(&v104 + 1) = v60;
    *&v105 = v61;
    *(&v105 + 1) = v62;
    static String.Encoding.utf8.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SliceVySWGMd, &_ss5SliceVySWGMR);
    lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type Slice<UnsafeRawBufferPointer> and conformance Slice<A>, &_ss5SliceVySWGMd, &_ss5SliceVySWGMR);
    v63 = String.init<A>(bytes:encoding:)();
    if (v64)
    {
      rawValue = v63;
    }

    else
    {
      rawValue = 0;
    }

    if (v64)
    {
      v65 = v64;
    }

    else
    {
      v65 = 0xE000000000000000;
    }

    v66 = a4[7];
    if (one-time initialization token for readingDebugLog != -1)
    {
      swift_once();
    }

    v67 = readingDebugLog;
    v68 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      *&v104 = v70;
      *v69 = 134219010;
      *(v69 + 4) = v66;
      *(v69 + 12) = 1024;
      *(v69 + 14) = a3;
      *(v69 + 18) = 2080;
      *(v69 + 20) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000019, 0x800000026C33E070, &v104);
      *(v69 + 28) = 2048;
      *(v69 + 30) = v109;
      *(v69 + 38) = 2080;
      rawValue = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(rawValue, v65, &v104);

      *(v69 + 40) = rawValue;
      _os_log_impl(&dword_26C161000, v67, v68, "w a %ld: (%u)  %s %ld bytes %s", v69, 0x30u);
      swift_arrayDestroy();
      MEMORY[0x26D69EAB0](v70, -1, -1);
      v71 = v69;
      a4 = v102;
      MEMORY[0x26D69EAB0](v71, -1, -1);
    }

    else
    {
    }
  }

  v73 = a4[4];
  if (*(v73 + 56))
  {
    v18 = 0;
    v103 = xmmword_26C328DC0;
    LODWORD(a4) = 2;
    isUniquelyReferenced_nonNull_native = v109;
    do
    {
      if (*(v73 + 52) == 2)
      {
        rawValue = v73;
        v8 = CircularBuffer.Transaction.begin()();
        v75 = *(v73 + 48) | (*(v73 + 52) << 32);
        v76 = *(v73 + 48);
      }

      else
      {
        v8 = 0;
        v76 = *(v73 + 48);
        v75 = v76 | (*(v73 + 52) << 32);
      }

      if (BYTE4(v75) == 2)
      {
        __break(1u);
        goto LABEL_129;
      }

      v77 = *(v73 + 32);
      if (v77)
      {
        v78 = *(v73 + 40) - v77;
        rawValue = v78 - v76;
        if (v78 < v76)
        {
          goto LABEL_117;
        }

        if (isUniquelyReferenced_nonNull_native >= rawValue)
        {
          a3 = v78 - v76;
        }

        else
        {
          a3 = isUniquelyReferenced_nonNull_native;
        }

        if ((rawValue & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
          goto LABEL_119;
        }

        v79 = &a1[a3];
        if (a1)
        {
          memmove((v77 + v76), a1, a3);
        }

        if (HIDWORD(a3))
        {
          goto LABEL_113;
        }

        v80 = *(v73 + 48);
        v81 = __CFADD__(v80, a3);
        v82 = v80 + a3;
        if (v81)
        {
          goto LABEL_114;
        }
      }

      else
      {
        if (v76)
        {
          goto LABEL_118;
        }

        rawValue = 0;
        a3 = 0;
        v79 = a1;
        v82 = 0;
      }

      *(v73 + 48) = v82;
      v83 = v8 + a3;
      if (__OFADD__(v8, a3))
      {
        goto LABEL_115;
      }

      v84 = __OFADD__(v18, v83);
      v18 += v83;
      if (v84)
      {
        goto LABEL_116;
      }

      if (rawValue < isUniquelyReferenced_nonNull_native)
      {
        if ((*(v73 + 4) & 1) == 0 && ((*(v73 + 48) | (*(v73 + 52) << 32)) & 0xFF00000000) != 0x200000000)
        {
          *(v73 + 52);
          *(*(v73 + 32) + 4) = *(v73 + 48);
        }

        if (readingDebug)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
          v85 = swift_allocObject();
          *(v85 + 16) = v103;
          *(v85 + 56) = MEMORY[0x277D837D0];
          *(v85 + 32) = 0x54494D4D4F432077;
          *(v85 + 40) = 0xEA00000000002021;
          print(_:separator:terminator:)();
        }

        v74 = *(v73 + 8);
        v104 = *v73;
        v105 = *(v73 + 16);
        v106 = *(v73 + 32);
        v107 = *(v73 + 48);
        *v108 = v74;
        rawValue = v108;
        CircularBuffer.commit(_:)(&v104);
        *(v73 + 24) = 0;
        *(v73 + 32) = 0;
        *(v73 + 40) = 0;
        *(v73 + 52) = 2;
        *(v73 + 48) = 0;
      }

      isUniquelyReferenced_nonNull_native = &a1[isUniquelyReferenced_nonNull_native] - v79;
      a1 = v79;
    }

    while (isUniquelyReferenced_nonNull_native > 0);
    v102[15] += v18;
    if (!readingDebug)
    {
      v72 = v96;
      return outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(v72);
    }

    a4 = v96;
    if (v109 >= v18)
    {
      goto LABEL_109;
    }

    if (one-time initialization token for readingDebugLog == -1)
    {
      goto LABEL_107;
    }

    goto LABEL_127;
  }

LABEL_131:
  __break(1u);
LABEL_132:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t specialized closure #1 in closure #1 in Trace_Handle.write<A>(attachment:)(char *a1, unint64_t a2, unsigned int a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = v9;
  v92 = a7;
  v93 = a8;
  v90 = a5;
  v91 = a6;
  v98 = a3;
  v14 = type metadata accessor for String.Encoding();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v94 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = &unk_280495000;
  if (!attachmentAssertion.value._rawValue)
  {
    v17 = 0;
    goto LABEL_14;
  }

  v96 = a2;
  v97 = v9;
  v8 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSW_Tt0g5(a1, a2);
  a2 = v18;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  rawValue = attachmentAssertion.value._rawValue;
  v99 = attachmentAssertion.value._rawValue;
  attachmentAssertion.value._rawValue = 0x8000000000000000;
  v22 = specialized __RawDictionaryStorage.find<A>(_:)(v8, a2);
  v23 = *(rawValue + 2);
  v24 = (v21 & 1) == 0;
  v25 = v23 + v24;
  if (__OFADD__(v23, v24))
  {
    __break(1u);
    goto LABEL_78;
  }

  LOBYTE(v26) = v21;
  if (*(rawValue + 3) < v25)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v25, isUniquelyReferenced_nonNull_native);
    rawValue = v99;
    v27 = specialized __RawDictionaryStorage.find<A>(_:)(v8, a2);
    if ((v26 & 1) == (v28 & 1))
    {
      v22 = v27;
      goto LABEL_8;
    }

    goto LABEL_89;
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_82;
  }

  while (1)
  {
LABEL_8:
    v29 = *(v17 + 156);
    *(v17 + 156) = rawValue;

    v30 = *(v17 + 156);
    if ((v26 & 1) == 0)
    {
      specialized _NativeDictionary._insert(at:key:value:)(v22, v8, a2, MEMORY[0x277D84F90], *(v17 + 156));
      outlined copy of Data._Representation(v8, a2);
    }

    isUniquelyReferenced_nonNull_native = *(v30 + 56);
    rawValue = *(isUniquelyReferenced_nonNull_native + 8 * v22);
    v31 = swift_isUniquelyReferenced_nonNull_native();
    *(isUniquelyReferenced_nonNull_native + 8 * v22) = rawValue;
    if ((v31 & 1) == 0)
    {
LABEL_78:
      rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(rawValue + 2) + 1, 1, rawValue);
      *(isUniquelyReferenced_nonNull_native + 8 * v22) = rawValue;
    }

    v33 = *(rawValue + 2);
    v32 = *(rawValue + 3);
    if (v33 >= v32 >> 1)
    {
      rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1, rawValue);
      *(isUniquelyReferenced_nonNull_native + 8 * v22) = rawValue;
    }

    v10 = v97;
    *(rawValue + 2) = v33 + 1;
    v34 = &rawValue[8 * v33];
    *(v34 + 8) = v98;
    *(v34 + 9) = 1;
    outlined consume of Data._Representation(v8, a2);
    v17 = specialized thunk for @callee_guaranteed () -> (@owned [EventRef]);
    a2 = v96;
LABEL_14:
    v26 = a2 - a1;
    if (a1)
    {
      v22 = a2 - a1;
    }

    else
    {
      v22 = 0;
    }

    if (*(a4[3] + 49))
    {
      if ((v22 & 0x8000000000000000) == 0)
      {
        v95 = a2 - a1;
        if (v22 < 0xFFFFFFFF)
        {
          v35 = 2;
        }

        else
        {
          v35 = 3;
        }

        if (v22 >= 0xFFFFFFFF)
        {
          v36 = 28673;
        }

        else
        {
          v36 = 24577;
        }

        if (v22 >= 0xFFFF)
        {
          v37 = v35;
        }

        else
        {
          v37 = 1;
        }

        if (v22 >= 0xFFFF)
        {
          v38 = v36;
        }

        else
        {
          v38 = 20481;
        }

        if (v22 < 0xFF)
        {
          v37 = 0;
        }

        v89 = v37;
        if (v22 >= 0xFF)
        {
          v39 = v38;
        }

        else
        {
          v39 = 16385;
        }

        LODWORD(v96) = v39;
        if (readingDebug)
        {
          if (one-time initialization token for readingDebugLog != -1)
          {
            swift_once();
          }

          v40 = readingDebugLog;
          v41 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v40, v41))
          {
            v42 = swift_slowAlloc();
            v97 = v10;
            v43 = v42;
            v44 = swift_slowAlloc();
            v88 = v17;
            v45 = v44;
            v99 = v44;
            *v43 = 136315138;
            v46 = T_TracepointID.describe(state:)(v44, v96);
            v87 = v40;
            v48 = a2;
            v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v47, &v99);

            *(v43 + 4) = v49;
            a2 = v48;
            _os_log_impl(&dword_26C161000, v87, v41, "id: %s", v43, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v45);
            v50 = v45;
            v17 = v88;
            MEMORY[0x26D69EAB0](v50, -1, -1);
            v51 = v43;
            v10 = v97;
            MEMORY[0x26D69EAB0](v51, -1, -1);
          }
        }

        v52 = a4[4];
        if (*(v52 + 56))
        {
          v26 = v95;
          if (*(v52 + 52) == 2)
          {
LABEL_53:
            v59 = CircularBuffer.Transaction.begin()() + 4;
            v54 = *(v52 + 48);
            v55 = v54 | (*(v52 + 52) << 32);
LABEL_54:
            if (BYTE4(v55) != 2)
            {
              *(*(v52 + 32) + v54) = v96;
              *(v52 + 48) = v54 + 4;
              a4[15] += CircularBuffer.Transaction.write(size:)(v22, v89) + v59;
              if (a1)
              {
                goto LABEL_56;
              }

              return outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(v17);
            }

LABEL_87:
            __break(1u);
            goto LABEL_88;
          }

          v53 = *(v52 + 32);
          LODWORD(v54) = *(v52 + 48);
          v55 = v54 | (*(v52 + 52) << 32);
          if (v53)
          {
            v56 = *(v52 + 40) - v53;
            v57 = v56 < v54;
            v58 = v56 - v54;
            if (v57)
            {
              __break(1u);
LABEL_84:
              swift_once();
LABEL_74:
              v79 = readingDebugLog;
              v80 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v79, v80))
              {
                v81 = swift_slowAlloc();
                v82 = swift_slowAlloc();
                v103 = v82;
                *v81 = 136315138;
                v99 = v90;
                v100 = v91;
                v101 = v92;
                v102 = v93;
                __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport16BufferAttachmentVyAA7AddressVGMd, &_s21SwiftUITracingSupport16BufferAttachmentVyAA7AddressVGMR);
                v83 = String.init<A>(describing:)();
                v85 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v83, v84, &v103);

                *(v81 + 4) = v85;
                _os_log_impl(&dword_26C161000, v79, v80, "w a Spread %s!", v81, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v82);
                MEMORY[0x26D69EAB0](v82, -1, -1);
                MEMORY[0x26D69EAB0](v81, -1, -1);
              }

              return outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(v17);
            }

            if (v58 >= 17)
            {
              v59 = 4;
              goto LABEL_54;
            }

            goto LABEL_52;
          }

          if (!*(v52 + 48))
          {
LABEL_52:
            CircularBuffer.Transaction.commit()();
            goto LABEL_53;
          }

          __break(1u);
        }

        __break(1u);
        goto LABEL_87;
      }

      __break(1u);
LABEL_80:
      __break(1u);
      goto LABEL_81;
    }

    if ((v22 & 0x8000000000000000) != 0)
    {
      goto LABEL_80;
    }

    if (!HIDWORD(v22))
    {
      break;
    }

LABEL_81:
    __break(1u);
LABEL_82:
    specialized _NativeDictionary.copy()();
    rawValue = v99;
  }

  specialized Trace_Handle.write<A>(_:omit:)(v98 | (v22 << 32));
  if (!a1)
  {
    return outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(v17);
  }

LABEL_56:
  if (v26 <= 0)
  {
    return outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(v17);
  }

  v60 = &lazy protocol witness table cache variable for type NSFileAttributeKey and conformance NSFileAttributeKey;
  if (readingDebug)
  {
    v95 = v26;
    v96 = a2;
    v88 = v17;
    v99 = specialized Collection.prefix(_:)(40, a1, a2);
    v100 = v61;
    v101 = v62;
    v102 = v63;
    static String.Encoding.utf8.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SliceVySWGMd, &_ss5SliceVySWGMR);
    lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type Slice<UnsafeRawBufferPointer> and conformance Slice<A>, &_ss5SliceVySWGMd, &_ss5SliceVySWGMR);
    v64 = String.init<A>(bytes:encoding:)();
    if (v65)
    {
      v66 = v64;
    }

    else
    {
      v66 = 0;
    }

    v94 = v66;
    if (v65)
    {
      v67 = v65;
    }

    else
    {
      v67 = 0xE000000000000000;
    }

    v68 = a4[7];
    if (one-time initialization token for readingDebugLog != -1)
    {
      swift_once();
    }

    v69 = readingDebugLog;
    v70 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v97 = v10;
      v72 = v71;
      v73 = swift_slowAlloc();
      v99 = v73;
      *v72 = 134219010;
      *(v72 + 4) = v68;
      *(v72 + 12) = 1024;
      *(v72 + 14) = v98;
      *(v72 + 18) = 2080;
      *(v72 + 20) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000019, 0x800000026C33E070, &v99);
      *(v72 + 28) = 2048;
      v74 = v94;
      v26 = v95;
      *(v72 + 30) = v95;
      *(v72 + 38) = 2080;
      v75 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v74, v67, &v99);

      *(v72 + 40) = v75;
      _os_log_impl(&dword_26C161000, v69, v70, "w a %ld: (%u)  %s %ld bytes %s", v72, 0x30u);
      swift_arrayDestroy();
      v76 = v73;
      v60 = &lazy protocol witness table cache variable for type NSFileAttributeKey and conformance NSFileAttributeKey;
      MEMORY[0x26D69EAB0](v76, -1, -1);
      MEMORY[0x26D69EAB0](v72, -1, -1);
    }

    else
    {

      v26 = v95;
    }

    a2 = v96;
    v17 = v88;
  }

  v77 = a4[4];
  if (*(v77 + 56))
  {
    specialized static CircularBuffer.Transaction.write(buffer:transaction:)(a1, a2, v77);
    a4[15] += v78;
    if (*(v60 + 1968) != 1 || v26 >= v78)
    {
      return outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(v17);
    }

    if (one-time initialization token for readingDebugLog == -1)
    {
      goto LABEL_74;
    }

    goto LABEL_84;
  }

LABEL_88:
  __break(1u);
LABEL_89:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v10 = v9;
  v92 = a7;
  v93 = a8;
  v90 = a5;
  v91 = a6;
  v98 = a3;
  v14 = type metadata accessor for String.Encoding();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v94 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = &unk_280495000;
  if (!attachmentAssertion.value._rawValue)
  {
    v17 = 0;
    goto LABEL_14;
  }

  v96 = a2;
  v97 = v9;
  v8 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSW_Tt0g5(a1, a2);
  a2 = v18;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  rawValue = attachmentAssertion.value._rawValue;
  v99 = attachmentAssertion.value._rawValue;
  attachmentAssertion.value._rawValue = 0x8000000000000000;
  v22 = specialized __RawDictionaryStorage.find<A>(_:)(v8, a2);
  v23 = *(rawValue + 2);
  v24 = (v21 & 1) == 0;
  v25 = v23 + v24;
  if (__OFADD__(v23, v24))
  {
    __break(1u);
    goto LABEL_78;
  }

  LOBYTE(v26) = v21;
  if (*(rawValue + 3) < v25)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v25, isUniquelyReferenced_nonNull_native);
    rawValue = v99;
    v27 = specialized __RawDictionaryStorage.find<A>(_:)(v8, a2);
    if ((v26 & 1) == (v28 & 1))
    {
      v22 = v27;
      goto LABEL_8;
    }

    goto LABEL_89;
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_82;
  }

  while (1)
  {
LABEL_8:
    v29 = *(v17 + 156);
    *(v17 + 156) = rawValue;

    v30 = *(v17 + 156);
    if ((v26 & 1) == 0)
    {
      specialized _NativeDictionary._insert(at:key:value:)(v22, v8, a2, MEMORY[0x277D84F90], *(v17 + 156));
      outlined copy of Data._Representation(v8, a2);
    }

    isUniquelyReferenced_nonNull_native = *(v30 + 56);
    rawValue = *(isUniquelyReferenced_nonNull_native + 8 * v22);
    v31 = swift_isUniquelyReferenced_nonNull_native();
    *(isUniquelyReferenced_nonNull_native + 8 * v22) = rawValue;
    if ((v31 & 1) == 0)
    {
LABEL_78:
      rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(rawValue + 2) + 1, 1, rawValue);
      *(isUniquelyReferenced_nonNull_native + 8 * v22) = rawValue;
    }

    v33 = *(rawValue + 2);
    v32 = *(rawValue + 3);
    if (v33 >= v32 >> 1)
    {
      rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1, rawValue);
      *(isUniquelyReferenced_nonNull_native + 8 * v22) = rawValue;
    }

    v10 = v97;
    *(rawValue + 2) = v33 + 1;
    v34 = &rawValue[8 * v33];
    *(v34 + 8) = v98;
    *(v34 + 9) = 1;
    outlined consume of Data._Representation(v8, a2);
    v17 = specialized thunk for @callee_guaranteed () -> (@owned [EventRef]);
    a2 = v96;
LABEL_14:
    v26 = a2 - a1;
    if (a1)
    {
      v22 = a2 - a1;
    }

    else
    {
      v22 = 0;
    }

    if (*(a4[3] + 49))
    {
      if ((v22 & 0x8000000000000000) == 0)
      {
        v95 = a2 - a1;
        if (v22 < 0xFFFFFFFF)
        {
          v35 = 2;
        }

        else
        {
          v35 = 3;
        }

        if (v22 >= 0xFFFFFFFF)
        {
          v36 = 28694;
        }

        else
        {
          v36 = 24598;
        }

        if (v22 >= 0xFFFF)
        {
          v37 = v35;
        }

        else
        {
          v37 = 1;
        }

        if (v22 >= 0xFFFF)
        {
          v38 = v36;
        }

        else
        {
          v38 = 20502;
        }

        if (v22 < 0xFF)
        {
          v37 = 0;
        }

        v89 = v37;
        if (v22 >= 0xFF)
        {
          v39 = v38;
        }

        else
        {
          v39 = 16406;
        }

        LODWORD(v96) = v39;
        if (readingDebug)
        {
          if (one-time initialization token for readingDebugLog != -1)
          {
            swift_once();
          }

          v40 = readingDebugLog;
          v41 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v40, v41))
          {
            v42 = swift_slowAlloc();
            v97 = v10;
            v43 = v42;
            v44 = swift_slowAlloc();
            v88 = v17;
            v45 = v44;
            v99 = v44;
            *v43 = 136315138;
            v46 = T_TracepointID.describe(state:)(v44, v96);
            v87 = v40;
            v48 = a2;
            v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v47, &v99);

            *(v43 + 4) = v49;
            a2 = v48;
            _os_log_impl(&dword_26C161000, v87, v41, "id: %s", v43, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v45);
            v50 = v45;
            v17 = v88;
            MEMORY[0x26D69EAB0](v50, -1, -1);
            v51 = v43;
            v10 = v97;
            MEMORY[0x26D69EAB0](v51, -1, -1);
          }
        }

        v52 = a4[4];
        if (*(v52 + 56))
        {
          v26 = v95;
          if (*(v52 + 52) == 2)
          {
LABEL_53:
            v59 = CircularBuffer.Transaction.begin()() + 4;
            v54 = *(v52 + 48);
            v55 = v54 | (*(v52 + 52) << 32);
LABEL_54:
            if (BYTE4(v55) != 2)
            {
              *(*(v52 + 32) + v54) = v96;
              *(v52 + 48) = v54 + 4;
              a4[15] += CircularBuffer.Transaction.write(size:)(v22, v89) + v59;
              if (a1)
              {
                goto LABEL_56;
              }

              return outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(v17);
            }

LABEL_87:
            __break(1u);
            goto LABEL_88;
          }

          v53 = *(v52 + 32);
          LODWORD(v54) = *(v52 + 48);
          v55 = v54 | (*(v52 + 52) << 32);
          if (v53)
          {
            v56 = *(v52 + 40) - v53;
            v57 = v56 < v54;
            v58 = v56 - v54;
            if (v57)
            {
              __break(1u);
LABEL_84:
              swift_once();
LABEL_74:
              v79 = readingDebugLog;
              v80 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v79, v80))
              {
                v81 = swift_slowAlloc();
                v82 = swift_slowAlloc();
                v103 = v82;
                *v81 = 136315138;
                v99 = v90;
                v100 = v91;
                v101 = v92;
                v102 = v93;
                __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport16BufferAttachmentVySo23T_DynamicPropertyChangeaGMd, &_s21SwiftUITracingSupport16BufferAttachmentVySo23T_DynamicPropertyChangeaGMR);
                v83 = String.init<A>(describing:)();
                v85 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v83, v84, &v103);

                *(v81 + 4) = v85;
                _os_log_impl(&dword_26C161000, v79, v80, "w a Spread %s!", v81, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v82);
                MEMORY[0x26D69EAB0](v82, -1, -1);
                MEMORY[0x26D69EAB0](v81, -1, -1);
              }

              return outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(v17);
            }

            if (v58 >= 17)
            {
              v59 = 4;
              goto LABEL_54;
            }

            goto LABEL_52;
          }

          if (!*(v52 + 48))
          {
LABEL_52:
            CircularBuffer.Transaction.commit()();
            goto LABEL_53;
          }

          __break(1u);
        }

        __break(1u);
        goto LABEL_87;
      }

      __break(1u);
LABEL_80:
      __break(1u);
      goto LABEL_81;
    }

    if ((v22 & 0x8000000000000000) != 0)
    {
      goto LABEL_80;
    }

    if (!HIDWORD(v22))
    {
      break;
    }

LABEL_81:
    __break(1u);
LABEL_82:
    specialized _NativeDictionary.copy()();
    rawValue = v99;
  }

  specialized Trace_Handle.write<A>(_:omit:)(v98 | (v22 << 32));
  if (!a1)
  {
    return outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(v17);
  }

LABEL_56:
  if (v26 <= 0)
  {
    return outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(v17);
  }

  v60 = &lazy protocol witness table cache variable for type NSFileAttributeKey and conformance NSFileAttributeKey;
  if (readingDebug)
  {
    v95 = v26;
    v96 = a2;
    v88 = v17;
    v99 = specialized Collection.prefix(_:)(40, a1, a2);
    v100 = v61;
    v101 = v62;
    v102 = v63;
    static String.Encoding.utf8.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SliceVySWGMd, &_ss5SliceVySWGMR);
    lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type Slice<UnsafeRawBufferPointer> and conformance Slice<A>, &_ss5SliceVySWGMd, &_ss5SliceVySWGMR);
    v64 = String.init<A>(bytes:encoding:)();
    if (v65)
    {
      v66 = v64;
    }

    else
    {
      v66 = 0;
    }

    v94 = v66;
    if (v65)
    {
      v67 = v65;
    }

    else
    {
      v67 = 0xE000000000000000;
    }

    v68 = a4[7];
    if (one-time initialization token for readingDebugLog != -1)
    {
      swift_once();
    }

    v69 = readingDebugLog;
    v70 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v97 = v10;
      v72 = v71;
      v73 = swift_slowAlloc();
      v99 = v73;
      *v72 = 134219010;
      *(v72 + 4) = v68;
      *(v72 + 12) = 1024;
      *(v72 + 14) = v98;
      *(v72 + 18) = 2080;
      *(v72 + 20) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000029, 0x800000026C33E210, &v99);
      *(v72 + 28) = 2048;
      v74 = v94;
      v26 = v95;
      *(v72 + 30) = v95;
      *(v72 + 38) = 2080;
      v75 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v74, v67, &v99);

      *(v72 + 40) = v75;
      _os_log_impl(&dword_26C161000, v69, v70, "w a %ld: (%u)  %s %ld bytes %s", v72, 0x30u);
      swift_arrayDestroy();
      v76 = v73;
      v60 = &lazy protocol witness table cache variable for type NSFileAttributeKey and conformance NSFileAttributeKey;
      MEMORY[0x26D69EAB0](v76, -1, -1);
      MEMORY[0x26D69EAB0](v72, -1, -1);
    }

    else
    {

      v26 = v95;
    }

    a2 = v96;
    v17 = v88;
  }

  v77 = a4[4];
  if (*(v77 + 56))
  {
    specialized static CircularBuffer.Transaction.write(buffer:transaction:)(a1, a2, v77);
    a4[15] += v78;
    if (*(v60 + 1968) != 1 || v26 >= v78)
    {
      return outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(v17);
    }

    if (one-time initialization token for readingDebugLog == -1)
    {
      goto LABEL_74;
    }

    goto LABEL_84;
  }

LABEL_88:
  __break(1u);
LABEL_89:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v10 = v9;
  v92 = a7;
  v93 = a8;
  v90 = a5;
  v91 = a6;
  v98 = a3;
  v14 = type metadata accessor for String.Encoding();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v94 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = &unk_280495000;
  if (!attachmentAssertion.value._rawValue)
  {
    v17 = 0;
    goto LABEL_14;
  }

  v96 = a2;
  v97 = v9;
  v8 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSW_Tt0g5(a1, a2);
  a2 = v18;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  rawValue = attachmentAssertion.value._rawValue;
  v99 = attachmentAssertion.value._rawValue;
  attachmentAssertion.value._rawValue = 0x8000000000000000;
  v22 = specialized __RawDictionaryStorage.find<A>(_:)(v8, a2);
  v23 = *(rawValue + 2);
  v24 = (v21 & 1) == 0;
  v25 = v23 + v24;
  if (__OFADD__(v23, v24))
  {
    __break(1u);
    goto LABEL_78;
  }

  LOBYTE(v26) = v21;
  if (*(rawValue + 3) < v25)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v25, isUniquelyReferenced_nonNull_native);
    rawValue = v99;
    v27 = specialized __RawDictionaryStorage.find<A>(_:)(v8, a2);
    if ((v26 & 1) == (v28 & 1))
    {
      v22 = v27;
      goto LABEL_8;
    }

    goto LABEL_89;
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_82;
  }

  while (1)
  {
LABEL_8:
    v29 = *(v17 + 156);
    *(v17 + 156) = rawValue;

    v30 = *(v17 + 156);
    if ((v26 & 1) == 0)
    {
      specialized _NativeDictionary._insert(at:key:value:)(v22, v8, a2, MEMORY[0x277D84F90], *(v17 + 156));
      outlined copy of Data._Representation(v8, a2);
    }

    isUniquelyReferenced_nonNull_native = *(v30 + 56);
    rawValue = *(isUniquelyReferenced_nonNull_native + 8 * v22);
    v31 = swift_isUniquelyReferenced_nonNull_native();
    *(isUniquelyReferenced_nonNull_native + 8 * v22) = rawValue;
    if ((v31 & 1) == 0)
    {
LABEL_78:
      rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(rawValue + 2) + 1, 1, rawValue);
      *(isUniquelyReferenced_nonNull_native + 8 * v22) = rawValue;
    }

    v33 = *(rawValue + 2);
    v32 = *(rawValue + 3);
    if (v33 >= v32 >> 1)
    {
      rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1, rawValue);
      *(isUniquelyReferenced_nonNull_native + 8 * v22) = rawValue;
    }

    v10 = v97;
    *(rawValue + 2) = v33 + 1;
    v34 = &rawValue[8 * v33];
    *(v34 + 8) = v98;
    *(v34 + 9) = 1;
    outlined consume of Data._Representation(v8, a2);
    v17 = specialized thunk for @callee_guaranteed () -> (@owned [EventRef]);
    a2 = v96;
LABEL_14:
    v26 = a2 - a1;
    if (a1)
    {
      v22 = a2 - a1;
    }

    else
    {
      v22 = 0;
    }

    if (*(a4[3] + 49))
    {
      if ((v22 & 0x8000000000000000) == 0)
      {
        v95 = a2 - a1;
        if (v22 < 0xFFFFFFFF)
        {
          v35 = 2;
        }

        else
        {
          v35 = 3;
        }

        if (v22 >= 0xFFFFFFFF)
        {
          v36 = 28693;
        }

        else
        {
          v36 = 24597;
        }

        if (v22 >= 0xFFFF)
        {
          v37 = v35;
        }

        else
        {
          v37 = 1;
        }

        if (v22 >= 0xFFFF)
        {
          v38 = v36;
        }

        else
        {
          v38 = 20501;
        }

        if (v22 < 0xFF)
        {
          v37 = 0;
        }

        v89 = v37;
        if (v22 >= 0xFF)
        {
          v39 = v38;
        }

        else
        {
          v39 = 16405;
        }

        LODWORD(v96) = v39;
        if (readingDebug)
        {
          if (one-time initialization token for readingDebugLog != -1)
          {
            swift_once();
          }

          v40 = readingDebugLog;
          v41 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v40, v41))
          {
            v42 = swift_slowAlloc();
            v97 = v10;
            v43 = v42;
            v44 = swift_slowAlloc();
            v88 = v17;
            v45 = v44;
            v99 = v44;
            *v43 = 136315138;
            v46 = T_TracepointID.describe(state:)(v44, v96);
            v87 = v40;
            v48 = a2;
            v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v47, &v99);

            *(v43 + 4) = v49;
            a2 = v48;
            _os_log_impl(&dword_26C161000, v87, v41, "id: %s", v43, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v45);
            v50 = v45;
            v17 = v88;
            MEMORY[0x26D69EAB0](v50, -1, -1);
            v51 = v43;
            v10 = v97;
            MEMORY[0x26D69EAB0](v51, -1, -1);
          }
        }

        v52 = a4[4];
        if (*(v52 + 56))
        {
          v26 = v95;
          if (*(v52 + 52) == 2)
          {
LABEL_53:
            v59 = CircularBuffer.Transaction.begin()() + 4;
            v54 = *(v52 + 48);
            v55 = v54 | (*(v52 + 52) << 32);
LABEL_54:
            if (BYTE4(v55) != 2)
            {
              *(*(v52 + 32) + v54) = v96;
              *(v52 + 48) = v54 + 4;
              a4[15] += CircularBuffer.Transaction.write(size:)(v22, v89) + v59;
              if (a1)
              {
                goto LABEL_56;
              }

              return outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(v17);
            }

LABEL_87:
            __break(1u);
            goto LABEL_88;
          }

          v53 = *(v52 + 32);
          LODWORD(v54) = *(v52 + 48);
          v55 = v54 | (*(v52 + 52) << 32);
          if (v53)
          {
            v56 = *(v52 + 40) - v53;
            v57 = v56 < v54;
            v58 = v56 - v54;
            if (v57)
            {
              __break(1u);
LABEL_84:
              swift_once();
LABEL_74:
              v79 = readingDebugLog;
              v80 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v79, v80))
              {
                v81 = swift_slowAlloc();
                v82 = swift_slowAlloc();
                v103 = v82;
                *v81 = 136315138;
                v99 = v90;
                v100 = v91;
                v101 = v92;
                v102 = v93;
                __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport16BufferAttachmentVySo15T_TreeValueNodeaGMd, &_s21SwiftUITracingSupport16BufferAttachmentVySo15T_TreeValueNodeaGMR);
                v83 = String.init<A>(describing:)();
                v85 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v83, v84, &v103);

                *(v81 + 4) = v85;
                _os_log_impl(&dword_26C161000, v79, v80, "w a Spread %s!", v81, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v82);
                MEMORY[0x26D69EAB0](v82, -1, -1);
                MEMORY[0x26D69EAB0](v81, -1, -1);
              }

              return outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(v17);
            }

            if (v58 >= 17)
            {
              v59 = 4;
              goto LABEL_54;
            }

            goto LABEL_52;
          }

          if (!*(v52 + 48))
          {
LABEL_52:
            CircularBuffer.Transaction.commit()();
            goto LABEL_53;
          }

          __break(1u);
        }

        __break(1u);
        goto LABEL_87;
      }

      __break(1u);
LABEL_80:
      __break(1u);
      goto LABEL_81;
    }

    if ((v22 & 0x8000000000000000) != 0)
    {
      goto LABEL_80;
    }

    if (!HIDWORD(v22))
    {
      break;
    }

LABEL_81:
    __break(1u);
LABEL_82:
    specialized _NativeDictionary.copy()();
    rawValue = v99;
  }

  specialized Trace_Handle.write<A>(_:omit:)(v98 | (v22 << 32));
  if (!a1)
  {
    return outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(v17);
  }

LABEL_56:
  if (v26 <= 0)
  {
    return outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(v17);
  }

  v60 = &lazy protocol witness table cache variable for type NSFileAttributeKey and conformance NSFileAttributeKey;
  if (readingDebug)
  {
    v95 = v26;
    v96 = a2;
    v88 = v17;
    v99 = specialized Collection.prefix(_:)(40, a1, a2);
    v100 = v61;
    v101 = v62;
    v102 = v63;
    static String.Encoding.utf8.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SliceVySWGMd, &_ss5SliceVySWGMR);
    lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type Slice<UnsafeRawBufferPointer> and conformance Slice<A>, &_ss5SliceVySWGMd, &_ss5SliceVySWGMR);
    v64 = String.init<A>(bytes:encoding:)();
    if (v65)
    {
      v66 = v64;
    }

    else
    {
      v66 = 0;
    }

    v94 = v66;
    if (v65)
    {
      v67 = v65;
    }

    else
    {
      v67 = 0xE000000000000000;
    }

    v68 = a4[7];
    if (one-time initialization token for readingDebugLog != -1)
    {
      swift_once();
    }

    v69 = readingDebugLog;
    v70 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v97 = v10;
      v72 = v71;
      v73 = swift_slowAlloc();
      v99 = v73;
      *v72 = 134219010;
      *(v72 + 4) = v68;
      *(v72 + 12) = 1024;
      *(v72 + 14) = v98;
      *(v72 + 18) = 2080;
      *(v72 + 20) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000021, 0x800000026C33E2E0, &v99);
      *(v72 + 28) = 2048;
      v74 = v94;
      v26 = v95;
      *(v72 + 30) = v95;
      *(v72 + 38) = 2080;
      v75 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v74, v67, &v99);

      *(v72 + 40) = v75;
      _os_log_impl(&dword_26C161000, v69, v70, "w a %ld: (%u)  %s %ld bytes %s", v72, 0x30u);
      swift_arrayDestroy();
      v76 = v73;
      v60 = &lazy protocol witness table cache variable for type NSFileAttributeKey and conformance NSFileAttributeKey;
      MEMORY[0x26D69EAB0](v76, -1, -1);
      MEMORY[0x26D69EAB0](v72, -1, -1);
    }

    else
    {

      v26 = v95;
    }

    a2 = v96;
    v17 = v88;
  }

  v77 = a4[4];
  if (*(v77 + 56))
  {
    specialized static CircularBuffer.Transaction.write(buffer:transaction:)(a1, a2, v77);
    a4[15] += v78;
    if (*(v60 + 1968) != 1 || v26 >= v78)
    {
      return outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(v17);
    }

    if (one-time initialization token for readingDebugLog == -1)
    {
      goto LABEL_74;
    }

    goto LABEL_84;
  }

LABEL_88:
  __break(1u);
LABEL_89:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v10 = v9;
  v92 = a7;
  v93 = a8;
  v90 = a5;
  v91 = a6;
  v98 = a3;
  v14 = type metadata accessor for String.Encoding();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v94 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = &unk_280495000;
  if (!attachmentAssertion.value._rawValue)
  {
    v17 = 0;
    goto LABEL_14;
  }

  v96 = a2;
  v97 = v9;
  v8 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSW_Tt0g5(a1, a2);
  a2 = v18;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  rawValue = attachmentAssertion.value._rawValue;
  v99 = attachmentAssertion.value._rawValue;
  attachmentAssertion.value._rawValue = 0x8000000000000000;
  v22 = specialized __RawDictionaryStorage.find<A>(_:)(v8, a2);
  v23 = *(rawValue + 2);
  v24 = (v21 & 1) == 0;
  v25 = v23 + v24;
  if (__OFADD__(v23, v24))
  {
    __break(1u);
    goto LABEL_78;
  }

  LOBYTE(v26) = v21;
  if (*(rawValue + 3) < v25)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v25, isUniquelyReferenced_nonNull_native);
    rawValue = v99;
    v27 = specialized __RawDictionaryStorage.find<A>(_:)(v8, a2);
    if ((v26 & 1) == (v28 & 1))
    {
      v22 = v27;
      goto LABEL_8;
    }

    goto LABEL_89;
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_82;
  }

  while (1)
  {
LABEL_8:
    v29 = *(v17 + 156);
    *(v17 + 156) = rawValue;

    v30 = *(v17 + 156);
    if ((v26 & 1) == 0)
    {
      specialized _NativeDictionary._insert(at:key:value:)(v22, v8, a2, MEMORY[0x277D84F90], *(v17 + 156));
      outlined copy of Data._Representation(v8, a2);
    }

    isUniquelyReferenced_nonNull_native = *(v30 + 56);
    rawValue = *(isUniquelyReferenced_nonNull_native + 8 * v22);
    v31 = swift_isUniquelyReferenced_nonNull_native();
    *(isUniquelyReferenced_nonNull_native + 8 * v22) = rawValue;
    if ((v31 & 1) == 0)
    {
LABEL_78:
      rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(rawValue + 2) + 1, 1, rawValue);
      *(isUniquelyReferenced_nonNull_native + 8 * v22) = rawValue;
    }

    v33 = *(rawValue + 2);
    v32 = *(rawValue + 3);
    if (v33 >= v32 >> 1)
    {
      rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1, rawValue);
      *(isUniquelyReferenced_nonNull_native + 8 * v22) = rawValue;
    }

    v10 = v97;
    *(rawValue + 2) = v33 + 1;
    v34 = &rawValue[8 * v33];
    *(v34 + 8) = v98;
    *(v34 + 9) = 1;
    outlined consume of Data._Representation(v8, a2);
    v17 = specialized thunk for @callee_guaranteed () -> (@owned [EventRef]);
    a2 = v96;
LABEL_14:
    v26 = a2 - a1;
    if (a1)
    {
      v22 = a2 - a1;
    }

    else
    {
      v22 = 0;
    }

    if (*(a4[3] + 49))
    {
      if ((v22 & 0x8000000000000000) == 0)
      {
        v95 = a2 - a1;
        if (v22 < 0xFFFFFFFF)
        {
          v35 = 2;
        }

        else
        {
          v35 = 3;
        }

        if (v22 >= 0xFFFFFFFF)
        {
          v36 = 28692;
        }

        else
        {
          v36 = 24596;
        }

        if (v22 >= 0xFFFF)
        {
          v37 = v35;
        }

        else
        {
          v37 = 1;
        }

        if (v22 >= 0xFFFF)
        {
          v38 = v36;
        }

        else
        {
          v38 = 20500;
        }

        if (v22 < 0xFF)
        {
          v37 = 0;
        }

        v89 = v37;
        if (v22 >= 0xFF)
        {
          v39 = v38;
        }

        else
        {
          v39 = 16404;
        }

        LODWORD(v96) = v39;
        if (readingDebug)
        {
          if (one-time initialization token for readingDebugLog != -1)
          {
            swift_once();
          }

          v40 = readingDebugLog;
          v41 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v40, v41))
          {
            v42 = swift_slowAlloc();
            v97 = v10;
            v43 = v42;
            v44 = swift_slowAlloc();
            v88 = v17;
            v45 = v44;
            v99 = v44;
            *v43 = 136315138;
            v46 = T_TracepointID.describe(state:)(v44, v96);
            v87 = v40;
            v48 = a2;
            v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v47, &v99);

            *(v43 + 4) = v49;
            a2 = v48;
            _os_log_impl(&dword_26C161000, v87, v41, "id: %s", v43, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v45);
            v50 = v45;
            v17 = v88;
            MEMORY[0x26D69EAB0](v50, -1, -1);
            v51 = v43;
            v10 = v97;
            MEMORY[0x26D69EAB0](v51, -1, -1);
          }
        }

        v52 = a4[4];
        if (*(v52 + 56))
        {
          v26 = v95;
          if (*(v52 + 52) == 2)
          {
LABEL_53:
            v59 = CircularBuffer.Transaction.begin()() + 4;
            v54 = *(v52 + 48);
            v55 = v54 | (*(v52 + 52) << 32);
LABEL_54:
            if (BYTE4(v55) != 2)
            {
              *(*(v52 + 32) + v54) = v96;
              *(v52 + 48) = v54 + 4;
              a4[15] += CircularBuffer.Transaction.write(size:)(v22, v89) + v59;
              if (a1)
              {
                goto LABEL_56;
              }

              return outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(v17);
            }

LABEL_87:
            __break(1u);
            goto LABEL_88;
          }

          v53 = *(v52 + 32);
          LODWORD(v54) = *(v52 + 48);
          v55 = v54 | (*(v52 + 52) << 32);
          if (v53)
          {
            v56 = *(v52 + 40) - v53;
            v57 = v56 < v54;
            v58 = v56 - v54;
            if (v57)
            {
              __break(1u);
LABEL_84:
              swift_once();
LABEL_74:
              v79 = readingDebugLog;
              v80 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v79, v80))
              {
                v81 = swift_slowAlloc();
                v82 = swift_slowAlloc();
                v103 = v82;
                *v81 = 136315138;
                v99 = v90;
                v100 = v91;
                v101 = v92;
                v102 = v93;
                __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport16BufferAttachmentVySo13T_RawTreeNodeaGMd, &_s21SwiftUITracingSupport16BufferAttachmentVySo13T_RawTreeNodeaGMR);
                v83 = String.init<A>(describing:)();
                v85 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v83, v84, &v103);

                *(v81 + 4) = v85;
                _os_log_impl(&dword_26C161000, v79, v80, "w a Spread %s!", v81, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v82);
                MEMORY[0x26D69EAB0](v82, -1, -1);
                MEMORY[0x26D69EAB0](v81, -1, -1);
              }

              return outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(v17);
            }

            if (v58 >= 17)
            {
              v59 = 4;
              goto LABEL_54;
            }

            goto LABEL_52;
          }

          if (!*(v52 + 48))
          {
LABEL_52:
            CircularBuffer.Transaction.commit()();
            goto LABEL_53;
          }

          __break(1u);
        }

        __break(1u);
        goto LABEL_87;
      }

      __break(1u);
LABEL_80:
      __break(1u);
      goto LABEL_81;
    }

    if ((v22 & 0x8000000000000000) != 0)
    {
      goto LABEL_80;
    }

    if (!HIDWORD(v22))
    {
      break;
    }

LABEL_81:
    __break(1u);
LABEL_82:
    specialized _NativeDictionary.copy()();
    rawValue = v99;
  }

  specialized Trace_Handle.write<A>(_:omit:)(v98 | (v22 << 32));
  if (!a1)
  {
    return outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(v17);
  }

LABEL_56:
  if (v26 <= 0)
  {
    return outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(v17);
  }

  v60 = &lazy protocol witness table cache variable for type NSFileAttributeKey and conformance NSFileAttributeKey;
  if (readingDebug)
  {
    v95 = v26;
    v96 = a2;
    v88 = v17;
    v99 = specialized Collection.prefix(_:)(40, a1, a2);
    v100 = v61;
    v101 = v62;
    v102 = v63;
    static String.Encoding.utf8.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SliceVySWGMd, &_ss5SliceVySWGMR);
    lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type Slice<UnsafeRawBufferPointer> and conformance Slice<A>, &_ss5SliceVySWGMd, &_ss5SliceVySWGMR);
    v64 = String.init<A>(bytes:encoding:)();
    if (v65)
    {
      v66 = v64;
    }

    else
    {
      v66 = 0;
    }

    v94 = v66;
    if (v65)
    {
      v67 = v65;
    }

    else
    {
      v67 = 0xE000000000000000;
    }

    v68 = a4[7];
    if (one-time initialization token for readingDebugLog != -1)
    {
      swift_once();
    }

    v69 = readingDebugLog;
    v70 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v97 = v10;
      v72 = v71;
      v73 = swift_slowAlloc();
      v99 = v73;
      *v72 = 134219010;
      *(v72 + 4) = v68;
      *(v72 + 12) = 1024;
      *(v72 + 14) = v98;
      *(v72 + 18) = 2080;
      *(v72 + 20) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, 0x800000026C33E270, &v99);
      *(v72 + 28) = 2048;
      v74 = v94;
      v26 = v95;
      *(v72 + 30) = v95;
      *(v72 + 38) = 2080;
      v75 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v74, v67, &v99);

      *(v72 + 40) = v75;
      _os_log_impl(&dword_26C161000, v69, v70, "w a %ld: (%u)  %s %ld bytes %s", v72, 0x30u);
      swift_arrayDestroy();
      v76 = v73;
      v60 = &lazy protocol witness table cache variable for type NSFileAttributeKey and conformance NSFileAttributeKey;
      MEMORY[0x26D69EAB0](v76, -1, -1);
      MEMORY[0x26D69EAB0](v72, -1, -1);
    }

    else
    {

      v26 = v95;
    }

    a2 = v96;
    v17 = v88;
  }

  v77 = a4[4];
  if (*(v77 + 56))
  {
    specialized static CircularBuffer.Transaction.write(buffer:transaction:)(a1, a2, v77);
    a4[15] += v78;
    if (*(v60 + 1968) != 1 || v26 >= v78)
    {
      return outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(v17);
    }

    if (one-time initialization token for readingDebugLog == -1)
    {
      goto LABEL_74;
    }

    goto LABEL_84;
  }

LABEL_88:
  __break(1u);
LABEL_89:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t specialized closure #1 in closure #1 in Trace_Handle.write<A>(attachment:)(char *a1, uint64_t a2, unsigned int a3, void *a4, uint64_t a5, uint64_t a6)
{
  v8 = v7;
  v89 = a5;
  v90 = a6;
  v95 = a3;
  v12 = type metadata accessor for String.Encoding();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v91 = &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = &unk_280495000;
  if (!attachmentAssertion.value._rawValue)
  {
    v15 = 0;
    goto LABEL_14;
  }

  v93 = a2;
  v94 = v7;
  v6 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSW_Tt0g5(a1, a2);
  v17 = v16;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  rawValue = attachmentAssertion.value._rawValue;
  v96 = attachmentAssertion.value._rawValue;
  attachmentAssertion.value._rawValue = 0x8000000000000000;
  a2 = specialized __RawDictionaryStorage.find<A>(_:)(v6, v17);
  v21 = *(rawValue + 2);
  v22 = (v20 & 1) == 0;
  v23 = v21 + v22;
  if (__OFADD__(v21, v22))
  {
    __break(1u);
    goto LABEL_79;
  }

  LOBYTE(v24) = v20;
  if (*(rawValue + 3) < v23)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v23, isUniquelyReferenced_nonNull_native);
    rawValue = v96;
    v25 = specialized __RawDictionaryStorage.find<A>(_:)(v6, v17);
    if ((v24 & 1) == (v26 & 1))
    {
      a2 = v25;
      goto LABEL_8;
    }

    goto LABEL_90;
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_83;
  }

  while (1)
  {
LABEL_8:
    v27 = *(v15 + 156);
    *(v15 + 156) = rawValue;

    v28 = *(v15 + 156);
    if ((v24 & 1) == 0)
    {
      specialized _NativeDictionary._insert(at:key:value:)(a2, v6, v17, MEMORY[0x277D84F90], *(v15 + 156));
      outlined copy of Data._Representation(v6, v17);
    }

    v15 = *(v28 + 56);
    rawValue = *(v15 + a2);
    v29 = swift_isUniquelyReferenced_nonNull_native();
    *(v15 + a2) = rawValue;
    if ((v29 & 1) == 0)
    {
LABEL_79:
      rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(rawValue + 2) + 1, 1, rawValue);
      *(v15 + a2) = rawValue;
    }

    v31 = *(rawValue + 2);
    v30 = *(rawValue + 3);
    if (v31 >= v30 >> 1)
    {
      rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1, rawValue);
      *(v15 + a2) = rawValue;
    }

    a2 = v93;
    *(rawValue + 2) = v31 + 1;
    v32 = &rawValue[8 * v31];
    *(v32 + 8) = v95;
    *(v32 + 9) = 1;
    outlined consume of Data._Representation(v6, v17);
    v15 = specialized thunk for @callee_guaranteed () -> (@owned [EventRef]);
    v8 = v94;
LABEL_14:
    v24 = a2 - a1;
    if (a1)
    {
      v17 = a2 - a1;
    }

    else
    {
      v17 = 0;
    }

    if (*(a4[3] + 49))
    {
      if ((v17 & 0x8000000000000000) == 0)
      {
        v92 = a2 - a1;
        if (v17 < 0xFFFFFFFF)
        {
          v33 = 2;
        }

        else
        {
          v33 = 3;
        }

        if (v17 >= 0xFFFFFFFF)
        {
          v34 = 28674;
        }

        else
        {
          v34 = 24578;
        }

        if (v17 >= 0xFFFF)
        {
          v35 = v33;
        }

        else
        {
          v35 = 1;
        }

        if (v17 >= 0xFFFF)
        {
          v36 = v34;
        }

        else
        {
          v36 = 20482;
        }

        if (v17 < 0xFF)
        {
          v35 = 0;
        }

        v88 = v35;
        if (v17 >= 0xFF)
        {
          v37 = v36;
        }

        else
        {
          v37 = 16386;
        }

        LODWORD(v93) = v37;
        if (readingDebug)
        {
          if (one-time initialization token for readingDebugLog != -1)
          {
            swift_once();
          }

          v38 = readingDebugLog;
          v39 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v38, v39))
          {
            v40 = swift_slowAlloc();
            v94 = v8;
            v41 = v40;
            v42 = swift_slowAlloc();
            v87 = v15;
            v43 = v42;
            v96 = v42;
            *v41 = 136315138;
            v44 = T_TracepointID.describe(state:)(v42, v93);
            v86 = v38;
            v46 = a2;
            v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v45, &v96);

            *(v41 + 4) = v47;
            a2 = v46;
            _os_log_impl(&dword_26C161000, v86, v39, "id: %s", v41, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v43);
            v48 = v43;
            v15 = v87;
            MEMORY[0x26D69EAB0](v48, -1, -1);
            v49 = v41;
            v8 = v94;
            MEMORY[0x26D69EAB0](v49, -1, -1);
          }
        }

        v50 = a4[4];
        if (*(v50 + 56))
        {
          v24 = v92;
          if (*(v50 + 52) == 2)
          {
LABEL_53:
            v57 = CircularBuffer.Transaction.begin()() + 4;
            v52 = *(v50 + 48);
            v53 = v52 | (*(v50 + 52) << 32);
LABEL_54:
            if (BYTE4(v53) != 2)
            {
              *(*(v50 + 32) + v52) = v93;
              *(v50 + 48) = v52 + 4;
              a4[15] += CircularBuffer.Transaction.write(size:)(v17, v88) + v57;
              if (!a1)
              {
                goto LABEL_76;
              }

              goto LABEL_56;
            }

            goto LABEL_88;
          }

          v51 = *(v50 + 32);
          LODWORD(v52) = *(v50 + 48);
          v53 = v52 | (*(v50 + 52) << 32);
          if (v51)
          {
            v54 = *(v50 + 40) - v51;
            v55 = v54 < v52;
            v56 = v54 - v52;
            if (v55)
            {
              __break(1u);
LABEL_85:
              swift_once();
LABEL_74:
              v76 = readingDebugLog;
              v77 = static os_log_type_t.default.getter();
              if (!os_log_type_enabled(v76, v77))
              {
                goto LABEL_76;
              }

              v78 = swift_slowAlloc();
              v79 = swift_slowAlloc();
              v100 = v79;
              *v78 = 136315138;
              v96 = v89;
              v97 = v90;

              v80 = String.init<A>(describing:)();
              v82 = v15;
              v83 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v80, v81, &v100);

              *(v78 + 4) = v83;
              _os_log_impl(&dword_26C161000, v76, v77, "w a Spread %s!", v78, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v79);
              MEMORY[0x26D69EAB0](v79, -1, -1);
              MEMORY[0x26D69EAB0](v78, -1, -1);
              v84 = v82;
              return outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(v84);
            }

            if (v56 >= 17)
            {
              v57 = 4;
              goto LABEL_54;
            }

            goto LABEL_52;
          }

          if (!*(v50 + 48))
          {
LABEL_52:
            CircularBuffer.Transaction.commit()();
            goto LABEL_53;
          }

          __break(1u);
        }

        __break(1u);
LABEL_88:
        __break(1u);
        goto LABEL_89;
      }

      __break(1u);
LABEL_81:
      __break(1u);
      goto LABEL_82;
    }

    if ((v17 & 0x8000000000000000) != 0)
    {
      goto LABEL_81;
    }

    if (!HIDWORD(v17))
    {
      break;
    }

LABEL_82:
    __break(1u);
LABEL_83:
    specialized _NativeDictionary.copy()();
    rawValue = v96;
  }

  specialized Trace_Handle.write<A>(_:omit:)(v95 | (v17 << 32));
  if (!a1)
  {
    goto LABEL_76;
  }

LABEL_56:
  if (v24 <= 0)
  {
    goto LABEL_76;
  }

  if (readingDebug)
  {
    v87 = v15;
    v93 = a2;
    v96 = specialized Collection.prefix(_:)(40, a1, a2);
    v97 = v58;
    v98 = v59;
    v99 = v60;
    static String.Encoding.utf8.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SliceVySWGMd, &_ss5SliceVySWGMR);
    lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type Slice<UnsafeRawBufferPointer> and conformance Slice<A>, &_ss5SliceVySWGMd, &_ss5SliceVySWGMR);
    v61 = String.init<A>(bytes:encoding:)();
    if (v62)
    {
      v63 = v61;
    }

    else
    {
      v63 = 0;
    }

    if (v62)
    {
      v64 = v62;
    }

    else
    {
      v64 = 0xE000000000000000;
    }

    v65 = a4[7];
    if (one-time initialization token for readingDebugLog != -1)
    {
      swift_once();
    }

    v66 = readingDebugLog;
    v67 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v94 = v8;
      v69 = v68;
      v70 = swift_slowAlloc();
      v92 = v24;
      v71 = v70;
      v96 = v70;
      *v69 = 134219010;
      *(v69 + 4) = v65;
      *(v69 + 12) = 1024;
      *(v69 + 14) = v95;
      *(v69 + 18) = 2080;
      *(v69 + 20) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x676E69727453, 0xE600000000000000, &v96);
      *(v69 + 28) = 2048;
      *(v69 + 30) = v92;
      *(v69 + 38) = 2080;
      v72 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v63, v64, &v96);

      *(v69 + 40) = v72;
      _os_log_impl(&dword_26C161000, v66, v67, "w a %ld: (%u)  %s %ld bytes %s", v69, 0x30u);
      swift_arrayDestroy();
      v73 = v71;
      v24 = v92;
      MEMORY[0x26D69EAB0](v73, -1, -1);
      MEMORY[0x26D69EAB0](v69, -1, -1);
    }

    else
    {
    }

    a2 = v93;
    v15 = v87;
  }

  v74 = a4[4];
  if (*(v74 + 56))
  {
    specialized static CircularBuffer.Transaction.write(buffer:transaction:)(a1, a2, v74);
    a4[15] += v75;
    if (readingDebug && v24 < v75)
    {
      if (one-time initialization token for readingDebugLog == -1)
      {
        goto LABEL_74;
      }

      goto LABEL_85;
    }

LABEL_76:
    v84 = v15;
    return outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(v84);
  }

LABEL_89:
  __break(1u);
LABEL_90:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t specialized closure #1 in closure #1 in Trace_Handle.write<A>(attachment:)(char *a1, uint64_t a2, unsigned int a3, void *a4, uint64_t a5, unint64_t a6, int a7)
{
  v10 = v8;
  v91 = a7;
  v92 = a5;
  v93 = a6;
  v98 = a3;
  v14 = type metadata accessor for String.Encoding();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v94 = &v88 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = &unk_280495000;
  v97 = a2;
  if (!attachmentAssertion.value._rawValue)
  {
    v17 = 0;
    goto LABEL_14;
  }

  v96 = v8;
  v7 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSW_Tt0g5(a1, a2);
  v19 = v18;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  rawValue = attachmentAssertion.value._rawValue;
  v99 = attachmentAssertion.value._rawValue;
  attachmentAssertion.value._rawValue = 0x8000000000000000;
  v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v19);
  v23 = *(rawValue + 2);
  v24 = (v22 & 1) == 0;
  v25 = v23 + v24;
  if (__OFADD__(v23, v24))
  {
    __break(1u);
    goto LABEL_80;
  }

  LOBYTE(v26) = v22;
  if (*(rawValue + 3) < v25)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v25, isUniquelyReferenced_nonNull_native);
    rawValue = v99;
    v27 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v19);
    if ((v26 & 1) == (v28 & 1))
    {
      v10 = v27;
      goto LABEL_8;
    }

    goto LABEL_91;
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_84;
  }

  while (1)
  {
LABEL_8:
    v29 = *(v17 + 156);
    *(v17 + 156) = rawValue;

    v30 = *(v17 + 156);
    if ((v26 & 1) == 0)
    {
      specialized _NativeDictionary._insert(at:key:value:)(v10, v7, v19, MEMORY[0x277D84F90], *(v17 + 156));
      outlined copy of Data._Representation(v7, v19);
    }

    v9 = *(v30 + 56);
    rawValue = *(v9 + 8 * v10);
    v31 = swift_isUniquelyReferenced_nonNull_native();
    *(v9 + 8 * v10) = rawValue;
    if ((v31 & 1) == 0)
    {
LABEL_80:
      rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(rawValue + 2) + 1, 1, rawValue);
      *(v9 + 8 * v10) = rawValue;
    }

    v33 = *(rawValue + 2);
    v32 = *(rawValue + 3);
    if (v33 >= v32 >> 1)
    {
      rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1, rawValue);
      *(v9 + 8 * v10) = rawValue;
    }

    v10 = v96;
    *(rawValue + 2) = v33 + 1;
    v34 = &rawValue[8 * v33];
    *(v34 + 8) = v98;
    *(v34 + 9) = 1;
    outlined consume of Data._Representation(v7, v19);
    v17 = specialized thunk for @callee_guaranteed () -> (@owned [EventRef]);
    a2 = v97;
LABEL_14:
    v26 = a2 - a1;
    if (a1)
    {
      v19 = a2 - a1;
    }

    else
    {
      v19 = 0;
    }

    if (*(a4[3] + 49))
    {
      if ((v19 & 0x8000000000000000) == 0)
      {
        v95 = a2 - a1;
        if (v19 < 0xFFFFFFFF)
        {
          v35 = 2;
        }

        else
        {
          v35 = 3;
        }

        if (v19 >= 0xFFFFFFFF)
        {
          v36 = 28678;
        }

        else
        {
          v36 = 24582;
        }

        if (v19 >= 0xFFFF)
        {
          v37 = v35;
        }

        else
        {
          v37 = 1;
        }

        if (v19 >= 0xFFFF)
        {
          v38 = v36;
        }

        else
        {
          v38 = 20486;
        }

        if (v19 < 0xFF)
        {
          v37 = 0;
        }

        v90 = v37;
        if (v19 >= 0xFF)
        {
          v39 = v38;
        }

        else
        {
          v39 = 16390;
        }

        LODWORD(v96) = v39;
        if (readingDebug)
        {
          if (one-time initialization token for readingDebugLog != -1)
          {
            swift_once();
          }

          v40 = readingDebugLog;
          v41 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v40, v41))
          {
            v42 = swift_slowAlloc();
            v43 = swift_slowAlloc();
            v89 = v17;
            v44 = v43;
            v99 = v43;
            *v42 = 136315138;
            v45 = T_TracepointID.describe(state:)(v43, v96);
            v88 = v40;
            v47 = v10;
            v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v46, &v99);

            *(v42 + 4) = v48;
            v10 = v47;
            _os_log_impl(&dword_26C161000, v88, v41, "id: %s", v42, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v44);
            v49 = v44;
            v17 = v89;
            MEMORY[0x26D69EAB0](v49, -1, -1);
            v50 = v42;
            a2 = v97;
            MEMORY[0x26D69EAB0](v50, -1, -1);
          }
        }

        v51 = a4[4];
        if (*(v51 + 56))
        {
          v26 = v95;
          if (*(v51 + 52) == 2)
          {
LABEL_53:
            v58 = CircularBuffer.Transaction.begin()() + 4;
            v53 = *(v51 + 48);
            v54 = v53 | (*(v51 + 52) << 32);
LABEL_54:
            if (BYTE4(v54) != 2)
            {
              *(*(v51 + 32) + v53) = v96;
              *(v51 + 48) = v53 + 4;
              a4[15] += CircularBuffer.Transaction.write(size:)(v19, v90) + v58;
              if (!a1)
              {
                goto LABEL_75;
              }

              goto LABEL_56;
            }

            goto LABEL_89;
          }

          v52 = *(v51 + 32);
          LODWORD(v53) = *(v51 + 48);
          v54 = v53 | (*(v51 + 52) << 32);
          if (v52)
          {
            v55 = *(v51 + 40) - v52;
            v56 = v55 < v53;
            v57 = v55 - v53;
            if (v56)
            {
              __break(1u);
LABEL_86:
              swift_once();
LABEL_73:
              v76 = readingDebugLog;
              v77 = v91 & 1;
              v79 = v92;
              v78 = v93;
              outlined copy of ByteString.Storage(v92, v93, v91 & 1);
              v80 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v76, v80))
              {
                v81 = swift_slowAlloc();
                v82 = swift_slowAlloc();
                v103 = v82;
                *v81 = 136315138;
                v99 = v79;
                v100 = v78;
                LOBYTE(v101) = v77;
                v83 = String.init<A>(describing:)();
                v85 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v83, v84, &v103);

                *(v81 + 4) = v85;
                _os_log_impl(&dword_26C161000, v76, v80, "w a Spread %s!", v81, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v82);
                MEMORY[0x26D69EAB0](v82, -1, -1);
                MEMORY[0x26D69EAB0](v81, -1, -1);
              }

              else
              {
                outlined consume of ByteString.Storage(v79, v78, v77);
              }

              v86 = a1;
              return outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(v86);
            }

            if (v57 >= 17)
            {
              v58 = 4;
              goto LABEL_54;
            }

            goto LABEL_52;
          }

          if (!*(v51 + 48))
          {
LABEL_52:
            CircularBuffer.Transaction.commit()();
            goto LABEL_53;
          }

          __break(1u);
        }

        __break(1u);
LABEL_89:
        __break(1u);
        goto LABEL_90;
      }

      __break(1u);
LABEL_82:
      __break(1u);
      goto LABEL_83;
    }

    if ((v19 & 0x8000000000000000) != 0)
    {
      goto LABEL_82;
    }

    if (!HIDWORD(v19))
    {
      break;
    }

LABEL_83:
    __break(1u);
LABEL_84:
    specialized _NativeDictionary.copy()();
    rawValue = v99;
  }

  specialized Trace_Handle.write<A>(_:omit:)(v98 | (v19 << 32));
  if (!a1)
  {
    goto LABEL_75;
  }

LABEL_56:
  if (v26 <= 0)
  {
    goto LABEL_75;
  }

  if (readingDebug)
  {
    v95 = v26;
    v89 = v17;
    v99 = specialized Collection.prefix(_:)(40, a1, a2);
    v100 = v59;
    v101 = v60;
    v102 = v61;
    static String.Encoding.utf8.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SliceVySWGMd, &_ss5SliceVySWGMR);
    lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type Slice<UnsafeRawBufferPointer> and conformance Slice<A>, &_ss5SliceVySWGMd, &_ss5SliceVySWGMR);
    v62 = String.init<A>(bytes:encoding:)();
    if (v63)
    {
      v64 = v62;
    }

    else
    {
      v64 = 0;
    }

    v94 = v64;
    if (v63)
    {
      v65 = v63;
    }

    else
    {
      v65 = 0xE000000000000000;
    }

    v66 = a4[7];
    if (one-time initialization token for readingDebugLog != -1)
    {
      swift_once();
    }

    v67 = readingDebugLog;
    v68 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v96 = v10;
      v71 = v70;
      v99 = v70;
      *v69 = 134219010;
      *(v69 + 4) = v66;
      *(v69 + 12) = 1024;
      *(v69 + 14) = v98;
      *(v69 + 18) = 2080;
      *(v69 + 20) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6972745365747942, 0xEA0000000000676ELL, &v99);
      *(v69 + 28) = 2048;
      v72 = v94;
      v26 = v95;
      *(v69 + 30) = v95;
      *(v69 + 38) = 2080;
      v73 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, v65, &v99);

      *(v69 + 40) = v73;
      _os_log_impl(&dword_26C161000, v67, v68, "w a %ld: (%u)  %s %ld bytes %s", v69, 0x30u);
      swift_arrayDestroy();
      MEMORY[0x26D69EAB0](v71, -1, -1);
      MEMORY[0x26D69EAB0](v69, -1, -1);
      a2 = v97;
      v17 = v89;
    }

    else
    {

      a2 = v97;
      v17 = v89;
      v26 = v95;
    }
  }

  v74 = a4[4];
  if (*(v74 + 56))
  {
    specialized static CircularBuffer.Transaction.write(buffer:transaction:)(a1, a2, v74);
    a4[15] += v75;
    if (readingDebug && v26 < v75)
    {
      a1 = v17;
      if (one-time initialization token for readingDebugLog == -1)
      {
        goto LABEL_73;
      }

      goto LABEL_86;
    }

LABEL_75:
    v86 = v17;
    return outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(v86);
  }

LABEL_90:
  __break(1u);
LABEL_91:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t closure #1 in closure #1 in Trace_Handle.write<A>(attachment:)(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t *a4, uint64_t a5, NSObject *a6, uint64_t a7, void *a8, uint64_t a9)
{
  v126 = a5;
  v136 = a3;
  v134 = a7;
  v127 = *(a7 - 8);
  v14 = *(v127 + 64);
  v15 = MEMORY[0x28223BE20](a1);
  v125 = &v125 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v125 - v17;
  v19 = *(*(type metadata accessor for String.Encoding() - 8) + 64);
  v20 = MEMORY[0x28223BE20](a1);
  v128 = &v125 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  isa = a6[-1].isa;
  v23 = *(isa + 8);
  v24 = MEMORY[0x28223BE20](v20);
  v26 = &v125 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v24);
  v30 = &v125 - v29;
  v31 = &unk_280495000;
  v140 = a8;
  v141 = a6;
  v138 = v27;
  v139 = v28;
  v135 = v9;
  v133 = v18;
  v145 = a4;
  if (!attachmentAssertion.value._rawValue)
  {
    v137 = 0;
    v31 = *(isa + 2);
    v33 = (isa + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    goto LABEL_17;
  }

  v131 = v26;
  v132 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSW_Tt0g5(v27, v28);
  v137 = v32;
  v33 = isa + 16;
  v130 = *(isa + 2);
  (v130)(v30, a4, a6);
  (a8[6])(v142, a6, a8);
  if (*(v143 + 49) == 1)
  {
    v129 = (*(a8[2] + 24))(a6);
  }

  else
  {
    v129 = 1;
  }

  (*(isa + 1))(v30, a6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  rawValue = attachmentAssertion.value._rawValue;
  v142[0] = attachmentAssertion.value._rawValue;
  attachmentAssertion.value._rawValue = 0x8000000000000000;
  a8 = v132;
  v37 = specialized __RawDictionaryStorage.find<A>(_:)(v132, v137);
  v38 = *(rawValue + 2);
  v39 = (v36 & 1) == 0;
  v40 = v38 + v39;
  v26 = v131;
  if (__OFADD__(v38, v39))
  {
    __break(1u);
    goto LABEL_78;
  }

  LOBYTE(v41) = v36;
  if (*(rawValue + 3) >= v40)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_11;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v40, isUniquelyReferenced_nonNull_native);
  rawValue = v142[0];
  v42 = specialized __RawDictionaryStorage.find<A>(_:)(a8, v137);
  if ((v41 & 1) != (v43 & 1))
  {
    goto LABEL_89;
  }

  v37 = v42;
  while (1)
  {
LABEL_11:
    v44 = *(v31 + 156);
    *(v31 + 156) = rawValue;

    v45 = *(v31 + 156);
    if ((v41 & 1) == 0)
    {
      v46 = v137;
      specialized _NativeDictionary._insert(at:key:value:)(v37, a8, v137, MEMORY[0x277D84F90], *(v31 + 156));
      outlined copy of Data._Representation(a8, v46);
    }

    v31 = *(v45 + 56);
    rawValue = *&v31[8 * v37];
    v47 = swift_isUniquelyReferenced_nonNull_native();
    *&v31[8 * v37] = rawValue;
    if ((v47 & 1) == 0)
    {
LABEL_78:
      rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(rawValue + 2) + 1, 1, rawValue);
      *&v31[8 * v37] = rawValue;
    }

    v33 = v33 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v49 = *(rawValue + 2);
    v48 = *(rawValue + 3);
    if (v49 >= v48 >> 1)
    {
      rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v48 > 1), v49 + 1, 1, rawValue);
      *&v31[8 * v37] = rawValue;
    }

    v31 = v130;
    *(rawValue + 2) = v49 + 1;
    v50 = &rawValue[8 * v49];
    v51 = v129;
    *(v50 + 8) = v136;
    *(v50 + 9) = v51;
    outlined consume of Data._Representation(a8, v137);
    v137 = specialized thunk for @callee_guaranteed () -> (@owned [EventRef]);
    a4 = v145;
LABEL_17:
    v41 = v141;
    (v31)(v26, a4, v141);
    v37 = (v140 + 6);
    v132 = v140[6];
    (v132)(v142, v41);
    v52 = *(v143 + 49);
    v53 = *(isa + 1);
    isa = (isa + 8);
    v53(v26, v41);
    if (v52)
    {
      break;
    }

    v31 = v138;
    v58 = v139;
    v59 = v139 - v138;
    if (!v138)
    {
      v59 = 0;
    }

    if ((v59 & 0x8000000000000000) != 0)
    {
      goto LABEL_80;
    }

    if (!HIDWORD(v59))
    {
      v142[0] = __PAIR64__(v59, v136);
      type metadata accessor for T_AnyAttachmentV0(0);
      v57 = v140;
      Trace_Handle.write<A>(_:omit:)(v142, 0, v41, v60, v140, &protocol witness table for T_AnyAttachmentV0);
      if (v31)
      {
        goto LABEL_54;
      }

      return outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(v137);
    }

LABEL_81:
    __break(1u);
LABEL_82:
    specialized _NativeDictionary.copy()();
    rawValue = v142[0];
  }

  v54 = (*(*(a9 + 8) + 24))();
  if (v138)
  {
    v26 = v139 - v138;
  }

  else
  {
    v26 = 0;
  }

  if ((v26 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  if (v26 >= 0xFF)
  {
    v57 = v140;
    if (v26 >= 0xFFFF)
    {
      if (v26 < 0xFFFFFFFF)
      {
        LODWORD(v55) = 2;
      }

      else
      {
        LODWORD(v55) = 3;
      }

      if (v26 >= 0xFFFFFFFF)
      {
        v56 = 28672;
      }

      else
      {
        v56 = 24576;
      }
    }

    else
    {
      v56 = 20480;
      LODWORD(v55) = 1;
    }
  }

  else
  {
    LODWORD(v55) = 0;
    v56 = 0x4000;
    v57 = v140;
  }

  LODWORD(v131) = v56 | v54;
  if (readingDebug)
  {
    if (one-time initialization token for readingDebugLog != -1)
    {
      swift_once();
    }

    v61 = readingDebugLog;
    v62 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      LODWORD(v130) = v55;
      v55 = v64;
      v142[0] = v64;
      *v63 = 136315138;
      v65 = T_TracepointID.describe(state:)(v64, v131);
      v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v66, v142);

      *(v63 + 4) = v67;
      _os_log_impl(&dword_26C161000, v61, v62, "id: %s", v63, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v55);
      v68 = v55;
      LOBYTE(v55) = v130;
      MEMORY[0x26D69EAB0](v68, -1, -1);
      MEMORY[0x26D69EAB0](v63, -1, -1);
    }
  }

  v69 = v57[8];
  v70 = v69(v142, v141, v57);
  v72 = *(v71 + 32);
  if (!*(v72 + 56))
  {
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  v73 = v70;
  if (*(v72 + 52) == 2)
  {
    goto LABEL_51;
  }

  v74 = *(v72 + 32);
  LODWORD(v75) = *(v72 + 48);
  v76 = v75 | (*(v72 + 52) << 32);
  if (!v74)
  {
    if (!*(v72 + 48))
    {
      goto LABEL_50;
    }

    __break(1u);
    goto LABEL_86;
  }

  v77 = *(v72 + 40) - v74;
  v78 = v77 < v75;
  v79 = v77 - v75;
  if (v78)
  {
    __break(1u);
    goto LABEL_84;
  }

  if (v79 >= 17)
  {
    v80 = 4;
    goto LABEL_52;
  }

LABEL_50:
  CircularBuffer.Transaction.commit()();
LABEL_51:
  v80 = CircularBuffer.Transaction.begin()() + 4;
  v75 = *(v72 + 48);
  v76 = v75 | (*(v72 + 52) << 32);
LABEL_52:
  if (BYTE4(v76) == 2)
  {
    goto LABEL_87;
  }

  *(*(v72 + 32) + v75) = v131;
  *(v72 + 48) = v75 + 4;
  v81 = CircularBuffer.Transaction.write(size:)(v26, v55);
  v73(v142, 0);
  v41 = v141;
  v82 = v69(v142, v141, v57);
  *(v83 + 120) += v81 + v80;
  v82(v142, 0);
  v31 = v138;
  v58 = v139;
  if (!v138)
  {
    return outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(v137);
  }

LABEL_54:
  v84 = v58 - v31;
  if (v58 - v31 <= 0)
  {
    return outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(v137);
  }

  if (readingDebug)
  {
    v142[0] = specialized Collection.prefix(_:)(40, v138, v139);
    v142[1] = v85;
    v142[2] = v86;
    v143 = v87;
    static String.Encoding.utf8.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SliceVySWGMd, &_ss5SliceVySWGMR);
    lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type Slice<UnsafeRawBufferPointer> and conformance Slice<A>, &_ss5SliceVySWGMd, &_ss5SliceVySWGMR);
    v88 = String.init<A>(bytes:encoding:)();
    if (v89)
    {
      v90 = v88;
    }

    else
    {
      v90 = 0;
    }

    if (v89)
    {
      v91 = v89;
    }

    else
    {
      v91 = 0xE000000000000000;
    }

    (v132)(v142, v41, v57);
    v92 = v144;
    if (one-time initialization token for readingDebugLog != -1)
    {
      swift_once();
    }

    v93 = readingDebugLog;
    v94 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      v132 = swift_slowAlloc();
      v142[0] = v132;
      *v95 = 134219010;
      *(v95 + 4) = v92;
      *(v95 + 12) = 1024;
      *(v95 + 14) = v136;
      *(v95 + 18) = 2080;
      v96 = _typeName(_:qualified:)();
      v98 = v91;
      v99 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v96, v97, v142);

      *(v95 + 20) = v99;
      *(v95 + 28) = 2048;
      *(v95 + 30) = v84;
      *(v95 + 38) = 2080;
      v57 = v140;
      v100 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v90, v98, v142);

      *(v95 + 40) = v100;
      _os_log_impl(&dword_26C161000, v93, v94, "w a %ld: (%u)  %s %ld bytes %s", v95, 0x30u);
      v101 = v132;
      swift_arrayDestroy();
      MEMORY[0x26D69EAB0](v101, -1, -1);
      MEMORY[0x26D69EAB0](v95, -1, -1);
    }

    else
    {
    }

    v41 = v141;
  }

  v102 = v57[8];
  v103 = v102(v142, v41, v57);
  v105 = *(v104 + 32);
  if (*(v105 + 56))
  {
    v106 = v103;
    specialized static CircularBuffer.Transaction.write(buffer:transaction:)(v138, v139, v105);
    v108 = v107;
    v106(v142, 0);
    v109 = v102(v142, v41, v57);
    *(v110 + 120) += v108;
    v109(v142, 0);
    v69 = v133;
    if (!readingDebug || v84 >= v108)
    {
      return outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(v137);
    }

    if (one-time initialization token for readingDebugLog == -1)
    {
LABEL_73:
      v111 = readingDebugLog;
      v112 = v127;
      v113 = *(v127 + 16);
      v114 = v134;
      v113(v69, v126, v134);
      v115 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v111, v115))
      {
        v116 = v112;
        v117 = swift_slowAlloc();
        v118 = swift_slowAlloc();
        v145 = v118;
        *v117 = 136315138;
        v141 = v111;
        v142[0] = v118;
        v113(v125, v69, v114);
        v119 = String.init<A>(describing:)();
        v121 = v120;
        (*(v116 + 8))(v69, v114);
        v122 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v119, v121, v142);

        *(v117 + 4) = v122;
        _os_log_impl(&dword_26C161000, v141, v115, "w a Spread %s!", v117, 0xCu);
        v123 = v145;
        __swift_destroy_boxed_opaque_existential_1(v145);
        MEMORY[0x26D69EAB0](v123, -1, -1);
        MEMORY[0x26D69EAB0](v117, -1, -1);
      }

      else
      {
        (*(v112 + 8))(v69, v114);
      }

      return outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(v137);
    }

LABEL_84:
    swift_once();
    goto LABEL_73;
  }

LABEL_88:
  __break(1u);
LABEL_89:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t Trace_Handle.effectiveCode.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 48))(v5);
  if (*(v5[3] + 49) == 1)
  {
    return (*(*(a2 + 16) + 24))(a1);
  }

  else
  {
    return 1;
  }
}

uint64_t static T_TracepointID.initialize(attachment:size:)(unsigned int a1, unint64_t a2)
{
  if (a2 >= 0xFFFFFFFF)
  {
    v2 = 28672;
  }

  else
  {
    v2 = 24576;
  }

  if (a2 >= 0xFFFF)
  {
    v3 = v2;
  }

  else
  {
    v3 = 20480;
  }

  if (a2 >= 0xFF)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x4000;
  }

  return v4 | a1;
}

uint64_t Trace.config.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v7[0] = *v1;
  v7[1] = v2;
  v8 = *(v1 + 32);
  v3 = v8;
  v9 = *(v1 + 48);
  v4 = v9;
  *a1 = v7[0];
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  return outlined init with copy of TraceConfig(v7, v6);
}

__n128 Trace.config.setter(uint64_t a1)
{
  v3 = *(v1 + 16);
  v6[0] = *v1;
  v6[1] = v3;
  v6[2] = *(v1 + 32);
  v7 = *(v1 + 48);
  outlined destroy of TraceConfig(v6);
  v4 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v4;
  result = *(a1 + 32);
  *(v1 + 32) = result;
  *(v1 + 48) = *(a1 + 48);
  return result;
}

void static Trace.Control.types.getter(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport9Evolution_pXpGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport9Evolution_pXpGMR);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_26C32E0A0;
  type metadata accessor for T_TimeSync(0);
  *(v2 + 32) = v3;
  *(v2 + 40) = &protocol witness table for T_TimeSync;
  type metadata accessor for T_ExecutionContext(0);
  *(v2 + 48) = v4;
  *(v2 + 56) = &protocol witness table for T_ExecutionContext;
  type metadata accessor for T_ModeDecl(0);
  *(v2 + 64) = v5;
  *(v2 + 72) = &protocol witness table for T_ModeDecl;
  type metadata accessor for T_TypeDecl(0);
  *(v2 + 80) = v6;
  *(v2 + 88) = &protocol witness table for T_TypeDecl;
  type metadata accessor for T_KeypathDecl(0);
  *(v2 + 96) = v7;
  *(v2 + 104) = &protocol witness table for T_KeypathDecl;
  *(v2 + 112) = &type metadata for TypeID;
  *(v2 + 120) = &protocol witness table for TypeID;
  *(v2 + 128) = &type metadata for KeypathID;
  *(v2 + 136) = &protocol witness table for KeypathID;
  type metadata accessor for T_TypeField(0);
  *(v2 + 144) = v8;
  *(v2 + 152) = &protocol witness table for T_TypeField;
  type metadata accessor for T_AnyAttachmentV0(0);
  *(v2 + 160) = v9;
  *(v2 + 168) = &protocol witness table for T_AnyAttachmentV0;
  *(v2 + 176) = &type metadata for Address;
  *(v2 + 184) = &protocol witness table for Address;
  *(v2 + 192) = MEMORY[0x277D837D0];
  *(v2 + 200) = &protocol witness table for String;
  type metadata accessor for T_ValueDefinition(0);
  *(v2 + 208) = v10;
  *(v2 + 216) = &protocol witness table for T_ValueDefinition;
  *(v2 + 224) = &type metadata for ByteString;
  *(v2 + 232) = &protocol witness table for ByteString;
  *a1 = v2;
}

__n128 Trace.Control.storage.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  *(a1 + 64) = *(v1 + 64);
  *(a1 + 80) = v2;
  v3 = *(v1 + 112);
  *(a1 + 96) = *(v1 + 96);
  *(a1 + 112) = v3;
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v4;
  result = *(v1 + 32);
  v6 = *(v1 + 48);
  *(a1 + 32) = result;
  *(a1 + 48) = v6;
  return result;
}

__n128 Trace.Control.storage.setter(uint64_t a1)
{
  v2 = *(a1 + 80);
  *(v1 + 64) = *(a1 + 64);
  *(v1 + 80) = v2;
  v3 = *(a1 + 112);
  *(v1 + 96) = *(a1 + 96);
  *(v1 + 112) = v3;
  v4 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v4;
  result = *(a1 + 32);
  v6 = *(a1 + 48);
  *(v1 + 32) = result;
  *(v1 + 48) = v6;
  return result;
}

void Trace.Control.write<A>(mode:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = swift_dynamicCastMetatype();
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = *(v3[3] + 49) ^ 1;
  }

  v10 = v3[4];
  if (!*(v10 + 7))
  {
    __break(1u);
    goto LABEL_17;
  }

  v11 = *v10;
  v12 = *(v10 + 4);
  if (v12)
  {
    if (v9)
    {
LABEL_12:
      closure #1 in Trace.Control.write<A>(mode:)(v4, v8 != 0, a1, a2, a3);
      v15 = v4[4];
      if (*(v15 + 56))
      {
        CircularBuffer.Transaction.commit()();
        v16 = v4[1];
        if (v16)
        {
          if (*(v15 + 56))
          {
            v17 = v4[2];
            *v15 = v11;
            *(v15 + 4) = v12 & 1;
            *(v15 + 8) = v16;
            *(v15 + 16) = v17;
            *(v15 + 32) = 0;
            *(v15 + 40) = 0;
            *(v15 + 24) = 0;
            *(v15 + 48) = 0;
            *(v15 + 52) = 2;
            *(v15 + 56) = &type metadata for Trace.Control;
            return;
          }

          goto LABEL_19;
        }

LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

LABEL_17:
      __break(1u);
      goto LABEL_18;
    }
  }

  else if (!(v9 & 1 | (v11 != 0)))
  {
    goto LABEL_12;
  }

  CircularBuffer.Transaction.commit()();
  v13 = v4[1];
  if (!v13)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (*(v10 + 7))
  {
    v14 = v4[2];
    *v10 = 0;
    *(v10 + 4) = v9 & 1;
    *(v10 + 1) = v13;
    *(v10 + 2) = v14;
    *(v10 + 4) = 0;
    *(v10 + 5) = 0;
    *(v10 + 3) = 0;
    v10[12] = 0;
    *(v10 + 52) = 2;
    *(v10 + 7) = &type metadata for Trace.Control;
    goto LABEL_12;
  }

LABEL_21:
  __break(1u);
}

void *closure #1 in Trace.Control.write<A>(mode:)(void *result, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = result;
  if (a2)
  {
    if (*(result[3] + 49))
    {
      specialized T_Header.init()(v124);
      result = specialized Trace_Handle.write<A>(struct:)(v124);
    }

    else
    {
      specialized T_Header.init()(v124);
      result = specialized Trace_Handle.write<A>(struct:)(123123123, (v125 << 16) | 1);
    }
  }

  v8 = v7[3];
  if (*(v8 + 49) == 1)
  {
    v116 = v7;
    v107 = a5;
    v106 = *(a5 + 40);
    result = v106(&v119, a4, a5);
    v9 = v119;
    v10 = v119 + 40;
    v11 = -*(v119 + 16);
    v12 = -1;
    do
    {
      if (v11 + v12 == -1)
      {
        goto LABEL_11;
      }

      if (++v12 >= *(v9 + 16))
      {
        __break(1u);
        goto LABEL_51;
      }

      v13 = v10 + 16;
      v14 = *(v10 - 8);
      result = (*(*v10 + 24))(v14);
      v10 = v13;
    }

    while (result != -1);
    v119 = 0;
    v120 = 0xE000000000000000;
    _StringGuts.grow(_:)(44);
    v8 = v120;
    v119 = v14;
    swift_getMetatypeMetadata();
    v15 = String.init<A>(reflecting:)();
    v17 = v16;

    v119 = v15;
    v120 = v17;
    MEMORY[0x26D69CDB0](0xD00000000000002ALL, 0x800000026C33D810);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
LABEL_11:

    v106(&v123, a4, v107);
    LOBYTE(v118) = *(v8 + 49);
    Evolution_Types.tracepoints(version:)(&v118, &v119);

    v18 = v119;
    v19 = *(v119 + 16);
    v119 = 0;
    v120 = 0;
    v121 = v19;
    v122 = 20;
    v105 = a4;
    if (v19)
    {
      v108 = 0;
      v20 = 0;
      v21 = v18 + 40;
      v22 = v116;
      while (1)
      {
        v24 = *(v21 - 8);
        v23 = *v21;
        v110 = v21;
        v25 = *(*v21 + 8);
        v114 = v25[9](v24, v25);
        v26 = v25[4](v24, v25);
        v28 = v26;
        v29 = v27;
        v30 = v22[12];
        v31 = *v30;
        if (*(*v30 + 16) && (v32 = specialized __RawDictionaryStorage.find<A>(_:)(v26, v27), (v33 & 1) != 0))
        {
          v112 = *(*(v31 + 56) + 4 * v32);
        }

        else
        {
          v34 = v20;
          v35 = specialized Trace_Handle.write<A>(attachment:)(v28, v29);
          v30 = v116[12];
          v36 = *v30;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v123 = *v30;
          *v30 = 0x8000000000000000;
          v112 = v35;
          v38 = v35;
          v20 = v34;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v38, v28, v29, isUniquelyReferenced_nonNull_native);
          v39 = *v30;
          *v30 = v123;
        }

        v40 = v25[5](v24, v25);
        v42 = v40;
        v43 = v41;
        v44 = *v30;
        if (*(*v30 + 16) && (v45 = specialized __RawDictionaryStorage.find<A>(_:)(v40, v41), (v46 & 1) != 0))
        {
          v47 = *(*(v44 + 56) + 4 * v45);

          v22 = v116;
        }

        else
        {
          v47 = specialized Trace_Handle.write<A>(attachment:)(v42, v43);
          v48 = v116[12];
          v49 = *v48;
          v50 = swift_isUniquelyReferenced_nonNull_native();
          v123 = *v48;
          *v48 = 0x8000000000000000;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v47, v42, v43, v50);
          v51 = *v48;
          *v48 = v123;
          v22 = v116;
        }

        v52 = Trace.Control.writtenOnce(type:lazy:flush:)(v24, 0, 0);
        result = (*(v23 + 16))(v24, v23);
        v53 = result;
        if (v20 == v121 || !v108)
        {
          result = specialized BufferAttachment.append_slow()();
        }

        v54 = v120;
        if (v120 < 0)
        {
          break;
        }

        v55 = v122;
        if ((v120 * v122) >> 64 != (v120 * v122) >> 63)
        {
          goto LABEL_52;
        }

        v108 = v119;
        v56 = (v119 + v120 * v122);
        *v56 = v114;
        v56[1] = v112;
        v56[2] = v47;
        v56[3] = v52;
        v56[4] = v53;
        v20 = v54 + 1;
        v120 = v54 + 1;
        v21 = v110 + 16;
        if (!--v19)
        {

          v57 = v121;
          v58 = v20;
          a4 = v105;
          v59 = v108;
          goto LABEL_29;
        }
      }

LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
      return result;
    }

    v57 = 0;
    v59 = 0;
    v58 = 0;
    v55 = 20;
    v22 = v116;
LABEL_29:
    v104 = specialized Trace_Handle.write<A>(attachment:)(v59, v58, v57, v55);
    v120 = 0;
    v106(&v118, a4, v107);
    v117 = *(v22[3] + 49);
    Evolution_Types.attachments(version:)(&v117, &v123);

    v60 = *(v123 + 16);
    if (v60)
    {
      v115 = 0;
      v61 = v123 + 40;
      while (1)
      {
        v62 = *(v61 - 8);
        v63 = *(*v61 + 8);
        v113 = v63[9](v62, v63);
        v64 = v63[4](v62, v63);
        v66 = v64;
        v67 = v65;
        v68 = v22[12];
        v69 = *v68;
        if (!*(*v68 + 16))
        {
          goto LABEL_34;
        }

        v70 = specialized __RawDictionaryStorage.find<A>(_:)(v64, v65);
        if (v71)
        {
          v111 = *(*(v69 + 56) + 4 * v70);
        }

        else
        {
LABEL_34:
          v72 = v59;
          v73 = specialized Trace_Handle.write<A>(attachment:)(v66, v67);
          v68 = v116[12];
          v74 = *v68;
          v75 = swift_isUniquelyReferenced_nonNull_native();
          v123 = *v68;
          *v68 = 0x8000000000000000;
          v111 = v73;
          v76 = v73;
          v59 = v72;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v76, v66, v67, v75);
          v77 = *v68;
          *v68 = v123;
        }

        v78 = v63[5](v62, v63);
        v80 = v78;
        v81 = v79;
        v82 = *v68;
        if (*(*v68 + 16) && (v83 = specialized __RawDictionaryStorage.find<A>(_:)(v78, v79), (v84 & 1) != 0))
        {
          v109 = *(*(v82 + 56) + 4 * v83);

          v22 = v116;
        }

        else
        {
          v85 = v60;
          v86 = specialized Trace_Handle.write<A>(attachment:)(v80, v81);
          v87 = v116[12];
          v88 = *v87;
          v89 = swift_isUniquelyReferenced_nonNull_native();
          v123 = *v87;
          *v87 = 0x8000000000000000;
          v109 = v86;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v86, v80, v81, v89);
          v90 = *v87;
          *v87 = v123;
          v22 = v116;
          v60 = v85;
        }

        result = Trace.Control.writtenOnce(type:lazy:flush:)(v62, 0, 0);
        v91 = result;
        if (v115 == v121 || !v59)
        {
          result = specialized BufferAttachment.append_slow()();
        }

        v92 = v120;
        if (v120 < 0)
        {
          goto LABEL_53;
        }

        v55 = v122;
        if ((v120 * v122) >> 64 != (v120 * v122) >> 63)
        {
          goto LABEL_54;
        }

        v59 = v119;
        v93 = (v119 + v120 * v122);
        *v93 = v113;
        v93[1] = v111;
        v93[2] = v109;
        v93[3] = v91;
        v93[4] = 0;
        v115 = v92 + 1;
        v120 = v92 + 1;
        v61 += 16;
        if (!--v60)
        {

          v57 = v121;
          goto LABEL_47;
        }
      }
    }

    v115 = 0;
LABEL_47:
    v94 = specialized Trace_Handle.write<A>(attachment:)(v59, v115, v57, v55);
    v95 = *(v107 + 16);
    v96 = v59;
    v97 = v95[3](v105, v95);
    v98 = v95[4](v105, v95);
    v100 = specialized Trace_Handle.writtenOnce(string:)(v98, v99);

    v101 = v95[5](v105, v95);
    v103 = specialized Trace_Handle.writtenOnce(string:)(v101, v102);

    result = specialized Trace_Handle.write<A>(_:omit:)(v97 | (v100 << 32), v103 | (v104 << 32), v94);
    if (v96)
    {
      return MEMORY[0x26D69EAB0](v96, -1, -1);
    }
  }

  return result;
}

uint64_t specialized BufferAttachment.append(_:)(uint64_t a1, int a2)
{
  result = v2[1];
  if (result == v2[2] || (v6 = *v2) == 0)
  {
    specialized BufferAttachment.append_slow()();
    v6 = *v2;
    result = v2[1];
  }

  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = v2[3];
    if ((result * v7) >> 64 == (result * v7) >> 63)
    {
      v8 = v6 + result * v7;
      *v8 = a1;
      *(v8 + 8) = a2;
      v2[1] = result + 1;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized BufferAttachment.append(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = v3[1];
  if (result == v3[2] || (v8 = *v3) == 0)
  {
    specialized BufferAttachment.append_slow()();
    v8 = *v3;
    result = v3[1];
  }

  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = v3[3];
    if ((result * v9) >> 64 == (result * v9) >> 63)
    {
      v10 = (v8 + result * v9);
      *v10 = a1;
      v10[1] = a2;
      v10[2] = a3;
      v3[1] = result + 1;
      return result;
    }
  }

  __break(1u);
  return result;
}

size_t Trace.Control.writeFields(of:)()
{
  v1 = v0;
  v24 = 0;
  if (AGTupleCount() != 1)
  {
    result = AGTupleCount();
    if ((result & 0x8000000000000000) == 0)
    {
      if (!result)
      {

        return specialized Trace_Handle.write<A>(attachment:)(0, 0, 20, 12);
      }

      v4 = 0;
      v21 = result;
      while (1)
      {
        v5 = AGTupleElementType();
        v22 = Trace.Control.writtenOnce(type:lazy:flush:)(v5, 0, 0);
        v6 = dispatch thunk of CustomStringConvertible.description.getter();
        v8 = v6;
        v9 = v7;
        v10 = **(v1 + 96);
        if (*(v10 + 16) && (v11 = specialized __RawDictionaryStorage.find<A>(_:)(v6, v7), (v12 & 1) != 0))
        {
          v13 = *(*(v10 + 56) + 4 * v11);
        }

        else
        {
          v13 = specialized Trace_Handle.write<A>(attachment:)(v8, v9);
          v14 = *(v1 + 96);
          v15 = *v14;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v23 = *v14;
          *v14 = 0x8000000000000000;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v13, v8, v9, isUniquelyReferenced_nonNull_native);
          v17 = *v14;
          *v14 = v23;
        }

        result = AGTupleElementOffset();
        if ((result & 0x8000000000000000) != 0)
        {
          break;
        }

        v18 = result;
        if (HIDWORD(result))
        {
          goto LABEL_21;
        }

        result = specialized BufferAttachment.append_slow()();
        v19 = v24;
        if (v24 < 0)
        {
          goto LABEL_22;
        }

        if ((v24 * 12) >> 64 != (12 * v24) >> 63)
        {
          goto LABEL_23;
        }

        ++v4;
        v20 = 12 * v24;
        *v20 = v13;
        *(v20 + 4) = v22;
        *(v20 + 8) = v18;
        ++v24;
        if (v21 == v4)
        {
          v2 = specialized Trace_Handle.write<A>(attachment:)(0, v19 + 1, 20, 12);
          MEMORY[0x26D69EAB0](0, -1, -1);
          return v2;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
    }

    __break(1u);
    return result;
  }

  MEMORY[0x28223BE20](1);
  AGTypeApplyFields2();
  return specialized Trace_Handle.write<A>(attachment:)(0, 0, 20, 12);
}

uint64_t closure #1 in Trace.Control.writeFields(of:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = Trace.Control.writtenOnce(type:lazy:flush:)(a3, 0, 0);
  v5 = String.init(cString:)();
  v7 = specialized Trace_Handle.writtenOnce(string:)(v5, v6);

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(a2))
  {
    specialized BufferAttachment.append(_:)(v7 | (v4 << 32), a2);
    return 1;
  }

  __break(1u);
  return result;
}

void static Trace.SwiftUI.types.getter(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport9Evolution_pXpGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport9Evolution_pXpGMR);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_26C338060;
  type metadata accessor for T_EndGraphUpdateV0(0);
  *(v2 + 32) = v3;
  *(v2 + 40) = &protocol witness table for T_EndGraphUpdateV0;
  type metadata accessor for T_NodeSetValueExtendedV0(0);
  *(v2 + 48) = v4;
  *(v2 + 56) = &protocol witness table for T_NodeSetValueExtendedV0;
  type metadata accessor for T_NodeMarkValueExtendedV0(0);
  *(v2 + 64) = v5;
  *(v2 + 72) = &protocol witness table for T_NodeMarkValueExtendedV0;
  type metadata accessor for T_GraphNeedsUpdateV0(0);
  *(v2 + 80) = v6;
  *(v2 + 88) = &protocol witness table for T_GraphNeedsUpdateV0;
  type metadata accessor for T_TimeSync(0);
  *(v2 + 96) = v7;
  *(v2 + 104) = &protocol witness table for T_TimeSync;
  type metadata accessor for T_BeginTrace(0);
  *(v2 + 112) = v8;
  *(v2 + 120) = &protocol witness table for T_BeginTrace;
  type metadata accessor for T_EndTrace(0);
  *(v2 + 128) = v9;
  *(v2 + 136) = &protocol witness table for T_EndTrace;
  type metadata accessor for T_BeginSubgraphUpdate(0);
  *(v2 + 144) = v10;
  *(v2 + 152) = &protocol witness table for T_BeginSubgraphUpdate;
  type metadata accessor for T_SubgraphTreeUpdate(0);
  *(v2 + 160) = v11;
  *(v2 + 168) = &protocol witness table for T_SubgraphTreeUpdate;
  type metadata accessor for T_EndSubgraphUpdate(0);
  *(v2 + 176) = v12;
  *(v2 + 184) = &protocol witness table for T_EndSubgraphUpdate;
  type metadata accessor for T_BeginNodeUpdate(0);
  *(v2 + 192) = v13;
  *(v2 + 200) = &protocol witness table for T_BeginNodeUpdate;
  type metadata accessor for T_EndNodeUpdate(0);
  *(v2 + 208) = v14;
  *(v2 + 216) = &protocol witness table for T_EndNodeUpdate;
  type metadata accessor for T_BeginValueUpdate(0);
  *(v2 + 224) = v15;
  *(v2 + 232) = &protocol witness table for T_BeginValueUpdate;
  type metadata accessor for T_EndValueUpdate(0);
  *(v2 + 240) = v16;
  *(v2 + 248) = &protocol witness table for T_EndValueUpdate;
  type metadata accessor for T_BeginGraphUpdate(0);
  *(v2 + 256) = v17;
  *(v2 + 264) = &protocol witness table for T_BeginGraphUpdate;
  type metadata accessor for T_EndGraphUpdate(0);
  *(v2 + 272) = v18;
  *(v2 + 280) = &protocol witness table for T_EndGraphUpdate;
  type metadata accessor for T_BeginGraphInvalidation(0);
  *(v2 + 288) = v19;
  *(v2 + 296) = &protocol witness table for T_BeginGraphInvalidation;
  type metadata accessor for T_EndGraphInvalidation(0);
  *(v2 + 304) = v20;
  *(v2 + 312) = &protocol witness table for T_EndGraphInvalidation;
  type metadata accessor for T_BeginModifyNode(0);
  *(v2 + 320) = v21;
  *(v2 + 328) = &protocol witness table for T_BeginModifyNode;
  type metadata accessor for T_EndModifyNode(0);
  *(v2 + 336) = v22;
  *(v2 + 344) = &protocol witness table for T_EndModifyNode;
  type metadata accessor for T_BeginEvent(0);
  *(v2 + 352) = v23;
  *(v2 + 360) = &protocol witness table for T_BeginEvent;
  type metadata accessor for T_EndEvent(0);
  *(v2 + 368) = v24;
  *(v2 + 376) = &protocol witness table for T_EndEvent;
  type metadata accessor for T_GraphCreated(0);
  *(v2 + 384) = v25;
  *(v2 + 392) = &protocol witness table for T_GraphCreated;
  type metadata accessor for T_GraphDestroy(0);
  *(v2 + 400) = v26;
  *(v2 + 408) = &protocol witness table for T_GraphDestroy;
  type metadata accessor for T_GraphNeedsUpdate(0);
  *(v2 + 416) = v27;
  *(v2 + 424) = &protocol witness table for T_GraphNeedsUpdate;
  type metadata accessor for T_SubgraphCreated(0);
  *(v2 + 432) = v28;
  *(v2 + 440) = &protocol witness table for T_SubgraphCreated;
  type metadata accessor for T_SubgraphDestroy(0);
  *(v2 + 448) = v29;
  *(v2 + 456) = &protocol witness table for T_SubgraphDestroy;
  type metadata accessor for T_SubgraphAddChild(0);
  *(v2 + 464) = v30;
  *(v2 + 472) = &protocol witness table for T_SubgraphAddChild;
  type metadata accessor for T_SubgraphRemoveChild(0);
  *(v2 + 480) = v31;
  *(v2 + 488) = &protocol witness table for T_SubgraphRemoveChild;
  type metadata accessor for T_NodeAdded(0);
  *(v2 + 496) = v32;
  *(v2 + 504) = &protocol witness table for T_NodeAdded;
  type metadata accessor for T_NodeAddEdge(0);
  *(v2 + 512) = v33;
  *(v2 + 520) = &protocol witness table for T_NodeAddEdge;
  type metadata accessor for T_NodeRemoveEdge(0);
  *(v2 + 528) = v34;
  *(v2 + 536) = &protocol witness table for T_NodeRemoveEdge;
  type metadata accessor for T_NodeSetEdgePending(0);
  *(v2 + 544) = v35;
  *(v2 + 552) = &protocol witness table for T_NodeSetEdgePending;
  type metadata accessor for T_NodeSetDirty(0);
  *(v2 + 560) = v36;
  *(v2 + 568) = &protocol witness table for T_NodeSetDirty;
  type metadata accessor for T_NodeSetPending(0);
  *(v2 + 576) = v37;
  *(v2 + 584) = &protocol witness table for T_NodeSetPending;
  type metadata accessor for T_NodeSetValue(0);
  *(v2 + 592) = v38;
  *(v2 + 600) = &protocol witness table for T_NodeSetValue;
  type metadata accessor for T_NodeMarkValue(0);
  *(v2 + 608) = v39;
  *(v2 + 616) = &protocol witness table for T_NodeMarkValue;
  type metadata accessor for T_IndirectNodeAdded(0);
  *(v2 + 624) = v40;
  *(v2 + 632) = &protocol witness table for T_IndirectNodeAdded;
  type metadata accessor for T_IndirectNodeSetSource(0);
  *(v2 + 640) = v41;
  *(v2 + 648) = &protocol witness table for T_IndirectNodeSetSource;
  type metadata accessor for T_IndirectNodeSetDependency(0);
  *(v2 + 656) = v42;
  *(v2 + 664) = &protocol witness table for T_IndirectNodeSetDependency;
  type metadata accessor for T_ProfileMark(0);
  *(v2 + 672) = v43;
  *(v2 + 680) = &protocol witness table for T_ProfileMark;
  type metadata accessor for T_RawTreeNode(0);
  *(v2 + 688) = v44;
  *(v2 + 696) = &protocol witness table for T_RawTreeNode;
  type metadata accessor for T_TreeValueNode(0);
  *(v2 + 704) = v45;
  *(v2 + 712) = &protocol witness table for T_TreeValueNode;
  type metadata accessor for T_ReuseEvent(0);
  *(v2 + 720) = v46;
  *(v2 + 728) = &protocol witness table for T_ReuseEvent;
  type metadata accessor for T_ReuseInternal(0);
  *(v2 + 736) = v47;
  *(v2 + 744) = &protocol witness table for T_ReuseInternal;
  type metadata accessor for T_ReuseViewInputsDifferent(0);
  *(v2 + 752) = v48;
  *(v2 + 760) = &protocol witness table for T_ReuseViewInputsDifferent;
  type metadata accessor for T_ReuseFailedTypeComparison(0);
  *(v2 + 768) = v49;
  *(v2 + 776) = &protocol witness table for T_ReuseFailedTypeComparison;
  type metadata accessor for T_ReuseCacheItemEvent(0);
  *(v2 + 784) = v50;
  *(v2 + 792) = &protocol witness table for T_ReuseCacheItemEvent;
  type metadata accessor for T_ReuseCacheItemWithID(0);
  *(v2 + 800) = v51;
  *(v2 + 808) = &protocol witness table for T_ReuseCacheItemWithID;
  type metadata accessor for T_ReuseIncrementalChildReuseAttempt(0);
  *(v2 + 816) = v52;
  *(v2 + 824) = &protocol witness table for T_ReuseIncrementalChildReuseAttempt;
  type metadata accessor for T_ReusePreventingType(0);
  *(v2 + 832) = v53;
  *(v2 + 840) = &protocol witness table for T_ReusePreventingType;
  type metadata accessor for T_ReuseInvalidSubgraph(0);
  *(v2 + 848) = v54;
  *(v2 + 856) = &protocol witness table for T_ReuseInvalidSubgraph;
  type metadata accessor for T_ReuseNeverMadeReusable(0);
  *(v2 + 864) = v55;
  *(v2 + 872) = &protocol witness table for T_ReuseNeverMadeReusable;
  type metadata accessor for T_ReuseBody(0);
  *(v2 + 880) = v56;
  *(v2 + 888) = &protocol witness table for T_ReuseBody;
  type metadata accessor for T_ReuseIncompatibleLists(0);
  *(v2 + 896) = v57;
  *(v2 + 904) = &protocol witness table for T_ReuseIncompatibleLists;
  type metadata accessor for T_ReuseUnaryElement(0);
  *(v2 + 912) = v58;
  *(v2 + 920) = &protocol witness table for T_ReuseUnaryElement;
  type metadata accessor for T_ObservableFired(0);
  *(v2 + 928) = v59;
  *(v2 + 936) = &protocol witness table for T_ObservableFired;
  type metadata accessor for T_TransactionBegin(0);
  *(v2 + 944) = v60;
  *(v2 + 952) = &protocol witness table for T_TransactionBegin;
  type metadata accessor for T_TransactionEnd(0);
  *(v2 + 960) = v61;
  *(v2 + 968) = &protocol witness table for T_TransactionEnd;
  type metadata accessor for T_TransactionEnqueue(0);
  *(v2 + 976) = v62;
  *(v2 + 984) = &protocol witness table for T_TransactionEnqueue;
  type metadata accessor for T_TransactionAppend(0);
  *(v2 + 992) = v63;
  *(v2 + 1000) = &protocol witness table for T_TransactionAppend;
  type metadata accessor for T_AnimationBegin(0);
  *(v2 + 1008) = v64;
  *(v2 + 1016) = &protocol witness table for T_AnimationBegin;
  type metadata accessor for T_AnimationEnd(0);
  *(v2 + 1024) = v65;
  *(v2 + 1032) = &protocol witness table for T_AnimationEnd;
  type metadata accessor for T_AnimationAttrUpdate(0);
  *(v2 + 1040) = v66;
  *(v2 + 1048) = &protocol witness table for T_AnimationAttrUpdate;
  type metadata accessor for T_AnimationScheduleTick(0);
  *(v2 + 1056) = v67;
  *(v2 + 1064) = &protocol witness table for T_AnimationScheduleTick;
  type metadata accessor for T_AnimationTick(0);
  *(v2 + 1072) = v68;
  *(v2 + 1080) = &protocol witness table for T_AnimationTick;
  type metadata accessor for T_AnimationRetarget(0);
  *(v2 + 1088) = v69;
  *(v2 + 1096) = &protocol witness table for T_AnimationRetarget;
  type metadata accessor for T_SetDeadline(0);
  *(v2 + 1104) = v70;
  *(v2 + 1112) = &protocol witness table for T_SetDeadline;
  type metadata accessor for T_PassedDeadline(0);
  *(v2 + 1120) = v71;
  *(v2 + 1128) = &protocol witness table for T_PassedDeadline;
  type metadata accessor for T_EndTreeWrite(0);
  *(v2 + 1136) = v72;
  *(v2 + 1144) = &protocol witness table for T_EndTreeWrite;
  type metadata accessor for T_BeginTreeWrite(0);
  *(v2 + 1152) = v73;
  *(v2 + 1160) = &protocol witness table for T_BeginTreeWrite;
  type metadata accessor for T_CompareFailed(0);
  *(v2 + 1168) = v74;
  *(v2 + 1176) = &protocol witness table for T_CompareFailed;
  type metadata accessor for T_ViewGraphRootValueChange(0);
  *(v2 + 1184) = v75;
  *(v2 + 1192) = &protocol witness table for T_ViewGraphRootValueChange;
  type metadata accessor for T_ViewGraphRootValueChangeV2(0);
  *(v2 + 1200) = v76;
  *(v2 + 1208) = &protocol witness table for T_ViewGraphRootValueChangeV2;
  type metadata accessor for T_ActionEnqueue(0);
  *(v2 + 1216) = v77;
  *(v2 + 1224) = &protocol witness table for T_ActionEnqueue;
  type metadata accessor for T_ActionStart(0);
  *(v2 + 1232) = v78;
  *(v2 + 1240) = &protocol witness table for T_ActionStart;
  type metadata accessor for T_ActionFinish(0);
  *(v2 + 1248) = v79;
  *(v2 + 1256) = &protocol witness table for T_ActionFinish;
  type metadata accessor for T_ActionGestureAttribute(0);
  *(v2 + 1264) = v80;
  *(v2 + 1272) = &protocol witness table for T_ActionGestureAttribute;
  type metadata accessor for T_InstantiateBegin(0);
  *(v2 + 1280) = v81;
  *(v2 + 1288) = &protocol witness table for T_InstantiateBegin;
  type metadata accessor for T_InstantiateEnd(0);
  *(v2 + 1296) = v82;
  *(v2 + 1304) = &protocol witness table for T_InstantiateEnd;
  type metadata accessor for T_UninstantiateBegin(0);
  *(v2 + 1312) = v83;
  *(v2 + 1320) = &protocol witness table for T_UninstantiateBegin;
  type metadata accessor for T_UninstantiateEnd(0);
  *(v2 + 1328) = v84;
  *(v2 + 1336) = &protocol witness table for T_UninstantiateEnd;
  type metadata accessor for T_AssignRootSubgraph(0);
  *(v2 + 1344) = v85;
  *(v2 + 1352) = &protocol witness table for T_AssignRootSubgraph;
  type metadata accessor for T_RecordNamedProperty(0);
  *(v2 + 1360) = v86;
  *(v2 + 1368) = &protocol witness table for T_RecordNamedProperty;
  type metadata accessor for T_DynamicPropertyChange(0);
  *(v2 + 1376) = v87;
  *(v2 + 1384) = &protocol witness table for T_DynamicPropertyChange;
  type metadata accessor for T_DynamicPropertiesChanged(0);
  *(v2 + 1392) = v88;
  *(v2 + 1400) = &protocol witness table for T_DynamicPropertiesChanged;
  *a1 = v2;
}

__n128 Trace.SwiftUI.storage.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  *(a1 + 64) = *(v1 + 64);
  *(a1 + 80) = v2;
  v3 = *(v1 + 112);
  *(a1 + 96) = *(v1 + 96);
  *(a1 + 112) = v3;
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v4;
  result = *(v1 + 32);
  v6 = *(v1 + 48);
  *(a1 + 32) = result;
  *(a1 + 48) = v6;
  return result;
}

__n128 Trace.SwiftUI.storage.setter(uint64_t a1)
{
  v2 = *(a1 + 80);
  *(v1 + 64) = *(a1 + 64);
  *(v1 + 80) = v2;
  v3 = *(a1 + 112);
  *(v1 + 96) = *(a1 + 96);
  *(v1 + 112) = v3;
  v4 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v4;
  result = *(a1 + 32);
  v6 = *(a1 + 48);
  *(v1 + 32) = result;
  *(v1 + 48) = v6;
  return result;
}

uint64_t Trace.SwiftUI.subgraphsNeedingUpdate.setter(uint64_t a1)
{
  v3 = *(v1 + 128);

  *(v1 + 128) = a1;
  return result;
}

uint64_t Trace.SwiftUI.debug.setter(uint64_t a1)
{
  v3 = *(v1 + 136);

  *(v1 + 136) = a1;
  return result;
}

Swift::Void __swiftcall Trace.SwiftUI.updateTreeSnapshots()()
{
  v2 = (v0 + 128);
  v1 = *(v0 + 128);
  if ((v1 & 0xC000000000000001) != 0)
  {
    if (v1 < 0)
    {
      v3 = *(v0 + 128);
    }

    if (!__CocoaSet.count.getter())
    {
      return;
    }
  }

  else if (!*(v1 + 16))
  {
    return;
  }

  specialized Trace_Handle.write<A>(_:omit:)(0);
  if (*(*(v0 + 24) + 12) != 1)
  {
    goto LABEL_59;
  }

  v55 = (v0 + 128);
  v56 = v0;
  v4 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v4 < 0)
    {
      v5 = *v2;
    }

    v6 = *v2;

    __CocoaSet.makeIterator()();
    type metadata accessor for AGSubgraphRef(0);
    lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type AGSubgraphRef and conformance AGSubgraphRef, type metadata accessor for AGSubgraphRef);
    Set.Iterator.init(_cocoa:)();
    v4 = v59;
    v7 = v60;
    v8 = v61;
    v9 = v62;
    v10 = v63;
  }

  else
  {
    v11 = -1 << *(v4 + 32);
    v7 = v4 + 56;
    v8 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = v13 & *(v4 + 56);
    v14 = *v2;

    v9 = 0;
  }

  if (v4 < 0)
  {
    goto LABEL_23;
  }

  while (1)
  {
    v15 = v9;
    v16 = v10;
    v17 = v9;
    if (!v10)
    {
      break;
    }

LABEL_21:
    v18 = (v16 - 1) & v16;
    v19 = *(*(v4 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v16)))));
    if (!v19)
    {
LABEL_27:
      outlined consume of Set<AGSubgraphRef>.Iterator._Variant();
      v21 = *v55;
      if ((*v55 & 0xC000000000000001) != 0)
      {
        if (v21 < 0)
        {
          v22 = *v55;
        }

        v23 = *v55;

        __CocoaSet.makeIterator()();
        type metadata accessor for AGSubgraphRef(0);
        lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type AGSubgraphRef and conformance AGSubgraphRef, type metadata accessor for AGSubgraphRef);
        Set.Iterator.init(_cocoa:)();
        v21 = v64;
        v24 = v65;
        v25 = v66;
        v26 = v67;
        v27 = v68;
      }

      else
      {
        v28 = -1 << *(v21 + 32);
        v24 = v21 + 56;
        v25 = ~v28;
        v29 = -v28;
        if (v29 < 64)
        {
          v30 = ~(-1 << v29);
        }

        else
        {
          v30 = -1;
        }

        v27 = v30 & *(v21 + 56);
        v31 = *v55;

        v26 = 0;
      }

      v32 = v56;
      v54[0] = v25;
      v33 = (v25 + 64) >> 6;
      if ((v21 & 0x8000000000000000) == 0)
      {
        goto LABEL_38;
      }

LABEL_44:
      while (2)
      {
        v39 = __CocoaSet.Iterator.next()();
        if (v39)
        {
          v57 = v39;
          type metadata accessor for AGSubgraphRef(0);
          swift_dynamicCast();
          v38 = v58;
          i = v26;
          v37 = v27;
          if (v58)
          {
            while (1)
            {
              if (!AGSubgraphIsValid())
              {
                goto LABEL_37;
              }

              v40 = *(v32 + 152);
              if (*(v40 + 16))
              {
                v41 = MEMORY[0x26D69DBA0](*(v40 + 40), v38);
                v42 = -1 << *(v40 + 32);
                v43 = v41 & ~v42;
                if ((*(v40 + 56 + ((v43 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v43))
                {
                  break;
                }
              }

LABEL_52:
              TreeRoot = AGSubgraphGetTreeRoot();
              if (!TreeRoot)
              {
                goto LABEL_37;
              }

              v54[1] = v54;
              v46 = MEMORY[0x28223BE20](TreeRoot);
              v53[2] = v38;
              v53[3] = v32;
              MEMORY[0x28223BE20](v46);
              v52[2] = v32;
              v47 = AGSubgraphGetTreeRoot();
              if (!v47)
              {
                goto LABEL_65;
              }

              v48 = v47;
              v49 = swift_allocObject();
              *(v49 + 16) = partial apply for closure #1 in writeTree #1 (root:) in writeTreeState(subgraph:handle:);
              *(v49 + 24) = v53;
              v50 = swift_allocObject();
              *(v50 + 16) = partial apply for closure #2 in writeTree #1 (root:) in writeTreeState(subgraph:handle:);
              *(v50 + 24) = v52;
              specialized closure #1 in closure #1 in static IterativeTreeTraversal.run(visitor:revisitor:start:_:revisitLeaf:backtraceCallback:)(partial apply for specialized thunk for @callee_guaranteed (@in_guaranteed A, @in_guaranteed B, @guaranteed IterativeTreeTraversal<A, B>) -> (), v50, partial apply for specialized thunk for @callee_guaranteed (@in_guaranteed A, @inout B, @inout IterativeTreeTraversal<A, B>) -> (), v49, 1, 0, 0, v48, 0, -1, 0);
              LOBYTE(v48) = swift_isEscapingClosureAtFileLocation();

              if (v48)
              {
                goto LABEL_63;
              }

              isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

              if (isEscapingClosureAtFileLocation)
              {
                goto LABEL_64;
              }

              v26 = i;
              v27 = v37;
              v32 = v56;
              if (v21 < 0)
              {
                goto LABEL_44;
              }

LABEL_38:
              v34 = v26;
              v35 = v27;
              for (i = v26; !v35; ++v34)
              {
                i = v34 + 1;
                if (__OFADD__(v34, 1))
                {
                  goto LABEL_62;
                }

                if (i >= v33)
                {
                  goto LABEL_58;
                }

                v35 = *(v24 + 8 * i);
              }

              v37 = (v35 - 1) & v35;
              v38 = *(*(v21 + 48) + ((i << 9) | (8 * __clz(__rbit64(v35)))));
              if (!v38)
              {
                goto LABEL_58;
              }
            }

            v44 = ~v42;
            while (*(*(v40 + 48) + 8 * v43) != v38)
            {
              v43 = (v43 + 1) & v44;
              if (((*(v40 + 56 + ((v43 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v43) & 1) == 0)
              {
                goto LABEL_52;
              }
            }

LABEL_37:

            v26 = i;
            v27 = v37;
            if (v21 < 0)
            {
              continue;
            }

            goto LABEL_38;
          }
        }

        break;
      }

LABEL_58:
      outlined consume of Set<AGSubgraphRef>.Iterator._Variant();
LABEL_59:
      specialized Set._Variant.removeAll(keepingCapacity:)(1);
      setNeedsUpdate = 0;
      specialized Trace_Handle.write<A>(_:omit:)(0);
      return;
    }

    while (1)
    {
      specialized Set._Variant.remove(_:)(v19);

      v9 = v17;
      v10 = v18;
      if ((v4 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_23:
      v20 = __CocoaSet.Iterator.next()();
      if (v20)
      {
        v58 = v20;
        type metadata accessor for AGSubgraphRef(0);
        swift_dynamicCast();
        v19 = v64;
        v17 = v9;
        v18 = v10;
        if (v64)
        {
          continue;
        }
      }

      goto LABEL_27;
    }
  }

  while (1)
  {
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v17 >= ((v8 + 64) >> 6))
    {
      goto LABEL_27;
    }

    v16 = *(v7 + 8 * v17);
    ++v15;
    if (v16)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
}

void Trace.SwiftUI.added()()
{
  if (*(v0 + 192))
  {
    __break(1u);
  }

  else
  {
    v1 = swift_slowAlloc();
    v2 = v1;
    *(v0 + 192) = v1;
    *(v1 + 224) = 0u;
    *(v1 + 240) = 0u;
    *(v1 + 256) = 0u;
    *(v1 + 272) = 0u;
    *(v1 + 288) = 0u;
    *(v1 + 304) = 0u;
    *(v1 + 320) = 0u;
    *v1 = 4;
    *(v1 + 8) = @objc begin_trace(raw:_:);
    *(v1 + 16) = @objc end_trace(raw:_:);
    *(v1 + 24) = @objc begin_subgraph_update(raw:_:_:);
    *(v1 + 32) = @objc end_subgraph_update(raw:_:);
    *(v1 + 40) = @objc begin_node_update(raw:_:);
    *(v1 + 48) = @objc end_node_update(raw:_:_:);
    *(v1 + 56) = @objc begin_value_update(raw:_:);
    *(v1 + 64) = @objc end_value_update(raw:_:_:);
    *(v1 + 72) = @objc begin_graph_update(raw:_:);
    *(v1 + 80) = @objc end_graph_update(raw:_:);
    *(v1 + 88) = @objc begin_graph_invalidation(raw:_:_:);
    *(v1 + 96) = @objc end_graph_invalidation(raw:_:_:);
    *(v1 + 104) = @objc begin_modify_node(raw:_:);
    *(v1 + 112) = @objc end_modify_node(raw:_:);
    *(v1 + 120) = @objc begin_event(raw:_:_:);
    *(v1 + 128) = @objc end_event(raw:_:_:);
    *(v1 + 136) = @objc graph_created(raw:_:);
    *(v1 + 144) = @objc graph_destroy(raw:_:);
    *(v1 + 152) = @objc graph_needs_update(raw:_:);
    *(v1 + 160) = @objc subgraph_created(raw:_:);
    *(v1 + 168) = @objc subgraph_destroy(raw:_:);
    *(v1 + 176) = @objc subgraph_add_child(raw:_:_:);
    *(v1 + 184) = @objc subgraph_remove_child(raw:_:_:);
    *(v1 + 192) = @objc node_added(raw:_:);
    *(v1 + 200) = @objc node_add_edge(raw:_:_:_:);
    *(v1 + 208) = @objc node_remove_edge(raw:_:_:);
    *(v1 + 216) = @objc node_set_edge_pending(raw:_:_:_:);
    *(v1 + 288) = @objc custom_event(raw:_:_:_:_:);
    *(v1 + 232) = @objc node_set_pending(raw:_:_:);
    *(v1 + 240) = @objc node_set_value(raw:_:_:);
    *(v1 + 248) = @objc node_mark_value(raw:_:);
    *(v1 + 256) = @objc indirect_node_added(raw:_:);
    *(v1 + 264) = @objc indirect_node_set_source(raw:_:_:);
    *(v1 + 272) = @objc indirect_node_set_dependency(raw:_:_:);
    if (*(*(v0 + 24) + 49) == 1)
    {
      *(v1 + 280) = @objc profile_mark(raw:_:);
      *(v1 + 312) = @objc set_deadline(raw:_:);
      *(v1 + 320) = @objc passed_deadline(raw:);
      *(v1 + 328) = @objc compare_failed(raw:_:state:);
    }

    v3 = static SwiftUITrace.registerAtExit;
    v4 = *(v0 + 160);
    if ((v3 & 1) == 0)
    {
      atexit(@objc closure #1 in Trace.SwiftUI.added());
      static SwiftUITrace.registerAtExit = 1;
    }

    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    *(v5 + 24) = v2;
  }
}

void @objc begin_trace(raw:_:)(uint64_t a1, void *a2)
{
  v2 = a2;
  AGSubgraphSetShouldRecordTree();
  specialized Trace_Handle.write<A>(_:omit:)(v2, 0, 0, 0);
}

void @objc end_trace(raw:_:)(uint64_t a1, void *a2)
{
  v5 = a2;
  Trace.SwiftUI.updateTreeSnapshots()();
  v3 = *(a1 + 48);
  if (v3)
  {
    v4 = *(a1 + 48);
    os_unfair_lock_lock_with_options();
    Trace.Control.flushWrittenTypes()();
    os_unfair_lock_unlock(v3);
    specialized Trace_Handle.write<A>(_:omit:)(v5, 0, 0, 0);
  }

  else
  {
    __break(1u);
  }
}

void @objc end_subgraph_update(raw:_:)(uint64_t a1, void *a2)
{
  v3 = a2;
  specialized Trace_Handle.write<A>(_:omit:)(a2, 0);
  Trace.SwiftUI.updateTreeSnapshots()();
}

void @objc end_node_update(raw:_:_:)(uint64_t a1, unsigned int a2, int a3)
{
  v4 = 0x100000000;
  if (!a3)
  {
    v4 = 0;
  }

  specialized Trace_Handle.write<A>(_:omit:)(v4 | a2, 0);
  v5 = *(a1 + 144);
  v6 = __OFSUB__(v5, 1);
  v7 = v5 - 1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    *(a1 + 144) = v7;
    if (!v7)
    {
      Trace.SwiftUI.updateTreeSnapshots()();
    }
  }
}

void @objc end_value_update(raw:_:_:)(uint64_t a1, unsigned int a2, int a3)
{
  v3 = 0x100000000;
  if (!a3)
  {
    v3 = 0;
  }

  specialized Trace_Handle.write<A>(_:omit:)(v3 | a2, 0);
}

void @objc begin_graph_update(raw:_:)(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 168) & 1) == 0)
  {
    *(a1 + 168) |= 1u;
  }

  specialized Trace_Handle.write<A>(_:omit:)(a2, 0);
}

void @objc end_graph_update(raw:_:)(uint64_t a1, void *a2)
{
  if (*(a1 + 168))
  {
    *(a1 + 168) &= ~1u;
  }

  v3 = *(*(a1 + 24) + 49);
  v9 = a2;
  if (v3)
  {
    specialized Trace_Handle.write<A>(_:omit:)(a2, 0);
  }

  else
  {
    backtrace()();
    v8 = specialized Trace_Handle.write<A>(attachment:)(v4, v5, v6, v7);
    specialized Trace_Handle.write<A>(_:omit:)(a2, v8, 0);
  }

  Trace.SwiftUI.updateTreeSnapshots()();
}

void @objc begin_event(raw:_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = String.init(cString:)();
  v5 = specialized Trace_Handle.write<A>(attachment:)(v3, v4);

  specialized Trace_Handle.write<A>(_:omit:)(v5 | (a2 << 32), 0);
}

uint64_t @objc end_event(raw:_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = String.init(cString:)();
  v5 = specialized Trace_Handle.write<A>(attachment:)(v3, v4);

  return specialized Trace_Handle.write<A>(_:omit:)(v5 | (a2 << 32));
}

void @objc graph_needs_update(raw:_:)(uint64_t a1, void *a2)
{
  if (*(*(a1 + 24) + 49))
  {
    specialized Trace_Handle.write<A>(_:omit:)(a2, 0);
  }

  else
  {
    v8 = a2;
    backtrace()();
    v7 = specialized Trace_Handle.write<A>(attachment:)(v3, v4, v5, v6);
    specialized Trace_Handle.write<A>(_:omit:)(a2, v7, 0);
  }
}

void @objc subgraph_created(raw:_:)(uint64_t a1, void *a2)
{
  v2 = a2;
  specialized Set._Variant.insert(_:)(&v3, v2);

  setNeedsUpdate = 1;
  specialized Trace_Handle.write<A>(_:omit:)(v2, 0, 0);
}

void @objc subgraph_destroy(raw:_:)(uint64_t a1, void *a2)
{
  v3 = a2;
  closure #1 in subgraph_destroy(raw:_:)(a1, v3, v3);
}

void @objc subgraph_add_child(raw:_:_:)(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  closure #1 in subgraph_add_child(raw:_:_:)(a1, v5, v6);
}

uint64_t @objc subgraph_remove_child(raw:_:_:)(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  specialized Set._Variant.insert(_:)(&v6, v4);

  setNeedsUpdate = 1;
  return specialized Trace_Handle.write<A>(_:omit:)(v4, a3);
}

void node_added(raw:_:)(uint64_t a1, uint64_t a2)
{
  v4 = AGGraphGetAttributeSubgraph();

  v5 = AGGraphGetAttributeSubgraph();
  specialized Set._Variant.insert(_:)(&v13, v5);

  setNeedsUpdate = 1;
  v6 = *(a1 + 48);
  if (v6)
  {
    v7 = *AGGraphGetAttributeInfo();
    os_unfair_lock_lock_with_options();
    v8 = Trace.Control.writtenOnce(type:lazy:flush:)(v7, 1, 1u);
    os_unfair_lock_unlock(v6);
    v9 = *(a1 + 48);
    if (v9)
    {
      v10 = *(AGGraphGetAttributeInfo() + 8);
      os_unfair_lock_lock_with_options();
      v11 = Trace.Control.writtenOnce(type:lazy:flush:)(v10, 1, 1u);
      os_unfair_lock_unlock(v9);
      ValueState = AGGraphGetValueState();
      specialized Trace_Handle.write<A>(_:omit:)(v4, ValueState, v8 << 32, v11 | (a2 << 32));
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t @objc node_set_pending(raw:_:_:)(uint64_t a1, unsigned int a2, int a3)
{
  v3 = 0x100000000;
  if (!a3)
  {
    v3 = 0;
  }

  return specialized Trace_Handle.write<A>(_:omit:)(v3 | a2);
}

void @objc node_mark_value(raw:_:)(uint64_t a1, uint64_t a2)
{
  if (*(*(a1 + 24) + 49))
  {
    specialized Trace_Handle.write<A>(_:omit:)(a2, 0);
  }

  else
  {
    if (*(a1 + 168))
    {
      v8 = 0;
    }

    else
    {
      v2 = a2;
      backtrace()();
      v7 = specialized Trace_Handle.write<A>(attachment:)(v3, v4, v5, v6);
      LODWORD(a2) = v2;
      v8 = v7 << 32;
    }

    specialized Trace_Handle.write<A>(_:omit:)(v8 | a2);
  }
}

uint64_t @objc indirect_node_added(raw:_:)(uint64_t a1, int a2)
{
  v3 = AGGraphGetAttributeSubgraph();
  specialized Set._Variant.insert(_:)(&v7, v3);

  setNeedsUpdate = 1;
  IndirectAttribute = AGGraphGetIndirectAttribute();
  v5 = AGGraphGetAttributeSubgraph();

  LODWORD(v7) = IndirectAttribute;
  *(&v7 + 4) = v5;
  HIDWORD(v7) = a2;
  return specialized Trace_Handle.write<A>(_:omit:)(v7, *(&v7 + 1));
}

void @objc profile_mark(raw:_:)()
{
  v0 = String.init(cString:)();
  v2 = specialized Trace_Handle.write<A>(attachment:)(v0, v1);

  specialized Trace_Handle.write<A>(_:omit:)(v2, 0);
}

uint64_t closure #2 in Trace.SwiftUI.added()(uint64_t a1)
{
  specialized Trace_Handle.write<A>(_:omit:)(*(a1 + 160), 1, 0, 0);
  prepareTrace = 1;
  result = AGGraphPrepareTrace();
  prepareTrace = 0;
  v3 = *(a1 + 48);
  if (v3)
  {
    v4 = *(a1 + 48);
    os_unfair_lock_lock_with_options();
    Trace.Control.flushWrittenTypes()();
    os_unfair_lock_unlock(v3);
    specialized Trace_Handle.write<A>(_:omit:)(*(a1 + 160), 0, 0, 0);
    result = AGGraphAddTrace();
    *(a1 + 176) = result;
    *(a1 + 184) = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void closure #1 in Trace.SwiftUI.finalize()(uint64_t a1)
{
  Transaction.synchronized<A>(_:)();
  if (*(*(*a1 + 32) + 56))
  {
    CircularBuffer.Transaction.commit()();
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall Trace.SwiftUI.deallocate()()
{
  v1 = *(v0 + 128);
  if ((v1 & 0xC000000000000001) != 0)
  {
    if (v1 < 0)
    {
      v2 = *(v0 + 128);
    }

    if (!__CocoaSet.count.getter())
    {
      goto LABEL_5;
    }

LABEL_10:
    __break(1u);
    return;
  }

  if (*(v1 + 16))
  {
    goto LABEL_10;
  }

LABEL_5:
  Trace_Handle_Storage.deallocate()();
  if (*(v0 + 192))
  {

    JUMPOUT(0x26D69EAB0);
  }
}

uint64_t (*protocol witness for Trace_Handle.added() in conformance Trace.SwiftUI())(void *a1)
{
  Trace.SwiftUI.added()();
  v1 = v0;
  v2 = swift_allocObject();
  *(v2 + 16) = partial apply for closure #2 in Trace.SwiftUI.added();
  *(v2 + 24) = v1;
  return partial apply for thunk for @escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ();
}

void protocol witness for Trace_Handle.flushWrittenTypes() in conformance Trace.SwiftUI()
{
  v1 = *(v0 + 48);
  if (v1)
  {
    v2 = *(v0 + 48);
    os_unfair_lock_lock_with_options();
    Trace.Control.flushWrittenTypes()();

    os_unfair_lock_unlock(v1);
  }

  else
  {
    __break(1u);
  }
}

void CircularBuffer.init<A>(consumer:stats:sync:)(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v11 = dispatch_semaphore_create(6);
  v12 = swift_slowAlloc();
  *v12 = v11;
  v13 = closure #1 in CircularBuffer.init<A>(consumer:stats:sync:)();
  v15 = v14;
  v26[3] = a4;
  v26[4] = a5;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v26);
  v17 = *(a4 - 8);
  (*(v17 + 16))(boxed_opaque_existential_1Tm, a1, a4);
  v18 = swift_slowAlloc();
  *v18 = 0;
  *(v18 + 4) = 0;
  os_unfair_lock_lock_with_options();
  os_unfair_lock_assert_owner(v18);
  if (*(v18 + 5))
  {
    __break(1u);
  }

  else
  {
    v23 = v12;
    v24 = a6;
    v19 = a2;
    outlined init with copy of Aggregate_AccessorProtocol(v26, v18 + 8);
    *(v18 + 5) = 1;
    os_unfair_lock_unlock(v18);
    __swift_destroy_boxed_opaque_existential_1(v26);
    v20 = MEMORY[0x277D84F90];
    if (v15)
    {
      v21 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC21SwiftUITracingSupport08CircularC0V0C0V_Tt1g5(v15, 0);
      memcpy(v21 + 4, v13, 32 * v15);
    }

    else
    {
      v21 = MEMORY[0x277D84F90];
    }

    v22 = swift_slowAlloc();
    *v22 = 0;
    *(v22 + 4) = 0;
    os_unfair_lock_lock_with_options();
    os_unfair_lock_assert_owner(v22);
    if ((*(v22 + 5) & 1) == 0)
    {
      *(v22 + 8) = v13;
      *(v22 + 16) = v15;
      *(v22 + 24) = v18;
      *(v22 + 32) = v19;
      *(v22 + 40) = v21;
      *(v22 + 48) = v20;
      *(v22 + 56) = v20;
      *(v22 + 64) = 256;
      *(v22 + 66) = a3 & 1;
      *(v22 + 5) = 1;
      os_unfair_lock_unlock(v22);
      (*(v17 + 8))(a1, a4);
      *v24 = v23;
      v24[1] = v22;
      return;
    }
  }

  __break(1u);
}

uint64_t Trace.HandleBox.type.getter()
{
  result = *v0;
  v2 = v0[1];
  return result;
}

uint64_t Trace.HandleBox.type.setter(uint64_t result, uint64_t a2)
{
  *v2 = result;
  v2[1] = a2;
  return result;
}

uint64_t Trace.rootHandles.getter()
{
  result = *(v0 + 80);
  v2 = *(v0 + 88);
  return result;
}

uint64_t Trace.rootHandles.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 80) = result;
  *(v2 + 88) = a2;
  return result;
}

uint64_t Trace.table.setter(uint64_t a1)
{
  v3 = *(v1 + 96);

  *(v1 + 96) = a1;
  return result;
}

BOOL Trace.tracing<A>(handle:)(_BOOL8 result)
{
  v2 = *(v1 + 92) + 1;
  v3 = *(v1 + 80);
  while (1)
  {
    if (!--v2)
    {
      return v2 != 0;
    }

    if (!*(v1 + 80))
    {
      break;
    }

    v5 = *v3;
    v3 += 3;
    v4 = v5;
    if (v5)
    {
      v6 = v4 == result;
    }

    else
    {
      v6 = 0;
    }

    if (v6)
    {
      return v2 != 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t Trace.subscript.read(uint64_t result, uint64_t a2, ValueMetadata *a3)
{
  v4 = *(v3 + 80);
  v5 = *(v3 + 92);
  if (a3 != &type metadata for Trace.Control)
  {
    v6 = *(v3 + 96);
    if (!*(v6 + 16))
    {
LABEL_10:
      __break(1u);
      goto LABEL_11;
    }

    result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v7 & 1) == 0)
    {
LABEL_11:
      __break(1u);
      goto LABEL_12;
    }

    v8 = *(*(v6 + 56) + 8 * result);
    if (v8 < v5)
    {
      goto LABEL_5;
    }

LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v8 = 0;
  if (!*(v3 + 92))
  {
    goto LABEL_9;
  }

LABEL_5:
  if (!v4)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = (v4 + 24 * v8);
  if (*v9)
  {
    v10 = v9[2];
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    UnsafeMutableRawPointer.subscript.getter(AssociatedTypeWitness, v10);
    return EventTreeStats.count.modify;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t Trace.subscript.read(ValueMetadata **a1, uint64_t a2, ValueMetadata *a3)
{
  Description = a3[-1].Description;
  *a1 = a3;
  a1[1] = Description;
  v7 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(Description[4].Kind);
  }

  a1[2] = v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  if (v7)
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(*(*(AssociatedTypeWitness - 8) + 64));
  }

  v12 = result;
  a1[3] = result;
  v13 = *(v3 + 80);
  v14 = *(v3 + 92);
  if (a3 != &type metadata for Trace.Control)
  {
    v15 = *(v3 + 96);
    if (!*(v15 + 16))
    {
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v16 & 1) == 0)
    {
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v17 = *(*(v15 + 56) + 8 * result);
    if (v17 < v14)
    {
      goto LABEL_11;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = 0;
  if (!*(v3 + 92))
  {
    goto LABEL_15;
  }

LABEL_11:
  if (!v13)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v18 = (v13 + 24 * v17);
  if (*v18)
  {
    v19 = UnsafeMutableRawPointer.subscript.getter(AssociatedTypeWitness, v18[2]);
    (*(v10 + 16))(v12, v19, AssociatedTypeWitness);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 48))(AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v10 + 8))(v12, AssociatedTypeWitness);
    return Trace.subscript.read;
  }

LABEL_19:
  __break(1u);
  return result;
}

void Trace.subscript.read(void *a1)
{
  v2 = a1[2];
  v1 = a1[3];
  (*(a1[1] + 8))(v2, *a1);
  free(v1);

  free(v2);
}

uint64_t (*Trace.subscript.modify(uint64_t *a1, uint64_t a2, ValueMetadata *a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  *(v6 + 64) = Trace.subscript.modify(v6, a2, a3);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = *(AssociatedConformanceWitness + 64);
  v10 = swift_checkMetadataState();
  *(v7 + 72) = v9(v7 + 32, v10, AssociatedConformanceWitness);
  return Trace.subscript.modify;
}

uint64_t Trace.handle<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 92) + 1;
  v5 = *(v2 + 80);
  do
  {
    if (!--v4)
    {
      goto LABEL_13;
    }

    if (!*(v2 + 80))
    {
      __break(1u);
LABEL_13:
      _StringGuts.grow(_:)(16);

      v14 = _typeName(_:qualified:)();
      MEMORY[0x26D69CDB0](v14);

      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    v6 = v5 + 3;
    v7 = *v5;
    if (v7)
    {
      v8 = v7 == a1;
    }

    else
    {
      v8 = 0;
    }

    v5 = v6;
  }

  while (!v8);
  v9 = *(v6 - 1);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = UnsafeMutableRawPointer.subscript.getter(AssociatedTypeWitness, v9);
  v12 = *(*(AssociatedTypeWitness - 8) + 16);

  return v12(a2, v11, AssociatedTypeWitness);
}

uint64_t Trace.subscript.getter@<X0>(uint64_t result@<X0>, ValueMetadata *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(v3 + 80);
  v6 = *(v3 + 92);
  if (a2 != &type metadata for Trace.Control)
  {
    v7 = *(v3 + 96);
    if (!*(v7 + 16))
    {
LABEL_12:
      __break(1u);
      goto LABEL_13;
    }

    result = specialized __RawDictionaryStorage.find<A>(_:)(result);
    if ((v8 & 1) == 0)
    {
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    v9 = *(*(v7 + 56) + 8 * result);
    if (v9 < v6)
    {
      goto LABEL_5;
    }

LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = 0;
  if (!*(v3 + 92))
  {
    goto LABEL_11;
  }

LABEL_5:
  if (!v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v10 = (v5 + 24 * v9);
  if (!*v10)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v11 = v10[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = UnsafeMutableRawPointer.subscript.getter(AssociatedTypeWitness, v11);
  v14 = *(*(AssociatedTypeWitness - 8) + 16);

  return v14(a3, v13, AssociatedTypeWitness);
}

uint64_t Trace.subscript.modify(uint64_t result, uint64_t a2, ValueMetadata *a3)
{
  v4 = *(v3 + 80);
  v5 = *(v3 + 92);
  if (a3 != &type metadata for Trace.Control)
  {
    v6 = *(v3 + 96);
    if (!*(v6 + 16))
    {
LABEL_10:
      __break(1u);
      goto LABEL_11;
    }

    result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v7 & 1) == 0)
    {
LABEL_11:
      __break(1u);
      goto LABEL_12;
    }

    v8 = *(*(v6 + 56) + 8 * result);
    if (v8 < v5)
    {
      goto LABEL_5;
    }

LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v8 = 0;
  if (!*(v3 + 92))
  {
    goto LABEL_9;
  }

LABEL_5:
  if (!v4)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = (v4 + 24 * v8);
  if (*v9)
  {
    v10 = v9[2];
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    UnsafeMutableRawPointer.subscript.getter(AssociatedTypeWitness, v10);
    return EventTreeStats.count.modify;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t Trace.subscript.getter@<X0>(uint64_t a1@<X0>, ValueMetadata *a2@<X1>, uint64_t a3@<X8>)
{
  v20[1] = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 64);
  result = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v11 = v20 - v10;
  v12 = *(v3 + 80);
  v13 = *(v3 + 92);
  if (a2 != &type metadata for Trace.Control)
  {
    v14 = *(v3 + 96);
    if (!*(v14 + 16))
    {
LABEL_10:
      __break(1u);
      goto LABEL_11;
    }

    result = specialized __RawDictionaryStorage.find<A>(_:)(a1);
    if ((v15 & 1) == 0)
    {
LABEL_11:
      __break(1u);
      goto LABEL_12;
    }

    v16 = *(*(v14 + 56) + 8 * result);
    if (v16 < v13)
    {
      goto LABEL_5;
    }

LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v16 = 0;
  if (!*(v3 + 92))
  {
    goto LABEL_9;
  }

LABEL_5:
  if (!v12)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v17 = (v12 + 24 * v16);
  if (*v17)
  {
    v18 = UnsafeMutableRawPointer.subscript.getter(AssociatedTypeWitness, v17[2]);
    (*(v7 + 16))(v11, v18, AssociatedTypeWitness);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 48))(AssociatedTypeWitness, AssociatedConformanceWitness);
    return (*(v7 + 8))(v11, AssociatedTypeWitness);
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t Trace.subscript.setter(uint64_t result, uint64_t a2, ValueMetadata *a3)
{
  v5 = result;
  v6 = *(v3 + 80);
  v7 = *(v3 + 92);
  if (a3 != &type metadata for Trace.Control)
  {
    v8 = *(v3 + 96);
    if (!*(v8 + 16))
    {
LABEL_10:
      __break(1u);
      goto LABEL_11;
    }

    result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v9 & 1) == 0)
    {
LABEL_11:
      __break(1u);
      goto LABEL_12;
    }

    v10 = *(*(v8 + 56) + 8 * result);
    if (v10 < v7)
    {
      goto LABEL_5;
    }

LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v10 = 0;
  if (!*(v3 + 92))
  {
    goto LABEL_9;
  }

LABEL_5:
  if (!v6)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v11 = (v6 + 24 * v10);
  if (*v11)
  {
    v12 = v11[2];
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    UnsafeMutableRawPointer.subscript.getter(AssociatedTypeWitness, v12);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v15 = (*(AssociatedConformanceWitness + 64))(v18, AssociatedTypeWitness, AssociatedConformanceWitness);
    Description = a3[-1].Description;
    Description[3](v17, v5, a3);
    v15(v18, 0);
    return (Description[1])(v5, a3);
  }

LABEL_13:
  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = *(v3 + 80);
  v6 = *(v3 + 92);
  if (a3 != &type metadata for Trace.Control)
  {
    v7 = *(v3 + 96);
    if (!*(v7 + 16))
    {
LABEL_12:
      __break(1u);
      goto LABEL_13;
    }

    result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v8 & 1) == 0)
    {
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    v9 = *(*(v7 + 56) + 8 * result);
    if (v9 < v6)
    {
      goto LABEL_5;
    }

LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = 0;
  if (!*(v3 + 92))
  {
    goto LABEL_11;
  }

LABEL_5:
  if (!v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v10 = (v5 + 24 * v9);
  if (!*v10)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v11 = v10[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = UnsafeMutableRawPointer.subscript.getter(AssociatedTypeWitness, v11);
  v14 = *(*(AssociatedTypeWitness - 8) + 40);

  return v14(v13, v4, AssociatedTypeWitness);
}

uint64_t Trace.index<A>(of:)(uint64_t result, ValueMetadata *a2)
{
  if (a2 == &type metadata for Trace.Control)
  {
    return 0;
  }

  v3 = *(v2 + 96);
  if (*(v3 + 16))
  {
    result = specialized __RawDictionaryStorage.find<A>(_:)(result);
    if (v4)
    {
      return *(*(v3 + 56) + 8 * result);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t Trace.remove<A>(box:type:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = *(a3 - 8);
  v6 = *(v33 + 64);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v7 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = UnsafeMutableRawPointer.subscript.getter(AssociatedTypeWitness, v10);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v32 = *(AssociatedConformanceWitness + 64);
  v14 = v32(v34, AssociatedTypeWitness, AssociatedConformanceWitness);
  v15 = (*(a4 + 80))(a3, a4);
  v14(v34, 0);
  v15(v12);

  v16 = v32(v34, AssociatedTypeWitness, AssociatedConformanceWitness);
  v17 = v33;
  v18 = v16;
  (*(*(a4 + 8) + 8))(a3, *(a4 + 8));
  v18(v34, 0);
  v31 = *(AssociatedConformanceWitness + 48);
  v32 = v12;
  v19 = AssociatedConformanceWitness;
  v31(AssociatedTypeWitness, AssociatedConformanceWitness);
  v20 = *(a4 + 48);
  v20(v34, a3, a4);
  v21 = *(v17 + 8);
  v33 = v17 + 8;
  v30 = v21;
  v21(v9, a3);
  if (v35 == 1)
  {
    v28 = v19;
    v27 = v20;
    v22 = v31;
    v31(AssociatedTypeWitness, v19);
    v27(v34, a3, a4);
    v23 = v30;
    v30(v9, a3);
    v19 = v28;
    v22(AssociatedTypeWitness, v28);
    v20 = v27;
    v27(v34, a3, a4);
    v23(v9, a3);
    MEMORY[0x26D69EAB0](v34[4], -1, -1);
  }

  v24 = *(v29 + 72);
  v31(AssociatedTypeWitness, v19);
  v20(v34, a3, a4);
  result = (v30)(v9, a3);
  if (__OFADD__(*v24, v36))
  {
    __break(1u);
  }

  else
  {
    *v24 += v36;
    v26 = v32;
    (*(*(v19 + 8) + 8))(AssociatedTypeWitness);
    UnsafeMutablePointer.deinitialize(count:)();
    return MEMORY[0x26D69D370](v26, AssociatedTypeWitness);
  }

  return result;
}

Swift::Void __swiftcall CircularBuffer.deallocate()()
{
  v1 = v0;
  v2 = *(v0 + 8);
  os_unfair_lock_lock_with_options();
  v3 = *(v2 + 24);
  os_unfair_lock_unlock(v2);
  os_unfair_lock_lock_with_options();
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  v6 = __swift_project_boxed_opaque_existential_1((v3 + 8), v4);
  v7 = *(v4 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10);
  os_unfair_lock_unlock(v3);
  v11 = (*(v5 + 32))(v4, v5);
  (*(v7 + 8))(v10, v4);
  v12 = swift_allocObject();
  *(v12 + 16) = v1;
  v13 = swift_allocObject();
  *(v13 + 16) = partial apply for closure #1 in CircularBuffer.deallocate();
  *(v13 + 24) = v12;
  v22 = _sIg_Ieg_TRTA_0;
  v23 = v13;
  aBlock = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = thunk for @escaping @callee_guaranteed () -> ();
  v21 = &block_descriptor_7;
  v14 = _Block_copy(&aBlock);

  dispatch_sync(v11, v14);
  _Block_release(v14);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_8;
  }

  isEscapingClosureAtFileLocation = *(v1 + 8);
  os_unfair_lock_lock_with_options();
  closure #2 in CircularBuffer.deallocate()((isEscapingClosureAtFileLocation + 8));
  os_unfair_lock_unlock(isEscapingClosureAtFileLocation);
  v16 = *v1;
  if (!*v1)
  {
LABEL_9:
    aBlock = 0;
    v19 = 0xE000000000000000;
    _StringGuts.grow(_:)(25);
    MEMORY[0x26D69CDB0](0xD000000000000017, 0x800000026C33B600);
    v17 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport6UniqueVySo21OS_dispatch_semaphoreCGMd, &_s21SwiftUITracingSupport6UniqueVySo21OS_dispatch_semaphoreCGMR);
    _print_unlocked<A, B>(_:_:)();
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  MEMORY[0x26D69EAB0](v16, -1, -1);
  *v1 = 0;
  v13 = *(v1 + 8);
  if (!v13)
  {
LABEL_8:
    __break(1u);

    os_unfair_lock_unlock(isEscapingClosureAtFileLocation);
    __break(1u);
    goto LABEL_9;
  }

  if (*(v13 + 5) == 1)
  {
    outlined destroy of CircularBuffer.Storage(v13 + 8);
  }

  MEMORY[0x26D69EAB0](v13, -1, -1);

  *(v1 + 8) = 0;
}

uint64_t CircularBuffer.describe(state:)(__int128 *a1)
{
  v2 = a1[1];
  v6 = *a1;
  v7[0] = v2;
  *(v7 + 10) = *(a1 + 26);
  v3 = *(v1 + 8);
  os_unfair_lock_lock_with_options();
  closure #1 in CircularBuffer.describe(state:)((v3 + 8), &v6, &v5);
  os_unfair_lock_unlock(v3);
  return v5;
}

char *closure #1 in CircularBuffer.describe(state:)@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  _StringGuts.grow(_:)(89);
  MEMORY[0x26D69CDB0](0xD000000000000010, 0x800000026C33DFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport14CircularBufferVmMd, &_s21SwiftUITracingSupport14CircularBufferVmMR);
  v6 = String.init<A>(describing:)();
  MEMORY[0x26D69CDB0](v6);

  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  if (*(a1 + 56))
  {
    v7 = 0x676E6974697277;
  }

  else
  {
    v7 = 0;
  }

  if (*(a1 + 56))
  {
    v8 = 0xE700000000000000;
  }

  else
  {
    v8 = 0xE000000000000000;
  }

  MEMORY[0x26D69CDB0](v7, v8);

  result = MEMORY[0x26D69CDB0](0x756228202020200ALL, 0xEE00207372656666);
  v10 = *a2;
  v11 = *(a2 + 16);
  v12 = *(a2 + 40);
  v13 = a1[1];
  v14 = MEMORY[0x277D84F90];
  if (!v13)
  {
    goto LABEL_14;
  }

  v36 = *a2;
  v37 = *(a2 + 41);
  v39 = *(a2 + 3);
  v38 = *a1;
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13 & ~(v13 >> 63), 0);
  if ((v13 & 0x8000000000000000) == 0)
  {
    v33 = a1;
    v34 = a2;
    v35 = a3;
    v15 = 0;
    v16 = *(v14 + 16);
    v17 = 32 * v16;
    v18 = v38;
    do
    {
      v19 = *(v18 + v15);
      v20 = *(v18 + v15 + 16);
      v21 = *(v18 + v15 + 24);
      v22 = *(v18 + v15 + 28);
      v23 = *(v14 + 24);
      v24 = v16 + 1;
      if (v16 >= v23 >> 1)
      {
        v32 = *(v18 + v15);
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v16 + 1, 1);
        v19 = v32;
        v18 = v38;
      }

      *(v14 + 16) = v24;
      v25 = v14 + v17 + v15;
      *(v25 + 32) = v19;
      *(v25 + 48) = v20;
      *(v25 + 56) = v21;
      *(v25 + 60) = v22;
      v15 += 32;
      v16 = v24;
      --v13;
    }

    while (v13);
    a2 = v34;
    a3 = v35;
    a1 = v33;
    v10 = v36;
LABEL_14:
    if (__OFSUB__(v10, 1))
    {
      __break(1u);
    }

    else
    {
      v26 = specialized InspectionState.wrapDescription<A>(_:)(v14);
      v28 = v27;

      MEMORY[0x26D69CDB0](v26, v28);

      result = MEMORY[0x26D69CDB0](0x6628202020200A29, 0xEC00000020656572);
      if (!__OFSUB__(*a2, 1))
      {
        v48 = *a2 - 1;
        v49 = *(a2 + 16);
        v50 = *(a2 + 3);
        v51 = *(a2 + 20);
        v29 = specialized InspectionState.wrapDescription<A>(_:)(a1[4]);
        MEMORY[0x26D69CDB0](v29);

        result = MEMORY[0x26D69CDB0](0x6428202020200A29, 0xED00002079747269);
        if (!__OFSUB__(*a2, 1))
        {
          v44 = *a2 - 1;
          v45 = *(a2 + 16);
          v46 = *(a2 + 3);
          v47 = *(a2 + 20);
          v30 = specialized InspectionState.wrapDescription<A>(_:)(a1[5]);
          MEMORY[0x26D69CDB0](v30);

          result = MEMORY[0x26D69CDB0](0xD000000000000012, 0x800000026C33E010);
          if (!__OFSUB__(*a2, 1))
          {
            v40 = *a2 - 1;
            v41 = *(a2 + 16);
            v42 = *(a2 + 3);
            v43 = *(a2 + 20);
            v31 = specialized InspectionState.wrapDescription<A>(_:)(a1[6]);
            MEMORY[0x26D69CDB0](v31);

            result = MEMORY[0x26D69CDB0](2689577, 0xE300000000000000);
            *a3 = 0;
            a3[1] = 0xE000000000000000;
            return result;
          }

          goto LABEL_22;
        }

LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

LABEL_23:
  __break(1u);
  return result;
}

NSUInteger closure #1 in CircularBuffer.init<A>(consumer:stats:sync:)()
{
  v0 = swift_slowAlloc();
  result = NSPageSize();
  if ((result - 0x1000000000000000) >> 61 != 7)
  {
    __break(1u);
    goto LABEL_9;
  }

  v2 = 8 * result;
  v3 = swift_slowAlloc();
  *v0 = 0;
  *(v0 + 8) = v3;
  *(v0 + 16) = v3 + v2;
  *(v0 + 24) = 0;
  *(v0 + 28) = 0;
  result = NSPageSize();
  if ((result - 0x1000000000000000) >> 61 != 7)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = 8 * result;
  v5 = swift_slowAlloc();
  *(v0 + 32) = 1;
  *(v0 + 40) = v5;
  *(v0 + 48) = v5 + v4;
  *(v0 + 56) = 0;
  *(v0 + 60) = 0;
  result = NSPageSize();
  if ((result - 0x1000000000000000) >> 61 != 7)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = 8 * result;
  v7 = swift_slowAlloc();
  *(v0 + 64) = 2;
  *(v0 + 72) = v7;
  *(v0 + 80) = v7 + v6;
  *(v0 + 88) = 0;
  *(v0 + 92) = 0;
  result = NSPageSize();
  if ((result - 0x1000000000000000) >> 61 != 7)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = 8 * result;
  v9 = swift_slowAlloc();
  *(v0 + 96) = 3;
  *(v0 + 104) = v9;
  *(v0 + 112) = v9 + v8;
  *(v0 + 120) = 0;
  *(v0 + 124) = 0;
  result = NSPageSize();
  if ((result - 0x1000000000000000) >> 61 != 7)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v10 = 8 * result;
  v11 = swift_slowAlloc();
  *(v0 + 128) = 4;
  *(v0 + 136) = v11;
  *(v0 + 144) = v11 + v10;
  *(v0 + 152) = 0;
  *(v0 + 156) = 0;
  result = NSPageSize();
  if ((result - 0x1000000000000000) >> 61 == 7)
  {
    v12 = 8 * result;
    v13 = swift_slowAlloc();
    *(v0 + 160) = 5;
    *(v0 + 168) = v13;
    *(v0 + 176) = v13 + v12;
    *(v0 + 184) = 0;
    *(v0 + 188) = 0;
    return v0;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t static CircularBuffer.with<A, B>(consumer:block:)(uint64_t a1, void (*a2)(__int128 *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a4 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](a1);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = _s21SwiftUITracingSupport6StrongVyACyxGxcfCAA5StatsV_Tt0B5(0, 0, 0, 0);
  (*(v10 + 16))(v13, a1, a4);
  CircularBuffer.init<A>(consumer:stats:sync:)(v13, v14, 0, a4, a6, &v17);
  v16 = v17;
  a2(&v16);
  CircularBuffer.deallocate()();
  if (v14)
  {
    return MEMORY[0x26D69EAB0](v14, -1, -1);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void closure #1 in CircularBuffer.deallocate()(uint64_t a1)
{
  v2 = *(a1 + 8);
  os_unfair_lock_lock_with_options();
  v3 = *(v2 + 24);
  os_unfair_lock_unlock(v2);
  os_unfair_lock_lock_with_options();
  v5 = *(v3 + 32);
  v4 = *(v3 + 40);
  __swift_mutable_project_boxed_opaque_existential_1(v3 + 8, v5);
  (*(*(v4 + 8) + 8))(v5);
  os_unfair_lock_unlock(v3);
  v6 = *(a1 + 8);
  os_unfair_lock_lock_with_options();
  v7 = *(v6 + 24);
  if (v7)
  {
    if (*(v7 + 5))
    {
      __swift_destroy_boxed_opaque_existential_1((v7 + 8));
    }

    MEMORY[0x26D69EAB0](v7, -1, -1);
    *(v6 + 24) = 0;

    os_unfair_lock_unlock(v6);
  }

  else
  {
    __break(1u);
  }
}

uint64_t *closure #2 in CircularBuffer.deallocate()(uint64_t *result)
{
  if (*(result[6] + 16))
  {
    MEMORY[0x26D69CFC0](result[6], &type metadata for CircularBuffer.CheckoutRef);
    goto LABEL_12;
  }

  if (*(result[5] + 16))
  {
LABEL_12:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v1 = *result;
  if (*result)
  {
    v2 = result[1];
    if (v2)
    {
      v3 = 32 * v2;
      v4 = (v1 + 8);
      do
      {
        v6 = *v4;
        v4 += 4;
        v5 = v6;
        if (v6)
        {
          MEMORY[0x26D69EAB0](v5, -1, -1);
        }

        v3 -= 32;
      }

      while (v3);
    }

    return MEMORY[0x26D69EAB0](v1, -1, -1);
  }

  return result;
}

Swift::Void __swiftcall CircularBuffer.Buffer.deallocate()()
{
  v3 = *(v0 + 8);
  v2 = (v0 + 8);
  v1 = v3;
  if (v3)
  {
    MEMORY[0x26D69EAB0](v1, -1, -1);
  }

  *v2 = 0;
  v2[1] = 0;
}

BOOL static CircularBuffer.Transaction.Kind.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 4);
  if (*(a1 + 4) == 1)
  {
    return (*(a2 + 4) & 1) != 0;
  }

  if (*(a2 + 4))
  {
    return 0;
  }

  return *a1 == *a2;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance CircularBuffer.Transaction.Kind(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 4);
  if (*(a1 + 4) == 1)
  {
    return (*(a2 + 4) & 1) != 0;
  }

  if (*(a2 + 4))
  {
    return 0;
  }

  return *a1 == *a2;
}

uint64_t CircularBuffer.Transaction.describe(state:)(__int128 *a1)
{
  v12 = *a1;
  *v13 = a1[1];
  *&v13[10] = *(a1 + 26);
  v2 = *v1;
  v3 = *(v1 + 4);
  v4 = *(v1 + 3);
  v5 = *(v1 + 4);
  v6 = *(v1 + 5);
  v7 = v1[12] | (*(v1 + 52) << 32);
  v8 = *(v1 + 7);
  _StringGuts.grow(_:)(31);
  MEMORY[0x26D69CDB0](0x6361736E61727428, 0xED0000206E6F6974);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x26D69CDB0](0x202020200ALL, 0xE500000000000000);
  swift_getMetatypeMetadata();
  v9 = String.init<A>(describing:)();
  MEMORY[0x26D69CDB0](v9);

  MEMORY[0x26D69CDB0](0x202020200ALL, 0xE500000000000000);
  v10 = specialized InspectionState.describe<A>(_:_:)(0x726566667562, 0xE600000000000000, v4, v5, v6, v7);
  MEMORY[0x26D69CDB0](v10);

  MEMORY[0x26D69CDB0](10506, 0xE200000000000000);
  return 0;
}

Swift::Int __swiftcall CircularBuffer.Transaction.begin()()
{
  if (*(v0 + 52) << 32 != 0x200000000)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v17 = *(v0 + 8);
  v1 = *(v0 + 56);
  v2 = *(v0 + 4);
  v15 = *v0;
  v16 = v2;
  CircularBuffer.checkout(owner:kind:)(v1, &v15, v18);
  v4 = v19;
  v5 = v20;
  v6 = v22;
  v7 = v21;
  v8 = v18[1];
  *v0 = v18[0];
  *(v0 + 16) = v8;
  *(v0 + 32) = v4;
  *(v0 + 40) = v5;
  *(v0 + 52) = v6;
  *(v0 + 48) = v7;
  *(v0 + 53) = *v23;
  *(v0 + 60) = *&v23[7];
  if (*(v0 + 4))
  {
    return 0;
  }

  v9 = *v0;
  if (*v0 > 0x7FFu)
  {
    goto LABEL_19;
  }

  v10 = v7 | (v6 << 32);
  if (BYTE4(v10) != 2)
  {
    if (!v4)
    {
      if (!v10)
      {
LABEL_11:
        CircularBuffer.Transaction.commit()();
        goto LABEL_12;
      }

LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    v11 = v5 - v4;
    v12 = v11 < v10;
    v13 = v11 - v10;
    if (!v12)
    {
      if (v13 >= 17)
      {
        result = 12;
        goto LABEL_13;
      }

      goto LABEL_11;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_12:
  result = CircularBuffer.Transaction.begin()() + 12;
  v10 = *(v0 + 48) | (*(v0 + 52) << 32);
  LODWORD(v7) = *(v0 + 48);
LABEL_13:
  if (BYTE4(v10) == 2)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  *(*(v0 + 32) + v7) = v9 | 0xB000;
  v14 = v7 + 4;
  *(v0 + 48) = v14;
  if (*(v0 + 52) == 2)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  *(*(v0 + 32) + v14) = -1;
  *(v0 + 48) = v14 + 8;
  if (*(v0 + 52) << 32 == 0x200000000)
  {
LABEL_24:
    __break(1u);
    return result;
  }

  *(v0 + 52) = 1;
  return result;
}

void CircularBuffer.checkout(owner:kind:)(uint64_t a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  v8 = *a2;
  v9 = *(a2 + 4);
  v11 = *v3;
  v10 = *(v3 + 8);
  v12 = **v3;
  OS_dispatch_semaphore.wait()();

  os_unfair_lock_lock_with_options();
  v14 = (v10 + 40);
  v13 = *(v10 + 40);
  if (*(v13 + 16))
  {
    v5 = *(v13 + 32);
    v4 = *(v13 + 40);
    v15 = *(v13 + 48);
    v20 = *(v13 + 60);
    v21 = *(v13 + 56);
    specialized Array.replaceSubrange<A>(_:with:)(0, 1);
    v14 = *(v10 + 56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v10 + 56) = v14;
    v22 = v15;
    v23 = v11;
    LODWORD(v11) = v8;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 2) + 1, 1, v14);
  *(v10 + 56) = v14;
LABEL_3:
  v18 = *(v14 + 2);
  v17 = *(v14 + 3);
  if (v18 >= v17 >> 1)
  {
    v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v14);
    *(v10 + 56) = v14;
  }

  *(v14 + 2) = v18 + 1;
  v19 = &v14[16 * v18];
  *(v19 + 4) = a1;
  *(v19 + 5) = v5;
  *a3 = v11;
  *(a3 + 4) = v9;
  *(a3 + 8) = v23;
  *(a3 + 16) = v10;
  *(a3 + 24) = v5;
  *(a3 + 32) = v4;
  *(a3 + 40) = v22;
  *(a3 + 48) = v21;
  *(a3 + 52) = v20 != 0;
  *(a3 + 56) = a1;

  os_unfair_lock_unlock(v10);
}

void CircularBuffer.commit(_:)(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 48) | (*(a1 + 52) << 32);
  if ((v14 & 0xFF00000000) == 0x200000000)
  {
    return;
  }

  v47 = v11;
  v48 = v10;
  v51 = *(a1 + 24);
  v15 = *(a1 + 40);
  LODWORD(v16) = v14;
  v17 = v1[1];
  v49 = *v1;
  os_unfair_lock_lock_with_options();
  *(v17 + 65) = 0;
  v18 = *(v17 + 48);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v17 + 48) = v18;
  v50 = v4;
  if (isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_4;
  }

LABEL_34:
  v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v18 + 16) + 1, 1, v18);
  *(v17 + 48) = v18;
LABEL_4:
  v21 = *(v18 + 16);
  v20 = *(v18 + 24);
  v22 = v51;
  if (v21 >= v20 >> 1)
  {
    v46 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v18);
    v22 = v51;
    v18 = v46;
    *(v17 + 48) = v46;
  }

  *(v18 + 16) = v21 + 1;
  v23 = v18 + 32 * v21;
  *(v23 + 32) = v22;
  *(v23 + 48) = v15;
  *(v23 + 56) = v16;
  *(v23 + 60) = BYTE4(v14) & 1;
  v18 = v17 + 56;
  v24 = *(v17 + 56);
  isa = v24[2].isa;
  if (isa)
  {
    v14 = 0;
    v15 = v22;
    isEscapingClosureAtFileLocation = 40;
    while (*(&v24->isa + isEscapingClosureAtFileLocation) != v22)
    {
      ++v14;
      isEscapingClosureAtFileLocation += 16;
      if (isa == v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      goto LABEL_36;
    }

    v28 = *(v17 + 56);
    v29 = swift_isUniquelyReferenced_nonNull_native();
    *v18 = v24;
    if ((v29 & 1) == 0)
    {
      goto LABEL_37;
    }

    while (1)
    {
      *v18 = v24;
      v30 = v24[2].isa;
      if (v16 != v30)
      {
        break;
      }

LABEL_14:
      *v18 = v24;
      v27 = v24[2].isa;
      isa = v14;
      if (v27 >= v14)
      {
        goto LABEL_15;
      }

      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      v24 = specialized _ArrayBuffer._consumeAndCreateNew()(v24);
    }
  }

  else
  {
LABEL_10:
    v27 = v24[2].isa;
LABEL_15:
    specialized Array.replaceSubrange<A>(_:with:)(isa, v27);
    if (*(v17 + 64) == 1)
    {

      os_unfair_lock_unlock(v17);
      return;
    }

    LODWORD(v51) = *(v17 + 66);
    *(v17 + 64) = 1;
    v31 = *(v17 + 24);
    os_unfair_lock_lock_with_options();
    v14 = *(v31 + 32);
    v32 = *(v31 + 40);
    v33 = __swift_project_boxed_opaque_existential_1((v31 + 8), v14);
    v34 = *(v14 - 8);
    v35 = *(v34 + 64);
    MEMORY[0x28223BE20](v33);
    v15 = &v47 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v34 + 16))(v15);
    os_unfair_lock_unlock(v31);
    v24 = (*(v32 + 32))(v14, v32);
    v37 = *(v34 + 8);
    v16 = v34 + 8;
    v37(v15, v14);
    os_unfair_lock_unlock(v17);
    isEscapingClosureAtFileLocation = v50;
    if (!v24)
    {
      return;
    }

    if (!v51)
    {
      goto LABEL_32;
    }

    v3 = swift_allocObject();
    *(v3 + 16) = v49;
    *(v3 + 24) = v17;
    v18 = swift_allocObject();
    *(v18 + 16) = partial apply for closure #2 in CircularBuffer.commit(_:);
    *(v18 + 24) = v3;
    v57 = thunk for @callee_guaranteed () -> ()partial apply;
    v58 = v18;
    aBlock = MEMORY[0x277D85DD0];
    v54 = 1107296256;
    v55 = thunk for @escaping @callee_guaranteed () -> ();
    v56 = &block_descriptor_34;
    v38 = _Block_copy(&aBlock);
    v7 = v58;

    dispatch_sync(v24, v38);

    _Block_release(v38);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  v39 = (&v24[2] + isEscapingClosureAtFileLocation);
  while (1)
  {
    if (v16 >= v30)
    {
      __break(1u);
      goto LABEL_34;
    }

    v43 = *v39;
    if (*v39 != v15)
    {
      break;
    }

LABEL_26:
    ++v16;
    v39 += 2;
    if (v16 == v30)
    {
      goto LABEL_14;
    }
  }

  if (v16 == v14)
  {
LABEL_25:
    ++v14;
    goto LABEL_26;
  }

  if (v14 < v30)
  {
    v40 = &v24[2 * v14 + 4];
    v41 = v40->isa;
    v42 = v40[1].isa;
    v40->isa = *(v39 - 1);
    v40[1].isa = v43;
    *(v39 - 1) = v41;
    *v39 = v42;
    v30 = v24[2].isa;
    goto LABEL_25;
  }

  __break(1u);
LABEL_32:
  v44 = swift_allocObject();
  *(v44 + 16) = v49;
  *(v44 + 24) = v17;
  v57 = partial apply for closure #3 in CircularBuffer.commit(_:);
  v58 = v44;
  aBlock = MEMORY[0x277D85DD0];
  v54 = 1107296256;
  v55 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v56 = &block_descriptor_24_0;
  v45 = _Block_copy(&aBlock);
  static DispatchQoS.unspecified.getter();
  v52 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x26D69D2D0](0, v13, v7, v45);

  _Block_release(v45);
  (*(isEscapingClosureAtFileLocation + 8))(v7, v3);
  (*(v47 + 8))(v13, v48);
}

Swift::Int __swiftcall CircularBuffer.Transaction.ensureCapacity(_:)(Swift::Int result)
{
  if (((*(v1 + 48) | (*(v1 + 52) << 32)) & 0xFF00000000) != 0x200000000)
  {
    v2 = *(v1 + 32);
    if (v2)
    {
      v3 = *(v1 + 40) - v2;
      *(v1 + 52);
      if (v3 >= *(v1 + 48))
      {
        if (v3 - *(v1 + 48) >= result)
        {
          return 0;
        }

        goto LABEL_8;
      }

      __break(1u);
    }

    else
    {
      *(v1 + 52);
      if (!*(v1 + 48))
      {
        if (result < 1)
        {
          return 0;
        }

LABEL_8:
        CircularBuffer.Transaction.commit()();
        goto LABEL_9;
      }
    }

    __break(1u);
    return result;
  }

LABEL_9:

  return CircularBuffer.Transaction.begin()();
}

Swift::Bool __swiftcall CircularBuffer.Buffer.fits(_:)(Swift::Int a1)
{
  v4 = v3;
  if (v1)
  {
    v4 = v2 - v1 - v3;
    if (v2 - v1 >= v3)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  if (v4)
  {
    __break(1u);
    return a1;
  }

LABEL_5:
  LOBYTE(a1) = v4 >= a1;
  return a1;
}

void *CircularBuffer.Transaction.write<A>(_:)(void *__src, uint64_t a2)
{
  if (*(v2 + 52) != 2)
  {
    v3 = *(*(a2 - 8) + 64);
    if ((v3 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v4 = *(v2 + 48);
      __src = memcpy((*(v2 + 32) + v4), __src, v3);
      if (!HIDWORD(v3))
      {
        *(v2 + 48) = v4 + v3;
        return v3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return __src;
}

uint64_t CircularBuffer.Transaction.write(size:)(uint64_t result, unsigned __int8 a2)
{
  v3 = *(v2 + 48);
  v4 = (*(v2 + 52) << 32) & 0xFFFFFFFFFFLL;
  if (a2 <= 1u)
  {
    if (a2)
    {
      if (v4 != 0x200000000)
      {
        *(*(v2 + 32) + v3) = result;
        result = 2;
        *(v2 + 48) = v3 + 2;
        return result;
      }

      goto LABEL_14;
    }

    if (v4 != 0x200000000)
    {
      *(*(v2 + 32) + v3) = result;
      result = 1;
      *(v2 + 48) = v3 + 1;
      return result;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (a2 == 2)
  {
    if (v4 != 0x200000000)
    {
      *(*(v2 + 32) + v3) = result;
      result = 4;
      *(v2 + 48) = v3 + 4;
      return result;
    }

    goto LABEL_13;
  }

  if (v4 != 0x200000000)
  {
    *(*(v2 + 32) + v3) = result;
    result = 8;
    *(v2 + 48) = v3 + 8;
    return result;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t CircularBuffer.Buffer.describe(state:)()
{
  _StringGuts.grow(_:)(37);
  MEMORY[0x26D69CDB0](0x2072656666756228, 0xE800000000000000);
  v0 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26D69CDB0](v0);

  MEMORY[0x26D69CDB0](0x202020200ALL, 0xE500000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x26D69CDB0](0x6F7028202020200ALL, 0xEF206E6F69746973);
  v1 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26D69CDB0](v1);

  MEMORY[0x26D69CDB0](2689577, 0xE300000000000000);
  return 0;
}

uint64_t CircularBuffer.Buffer.content.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = (a4 << 31 >> 63) & 0xC;
  if (a4 < v4)
  {
    __break(1u);
  }

  else
  {
    v5 = a2 + v4;
    if (a2)
    {
      return v5;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t CircularBuffer.Buffer.header.getter(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  if ((a4 & 0x100000000) == 0)
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (a2)
  {
    v4 = *a2;
    if ((*a2 & 0x8000) != 0)
    {
      v5 = *(a2 + 1);
      return v4 & 0x7FF;
    }

    goto LABEL_6;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t protocol witness for Deallocatable.deallocate() in conformance CircularBuffer.Buffer()
{
  v3 = *(v0 + 8);
  v2 = (v0 + 8);
  result = v3;
  if (v3)
  {
    result = MEMORY[0x26D69EAB0](result, -1, -1);
  }

  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t protocol witness for Inspectable.describe(state:) in conformance CircularBuffer.Buffer()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 6);
  *(v0 + 28);
  return CircularBuffer.Buffer.describe(state:)();
}

void closure #2 in CircularBuffer.commit(_:)(uint64_t a1, os_unfair_lock_s *a2)
{
  os_unfair_lock_lock_with_options();
  closure #1 in CircularBuffer.checkoutToWrite()(&a2[2], &v14);
  while (1)
  {
    os_unfair_lock_unlock(a2);
    if ((v16 & 0xFF00000000) == 0x200000000)
    {
      break;
    }

    v5 = v17;
    v10 = v14;
    v11 = v15;
    v12 = v16;
    v13 = BYTE4(v16) & 1;
    os_unfair_lock_lock_with_options();
    outlined init with copy of Aggregate_AccessorProtocol(&v5[2], &v14);
    os_unfair_lock_unlock(v5);
    v6 = v16;
    v7 = v17;
    __swift_project_boxed_opaque_existential_1(&v14, v16);
    (*&v7[10]._os_unfair_lock_opaque)(&v10, 0, v6, v7);
    __swift_destroy_boxed_opaque_existential_1(&v14);
    *&v14 = a1;
    *(&v14 + 1) = a2;
    v8 = v2 & 0xFFFFFF0000000000 | v12;
    if (v13)
    {
      v9 = 0x100000000;
    }

    else
    {
      v9 = 0;
    }

    v2 = v8 | v9;
    CircularBuffer.checkin(buffer:)(v10, *(&v10 + 1), v11, v8 | v9);
    os_unfair_lock_lock_with_options();
    closure #1 in CircularBuffer.checkoutToWrite()(&a2[2], &v14);
  }
}

void CircularBuffer.checkin(buffer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a4;
  v13 = *v4;
  v12 = *(v4 + 1);
  if (a2 && a4)
  {
    goto LABEL_32;
  }

  if ((a4 & 0x100000000) != 0)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
    *(v12 + 40) = v4;
    goto LABEL_14;
  }

  v14 = *(v4 + 1);
  os_unfair_lock_lock_with_options();
  v4 = (v12 + 56);
  v5 = *(v12 + 56);
  v15 = *(v5 + 2);
  if (v15)
  {
    v7 = 0;
    v6 = 40;
    while (*&v5[v6] != a1)
    {
      v7 = (v7 + 1);
      v6 += 16;
      if (v15 == v7)
      {
        goto LABEL_8;
      }
    }

    v28 = v13;
    v13 = (v7 + 1);
    if (__OFADD__(v7, 1))
    {
      goto LABEL_33;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v4 = v5;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_34;
    }

    while (1)
    {
      *v4 = v5;
      v18 = *(v5 + 2);
      if (v13 != v18)
      {
        break;
      }

LABEL_12:
      *v4 = v5;
      v16 = *(v5 + 2);
      v15 = v7;
      v13 = v28;
      if (v16 >= v7)
      {
        goto LABEL_13;
      }

      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      v5 = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    }

    v23 = &v5[v6 + 16];
    while (v13 < v18)
    {
      v27 = *v23;
      if (*v23 != a1)
      {
        if (v13 != v7)
        {
          if (v7 >= v18)
          {
            __break(1u);
            break;
          }

          v24 = &v5[16 * v7 + 32];
          v25 = *v24;
          v26 = *(v24 + 1);
          *v24 = *(v23 - 1);
          *(v24 + 1) = v27;
          *(v23 - 1) = v25;
          *v23 = v26;
          v18 = *(v5 + 2);
        }

        v7 = (v7 + 1);
      }

      v13 = (v13 + 1);
      v23 += 16;
      if (v13 == v18)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_29;
  }

LABEL_8:
  v16 = *(v5 + 2);
LABEL_13:
  specialized Array.replaceSubrange<A>(_:with:)(v15, v16);
  os_unfair_lock_unlock(v12);
  os_unfair_lock_lock_with_options();
  v4 = *(v12 + 40);
  v19 = swift_isUniquelyReferenced_nonNull_native();
  *(v12 + 40) = v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_14:
  v21 = *(v4 + 2);
  v20 = *(v4 + 3);
  if (v21 >= v20 >> 1)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v4);
    *(v12 + 40) = v4;
  }

  *(v4 + 2) = v21 + 1;
  v22 = &v4[32 * v21];
  *(v22 + 4) = a1;
  *(v22 + 5) = a2;
  *(v22 + 6) = a3;
  *(v22 + 14) = v8;
  v22[60] = 0;
  os_unfair_lock_unlock(v12);
  v29 = *v13;
  OS_dispatch_semaphore.signal()();
}

uint64_t closure #1 in CircularBuffer.checkoutToWrite()@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = result;
  v4 = *(result + 40);
  if (*(v4 + 16))
  {
    v5 = *(v4 + 32);
    v19 = *(v4 + 40);
    v16 = *(v4 + 56);
    v17 = *(v4 + 48);
    v15 = *(v4 + 60);
    specialized Array.replaceSubrange<A>(_:with:)(0, 1);
    v6 = *(v2 + 16);
    os_unfair_lock_lock_with_options();
    outlined init with copy of Aggregate_AccessorProtocol(&v6[2], v18);
    os_unfair_lock_unlock(v6);
    __swift_project_boxed_opaque_existential_1(v18, v18[3]);
    DynamicType = swift_getDynamicType();
    __swift_destroy_boxed_opaque_existential_1(v18);
    v8 = *(v2 + 48);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v10 = *(v8 + 16);
    v9 = *(v8 + 24);
    if (v10 >= v9 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v10 + 1;
    v11 = v8 + 16 * v10;
    *(v11 + 32) = DynamicType;
    *(v11 + 40) = v5;
    *(v2 + 48) = v8;
    v12 = 0x100000000;
    if (!v15)
    {
      v12 = 0;
    }

    v13 = v12 | v16;
    v14 = v19;
    *a2 = v5;
    a2[1] = v14;
    a2[2] = v17;
  }

  else
  {
    v6 = 0;
    *(result + 56) = 0;
    *a2 = 0;
    a2[1] = 0;
    v13 = 0x200000000;
    a2[2] = 0;
  }

  a2[3] = v13;
  a2[4] = v6;
  return result;
}

uint64_t ATRCWriter.Storage._write(_:)(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v3 = *(*v2 + 16);
    if (v3)
    {
      v4 = result;
      v5 = *(v3 + 16);
      v6 = v2[1];
      v7 = a2 - v4;
      result = ktrace_file_append_data();
      if (result)
      {
LABEL_9:
        _StringGuts.grow(_:)(29);

        v11 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x26D69CDB0](v11);

        result = _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return result;
      }

      v8 = v2[3];
      v9 = __OFADD__(v8, v7);
      v10 = v8 + v7;
      if (!v9)
      {
        v2[3] = v10;
        return result;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_9;
  }

  return result;
}

Swift::Void __swiftcall ATRCWriter.deallocate()()
{
  v1 = *(v0 + 8);
  os_unfair_lock_lock_with_options();
  closure #1 in ATRCWriter.deallocate()(v1 + 8);
  os_unfair_lock_unlock(v1);
  if (v1)
  {
    if (*(v1 + 5))
    {
      outlined destroy of ATRCWriter.Storage(v1 + 8);
    }

    MEMORY[0x26D69EAB0](v1, -1, -1);
    *(v0 + 8) = 0;
  }

  else
  {
    __break(1u);

    os_unfair_lock_unlock(0);
    __break(1u);
  }
}

void closure #1 in ATRCWriter.deallocate()(uint64_t a1)
{
  if (*(a1 + 112) != 1)
  {
    goto LABEL_5;
  }

  if (*(a1 + 96) == 1)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  BufferCompressor.deallocate()();
  if (*(a1 + 96) != 1)
  {
    *(*(a1 + 136) + 16) = *(a1 + 88);
LABEL_5:
    v2 = *(*a1 + 16);
    if (v2)
    {
      v3 = *(v2 + 16);
      v4 = *(a1 + 8);
      ktrace_file_append_finish();
      v5 = *(a1 + 136);
      *(v5 + 8) = *(a1 + 16);
      *(v5 + 24) = *(a1 + 24);
      return;
    }

    __break(1u);
    goto LABEL_8;
  }

LABEL_9:
  __break(1u);
}

uint64_t ATRCWriter.describe(state:)(__int128 *a1)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 10) = *(a1 + 26);
  closure #1 in ATRCWriter.describe(state:)(*(v1 + 8) + 8, &v5, &v4);
  return v4;
}

uint64_t closure #1 in ATRCWriter.describe(state:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  _StringGuts.grow(_:)(39);

  v10 = *(a1 + 120);
  v6 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26D69CDB0](v6);

  result = MEMORY[0x26D69CDB0](0x2020200A29, 0xE500000000000000);
  v12 = *(a1 + 64);
  v13 = *(a1 + 80);
  v14 = *(a1 + 96);
  v8 = *(a1 + 48);
  v11 = *(a1 + 32);
  if (__OFSUB__(*a2, 1))
  {
    __break(1u);
  }

  else
  {
    v15 = *a2 - 1;
    v16 = *(a2 + 8);
    v17 = *(a2 + 24);
    v18 = *(a2 + 40);
    v9 = specialized InspectionState.wrapDescription<A>(_:)();
    MEMORY[0x26D69CDB0](v9);

    result = MEMORY[0x26D69CDB0](10506, 0xE200000000000000);
    *a3 = 0xD00000000000001CLL;
    a3[1] = 0x800000026C33DFD0;
  }

  return result;
}

void ATRCWriter.consume(_:end:)(uint64_t a1, char a2)
{
  v5 = *(v2 + 8);
  os_unfair_lock_lock_with_options();
  closure #1 in ATRCWriter.consume(_:end:)(&v5[2], a1, a2);

  os_unfair_lock_unlock(v5);
}

const uint8_t *closure #1 in ATRCWriter.consume(_:end:)(uint64_t a1, uint64_t a2, char a3)
{
  v6 = *(a1 + 128);
  result = *(a2 + 8);
  if (v6)
  {
    if (!result)
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    if (*result != 123123123)
    {
      goto LABEL_25;
    }

    if (*(a1 + 16))
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v8 = 0;
  }

  else
  {
    v8 = *(a1 + 16);
  }

  v9 = *(a2 + 24);
  if (result)
  {
    v10 = *(a2 + 24);
  }

  else
  {
    v10 = 0;
  }

  v11 = __OFADD__(v8, v10);
  v12 = v8 + v10;
  if (v11)
  {
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  *(a1 + 16) = v12;
  if (*(a1 + 112) != 1)
  {
    v15 = &result[v9];
    if (result)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    result = ATRCWriter.Storage._write(_:)(result, v16);
    goto LABEL_22;
  }

  if (*(a1 + 96) == 1)
  {
LABEL_28:
    __break(1u);
    return result;
  }

  v13 = &result[v9];
  if (result)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  result = BufferCompressor.stream(src:finalize:)(result, v14, a3 & 1);
  if (!v3)
  {
LABEL_22:
    *(a1 + 128) = 0;
    *(a2 + 24) = 0;
    *(a2 + 28) = 0;
  }

  return result;
}

uint64_t protocol witness for Inspectable.describe(state:) in conformance ATRCWriter(__int128 *a1)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 10) = *(a1 + 26);
  closure #1 in ATRCWriter.describe(state:)(*(v1 + 8) + 8, &v5, &v4);
  return v4;
}

uint64_t SnapshotConsumer.describe(state:)()
{
  _StringGuts.grow(_:)(22);
  MEMORY[0x26D69CDB0](0xD000000000000012, 0x800000026C33DE10);
  Float.write<A>(to:)();
  MEMORY[0x26D69CDB0](10506, 0xE200000000000000);
  return 0;
}

uint64_t protocol witness for Inspectable.describe(state:) in conformance SnapshotConsumer()
{
  _StringGuts.grow(_:)(22);
  MEMORY[0x26D69CDB0](0xD000000000000012, 0x800000026C33DE10);
  Float.write<A>(to:)();
  MEMORY[0x26D69CDB0](10506, 0xE200000000000000);
  return 0;
}

uint64_t T_Header.describe(state:)()
{
  _StringGuts.grow(_:)(193);
  MEMORY[0x26D69CDB0](0x2072656461654828, 0xEF206E6F73726576);
  v15 = *(v0 + 8);
  v1 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26D69CDB0](v1);

  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  v16 = *(v0 + 10);
  v2 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26D69CDB0](v2);

  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  v17 = *(v0 + 12);
  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26D69CDB0](v3);

  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  v18 = *(v0 + 14);
  v4 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26D69CDB0](v4);

  MEMORY[0x26D69CDB0](0x2064697020200A20, 0xE800000000000000);
  v19 = *(v0 + 16);
  v5 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26D69CDB0](v5);

  MEMORY[0x26D69CDB0](0x62656D697420200ALL, 0xEC00000020657361);
  v20 = *(v0 + 20);
  v6 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26D69CDB0](v6);

  MEMORY[0x26D69CDB0](2109216, 0xE300000000000000);
  v21 = *(v0 + 24);
  v7 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26D69CDB0](v7);

  MEMORY[0x26D69CDB0](0x5F6863616D20200ALL, 0xEF206D765F78616DLL);
  v22 = *(v0 + 28);
  v8 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26D69CDB0](v8);

  MEMORY[0x26D69CDB0](0xD000000000000014, 0x800000026C33DE30);
  LOWORD(v22) = *(v0 + 36);
  v9 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26D69CDB0](v9);

  MEMORY[0x26D69CDB0](0xD000000000000017, 0x800000026C33DE50);
  LOWORD(v22) = *(v0 + 38);
  v10 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26D69CDB0](v10);

  MEMORY[0x26D69CDB0](0x7367616C6620200ALL, 0xE900000000000020);
  v23 = *(v0 + 40);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x26D69CDB0](0xD000000000000010, 0x800000026C33DE70);
  LOWORD(v23) = *(v0 + 48);
  v11 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26D69CDB0](v11);

  MEMORY[0x26D69CDB0](0xD000000000000010, 0x800000026C33DE90);
  LOWORD(v23) = *(v0 + 50);
  v12 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26D69CDB0](v12);

  MEMORY[0x26D69CDB0](0xD000000000000017, 0x800000026C33DEB0);
  LOWORD(v23) = *(v0 + 54);
  v13 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26D69CDB0](v13);

  MEMORY[0x26D69CDB0](10506, 0xE200000000000000);
  return 0;
}

uint64_t T_Header.Flags.describe(state:)()
{
  v1 = *v0;
  v2 = 0xE000000000000000;
  _StringGuts.grow(_:)(22);

  strcpy(v5, "(Header.Flags ");
  HIBYTE(v5[1]) = -18;
  if ((v1 & 2) != 0)
  {
    v2 = 0xE500000000000000;
  }

  MEMORY[0x26D69CDB0]((v1 << 62 >> 63) & 0x73746F6F72, v2);

  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26D69CDB0](v3);

  MEMORY[0x26D69CDB0](2107680, 0xE300000000000000);
  return v5[0];
}

uint64_t closure #1 in T_Header.init()(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  v5 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    if ((a2 & 0x1000000000000000) == 0)
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v26 = a1;
        v27 = a2 & 0xFFFFFFFFFFFFFFLL;
        if (a1 == 43)
        {
          if (v4)
          {
            v5 = v4 - 1;
            if (v4 != 1)
            {
              LOWORD(v9) = 0;
              v16 = &v26 + 1;
              while (1)
              {
                v17 = *v16 - 48;
                if (v17 > 9)
                {
                  break;
                }

                if (((10 * v9) & 0xF0000) != 0)
                {
                  break;
                }

                v9 = ((10 * v9) + v17);
                if ((v9 >> 16))
                {
                  break;
                }

                ++v16;
                if (!--v5)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_61;
          }

LABEL_74:
          __break(1u);
          goto LABEL_75;
        }

        if (a1 != 45)
        {
          if (v4)
          {
            LOWORD(v9) = 0;
            v19 = &v26;
            while (1)
            {
              v20 = *v19 - 48;
              if (v20 > 9)
              {
                break;
              }

              if (((10 * v9) & 0xF0000) != 0)
              {
                break;
              }

              v9 = ((10 * v9) + v20);
              if ((v9 >> 16))
              {
                break;
              }

              v19 = (v19 + 1);
              if (!--v4)
              {
                goto LABEL_60;
              }
            }
          }

          goto LABEL_61;
        }

        if (v4)
        {
          v5 = v4 - 1;
          if (v4 != 1)
          {
            LOWORD(v9) = 0;
            v12 = &v26 + 1;
            while (1)
            {
              v13 = *v12 - 48;
              if (v13 > 9)
              {
                break;
              }

              if (((10 * v9) & 0xF0000) != 0)
              {
                break;
              }

              v9 = ((10 * v9) - v13);
              if ((v9 & 0xFFFF0000) != 0)
              {
                break;
              }

              ++v12;
              if (!--v5)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v24 = a1;
          v2 = a2;
          v7 = _StringObject.sharedUTF8.getter();
          a1 = v24;
          v5 = v25;
          a2 = v2;
        }

        v8 = *v7;
        if (v8 == 43)
        {
          if (v5 >= 1)
          {
            if (--v5)
            {
              v9 = 0;
              if (v7)
              {
                v14 = v7 + 1;
                while (1)
                {
                  v15 = *v14 - 48;
                  if (v15 > 9)
                  {
                    goto LABEL_61;
                  }

                  if (((10 * v9) & 0xF0000) != 0)
                  {
                    goto LABEL_61;
                  }

                  v9 = ((10 * v9) + v15);
                  if ((v9 >> 16))
                  {
                    goto LABEL_61;
                  }

                  ++v14;
                  if (!--v5)
                  {
                    goto LABEL_62;
                  }
                }
              }

              goto LABEL_60;
            }

            goto LABEL_61;
          }

          goto LABEL_73;
        }

        if (v8 != 45)
        {
          if (v5)
          {
            v9 = 0;
            if (v7)
            {
              while (1)
              {
                v18 = *v7 - 48;
                if (v18 > 9)
                {
                  goto LABEL_61;
                }

                if (((10 * v9) & 0xF0000) != 0)
                {
                  goto LABEL_61;
                }

                v9 = ((10 * v9) + v18);
                if ((v9 >> 16))
                {
                  goto LABEL_61;
                }

                ++v7;
                if (!--v5)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

LABEL_61:
          v9 = 0;
          LOBYTE(v5) = 1;
LABEL_62:
          v28 = v5;
          if ((v5 & 1) == 0)
          {
            return v9;
          }

          goto LABEL_63;
        }

        if (v5 >= 1)
        {
          if (--v5)
          {
            v9 = 0;
            if (v7)
            {
              v10 = v7 + 1;
              while (1)
              {
                v11 = *v10 - 48;
                if (v11 > 9)
                {
                  goto LABEL_61;
                }

                if (((10 * v9) & 0xF0000) != 0)
                {
                  goto LABEL_61;
                }

                v9 = ((10 * v9) - v11);
                if ((v9 & 0xFFFF0000) != 0)
                {
                  goto LABEL_61;
                }

                ++v10;
                if (!--v5)
                {
                  goto LABEL_62;
                }
              }
            }

LABEL_60:
            LOBYTE(v5) = 0;
            goto LABEL_62;
          }

          goto LABEL_61;
        }

        __break(1u);
      }

      __break(1u);
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

    v22 = a1;
    v23 = a2;

    v9 = specialized _parseInteger<A, B>(ascii:radix:)(v22, v23, 10);

    a1 = v22;
    a2 = v23;
    if ((v9 & 0x10000) == 0)
    {
      return v9;
    }
  }

LABEL_63:
  if (a1 == 0x2E39392E39393939 && a2 == 0xEA00000000003939)
  {
    return 9999;
  }

  v2 = a1;
  v3 = a2;
  if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {
    return 9999;
  }

LABEL_75:
  v26 = 0;
  v27 = 0xE000000000000000;
  _StringGuts.grow(_:)(37);

  v26 = 0xD000000000000023;
  v27 = 0x800000026C33E380;
  MEMORY[0x26D69CDB0](v2, v3);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

Swift::Int AttachmentID.hashValue.getter(Swift::UInt32 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

uint64_t AttachmentID.Typed<>.describe(state:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](a1);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!v10)
  {
    return 7104878;
  }

  v14 = *(v9 + 16);
  if (v14)
  {
    v16 = *(v9 + 24);
    v15 = *(v9 + 32);
    v17 = *(v9 + 40);
    v18 = *(v9 + 41);
    v26 = *v9;
    v27 = v14;
    v28 = v16;
    v29 = v15;
    v30 = v17;
    v31 = v18;
    if (v18)
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    else
    {
      v24[9] = *(v15 + 144);
      v24[10] = *(v15 + 160);
      v24[11] = *(v15 + 176);
      v25 = *(v15 + 192);
      v24[5] = *(v15 + 80);
      v24[6] = *(v15 + 96);
      v24[7] = *(v15 + 112);
      v24[8] = *(v15 + 128);
      v24[1] = *(v15 + 16);
      v24[2] = *(v15 + 32);
      v24[3] = *(v15 + 48);
      v24[4] = *(v15 + 64);
      v24[0] = *v15;
      Interpreter.Iterator.subscript.getter(v10, a3, v11);
      v19 = InspectionState.describe<A>(_:)(v13, a3, a5);
      (*(v7 + 8))(v13, a3);
      return v19;
    }
  }

  else
  {
    LODWORD(v24[0]) = v10;
    v21 = v10;
    type metadata accessor for AttachmentID.Typed();
    *&v24[0] = String.init<A>(describing:)();
    *(&v24[0] + 1) = v22;
    MEMORY[0x26D69CDB0](8992, 0xE200000000000000);
    LODWORD(v26) = v21;
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x26D69CDB0](v23);

    return *&v24[0];
  }

  return result;
}

uint64_t AttachmentRef.code.getter(uint64_t a1, char a2)
{
  *(&v3 + 1) = a2 & 1;
  *&v3 = a1;
  return v3 >> 32;
}

uint64_t AttachmentRef.code.setter(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 8) = BYTE4(result) & 1;
  return result;
}

uint64_t AttachmentRef.Typed.ref.setter(uint64_t result, uint64_t a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  *(v2 + 12) = HIDWORD(a2);
  return result;
}

void AttachmentRef.Typed.hash(into:)(int a1, uint64_t a2, uint64_t a3)
{
  v4 = HIDWORD(a2);
  Hasher._combine(_:)(a2);
  if (a3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v4);
  }

  Hasher._combine(_:)(HIDWORD(a3));
}

Swift::Int AttachmentRef.Typed.hashValue.getter(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = a2 & 0xFFFFFFFF00000000;
  Hasher.init(_seed:)();
  AttachmentRef.Typed.hash(into:)(&v6, a1, v4 | v2 & 1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AttachmentRef.Typed<A>()
{
  Hasher.init(_seed:)();
  AttachmentRef.Typed.hash(into:)(&v2, *v0, *(v0 + 8) | (*(v0 + 12) << 32));
  return Hasher._finalize()();
}

uint64_t protocol witness for ExpressibleByNilLiteral.init(nilLiteral:) in conformance AttachmentRef.Typed<A>@<X0>(uint64_t a1@<X8>)
{
  result = AttachmentRef.Typed.init(nilLiteral:)();
  *a1 = 0;
  *(a1 + 8) = v3 & 1;
  *(a1 + 12) = -1;
  return result;
}

void AttachmentRef.hash(into:)(int a1, uint64_t a2, uint64_t a3)
{
  v4 = HIDWORD(a2);
  Hasher._combine(_:)(a2);
  if (a3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v4);
  }

  Hasher._combine(_:)(HIDWORD(a3));
}

Swift::Int AttachmentRef.hashValue.getter(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  if (a2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(HIDWORD(a1));
  }

  Hasher._combine(_:)(HIDWORD(a2));
  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance AttachmentRef(_DWORD *a1, int *a2)
{
  v2 = *a2;
  if (*a1 == -1 && v2 == -1)
  {
    return 1;
  }

  return *a1 == v2 && a1[3] == a2[3];
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AttachmentRef()
{
  v2 = *v0;
  v1 = *(v0 + 4);
  v3 = *(v0 + 8);
  v4 = *(v0 + 12);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  if (v3 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v1);
  }

  Hasher._combine(_:)(v4);
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance AttachmentRef()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 8);
  v3 = *(v0 + 12);
  Hasher._combine(_:)(*v0);
  if (v2 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v1);
  }

  Hasher._combine(_:)(v3);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AttachmentRef()
{
  v2 = *v0;
  v1 = *(v0 + 4);
  v3 = *(v0 + 8);
  v4 = *(v0 + 12);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  if (v3 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v1);
  }

  Hasher._combine(_:)(v4);
  return Hasher._finalize()();
}

void protocol witness for ExpressibleByNilLiteral.init(nilLiteral:) in conformance AttachmentRef(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 12) = -1;
}

uint64_t static BufferAttachment.construct(attachment:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = *(a3 + 116);
  v9 = *(a3 + 176);
  v10 = (v9 + 40);
  v11 = *(v9 + 56);
  v28[0] = *(v9 + 40);
  v28[1] = v11;
  v29[0] = *(v9 + 72);
  *(v29 + 9) = *(v9 + 81);
  v12 = (v9 + 72);
  v13 = (v9 + 84);
  v14 = (v9 + 88);
  while (1)
  {
    v15 = *v14;
    if (result < *v13)
    {
      v16 = (*v12 + 8 * result);
      if ((v16[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v15)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(result, 0, v28);
    }

    v12 = (v15 + 32);
    v13 = (v15 + 44);
    v14 = (v15 + 48);
    v10 = v15;
  }

  v17 = *v10;
  if (!v17)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    return result;
  }

  v18 = (v17 + 24 * *v16);
  v19 = *v18;
  v20 = *(*v18 + 136);
  v26[0] = *(*v18 + 120);
  v26[1] = v20;
  v27[0] = *(v19 + 152);
  *(v27 + 9) = *(v19 + 161);
  v21 = *(v19 + 120);
  v22 = *(v19 + 152);
  v23 = *(v19 + 164);
  v24 = *(v19 + 168);
  result = (*(*(a5 + 8) + 24))(a4);
  if (result >= v23)
  {
    goto LABEL_10;
  }

  while ((*(v22 + 8 * result + 4) & 1) != 0)
  {
    do
    {
LABEL_10:
      if (!v24)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(result, 0, v26);
      }

      v21 = *v24;
      v22 = v24[4];
      v25 = *(v24 + 11);
      v24 = v24[6];
    }

    while (result >= v25);
  }

  if (!v21)
  {
    goto LABEL_19;
  }

  return specialized BufferAttachment.init(pointer:fileSize:)(a1, a2, a4);
}

uint64_t static BufferAttachment.serialize(value:to:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), uint64_t a6, uint64_t a7)
{
  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v7 = *(*(a7 - 8) + 64);
  v8 = a2 * v7;
  if ((a2 * v7) >> 64 != (a2 * v7) >> 63)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (!a4)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (!(v8 % a4))
  {
    return a5(result, result + v8);
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t BufferAttachment.rawSize.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v5 = *(*(a5 - 8) + 64);
  result = a2 * v5;
  if ((a2 * v5) >> 64 != (a2 * v5) >> 63)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t BufferAttachment.rawCapacity.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 < 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v5 = *(*(a5 - 8) + 64);
  result = a3 * v5;
  if ((a3 * v5) >> 64 != (a3 * v5) >> 63)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t BufferAttachment.subscript.setter(void *a1, uint64_t a2, uint64_t a3)
{
  specialized BufferAttachment.subscript.setter(a1, a2, a3);
  v5 = *(*(*(a3 + 16) - 8) + 8);

  return v5(a1);
}

uint64_t BufferAttachment.mutLast(_:)(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  result = MEMORY[0x28223BE20](a1);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v3[1];
  if (v12)
  {
    v13 = v12 - 1;
    if (v12 - 1 < 0)
    {
      __break(1u);
    }

    else
    {
      v14 = v3[3];
      result = v13 * v14;
      if ((v13 * v14) >> 64 == (v13 * v14) >> 63)
      {
        UnsafeMutableRawPointer.loadUnaligned<A>(fromByteOffset:as:)(result, *v3, v6, v11);
        a1(v11);
        specialized BufferAttachment.subscript.setter(v11, v13, a3);
        return (*(v7 + 8))(v11, v6);
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t BufferAttachment.subscript.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    result *= a3;
    if ((v5 * a3) >> 64 == result >> 63)
    {
      return UnsafeMutableRawPointer.loadUnaligned<A>(fromByteOffset:as:)(result, a2, a4, a5);
    }
  }

  __break(1u);
  return result;
}

uint64_t BufferAttachment.subscript.modify(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x38uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[1] = a3;
  v8[2] = v3;
  *v8 = a2;
  v10 = *(a3 + 16);
  v8[3] = v10;
  v11 = *(v10 - 8);
  v8[4] = v11;
  v12 = *(v11 + 64);
  if (v7)
  {
    v8[5] = swift_coroFrameAlloc();
    result = swift_coroFrameAlloc();
  }

  else
  {
    v8[5] = malloc(*(v11 + 64));
    result = malloc(v12);
  }

  v14 = result;
  v9[6] = result;
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v15 = v3[3];
    result = a2 * v15;
    if ((a2 * v15) >> 64 == (a2 * v15) >> 63)
    {
      UnsafeMutableRawPointer.loadUnaligned<A>(fromByteOffset:as:)(result, *v3, v10, v14);
      return BufferAttachment.subscript.modify;
    }
  }

  __break(1u);
  return result;
}

void BufferAttachment.subscript.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v4 = (*a1)[6];
  v5 = (*a1)[3];
  v6 = (*a1)[4];
  v8 = (*a1)[1];
  v7 = (*a1)[2];
  v9 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[5], v4, v5);
    specialized BufferAttachment.subscript.setter(v3, v9, v8);
    v10 = *(v6 + 8);
    v10(v3, v5);
    v10(v4, v5);
  }

  else
  {
    specialized BufferAttachment.subscript.setter((*a1)[6], v9, v8);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

Swift::Void __swiftcall BufferAttachment.deallocate()()
{
  if (*v0)
  {
    MEMORY[0x26D69EAB0](*v0, -1, -1);
    *v0 = 0;
  }
}

uint64_t protocol witness for static Attachment.construct(attachment:from:) in conformance BufferAttachment<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = static BufferAttachment.construct(attachment:from:)(a1, a2, a3, *(a4 + 16), *(a4 + 24));
  *a5 = result;
  a5[1] = v7;
  a5[2] = v8;
  a5[3] = v9;
  return result;
}

double protocol witness for Sequence.makeIterator() in conformance BufferAttachment<A>@<D0>(uint64_t a1@<X8>)
{
  BufferAttachment.makeIterator()(*v1, v1[1], v1[2], v1[3], v5);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance BufferAttachment<A>()
{
  v2 = *v0;
  v3 = *(v0 + 1);
  v4 = v0[3];
  return specialized Sequence._copyToContiguousArray()();
}

uint64_t protocol witness for Sequence._copyContents(initializing:) in conformance BufferAttachment<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  v7 = *(v4 + 1);
  v8 = v4[3];
  return MEMORY[0x26D69CEF0](a1, a2, a3, a4);
}

uint64_t BufferAttachment<>.describe(state:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = *(a1 + 16);
  v6 = a1[3];
  v7 = a1[4];
  v8 = *(a1 + 20);
  v13 = a4;
  type metadata accessor for BufferAttachment();
  swift_getWitnessTable();
  v12[1] = v4;
  v12[2] = 0x7FFFFFFFFFFFFFFFLL;
  LOBYTE(v13) = v5;
  v14 = v6;
  v15 = v7;
  v16 = v8;
  v12[0] = Array.init<A>(_:)();
  v9 = type metadata accessor for Array();
  v10 = InspectionState.describe<A>(_:)(v12, v9, &protocol witness table for [A]);

  return v10;
}