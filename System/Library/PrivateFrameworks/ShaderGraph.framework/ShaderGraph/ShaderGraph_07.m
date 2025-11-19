void specialized createGraphDotText<A>(representing:)(__int128 *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph010SGDataTypeE0VGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph010SGDataTypeE0VGMR);
  inited = swift_initStackObject();
  v4 = *(a1 + 4);
  v42 = *(a1 + 3);
  v36 = *(a1 + 8);
  v35 = v4;
  v5 = *(a1 + 5);
  v6 = *a1;
  inited[1] = xmmword_265F1F670;
  inited[2] = v6;
  v7 = a1[2];
  inited[3] = a1[1];
  inited[4] = v7;
  outlined init with copy of String(&v36, v34);
  outlined init with copy of [Input](&v42, v34, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMR);
  outlined init with copy of [Input](&v35, v34, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMR);

  v9 = specialized SGDataTypeGraph.subgraphs()(v8);
  v34[0] = inited;
  specialized Array.append<A>(contentsOf:)(v9);
  v10 = v34[0];
  v11 = *(v34[0] + 16);
  if (v11)
  {
    v34[0] = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11, 0);
    v12 = 0;
    v13 = v34[0];
    v14 = *(v10 + 16);
    if (v14 >= v11)
    {
      v14 = v11;
    }

    v32 = v10;
    v33 = v14;
    v15 = (v10 + 72);
    v31 = v11;
    while (v33 != v12)
    {
      if (v12 >= *(v10 + 16))
      {
        goto LABEL_16;
      }

      v16 = *(v15 - 3);
      v17 = *(v15 - 2);
      v18 = *(v15 - 1);
      v19 = *v15;
      v37 = *(v15 - 5);
      v38 = v16;
      v39 = v17;
      v40 = v18;
      v41 = v19;

      v20 = specialized graphDotText<A>(representing:index:)(&v37, v12);
      if (v1)
      {

        type metadata accessor for SGError();
        v27 = v1;
        SGError.__allocating_init(_:)(v1);
        swift_willThrow();

        return;
      }

      v22 = v20;
      v23 = v21;

      v34[0] = v13;
      v25 = *(v13 + 16);
      v24 = *(v13 + 24);
      if (v25 >= v24 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1);
        v13 = v34[0];
      }

      ++v12;
      *(v13 + 16) = v25 + 1;
      v26 = v13 + 16 * v25;
      *(v26 + 32) = v22;
      *(v26 + 40) = v23;
      v15 += 6;
      v10 = v32;
      v1 = 0;
      if (v31 == v12)
      {

        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  else
  {

    v13 = MEMORY[0x277D84F90];
LABEL_14:
    v34[0] = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v28 = BidirectionalCollection<>.joined(separator:)();
    v30 = v29;

    v34[0] = 0;
    v34[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(136);
    MEMORY[0x266771550](0xD000000000000083, 0x8000000265F2FD30);
    MEMORY[0x266771550](v28, v30);

    MEMORY[0x266771550](8194570, 0xE300000000000000);
  }
}

Swift::Int SGREMaterialSource.hash.getter()
{
  Hasher.init()();
  SHA512Digest.hash(into:)();
  return Hasher.finalize()();
}

id SGREMaterialSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SGREMaterialFunctionConstantValues.scalarFunctionConstants.getter()
{
  v1 = OBJC_IVAR___SGREMaterialFunctionConstantValues_scalarFunctionConstants;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void SGREMaterialFunctionConstantValues.scalarFunctionConstants.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___SGREMaterialFunctionConstantValues_scalarFunctionConstants;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id SGREMaterialFunctionConstantValues.vectorFunctionConstants.getter()
{
  v1 = OBJC_IVAR___SGREMaterialFunctionConstantValues_vectorFunctionConstants;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void SGREMaterialFunctionConstantValues.vectorFunctionConstants.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___SGREMaterialFunctionConstantValues_vectorFunctionConstants;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id one-time initialization function for empty()
{
  v0 = MEMORY[0x277D84F90];
  v1 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSNumberCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So7NSArrayCTt0g5Tf4g_n(v0);
  v3 = objc_allocWithZone(type metadata accessor for SGREMaterialFunctionConstantValues());
  result = SGREMaterialFunctionConstantValues.init(scalarFunctionConstants:vectorFunctionConstants:)(v1, v2);
  static SGREMaterialFunctionConstantValues.empty = result;
  return result;
}

id static SGREMaterialFunctionConstantValues.empty.getter()
{
  if (one-time initialization token for empty != -1)
  {
    swift_once();
  }

  v1 = static SGREMaterialFunctionConstantValues.empty;

  return v1;
}

id SGREMaterialFunctionConstantValues.init(scalarFunctionConstants:vectorFunctionConstants:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v6 = OBJC_IVAR___SGREMaterialFunctionConstantValues_scalarFunctionConstants;
  type metadata accessor for NSArray(0, &lazy cache variable for type metadata for NSMutableDictionary, 0x277CBEB38);
  *&v2[v6] = NSDictionary.init(dictionaryLiteral:)();
  v7 = OBJC_IVAR___SGREMaterialFunctionConstantValues_vectorFunctionConstants;
  *&v2[v7] = NSDictionary.init(dictionaryLiteral:)();
  specialized _dictionaryUpCast<A, B, C, D>(_:)(a1, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);

  v8 = objc_allocWithZone(MEMORY[0x277CBEB38]);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v10 = [v8 initWithDictionary_];

  swift_beginAccess();
  v11 = *&v2[v6];
  *&v2[v6] = v10;

  specialized _dictionaryUpCast<A, B, C, D>(_:)(a2, &lazy cache variable for type metadata for NSArray, 0x277CBEA60);

  v12 = objc_allocWithZone(MEMORY[0x277CBEB38]);
  v13 = Dictionary._bridgeToObjectiveC()().super.isa;

  v14 = [v12 initWithDictionary_];

  swift_beginAccess();
  v15 = *&v3[v7];
  *&v3[v7] = v14;

  v18.receiver = v3;
  v18.super_class = ObjectType;
  return objc_msgSendSuper2(&v18, sel_init);
}

uint64_t specialized _dictionaryUpCast<A, B, C, D>(_:)(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd, &_ss18_DictionaryStorageCys11AnyHashableVypGMR);
    v4 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v4 = MEMORY[0x277D84F98];
  }

  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;
  v9 = v4 + 64;

  v11 = 0;
  while (v7)
  {
LABEL_15:
    v15 = __clz(__rbit64(v7)) | (v11 << 6);
    v16 = (*(a1 + 48) + 16 * v15);
    v17 = v16[1];
    v18 = *(*(a1 + 56) + 8 * v15);
    *&v36[0] = *v16;
    *(&v36[0] + 1) = v17;

    v18;
    swift_dynamicCast();
    type metadata accessor for NSArray(0, a2, a3);
    swift_dynamicCast();
    v32 = v28;
    v33 = v29;
    v34 = v30;
    outlined init with take of Any(&v31, v35);
    v28 = v32;
    v29 = v33;
    v30 = v34;
    outlined init with take of Any(v35, v36);
    result = AnyHashable._rawHashValue(seed:)(*(v4 + 40));
    v19 = -1 << *(v4 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v9 + 8 * (v20 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v19) >> 6;
      while (++v21 != v23 || (v22 & 1) == 0)
      {
        v24 = v21 == v23;
        if (v21 == v23)
        {
          v21 = 0;
        }

        v22 |= v24;
        v25 = *(v9 + 8 * v21);
        if (v25 != -1)
        {
          v12 = __clz(__rbit64(~v25)) + (v21 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v12 = __clz(__rbit64((-1 << v20) & ~*(v9 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v7 &= v7 - 1;
    *(v9 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
    v13 = *(v4 + 48) + 40 * v12;
    *v13 = v28;
    *(v13 + 16) = v29;
    *(v13 + 32) = v30;
    result = outlined init with take of Any(v36, (*(v4 + 56) + 32 * v12));
    ++*(v4 + 16);
  }

  while (1)
  {
    v14 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v14 >= v8)
    {

      return v4;
    }

    v7 = *(a1 + 64 + 8 * v14);
    ++v11;
    if (v7)
    {
      v11 = v14;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

id SGREMaterialFunctionConstantValues.init()()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR___SGREMaterialFunctionConstantValues_scalarFunctionConstants;
  type metadata accessor for NSArray(0, &lazy cache variable for type metadata for NSMutableDictionary, 0x277CBEB38);
  *&v0[v2] = NSDictionary.init(dictionaryLiteral:)();
  v3 = OBJC_IVAR___SGREMaterialFunctionConstantValues_vectorFunctionConstants;
  *&v0[v3] = NSDictionary.init(dictionaryLiteral:)();
  v5.receiver = v0;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t specialized graphDotText<A>(representing:index:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v219 = *(a1 + 40);
  v152 = v4;
  MEMORY[0x266771550]();
  *&v188 = a2;
  v6 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266771550](v6);

  *&v199 = 95;
  *(&v199 + 1) = 0xE100000000000000;

  v7 = &v199;
  MEMORY[0x266771550](95, 0xE100000000000000);
  v8 = v219;

  v155 = v199;
  v153 = v5;

  v9 = specialized Graph.nodes.getter(v8);
  v10 = *(v9 + 16);
  if (!v10)
  {
    v14 = MEMORY[0x277D84F90];
    goto LABEL_26;
  }

  v11 = 0;
  v12 = v9 + 64;
  v13 = -v10;
  v14 = MEMORY[0x277D84F90];
  do
  {
    v15 = *(v9 + 16);
    if (v11 > v15)
    {
      v15 = v11;
    }

    v16 = -v15;
    v17 = (v12 + 40 * v11++);
    while (1)
    {
      if (v16 + v11 == 1)
      {
        __break(1u);
LABEL_94:
        __break(1u);
LABEL_95:
        __break(1u);
        goto LABEL_96;
      }

      v18 = *(v17 - 2);
      v19 = v18 >> 62;
      if (!(v18 >> 62))
      {
        v20 = *(v17 - 2);
        v21 = 32;
        goto LABEL_12;
      }

      if (v19 != 1)
      {
        break;
      }

      v20 = v18 & 0x3FFFFFFFFFFFFFFFLL;
      v21 = 40;
LABEL_12:
      if (!*(*(v20 + v21) + 16))
      {
        v22 = v19 ? (v18 & 0x3FFFFFFFFFFFFFFFLL) + 48 : v18 + 40;
        if (*(*v22 + 16))
        {
          v150 = v12;
          v23 = v9;
          goto LABEL_19;
        }
      }

      ++v11;
      v17 += 5;
      if (v13 + v11 == 1)
      {
        goto LABEL_26;
      }
    }

    v150 = v12;
    v23 = v9;
LABEL_19:
    v24 = *(v17 - 3);
    i = *(v17 - 4);
    v151 = v24;
    v26 = *(v17 - 1);
    v25 = *v17;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v199 = v14;
    v156 = v26;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 16) + 1, 1);
      v14 = v199;
    }

    v9 = v23;
    v29 = *(v14 + 16);
    v28 = *(v14 + 24);
    if (v29 >= v28 >> 1)
    {
      v149 = v23;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1);
      v9 = v23;
      v14 = v199;
    }

    *(v14 + 16) = v29 + 1;
    v30 = (v14 + 40 * v29);
    v12 = v150;
    v31 = v151;
    v30[4] = i;
    v30[5] = v31;
    v32 = v156;
    v30[6] = v18;
    v30[7] = v32;
    v30[8] = v25;
    v8 = v219;
    v7 = &v199;
  }

  while (v13 + v11);
LABEL_26:

  v34 = *(a1 + 16);
  v199 = *a1;
  v200 = v34;
  v201 = *(a1 + 32);
  MEMORY[0x28223BE20](v33);
  v145 = &v199;
  v146 = v155;
  v35 = v157;
  v151 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay11ShaderGraph0E0V4NodeVyAF010SGDataTypeE0V11PersonalityV_GG_SSs5NeverOTg5(partial apply for specialized closure #1 in createNodeStatements #1 <A>(_:) in graphDotText<A>(representing:index:), v144, v14);

  v36 = specialized Graph.nodes.getter(v8);
  v37 = *(v36 + 16);
  if (!v37)
  {
    v40 = MEMORY[0x277D84F90];
    goto LABEL_49;
  }

  v38 = 0;
  v39 = v36 + 64;
  v7 = -v37;
  v40 = MEMORY[0x277D84F90];
  while (2)
  {
    v41 = *(v36 + 16);
    if (v38 > v41)
    {
      v41 = v38;
    }

    v42 = -v41;
    v43 = (v39 + 40 * v38++);
    while (2)
    {
      if (v42 + v38 == 1)
      {
        goto LABEL_94;
      }

      v44 = *(v43 - 2);
      v45 = v44 >> 62;
      if (!(v44 >> 62))
      {
        v46 = *(v43 - 2);
        v47 = 40;
        goto LABEL_37;
      }

      if (v45 != 1)
      {
        goto LABEL_31;
      }

      v46 = v44 & 0x3FFFFFFFFFFFFFFFLL;
      v47 = 48;
LABEL_37:
      if (*(*(v46 + v47) + 16) || (v45 ? (v48 = (v44 & 0x3FFFFFFFFFFFFFFFLL) + 40) : (v48 = v44 + 32), !*(*v48 + 16)))
      {
LABEL_31:
        ++v38;
        v43 += 5;
        if (v7 + v38 == 1)
        {
          goto LABEL_49;
        }

        continue;
      }

      break;
    }

    v157 = v36;
    v49 = *(v43 - 4);
    v149 = *(v43 - 3);
    v150 = v49;
    v50 = *v43;
    i = *(v43 - 1);
    v156 = v50;

    v51 = swift_isUniquelyReferenced_nonNull_native();
    *&v199 = v40;
    if ((v51 & 1) == 0)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v40 + 16) + 1, 1);
      v40 = v199;
    }

    v53 = *(v40 + 16);
    v52 = *(v40 + 24);
    v54 = v53 + 1;
    v36 = v157;
    if (v53 >= v52 >> 1)
    {
      v148 = v53 + 1;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v52 > 1), v53 + 1, 1);
      v54 = v148;
      v36 = v157;
      v40 = v199;
    }

    *(v40 + 16) = v54;
    v55 = (v40 + 40 * v53);
    v56 = v149;
    v55[4] = v150;
    v55[5] = v56;
    v57 = i;
    v55[6] = v44;
    v55[7] = v57;
    v55[8] = v156;
    v8 = v219;
    if (v7 + v38)
    {
      continue;
    }

    break;
  }

LABEL_49:

  v59 = *(a1 + 16);
  v199 = *a1;
  v200 = v59;
  v201 = *(a1 + 32);
  MEMORY[0x28223BE20](v58);
  v145 = &v199;
  v146 = v155;
  v150 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay11ShaderGraph0E0V4NodeVyAF010SGDataTypeE0V11PersonalityV_GG_SSs5NeverOTg5(closure #1 in createNodeStatements #1 <A>(_:) in graphDotText<A>(representing:index:)specialized partial apply, v144, v40);

  v60 = specialized Graph.nodes.getter(v8);
  v61 = *(v60 + 16);
  if (v61)
  {
    v7 = 0;
    v62 = v60 + 64;
    v63 = -v61;
    v64 = MEMORY[0x277D84F90];
    while (2)
    {
      v65 = *(v60 + 16);
      if (v7 > v65)
      {
        v65 = v7;
      }

      v66 = -v65;
      v67 = (v62 + 40 * v7++);
LABEL_55:
      if (v66 + v7 == 1)
      {
        goto LABEL_95;
      }

      v68 = *(v67 - 2);
      v69 = v68 >> 62;
      if (v68 >> 62)
      {
        if (v69 == 1)
        {
          v70 = v68 & 0x3FFFFFFFFFFFFFFFLL;
          v71 = 40;
          goto LABEL_60;
        }
      }

      else
      {
        v70 = *(v67 - 2);
        v71 = 32;
LABEL_60:
        if (*(*(v70 + v71) + 16))
        {
          v72 = v69 ? (v68 & 0x3FFFFFFFFFFFFFFFLL) + 48 : v68 + 40;
          if (*(*v72 + 16))
          {
            v157 = v60;
            v73 = *(v67 - 4);
            v147 = *(v67 - 3);
            v148 = v73;
            v74 = *v67;
            v149 = *(v67 - 1);
            i = v74;

            v75 = swift_isUniquelyReferenced_nonNull_native();
            *&v199 = v64;
            v156 = v62;
            if ((v75 & 1) == 0)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v64 + 16) + 1, 1);
              v64 = v199;
            }

            v77 = *(v64 + 16);
            v76 = *(v64 + 24);
            v60 = v157;
            if (v77 >= v76 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v76 > 1), v77 + 1, 1);
              v60 = v157;
              v64 = v199;
            }

            *(v64 + 16) = v77 + 1;
            v78 = (v64 + 40 * v77);
            v79 = v147;
            v78[4] = v148;
            v78[5] = v79;
            v80 = v149;
            v78[6] = v68;
            v78[7] = v80;
            v78[8] = i;
            v8 = v219;
            v62 = v156;
            if (v63 + v7)
            {
              continue;
            }

            goto LABEL_72;
          }
        }
      }

      break;
    }

    ++v7;
    v67 += 5;
    if (v63 + v7 == 1)
    {
      goto LABEL_72;
    }

    goto LABEL_55;
  }

  v64 = MEMORY[0x277D84F90];
LABEL_72:

  v82 = *(a1 + 16);
  v199 = *a1;
  v200 = v82;
  v201 = *(a1 + 32);
  MEMORY[0x28223BE20](v81);
  v145 = &v199;
  v146 = v155;
  v148 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay11ShaderGraph0E0V4NodeVyAF010SGDataTypeE0V11PersonalityV_GG_SSs5NeverOTg5(closure #1 in createNodeStatements #1 <A>(_:) in graphDotText<A>(representing:index:)specialized partial apply, v144, v64);
  v7 = v35;

  v84 = specialized Graph.sinkNodes()(v83);
  EdgeIteratorV_7initialAEyx_GACyxG_SayAC4NodeVyx_GGtcfCAA010SGDataTypeB0V11PersonalityV_Tt1g5Tf4ng_n = _s11ShaderGraph0B0V22DepthFirstEdgeIteratorV_7initialAEyx_GACyxG_SayAC4NodeVyx_GGtcfCAA010SGDataTypeB0V11PersonalityV_Tt1g5Tf4ng_n(v8, v84);
  v87 = v86;
  v89 = v88;

  v216 = EdgeIteratorV_7initialAEyx_GACyxG_SayAC4NodeVyx_GGtcfCAA010SGDataTypeB0V11PersonalityV_Tt1g5Tf4ng_n;
  v217 = v87;
  v218 = v89;
  v219 = EdgeIteratorV_7initialAEyx_GACyxG_SayAC4NodeVyx_GGtcfCAA010SGDataTypeB0V11PersonalityV_Tt1g5Tf4ng_n;

  v157 = v87;

  specialized Graph.DepthFirstEdgeIterator.next()(&v210);
  v90 = MEMORY[0x277D84F90];
  if (!*(&v211 + 1))
  {
LABEL_83:

    v104 = v90[2];
    v149 = v35;
    if (!v104)
    {

      v219 = MEMORY[0x277D84F90];
LABEL_92:
      *&v199 = 0;
      *(&v199 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(528);
      MEMORY[0x266771550](0xD000000000000012, 0x8000000265F2FDC0);
      v128 = v152;
      v129 = v153;
      MEMORY[0x266771550](v152, v153);
      MEMORY[0x266771550](0xD00000000000002BLL, 0x8000000265F2FDE0);
      MEMORY[0x266771550](v128, v129);
      MEMORY[0x266771550](0x22202020200A0A22, 0xE800000000000000);
      MEMORY[0x266771550](v128, v129);
      MEMORY[0x266771550](0xD000000000000017, 0x8000000265F2FE10);
      MEMORY[0x266771550](v128, v129);
      MEMORY[0x266771550](0xD000000000000017, 0x8000000265F2FE30);
      MEMORY[0x266771550](v128, v129);
      MEMORY[0x266771550](0xD000000000000017, 0x8000000265F2FE50);
      MEMORY[0x266771550](v128, v129);
      MEMORY[0x266771550](0x22203E2D2022315FLL, 0xE800000000000000);
      MEMORY[0x266771550](v128, v129);
      MEMORY[0x266771550](0xD000000000000017, 0x8000000265F2FE30);
      MEMORY[0x266771550](v128, v129);
      MEMORY[0x266771550](0x22203E2D2022325FLL, 0xE800000000000000);
      MEMORY[0x266771550](v128, v129);
      MEMORY[0x266771550](0xD000000000000029, 0x8000000265F2FE70);
      MEMORY[0x266771550](v128, v129);
      MEMORY[0x266771550](0xD000000000000035, 0x8000000265F2FEA0);
      MEMORY[0x266771550](v128, v129);
      MEMORY[0x266771550](0x2020200A3B22315FLL, 0xED00002020202020);
      *&v188 = v151;
      v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      v156 = lazy protocol witness table accessor for type [String] and conformance [A]();
      v157 = v130;
      v131 = BidirectionalCollection<>.joined(separator:)();
      v133 = v132;

      MEMORY[0x266771550](v131, v133);

      MEMORY[0x266771550](0xD00000000000001ELL, 0x8000000265F2FEE0);
      MEMORY[0x266771550](v128, v129);
      MEMORY[0x266771550](0xD000000000000034, 0x8000000265F2FF00);
      MEMORY[0x266771550](v128, v129);
      MEMORY[0x266771550](0x2020200A3B22325FLL, 0xED00002020202020);
      *&v188 = v148;
      v134 = BidirectionalCollection<>.joined(separator:)();
      v136 = v135;

      MEMORY[0x266771550](v134, v136);

      MEMORY[0x266771550](0xD00000000000001ELL, 0x8000000265F2FEE0);
      MEMORY[0x266771550](v128, v129);
      MEMORY[0x266771550](0xD000000000000036, 0x8000000265F2FF40);
      MEMORY[0x266771550](v128, v129);

      MEMORY[0x266771550](0x2020200A3B22335FLL, 0xED00002020202020);
      *&v188 = v150;
      v137 = BidirectionalCollection<>.joined(separator:)();
      v139 = v138;

      MEMORY[0x266771550](v137, v139);

      MEMORY[0x266771550](0xA0A7D202020200ALL, 0xEC00000020202020);
      *&v188 = v219;
      v140 = BidirectionalCollection<>.joined(separator:)();
      v142 = v141;

      MEMORY[0x266771550](v140, v142);

      MEMORY[0x266771550](32010, 0xE200000000000000);
      return v199;
    }

    *&v169 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v104, 0);
    if (v104 <= v90[2])
    {
      v219 = v169;
      v157 = v104 - 1;
      v105 = 32;
      for (i = v90; ; v90 = i)
      {
        v156 = v105;
        v106 = v90 + v105;
        v107 = *v106;
        v108 = *(v106 + 2);
        v200 = *(v106 + 1);
        v201 = v108;
        v199 = v107;
        v109 = *(v106 + 3);
        v110 = *(v106 + 4);
        v111 = *(v106 + 6);
        v204 = *(v106 + 5);
        v205 = v111;
        v202 = v109;
        v203 = v110;
        v112 = *(v106 + 7);
        v113 = *(v106 + 8);
        v114 = *(v106 + 9);
        v209 = v106[160];
        v207 = v113;
        v208 = v114;
        v206 = v112;
        v115 = v114;
        v116 = *(&v113 + 1);
        v117 = v204;
        v118 = v203;
        v119 = *(&v202 + 1);
        v120 = v199;
        outlined init with copy of [Input](&v199, &v188, &_s11ShaderGraph0B0V4NodeVyAA010SGDataTypeB0V11PersonalityV_G_AC6OutputVyAI_GAjC5InputVyAI_GtMd, &_s11ShaderGraph0B0V4NodeVyAA010SGDataTypeB0V11PersonalityV_G_AC6OutputVyAI_GAjC5InputVyAI_GtMR);
        v121 = specialized closure #1 in graphDotText<A>(representing:index:)(v120, v119, v118, *(&v118 + 1), v117, v116, v115, v155, *(&v155 + 1));
        v123 = v122;
        outlined destroy of [Input](&v199, &_s11ShaderGraph0B0V4NodeVyAA010SGDataTypeB0V11PersonalityV_G_AC6OutputVyAI_GAjC5InputVyAI_GtMd, &_s11ShaderGraph0B0V4NodeVyAA010SGDataTypeB0V11PersonalityV_G_AC6OutputVyAI_GAjC5InputVyAI_GtMR);
        v124 = v219;
        *&v169 = v219;
        v126 = *(v219 + 2);
        v125 = *(v219 + 3);
        if (v126 >= v125 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v125 > 1), v126 + 1, 1);
          v124 = v169;
        }

        *(v124 + 2) = v126 + 1;
        v219 = v124;
        v127 = &v124[16 * v126];
        *(v127 + 4) = v121;
        *(v127 + 5) = v123;
        if (!v157)
        {
          break;
        }

        --v157;
        v105 = v156 + 168;
      }

      goto LABEL_92;
    }

LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

  while (1)
  {
    v184 = v212;
    v185 = v213;
    v186 = v214;
    v187 = v215;
    v182 = v210;
    v183 = v211;
    closure #1 in SGDataTypeGraph.edges.getter(&v182, a1, &v199);
    if (v35)
    {
      break;
    }

    v180[2] = v184;
    v180[3] = v185;
    v180[4] = v186;
    v181 = v187;
    v180[0] = v182;
    v180[1] = v183;
    outlined destroy of [Input](v180, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GMR);
    v196 = v207;
    v197 = v208;
    v198 = v209;
    v192 = v203;
    v193 = v204;
    v194 = v205;
    v195 = v206;
    v188 = v199;
    v189 = v200;
    v190 = v201;
    v191 = v202;
    if (_s11ShaderGraph0B0V4NodeVyAA010SGDataTypeB0V11PersonalityV_G_AC6OutputVyAI_GAjC5InputVyAI_GtSgWOg(&v188) == 1)
    {
      v177 = v207;
      v178 = v208;
      v179 = v209;
      v173 = v203;
      v174 = v204;
      v175 = v205;
      v176 = v206;
      v169 = v199;
      v170 = v200;
      v171 = v201;
      v172 = v202;
      outlined destroy of [Input](&v169, &_s11ShaderGraph0B0V4NodeVyAA010SGDataTypeB0V11PersonalityV_G_AC6OutputVyAI_GAjC5InputVyAI_GtSgMd, &_s11ShaderGraph0B0V4NodeVyAA010SGDataTypeB0V11PersonalityV_G_AC6OutputVyAI_GAjC5InputVyAI_GtSgMR);
    }

    else
    {
      v177 = v207;
      v178 = v208;
      v179 = v209;
      v173 = v203;
      v174 = v204;
      v175 = v205;
      v176 = v206;
      v169 = v199;
      v170 = v200;
      v171 = v201;
      v172 = v202;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v90 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v90[2] + 1, 1, v90);
      }

      v91 = v90;
      v92 = v90[2];
      v93 = v91;
      v94 = v91[3];
      if (v92 >= v94 >> 1)
      {
        v93 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v94 > 1), v92 + 1, 1, v93);
      }

      v162 = v173;
      v163 = v174;
      v160 = v171;
      v161 = v172;
      v168 = v179;
      v166 = v177;
      v167 = v178;
      v164 = v175;
      v165 = v176;
      v158 = v169;
      v159 = v170;
      v93[2] = v92 + 1;
      v95 = &v93[21 * v92];
      v90 = v93;
      v96 = v158;
      v97 = v160;
      *(v95 + 3) = v159;
      *(v95 + 4) = v97;
      *(v95 + 2) = v96;
      v98 = v161;
      v99 = v162;
      v100 = v164;
      *(v95 + 7) = v163;
      *(v95 + 8) = v100;
      *(v95 + 5) = v98;
      *(v95 + 6) = v99;
      v101 = v165;
      v102 = v166;
      v103 = v167;
      *(v95 + 192) = v168;
      *(v95 + 10) = v102;
      *(v95 + 11) = v103;
      *(v95 + 9) = v101;
    }

    specialized Graph.DepthFirstEdgeIterator.next()(&v210);
    if (!*(&v211 + 1))
    {
      goto LABEL_83;
    }
  }

LABEL_97:

  v190 = v184;
  v191 = v185;
  v192 = v186;
  LOBYTE(v193) = v187;
  v188 = v182;
  v189 = v183;
  outlined destroy of [Input](&v188, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GMR);

  __break(1u);
  return result;
}

uint64_t specialized closure #1 in createNodeStatements #1 <A>(_:) in graphDotText<A>(representing:index:)(void *a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v55 = a4;
  v46 = a3;
  v5 = a2[1];
  v54[0] = *a2;
  v54[1] = v5;
  v54[2] = a2[2];
  v6 = a1[2];
  specialized SGDataTypeGraph.Personality.dotLabel.getter(v6);
  v7 = lazy protocol witness table accessor for type String and conformance String();
  v8 = MEMORY[0x277D837D0];
  v9 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v11 = v10;

  *&v47 = v9;
  *(&v47 + 1) = v11;
  v52 = 62;
  v53 = 0xE100000000000000;
  v50 = 15964;
  v51 = 0xE200000000000000;
  v40 = v7;
  v41 = v7;
  v39[0] = v8;
  v39[1] = v7;
  v44 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v45 = v12;

  *&v47 = *a1;
  v13 = dispatch thunk of CustomStringConvertible.description.getter();
  v42 = v13;
  v43 = v14;
  v15 = *(a1 + 1);
  v47 = *a1;
  v48 = v15;
  v49 = a1[4];
  v16 = v6 >> 62;
  if (v6 >> 62)
  {
    if (v16 != 1)
    {
      goto LABEL_6;
    }

    v17 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    v18 = 40;
  }

  else
  {
    v18 = 32;
    v17 = v6;
  }

  v19 = *(*(v17 + v18) + 16);
LABEL_6:
  MEMORY[0x28223BE20](v13);
  v40 = &v47;
  v21 = specialized Sequence.compactMap<A>(_:)(partial apply for specialized closure #1 in Graph.Node.inputs.getter, v39, 0, v20);
  MEMORY[0x28223BE20](v21);
  v40 = v54;
  v22 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay11ShaderGraph0E0V5InputVyAF010SGDataTypeE0V11PersonalityV_GG_SSs5NeverOTg5(partial apply for specialized closure #1 in closure #1 in createNodeStatements #1 <A>(_:) in graphDotText<A>(representing:index:), v39, v21);

  *&v47 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v23 = BidirectionalCollection<>.joined(separator:)();
  v25 = v24;

  v27 = *(a1 + 1);
  v47 = *a1;
  v48 = v27;
  v49 = a1[4];
  v28 = v23;
  if (v16)
  {
    if (v16 != 1)
    {
      v30 = v55;
      goto LABEL_12;
    }

    v6 &= 0x3FFFFFFFFFFFFFFFuLL;
    v29 = 48;
  }

  else
  {
    v29 = 40;
  }

  v30 = v55;
  v31 = *(*(v6 + v29) + 16);
LABEL_12:
  MEMORY[0x28223BE20](v26);
  v40 = &v47;
  v33 = specialized Sequence.compactMap<A>(_:)(partial apply for specialized closure #1 in Graph.Node.outputs.getter, v39, 0, v32);
  MEMORY[0x28223BE20](v33);
  v40 = v54;
  v34 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay11ShaderGraph0E0V6OutputVyAF010SGDataTypeE0V11PersonalityV_GG_SSs5NeverOTg5(partial apply for specialized closure #2 in closure #1 in createNodeStatements #1 <A>(_:) in graphDotText<A>(representing:index:), v39, v33);

  *&v47 = v34;
  v35 = BidirectionalCollection<>.joined(separator:)();
  v37 = v36;

  *&v47 = 0;
  *(&v47 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(32);

  *&v47 = 34;
  *(&v47 + 1) = 0xE100000000000000;
  v52 = v42;
  v53 = v43;

  MEMORY[0x266771550](v46, v30);

  MEMORY[0x266771550](v52, v53);

  MEMORY[0x266771550](0x6C6562616C5B2022, 0xEC0000007B7B223DLL);
  MEMORY[0x266771550](v28, v25);

  MEMORY[0x266771550](2129021, 0xE300000000000000);
  MEMORY[0x266771550](v44, v45);

  MEMORY[0x266771550](2065726496, 0xE400000000000000);
  MEMORY[0x266771550](v35, v37);

  MEMORY[0x266771550](1562541437, 0xE400000000000000);
  return v47;
}

unint64_t lazy protocol witness table accessor for type SHA512Digest and conformance SHA512Digest()
{
  result = lazy protocol witness table cache variable for type SHA512Digest and conformance SHA512Digest;
  if (!lazy protocol witness table cache variable for type SHA512Digest and conformance SHA512Digest)
  {
    type metadata accessor for SHA512Digest();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SHA512Digest and conformance SHA512Digest);
  }

  return result;
}

_BYTE *closure #1 in Data.init<A>(_:)@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = specialized Data.InlineData.init(_:)(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = specialized Data.LargeSlice.init(_:)(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = specialized Data.InlineSlice.init(_:)(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t type metadata accessor for SGREMaterialSource()
{
  result = type metadata singleton initialization cache for SGREMaterialSource;
  if (!type metadata singleton initialization cache for SGREMaterialSource)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for SGREMaterialSource()
{
  result = type metadata accessor for SHA512Digest();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t partial apply for specialized closure #1 in createNodeStatements #1 <A>(_:) in graphDotText<A>(representing:index:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  return partial apply for specialized closure #1 in createNodeStatements #1 <A>(_:) in graphDotText<A>(representing:index:)(a1, a2);
}

{
  v6 = v2[2];
  v5 = v2[3];
  v7 = v2[4];
  v8 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v8;
  v13 = *(a1 + 32);
  v9 = v6[1];
  v14[0] = *v6;
  v14[1] = v9;
  v14[2] = v6[2];
  result = specialized closure #1 in createNodeStatements #1 <A>(_:) in graphDotText<A>(representing:index:)(v12, v14, v5, v7);
  if (!v3)
  {
    *a2 = result;
    a2[1] = v11;
  }

  return result;
}

uint64_t specialized closure #1 in graphDotText<A>(representing:index:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v32 = dispatch thunk of CustomStringConvertible.description.getter();
  v34 = v10;

  MEMORY[0x266771550](a8, a9);

  v11 = v32;
  v12 = v34;
  v33 = dispatch thunk of CustomStringConvertible.description.getter();
  v35 = v13;

  MEMORY[0x266771550](a8, a9);

  MEMORY[0x266771550](v11, v12);

  MEMORY[0x266771550](14882, 0xE200000000000000);
  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  v14 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v16 = v15;

  MEMORY[0x266771550](v14, v16);

  MEMORY[0x266771550](0x5F74757074756FLL, 0xE700000000000000);

  MEMORY[0x266771550](25914, 0xE200000000000000);
  MEMORY[0x266771550](v33, v35);

  MEMORY[0x266771550](14882, 0xE200000000000000);
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  v17 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v19 = v18;

  MEMORY[0x266771550](v17, v19);

  MEMORY[0x266771550](0x5F7475706E69, 0xE600000000000000);

  MEMORY[0x266771550](30522, 0xE200000000000000);
  v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
  v22 = *(v20 + 2);
  v21 = *(v20 + 3);
  if (v22 >= v21 >> 1)
  {
    v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1, v20);
  }

  *(v20 + 2) = v22 + 1;
  v23 = &v20[16 * v22];
  *(v23 + 4) = 0xD000000000000033;
  *(v23 + 5) = 0x8000000265F2FF80;
  v24 = SGDataType.stringValue.getter();
  MEMORY[0x266771550](v24);

  MEMORY[0x266771550](34, 0xE100000000000000);
  v26 = *(v20 + 2);
  v25 = *(v20 + 3);
  if (v26 >= v25 >> 1)
  {
    v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1, v20);
  }

  *(v20 + 2) = v26 + 1;
  v27 = &v20[16 * v26];
  *(v27 + 4) = 0x6562616C6C696174;
  *(v27 + 5) = 0xEB00000000223D6CLL;
  MEMORY[0x266771550](540945696, 0xE400000000000000);
  MEMORY[0x266771550](34, 0xE100000000000000);

  MEMORY[0x266771550](32, 0xE100000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v28 = BidirectionalCollection<>.joined(separator:)();
  v30 = v29;

  MEMORY[0x266771550](v28, v30);

  MEMORY[0x266771550](93, 0xE100000000000000);

  MEMORY[0x266771550](23328, 0xE200000000000000);

  return 34;
}

uint64_t _s11ShaderGraph0B0V4NodeVyAA010SGDataTypeB0V11PersonalityV_G_AC6OutputVyAI_GAjC5InputVyAI_GtSgWOg(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t partial apply for specialized closure #1 in closure #1 in createNodeStatements #1 <A>(_:) in graphDotText<A>(representing:index:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized closure #1 in closure #1 in createNodeStatements #1 <A>(_:) in graphDotText<A>(representing:index:)(*(a1 + 16), *(a1 + 24), 0x5F7475706E69, 0xE600000000000000);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t partial apply for specialized closure #2 in closure #1 in createNodeStatements #1 <A>(_:) in graphDotText<A>(representing:index:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized closure #1 in closure #1 in createNodeStatements #1 <A>(_:) in graphDotText<A>(representing:index:)(*(a1 + 16), *(a1 + 24), 0x5F74757074756FLL, 0xE700000000000000);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t specialized closure #1 in closure #1 in createNodeStatements #1 <A>(_:) in graphDotText<A>(representing:index:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  v6 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v8 = v7;

  MEMORY[0x266771550](v6, v8);

  MEMORY[0x266771550](a3, a4);

  MEMORY[0x266771550](62, 0xE100000000000000);
  MEMORY[0x266771550](a1, a2);
  return 60;
}

uint64_t specialized Data.InlineData.init(_:)(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t specialized Data.LargeSlice.init(_:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = type metadata accessor for __DataStorage();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for Data.RangeReference();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t specialized Data.InlineSlice.init(_:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = type metadata accessor for __DataStorage();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t GeomPropDef.init(name:type:geomprop:space:index:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6 & 1;
  *(a9 + 41) = a7;
  *(a9 + 48) = a8;
  *(a9 + 56) = a10 & 1;
  return result;
}

uint64_t GeomPropDef.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t GeomPropDef.geomprop.getter()
{
  v1 = *(v0 + 24);
  outlined copy of GeomPropDef.GeomProp(v1, *(v0 + 32), *(v0 + 40));
  return v1;
}

uint64_t outlined copy of GeomPropDef.GeomProp(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t GeomPropDef.index.getter()
{
  result = *(v0 + 48);
  v2 = *(v0 + 56);
  return result;
}

uint64_t GeomPropDef.Space.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x6C65646F6DLL;
  }

  if (a1 == 1)
  {
    return 0x7463656A626FLL;
  }

  return 0x646C726F77;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance GeomPropDef.Space(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x7463656A626FLL;
  if (v2 != 1)
  {
    v4 = 0x646C726F77;
    v3 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6C65646F6DLL;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x7463656A626FLL;
  if (*a2 != 1)
  {
    v8 = 0x646C726F77;
    v7 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6C65646F6DLL;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance GeomPropDef.Space()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance GeomPropDef.Space()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance GeomPropDef.Space()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance GeomPropDef.Space@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized GeomPropDef.Space.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance GeomPropDef.Space(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x7463656A626FLL;
  if (v2 != 1)
  {
    v5 = 0x646C726F77;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6C65646F6DLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t GeomPropDef.GeomProp.paramGetterNodeDefName(type:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
    return GeomPropDef.BuiltinGeomProp.paramGetterNodeDefName(type:)(a1, a2);
  }

  _StringGuts.grow(_:)(65);
  MEMORY[0x266771550](0xD00000000000002FLL, 0x8000000265F30000);
  MEMORY[0x266771550](a2, a3);
  MEMORY[0x266771550](0x7420687469772027, 0xED00002720657079);
  v6 = MaterialXDataType.description.getter();
  MEMORY[0x266771550](v6);

  MEMORY[0x266771550](39, 0xE100000000000000);
  lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
  swift_allocError();
  *v7 = 31;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0xE000000000000000;
  return swift_willThrow();
}

unint64_t GeomPropDef.BuiltinGeomProp.paramGetterNodeDefName(type:)(uint64_t a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000013;
  if (a2 <= 2u)
  {
    v3 = 0xD000000000000011;
    if (a2 != 1)
    {
      v3 = 0xD000000000000012;
    }

    if (a2)
    {
      return v3;
    }

    return v2;
  }

  if (a2 == 3)
  {
    return 0xD000000000000014;
  }

  if (a2 == 4)
  {
    if (one-time initialization token for vector2 != -1)
    {
      swift_once();
    }

    if (MaterialXDataType.isEqual(to:)())
    {
      return v2;
    }

    if (one-time initialization token for float2 != -1)
    {
      swift_once();
    }

    if (MaterialXDataType.isEqual(to:)())
    {
      return v2;
    }

    if (one-time initialization token for vector3 != -1)
    {
      swift_once();
    }

    if (MaterialXDataType.isEqual(to:)())
    {
      return v2;
    }

    if (one-time initialization token for float3 != -1)
    {
      swift_once();
    }

    if (MaterialXDataType.isEqual(to:)())
    {
      return v2;
    }

    if (one-time initialization token for vector4 != -1)
    {
      swift_once();
    }

    if (MaterialXDataType.isEqual(to:)())
    {
      return v2;
    }

    if (one-time initialization token for float4 != -1)
    {
      swift_once();
    }

    if (MaterialXDataType.isEqual(to:)())
    {
      return v2;
    }

LABEL_40:
    _StringGuts.grow(_:)(40);
    MEMORY[0x266771550](0xD000000000000012, 0x8000000265F30030);
    v5 = MaterialXDataType.description.getter();
    MEMORY[0x266771550](v5);

    MEMORY[0x266771550](0xD000000000000011, 0x8000000265F30050);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x266771550](39, 0xE100000000000000);
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    v2 = swift_allocError();
    *v6 = 31;
    *(v6 + 8) = 0;
    *(v6 + 16) = 0xE000000000000000;
    swift_willThrow();
    return v2;
  }

  if (one-time initialization token for float != -1)
  {
    swift_once();
  }

  if (MaterialXDataType.isEqual(to:)())
  {
    return 0xD000000000000012;
  }

  if (one-time initialization token for color3 != -1)
  {
    swift_once();
  }

  if ((MaterialXDataType.isEqual(to:)() & 1) == 0)
  {
    if (one-time initialization token for color4 != -1)
    {
      swift_once();
    }

    if ((MaterialXDataType.isEqual(to:)() & 1) == 0)
    {
      goto LABEL_40;
    }
  }

  return v2;
}

uint64_t GeomPropDef.BuiltinGeomProp.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x6E6F697469736F70;
  v2 = 0x6E65676E61746962;
  v3 = 0x64726F6F63786574;
  if (a1 != 4)
  {
    v3 = 0x6F6C6F636D6F6567;
  }

  if (a1 != 3)
  {
    v2 = v3;
  }

  v4 = 0x6C616D726F6ELL;
  if (a1 != 1)
  {
    v4 = 0x746E65676E6174;
  }

  if (a1)
  {
    v1 = v4;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance GeomPropDef.BuiltinGeomProp(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = *a2;
  v5 = 0x6E65676E61746962;
  v6 = 0xE900000000000074;
  v7 = 0xE800000000000000;
  v8 = 0x64726F6F63786574;
  if (v2 != 4)
  {
    v8 = 0x6F6C6F636D6F6567;
    v7 = 0xE900000000000072;
  }

  if (v2 != 3)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0xE600000000000000;
  v10 = 0x6C616D726F6ELL;
  if (v2 != 1)
  {
    v10 = 0x746E65676E6174;
    v9 = 0xE700000000000000;
  }

  if (*a1)
  {
    v3 = v9;
  }

  else
  {
    v10 = 0x6E6F697469736F70;
  }

  if (*a1 <= 2u)
  {
    v11 = v10;
  }

  else
  {
    v11 = v5;
  }

  if (v2 <= 2)
  {
    v12 = v3;
  }

  else
  {
    v12 = v6;
  }

  if (*a2 > 2u)
  {
    if (v4 == 3)
    {
      v13 = 0xE900000000000074;
      if (v11 != 0x6E65676E61746962)
      {
        goto LABEL_34;
      }
    }

    else if (v4 == 4)
    {
      v13 = 0xE800000000000000;
      if (v11 != 0x64726F6F63786574)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v13 = 0xE900000000000072;
      if (v11 != 0x6F6C6F636D6F6567)
      {
LABEL_34:
        v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_35;
      }
    }
  }

  else if (*a2)
  {
    if (v4 == 1)
    {
      v13 = 0xE600000000000000;
      if (v11 != 0x6C616D726F6ELL)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v13 = 0xE700000000000000;
      if (v11 != 0x746E65676E6174)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v13 = 0xE800000000000000;
    if (v11 != 0x6E6F697469736F70)
    {
      goto LABEL_34;
    }
  }

  if (v12 != v13)
  {
    goto LABEL_34;
  }

  v14 = 1;
LABEL_35:

  return v14 & 1;
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance GeomPropDef.BuiltinGeomProp@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized GeomPropDef.BuiltinGeomProp.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance GeomPropDef.BuiltinGeomProp(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x6E6F697469736F70;
  v5 = 0xE900000000000074;
  v6 = 0x6E65676E61746962;
  v7 = 0xE800000000000000;
  v8 = 0x64726F6F63786574;
  if (v2 != 4)
  {
    v8 = 0x6F6C6F636D6F6567;
    v7 = 0xE900000000000072;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE600000000000000;
  v10 = 0x6C616D726F6ELL;
  if (v2 != 1)
  {
    v10 = 0x746E65676E6174;
    v9 = 0xE700000000000000;
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

Swift::Int protocol witness for Hashable.hashValue.getter in conformance GeomPropDef.BuiltinGeomProp()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance GeomPropDef.BuiltinGeomProp()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance GeomPropDef.BuiltinGeomProp()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t specialized GeomPropDef.BuiltinGeomProp.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of GeomPropDef.BuiltinGeomProp.init(rawValue:), v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

unint64_t specialized GeomPropDef.Space.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of GeomPropDef.Space.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t lazy protocol witness table accessor for type GeomPropDef.Space and conformance GeomPropDef.Space()
{
  result = lazy protocol witness table cache variable for type GeomPropDef.Space and conformance GeomPropDef.Space;
  if (!lazy protocol witness table cache variable for type GeomPropDef.Space and conformance GeomPropDef.Space)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeomPropDef.Space and conformance GeomPropDef.Space);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GeomPropDef.BuiltinGeomProp and conformance GeomPropDef.BuiltinGeomProp()
{
  result = lazy protocol witness table cache variable for type GeomPropDef.BuiltinGeomProp and conformance GeomPropDef.BuiltinGeomProp;
  if (!lazy protocol witness table cache variable for type GeomPropDef.BuiltinGeomProp and conformance GeomPropDef.BuiltinGeomProp)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeomPropDef.BuiltinGeomProp and conformance GeomPropDef.BuiltinGeomProp);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [GeomPropDef.BuiltinGeomProp] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [GeomPropDef.BuiltinGeomProp] and conformance [A];
  if (!lazy protocol witness table cache variable for type [GeomPropDef.BuiltinGeomProp] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11ShaderGraph11GeomPropDefV07BuiltincD0OGMd, &_sSay11ShaderGraph11GeomPropDefV07BuiltincD0OGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [GeomPropDef.BuiltinGeomProp] and conformance [A]);
  }

  return result;
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for GeomPropDef(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t storeEnumTagSinglePayload for GeomPropDef(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GeomPropDef.BuiltinGeomProp(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for GeomPropDef.BuiltinGeomProp(uint64_t result, unsigned int a2, unsigned int a3)
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

void *specialized Sequence.compactMap<A>(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return MEMORY[0x277D84F90];
  }

  v5 = MEMORY[0x277D84F90];
  for (i = a1 + 32; ; i += 40)
  {
    v7 = *(i + 16);
    v21[0] = *i;
    v21[1] = v7;
    v8 = *(i + 32);
    v22 = v8;
    v14 = *(i + 16);
    v15 = v21[0];
    v23[0] = *(i + 24);
    v24 = v7;
    outlined init with copy of SGDataTypeGraph.PersonalityKind(&v24, v16);
    outlined init with copy of String(v23, v16);
    userGraphNode(in:from:)(a2, v21, v17);
    if (v2)
    {
      break;
    }

    v20 = v17[0];
    outlined init with copy of SGDataTypeGraph.PersonalityKind(&v24, v16);
    outlined init with copy of String(v23, v16);
    outlined destroy of NodePersonality(&v20);
    v19 = v17[1];
    outlined destroy of [Input](&v19, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    v18 = v17[2];
    outlined destroy of [Input](&v18, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
    outlined destroy of SGDataTypeGraph.PersonalityKind(&v24);
    outlined destroy of String(v23);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5[2] + 1, 1, v5);
    }

    v10 = v5[2];
    v9 = v5[3];
    if (v10 >= v9 >> 1)
    {
      v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v5);
    }

    v11 = v17[3];
    v5[2] = v10 + 1;
    v12 = &v5[6 * v10];
    *(v12 + 2) = v15;
    *(v12 + 3) = v14;
    v12[8] = v8;
    v12[9] = v11;
    if (!--v3)
    {
      return v5;
    }
  }

  outlined destroy of SGDataTypeGraph.PersonalityKind(&v24);
  outlined destroy of String(v23);

  return v5;
}

uint64_t specialized Sequence.forEach(_:)(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = result + 72;
    do
    {
      v3 = *(v2 + 64);
      v4 = *(v2 + 56);
      v6 = *(v2 + 40);
      v5 = *(v2 + 48);
      v8 = *(v2 + 24);
      v7 = *(v2 + 32);
      v10 = *(v2 + 8);
      v9 = *(v2 + 16);
      v11 = *v2;
      v13 = *(v2 - 16);
      v12 = *(v2 - 8);
      v15 = *(v2 - 32);
      v14 = *(v2 - 24);
      v16[0] = *(v2 - 40);
      v16[1] = v15;
      v16[2] = v14;
      v16[3] = v13;
      v16[4] = v12;
      v17 = v11;
      v18 = v10;
      v19[0] = v9;
      v19[1] = v8;
      v19[2] = v7;
      v19[3] = v6;
      v19[4] = v5;
      v20 = v4;
      v21 = v3;

      UserGraph.connect(_:to:)(v16, v19);

      v2 += 112;
      --v1;
    }

    while (v1);
  }

  return result;
}

{
  v2 = *(result + 16);
  if (v2)
  {
    for (i = result + 40; ; i += 48)
    {
      v5 = *(i - 8);
      v4 = *i;
      v6 = *(i + 8);
      v7 = *(i + 32);
      v8[0] = v5;
      v8[1] = v4;
      v8[2] = v6;
      v9 = *(i + 16);
      v10 = v7;
      outlined copy of NodePersonality(v5);

      closure #1 in UserGraph.transformRealityKitImageNodes<A>(_:paramType:textureAssignments:customUniformsType:)(v8);
      if (v1)
      {
        break;
      }

      outlined consume of NodePersonality(v5);

      if (!--v2)
      {
        return result;
      }
    }

    outlined consume of NodePersonality(v5);
  }

  return result;
}

{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = result + 40;
    do
    {
      v3 = *(v2 + 32);
      v5 = *v2;
      v4 = *(v2 + 8);
      v6 = *(v2 - 8);
      v7[0] = v6;
      v7[1] = v5;
      v7[2] = v4;
      v8 = *(v2 + 16);
      v9 = v3;
      outlined copy of NodePersonality(v6);

      UserGraph.hoist(_:)(v7);
      outlined consume of NodePersonality(v6);

      v2 += 48;
      --v1;
    }

    while (v1);
  }

  return result;
}

{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 32);
    do
    {
      v3 = v2[5];
      v7[4] = v2[4];
      v7[5] = v3;
      v7[6] = v2[6];
      v4 = v2[1];
      v7[0] = *v2;
      v7[1] = v4;
      v5 = v2[3];
      v7[2] = v2[2];
      v7[3] = v5;
      outlined init with copy of Edge(v7, &v6);
      UserGraph.remove(_:)(v7);
      result = outlined destroy of Edge(v7);
      v2 += 7;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t specialized Sequence.forEach(_:)(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 16);
  if (!v2)
  {
    return result;
  }

  for (i = result + 56; ; i += 48)
  {
    v6 = *(i - 8);
    v26 = *(i - 24);
    v27 = v6;
    v7 = *(i + 16);
    v28 = *(i + 8);
    v29 = *i;
    v30 = v6;
    outlined init with copy of SGDataTypeGraph.PersonalityKind(&v30, v25);
    outlined init with copy of String(&v29, v25);
    outlined init with copy of SGDataTypeGraph.PersonalityKind(&v30, v25);
    outlined init with copy of String(&v29, v25);
    v8 = *a2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25[0] = *a2;
    v10 = v25[0];
    *a2 = 0x8000000000000000;
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(&v26);
    v13 = *(v10 + 16);
    v14 = (v12 & 1) == 0;
    v15 = __OFADD__(v13, v14);
    v16 = v13 + v14;
    if (v15)
    {
      break;
    }

    v17 = v12;
    if (*(v10 + 24) < v16)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, isUniquelyReferenced_nonNull_native);
      v11 = specialized __RawDictionaryStorage.find<A>(_:)(&v26);
      if ((v17 & 1) != (v18 & 1))
      {
        goto LABEL_18;
      }

LABEL_10:
      v19 = v25[0];
      if (v17)
      {
        goto LABEL_3;
      }

      goto LABEL_11;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

    v24 = v11;
    specialized _NativeDictionary.copy()();
    v11 = v24;
    v19 = v25[0];
    if (v17)
    {
LABEL_3:
      *(v19[7] + 8 * v11) = v7;
      outlined destroy of SGDataTypeGraph.PersonalityKind(&v30);
      outlined destroy of String(&v29);
      goto LABEL_4;
    }

LABEL_11:
    v19[(v11 >> 6) + 8] |= 1 << v11;
    v20 = v19[6] + 40 * v11;
    v21 = v27;
    *v20 = v26;
    *(v20 + 16) = v21;
    *(v20 + 32) = v28;
    *(v19[7] + 8 * v11) = v7;
    v22 = v19[2];
    v15 = __OFADD__(v22, 1);
    v23 = v22 + 1;
    if (v15)
    {
      goto LABEL_17;
    }

    v19[2] = v23;
LABEL_4:
    v5 = *a2;
    *a2 = v19;

    outlined destroy of SGDataTypeGraph.PersonalityKind(&v30);
    result = outlined destroy of String(&v29);
    if (!--v2)
    {
      return result;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ShaderGraph0B0V4NodeVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V4NodeVyAA010SGDataTypeB0V11PersonalityV_GMR);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v2 = *(result + 16);
  if (!v2)
  {
    return result;
  }

  for (i = (result + 40); ; i += 2)
  {
    v5 = *(i - 1);
    v4 = *i;
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    v7 = XMLNode.subscript.getter(0x6361667265746E69, 0xED0000656D616E65);
    if (v8)
    {
      break;
    }

    result = swift_unknownObjectRelease();
LABEL_4:
    if (!--v2)
    {
      return result;
    }
  }

  v9 = v8;
  v46 = v7;
  swift_unknownObjectRetain();
  v10._countAndFlagsBits = 1701869940;
  v10._object = 0xE400000000000000;
  v11 = XMLElement.getRequiredAttribute(_:)(v10);
  if (v12)
  {

    return swift_unknownObjectRelease_n();
  }

  if ((*(v4 + 16))(1836412517, 0xE400000000000000, ObjectType, v4) && (v14 = v13, v15 = swift_getObjectType(), (*(v14 + 32))(v15, v14), v17 = v16, swift_unknownObjectRelease(), v17))
  {
    lazy protocol witness table accessor for type String and conformance String();
    v18 = StringProtocol.components<A>(separatedBy:)();

    type metadata accessor for MaterialXDataType();
    v19 = swift_allocObject();
  }

  else
  {
    type metadata accessor for MaterialXDataType();
    v19 = swift_allocObject();
    v18 = 0;
  }

  v19[1]._object = v18;
  v19[2] = v11;
  swift_unknownObjectRelease();
  v19[1]._countAndFlagsBits = MEMORY[0x277D84F90];
  v20 = *a2;
  if (*(*a2 + 16))
  {
    v21 = specialized __RawDictionaryStorage.find<A>(_:)(v46, v9);
    if (v22)
    {
      v23 = v21;

      v24 = *(*(v20 + 56) + 24 * v23 + 8);

      swift_unknownObjectRelease();

      goto LABEL_4;
    }
  }

  v25 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27 = *a2;
  *a2 = 0x8000000000000000;
  v28 = specialized __RawDictionaryStorage.find<A>(_:)(v46, v9);
  v30 = v27[2];
  v31 = (v29 & 1) == 0;
  v32 = __OFADD__(v30, v31);
  v33 = v30 + v31;
  if (!v32)
  {
    v34 = v29;
    if (v27[3] >= v33)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_19;
      }

      v40 = v28;
      specialized _NativeDictionary.copy()();
      v28 = v40;
      v36 = v27;
      if ((v34 & 1) == 0)
      {
        goto LABEL_22;
      }

LABEL_20:
      v37 = (v36[7] + 24 * v28);
      v38 = v37[1];
      v39 = v37[2];
      *v37 = v46;
      v37[1] = v9;
      v37[2] = v19;
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v33, isUniquelyReferenced_nonNull_native);
      v28 = specialized __RawDictionaryStorage.find<A>(_:)(v46, v9);
      if ((v34 & 1) != (v35 & 1))
      {
        goto LABEL_29;
      }

LABEL_19:
      v36 = v27;
      if (v34)
      {
        goto LABEL_20;
      }

LABEL_22:
      v36[(v28 >> 6) + 8] |= 1 << v28;
      v41 = (v36[6] + 16 * v28);
      *v41 = v46;
      v41[1] = v9;
      v42 = (v36[7] + 24 * v28);
      *v42 = v46;
      v42[1] = v9;
      v42[2] = v19;
      v43 = v36[2];
      v32 = __OFADD__(v43, 1);
      v44 = v43 + 1;
      if (v32)
      {
        goto LABEL_28;
      }

      v36[2] = v44;
    }

    *a2 = v36;
    result = swift_unknownObjectRelease();
    goto LABEL_4;
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v3 = v2;
  v4 = *(result + 16);
  if (v4)
  {
    for (i = (result + 40); ; i += 2)
    {
      v7 = *(i - 1);
      v8 = *i;
      ObjectType = swift_getObjectType();
      swift_unknownObjectRetain();
      v10 = XMLNode.elements(forXPath:)(0x7475706E692F2ELL, 0xE700000000000000, ObjectType, v8);
      if (v3)
      {
        break;
      }

      specialized Sequence.forEach(_:)(v10, a2);
      v3 = 0;
      swift_unknownObjectRelease();

      if (!--v4)
      {
        return result;
      }
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

__n128 mapInternalGraphToUserGraph(_:)@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1[3];
  v3 = *(v2 + 16);
  v4 = MEMORY[0x277D84F90];
  v46 = a1;
  if (v3)
  {
    *&v34[0] = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
    v4 = *&v34[0];
    v5 = (v2 + 48);
    do
    {
      v6 = *(v5 - 2);
      v7 = *(v5 - 1);
      v8 = *v5;

      v9 = specialized SGDataType.materialXDataType.getter(v8);
      *&v34[0] = v4;
      v10 = *(v4 + 16);
      v11 = *(v4 + 24);

      if (v10 >= v11 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v10 + 1, 1);
        v4 = *&v34[0];
      }

      v5 += 4;
      *(v4 + 16) = v10 + 1;
      v12 = (v4 + 24 * v10);
      v12[4] = v6;
      v12[5] = v7;
      v12[6] = v9;
      --v3;
    }

    while (v3);
    v13 = v46;
  }

  else
  {
    v13 = a1;
  }

  v14 = v13[4];
  v15 = *(v14 + 16);
  v16 = MEMORY[0x277D84F90];
  if (v15)
  {
    *&v34[0] = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v15, 0);
    v16 = *&v34[0];
    v17 = (v14 + 48);
    do
    {
      v18 = *(v17 - 2);
      v19 = *(v17 - 1);
      v20 = *v17;

      v21 = specialized SGDataType.materialXDataType.getter(v20);
      *&v34[0] = v16;
      v22 = *(v16 + 16);
      v23 = *(v16 + 24);

      if (v22 >= v23 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v22 + 1, 1);
        v16 = *&v34[0];
      }

      v17 += 3;
      *(v16 + 16) = v22 + 1;
      v24 = (v16 + 24 * v22);
      v24[4] = v18;
      v24[5] = v19;
      v24[6] = v21;
      --v15;
    }

    while (v15);
    v13 = v46;
  }

  v25 = v13[1];
  v26 = v13[2];

  specialized UserGraph.init(id:label:inputs:outputs:)(0, v25, v26, v4, v16, &v36);
  mapGraph(_:into:)(v13, &v36);
  if (v33)
  {
    v34[8] = v44;
    v35[0] = v45[0];
    *(v35 + 9) = *(v45 + 9);
    v34[4] = v40;
    v34[5] = v41;
    v34[6] = v42;
    v34[7] = v43;
    v34[0] = v36;
    v34[1] = v37;
    v34[2] = v38;
    v34[3] = v39;
    outlined destroy of UserGraph(v34);
  }

  else
  {
    v28 = v45[0];
    *(a2 + 128) = v44;
    *(a2 + 144) = v28;
    *(a2 + 153) = *(v45 + 9);
    v29 = v41;
    *(a2 + 64) = v40;
    *(a2 + 80) = v29;
    v30 = v43;
    *(a2 + 96) = v42;
    *(a2 + 112) = v30;
    v31 = v37;
    *a2 = v36;
    *(a2 + 16) = v31;
    result = v39;
    *(a2 + 32) = v38;
    *(a2 + 48) = result;
  }

  return result;
}

uint64_t SGDataType.materialXDataType.getter(uint64_t a1)
{
  specialized SGDataType.materialXDataType.getter(a1);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SGGraph.replaceDeprecatedAndRedundantNodes()()
{
  v1 = specialized SGGraph.deprecationMap()();
  if (!v0)
  {
    v2 = v1;
    SGGraph.topologicalSort()(v18);
    v4 = v18[0];
    v3 = v18[1];
    v20 = v18[0];
    v5 = v18[3];

    v19 = v5;
    outlined destroy of [Input](&v19, &_s11ShaderGraph6SGNodeCSgMd, &_s11ShaderGraph6SGNodeCSgMR);
    v6 = *(v4 + 16);
    if (v6)
    {
      v7 = 0;
      v8 = (v4 + 64);
      while (v7 < *(v4 + 16))
      {
        v10 = *(v8 - 3);
        v11 = *v8;
        v15[0] = *(v8 - 4);
        v9 = v15[0];
        v15[1] = v10;
        v16 = *(v8 - 1);
        v17 = v11;
        v12 = v16;
        v13 = v9;
        v14 = v10;
        closure #1 in SGGraph.replaceDeprecatedAndRedundantNodes()(v15, v2);

        ++v7;
        v8 += 40;
        if (v6 == v7)
        {
          goto LABEL_6;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_6:
      outlined destroy of [Input](&v20, &_sSay11ShaderGraph15TopologicalSortV7ElementVGMd, &_sSay11ShaderGraph15TopologicalSortV7ElementVGMR);
    }
  }
}

double SGGraph.internalGraph(_:)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = v3;
  v12 = 0;
  v7 = v2;

  specialized SGDataTypeGraph.init(_:idSequence:constants:)(v7, &v12, a1, v10);
  if (!v4)
  {
    v9 = v10[1];
    *a2 = v10[0];
    a2[1] = v9;
    result = *&v11;
    a2[2] = v11;
  }

  return result;
}

uint64_t SGInput.legacyInput()(void *a1, uint64_t *a2)
{
  v3 = (v2 + *a1);
  v4 = *v3;
  v5 = v3[1];
  v6 = *a2;
  swift_beginAccess();
  v7 = *(v2 + v6);

  specialized SGDataType.materialXDataType.getter(v7);

  return v4;
}

uint64_t specialized toString<A>(_:)(double a1)
{
  v1 = MEMORY[0x277D84F90];
  v23 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 2, 0);
  v2 = v23;
  v4 = *(v23 + 16);
  v3 = *(v23 + 24);
  v5 = v3 >> 1;
  v6 = v4 + 1;
  if (v3 >> 1 <= v4)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v3 > 1), v4 + 1, 1);
    v2 = v23;
    v3 = *(v23 + 24);
    v5 = v3 >> 1;
  }

  *(v2 + 16) = v6;
  v7 = HIDWORD(a1);
  *(v2 + 4 * v4 + 32) = LODWORD(a1);
  v8 = v4 + 2;
  if (v5 < v8)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v3 > 1), v8, 1);
    v7 = HIDWORD(a1);
    v2 = v23;
  }

  *(v2 + 16) = v8;
  *(v2 + 4 * v6 + 32) = v7;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8, 0);
  v9 = 32;
  v10 = v1;
  do
  {
    v25 = *(v2 + v9);
    v11 = String.init<A>(describing:)();
    v24 = v10;
    v14 = *(v10 + 16);
    v13 = *(v10 + 24);
    if (v14 >= v13 >> 1)
    {
      v16 = v11;
      v17 = v12;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
      v12 = v17;
      v11 = v16;
      v10 = v24;
    }

    *(v10 + 16) = v14 + 1;
    v15 = v10 + 16 * v14;
    *(v15 + 32) = v11;
    *(v15 + 40) = v12;
    v9 += 4;
    --v8;
  }

  while (v8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v18 = BidirectionalCollection<>.joined(separator:)();
  v20 = v19;

  MEMORY[0x266771550](v18, v20);

  MEMORY[0x266771550](125, 0xE100000000000000);

  return 123;
}

{
  v1 = MEMORY[0x277D84F90];
  v23 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 2, 0);
  v2 = v23;
  v4 = *(v23 + 16);
  v3 = *(v23 + 24);
  v5 = v3 >> 1;
  v6 = v4 + 1;
  if (v3 >> 1 <= v4)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v3 > 1), v4 + 1, 1);
    v2 = v23;
    v3 = *(v23 + 24);
    v5 = v3 >> 1;
  }

  *(v2 + 16) = v6;
  v7 = HIDWORD(a1);
  *(v2 + 4 * v4 + 32) = LODWORD(a1);
  v8 = v4 + 2;
  if (v5 < v8)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v3 > 1), v8, 1);
    v7 = HIDWORD(a1);
    v2 = v23;
  }

  *(v2 + 16) = v8;
  *(v2 + 4 * v6 + 32) = v7;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8, 0);
  v9 = 32;
  v10 = v1;
  do
  {
    v25 = *(v2 + v9);
    v11 = String.init<A>(describing:)();
    v24 = v10;
    v14 = *(v10 + 16);
    v13 = *(v10 + 24);
    if (v14 >= v13 >> 1)
    {
      v16 = v11;
      v17 = v12;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
      v12 = v17;
      v11 = v16;
      v10 = v24;
    }

    *(v10 + 16) = v14 + 1;
    v15 = v10 + 16 * v14;
    *(v15 + 32) = v11;
    *(v15 + 40) = v12;
    v9 += 4;
    --v8;
  }

  while (v8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v18 = BidirectionalCollection<>.joined(separator:)();
  v20 = v19;

  MEMORY[0x266771550](v18, v20);

  MEMORY[0x266771550](125, 0xE100000000000000);

  return 123;
}

{
  v1 = MEMORY[0x277D84F90];
  v27 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 3, 0);
  v2 = v27;
  v4 = *(v27 + 16);
  v3 = *(v27 + 24);
  v5 = v3 >> 1;
  v6 = v4 + 1;
  if (v3 >> 1 <= v4)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v3 > 1), v4 + 1, 1);
    v2 = v27;
    v3 = *(v27 + 24);
    v5 = v3 >> 1;
  }

  *(v2 + 16) = v6;
  v7 = a1;
  *(v2 + 2 * v4 + 32) = LOWORD(a1);
  v8 = v4 + 2;
  if (v5 < v8)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v3 > 1), v8, 1);
    v7 = a1;
    v2 = v27;
  }

  *(v2 + 16) = v8;
  *(v2 + 2 * v6 + 32) = WORD1(v7);
  v10 = *(v2 + 16);
  v9 = *(v2 + 24);
  v11 = v10 + 1;
  if (v10 >= v9 >> 1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1);
    WORD2(v7) = WORD2(a1);
  }

  v12 = v27;
  *(v27 + 16) = v11;
  *(v27 + 2 * v10 + 32) = WORD2(v7);
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10 + 1, 0);
  v13 = v1;
  v14 = 32;
  do
  {
    v29 = *(v12 + v14);
    v15 = String.init<A>(describing:)();
    v28 = v13;
    v18 = *(v13 + 16);
    v17 = *(v13 + 24);
    if (v18 >= v17 >> 1)
    {
      v20 = v15;
      v21 = v16;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1);
      v16 = v21;
      v15 = v20;
      v13 = v28;
    }

    *(v13 + 16) = v18 + 1;
    v19 = v13 + 16 * v18;
    *(v19 + 32) = v15;
    *(v19 + 40) = v16;
    v14 += 2;
    --v11;
  }

  while (v11);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v22 = BidirectionalCollection<>.joined(separator:)();
  v24 = v23;

  MEMORY[0x266771550](v22, v24);

  MEMORY[0x266771550](125, 0xE100000000000000);

  return 123;
}

{
  v1 = MEMORY[0x277D84F90];
  v29 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 4, 0);
  v2 = v29;
  v4 = *(v29 + 16);
  v3 = *(v29 + 24);
  v5 = v3 >> 1;
  v6 = v4 + 1;
  if (v3 >> 1 <= v4)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v3 > 1), v4 + 1, 1);
    v2 = v29;
    v3 = *(v29 + 24);
    v5 = v3 >> 1;
  }

  *(v2 + 16) = v6;
  v7 = a1;
  *(v2 + 2 * v4 + 32) = LOWORD(a1);
  v8 = v4 + 2;
  if (v5 < v8)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v3 > 1), v8, 1);
    v7 = a1;
    v2 = v29;
  }

  *(v2 + 16) = v8;
  *(v2 + 2 * v6 + 32) = WORD1(v7);
  v10 = *(v2 + 16);
  v9 = *(v2 + 24);
  v11 = v10 + 1;
  if (v10 >= v9 >> 1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1);
    HIDWORD(v7) = HIDWORD(a1);
  }

  v12 = v29;
  *(v29 + 16) = v11;
  *(v29 + 2 * v10 + 32) = WORD2(v7);
  v13 = *(v29 + 24);
  v14 = v10 + 2;
  if (v14 > (v13 >> 1))
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14, 1);
    HIWORD(v7) = HIWORD(a1);
    v12 = v29;
  }

  *(v12 + 16) = v14;
  *(v12 + 2 * v11 + 32) = HIWORD(v7);
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14, 0);
  v15 = 32;
  v16 = v1;
  do
  {
    v31 = *(v12 + v15);
    v17 = String.init<A>(describing:)();
    v30 = v16;
    v20 = *(v16 + 16);
    v19 = *(v16 + 24);
    if (v20 >= v19 >> 1)
    {
      v22 = v17;
      v23 = v18;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1);
      v18 = v23;
      v17 = v22;
      v16 = v30;
    }

    *(v16 + 16) = v20 + 1;
    v21 = v16 + 16 * v20;
    *(v21 + 32) = v17;
    *(v21 + 40) = v18;
    v15 += 2;
    --v14;
  }

  while (v14);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v24 = BidirectionalCollection<>.joined(separator:)();
  v26 = v25;

  MEMORY[0x266771550](v24, v26);

  MEMORY[0x266771550](125, 0xE100000000000000);

  return 123;
}

uint64_t specialized toString<A>(_:)(__n128 a1)
{
  v1 = MEMORY[0x277D84F90];
  v27 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 3, 0);
  v2 = v27;
  v4 = *(v27 + 16);
  v3 = *(v27 + 24);
  v5 = v3 >> 1;
  v6 = v4 + 1;
  if (v3 >> 1 <= v4)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v3 > 1), v4 + 1, 1);
    v2 = v27;
    v3 = *(v27 + 24);
    v5 = v3 >> 1;
  }

  *(v2 + 16) = v6;
  v7 = a1;
  *(v2 + 4 * v4 + 32) = a1.n128_u32[0];
  v8 = v4 + 2;
  if (v5 < v8)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v3 > 1), v8, 1);
    v7 = a1;
    v2 = v27;
  }

  *(v2 + 16) = v8;
  *(v2 + 4 * v6 + 32) = v7.n128_u32[1];
  v10 = *(v2 + 16);
  v9 = *(v2 + 24);
  v11 = v10 + 1;
  if (v10 >= v9 >> 1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1);
    v7.n128_u32[2] = a1.n128_u32[2];
  }

  v12 = v27;
  *(v27 + 16) = v11;
  *(v27 + 4 * v10 + 32) = v7.n128_u32[2];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10 + 1, 0);
  v13 = v1;
  v14 = 32;
  do
  {
    v29 = *(v12 + v14);
    v15 = String.init<A>(describing:)();
    v28 = v13;
    v18 = *(v13 + 16);
    v17 = *(v13 + 24);
    if (v18 >= v17 >> 1)
    {
      v20 = v15;
      v21 = v16;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1);
      v16 = v21;
      v15 = v20;
      v13 = v28;
    }

    *(v13 + 16) = v18 + 1;
    v19 = v13 + 16 * v18;
    *(v19 + 32) = v15;
    *(v19 + 40) = v16;
    v14 += 4;
    --v11;
  }

  while (v11);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v22 = BidirectionalCollection<>.joined(separator:)();
  v24 = v23;

  MEMORY[0x266771550](v22, v24);

  MEMORY[0x266771550](125, 0xE100000000000000);

  return 123;
}

{
  v1 = MEMORY[0x277D84F90];
  v29 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 4, 0);
  v2 = v29;
  v4 = *(v29 + 16);
  v3 = *(v29 + 24);
  v5 = v3 >> 1;
  v6 = v4 + 1;
  if (v3 >> 1 <= v4)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v3 > 1), v4 + 1, 1);
    v2 = v29;
    v3 = *(v29 + 24);
    v5 = v3 >> 1;
  }

  *(v2 + 16) = v6;
  v7 = a1;
  *(v2 + 4 * v4 + 32) = a1.n128_u32[0];
  v8 = v4 + 2;
  if (v5 < v8)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v3 > 1), v8, 1);
    v7 = a1;
    v2 = v29;
  }

  *(v2 + 16) = v8;
  *(v2 + 4 * v6 + 32) = v7.n128_u32[1];
  v10 = *(v2 + 16);
  v9 = *(v2 + 24);
  v11 = v10 + 1;
  if (v10 >= v9 >> 1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1);
    v7.n128_u64[1] = a1.n128_u64[1];
  }

  v12 = v29;
  *(v29 + 16) = v11;
  *(v29 + 4 * v10 + 32) = v7.n128_u32[2];
  v13 = *(v29 + 24);
  v14 = v10 + 2;
  if (v14 > (v13 >> 1))
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14, 1);
    v7.n128_u32[3] = a1.n128_u32[3];
    v12 = v29;
  }

  *(v12 + 16) = v14;
  *(v12 + 4 * v11 + 32) = v7.n128_u32[3];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14, 0);
  v15 = 32;
  v16 = v1;
  do
  {
    v31 = *(v12 + v15);
    v17 = String.init<A>(describing:)();
    v30 = v16;
    v20 = *(v16 + 16);
    v19 = *(v16 + 24);
    if (v20 >= v19 >> 1)
    {
      v22 = v17;
      v23 = v18;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1);
      v18 = v23;
      v17 = v22;
      v16 = v30;
    }

    *(v16 + 16) = v20 + 1;
    v21 = v16 + 16 * v20;
    *(v21 + 32) = v17;
    *(v21 + 40) = v18;
    v15 += 4;
    --v14;
  }

  while (v14);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v24 = BidirectionalCollection<>.joined(separator:)();
  v26 = v25;

  MEMORY[0x266771550](v24, v26);

  MEMORY[0x266771550](125, 0xE100000000000000);

  return 123;
}

{
  v1 = MEMORY[0x277D84F90];
  v27 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 3, 0);
  v2 = v27;
  v4 = *(v27 + 16);
  v3 = *(v27 + 24);
  v5 = v3 >> 1;
  v6 = v4 + 1;
  if (v3 >> 1 <= v4)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v3 > 1), v4 + 1, 1);
    v2 = v27;
    v3 = *(v27 + 24);
    v5 = v3 >> 1;
  }

  *(v2 + 16) = v6;
  v7 = a1;
  *(v2 + 4 * v4 + 32) = a1.n128_u32[0];
  v8 = v4 + 2;
  if (v5 < v8)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v3 > 1), v8, 1);
    v7 = a1;
    v2 = v27;
  }

  *(v2 + 16) = v8;
  *(v2 + 4 * v6 + 32) = v7.n128_u32[1];
  v10 = *(v2 + 16);
  v9 = *(v2 + 24);
  v11 = v10 + 1;
  if (v10 >= v9 >> 1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1);
    v7.n128_u32[2] = a1.n128_u32[2];
  }

  v12 = v27;
  *(v27 + 16) = v11;
  *(v27 + 4 * v10 + 32) = v7.n128_u32[2];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10 + 1, 0);
  v13 = v1;
  v14 = 32;
  do
  {
    v29 = *(v12 + v14);
    v15 = String.init<A>(describing:)();
    v28 = v13;
    v18 = *(v13 + 16);
    v17 = *(v13 + 24);
    if (v18 >= v17 >> 1)
    {
      v20 = v15;
      v21 = v16;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1);
      v16 = v21;
      v15 = v20;
      v13 = v28;
    }

    *(v13 + 16) = v18 + 1;
    v19 = v13 + 16 * v18;
    *(v19 + 32) = v15;
    *(v19 + 40) = v16;
    v14 += 4;
    --v11;
  }

  while (v11);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v22 = BidirectionalCollection<>.joined(separator:)();
  v24 = v23;

  MEMORY[0x266771550](v22, v24);

  MEMORY[0x266771550](125, 0xE100000000000000);

  return 123;
}

{
  v1 = MEMORY[0x277D84F90];
  v29 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 4, 0);
  v2 = v29;
  v4 = *(v29 + 16);
  v3 = *(v29 + 24);
  v5 = v3 >> 1;
  v6 = v4 + 1;
  if (v3 >> 1 <= v4)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v3 > 1), v4 + 1, 1);
    v2 = v29;
    v3 = *(v29 + 24);
    v5 = v3 >> 1;
  }

  *(v2 + 16) = v6;
  v7 = a1;
  *(v2 + 4 * v4 + 32) = a1.n128_u32[0];
  v8 = v4 + 2;
  if (v5 < v8)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v3 > 1), v8, 1);
    v7 = a1;
    v2 = v29;
  }

  *(v2 + 16) = v8;
  *(v2 + 4 * v6 + 32) = v7.n128_u32[1];
  v10 = *(v2 + 16);
  v9 = *(v2 + 24);
  v11 = v10 + 1;
  if (v10 >= v9 >> 1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1);
    v7.n128_u64[1] = a1.n128_u64[1];
  }

  v12 = v29;
  *(v29 + 16) = v11;
  *(v29 + 4 * v10 + 32) = v7.n128_u32[2];
  v13 = *(v29 + 24);
  v14 = v10 + 2;
  if (v14 > (v13 >> 1))
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14, 1);
    v7.n128_u32[3] = a1.n128_u32[3];
    v12 = v29;
  }

  *(v12 + 16) = v14;
  *(v12 + 4 * v11 + 32) = v7.n128_u32[3];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14, 0);
  v15 = 32;
  v16 = v1;
  do
  {
    v31 = *(v12 + v15);
    v17 = String.init<A>(describing:)();
    v30 = v16;
    v20 = *(v16 + 16);
    v19 = *(v16 + 24);
    if (v20 >= v19 >> 1)
    {
      v22 = v17;
      v23 = v18;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1);
      v18 = v23;
      v17 = v22;
      v16 = v30;
    }

    *(v16 + 16) = v20 + 1;
    v21 = v16 + 16 * v20;
    *(v21 + 32) = v17;
    *(v21 + 40) = v18;
    v15 += 4;
    --v14;
  }

  while (v14);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v24 = BidirectionalCollection<>.joined(separator:)();
  v26 = v25;

  MEMORY[0x266771550](v24, v26);

  MEMORY[0x266771550](125, 0xE100000000000000);

  return 123;
}

uint64_t specialized toString<A>(_:)(int a1)
{
  v2 = MEMORY[0x277D84F90];
  v22 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 2, 0);
  v3 = v22;
  v5 = *(v22 + 16);
  v4 = *(v22 + 24);
  v6 = v4 >> 1;
  v7 = v5 + 1;
  if (v4 >> 1 <= v5)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v5 + 1, 1);
    v3 = v22;
    v4 = *(v22 + 24);
    v6 = v4 >> 1;
  }

  *(v3 + 16) = v7;
  *(v3 + 2 * v5 + 32) = a1;
  v8 = v5 + 2;
  if (v6 < v8)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v8, 1);
    v3 = v22;
  }

  *(v3 + 16) = v8;
  *(v3 + 2 * v7 + 32) = HIWORD(a1);
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8, 0);
  v9 = 32;
  v10 = v2;
  do
  {
    v24 = *(v3 + v9);
    v11 = String.init<A>(describing:)();
    v23 = v10;
    v14 = *(v10 + 16);
    v13 = *(v10 + 24);
    if (v14 >= v13 >> 1)
    {
      v16 = v11;
      v17 = v12;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
      v12 = v17;
      v11 = v16;
      v10 = v23;
    }

    *(v10 + 16) = v14 + 1;
    v15 = v10 + 16 * v14;
    *(v15 + 32) = v11;
    *(v15 + 40) = v12;
    v9 += 2;
    --v8;
  }

  while (v8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v18 = BidirectionalCollection<>.joined(separator:)();
  v20 = v19;

  MEMORY[0x266771550](v18, v20);

  MEMORY[0x266771550](125, 0xE100000000000000);

  return 123;
}

uint64_t SGDataTypeStorage.metalLiteralValue(type:)(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *v1;
  switch(*(v1 + 64))
  {
    case 1:
      LOBYTE(v163.value._countAndFlagsBits) = *v1;
      return dispatch thunk of CustomStringConvertible.description.getter();
    case 2:
    case 3:
      LODWORD(v163.value._countAndFlagsBits) = vmovn_s16(vzip1q_s8(v3, v3)).u32[0];
      return dispatch thunk of CustomStringConvertible.description.getter();
    case 4:
      return Float16.description.getter();
    case 5:
      return Float.description.getter();
    case 6:
      v72 = *v1;
      type metadata accessor for MetalDataType.Enum();
      v74 = a1;
      v75 = swift_dynamicCastClass();
      if (v75)
      {
        v76 = v75;

        outlined init with copy of SGDataTypeStorage(v1, &v163);

        v77 = MetalDataType.convertEnumConstant(_:)(v72);
        if (v77.value._object)
        {
          outlined destroy of SGDataTypeStorage(v1);
          v163 = v77;
          lazy protocol witness table accessor for type String and conformance String();
          if (StringProtocol.contains<A>(_:)())
          {

            return v77.value._countAndFlagsBits;
          }

          else
          {
            v147 = *(v76 + 24);
            v148 = *(v76 + 32);

            v163.value._countAndFlagsBits = v147;
            v163.value._object = v148;

            MEMORY[0x266771550](14906, 0xE200000000000000);

            MEMORY[0x266771550](v77.value._countAndFlagsBits, v77.value._object);

LABEL_59:

            return v163.value._countAndFlagsBits;
          }
        }

        else
        {

          v163.value._countAndFlagsBits = 0;
          v163.value._object = 0xE000000000000000;
          _StringGuts.grow(_:)(59);
          MEMORY[0x266771550](0xD000000000000018, 0x8000000265F300B0);
          MEMORY[0x266771550](0xD00000000000001BLL, 0x8000000265F300D0);
          MEMORY[0x266771550](v72._countAndFlagsBits, v72._object);
          outlined destroy of SGDataTypeStorage(v1);
          v142 = MEMORY[0x266771550](0x797420726F662027, 0xEC00000027206570);
          v143 = (*(*v74 + 136))(v142);
          MEMORY[0x266771550](v143);

          MEMORY[0x266771550](0x707974206F742027, 0xEB00000000272065);
          MEMORY[0x266771550](*(v76 + 24), *(v76 + 32));
          MEMORY[0x266771550](41, 0xE100000000000000);
          MEMORY[0x266771550](0x283A6C6174656DLL, 0xE700000000000000);

          MEMORY[0x266771550](39, 0xE100000000000000);
          countAndFlagsBits = v163.value._countAndFlagsBits;
          object = v163.value._object;
          lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
          swift_allocError();
          *v146 = 25;
          *(v146 + 8) = countAndFlagsBits;
          *(v146 + 16) = object;
          swift_willThrow();
        }
      }

      else
      {

        return v72._countAndFlagsBits;
      }

    case 7:
      return specialized toString<A>(_:)(v3.n128_f64[0]);
    case 8:
      return specialized toString<A>(_:)(v3);
    case 9:
      return specialized toString<A>(_:)(v3);
    case 0xA:
      v162 = *v1;
      v87 = MEMORY[0x277D84F90];
      v163.value._countAndFlagsBits = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 2, 0);
      v88 = v163.value._countAndFlagsBits;
      v90 = *(v163.value._countAndFlagsBits + 16);
      v89 = *(v163.value._countAndFlagsBits + 24);
      v91 = v89 >> 1;
      v92 = v90 + 1;
      if (v89 >> 1 <= v90)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v89 > 1), v90 + 1, 1);
        v88 = v163.value._countAndFlagsBits;
        v89 = *(v163.value._countAndFlagsBits + 24);
        v91 = v89 >> 1;
      }

      v93 = v162.n128_u16[1];
      *(v88 + 16) = v92;
      *(v88 + 2 * v90 + 32) = v162.n128_u16[0];
      v94 = v90 + 2;
      if (v91 < v94)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v89 > 1), v94, 1);
        v93 = v162.n128_u16[1];
        v88 = v163.value._countAndFlagsBits;
      }

      *(v88 + 16) = v94;
      *(v88 + 2 * v92 + 32) = v93;
      v163.value._countAndFlagsBits = v87;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v94, 0);
      v95 = 32;
      v96 = v87;
      do
      {
        v97 = *(v88 + v95);
        v98 = Float16.description.getter();
        v163.value._countAndFlagsBits = v96;
        v101 = *(v96 + 16);
        v100 = *(v96 + 24);
        if (v101 >= v100 >> 1)
        {
          v103 = v98;
          v104 = v99;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v100 > 1), v101 + 1, 1);
          v99 = v104;
          v98 = v103;
          v96 = v163.value._countAndFlagsBits;
        }

        *(v96 + 16) = v101 + 1;
        v102 = v96 + 16 * v101;
        *(v102 + 32) = v98;
        *(v102 + 40) = v99;
        v95 += 2;
        --v94;
      }

      while (v94);
      goto LABEL_57;
    case 0xB:
      v156 = *v1;
      v8 = MEMORY[0x277D84F90];
      v163.value._countAndFlagsBits = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 3, 0);
      v9 = v163.value._countAndFlagsBits;
      v11 = *(v163.value._countAndFlagsBits + 16);
      v10 = *(v163.value._countAndFlagsBits + 24);
      v12 = v10 >> 1;
      v13 = v11 + 1;
      if (v10 >> 1 <= v11)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
        v9 = v163.value._countAndFlagsBits;
        v10 = *(v163.value._countAndFlagsBits + 24);
        v12 = v10 >> 1;
      }

      v14 = v156.n128_u64[0];
      *(v9 + 16) = v13;
      *(v9 + 2 * v11 + 32) = v156.n128_u16[0];
      v15 = v11 + 2;
      if (v12 < v15)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v15, 1);
        v14 = v156.n128_u64[0];
        v9 = v163.value._countAndFlagsBits;
      }

      *(v9 + 16) = v15;
      *(v9 + 2 * v13 + 32) = WORD1(v14);
      v17 = *(v9 + 16);
      v16 = *(v9 + 24);
      v18 = v17 + 1;
      if (v17 >= v16 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1);
        WORD2(v14) = v156.n128_u16[2];
      }

      v19 = v163.value._countAndFlagsBits;
      *(v163.value._countAndFlagsBits + 16) = v18;
      *(v19 + 2 * v17 + 32) = WORD2(v14);
      v163.value._countAndFlagsBits = v8;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v17 + 1, 0);
      v20 = v8;
      v21 = 32;
      do
      {
        v22 = *(v19 + v21);
        v23 = Float16.description.getter();
        v163.value._countAndFlagsBits = v20;
        v26 = *(v20 + 16);
        v25 = *(v20 + 24);
        if (v26 >= v25 >> 1)
        {
          v28 = v23;
          v29 = v24;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1);
          v24 = v29;
          v23 = v28;
          v20 = v163.value._countAndFlagsBits;
        }

        *(v20 + 16) = v26 + 1;
        v27 = v20 + 16 * v26;
        *(v27 + 32) = v23;
        *(v27 + 40) = v24;
        v21 += 2;
        --v18;
      }

      while (v18);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type [String] and conformance [A]();
      v30 = BidirectionalCollection<>.joined(separator:)();
      v32 = v31;

      v163.value._countAndFlagsBits = 123;
      v163.value._object = 0xE100000000000000;
      MEMORY[0x266771550](v30, v32);
      goto LABEL_58;
    case 0xC:
      v157 = *v1;
      v33 = MEMORY[0x277D84F90];
      v163.value._countAndFlagsBits = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 4, 0);
      v34 = v163.value._countAndFlagsBits;
      v36 = *(v163.value._countAndFlagsBits + 16);
      v35 = *(v163.value._countAndFlagsBits + 24);
      v37 = v35 >> 1;
      v38 = v36 + 1;
      if (v35 >> 1 <= v36)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1);
        v34 = v163.value._countAndFlagsBits;
        v35 = *(v163.value._countAndFlagsBits + 24);
        v37 = v35 >> 1;
      }

      v39 = v157.n128_u64[0];
      *(v34 + 16) = v38;
      *(v34 + 2 * v36 + 32) = v157.n128_u16[0];
      v40 = v36 + 2;
      if (v37 < v40)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v40, 1);
        v39 = v157.n128_u64[0];
        v34 = v163.value._countAndFlagsBits;
      }

      *(v34 + 16) = v40;
      *(v34 + 2 * v38 + 32) = WORD1(v39);
      v42 = *(v34 + 16);
      v41 = *(v34 + 24);
      v43 = v42 + 1;
      if (v42 >= v41 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v42 + 1, 1);
        HIDWORD(v39) = v157.n128_u32[1];
      }

      v44 = v163.value._countAndFlagsBits;
      *(v163.value._countAndFlagsBits + 16) = v43;
      *(v44 + 2 * v42 + 32) = WORD2(v39);
      v45 = *(v44 + 24);
      v46 = v42 + 2;
      if (v46 > (v45 >> 1))
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v45 > 1), v46, 1);
        HIWORD(v39) = v157.n128_u16[3];
        v44 = v163.value._countAndFlagsBits;
      }

      *(v44 + 16) = v46;
      *(v44 + 2 * v43 + 32) = HIWORD(v39);
      v163.value._countAndFlagsBits = v33;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v46, 0);
      v47 = 32;
      v48 = v33;
      do
      {
        v49 = *(v44 + v47);
        v50 = Float16.description.getter();
        v163.value._countAndFlagsBits = v48;
        v53 = *(v48 + 16);
        v52 = *(v48 + 24);
        if (v53 >= v52 >> 1)
        {
          v55 = v50;
          v56 = v51;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v52 > 1), v53 + 1, 1);
          v51 = v56;
          v50 = v55;
          v48 = v163.value._countAndFlagsBits;
        }

        *(v48 + 16) = v53 + 1;
        v54 = v48 + 16 * v53;
        *(v54 + 32) = v50;
        *(v54 + 40) = v51;
        v47 += 2;
        --v46;
      }

      while (v46);
LABEL_57:

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type [String] and conformance [A]();
      v105 = BidirectionalCollection<>.joined(separator:)();
      v107 = v106;

      v163.value._countAndFlagsBits = 123;
      v163.value._object = 0xE100000000000000;
      MEMORY[0x266771550](v105, v107);
      goto LABEL_58;
    case 0xD:
      return specialized toString<A>(_:)(v3.n128_f64[0]);
    case 0xE:
      return specialized toString<A>(_:)(v3);
    case 0xF:
      return specialized toString<A>(_:)(v3);
    case 0x10:
      *&v155 = vextq_s8(v3, v3, 8uLL).u64[0];
      v5 = specialized toString<A>(_:)(v3.n128_f64[0]);
      MEMORY[0x266771550](v5);

      MEMORY[0x266771550](8236, 0xE200000000000000);

      v6 = specialized toString<A>(_:)(v155);
      goto LABEL_48;
    case 0x11:
      v151 = *(v1 + 32);
      v158 = *(v1 + 16);
      v57 = specialized toString<A>(_:)(v3);
      MEMORY[0x266771550](v57);

      MEMORY[0x266771550](8236, 0xE200000000000000);

      v58 = specialized toString<A>(_:)(v158);
      v60 = v59;

      MEMORY[0x266771550](v58, v60);

      MEMORY[0x266771550](8236, 0xE200000000000000);

      v6 = specialized toString<A>(_:)(v151);
      goto LABEL_48;
    case 0x12:
      v150 = *(v1 + 48);
      v154 = *(v1 + 32);
      v161 = *(v1 + 16);
      v78 = specialized toString<A>(_:)(v3);
      MEMORY[0x266771550](v78);

      MEMORY[0x266771550](8236, 0xE200000000000000);

      v79 = specialized toString<A>(_:)(v161);
      v81 = v80;

      MEMORY[0x266771550](v79, v81);

      MEMORY[0x266771550](8236, 0xE200000000000000);

      v82 = specialized toString<A>(_:)(v154);
      v84 = v83;

      MEMORY[0x266771550](v82, v84);

      MEMORY[0x266771550](8236, 0xE200000000000000);

      v6 = specialized toString<A>(_:)(v150);
      goto LABEL_48;
    case 0x13:
      v122 = HIDWORD(*v1);
      v123 = specialized toString<A>(_:)(v3.n128_i32[0]);
      MEMORY[0x266771550](v123);

      MEMORY[0x266771550](8236, 0xE200000000000000);

      v124 = specialized toString<A>(_:)(v122);
      v126 = v125;
      v163.value._countAndFlagsBits = 123;
      v163.value._object = 0xE100000000000000;

      MEMORY[0x266771550](v124, v126);

      goto LABEL_58;
    case 0x14:
      *&v152 = vextq_s8(v3, v3, 8uLL).u64[0];
      v159 = *(v1 + 16);
      v61 = specialized toString<A>(_:)(v3.n128_f64[0]);
      MEMORY[0x266771550](v61);

      MEMORY[0x266771550](8236, 0xE200000000000000);

      v62 = specialized toString<A>(_:)(v152);
      v64 = v63;

      MEMORY[0x266771550](v62, v64);

      MEMORY[0x266771550](8236, 0xE200000000000000);

      v6 = specialized toString<A>(_:)(v159);
      goto LABEL_48;
    case 0x15:
      *&v149 = vextq_s8(v3, v3, 8uLL).u64[0];
      *&v153 = vextq_s8(*(v1 + 16), *(v1 + 16), 8uLL).u64[0];
      v160 = *(v1 + 16);
      v65 = specialized toString<A>(_:)(v3.n128_f64[0]);
      MEMORY[0x266771550](v65);

      MEMORY[0x266771550](8236, 0xE200000000000000);

      v66 = specialized toString<A>(_:)(v149);
      v68 = v67;

      MEMORY[0x266771550](v66, v68);

      MEMORY[0x266771550](8236, 0xE200000000000000);

      v69 = specialized toString<A>(_:)(v160);
      v71 = v70;

      MEMORY[0x266771550](v69, v71);

      MEMORY[0x266771550](8236, 0xE200000000000000);

      v6 = specialized toString<A>(_:)(v153);
LABEL_48:
      v85 = v6;
      v86 = v7;
      v163.value._countAndFlagsBits = 123;
      v163.value._object = 0xE100000000000000;

      MEMORY[0x266771550](v85, v86);

LABEL_58:

      MEMORY[0x266771550](125, 0xE100000000000000);
      goto LABEL_59;
    case 0x16:
      v108 = *v1;
      v109 = CGColorRef.components.getter();
      if (!v109)
      {
        goto LABEL_77;
      }

      v110 = v109;
      v111 = *(v109 + 16);
      if (!v111)
      {
        goto LABEL_78;
      }

      v163.value._countAndFlagsBits = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v111, 0);
      v112 = 32;
      v113 = v163.value._countAndFlagsBits;
      do
      {
        v114 = *(v110 + v112);
        v115 = Double.description.getter();
        v163.value._countAndFlagsBits = v113;
        v118 = *(v113 + 16);
        v117 = *(v113 + 24);
        if (v118 >= v117 >> 1)
        {
          v120 = v115;
          v121 = v116;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v117 > 1), v118 + 1, 1);
          v116 = v121;
          v115 = v120;
          v113 = v163.value._countAndFlagsBits;
        }

        *(v113 + 16) = v118 + 1;
        v119 = v113 + 16 * v118;
        *(v119 + 32) = v115;
        *(v119 + 40) = v116;
        v112 += 8;
        --v111;
      }

      while (v111);
      goto LABEL_76;
    case 0x17:
      v127 = *v1;
      v128 = CGColorRef.components.getter();
      if (v128)
      {
        v129 = v128;
        v130 = *(v128 + 16);
        if (v130)
        {
          v163.value._countAndFlagsBits = MEMORY[0x277D84F90];
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v130, 0);
          v131 = 32;
          v113 = v163.value._countAndFlagsBits;
          do
          {
            v132 = *(v129 + v131);
            v133 = Double.description.getter();
            v163.value._countAndFlagsBits = v113;
            v136 = *(v113 + 16);
            v135 = *(v113 + 24);
            if (v136 >= v135 >> 1)
            {
              v138 = v133;
              v139 = v134;
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v135 > 1), v136 + 1, 1);
              v134 = v139;
              v133 = v138;
              v113 = v163.value._countAndFlagsBits;
            }

            *(v113 + 16) = v136 + 1;
            v137 = v113 + 16 * v136;
            *(v137 + 32) = v133;
            *(v137 + 40) = v134;
            v131 += 8;
            --v130;
          }

          while (v130);
LABEL_76:
        }

        else
        {
LABEL_78:

          v113 = MEMORY[0x277D84F90];
        }

        v163.value._countAndFlagsBits = v113;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        lazy protocol witness table accessor for type [String] and conformance [A]();
        v141 = BidirectionalCollection<>.joined(separator:)();

        return v141;
      }

      else
      {
LABEL_77:
        lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
        swift_allocError();
        *v140 = 48;
        *(v140 + 8) = 0xD00000000000003ALL;
        *(v140 + 16) = 0x8000000265F30070;
        return swift_willThrow();
      }

    default:
      v164 = *v1;
      if (v3.n128_u8[0])
      {
        return 1702195828;
      }

      else
      {
        return 0x65736C6166;
      }
  }
}

uint64_t mapGraph(_:into:)(uint64_t a1, unint64_t a2)
{
  v63[0] = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 2, 0);
  v4 = v63[0];
  v6 = *(v63[0] + 16);
  v5 = *(v63[0] + 24);
  v7 = v5 >> 1;
  v8 = v6 + 1;
  if (v5 >> 1 <= v6)
  {
LABEL_38:
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v8, 1);
    v4 = v63[0];
    v5 = *(v63[0] + 24);
    v7 = v5 >> 1;
  }

  *(v4 + 16) = v8;
  v9 = v4 + 16 * v6;
  *(v9 + 32) = 0x656D756772615F5FLL;
  *(v9 + 40) = 0xEB0000000073746ELL;
  v6 += 2;
  if (v7 <= v8)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6, 1);
    v4 = v63[0];
  }

  v57 = a2;
  *(v4 + 16) = v6;
  v10 = v4 + 16 * v8;
  *(v10 + 32) = 0x746C757365725F5FLL;
  *(v10 + 40) = 0xE900000000000073;
  v11 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v4);

  v54 = a1;
  v12 = *(a1 + 40);

  v13 = specialized Graph.nodes.getter(v56);
  a1 = v13;
  v60 = *(v13 + 16);
  if (v60)
  {
    a2 = 0;
    v59 = v13 + 32;
    v14 = v11 + 56;
    v15 = MEMORY[0x277D84F90];
    v58 = v13;
    do
    {
      v82 = v15;
      while (1)
      {
        v5 = *(a1 + 16);
        if (a2 >= v5)
        {
          __break(1u);
          goto LABEL_38;
        }

        v16 = v59 + 40 * a2;
        v17 = *(v16 + 16);
        v61 = v17;
        v62 = *v16;
        v18 = *(v16 + 32);
        ++a2;
        v6 = *(v16 + 16);
        if (v17 >> 62 || !*(v11 + 16))
        {
          break;
        }

        v8 = *(v17 + 16);
        v19 = *(v17 + 24);
        v20 = *(v11 + 40);
        Hasher.init(_seed:)();
        swift_retain_n();
        v21 = v18;

        String.hash(into:)();
        v22 = Hasher._finalize()();
        v23 = -1 << *(v11 + 32);
        v24 = v22 & ~v23;
        if (((*(v14 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
        {
LABEL_19:

          a1 = v58;
          v15 = v82;
          v18 = v21;
          goto LABEL_20;
        }

        v25 = ~v23;
        while (1)
        {
          v26 = (*(v11 + 48) + 16 * v24);
          v27 = *v26 == v8 && v26[1] == v19;
          if (v27 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          v24 = (v24 + 1) & v25;
          if (((*(v14 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
          {
            goto LABEL_19;
          }
        }

        a1 = v58;
        v15 = v82;
        if (a2 == v60)
        {
          goto LABEL_28;
        }
      }

LABEL_20:
      v64 = v15;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 16) + 1, 1);
        v15 = v64;
      }

      v6 = *(v15 + 16);
      v28 = *(v15 + 24);
      v8 = v6 + 1;
      if (v6 >= v28 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v6 + 1, 1);
        v15 = v64;
      }

      *(v15 + 16) = v8;
      v29 = v15 + 40 * v6;
      *(v29 + 32) = v62;
      *(v29 + 48) = v61;
      *(v29 + 64) = v18;
    }

    while (a2 != v60);
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

LABEL_28:

  v30 = specialized Sequence.compactMap<A>(_:)(v15, v57);
  if (!v55)
  {
    v31 = v30;

    v64 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC11ShaderGraph0D0V4NodeVyAC010SGDataTypeD0V11PersonalityV_G_AC0cdE0V2IDVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    specialized Sequence.forEach(_:)(v31, &v64);

    v33 = v57[10];
    v32 = v57[11];
    v35 = v57[12];
    v34 = v57[13];
    v37 = v57[16];
    v36 = v57[17];
    v38 = v57[18];
    v39 = v57[19];

    outlined copy of NodePersonality(v33);
    outlined copy of NodePersonality(v37);
    specialized SGDataTypeGraph.argumentsNode.getter(v56, v65);
    if (v66)
    {
      v82 = v36;
      v71 = v65[0];
      *v72 = v65[1];
      *&v72[16] = v66;
      specialized SGDataTypeGraph.resultNode.getter(v56, v67);
      if (v68)
      {
        v69 = v67[0];
        *v70 = v67[1];
        *&v70[16] = v68;
        v75 = *&v72[8];
        v76 = *v72;
        outlined init with copy of SGDataTypeGraph.PersonalityKind(&v76, v63);
        outlined init with copy of String(&v75, v63);
        v40 = v64;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v63[0] = v40;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v34, &v71, isUniquelyReferenced_nonNull_native);
        outlined destroy of SGDataTypeGraph.PersonalityKind(&v76);
        outlined destroy of String(&v75);
        v42 = v63[0];
        v77 = *&v70[8];
        v78 = *v70;
        outlined init with copy of SGDataTypeGraph.PersonalityKind(&v78, v63);
        outlined init with copy of String(&v77, v63);
        v43 = swift_isUniquelyReferenced_nonNull_native();
        v63[0] = v42;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v39, &v69, v43);
        outlined destroy of SGDataTypeGraph.PersonalityKind(&v78);
        outlined destroy of String(&v77);
        v64 = v63[0];
        v44 = specialized Graph.sinkNodes()(v56);
        EdgeIteratorV_7initialAEyx_GACyxG_SayAC4NodeVyx_GGtcfCAA010SGDataTypeB0V11PersonalityV_Tt1g5Tf4ng_n = _s11ShaderGraph0B0V22DepthFirstEdgeIteratorV_7initialAEyx_GACyxG_SayAC4NodeVyx_GGtcfCAA010SGDataTypeB0V11PersonalityV_Tt1g5Tf4ng_n(v56, v44);
        v47 = v46;
        v49 = v48;

        v81[0] = *(v54 + 8);
        v50 = *(v54 + 24);
        v79 = *(v54 + 32);
        v80 = v50;

        outlined init with copy of String(v81, v63);
        outlined init with copy of [Input](&v80, v63, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMR);
        outlined init with copy of [Input](&v79, v63, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMR);
        v51 = specialized Sequence.compactMap<A>(_:)(EdgeIteratorV_7initialAEyx_GACyxG_SayAC4NodeVyx_GGtcfCAA010SGDataTypeB0V11PersonalityV_Tt1g5Tf4ng_n, v47, v49, v54, &v64, v57);
        outlined destroy of String(v81);
        outlined destroy of [Input](&v80, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMR);
        outlined destroy of [Input](&v79, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMR);

        specialized Sequence.forEach(_:)(v51);
        outlined destroy of SGDataTypeGraph.PersonalityKind(&v76);
        outlined destroy of String(&v75);
        outlined destroy of SGDataTypeGraph.PersonalityKind(&v78);
        outlined destroy of String(&v77);
        outlined consume of NodePersonality(v37);

        outlined consume of NodePersonality(v33);
      }

      v74 = *v72;
      outlined destroy of SGDataTypeGraph.PersonalityKind(&v74);
      v73 = *&v72[8];
      outlined destroy of String(&v73);
    }

    else
    {
    }

    lazy protocol witness table accessor for type APIError and conformance APIError();
    swift_allocError();
    *v52 = 0xD00000000000001DLL;
    *(v52 + 8) = 0x8000000265F30180;
    *(v52 + 16) = 21;
    swift_willThrow();
    outlined consume of NodePersonality(v37);

    outlined consume of NodePersonality(v33);
  }
}

uint64_t userGraphNode(in:from:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, void *a3@<X8>)
{
  v4 = a2;
  v5 = *(a2 + 2);
  v6 = a2[1];
  v112 = *a2;
  v113 = v6;
  *&v114 = *(a2 + 4);
  v7 = v5 >> 62;
  v94 = a3;
  v96 = a1;
  if (v5 >> 62)
  {
    if (v7 != 1)
    {
      goto LABEL_6;
    }

    v8 = 40;
  }

  else
  {
    v8 = 32;
  }

  v9 = *(*((v5 & 0x3FFFFFFFFFFFFFFFLL) + v8) + 16);
LABEL_6:
  MEMORY[0x28223BE20](a1);
  v91 = &v112;
  v11 = specialized Sequence.compactMap<A>(_:)(partial apply for specialized closure #1 in Graph.Node.inputs.getter, v90, 0, v10);
  v12 = *(v11 + 16);
  v97 = v5 >> 62;
  v98 = v5;
  if (v12)
  {
    v99 = v3;
    v136 = v4;
    *&v112 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12, 0);
    v13 = v112;
    v95 = v11;
    v14 = (v11 + 64);
    do
    {
      v15 = *(v14 - 2);
      v16 = *(v14 - 1);
      v17 = *v14;

      v18 = specialized SGDataType.materialXDataType.getter(v17);
      *&v112 = v13;
      v20 = *(v13 + 16);
      v19 = *(v13 + 24);

      if (v20 >= v19 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1);
        v13 = v112;
      }

      v14 += 6;
      *(v13 + 16) = v20 + 1;
      v21 = (v13 + 24 * v20);
      v21[4] = v15;
      v21[5] = v16;
      v21[6] = v18;
      --v12;
    }

    while (v12);

    LODWORD(v7) = v97;
    v5 = v98;
    v4 = v136;
    v3 = v99;
  }

  else
  {

    v13 = MEMORY[0x277D84F90];
  }

  v99 = v13;
  v23 = v4[1];
  v112 = *v4;
  v113 = v23;
  *&v114 = *(v4 + 4);
  if (v7)
  {
    if (v7 != 1)
    {
      goto LABEL_18;
    }

    v24 = 48;
  }

  else
  {
    v24 = 40;
  }

  v25 = *(*((v5 & 0x3FFFFFFFFFFFFFFFLL) + v24) + 16);
LABEL_18:
  MEMORY[0x28223BE20](v22);
  v91 = &v112;
  v27 = specialized Sequence.compactMap<A>(_:)(partial apply for specialized closure #1 in Graph.Node.outputs.getter, v90, 0, v26);
  v28 = *(v27 + 16);
  v95 = v3;
  if (v28)
  {
    *&v112 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v28, 0);
    v29 = v112;
    v93 = v27;
    v30 = (v27 + 64);
    v31 = v99;
    do
    {
      v32 = *(v30 - 1);
      v136 = *(v30 - 2);
      v33 = *v30;

      v34 = specialized SGDataType.materialXDataType.getter(v33);
      *&v112 = v29;
      v36 = *(v29 + 16);
      v35 = *(v29 + 24);

      if (v36 >= v35 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1);
        v31 = v99;
        v29 = v112;
      }

      v30 += 5;
      *(v29 + 16) = v36 + 1;
      v37 = (v29 + 24 * v36);
      v37[4] = v136;
      v37[5] = v32;
      v37[6] = v34;
      --v28;
    }

    while (v28);

    v38 = v95;
    LODWORD(v7) = v97;
    v5 = v98;
    v39 = &v112;
    if (v97)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v38 = v3;

    v29 = MEMORY[0x277D84F90];
    v31 = v99;
    v39 = &v112;
    if (v7)
    {
LABEL_24:
      if (v7 != 1)
      {
        v61 = *((v5 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v63 = *((v5 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
        v62 = *((v5 & 0x3FFFFFFFFFFFFFFFLL) + 0x40);
        LOBYTE(v116) = *((v5 & 0x3FFFFFFFFFFFFFFFLL) + 0x60);
        v64 = *((v5 & 0x3FFFFFFFFFFFFFFFLL) + 0x50);
        v114 = v62;
        v115 = v64;
        v112 = *((v5 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
        v113 = v63;
        v65 = specialized SGDataType.materialXDataType.getter(v61);
        v66 = swift_allocObject();
        v67 = v115;
        *(v66 + 48) = v114;
        *(v66 + 64) = v67;
        *(v66 + 80) = v116;
        v68 = v113;
        *(v66 + 16) = v112;
        *(v66 + 32) = v68;
        *(v66 + 88) = v65;
        swift_retain_n();
        outlined init with copy of SGDataTypeStorage(&v112, &v102);
        UserGraph.insertNode(inputs:outputs:shaderGraphData:)(v31, v29, v66, &v128);

        v57 = v131;
        v58 = v130;
        v59 = v129;
        v60 = v128;
        goto LABEL_47;
      }

      v40 = *((v5 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      v132[0] = *((v5 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v132[1] = v40;
      v133 = *((v5 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
      v41 = v40;
      v97 = *(&v132[0] + 1);
      v42 = *(&v40 + 1);
      v134 = v40 >> 64;
      v98 = v40;
      v135[0] = v133;
      v43 = *(*(&v40 + 1) + 16);
      v93 = v29;
      if (v43)
      {

        outlined init with copy of [Input](&v134, &v112, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMR);
        outlined init with copy of [Input](v135, &v112, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMR);
        outlined init with copy of [Input](v135 + 8, &v112, &_s11ShaderGraph0B0VyAA010SGDataTypeB0V11PersonalityVGMd, &_s11ShaderGraph0B0VyAA010SGDataTypeB0V11PersonalityVGMR);
        *&v112 = MEMORY[0x277D84F90];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v43, 0);
        v44 = v112;
        v38 = (v42 + 48);
        do
        {
          v46 = *(v38 - 2);
          v45 = *(v38 - 1);
          v47 = *v38;

          v48 = specialized SGDataType.materialXDataType.getter(v47);
          *&v112 = v44;
          v50 = *(v44 + 16);
          v49 = *(v44 + 24);

          if (v50 >= v49 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v49 > 1), v50 + 1, 1);
            v44 = v112;
          }

          v38 += 4;
          *(v44 + 16) = v50 + 1;
          v51 = (v44 + 24 * v50);
          v51[4] = v46;
          v51[5] = v45;
          v51[6] = v48;
          --v43;
        }

        while (v43);
        v29 = v93;
        v41 = v98;
      }

      else
      {

        outlined init with copy of [Input](&v134, &v112, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMR);
        outlined init with copy of [Input](v135, &v112, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMR);
        outlined init with copy of [Input](v135 + 8, &v112, &_s11ShaderGraph0B0VyAA010SGDataTypeB0V11PersonalityVGMd, &_s11ShaderGraph0B0VyAA010SGDataTypeB0V11PersonalityVGMR);
        v44 = MEMORY[0x277D84F90];
      }

      v92 = v44;
      v54 = *&v135[0];
      v39 = *(*&v135[0] + 16);
      v69 = MEMORY[0x277D84F90];
      if (v39)
      {
        *&v112 = MEMORY[0x277D84F90];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v39, 0);
        v69 = v112;
        v38 = (v54 + 48);
        do
        {
          v54 = *(v38 - 1);
          v136 = *(v38 - 2);
          v70 = *v38;

          v71 = specialized SGDataType.materialXDataType.getter(v70);
          *&v112 = v69;
          v73 = *(v69 + 16);
          v72 = *(v69 + 24);

          if (v73 >= v72 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v72 > 1), v73 + 1, 1);
            v69 = v112;
          }

          v38 += 3;
          *(v69 + 16) = v73 + 1;
          v74 = (v69 + 24 * v73);
          v74[4] = v136;
          v74[5] = v54;
          v74[6] = v71;
          v39 = (v39 - 1);
        }

        while (v39);
        v29 = v93;
        v41 = v98;
      }

      v53 = v96;
      v75 = *(v96 + 72);
      v76 = v75 + 1;
      if (!__OFADD__(v75, 1))
      {
        *(v96 + 72) = v76;

        v77 = specialized UserGraph.init(id:label:inputs:outputs:)(v76, v97, v41, v92, v69, &v112);
        v78 = v95;
        mapGraph(_:into:)(v132, &v112, v77);
        if (v78)
        {
          v110 = v120;
          v111[0] = v121[0];
          *(v111 + 9) = *(v121 + 9);
          v106 = v116;
          v107 = v117;
          v108 = v118;
          v109 = v119;
          v102 = v112;
          v103 = v113;
          v104 = v114;
          v105 = v115;
          outlined destroy of UserGraph(&v102);

          outlined destroy of [Input](&v134, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMR);
          outlined destroy of [Input](v135, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMR);
          return outlined destroy of [Input](v135 + 8, &_s11ShaderGraph0B0VyAA010SGDataTypeB0V11PersonalityVGMd, &_s11ShaderGraph0B0VyAA010SGDataTypeB0V11PersonalityVGMR);
        }

        outlined destroy of [Input](&v134, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMR);
        outlined destroy of [Input](v135, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMR);
        outlined destroy of [Input](v135 + 8, &_s11ShaderGraph0B0VyAA010SGDataTypeB0V11PersonalityVGMd, &_s11ShaderGraph0B0VyAA010SGDataTypeB0V11PersonalityVGMR);
        v79 = swift_allocObject();
        v80 = v121[0];
        v100[8] = v120;
        v101[0] = v121[0];
        *(v101 + 9) = *(v121 + 9);
        v81 = v116;
        v82 = v117;
        v100[4] = v116;
        v100[5] = v117;
        v84 = v118;
        v83 = v119;
        v100[6] = v118;
        v100[7] = v119;
        v85 = v112;
        v86 = v113;
        v100[0] = v112;
        v100[1] = v113;
        v88 = v114;
        v87 = v115;
        v100[2] = v114;
        v100[3] = v115;
        *(v79 + 144) = v120;
        *(v79 + 160) = v80;
        *(v79 + 169) = *(v121 + 9);
        *(v79 + 80) = v81;
        *(v79 + 96) = v82;
        *(v79 + 112) = v84;
        *(v79 + 128) = v83;
        *(v79 + 16) = v85;
        *(v79 + 32) = v86;
        *(v79 + 48) = v88;
        *(v79 + 64) = v87;
        outlined init with copy of UserGraph(v100, &v102);
        UserGraph.insertNode(inputs:outputs:shaderGraphData:)(v99, v29, v79 | 0xC000000000000000, &v124);

        v110 = v120;
        v111[0] = v121[0];
        *(v111 + 9) = *(v121 + 9);
        v106 = v116;
        v107 = v117;
        v108 = v118;
        v109 = v119;
        v102 = v112;
        v103 = v113;
        v104 = v114;
        v105 = v115;
        result = outlined destroy of UserGraph(&v102);
        v57 = v127;
        v58 = v126;
        v59 = v125;
        v60 = v124;
        goto LABEL_47;
      }

      __break(1u);
      goto LABEL_50;
    }
  }

  v52 = v5 & 0x3FFFFFFFFFFFFFFFLL;
  v54 = *((v5 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  v53 = *(v52 + 24);
  v55 = one-time initialization token for shared;

  if (v55 != -1)
  {
LABEL_50:
    swift_once();
  }

  specialized NodeDefStore.createNode(in:nodeDefName:)(v54, v53, static NodeDefStore.shared, &v122);

  if (v38)
  {
    return result;
  }

  v57 = v123;
  v58 = *(v39 + 200);
  v59 = *(v39 + 184);
  v60 = v122;
LABEL_47:
  v89 = v94;
  *v94 = v60;
  *(v89 + 1) = v59;
  *(v89 + 3) = v58;
  *(v89 + 40) = v57;
  return result;
}

uint64_t closure #4 in mapGraph(_:into:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *result;
  if ((*result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_29;
  }

  v6 = *(a2 + 40);
  v7 = *(v6 + 16);
  if (v5 >= v7)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v8 = v6 + 32;
  v9 = (v6 + 32 + 88 * v5);
  v10 = v9[4];
  if (!v10)
  {
LABEL_10:
    *(a5 + 80) = 0u;
    *(a5 + 96) = 0u;
    *(a5 + 48) = 0u;
    *(a5 + 64) = 0u;
    *(a5 + 16) = 0u;
    *(a5 + 32) = 0u;
    *a5 = 0u;
    return result;
  }

  v12 = *(result + 16);
  v13 = *(result + 24);
  v14 = *(result + 40);
  v15 = *(result + 56);
  v16 = *(result + 64);
  result = *v9;
  v17 = v9[1];
  v19 = v9[2];
  v18 = v9[3];
  v69[0] = *v9;
  v69[1] = v17;
  v69[2] = v19;
  v69[3] = v18;
  v69[4] = v10;
  if (v14 >= v7)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v20 = (v8 + 88 * v14);
  v21 = v20[4];
  if (!v21)
  {
    goto LABEL_10;
  }

  v49 = v13;
  v50 = v12;
  v54 = a4;
  v47 = v16;
  v48 = v15;
  v22 = v20[2];
  v23 = v20[3];
  v24 = v20[1];
  v68[0] = *v20;
  v68[1] = v24;
  v68[2] = v22;
  v68[3] = v23;
  v68[4] = v21;
  v25 = *a3;
  v26 = *(*a3 + 16);
  outlined copy of Graph<SGDataTypeGraph.Personality>.Node?(result, v17, v19, v18, v10);
  outlined copy of Graph<SGDataTypeGraph.Personality>.Node?(v68[0], v24, v22, v23, v21);
  if (!v26)
  {

    goto LABEL_12;
  }

  result = specialized __RawDictionaryStorage.find<A>(_:)(v69);
  if ((v27 & 1) == 0 || (v28 = *(*(v25 + 56) + 8 * result), v28 == -7))
  {

LABEL_12:

LABEL_13:
    *(a5 + 80) = 0u;
    *(a5 + 96) = 0u;
    *(a5 + 48) = 0u;
    *(a5 + 64) = 0u;
    *(a5 + 16) = 0u;
    *(a5 + 32) = 0u;
    *a5 = 0u;
    return result;
  }

  if ((v28 & 0x8000000000000000) != 0)
  {
    goto LABEL_31;
  }

  v29 = *(v54 + 64);
  if (v28 >= *(v29 + 16))
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v30 = (v29 + 48 * v28);
  v32 = v30[4];
  v31 = v30[5];
  v33 = v30[6];
  v34 = *a3;
  v35 = *(*a3 + 16);
  outlined copy of NodePersonality(v32);
  if (!v35)
  {

LABEL_25:

    outlined consume of NodePersonality(v32);

    goto LABEL_13;
  }

  result = specialized __RawDictionaryStorage.find<A>(_:)(v68);
  if ((v36 & 1) == 0)
  {
    goto LABEL_25;
  }

  v37 = *(*(v34 + 56) + 8 * result);
  if (v37 == -7)
  {
    goto LABEL_25;
  }

  if ((v37 & 0x8000000000000000) != 0)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v53 = v32;
  v38 = *(v54 + 64);
  if (v37 >= *(v38 + 16))
  {
LABEL_34:
    __break(1u);
    return result;
  }

  v39 = (v38 + 48 * v37);
  v41 = v39[4];
  v40 = v39[5];
  v42 = v39[6];
  specialized ShaderGraphNode.output(labeled:)(&v57, v50, v49, v33);
  if (!v58)
  {

    outlined copy of NodePersonality(v41);

    outlined consume of NodePersonality(v53);

    outlined consume of NodePersonality(v41);

    goto LABEL_13;
  }

  v55 = v58;
  v51 = v57;
  specialized ShaderGraphNode.output(labeled:)(&v62, v48, v47, v40);

  outlined copy of NodePersonality(v41);
  outlined consume of NodePersonality(v53);

  outlined consume of NodePersonality(v41);

  v43 = v63;
  if (!v63)
  {

    v67 = v59;
    result = outlined destroy of String(&v67);
    goto LABEL_13;
  }

  v44 = v60;
  *(a5 + 16) = v59;
  *(a5 + 32) = v44;
  v45 = v65;
  *(a5 + 72) = v64;
  v46 = v62;
  *a5 = v51;
  *(a5 + 8) = v55;
  *(a5 + 48) = v61;
  *(a5 + 56) = v46;
  *(a5 + 64) = v43;
  *(a5 + 88) = v45;
  *(a5 + 104) = v66;
  return result;
}

uint64_t SGDataType.metalDataType.getter(uint64_t a1)
{
  result = 0;
  switch(a1)
  {
    case 1:
      if (one-time initialization token for BOOL != -1)
      {
        swift_once();
      }

      v3 = &static MetalDataType.BOOL;
      goto LABEL_59;
    case 2:
      if (one-time initialization token for uint8 != -1)
      {
        swift_once();
      }

      v3 = &static MetalDataType.uint8;
      goto LABEL_59;
    case 3:
      if (one-time initialization token for int32 != -1)
      {
        swift_once();
      }

      v3 = &static MetalDataType.int32;
      goto LABEL_59;
    case 6:
      if (one-time initialization token for uint32 != -1)
      {
        swift_once();
      }

      v3 = &static MetalDataType.uint32;
      goto LABEL_59;
    case 7:
      if (one-time initialization token for half != -1)
      {
        swift_once();
      }

      v3 = &static MetalDataType.half;
      goto LABEL_59;
    case 9:
      if (one-time initialization token for float != -1)
      {
        swift_once();
      }

      v3 = &static MetalDataType.float;
      goto LABEL_59;
    case 13:
      if (one-time initialization token for texture2d_half != -1)
      {
        swift_once();
      }

      v3 = &static MetalDataType.texture2d_half;
      goto LABEL_59;
    case 14:
      if (one-time initialization token for float2x2 != -1)
      {
        swift_once();
      }

      v3 = &static MetalDataType.float2x2;
      goto LABEL_59;
    case 15:
      if (one-time initialization token for float3x3 != -1)
      {
        swift_once();
      }

      v3 = &static MetalDataType.float3x3;
      goto LABEL_59;
    case 17:
      if (one-time initialization token for float4x4 != -1)
      {
        swift_once();
      }

      v3 = &static MetalDataType.float4x4;
      goto LABEL_59;
    case 18:
    case 29:
    case 44:
      if (one-time initialization token for float4 != -1)
      {
        swift_once();
      }

      v3 = &static MetalDataType.float4;
      goto LABEL_59;
    case 20:
    case 30:
    case 45:
      if (one-time initialization token for half4 != -1)
      {
        swift_once();
      }

      v3 = &static MetalDataType.half4;
      goto LABEL_59;
    case 21:
    case 49:
      if (one-time initialization token for float2 != -1)
      {
        swift_once();
      }

      v3 = &static MetalDataType.float2;
      goto LABEL_59;
    case 22:
    case 47:
      if (one-time initialization token for half2 != -1)
      {
        swift_once();
      }

      v3 = &static MetalDataType.half2;
      goto LABEL_59;
    case 24:
      if (one-time initialization token for int2 != -1)
      {
        swift_once();
      }

      v3 = &static MetalDataType.int2;
      goto LABEL_59;
    case 25:
    case 32:
    case 35:
    case 38:
    case 41:
    case 52:
      if (one-time initialization token for float3 != -1)
      {
        swift_once();
      }

      v3 = &static MetalDataType.float3;
      goto LABEL_59;
    case 26:
    case 33:
    case 36:
    case 39:
    case 42:
    case 50:
      if (one-time initialization token for half3 != -1)
      {
        swift_once();
      }

      v3 = &static MetalDataType.half3;
      goto LABEL_59;
    case 28:
      if (one-time initialization token for int3 != -1)
      {
        swift_once();
      }

      v3 = &static MetalDataType.int3;
      goto LABEL_59;
    case 31:
      if (one-time initialization token for int4 != -1)
      {
        swift_once();
      }

      v3 = &static MetalDataType.int4;
LABEL_59:
      v4 = *v3;

      break;
    default:
      return result;
  }

  return result;
}

void closure #1 in SGGraph.replaceDeprecatedAndRedundantNodes()(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *a1 + OBJC_IVAR___SGNode_data;
  v5 = *(v4 + 80);
  if (v5 > 0x3F)
  {
    return;
  }

  v82 = v2;
  v71 = a1[1];
  v8 = *(v4 + 32);
  v7 = *(v4 + 40);
  inited = *(v4 + 24);
  v10 = *v4;
  v11 = *(v4 + 8);
  v12 = *(a2 + 16);
  outlined copy of NodeData(*v4, v11, *(v4 + 16), inited, v8, v7, *(v4 + 48), *(v4 + 56), *(v4 + 64), *(v4 + 72), v5);
  if (!v12)
  {

    outlined consume of MaterialXAvailability(v8, v7);

    return;
  }

  v13 = specialized __RawDictionaryStorage.find<A>(_:)(v10, v11);
  v15 = v14;

  if ((v15 & 1) == 0)
  {

    outlined consume of MaterialXAvailability(v8, v7);
    return;
  }

  v16 = *(a2 + 56) + 24 * v13;
  v18 = *v16;
  v17 = *(v16 + 8);
  v19 = *(v16 + 16);

  outlined consume of MaterialXAvailability(v8, v7);
  v20 = OBJC_IVAR___SGNode_outputs;
  v21 = *(v3 + OBJC_IVAR___SGNode_outputs);
  if (v21 >> 62)
  {
    if (v21 < 0)
    {
      v32 = *(v3 + OBJC_IVAR___SGNode_outputs);
    }

    if (__CocoaSet.count.getter() != 1)
    {
      goto LABEL_27;
    }
  }

  else if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
  {
    goto LABEL_27;
  }

  v22 = *(v3 + v20);
  if (!(v22 >> 62))
  {
    if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_8;
    }

LABEL_27:

    lazy protocol witness table accessor for type APIError and conformance APIError();
    swift_allocError();
    *v33 = 0xD000000000000034;
    *(v33 + 8) = 0x8000000265F300F0;
    *(v33 + 16) = 5;
    swift_willThrow();
    return;
  }

  if (!__CocoaSet.count.getter())
  {
    goto LABEL_27;
  }

LABEL_8:
  v69 = v18;
  v70 = v19;
  if ((v22 & 0xC000000000000001) != 0)
  {
    v23 = MEMORY[0x266772030](0, v22);
  }

  else
  {
    if (!*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_59;
    }

    v23 = *(v22 + 32);
  }

  v18 = v23;
  v24 = SGOutput.edges.getter();
  v8 = v24;
  if (v24 >> 62)
  {
    v25 = __CocoaSet.count.getter();
    if (v25)
    {
LABEL_13:
      *&v73 = MEMORY[0x277D84F90];
      specialized ContiguousArray.reserveCapacity(_:)();
      if ((v25 & 0x8000000000000000) == 0)
      {
        v26 = 0;
        do
        {
          if ((v8 & 0xC000000000000001) != 0)
          {
            v27 = MEMORY[0x266772030](v26, v8);
          }

          else
          {
            v27 = *(v8 + 8 * v26 + 32);
          }

          v28 = v27;
          ++v26;
          v29 = OBJC_IVAR___SGEdge_to;
          swift_beginAccess();
          v30 = *&v28[v29];

          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v31 = *(v73 + 16);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        while (v25 != v26);

        v8 = v73;
        goto LABEL_31;
      }

LABEL_59:
      __break(1u);
      goto LABEL_60;
    }
  }

  else
  {
    v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v25)
    {
      goto LABEL_13;
    }
  }

  v8 = MEMORY[0x277D84F90];
LABEL_31:
  v2 = v82;
  SGGraph.remove(node:)(v3);
  if (v82)
  {
  }

  else
  {
    v22 = *(v3 + OBJC_IVAR___SGNode_name);
    inited = *(v3 + OBJC_IVAR___SGNode_name + 8);
    v34 = one-time initialization token for shared;

    if (v34 != -1)
    {
      goto LABEL_61;
    }

    while (1)
    {
      v35 = specialized static SGNode.create(nodeDefName:name:store:)(v69, v17, v22, inited, static BuiltInDefinitionStore.shared);
      v22 = v2;
      if (v2)
      {
        break;
      }

      v36 = v35;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_265F20CD0;
      *(inited + 32) = v36;
      v37 = v36;
      v83.value._rawValue = inited;
      SGGraph.insert(_:)(v83);
      v38 = v2;
      if (v2)
      {

        swift_setDeallocating();
        v39 = *(inited + 16);
        swift_arrayDestroy();
        return;
      }

      v67 = v8;
      v68 = v18;
      swift_setDeallocating();
      v40 = *(inited + 16);
      swift_arrayDestroy();
      v41 = *(v70 + 16);
      v82 = v37;
      v69 = v41;
      if (!v41)
      {
LABEL_44:

        v54 = *&v37[OBJC_IVAR___SGNode_outputs];
        if (v54 >> 62)
        {
          goto LABEL_64;
        }

        v55 = v67;
        v56 = v68;
        if (!*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_65:

          lazy protocol witness table accessor for type APIError and conformance APIError();
          swift_allocError();
          *v65 = 0xD000000000000040;
          *(v65 + 8) = 0x8000000265F30130;
          *(v65 + 16) = 5;
          swift_willThrow();

          return;
        }

        while (2)
        {
          if ((v54 & 0xC000000000000001) != 0)
          {

            v57 = MEMORY[0x266772030](0, v54);

            if (!(v55 >> 62))
            {
              goto LABEL_49;
            }
          }

          else
          {
            if (!*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              return;
            }

            v57 = *(v54 + 32);
            if (!(v55 >> 62))
            {
LABEL_49:
              v58 = v38;
              v59 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (!v59)
              {
                goto LABEL_68;
              }

LABEL_50:
              v54 = 0;
              v60 = v55 & 0xC000000000000001;
              v61 = v55 & 0xFFFFFFFFFFFFFF8;
              while (1)
              {
                v38 = v58;
                if (v60)
                {
                  v62 = MEMORY[0x266772030](v54, v67);
                }

                else
                {
                  if (v54 >= *(v61 + 16))
                  {
                    goto LABEL_63;
                  }

                  v62 = *(v67 + 8 * v54 + 32);
                }

                v63 = v62;
                v64 = v54 + 1;
                if (__OFADD__(v54, 1))
                {
                  break;
                }

                SGGraph.connect(_:to:)(v57, v62);

                v58 = v38;
                ++v54;
                if (v64 == v59)
                {
                  goto LABEL_68;
                }
              }

              __break(1u);
LABEL_63:
              __break(1u);
LABEL_64:
              v55 = v67;
              v56 = v68;
              if (!__CocoaSet.count.getter())
              {
                goto LABEL_65;
              }

              continue;
            }
          }

          break;
        }

        v66 = __CocoaSet.count.getter();
        v58 = v38;
        v59 = v66;
        if (!v66)
        {
LABEL_68:

          return;
        }

        goto LABEL_50;
      }

      v8 = 0;
      v42 = (v70 + 64);
      v18 = &_s11ShaderGraph17BuiltInDefinitionV9InputSpecV_AA17SGDataTypeStorageOtMd;
      v17 = &_s11ShaderGraph17BuiltInDefinitionV9InputSpecV_AA17SGDataTypeStorageOtMR;
      while (v8 < *(v70 + 16))
      {
        v43 = *(v42 - 2);
        v44 = *v42;
        v74 = *(v42 - 1);
        v75 = v44;
        v73 = v43;
        v45 = v42[1];
        v46 = v42[2];
        v47 = v42[3];
        v79 = *(v42 + 64);
        v77 = v46;
        v78 = v47;
        v76 = v45;
        v48 = *v42;
        v49 = v42[1];
        v50 = v42[2];
        v51 = v42[3];
        v81 = *(v42 + 64);
        v80[2] = v50;
        v80[3] = v51;
        v80[0] = v48;
        v80[1] = v49;
        inited = *(&v73 + 1);
        v22 = v74;
        v52 = v73;
        outlined init with copy of [Input](&v73, v72, &_s11ShaderGraph17BuiltInDefinitionV9InputSpecV_AA17SGDataTypeStorageOtMd, &_s11ShaderGraph17BuiltInDefinitionV9InputSpecV_AA17SGDataTypeStorageOtMR);
        v53 = v52;
        v37 = v82;
        v2 = 0;
        specialized closure #1 in closure #1 in SGGraph.replaceDeprecatedAndRedundantNodes()(v53, inited, v22, v80, v3, v71, v82);
        ++v8;
        outlined destroy of [Input](&v73, &_s11ShaderGraph17BuiltInDefinitionV9InputSpecV_AA17SGDataTypeStorageOtMd, &_s11ShaderGraph17BuiltInDefinitionV9InputSpecV_AA17SGDataTypeStorageOtMR);
        v42 += 7;
        if (v69 == v8)
        {
          goto LABEL_44;
        }
      }

LABEL_60:
      __break(1u);
LABEL_61:
      swift_once();
    }
  }
}

uint64_t specialized SGDataType.materialXDataType.getter(uint64_t a1)
{
  switch(a1)
  {
    case 1:
      if (one-time initialization token for BOOLean != -1)
      {
        swift_once();
      }

      v1 = &static MaterialXDataType.BOOLean;
      break;
    case 3:
      if (one-time initialization token for integer != -1)
      {
        swift_once();
      }

      v1 = &static MaterialXDataType.integer;
      break;
    case 7:
      if (one-time initialization token for half != -1)
      {
        swift_once();
      }

      v1 = &static MaterialXDataType.half;
      break;
    case 9:
      if (one-time initialization token for float != -1)
      {
        swift_once();
      }

      v1 = &static MaterialXDataType.float;
      break;
    case 11:
    case 12:
      if (one-time initialization token for string != -1)
      {
        swift_once();
      }

      v1 = &static MaterialXDataType.string;
      break;
    case 13:
      if (one-time initialization token for filename != -1)
      {
        swift_once();
      }

      v1 = &static MaterialXDataType.filename;
      break;
    case 14:
      if (one-time initialization token for matrix22 != -1)
      {
        swift_once();
      }

      v1 = &static MaterialXDataType.matrix22;
      break;
    case 15:
      if (one-time initialization token for matrix33 != -1)
      {
        swift_once();
      }

      v1 = &static MaterialXDataType.matrix33;
      break;
    case 17:
      if (one-time initialization token for matrix44 != -1)
      {
        swift_once();
      }

      v1 = &static MaterialXDataType.matrix44;
      break;
    case 18:
    case 29:
      if (one-time initialization token for float4 != -1)
      {
        swift_once();
      }

      v1 = &static MaterialXDataType.float4;
      break;
    case 20:
    case 30:
    case 56:
      if (one-time initialization token for half4 != -1)
      {
        swift_once();
      }

      v1 = &static MaterialXDataType.half4;
      break;
    case 21:
    case 49:
      if (one-time initialization token for float2 != -1)
      {
        swift_once();
      }

      v1 = &static MaterialXDataType.float2;
      break;
    case 22:
    case 47:
      if (one-time initialization token for half2 != -1)
      {
        swift_once();
      }

      v1 = &static MaterialXDataType.half2;
      break;
    case 24:
      if (one-time initialization token for integer2 != -1)
      {
        swift_once();
      }

      v1 = &static MaterialXDataType.integer2;
      break;
    case 25:
    case 32:
    case 35:
    case 38:
    case 52:
      if (one-time initialization token for float3 != -1)
      {
        swift_once();
      }

      v1 = &static MaterialXDataType.float3;
      break;
    case 26:
    case 33:
    case 36:
    case 39:
    case 50:
    case 55:
      if (one-time initialization token for half3 != -1)
      {
        swift_once();
      }

      v1 = &static MaterialXDataType.half3;
      break;
    case 28:
      if (one-time initialization token for integer3 != -1)
      {
        swift_once();
      }

      v1 = &static MaterialXDataType.integer3;
      break;
    case 31:
      if (one-time initialization token for integer4 != -1)
      {
        swift_once();
      }

      v1 = &static MaterialXDataType.integer4;
      break;
    case 41:
    case 42:
      if (one-time initialization token for color3 != -1)
      {
        swift_once();
      }

      v1 = &static MaterialXDataType.color3;
      break;
    case 44:
    case 45:
      if (one-time initialization token for color4 != -1)
      {
        swift_once();
      }

      v1 = &static MaterialXDataType.color4;
      break;
    case 53:
      if (one-time initialization token for surfaceshader != -1)
      {
        swift_once();
      }

      v1 = &static MaterialXDataType.surfaceshader;
      break;
    case 54:
      if (one-time initialization token for geometrymodifier != -1)
      {
        swift_once();
      }

      v1 = &static MaterialXDataType.geometrymodifier;
      break;
    default:
      if (one-time initialization token for unsupported != -1)
      {
        swift_once();
      }

      v1 = &static MaterialXDataType.unsupported;
      break;
  }

  return *v1;
}

char *specialized Sequence.compactMap<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v50 = a1;
  v51 = a2;
  v52 = a3;

  specialized Graph.DepthFirstEdgeIterator.next()(&v44);
  if (*(&v45 + 1))
  {
    v10 = MEMORY[0x277D84F90];
    while (1)
    {
      v40 = v46;
      v41 = v47;
      v42 = v48;
      v43 = v49;
      v38 = v44;
      v39 = v45;
      closure #4 in mapGraph(_:into:)(&v38, a4, a5, a6, &v31);
      if (v6)
      {
        break;
      }

      v29[2] = v40;
      v29[3] = v41;
      v29[4] = v42;
      v30 = v43;
      v29[0] = v38;
      v29[1] = v39;
      outlined destroy of [Input](v29, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GMR);
      if (*(&v31 + 1))
      {
        v26 = v35;
        v27 = v36;
        v28 = v37;
        v22 = v31;
        v23 = v32;
        v24 = v33;
        v25 = v34;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
        }

        v12 = *(v10 + 2);
        v11 = *(v10 + 3);
        if (v12 >= v11 >> 1)
        {
          v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v10);
        }

        v19 = v26;
        v20 = v27;
        v21 = v28;
        v17 = v24;
        v18 = v25;
        v13 = v22;
        v16 = v23;
        *(v10 + 2) = v12 + 1;
        v14 = &v10[112 * v12];
        *(v14 + 3) = v16;
        *(v14 + 4) = v17;
        *(v14 + 7) = v20;
        *(v14 + 8) = v21;
        *(v14 + 5) = v18;
        *(v14 + 6) = v19;
        *(v14 + 2) = v13;
      }

      else
      {
        v26 = v35;
        v27 = v36;
        v28 = v37;
        v22 = v31;
        v23 = v32;
        v24 = v33;
        v25 = v34;
        outlined destroy of [Input](&v22, &_s11ShaderGraph4EdgeVSgMd, &_s11ShaderGraph4EdgeVSgMR);
      }

      specialized Graph.DepthFirstEdgeIterator.next()(&v44);
      if (!*(&v45 + 1))
      {
        goto LABEL_13;
      }
    }

    v24 = v40;
    v25 = v41;
    v26 = v42;
    LOBYTE(v27) = v43;
    v22 = v38;
    v23 = v39;
    outlined destroy of [Input](&v22, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GMR);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
LABEL_13:
  }

  return v10;
}

uint64_t specialized SGDataType.init(_:)()
{
  if (one-time initialization token for BOOLean != -1)
  {
    swift_once();
  }

  if (MaterialXDataType.isEqual(to:)())
  {

    return 1;
  }

  v1 = one-time initialization token for integer;

  if (v1 != -1)
  {
    swift_once();
  }

  v2 = MaterialXDataType.isEqual(to:)();

  if (v2)
  {

    return 3;
  }

  v3 = one-time initialization token for integer2;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = MaterialXDataType.isEqual(to:)();

  if (v4)
  {

    return 24;
  }

  v5 = one-time initialization token for integer3;

  if (v5 != -1)
  {
    swift_once();
  }

  v6 = MaterialXDataType.isEqual(to:)();

  if (v6)
  {

    return 28;
  }

  v7 = one-time initialization token for integer4;

  if (v7 != -1)
  {
    swift_once();
  }

  v8 = MaterialXDataType.isEqual(to:)();

  if (v8)
  {

    return 31;
  }

  v9 = one-time initialization token for float;

  if (v9 != -1)
  {
    swift_once();
  }

  v10 = MaterialXDataType.isEqual(to:)();

  if (v10)
  {

    return 9;
  }

  v11 = one-time initialization token for float2;

  if (v11 != -1)
  {
    swift_once();
  }

  v12 = MaterialXDataType.isEqual(to:)();

  if (v12)
  {
    goto LABEL_28;
  }

  v13 = one-time initialization token for float3;

  if (v13 != -1)
  {
    swift_once();
  }

  v14 = MaterialXDataType.isEqual(to:)();

  if (v14)
  {
LABEL_32:

    return 25;
  }

  v15 = one-time initialization token for float4;

  if (v15 != -1)
  {
    swift_once();
  }

  v16 = MaterialXDataType.isEqual(to:)();

  if (v16)
  {
    goto LABEL_36;
  }

  v17 = one-time initialization token for color3;

  if (v17 != -1)
  {
    swift_once();
  }

  v18 = MaterialXDataType.isEqual(to:)();

  if (v18)
  {

    return 42;
  }

  v19 = one-time initialization token for color4;

  if (v19 != -1)
  {
    swift_once();
  }

  v20 = MaterialXDataType.isEqual(to:)();

  if (v20)
  {

    return 45;
  }

  v21 = one-time initialization token for vector2;

  if (v21 != -1)
  {
    swift_once();
  }

  v22 = MaterialXDataType.isEqual(to:)();

  if (v22)
  {
LABEL_28:

    return 21;
  }

  v23 = one-time initialization token for vector3;

  if (v23 != -1)
  {
    swift_once();
  }

  v24 = MaterialXDataType.isEqual(to:)();

  if (v24)
  {
    goto LABEL_32;
  }

  v25 = one-time initialization token for vector4;

  if (v25 != -1)
  {
    swift_once();
  }

  v26 = MaterialXDataType.isEqual(to:)();

  if (v26)
  {
LABEL_36:

    return 29;
  }

  v27 = one-time initialization token for half;

  if (v27 != -1)
  {
    swift_once();
  }

  v28 = MaterialXDataType.isEqual(to:)();

  if (v28)
  {

    return 7;
  }

  v29 = one-time initialization token for half2;

  if (v29 != -1)
  {
    swift_once();
  }

  v30 = MaterialXDataType.isEqual(to:)();

  if (v30)
  {

    return 22;
  }

  v31 = one-time initialization token for half3;

  if (v31 != -1)
  {
    swift_once();
  }

  v32 = MaterialXDataType.isEqual(to:)();

  if (v32)
  {

    return 26;
  }

  v33 = one-time initialization token for half4;

  if (v33 != -1)
  {
    swift_once();
  }

  v34 = MaterialXDataType.isEqual(to:)();

  if (v34)
  {

    return 30;
  }

  v35 = one-time initialization token for matrix22;

  if (v35 != -1)
  {
    swift_once();
  }

  v36 = MaterialXDataType.isEqual(to:)();

  if (v36)
  {

    return 14;
  }

  v37 = one-time initialization token for matrix33;

  if (v37 != -1)
  {
    swift_once();
  }

  v38 = MaterialXDataType.isEqual(to:)();

  if (v38)
  {

    return 15;
  }

  v39 = one-time initialization token for matrix44;

  if (v39 != -1)
  {
    swift_once();
  }

  v40 = MaterialXDataType.isEqual(to:)();

  if (v40)
  {

    return 17;
  }

  v41 = one-time initialization token for surfaceshader;

  if (v41 != -1)
  {
    swift_once();
  }

  v42 = MaterialXDataType.isEqual(to:)();

  if (v42)
  {

    return 53;
  }

  v43 = one-time initialization token for vertexshader;

  if (v43 != -1)
  {
    swift_once();
  }

  v44 = MaterialXDataType.isEqual(to:)();

  if (v44)
  {
    goto LABEL_92;
  }

  v45 = one-time initialization token for geometrymodifier;

  if (v45 != -1)
  {
    swift_once();
  }

  v46 = MaterialXDataType.isEqual(to:)();

  if (v46)
  {
LABEL_92:

    return 54;
  }

  v47 = one-time initialization token for string;

  if (v47 != -1)
  {
    swift_once();
  }

  v48 = MaterialXDataType.isEqual(to:)();

  if (v48)
  {
    goto LABEL_178;
  }

  v49 = one-time initialization token for filename;

  if (v49 != -1)
  {
    swift_once();
  }

  v50 = MaterialXDataType.isEqual(to:)();

  if (v50)
  {

    return 13;
  }

  v51 = one-time initialization token for space;

  if (v51 != -1)
  {
    swift_once();
  }

  v52 = MaterialXDataType.isEqual(to:)();

  if (v52)
  {
    goto LABEL_178;
  }

  v53 = one-time initialization token for uAddressMode;

  if (v53 != -1)
  {
    swift_once();
  }

  v54 = MaterialXDataType.isEqual(to:)();

  if (v54)
  {
    goto LABEL_178;
  }

  v55 = one-time initialization token for vAddressMode;

  if (v55 != -1)
  {
    swift_once();
  }

  v56 = MaterialXDataType.isEqual(to:)();

  if (v56)
  {
    goto LABEL_178;
  }

  v57 = one-time initialization token for wrapS;

  if (v57 != -1)
  {
    swift_once();
  }

  v58 = MaterialXDataType.isEqual(to:)();

  if (v58)
  {
    goto LABEL_178;
  }

  v59 = one-time initialization token for wrapT;

  if (v59 != -1)
  {
    swift_once();
  }

  v60 = MaterialXDataType.isEqual(to:)();

  if (v60)
  {
    goto LABEL_178;
  }

  v61 = one-time initialization token for filterType;

  if (v61 != -1)
  {
    swift_once();
  }

  v62 = MaterialXDataType.isEqual(to:)();

  if (v62)
  {
    goto LABEL_178;
  }

  v63 = one-time initialization token for blurFilterType;

  if (v63 != -1)
  {
    swift_once();
  }

  v64 = MaterialXDataType.isEqual(to:)();

  if (v64)
  {
    goto LABEL_178;
  }

  v65 = one-time initialization token for normalMapSpace;

  if (v65 != -1)
  {
    swift_once();
  }

  v66 = MaterialXDataType.isEqual(to:)();

  if (v66)
  {
    goto LABEL_178;
  }

  v67 = one-time initialization token for lumacoeffs;

  if (v67 != -1)
  {
    swift_once();
  }

  v68 = MaterialXDataType.isEqual(to:)();

  if (v68)
  {
    goto LABEL_178;
  }

  v69 = one-time initialization token for cubeimageFilterType;

  if (v69 != -1)
  {
    swift_once();
  }

  v70 = MaterialXDataType.isEqual(to:)();

  if (v70)
  {
    goto LABEL_178;
  }

  v71 = one-time initialization token for filter;

  if (v71 != -1)
  {
    swift_once();
  }

  v72 = MaterialXDataType.isEqual(to:)();

  if (v72)
  {
    goto LABEL_178;
  }

  v73 = one-time initialization token for coord;

  if (v73 != -1)
  {
    swift_once();
  }

  v74 = MaterialXDataType.isEqual(to:)();

  if (v74)
  {
    goto LABEL_178;
  }

  v75 = one-time initialization token for addressMode;

  if (v75 != -1)
  {
    swift_once();
  }

  v76 = MaterialXDataType.isEqual(to:)();

  if (v76)
  {
    goto LABEL_178;
  }

  v77 = one-time initialization token for rAddressMode;

  if (v77 != -1)
  {
    swift_once();
  }

  v78 = MaterialXDataType.isEqual(to:)();

  if (v78)
  {
    goto LABEL_178;
  }

  v79 = one-time initialization token for sAddressMode;

  if (v79 != -1)
  {
    swift_once();
  }

  v80 = MaterialXDataType.isEqual(to:)();

  if (v80)
  {
    goto LABEL_178;
  }

  v81 = one-time initialization token for tAddressMode;

  if (v81 != -1)
  {
    swift_once();
  }

  v82 = MaterialXDataType.isEqual(to:)();

  if (v82)
  {
    goto LABEL_178;
  }

  v83 = one-time initialization token for u_wrap_mode;

  if (v83 != -1)
  {
    swift_once();
  }

  v84 = MaterialXDataType.isEqual(to:)();

  if (v84)
  {
    goto LABEL_178;
  }

  v85 = one-time initialization token for v_wrap_mode;

  if (v85 != -1)
  {
    swift_once();
  }

  v86 = MaterialXDataType.isEqual(to:)();

  if (v86)
  {
    goto LABEL_178;
  }

  v87 = one-time initialization token for w_wrap_mode;

  if (v87 != -1)
  {
    swift_once();
  }

  v88 = MaterialXDataType.isEqual(to:)();

  if (v88)
  {
    goto LABEL_178;
  }

  v89 = one-time initialization token for u_pixel_wrap_mode;

  if (v89 != -1)
  {
    swift_once();
  }

  v90 = MaterialXDataType.isEqual(to:)();

  if (v90)
  {
    goto LABEL_178;
  }

  v91 = one-time initialization token for v_pixel_wrap_mode;

  if (v91 != -1)
  {
    swift_once();
  }

  v92 = MaterialXDataType.isEqual(to:)();

  if (v92)
  {
    goto LABEL_178;
  }

  v93 = one-time initialization token for w_pixel_wrap_mode;

  if (v93 != -1)
  {
    swift_once();
  }

  v94 = MaterialXDataType.isEqual(to:)();

  if (v94)
  {
    goto LABEL_178;
  }

  v95 = one-time initialization token for magFilter;

  if (v95 != -1)
  {
    swift_once();
  }

  v96 = MaterialXDataType.isEqual(to:)();

  if (v96)
  {
    goto LABEL_178;
  }

  v97 = one-time initialization token for minFilter;

  if (v97 != -1)
  {
    swift_once();
  }

  v98 = MaterialXDataType.isEqual(to:)();

  if (v98)
  {
    goto LABEL_178;
  }

  v99 = one-time initialization token for mipFilter;

  if (v99 != -1)
  {
    swift_once();
  }

  v100 = MaterialXDataType.isEqual(to:)();

  if (v100)
  {
    goto LABEL_178;
  }

  v101 = one-time initialization token for borderColor;

  if (v101 != -1)
  {
    swift_once();
  }

  v102 = MaterialXDataType.isEqual(to:)();

  if (v102)
  {
LABEL_178:

    return 11;
  }

  else
  {
    v103 = MaterialXDataType.isEqual(to:)();

    if (v103)
    {
      return 11;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t specialized SGGraph.deprecationMap()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_11ShaderGraph7SGGraphC15ReplacementNodeVtGMd, &_ss23_ContiguousArrayStorageCySS_11ShaderGraph7SGGraphC15ReplacementNodeVtGMR);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_265F22FE0;
  *(v1 + 32) = 0xD000000000000024;
  *(v1 + 40) = 0x8000000265F2C1D0;
  strcpy((v1 + 48), "ND_time_float");
  v2 = MEMORY[0x277D84F90];
  *(v1 + 62) = -4864;
  *(v1 + 64) = v2;
  *(v1 + 72) = 0xD000000000000028;
  *(v1 + 80) = 0x8000000265F2C160;
  *(v1 + 88) = 0xD000000000000013;
  *(v1 + 96) = 0x8000000265F2BDB0;
  *(v1 + 104) = v2;
  *(v1 + 112) = 0xD000000000000025;
  *(v1 + 120) = 0x8000000265F2BE30;
  *(v1 + 128) = 0xD000000000000013;
  v67 = 0x8000000265F2BD30;
  *(v1 + 136) = 0x8000000265F2BD30;
  *(v1 + 144) = v2;
  *(v1 + 152) = 0xD000000000000026;
  *(v1 + 160) = 0x8000000265F2C100;
  *(v1 + 168) = 0xD000000000000011;
  *(v1 + 176) = 0x8000000265F2BD70;
  *(v1 + 184) = v2;
  *(v1 + 192) = 0xD000000000000029;
  *(v1 + 200) = 0x8000000265F2BE00;
  *(v1 + 208) = 0xD000000000000014;
  *(v1 + 216) = 0x8000000265F2BCF0;
  *(v1 + 224) = v2;
  *(v1 + 232) = 0xD000000000000023;
  *(v1 + 240) = 0x8000000265F2C200;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph17BuiltInDefinitionV9InputSpecV_AC010SGDataTypeC0OtGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph17BuiltInDefinitionV9InputSpecV_AC010SGDataTypeC0OtGMR);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_265F1F670;
  if (one-time initialization token for string != -1)
  {
    swift_once();
  }

  v4 = static MaterialXDataType.string;

  specialized SGDataTypeStorage.init(materialXValue:type:)(3167829, 0xE300000000000000, v4, v49);
  if (v0)
  {
    *(v3 + 16) = 0;

    v5 = *(v1 + 240);

    v12 = *(v1 + 200);
    v14 = *(v1 + 216);
    v13 = *(v1 + 224);

    v15 = *(v1 + 160);
    v17 = *(v1 + 176);
    v16 = *(v1 + 184);

    v18 = *(v1 + 120);
    v20 = *(v1 + 136);
    v19 = *(v1 + 144);

    v21 = *(v1 + 80);
    v23 = *(v1 + 96);
    v22 = *(v1 + 104);

    v24 = *(v1 + 40);
    v26 = *(v1 + 56);
    v25 = *(v1 + 64);

    *(v1 + 16) = 0;
  }

  else
  {
    *(v3 + 32) = 0x706F72706D6F6567;
    *(v3 + 40) = 0xE800000000000000;
    *(v3 + 48) = 11;
    *(v3 + 56) = 1;
    v6 = v49[3];
    *(v3 + 96) = v49[2];
    *(v3 + 112) = v6;
    *(v3 + 128) = v50;
    v7 = v49[1];
    *(v3 + 64) = v49[0];
    *(v3 + 80) = v7;
    *(v1 + 248) = 0xD000000000000018;
    *(v1 + 256) = 0x8000000265F2CA90;
    *(v1 + 264) = v3;
    *(v1 + 272) = 0xD000000000000023;
    *(v1 + 280) = 0x8000000265F2C290;
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_265F1F670;

    specialized SGDataTypeStorage.init(materialXValue:type:)(3233365, 0xE300000000000000, v4, v51);
    *(v8 + 32) = 0x706F72706D6F6567;
    *(v8 + 40) = 0xE800000000000000;
    *(v8 + 48) = 11;
    *(v8 + 56) = 1;
    v9 = v51[3];
    *(v8 + 96) = v51[2];
    *(v8 + 112) = v9;
    *(v8 + 128) = v52;
    v10 = v51[1];
    *(v8 + 64) = v51[0];
    *(v8 + 80) = v10;
    *(v1 + 288) = 0xD000000000000018;
    *(v1 + 296) = 0x8000000265F2CA90;
    *(v1 + 304) = v8;
    *(v1 + 312) = 0xD00000000000001ALL;
    *(v1 + 320) = 0x8000000265F2CFA0;
    strcpy((v1 + 328), "ND_time_float");
    *(v1 + 342) = -4864;
    *(v1 + 344) = v2;
    *(v1 + 352) = 0xD000000000000024;
    *(v1 + 360) = 0x8000000265F2CE20;
    *(v1 + 368) = 0xD000000000000013;
    *(v1 + 376) = 0x8000000265F2BDB0;
    *(v1 + 384) = v2;
    *(v1 + 392) = 0xD000000000000024;
    *(v1 + 400) = 0x8000000265F2D060;
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_265F1F670;

    specialized SGDataTypeStorage.init(materialXValue:type:)(0x646C726F77, 0xE500000000000000, v4, v53);
    *(v11 + 32) = 0x6563617073;
    *(v11 + 40) = 0xE500000000000000;
    *(v11 + 48) = 11;
    *(v11 + 56) = 1;
    v28 = v53[3];
    *(v11 + 96) = v53[2];
    *(v11 + 112) = v28;
    *(v11 + 128) = v54;
    v29 = v53[1];
    *(v11 + 64) = v53[0];
    *(v11 + 80) = v29;
    *(v1 + 408) = 0xD000000000000013;
    *(v1 + 416) = 0x8000000265F2BDB0;
    *(v1 + 424) = v11;
    *(v1 + 432) = 0xD00000000000001BLL;
    *(v1 + 440) = 0x8000000265F2CBA0;
    *(v1 + 448) = 0xD000000000000013;
    *(v1 + 456) = v67;
    *(v1 + 464) = v2;
    *(v1 + 472) = 0xD000000000000025;
    *(v1 + 480) = 0x8000000265F2CDA0;
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_265F1F670;

    specialized SGDataTypeStorage.init(materialXValue:type:)(0x646C726F77, 0xE500000000000000, v4, v55);
    *(v30 + 32) = 0x6563617073;
    *(v30 + 40) = 0xE500000000000000;
    *(v30 + 48) = 11;
    *(v30 + 56) = 1;
    v31 = v55[3];
    *(v30 + 96) = v55[2];
    *(v30 + 112) = v31;
    *(v30 + 128) = v56;
    v32 = v55[1];
    *(v30 + 64) = v55[0];
    *(v30 + 80) = v32;
    *(v1 + 488) = 0xD000000000000011;
    *(v1 + 496) = 0x8000000265F2BD70;
    *(v1 + 504) = v30;
    *(v1 + 512) = 0xD000000000000026;
    *(v1 + 520) = 0x8000000265F2CDD0;
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_265F1F670;

    specialized SGDataTypeStorage.init(materialXValue:type:)(0x646C726F77, 0xE500000000000000, v4, v57);
    *(v33 + 32) = 0x6563617073;
    *(v33 + 40) = 0xE500000000000000;
    *(v33 + 48) = 11;
    *(v33 + 56) = 1;
    v34 = v57[3];
    *(v33 + 96) = v57[2];
    *(v33 + 112) = v34;
    *(v33 + 128) = v58;
    v35 = v57[1];
    *(v33 + 64) = v57[0];
    *(v33 + 80) = v35;
    *(v1 + 528) = 0xD000000000000012;
    *(v1 + 536) = 0x8000000265F2D0C0;
    *(v1 + 544) = v33;
    *(v1 + 552) = 0xD000000000000028;
    *(v1 + 560) = 0x8000000265F2CD70;
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_265F1F670;

    specialized SGDataTypeStorage.init(materialXValue:type:)(0x646C726F77, 0xE500000000000000, v4, v59);
    *(v36 + 32) = 0x6563617073;
    *(v36 + 40) = 0xE500000000000000;
    *(v36 + 48) = 11;
    *(v36 + 56) = 1;
    v37 = v59[3];
    *(v36 + 96) = v59[2];
    *(v36 + 112) = v37;
    *(v36 + 128) = v60;
    v38 = v59[1];
    *(v36 + 64) = v59[0];
    *(v36 + 80) = v38;
    *(v1 + 568) = 0xD000000000000014;
    *(v1 + 576) = 0x8000000265F2BCF0;
    *(v1 + 584) = v36;
    *(v1 + 592) = 0xD000000000000019;
    *(v1 + 600) = 0x8000000265F2CFC0;
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_265F1F670;

    specialized SGDataTypeStorage.init(materialXValue:type:)(3167829, 0xE300000000000000, v4, v61);
    *(v39 + 32) = 0x706F72706D6F6567;
    *(v39 + 40) = 0xE800000000000000;
    *(v39 + 48) = 11;
    *(v39 + 56) = 1;
    v40 = v61[3];
    *(v39 + 96) = v61[2];
    *(v39 + 112) = v40;
    *(v39 + 128) = v62;
    v41 = v61[1];
    *(v39 + 64) = v61[0];
    *(v39 + 80) = v41;
    *(v1 + 608) = 0xD000000000000018;
    *(v1 + 616) = 0x8000000265F2CA90;
    *(v1 + 624) = v39;
    *(v1 + 632) = 0xD000000000000019;
    *(v1 + 640) = 0x8000000265F2CFE0;
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_265F1F670;

    specialized SGDataTypeStorage.init(materialXValue:type:)(3233365, 0xE300000000000000, v4, v63);
    *(v42 + 32) = 0x706F72706D6F6567;
    *(v42 + 40) = 0xE800000000000000;
    *(v42 + 48) = 11;
    *(v42 + 56) = 1;
    v43 = v63[3];
    *(v42 + 96) = v63[2];
    *(v42 + 112) = v43;
    *(v42 + 128) = v64;
    v44 = v63[1];
    *(v42 + 64) = v63[0];
    *(v42 + 80) = v44;
    *(v1 + 648) = 0xD000000000000018;
    *(v1 + 656) = 0x8000000265F2CA90;
    *(v1 + 664) = v42;
    *(v1 + 672) = 0xD00000000000002ALL;
    *(v1 + 680) = 0x8000000265F2CF70;
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_265F1F670;

    specialized SGDataTypeStorage.init(materialXValue:type:)(0x746E65676E6174, 0xE700000000000000, v4, v65);
    *(v45 + 32) = 0x6563617073;
    *(v45 + 40) = 0xE500000000000000;
    *(v45 + 48) = 11;
    *(v45 + 56) = 1;
    v46 = v65[3];
    *(v45 + 96) = v65[2];
    *(v45 + 112) = v46;
    *(v45 + 128) = v66;
    v47 = v65[1];
    *(v45 + 64) = v65[0];
    *(v45 + 80) = v47;
    *(v1 + 688) = 0xD000000000000011;
    *(v1 + 696) = 0x8000000265F2BD70;
    *(v1 + 704) = v45;
    v48 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_11ShaderGraph7SGGraphC15ReplacementNodeVTt0g5Tf4g_n(v1);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_11ShaderGraph7SGGraphC15ReplacementNodeVtMd, &_sSS_11ShaderGraph7SGGraphC15ReplacementNodeVtMR);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    return v48;
  }
}

void specialized closure #1 in closure #1 in SGGraph.replaceDeprecatedAndRedundantNodes()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v65 = a6;
  ObjectType = swift_getObjectType();
  v13 = *(a4 + 64);
  v14 = *(a5 + OBJC_IVAR___SGNode_name + 8);
  v57 = *(a5 + OBJC_IVAR___SGNode_name);
  v58 = v14;

  v16 = *(a4 + 32);
  v15 = *(a4 + 48);
  v52 = v16;
  v54 = *a4;
  v50 = v15;
  v51 = *(a4 + 16);
  MEMORY[0x266771550](95, 0xE100000000000000);

  v48 = a1;
  MEMORY[0x266771550](a1, a2);

  v17 = v57;
  v18 = v58;
  *&v59 = a3;
  v60 = v54;
  v61 = v51;
  v62 = v52;
  v63 = v50;
  v64 = v13 & 0x1F | 0x80;
  v19 = objc_allocWithZone(ObjectType);
  swift_unknownObjectWeakInit();
  v20 = &v19[OBJC_IVAR___SGNode_name];
  *v20 = v57;
  v20[1] = v18;
  *&v19[OBJC_IVAR___SGNode_inputs] = MEMORY[0x277D84F90];
  outlined init with copy of SGDataTypeStorage(a4, &v57);

  v21 = recreateOutputs(from:nodeName:)(&v59, v17, v18);

  *&v19[OBJC_IVAR___SGNode_outputs] = v21;
  v22 = &v19[OBJC_IVAR___SGNode_data];
  v23 = v62;
  *(v22 + 2) = v61;
  *(v22 + 3) = v23;
  *(v22 + 4) = v63;
  v22[80] = v64;
  v24 = v60;
  *v22 = v59;
  *(v22 + 1) = v24;
  v55 = a4;
  outlined init with copy of SGDataTypeStorage(a4, &v57);
  v56.receiver = v19;
  v56.super_class = ObjectType;
  v25 = objc_msgSendSuper2(&v56, sel_init);
  v26 = *&v25[OBJC_IVAR___SGNode_inputs];
  if (v26 >> 62)
  {
    goto LABEL_35;
  }

  v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v28 = v25;

    if (v27)
    {
      v29 = 0;
      while (1)
      {
        if ((v26 & 0xC000000000000001) != 0)
        {
          v25 = MEMORY[0x266772030](v29, v26);
        }

        else
        {
          if (v29 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_32;
          }

          v25 = *(v26 + 8 * v29 + 32);
        }

        v30 = v25;
        v31 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          break;
        }

        swift_beginAccess();
        swift_unknownObjectWeakAssign();

        ++v29;
        if (v31 == v27)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

LABEL_12:

    v26 = *&v28[OBJC_IVAR___SGNode_outputs];
    v53 = OBJC_IVAR___SGNode_outputs;
    v32 = v26 >> 62 ? __CocoaSet.count.getter() : *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v32)
    {
      break;
    }

    v33 = 0;
    while (1)
    {
      if ((v26 & 0xC000000000000001) != 0)
      {
        v25 = MEMORY[0x266772030](v33, v26);
      }

      else
      {
        if (v33 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_34;
        }

        v25 = *(v26 + 8 * v33 + 32);
      }

      v34 = v25;
      v35 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      swift_beginAccess();
      swift_unknownObjectWeakAssign();

      ++v33;
      if (v35 == v32)
      {
        goto LABEL_23;
      }
    }

LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    v44 = v25;
    v27 = __CocoaSet.count.getter();
    v25 = v44;
  }

LABEL_23:

  outlined destroy of SGDataTypeStorage(v55);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_265F20CD0;
  *(inited + 32) = v28;
  v37 = v28;
  v66.value._rawValue = inited;
  SGGraph.insert(_:)(v66);
  if (v38)
  {

    swift_setDeallocating();
    v39 = *(inited + 16);
    swift_arrayDestroy();
    return;
  }

  swift_setDeallocating();
  v40 = *(inited + 16);
  swift_arrayDestroy();
  v41 = *&v28[v53];
  if (v41 >> 62)
  {
    if (v41 < 0)
    {
      v45 = *&v28[v53];
    }

    if (!__CocoaSet.count.getter())
    {
      goto LABEL_40;
    }

LABEL_27:
    if ((v41 & 0xC000000000000001) != 0)
    {
      v42 = MEMORY[0x266772030](0, v41);
    }

    else
    {
      if (!*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v42 = *(v41 + 32);
    }

    v43 = v42;
    goto LABEL_41;
  }

  if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_27;
  }

LABEL_40:
  v43 = 0;
LABEL_41:
  v46 = MEMORY[0x266771450](v48, a2);
  v47 = [a7 inputNamed_];

  SGGraph.connect(_:to:)(v43, v47);
}

uint64_t sub_265DFCC3C()
{
  outlined consume of SGDataTypeStorage(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80));
  v1 = *(v0 + 88);

  return MEMORY[0x2821FE8E8](v0, 96, 15);
}

uint64_t sub_265DFCC98()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[6];

  v5 = v0[8];

  v6 = v0[9];

  v7 = v0[10];

  outlined consume of NodePersonality(v0[12]);
  v8 = v0[13];

  v9 = v0[14];

  outlined consume of NodePersonality(v0[18]);
  v10 = v0[19];

  v11 = v0[20];

  return MEMORY[0x2821FE8E8](v0, 185, 7);
}

uint64_t _HashTable.UnsafeHandle.idealBucket<A>(for:)(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  result = dispatch thunk of Hashable._rawHashValue(seed:)();
  v5 = 1 << *a2;
  v6 = __OFSUB__(v5, 1);
  v7 = v5 - 1;
  if (!v6)
  {
    return v7 & result;
  }

  __break(1u);
  return result;
}

uint64_t _HashTable.UnsafeHandle.bucketIterator(startingAt:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = _HashTable.UnsafeHandle._startIterator(bucket:)(a1, a2, a3);
  *a4 = a2;
  *(a4 + 8) = a3;
  *(a4 + 16) = a1;
  *(a4 + 24) = result;
  *(a4 + 32) = v9;
  *(a4 + 40) = v10;
  *(a4 + 48) = 0;
  return result;
}

Swift::Void __swiftcall _HashTable.BucketIterator.advance(until:)(Swift::Int until)
{
  for (i = v1[3]; i; i = v1[3])
  {
    v4 = -1 << **v1;
    v5 = (v4 ^ ~i) + (*(*v1 + 8) >> 6);
    if (v5 >= ~v4)
    {
      v6 = ~v4;
    }

    else
    {
      v6 = 0;
    }

    if (v5 - v6 == until)
    {
      break;
    }

    _HashTable.BucketIterator.advance()();
  }
}

uint64_t _HashTable.BucketIterator.currentValue.setter(uint64_t result, char a2)
{
  v3 = *v2;
  v4 = **v2 & 0x3FLL;
  if (a2)
  {
    v5 = 0;
  }

  else
  {
    v5 = (-1 << v4) ^ ~((((result - (v3[1] >> 6)) >> 63) & ~(-1 << v4)) + result - (v3[1] >> 6));
  }

  v6 = *(v2 + 24) ^ v5;
  v7 = *(v2 + 8);
  v8 = v4 * *(v2 + 16);
  v9 = v8 >> 6;
  *(v7 + 8 * (v8 >> 6)) ^= v6 << v8;
  v10 = 64 - (v8 & 0x3F);
  v11 = *v3 & 0x3FLL;
  if (v10 >= v11)
  {
LABEL_12:
    *(v2 + 24) = v5;
    return result;
  }

  v12 = v11 << v11;
  v13 = __OFADD__(v12, 64);
  v14 = v12 + 64;
  if (!v13)
  {
    v16 = v14 - 1;
    v15 = v14 < 1;
    v17 = v14 + 62;
    if (!v15)
    {
      v17 = v16;
    }

    if (v9 + 1 == v17 >> 6)
    {
      v18 = 0;
    }

    else
    {
      v18 = v9 + 1;
    }

    *(v7 + 8 * v18) ^= v6 >> v10;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t _HashTable.BucketIterator._hashTable.getter()
{
  result = *v0;
  v2 = v0[1];
  return result;
}

uint64_t _HashTable.BucketIterator.init(hashTable:startingAt:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = _HashTable.UnsafeHandle._startIterator(bucket:)(a3, a1, a2);
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  *(a4 + 24) = result;
  *(a4 + 32) = v9;
  *(a4 + 40) = v10;
  *(a4 + 48) = 0;
  return result;
}

uint64_t _HashTable.UnsafeHandle._startIterator(bucket:)(uint64_t result, void *a2, uint64_t a3)
{
  v3 = *a2 & 0x3FLL;
  v4 = (v3 * result) >> 6;
  v5 = (v3 * result) & 0x3F;
  if ((v5 + v3) <= 0x40)
  {
    return (*(a3 + 8 * v4) >> v5) & ~(-1 << v3);
  }

  if (__OFADD__(v3 << v3, 64))
  {
    __break(1u);
  }

  else
  {
    v6 = *(a3 + 8 * v4);
    v7 = (v3 << v3) + 126;
    if ((v3 << v3) + 64 >= 1)
    {
      v7 = (v3 << v3) + 63;
    }

    if (v4 + 1 == v7 >> 6)
    {
      v8 = 0;
    }

    else
    {
      v8 = v4 + 1;
    }

    return ((*(a3 + 8 * v8) << (64 - v5)) | (v6 >> v5)) & ~(-1 << v3);
  }

  return result;
}

uint64_t _HashTable.UnsafeHandle.idealBucket(forHashValue:)(uint64_t result, void *a2)
{
  v2 = 1 << *a2;
  v3 = __OFSUB__(v2, 1);
  v4 = v2 - 1;
  if (!v3)
  {
    return v4 & result;
  }

  __break(1u);
  return result;
}

uint64_t _HashTable.UnsafeHandle.bucketIterator<A>(for:)@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = *a1;
  result = dispatch thunk of Hashable._rawHashValue(seed:)();
  v8 = 1 << *a1;
  v9 = __OFSUB__(v8, 1);
  v10 = v8 - 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    v11 = v10 & result;
    result = _HashTable.UnsafeHandle._startIterator(bucket:)(v10 & result, a1, a2);
    *a3 = a1;
    *(a3 + 8) = a2;
    *(a3 + 16) = v11;
    *(a3 + 24) = result;
    *(a3 + 32) = v12;
    *(a3 + 40) = v13;
    *(a3 + 48) = 0;
  }

  return result;
}

unint64_t _HashTable.UnsafeHandle.startFind(_:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = _HashTable.UnsafeHandle._startIterator(bucket:)(a2, a3, a4);
  *a1 = a3;
  *(a1 + 8) = a4;
  *(a1 + 16) = a2;
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  *(a1 + 40) = v10;
  *(a1 + 48) = 0;
  if (!v8)
  {
    return 0;
  }

  v11 = -1 << *a3;
  v12 = (v11 ^ ~v8) + (a3[1] >> 6);
  if (v12 >= ~v11)
  {
    v13 = ~v11;
  }

  else
  {
    v13 = 0;
  }

  return v12 - v13;
}

unint64_t _HashTable.BucketIterator.currentValue.getter()
{
  v1 = v0[3];
  if (!v1)
  {
    return 0;
  }

  v2 = -1 << **v0;
  v3 = (v2 ^ ~v1) + (*(*v0 + 8) >> 6);
  if (v3 >= ~v2)
  {
    v4 = ~v2;
  }

  else
  {
    v4 = 0;
  }

  return v3 - v4;
}

uint64_t (*_HashTable.BucketIterator.currentValue.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 16) = v1;
  v2 = v1[3];
  if (v2)
  {
    v3 = -1 << **v1;
    v4 = (v3 ^ ~v2) + (*(*v1 + 8) >> 6);
    if (v4 >= ~v3)
    {
      v5 = ~v3;
    }

    else
    {
      v5 = 0;
    }

    v6 = v4 - v5;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  *(a1 + 8) = v2 == 0;
  return _HashTable.BucketIterator.currentValue.modify;
}

Swift::Void __swiftcall _HashTable.BucketIterator.advance()()
{
  v1 = *(v0 + 16) + 1;
  *(v0 + 16) = v1;
  v2 = **v0 & 0x3FLL;
  v3 = 1 << **v0;
  if (v1 != v3)
  {
LABEL_4:
    v4 = *(v0 + 40);
    if (v4 >= v2)
    {
      goto LABEL_21;
    }

    v5 = (v1 * v2) >> 6;
    if (v4)
    {
      if (__OFADD__(v2 << v2, 64))
      {
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v6 = (v2 << v2) + 126;
      if ((v2 << v2) + 64 >= 1)
      {
        v6 = (v2 << v2) + 63;
      }

      if (v5 + 1 == v6 >> 6)
      {
        v5 = 0;
      }

      else
      {
        ++v5;
      }
    }

    v7 = *(*(v0 + 8) + 8 * v5);
    *(v0 + 24) = (*(v0 + 32) | (v7 << v4)) & (v3 - 1);
    v3 = v2 - v4;
    if (!__OFSUB__(v2, v4))
    {
      v8 = v5 == 2 && v2 == 5;
      v9 = 64;
      if (v8)
      {
        v9 = 32;
      }

      v4 = v7 >> v3;
      *(v0 + 32) = v7 >> v3;
      v10 = __OFSUB__(v9, v3);
      v2 = v9 - v3;
      if (!v10)
      {
        goto LABEL_22;
      }

      __break(1u);
LABEL_21:
      v11 = *(v0 + 32);
      *(v0 + 24) = v11 & (v3 - 1);
      *(v0 + 32) = v11 >> v2;
      v2 = v4 - v2;
LABEL_22:
      *(v0 + 40) = v2;
      return;
    }

    __break(1u);
    goto LABEL_24;
  }

  if ((*(v0 + 48) & 1) == 0)
  {
    v1 = 0;
    *(v0 + 48) = 1;
    *(v0 + 16) = 0;
    goto LABEL_4;
  }

LABEL_25:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Int_optional __swiftcall _HashTable.BucketIterator.findNext()()
{
  _HashTable.BucketIterator.advance()();
  v1 = v0[3];
  if (v1)
  {
    v2 = -1 << **v0;
    v3 = (v2 ^ ~v1) + (*(*v0 + 8) >> 6);
    if (v3 >= ~v2)
    {
      v4 = ~v2;
    }

    else
    {
      v4 = 0;
    }

    v5 = v3 - v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v1 == 0;
  result.value = v5;
  result.is_nil = v6;
  return result;
}

Swift::Void __swiftcall _HashTable.BucketIterator.advanceToNextUnoccupiedBucket()()
{
  while (*(v0 + 24))
  {
    _HashTable.BucketIterator.advance()();
  }
}

void *sub_265DFD510@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = result[3];
  if (v2)
  {
    v3 = -1 << **result;
    v4 = (v3 ^ ~v2) + (*(*result + 8) >> 6);
    if (v4 >= ~v3)
    {
      v5 = ~v3;
    }

    else
    {
      v5 = 0;
    }

    v6 = v4 - v5;
  }

  else
  {
    v6 = 0;
  }

  *a2 = v6;
  *(a2 + 8) = v2 == 0;
  return result;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
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

uint64_t getEnumTagSinglePayload for _HashTable.BucketIterator(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 49))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 48);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for _HashTable.BucketIterator(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2 + 1;
    }
  }

  return result;
}

void *_HashTable.UnsafeHandle.wordCount.getter(void *result)
{
  v1 = (*result & 0x3FLL) << *result;
  v2 = __OFADD__(v1, 64);
  v3 = v1 + 64;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    v5 = v3 - 1;
    v4 = v3 < 1;
    v6 = v3 + 62;
    if (!v4)
    {
      v6 = v5;
    }

    return (v6 >> 6);
  }

  return result;
}

Swift::Int __swiftcall _HashTable.UnsafeHandle.word(after:)(Swift::Int after)
{
  if (__OFADD__(after, 1))
  {
    __break(1u);
    goto LABEL_9;
  }

  v2 = (*v1 & 0x3FLL) << *v1;
  v3 = __OFADD__(v2, 64);
  v4 = v2 + 64;
  if (v3)
  {
LABEL_9:
    __break(1u);
    return after;
  }

  v6 = v4 - 1;
  v5 = v4 < 1;
  v7 = v4 + 62;
  if (!v5)
  {
    v7 = v6;
  }

  if (after + 1 == v7 >> 6)
  {
    return 0;
  }

  return ++after;
}

Swift::Int_optional __swiftcall _HashTable.UnsafeHandle._value(forBucketContents:)(Swift::UInt64 forBucketContents)
{
  if (forBucketContents)
  {
    v2 = -1 << *v1;
    v3 = (v2 ^ ~forBucketContents) + (v1[1] >> 6);
    if (v3 >= ~v2)
    {
      v4 = ~v2;
    }

    else
    {
      v4 = 0;
    }

    v5 = v3 - v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = forBucketContents == 0;
  v7 = v5;
  result.value = v7;
  result.is_nil = v6;
  return result;
}

Swift::UInt64 __swiftcall _HashTable.UnsafeHandle._bucketContents(for:)(Swift::Int_optional a1)
{
  if (a1.is_nil)
  {
    return 0;
  }

  else
  {
    return (-1 << *v1) ^ ~((((a1.value - (v1[1] >> 6)) >> 63) & ~(-1 << *v1)) + a1.value - (v1[1] >> 6));
  }
}

uint64_t _HashTable.UnsafeHandle.bias.setter(uint64_t result, void *a2)
{
  v2 = 1 << *a2;
  v3 = __OFSUB__(v2, 1);
  v4 = v2 - 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    v5 = (v4 & (result >> 63)) + result;
    if (v5 < v4)
    {
      v4 = 0;
    }

    a2[1] = a2[1] & 0x3FLL | ((v5 - v4) << 6);
  }

  return result;
}

uint64_t (*_HashTable.UnsafeHandle.bias.modify(uint64_t *a1, uint64_t a2))(uint64_t *a1)
{
  *a1 = *(a2 + 8) >> 6;
  a1[1] = a2;
  return _HashTable.UnsafeHandle.bias.modify;
}

uint64_t _HashTable.UnsafeHandle.capacity.getter(uint64_t result)
{
  v1 = *result & 0x3FLL;
  if (v1 < 5)
  {
    return 15;
  }

  v2 = (1 << v1) * 0.75;
  if (COERCE__INT64(fabs(v2)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v2 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v2 < 9.22337204e18)
  {
    return v2;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t _HashTable.UnsafeHandle.bucket(after:)(uint64_t result, void *a2)
{
  if (__OFADD__(result, 1))
  {
    __break(1u);
  }

  else if (result + 1 == 1 << *a2)
  {
    return 0;
  }

  else
  {
    ++result;
  }

  return result;
}

uint64_t _HashTable.UnsafeHandle.bucket(before:)(uint64_t a1, void *a2)
{
  if (!a1)
  {
    a1 = 1 << *a2;
  }

  v2 = __OFSUB__(a1, 1);
  result = a1 - 1;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

Swift::Int __swiftcall _HashTable.UnsafeHandle.word(before:)(Swift::Int before)
{
  if (before)
  {
    v2 = __OFSUB__(before--, 1);
    if (!v2)
    {
      return before;
    }

    __break(1u);
LABEL_9:
    __break(1u);
    return before;
  }

  v3 = (*v1 & 0x3FLL) << *v1;
  v2 = __OFADD__(v3, 64);
  v4 = v3 + 64;
  if (v2)
  {
    goto LABEL_9;
  }

  v6 = v4 - 1;
  v5 = v4 < 1;
  v7 = v4 + 62;
  if (!v5)
  {
    v7 = v6;
  }

  return (v7 >> 6) - 1;
}

void *(*_HashTable.UnsafeHandle.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(void *result)
{
  a1[1] = a2;
  a1[2] = a4;
  *a1 = *(a4 + 8 * a2);
  return _HashTable.UnsafeHandle.subscript.modify;
}

uint64_t _HashTable.UnsafeHandle.subscript.getter(uint64_t result, void *a2, uint64_t a3)
{
  v3 = *a2 & 0x3FLL;
  v4 = (v3 * result) >> 6;
  v5 = *(a3 + 8 * v4) >> (v3 * result);
  v6 = 64 - ((v3 * result) & 0x3F);
  if (v6 >= v3)
  {
    return v5 & ~(-1 << v3);
  }

  if (!__OFADD__(v3 << v3, 64))
  {
    v7 = (v3 << v3) + 126;
    if (((v3 << v3) + 64) >= 1)
    {
      v7 = (v3 << v3) + 63;
    }

    if (v4 + 1 == v7 >> 6)
    {
      v8 = 0;
    }

    else
    {
      v8 = v4 + 1;
    }

    v5 = (*(a3 + 8 * v8) << v6) | v5 & ~(-1 << v6);
    return v5 & ~(-1 << v3);
  }

  __break(1u);
  return result;
}

unint64_t _HashTable.UnsafeHandle.subscript.setter(unint64_t result, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = (*a3 & 0x3FLL) * a2;
  v5 = v4 >> 6;
  *(a4 + 8 * (v4 >> 6)) = ((((-1 << *a3) + 1) << v4) - 1) & *(a4 + 8 * (v4 >> 6)) | (result << v4);
  v6 = 64 - (v4 & 0x3F);
  v7 = *a3 & 0x3FLL;
  if (v6 < v7)
  {
    v8 = v7 << v7;
    v9 = __OFADD__(v8, 64);
    v10 = v8 + 64;
    if (v9)
    {
      __break(1u);
    }

    else
    {
      v12 = v10 - 1;
      v11 = v10 < 1;
      v13 = v10 + 62;
      if (!v11)
      {
        v13 = v12;
      }

      if (v5 + 1 == v13 >> 6)
      {
        v14 = 0;
      }

      else
      {
        v14 = v5 + 1;
      }

      *(a4 + 8 * v14) = *(a4 + 8 * v14) & (-1 << (*a3 - v6)) | (result >> v6);
    }
  }

  return result;
}

unint64_t (*_HashTable.UnsafeHandle.subscript.modify(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4))(uint64_t a1)
{
  a1[2] = a3;
  a1[3] = a4;
  a1[1] = a2;
  *a1 = _HashTable.UnsafeHandle.subscript.getter(a2, a3, a4);
  return _HashTable.UnsafeHandle.subscript.modify;
}

unint64_t _HashTable.UnsafeHandle.subscript.getter(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = _HashTable.UnsafeHandle.subscript.getter(a1, a2, a3);
  if (!v4)
  {
    return 0;
  }

  v5 = -1 << *a2;
  v6 = (v5 ^ ~v4) + (a2[1] >> 6);
  if (v6 >= ~v5)
  {
    v7 = ~v5;
  }

  else
  {
    v7 = 0;
  }

  return v6 - v7;
}

unint64_t _HashTable.UnsafeHandle.subscript.setter(uint64_t a1, char a2, uint64_t a3, void *a4, uint64_t a5)
{
  if (a2)
  {
    v5 = 0;
  }

  else
  {
    v5 = (-1 << *a4) ^ ~((((a1 - (a4[1] >> 6)) >> 63) & ~(-1 << *a4)) + a1 - (a4[1] >> 6));
  }

  return _HashTable.UnsafeHandle.subscript.setter(v5, a3, a4, a5);
}

void (*_HashTable.UnsafeHandle.subscript.modify(unint64_t **a1, uint64_t a2, void *a3, uint64_t a4))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[3] = a3;
  v8[4] = a4;
  v8[2] = a2;
  v10 = _HashTable.UnsafeHandle.subscript.getter(a2, a3, a4);
  if (v10)
  {
    v11 = -1 << *a3;
    v12 = (v11 ^ ~v10) + (a3[1] >> 6);
    if (v12 >= ~v11)
    {
      v13 = ~v11;
    }

    else
    {
      v13 = 0;
    }

    v14 = v12 - v13;
  }

  else
  {
    v14 = 0;
  }

  *v9 = v14;
  *(v9 + 8) = v10 == 0;
  return _HashTable.UnsafeHandle.subscript.modify;
}

void _HashTable.UnsafeHandle.subscript.modify(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  if (*(*a1 + 8))
  {
    v3 = 0;
  }

  else
  {
    v4 = *v1 - (v2[1] >> 6);
    v3 = (-1 << *v2) ^ ~(((v4 >> 63) & ~(-1 << *v2)) + v4);
  }

  _HashTable.UnsafeHandle.subscript.setter(v3, v1[2], v2, v1[4]);

  free(v1);
}

uint64_t _HashTable.UnsafeHandle._find<A>(_:in:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v49 = a2;
  v51 = a6;
  v12 = *(*(a6 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v45 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v42 - v17;
  v47 = v12;
  v19 = *(v12 + 8);
  v50 = a5;
  v20 = swift_getAssociatedTypeWitness();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v42 - v23;
  v25 = *a3;
  v48 = a1;
  v52 = a7;
  result = dispatch thunk of Hashable._rawHashValue(seed:)();
  v27 = 1 << *a3;
  v28 = __OFSUB__(v27, 1);
  v29 = v27 - 1;
  if (v28)
  {
    __break(1u);
  }

  else
  {
    v30 = _HashTable.UnsafeHandle.startFind(_:)(&v54, v29 & result, a3, a4);
    if ((v31 & 1) == 0)
    {
      v32 = (v13 + 8);
      v44 = (v21 + 16);
      v43 = (v21 + 8);
      while (1)
      {
        v33 = v45;
        dispatch thunk of Collection.startIndex.getter();
        dispatch thunk of RandomAccessCollection.index(_:offsetBy:)();
        v34 = *v32;
        v35 = v33;
        v36 = AssociatedTypeWitness;
        (*v32)(v35, AssociatedTypeWitness);
        v37 = dispatch thunk of Collection.subscript.read();
        (*v44)(v24);
        v37(v53, 0);
        v34(v18, v36);
        v38 = *(v52 + 8);
        LOBYTE(v34) = dispatch thunk of static Equatable.== infix(_:_:)();
        (*v43)(v24, v20);
        if (v34)
        {
          break;
        }

        _HashTable.BucketIterator.advance()();
        if (!v55)
        {
          return 0;
        }

        v39 = -1 << *v54;
        v40 = (v39 ^ ~v55) + (v54[1] >> 6);
        if (v40 >= ~v39)
        {
          v41 = ~v39;
        }

        else
        {
          v41 = 0;
        }

        v30 = v40 - v41;
      }
    }

    return v30;
  }

  return result;
}

uint64_t _HashTable.UnsafeHandle.firstOccupiedBucketInChain(with:)(uint64_t result, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = *a2 & 0x3F;
  v5 = 1 << *a2;
  v6 = *a2;
  v7 = *a2;
  do
  {
    if (result)
    {
      v8 = result;
    }

    else
    {
      v8 = v5;
    }

    if (!result)
    {
      LOBYTE(v7) = v3;
    }

    v9 = __OFSUB__(v8, 1);
    v10 = v8 - 1;
    if (v9)
    {
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
      return result;
    }

    if (!result)
    {
      LOBYTE(v6) = v3;
    }

    result = (v10 * v4) >> 6;
    v11 = *(a3 + 8 * result) >> (v10 * v4);
    v12 = 64 - ((v10 * v4) & 0x3F);
    if (v12 < v4)
    {
      v13 = (v7 & 0x3F) << v7;
      v9 = __OFADD__(v13, 64);
      v14 = v13 + 64;
      if (v9)
      {
        goto LABEL_24;
      }

      v16 = v14 - 1;
      v15 = v14 < 1;
      v17 = v14 + 62;
      if (!v15)
      {
        v17 = v16;
      }

      if (result + 1 == v17 >> 6)
      {
        v6 = 0;
      }

      else
      {
        v6 = result + 1;
      }

      v11 = (*(a3 + 8 * v6) << v12) | v11 & ~(-1 << v12);
      LOBYTE(v6) = v7;
    }

    result = v10;
  }

  while ((v11 & (v5 - 1)) != 0);
  if (__OFADD__(v10, 1))
  {
    goto LABEL_25;
  }

  if (v10 + 1 == 1 << v6)
  {
    return 0;
  }

  else
  {
    return v10 + 1;
  }
}

void specialized _HashTable.UnsafeHandle.delete(bucket:hashValueGenerator:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  v5 = a2;
  v6 = a1;
  v41 = a2;
  v42 = a3;
  v43 = a1;
  v44 = _HashTable.UnsafeHandle._startIterator(bucket:)(a1, a2, a3);
  v45 = v7;
  v46 = v8;
  v47 = 0;
  _HashTable.BucketIterator.advance()();
  v9 = v44;
  if (!v44)
  {
LABEL_23:

    _HashTable.UnsafeHandle.subscript.setter(0, v6, v5, v4);
    return;
  }

  v35 = v4;
  v36 = v5;
  v34 = _HashTable.UnsafeHandle.firstOccupiedBucketInChain(with:)(v6, v5, v4);
  while (1)
  {
    v14 = v41;
    v15 = -1 << *v41;
    v16 = (v15 ^ ~v9) + (v41[1] >> 6);
    v17 = v16 >= ~v15 ? ~v15 : 0;
    v18 = v16 - v17;
    if (v18 < 0)
    {
      break;
    }

    v19 = *(a4 + 8);
    if (v18 >= *(v19 + 16))
    {
      goto LABEL_27;
    }

    v39 = v6;
    v20 = *v5;
    v21 = v19 + 56 * v18;
    v22 = *(v21 + 32);
    v23 = *(v21 + 40);
    v24 = *(v21 + 48);
    v25 = *(v21 + 56);
    v38 = *(v21 + 64);
    v26 = *(v21 + 72);
    v27 = *(v21 + 80);
    Hasher.init(_seed:)();
    MEMORY[0x266772770](v22);
    v28 = *(*v23 + 120);

    v28(v40);
    String.hash(into:)();
    if (v26 == 1)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      Hasher._combine(_:)(1u);
      MEMORY[0x266772770](v38);
    }

    MEMORY[0x266772770](v27);
    v29 = Hasher._finalize()();

    v5 = v36;
    v30 = 1 << *v36;
    v31 = __OFSUB__(v30, 1);
    v32 = v30 - 1;
    if (v31)
    {
      goto LABEL_28;
    }

    v33 = v32 & v29;
    v6 = v39;
    if (v39 >= v34)
    {
      v4 = v35;
      if (v33 < v34)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v4 = v35;
      if (v33 >= v34)
      {
        goto LABEL_3;
      }
    }

    if (v39 >= v33)
    {
LABEL_3:
      v10 = -1 << *v14;
      v11 = (v10 ^ ~v9) + (v14[1] >> 6);
      if (v11 >= ~v10)
      {
        v12 = v10 + 1;
      }

      else
      {
        v12 = 0;
      }

      v13 = v11 - (v36[1] >> 6) + v12;
      _HashTable.UnsafeHandle.subscript.setter(((v32 & (v13 >> 63)) + v13) ^ v32, v39, v36, v4);
      v6 = v43;
    }

LABEL_7:
    _HashTable.BucketIterator.advance()();
    v9 = v44;
    if (!v44)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
}

{
  v7 = a1;
  v32 = a2;
  v33 = a3;
  v34 = a1;
  v35 = _HashTable.UnsafeHandle._startIterator(bucket:)(a1, a2, a3);
  v36 = v8;
  v37 = v9;
  v38 = 0;
  _HashTable.BucketIterator.advance()();
  v10 = v35;
  if (!v35)
  {

    _HashTable.UnsafeHandle.subscript.setter(0, v7, a2, a3);
    return;
  }

  v11 = _HashTable.UnsafeHandle.firstOccupiedBucketInChain(with:)(v7, a2, a3);
  while (1)
  {
    v16 = v32;
    v17 = -1 << *v32;
    v18 = (v17 ^ ~v10) + (v32[1] >> 6);
    v19 = v18 >= ~v17 ? ~v17 : 0;
    v20 = v18 - v19;
    if (v20 < 0)
    {
      break;
    }

    v21 = *(a4 + 8);
    if (v20 >= *(v21 + 16))
    {
      goto LABEL_28;
    }

    v22 = *a2;
    outlined init with copy of WeakBox<SGEdge>(v21 + 8 * v20 + 32, v31);
    Hasher.init(_seed:)();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v24 = Strong;
      Hasher._combine(_:)(1u);
      v25 = v24;
      NSObject.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    v26 = Hasher._finalize()();
    outlined destroy of WeakBox<SGEdge>(v31);
    v27 = 1 << *a2;
    v28 = __OFSUB__(v27, 1);
    v29 = v27 - 1;
    if (v28)
    {
      goto LABEL_29;
    }

    v30 = v29 & v26;
    if (v7 >= v11)
    {
      if (v30 < v11)
      {
        goto LABEL_7;
      }
    }

    else if (v30 >= v11)
    {
      goto LABEL_3;
    }

    if (v7 >= v30)
    {
LABEL_3:
      v12 = -1 << *v16;
      v13 = (v12 ^ ~v10) + (v16[1] >> 6);
      if (v13 >= ~v12)
      {
        v14 = v12 + 1;
      }

      else
      {
        v14 = 0;
      }

      v15 = v13 - (a2[1] >> 6) + v14;
      _HashTable.UnsafeHandle.subscript.setter(((v29 & (v15 >> 63)) + v15) ^ v29, v7, a2, a3);
      v7 = v34;
    }

LABEL_7:
    _HashTable.BucketIterator.advance()();
    v10 = v35;
    if (!v35)
    {
      _HashTable.UnsafeHandle.subscript.setter(0, v7, a2, a3);
      return;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
}

void specialized _HashTable.UnsafeHandle.delete(bucket:hashValueGenerator:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  v30 = _HashTable.UnsafeHandle._startIterator(bucket:)(a1, a2, a3);
  _HashTable.BucketIterator.advance()();
  v8 = v30;
  if (!v30)
  {

    _HashTable.UnsafeHandle.subscript.setter(0, v7, a2, a3);
    return;
  }

  v9 = _HashTable.UnsafeHandle.firstOccupiedBucketInChain(with:)(v7, a2, a3);
  while (1)
  {
    v14 = -1 << *a2;
    v15 = (v14 ^ ~v8) + (a2[1] >> 6);
    v16 = v15 >= ~v14 ? ~v14 : 0;
    v17 = v15 - v16;
    if (v17 < 0)
    {
      break;
    }

    v18 = *(a4 + 8);
    if (v17 >= *(v18 + 16))
    {
      goto LABEL_24;
    }

    v19 = *a2;
    v20 = v18 + 16 * v17;
    v21 = *(v20 + 32);
    v22 = *(v20 + 40);
    Hasher.init(_seed:)();

    String.hash(into:)();
    v23 = Hasher._finalize()();

    v24 = 1 << *a2;
    v25 = __OFSUB__(v24, 1);
    v26 = v24 - 1;
    if (v25)
    {
      goto LABEL_25;
    }

    v27 = v26 & v23;
    if (v7 >= v9)
    {
      if (v27 < v9)
      {
        goto LABEL_7;
      }

LABEL_18:
      if (v7 < v27)
      {
        goto LABEL_7;
      }

      goto LABEL_3;
    }

    if (v27 < v9)
    {
      goto LABEL_18;
    }

LABEL_3:
    v10 = -1 << *a2;
    v11 = (v10 ^ ~v8) + (a2[1] >> 6);
    if (v11 >= ~v10)
    {
      v12 = v10 + 1;
    }

    else
    {
      v12 = 0;
    }

    v13 = v11 - (a2[1] >> 6) + v12;
    _HashTable.UnsafeHandle.subscript.setter(((v26 & (v13 >> 63)) + v13) ^ v26, v7, a2, a3);
    v7 = a1;
LABEL_7:
    _HashTable.BucketIterator.advance()();
    v8 = v30;
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
}

{
  v7 = a1;
  v23 = _HashTable.UnsafeHandle._startIterator(bucket:)(a1, a2, a3);
  _HashTable.BucketIterator.advance()();
  v8 = v23;
  if (!v23)
  {

    _HashTable.UnsafeHandle.subscript.setter(0, v7, a2, a3);
    return;
  }

  v9 = _HashTable.UnsafeHandle.firstOccupiedBucketInChain(with:)(v7, a2, a3);
  while (1)
  {
    v10 = -1 << *a2;
    v11 = (v10 ^ ~v8) + (a2[1] >> 6);
    v12 = v11 >= ~v10 ? ~v10 : 0;
    v13 = v11 - v12;
    if ((v11 - v12) < 0)
    {
      break;
    }

    v14 = *(a4 + 8);
    if (v13 >= *(v14 + 16))
    {
      goto LABEL_28;
    }

    v15 = *a2;
    v16 = MEMORY[0x266772750](*a2, *(v14 + 8 * v13 + 32));
    v17 = (1 << v15) - 1;
    if (__OFSUB__(1 << v15, 1))
    {
      goto LABEL_29;
    }

    v18 = v16 & v17;
    if (v7 >= v9)
    {
      if (v18 >= v9 && v7 >= v18)
      {
LABEL_3:
        _HashTable.UnsafeHandle.subscript.setter(((v17 & ((v13 - (a2[1] >> 6)) >> 63)) + v13 - (a2[1] >> 6)) ^ v17, v7, a2, a3);
        v7 = a1;
      }
    }

    else if (v18 >= v9 || v7 >= v18)
    {
      goto LABEL_3;
    }

    _HashTable.BucketIterator.advance()();
    v8 = v23;
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
}

{
  v7 = a1;
  v28 = _HashTable.UnsafeHandle._startIterator(bucket:)(a1, a2, a3);
  _HashTable.BucketIterator.advance()();
  v8 = v28;
  if (!v28)
  {

    _HashTable.UnsafeHandle.subscript.setter(0, v7, a2, a3);
    return;
  }

  v9 = _HashTable.UnsafeHandle.firstOccupiedBucketInChain(with:)(v7, a2, a3);
  while (1)
  {
    v14 = -1 << *a2;
    v15 = (v14 ^ ~v8) + (a2[1] >> 6);
    v16 = v15 >= ~v14 ? ~v14 : 0;
    v17 = v15 - v16;
    if (v17 < 0)
    {
      break;
    }

    v18 = *(a4 + 8);
    if (v17 >= *(v18 + 16))
    {
      goto LABEL_24;
    }

    v19 = *a2;
    v20 = *(v18 + 8 * v17 + 32);
    Hasher.init(_seed:)();
    MEMORY[0x266772770](v20);
    v21 = Hasher._finalize()();
    v22 = 1 << *a2;
    v23 = __OFSUB__(v22, 1);
    v24 = v22 - 1;
    if (v23)
    {
      goto LABEL_25;
    }

    v25 = v24 & v21;
    if (v7 >= v9)
    {
      if (v25 < v9)
      {
        goto LABEL_7;
      }

LABEL_18:
      if (v7 < v25)
      {
        goto LABEL_7;
      }

      goto LABEL_3;
    }

    if (v25 < v9)
    {
      goto LABEL_18;
    }

LABEL_3:
    v10 = -1 << *a2;
    v11 = (v10 ^ ~v8) + (a2[1] >> 6);
    if (v11 >= ~v10)
    {
      v12 = v10 + 1;
    }

    else
    {
      v12 = 0;
    }

    v13 = v11 - (a2[1] >> 6) + v12;
    _HashTable.UnsafeHandle.subscript.setter(((v24 & (v13 >> 63)) + v13) ^ v24, v7, a2, a3);
    v7 = a1;
LABEL_7:
    _HashTable.BucketIterator.advance()();
    v8 = v28;
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
}

{
  v7 = a1;
  v32 = _HashTable.UnsafeHandle._startIterator(bucket:)(a1, a2, a3);
  _HashTable.BucketIterator.advance()();
  v8 = v32;
  if (!v32)
  {

    _HashTable.UnsafeHandle.subscript.setter(0, v7, a2, a3);
    return;
  }

  v29 = a3;
  v9 = _HashTable.UnsafeHandle.firstOccupiedBucketInChain(with:)(v7, a2, a3);
  while (1)
  {
    v14 = -1 << *a2;
    v15 = (v14 ^ ~v8) + (a2[1] >> 6);
    v16 = v15 >= ~v14 ? ~v14 : 0;
    v17 = v15 - v16;
    if (v17 < 0)
    {
      break;
    }

    v18 = *(a4 + 8);
    if (v17 >= *(v18 + 16))
    {
      goto LABEL_24;
    }

    v19 = *a2;
    v20 = (v18 + 24 * v17);
    v21 = v20[4];
    v22 = v20[5];
    v23 = v20[6];
    Hasher.init(_seed:)();
    MEMORY[0x2667727B0](v21);

    String.hash(into:)();
    v24 = Hasher._finalize()();

    v25 = 1 << *a2;
    v26 = __OFSUB__(v25, 1);
    v27 = v25 - 1;
    if (v26)
    {
      goto LABEL_25;
    }

    v28 = v27 & v24;
    if (v7 >= v9)
    {
      if (v28 < v9)
      {
        goto LABEL_7;
      }

LABEL_18:
      if (v7 < v28)
      {
        goto LABEL_7;
      }

      goto LABEL_3;
    }

    if (v28 < v9)
    {
      goto LABEL_18;
    }

LABEL_3:
    v10 = -1 << *a2;
    v11 = (v10 ^ ~v8) + (a2[1] >> 6);
    if (v11 >= ~v10)
    {
      v12 = v10 + 1;
    }

    else
    {
      v12 = 0;
    }

    v13 = v11 - (a2[1] >> 6) + v12;
    _HashTable.UnsafeHandle.subscript.setter(((v27 & (v13 >> 63)) + v13) ^ v27, v7, a2, v29);
    v7 = a1;
LABEL_7:
    _HashTable.BucketIterator.advance()();
    v8 = v32;
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
}

unint64_t _HashTable.UnsafeHandle.delete(bucket:hashValueGenerator:)(uint64_t a1, uint64_t (*a2)(unint64_t, uint64_t), uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v8 = a1;
  v27 = _HashTable.UnsafeHandle._startIterator(bucket:)(a1, a4, a5);
  _HashTable.BucketIterator.advance()();
  v9 = v27;
  if (v27)
  {
    v10 = _HashTable.UnsafeHandle.firstOccupiedBucketInChain(with:)(v8, a4, a5);
    while (1)
    {
      v15 = -1 << *a4;
      v16 = (v15 ^ ~v9) + (a4[1] >> 6);
      if (v16 >= ~v15)
      {
        v17 = ~v15;
      }

      else
      {
        v17 = 0;
      }

      result = a2(v16 - v17, *a4);
      v19 = 1 << *a4;
      v20 = __OFSUB__(v19, 1);
      v21 = v19 - 1;
      if (v20)
      {
        __break(1u);
        return result;
      }

      v22 = v21 & result;
      if (v8 >= v10)
      {
        if (v22 >= v10 && v8 >= v22)
        {
LABEL_3:
          v11 = -1 << *a4;
          v12 = (v11 ^ ~v9) + (a4[1] >> 6);
          if (v12 >= ~v11)
          {
            v13 = v11 + 1;
          }

          else
          {
            v13 = 0;
          }

          v14 = v12 - (a4[1] >> 6) + v13;
          _HashTable.UnsafeHandle.subscript.setter(((v21 & (v14 >> 63)) + v14) ^ v21, v8, a4, a5);
          v8 = a1;
        }
      }

      else if (v22 >= v10 || v8 >= v22)
      {
        goto LABEL_3;
      }

      _HashTable.BucketIterator.advance()();
      v9 = v27;
    }
  }

  return _HashTable.UnsafeHandle.subscript.setter(0, v8, a4, a5);
}

uint64_t _HashTable.UnsafeHandle.adjustContents<A>(preparingForInsertionOfElementAtOffset:in:)(uint64_t a1, char *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v206 = a7;
  v197 = a6;
  v11 = *(*(a6 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v186 = type metadata accessor for PartialRangeFrom();
  v185 = *(v186 - 8);
  v14 = *(v185 + 64);
  MEMORY[0x28223BE20](v186);
  v184 = &v183 - v15;
  v16 = *(v11 + 8);
  v17 = swift_getAssociatedTypeWitness();
  v208 = *(v17 - 8);
  v18 = v208[8];
  MEMORY[0x28223BE20](v17);
  v204 = &v183 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v205 = &v183 - v21;
  v191 = v22;
  v23 = type metadata accessor for Optional();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v200 = (&v183 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v26);
  v201 = &v183 - v27;
  v28 = swift_getAssociatedTypeWitness();
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v194 = &v183 - v30;
  v199 = AssociatedTypeWitness;
  v196 = AssociatedConformanceWitness;
  v189 = type metadata accessor for PartialRangeUpTo();
  v188 = *(v189 - 8);
  v31 = *(v188 + 64);
  MEMORY[0x28223BE20](v189);
  v187 = &v183 - v32;
  v193 = *(swift_getAssociatedConformanceWitness() + 8);
  v195 = v28;
  v207 = swift_getAssociatedTypeWitness();
  v190 = *(v207 - 8);
  v33 = *(v190 + 64);
  MEMORY[0x28223BE20](v207);
  v202 = &v183 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v203 = &v183 - v36;
  v37 = *(AssociatedTypeWitness - 8);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v39);
  v41 = &v183 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v44 = &v183 - v43;
  dispatch thunk of Collection.startIndex.getter();
  v198 = v44;
  dispatch thunk of RandomAccessCollection.index(_:offsetBy:)();
  v192 = v37;
  v45 = v41;
  v46 = v199;
  v197 = *(v37 + 8);
  v197(v45, v199);
  if (a1 < dispatch thunk of Collection.count.getter() / 2)
  {
    _HashTable.Header.bias.setter((a3[1] >> 6) + 1);
    if (specialized static _HashTable.maximumCapacity(forScale:)(*a3 & 0x3FLL) / 3 < a1)
    {
      v47 = _HashTable.UnsafeHandle._startIterator(bucket:)(0, a3, a4);
      v48 = 0;
      v209 = a3;
      v210 = a4;
      v211 = 0;
      v212 = v47;
      v213 = v49;
      v214 = v50;
      v215 = 0;
      while (1)
      {
        if (v212)
        {
          v51 = v209;
          v52 = ~(-1 << *v209);
          v53 = v209[1] >> 6;
          v54 = v53 + (v212 ^ v52);
          v55 = v54 >= v52 ? ~(-1 << *v209) : 0;
          v56 = v54 - v55;
          if (v56 <= a1)
          {
            v57 = __OFSUB__(v56, 1);
            v58 = v56 - 1;
            if (v57)
            {
              goto LABEL_155;
            }

            v59 = *v209 & 0x3FLL;
            v60 = ((v52 & ((v58 - v53) >> 63)) + v58 - v53) ^ v52;
            v61 = v60 ^ v212;
            v62 = v59 * v48;
            v63 = (v59 * v48) >> 6;
            v64 = (v59 * v48) & 0x3F;
            v65 = v210;
            *(v210 + 8 * v63) ^= (v60 ^ v212) << v62;
            v66 = *v51 & 0x3FLL;
            if (64 - v64 < v66)
            {
              v67 = v66 << v66;
              v57 = __OFADD__(v67, 64);
              v68 = v67 + 64;
              if (v57)
              {
                goto LABEL_157;
              }

              v70 = v68 - 1;
              v69 = v68 < 1;
              v71 = v68 + 62;
              if (!v69)
              {
                v71 = v70;
              }

              if (v63 + 1 == v71 >> 6)
              {
                v72 = 0;
              }

              else
              {
                v72 = v63 + 1;
              }

              *(v65 + 8 * v72) ^= v61 >> (64 - v64);
            }

            v212 = v60;
          }
        }

        _HashTable.BucketIterator.advance()();
        v48 = v211;
        if (!v211)
        {
          return (v197)(v198, v46);
        }
      }
    }

    v100 = *(v196 + 8);
    v101 = v198;
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      v196 = v37 + 8;
      v102 = v187;
      (*(v192 + 16))(v187, v101, v46);
      v103 = v189;
      swift_getWitnessTable();
      Collection.subscript.getter();
      (*(v188 + 8))(v102, v103);
      dispatch thunk of Sequence.makeIterator()();
      v104 = swift_getAssociatedConformanceWitness();
      v105 = v201;
      v204 = v104;
      dispatch thunk of IteratorProtocol.next()();
      v106 = v105;
      v107 = v191;
      v202 = v208[6];
      if ((v202)(v105, 1, v191) == 1)
      {
LABEL_91:
        (*(v190 + 8))(v203, v207);
        return (v197)(v198, v199);
      }

      v200 = v208[4];
      v208 += 4;
      v108 = (v208 - 3);
      v109 = 1;
      while (1)
      {
        v200(v205, v106, v107);
        v110 = *a3;
        v111 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v112 = 1 << *a3;
        v57 = __OFSUB__(v112, 1);
        v113 = v112 - 1;
        if (v57)
        {
          goto LABEL_149;
        }

        v114 = v113 & v111;
        v115 = _HashTable.UnsafeHandle._startIterator(bucket:)(v113 & v111, a3, a4);
        v209 = a3;
        v210 = a4;
        if (!v115)
        {
          goto LABEL_162;
        }

        v118 = *a3 & 0x3FLL;
        v119 = 1 << *a3;
        v120 = v119 - 1;
        v121 = a3[1] >> 6;
        v122 = v121 + (v115 ^ (v119 - 1));
        if (v122 >= v119 - 1)
        {
          v123 = v119 - 1;
        }

        else
        {
          v123 = 0;
        }

        if (v122 - v123 != v109)
        {
          v124 = 0;
          v125 = __OFADD__(v118 << v118, 64);
          v126 = (v118 << v118) + 126;
          if ((v118 << v118) + 64 >= 1)
          {
            v126 = (v118 << v118) + 63;
          }

          v127 = v126 >> 6;
          while (1)
          {
            if (++v114 == v119)
            {
              if (v124)
              {
                goto LABEL_164;
              }

              v114 = 0;
              v124 = 1;
            }

            if (v117 >= v118)
            {
              v57 = __OFSUB__(v117, v118);
              v117 -= v118;
              if (v57)
              {
                __break(1u);
LABEL_142:
                __break(1u);
LABEL_143:
                __break(1u);
LABEL_144:
                __break(1u);
LABEL_145:
                __break(1u);
                goto LABEL_146;
              }

              v134 = v116 >> v118;
            }

            else
            {
              v128 = (v114 * v118) >> 6;
              if (v117)
              {
                if (v125)
                {
                  goto LABEL_147;
                }

                if (v128 + 1 == v127)
                {
                  v128 = 0;
                }

                else
                {
                  ++v128;
                }
              }

              v129 = v118 - v117;
              if (__OFSUB__(v118, v117))
              {
                goto LABEL_142;
              }

              if (v128 == 2 && v118 == 5)
              {
                v131 = 32;
              }

              else
              {
                v131 = 64;
              }

              v57 = __OFSUB__(v131, v129);
              v132 = v131 - v129;
              if (v57)
              {
                goto LABEL_143;
              }

              v133 = *(a4 + 8 * v128);
              v116 |= v133 << v117;
              v134 = v133 >> v129;
              v117 = v132;
            }

            v115 = v116 & v120;
            if ((v116 & v120) == 0)
            {
              goto LABEL_162;
            }

            v135 = v121 + (v115 ^ v120);
            if (v135 >= v120)
            {
              v136 = v119 - 1;
            }

            else
            {
              v136 = 0;
            }

            v116 = v134;
            if (v135 - v136 == v109)
            {
              v116 = v134;
              goto LABEL_85;
            }
          }
        }

        v124 = 0;
LABEL_85:
        v215 = v124;
        v211 = v114;
        v212 = v115;
        v213 = v116;
        v214 = v117;
        v137 = -1 << v118;
        v138 = (v137 ^ ~v115) + v121;
        if (v138 >= ~v137)
        {
          v139 = ~v137;
        }

        else
        {
          v139 = 0;
        }

        v140 = v138 - v139;
        if (__OFSUB__(v140, 1))
        {
          goto LABEL_151;
        }

        _HashTable.BucketIterator.currentValue.setter(v140 - 1, 0);
        (*v108)(v205, v107);
        v57 = __OFADD__(v109++, 1);
        if (v57)
        {
          goto LABEL_152;
        }

        v141 = v201;
        dispatch thunk of IteratorProtocol.next()();
        v106 = v141;
        if ((v202)(v141, 1, v107) == 1)
        {
          goto LABEL_91;
        }
      }
    }

    goto LABEL_160;
  }

  v73 = dispatch thunk of Collection.count.getter();
  v74 = v73 - a1;
  if (__OFSUB__(v73, a1))
  {
    goto LABEL_158;
  }

  v205 = a2;
  if (__OFSUB__(v74, 1))
  {
LABEL_159:
    __break(1u);
LABEL_160:
    __break(1u);
    goto LABEL_161;
  }

  if (specialized static _HashTable.maximumCapacity(forScale:)(*a3 & 0x3FLL) / 3 >= v74 - 1)
  {
    v142 = *(v196 + 8);
    v143 = v198;
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      v196 = v37 + 8;
      v144 = v184;
      (*(v192 + 16))(v184, v143, v46);
      v145 = v186;
      swift_getWitnessTable();
      Collection.subscript.getter();
      (*(v185 + 8))(v144, v145);
      dispatch thunk of Sequence.makeIterator()();
      v146 = swift_getAssociatedConformanceWitness();
      v147 = v200;
      v205 = v146;
      dispatch thunk of IteratorProtocol.next()();
      v148 = v147;
      v149 = v191;
      v203 = v208[6];
      if ((v203)(v147, 1, v191) == 1)
      {
LABEL_140:
        (*(v190 + 8))(v202, v207);
        return (v197)(v198, v199);
      }

      v201 = v208[4];
      v208 += 4;
      v150 = (v208 - 3);
LABEL_95:
      (v201)(v204, v148, v149);
      v151 = *a3;
      v152 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v153 = 1 << *a3;
      v57 = __OFSUB__(v153, 1);
      v154 = v153 - 1;
      if (v57)
      {
        goto LABEL_150;
      }

      v155 = v154 & v152;
      v156 = _HashTable.UnsafeHandle._startIterator(bucket:)(v154 & v152, a3, a4);
      v209 = a3;
      v210 = a4;
      if (v156)
      {
        v159 = *a3 & 0x3FLL;
        v160 = 1 << *a3;
        v161 = v160 - 1;
        v162 = a3[1] >> 6;
        v163 = v162 + (v156 ^ (v160 - 1));
        if (v163 >= v160 - 1)
        {
          v164 = v160 - 1;
        }

        else
        {
          v164 = 0;
        }

        if (v163 - v164 == a1)
        {
          v165 = 0;
          goto LABEL_134;
        }

        v165 = 0;
        v166 = __OFADD__(v159 << v159, 64);
        v167 = (v159 << v159) + 126;
        if ((v159 << v159) + 64 >= 1)
        {
          v167 = (v159 << v159) + 63;
        }

        v168 = v167 >> 6;
        while (1)
        {
          if (++v155 == v160)
          {
            if (v165)
            {
              goto LABEL_164;
            }

            v155 = 0;
            v165 = 1;
          }

          if (v158 >= v159)
          {
            v57 = __OFSUB__(v158, v159);
            v158 -= v159;
            if (v57)
            {
              goto LABEL_144;
            }

            v175 = v157 >> v159;
          }

          else
          {
            v169 = (v155 * v159) >> 6;
            if (v158)
            {
              if (v166)
              {
                goto LABEL_148;
              }

              if (v169 + 1 == v168)
              {
                v169 = 0;
              }

              else
              {
                ++v169;
              }
            }

            v170 = v159 - v158;
            if (__OFSUB__(v159, v158))
            {
              goto LABEL_145;
            }

            if (v169 == 2 && v159 == 5)
            {
              v172 = 32;
            }

            else
            {
              v172 = 64;
            }

            v57 = __OFSUB__(v172, v170);
            v173 = v172 - v170;
            if (v57)
            {
LABEL_146:
              __break(1u);
LABEL_147:
              __break(1u);
LABEL_148:
              __break(1u);
LABEL_149:
              __break(1u);
LABEL_150:
              __break(1u);
LABEL_151:
              __break(1u);
LABEL_152:
              __break(1u);
              goto LABEL_153;
            }

            v174 = *(a4 + 8 * v169);
            v157 |= v174 << v158;
            v175 = v174 >> v170;
            v158 = v173;
          }

          v156 = v157 & v161;
          if ((v157 & v161) == 0)
          {
            break;
          }

          v176 = v162 + (v156 ^ v161);
          if (v176 >= v161)
          {
            v177 = v160 - 1;
          }

          else
          {
            v177 = 0;
          }

          v157 = v175;
          if (v176 - v177 == a1)
          {
            v157 = v175;
LABEL_134:
            v215 = v165;
            v211 = v155;
            v212 = v156;
            v213 = v157;
            v214 = v158;
            v178 = -1 << v159;
            v179 = (v178 ^ ~v156) + v162;
            if (v179 >= ~v178)
            {
              v180 = ~v178;
            }

            else
            {
              v180 = 0;
            }

            v181 = v179 - v180;
            if (!__OFADD__(v181, 1))
            {
              _HashTable.BucketIterator.currentValue.setter(v181 + 1, 0);
              (*v150)(v204, v149);
              v57 = __OFADD__(a1++, 1);
              if (!v57)
              {
                v182 = v200;
                dispatch thunk of IteratorProtocol.next()();
                v148 = v182;
                if ((v203)(v182, 1, v149) == 1)
                {
                  goto LABEL_140;
                }

                goto LABEL_95;
              }

LABEL_154:
              __break(1u);
LABEL_155:
              __break(1u);
LABEL_156:
              __break(1u);
LABEL_157:
              __break(1u);
LABEL_158:
              __break(1u);
              goto LABEL_159;
            }

LABEL_153:
            __break(1u);
            goto LABEL_154;
          }
        }
      }

LABEL_163:
      __break(1u);
LABEL_164:
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

LABEL_161:
    __break(1u);
LABEL_162:
    __break(1u);
    goto LABEL_163;
  }

  v75 = _HashTable.UnsafeHandle._startIterator(bucket:)(0, a3, a4);
  v76 = 0;
  v209 = a3;
  v210 = a4;
  v211 = 0;
  v212 = v75;
  v213 = v77;
  v214 = v78;
  v215 = 0;
  while (1)
  {
    if (!v212)
    {
      goto LABEL_31;
    }

    v82 = v209;
    v83 = ~(-1 << *v209);
    v84 = v209[1] >> 6;
    v85 = v84 + (v212 ^ v83);
    v86 = v85 >= v83 ? ~(-1 << *v209) : 0;
    v87 = v85 - v86;
    if (v87 < a1)
    {
      goto LABEL_31;
    }

    v57 = __OFADD__(v87, 1);
    v88 = v87 + 1;
    if (v57)
    {
      goto LABEL_156;
    }

    v89 = *v209 & 0x3FLL;
    v90 = ((v83 & ((v88 - v84) >> 63)) + v88 - v84) ^ v83;
    v91 = v90 ^ v212;
    v92 = v89 * v76;
    v93 = (v89 * v76) >> 6;
    v94 = (v89 * v76) & 0x3F;
    v95 = v210;
    *(v210 + 8 * v93) ^= (v90 ^ v212) << v92;
    v96 = *v82 & 0x3FLL;
    if (64 - v94 < v96)
    {
      break;
    }

LABEL_30:
    v212 = v90;
LABEL_31:
    _HashTable.BucketIterator.advance()();
    v76 = v211;
    if (!v211)
    {
      return (v197)(v198, v46);
    }
  }

  v97 = v96 << v96;
  v57 = __OFADD__(v97, 64);
  v98 = v97 + 64;
  if (!v57)
  {
    v79 = v98 - 1;
    v69 = v98 < 1;
    v80 = v98 + 62;
    if (!v69)
    {
      v80 = v79;
    }

    if (v93 + 1 == v80 >> 6)
    {
      v81 = 0;
    }

    else
    {
      v81 = v93 + 1;
    }

    *(v95 + 8 * v81) ^= v91 >> (64 - v94);
    goto LABEL_30;
  }

  __break(1u);
  return (v197)(v198, v46);
}