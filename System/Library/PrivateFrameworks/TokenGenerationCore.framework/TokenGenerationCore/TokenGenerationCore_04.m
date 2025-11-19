uint64_t _sSa9repeating5countSayxGx_SitcfCSaySiG_Tt1g5Tf4gn_n(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v3 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd, &_sSaySiGMR);
    v4 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    v5 = v4;
    *(v4 + 16) = a2;
    *(v4 + 32) = v3;
    v6 = a2 - 1;
    if (v6)
    {
      v7 = (v4 + 40);
      do
      {
        *v7++ = v3;

        --v6;
      }

      while (v6);
    }

    return v5;
  }

  return result;
}

uint64_t outlined init with copy of Symbol(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s19TokenGenerationCore6SymbolOWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t static CharacterSet.swiftIdentifierHead.getter()
{
  CharacterSet.init(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  v0._object = 0x80000001A8FD8CF0;
  v0._countAndFlagsBits = 0x100000000000001FLL;
  CharacterSet.insert(charactersIn:)(v0);
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  v1._countAndFlagsBits = 9732578;
  v1._object = 0xA300000000000000;
  CharacterSet.insert(charactersIn:)(v1);
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  return CharacterSet.insert(charactersIn:)();
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay19TokenGenerationCore6ChoiceVG_AHs5NeverOTg504_s19de178Core15wholeNumberRule33_77ABCD41F000EB3C4AAEC3BD7ED6ED2FLL3min3maxAA0F0V4root_ShyAGG12dependenciestSiSg_AKtF011nDigitWholeE16BetweenInclusiveL_0O6Digits0pW0AgH_AiJtSaySiG_AOtFAA6G8VAQXEfU_SayAF6SymbolOGTf1cn_n(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v25 = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
  v3 = v25;
  for (i = (a1 + 32); ; ++i)
  {
    v8 = *i;
    v9 = *a2;
    v10 = *(*i + 16);
    v11 = *(*a2 + 16);
    v12 = v11 + v10;
    if (__OFADD__(v11, v10))
    {
      break;
    }

    v13 = *i;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v12 <= v9[3] >> 1)
    {
      if (*(v8 + 16))
      {
        goto LABEL_7;
      }
    }

    else
    {
      if (v11 <= v12)
      {
        v22 = v11 + v10;
      }

      else
      {
        v22 = v11;
      }

      v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v22, 1, v9);
      if (*(v8 + 16))
      {
LABEL_7:
        v15 = (v9[3] >> 1) - v9[2];
        result = type metadata accessor for Symbol(0);
        v16 = *(result - 8);
        if (v15 < v10)
        {
          goto LABEL_22;
        }

        v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
        v18 = *(v16 + 72);
        swift_arrayInitWithCopy();

        if (v10)
        {
          v19 = v9[2];
          v20 = __OFADD__(v19, v10);
          v21 = v19 + v10;
          if (v20)
          {
            goto LABEL_23;
          }

          v9[2] = v21;
        }

        goto LABEL_16;
      }
    }

    if (v10)
    {
      goto LABEL_21;
    }

LABEL_16:
    v24 = *(v25 + 16);
    v23 = *(v25 + 24);
    if (v24 >= v23 >> 1)
    {
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1);
    }

    *(v25 + 16) = v24 + 1;
    *(v25 + 8 * v24 + 32) = v9;
    if (!--v2)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t specialized Set.formUnion<A>(_:)(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + 24 * (v9 | (v8 << 6)));
      v11 = *v10;
      v12 = v10[1];
      v13 = v10[2];

      specialized Set._Variant.insert(_:)(&v14, v11, v12, v13);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 48);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;
      v5 = *(v2 - 2);

      specialized Set._Variant.insert(_:)(&v6, v5, v4, v3);

      v2 += 3;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t wholeNumberRule(min:max:)(void *a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  v8 = a1;
  if (a3)
  {
    if (a5)
    {
      if (one-time initialization token for baseIntegerRules == -1)
      {
LABEL_4:
        rawValue = baseIntegerRules._rawValue;
        v10 = *(baseIntegerRules._rawValue + 2);
        if (v10)
        {
          v11 = *(baseIntegerRules._rawValue + 4);
          v13 = *(baseIntegerRules._rawValue + 5);
          v12 = baseIntegerRules._rawValue + 32;
          v14 = *(baseIntegerRules._rawValue + 6);
          v15 = (2 * v10) | 1;

          result = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC19TokenGenerationCore4RuleV_s10ArraySliceVyAFGTt0g5Tf4gX_n(v12, 1, v15);
          *v8 = v11;
          *(v8 + 8) = v13;
          *(v8 + 16) = v14;
          return result;
        }

        __break(1u);
LABEL_89:
        __break(1u);
        goto LABEL_90;
      }

LABEL_87:
      swift_once();
      goto LABEL_4;
    }

    v17 = 0xD000000000000014;
    _StringGuts.grow(_:)(28);

    v168 = 0xD00000000000001ALL;
    *&v169 = 0x80000001A8FD8D90;
    v170 = a4;
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1AC57C120](v24);

    *&v164 = 0x80000001A8FD8D90;
    *&v161 = 0xD00000000000001ALL;
    if ((a4 & 0x8000000000000000) == 0)
    {
      v167 = v8;
      v154 = wholeNumberRule(min:max:)(&v168, 0, 0, a4, 0);
      v6 = v168;
      v159 = v169;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMR);
      rawValue = swift_allocObject();
      *(rawValue + 16) = xmmword_1A8FC9410;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMR);
      v25 = *(type metadata accessor for Symbol(0) - 8);
      v26 = *(v25 + 72);
      v27 = (*(v25 + 80) + 32) & ~*(v25 + 80);
      v28 = swift_allocObject();
      v156 = xmmword_1A8FC9400;
      *(v28 + 16) = xmmword_1A8FC9400;
      v29 = (v28 + v27);
      *v29 = v6;
      v29[1] = v159;
      swift_storeEnumTagMultiPayload();
      *(rawValue + 32) = v28;
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_1A8FC9400;
      v31 = (v30 + v27);
      *v31 = 0xD000000000000011;
      v31[1] = 0x80000001A8FD8DB0;
      swift_storeEnumTagMultiPayload();
      *(rawValue + 40) = v30;
      v32 = one-time initialization token for baseIntegerRules;

      if (v32 == -1)
      {
LABEL_12:

        v34 = specialized Set.union<A>(_:)(v33, v154);

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMR);
        inited = swift_initStackObject();
        *(inited + 16) = v156;
        *(inited + 32) = v6;
        v36 = inited + 32;
        *(inited + 40) = v159;
        a4 = specialized Set.union<A>(_:)(inited, v34);
        swift_setDeallocating();
        outlined destroy of Rule(v36);
        v37 = v167;
        *v167 = v161;
        v38 = v164;
LABEL_36:
        v37[1] = v38;
        v37[2] = rawValue;
        return a4;
      }

LABEL_90:
      swift_once();
      goto LABEL_12;
    }

    if (!__OFSUB__(0, a4))
    {
      v68 = v8;
      v69 = wholeNumberRule(min:max:)(&v168, -a4, 0, 0, 1);
      v70 = v168;
      v160 = v169;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMR);
      v71 = swift_allocObject();
      *(v71 + 16) = xmmword_1A8FC9400;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMR);
      v72 = *(type metadata accessor for Symbol(0) - 8);
      v73 = *(v72 + 72);
      v74 = (*(v72 + 80) + 32) & ~*(v72 + 80);
      v75 = swift_allocObject();
      *(v75 + 16) = xmmword_1A8FC9410;
      v76 = (v75 + v74);
      *v76 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x2DuLL, 0xE100000000000000);
      swift_storeEnumTagMultiPayload();
      v77 = (v76 + v73);
      *v77 = v70;
      v77[1] = v160;
      swift_storeEnumTagMultiPayload();
      *(v71 + 32) = v75;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMR);
      v78 = swift_initStackObject();
      *(v78 + 16) = xmmword_1A8FC9400;
      *(v78 + 32) = v70;
      *(v78 + 40) = v160;

      a4 = specialized Set.union<A>(_:)(v78, v69);
      swift_setDeallocating();
      outlined destroy of Rule(v78 + 32);
      *v68 = 0xD00000000000001ALL;
      v68[1] = 0x80000001A8FD8D90;
      v68[2] = v71;
      return a4;
    }

    goto LABEL_93;
  }

  v5 = a2;
  v17 = 0xD000000000000014;
  v167 = a1;
  if (a5)
  {
    _StringGuts.grow(_:)(31);

    v168 = 0xD00000000000001DLL;
    *&v169 = 0x80000001A8FD8DD0;
    v170 = v5;
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1AC57C120](v18);

    *&v161 = 0x80000001A8FD8DD0;
    *&v159 = 0xD00000000000001DLL;
    if ((v5 & 0x8000000000000000) == 0)
    {
      v19 = digits #1 (in:) in wholeNumberRule(min:max:)(v5);
      v20 = v19;
      v21 = *(v19 + 16);
      if (v21)
      {
        v22 = *(v19 + 16);
        v23 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v23 + 16) = v21;
        memset_pattern16((v23 + 32), &unk_1A8FCB650, 8 * v21);
      }

      else
      {
        v23 = MEMORY[0x1E69E7CC0];
      }

      v155 = nDigitWholeNumberBetweenInclusive #1 (minDigits:maxDigits:) in wholeNumberRule(min:max:)(&v168, v20, v23);

      v79 = v168;
      v165 = v169;
      v153 = nOrGreaterDigitWholeNumber #1 (n:) in wholeNumberRule(min:max:)(&v168, v21 + 1);
      v80 = v168;
      v157 = v169;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMR);
      v81 = swift_allocObject();
      *(v81 + 16) = xmmword_1A8FC9410;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMR);
      v82 = *(type metadata accessor for Symbol(0) - 8);
      v83 = *(v82 + 72);
      v84 = (*(v82 + 80) + 32) & ~*(v82 + 80);
      v85 = swift_allocObject();
      *(v85 + 16) = xmmword_1A8FC9400;
      v86 = (v85 + v84);
      *v86 = v79;
      v86[1] = v165;
      swift_storeEnumTagMultiPayload();
      *(v81 + 32) = v85;
      v87 = swift_allocObject();
      *(v87 + 16) = xmmword_1A8FC9400;
      v88 = (v87 + v84);
      *v88 = v80;
      v88[1] = v157;
      swift_storeEnumTagMultiPayload();
      *(v81 + 40) = v87;

      v89 = specialized Set.union<A>(_:)(v153, v155);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMR);
      v90 = swift_initStackObject();
      *(v90 + 16) = xmmword_1A8FC9410;
      *(v90 + 32) = v79;
      *(v90 + 40) = v165;
      *(v90 + 56) = v80;
      *(v90 + 64) = v157;
      a4 = specialized Set.union<A>(_:)(v90, v89);
      swift_setDeallocating();
      swift_arrayDestroy();
      *v167 = 0xD00000000000001DLL;
      v167[1] = 0x80000001A8FD8DD0;
      v167[2] = v81;
      return a4;
    }

    if (!__OFSUB__(0, v5))
    {
      v148 = wholeNumberRule(min:max:)(&v168, 0, 0, -v5, 0);
      v154 = v168;
      a4 = 0x80000001A8FD8DF0;
      v156 = v169;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMR);
      v6 = swift_allocObject();
      *&v164 = 2;
      *(v6 + 16) = xmmword_1A8FC9410;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMR);
      v55 = *(type metadata accessor for Symbol(0) - 8);
      v56 = *(v55 + 72);
      v57 = (*(v55 + 80) + 32) & ~*(v55 + 80);
      v58 = swift_allocObject();
      *(v58 + 16) = xmmword_1A8FC9410;

      *(v58 + v57) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x2DuLL, 0xE100000000000000);
      swift_storeEnumTagMultiPayload();
      v59 = (v58 + v57 + v56);
      *v59 = v154;
      v59[1] = v156;
      swift_storeEnumTagMultiPayload();
      *(v6 + 32) = v58;
      v60 = swift_allocObject();
      *(v60 + 16) = xmmword_1A8FC9400;
      v61 = (v60 + v57);
      v5 = v6;
      *v61 = 0xD000000000000014;
      v61[1] = 0x80000001A8FD8DF0;
      swift_storeEnumTagMultiPayload();
      *(v6 + 40) = v60;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMR);
      v8 = swift_initStackObject();
      *(v8 + 16) = xmmword_1A8FC9410;
      *(v8 + 32) = v154;
      *(v8 + 40) = v156;
      v62 = one-time initialization token for baseIntegerRules;

      if (v62 == -1)
      {
        goto LABEL_22;
      }

      goto LABEL_94;
    }

LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    swift_once();
LABEL_22:
    v63 = (baseIntegerRules._rawValue + 48);
    v64 = *(baseIntegerRules._rawValue + 2) + 1;
    while (--v64)
    {
      v6 = *(v63 - 2);
      v65 = *(v63 - 1);
      v66 = *v63;
      if (v6 != v17 || a4 != v65)
      {
        v63 += 3;
        if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          continue;
        }
      }

      *(v8 + 56) = v6;
      *(v8 + 64) = v65;
      *(v8 + 72) = v66;
      a4 = specialized Set.union<A>(_:)(v8, v148);
      swift_setDeallocating();
      swift_arrayDestroy();
      *v167 = v159;
      v167[1] = v161;
      v167[2] = v5;
      return a4;
    }

    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  _StringGuts.grow(_:)(32);

  v168 = 0xD000000000000010;
  *&v169 = 0x80000001A8FD8E10;
  v39 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1AC57C120](v39);

  MEMORY[0x1AC57C120](6581825, 0xE300000000000000);
  v170 = a4;
  v40 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1AC57C120](v40);

  result = MEMORY[0x1AC57C120](0x766973756C636E49, 0xE900000000000065);
  if (v5 == a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMR);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_1A8FC9400;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMR);
    v42 = *(type metadata accessor for Symbol(0) - 8);
    v43 = *(v42 + 72);
    v44 = (*(v42 + 80) + 32) & ~*(v42 + 80);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_1A8FC9400;
    v168 = v5;
    v46 = dispatch thunk of CustomStringConvertible.description.getter();
    *(v45 + v44) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(v46, v47);
    swift_storeEnumTagMultiPayload();

    *(v41 + 32) = v45;
    *v167 = 0xD000000000000010;
    v167[1] = 0x80000001A8FD8E10;
    v167[2] = v41;
    return MEMORY[0x1E69E7CD0];
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    if ((a4 & 0x8000000000000000) == 0)
    {
      v48 = *(digits #1 (in:) in wholeNumberRule(min:max:)(v5) + 16);

      v49 = *(digits #1 (in:) in wholeNumberRule(min:max:)(a4) + 16);

      if (v48 < v49)
      {
        v50 = digits #1 (in:) in wholeNumberRule(min:max:)(v5);
        v51 = v50;
        v52 = *(v50 + 16);
        if (v52)
        {
          v53 = *(v50 + 16);
          v54 = static Array._allocateBufferUninitialized(minimumCapacity:)();
          *(v54 + 16) = v52;
          memset_pattern16((v54 + 32), &unk_1A8FCB650, 8 * v52);
        }

        else
        {
          v54 = MEMORY[0x1E69E7CC0];
        }

        v152 = nDigitWholeNumberBetweenInclusive #1 (minDigits:maxDigits:) in wholeNumberRule(min:max:)(&v168, v51, v54);

        v121 = v168;
        v161 = v169;
        v149 = nDigitWholeNumberLessThanOrEqualTo #1 (_:) in wholeNumberRule(min:max:)(&v168, a4);
        v122 = v168;
        v170 = MEMORY[0x1E69E7CD0];
        v123 = v48 + 1;
        v17 = MEMORY[0x1E69E7CC0];
        v154 = 0x80000001A8FD8E10;
        v159 = v169;
        if (v49 > v123)
        {
          v146 = v168;
          *&v156 = v121;
          v6 = 2 - v49;
          v124 = MEMORY[0x1E69E7CC0];
          while (1)
          {
            v8 = nDigitWholeNumber #1 (n:) in wholeNumberRule(min:max:)(&v168, v123);
            v125 = v168;
            v164 = v169;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v124 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v124 + 2) + 1, 1, v124);
            }

            v127 = *(v124 + 2);
            v126 = *(v124 + 3);
            if (v127 >= v126 >> 1)
            {
              v124 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v126 > 1), v127 + 1, 1, v124);
            }

            *(v124 + 2) = v127 + 1;
            v128 = &v124[24 * v127];
            *(v128 + 4) = v125;
            *(v128 + 40) = v164;
            specialized Set.formUnion<A>(_:)(v8);
            if (v6 + v123 == 1)
            {
              break;
            }

            v116 = __OFADD__(v123++, 1);
            if (v116)
            {
              goto LABEL_84;
            }
          }

          v17 = MEMORY[0x1E69E7CC0];
          v122 = v146;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMR);
        v129 = swift_initStackObject();
        *(v129 + 16) = xmmword_1A8FC9410;
        *(v129 + 32) = v121;
        *(v129 + 40) = v161;
        *(v129 + 56) = v122;
        *(v129 + 64) = v159;
        v168 = v129;

        specialized Array.append<A>(contentsOf:)(v130);
        v131 = v168;
        v132 = *(v168 + 16);
        if (v132)
        {
          v168 = v17;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v132, 0);
          v17 = v168;
          v133 = *(type metadata accessor for Symbol(0) - 8);
          v163 = *(v133 + 72);
          v134 = (*(v133 + 80) + 32) & ~*(v133 + 80);
          v147 = v131;
          v135 = (v131 + 40);
          do
          {
            v137 = *(v135 - 1);
            v136 = *v135;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMR);
            v138 = swift_allocObject();
            *(v138 + 16) = xmmword_1A8FC9400;
            v139 = (v138 + v134);
            *v139 = v137;
            v139[1] = v136;
            swift_storeEnumTagMultiPayload();
            v168 = v17;
            v140 = *(v17 + 16);
            v141 = *(v17 + 24);

            if (v140 >= v141 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v141 > 1), v140 + 1, 1);
              v17 = v168;
            }

            *(v17 + 16) = v140 + 1;
            *(v17 + 8 * v140 + 32) = v138;
            v135 += 3;
            --v132;
          }

          while (v132);

          v131 = v147;
        }

        else
        {
        }

        v142 = specialized Set.union<A>(_:)(v152, v170);
        v143 = specialized Set.union<A>(_:)(v149, v142);
        a4 = specialized Set.union<A>(_:)(v131, v143);

        v144 = v167;
        *v167 = 0xD000000000000010;
LABEL_82:
        v144[1] = 0x80000001A8FD8E10;
        v144[2] = v17;
        return a4;
      }

      v103 = *(digits #1 (in:) in wholeNumberRule(min:max:)(v5) + 16);

      v104 = *(digits #1 (in:) in wholeNumberRule(min:max:)(a4) + 16);

      if (v103 == v104)
      {
        v105 = digits #1 (in:) in wholeNumberRule(min:max:)(v5);
        v106 = digits #1 (in:) in wholeNumberRule(min:max:)(a4);
        a4 = nDigitWholeNumberBetweenInclusive #1 (minDigits:maxDigits:) in wholeNumberRule(min:max:)(&v168, v105, v106);

        v107 = v169;
        *v167 = v168;
        *(v167 + 1) = v107;
        return a4;
      }

      __break(1u);
      goto LABEL_96;
    }

LABEL_35:
    v158 = wholeNumberRule(min:max:)(&v168, v5, 0, -1, 0);
    v91 = v168;
    v145 = v168;
    v166 = v169;
    v150 = wholeNumberRule(min:max:)(&v168, 0, 0, a4, 0);
    v92 = v168;
    v162 = v169;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMR);
    rawValue = swift_allocObject();
    *(rawValue + 16) = xmmword_1A8FCB600;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMR);
    v93 = *(type metadata accessor for Symbol(0) - 8);
    v94 = *(v93 + 72);
    v95 = (*(v93 + 80) + 32) & ~*(v93 + 80);
    v96 = swift_allocObject();
    *(v96 + 16) = xmmword_1A8FC9400;
    v97 = (v96 + v95);
    *v97 = v91;
    v97[1] = v166;
    swift_storeEnumTagMultiPayload();
    *(rawValue + 32) = v96;
    v98 = swift_allocObject();
    *(v98 + 16) = xmmword_1A8FC9400;
    v99 = (v98 + v95);
    *v99 = v92;
    v99[1] = v162;
    swift_storeEnumTagMultiPayload();
    *(rawValue + 40) = v98;
    v100 = swift_allocObject();
    *(v100 + 16) = xmmword_1A8FC9400;

    *(v100 + v95) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x302DuLL, 0xE200000000000000);
    swift_storeEnumTagMultiPayload();
    *(rawValue + 48) = v100;
    v101 = specialized Set.union<A>(_:)(v150, v158);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMR);
    v102 = swift_allocObject();
    *(v102 + 16) = xmmword_1A8FC9410;
    *(v102 + 32) = v145;
    *(v102 + 40) = v166;
    *(v102 + 56) = v92;
    *(v102 + 64) = v162;
    a4 = specialized Set.union<A>(_:)(v102, v101);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v37 = v167;
    v38 = 0x80000001A8FD8E10;
    *v167 = 0xD000000000000010;
    goto LABEL_36;
  }

  if ((a4 & 0x8000000000000000) == 0)
  {
    goto LABEL_35;
  }

  if (__OFSUB__(0, a4))
  {
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

  if (!__OFSUB__(0, v5))
  {
    a4 = wholeNumberRule(min:max:)(&v168, -a4, 0, -v5, 0);
    v108 = *(&v169 + 1);

    v8 = *(v108 + 16);
    if (!v8)
    {

      v17 = MEMORY[0x1E69E7CC0];
LABEL_81:

      v144 = v167;
      *v167 = 0xD000000000000010;
      goto LABEL_82;
    }

    v151 = a4;
    v154 = 0x80000001A8FD8E10;
    v168 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8, 0);
    v17 = v168;
    *&v164 = type metadata accessor for Symbol(0);
    *&v161 = *(*(v164 - 8) + 72);
    *&v159 = *(*(v164 - 8) + 80);
    v5 = (v159 + 32) & ~v159;
    v6 = 32;
    v156 = xmmword_1A8FC9400;
    while (1)
    {
      rawValue = *(v108 + v6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMR);
      v109 = swift_allocObject();
      *(v109 + 16) = xmmword_1A8FC9400;

      *(v109 + v5) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x2DuLL, 0xE100000000000000);
      swift_storeEnumTagMultiPayload();
      v110 = *(rawValue + 16);
      v111 = *(v109 + 16);
      v112 = v111 + v110;
      if (__OFADD__(v111, v110))
      {
        goto LABEL_85;
      }

      v113 = *(v109 + 24) >> 1;
      if (v113 < v112)
      {
        if (v111 <= v112)
        {
          v118 = v111 + v110;
        }

        else
        {
          v118 = *(v109 + 16);
        }

        v109 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(1uLL, v118, 1, v109);
        v111 = *(v109 + 16);
        v113 = *(v109 + 24) >> 1;
        if (!*(rawValue + 16))
        {
LABEL_55:
          if (v110)
          {
            goto LABEL_86;
          }

          goto LABEL_56;
        }
      }

      else
      {
        v114 = *(rawValue + 16);
        if (!v110)
        {
          goto LABEL_55;
        }
      }

      if ((v113 - v111) < v110)
      {
        goto LABEL_89;
      }

      swift_arrayInitWithCopy();
      if (v110)
      {
        v115 = *(v109 + 16);
        v116 = __OFADD__(v115, v110);
        v117 = v115 + v110;
        if (v116)
        {
          __break(1u);
          goto LABEL_92;
        }

        *(v109 + 16) = v117;
      }

LABEL_56:
      a4 = v108;

      v168 = v17;
      v120 = *(v17 + 16);
      v119 = *(v17 + 24);
      if (v120 >= v119 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v119 > 1), v120 + 1, 1);
        v17 = v168;
      }

      *(v17 + 16) = v120 + 1;
      *(v17 + 8 * v120 + 32) = v109;
      v6 += 8;
      --v8;
      v108 = a4;
      if (!v8)
      {

        a4 = v151;
        goto LABEL_81;
      }
    }
  }

LABEL_97:
  __break(1u);
  return result;
}

uint64_t decimalNumberRule(min:max:significantFigures:)(uint64_t a1, uint64_t a2, char a3, int64_t a4, char a5, uint64_t a6)
{
  *&v280 = a2;
  v14 = type metadata accessor for Symbol(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  *&v279 = &v255 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for FloatingPointRoundingRule();
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v255 - v23;
  v25 = MEMORY[0x1EEE9AC00](v22);
  v30 = &v255 - v29;
  if (a6 < 1)
  {
    __break(1u);
LABEL_176:
    swift_once();
LABEL_5:
    v31 = *(baseNumberRules._rawValue + 2);
    if (v31)
    {
      v32 = *(baseNumberRules._rawValue + 5);
      v33 = baseNumberRules._rawValue + 32;
      v34 = *(baseNumberRules._rawValue + 6);
      *a1 = *(baseNumberRules._rawValue + 4);
      *(a1 + 8) = v32;
      *(a1 + 16) = v34;
      v35 = (2 * v31) | 1;

      return _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC19TokenGenerationCore4RuleV_s10ArraySliceVyAFGTt0g5Tf4gX_n(v33, 1, v35);
    }

    __break(1u);
LABEL_178:
    __break(1u);
LABEL_179:
    __break(1u);
    goto LABEL_180;
  }

  v281 = v14;
  if (a3)
  {
    if ((a5 & 1) == 0)
    {
      v6 = *&a4;
      v59 = floor(*&a4);
      if ((*&v59 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        if (v59 > -9.22337204e18)
        {
          if (v59 < 9.22337204e18)
          {
            v276 = (a6 - 1);
            v60 = wholeNumberRule(min:max:)(&v284, 0, 1, v59, 0);
            v24 = v284;
            v273 = v285;
            v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMR);
            v62 = *(v15 + 80);
            v63 = (v62 + 32) & ~v62;
            *&v272 = *(v15 + 72);
            *&v274 = v62;
            *&v275 = v61;
            v15 = swift_allocObject();
            v280 = xmmword_1A8FC9400;
            *(v15 + 16) = xmmword_1A8FC9400;
            v271 = v63;
            v64 = (v15 + v63);
            *v64 = v24;
            v64[1] = v273;
            swift_storeEnumTagMultiPayload();
            if ((~a4 & 0x7FF0000000000000) != 0)
            {
              if (*&a4 > -9.22337204e18)
              {
                if (*&a4 < 9.22337204e18)
                {
                  if (!__OFSUB__(*&a4, 1))
                  {
                    *&v261 = *&a4;
                    v265 = v15;
                    v266 = v60;
                    v267 = v24;
                    *&v277 = a6;
                    v278 = a1;
                    *&a4 = 1.81670465e-306;

                    *&v263 = wholeNumberRule(min:max:)(&v284, 0, 1, v6 - 1, 0);
                    v269 = v284;
                    v270 = v285;
                    v262 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMR);
                    v65 = swift_allocObject();
                    *(v65 + 16) = xmmword_1A8FC9410;
                    v15 = v271;
                    a6 = v272;
                    v24 = v275;
                    v66 = swift_allocObject();
                    *(v66 + 16) = v280;
                    v67 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0, 0xE000000000000000);
                    v260 = 0;
                    *(v66 + v15) = v67;
                    swift_storeEnumTagMultiPayload();
                    *(v65 + 32) = v66;
                    v68 = swift_allocObject();
                    *(v68 + 16) = v280;
                    v69 = (v68 + v15);
                    *v69 = 0x74696769445F5FLL;
                    v69[1] = 0xE700000000000000;
                    swift_storeEnumTagMultiPayload();
                    v264 = v65;
                    *(v65 + 40) = v68;
                    if (one-time initialization token for baseIntegerRules != -1)
                    {
                      swift_once();
                    }

                    a1 = 0;
                    rawValue = baseIntegerRules._rawValue;
                    v70 = baseIntegerRules._rawValue + 48;
                    v49 = -*(baseIntegerRules._rawValue + 2);
                    *&v280 = MEMORY[0x1E69E7CC0];
                    for (i = baseIntegerRules._rawValue + 48; ; v70 = i)
                    {
                      v30 = a1 + 1;
                      v71 = &v70[24 * a1];
                      do
                      {
                        if (v49 + v30 == 1)
                        {
                          v137 = v279;
                          *v279 = 0x6E6F6974704F5F5FLL;
                          *(v137 + 8) = 0xEF74696769446C61;
                          swift_storeEnumTagMultiPayload();
                          v276 = _sSa9repeating5countSayxGx_SitcfC19TokenGenerationCore6SymbolO_Tt1g5(v137, v276);
                          v139 = v271;
                          v138 = v272;
                          v140 = 2 * v272;
                          v259 = v271 + v272;
                          v141 = swift_allocObject();
                          v279 = xmmword_1A8FCB600;
                          *(v141 + 16) = xmmword_1A8FCB600;
                          v142 = (v141 + v139);
                          *v142 = v269;
                          v142[1] = v270;
                          swift_storeEnumTagMultiPayload();

                          *(v142 + v138) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x2EuLL, 0xE100000000000000);
                          swift_storeEnumTagMultiPayload();
                          v143 = (v141 + v139 + v140);
                          *v143 = 0x74696769445F5FLL;
                          v143[1] = 0xE700000000000000;
                          swift_storeEnumTagMultiPayload();
                          v284 = v141;
                          specialized Array.append<A>(contentsOf:)(v276);
                          v276 = v284;
                          v144 = fabs(v6) - fabs(trunc(v6));
                          if (v6 >= 0.0)
                          {
                            v145 = *&v144;
                          }

                          else
                          {
                            v145 = 0;
                          }

                          if (v6 >= 0.0)
                          {
                            v146 = 0;
                          }

                          else
                          {
                            v146 = *&v144;
                          }

                          fractionalRule(min:max:significantFigures:)(&v284, v146, v6 >= 0.0, v145, v6 < 0.0, v277);
                          i = v147;
                          v148 = v284;
                          v260 = "DigitIntegerBetween";
                          v277 = v285;
                          v149 = swift_allocObject();
                          *(v149 + 16) = v279;
                          v150 = (v149 + v139);
                          v284 = v261;
                          v151 = dispatch thunk of CustomStringConvertible.description.getter();
                          *v150 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(v151, v152);
                          swift_storeEnumTagMultiPayload();

                          *(v150 + v138) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x2EuLL, 0xE100000000000000);
                          swift_storeEnumTagMultiPayload();
                          v153 = (v149 + v139 + 2 * v138);
                          v154 = v148;
                          *v153 = v148;
                          v153[1] = v277;
                          swift_storeEnumTagMultiPayload();
                          v284 = 0;
                          *&v285 = 0xE000000000000000;

                          _StringGuts.grow(_:)(27);
                          MEMORY[0x1AC57C120](0xD000000000000019, v260 | 0x8000000000000000);
                          Double.write<A>(to:)();
                          v127 = v284;
                          v126 = v285;
                          v128 = swift_allocObject();
                          *(v128 + 16) = v279;
                          v155 = v266;
                          v156 = v276;
                          *(v128 + 32) = v265;
                          *(v128 + 40) = v156;
                          *(v128 + 48) = v149;
                          v157 = specialized Set.union<A>(_:)(v280, v155);

                          v158 = specialized Set.union<A>(_:)(i, v157);
                          v133 = specialized Set.union<A>(_:)(v263, v158);
                          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMR);
                          inited = swift_initStackObject();
                          *(inited + 16) = xmmword_1A8FCB610;
                          *(inited + 32) = v267;
                          *(inited + 40) = v273;
                          *(inited + 56) = v154;
                          *(inited + 64) = v277;
                          *(inited + 80) = v269;
                          *(inited + 88) = v270;
                          *(inited + 104) = 0x6E6F6974704F5F5FLL;
                          *(inited + 112) = 0xEF74696769446C61;
                          v136 = v264;
                          goto LABEL_83;
                        }

                        a1 = v30;
                        v51 = (v30 - 1);
                        if (v30 - 1 >= *(rawValue + 16))
                        {
                          goto LABEL_169;
                        }

                        v15 = *(v71 - 2);
                        a6 = *(v71 - 1);
                        v24 = *v71;
                        if (v15 == 0x74696769445F5FLL && a6 == 0xE700000000000000)
                        {
                          break;
                        }

                        ++v30;
                        v71 += 3;
                      }

                      while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0);

                      v73 = v280;
                      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                      v284 = v73;
                      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                      {
                        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v73 + 2) + 1, 1);
                        v73 = v284;
                      }

                      v76 = *(v73 + 2);
                      v75 = *(v73 + 3);
                      v77 = v76 + 1;
                      if (v76 >= v75 >> 1)
                      {
                        *&v280 = v76 + 1;
                        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v75 > 1), v76 + 1, 1);
                        v77 = v280;
                        v73 = v284;
                      }

                      *(v73 + 2) = v77;
                      *&v280 = v73;
                      v78 = &v73[24 * v76];
                      *(v78 + 4) = v15;
                      *(v78 + 5) = a6;
                      *(v78 + 6) = v24;
                    }
                  }

                  goto LABEL_197;
                }

                goto LABEL_194;
              }

              goto LABEL_191;
            }

            goto LABEL_188;
          }

          goto LABEL_185;
        }

        goto LABEL_182;
      }

      goto LABEL_179;
    }

    if (one-time initialization token for baseNumberRules == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_176;
  }

  v6 = *&v280;
  v278 = a1;
  v276 = (a6 - 1);
  if (a5)
  {
    v37 = ceil(*&v280);
    if ((*&v37 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v37 > -9.22337204e18)
      {
        if (v37 < 9.22337204e18)
        {
          *&a4 = COERCE_DOUBLE(wholeNumberRule(min:max:)(&v284, v37, 0, 0, 1));
          v24 = v284;
          v272 = v285;
          v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMR);
          v39 = *(v15 + 72);
          v40 = (*(v15 + 80) + 32) & ~*(v15 + 80);
          *&v274 = *(v15 + 80);
          *&v275 = v38;
          v15 = swift_allocObject();
          v273 = xmmword_1A8FC9400;
          *(v15 + 16) = xmmword_1A8FC9400;
          v271 = v40;
          v41 = (v15 + v40);
          *v41 = v24;
          v41[1] = v272;
          swift_storeEnumTagMultiPayload();
          if ((~v280 & 0x7FF0000000000000) != 0)
          {
            if (v6 > -9.22337204e18)
            {
              if (v6 < 9.22337204e18)
              {
                if (!__OFADD__(v6, 1))
                {
                  *&v261 = v6;
                  v266 = v15;
                  v267 = a4;
                  i = v24;
                  *&v277 = a6;
                  *&a4 = 1.81670465e-306;

                  v264 = wholeNumberRule(min:max:)(&v284, v6 + 1, 0, 0, 1);
                  v269 = v284;
                  v270 = v285;
                  v262 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMR);
                  v42 = swift_allocObject();
                  *(v42 + 16) = xmmword_1A8FC9410;
                  v24 = v271;
                  v15 = v274;
                  a6 = v275;
                  v43 = swift_allocObject();
                  *(v43 + 16) = v273;
                  v44 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0, 0xE000000000000000);
                  v260 = 0;
                  *(v43 + v24) = v44;
                  swift_storeEnumTagMultiPayload();
                  *(v42 + 32) = v43;
                  *&v263 = v39;
                  v45 = swift_allocObject();
                  *(v45 + 16) = v273;
                  v46 = (v45 + v24);
                  *v46 = 0x74696769445F5FLL;
                  v46[1] = 0xE700000000000000;
                  swift_storeEnumTagMultiPayload();
                  v265 = v42;
                  *(v42 + 40) = v45;
                  if (one-time initialization token for baseIntegerRules == -1)
                  {
LABEL_18:
                    a1 = 0;
                    rawValue = baseIntegerRules._rawValue;
                    v48 = baseIntegerRules._rawValue + 48;
                    v49 = -*(baseIntegerRules._rawValue + 2);
                    *&v280 = MEMORY[0x1E69E7CC0];
                    *&v273 = baseIntegerRules._rawValue + 48;
                    while (1)
                    {
                      v30 = a1 + 1;
                      v50 = &v48[24 * a1];
                      do
                      {
                        if (v49 + v30 == 1)
                        {
                          v108 = v279;
                          *v279 = 0x6E6F6974704F5F5FLL;
                          *(v108 + 8) = 0xEF74696769446C61;
                          swift_storeEnumTagMultiPayload();
                          v276 = _sSa9repeating5countSayxGx_SitcfC19TokenGenerationCore6SymbolO_Tt1g5(v108, v276);
                          v109 = v263;
                          v110 = 2 * v263;
                          v111 = v271;
                          v259 = v271 + v263;
                          v112 = swift_allocObject();
                          v279 = xmmword_1A8FCB600;
                          *(v112 + 16) = xmmword_1A8FCB600;
                          v113 = (v112 + v111);
                          *v113 = v269;
                          v113[1] = v270;
                          swift_storeEnumTagMultiPayload();

                          *(v113 + v109) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x2EuLL, 0xE100000000000000);
                          swift_storeEnumTagMultiPayload();
                          v114 = v112 + v111 + v110;
                          *v114 = *&a4;
                          *(v114 + 8) = 0xE700000000000000;
                          swift_storeEnumTagMultiPayload();
                          v284 = v112;
                          specialized Array.append<A>(contentsOf:)(v276);
                          v276 = v284;
                          v115 = fabs(v6) - fabs(trunc(v6));
                          if (v6 < 0.0)
                          {
                            v116 = *&v115;
                          }

                          else
                          {
                            v116 = 0;
                          }

                          if (v6 < 0.0)
                          {
                            v117 = 0;
                          }

                          else
                          {
                            v117 = *&v115;
                          }

                          fractionalRule(min:max:significantFigures:)(&v284, v117, v6 < 0.0, v116, v6 >= 0.0, v277);
                          *&v273 = v118;
                          v119 = v284;
                          v260 = "__NumberLessThanOrEqualTo";
                          v277 = v285;
                          v120 = swift_allocObject();
                          *(v120 + 16) = v279;
                          v121 = (v120 + v111);
                          v284 = v261;
                          v122 = dispatch thunk of CustomStringConvertible.description.getter();
                          *v121 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(v122, v123);
                          swift_storeEnumTagMultiPayload();

                          *(v121 + v109) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x2EuLL, 0xE100000000000000);
                          swift_storeEnumTagMultiPayload();
                          v124 = (v120 + v111 + 2 * v109);
                          v125 = v119;
                          *v124 = v119;
                          v124[1] = v277;
                          swift_storeEnumTagMultiPayload();
                          v284 = 0;
                          *&v285 = 0xE000000000000000;

                          _StringGuts.grow(_:)(30);
                          MEMORY[0x1AC57C120](0xD00000000000001CLL, v260 | 0x8000000000000000);
                          Double.write<A>(to:)();
                          v127 = v284;
                          v126 = v285;
                          v128 = swift_allocObject();
                          *(v128 + 16) = v279;
                          v129 = v267;
                          v130 = v276;
                          *(v128 + 32) = v266;
                          *(v128 + 40) = v130;
                          *(v128 + 48) = v120;
                          v131 = specialized Set.union<A>(_:)(v280, v129);

                          v132 = specialized Set.union<A>(_:)(v273, v131);
                          v133 = specialized Set.union<A>(_:)(v264, v132);
                          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMR);
                          inited = swift_initStackObject();
                          *(inited + 16) = xmmword_1A8FCB610;
                          v135 = v269;
                          *(inited + 32) = i;
                          *(inited + 40) = v272;
                          *(inited + 56) = v125;
                          *(inited + 64) = v277;
                          *(inited + 80) = v135;
                          *(inited + 88) = v270;
                          *(inited + 104) = 0x6E6F6974704F5F5FLL;
                          *(inited + 112) = 0xEF74696769446C61;
                          v136 = v265;
LABEL_83:
                          *(inited + 120) = v136;
                          v159 = specialized Set.union<A>(_:)(inited, v133);
                          swift_setDeallocating();
                          swift_arrayDestroy();
                          v160 = v278;
                          *v278 = v127;
                          v160[1] = v126;
                          v160[2] = v128;
                          return v159;
                        }

                        a1 = v30;
                        v51 = (v30 - 1);
                        if (v30 - 1 >= *(rawValue + 16))
                        {
                          __break(1u);
LABEL_169:
                          __break(1u);
LABEL_170:
                          *&v280 = v51;
                          Double._roundSlowPath(_:)();
                          v83 = v280;
                          v254 = v30;
                          v30 = *v280;
                          (*v280)(v254, v275);
                          (v30)(v24, v275);
                          v79 = *&v284;
                          goto LABEL_110;
                        }

                        v15 = *(v50 - 2);
                        a6 = *(v50 - 1);
                        v24 = *v50;
                        if (v15 == a4 && a6 == 0xE700000000000000)
                        {
                          break;
                        }

                        ++v30;
                        v50 += 3;
                      }

                      while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0);

                      v53 = v280;
                      v54 = swift_isUniquelyReferenced_nonNull_native();
                      v284 = v53;
                      if ((v54 & 1) == 0)
                      {
                        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v53 + 2) + 1, 1);
                        v53 = v284;
                      }

                      v56 = *(v53 + 2);
                      v55 = *(v53 + 3);
                      v57 = v56 + 1;
                      if (v56 >= v55 >> 1)
                      {
                        *&v280 = v56 + 1;
                        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v55 > 1), v56 + 1, 1);
                        v57 = v280;
                        v53 = v284;
                      }

                      *(v53 + 2) = v57;
                      *&v280 = v53;
                      v58 = &v53[24 * v56];
                      *(v58 + 4) = v15;
                      *(v58 + 5) = a6;
                      *(v58 + 6) = v24;
                      v48 = v273;
                    }
                  }

LABEL_198:
                  swift_once();
                  goto LABEL_18;
                }

                goto LABEL_196;
              }

              goto LABEL_193;
            }

            goto LABEL_190;
          }

          goto LABEL_187;
        }

        goto LABEL_184;
      }

      goto LABEL_181;
    }

    goto LABEL_178;
  }

  v264 = v28;
  *&v273 = v27;
  v269 = v26;
  *&v275 = v25;
  v7 = *&a4;
  v284 = 0;
  *&v285 = 0xE000000000000000;
  _StringGuts.grow(_:)(31);
  MEMORY[0x1AC57C120](0x7265626D754E5F5FLL, 0xEF6E656577746542);
  Double.write<A>(to:)();
  MEMORY[0x1AC57C120](6581825, 0xE300000000000000);
  Double.write<A>(to:)();
  MEMORY[0x1AC57C120](0x766973756C636E49, 0xE900000000000065);
  v79 = trunc(v6);
  if ((*&v79 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_180:
    __break(1u);
LABEL_181:
    __break(1u);
LABEL_182:
    __break(1u);
    goto LABEL_183;
  }

  if (v79 <= -9.22337204e18)
  {
LABEL_183:
    __break(1u);
LABEL_184:
    __break(1u);
LABEL_185:
    __break(1u);
    goto LABEL_186;
  }

  if (v79 >= 9.22337204e18)
  {
LABEL_186:
    __break(1u);
LABEL_187:
    __break(1u);
LABEL_188:
    __break(1u);
    goto LABEL_189;
  }

  v8 = trunc(*&a4);
  if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_189:
    __break(1u);
LABEL_190:
    __break(1u);
LABEL_191:
    __break(1u);
    goto LABEL_192;
  }

  if (v8 <= -9.22337204e18)
  {
LABEL_192:
    __break(1u);
LABEL_193:
    __break(1u);
LABEL_194:
    __break(1u);
    goto LABEL_195;
  }

  if (v8 >= 9.22337204e18)
  {
LABEL_195:
    __break(1u);
LABEL_196:
    __break(1u);
LABEL_197:
    __break(1u);
    goto LABEL_198;
  }

  v271 = v284;
  *&v272 = v285;
  v80 = v79;
  v81 = fabs(v6) - fabs(v79);
  v82 = fabs(*&a4) - fabs(v8);
  if (*&v79 == *&v8)
  {
    *&v279 = v79;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySdGMd, &_ss23_ContiguousArrayStorageCySdGMR);
    v83 = swift_allocObject();
    *(v83 + 1) = xmmword_1A8FC9410;
    *(v83 + 4) = v81;
    *(v83 + 5) = v82;
    v284 = v83;

    v49 = 0;
    specialized MutableCollection<>.sort(by:)(&v284);

    v24 = v284;
    v84 = *(v284 + 16);
    if (v84)
    {
      if (v84 != 1)
      {
        fractionalRule(min:max:significantFigures:)(&v284, *(v284 + 32), 0, *(v284 + 40), 0, a6);
        v276 = v85;
        *&v275 = v284;
        v280 = v285;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMR);
        v86 = swift_allocObject();
        v277 = xmmword_1A8FC9400;
        *(v86 + 16) = xmmword_1A8FC9400;
        v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMR);
        v88 = *(v15 + 72);
        v89 = (*(v15 + 80) + 32) & ~*(v15 + 80);
        *&v274 = 2 * v88;
        *&v270 = v87;
        v90 = swift_allocObject();
        *(v90 + 16) = xmmword_1A8FCB600;
        *&v273 = v89;
        v91 = (v90 + v89);
        v284 = v279;
        v92 = dispatch thunk of CustomStringConvertible.description.getter();
        *v91 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(v92, v93);
        swift_storeEnumTagMultiPayload();

        *(v91 + v88) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x2EuLL, 0xE100000000000000);
        swift_storeEnumTagMultiPayload();
        v94 = (v90 + v89 + v274);
        v95 = v275;
        *v94 = v275;
        v94[1] = v280;
        swift_storeEnumTagMultiPayload();
        *(v86 + 32) = v90;
        v96 = v86;
        if (*(v24 + 16))
        {
          v97 = *(v24 + 32);

          v98 = v278;
          v99 = v272;
          if (v97 == 0.0)
          {
            v100 = v273;
            v101 = swift_allocObject();
            *(v101 + 16) = v277;
            v284 = v279;
            v102 = dispatch thunk of CustomStringConvertible.description.getter();
            *(v101 + v100) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(v102, v103);
            swift_storeEnumTagMultiPayload();

            v105 = *(v96 + 2);
            v104 = *(v96 + 3);
            if (v105 >= v104 >> 1)
            {
              v96 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v104 > 1), v105 + 1, 1, v96);
            }

            v106 = v276;
            v107 = v95;
            *(v96 + 2) = v105 + 1;
            *&v96[8 * v105 + 32] = v101;
            v99 = v272;
            goto LABEL_103;
          }
        }

        else
        {

          v98 = v278;
          v99 = v272;
        }

        v106 = v276;
        v107 = v95;
LABEL_103:
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMR);
        v202 = swift_allocObject();
        *(v202 + 16) = v277;
        *(v202 + 32) = v107;
        v203 = v202 + 32;
        *(v202 + 40) = v280;
        v159 = specialized Set.union<A>(_:)(v202, v106);
        swift_setDeallocating();
        outlined destroy of Rule(v203);
        swift_deallocClassInstance();
        *v98 = v271;
        v98[1] = v99;
        v98[2] = v96;
        return v159;
      }

      goto LABEL_202;
    }

    goto LABEL_200;
  }

  *&v274 = v8;
  v258 = a4;
  v283 = MEMORY[0x1E69E7CD0];
  if (v80 < 0)
  {
    v161 = *&v81;
  }

  else
  {
    v161 = 0;
  }

  *&v277 = a6;
  fractionalRule(min:max:significantFigures:)(&v284, *&v81 & ~(v80 >> 63), v80 < 0, v161, v80 >= 0, a6);
  *&v263 = v162;
  v257 = v284;
  v270 = v285;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMR);
  v164 = *(v15 + 72);
  v165 = *(v15 + 80);
  v166 = (v165 + 32) & ~v165;
  v167 = 2 * v164;
  v259 = 3 * v164;
  v265 = v165;
  v267 = v163;
  v168 = swift_allocObject();
  v261 = xmmword_1A8FCB600;
  *(v168 + 16) = xmmword_1A8FCB600;
  v266 = v166;
  v169 = (v168 + v166);
  v284 = v79;
  v170 = dispatch thunk of CustomStringConvertible.description.getter();
  *v169 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(v170, v171);
  swift_storeEnumTagMultiPayload();

  *(v169 + v164) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x2EuLL, 0xE100000000000000);
  i = v164;
  v172 = v257;
  swift_storeEnumTagMultiPayload();
  v260 = v167;
  v173 = (v168 + v166 + v167);
  *v173 = v172;
  v173[1] = v270;
  swift_storeEnumTagMultiPayload();

  v174 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v176 = *(v174 + 2);
  v175 = *(v174 + 3);
  if (v176 >= v175 >> 1)
  {
    v174 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v175 > 1), v176 + 1, 1, v174);
  }

  v177 = v274;
  *(v174 + 2) = v176 + 1;
  *&v174[8 * v176 + 32] = v168;
  specialized Set.formUnion<A>(_:)(v263);
  v262 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMR);
  v178 = swift_initStackObject();
  v274 = xmmword_1A8FC9400;
  *(v178 + 16) = xmmword_1A8FC9400;
  *(v178 + 32) = v172;
  v179 = v178 + 32;
  *(v178 + 40) = v270;
  specialized Set.formUnion<A>(_:)(v178);
  swift_setDeallocating();
  outlined destroy of Rule(v179);
  if (v177 < 0)
  {
    v180 = *&v82;
  }

  else
  {
    v180 = 0;
  }

  fractionalRule(min:max:significantFigures:)(&v284, v180, v177 >= 0, *&v82 & ~(v177 >> 63), v177 < 0, v277);
  v256 = v181;
  v182 = v284;
  v263 = v285;
  v183 = v266;
  v184 = swift_allocObject();
  *(v184 + 16) = v261;
  v185 = (v184 + v183);
  v284 = v177;
  v186 = dispatch thunk of CustomStringConvertible.description.getter();
  *v185 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(v186, v187);
  swift_storeEnumTagMultiPayload();

  v188 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x2EuLL, 0xE100000000000000);
  *&i[v185] = v188;
  swift_storeEnumTagMultiPayload();
  v189 = (v184 + v183 + v260);
  v257 = v182;
  *v189 = v182;
  v189[1] = v263;
  swift_storeEnumTagMultiPayload();
  v191 = *(v174 + 2);
  v190 = *(v174 + 3);
  *&v270 = v174;

  v255 = 0;
  if (v191 >= v190 >> 1)
  {
    *&v270 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v190 > 1), v191 + 1, 1, v270);
  }

  v192 = v270;
  *(v270 + 16) = v191 + 1;
  *(v192 + 8 * v191 + 32) = v184;
  specialized Set.formUnion<A>(_:)(v256);
  v193 = swift_allocObject();
  *(v193 + 16) = v274;
  *(v193 + 32) = v257;
  v194 = v193 + 32;
  *(v193 + 40) = v263;
  specialized Set.formUnion<A>(_:)(v193);
  swift_setDeallocating();
  outlined destroy of Rule(v194);
  swift_deallocClassInstance();
  v195 = v273;
  a4 = v273 + 104;
  v196 = *(v273 + 104);
  v197 = MEMORY[0x1E69E7028];
  if (v6 < 0.0)
  {
    v197 = MEMORY[0x1E69E7020];
  }

  v198 = *v197;
  v83 = v275;
  *&v263 = *(v273 + 104);
  v196(v30, v198, v275);
  v284 = v280;
  v49 = (v195 + 2);
  v257 = v195[2];
  v257(v24, v30, v83);
  a6 = (v195 + 11);
  a1 = v195[11];
  v199 = (a1)(v24, v83);
  LODWORD(rawValue) = *MEMORY[0x1E69E7038];
  if (v199 == *MEMORY[0x1E69E7038])
  {
    v79 = round(v6);
    v200 = v30;
    v30 = v195[1];
    (v30)(v200, v83);
LABEL_100:
    v15 = MEMORY[0x1E69E7028];
    goto LABEL_110;
  }

  if (v199 == *MEMORY[0x1E69E7030])
  {
    v79 = rint(v6);
    v201 = v30;
    v30 = *(v273 + 8);
    (v30)(v201, v275);
    goto LABEL_100;
  }

  v15 = MEMORY[0x1E69E7028];
  if (v199 == *MEMORY[0x1E69E7040])
  {
    v79 = ceil(v6);
LABEL_109:
    v204 = v30;
    v30 = *(v273 + 8);
    (v30)(v204, v275);
    goto LABEL_110;
  }

  if (v199 == *MEMORY[0x1E69E7048])
  {
    v79 = floor(v6);
    goto LABEL_109;
  }

  if (v199 == *MEMORY[0x1E69E7020])
  {
    goto LABEL_109;
  }

  v51 = (v273 + 8);
  if (v199 != *MEMORY[0x1E69E7028])
  {
    goto LABEL_170;
  }

  v253 = v30;
  v30 = *v51;
  (*v51)(v253, v275);
  if ((v280 & 0x8000000000000000) != 0)
  {
LABEL_173:
    v79 = floor(v6);
  }

  else
  {
    v79 = ceil(v6);
  }

LABEL_110:
  if ((*&v79 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
LABEL_200:
    __break(1u);
    goto LABEL_201;
  }

  if (v79 <= -9.22337204e18)
  {
LABEL_201:
    __break(1u);
LABEL_202:
    __break(1u);
    goto LABEL_203;
  }

  if (v79 >= 9.22337204e18)
  {
LABEL_203:
    __break(1u);
    goto LABEL_204;
  }

  v205 = MEMORY[0x1E69E7020];
  if (v7 < 0.0)
  {
    v205 = v15;
  }

  v24 = v269;
  v83 = v275;
  (v263)(v269, *v205, v275);
  v284 = v258;
  a4 = v264;
  v257(v264, v24, v83);
  v206 = (a1)(a4, v83);
  if (v206 == rawValue)
  {
    v8 = round(v7);
    v207 = v24;
    v208 = v83;
  }

  else
  {
    if (v206 == *MEMORY[0x1E69E7030])
    {
      v8 = rint(v7);
      v207 = v269;
    }

    else
    {
      a1 = v269;
      if (v206 == *MEMORY[0x1E69E7040])
      {
        v8 = ceil(v7);
      }

      else if (v206 == *MEMORY[0x1E69E7048])
      {
        v8 = floor(v7);
      }

      else if (v206 != *MEMORY[0x1E69E7020])
      {
        v49 = v273 + 8;
        if (v206 == *v15)
        {
          (v30)(v269, v275);
          if (v258 < 0)
          {
            v8 = floor(v7);
          }

          else
          {
            v8 = ceil(v7);
          }
        }

        else
        {
          Double._roundSlowPath(_:)();
          v83 = v275;
          (v30)(a1, v275);
          (v30)(v264, v83);
          v8 = *&v284;
        }

        goto LABEL_127;
      }

      v207 = v269;
    }

    v208 = v275;
  }

  (v30)(v207, v208);
LABEL_127:
  if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_204:
    __break(1u);
    goto LABEL_205;
  }

  if (v8 <= -9.22337204e18)
  {
LABEL_205:
    __break(1u);
    goto LABEL_206;
  }

  if (v8 >= 9.22337204e18)
  {
LABEL_206:
    __break(1u);
    goto LABEL_207;
  }

  a6 = v79;
  a1 = v8;
  if (v8 < v79)
  {
    goto LABEL_133;
  }

  v24 = wholeNumberRule(min:max:)(&v284, v79, 0, v8, 0);
  v49 = v284;
  v280 = v285;
  v209 = v266;
  v83 = swift_allocObject();
  *(v83 + 1) = v274;
  v210 = &v83[v209];
  *v210 = v49;
  v210[1] = v280;
  swift_storeEnumTagMultiPayload();
  v15 = *(v270 + 16);
  v30 = *(v270 + 24);
  a4 = v15 + 1;

  if (v15 >= v30 >> 1)
  {
    goto LABEL_212;
  }

  while (1)
  {
    v211 = v270;
    *(v270 + 16) = *&a4;
    *(v211 + 8 * v15 + 32) = v83;
    specialized Set.formUnion<A>(_:)(v24);
    v212 = swift_allocObject();
    *(v212 + 16) = v274;
    *(v212 + 32) = v49;
    v24 = v212 + 32;
    *(v212 + 40) = v280;
    v83 = &v283;
    specialized Set.formUnion<A>(_:)(v212);
    swift_setDeallocating();
    outlined destroy of Rule(v24);
    swift_deallocClassInstance();
LABEL_133:
    v6 = a6;
    v213 = __exp10(-v277);
    v214 = v213 + a6;
    if (v214 <= -9.22337204e18)
    {
LABEL_207:
      __break(1u);
LABEL_208:
      __break(1u);
LABEL_209:
      __break(1u);
LABEL_210:
      __break(1u);
      goto LABEL_211;
    }

    a6 = v281;
    if (v214 >= 9.22337204e18)
    {
      goto LABEL_208;
    }

    v215 = fabs(v213 + v6);
    v216 = a1 - v213;
    if (v215 > 0x7FEFFFFFFFFFFFFFLL || (*&v216 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_209;
    }

    if (v216 <= -9.22337204e18)
    {
      goto LABEL_210;
    }

    if (v216 < 9.22337204e18)
    {
      break;
    }

LABEL_211:
    __break(1u);
LABEL_212:
    *&v270 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), a4, 1, v270);
  }

  if (v214 >= v216)
  {
    v237 = v278;
    v238 = v272;
    v239 = v270;
  }

  else
  {
    v24 = 0x74696769445F5FLL;
    v264 = wholeNumberRule(min:max:)(&v284, v214, 0, v216, 0);
    *&v273 = v284;
    v275 = v285;
    *&v280 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMR);
    v217 = swift_allocObject();
    *(v217 + 16) = xmmword_1A8FC9410;
    a4 = i;
    a1 = v266;
    v218 = swift_allocObject();
    *(v218 + 16) = v274;
    v219 = v255;
    v220 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0, 0xE000000000000000);
    *&v263 = v219;
    *(v218 + a1) = v220;
    swift_storeEnumTagMultiPayload();
    *(v217 + 32) = v218;
    v221 = swift_allocObject();
    *(v221 + 16) = v274;
    v222 = (v221 + a1);
    *v222 = 0x74696769445F5FLL;
    v222[1] = 0xE700000000000000;
    swift_storeEnumTagMultiPayload();
    v269 = v217;
    *(v217 + 40) = v221;
    v223 = v279;
    *v279 = 0x6E6F6974704F5F5FLL;
    *(v223 + 8) = 0xEF74696769446C61;
    swift_storeEnumTagMultiPayload();
    v224 = _sSa9repeating5countSayxGx_SitcfC19TokenGenerationCore6SymbolO_Tt1g5(v223, v276);
    v284 = 0x6F54315F5FLL;
    *&v285 = 0xE500000000000000;
    v282 = v277;
    v225 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1AC57C120](v225);

    MEMORY[0x1AC57C120](0x737469676944, 0xE600000000000000);
    *&v279 = v284;
    *&v277 = v285;
    v226 = swift_allocObject();
    *(v226 + 16) = v274;
    v227 = swift_allocObject();
    *(v227 + 16) = v274;
    v228 = (v227 + a1);
    *v228 = 0x74696769445F5FLL;
    v228[1] = 0xE700000000000000;
    swift_storeEnumTagMultiPayload();
    v284 = v227;
    specialized Array.append<A>(contentsOf:)(v224);
    *&v274 = v226;
    *(v226 + 32) = v284;
    if (one-time initialization token for baseIntegerRules != -1)
    {
      swift_once();
    }

    rawValue = 0;
    v49 = baseIntegerRules._rawValue;
    v229 = baseIntegerRules._rawValue + 48;
    v30 = -*(baseIntegerRules._rawValue + 2);
    *&v280 = MEMORY[0x1E69E7CC0];
    v276 = baseIntegerRules._rawValue + 48;
LABEL_143:
    v15 = rawValue + 1;
    v83 = &v229[24 * rawValue];
    while (v30 + v15 != 1)
    {
      rawValue = v15;
      if (v15 - 1 >= *(v49 + 16))
      {
        __break(1u);
        goto LABEL_173;
      }

      a6 = *(v83 - 2);
      a1 = *(v83 - 1);
      a4 = *v83;
      if (a6 != 0x74696769445F5FLL || a1 != 0xE700000000000000)
      {
        ++v15;
        v83 += 24;
        if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          continue;
        }
      }

      v231 = v280;
      v232 = swift_isUniquelyReferenced_nonNull_native();
      v284 = v231;
      if ((v232 & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v231 + 2) + 1, 1);
        v231 = v284;
      }

      v234 = *(v231 + 2);
      v233 = *(v231 + 3);
      v235 = v234 + 1;
      if (v234 >= v233 >> 1)
      {
        *&v280 = v234 + 1;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v233 > 1), v234 + 1, 1);
        v235 = v280;
        v231 = v284;
      }

      *(v231 + 2) = v235;
      *&v280 = v231;
      v236 = &v231[24 * v234];
      *(v236 + 4) = a6;
      *(v236 + 5) = a1;
      *(v236 + 6) = *&a4;
      v229 = v276;
      goto LABEL_143;
    }

    v240 = v266;
    v241 = swift_allocObject();
    *(v241 + 16) = v261;
    v242 = v241 + v240;
    v243 = v273;
    *v242 = v273;
    *(v242 + 8) = v275;
    swift_storeEnumTagMultiPayload();

    v244 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x2EuLL, 0xE100000000000000);
    *&i[v242] = v244;
    swift_storeEnumTagMultiPayload();
    v245 = (v241 + v240 + v260);
    v246 = v277;
    *v245 = v279;
    *(v245 + 1) = v246;
    swift_storeEnumTagMultiPayload();
    v239 = v270;
    v247 = *(v270 + 16);
    v248 = *(v270 + 24);

    if (v247 >= v248 >> 1)
    {
      v239 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v248 > 1), v247 + 1, 1, v239);
    }

    v238 = v272;
    v249 = v264;
    *(v239 + 2) = v247 + 1;
    *&v239[8 * v247 + 32] = v241;
    specialized Set.formUnion<A>(_:)(v249);
    specialized Set.formUnion<A>(_:)(v280);

    v250 = swift_allocObject();
    *(v250 + 16) = v261;
    *(v250 + 32) = v243;
    *(v250 + 40) = v275;
    *(v250 + 56) = 0x6E6F6974704F5F5FLL;
    *(v250 + 64) = 0xEF74696769446C61;
    v251 = v279;
    *(v250 + 72) = v269;
    *(v250 + 80) = v251;
    v252 = v274;
    *(v250 + 88) = v277;
    *(v250 + 96) = v252;
    specialized Set.formUnion<A>(_:)(v250);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v237 = v278;
  }

  *v237 = v271;
  v237[1] = v238;
  v237[2] = v239;
  return v283;
}

uint64_t digits #1 (in:) in wholeNumberRule(min:max:)(uint64_t a1)
{
  v34[0] = a1;
  dispatch thunk of CustomStringConvertible.description.getter();
  v1 = String.count.getter();
  if (!v1)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v2 = v1;
  v36 = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1 & ~(v1 >> 63), 0);
  if (v2 < 0)
  {
    goto LABEL_82;
  }

  v4 = 0;
  v5 = v36;
  while (!__OFADD__(v4++, 1))
  {
    result = String.subscript.getter();
    v8 = HIBYTE(v7) & 0xF;
    v9 = result & 0xFFFFFFFFFFFFLL;
    if ((v7 & 0x2000000000000000) != 0)
    {
      v10 = HIBYTE(v7) & 0xF;
    }

    else
    {
      v10 = result & 0xFFFFFFFFFFFFLL;
    }

    if (!v10)
    {
      goto LABEL_77;
    }

    if ((v7 & 0x1000000000000000) != 0)
    {
      v35 = 0;
      result = specialized _parseInteger<A, B>(ascii:radix:)(result, v7, 10);
      if (v32)
      {
        goto LABEL_83;
      }

      v12 = result;
      goto LABEL_67;
    }

    if ((v7 & 0x2000000000000000) != 0)
    {
      v34[0] = result;
      v34[1] = v7 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (!v8)
        {
          goto LABEL_78;
        }

        v9 = v8 - 1;
        if (v8 != 1)
        {
          v12 = 0;
          v22 = v34 + 1;
          while (1)
          {
            v23 = *v22 - 48;
            if (v23 > 9)
            {
              break;
            }

            v24 = 10 * v12;
            if ((v12 * 10) >> 64 != (10 * v12) >> 63)
            {
              break;
            }

            v12 = v24 + v23;
            if (__OFADD__(v24, v23))
            {
              break;
            }

            ++v22;
            if (!--v9)
            {
              goto LABEL_66;
            }
          }
        }
      }

      else if (result == 45)
      {
        if (!v8)
        {
          goto LABEL_79;
        }

        v9 = v8 - 1;
        if (v8 != 1)
        {
          v12 = 0;
          v16 = v34 + 1;
          while (1)
          {
            v17 = *v16 - 48;
            if (v17 > 9)
            {
              break;
            }

            v18 = 10 * v12;
            if ((v12 * 10) >> 64 != (10 * v12) >> 63)
            {
              break;
            }

            v12 = v18 - v17;
            if (__OFSUB__(v18, v17))
            {
              break;
            }

            ++v16;
            if (!--v9)
            {
              goto LABEL_66;
            }
          }
        }
      }

      else if (v8)
      {
        v12 = 0;
        v27 = v34;
        while (1)
        {
          v28 = *v27 - 48;
          if (v28 > 9)
          {
            break;
          }

          v29 = 10 * v12;
          if ((v12 * 10) >> 64 != (10 * v12) >> 63)
          {
            break;
          }

          v12 = v29 + v28;
          if (__OFADD__(v29, v28))
          {
            break;
          }

          ++v27;
          if (!--v8)
          {
            goto LABEL_64;
          }
        }
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (v7 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = _StringObject.sharedUTF8.getter();
        v9 = v33;
      }

      v11 = *result;
      if (v11 == 43)
      {
        if (v9 < 1)
        {
          goto LABEL_81;
        }

        if (--v9)
        {
          v12 = 0;
          if (!result)
          {
            goto LABEL_64;
          }

          v19 = (result + 1);
          while (1)
          {
            v20 = *v19 - 48;
            if (v20 > 9)
            {
              break;
            }

            v21 = 10 * v12;
            if ((v12 * 10) >> 64 != (10 * v12) >> 63)
            {
              break;
            }

            v12 = v21 + v20;
            if (__OFADD__(v21, v20))
            {
              break;
            }

            ++v19;
            if (!--v9)
            {
              goto LABEL_66;
            }
          }
        }
      }

      else if (v11 == 45)
      {
        if (v9 < 1)
        {
          goto LABEL_80;
        }

        if (--v9)
        {
          v12 = 0;
          if (!result)
          {
            goto LABEL_64;
          }

          v13 = (result + 1);
          while (1)
          {
            v14 = *v13 - 48;
            if (v14 > 9)
            {
              break;
            }

            v15 = 10 * v12;
            if ((v12 * 10) >> 64 != (10 * v12) >> 63)
            {
              break;
            }

            v12 = v15 - v14;
            if (__OFSUB__(v15, v14))
            {
              break;
            }

            ++v13;
            if (!--v9)
            {
              goto LABEL_66;
            }
          }
        }
      }

      else if (v9)
      {
        v12 = 0;
        if (!result)
        {
LABEL_64:
          LOBYTE(v9) = 0;
          goto LABEL_66;
        }

        while (1)
        {
          v25 = *result - 48;
          if (v25 > 9)
          {
            break;
          }

          v26 = 10 * v12;
          if ((v12 * 10) >> 64 != (10 * v12) >> 63)
          {
            break;
          }

          v12 = v26 + v25;
          if (__OFADD__(v26, v25))
          {
            break;
          }

          ++result;
          if (!--v9)
          {
            goto LABEL_66;
          }
        }
      }
    }

    v12 = 0;
    LOBYTE(v9) = 1;
LABEL_66:
    v35 = v9;
    if (v9)
    {
      goto LABEL_83;
    }

LABEL_67:

    v36 = v5;
    v31 = *(v5 + 16);
    v30 = *(v5 + 24);
    if (v31 >= v30 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1);
      v5 = v36;
    }

    *(v5 + 16) = v31 + 1;
    *(v5 + 8 * v31 + 32) = v12;
    result = String.index(after:)();
    if (v4 == v2)
    {

      return v5;
    }
  }

  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
  return result;
}

uint64_t nDigitWholeNumberLessThanOrEqualTo #1 (_:) in wholeNumberRule(min:max:)(uint64_t *a1, uint64_t a2)
{
  v3 = digits #1 (in:) in wholeNumberRule(min:max:)(a2);
  v4 = v3;
  v5 = *(v3 + 16);
  if (!v5)
  {
    v7 = MEMORY[0x1E69E7CC0];
    if (*(MEMORY[0x1E69E7CC0] + 16) < 2uLL)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v6 = *(v3 + 16);
  v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v7 + 16) = v5;
  bzero((v7 + 32), 8 * v5);
  if (v5 >= 2)
  {
LABEL_3:
    *(v7 + 32) = 1;
  }

LABEL_4:
  v8 = nDigitWholeNumberBetweenInclusive #1 (minDigits:maxDigits:) in wholeNumberRule(min:max:)(a1, v7, v4);

  return v8;
}

uint64_t nDigitWholeNumber #1 (n:) in wholeNumberRule(min:max:)(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for Symbol(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = (&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a2 < 1)
  {
    __break(1u);
LABEL_12:
    swift_once();
    goto LABEL_10;
  }

  v9 = _sSa9repeating5countSayxGx_SitcfCSS_Tt1g5Tf4gn_n(0x74696769445F5FLL, 0xE700000000000000, a2 - 1);
  v28 = &outlined read-only object #0 of nDigitWholeNumber #1 (n:) in wholeNumberRule(min:max:);
  specialized Array.append<A>(contentsOf:)(v9);
  v10 = v28;
  v11 = *(v28 + 16);
  if (v11)
  {
    v25 = a2;
    v26 = a1;
    v28 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11, 0);
    v12 = v28;
    v24 = v10;
    v13 = (v10 + 40);
    do
    {
      v14 = *v13;
      *v8 = *(v13 - 1);
      v8[1] = v14;
      swift_storeEnumTagMultiPayload();
      v28 = v12;
      v15 = *(v12 + 16);
      v16 = *(v12 + 24);

      if (v15 >= v16 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v16 > 1, v15 + 1, 1);
        v12 = v28;
      }

      *(v12 + 16) = v15 + 1;
      outlined init with take of Symbol(v8, v12 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v15);
      v13 += 2;
      --v11;
    }

    while (v11);

    a2 = v25;
    a1 = v26;
  }

  else
  {

    v12 = MEMORY[0x1E69E7CC0];
  }

  v28 = 0;
  v29 = 0xE000000000000000;
  _StringGuts.grow(_:)(16);

  v28 = 24415;
  v29 = 0xE200000000000000;
  v27 = a2;
  v17 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1AC57C120](v17);

  MEMORY[0x1AC57C120](0x746E497469676944, 0xEC00000072656765);
  v18 = v28;
  v19 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMR);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1A8FC9400;
  *(v20 + 32) = v12;
  *a1 = v18;
  a1[1] = v19;
  a1[2] = v20;
  if (one-time initialization token for baseIntegerRules != -1)
  {
    goto LABEL_12;
  }

LABEL_10:

  v22 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC19TokenGenerationCore4RuleV_SayAFGTt0g5Tf4g_n(v21);

  return v22;
}

uint64_t specialized Set.union<A>(_:)(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v5 = result + 56;
  v4 = *(result + 56);
  v17 = a2;
  v6 = 1 << *(result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & v4;
  v9 = (v6 + 63) >> 6;
  if ((v7 & v4) != 0)
  {
    do
    {
      v10 = v3;
LABEL_9:
      v11 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v12 = (*(v2 + 48) + 24 * (v11 | (v10 << 6)));
      v13 = *v12;
      v14 = v12[1];
      v15 = v12[2];

      specialized Set._Variant.insert(_:)(&v16, v13, v14, v15);
    }

    while (v8);
  }

  while (1)
  {
    v10 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v10 >= v9)
    {

      return v17;
    }

    v8 = *(v5 + 8 * v10);
    ++v3;
    if (v8)
    {
      v3 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t nDigitWholeNumberBetweenInclusive #1 (minDigits:maxDigits:) in wholeNumberRule(min:max:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Symbol(0);
  v82 = *(v6 - 8);
  v83 = v6;
  v7 = *(v82 + 64);
  result = MEMORY[0x1EEE9AC00](v6);
  v84 = (v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(a2 + 16);
  if (v10 == *(a3 + 16))
  {
    v11 = MEMORY[0x1E69E7CC0];
    v80 = a2;
    v81 = a1;
    *&v85 = a3;
    if (v10)
    {
      v86 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10, 0);
      v11 = v86;
      v12 = (a2 + 32);
      v13 = v10;
      v14 = v10;
      do
      {
        v15 = *v12++;
        v88 = v15;
        v16 = dispatch thunk of CustomStringConvertible.description.getter();
        v86 = v11;
        v19 = *(v11 + 16);
        v18 = *(v11 + 24);
        if (v19 >= v18 >> 1)
        {
          v79 = v16;
          v21 = v17;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1);
          v17 = v21;
          a1 = v81;
          v16 = v79;
          v11 = v86;
        }

        *(v11 + 16) = v19 + 1;
        v20 = v11 + 16 * v19;
        *(v20 + 32) = v16;
        *(v20 + 40) = v17;
        --v14;
      }

      while (v14);
      v10 = v13;
      a3 = v85;
    }

    v86 = v11;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    v23 = lazy protocol witness table accessor for type [String] and conformance [A]();
    v79 = BidirectionalCollection<>.joined(separator:)();
    v25 = v24;

    v26 = MEMORY[0x1E69E7CC0];
    if (v10)
    {
      v76[0] = v23;
      v76[1] = v22;
      v77 = v25;
      v86 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10, 0);
      v26 = v86;
      v27 = (a3 + 32);
      v78 = v10;
      do
      {
        v28 = *v27++;
        v88 = v28;
        v29 = dispatch thunk of CustomStringConvertible.description.getter();
        v31 = v30;
        v86 = v26;
        v33 = *(v26 + 16);
        v32 = *(v26 + 24);
        if (v33 >= v32 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1);
          v26 = v86;
        }

        *(v26 + 16) = v33 + 1;
        v34 = v26 + 16 * v33;
        *(v34 + 32) = v29;
        *(v34 + 40) = v31;
        --v10;
      }

      while (v10);
      a1 = v81;
      v10 = v78;
      a3 = v85;
      v25 = v77;
    }

    v86 = v26;
    v35 = BidirectionalCollection<>.joined(separator:)();
    v37 = v36;

    v86 = 0;
    v87 = 0xE000000000000000;
    _StringGuts.grow(_:)(39);

    v86 = 24415;
    v87 = 0xE200000000000000;
    v88 = v10;
    v38 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1AC57C120](v38);

    MEMORY[0x1AC57C120](0xD000000000000013, 0x80000001A8FD8E50);
    v39 = v79;
    MEMORY[0x1AC57C120](v79, v25);
    MEMORY[0x1AC57C120](6581825, 0xE300000000000000);
    MEMORY[0x1AC57C120](v35, v37);

    MEMORY[0x1AC57C120](0x766973756C636E49, 0xE900000000000065);
    v41 = v86;
    v40 = v87;
    v42 = v80;
    if (_sSasSQRzlE2eeoiySbSayxG_ABtFZSi_Tt1g5(v80, a3))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMR);
      v43 = swift_allocObject();
      v85 = xmmword_1A8FC9400;
      *(v43 + 16) = xmmword_1A8FC9400;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMR);
      v44 = *(v82 + 72);
      v45 = (*(v82 + 80) + 32) & ~*(v82 + 80);
      v46 = swift_allocObject();
      *(v46 + 16) = v85;
      *(v46 + v45) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(v39, v25);
      swift_storeEnumTagMultiPayload();

      *(v43 + 32) = v46;
      *a1 = v41;
      a1[1] = v40;
      a1[2] = v43;
      return MEMORY[0x1E69E7CD0];
    }

    else
    {
      v79 = v41;

      v48 = MEMORY[0x1E69E7CC0];
      v86 = MEMORY[0x1E69E7CC0];
      v78 = v40;
      if (v10)
      {
        v49 = (v42 + 32);
        v50 = (a3 + 32);
        v51 = MEMORY[0x1E69E7CC0];
        *&v85 = MEMORY[0x1E69E7CC0];
        do
        {
          while (1)
          {
            v52 = v48;
            v54 = *v49++;
            v53 = v54;
            v56 = *v50++;
            v55 = v56;
            if (v53 == v56 && !*(v51 + 2))
            {
              break;
            }

            v57 = v10;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v51 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v51 + 2) + 1, 1, v51);
            }

            v59 = *(v51 + 2);
            v58 = *(v51 + 3);
            if (v59 >= v58 >> 1)
            {
              v51 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v58 > 1), v59 + 1, 1, v51);
            }

            *(v51 + 2) = v59 + 1;
            *&v51[8 * v59 + 32] = v53;
            v48 = v52;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v52 + 2) + 1, 1, v52);
            }

            v61 = *(v48 + 2);
            v60 = *(v48 + 3);
            if (v61 >= v60 >> 1)
            {
              v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v60 > 1), v61 + 1, 1, v48);
            }

            *(v48 + 2) = v61 + 1;
            *&v48[8 * v61 + 32] = v55;
            v10 = v57 - 1;
            if (v57 == 1)
            {
              goto LABEL_36;
            }
          }

          v88 = v53;
          v62 = dispatch thunk of CustomStringConvertible.description.getter();
          v64 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(v62, v63);

          *v84 = v64;
          swift_storeEnumTagMultiPayload();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            *&v85 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v85 + 16) + 1, 1, v85);
          }

          v48 = v52;
          v66 = *(v85 + 16);
          v65 = *(v85 + 24);
          if (v66 >= v65 >> 1)
          {
            *&v85 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v65 > 1, v66 + 1, 1, v85);
          }

          v67 = v84;
          v68 = v85;
          *(v85 + 16) = v66 + 1;
          outlined init with take of Symbol(v67, v68 + ((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v66);
          v86 = v68;
          --v10;
        }

        while (v10);
      }

      else
      {
        v51 = MEMORY[0x1E69E7CC0];
        *&v85 = MEMORY[0x1E69E7CC0];
      }

LABEL_36:
      v69 = *(v51 + 2);
      type metadata accessor for Node();
      inited = swift_initStackObject();
      *(inited + 24) = 0;
      *(inited + 32) = 0;
      *(inited + 16) = 0;
      *(inited + 40) = 1;
      *(inited + 48) = v69;
      *(inited + 56) = 0;
      Node.buildUpperPath(digits:)(v48);
      Node.buildLowerPath(digits:)(v51);
      v71 = Node.walkChoices()();
      v47 = v72;
      v73 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay19TokenGenerationCore6ChoiceVG_AHs5NeverOTg504_s19de178Core15wholeNumberRule33_77ABCD41F000EB3C4AAEC3BD7ED6ED2FLL3min3maxAA0F0V4root_ShyAGG12dependenciestSiSg_AKtF011nDigitWholeE16BetweenInclusiveL_0O6Digits0pW0AgH_AiJtSaySiG_AOtFAA6G8VAQXEfU_SayAF6SymbolOGTf1cn_n(v71, &v86);

      v74 = v81;
      v75 = v78;
      *v81 = v79;
      v74[1] = v75;
      v74[2] = v73;
    }

    return v47;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t *nOrGreaterDigitWholeNumber #1 (n:) in wholeNumberRule(min:max:)(uint64_t *result, uint64_t a2)
{
  if (a2 < 1)
  {
    __break(1u);
  }

  else
  {
    v24 = v2;
    v25 = v3;
    v4 = result;
    v20 = nDigitWholeNumber #1 (n:) in wholeNumberRule(min:max:)(&v22, a2);
    v5 = v22;
    v21 = v23;
    v22 = 0;
    *&v23 = 0xE000000000000000;
    _StringGuts.grow(_:)(25);

    v22 = 24415;
    *&v23 = 0xE200000000000000;
    v6 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1AC57C120](v6);

    MEMORY[0x1AC57C120](0xD000000000000015, 0x80000001A8FD8E30);
    v18 = v23;
    v19 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMR);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1A8FC9410;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMR);
    v8 = *(type metadata accessor for Symbol(0) - 8);
    v9 = *(v8 + 72);
    v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1A8FC9400;
    v12 = (v11 + v10);
    *v12 = v5;
    v12[1] = v21;
    swift_storeEnumTagMultiPayload();
    *(v7 + 32) = v11;
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1A8FC9410;
    v14 = (v13 + v10);
    *v14 = v5;
    v14[1] = v21;
    swift_storeEnumTagMultiPayload();
    v15 = (v13 + v10 + v9);
    *v15 = 0x7374696769445F5FLL;
    v15[1] = 0xE800000000000000;
    swift_storeEnumTagMultiPayload();
    *(v7 + 40) = v13;
    *v4 = v19;
    v4[1] = v18;
    v4[2] = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1A8FC9400;
    *(inited + 32) = v5;
    *(inited + 40) = v21;
    swift_bridgeObjectRetain_n();
    v17 = specialized Set.union<A>(_:)(inited, v20);
    swift_setDeallocating();
    outlined destroy of Rule(inited + 32);
    return v17;
  }

  return result;
}

uint64_t Node.buildUpperPath(digits:)(uint64_t result)
{
  v2 = *v1;
  v3 = *(result + 16);
  if (v3)
  {
    v4 = v1[6];
    v5 = v4 - 1;
    if (__OFSUB__(v4, 1))
    {
      __break(1u);
    }

    else
    {
      v6 = result;
      v7 = *(result + 32);
      v8 = *(v1 + 56);
      v9 = swift_allocObject();
      *(v9 + 16) = 0;
      *(v9 + 24) = 0;
      *(v9 + 32) = v7;
      *(v9 + 40) = 0;
      *(v9 + 48) = v5;
      *(v9 + 56) = v8;
      v10 = v1[2];
      v1[2] = v9;

      if (v1[2])
      {
        specialized _copyCollectionToContiguousArray<A>(_:)(v6, v6 + 32, 1, (2 * v3) | 1);
        v12 = v11;

        Node.buildUpperPath(digits:)(v12);
      }
    }
  }

  return result;
}

uint64_t Node.buildLowerPath(digits:)(uint64_t result)
{
  v2 = *v1;
  v3 = *(result + 16);
  if (v3)
  {
    v4 = v1[6];
    v5 = v4 - 1;
    if (__OFSUB__(v4, 1))
    {
      __break(1u);
    }

    else
    {
      v6 = result;
      v7 = *(result + 32);
      v8 = *(v1 + 56);
      v9 = swift_allocObject();
      *(v9 + 16) = 0;
      *(v9 + 24) = 0;
      *(v9 + 32) = v7;
      *(v9 + 40) = 0;
      *(v9 + 48) = v5;
      *(v9 + 56) = v8;
      v10 = v1[3];
      v1[3] = v9;

      if (v1[3])
      {
        specialized _copyCollectionToContiguousArray<A>(_:)(v6, v6 + 32, 1, (2 * v3) | 1);
        v12 = v11;

        Node.buildLowerPath(digits:)(v12);
      }
    }
  }

  return result;
}

unint64_t Node.walkChoices()()
{
  v4 = v0;
  v5 = 0;
  v6 = type metadata accessor for Symbol(0);
  *&v96 = *(v6 - 8);
  v7 = *(v96 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v95 = (&v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x1EEE9AC00](v8);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v14 = (&v88 - v13);
  v15 = *(v0 + 16);
  if (v15)
  {
    v16 = *(v0 + 24);
    if (v16)
    {
      v17 = *(v16 + 40);
      if (*(v15 + 40))
      {
        if ((v17 & 1) == 0)
        {
          goto LABEL_10;
        }

        __break(1u);
      }

      if (*(v15 + 32) == *(v16 + 32))
      {
        v18 = v17;
      }

      else
      {
        v18 = 1;
      }

      if ((v18 & 1) == 0)
      {
        goto LABEL_118;
      }
    }
  }

LABEL_10:
  v89 = v12;
  v97 = v11;
  v1 = MEMORY[0x1E69E7CC0];
  v101 = MEMORY[0x1E69E7CC0];
  v100 = MEMORY[0x1E69E7CD0];
  v19 = *(v0 + 40);
  v90 = v0;
  if (v19 != 1)
  {
    v21 = *(v0 + 32);
    v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v23 = *(v20 + 16);
    v22 = *(v20 + 24);
    v3 = v23 + 1;
    if (v23 >= v22 >> 1)
    {
      goto LABEL_114;
    }

    goto LABEL_14;
  }

  v3 = *(MEMORY[0x1E69E7CC0] + 16);
  if (v3)
  {
    v20 = MEMORY[0x1E69E7CC0];
    goto LABEL_15;
  }

  v25 = MEMORY[0x1E69E7CC0];

  if (!*(v0 + 48))
  {
    goto LABEL_41;
  }

  while (2)
  {
    if (!v4[2])
    {
LABEL_45:
      v0 = v4[3];
      if (v0)
      {
        v43 = v4[3];

        v2 = Node.walkChoices()(v44);
        v1 = v45;

        v14 = *(v2 + 16);
        if (v14)
        {
          v93 = v1;
          v94 = v5;
          v99 = MEMORY[0x1E69E7CC0];
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14, 0);
          v20 = 32;
          v3 = v99;
          while (1)
          {
            v5 = v2;
            v46 = *(v2 + v20);
            v23 = *(v46 + 16);
            v21 = v25[2];
            v47 = v21 + v23;
            if (__OFADD__(v21, v23))
            {
              goto LABEL_108;
            }

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            if (isUniquelyReferenced_nonNull_native && (v1 = v25, v47 <= v25[3] >> 1))
            {
              if (!*(v46 + 16))
              {
                goto LABEL_60;
              }
            }

            else
            {
              if (v21 <= v47)
              {
                v52 = v21 + v23;
              }

              else
              {
                v52 = v21;
              }

              v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v52, 1, v25);
              if (!*(v46 + 16))
              {
LABEL_60:

                if (v23)
                {
                  goto LABEL_109;
                }

                goto LABEL_61;
              }
            }

            v22 = *(v1 + 16);
            if (((*(v1 + 24) >> 1) - v22) < v23)
            {
              goto LABEL_111;
            }

            v49 = (*(v96 + 80) + 32) & ~*(v96 + 80);
            v50 = *(v96 + 72);
            swift_arrayInitWithCopy();

            if (v23)
            {
              v51 = *(v1 + 16);
              v39 = __OFADD__(v51, v23);
              v22 = v51 + v23;
              if (v39)
              {
                goto LABEL_113;
              }

              *(v1 + 16) = v22;
            }

LABEL_61:
            v99 = v3;
            v54 = *(v3 + 16);
            v53 = *(v3 + 24);
            if (v54 >= v53 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v53 > 1), v54 + 1, 1);
              v3 = v99;
            }

            *(v3 + 16) = v54 + 1;
            v22 = v3 + 8 * v54;
            *(v22 + 32) = v1;
            v20 += 8;
            v14 = (v14 - 1);
            v2 = v5;
            if (!v14)
            {

              v4 = v90;
              v1 = v93;
              v5 = v94;
              goto LABEL_66;
            }
          }
        }

        v3 = MEMORY[0x1E69E7CC0];
LABEL_66:
        specialized Array.append<A>(contentsOf:)(v3);
        v0 = &v100;
        specialized Set.formUnion<A>(_:)(v1);
      }

      v55 = v4[2];
      if (v55 && (*(v55 + 40) & 1) == 0)
      {
        v56 = *(v55 + 32);
        v39 = __OFSUB__(v56, 1);
        v18 = v56 - 1;
        v94 = v18;
        if (v39)
        {
          goto LABEL_116;
        }
      }

      else
      {
        v94 = 9;
      }

      v57 = v4[3];
      if (v57 && (*(v57 + 40) & 1) == 0)
      {
        v18 = *(v57 + 32);
        v14 = (v18 + 1);
        if (__OFADD__(v18, 1))
        {
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
          goto LABEL_119;
        }
      }

      else
      {
        v14 = 0;
      }

      if (v94 < v14)
      {

        return v101;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMR);
      v58 = swift_allocObject();
      *(v58 + 16) = xmmword_1A8FC9410;
      v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMR);
      v60 = *(v96 + 72);
      v61 = *(v96 + 80);
      v2 = (v61 + 32) & ~v61;
      v62 = swift_allocObject();
      v96 = xmmword_1A8FC9400;
      *(v62 + 16) = xmmword_1A8FC9400;
      *(v62 + v2) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0, 0xE000000000000000);
      swift_storeEnumTagMultiPayload();
      *(v58 + 32) = v62;
      v91 = v61;
      v92 = v60;
      v3 = 0xEF74696769446C61;
      v93 = v59;
      v63 = swift_allocObject();
      *(v63 + 16) = v96;
      v64 = (v63 + v2);
      *v64 = 0x74696769445F5FLL;
      v64[1] = 0xE700000000000000;
      swift_storeEnumTagMultiPayload();
      *(v58 + 40) = v63;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMR);
      inited = swift_initStackObject();
      *(inited + 16) = v96;
      *(inited + 32) = 0x6E6F6974704F5F5FLL;
      v1 = inited + 32;
      *(inited + 40) = 0xEF74696769446C61;
      *(inited + 48) = v58;
      specialized Set.formUnion<A>(_:)(inited);
      swift_setDeallocating();
      outlined destroy of Rule(v1);
      if (one-time initialization token for baseIntegerRules != -1)
      {
        swift_once();
      }

      specialized Set.formUnion<A>(_:)(v66);

      v4 = v90;
      v67 = 0x6E6F6974704F5F5FLL;
      if (*(v90 + 56))
      {
        v68 = 0xEF74696769446C61;
      }

      else
      {
        v67 = 0x74696769445F5FLL;
        v68 = 0xE700000000000000;
      }

      v0 = v89;
      *v89 = v67;
      *(v0 + 8) = v68;
      swift_storeEnumTagMultiPayload();
      v18 = v4[6];
      if (!__OFSUB__(v18, 1))
      {
        _sSa9repeating5countSayxGx_SitcfC19TokenGenerationCore6SymbolO_Tt1g5(v0, v18 - 1);
        v3 = v101;
        v1 = MEMORY[0x1E69E6590];
        while (1)
        {
          v99 = v14;
          v69 = dispatch thunk of CustomStringConvertible.description.getter();
          v71 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(v69, v70);

          v72 = v95;
          *v95 = v71;
          swift_storeEnumTagMultiPayload();
          v73 = swift_allocObject();
          *(v73 + 16) = v96;
          outlined init with copy of Symbol(v72, v73 + v2);
          v99 = v25;

          specialized Array.append<A>(contentsOf:)(v73);

          specialized Array.append<A>(contentsOf:)(v74);
          v21 = v99;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 16) + 1, 1, v3);
          }

          v20 = *(v3 + 16);
          v75 = *(v3 + 24);
          v23 = v20 + 1;
          if (v20 >= v75 >> 1)
          {
            v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v75 > 1), v20 + 1, 1, v3);
          }

          outlined destroy of Symbol(v95);
          *(v3 + 16) = v23;
          *(v3 + 8 * v20 + 32) = v21;
          v22 = v94;
          if (v94 == v14)
          {
            break;
          }

          v39 = __OFADD__(v14, 1);
          v14 = (v14 + 1);
          if (v39)
          {
            __break(1u);
            goto LABEL_106;
          }
        }

        v76 = v90;
        v77 = *(v90 + 16);
        if (!v77 || (*(v77 + 40) & 1) != 0 || *(v90 + 56) != 1)
        {
          goto LABEL_97;
        }

        v78 = *(v77 + 32);
        v1 = swift_allocObject();
        *(v1 + 16) = v96;
        v99 = v78;
        v79 = dispatch thunk of CustomStringConvertible.description.getter();
        *(v1 + v2) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(v79, v80);
        swift_storeEnumTagMultiPayload();

        v0 = *(v3 + 16);
        v18 = *(v3 + 24);
        v4 = (v0 + 1);
        if (v0 < v18 >> 1)
        {
LABEL_96:
          *(v3 + 16) = v4;
          *(v3 + 8 * v0 + 32) = v1;
          v76 = v90;
LABEL_97:
          if ((*(v76 + 40) & 1) == 0)
          {
            if (*(v76 + 24))
            {
              if (*(v76 + 56) == 1)
              {
                v81 = *(v76 + 32);
                if (Node.lowerPathIsAllZeros()())
                {
                  v82 = swift_allocObject();
                  *(v82 + 16) = v96;
                  v99 = v81;
                  v83 = dispatch thunk of CustomStringConvertible.description.getter();
                  *(v82 + v2) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(v83, v84);
                  swift_storeEnumTagMultiPayload();

                  v86 = *(v3 + 16);
                  v85 = *(v3 + 24);
                  if (v86 >= v85 >> 1)
                  {
                    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v85 > 1), v86 + 1, 1, v3);
                  }

                  *(v3 + 16) = v86 + 1;
                  *(v3 + 8 * v86 + 32) = v82;
                }
              }
            }
          }

          return v3;
        }

LABEL_119:
        v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v4, 1, v3);
        goto LABEL_96;
      }

      __break(1u);
LABEL_116:
      __break(1u);
      goto LABEL_117;
    }

    v30 = v4[2];

    v2 = Node.walkChoices()(v31);
    v1 = v32;

    v14 = *(v2 + 16);
    if (!v14)
    {

      v3 = MEMORY[0x1E69E7CC0];
LABEL_44:
      specialized Array.append<A>(contentsOf:)(v3);
      specialized Set.formUnion<A>(_:)(v1);
      goto LABEL_45;
    }

    v93 = v1;
    v94 = v5;
    v99 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14, 0);
    v20 = 32;
    v3 = v99;
    while (1)
    {
      v5 = v2;
      v33 = *(v2 + v20);
      v23 = *(v33 + 16);
      v21 = v25[2];
      v34 = v21 + v23;
      if (__OFADD__(v21, v23))
      {
        break;
      }

      v35 = swift_isUniquelyReferenced_nonNull_native();
      if (v35 && (v1 = v25, v34 <= v25[3] >> 1))
      {
        if (!*(v33 + 16))
        {
          goto LABEL_35;
        }
      }

      else
      {
        if (v21 <= v34)
        {
          v40 = v21 + v23;
        }

        else
        {
          v40 = v21;
        }

        v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v35, v40, 1, v25);
        if (!*(v33 + 16))
        {
LABEL_35:

          if (v23)
          {
            goto LABEL_107;
          }

          goto LABEL_36;
        }
      }

      v22 = *(v1 + 16);
      if (((*(v1 + 24) >> 1) - v22) < v23)
      {
        goto LABEL_110;
      }

      v36 = (*(v96 + 80) + 32) & ~*(v96 + 80);
      v37 = *(v96 + 72);
      swift_arrayInitWithCopy();

      if (v23)
      {
        v38 = *(v1 + 16);
        v39 = __OFADD__(v38, v23);
        v22 = v38 + v23;
        if (v39)
        {
          goto LABEL_112;
        }

        *(v1 + 16) = v22;
      }

LABEL_36:
      v99 = v3;
      v42 = *(v3 + 16);
      v41 = *(v3 + 24);
      if (v42 >= v41 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v42 + 1, 1);
        v3 = v99;
      }

      *(v3 + 16) = v42 + 1;
      v22 = v3 + 8 * v42;
      *(v22 + 32) = v1;
      v20 += 8;
      v14 = (v14 - 1);
      v2 = v5;
      if (!v14)
      {

        v4 = v90;
        v1 = v93;
        v5 = v94;
        goto LABEL_44;
      }
    }

LABEL_106:
    __break(1u);
LABEL_107:
    __break(1u);
LABEL_108:
    __break(1u);
LABEL_109:
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
    v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v3, 1, v20);
LABEL_14:
    *(v20 + 16) = v3;
    *(v20 + 8 * v23 + 32) = v21;
LABEL_15:
    v99 = v1;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
    v24 = 32;
    v25 = v99;
    v2 = MEMORY[0x1E69E6590];
    do
    {
      v98 = *(v20 + v24);
      v26 = dispatch thunk of CustomStringConvertible.description.getter();
      v28 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(v26, v27);

      *v14 = v28;
      swift_storeEnumTagMultiPayload();
      v99 = v25;
      v1 = v25[2];
      v29 = v25[3];
      if (v1 >= v29 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v29 > 1, v1 + 1, 1);
        v25 = v99;
      }

      v25[2] = v1 + 1;
      outlined init with take of Symbol(v14, v25 + ((*(v96 + 80) + 32) & ~*(v96 + 80)) + *(v96 + 72) * v1);
      v24 += 8;
      --v3;
    }

    while (v3);

    v4 = v90;
    if (*(v90 + 48))
    {
      continue;
    }

    break;
  }

LABEL_41:
  if (v25[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMR);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1A8FC9400;
    *(v3 + 32) = v25;
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

void fractionalRule(min:max:significantFigures:)(unint64_t *a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6)
{
  v115 = a6;
  *&v116 = type metadata accessor for Symbol(0);
  v11 = *(*(v116 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v116);
  MEMORY[0x1EEE9AC00](v12);
  v16 = (v109 - v15);
  if ((a3 & 1) == 0 && *&a2 >= 1.0)
  {
    goto LABEL_107;
  }

  v17 = *&a4;
  if ((a5 & 1) == 0 && *&a4 >= 1.0)
  {
LABEL_108:
    __break(1u);
LABEL_109:
    __break(1u);
LABEL_110:
    __break(1u);
LABEL_111:
    __break(1u);
    goto LABEL_112;
  }

  if ((a3 & 1) == 0 && *&a2 < 0.0)
  {
    goto LABEL_109;
  }

  if ((a5 & 1) == 0 && *&a4 < 0.0)
  {
    goto LABEL_110;
  }

  if (v115 < 1)
  {
    goto LABEL_106;
  }

  v112 = v14;
  v114 = v13;
  v110 = a1;
  if (a3)
  {
    v18 = 0.0;
  }

  else
  {
    v18 = *&a2;
  }

  if (a5)
  {
    v17 = 1.0 - __exp10(-v115);
  }

  v19 = MEMORY[0x1E69E7CC0];
  v20 = 1;
  v21 = MEMORY[0x1E69E7CC0];
  v113 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v22 = __exp10(v20);
    v23 = v18 * v22;
    if (v18 * v22 <= -9.22337204e18)
    {
      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
LABEL_103:
      __break(1u);
LABEL_104:
      __break(1u);
      goto LABEL_105;
    }

    if (v23 >= 9.22337204e18)
    {
      goto LABEL_96;
    }

    v24 = fabs(v18 * v22);
    v25 = v17 * v22;
    if (v24 > 0x7FEFFFFFFFFFFFFFLL || (*&v25 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_97;
    }

    if (v25 <= -9.22337204e18)
    {
      goto LABEL_98;
    }

    if (v25 >= 9.22337204e18)
    {
      goto LABEL_99;
    }

    v26 = v23 % 10;
    v27 = v25 % 10;
    if (v26 == v27 && !*(v21 + 2))
    {
      v28 = v113;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v117 = v21;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v28 + 2) + 1, 1, v28);
      }

      v33 = *(v28 + 2);
      v37 = *(v28 + 3);
      v34 = v33 + 1;
      if (v33 >= v37 >> 1)
      {
        v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v33 + 1, 1, v28);
      }

      v113 = v28;
    }

    else
    {
      v28 = v19;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v21 + 2) + 1, 1, v21);
      }

      v30 = *(v21 + 2);
      v29 = *(v21 + 3);
      if (v30 >= v29 >> 1)
      {
        v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1, v21);
      }

      *(v21 + 2) = v30 + 1;
      *&v21[8 * v30 + 32] = v26;
      v31 = swift_isUniquelyReferenced_nonNull_native();
      v117 = v21;
      if ((v31 & 1) == 0)
      {
        v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v28 + 2) + 1, 1, v28);
      }

      v33 = *(v28 + 2);
      v32 = *(v28 + 3);
      v34 = v33 + 1;
      if (v33 >= v32 >> 1)
      {
        v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1, v28);
      }

      v26 = v27;
      v19 = v28;
    }

    *(v28 + 2) = v34;
    *&v28[8 * v33 + 32] = v26;
    if (v115 == v20)
    {
      break;
    }

    v35 = __OFADD__(v20++, 1);
    v21 = v117;
    if (v35)
    {
      goto LABEL_100;
    }
  }

  v38 = v113;
  v39 = *(v113 + 2);
  v40 = v115 - v39;
  type metadata accessor for Node();
  inited = swift_initStackObject();
  *(inited + 24) = 0;
  *(inited + 32) = 0;
  *(inited + 16) = 0;
  *(inited + 40) = 1;
  *(inited + 48) = v40;
  *(inited + 56) = 1;
  Node.buildLowerPath(digits:)(v117);
  Node.buildUpperPath(digits:)(v19);
  v109[2] = inited;
  v42 = Node.walkChoices()();
  v109[1] = v43;
  v44 = MEMORY[0x1E69E7CC0];
  v111 = v42;
  if (v39)
  {
    v118 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v39, 0);
    v45 = v118;
    v46 = (v38 + 32);
    do
    {
      v47 = *v46++;
      v121 = v47;
      v48 = dispatch thunk of CustomStringConvertible.description.getter();
      v50 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(v48, v49);

      *v16 = v50;
      swift_storeEnumTagMultiPayload();
      v118 = v45;
      v52 = v45[2];
      v51 = v45[3];
      if (v52 >= v51 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v51 > 1, v52 + 1, 1);
        v45 = v118;
      }

      v45[2] = v52 + 1;
      outlined init with take of Symbol(v16, v45 + ((*(v114 + 80) + 32) & ~*(v114 + 80)) + *(v114 + 72) * v52);
      --v39;
    }

    while (v39);
    v44 = MEMORY[0x1E69E7CC0];
    v53 = v111;
  }

  else
  {
    v53 = v42;
    v45 = MEMORY[0x1E69E7CC0];
  }

  v109[3] = v19;
  v54 = *(v53 + 16);
  if (!v54)
  {

    v55 = MEMORY[0x1E69E7CC0];
    goto LABEL_69;
  }

  v118 = v44;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v54, 0);
  v55 = v118;
  v56 = v53 + 32;
  do
  {
    v57 = *v56;
    v58 = *(*v56 + 16);
    v59 = v45[2];
    v60 = v59 + v58;
    if (__OFADD__(v59, v58))
    {
      goto LABEL_101;
    }

    v61 = *v56;

    v62 = swift_isUniquelyReferenced_nonNull_native();
    if (v62 && (v63 = v45, v60 <= v45[3] >> 1))
    {
      if (*(v57 + 16))
      {
        goto LABEL_55;
      }
    }

    else
    {
      if (v59 <= v60)
      {
        v68 = v59 + v58;
      }

      else
      {
        v68 = v59;
      }

      v63 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v62, v68, 1, v45);
      if (*(v57 + 16))
      {
LABEL_55:
        if ((*(v63 + 24) >> 1) - *(v63 + 16) < v58)
        {
          goto LABEL_103;
        }

        v64 = (*(v114 + 80) + 32) & ~*(v114 + 80);
        v65 = *(v114 + 72);
        swift_arrayInitWithCopy();

        if (v58)
        {
          v66 = *(v63 + 16);
          v35 = __OFADD__(v66, v58);
          v67 = v66 + v58;
          if (v35)
          {
            goto LABEL_104;
          }

          *(v63 + 16) = v67;
        }

        goto LABEL_64;
      }
    }

    if (v58)
    {
      goto LABEL_102;
    }

LABEL_64:
    v118 = v55;
    v70 = *(v55 + 16);
    v69 = *(v55 + 24);
    if (v70 >= v69 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v69 > 1), v70 + 1, 1);
      v55 = v118;
    }

    *(v55 + 16) = v70 + 1;
    *(v55 + 8 * v70 + 32) = v63;
    v56 += 8;
    --v54;
  }

  while (v54);

  v53 = v111;
LABEL_69:
  v121 = v55;
  v71 = v113;
  v72 = *(v113 + 2);
  v73 = 32;
  v74 = v112;
  while (v72)
  {
    v75 = *&v113[v73];
    v73 += 8;
    --v72;
    if (v75)
    {

      goto LABEL_75;
    }
  }

  v76 = *(v53 + 16);

  if (v76)
  {

LABEL_75:

LABEL_76:
    v118 = 11813;
    v119 = 0xE200000000000000;
    v77 = v115;
    v120 = v115;
    v78 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1AC57C120](v78);

    MEMORY[0x1AC57C120](102, 0xE100000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v79 = swift_allocObject();
    v116 = xmmword_1A8FC9400;
    v80 = MEMORY[0x1E69E63B0];
    *(v79 + 16) = xmmword_1A8FC9400;
    v81 = MEMORY[0x1E69E6438];
    *(v79 + 56) = v80;
    *(v79 + 64) = v81;
    *(v79 + 32) = v18;
    v82 = String.init(format:_:)();
    v84 = v83;

    v118 = 11813;
    v119 = 0xE200000000000000;
    v120 = v77;
    v85 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1AC57C120](v85);

    MEMORY[0x1AC57C120](102, 0xE100000000000000);
    v86 = swift_allocObject();
    *(v86 + 16) = v116;
    *(v86 + 56) = v80;
    *(v86 + 64) = v81;
    *(v86 + 32) = v17;
    v87 = String.init(format:_:)();
    v89 = v88;

    v118 = 0;
    v119 = 0xE000000000000000;
    _StringGuts.grow(_:)(24);

    v118 = 0xD000000000000011;
    v119 = 0x80000001A8FD8EB0;
    MEMORY[0x1AC57C120](v82, v84);

    MEMORY[0x1AC57C120](6581825, 0xE300000000000000);
    MEMORY[0x1AC57C120](v87, v89);

    v90 = v119;
    v91 = v121;
    v92 = v110;
    *v110 = v118;
    v92[1] = v90;
    v92[2] = v91;

    return;
  }

  v93 = *(v71 + 2);
  if (!v93)
  {
    goto LABEL_111;
  }

  v94 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi_Tt1g5(*(v71 + 2), 0);
  v95 = v94 + 4;
  if (specialized Sequence._copyContents(initializing:)(&v118, (v94 + 4), v93, 1, v93) == v93)
  {
    v96 = v94[2];
    if (!v96)
    {

      v98 = MEMORY[0x1E69E7CC0];
LABEL_94:
      specialized Array.append<A>(contentsOf:)(v98);
      goto LABEL_76;
    }

    v111 = v94;
    v118 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v96, 0);
    v97 = 0;
    v98 = v118;
    while (1)
    {
      v99 = v95[v97];
      *v74 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x30uLL, 0xE100000000000000);
      swift_storeEnumTagMultiPayload();
      if (v99 < 0)
      {
        break;
      }

      if (v99)
      {
        v100 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v100 + 16) = v99;
        v101 = v114;
        v102 = (*(v114 + 80) + 32) & ~*(v114 + 80);
        outlined init with copy of Symbol(v74, v100 + v102);
        v103 = v99 - 1;
        if (v99 == 1)
        {
          v74 = v112;
        }

        else
        {
          v104 = *(v101 + 72);
          v105 = v100 + v104 + v102;
          v106 = v112;
          do
          {
            outlined init with copy of Symbol(v106, v105);
            v105 += v104;
            --v103;
          }

          while (v103);
          v74 = v106;
        }
      }

      else
      {
        v100 = MEMORY[0x1E69E7CC0];
      }

      outlined destroy of Symbol(v74);
      v118 = v98;
      v108 = *(v98 + 16);
      v107 = *(v98 + 24);
      if (v108 >= v107 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v107 > 1), v108 + 1, 1);
        v98 = v118;
      }

      ++v97;
      *(v98 + 16) = v108 + 1;
      *(v98 + 8 * v108 + 32) = v100;
      v74 = v112;
      if (v97 == v96)
      {

        goto LABEL_94;
      }
    }

LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
LABEL_107:
    __break(1u);
    goto LABEL_108;
  }

LABEL_112:
  __break(1u);
}

BOOL Node.lowerPathIsAllZeros()()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    result = 0;
    if ((*(v1 + 40) & 1) == 0 && !*(v1 + 32))
    {
      v3 = *(v0 + 24);

      IsAll = Node.lowerPathIsAllZeros()(v4);

      return IsAll & 1;
    }
  }

  else
  {
    return (*(v0 + 40) & 1) == 0 && *(v0 + 32) == 0;
  }

  return result;
}

uint64_t Node.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t one-time initialization function for baseIntegerRules()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1A8FCB630;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMR);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1A8FC9410;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMR);
  v2 = *(type metadata accessor for Symbol(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 72);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1A8FC9400;
  v6 = (v5 + v3);
  *v6 = 0xD000000000000014;
  v6[1] = 0x80000001A8FD8DF0;
  swift_storeEnumTagMultiPayload();
  *(v1 + 32) = v5;
  v43 = v4;
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1A8FC9400;
  v8 = (v7 + v3);
  *v8 = 0xD000000000000011;
  v8[1] = 0x80000001A8FD8DB0;
  swift_storeEnumTagMultiPayload();
  *(v1 + 40) = v7;
  *(v0 + 32) = 0x656765746E495F5FLL;
  *(v0 + 40) = 0xE900000000000072;
  *(v0 + 48) = v1;
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1A8FC9410;
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1A8FC9400;
  v11 = (v10 + v3);
  *v11 = 0x74696769445F5FLL;
  v11[1] = 0xE700000000000000;
  swift_storeEnumTagMultiPayload();
  *(v9 + 32) = v10;
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1A8FC9410;
  v13 = (v12 + v3);
  *v13 = 0x697469736F505F5FLL;
  v13[1] = 0xEF74696769446576;
  swift_storeEnumTagMultiPayload();
  v14 = (v12 + v3 + v4);
  *v14 = 0x7374696769445F5FLL;
  v14[1] = 0xE800000000000000;
  swift_storeEnumTagMultiPayload();
  *(v9 + 40) = v12;
  *(v0 + 56) = 0xD000000000000014;
  *(v0 + 64) = 0x80000001A8FD8DF0;
  *(v0 + 72) = v9;
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1A8FC9410;
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1A8FC9410;
  *(v16 + v3) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x2DuLL, 0xE100000000000000);
  swift_storeEnumTagMultiPayload();
  v17 = (v16 + v3 + v4);
  *v17 = 0x74696769445F5FLL;
  v17[1] = 0xE700000000000000;
  swift_storeEnumTagMultiPayload();
  *(v15 + 32) = v16;
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1A8FCB600;
  *(v18 + v3) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x2DuLL, 0xE100000000000000);
  swift_storeEnumTagMultiPayload();
  v19 = (v18 + v3 + v4);
  *v19 = 0x697469736F505F5FLL;
  v19[1] = 0xEF74696769446576;
  swift_storeEnumTagMultiPayload();
  v20 = (v18 + v3 + 2 * v4);
  *v20 = 0x7374696769445F5FLL;
  v20[1] = 0xE800000000000000;
  swift_storeEnumTagMultiPayload();
  *(v15 + 40) = v18;
  *(v0 + 80) = 0xD000000000000011;
  *(v0 + 88) = 0x80000001A8FD8DB0;
  *(v0 + 96) = v15;
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1A8FC9410;
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1A8FC9400;
  v23 = (v22 + v3);
  *v23 = 0x74696769445F5FLL;
  v23[1] = 0xE700000000000000;
  swift_storeEnumTagMultiPayload();
  *(v21 + 32) = v22;
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1A8FC9410;
  v25 = (v24 + v3);
  *v25 = 0x7374696769445F5FLL;
  v25[1] = 0xE800000000000000;
  swift_storeEnumTagMultiPayload();
  v26 = (v24 + v3 + v43);
  *v26 = 0x74696769445F5FLL;
  v26[1] = 0xE700000000000000;
  swift_storeEnumTagMultiPayload();
  *(v21 + 40) = v24;
  *(v0 + 104) = 0x7374696769445F5FLL;
  *(v0 + 112) = 0xE800000000000000;
  *(v0 + 120) = v21;
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1A8FC9410;
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1A8FC9400;
  *(v28 + v3) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x30uLL, 0xE100000000000000);
  swift_storeEnumTagMultiPayload();
  *(v27 + 32) = v28;
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1A8FC9400;
  v30 = (v29 + v3);
  *v30 = 0x697469736F505F5FLL;
  v30[1] = 0xEF74696769446576;
  swift_storeEnumTagMultiPayload();
  *(v27 + 40) = v29;
  *(v0 + 128) = 0x74696769445F5FLL;
  *(v0 + 136) = 0xE700000000000000;
  *(v0 + 144) = v27;
  v31 = v0;
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1A8FCB640;
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1A8FC9400;
  *(v33 + v3) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x31uLL, 0xE100000000000000);
  swift_storeEnumTagMultiPayload();
  *(v32 + 32) = v33;
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1A8FC9400;
  *(v34 + v3) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x32uLL, 0xE100000000000000);
  swift_storeEnumTagMultiPayload();
  *(v32 + 40) = v34;
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1A8FC9400;
  *(v35 + v3) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x33uLL, 0xE100000000000000);
  swift_storeEnumTagMultiPayload();
  *(v32 + 48) = v35;
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1A8FC9400;
  *(v36 + v3) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x34uLL, 0xE100000000000000);
  swift_storeEnumTagMultiPayload();
  *(v32 + 56) = v36;
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1A8FC9400;
  *(v37 + v3) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x35uLL, 0xE100000000000000);
  swift_storeEnumTagMultiPayload();
  *(v32 + 64) = v37;
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1A8FC9400;
  *(v38 + v3) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x36uLL, 0xE100000000000000);
  swift_storeEnumTagMultiPayload();
  *(v32 + 72) = v38;
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1A8FC9400;
  *(v39 + v3) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x37uLL, 0xE100000000000000);
  swift_storeEnumTagMultiPayload();
  *(v32 + 80) = v39;
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_1A8FC9400;
  *(v40 + v3) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x38uLL, 0xE100000000000000);
  swift_storeEnumTagMultiPayload();
  *(v32 + 88) = v40;
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_1A8FC9400;
  *(v41 + v3) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x39uLL, 0xE100000000000000);
  result = swift_storeEnumTagMultiPayload();
  *(v32 + 96) = v41;
  v31[19] = 0x697469736F505F5FLL;
  v31[20] = 0xEF74696769446576;
  v31[21] = v32;
  baseIntegerRules._rawValue = v31;
  return result;
}

uint64_t one-time initialization function for baseNumberRules()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1A8FCB600;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMR);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1A8FC9400;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMR);
  v2 = *(type metadata accessor for Symbol(0) - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1A8FCB600;
  v6 = (v5 + v4);
  *v6 = 0xD000000000000012;
  v6[1] = 0x80000001A8FD8ED0;
  swift_storeEnumTagMultiPayload();
  v7 = (v5 + v4 + v3);
  *v7 = 0xD000000000000014;
  v7[1] = 0x80000001A8FD8DF0;
  swift_storeEnumTagMultiPayload();
  v8 = (v5 + v4 + 2 * v3);
  *v8 = 0xD000000000000012;
  v8[1] = 0x80000001A8FD8EF0;
  swift_storeEnumTagMultiPayload();
  *(v1 + 32) = v5;
  *(v0 + 32) = 0x7265626D754E5F5FLL;
  *(v0 + 40) = 0xE800000000000000;
  *(v0 + 48) = v1;
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1A8FC9410;
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1A8FC9400;
  *(v10 + v4) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0, 0xE000000000000000);
  swift_storeEnumTagMultiPayload();
  *(v9 + 32) = v10;
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1A8FC9400;
  *(v11 + v4) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x2DuLL, 0xE100000000000000);
  swift_storeEnumTagMultiPayload();
  *(v9 + 40) = v11;
  *(v0 + 56) = 0xD000000000000012;
  *(v0 + 64) = 0x80000001A8FD8ED0;
  *(v0 + 72) = v9;
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1A8FC9410;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1A8FC9400;
  *(v13 + v4) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0, 0xE000000000000000);
  swift_storeEnumTagMultiPayload();
  *(v12 + 32) = v13;
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1A8FC9410;
  *(v14 + v4) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x2EuLL, 0xE100000000000000);
  swift_storeEnumTagMultiPayload();
  v15 = (v14 + v4 + v3);
  *v15 = 0x7374696769445F5FLL;
  v15[1] = 0xE800000000000000;
  swift_storeEnumTagMultiPayload();
  *(v12 + 40) = v14;
  *(v0 + 80) = 0xD000000000000012;
  *(v0 + 88) = 0x80000001A8FD8EF0;
  *(v0 + 96) = v12;
  if (one-time initialization token for baseIntegerRules != -1)
  {
    swift_once();
  }

  result = specialized Array.append<A>(contentsOf:)(v16);
  baseNumberRules._rawValue = v0;
  return result;
}

Swift::Int specialized MutableCollection<>.sort(by:)(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          v13[1] = v14;
          --v13;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v5);
  *a1 = v2;
  return result;
}

{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v5);
  *a1 = v2;
  return result;
}

{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 8;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v84 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v84;
    if (!*v84)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
      v8 = result;
    }

    v76 = (v8 + 16);
    v77 = *(v8 + 16);
    if (v77 >= 2)
    {
      while (*a3)
      {
        v78 = (v8 + 16 * v77);
        v79 = *v78;
        v80 = &v76[2 * v77];
        v81 = v80[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * *v78), (*a3 + 8 * *v80), (*a3 + 8 * v81), v5);
        if (v4)
        {
        }

        if (v81 < v79)
        {
          goto LABEL_114;
        }

        if (v77 - 2 >= *v76)
        {
          goto LABEL_115;
        }

        *v78 = v79;
        v78[1] = v81;
        v82 = *v76 - v77;
        if (*v76 < v77)
        {
          goto LABEL_116;
        }

        v77 = *v76 - 1;
        result = memmove(v80, v80 + 2, 16 * v82);
        *v76 = v77;
        if (v77 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v83 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = v14 >= v13;
        ++v12;
        v13 = v14;
        if ((((v10 < v11) ^ v15) & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = 8 * v7 - 8;
        v17 = 8 * v9;
        v18 = v7;
        v19 = v9;
        do
        {
          if (v19 != --v18)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v20 = *(v21 + v17);
            *(v21 + v17) = *(v21 + v16);
            *(v21 + v16) = v20;
          }

          ++v19;
          v16 -= 8;
          v17 += 8;
        }

        while (v19 < v18);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v30 = *(v8 + 24);
    v31 = v5 + 1;
    if (v5 >= v30 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v31;
    v32 = v8 + 32;
    v33 = (v8 + 32 + 16 * v5);
    *v33 = v9;
    v33[1] = v7;
    v85 = *v84;
    if (!*v84)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v31 - 1;
        if (v31 >= 4)
        {
          break;
        }

        if (v31 == 3)
        {
          v34 = *(v8 + 32);
          v35 = *(v8 + 40);
          v44 = __OFSUB__(v35, v34);
          v36 = v35 - v34;
          v37 = v44;
LABEL_57:
          if (v37)
          {
            goto LABEL_104;
          }

          v50 = (v8 + 16 * v31);
          v52 = *v50;
          v51 = v50[1];
          v53 = __OFSUB__(v51, v52);
          v54 = v51 - v52;
          v55 = v53;
          if (v53)
          {
            goto LABEL_106;
          }

          v56 = (v32 + 16 * v5);
          v58 = *v56;
          v57 = v56[1];
          v44 = __OFSUB__(v57, v58);
          v59 = v57 - v58;
          if (v44)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v54, v59))
          {
            goto LABEL_111;
          }

          if (v54 + v59 >= v36)
          {
            if (v36 < v59)
            {
              v5 = v31 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v31 < 2)
        {
          goto LABEL_112;
        }

        v60 = (v8 + 16 * v31);
        v62 = *v60;
        v61 = v60[1];
        v44 = __OFSUB__(v61, v62);
        v54 = v61 - v62;
        v55 = v44;
LABEL_72:
        if (v55)
        {
          goto LABEL_108;
        }

        v63 = (v32 + 16 * v5);
        v65 = *v63;
        v64 = v63[1];
        v44 = __OFSUB__(v64, v65);
        v66 = v64 - v65;
        if (v44)
        {
          goto LABEL_110;
        }

        if (v66 < v54)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v31)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
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
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v71 = (v32 + 16 * (v5 - 1));
        v72 = *v71;
        v73 = (v32 + 16 * v5);
        v74 = v73[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * *v71), (*a3 + 8 * *v73), (*a3 + 8 * v74), v85);
        if (v4)
        {
        }

        if (v74 < v72)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v71 = v72;
        v71[1] = v74;
        v75 = *(v8 + 16);
        if (v5 >= v75)
        {
          goto LABEL_101;
        }

        v31 = v75 - 1;
        result = memmove((v32 + 16 * v5), v73 + 2, 16 * (v75 - 1 - v5));
        *(v8 + 16) = v75 - 1;
        if (v75 <= 2)
        {
          goto LABEL_3;
        }
      }

      v38 = v32 + 16 * v31;
      v39 = *(v38 - 64);
      v40 = *(v38 - 56);
      v44 = __OFSUB__(v40, v39);
      v41 = v40 - v39;
      if (v44)
      {
        goto LABEL_102;
      }

      v43 = *(v38 - 48);
      v42 = *(v38 - 40);
      v44 = __OFSUB__(v42, v43);
      v36 = v42 - v43;
      v37 = v44;
      if (v44)
      {
        goto LABEL_103;
      }

      v45 = (v8 + 16 * v31);
      v47 = *v45;
      v46 = v45[1];
      v44 = __OFSUB__(v46, v47);
      v48 = v46 - v47;
      if (v44)
      {
        goto LABEL_105;
      }

      v44 = __OFADD__(v36, v48);
      v49 = v36 + v48;
      if (v44)
      {
        goto LABEL_107;
      }

      if (v49 >= v41)
      {
        v67 = (v32 + 16 * v5);
        v69 = *v67;
        v68 = v67[1];
        v44 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v44)
        {
          goto LABEL_113;
        }

        if (v36 < v70)
        {
          v5 = v31 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v83;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = *a3 + 8 * v7 - 8;
  v24 = v9 - v7;
LABEL_30:
  v25 = *(v22 + 8 * v7);
  v26 = v24;
  v27 = v23;
  while (1)
  {
    v28 = *v27;
    if (v25 >= *v27)
    {
LABEL_29:
      ++v7;
      v23 += 8;
      --v24;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    *v27 = v25;
    v27[1] = v28;
    --v27;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

{
  v5 = a3;
  v101 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_105:
    v101 = *v101;
    if (!v101)
    {
      goto LABEL_143;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_137:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
      v8 = result;
    }

    v92 = v8 + 16;
    v93 = *(v8 + 2);
    if (v93 >= 2)
    {
      while (1)
      {
        v94 = *v5;
        if (!*v5)
        {
          goto LABEL_141;
        }

        v95 = &v8[16 * v93];
        v5 = *v95;
        v96 = &v92[2 * v93];
        v97 = v96[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((v94 + 24 * *v95), (v94 + 24 * *v96), v94 + 24 * v97, v101);
        if (v4)
        {
        }

        if (v97 < v5)
        {
          goto LABEL_129;
        }

        if (v93 - 2 >= *v92)
        {
          goto LABEL_130;
        }

        *v95 = v5;
        *(v95 + 1) = v97;
        v98 = *v92 - v93;
        if (*v92 < v93)
        {
          goto LABEL_131;
        }

        v93 = *v92 - 1;
        result = memmove(v96, v96 + 2, 16 * v98);
        *v92 = v93;
        v5 = a3;
        if (v93 <= 1)
        {
        }
      }
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *v5;
      v11 = (*v5 + 24 * v7);
      result = *v11;
      v12 = v11[1];
      v13 = (*v5 + 24 * v9);
      if (result == *v13 && v12 == v13[1])
      {
        v15 = 0;
      }

      else
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        v15 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v16 = (v10 + 24 * v9 + 32);
        v17 = v16;
        do
        {
          result = v16[2];
          v19 = v17[3];
          v17 += 3;
          v18 = v19;
          if (result == *(v16 - 1) && v18 == *v16)
          {
            if (v15)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = _stringCompareWithSmolCheck(_:_:expecting:)();
            if ((v15 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v16 = v17;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v15)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_134;
        }

        if (v9 < v7)
        {
          v21 = 0;
          v22 = 24 * v7;
          v23 = 24 * v9;
          v24 = v9;
          do
          {
            if (v24 != v7 + v21 - 1)
            {
              v30 = *v5;
              if (!*v5)
              {
                goto LABEL_140;
              }

              v25 = (v30 + v23);
              v26 = v30 + v22;
              v27 = *v25;
              v28 = *(v25 + 1);
              v29 = *(v26 - 24);
              v25[2] = *(v26 - 8);
              *v25 = v29;
              *(v26 - 24) = v27;
              *(v26 - 16) = v28;
            }

            ++v24;
            --v21;
            v22 -= 24;
            v23 += 24;
          }

          while (v24 < v7 + v21);
        }
      }
    }

    v31 = v5[1];
    if (v7 < v31)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_133;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_135;
        }

        if (v9 + a4 >= v31)
        {
          v32 = v5[1];
        }

        else
        {
          v32 = v9 + a4;
        }

        if (v32 < v9)
        {
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (v7 != v32)
        {
          break;
        }
      }
    }

LABEL_54:
    if (v7 < v9)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v46 = *(v8 + 2);
    v45 = *(v8 + 3);
    v47 = v46 + 1;
    if (v46 >= v45 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v45 > 1), v46 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v47;
    v48 = &v8[16 * v46];
    *(v48 + 4) = v9;
    *(v48 + 5) = v7;
    v49 = *v101;
    if (!*v101)
    {
      goto LABEL_142;
    }

    if (v46)
    {
      while (1)
      {
        v50 = v47 - 1;
        if (v47 >= 4)
        {
          break;
        }

        if (v47 == 3)
        {
          v51 = *(v8 + 4);
          v52 = *(v8 + 5);
          v61 = __OFSUB__(v52, v51);
          v53 = v52 - v51;
          v54 = v61;
LABEL_74:
          if (v54)
          {
            goto LABEL_120;
          }

          v67 = &v8[16 * v47];
          v69 = *v67;
          v68 = *(v67 + 1);
          v70 = __OFSUB__(v68, v69);
          v71 = v68 - v69;
          v72 = v70;
          if (v70)
          {
            goto LABEL_123;
          }

          v73 = &v8[16 * v50 + 32];
          v75 = *v73;
          v74 = *(v73 + 1);
          v61 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v61)
          {
            goto LABEL_126;
          }

          if (__OFADD__(v71, v76))
          {
            goto LABEL_127;
          }

          if (v71 + v76 >= v53)
          {
            if (v53 < v76)
            {
              v50 = v47 - 2;
            }

            goto LABEL_95;
          }

          goto LABEL_88;
        }

        v77 = &v8[16 * v47];
        v79 = *v77;
        v78 = *(v77 + 1);
        v61 = __OFSUB__(v78, v79);
        v71 = v78 - v79;
        v72 = v61;
LABEL_88:
        if (v72)
        {
          goto LABEL_122;
        }

        v80 = &v8[16 * v50];
        v82 = *(v80 + 4);
        v81 = *(v80 + 5);
        v61 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v61)
        {
          goto LABEL_125;
        }

        if (v83 < v71)
        {
          goto LABEL_3;
        }

LABEL_95:
        v88 = v50 - 1;
        if (v50 - 1 >= v47)
        {
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
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
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
          goto LABEL_136;
        }

        if (!*v5)
        {
          goto LABEL_139;
        }

        v89 = *&v8[16 * v88 + 32];
        v90 = *&v8[16 * v50 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((*v5 + 24 * v89), (*v5 + 24 * *&v8[16 * v50 + 32]), *v5 + 24 * v90, v49);
        if (v4)
        {
        }

        if (v90 < v89)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
        }

        if (v88 >= *(v8 + 2))
        {
          goto LABEL_117;
        }

        v91 = &v8[16 * v88];
        *(v91 + 4) = v89;
        *(v91 + 5) = v90;
        result = specialized Array.remove(at:)(v50);
        v47 = *(v8 + 2);
        if (v47 <= 1)
        {
          goto LABEL_3;
        }
      }

      v55 = &v8[16 * v47 + 32];
      v56 = *(v55 - 64);
      v57 = *(v55 - 56);
      v61 = __OFSUB__(v57, v56);
      v58 = v57 - v56;
      if (v61)
      {
        goto LABEL_118;
      }

      v60 = *(v55 - 48);
      v59 = *(v55 - 40);
      v61 = __OFSUB__(v59, v60);
      v53 = v59 - v60;
      v54 = v61;
      if (v61)
      {
        goto LABEL_119;
      }

      v62 = &v8[16 * v47];
      v64 = *v62;
      v63 = *(v62 + 1);
      v61 = __OFSUB__(v63, v64);
      v65 = v63 - v64;
      if (v61)
      {
        goto LABEL_121;
      }

      v61 = __OFADD__(v53, v65);
      v66 = v53 + v65;
      if (v61)
      {
        goto LABEL_124;
      }

      if (v66 >= v58)
      {
        v84 = &v8[16 * v50 + 32];
        v86 = *v84;
        v85 = *(v84 + 1);
        v61 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v61)
        {
          goto LABEL_128;
        }

        if (v53 < v87)
        {
          v50 = v47 - 2;
        }

        goto LABEL_95;
      }

      goto LABEL_74;
    }

LABEL_3:
    v6 = v5[1];
    if (v7 >= v6)
    {
      goto LABEL_105;
    }
  }

  v33 = *v5;
  v34 = *v5 + 24 * v7 - 24;
  v99 = v9;
  v35 = v9 - v7;
LABEL_43:
  v36 = (v33 + 24 * v7);
  v37 = *v36;
  v38 = v36[1];
  v39 = v35;
  v40 = v34;
  while (1)
  {
    v41 = v37 == *v40 && v38 == *(v40 + 8);
    if (v41 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v34 += 24;
      --v35;
      if (v7 != v32)
      {
        goto LABEL_43;
      }

      v7 = v32;
      v5 = a3;
      v9 = v99;
      goto LABEL_54;
    }

    if (!v33)
    {
      break;
    }

    v42 = *(v40 + 32);
    v43 = *(v40 + 16);
    v37 = *(v40 + 24);
    *(v40 + 24) = *v40;
    *(v40 + 40) = v43;
    *v40 = v37;
    *(v40 + 8) = v42;
    v38 = v42;
    v40 -= 24;
    if (__CFADD__(v39++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
  return result;
}

{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v83;
    if (!*v83)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
      v8 = result;
    }

    v75 = (v8 + 16);
    v76 = *(v8 + 16);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = (v8 + 16 * v76);
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * *v77), (*a3 + 8 * *v79), (*a3 + 8 * v80), v5);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = (v10 < v11) ^ (v14 >= v13);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 8 * v17);
            *(v20 + 8 * v17) = *(v20 + 8 * v16);
            *(v20 + 8 * v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v29 = *(v8 + 24);
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v30;
    v31 = v8 + 32;
    v32 = (v8 + 32 + 16 * v5);
    *v32 = v9;
    v32[1] = v7;
    v84 = *v83;
    if (!*v83)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = *(v8 + 32);
          v34 = *(v8 + 40);
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = (v8 + 16 * v30);
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = (v31 + 16 * v5);
          v57 = *v55;
          v56 = v55[1];
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = (v8 + 16 * v30);
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = (v31 + 16 * v5);
        v64 = *v62;
        v63 = v62[1];
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
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
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v70 = (v31 + 16 * (v5 - 1));
        v71 = *v70;
        v72 = (v31 + 16 * v5);
        v73 = v72[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * *v70), (*a3 + 8 * *v72), (*a3 + 8 * v73), v84);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v70 = v71;
        v70[1] = v73;
        v74 = *(v8 + 16);
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        result = memmove((v31 + 16 * v5), v72 + 2, 16 * (v74 - 1 - v5));
        *(v8 + 16) = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = v31 + 16 * v30;
      v38 = *(v37 - 64);
      v39 = *(v37 - 56);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 48);
      v41 = *(v37 - 40);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = (v8 + 16 * v30);
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = (v31 + 16 * v5);
        v68 = *v66;
        v67 = v66[1];
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 8 * v7 - 8;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 8 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (v24 >= *v26)
    {
LABEL_29:
      ++v7;
      v22 += 8;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = _stringCompareWithSmolCheck(_:_:expecting:)();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
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
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = specialized Array.remove(at:)(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

{
  v82 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v10 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v82;
    if (!*v82)
    {
      goto LABEL_126;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_120:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
      v10 = result;
    }

    v77 = *(v10 + 2);
    if (v77 >= 2)
    {
      while (*a3)
      {
        v78 = *&v10[16 * v77];
        v79 = *&v10[16 * v77 + 24];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * v78), (*a3 + 8 * *&v10[16 * v77 + 16]), (*a3 + 8 * v79), v5);
        if (v4)
        {
        }

        if (v79 < v78)
        {
          goto LABEL_113;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
        }

        if (v77 - 2 >= *(v10 + 2))
        {
          goto LABEL_114;
        }

        v80 = &v10[16 * v77];
        *v80 = v78;
        *(v80 + 1) = v79;
        result = specialized Array.remove(at:)(v77 - 1);
        v77 = *(v10 + 2);
        if (v77 <= 1)
        {
        }
      }

      goto LABEL_124;
    }
  }

  v8 = a4;
  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v11 = v9++;
    if (v9 < v7)
    {
      v12 = *(*(*a3 + 8 * v9) + 16);
      v13 = *(*(*a3 + 8 * v11) + 16);
      v14 = v11 + 2;
      v15 = v12;
      while (v7 != v14)
      {
        v16 = *(*(*a3 + 8 * v14) + 16);
        v17 = (v12 < v13) ^ (v16 >= v15);
        ++v14;
        v15 = v16;
        if ((v17 & 1) == 0)
        {
          v9 = v14 - 1;
          if (v12 >= v13)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v9 = v7;
      if (v12 >= v13)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v9 < v11)
      {
        goto LABEL_117;
      }

      if (v11 < v9)
      {
        v18 = 8 * v9 - 8;
        v19 = 8 * v11;
        v20 = v9;
        v21 = v11;
        do
        {
          if (v21 != --v20)
          {
            v23 = *a3;
            if (!*a3)
            {
              goto LABEL_123;
            }

            v22 = *(v23 + v19);
            *(v23 + v19) = *(v23 + v18);
            *(v23 + v18) = v22;
          }

          ++v21;
          v18 -= 8;
          v19 += 8;
        }

        while (v21 < v20);
        v7 = a3[1];
      }
    }

LABEL_20:
    if (v9 < v7)
    {
      if (__OFSUB__(v9, v11))
      {
        goto LABEL_116;
      }

      if (v9 - v11 < v8)
      {
        if (__OFADD__(v11, v8))
        {
          goto LABEL_118;
        }

        if (v11 + v8 < v7)
        {
          v7 = v11 + v8;
        }

        if (v7 < v11)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v9 != v7)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v9 < v11)
    {
      goto LABEL_115;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
      v10 = result;
    }

    v5 = *(v10 + 2);
    v32 = *(v10 + 3);
    v33 = v5 + 1;
    if (v5 >= v32 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v5 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 2) = v33;
    v34 = &v10[16 * v5];
    *(v34 + 4) = v11;
    *(v34 + 5) = v9;
    v35 = *v82;
    if (!*v82)
    {
      goto LABEL_125;
    }

    if (v5)
    {
      while (1)
      {
        v36 = v33 - 1;
        if (v33 >= 4)
        {
          break;
        }

        if (v33 == 3)
        {
          v37 = *(v10 + 4);
          v38 = *(v10 + 5);
          v47 = __OFSUB__(v38, v37);
          v39 = v38 - v37;
          v40 = v47;
LABEL_57:
          if (v40)
          {
            goto LABEL_104;
          }

          v53 = &v10[16 * v33];
          v55 = *v53;
          v54 = *(v53 + 1);
          v56 = __OFSUB__(v54, v55);
          v57 = v54 - v55;
          v58 = v56;
          if (v56)
          {
            goto LABEL_107;
          }

          v59 = &v10[16 * v36 + 32];
          v61 = *v59;
          v60 = *(v59 + 1);
          v47 = __OFSUB__(v60, v61);
          v62 = v60 - v61;
          if (v47)
          {
            goto LABEL_110;
          }

          if (__OFADD__(v57, v62))
          {
            goto LABEL_111;
          }

          if (v57 + v62 >= v39)
          {
            if (v39 < v62)
            {
              v36 = v33 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v63 = &v10[16 * v33];
        v65 = *v63;
        v64 = *(v63 + 1);
        v47 = __OFSUB__(v64, v65);
        v57 = v64 - v65;
        v58 = v47;
LABEL_71:
        if (v58)
        {
          goto LABEL_106;
        }

        v66 = &v10[16 * v36];
        v68 = *(v66 + 4);
        v67 = *(v66 + 5);
        v47 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v47)
        {
          goto LABEL_109;
        }

        if (v69 < v57)
        {
          goto LABEL_3;
        }

LABEL_78:
        v74 = v36 - 1;
        if (v36 - 1 >= v33)
        {
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
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
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_122;
        }

        v75 = *&v10[16 * v74 + 32];
        v5 = *&v10[16 * v36 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * v75), (*a3 + 8 * *&v10[16 * v36 + 32]), (*a3 + 8 * v5), v35);
        if (v4)
        {
        }

        if (v5 < v75)
        {
          goto LABEL_100;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
        }

        if (v74 >= *(v10 + 2))
        {
          goto LABEL_101;
        }

        v76 = &v10[16 * v74];
        *(v76 + 4) = v75;
        *(v76 + 5) = v5;
        result = specialized Array.remove(at:)(v36);
        v33 = *(v10 + 2);
        if (v33 <= 1)
        {
          goto LABEL_3;
        }
      }

      v41 = &v10[16 * v33 + 32];
      v42 = *(v41 - 64);
      v43 = *(v41 - 56);
      v47 = __OFSUB__(v43, v42);
      v44 = v43 - v42;
      if (v47)
      {
        goto LABEL_102;
      }

      v46 = *(v41 - 48);
      v45 = *(v41 - 40);
      v47 = __OFSUB__(v45, v46);
      v39 = v45 - v46;
      v40 = v47;
      if (v47)
      {
        goto LABEL_103;
      }

      v48 = &v10[16 * v33];
      v50 = *v48;
      v49 = *(v48 + 1);
      v47 = __OFSUB__(v49, v50);
      v51 = v49 - v50;
      if (v47)
      {
        goto LABEL_105;
      }

      v47 = __OFADD__(v39, v51);
      v52 = v39 + v51;
      if (v47)
      {
        goto LABEL_108;
      }

      if (v52 >= v44)
      {
        v70 = &v10[16 * v36 + 32];
        v72 = *v70;
        v71 = *(v70 + 1);
        v47 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v47)
        {
          goto LABEL_112;
        }

        if (v39 < v73)
        {
          v36 = v33 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v7 = a3[1];
    v8 = a4;
    if (v9 >= v7)
    {
      goto LABEL_88;
    }
  }

  v24 = *a3;
  v25 = *a3 + 8 * v9 - 8;
  v26 = v11 - v9;
LABEL_30:
  v27 = *(v24 + 8 * v9);
  v28 = v26;
  v29 = v25;
  while (1)
  {
    v30 = *v29;
    if (*(v27 + 16) >= *(*v29 + 16))
    {
LABEL_29:
      ++v9;
      v25 += 8;
      --v26;
      if (v9 != v7)
      {
        goto LABEL_30;
      }

      v9 = v7;
      goto LABEL_37;
    }

    if (!v24)
    {
      break;
    }

    *v29 = v27;
    v29[1] = v30;
    --v29;
    if (__CFADD__(v28++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

{
  v6 = v4;
  v95 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v95;
    if (!*v95)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
      v9 = result;
    }

    v87 = (v9 + 16);
    v88 = *(v9 + 16);
    if (v88 >= 2)
    {
      while (*a3)
      {
        v89 = (v9 + 16 * v88);
        v90 = *v89;
        v91 = &v87[2 * v88];
        v92 = v91[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 32 * *v89), (*a3 + 32 * *v91), (*a3 + 32 * v92), v5);
        if (v6)
        {
        }

        if (v92 < v90)
        {
          goto LABEL_114;
        }

        if (v88 - 2 >= *v87)
        {
          goto LABEL_115;
        }

        *v89 = v90;
        v89[1] = v92;
        v93 = *v87 - v88;
        if (*v87 < v88)
        {
          goto LABEL_116;
        }

        v88 = *v87 - 1;
        result = memmove(v91, v91 + 2, 16 * v93);
        *v87 = v88;
        if (v88 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  v94 = a4;
  while (1)
  {
    v10 = v8++;
    if (v8 < v7)
    {
      v11 = *(*a3 + 32 * v8 + 24);
      v12 = 32 * v10;
      v13 = *a3 + 32 * v10;
      v14 = *(v13 + 24);
      v15 = v10 + 2;
      v16 = (v13 + 88);
      v17 = v11;
      while (v7 != v15)
      {
        v18 = *v16;
        v16 += 4;
        v19 = (v11 < v14) ^ (v18 >= v17);
        ++v15;
        v17 = v18;
        if ((v19 & 1) == 0)
        {
          v8 = v15 - 1;
          if (v11 >= v14)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v8 = v7;
      if (v11 >= v14)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v8 < v10)
      {
        goto LABEL_119;
      }

      if (v10 < v8)
      {
        v20 = 32 * v8 - 16;
        v21 = v8;
        v22 = v10;
        do
        {
          if (v22 != --v21)
          {
            v29 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v23 = (v29 + v12);
            v24 = (v29 + v20);
            v25 = *v23;
            v26 = v23[1];
            v27 = *(v23 + 1);
            v28 = *v24;
            *v23 = *(v24 - 1);
            *(v23 + 1) = v28;
            *(v24 - 2) = v25;
            *(v24 - 1) = v26;
            *v24 = v27;
          }

          ++v22;
          v20 -= 32;
          v12 += 32;
        }

        while (v22 < v21);
        v7 = a3[1];
      }
    }

LABEL_20:
    if (v8 < v7)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_118;
      }

      if (v8 - v10 < a4)
      {
        if (__OFADD__(v10, a4))
        {
          goto LABEL_120;
        }

        if (v10 + a4 < v7)
        {
          v7 = v10 + a4;
        }

        if (v7 < v10)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v8 != v7)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v8 < v10)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 16) + 1, 1, v9);
      v9 = result;
    }

    v5 = *(v9 + 16);
    v41 = *(v9 + 24);
    v42 = v5 + 1;
    if (v5 >= v41 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v5 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 16) = v42;
    v43 = v9 + 32;
    v44 = (v9 + 32 + 16 * v5);
    *v44 = v10;
    v44[1] = v8;
    v96 = *v95;
    if (!*v95)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v42 - 1;
        if (v42 >= 4)
        {
          break;
        }

        if (v42 == 3)
        {
          v45 = *(v9 + 32);
          v46 = *(v9 + 40);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_57:
          if (v48)
          {
            goto LABEL_104;
          }

          v61 = (v9 + 16 * v42);
          v63 = *v61;
          v62 = v61[1];
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_106;
          }

          v67 = (v43 + 16 * v5);
          v69 = *v67;
          v68 = v67[1];
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_111;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v5 = v42 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v42 < 2)
        {
          goto LABEL_112;
        }

        v71 = (v9 + 16 * v42);
        v73 = *v71;
        v72 = v71[1];
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_72:
        if (v66)
        {
          goto LABEL_108;
        }

        v74 = (v43 + 16 * v5);
        v76 = *v74;
        v75 = v74[1];
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_110;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v42)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
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
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v82 = (v43 + 16 * (v5 - 1));
        v83 = *v82;
        v84 = (v43 + 16 * v5);
        v85 = v84[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 32 * *v82), (*a3 + 32 * *v84), (*a3 + 32 * v85), v96);
        if (v6)
        {
        }

        if (v85 < v83)
        {
          goto LABEL_99;
        }

        if (v5 > *(v9 + 16))
        {
          goto LABEL_100;
        }

        *v82 = v83;
        v82[1] = v85;
        v86 = *(v9 + 16);
        if (v5 >= v86)
        {
          goto LABEL_101;
        }

        v42 = v86 - 1;
        result = memmove((v43 + 16 * v5), v84 + 2, 16 * (v86 - 1 - v5));
        *(v9 + 16) = v86 - 1;
        if (v86 <= 2)
        {
          goto LABEL_3;
        }
      }

      v49 = v43 + 16 * v42;
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_102;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_103;
      }

      v56 = (v9 + 16 * v42);
      v58 = *v56;
      v57 = v56[1];
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_105;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_107;
      }

      if (v60 >= v52)
      {
        v78 = (v43 + 16 * v5);
        v80 = *v78;
        v79 = v78[1];
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_113;
        }

        if (v47 < v81)
        {
          v5 = v42 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v7 = a3[1];
    a4 = v94;
    if (v8 >= v7)
    {
      goto LABEL_88;
    }
  }

  v30 = *a3;
  v31 = *a3 + 32 * v8 - 8;
  v32 = v10 - v8;
LABEL_30:
  v33 = *(v30 + 32 * v8 + 24);
  v34 = v32;
  v35 = v31;
  while (1)
  {
    if (v33 >= *v35)
    {
LABEL_29:
      ++v8;
      v31 += 32;
      --v32;
      if (v8 != v7)
      {
        goto LABEL_30;
      }

      v8 = v7;
      goto LABEL_37;
    }

    if (!v30)
    {
      break;
    }

    v36 = v35[1];
    v37 = v35[2];
    v38 = v35[3];
    v39 = *(v35 - 1);
    *(v35 + 1) = *(v35 - 3);
    *(v35 + 3) = v39;
    *(v35 - 3) = v36;
    *(v35 - 2) = v37;
    *(v35 - 1) = v38;
    *v35 = v33;
    v35 -= 4;
    if (__CFADD__(v34++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4++;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6++;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 1;
    --v5;
    v18 = v14;
    do
    {
      v19 = v5 + 1;
      v20 = *(v18 - 8);
      v18 -= 8;
      v21 = v20;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (--v6, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v21;
      }

      --v5;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v22 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

unsigned __int8 *specialized _parseInteger<A, B>(ascii:radix:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = static String._copying(_:)();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

{
  v63 = a1;
  v64 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = static String._copying(_:)();
    v36 = v35;

    v5 = v36;
    if ((v36 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v62;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v20 = v7 - 1;
        if (v20)
        {
          v21 = a3 + 48;
          v22 = a3 + 55;
          v23 = a3 + 87;
          if (a3 > 10)
          {
            v21 = 58;
          }

          else
          {
            v23 = 97;
            v22 = 65;
          }

          if (result)
          {
            LOBYTE(v13) = 0;
            v24 = result + 1;
            v15 = 1;
            do
            {
              v25 = *v24;
              if (v25 < 0x30 || v25 >= v21)
              {
                if (v25 < 0x41 || v25 >= v22)
                {
                  v18 = 0;
                  if (v25 < 0x61 || v25 >= v23)
                  {
                    goto LABEL_127;
                  }

                  v26 = -87;
                }

                else
                {
                  v26 = -55;
                }
              }

              else
              {
                v26 = -48;
              }

              v27 = v13 * a3;
              if ((v27 & 0xFF00) != 0)
              {
                goto LABEL_126;
              }

              v13 = v27 + (v25 + v26);
              if ((v13 >> 8))
              {
                goto LABEL_126;
              }

              ++v24;
              --v20;
            }

            while (v20);
LABEL_46:
            v15 = 0;
            v18 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v18 = 0;
        v15 = 1;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v28 = a3 + 48;
        v29 = a3 + 55;
        v30 = a3 + 87;
        if (a3 > 10)
        {
          v28 = 58;
        }

        else
        {
          v30 = 97;
          v29 = 65;
        }

        if (result)
        {
          LOBYTE(v31) = 0;
          v15 = 1;
          do
          {
            v32 = *result;
            if (v32 < 0x30 || v32 >= v28)
            {
              if (v32 < 0x41 || v32 >= v29)
              {
                v18 = 0;
                if (v32 < 0x61 || v32 >= v30)
                {
                  goto LABEL_127;
                }

                v33 = -87;
              }

              else
              {
                v33 = -55;
              }
            }

            else
            {
              v33 = -48;
            }

            v34 = v31 * a3;
            if ((v34 & 0xFF00) != 0)
            {
              goto LABEL_126;
            }

            v31 = v34 + (v32 + v33);
            if ((v31 >> 8))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v15 = 0;
          v18 = v31;
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          LOBYTE(v13) = 0;
          v14 = result + 1;
          v15 = 1;
          while (1)
          {
            v16 = *v14;
            if (v16 < 0x30 || v16 >= v10)
            {
              if (v16 < 0x41 || v16 >= v11)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v12)
                {
                  goto LABEL_127;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v13 * a3;
            if ((v19 & 0xFF00) != 0)
            {
              goto LABEL_126;
            }

            v13 = v19 - (v16 + v17);
            if ((v13 & 0xFFFFFF00) != 0)
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v18 = 0;
        v15 = 0;
LABEL_127:

        return (v18 | (v15 << 8));
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v37 = HIBYTE(v5) & 0xF;
  v63 = v6;
  v64 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v37)
      {
        LOBYTE(v39) = 0;
        v55 = a3 + 48;
        v56 = a3 + 55;
        v57 = a3 + 87;
        if (a3 > 10)
        {
          v55 = 58;
        }

        else
        {
          v57 = 97;
          v56 = 65;
        }

        v58 = &v63;
        v15 = 1;
        while (1)
        {
          v59 = *v58;
          if (v59 < 0x30 || v59 >= v55)
          {
            if (v59 < 0x41 || v59 >= v56)
            {
              v18 = 0;
              if (v59 < 0x61 || v59 >= v57)
              {
                goto LABEL_127;
              }

              v60 = -87;
            }

            else
            {
              v60 = -55;
            }
          }

          else
          {
            v60 = -48;
          }

          v61 = v39 * a3;
          if ((v61 & 0xFF00) != 0)
          {
            goto LABEL_126;
          }

          v39 = v61 + (v59 + v60);
          if ((v39 >> 8))
          {
            goto LABEL_126;
          }

          v58 = (v58 + 1);
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v37)
    {
      v38 = v37 - 1;
      if (v38)
      {
        LOBYTE(v39) = 0;
        v40 = a3 + 48;
        v41 = a3 + 55;
        v42 = a3 + 87;
        if (a3 > 10)
        {
          v40 = 58;
        }

        else
        {
          v42 = 97;
          v41 = 65;
        }

        v43 = &v63 + 1;
        v15 = 1;
        while (1)
        {
          v44 = *v43;
          if (v44 < 0x30 || v44 >= v40)
          {
            if (v44 < 0x41 || v44 >= v41)
            {
              v18 = 0;
              if (v44 < 0x61 || v44 >= v42)
              {
                goto LABEL_127;
              }

              v45 = -87;
            }

            else
            {
              v45 = -55;
            }
          }

          else
          {
            v45 = -48;
          }

          v46 = v39 * a3;
          if ((v46 & 0xFF00) != 0)
          {
            goto LABEL_126;
          }

          v39 = v46 - (v44 + v45);
          if ((v39 & 0xFFFFFF00) != 0)
          {
            goto LABEL_126;
          }

          ++v43;
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v37)
  {
    v47 = v37 - 1;
    if (v47)
    {
      LOBYTE(v39) = 0;
      v48 = a3 + 48;
      v49 = a3 + 55;
      v50 = a3 + 87;
      if (a3 > 10)
      {
        v48 = 58;
      }

      else
      {
        v50 = 97;
        v49 = 65;
      }

      v51 = &v63 + 1;
      v15 = 1;
      do
      {
        v52 = *v51;
        if (v52 < 0x30 || v52 >= v48)
        {
          if (v52 < 0x41 || v52 >= v49)
          {
            v18 = 0;
            if (v52 < 0x61 || v52 >= v50)
            {
              goto LABEL_127;
            }

            v53 = -87;
          }

          else
          {
            v53 = -55;
          }
        }

        else
        {
          v53 = -48;
        }

        v54 = v39 * a3;
        if ((v54 & 0xFF00) != 0)
        {
          goto LABEL_126;
        }

        v39 = v54 + (v52 + v53);
        if ((v39 >> 8))
        {
          goto LABEL_126;
        }

        ++v51;
        --v47;
      }

      while (v47);
LABEL_125:
      v15 = 0;
      v18 = v39;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t specialized Set.union<A>(_:)(uint64_t a1, uint64_t a2)
{
  v9 = a2;
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 48);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;
      v6 = *(v3 - 2);

      specialized Set._Variant.insert(_:)(&v8, v6, v5, v4);

      v3 += 3;
      --v2;
    }

    while (v2);
    return v9;
  }

  return a2;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay29GenerativeFunctionsFoundation10JSONSchemaOG_Say19TokenGenerationCore4RuleVGsAE_pTg504_s19hi80Core7GrammarV5anyOf33_DD88DD49DE63EB9CBD61CBF820251C8ALL4name7schemas4withSayAA4k12VGSSSg_Say29de12Foundation10G23OGSDyAoKGztKFZAkOKXEfU_AJ0N0VXMtSDyAhMGTf1cn_n(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (!v3)
  {
    return v4;
  }

  v40 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
  v4 = v40;
  v7 = type metadata accessor for JSONSchema();
  v8 = *(v7 - 8);
  v9 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v36 = (v8 + 16);
  v37 = v7;
  v38 = *(v8 + 72);
  while (1)
  {
    v10 = *a2;
    if (!*(*a2 + 16))
    {
      break;
    }

    v11 = specialized __RawDictionaryStorage.find<A>(_:)(v9);
    if ((v12 & 1) == 0)
    {
      break;
    }

    v13 = *(*(v10 + 56) + 8 * v11);

LABEL_18:
    v34 = *(v40 + 16);
    v33 = *(v40 + 24);
    if (v34 >= v33 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1);
    }

    *(v40 + 16) = v34 + 1;
    *(v40 + 8 * v34 + 32) = v13;
    v9 += v38;
    if (!--v3)
    {
      return v4;
    }
  }

  v14 = closure #1 in static Grammar.rules(for:with:wrapStringsInQuotes:)(v9, 1, a2);
  if (v2)
  {

    return v4;
  }

  v13 = v14;

  v15 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *a2;
  v39 = *a2;
  v18 = specialized __RawDictionaryStorage.find<A>(_:)(v9);
  v20 = *(v17 + 16);
  v21 = (v19 & 1) == 0;
  v22 = __OFADD__(v20, v21);
  v23 = v20 + v21;
  if (!v22)
  {
    v24 = v19;
    if (*(v17 + 24) >= v23)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v29 = v18;
        specialized _NativeDictionary.copy()();
        v18 = v29;
        v26 = v39;
        if (v24)
        {
          goto LABEL_13;
        }

        goto LABEL_15;
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v23, isUniquelyReferenced_nonNull_native);
      v18 = specialized __RawDictionaryStorage.find<A>(_:)(v9);
      if ((v24 & 1) != (v25 & 1))
      {
        goto LABEL_26;
      }
    }

    v26 = v39;
    if (v24)
    {
LABEL_13:
      v27 = v26[7];
      v28 = *(v27 + 8 * v18);
      *(v27 + 8 * v18) = v13;

LABEL_17:
      *a2 = v26;
      goto LABEL_18;
    }

LABEL_15:
    v26[(v18 >> 6) + 8] |= 1 << v18;
    v30 = v18;
    (*v36)(v26[6] + v18 * v38, v9, v37);
    *(v26[7] + 8 * v30) = v13;
    v31 = v26[2];
    v22 = __OFADD__(v31, 1);
    v32 = v31 + 1;
    if (v22)
    {
      goto LABEL_25;
    }

    v26[2] = v32;
    goto LABEL_17;
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySay29GenerativeFunctionsFoundation10JSONSchemaO8PropertyVGG_19TokenGenerationCore6ChoiceVs5NeverOTg504_s19ij101Core7GrammarV10jsonObject33_DD88DD49DE63EB9CBD61CBF820251C8ALL4name6fields4withSayAA4RuleVGSSSg_Say29de12Foundation10g2O8h17VGSDyAoKGztKFZAA6L8VARXEfU_SDyAjM6SymbolOGTf1cn_n(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *(a1 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (!v4)
  {
    return v5;
  }

  v15 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
  v5 = v15;
  for (i = (a1 + 32); ; ++i)
  {
    v13 = *i;

    closure #1 in static Grammar.jsonObject(name:fields:with:)(&v13, a2, &v14);
    if (v3)
    {
      break;
    }

    v3 = 0;

    v9 = v14;
    v15 = v5;
    v11 = *(v5 + 16);
    v10 = *(v5 + 24);
    if (v11 >= v10 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
      v5 = v15;
    }

    *(v5 + 16) = v11 + 1;
    *(v5 + 8 * v11 + 32) = v9;
    if (!--v4)
    {
      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized RangeReplaceableCollection<>.popLast()@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  if (!*(*v1 + 16))
  {
    v15 = type metadata accessor for JSONSchema.Property();
    v11 = *(*(v15 - 8) + 56);
    v14 = v15;
    v12 = a1;
    v13 = 1;
    goto LABEL_6;
  }

  v4 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
    v6 = *(result + 16);
    if (v6)
    {
      goto LABEL_4;
    }

LABEL_10:
    __break(1u);
    return result;
  }

  v6 = v3[2];
  if (!v6)
  {
    goto LABEL_10;
  }

LABEL_4:
  v7 = v6 - 1;
  v8 = type metadata accessor for JSONSchema.Property();
  v9 = *(v8 - 8);
  v16 = v9;
  v10 = v3 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v9 + 72) * v7;
  v3[2] = v7;
  *v1 = v3;
  (*(v9 + 32))(a1, v10, v8);
  v11 = *(v16 + 56);
  v12 = a1;
  v13 = 0;
  v14 = v8;
LABEL_6:

  return v11(v12, v13, 1, v14);
}

char *specialized Sequence.compactMap<A>(_:)(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v32[3] = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation10JSONSchemaO8PropertyVSgMd, &_s29GenerativeFunctionsFoundation10JSONSchemaO8PropertyVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v26 - v8;
  v10 = type metadata accessor for JSONSchema.Property();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v31 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v28 = &v26 - v15;
  v16 = *(a3 + 16);
  if (!v16)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v26 = v14;
  v29 = (v14 + 32);
  v30 = (v14 + 48);
  v17 = (a3 + 40);
  v18 = MEMORY[0x1E69E7CC0];
  v27 = a1;
  while (1)
  {
    v19 = *v17;
    v32[0] = *(v17 - 1);
    v32[1] = v19;

    a1(v32);
    if (v3)
    {
      break;
    }

    if ((*v30)(v9, 1, v10) == 1)
    {
      outlined destroy of [Regex2BNF.CharacterPredicate](v9, &_s29GenerativeFunctionsFoundation10JSONSchemaO8PropertyVSgMd, &_s29GenerativeFunctionsFoundation10JSONSchemaO8PropertyVSgMR);
    }

    else
    {
      v20 = v10;
      v21 = v28;
      v22 = *v29;
      (*v29)(v28, v9, v20);
      v22(v31, v21, v20);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v18 + 2) + 1, 1, v18);
      }

      v24 = *(v18 + 2);
      v23 = *(v18 + 3);
      if (v24 >= v23 >> 1)
      {
        v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v23 > 1, v24 + 1, 1, v18);
      }

      *(v18 + 2) = v24 + 1;
      v22(&v18[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v24], v31, v20);
      v10 = v20;
      a1 = v27;
    }

    v17 += 2;
    if (!--v16)
    {
      return v18;
    }
  }

  return v18;
}

uint64_t _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF29GenerativeFunctionsFoundation10JSONSchemaO_s5NeverOAF8PropertyVTg5@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v20[1] = a2;
  v21 = a1;
  v7 = type metadata accessor for JSONSchema();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation10JSONSchemaOSgMd, &_s29GenerativeFunctionsFoundation10JSONSchemaOSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = v20 - v14;
  outlined init with copy of (String, Any)(v5, v20 - v14, &_s29GenerativeFunctionsFoundation10JSONSchemaOSgMd, &_s29GenerativeFunctionsFoundation10JSONSchemaOSgMR);
  v16 = 1;
  if ((*(v8 + 48))(v15, 1, v7) == 1)
  {
    v17 = a3;
LABEL_5:
    v18 = type metadata accessor for JSONSchema.Property();
    return (*(*(v18 - 8) + 56))(v17, v16, 1, v18);
  }

  (*(v8 + 32))(v11, v15, v7);
  v17 = a3;
  v21(v11);
  if (!v4)
  {
    (*(v8 + 8))(v11, v7);
    v16 = 0;
    goto LABEL_5;
  }

  result = (*(v8 + 8))(v11, v7);
  __break(1u);
  return result;
}

uint64_t GuidedGenerationConstraints.init(schema:vocabularyManager:enableDeterministicTokenRuns:numberOfParallelTasks:)@<X0>(uint64_t a1@<X0>, void **a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v48 = a5;
  v49 = a4;
  v42 = a3;
  v7 = type metadata accessor for Schema();
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v41 - v13;
  v15 = *a2;
  v16 = v8[2];
  v47 = a1;
  v16(&v41 - v13, a1, v7);
  v16(v12, v14, v7);
  Grammar.init(_:)(v12, v83);
  v17 = v8[1];
  v45 = v8 + 1;
  v46 = v7;
  v44 = v17;
  v17(v14, v7);
  v18 = v84;
  v79[0] = v83[0];
  v79[1] = v83[1];
  v79[2] = v83[2];
  v80 = v83[3];
  v81 = v83[4];
  v82 = v84;
  type metadata accessor for EarleyRecognizer.RecognizerGrammar();
  swift_allocObject();
  swift_retain_n();

  v19 = EarleyRecognizer.RecognizerGrammar.init(grammar:vocabularyManager:)(v79, v15);
  v20 = specialized static EarleyRecognizer.createRootItems(recognizerGrammar:)(v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay19TokenGenerationCore16EarleyRecognizerC5StateVGGMd, &_ss23_ContiguousArrayStorageCySay19TokenGenerationCore16EarleyRecognizerC5StateVGGMR);
  v21 = swift_allocObject();
  v50 = xmmword_1A8FC9400;
  *(v21 + 16) = xmmword_1A8FC9400;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore16EarleyRecognizerC5StateVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore16EarleyRecognizerC5StateVGMR);
  v22 = swift_allocObject();
  *(v22 + 16) = v50;
  *(v22 + 32) = v20;
  *(v21 + 32) = v22;
  type metadata accessor for EarleyRecognizer();
  v23 = swift_allocObject();
  *(v23 + 16) = v18;
  *(v23 + 28) = -1;
  *(v23 + 24) = 0;
  *(v23 + 32) = v19;
  *(v23 + 40) = v21;
  *(v23 + 48) = MEMORY[0x1E69E7CC0];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore0A17GrammarRecognizerCyAA06EarleyE0CGMd, &_s19TokenGenerationCore0A17GrammarRecognizerCyAA06EarleyE0CGMR);
  swift_allocObject();

  v25 = specialized TokenGrammarRecognizer.init(inputRecognizer:vocabManager:lastConsumedTokenID:)(v24, v15, 0, 1);

  GuidedGenerationOverrides.init()(v79);
  v43 = _s19TokenGenerationCore27SpaceLookaheadMaskGeneratorVACyxGycfCAA16EarleyRecognizerC_Ttg5();
  if (one-time initialization token for isInternalInstall != -1)
  {
    swift_once();
  }

  if (!isInternalInstall)
  {
    GuidedGenerationOverrides.init()(&v53);
    v76 = v63;
    v77 = v64;
    v78 = v65;
    v72 = v59;
    v73 = v60;
    v74 = v61;
    v75 = v62;
    v68 = v55;
    v69 = v56;
    v70 = v57;
    v71 = v58;
    v66 = v53;
    v67 = v54;
    outlined destroy of GuidedGenerationOverrides(&v66);
    v51 = 0;
    v52 = 1;
    v28 = 2000;
LABEL_10:
    v26 = v42;
    goto LABEL_11;
  }

  v80(&v66, v79[0]);
  v26 = v66;
  v27 = v66;
  GuidedGenerationOverrides.init()(&v53);
  v76 = v63;
  v77 = v64;
  v78 = v65;
  v72 = v59;
  v73 = v60;
  v74 = v61;
  v75 = v62;
  v68 = v55;
  v69 = v56;
  v70 = v57;
  v71 = v58;
  v66 = v53;
  v67 = v54;
  (*(&v64 + 1))(&v51, v63);
  outlined destroy of GuidedGenerationOverrides(&v66);
  if (v52)
  {
    v28 = 2000;
  }

  else
  {
    v28 = v51;
  }

  if (v27 == 2)
  {
    goto LABEL_10;
  }

LABEL_11:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore016RecognizerGuidedE11ConstraintsV0dG7ManagerC0dG5CacheVyAC06EarleyG0CAC27SpaceLookaheadMaskGeneratorVyAKG__GGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore016RecognizerGuidedE11ConstraintsV0dG7ManagerC0dG5CacheVyAC06EarleyG0CAC27SpaceLookaheadMaskGeneratorVyAKG__GGMR);
  v29 = swift_allocObject();
  *(v29 + 16) = v50;
  v30 = MEMORY[0x1E69E7CC0];
  v31 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v29 + 32) = v25;
  *(v29 + 40) = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore016RecognizerGuidedB11ConstraintsV0aD7ManagerCyAA06EarleyD0CAA27SpaceLookaheadMaskGeneratorVyAGG_GMd, &_s19TokenGenerationCore016RecognizerGuidedB11ConstraintsV0aD7ManagerCyAA06EarleyD0CAA27SpaceLookaheadMaskGeneratorVyAGG_GMR);
  v32 = swift_allocObject();
  type metadata accessor for Lock();
  v33 = swift_allocObject();
  swift_retain_n();
  v34 = swift_slowAlloc();
  *(v33 + 16) = v34;
  pthread_mutex_init(v34, 0);

  *(v32 + 16) = v33;
  *(v32 + 24) = v29;
  type metadata accessor for MaskCache();
  v35 = swift_allocObject();
  *(v35 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_19TokenGenerationCore16ContiguousBitSetV4mask_Sb26isPotentiallyDeterministictTt0g5Tf4g_n(v30);
  v36 = swift_allocObject();
  v37 = swift_slowAlloc();
  *(v36 + 16) = v37;
  pthread_mutex_init(v37, 0);
  outlined destroy of GuidedGenerationOverrides(v79);

  result = v44(v47, v46);
  *(v35 + 24) = v36;
  v39 = v43 & 1;
  v40 = v48;
  *v48 = v25;
  v40[1] = 0;
  v40[2] = v32;
  v40[3] = v35;
  v40[4] = v25;
  *(v40 + 40) = v39;
  *(v40 + 41) = v26 & 1;
  v40[6] = v49;
  *(v40 + 56) = 0;
  v40[8] = v28;
  return result;
}