unint64_t specialized UserGraph.removePassthroughNodes(nodeDefStore:)(unint64_t result)
{
  v6 = v2;
  v7 = v1[8];
  v8 = *(v7 + 16);
  if (!v8)
  {
    return result;
  }

  v9 = result;
  v10 = v1[8];

  v11 = 0;
  v12 = v7;
  while (2)
  {
    while (2)
    {
      for (i = 48 * v11; ; i += 48)
      {
        if (v11 >= v8)
        {
          __break(1u);
LABEL_37:
          __break(1u);
          goto LABEL_38;
        }

        v14 = v7 + i;
        v5 = *(v7 + i + 56);
        if (v5 != -7)
        {
          break;
        }

        v15 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_37;
        }

        ++v11;
        if (v15 >= v8)
        {
        }
      }

      if (__OFADD__(v11++, 1))
      {
        __break(1u);
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      result = *(v14 + 32);
      if (result >> 61 != 5)
      {
LABEL_27:
        if (v11 < v8)
        {
          continue;
        }
      }

      break;
    }

    v51 = v12;
    v52 = v6;
    v57 = v1;
    v17 = *(v14 + 40);
    v18 = *(v14 + 48);
    v49 = *(v14 + 64);
    v50 = *(v14 + 72);
    v20 = *((result & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v19 = *((result & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    v53 = *(v14 + 32);
    v54 = *(v9 + 16);
    outlined copy of NodePersonality(result);
    v106 = v17;

    v56 = v18;

    if (!v54 || (v21 = specialized __RawDictionaryStorage.find<A>(_:)(v20, v19), (v22 & 1) == 0))
    {
      lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
      swift_allocError();
      *v37 = 28;
      *(v37 + 8) = v20;
      *(v37 + 16) = v19;
      swift_willThrow();
      outlined consume of NodePersonality(v53);

LABEL_35:
    }

    v23 = v21;

    v55 = v9;
    v24 = *(v9 + 56) + 152 * v23;
    v4 = *(v24 + 16);
    v3 = *(v24 + 24);
    v25 = one-time initialization token for passthroughNodeNames;

    if (v25 != -1)
    {
      swift_once();
    }

    rawValue = passthroughNodeNames._rawValue;
    v6 = v52;
    if (!*(passthroughNodeNames._rawValue + 2))
    {
      outlined consume of NodePersonality(v53);

      goto LABEL_31;
    }

    v4 = specialized __RawDictionaryStorage.find<A>(_:)(v4, v3);
    v28 = v27;

    if ((v28 & 1) == 0)
    {
      outlined consume of NodePersonality(v53);
LABEL_31:

      v1 = v57;
      v9 = v55;
      v12 = v51;
      if (v11 < v8)
      {
        continue;
      }
    }

    break;
  }

  v29 = (rawValue[7] + 16 * v4);
  v3 = *v29;
  v4 = v29[1];
  v12 = v106;
  specialized ShaderGraphNode.output(labeled:)(&v66, *v29, v4, v106);
  if (!v67)
  {
LABEL_38:
    v64 = 0;
    v65 = 0xE000000000000000;

    MEMORY[0x266771550](v3, v4);
    MEMORY[0x266771550](32, 0xE100000000000000);
    v58 = v53;
    v59 = v12;
    v60 = v56;
    v61 = v5;
    v62 = v49;
    v63 = v50;
    _print_unlocked<A, B>(_:_:)();

    v64 = 0;
    v65 = 0xE000000000000000;
    MEMORY[0x266771550](v3, v4);

    MEMORY[0x266771550](0x65646F6E206E6920, 0xE900000000000020);
    v58 = v53;
    v59 = v106;
    v60 = v56;
    v61 = v5;
    v62 = v49;
    v63 = v50;
    _print_unlocked<A, B>(_:_:)();
    v38 = v64;
    v39 = v65;
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    *v40 = 11;
    *(v40 + 8) = v38;
    *(v40 + 16) = v39;
    swift_willThrow();
    outlined consume of NodePersonality(v53);

    goto LABEL_35;
  }

  v93[0] = v66;
  v93[1] = v67;
  v94 = v68;
  v95 = v69;
  v96 = v70;
  v1 = v57;
  specialized OrderedDictionary.subscript.getter(v66, *v57, v57[1], v57[2], &v71);
  v30 = v72;
  if (!v72)
  {
    goto LABEL_22;
  }

  v31 = v75;
  v32 = v76;
  v33 = v74;
  v48 = v73;
  v101 = v71;

  outlined destroy of [Input](&v101, &_s11ShaderGraph10_HashTableV7StorageCSgMd, &_s11ShaderGraph10_HashTableV7StorageCSgMR);
  v100 = v30;
  outlined destroy of [Input](&v100, &_ss15ContiguousArrayVy11ShaderGraph6OutputVGMd, &_ss15ContiguousArrayVy11ShaderGraph6OutputVGMR);
  v99 = v48;
  outlined destroy of [Input](&v99, &_ss15ContiguousArrayVy11ShaderGraph10OrderedSetVyAC5InputVGGMd, &_ss15ContiguousArrayVy11ShaderGraph10OrderedSetVyAC5InputVGGMR);

  specialized OrderedDictionary.subscript.getter(v93, v33, v31, v32, &v77);

  v1 = v57;

  v34 = v78;
  if (v78 < 2)
  {
    goto LABEL_22;
  }

  v47 = v83;
  v46 = v82;
  v35 = v80;
  v44 = v79;
  v45 = v81;
  v36 = v77;

  outlined destroy of [Input](&v77, &_s11ShaderGraph6OutputVSgSgMd, &_s11ShaderGraph6OutputVSgSgMR);
  v97 = v94;
  v103[0] = v36;
  v103[1] = v34;
  v103[2] = v44;
  v103[3] = v35;
  v103[4] = v45;
  v104 = v46 & 1;
  v105 = v47;

  outlined init with copy of String(&v97, &v58);

  specialized ShaderGraphNode.output(labeled:)(&v84, 7632239, 0xE300000000000000, v56);
  if (!v85)
  {
    v64 = 0;
    v65 = 0xE000000000000000;
    MEMORY[0x266771550](7632239, 0xE300000000000000);
    MEMORY[0x266771550](32, 0xE100000000000000);
    v58 = v53;
    v59 = v106;
    v60 = v56;
    v61 = v5;
    v62 = v49;
    v63 = v50;
    _print_unlocked<A, B>(_:_:)();
    v41 = v64;
    v42 = v65;
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    *v43 = 14;
    *(v43 + 8) = v41;
    *(v43 + 16) = v42;
    swift_willThrow();

    outlined destroy of String(&v97);
    outlined consume of NodePersonality(v53);
    goto LABEL_35;
  }

  v89[0] = v84;
  v89[1] = v85;
  v90 = v86;
  v91 = v87;
  v92 = v88;
  v1 = v57;
  UserGraph.moveEdges(from:to:)(v89, v103);

  v102 = v90;
  outlined destroy of String(&v102);

LABEL_22:
  v4 = v1;
  specialized UserGraph.removeEdges(connectedTo:)(v5);
  v12 = v51;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v51);
    v12 = result;
  }

  v3 = v106;
  if ((v5 & 0x8000000000000000) != 0)
  {
    goto LABEL_41;
  }

  if (v5 < *(v12 + 16))
  {
    ShaderGraphNode.update(id:)(-7);
    outlined consume of NodePersonality(v53);

    v98 = v94;
    result = outlined destroy of String(&v98);
    v1[8] = v12;
    v9 = v55;
    goto LABEL_27;
  }

LABEL_42:
  __break(1u);
  return result;
}

Swift::Int _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t specialized UserGraph.resolveSwizzleNodes(nodeDefStore:)()
{
  v1 = type metadata accessor for CharacterSet();
  v40 = *(v1 - 8);
  v2 = *(v40 + 64);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v34[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v3);
  v7 = &v34[-v6];
  v45 = &outlined read-only object #0 of UserGraph.resolveSwizzleNodes(nodeDefStore:);
  lazy protocol witness table accessor for type CharacterSet and conformance CharacterSet(&lazy protocol witness table cache variable for type CharacterSet and conformance CharacterSet);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays7UnicodeO6ScalarVGMd, &_sSays7UnicodeO6ScalarVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [Unicode.Scalar] and conformance [A], &_sSays7UnicodeO6ScalarVGMd, &_sSays7UnicodeO6ScalarVGMR);
  v39 = v7;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v45 = &outlined read-only object #1 of UserGraph.resolveSwizzleNodes(nodeDefStore:);
  v38 = v5;
  v41 = v1;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v37 = v0;
  v8 = *(*(v0 + 64) + 16);

  v36 = result;
  if (v8)
  {
    v10 = 0;
    v11 = result + 32;
    v42 = MEMORY[0x277D84F90];
    v44 = result + 32;
    while (v10 < v8)
    {
      v13 = v11 + 48 * v10;
      v14 = *(v13 + 24);
      if (v14 == -7)
      {
        v12 = __OFADD__(v10++, 1);
        if (v12)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v12 = __OFADD__(v10++, 1);
        if (v12)
        {
          goto LABEL_20;
        }

        v15 = *v13;
        if (*v13 >> 61 == 5)
        {
          v17 = *(v13 + 8);
          v16 = *(v13 + 16);
          v43 = *(v13 + 32);
          v18 = *(v13 + 40);
          v20 = *((v15 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          v19 = *((v15 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
          outlined copy of NodePersonality(v15);

          outlined copy of NodePersonality(v15);

          v21._countAndFlagsBits = 0x7A7A6977735F444ELL;
          v21._object = 0xEA0000000000656CLL;
          LOBYTE(v20) = String.hasPrefix(_:)(v21);

          outlined consume of NodePersonality(v15);

          if (v20)
          {
            v35 = v18;
            v22 = v42;
            result = swift_isUniquelyReferenced_nonNull_native();
            v45 = v22;
            if ((result & 1) == 0)
            {
              result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v22 + 16) + 1, 1);
              v22 = v45;
            }

            v23 = v43;
            v11 = v44;
            v24 = v35;
            v26 = *(v22 + 16);
            v25 = *(v22 + 24);
            v27 = v26 + 1;
            if (v26 >= v25 >> 1)
            {
              v42 = v26 + 1;
              result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1);
              v27 = v42;
              v23 = v43;
              v24 = v35;
              v22 = v45;
            }

            *(v22 + 16) = v27;
            v42 = v22;
            v28 = v22 + 48 * v26;
            *(v28 + 32) = v15;
            *(v28 + 40) = v17;
            *(v28 + 48) = v16;
            *(v28 + 56) = v14;
            *(v28 + 64) = v23;
            *(v28 + 72) = v24;
          }

          else
          {
            outlined consume of NodePersonality(v15);

            v11 = v44;
          }
        }
      }

      if (v10 >= v8)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
    v42 = MEMORY[0x277D84F90];
LABEL_17:

    MEMORY[0x28223BE20](v29);
    v31 = v38;
    v30 = v39;
    *&v34[-32] = v37;
    *&v34[-24] = v30;
    *&v34[-16] = v31;
    specialized Sequence.forEach(_:)(partial apply for closure #1 in UserGraph.resolveSwizzleNodes(nodeDefStore:), &v34[-48], v42);

    v32 = v41;
    v33 = *(v40 + 8);
    v33(v31, v41);
    return (v33)(v30, v32);
  }

  return result;
}

uint64_t sub_265E4CA60()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t specialized Sequence.forEach(_:)(uint64_t result, __int128 *a2)
{
  v27 = a2;
  v2 = *(result + 16);
  if (v2)
  {
    v3 = *(v27 + 1);
    v4 = (result + 80);
    while (1)
    {
      v6 = *(v4 - 4);
      v5 = *(v4 - 3);
      v7 = *v4;
      v8 = *(v4 - 8);
      v9 = *(v4 - 2);
      v10 = *(v4 - 5);
      v24[0] = *(v4 - 6);
      v24[1] = v10;
      v24[2] = v6;
      v24[3] = v5;
      v24[4] = v9;
      v25 = v8;
      v26 = v7;
      specialized ShaderGraphNode.output(labeled:)(&v14, v6, v5, v3);
      if (!v15)
      {
        break;
      }

      v4 += 7;
      v19[0] = v14;
      v19[1] = v15;
      v20 = v16;
      v21 = v17;
      v22 = v18;

      UserGraph.moveEdge(from:to:)(v24, v19);

      v23 = v20;
      outlined destroy of String(&v23);

      if (!--v2)
      {
        return result;
      }
    }

    MEMORY[0x266771550](v6, v5);
    MEMORY[0x266771550](32, 0xE100000000000000);
    v12 = *v27;
    *v13 = v27[1];
    *&v13[9] = *(v27 + 25);
    _print_unlocked<A, B>(_:_:)();
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    *v11 = 11;
    *(v11 + 8) = 0;
    *(v11 + 16) = 0xE000000000000000;
    swift_willThrow();
  }

  return result;
}

{
  v2 = *(result + 16);
  if (v2)
  {
    v4 = (result + 32);
    v5 = *(a2 + 1);
    do
    {
      v6 = v4[5];
      v16 = v4[4];
      v17 = v6;
      v18 = v4[6];
      v7 = v4[1];
      v15[0] = *v4;
      v15[1] = v7;
      v8 = v4[3];
      v15[2] = v4[2];
      v15[3] = v8;
      v9 = *(&v8 + 1);
      v10 = *a2;
      v26 = a2[1];
      v11 = a2[1];
      v12 = a2[2];
      v19[0] = v10;
      v19[1] = v11;
      v19[2] = v12;
      v13 = *(a2 + 6);
      v14[0] = v18;
      v20 = v13;
      v21 = v9;
      v22 = v16;
      v23 = v17;
      v24 = v18;
      v25 = *(&v18 + 1);
      v27[0] = v10;
      v27[1] = v11;
      v28 = v12;
      v29 = BYTE8(v12);
      v30 = v13;
      v31 = v9;
      v32 = v16;
      v33 = v17;
      v34 = v18;
      v35 = *(&v18 + 1);
      outlined init with copy of Edge(v15, v14);

      outlined init with copy of String(&v26, v14);
      UserGraph.connect(_:to:)(v27, &v31);
      outlined destroy of Edge(v19);
      result = outlined destroy of Edge(v15);
      v4 += 7;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t specialized ShaderGraphNode.metalTextureType.getter(unint64_t a1)
{
  if (a1 >> 61 != 5)
  {
    goto LABEL_37;
  }

  v1 = a1 & 0x1FFFFFFFFFFFFFFFLL;
  v3 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v2 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
  swift_bridgeObjectRetain_n();
  v4._countAndFlagsBits = 0x6567616D695F444ELL;
  v4._object = 0xE800000000000000;
  v5 = String.hasPrefix(_:)(v4);

  if (v5)
  {
    goto LABEL_5;
  }

  v6 = *(v1 + 16);
  v7 = *(v1 + 24);

  v8._object = 0x8000000265F2D830;
  v8._countAndFlagsBits = 0xD000000000000014;
  LOBYTE(v6) = String.hasPrefix(_:)(v8);

  if (v6 & 1) != 0 || (v9 = *(v1 + 16), v10 = *(v1 + 24), , v11._object = 0x8000000265F30DD0, v11._countAndFlagsBits = 0xD000000000000014, LOBYTE(v9) = String.hasPrefix(_:)(v11), , (v9))
  {
LABEL_5:
    v12._countAndFlagsBits = 0x33726F6C6F63;
    v12._object = 0xE600000000000000;
    if (String.hasSuffix(_:)(v12))
    {

LABEL_8:
      if (one-time initialization token for texture2d_half != -1)
      {
        swift_once();
      }

      v15 = &static MetalDataType.texture2d_half;
      return *v15;
    }

    v13._countAndFlagsBits = 0x34726F6C6F63;
    v13._object = 0xE600000000000000;
    v14 = String.hasSuffix(_:)(v13);

    if (v14)
    {
      goto LABEL_8;
    }

    goto LABEL_37;
  }

  v16 = *(v1 + 16);
  v17 = *(v1 + 24);

  v18._countAndFlagsBits = 0xD00000000000001DLL;
  v18._object = 0x8000000265F30DF0;
  LOBYTE(v16) = String.hasPrefix(_:)(v18);

  if ((v16 & 1) == 0)
  {
    v20 = *(v1 + 16);
    v21 = *(v1 + 24);

    v22._countAndFlagsBits = 0xD000000000000018;
    v22._object = 0x8000000265F30E10;
    LOBYTE(v20) = String.hasPrefix(_:)(v22);

    if (v20)
    {
      v23._countAndFlagsBits = 0x33726F6C6F63;
      v23._object = 0xE600000000000000;
      if (String.hasSuffix(_:)(v23))
      {
      }

      else
      {
        v33._countAndFlagsBits = 0x34726F6C6F63;
        v33._object = 0xE600000000000000;
        v34 = String.hasSuffix(_:)(v33);

        if (!v34)
        {
          if (one-time initialization token for texture3d_float != -1)
          {
            swift_once();
          }

          v15 = &static MetalDataType.texture3d_float;
          return *v15;
        }
      }

      if (one-time initialization token for texture3d_half != -1)
      {
        swift_once();
      }

      v15 = &static MetalDataType.texture3d_half;
      return *v15;
    }

    v26 = *(v1 + 16);
    v27 = *(v1 + 24);

    v28._countAndFlagsBits = 0xD000000000000017;
    v28._object = 0x8000000265F2D850;
    LOBYTE(v26) = String.hasPrefix(_:)(v28);

    if (v26 & 1) != 0 || (v29 = *(v1 + 16), v30 = *(v1 + 24), , v31._countAndFlagsBits = 0xD000000000000018, v31._object = 0x8000000265F30E30, LOBYTE(v29) = String.hasPrefix(_:)(v31), , (v29))
    {
      v32._countAndFlagsBits = 0x33726F6C6F63;
      v32._object = 0xE600000000000000;
      if (String.hasSuffix(_:)(v32))
      {
      }

      else
      {
        v35._countAndFlagsBits = 0x34726F6C6F63;
        v35._object = 0xE600000000000000;
        v36 = String.hasSuffix(_:)(v35);

        if (!v36)
        {
          if (one-time initialization token for texturecube_float != -1)
          {
            swift_once();
          }

          v15 = &static MetalDataType.texturecube_float;
          return *v15;
        }
      }

      if (one-time initialization token for texturecube_half != -1)
      {
        swift_once();
      }

      v15 = &static MetalDataType.texturecube_half;
      return *v15;
    }

LABEL_37:
    if (one-time initialization token for texture2d_float != -1)
    {
      swift_once();
    }

    v15 = &static MetalDataType.texture2d_float;
    return *v15;
  }

  v19._countAndFlagsBits = 0x33726F6C6F63;
  v19._object = 0xE600000000000000;
  if (String.hasSuffix(_:)(v19))
  {

LABEL_18:
    if (one-time initialization token for texture2darray_half != -1)
    {
      swift_once();
    }

    v15 = &static MetalDataType.texture2darray_half;
    return *v15;
  }

  v24._countAndFlagsBits = 0x34726F6C6F63;
  v24._object = 0xE600000000000000;
  v25 = String.hasSuffix(_:)(v24);

  if (v25)
  {
    goto LABEL_18;
  }

  if (one-time initialization token for texture2darray_float != -1)
  {
    swift_once();
  }

  v15 = &static MetalDataType.texture2darray_float;
  return *v15;
}

double specialized UserGraph.insertCreateSampler(label:)@<D0>(_OWORD *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph9InputSpecVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph9InputSpecVGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_265F24140;
  if (one-time initialization token for coord != -1)
  {
    swift_once();
  }

  v3 = static MetalDataType.coord;
  *(inited + 32) = 0x64726F6F63;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = v3;
  v4 = one-time initialization token for address;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = static MetalDataType.address;
  *(inited + 56) = 0x73736572646461;
  *(inited + 64) = 0xE700000000000000;
  *(inited + 72) = v5;
  v6 = one-time initialization token for s_address;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = static MetalDataType.s_address;
  *(inited + 80) = 0x7365726464615F73;
  *(inited + 88) = 0xE900000000000073;
  *(inited + 96) = v7;
  v8 = one-time initialization token for t_address;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = static MetalDataType.t_address;
  *(inited + 104) = 0x7365726464615F74;
  *(inited + 112) = 0xE900000000000073;
  *(inited + 120) = v9;
  v10 = one-time initialization token for r_address;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = static MetalDataType.r_address;
  *(inited + 128) = 0x7365726464615F72;
  *(inited + 136) = 0xE900000000000073;
  *(inited + 144) = v11;
  v12 = one-time initialization token for border_color;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = static MetalDataType.border_color;
  strcpy((inited + 152), "border_color");
  *(inited + 165) = 0;
  *(inited + 166) = -5120;
  *(inited + 168) = v13;
  v14 = one-time initialization token for mag_filter;

  if (v14 != -1)
  {
    swift_once();
  }

  v15 = static MetalDataType.mag_filter;
  *(inited + 176) = 0x746C69665F67616DLL;
  *(inited + 184) = 0xEA00000000007265;
  *(inited + 192) = v15;
  v16 = one-time initialization token for min_filter;

  if (v16 != -1)
  {
    swift_once();
  }

  v17 = static MetalDataType.min_filter;
  *(inited + 200) = 0x746C69665F6E696DLL;
  *(inited + 208) = 0xEA00000000007265;
  *(inited + 216) = v17;
  v18 = one-time initialization token for mip_filter;

  if (v18 != -1)
  {
    swift_once();
  }

  v19 = static MetalDataType.mip_filter;
  *(inited + 224) = 0x746C69665F70696DLL;
  *(inited + 232) = 0xEA00000000007265;
  *(inited + 240) = v19;
  v20 = one-time initialization token for max_anisotropy;

  if (v20 != -1)
  {
    swift_once();
  }

  v21 = static MetalDataType.max_anisotropy;
  strcpy((inited + 248), "max_anisotropy");
  *(inited + 263) = -18;
  *(inited + 264) = v21;
  v22 = one-time initialization token for lod_clamp;

  if (v22 != -1)
  {
    swift_once();
  }

  v23 = static MetalDataType.lod_clamp;
  *(inited + 272) = 0x6D616C635F646F6CLL;
  *(inited + 280) = 0xE900000000000070;
  *(inited + 288) = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMR);
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_265F1F670;
  v25 = one-time initialization token for sampler;

  if (v25 != -1)
  {
    swift_once();
  }

  v26 = static MetalDataType.sampler;
  *(v24 + 32) = 7632239;
  *(v24 + 40) = 0xE300000000000000;
  *(v24 + 48) = v26;

  UserGraph.insertNode(inputs:outputs:shaderGraphData:)(inited, v24, 0xE000000000000008, &v31);
  swift_setDeallocating();
  v27 = *(v24 + 16);
  swift_arrayDestroy();
  swift_setDeallocating();
  v28 = *(inited + 16);
  swift_arrayDestroy();
  v29 = v32[0];
  *a1 = v31;
  a1[1] = v29;
  result = *(v32 + 9);
  *(a1 + 25) = *(v32 + 9);
  return result;
}

void specialized closure #1 in UserGraph.transformGeomPropValueNodes(surface:geometryModifier:nodeDefStore:)(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v5 = *a1;
  if (*a1 >> 61 != 5)
  {
    return;
  }

  v156 = a4;
  v8 = v4;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  v97 = *(a1 + 32);
  v98 = *(a1 + 40);
  v12 = *((v5 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v13 = *((v5 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);

  v14._object = 0x8000000265F310E0;
  v14._countAndFlagsBits = 0xD000000000000011;
  if (!String.hasPrefix(_:)(v14))
  {

    return;
  }

  v96 = v11;
  if (!*(a2 + 16))
  {

LABEL_16:
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    __swift_project_value_buffer(v42, logger);
    outlined copy of NodePersonality(v5);

    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();
    outlined consume of NodePersonality(v5);

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *&v129 = v46;
      *v45 = 136315138;
      *&v144 = 1701080942;
      *(&v144 + 1) = 0xE400000000000000;
      *&v125 = v96;
      v47 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266771550](v47);

      v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v144, *(&v144 + 1), &v129);

      *(v45 + 4) = v48;
      _os_log_impl(&dword_265D7D000, v43, v44, "Failed to transform geompropvalue node %s", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v46);
      MEMORY[0x266773120](v46, -1, -1);
      MEMORY[0x266773120](v45, -1, -1);
    }

    return;
  }

  v15 = specialized __RawDictionaryStorage.find<A>(_:)(v12, v13);
  v17 = v16;

  if ((v17 & 1) == 0)
  {
    goto LABEL_16;
  }

  v18 = *(a2 + 56) + 152 * v15;
  v19 = *(v18 + 112);
  v154[8] = *(v18 + 96);
  v154[9] = v19;
  v154[10] = *(v18 + 128);
  v155 = *(v18 + 144);
  v20 = *(v18 + 48);
  v154[4] = *(v18 + 32);
  v154[5] = v20;
  v21 = *(v18 + 80);
  v154[6] = *(v18 + 64);
  v154[7] = v21;
  v22 = *(v18 + 16);
  v154[2] = *v18;
  v154[3] = v22;
  NodeDef.subscript.getter(7632239, 0xE300000000000000, v105);
  if (!v106)
  {
    goto LABEL_16;
  }

  v23 = v107;

  outlined destroy of [Input](v105, &_s11ShaderGraph7NodeDefV6IOSpecVSgMd, &_s11ShaderGraph7NodeDefV6IOSpecVSgMR);
  v24 = v156[9];
  v153[8] = v156[8];
  v154[0] = v24;
  *(v154 + 9) = *(v156 + 153);
  v25 = v156[5];
  v153[4] = v156[4];
  v153[5] = v25;
  v26 = v156[6];
  v153[7] = v156[7];
  v153[6] = v26;
  v27 = v156[1];
  v153[0] = *v156;
  v153[1] = v27;
  v28 = v156[2];
  v153[3] = v156[3];
  v153[2] = v28;
  specialized ShaderGraphNode.output(labeled:)(&v108, 0x706F72706D6F6567, 0xE800000000000000, v9);
  if (!v109)
  {
    *&v99 = 0;
    *(&v99 + 1) = 0xE000000000000000;
    outlined init with copy of UserGraph(v153, &v144);
    MEMORY[0x266771550](0x706F72706D6F6567, 0xE800000000000000);
    MEMORY[0x266771550](32, 0xE100000000000000);
    *&v144 = v5;
    *(&v144 + 1) = v9;
    *&v145 = v10;
    *(&v145 + 1) = v96;
    *v146 = v97;
    v146[8] = v98;
    _print_unlocked<A, B>(_:_:)();
    v49 = v99;
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    v8 = swift_allocError();
    *v50 = 11;
    *(v50 + 8) = v49;
    swift_willThrow();
    outlined destroy of UserGraph(v153);
    goto LABEL_23;
  }

  v132[0] = v108;
  v132[1] = v109;
  v133 = v110;
  v134 = v111;
  v135 = v112;
  outlined init with copy of UserGraph(v153, &v144);
  UserGraph.node(connectedTo:)(v132, &v113);

  v136 = v133;
  outlined destroy of String(&v136);
  outlined destroy of UserGraph(v153);
  v29 = v114;
  if (!v114)
  {

    goto LABEL_16;
  }

  v30 = v115;
  v137 = v113;
  if (v113 >> 61)
  {
    goto LABEL_28;
  }

  v32 = *(v113 + 48);
  v31 = *(v113 + 64);
  v33 = *(v113 + 16);
  v34 = *(v113 + 32);
  v104 = *(v113 + 80);
  v103[0] = v33;
  v103[1] = v34;
  v103[2] = v32;
  v103[3] = v31;
  if (v104 != 6)
  {
LABEL_28:

    outlined destroy of NodePersonality(&v137);
    *&v103[0] = v29;
    outlined destroy of [Input](v103, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    *&v99 = v30;
    outlined destroy of [Input](&v99, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
    goto LABEL_16;
  }

  v94 = *(&v103[0] + 1);
  v95 = *&v103[0];
  outlined init with copy of SGDataTypeStorage(v103, &v144);
  outlined destroy of NodePersonality(&v137);
  v138 = v29;
  outlined destroy of [Input](&v138, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
  v139 = v30;
  outlined destroy of [Input](&v139, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
  if (*(a3 + 16))
  {
    v35 = specialized __RawDictionaryStorage.find<A>(_:)(v95, v94);
    if (v36)
    {
      v37 = v35;
      outlined destroy of SGDataTypeStorage(v103);
      v38 = (*(a3 + 56) + (v37 << 6));
      v40 = v38[1];
      v39 = v38[2];
      v41 = *v38;
      *&v146[9] = *(v38 + 41);
      v145 = v40;
      *v146 = v39;
      v144 = v41;
      outlined init with copy of GeomPropDef(&v144, &v99);
      specialized UserGraph.insertGeomPropGetter(_:outputType:nodeDefStore:)(&v144, v23, a2, &v118);
      if (v4)
      {
        outlined destroy of GeomPropDef(&v144);

LABEL_24:
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v51 = type metadata accessor for Logger();
        __swift_project_value_buffer(v51, logger);
        outlined copy of NodePersonality(v5);

        v52 = v8;

        v53 = Logger.logObject.getter();
        v54 = static os_log_type_t.info.getter();

        outlined consume of NodePersonality(v5);

        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          v56 = swift_slowAlloc();
          *&v140 = v56;
          *v55 = 136315394;
          *&v103[0] = v8;
          v57 = v8;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
          v58 = String.init<A>(describing:)();
          v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v59, &v140);

          *(v55 + 4) = v60;
          *(v55 + 12) = 2080;
          *&v103[0] = 1701080942;
          *(&v103[0] + 1) = 0xE400000000000000;
          v143 = v96;
          v61 = dispatch thunk of CustomStringConvertible.description.getter();
          MEMORY[0x266771550](v61);

          v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*&v103[0], *(&v103[0] + 1), &v140);

          *(v55 + 14) = v62;
          _os_log_impl(&dword_265D7D000, v53, v54, "Got error '%s' attempting to convert a geompropvalue node ('%s') to an equivalent built-in geom prop node. Skipping conversion.", v55, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x266773120](v56, -1, -1);
          MEMORY[0x266773120](v55, -1, -1);
        }

        else
        {
        }

        return;
      }

      specialized ShaderGraphNode.output(labeled:)(&v121, 7632239, 0xE300000000000000, v10);
      if (*(&v121 + 1))
      {
        v99 = v121;
        v100 = v122;
        v101 = v123;
        v102 = v124;
        *&v141 = *v119;
        specialized ShaderGraphNode.output(labeled:)(&v125, 7632239, 0xE300000000000000, *v119);
        if (*(&v125 + 1))
        {
          v129 = v125;
          *v130 = v126;
          *&v130[16] = v127;
          v131 = v128;
          UserGraph.moveEdges(from:to:)(&v99, &v129);

          v116[0] = *v130;
          outlined destroy of String(v116);

          v142 = v100;
          outlined destroy of String(&v142);
          *&v140 = v118;
          outlined destroy of NodePersonality(&v140);
          v143 = *(&v118 + 1);
          outlined destroy of [Input](&v143, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
          outlined destroy of [Input](&v141, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
          outlined destroy of GeomPropDef(&v144);
          return;
        }

        *&v116[0] = 0;
        *(&v116[0] + 1) = 0xE000000000000000;
        MEMORY[0x266771550](7632239, 0xE300000000000000);
        MEMORY[0x266771550](32, 0xE100000000000000);
        v129 = v118;
        *v130 = *v119;
        *&v130[9] = *&v119[9];
        _print_unlocked<A, B>(_:_:)();
        v91 = v116[0];
        lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
        v8 = swift_allocError();
        *v92 = 14;
        *(v92 + 8) = v91;
        swift_willThrow();

        v129 = v100;
        outlined destroy of String(&v129);
        *&v116[0] = v118;
        outlined destroy of NodePersonality(v116);
        *&v142 = *(&v118 + 1);
        outlined destroy of [Input](&v142, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
        v90 = &v141;
      }

      else
      {
        *&v129 = 0;
        *(&v129 + 1) = 0xE000000000000000;
        MEMORY[0x266771550](7632239, 0xE300000000000000);
        MEMORY[0x266771550](32, 0xE100000000000000);
        *&v99 = v5;
        *(&v99 + 1) = v9;
        *&v100 = v10;
        *(&v100 + 1) = v96;
        *&v101 = v97;
        BYTE8(v101) = v98;
        _print_unlocked<A, B>(_:_:)();
        v88 = v129;
        lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
        v8 = swift_allocError();
        *v89 = 14;
        *(v89 + 8) = v88;
        swift_willThrow();
        *&v99 = v118;
        outlined destroy of NodePersonality(&v99);
        *&v129 = *(&v118 + 1);
        outlined destroy of [Input](&v129, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
        *&v125 = *v119;
        v90 = &v125;
      }

      outlined destroy of [Input](v90, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
      outlined destroy of GeomPropDef(&v144);
LABEL_23:

      goto LABEL_24;
    }
  }

  specialized ShaderGraphNode.output(labeled:)(v116, 0x746C7561666564, 0xE700000000000000, v9);
  v63 = v10;
  if (*(&v116[0] + 1))
  {
    v129 = v116[0];
    *v130 = v116[1];
    *&v130[16] = v116[2];
    v131 = v117;
    v64 = v156[9];
    v151 = v156[8];
    v152[0] = v64;
    *(v152 + 9) = *(v156 + 153);
    v65 = v156[5];
    v147 = v156[4];
    v148 = v65;
    v66 = v156[6];
    v150 = v156[7];
    v149 = v66;
    v67 = v156[1];
    v144 = *v156;
    v145 = v67;
    v68 = v156[3];
    *v146 = v156[2];
    *&v146[16] = v68;
    outlined init with copy of UserGraph(&v144, &v99);
    UserGraph.output(connectedTo:)(&v129, &v118);
    outlined destroy of UserGraph(&v144);
    if (*(&v118 + 1))
    {
      v125 = v118;
      v126 = *v119;
      v127 = *&v119[16];
      v128 = v120;
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v69 = type metadata accessor for Logger();
      __swift_project_value_buffer(v69, logger);
      outlined init with copy of SGDataTypeStorage(v103, &v99);
      outlined copy of NodePersonality(v5);

      v70 = Logger.logObject.getter();
      v71 = static os_log_type_t.error.getter();
      outlined consume of NodePersonality(v5);

      outlined destroy of SGDataTypeStorage(v103);
      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        *&v121 = swift_slowAlloc();
        v73 = v121;
        *v72 = 136315394;
        *&v99 = 1701080942;
        *(&v99 + 1) = 0xE400000000000000;
        *&v142 = v96;
        v93 = v71;
        v74 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x266771550](v74);

        v75 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v99, *(&v99 + 1), &v121);

        *(v72 + 4) = v75;
        *(v72 + 12) = 2080;
        v76 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v95, v94, &v121);
        outlined destroy of SGDataTypeStorage(v103);
        *(v72 + 14) = v76;
        _os_log_impl(&dword_265D7D000, v70, v93, "Failed to find valid geompropvalue name for %s, given value: %s, using default value.", v72, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266773120](v73, -1, -1);
        v77 = v72;
        v63 = v10;
        MEMORY[0x266773120](v77, -1, -1);
      }

      else
      {

        outlined destroy of SGDataTypeStorage(v103);
      }

      specialized ShaderGraphNode.output(labeled:)(&v121, 7632239, 0xE300000000000000, v63);
      if (*(&v121 + 1))
      {
        v99 = v121;
        v100 = v122;
        v101 = v123;
        v102 = v124;
        UserGraph.moveEdges(from:to:)(&v99, &v125);

        v142 = v100;
        outlined destroy of String(&v142);

        v141 = v126;
        outlined destroy of String(&v141);

        v140 = *v130;
        outlined destroy of String(&v140);
        return;
      }

      *&v142 = 0;
      *(&v142 + 1) = 0xE000000000000000;
      MEMORY[0x266771550](7632239, 0xE300000000000000);
      MEMORY[0x266771550](32, 0xE100000000000000);
      *&v99 = v5;
      *(&v99 + 1) = v9;
      *&v100 = v63;
      *(&v100 + 1) = v96;
      *&v101 = v97;
      BYTE8(v101) = v98;
      _print_unlocked<A, B>(_:_:)();
      v86 = v142;
      lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
      v8 = swift_allocError();
      *v87 = 14;
      *(v87 + 8) = v86;
      swift_willThrow();

      v99 = v126;
      outlined destroy of String(&v99);

      v142 = *v130;
      outlined destroy of String(&v142);
      goto LABEL_23;
    }

    v125 = *v130;
    outlined destroy of String(&v125);
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v78 = type metadata accessor for Logger();
  __swift_project_value_buffer(v78, logger);
  outlined init with copy of SGDataTypeStorage(v103, &v99);
  outlined copy of NodePersonality(v5);

  v79 = Logger.logObject.getter();
  v80 = static os_log_type_t.error.getter();
  outlined consume of NodePersonality(v5);

  outlined destroy of SGDataTypeStorage(v103);
  if (os_log_type_enabled(v79, v80))
  {
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    *&v121 = v82;
    *v81 = 136315394;
    *&v99 = 1701080942;
    *(&v99 + 1) = 0xE400000000000000;
    *&v142 = v96;
    v83 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266771550](v83);

    v84 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v99, *(&v99 + 1), &v121);

    *(v81 + 4) = v84;
    *(v81 + 12) = 2080;
    v85 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v95, v94, &v121);
    outlined destroy of SGDataTypeStorage(v103);
    *(v81 + 14) = v85;
    _os_log_impl(&dword_265D7D000, v79, v80, "Failed to find valid geomprop for node %s, given value: %s, and no default was found.", v81, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266773120](v82, -1, -1);
    MEMORY[0x266773120](v81, -1, -1);
  }

  else
  {

    outlined destroy of SGDataTypeStorage(v103);
  }
}

uint64_t specialized Sequence.forEach(_:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    v5 = (result + 80);
    do
    {
      v6 = *v5;
      v7 = *(v5 - 8);
      v9 = *(v5 - 3);
      v8 = *(v5 - 2);
      v11 = *(v5 - 5);
      v10 = *(v5 - 4);
      v12[0] = *(v5 - 6);
      v12[1] = v11;
      v12[2] = v10;
      v12[3] = v9;
      v12[4] = v8;
      v13 = v7;
      v14 = v6;

      UserGraph.connect(_:to:)(a3, v12);

      v5 += 7;
      --v3;
    }

    while (v3);
  }

  return result;
}

{
  v3 = *(result + 16);
  if (v3)
  {
    v5 = (a3 + 16);
    v26 = *(a3 + 16);
    v6 = *(a3 + 32);
    v17 = v6;
    v18 = *(a3 + 48);
    v16 = *(a3 + 24);
    v14 = *(a3 + 8);
    v15 = *a3;
    v13 = *(a3 + 40) & 1;
    v7 = result + 48;
    do
    {
      v8 = *v7;
      v23[0] = *(v7 - 16);
      v23[1] = v8;
      v23[2] = *(v7 + 16);
      v24 = *(v7 + 32);
      v25[0] = v8;
      v9 = *&v23[0];

      outlined init with copy of String(v25, v20);
      v10 = specialized OrderedDictionary.subscript.modify(v20, v9);
      if (*(v11 + 8))
      {
        v22[0] = v15;
        v22[1] = v14;
        v22[2] = v26;
        v22[3] = v16;
        v22[4] = v17;
        v22[5] = v13;
        v22[6] = v18;
        v12 = *(a3 + 8);
        v21 = *v5;

        outlined init with copy of String(v25, v19);

        outlined init with copy of String(&v21, v19);
        specialized OrderedDictionary.subscript.setter(v22, v23);
      }

      v10(v20, 0);

      result = outlined destroy of String(v25);
      v7 += 56;
      --v3;
    }

    while (v3);
  }

  return result;
}

{
  v4 = *(a3 + 16);
  if (v4)
  {
    v5 = result;
    for (i = (a3 + 40); ; i += 6)
    {
      v8 = *(i - 1);
      v7 = *i;
      v9 = i[1];
      v10 = *(i + 32);
      v11[0] = v8;
      v11[1] = v7;
      v11[2] = v9;
      v12 = *(i + 1);
      v13 = v10;
      outlined copy of NodePersonality(v8);

      v5(v11);
      if (v3)
      {
        break;
      }

      outlined consume of NodePersonality(v8);

      if (!--v4)
      {
        return result;
      }
    }

    outlined consume of NodePersonality(v8);
  }

  return result;
}

uint64_t specialized UserGraph.insertParamsInputs(surface:type:nodeDefStore:)(uint64_t *a1, int a2)
{
  v4 = v2;
  v6 = v2[9];
  v71 = v2[8];
  v72[0] = v6;
  *(v72 + 9) = *(v2 + 153);
  v7 = v2[5];
  v67 = v2[4];
  v68 = v7;
  v8 = v2[7];
  v69 = v2[6];
  v70 = v8;
  v9 = v2[1];
  v63 = *v2;
  v64 = v9;
  v10 = v2[3];
  v65 = v2[2];
  v66 = v10;
  UserGraph.connectedUpstreamSubgraph(rootedAt:)(a1, &v44);
  v11 = v44;

  v12 = *(v11 + 16);
  v13 = MEMORY[0x277D84F90];
  v41 = v4;
  if (v12)
  {
    LODWORD(v74) = a2;
    *&v44 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12, 0);
    v14 = v44;
    v15 = *(v44 + 16);
    v16 = 56;
    do
    {
      v17 = *(v11 + v16);
      *&v44 = v14;
      v18 = *(v14 + 24);
      if (v15 >= v18 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v15 + 1, 1);
        v14 = v44;
      }

      *(v14 + 16) = v15 + 1;
      *(v14 + 8 * v15 + 32) = v17;
      v16 += 48;
      ++v15;
      --v12;
    }

    while (v12);

    v13 = MEMORY[0x277D84F90];
    LOBYTE(a2) = v74;
  }

  else
  {

    v14 = MEMORY[0x277D84F90];
  }

  v74 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC11ShaderGraph0bC4NodeV2IDV_SayAHGTt0g5Tf4g_n(v14);

  if ((a2 & 1) == 0)
  {
    v40 = 0x65636166727573;
    if (one-time initialization token for surface_parameters_private != -1)
    {
      swift_once();
    }

    v42 = 0xE700000000000000;
    v19 = &static MetalDataType.re.surface_parameters_private;
    goto LABEL_14;
  }

  v40 = 0x797274656D6F6567;
  if (one-time initialization token for geometry_parameters_private != -1)
  {
    goto LABEL_33;
  }

  while (1)
  {
    v42 = 0xE800000000000000;
    v19 = &static MetalDataType.re.geometry_parameters_private;
LABEL_14:
    v20 = *v19;

    v22 = v67;
    v73[0] = v67;
    v43 = v13;
    v23 = *(v67 + 16);
    v24 = v21;

    outlined init with copy of [Input](v73, &v44, &_sSay11ShaderGraph0aB4NodeVGMd, &_sSay11ShaderGraph0aB4NodeVGMR);
    if (!v23)
    {
      break;
    }

    v13 = 0;
    while (v13 < v23)
    {
      v26 = v22 + 32 + 48 * v13;
      v27 = *(v26 + 24);
      if (v27 == -7)
      {
        v25 = __OFADD__(v13++, 1);
        if (v25)
        {
          goto LABEL_31;
        }

        if (v13 >= v23)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v25 = __OFADD__(v13++, 1);
        if (v25)
        {
          goto LABEL_32;
        }

        v28 = *(v26 + 8);
        v29 = *(v26 + 16);
        v30 = *v26;
        v31 = *(v26 + 40);
        v32 = *(v26 + 32);
        *&v44 = v30;
        *(&v44 + 1) = v28;
        *v45 = v29;
        *&v45[8] = v27;
        *&v45[16] = v32;
        v45[24] = v31;
        outlined copy of NodePersonality(v30);

        closure #1 in UserGraph.insertParamsInputs(surface:type:nodeDefStore:)(&v44, v74, v40, v42, v24, v41, &v43);
        outlined consume of NodePersonality(v30);
        if (v3)
        {

          outlined destroy of [Input](v73, &_sSay11ShaderGraph0aB4NodeVGMd, &_sSay11ShaderGraph0aB4NodeVGMR);
        }

        if (v13 >= v23)
        {
          goto LABEL_23;
        }
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    swift_once();
  }

LABEL_23:
  outlined destroy of [Input](v73, &_sSay11ShaderGraph0aB4NodeVGMd, &_sSay11ShaderGraph0aB4NodeVGMR);

  v33 = v24;

  v34 = v43;
  if (*(v43 + 2))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_265F1F670;
    *(inited + 32) = 7632239;
    *(inited + 40) = 0xE300000000000000;
    *(inited + 48) = v33;
    v36 = swift_allocObject();
    *(v36 + 16) = 12324;
    *(v36 + 24) = 0xE200000000000000;

    UserGraph.insertNode(inputs:outputs:shaderGraphData:)(MEMORY[0x277D84F90], inited, v36 | 0x6000000000000000, &v46);

    swift_setDeallocating();
    v37 = *(inited + 16);
    swift_arrayDestroy();
    v62 = *&v47[0];
    specialized ShaderGraphNode.output(labeled:)(&v48, 7632239, 0xE300000000000000, *&v47[0]);
    if (v49)
    {
      v53[0] = v48;
      v53[1] = v49;
      v54 = v50;
      v55 = v51;
      v56 = v52;
      v57 = v50;

      outlined init with copy of String(&v57, &v44);
      specialized Sequence.forEach(_:)(v34, v41, v53);

      outlined destroy of String(&v57);
      v59 = v46;
      outlined destroy of NodePersonality(&v59);
      v58 = *(&v46 + 1);
      outlined destroy of [Input](&v58, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      outlined destroy of [Input](&v62, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

      outlined destroy of String(&v57);
    }

    else
    {
      MEMORY[0x266771550](7632239, 0xE300000000000000);
      MEMORY[0x266771550](32, 0xE100000000000000);
      v44 = v46;
      *v45 = v47[0];
      *&v45[9] = *(v47 + 9);
      _print_unlocked<A, B>(_:_:)();

      v44 = v46;
      *v45 = v47[0];
      *&v45[9] = *(v47 + 9);
      _print_unlocked<A, B>(_:_:)();
      lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
      swift_allocError();
      *v39 = 14;
      *(v39 + 8) = 0;
      *(v39 + 16) = 0xE000000000000000;
      swift_willThrow();
      v61 = v46;
      outlined destroy of NodePersonality(&v61);
      v60 = *(&v46 + 1);
      outlined destroy of [Input](&v60, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      outlined destroy of [Input](&v62, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
    }
  }

  else
  {
  }
}

unint64_t specialized closure #1 in UserGraph.resolveMaterialXNodeDefs(connectedTo:nodeDefStore:shaderType:)(uint64_t *a1, uint64_t a2, uint64_t a3, unsigned int (*a4)(char *, uint64_t, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v89 = a7;
  v90 = a4;
  v11 = type metadata accessor for NodeDef.Implementation.Kind(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v91 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ShaderGraph7NodeDefV14ImplementationVSgMd, &_s11ShaderGraph7NodeDefV14ImplementationVSgMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v81 - v16;
  v18 = type metadata accessor for NodeDef.Implementation(0);
  v19 = *(*(v18 - 8) + 64);
  result = MEMORY[0x28223BE20](v18);
  v23 = &v81 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *a1;
  if (*a1 >> 61 != 5)
  {
    return result;
  }

  if (!*(a2 + 16))
  {
LABEL_9:
    *&v94 = 0;
    *(&v94 + 1) = 0xE000000000000000;
    v48 = *(a1 + 1);
    v92 = *a1;
    v93[0] = v48;
    *(v93 + 9) = *(a1 + 25);
    _print_unlocked<A, B>(_:_:)();
    v49 = v94;
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    *v50 = 27;
    *(v50 + 8) = v49;
    return swift_willThrow();
  }

  v86 = v21;
  v87 = a6;
  v88 = v23;
  v25 = v24 & 0x1FFFFFFFFFFFFFFFLL;
  v26 = *(v25 + 16);
  v27 = *(v25 + 24);

  v85 = v26;
  v28 = specialized __RawDictionaryStorage.find<A>(_:)(v26, v27);
  if ((v29 & 1) == 0)
  {

    goto LABEL_9;
  }

  v84 = v27;
  v30 = *(a2 + 56) + 152 * v28;
  v31 = *(v30 + 16);
  v95[0] = *v30;
  v95[1] = v31;
  v32 = *(v30 + 80);
  v34 = *(v30 + 32);
  v33 = *(v30 + 48);
  v95[4] = *(v30 + 64);
  v95[5] = v32;
  v95[2] = v34;
  v95[3] = v33;
  v36 = *(v30 + 112);
  v35 = *(v30 + 128);
  v37 = *(v30 + 96);
  v96 = *(v30 + 144);
  v95[7] = v36;
  v95[8] = v35;
  v95[6] = v37;
  v38 = a1[3];
  if ((specialized Set.contains(_:)(v38, a5) & 1) == 0)
  {
  }

  outlined init with copy of NodeDef(v95, &v92);
  NodeDefStore.implementation(for:target:)(v95, v87, v90, v17);
  v39 = *(v86 + 48);
  v40 = v39(v17, 1, v18);
  v83 = v38;
  if (v40 == 1)
  {
    *&v92 = 1599098185;
    *(&v92 + 1) = 0xE400000000000000;
    v41 = v87;

    v90 = v39;
    MEMORY[0x266771550](v85, v84);
    v82 = *(&v92 + 1);
    v86 = v92;
    v42 = v88;
    v43 = (v88 + *(v18 + 20));
    *v43 = specialized static NodeDefStore.inferLibraryFunctionName(forNodeDefName:)(*&v95[0], *(&v95[0] + 1));
    v43[1] = v44;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_265F20CD0;
    *(inited + 32) = v41;
    v46 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC11ShaderGraph15MaterialXTargetC_SayAFGTt0g5Tf4g_n(inited);

    outlined destroy of NodeDef(v95);
    v47 = v82;
    *v42 = v86;
    v42[1] = v47;
    *(v42 + *(v18 + 24)) = v46;
    if (v90(v17, 1, v18) != 1)
    {
      outlined destroy of [Input](v17, &_s11ShaderGraph7NodeDefV14ImplementationVSgMd, &_s11ShaderGraph7NodeDefV14ImplementationVSgMR);
    }
  }

  else
  {
    outlined destroy of NodeDef(v95);
    v42 = v88;
    outlined init with take of NodeDef.Implementation(v17, v88);
  }

  v51 = v42 + *(v18 + 20);
  v52 = v91;
  outlined init with copy of NodeDef.Implementation.Kind(v51, v91, type metadata accessor for NodeDef.Implementation.Kind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v59 = *(v52 + 1);

      v60 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSg12functionName_10Foundation3URLV4filetMd, &_sSSSg12functionName_10Foundation3URLV4filetMR) + 48);
      *&v92 = 0;
      *(&v92 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(69);
      MEMORY[0x266771550](0xD000000000000042, 0x8000000265F30FD0);
      MEMORY[0x266771550](v85, v84);

      MEMORY[0x266771550](46, 0xE100000000000000);
      v61 = v92;
      lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
      swift_allocError();
      *v62 = 29;
      *(v62 + 8) = v61;
      swift_willThrow();
      outlined destroy of NodeDef.Implementation.Kind(v88, type metadata accessor for NodeDef.Implementation);
      v63 = type metadata accessor for URL();
      return (*(*(v63 - 8) + 8))(&v52[v60], v63);
    }

    outlined destroy of NodeDef.Implementation.Kind(v52, type metadata accessor for NodeDef.Implementation.Kind);
    *&v92 = 0;
    *(&v92 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(87);
    MEMORY[0x266771550](0xD00000000000004ALL, 0x8000000265F31020);
    MEMORY[0x266771550](0xD00000000000003ELL, 0x8000000265F31070);
    MEMORY[0x266771550](0x6C6C616320736920, 0xEB000000002E6465);
    v55 = *(&v92 + 1);
    v54 = v92;
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    v57 = 47;
    goto LABEL_30;
  }

  if (EnumCaseMultiPayload == 2)
  {

    outlined destroy of NodeDef.Implementation.Kind(v52, type metadata accessor for NodeDef.Implementation.Kind);
    *&v92 = 0;
    *(&v92 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(51);
    v94 = v92;
    MEMORY[0x266771550](0xD000000000000031, 0x8000000265F30EF0);
    v58 = *(a1 + 1);
    v92 = *a1;
    v93[0] = v58;
    *(v93 + 9) = *(a1 + 25);
    _print_unlocked<A, B>(_:_:)();
    v55 = *(&v94 + 1);
    v54 = v94;
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    v57 = 29;
LABEL_30:
    *v56 = v57;
    *(v56 + 8) = v54;
    *(v56 + 16) = v55;
    swift_willThrow();
    return outlined destroy of NodeDef.Implementation.Kind(v88, type metadata accessor for NodeDef.Implementation);
  }

  v64 = *(v52 + 1);
  v65 = a1[2];
  v66 = *(v65 + 16);
  if (!v66)
  {
    v76 = *(v52 + 1);

    *&v92 = 0;
    *(&v92 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(66);
    v94 = v92;
    v77 = "t yet supported. ";
    v78 = 0xD000000000000040;
LABEL_29:
    MEMORY[0x266771550](v78, v77 | 0x8000000000000000);
    v80 = *(a1 + 1);
    v92 = *a1;
    v93[0] = v80;
    *(v93 + 9) = *(a1 + 25);
    _print_unlocked<A, B>(_:_:)();
    v55 = *(&v94 + 1);
    v54 = v94;
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    v57 = 40;
    goto LABEL_30;
  }

  if (v66 != 1)
  {
    v79 = *(v52 + 1);

    *&v92 = 0;
    *(&v92 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(72);
    v94 = v92;
    v77 = " function call. ";
    v78 = 0xD000000000000046;
    goto LABEL_29;
  }

  v67 = *v52;
  v68 = *(v65 + 40);
  v69 = swift_allocObject();
  *(v69 + 16) = v67;
  *(v69 + 24) = v64;
  *(v69 + 32) = v68;
  v70 = v89;
  v71 = *(v89 + 64);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v70 + 64) = v71;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    *(v70 + 64) = specialized _ArrayBuffer._consumeAndCreateNew()(v71);
  }

  result = outlined destroy of NodeDef.Implementation.Kind(v88, type metadata accessor for NodeDef.Implementation);
  if ((v83 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v73 = *(v70 + 64);
    if (v83 < *(v73 + 16))
    {
      v74 = v73 + 48 * v83;
      v75 = *(v74 + 32);
      *(v74 + 32) = v69 | 0x2000000000000000;
      return outlined consume of NodePersonality(v75);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_265E4F9F8()
{
  outlined consume of SGDataTypeStorage(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80));
  v1 = *(v0 + 88);

  return MEMORY[0x2821FE8E8](v0, 96, 15);
}

uint64_t sub_265E4FA54()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

Swift::Int _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo10SGDataTypeV_Tt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo10SGDataTypeVGMd, &_ss11_SetStorageCySo10SGDataTypeVGMR);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + 8 * v4);
      v11 = *(v3 + 40);
      Hasher.init(_seed:)();
      MEMORY[0x266772770](v10);
      result = Hasher._finalize()();
      v13 = ~(-1 << *(v3 + 32));
      v14 = result & v13;
      v15 = (result & v13) >> 6;
      v16 = *(v5 + 8 * v15);
      v17 = 1 << (result & v13);
      v18 = *(v3 + 48);
      if ((v17 & v16) != 0)
      {
        while (*(v18 + 8 * v14) != v10)
        {
          v14 = (v14 + 1) & v13;
          v15 = v14 >> 6;
          v16 = *(v5 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v15) = v17 | v16;
        *(v18 + 8 * v14) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t partial apply for specialized closure #1 in Sequence<>.contains(_:)(uint64_t *a1)
{
  return _sSh2eeoiySbShyxG_ABtFZSS_Tt1g5(*a1, **(v1 + 16)) & 1;
}

{
  return partial apply for specialized closure #1 in Sequence<>.contains(_:)(a1, type metadata accessor for SGNode) & 1;
}

{
  return partial apply for specialized closure #1 in Sequence<>.contains(_:)(a1, type metadata accessor for SGEdge) & 1;
}

uint64_t outlined destroy of NodeDef.Implementation.Kind(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t lazy protocol witness table accessor for type CharacterSet and conformance CharacterSet(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CharacterSet();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with copy of NodeDef.Implementation.Kind(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_265E4FEE8()
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

Swift::Void __swiftcall OrderedSet.removeAll(keepingCapacity:)(Swift::Bool keepingCapacity)
{
  v4 = *(v1 + 16);
  type metadata accessor for ContiguousArray();
  ContiguousArray.removeAll(keepingCapacity:)(keepingCapacity);
  if (!keepingCapacity)
  {

    *v2 = 0;
    return;
  }

  if (!*v2)
  {
    return;
  }

  OrderedSet._ensureUnique()();
  v5 = *v2;
  if (!*v2)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v6 = (*(v5 + 16) & 0x3FLL) << *(v5 + 16);
  v7 = __OFADD__(v6, 64);
  v8 = v6 + 64;
  if (v7)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = v8 - 1;
  if (v8 < 1)
  {
    v9 = v8 + 62;
  }

  if (v8 < -62)
  {
    goto LABEL_15;
  }

  if ((v8 + 62) >= 0x7F)
  {

    bzero((v5 + 32), 8 * (v9 >> 6));
  }
}

void OrderedSet.remove(at:)(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 24);
  v6 = OrderedSet._bucket(for:)(a1, *v2, v2[1], *(a2 + 16));

  OrderedSet._removeExistingMember(at:in:)(a1, v6, a2);
}

void OrderedSet.removeSubrange(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = v3[1];
  v9 = *v3;
  if (*v3)
  {
    v10 = a2 - a1;
    if (__OFSUB__(a2, a1))
    {
      __break(1u);
    }

    else
    {
      if (v10 < 1)
      {
        return;
      }

      v11 = *(a3 + 16);
      v12 = ContiguousArray.count.getter();
      v13 = v12 - v10;
      if (!__OFSUB__(v12, v10))
      {
        if (v13 <= ContiguousArray.count.getter() / 2 || (v14 = *(a3 + 24), v13 < OrderedSet._minimumCapacity.getter(v9)))
        {
          type metadata accessor for ContiguousArray();
          swift_getWitnessTable();
          RangeReplaceableCollection.removeSubrange(_:)();
          OrderedSet._regenerateHashTable()();
          return;
        }

        OrderedSet._ensureUnique()();
        v16 = *v3;
        if (*v4)
        {
          v17 = *v4;

          closure #1 in OrderedSet.removeSubrange(_:)((v16 + 16), v16 + 32, v4, a1, a2, v11, v14);

          type metadata accessor for ContiguousArray();
          swift_getWitnessTable();
          goto LABEL_11;
        }

LABEL_15:
        __break(1u);
        return;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

  v15 = *(a3 + 16);
  type metadata accessor for ContiguousArray();
  swift_getWitnessTable();
LABEL_11:
  RangeReplaceableCollection.removeSubrange(_:)();
}

Swift::Void __swiftcall OrderedSet.removeLast(_:)(Swift::Int a1)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = v1;
  v5 = *(v2 + 8);
  v6 = *(v1 + 16);
  if (ContiguousArray.count.getter() < a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v7 = ContiguousArray.count.getter();
  v8 = __OFSUB__(v7, a1);
  v9 = v7 - a1;
  if (v8)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v10 = ContiguousArray.count.getter();
  if (v10 < v9)
  {
LABEL_11:
    __break(1u);
    return;
  }

  OrderedSet.removeSubrange(_:)(v9, v10, v3);
}

Swift::Void __swiftcall OrderedSet.removeFirst(_:)(Swift::Int a1)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = v1;
  v5 = *(v2 + 8);
  v6 = *(v1 + 16);
  if (ContiguousArray.count.getter() < a1)
  {
LABEL_7:
    __break(1u);
    return;
  }

  OrderedSet.removeSubrange(_:)(0, a1, v3);
}

void closure #1 in OrderedSet.removeAll(keepingCapacity:)(void *a1, void *a2)
{
  v2 = (*a1 & 0x3FLL) << *a1;
  v3 = __OFADD__(v2, 64);
  v4 = v2 + 64;
  if (v3)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return;
  }

  v5 = v4 - 1;
  if (v4 < 1)
  {
    v5 = v4 + 62;
  }

  if (v4 < -62)
  {
    goto LABEL_8;
  }

  if ((v4 + 62) >= 0x7F)
  {
    bzero(a2, 8 * (v5 >> 6));
  }
}

void closure #1 in OrderedSet.removeSubrange(_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v62 = a7;
  v60 = a2;
  v9 = a1;
  v10 = *(a6 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](a1);
  v49 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = v13;
  v61 = v14;
  specialized ContiguousArray.subscript.getter(v13, v15, *(v14 + 8), v16);
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  swift_unknownObjectRetain();
  v25 = ArraySlice.startIndex.getter();
  v48 = v20;
  v59 = v22;
  v51 = a6;
  if (v25 == ArraySlice.endIndex.getter())
  {
    swift_unknownObjectRelease();
    v26 = v62;
LABEL_9:
    v63[0] = v50;
    v63[1] = a5;
    v64 = *(v61 + 8);
    v44 = type metadata accessor for ContiguousArray();
    WitnessTable = swift_getWitnessTable();
    _HashTable.UnsafeHandle.adjustContents<A>(preparingForRemovalOf:in:)(v63, &v64, v9, v60, v44, WitnessTable, v26);
  }

  else
  {
    v47 = a5;
    v56 = v10 + 16;
    v57 = v24 >> 1;
    v52 = (v10 + 8);
    v53 = v24;
    v58 = v25;
    v27 = v25;
    v29 = v48;
    v28 = v49;
    v30 = v18;
    v31 = v51;
    v32 = v59;
    v54 = v30;
    v55 = v10;
    while (1)
    {
      ArraySlice._hoistableIsNativeTypeChecked()();
      if (v58 < v32 || v57 <= v27)
      {
        break;
      }

      (*(v10 + 16))(v28, v29 + *(v10 + 72) * v27, v31);
      v33 = v61;
      v63[0] = *(v61 + 8);
      v34 = type metadata accessor for ContiguousArray();
      v35 = swift_getWitnessTable();
      v36 = v9;
      v37 = v9;
      v38 = v60;
      v39 = v62;
      v40 = _HashTable.UnsafeHandle._find<A>(_:in:)(v28, v63, v36, v60, v34, v35, v62);
      if (v41)
      {
        goto LABEL_11;
      }

      ++v27;
      MEMORY[0x28223BE20](v40);
      *(&v46 - 4) = v31;
      *(&v46 - 3) = v39;
      *(&v46 - 2) = v33;
      _HashTable.UnsafeHandle.delete(bucket:hashValueGenerator:)(v42, partial apply for closure #1 in closure #1 in OrderedSet.removeSubrange(_:), (&v46 - 6), v37, v38);
      (*v52)(v28, v31);
      v32 = v59;
      v43 = ArraySlice.endIndex.getter();
      v9 = v37;
      v10 = v55;
      if (v27 == v43)
      {
        swift_unknownObjectRelease();
        v26 = v62;
        a5 = v47;
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }
}

void OrderedSet.removeSubrange<A>(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = v2[1];
  swift_getWitnessTable();
  dispatch thunk of RangeExpression.relative<A>(to:)();
  OrderedSet.removeSubrange(_:)(v6, v7, a2);
}

void OrderedSet.removeLast()(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2[1];
  type metadata accessor for ContiguousArray();
  swift_getWitnessTable();
  if (Collection.isEmpty.getter())
  {
    __break(1u);
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  v11 = *v2;
  if (!*v3)
  {
    swift_getWitnessTable();
    swift_getWitnessTable();
    RangeReplaceableCollection<>.removeLast()();
    return;
  }

  v18 = v7;
  v12 = ContiguousArray.count.getter();
  v13 = v12 - 1;
  if (__OFSUB__(v12, 1))
  {
    goto LABEL_11;
  }

  v19 = a2;
  v14 = *(a1 + 24);
  v15 = OrderedSet._minimumCapacity.getter(v11);
  swift_getWitnessTable();
  swift_getWitnessTable();
  if (v13 < v15)
  {
    RangeReplaceableCollection<>.removeLast()();
    OrderedSet._regenerateHashTable()();
    return;
  }

  RangeReplaceableCollection<>.removeLast()();
  OrderedSet._ensureUnique()();
  v16 = *v3;
  if (!*v3)
  {
    goto LABEL_12;
  }

  v17 = *v3;

  closure #1 in OrderedSet.removeLast()((v16 + 16), v16 + 32, v10, v3, v6, v14);

  (*(v18 + 32))(v19, v10, v6);
}

unint64_t closure #1 in OrderedSet.removeLast()(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *a1;
  result = dispatch thunk of Hashable._rawHashValue(seed:)();
  v13 = 1 << *a1;
  v14 = __OFSUB__(v13, 1);
  v15 = v13 - 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    v16 = v15 & result;
    v17 = _HashTable.UnsafeHandle._startIterator(bucket:)(v15 & result, a1, a2);
    v27 = a1;
    v28 = a2;
    v29 = v16;
    v30 = v17;
    v31 = v18;
    v32 = v19;
    v33 = 0;
    v20 = *(a4 + 8);

    v21 = ContiguousArray.count.getter();

    if (v17)
    {
      do
      {
        v23 = -1 << *v27;
        v24 = (v23 ^ ~v17) + (v27[1] >> 6);
        if (v24 >= ~v23)
        {
          v25 = ~v23;
        }

        else
        {
          v25 = 0;
        }

        if (v24 - v25 == v21)
        {
          break;
        }

        _HashTable.BucketIterator.advance()();
        v17 = v30;
      }

      while (v30);
      v16 = v29;
    }

    MEMORY[0x28223BE20](v22);
    v26[2] = a5;
    v26[3] = a6;
    v26[4] = a4;
    return _HashTable.UnsafeHandle.delete(bucket:hashValueGenerator:)(v16, partial apply for closure #1 in closure #1 in OrderedSet.removeLast(), v26, a1, a2);
  }

  return result;
}

uint64_t closure #1 in closure #1 in OrderedSet.removeSubrange(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 8);
  ContiguousArray.subscript.getter();
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  (*(v5 + 8))(v8, a4);
  return v11;
}

void OrderedSet.removeFirst()(uint64_t a1)
{
  v4 = *(v1 + 8);
  v3 = *(a1 + 16);
  type metadata accessor for ContiguousArray();
  swift_getWitnessTable();
  if (Collection.isEmpty.getter())
  {
    __break(1u);
  }

  else
  {
    OrderedSet.remove(at:)(0, a1);
  }
}

void OrderedSet.removeAll(where:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  type metadata accessor for ContiguousArray();
  swift_getWitnessTable();
  swift_getWitnessTable();
  RangeReplaceableCollection<>.removeAll(where:)();
  v5 = *(a3 + 24);
  type metadata accessor for OrderedSet();
  OrderedSet._regenerateHashTable()();
}

void specialized ContiguousArray.subscript.getter(Swift::Int a1, Swift::Int a2, uint64_t a3, uint64_t a4)
{
  ContiguousArray._checkIndex(_:)(a1);
  ContiguousArray._checkIndex(_:)(a2);
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = a3 + ((*(*(a4 - 8) + 80) + 32) & ~*(*(a4 - 8) + 80));
  }
}

uint64_t MaterialXDataType.nodeDefinitionMaterialXDataType.getter@<X0>(void *a1@<X8>)
{
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];

  *a1 = v3;
  a1[1] = v4;
  a1[2] = v6;
}

uint64_t GeomPropDef.GeomProp.nodeDefinitionGeomProp.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  if (a3)
  {
    *a4 = result;
    *(a4 + 8) = a2;
    *(a4 + 16) = 1;
  }

  if (result > 2u)
  {
    if (result == 3)
    {
      v4 = xmmword_265F24220;
    }

    else if (result == 4)
    {
      v4 = xmmword_265F22B90;
    }

    else
    {
      v4 = xmmword_265F20CF0;
    }
  }

  else
  {
    if (!result)
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      return result;
    }

    if (result == 1)
    {
      v4 = xmmword_265F23D80;
    }

    else
    {
      v4 = xmmword_265F24230;
    }
  }

  *a4 = v4;
  *(a4 + 16) = 0;
  return result;
}

uint64_t MaterialXAvailability.description.getter(uint64_t a1, uint64_t a2)
{
  v2 = 0x61656C6572657270;
  v3 = 0x7461636572706564;
  if (a2 == 2)
  {
    v3 = 0x726F707075736E75;
  }

  if (a2 != 3)
  {
    v2 = v3;
  }

  if (a2 == 1)
  {
    return 0x6574726F70707573;
  }

  else
  {
    return v2;
  }
}

uint64_t MaterialXAvailability.availabilityMessage.getter(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) < 3)
  {
    return 0;
  }

  return a1;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MaterialXAvailability()
{
  v1 = *(v0 + 8);
  v2 = 0x61656C6572657270;
  v3 = 0x7461636572706564;
  if (v1 == 2)
  {
    v3 = 0x726F707075736E75;
  }

  if (v1 != 3)
  {
    v2 = v3;
  }

  if (v1 == 1)
  {
    return 0x6574726F70707573;
  }

  else
  {
    return v2;
  }
}

uint64_t NodeDefinitionStore.TypeStorage.init(materialXValue:type:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = specialized SGDataTypeStorage.init(materialXValue:type:)(a1, a2, a3, v12);
  if (!v4)
  {
    v7 = v12[0];
    v8 = v12[1];
    v9 = v12[2];
    v10 = v12[3];
    v11 = v13;
    switch(v13)
    {
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
      case 7:
      case 8:
      case 9:
      case 10:
      case 11:
      case 12:
      case 13:
      case 14:
      case 15:
      case 17:
      case 18:
      case 19:
      case 22:
      case 23:
        break;
      case 6:
      case 16:
        *(&v7 + 1) = *(&v12[0] + 1);
        break;
      case 20:
      case 21:
        *(&v7 + 1) = *(&v12[0] + 1);
        break;
      default:
        v14 = v12[0];
        LODWORD(v7) = v12[0] & 1;
        break;
    }

    *a4 = v7;
    *(a4 + 16) = v8;
    *(a4 + 32) = v9;
    *(a4 + 48) = v10;
    *(a4 + 64) = v11;
  }

  return result;
}

uint64_t specialized static NodeDefinitionStore.MaterialXDataType.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = a1[1] == a2[1] && a1[2] == a2[2];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (!v2)
  {
    if (!v3)
    {
      swift_bridgeObjectRelease_n();
      return 1;
    }

    return 0;
  }

  if (!v3)
  {
    return 0;
  }

  return _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v2, v3);
}

uint64_t OrderedSet.init(arrayLiteral:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = a1;
  v5 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  return OrderedSet.init<A>(_:)(&v8, a2, v5, a3, WitnessTable);
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance OrderedSet<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = OrderedSet.init(arrayLiteral:)(a1, *(a2 + 16), *(a2 + 24));
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t one-time initialization function for wellKnownConstantMap()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph13MetalDataTypeC4type_AC06SGDatahC0O5valueSS3keytGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph13MetalDataTypeC4type_AC06SGDatahC0O5valueSS3keytGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_265F242D0;
  if (one-time initialization token for BOOL != -1)
  {
    swift_once();
  }

  v1 = static MetalDataType.BOOL;
  *(v0 + 32) = static MetalDataType.BOOL;
  *(v0 + 48) = 1;
  *(v0 + 112) = 0;
  strcpy((v0 + 120), "constant_true");
  *(v0 + 134) = -4864;
  *(v0 + 144) = v1;
  *(v0 + 160) = 0;
  *(v0 + 224) = 0;
  strcpy((v0 + 232), "constant_false");
  *(v0 + 247) = -18;
  v2 = one-time initialization token for int32;
  swift_retain_n();
  if (v2 != -1)
  {
    swift_once();
  }

  v3 = static MetalDataType.int32;
  *(v0 + 256) = static MetalDataType.int32;
  *(v0 + 272) = 0;
  *(v0 + 336) = 2;
  strcpy((v0 + 344), "constant_int_0");
  *(v0 + 359) = -18;
  *(v0 + 368) = v3;
  *(v0 + 384) = 1;
  *(v0 + 448) = 2;
  strcpy((v0 + 456), "constant_int_1");
  *(v0 + 471) = -18;
  *(v0 + 480) = v3;
  *(v0 + 496) = 2;
  *(v0 + 560) = 2;
  strcpy((v0 + 568), "constant_int_2");
  *(v0 + 583) = -18;
  *(v0 + 592) = v3;
  *(v0 + 608) = 3;
  *(v0 + 672) = 2;
  strcpy((v0 + 680), "constant_int_3");
  *(v0 + 695) = -18;
  v4 = one-time initialization token for float;
  swift_retain_n();
  if (v4 != -1)
  {
    swift_once();
  }

  v5 = static MetalDataType.float;
  *(v0 + 704) = static MetalDataType.float;
  *(v0 + 720) = -1082130432;
  *(v0 + 768) = *&v25[12];
  *(v0 + 724) = v23;
  *(v0 + 740) = v24;
  *(v0 + 756) = *v25;
  *(v0 + 784) = 5;
  *(v0 + 792) = 0xD000000000000023;
  *(v0 + 800) = 0x8000000265F31600;
  *(v0 + 816) = v5;
  *(v0 + 832) = 0;
  *(v0 + 880) = *&v28[12];
  *(v0 + 852) = v27;
  *(v0 + 868) = *v28;
  *(v0 + 836) = v26;
  *(v0 + 896) = 5;
  *(v0 + 904) = 0xD00000000000001ELL;
  *(v0 + 912) = 0x8000000265F31630;
  *(v0 + 928) = v5;
  *(v0 + 944) = 925353388;
  *(v0 + 948) = v29;
  *(v0 + 964) = v30;
  *(v0 + 980) = *v31;
  *(v0 + 992) = *&v31[12];
  *(v0 + 1008) = 5;
  *(v0 + 1016) = 0xD000000000000031;
  *(v0 + 1024) = 0x8000000265F31650;
  *(v0 + 1040) = v5;
  *(v0 + 1056) = 1008981770;
  *(v0 + 1104) = *&v34[12];
  *(v0 + 1076) = v33;
  *(v0 + 1092) = *v34;
  *(v0 + 1060) = v32;
  *(v0 + 1120) = 5;
  *(v0 + 1128) = 0xD000000000000022;
  *(v0 + 1136) = 0x8000000265F31690;
  *(v0 + 1152) = v5;
  *(v0 + 1168) = 1036831949;
  *(v0 + 1172) = v35;
  *(v0 + 1188) = v36;
  *(v0 + 1204) = *v37;
  *(v0 + 1216) = *&v37[12];
  *(v0 + 1232) = 5;
  *(v0 + 1240) = 0xD00000000000001DLL;
  *(v0 + 1248) = 0x8000000265F316C0;
  *(v0 + 1264) = v5;
  *(v0 + 1280) = 1048576000;
  *(v0 + 1328) = *&v40[12];
  *(v0 + 1300) = v39;
  *(v0 + 1316) = *v40;
  *(v0 + 1284) = v38;
  *(v0 + 1344) = 5;
  *(v0 + 1352) = 0xD000000000000022;
  *(v0 + 1360) = 0x8000000265F316E0;
  *(v0 + 1376) = v5;
  *(v0 + 1392) = 1051372203;
  *(v0 + 1440) = *&v43[12];
  *(v0 + 1412) = v42;
  *(v0 + 1428) = *v43;
  *(v0 + 1396) = v41;
  *(v0 + 1456) = 5;
  *(v0 + 1464) = 0xD00000000000001DLL;
  *(v0 + 1472) = 0x8000000265F31710;
  *(v0 + 1488) = v5;
  *(v0 + 1504) = 1056964608;
  *(v0 + 1552) = *&v46[12];
  *(v0 + 1524) = v45;
  *(v0 + 1540) = *v46;
  *(v0 + 1508) = v44;
  *(v0 + 1568) = 5;
  *(v0 + 1576) = 0xD00000000000001BLL;
  *(v0 + 1584) = 0x8000000265F31730;
  *(v0 + 1600) = v5;
  *(v0 + 1616) = 1059760811;
  *(v0 + 1664) = *&v49[12];
  *(v0 + 1636) = v48;
  *(v0 + 1652) = *v49;
  *(v0 + 1620) = v47;
  *(v0 + 1680) = 5;
  *(v0 + 1688) = 0xD00000000000001DLL;
  *(v0 + 1696) = 0x8000000265F31750;
  *(v0 + 1712) = v5;
  *(v0 + 1728) = 1061158912;
  *(v0 + 1776) = *&v52[12];
  *(v0 + 1748) = v51;
  *(v0 + 1764) = *v52;
  *(v0 + 1732) = v50;
  *(v0 + 1792) = 5;
  *(v0 + 1800) = 0xD00000000000001ELL;
  *(v0 + 1808) = 0x8000000265F31770;
  *(v0 + 1824) = v5;
  *(v0 + 1840) = 1065353216;
  *(v0 + 1888) = *&v55[12];
  *(v0 + 1860) = v54;
  *(v0 + 1876) = *v55;
  *(v0 + 1844) = v53;
  *(v0 + 1904) = 5;
  *(v0 + 1912) = 0xD00000000000001DLL;
  *(v0 + 1920) = 0x8000000265F31790;
  *(v0 + 1936) = v5;
  *(v0 + 1952) = 1069547520;
  *(v0 + 2000) = *&v58[12];
  *(v0 + 1972) = v57;
  *(v0 + 1988) = *v58;
  *(v0 + 1956) = v56;
  *(v0 + 2016) = 5;
  *(v0 + 2024) = 0xD00000000000001DLL;
  *(v0 + 2032) = 0x8000000265F317B0;
  v6 = one-time initialization token for float2;
  swift_retain_n();
  if (v6 != -1)
  {
    swift_once();
  }

  v7 = static MetalDataType.float2;
  *(v0 + 2048) = static MetalDataType.float2;
  *(v0 + 2064) = 0;
  *(v0 + 2120) = v62;
  *(v0 + 2072) = v59;
  *(v0 + 2088) = v60;
  *(v0 + 2104) = v61;
  *(v0 + 2128) = 7;
  *(v0 + 2136) = 0xD000000000000019;
  *(v0 + 2144) = 0x8000000265F317D0;
  *(v0 + 2160) = v7;
  *(v0 + 2176) = 1065353216;
  *(v0 + 2232) = v66;
  *(v0 + 2200) = v64;
  *(v0 + 2216) = v65;
  *(v0 + 2184) = v63;
  *(v0 + 2240) = 7;
  *(v0 + 2248) = 0xD000000000000018;
  *(v0 + 2256) = 0x8000000265F317F0;
  *(v0 + 2272) = v7;
  *(v0 + 2288) = 0x3F80000000000000;
  *(v0 + 2296) = v67;
  *(v0 + 2312) = v68;
  *(v0 + 2328) = v69;
  *(v0 + 2344) = v70;
  *(v0 + 2352) = 7;
  *(v0 + 2360) = 0xD000000000000018;
  *(v0 + 2368) = 0x8000000265F31810;
  *(v0 + 2384) = v7;
  __asm { FMOV            V0.2S, #1.0 }

  *(v0 + 2400) = _D0;
  *(v0 + 2456) = v74;
  *(v0 + 2424) = v72;
  *(v0 + 2440) = v73;
  *(v0 + 2408) = v71;
  *(v0 + 2464) = 7;
  *(v0 + 2472) = 0xD000000000000017;
  *(v0 + 2480) = 0x8000000265F31830;
  *(v0 + 2496) = v7;
  *(v0 + 2512) = 0x3F0000003F000000;
  *(v0 + 2568) = v78;
  *(v0 + 2536) = v76;
  *(v0 + 2552) = v77;
  *(v0 + 2520) = v75;
  *(v0 + 2576) = 7;
  *(v0 + 2584) = 0xD00000000000002FLL;
  *(v0 + 2592) = 0x8000000265F31850;
  v13 = one-time initialization token for float3;
  swift_retain_n();
  if (v13 != -1)
  {
    swift_once();
  }

  v14 = static MetalDataType.float3;
  *(v0 + 2608) = static MetalDataType.float3;
  *(v0 + 2624) = 0u;
  *(v0 + 2640) = v79;
  *(v0 + 2656) = v80;
  *(v0 + 2672) = v81;
  *(v0 + 2688) = 8;
  *(v0 + 2696) = 0xD00000000000001ELL;
  *(v0 + 2704) = 0x8000000265F31880;
  *(v0 + 2720) = v14;
  *(v0 + 2736) = xmmword_265F242E0;
  *(v0 + 2752) = v82;
  *(v0 + 2768) = v83;
  *(v0 + 2784) = v84;
  *(v0 + 2800) = 8;
  *(v0 + 2808) = 0xD00000000000001DLL;
  *(v0 + 2816) = 0x8000000265F318A0;
  *(v0 + 2832) = v14;
  *(v0 + 2848) = xmmword_265F242F0;
  *(v0 + 2864) = v85;
  *(v0 + 2880) = v86;
  *(v0 + 2896) = v87;
  *(v0 + 2912) = 8;
  *(v0 + 2920) = 0xD00000000000001DLL;
  *(v0 + 2928) = 0x8000000265F318C0;
  *(v0 + 2944) = v14;
  *(v0 + 2960) = xmmword_265F24300;
  *(v0 + 3008) = v90;
  *(v0 + 2992) = v89;
  *(v0 + 2976) = v88;
  *(v0 + 3024) = 8;
  *(v0 + 3032) = 0xD00000000000001DLL;
  *(v0 + 3040) = 0x8000000265F318E0;
  *(v0 + 3056) = v14;
  *(v0 + 3072) = xmmword_265F24310;
  *(v0 + 3120) = v93;
  *(v0 + 3104) = v92;
  *(v0 + 3088) = v91;
  *(v0 + 3136) = 8;
  *(v0 + 3144) = 0xD00000000000001CLL;
  *(v0 + 3152) = 0x8000000265F31900;
  *(v0 + 3168) = v14;
  *(v0 + 3184) = xmmword_265F24320;
  *(v0 + 3232) = v96;
  *(v0 + 3216) = v95;
  *(v0 + 3200) = v94;
  *(v0 + 3248) = 8;
  *(v0 + 3256) = 0xD00000000000001CLL;
  *(v0 + 3264) = 0x8000000265F31920;
  *(v0 + 3280) = v14;
  *(v0 + 3296) = xmmword_265F24330;
  *(v0 + 3344) = v99;
  *(v0 + 3328) = v98;
  *(v0 + 3312) = v97;
  *(v0 + 3360) = 8;
  *(v0 + 3368) = 0xD00000000000001CLL;
  *(v0 + 3376) = 0x8000000265F31940;
  *(v0 + 3392) = v14;
  *(v0 + 3408) = xmmword_265F24340;
  *(v0 + 3456) = v102;
  *(v0 + 3440) = v101;
  *(v0 + 3424) = v100;
  *(v0 + 3472) = 8;
  *(v0 + 3480) = 0xD00000000000001BLL;
  *(v0 + 3488) = 0x8000000265F31960;
  *(v0 + 3504) = v14;
  *(v0 + 3520) = xmmword_265F24350;
  *(v0 + 3568) = v105;
  *(v0 + 3552) = v104;
  *(v0 + 3536) = v103;
  *(v0 + 3584) = 8;
  *(v0 + 3592) = 0xD000000000000024;
  *(v0 + 3600) = 0x8000000265F31980;
  v15 = one-time initialization token for float4;
  swift_retain_n();
  if (v15 != -1)
  {
    swift_once();
  }

  v16 = static MetalDataType.float4;
  *(v0 + 3616) = static MetalDataType.float4;
  *(v0 + 3632) = 0u;
  *(v0 + 3648) = v106;
  *(v0 + 3664) = v107;
  *(v0 + 3680) = v108;
  *(v0 + 3696) = 9;
  *(v0 + 3704) = 0xD000000000000023;
  *(v0 + 3712) = 0x8000000265F319B0;
  *(v0 + 3728) = v16;
  *(v0 + 3744) = xmmword_265F24360;
  *(v0 + 3760) = v109;
  *(v0 + 3776) = v110;
  *(v0 + 3792) = v111;
  *(v0 + 3808) = 9;
  *(v0 + 3816) = 0xD000000000000022;
  *(v0 + 3824) = 0x8000000265F319E0;
  *(v0 + 3840) = v16;
  *(v0 + 3856) = xmmword_265F24370;
  *(v0 + 3872) = v112;
  *(v0 + 3888) = v113;
  *(v0 + 3904) = v114;
  *(v0 + 3920) = 9;
  *(v0 + 3928) = 0xD000000000000021;
  *(v0 + 3936) = 0x8000000265F31A10;
  *(v0 + 3952) = v16;
  *(v0 + 3968) = xmmword_265F24380;
  *(v0 + 4016) = v117;
  *(v0 + 4000) = v116;
  *(v0 + 3984) = v115;
  *(v0 + 4032) = 9;
  *(v0 + 4040) = 0xD000000000000021;
  *(v0 + 4048) = 0x8000000265F31A40;
  *(v0 + 4064) = v16;
  *(v0 + 4080) = xmmword_265F24390;
  *(v0 + 4128) = v120;
  *(v0 + 4112) = v119;
  *(v0 + 4096) = v118;
  *(v0 + 4144) = 9;
  *(v0 + 4152) = 0xD000000000000021;
  *(v0 + 4160) = 0x8000000265F31A70;
  *(v0 + 4176) = v16;
  *(v0 + 4192) = xmmword_265F243A0;
  *(v0 + 4240) = v123;
  *(v0 + 4224) = v122;
  *(v0 + 4208) = v121;
  *(v0 + 4256) = 9;
  *(v0 + 4264) = 0xD000000000000020;
  *(v0 + 4272) = 0x8000000265F31AA0;
  *(v0 + 4288) = v16;
  *(v0 + 4304) = xmmword_265F243B0;
  *(v0 + 4352) = v126;
  *(v0 + 4336) = v125;
  *(v0 + 4320) = v124;
  *(v0 + 4368) = 9;
  *(v0 + 4376) = 0xD000000000000020;
  *(v0 + 4384) = 0x8000000265F31AD0;
  *(v0 + 4400) = v16;
  *(v0 + 4416) = xmmword_265F243C0;
  *(v0 + 4464) = v129;
  *(v0 + 4448) = v128;
  *(v0 + 4432) = v127;
  *(v0 + 4480) = 9;
  *(v0 + 4488) = 0xD000000000000020;
  *(v0 + 4496) = 0x8000000265F31B00;
  *(v0 + 4512) = v16;
  __asm { FMOV            V0.4S, #1.0 }

  *(v0 + 4528) = _Q0;
  *(v0 + 4576) = v132;
  *(v0 + 4560) = v131;
  *(v0 + 4544) = v130;
  *(v0 + 4592) = 9;
  *(v0 + 4600) = 0xD00000000000001FLL;
  *(v0 + 4608) = 0x8000000265F31B30;
  v18 = one-time initialization token for float3x3;
  swift_retain_n();
  if (v18 != -1)
  {
    swift_once();
  }

  *(v0 + 4624) = static MetalDataType.float3x3;
  *(v0 + 4640) = xmmword_265F242E0;
  *(v0 + 4656) = xmmword_265F242F0;
  *(v0 + 4672) = xmmword_265F24300;
  *(v0 + 4688) = v133;
  *(v0 + 4704) = 17;
  *(v0 + 4712) = 0xD00000000000001ALL;
  *(v0 + 4720) = 0x8000000265F31B50;
  v19 = one-time initialization token for float4x4;

  if (v19 != -1)
  {
    swift_once();
  }

  *(v0 + 4736) = static MetalDataType.float4x4;
  *(v0 + 4752) = xmmword_265F242E0;
  *(v0 + 4768) = xmmword_265F242F0;
  *(v0 + 4784) = xmmword_265F24300;
  *(v0 + 4800) = xmmword_265F24360;
  *(v0 + 4816) = 18;
  *(v0 + 4824) = 0xD00000000000001ALL;
  *(v0 + 4832) = 0x8000000265F31B70;
  v20 = one-time initialization token for space;

  if (v20 != -1)
  {
    swift_once();
  }

  v21 = static MetalDataType.MaterialX.space;
  *(v0 + 4848) = static MetalDataType.MaterialX.space;
  *(v0 + 4864) = 0x6F4D65636170536BLL;
  *(v0 + 4872) = 0xEB000000006C6564;
  *(v0 + 4880) = v134;
  *(v0 + 4896) = v135;
  *(v0 + 4912) = v136;
  *(v0 + 4928) = 6;
  *(v0 + 4936) = 0xD000000000000014;
  *(v0 + 4944) = 0x8000000265F31B90;
  *(v0 + 4960) = v21;
  strcpy((v0 + 4976), "kSpaceObject");
  *(v0 + 4989) = 0;
  *(v0 + 4990) = -5120;
  *(v0 + 5024) = v139;
  *(v0 + 5008) = v138;
  *(v0 + 4992) = v137;
  *(v0 + 5040) = 6;
  *(v0 + 5048) = 0xD000000000000015;
  *(v0 + 5056) = 0x8000000265F31BB0;
  *(v0 + 5072) = v21;
  *(v0 + 5088) = 0x6F5765636170536BLL;
  *(v0 + 5096) = 0xEB00000000646C72;
  *(v0 + 5104) = v140;
  *(v0 + 5120) = v141;
  *(v0 + 5136) = v142;
  *(v0 + 5152) = 6;
  *(v0 + 5160) = 0xD000000000000014;
  *(v0 + 5168) = 0x8000000265F31BD0;
  *(v0 + 5184) = v21;
  strcpy((v0 + 5200), "kSpaceTangent");
  *(v0 + 5214) = -4864;
  *(v0 + 5248) = v145;
  *(v0 + 5232) = v144;
  *(v0 + 5216) = v143;
  *(v0 + 5264) = 6;
  *(v0 + 5272) = 0xD000000000000016;
  *(v0 + 5280) = 0x8000000265F31BF0;
  wellKnownConstantMap._rawValue = v0;
  return swift_retain_n();
}

Swift::OpaquePointer *wellKnownConstantMap.unsafeMutableAddressor()
{
  if (one-time initialization token for wellKnownConstantMap != -1)
  {
    swift_once();
  }

  return &wellKnownConstantMap;
}

Swift::Int UserGraphError.ErrorType.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x266772770](a1);
  return Hasher._finalize()();
}

uint64_t UserGraphError.description.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _StringGuts.grow(_:)(28);
  MEMORY[0x266771550](0xD000000000000015, 0x8000000265F31C10);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x266771550](2112041, 0xE300000000000000);
  if (a3)
  {

    v4 = String.init<A>(describing:)();
    v6 = v5;
  }

  else
  {
    v6 = 0xE500000000000000;
    v4 = 0x3E6C696E3CLL;
  }

  MEMORY[0x266771550](v4, v6);

  return 0;
}

unint64_t lazy protocol witness table accessor for type UserGraphError.ErrorType and conformance UserGraphError.ErrorType()
{
  result = lazy protocol witness table cache variable for type UserGraphError.ErrorType and conformance UserGraphError.ErrorType;
  if (!lazy protocol witness table cache variable for type UserGraphError.ErrorType and conformance UserGraphError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UserGraphError.ErrorType and conformance UserGraphError.ErrorType);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UserGraphError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t storeEnumTagSinglePayload for UserGraphError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UserGraphError.ErrorType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xD0)
  {
    goto LABEL_17;
  }

  if (a2 + 48 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 48) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 48;
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

      return (*a1 | (v4 << 8)) - 48;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 48;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x31;
  v8 = v6 - 49;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for UserGraphError.ErrorType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 48 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 48) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xD0)
  {
    v4 = 0;
  }

  if (a2 > 0xCF)
  {
    v5 = ((a2 - 208) >> 8) + 1;
    *result = a2 + 48;
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
    *result = a2 + 48;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t NodeDef.IOSpec.init(name:type:isUniform:defaultValue:defaultGeomProp:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a5;
  *(a9 + 32) = a6;
  *(a9 + 40) = a7;
  *(a9 + 48) = a8;
  *(a9 + 56) = a4;
  return result;
}

__n128 NodeDef.init(name:nodeName:inherit:nodegroup:version:isdefaultversion:targets:uiName:inputs:outputs:available:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, char a12, __int128 a13, uint64_t a14, uint64_t a15, uint64_t a16, __n128 a17)
{
  result = a17;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11;
  *(a9 + 80) = a12;
  *(a9 + 88) = a13;
  *(a9 + 104) = a14;
  *(a9 + 112) = a17;
  *(a9 + 128) = a15;
  *(a9 + 136) = a16;
  *(a9 + 144) = 0;
  return result;
}

__n128 NodeDef.init(name:nodeName:inherit:nodegroup:version:isdefaultversion:targets:uiName:inputs:outputs:availability:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, char a12, __n128 a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v21 = [objc_allocWithZone(MEMORY[0x277CCAC38]) init];
  [v21 operatingSystemVersion];
  v22 = v33;
  v26 = v32;

  v32 = v26;
  LOBYTE(v33) = 0;
  v34 = v22;
  v35 = 0;
  v23 = specialized static NodeDef.available(for:in:)(0, &v32, a17);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11;
  *(a9 + 80) = a12;
  result = a13;
  *(a9 + 88) = a13;
  *(a9 + 104) = a14;
  *(a9 + 112) = v23;
  *(a9 + 120) = v25;
  *(a9 + 128) = a15;
  *(a9 + 136) = a16;
  *(a9 + 144) = a17;
  return result;
}

uint64_t NodeDef.Implementation.init(name:kind:targets:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  v8 = type metadata accessor for NodeDef.Implementation(0);
  result = outlined init with take of NodeDef.Implementation.Kind(a3, a5 + *(v8 + 20));
  *(a5 + *(v8 + 24)) = a4;
  return result;
}

uint64_t NodeDef.subscript.getter@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(v3 + 128);
  v6 = *(v5 + 16);
  v7 = 0uLL;
  if (v6)
  {
    v9 = result;
    v10 = (v5 + 32);
    while (1)
    {
      v11 = *(v10 + 41);
      v13 = v10[1];
      v12 = v10[2];
      *v22 = *v10;
      *&v22[16] = v13;
      *&v22[32] = v12;
      *&v22[41] = v11;
      v14 = *v22;
      v19 = *&v22[40];
      v20 = *&v22[24];
      v15 = HIBYTE(v11);
      v18 = *&v22[8];
      if (*v22 == __PAIR128__(a2, v9))
      {
        result = outlined init with copy of NodeDef.IOSpec(v22, v21);
        v14 = v9;
        goto LABEL_10;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        break;
      }

      v10 += 4;
      if (!--v6)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0uLL;
        v17 = 0uLL;
        v7 = 0uLL;
        goto LABEL_11;
      }
    }

    result = outlined init with copy of NodeDef.IOSpec(v22, v21);
LABEL_10:
    v7 = v18;
    v17 = v19;
    v16 = v20;
  }

  else
  {
    v14 = 0;
    v15 = 0;
    v16 = 0uLL;
    v17 = 0uLL;
  }

LABEL_11:
  *a3 = v14;
  *(a3 + 8) = v7;
  *(a3 + 24) = v16;
  *(a3 + 40) = v17;
  *(a3 + 56) = v15;
  return result;
}

{
  v5 = *(v3 + 136);
  v6 = *(v5 + 16);
  v7 = 0uLL;
  if (v6)
  {
    v9 = result;
    v10 = (v5 + 32);
    while (1)
    {
      v11 = *(v10 + 41);
      v13 = v10[1];
      v12 = v10[2];
      *v22 = *v10;
      *&v22[16] = v13;
      *&v22[32] = v12;
      *&v22[41] = v11;
      v14 = *v22;
      v19 = *&v22[40];
      v20 = *&v22[24];
      v15 = HIBYTE(v11);
      v18 = *&v22[8];
      if (*v22 == __PAIR128__(a2, v9))
      {
        result = outlined init with copy of NodeDef.IOSpec(v22, v21);
        v14 = v9;
        goto LABEL_10;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        break;
      }

      v10 += 4;
      if (!--v6)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0uLL;
        v17 = 0uLL;
        v7 = 0uLL;
        goto LABEL_11;
      }
    }

    result = outlined init with copy of NodeDef.IOSpec(v22, v21);
LABEL_10:
    v7 = v18;
    v17 = v19;
    v16 = v20;
  }

  else
  {
    v14 = 0;
    v15 = 0;
    v16 = 0uLL;
    v17 = 0uLL;
  }

LABEL_11:
  *a3 = v14;
  *(a3 + 8) = v7;
  *(a3 + 24) = v16;
  *(a3 + 40) = v17;
  *(a3 + 56) = v15;
  return result;
}

uint64_t *MaterialXTarget.realitykit_geometryModifier.unsafeMutableAddressor()
{
  if (one-time initialization token for realitykit_geometryModifier != -1)
  {
    swift_once();
  }

  return &static MaterialXTarget.realitykit_geometryModifier;
}

uint64_t *MaterialXTarget.realitykit_surfaceShader.unsafeMutableAddressor()
{
  if (one-time initialization token for realitykit_surfaceShader != -1)
  {
    swift_once();
  }

  return &static MaterialXTarget.realitykit_surfaceShader;
}

uint64_t MaterialXTarget.name.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t MaterialXTarget.conformsTo(_:)(uint64_t a1)
{
  while (1)
  {
    v3 = v1[2] == *(a1 + 16) && v1[3] == *(a1 + 24);
    if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v1 = v1[4];
    if (!v1)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t MaterialXTarget.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);
  *(v0 + 32) = 0;

  if (v2)
  {
    do
    {

      if (!swift_isUniquelyReferenced_native())
      {
        break;
      }

      v3 = *(v2 + 32);
      swift_retain_n();

      v2 = v3;
    }

    while (v3);
  }

  return v0;
}

uint64_t MaterialXTarget.__deallocating_deinit()
{
  MaterialXTarget.deinit();

  return swift_deallocClassInstance();
}

void MaterialXTarget.hash(into:)(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  String.hash(into:)();
  v5 = v1[4];

  specialized Optional<A>.hash(into:)(a1, v5);
}

Swift::Int MaterialXTarget.hashValue.getter()
{
  Hasher.init(_seed:)();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  String.hash(into:)();
  specialized Optional<A>.hash(into:)(v4, *(v0 + 32));
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MaterialXTarget()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  String.hash(into:)();
  specialized Optional<A>.hash(into:)(v5, *(v1 + 32));
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance MaterialXTarget(uint64_t a1)
{
  v3 = *v1;
  v4 = v3[2];
  v5 = v3[3];
  String.hash(into:)();
  v6 = v3[4];

  specialized Optional<A>.hash(into:)(a1, v6);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MaterialXTarget()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  String.hash(into:)();
  specialized Optional<A>.hash(into:)(v5, *(v1 + 32));
  return Hasher._finalize()();
}

uint64_t one-time initialization function for realitykit()
{
  type metadata accessor for MaterialXTarget();
  result = swift_initStaticObject();
  static MaterialXTarget.realitykit = result;
  return result;
}

uint64_t *MaterialXTarget.realitykit.unsafeMutableAddressor()
{
  if (one-time initialization token for realitykit != -1)
  {
    swift_once();
  }

  return &static MaterialXTarget.realitykit;
}

void *one-time initialization function for realitykit_geometryModifier()
{
  type metadata accessor for MaterialXTarget();
  inited = swift_initStaticObject();
  result = swift_allocObject();
  result[2] = 0xD00000000000001CLL;
  result[3] = 0x8000000265F31C80;
  result[4] = inited;
  static MaterialXTarget.realitykit_geometryModifier = result;
  return result;
}

void *one-time initialization function for realitykit_surfaceShader()
{
  type metadata accessor for MaterialXTarget();
  inited = swift_initStaticObject();
  result = swift_allocObject();
  result[2] = 0xD000000000000019;
  result[3] = 0x8000000265F31CA0;
  result[4] = inited;
  static MaterialXTarget.realitykit_surfaceShader = result;
  return result;
}

uint64_t one-time initialization function for allTargets()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_265F24510;
  type metadata accessor for MaterialXTarget();
  *(v0 + 32) = swift_initStaticObject();
  if (one-time initialization token for realitykit_geometryModifier != -1)
  {
    swift_once();
  }

  *(v0 + 40) = static MaterialXTarget.realitykit_geometryModifier;
  v1 = one-time initialization token for realitykit_surfaceShader;

  if (v1 != -1)
  {
    swift_once();
  }

  *(v0 + 48) = static MaterialXTarget.realitykit_surfaceShader;
  static MaterialXTarget.allTargets = v0;
}

uint64_t *MaterialXTarget.allTargets.unsafeMutableAddressor()
{
  if (one-time initialization token for allTargets != -1)
  {
    swift_once();
  }

  return &static MaterialXTarget.allTargets;
}

uint64_t static MaterialXTarget.allTargets.getter()
{
  if (one-time initialization token for allTargets != -1)
  {
    swift_once();
  }
}

void MaterialXAvailability.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  switch(a3)
  {
    case 3:
      v3 = 3;
      goto LABEL_7;
    case 2:
      v3 = 1;
      goto LABEL_7;
    case 1:
      v3 = 0;
LABEL_7:
      MEMORY[0x266772770](v3);
      return;
  }

  MEMORY[0x266772770](2);
  if (a3)
  {
    Hasher._combine(_:)(1u);

    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int MaterialXAvailability.hashValue.getter(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  switch(a2)
  {
    case 3:
      v3 = 3;
      goto LABEL_7;
    case 2:
      v3 = 1;
      goto LABEL_7;
    case 1:
      v3 = 0;
LABEL_7:
      MEMORY[0x266772770](v3);
      return Hasher._finalize()();
  }

  MEMORY[0x266772770](2);
  if (a2)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance MaterialXAvailability()
{
  v1 = v0[1];
  switch(v1)
  {
    case 3:
      v2 = 3;
      goto LABEL_7;
    case 2:
      v2 = 1;
      goto LABEL_7;
    case 1:
      v2 = 0;
LABEL_7:
      MEMORY[0x266772770](v2);
      return;
  }

  v3 = *v0;
  MEMORY[0x266772770](2);
  if (v1)
  {
    Hasher._combine(_:)(1u);

    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MaterialXAvailability()
{
  v2 = *v0;
  v1 = v0[1];
  Hasher.init(_seed:)();
  switch(v1)
  {
    case 3:
      v3 = 3;
      goto LABEL_7;
    case 2:
      v3 = 1;
      goto LABEL_7;
    case 1:
      v3 = 0;
LABEL_7:
      MEMORY[0x266772770](v3);
      return Hasher._finalize()();
  }

  MEMORY[0x266772770](2);
  if (v1)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

uint64_t NodeDef.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t NodeDef.nodeName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t NodeDef.inherit.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t NodeDef.nodegroup.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t NodeDef.version.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t NodeDef.uiName.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return v1;
}

uint64_t NodeDef.available.getter()
{
  v1 = *(v0 + 112);
  outlined copy of MaterialXAvailability(v1, *(v0 + 120));
  return v1;
}

uint64_t NodeDef.IOSpec.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t NodeDef.IOSpec.defaultValue.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t NodeDef.IOSpec.defaultGeomProp.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

void NodeDef.IOSpec.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = v2[1];
  String.hash(into:)();
  v6 = v2[2];
  swift_beginAccess();
  v7 = *(v6 + 16);

  specialized Array<A>.hash(into:)(a1, v7);

  if (!v2[4])
  {
    Hasher._combine(_:)(0);
    if (v2[6])
    {
      goto LABEL_3;
    }

LABEL_5:
    Hasher._combine(_:)(0);
    goto LABEL_6;
  }

  v8 = v2[3];
  Hasher._combine(_:)(1u);
  String.hash(into:)();
  if (!v2[6])
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = v2[5];
  Hasher._combine(_:)(1u);
  String.hash(into:)();
LABEL_6:
  Hasher._combine(_:)(v2[7] & 1);
}

Swift::Int NodeDef.IOSpec.hashValue.getter()
{
  v1 = v0;
  Hasher.init(_seed:)();
  v2 = *v0;
  v3 = v0[1];
  String.hash(into:)();
  v4 = v0[2];
  swift_beginAccess();
  v5 = *(v4 + 16);

  specialized Array<A>.hash(into:)(v9, v5);

  if (!v1[4])
  {
    Hasher._combine(_:)(0);
    if (v1[6])
    {
      goto LABEL_3;
    }

LABEL_5:
    Hasher._combine(_:)(0);
    goto LABEL_6;
  }

  v6 = v1[3];
  Hasher._combine(_:)(1u);
  String.hash(into:)();
  if (!v1[6])
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = v1[5];
  Hasher._combine(_:)(1u);
  String.hash(into:)();
LABEL_6:
  Hasher._combine(_:)(v1[7] & 1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NodeDef.IOSpec()
{
  Hasher.init(_seed:)();
  NodeDef.IOSpec.hash(into:)(v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance NodeDef.IOSpec(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v6[0] = a1[2];
  *(v6 + 9) = *(a1 + 41);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8[0] = a2[2];
  *(v8 + 9) = *(a2 + 41);
  return specialized static NodeDef.IOSpec.== infix(_:_:)(v5, v7) & 1;
}

void NodeDef.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = v2[1];
  String.hash(into:)();
  v6 = v2[2];
  v7 = v2[3];
  String.hash(into:)();
  if (v2[5])
  {
    v8 = v2[4];
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    if (v2[7])
    {
      goto LABEL_3;
    }

LABEL_6:
    Hasher._combine(_:)(0);
    if (v2[9])
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  Hasher._combine(_:)(0);
  if (!v2[7])
  {
    goto LABEL_6;
  }

LABEL_3:
  v9 = v2[6];
  Hasher._combine(_:)(1u);
  String.hash(into:)();
  if (v2[9])
  {
LABEL_4:
    v10 = v2[8];
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    goto LABEL_8;
  }

LABEL_7:
  Hasher._combine(_:)(0);
LABEL_8:
  v11 = *(v2 + 80);
  if (v11 == 2)
  {
    v12 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v12 = v11 & 1;
  }

  Hasher._combine(_:)(v12);
  v13 = v2[11];
  v14 = *(v13 + 16);
  MEMORY[0x266772770](v14);
  if (v14)
  {
    v15 = (v13 + 40);
    do
    {
      v16 = *(v15 - 1);
      v17 = *v15;

      String.hash(into:)();

      v15 += 2;
      --v14;
    }

    while (v14);
  }

  if (v2[13])
  {
    v18 = v2[12];
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v19 = v2[15];
  switch(v19)
  {
    case 3:
      v20 = 3;
      goto LABEL_23;
    case 2:
      v20 = 1;
      goto LABEL_23;
    case 1:
      v20 = 0;
LABEL_23:
      MEMORY[0x266772770](v20);
      goto LABEL_24;
  }

  v22 = v2[14];
  MEMORY[0x266772770](2);
  if (v19)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

LABEL_24:
  specialized Array<A>.hash(into:)(a1, v2[16]);
  specialized Array<A>.hash(into:)(a1, v2[17]);
  v21 = v2[18];
  if (v21)
  {
    Hasher._combine(_:)(1u);

    specialized Array<A>.hash(into:)(a1, v21);
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int NodeDef.hashValue.getter()
{
  Hasher.init(_seed:)();
  NodeDef.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance NodeDef()
{
  Hasher.init(_seed:)();
  NodeDef.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NodeDef()
{
  Hasher.init(_seed:)();
  NodeDef.hash(into:)(v1);
  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance NodeDef(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 112);
  v11[6] = *(a1 + 96);
  v11[7] = v2;
  v11[8] = *(a1 + 128);
  v12 = *(a1 + 144);
  v3 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v3;
  v4 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v4;
  v5 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v5;
  v6 = *(a2 + 112);
  v13[6] = *(a2 + 96);
  v13[7] = v6;
  v13[8] = *(a2 + 128);
  v14 = *(a2 + 144);
  v7 = *(a2 + 48);
  v13[2] = *(a2 + 32);
  v13[3] = v7;
  v8 = *(a2 + 80);
  v13[4] = *(a2 + 64);
  v13[5] = v8;
  v9 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v9;
  return specialized static NodeDef.== infix(_:_:)(v11, v13);
}

uint64_t NodeDef.Implementation.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t NodeDef.Implementation.kind.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for NodeDef.Implementation(0) + 20);

  return outlined init with copy of NodeDef.Implementation.Kind(v3, a1);
}

uint64_t NodeDef.Implementation.targets.getter()
{
  v1 = *(v0 + *(type metadata accessor for NodeDef.Implementation(0) + 24));
}

uint64_t NodeDef.Implementation.isAvailableFor(_:)()
{
  v1 = type metadata accessor for NodeDef.Implementation(0);
  v2 = *(v0 + *(v1 + 24));
  if ((v2 & 0xC000000000000001) != 0)
  {
    if (v2 < 0)
    {
      v3 = *(v0 + *(v1 + 24));
    }

    if (__CocoaSet.count.getter())
    {
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      type metadata accessor for MaterialXTarget();
      lazy protocol witness table accessor for type MaterialXTarget and conformance MaterialXTarget(&lazy protocol witness table cache variable for type MaterialXTarget and conformance MaterialXTarget, v4, type metadata accessor for MaterialXTarget);
      result = Set.Iterator.init(_cocoa:)();
      v2 = v20;
      v6 = v21;
      v7 = v22;
      v8 = v23;
      v9 = v24;
LABEL_11:
      v13 = (v7 + 64) >> 6;
      while (1)
      {
        if (v2 < 0)
        {
          if (!__CocoaSet.Iterator.next()() || (type metadata accessor for MaterialXTarget(), swift_dynamicCast(), (v14 = v19) == 0))
          {
LABEL_22:
            v18 = 0;
LABEL_23:
            outlined consume of [String : GeomPropDef].Iterator._Variant();
            return v18;
          }
        }

        else
        {
          v16 = v8;
          v17 = v9;
          if (!v9)
          {
            while (1)
            {
              v8 = v16 + 1;
              if (__OFADD__(v16, 1))
              {
                break;
              }

              if (v8 >= v13)
              {
                goto LABEL_22;
              }

              v17 = *(v6 + 8 * v8);
              ++v16;
              if (v17)
              {
                goto LABEL_12;
              }
            }

            __break(1u);
            return result;
          }

LABEL_12:
          v9 = (v17 - 1) & v17;
          v14 = *(*(v2 + 48) + ((v8 << 9) | (8 * __clz(__rbit64(v17)))));

          if (!v14)
          {
            goto LABEL_22;
          }
        }

        v15 = MaterialXTarget.conformsTo(_:)(v14);

        if (v15)
        {
          v18 = 1;
          goto LABEL_23;
        }
      }
    }
  }

  else if (*(v2 + 16))
  {
    v10 = -1 << *(v2 + 32);
    v6 = v2 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(v2 + 56);

    v8 = 0;
    goto LABEL_11;
  }

  return 1;
}

uint64_t NodeDef.Implementation.hash(into:)(__int128 *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = v1[1];
  String.hash(into:)();
  v6 = type metadata accessor for NodeDef.Implementation(0);
  v7 = v1 + *(v6 + 20);
  NodeDef.Implementation.Kind.hash(into:)(a1);
  v8 = *(v2 + *(v6 + 24));

  return specialized Set.hash(into:)(a1, v8);
}

Swift::Int NodeDef.Implementation.hashValue.getter()
{
  v1 = v0;
  Hasher.init(_seed:)();
  v2 = *v0;
  v3 = v0[1];
  String.hash(into:)();
  v4 = type metadata accessor for NodeDef.Implementation(0);
  v5 = v0 + *(v4 + 20);
  NodeDef.Implementation.Kind.hash(into:)(v7);
  specialized Set.hash(into:)(v7, *(v1 + *(v4 + 24)));
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance NodeDef.Implementation(uint64_t a1)
{
  v3 = v1;
  Hasher.init(_seed:)();
  v4 = *v1;
  v5 = v1[1];
  String.hash(into:)();
  v6 = v1 + *(a1 + 20);
  NodeDef.Implementation.Kind.hash(into:)(v8);
  specialized Set.hash(into:)(v8, *(v3 + *(a1 + 24)));
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NodeDef.Implementation(__int128 *a1, uint64_t a2)
{
  v4 = v2;
  v6 = *v2;
  v7 = v2[1];
  String.hash(into:)();
  v8 = v2 + *(a2 + 20);
  NodeDef.Implementation.Kind.hash(into:)(a1);
  v9 = *(v4 + *(a2 + 24));

  return specialized Set.hash(into:)(a1, v9);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NodeDef.Implementation(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  Hasher.init(_seed:)();
  v5 = *v2;
  v6 = v2[1];
  String.hash(into:)();
  v7 = v2 + *(a2 + 20);
  NodeDef.Implementation.Kind.hash(into:)(v9);
  specialized Set.hash(into:)(v9, *(v4 + *(a2 + 24)));
  return Hasher._finalize()();
}

uint64_t NodeDef.Implementation.Kind.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for NodeDef.Implementation.Kind(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of NodeDef.Implementation.Kind(v2, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    v20 = *v12;
    v21 = *(v12 + 1);
    if (EnumCaseMultiPayload == 2)
    {
      v22 = 2;
    }

    else
    {
      v22 = 3;
    }

    MEMORY[0x266772770](v22);
    String.hash(into:)();
  }

  else if (EnumCaseMultiPayload)
  {
    v24 = *v12;
    v23 = *(v12 + 1);
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSg12functionName_10Foundation3URLV4filetMd, &_sSSSg12functionName_10Foundation3URLV4filetMR);
    (*(v5 + 32))(v8, &v12[*(v25 + 48)], v4);
    MEMORY[0x266772770](1);
    if (v23)
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    lazy protocol witness table accessor for type MaterialXTarget and conformance MaterialXTarget(&lazy protocol witness table cache variable for type URL and conformance URL, 255, MEMORY[0x277CC9260]);
    dispatch thunk of Hashable.hash(into:)();
    return (*(v5 + 8))(v8, v4);
  }

  else
  {
    v14 = *(v12 + 9);
    v26[8] = *(v12 + 8);
    v27[0] = v14;
    *(v27 + 9) = *(v12 + 153);
    v15 = *(v12 + 5);
    v26[4] = *(v12 + 4);
    v26[5] = v15;
    v16 = *(v12 + 7);
    v26[6] = *(v12 + 6);
    v26[7] = v16;
    v17 = *(v12 + 1);
    v26[0] = *v12;
    v26[1] = v17;
    v18 = *(v12 + 3);
    v26[2] = *(v12 + 2);
    v26[3] = v18;
    MEMORY[0x266772770](0);
    UserGraph.hash(into:)(a1);
    return outlined destroy of UserGraph(v26);
  }
}

Swift::Int NodeDef.Implementation.Kind.hashValue.getter()
{
  Hasher.init(_seed:)();
  NodeDef.Implementation.Kind.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance NodeDef.Implementation.Kind()
{
  Hasher.init(_seed:)();
  NodeDef.Implementation.Kind.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NodeDef.Implementation.Kind()
{
  Hasher.init(_seed:)();
  NodeDef.Implementation.Kind.hash(into:)(v1);
  return Hasher._finalize()();
}

void specialized Optional<A>.hash(into:)(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      Hasher._combine(_:)(1u);
      v3 = v2[2];
      v4 = v2[3];
      String.hash(into:)();
      v2 = v2[4];
    }

    while (v2);
  }

  Hasher._combine(_:)(0);
}

uint64_t specialized Set.hash(into:)(__int128 *a1, uint64_t a2)
{
  v3 = a1[3];
  v29 = a1[2];
  v30 = v3;
  v31 = *(a1 + 8);
  v4 = a1[1];
  v27 = *a1;
  v28 = v4;
  Hasher._finalize()();
  if ((a2 & 0xC000000000000001) != 0)
  {

    __CocoaSet.makeIterator()();
    type metadata accessor for MaterialXTarget();
    lazy protocol witness table accessor for type MaterialXTarget and conformance MaterialXTarget(&lazy protocol witness table cache variable for type MaterialXTarget and conformance MaterialXTarget, v5, type metadata accessor for MaterialXTarget);
    result = Set.Iterator.init(_cocoa:)();
    a2 = v32;
    v7 = v33;
    v8 = v34;
    v9 = v35;
    v10 = v36;
  }

  else
  {
    v11 = -1 << *(a2 + 32);
    v7 = a2 + 56;
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

    v10 = v13 & *(a2 + 56);

    v9 = 0;
  }

  v14 = 0;
  v15 = (v8 + 64) >> 6;
  while (a2 < 0)
  {
    v24 = __CocoaSet.Iterator.next()();
    if (!v24)
    {
LABEL_20:
      outlined consume of [String : GeomPropDef].Iterator._Variant();
      return MEMORY[0x266772770](v14);
    }

    v25[0] = v24;
    type metadata accessor for MaterialXTarget();
    swift_dynamicCast();
    v18 = v26;
LABEL_10:
    Hasher.init(_seed:)();
    v19 = v18[2];
    v20 = v18[3];
    String.hash(into:)();
    v21 = v18[4];

    specialized Optional<A>.hash(into:)(v25, v21);

    v22 = Hasher._finalize()();

    v14 ^= v22;
  }

  if (v10)
  {
    v16 = v9;
LABEL_9:
    v17 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v18 = *(*(a2 + 48) + ((v16 << 9) | (8 * v17)));
    v26 = v18;

    goto LABEL_10;
  }

  v23 = v9;
  while (1)
  {
    v16 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v16 >= v15)
    {
      goto LABEL_20;
    }

    v10 = *(v7 + 8 * v16);
    ++v23;
    if (v10)
    {
      v9 = v16;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

Swift::Int specialized Set.hash(into:)(__int128 *a1, uint64_t a2)
{
  v17 = a1[2];
  v18 = a1[3];
  v19 = *(a1 + 8);
  v15 = *a1;
  v16 = a1[1];
  result = Hasher._finalize()();
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  for (i = (v6 + 63) >> 6; v8; v4 ^= result)
  {
    v10 = v5;
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v12 = (*(a2 + 48) + ((v10 << 10) | (16 * v11)));
    v13 = *v12;
    v14 = v12[1];
    Hasher.init(_seed:)();
    MEMORY[0x266772770](v13);
    MEMORY[0x266772770](v14);
    result = Hasher._finalize()();
  }

  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v10 >= i)
    {
      return MEMORY[0x266772770](v4);
    }

    v8 = *(a2 + 56 + 8 * v10);
    ++v5;
    if (v8)
    {
      v5 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

BOOL specialized static MaterialXTarget.== infix(_:_:)(void *a1, void *a2)
{
  v4 = a1[2] == a2[2] && a1[3] == a2[3];
  if (v4 || (v5 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v5 & 1) != 0))
  {
    v7 = a1[4];
    v8 = a2[4];
    result = (v7 | v8) == 0;
    if (v7)
    {
      v9 = v8 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (!v9)
    {

      v10 = specialized static MaterialXTarget.== infix(_:_:)(v7, v8);

      return v10 & 1;
    }
  }

  return result;
}

BOOL specialized static MaterialXAvailability.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  switch(a2)
  {
    case 3:
      return a4 == 3;
    case 2:
      return a4 == 2;
    case 1:
      return a4 == 1;
  }

  if ((a4 - 1) < 3)
  {
    return 0;
  }

  if (a2)
  {
    if (!a4)
    {
      return 0;
    }

    return a1 == a3 && a2 == a4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0;
  }

  else
  {
    return !a4;
  }
}

uint64_t specialized static NodeDef.Implementation.Kind.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v66 = v4;
  v67 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v64 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v65 = &v62 - v9;
  v10 = type metadata accessor for NodeDef.Implementation.Kind(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v16 = (&v62 - v15);
  MEMORY[0x28223BE20](v17);
  v19 = &v62 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = (&v62 - v21);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ShaderGraph7NodeDefV14ImplementationV4KindO_AGtMd, &_s11ShaderGraph7NodeDefV14ImplementationV4KindO_AGtMR);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = &v62 - v25;
  v28 = &v62 + *(v27 + 56) - v25;
  outlined init with copy of NodeDef.Implementation.Kind(a1, &v62 - v25);
  outlined init with copy of NodeDef.Implementation.Kind(a2, v28);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      outlined init with copy of NodeDef.Implementation.Kind(v26, v22);
      v30 = v22[9];
      v68[8] = v22[8];
      v69[0] = v30;
      *(v69 + 9) = *(v22 + 153);
      v31 = v22[5];
      v68[4] = v22[4];
      v68[5] = v31;
      v32 = v22[7];
      v68[6] = v22[6];
      v68[7] = v32;
      v33 = v22[1];
      v68[0] = *v22;
      v68[1] = v33;
      v34 = v22[3];
      v68[2] = v22[2];
      v68[3] = v34;
      if (swift_getEnumCaseMultiPayload())
      {
        outlined destroy of UserGraph(v68);
LABEL_28:
        outlined destroy of (NodeDef.Implementation.Kind, NodeDef.Implementation.Kind)(v26);
LABEL_34:
        v52 = 0;
        return v52 & 1;
      }

      v53 = *(v28 + 9);
      v70[8] = *(v28 + 8);
      v71[0] = v53;
      *(v71 + 9) = *(v28 + 153);
      v54 = *(v28 + 5);
      v70[4] = *(v28 + 4);
      v70[5] = v54;
      v55 = *(v28 + 7);
      v70[6] = *(v28 + 6);
      v70[7] = v55;
      v56 = *(v28 + 1);
      v70[0] = *v28;
      v70[1] = v56;
      v57 = *(v28 + 3);
      v70[2] = *(v28 + 2);
      v70[3] = v57;
      v52 = specialized static UserGraph.== infix(_:_:)(v68, v70);
      outlined destroy of UserGraph(v70);
      outlined destroy of UserGraph(v68);
LABEL_38:
      outlined destroy of NodeDef.Implementation.Kind(v26);
      return v52 & 1;
    }

    outlined init with copy of NodeDef.Implementation.Kind(v26, v19);
    v40 = *v19;
    v41 = *(v19 + 1);
    v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSg12functionName_10Foundation3URLV4filetMd, &_sSSSg12functionName_10Foundation3URLV4filetMR) + 48);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v43 = *(v28 + 1);
      v63 = *v28;
      v44 = *(v67 + 32);
      v45 = &v19[v42];
      v46 = v66;
      v44(v65, v45, v66);
      v47 = &v28[v42];
      v48 = v64;
      v44(v64, v47, v46);
      if (v41)
      {
        if (v43)
        {
          if (v40 != v63 || v41 != v43)
          {
            v50 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v50)
            {
              goto LABEL_37;
            }

            goto LABEL_32;
          }

LABEL_37:
          v60 = v65;
          v52 = static URL.== infix(_:_:)();
          v61 = *(v67 + 8);
          v61(v48, v46);
          v61(v60, v46);
          goto LABEL_38;
        }
      }

      else if (!v43)
      {
        goto LABEL_37;
      }

LABEL_32:
      v58 = *(v67 + 8);
      v58(v48, v46);
      v58(v65, v46);
LABEL_33:
      outlined destroy of NodeDef.Implementation.Kind(v26);
      goto LABEL_34;
    }

    (*(v67 + 8))(&v19[v42], v66);
LABEL_27:

    goto LABEL_28;
  }

  if (EnumCaseMultiPayload == 2)
  {
    outlined init with copy of NodeDef.Implementation.Kind(v26, v16);
    v36 = *v16;
    v35 = v16[1];
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      goto LABEL_27;
    }
  }

  else
  {
    outlined init with copy of NodeDef.Implementation.Kind(v26, v13);
    v36 = *v13;
    v35 = v13[1];
    if (swift_getEnumCaseMultiPayload() != 3)
    {
      goto LABEL_27;
    }
  }

  if (v36 == *v28 && v35 == *(v28 + 1))
  {
    v51 = *(v28 + 1);
  }

  else
  {
    v38 = *(v28 + 1);
    v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v39 & 1) == 0)
    {
      goto LABEL_33;
    }
  }

  outlined destroy of NodeDef.Implementation.Kind(v26);
  v52 = 1;
  return v52 & 1;
}

uint64_t specialized static NodeDef.Implementation.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for NodeDef.Implementation(0);
  if ((specialized static NodeDef.Implementation.Kind.== infix(_:_:)(a1 + *(v5 + 20), a2 + *(v5 + 20)) & 1) == 0)
  {
    return 0;
  }

  v6 = *(v5 + 24);
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);

  return _sSh2eeoiySbShyxG_ABtFZ11ShaderGraph15MaterialXTargetC_Tt1g5(v7, v8);
}

uint64_t specialized static NodeDef.IOSpec.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_21;
  }

  v5 = *(a1 + 16);
  v6 = *(a2 + 16);
  if ((MaterialXDataType.isEqual(to:)() & 1) == 0)
  {
    goto LABEL_21;
  }

  v7 = *(a1 + 32);
  v8 = *(a2 + 32);
  if (v7)
  {
    if (!v8 || (*(a1 + 24) != *(a2 + 24) || v7 != v8) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else if (v8)
  {
    goto LABEL_21;
  }

  v9 = *(a1 + 48);
  v10 = *(a2 + 48);
  if (v9)
  {
    if (v10 && (*(a1 + 40) == *(a2 + 40) && v9 == v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      goto LABEL_19;
    }

LABEL_21:
    v11 = 0;
    return v11 & 1;
  }

  if (v10)
  {
    goto LABEL_21;
  }

LABEL_19:
  v11 = *(a1 + 56) ^ *(a2 + 56) ^ 1;
  return v11 & 1;
}

BOOL specialized static NodeDef.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a1 + 40);
  v7 = *(a2 + 40);
  if (v6)
  {
    if (!v7 || (*(a1 + 32) != *(a2 + 32) || v6 != v7) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v8 = *(a1 + 56);
  v9 = *(a2 + 56);
  if (v8)
  {
    if (!v9 || (*(a1 + 48) != *(a2 + 48) || v8 != v9) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v10 = *(a1 + 72);
  v11 = *(a2 + 72);
  if (v10)
  {
    if (!v11 || (*(a1 + 64) != *(a2 + 64) || v10 != v11) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  v12 = *(a1 + 80);
  v13 = *(a2 + 80);
  if (v12 == 2)
  {
    if (v13 != 2)
    {
      return 0;
    }

LABEL_37:
    if (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(*(a1 + 88), *(a2 + 88)))
    {
      v15 = *(a1 + 104);
      v16 = *(a2 + 104);
      if (v15)
      {
        if (!v16 || (*(a1 + 96) != *(a2 + 96) || v15 != v16) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v16)
      {
        return 0;
      }

      v17 = *(a1 + 120);
      v18 = *(a2 + 120);
      switch(v17)
      {
        case 3:
          if (v18 != 3)
          {
            return 0;
          }

          break;
        case 2:
          if (v18 != 2)
          {
            return 0;
          }

          break;
        case 1:
          if (v18 != 1)
          {
            return 0;
          }

          break;
        default:
          if ((v18 - 1) < 3)
          {
            return 0;
          }

          if (v17)
          {
            if (!v18 || (*(a1 + 112) != *(a2 + 112) || v17 != v18) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              return 0;
            }
          }

          else if (v18)
          {
            return 0;
          }

          break;
      }

      if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ11ShaderGraph7NodeDefV6IOSpecV_Tt1g5(*(a1 + 128), *(a2 + 128)) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ11ShaderGraph7NodeDefV6IOSpecV_Tt1g5(*(a1 + 136), *(a2 + 136)) & 1) == 0)
      {
        return 0;
      }

      v19 = *(a1 + 144);
      v20 = *(a2 + 144);
      if (v19)
      {
        if (!v20)
        {
          return 0;
        }

        v21 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ11ShaderGraph7NodeDefV12AvailabilityV_Tt1g5(v19, v20);

        return (v21 & 1) != 0;
      }

      if (!v20)
      {
        return 1;
      }
    }

    return 0;
  }

  result = 0;
  if (v13 != 2 && ((v13 ^ v12) & 1) == 0)
  {
    goto LABEL_37;
  }

  return result;
}

uint64_t specialized MaterialXAvailability.init(_:message:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    goto LABEL_10;
  }

  if ((a1 != 0x726F707075736E75 || a2 != 0xEB00000000646574) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    if (a1 == 0x7461636572706564 && a2 == 0xEA00000000006465)
    {

      return a3;
    }

    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return a3;
    }

LABEL_10:

    return 0;
  }

  return 0;
}

uint64_t specialized static MaterialXTarget.target(named:)(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for allTargets != -1)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v4 = static MaterialXTarget.allTargets;
    if (!(static MaterialXTarget.allTargets >> 62))
    {
      v5 = *((static MaterialXTarget.allTargets & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v5)
      {
        return 0;
      }

      goto LABEL_4;
    }

    v5 = __CocoaSet.count.getter();
    if (!v5)
    {
      return 0;
    }

LABEL_4:
    v6 = 0;
    while ((v4 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x266772030](v6, v4);
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_17;
      }

LABEL_8:
      v9 = *(v7 + 16) == a1 && *(v7 + 24) == a2;
      if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        return v7;
      }

      ++v6;
      if (v8 == v5)
      {
        return 0;
      }
    }

    if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_18;
    }

    v7 = *(v4 + 8 * v6 + 32);

    v8 = v6 + 1;
    if (!__OFADD__(v6, 1))
    {
      goto LABEL_8;
    }

LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    swift_once();
  }
}

uint64_t outlined init with take of NodeDef.Implementation.Kind(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NodeDef.Implementation.Kind(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for NodeDef.Implementation(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with copy of NodeDef.Implementation.Kind(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NodeDef.Implementation.Kind(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t lazy protocol witness table accessor for type MaterialXTarget and conformance MaterialXTarget(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type MaterialXAvailability and conformance MaterialXAvailability()
{
  result = lazy protocol witness table cache variable for type MaterialXAvailability and conformance MaterialXAvailability;
  if (!lazy protocol witness table cache variable for type MaterialXAvailability and conformance MaterialXAvailability)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MaterialXAvailability and conformance MaterialXAvailability);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NodeDef.IOSpec and conformance NodeDef.IOSpec()
{
  result = lazy protocol witness table cache variable for type NodeDef.IOSpec and conformance NodeDef.IOSpec;
  if (!lazy protocol witness table cache variable for type NodeDef.IOSpec and conformance NodeDef.IOSpec)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NodeDef.IOSpec and conformance NodeDef.IOSpec);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NodeDef and conformance NodeDef()
{
  result = lazy protocol witness table cache variable for type NodeDef and conformance NodeDef;
  if (!lazy protocol witness table cache variable for type NodeDef and conformance NodeDef)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NodeDef and conformance NodeDef);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_11ShaderGraph21MaterialXAvailabilityO(uint64_t a1)
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

uint64_t getEnumTagSinglePayload for MaterialXAvailability(uint64_t a1, unsigned int a2)
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

  if ((v3 + 1) < 2)
  {
    LODWORD(v3) = 0;
  }

  if (v3 >= 4)
  {
    return (v3 - 3);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MaterialXAvailability(uint64_t result, unsigned int a2, unsigned int a3)
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

void *destructiveInjectEnumTag for MaterialXAvailability(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    result[1] = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    result[1] = a2;
  }

  return result;
}

__n128 __swift_memcpy152_8(uint64_t a1, uint64_t a2)
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
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for NodeDef(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
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

uint64_t storeEnumTagSinglePayload for NodeDef(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 152) = 1;
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

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_265E55DEC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for NodeDef.Implementation.Kind(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_265E55EAC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for NodeDef.Implementation.Kind(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for NodeDef.Implementation()
{
  type metadata accessor for NodeDef.Implementation.Kind(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Set<MaterialXTarget>();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for Set<MaterialXTarget>()
{
  if (!lazy cache variable for type metadata for Set<MaterialXTarget>)
  {
    type metadata accessor for MaterialXTarget();
    lazy protocol witness table accessor for type MaterialXTarget and conformance MaterialXTarget(&lazy protocol witness table cache variable for type MaterialXTarget and conformance MaterialXTarget, v0, type metadata accessor for MaterialXTarget);
    v1 = type metadata accessor for Set();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Set<MaterialXTarget>);
    }
  }
}

void type metadata completion function for NodeDef.Implementation.Kind()
{
  type metadata accessor for (functionName: String?, file: URL)();
  if (v0 <= 0x3F)
  {
    type metadata accessor for (functionName: String)();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void type metadata accessor for (functionName: String?, file: URL)()
{
  if (!lazy cache variable for type metadata for (functionName: String?, file: URL))
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSSSgMd, &_sSSSgMR);
    type metadata accessor for URL();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (functionName: String?, file: URL));
    }
  }
}

uint64_t type metadata accessor for (functionName: String)()
{
  result = lazy cache variable for type metadata for (functionName: String);
  if (!lazy cache variable for type metadata for (functionName: String))
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &lazy cache variable for type metadata for (functionName: String));
  }

  return result;
}

uint64_t outlined destroy of (NodeDef.Implementation.Kind, NodeDef.Implementation.Kind)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ShaderGraph7NodeDefV14ImplementationV4KindO_AGtMd, &_s11ShaderGraph7NodeDefV14ImplementationV4KindO_AGtMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined destroy of NodeDef.Implementation.Kind(uint64_t a1)
{
  v2 = type metadata accessor for NodeDef.Implementation.Kind(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id SGError.__allocating_init(_:)(void *a1)
{
  v25 = a1;
  v2 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    v3 = SGError.__allocating_init(_:)(v23[0], v23[1], v24);

    v4 = v25;
    goto LABEL_14;
  }

  v23[0] = a1;
  v5 = a1;
  if (swift_dynamicCast())
  {
    v6 = SGError.__allocating_init(_:)(v25);
LABEL_7:
    v3 = v6;

    v4 = v23[0];
    goto LABEL_14;
  }

  v23[0] = a1;
  v7 = a1;
  if (swift_dynamicCast())
  {
    v6 = SGError.__allocating_init(_:)(v25);
    goto LABEL_7;
  }

  v23[0] = a1;
  v8 = a1;
  v9 = String.init<A>(describing:)();
  v11 = v10;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, logger);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v23[0] = v16;
    *v15 = 136315138;
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, v23);

    *(v15 + 4) = v17;
    _os_log_impl(&dword_265D7D000, v13, v14, "ShaderGraph threw an unwrapped error: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x266773120](v16, -1, -1);
    MEMORY[0x266773120](v15, -1, -1);
  }

  else
  {
  }

  lazy protocol witness table accessor for type APIError and conformance APIError();
  v18 = swift_allocError();
  *v19 = xmmword_265F23200;
  *(v19 + 16) = 24;
  v20 = a1;
  v21 = specialized NestedError.init(_:_:)(v18, a1);
  v3 = SGError.__allocating_init(_:)(v21);
  v4 = a1;
LABEL_14:

  return v3;
}

{
  v2 = v1;
  v3 = a1;
  v4 = [v3 domain];
  if (!v4)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = MEMORY[0x266771450](v5);
  }

  v6 = objc_allocWithZone(v2);
  v7 = [v3 code];
  v8 = [v3 userInfo];

  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v10 = [v6 initWithDomain:v4 code:v7 userInfo:isa];

  return v10;
}

id SGError.__allocating_init(_:)(void *a1, void *a2, char a3)
{
  v4 = v3;
  v8 = objc_allocWithZone(v4);
  v9 = MEMORY[0x266771450](0xD000000000000015, 0x8000000265F2D900);
  v10 = APIError.nsErrorCode.getter(a1, a2, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_265F1F670;
  v12 = *MEMORY[0x277CCA450];
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v13;
  v14 = APIError.description.getter(a1, a2, a3);
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v14;
  *(inited + 56) = v15;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of (String, Any)(inited + 32);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v17 = [v8 initWithDomain:v9 code:v10 userInfo:isa];
  outlined consume of APIError(a1, a2, a3);

  return v17;
}

id SGError.__allocating_init(_:)(unint64_t a1)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    v3 = *((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
  }

  else
  {
    v3 = a1;
  }

  v60 = v3;
  v4 = v3;
  v5 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v6 = swift_dynamicCast();
  v7 = MEMORY[0x277D84F90];
  v53 = v1;
  v54 = v3;
  if (v6)
  {
    v55 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 0, 0);
    outlined copy of NestedError(a1);
    swift_beginAccess();
    v8 = a1;
    do
    {
      if ((v8 & 0x8000000000000000) != 0)
      {
        v9 = *((v8 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
        v10 = *((v8 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
        outlined copy of NestedError(v9);
        outlined consume of NestedError?(v8);
        v8 = v9;
      }

      else
      {
        v8 = 0xF000000000000007;
      }

      v11 = String.init<A>(describing:)();
      v13 = v12;
      v15 = *(v55 + 16);
      v14 = *(v55 + 24);
      if (v15 >= v14 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1);
      }

      *(v55 + 16) = v15 + 1;
      v16 = v55 + 16 * v15;
      *(v16 + 32) = v11;
      *(v16 + 40) = v13;
    }

    while ((~v8 & 0xF000000000000007) != 0);
    v28 = APIError.nsErrorCode.getter(v56, v58, v59);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v29 = BidirectionalCollection<>.joined(separator:)();
    v31 = v30;

    outlined consume of APIError(v56, v58, v59);
  }

  else
  {

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 0, 0);
    v17 = v7;
    outlined copy of NestedError(a1);
    swift_beginAccess();
    v18 = a1;
    do
    {
      if ((v18 & 0x8000000000000000) != 0)
      {
        v19 = *((v18 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
        v20 = *((v18 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
        outlined copy of NestedError(v19);
        outlined consume of NestedError?(v18);
        v18 = v19;
      }

      else
      {
        v18 = 0xF000000000000007;
      }

      v21 = String.init<A>(describing:)();
      v61 = v17;
      v24 = *(v17 + 16);
      v23 = *(v17 + 24);
      if (v24 >= v23 >> 1)
      {
        v26 = v21;
        v27 = v22;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1);
        v22 = v27;
        v21 = v26;
        v17 = v61;
      }

      *(v17 + 16) = v24 + 1;
      v25 = v17 + 16 * v24;
      *(v25 + 32) = v21;
      *(v25 + 40) = v22;
    }

    while ((~v18 & 0xF000000000000007) != 0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v32 = BidirectionalCollection<>.joined(separator:)();
    v34 = v33;

    MEMORY[0x266771550](v32, v34);

    MEMORY[0x266771550](41, 0xE100000000000000);
    MEMORY[0x266771550](10272, 0xE200000000000000);

    v29 = 0xD000000000000029;
    v31 = 0x8000000265F31CC0;
    v28 = -1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_265F21D90;
  v36 = *MEMORY[0x277CCA450];
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v37;
  *(inited + 48) = v29;
  *(inited + 56) = v31;
  v38 = *MEMORY[0x277CCA578];
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v39;
  outlined copy of NestedError(a1);
  specialized _copySequenceToContiguousArray<A>(_:)(a1, 1);
  v41 = v40;
  outlined consume of NestedError(a1);
  v42 = *(v41 + 16);
  if (v42)
  {
    v57 = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v43 = 32;
    do
    {
      v44 = *(v41 + v43);
      v45 = v44;
      _convertErrorToNSError(_:)();

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v46 = *(v57 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v43 += 8;
      --v42;
    }

    while (v42);

    v47 = v57;
  }

  else
  {

    v47 = MEMORY[0x277D84F90];
  }

  *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo7NSErrorCGMd, &_sSaySo7NSErrorCGMR);
  *(inited + 96) = v47;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  swift_arrayDestroy();
  v48 = objc_allocWithZone(v53);
  v49 = MEMORY[0x266771450](0xD000000000000015, 0x8000000265F2D900);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v51 = [v48 initWithDomain:v49 code:v28 userInfo:isa];

  outlined consume of NestedError(a1);
  return v51;
}

uint64_t APIError.nsErrorCode.getter(uint64_t a1, uint64_t a2, char a3)
{
  result = 1;
  switch(a3)
  {
    case 1:
      result = 2;
      break;
    case 2:
      result = 3;
      break;
    case 3:
      result = 4;
      break;
    case 4:
      result = 5;
      break;
    case 5:
      result = 6;
      break;
    case 6:
      result = 7;
      break;
    case 7:
      result = 8;
      break;
    case 8:
      result = 9;
      break;
    case 9:
      result = 10;
      break;
    case 10:
      result = 13;
      break;
    case 11:
      result = 15;
      break;
    case 12:
      result = 18;
      break;
    case 13:
      result = 19;
      break;
    case 14:
      result = 20;
      break;
    case 15:
      result = 21;
      break;
    case 16:
      result = 22;
      break;
    case 17:
      result = 23;
      break;
    case 18:
      result = 25;
      break;
    case 19:
      result = 27;
      break;
    case 20:
      result = 28;
      break;
    case 21:
      result = 30;
      break;
    case 22:
      result = 31;
      break;
    case 23:
      result = 32;
      break;
    case 24:
      result = qword_265F24FA0[a1];
      break;
    default:
      return result;
  }

  return result;
}

unint64_t APIError.description.getter(unint64_t a1, unint64_t a2, char a3)
{
  switch(a3)
  {
    case 1:
      _StringGuts.grow(_:)(30);

      v5 = 0xD00000000000001CLL;
      goto LABEL_31;
    case 2:
    case 3:
    case 4:
    case 22:
      _StringGuts.grow(_:)(38);

      v5 = 0xD000000000000024;
      goto LABEL_31;
    case 5:
      _StringGuts.grow(_:)(40);

      v5 = 0xD000000000000026;
      goto LABEL_31;
    case 6:
      _StringGuts.grow(_:)(33);

      v5 = 0xD00000000000001FLL;
      goto LABEL_31;
    case 7:
      _StringGuts.grow(_:)(32);

      v5 = 0xD00000000000001ELL;
      goto LABEL_31;
    case 8:
      _StringGuts.grow(_:)(24);

      v18 = 0xD000000000000016;
      v9 = MEMORY[0x2667717B0](a1, MEMORY[0x277D837D0]);
      goto LABEL_26;
    case 9:
    case 10:
      _StringGuts.grow(_:)(28);

      v5 = 0xD00000000000001ALL;
      goto LABEL_31;
    case 11:
      _StringGuts.grow(_:)(21);

      v5 = 0xD000000000000013;
      goto LABEL_31;
    case 12:
      v18 = 0;
      _StringGuts.grow(_:)(66);
      MEMORY[0x266771550](0xD000000000000032, 0x8000000265F31EB0);
      v8 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266771550](v8);

      MEMORY[0x266771550](0x6365707865202C27, 0xEC00000020646574);
      v9 = dispatch thunk of CustomStringConvertible.description.getter();
LABEL_26:
      MEMORY[0x266771550](v9);

      return v18;
    case 13:
      v18 = 0;
      _StringGuts.grow(_:)(23);
      MEMORY[0x266771550](0xD000000000000014, 0x8000000265F31E90);
      type metadata accessor for CGColorRef(0);
      _print_unlocked<A, B>(_:_:)();
      goto LABEL_21;
    case 14:
      _StringGuts.grow(_:)(21);

      v18 = 0xD000000000000012;
      MEMORY[0x266771550](a1, a2);
LABEL_21:
      v6 = 39;
      v7 = 0xE100000000000000;
      goto LABEL_33;
    case 15:
      _StringGuts.grow(_:)(26);

      v18 = 0xD000000000000010;
      MEMORY[0x266771550](a1, a2);
      v6 = 0x64696C61766E6920;
      v7 = 0xE800000000000000;
      goto LABEL_33;
    case 16:
      _StringGuts.grow(_:)(28);

      v18 = 0xD000000000000010;
      MEMORY[0x266771550](a1, a2);
      v6 = 0x706D652073617720;
      v7 = 0xEA00000000007974;
      goto LABEL_33;
    case 17:
      _StringGuts.grow(_:)(35);

      v18 = 0xD000000000000010;
      MEMORY[0x266771550](a1, a2);
      v6 = 0xD000000000000011;
      v7 = 0x8000000265F31E50;
      goto LABEL_33;
    case 18:
      _StringGuts.grow(_:)(49);

      v14 = 11;
      goto LABEL_30;
    case 19:
      _StringGuts.grow(_:)(50);

      v5 = 0xD000000000000030;
      goto LABEL_31;
    case 20:
      _StringGuts.grow(_:)(17);

      v13 = 0x2065727574786554;
      goto LABEL_19;
    case 21:
      _StringGuts.grow(_:)(17);

      v13 = 0x2064696C61766E49;
LABEL_19:
      v18 = v13;
      goto LABEL_32;
    case 23:
      _StringGuts.grow(_:)(47);

      v14 = 9;
LABEL_30:
      v5 = v14 | 0xD000000000000024;
      goto LABEL_31;
    case 24:
      if (a1 <= 3)
      {
        if (a1 ^ 2 | a2)
        {
          v16 = 0xD00000000000003BLL;
        }

        else
        {
          v16 = 0xD00000000000001BLL;
        }

        v17 = 0xD00000000000001CLL;
        if (!(a1 | a2))
        {
          v17 = 0xD000000000000025;
        }

        if (a1 <= 1)
        {
          return v17;
        }

        else
        {
          return v16;
        }
      }

      else
      {
        if (a1 <= 5)
        {
          v10 = a1 ^ 4 | a2;
          v11 = 0xD00000000000001ALL;
          v12 = 0xD00000000000001DLL;
        }

        else
        {
          v10 = a1 ^ 6 | a2;
          v11 = 0xD000000000000017;
          v12 = 0xD000000000000029;
          if (!(a1 ^ 7 | a2))
          {
            v12 = 0xD00000000000001CLL;
          }
        }

        if (v10)
        {
          return v12;
        }

        else
        {
          return v11;
        }
      }

    default:
      _StringGuts.grow(_:)(35);

      v5 = 0xD000000000000021;
LABEL_31:
      v18 = v5;
LABEL_32:
      v6 = a1;
      v7 = a2;
LABEL_33:
      MEMORY[0x266771550](v6, v7);
      return v18;
  }
}

id SGError.__allocating_init(domain:code:userInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = MEMORY[0x266771450]();

  if (a4)
  {
    v9.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v9.super.isa = 0;
  }

  v10 = [objc_allocWithZone(v5) initWithDomain:v8 code:a3 userInfo:v9.super.isa];

  return v10;
}

id SGError.init(domain:code:userInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v10 = MEMORY[0x266771450](a1, a2);

  if (a4)
  {
    v11.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v11.super.isa = 0;
  }

  v14.receiver = v4;
  v14.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v14, sel_initWithDomain_code_userInfo_, v10, a3, v11.super.isa);

  return v12;
}

id SGError.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id SGError.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id SGError.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t SGInternalError.details.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

__n128 SGInternalError.init(_:details:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v4;
  result = *(a1 + 32);
  v6 = *(a1 + 48);
  *(a4 + 32) = result;
  *(a4 + 48) = v6;
  *(a4 + 64) = a2;
  *(a4 + 72) = a3;
  return result;
}

unint64_t SGInternalError.ErrorType.errorDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v6 = v0[7];
  v7 = v5 >> 61;
  if ((v5 >> 61) <= 1)
  {
    if (v7)
    {
      v17 = *v0;
      v18 = v0[1];
      v19 = v0[2];
      v20 = v0[3];
      v21 = v0[5];
      v22 = v0[6];
      v23 = v0[7];
      _StringGuts.grow(_:)(27);

      v13 = MetalFunctionGraphError.description.getter();
      MEMORY[0x266771550](v13);

      return 0xD000000000000019;
    }

    else
    {
      v10 = v0[1];
    }
  }

  else
  {
    if (v7 == 2)
    {
      _StringGuts.grow(_:)(28);

      v16 = 0xD000000000000014;
      MEMORY[0x266771550](v1, v2);
      MEMORY[0x266771550](544175136, 0xE400000000000000);
      MEMORY[0x266771550](v4, v3);
      return v16;
    }

    if (v7 == 3)
    {
      _StringGuts.grow(_:)(38);

      v16 = 0xD000000000000017;
      v8 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266771550](v8);

      MEMORY[0x266771550](0x746365707865202CLL, 0xEB00000000206465);
      v9 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266771550](v9);

      return v16;
    }

    v11 = v4 | v2;
    v12 = v0[5] | v0[6];
    if (v5 != 0x8000000000000000 || v11 | v1 | v3 | v12 | v6)
    {
      v14 = v11 | v3 | v12;
      if (v6 || v5 != 0x8000000000000000 || v1 != 1 || v14)
      {
        if (v6 || v5 != 0x8000000000000000 || v1 != 2 || v14)
        {
          if (v6 || v5 != 0x8000000000000000 || v1 != 3 || v14)
          {
            if (v6 || v5 != 0x8000000000000000 || v1 != 4 || v14)
            {
              if (v6 || v5 != 0x8000000000000000 || v1 != 5 || v14)
              {
                return 0xD00000000000001DLL;
              }

              else
              {
                return 0xD000000000000011;
              }
            }

            else
            {
              return 0xD00000000000001ALL;
            }
          }

          else
          {
            return 0xD000000000000010;
          }
        }

        else
        {
          return 0xD000000000000019;
        }
      }

      else
      {
        return 0xD00000000000001BLL;
      }
    }

    else
    {
      return 0xD000000000000012;
    }
  }

  return v1;
}

uint64_t specialized _copySequenceToContiguousArray<A>(_:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  if (!a3)
  {
    v6 = MEMORY[0x277D84F90];
    v10 = (MEMORY[0x277D84F90] + 32);
    if (a2 <= 0)
    {
      v11 = 0;
      v9 = 0;
      v12 = 0;
LABEL_25:
      while (v9)
      {
LABEL_26:
        v17 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
        v18 = v17 | (v12 << 6);
        if (v11)
        {
LABEL_27:
          v19 = __OFSUB__(v11--, 1);
          if (v19)
          {
            goto LABEL_57;
          }
        }

        else
        {
LABEL_35:
          v22 = v6[3];
          if (((v22 >> 1) + 0x4000000000000000) < 0)
          {
            goto LABEL_58;
          }

          v23 = v22 & 0xFFFFFFFFFFFFFFFELL;
          if (v23 <= 1)
          {
            v24 = 1;
          }

          else
          {
            v24 = v23;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
          v25 = swift_allocObject();
          v26 = _swift_stdlib_malloc_size(v25);
          v27 = v26 - 32;
          if (v26 < 32)
          {
            v27 = v26 - 25;
          }

          v28 = v27 >> 3;
          v25[2] = v24;
          v25[3] = 2 * (v27 >> 3);
          v29 = (v25 + 4);
          v30 = v6[3] >> 1;
          if (v6[2])
          {
            v31 = v6 + 4;
            if (v25 != v6 || v29 >= v31 + 8 * v30)
            {
              memmove(v25 + 4, v31, 8 * v30);
            }

            v6[2] = 0;
          }

          v10 = (v29 + 8 * v30);
          v32 = (v28 & 0x7FFFFFFFFFFFFFFFLL) - v30;

          v6 = v25;
          v19 = __OFSUB__(v32, 1);
          v11 = v32 - 1;
          if (v19)
          {
            goto LABEL_57;
          }
        }

        *v10++ = v18;
      }
    }

    else
    {
      v11 = 0;
      v12 = 0;
      v9 = *result;
      if (*result)
      {
        goto LABEL_26;
      }
    }

    v20 = v12;
    while (1)
    {
      v12 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v12 >= a2)
      {
        v33 = v6[3];
        if (v33 >= 2)
        {
          v34 = v33 >> 1;
          v19 = __OFSUB__(v34, v11);
          v35 = v34 - v11;
          if (v19)
          {
            goto LABEL_60;
          }

          v6[2] = v35;
        }

        return v6;
      }

      v21 = v4[v12];
      ++v20;
      if (v21)
      {
        v9 = (v21 - 1) & v21;
        v18 = __clz(__rbit64(v21)) | (v12 << 6);
        if (v11)
        {
          goto LABEL_27;
        }

        goto LABEL_35;
      }
    }

LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  if (a3 <= 0)
  {
    v6 = MEMORY[0x277D84F90];
    v8 = *(MEMORY[0x277D84F90] + 24);
    if (a2 > 0)
    {
LABEL_6:
      if (a3 < 0)
      {
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

      v9 = *v4;
      goto LABEL_14;
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
    v6 = swift_allocObject();
    result = _swift_stdlib_malloc_size(v6);
    v7 = result - 32;
    if (result < 32)
    {
      v7 = result - 25;
    }

    v8 = 2 * (v7 >> 3);
    v6[2] = a3;
    v6[3] = v8;
    if (a2 > 0)
    {
      goto LABEL_6;
    }
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = 0;
LABEL_14:
    v13 = 0;
    v12 = 0;
    v10 = v6 + 4;
    v11 = (v8 >> 1) - a3;
    while (v13 != a3)
    {
      if (!v9)
      {
        v15 = v12;
        while (1)
        {
          v12 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            break;
          }

          if (v12 >= a2)
          {
            goto LABEL_54;
          }

          v16 = v4[v12];
          ++v15;
          if (v16)
          {
            v14 = __clz(__rbit64(v16));
            v9 = (v16 - 1) & v16;
            goto LABEL_16;
          }
        }

        __break(1u);
LABEL_54:
        __break(1u);
        goto LABEL_55;
      }

      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_16:
      ++v13;
      *v10++ = v14 | (v12 << 6);
      if (v13 == a3)
      {
        goto LABEL_25;
      }
    }

    goto LABEL_56;
  }

LABEL_61:
  __break(1u);
  return result;
}

uint64_t specialized _copySequenceToContiguousArray<A>(_:)(unint64_t a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = vcnt_s8(a1);
    v2.i16[0] = vaddlv_u8(v2);
    v3 = v2.u32[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
    v4 = swift_allocObject();
    result = _swift_stdlib_malloc_size(v4);
    v6 = result - 32;
    if (result < 32)
    {
      v6 = result - 25;
    }

    v7 = v6 >> 3;
    v4[2] = v3;
    v4[3] = 2 * v7;
    v8 = v4 + 4;
    v9 = (v7 & 0x7FFFFFFFFFFFFFFFLL) - v3;
    v10 = v7 | 0x8000000000000000;
    do
    {
      if (!v1)
      {
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      if (!v10)
      {
        goto LABEL_31;
      }

      v11 = (v1 - 1) & v1;
      *v8++ = __clz(__rbit64(v1));
      --v10;
      v1 = v11;
      --v3;
    }

    while (v3);
    if (!v11)
    {
      goto LABEL_26;
    }

    while (1)
    {
      if (!v9)
      {
        v12 = v4[3];
        if (((v12 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_33;
        }

        v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
        if (v13 <= 1)
        {
          v14 = 1;
        }

        else
        {
          v14 = v13;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
        v15 = swift_allocObject();
        v16 = _swift_stdlib_malloc_size(v15);
        v17 = v16 - 32;
        if (v16 < 32)
        {
          v17 = v16 - 25;
        }

        v18 = v17 >> 3;
        v15[2] = v14;
        v15[3] = 2 * (v17 >> 3);
        v19 = (v15 + 4);
        v20 = v4[3] >> 1;
        if (v4[2])
        {
          v21 = v4 + 4;
          if (v15 != v4 || v19 >= v21 + 8 * v20)
          {
            memmove(v15 + 4, v21, 8 * v20);
          }

          v4[2] = 0;
        }

        v8 = (v19 + 8 * v20);
        v9 = (v18 & 0x7FFFFFFFFFFFFFFFLL) - v20;

        v4 = v15;
      }

      v22 = __OFSUB__(v9--, 1);
      if (v22)
      {
        break;
      }

      *v8++ = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      if (!v11)
      {
        goto LABEL_26;
      }
    }

LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v4 = MEMORY[0x277D84F90];
  v23 = *(MEMORY[0x277D84F90] + 24);

  v9 = v23 >> 1;
LABEL_26:
  v24 = v4[3];
  if (v24 < 2)
  {
    return v4;
  }

  v25 = v24 >> 1;
  v22 = __OFSUB__(v25, v9);
  v26 = v25 - v9;
  if (!v22)
  {
    v4[2] = v26;
    return v4;
  }

LABEL_34:
  __break(1u);
  return result;
}

void specialized _copySequenceToContiguousArray<A>(_:)(unint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = (v2 + 16);

  outlined copy of NestedError(a1);
  swift_beginAccess();
  v4 = 0;
  v5 = MEMORY[0x277D84F90];
  v6 = (MEMORY[0x277D84F90] + 32);
  do
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      v8 = *((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
      v7 = *((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
      *v3 = v7;
      v9 = v8;
      outlined copy of NestedError(v7);
      outlined consume of NestedError?(a1);
      a1 = v8;
      if (v4)
      {
        a1 = v8;
        goto LABEL_18;
      }
    }

    else
    {
      v7 = 0xF000000000000007;
      *v3 = 0xF000000000000007;
      if (v4)
      {
        goto LABEL_18;
      }
    }

    v10 = v5[3];
    if (((v10 >> 1) + 0x4000000000000000) < 0)
    {
      goto LABEL_25;
    }

    v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
    if (v11 <= 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = v11;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5Error_pGMd, &_ss23_ContiguousArrayStorageCys5Error_pGMR);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    v15 = v14 - 32;
    if (v14 < 32)
    {
      v15 = v14 - 25;
    }

    v16 = v15 >> 3;
    v13[2] = v12;
    v13[3] = 2 * (v15 >> 3);
    v17 = (v13 + 4);
    v18 = v5[3] >> 1;
    if (v5[2])
    {
      v19 = v5 + 4;
      if (v13 != v5 || v17 >= v19 + 8 * v18)
      {
        memmove(v13 + 4, v19, 8 * v18);
      }

      v5[2] = 0;
    }

    v6 = (v17 + 8 * v18);
    v4 = (v16 & 0x7FFFFFFFFFFFFFFFLL) - v18;

    v5 = v13;
LABEL_18:
    v20 = __OFSUB__(v4--, 1);
    if (v20)
    {
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    *v6++ = a1;
    a1 = v7;
  }

  while ((~v7 & 0xF000000000000007) != 0);

  v21 = v5[3];
  if (v21 < 2)
  {
    return;
  }

  v22 = v21 >> 1;
  v20 = __OFSUB__(v22, v4);
  v23 = v22 - v4;
  if (!v20)
  {
    v5[2] = v23;
    return;
  }

LABEL_26:
  __break(1u);
}

void specialized _copySequenceToContiguousArray<A>(_:)(void *a1)
{
  v1 = *a1;
  v2 = a1[2];
  v41 = a1[1];
  v42 = v1;
  v3 = a1[4];
  v39 = a1[3];
  v40 = v2;
  v37 = a1[5];
  v38 = v3;
  v4 = *(a1 + 1);
  v27 = *a1;
  v28 = v4;
  v29 = *(a1 + 2);
  outlined init with copy of [Input](&v42, &v30, &_s11ShaderGraph10_HashTableV7StorageCSgMd, &_s11ShaderGraph10_HashTableV7StorageCSgMR);
  outlined init with copy of [Input](&v41, &v30, &_ss15ContiguousArrayVy11ShaderGraph0cD4NodeV2IDVGMd, &_ss15ContiguousArrayVy11ShaderGraph0cD4NodeV2IDVGMR);
  outlined init with copy of [Input](&v40, &v30, &_ss15ContiguousArrayVy11ShaderGraph04UserD0V8AdjacentVGMd, &_ss15ContiguousArrayVy11ShaderGraph04UserD0V8AdjacentVGMR);
  outlined init with copy of [Input](&v39, &v30, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
  outlined init with copy of [Input](&v38, &v30, &_sShy11ShaderGraph5InputVGMd, &_sShy11ShaderGraph5InputVGMR);
  outlined init with copy of [Input](&v37, &v30, &_sSay11ShaderGraph0aB4NodeVGMd, &_sSay11ShaderGraph0aB4NodeVGMR);
  UserGraph.BreathFirstEdgeIterator.next()(&v30);
  v24 = v34;
  v25 = v35;
  v26 = v36;
  v20 = v30;
  v21 = v31;
  v22 = v32;
  v23 = v33;
  v5 = MEMORY[0x277D84F90];
  v6 = 0;
  if (*(&v30 + 1))
  {
    v7 = (MEMORY[0x277D84F90] + 32);
    while (1)
    {
      if (!v6)
      {
        v8 = v5[3];
        if (((v8 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_24;
        }

        v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
        if (v9 <= 1)
        {
          v10 = 1;
        }

        else
        {
          v10 = v9;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph4EdgeVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph4EdgeVGMR);
        v11 = swift_allocObject();
        v12 = (_swift_stdlib_malloc_size(v11) - 32) / 112;
        v11[2] = v10;
        v11[3] = 2 * v12;
        v13 = (v11 + 4);
        v14 = v5[3] >> 1;
        if (v5[2])
        {
          if (v11 != v5 || v13 >= &v5[14 * v14 + 4])
          {
            memmove(v11 + 4, v5 + 4, 112 * v14);
          }

          v5[2] = 0;
        }

        v7 = (v13 + 112 * v14);
        v6 = (v12 & 0x7FFFFFFFFFFFFFFFLL) - v14;

        v5 = v11;
      }

      v16 = __OFSUB__(v6--, 1);
      if (v16)
      {
        break;
      }

      memmove(v7, &v20, 0x70uLL);
      v7 += 112;
      UserGraph.BreathFirstEdgeIterator.next()(&v30);
      v24 = v34;
      v25 = v35;
      v26 = v36;
      v20 = v30;
      v21 = v31;
      v22 = v32;
      v23 = v33;
      if (!*(&v30 + 1))
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_19:

  v17 = v5[3];
  if (v17 >= 2)
  {
    v18 = v17 >> 1;
    v16 = __OFSUB__(v18, v6);
    v19 = v18 - v6;
    if (v16)
    {
LABEL_25:
      __break(1u);
      return;
    }

    v5[2] = v19;
  }
}

{
  v1 = *a1;
  v2 = a1[2];
  v40 = a1[1];
  v41[0] = v1;
  v3 = a1[4];
  v38 = a1[3];
  v39 = v2;
  v37 = v3;
  v4 = *(a1 + 1);
  v27 = *a1;
  v28 = v4;
  v29 = v3;
  outlined init with copy of [Input](v41, &v30, &_s11ShaderGraph10_HashTableV7StorageCSgMd, &_s11ShaderGraph10_HashTableV7StorageCSgMR);
  outlined init with copy of [Input](&v40, &v30, &_ss15ContiguousArrayVy11ShaderGraph0cD4NodeV2IDVGMd, &_ss15ContiguousArrayVy11ShaderGraph0cD4NodeV2IDVGMR);
  outlined init with copy of [Input](&v39, &v30, &_ss15ContiguousArrayVy11ShaderGraph04UserD0V8AdjacentVGMd, &_ss15ContiguousArrayVy11ShaderGraph04UserD0V8AdjacentVGMR);
  outlined init with copy of [Input](&v38, &v30, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
  outlined init with copy of [Input](&v37, &v30, &_sShy11ShaderGraph5InputVGMd, &_sShy11ShaderGraph5InputVGMR);
  UserGraph.DepthFirstEdgeIterator.next()(&v30);
  v24 = v34;
  v25 = v35;
  v26 = v36;
  v20 = v30;
  v21 = v31;
  v22 = v32;
  v23 = v33;
  v5 = MEMORY[0x277D84F90];
  v6 = 0;
  if (*(&v30 + 1))
  {
    v7 = (MEMORY[0x277D84F90] + 32);
    while (1)
    {
      if (!v6)
      {
        v8 = v5[3];
        if (((v8 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_24;
        }

        v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
        if (v9 <= 1)
        {
          v10 = 1;
        }

        else
        {
          v10 = v9;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph4EdgeVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph4EdgeVGMR);
        v11 = swift_allocObject();
        v12 = (_swift_stdlib_malloc_size(v11) - 32) / 112;
        v11[2] = v10;
        v11[3] = 2 * v12;
        v13 = (v11 + 4);
        v14 = v5[3] >> 1;
        if (v5[2])
        {
          if (v11 != v5 || v13 >= &v5[14 * v14 + 4])
          {
            memmove(v11 + 4, v5 + 4, 112 * v14);
          }

          v5[2] = 0;
        }

        v7 = (v13 + 112 * v14);
        v6 = (v12 & 0x7FFFFFFFFFFFFFFFLL) - v14;

        v5 = v11;
      }

      v16 = __OFSUB__(v6--, 1);
      if (v16)
      {
        break;
      }

      memmove(v7, &v20, 0x70uLL);
      v7 += 112;
      UserGraph.DepthFirstEdgeIterator.next()(&v30);
      v24 = v34;
      v25 = v35;
      v26 = v36;
      v20 = v30;
      v21 = v31;
      v22 = v32;
      v23 = v33;
      if (!*(&v30 + 1))
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_19:

  v17 = v5[3];
  if (v17 >= 2)
  {
    v18 = v17 >> 1;
    v16 = __OFSUB__(v18, v6);
    v19 = v18 - v6;
    if (v16)
    {
LABEL_25:
      __break(1u);
      return;
    }

    v5[2] = v19;
  }
}

void specialized _copySequenceToContiguousArray<A>(_:)(unint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  v5 = (v4 + 16);

  outlined copy of NestedError(a1);
  swift_beginAccess();
  if (a2 >= 1)
  {
    v6 = MEMORY[0x277D84F90];
    while ((~a1 & 0xF000000000000007) != 0)
    {
      if ((a1 & 0x8000000000000000) != 0)
      {
        v7 = *((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
        *v5 = v7;
        outlined copy of NestedError(v7);
      }

      else
      {
        v7 = 0xF000000000000007;
        *v5 = 0xF000000000000007;
      }

      outlined consume of NestedError?(a1);
      a1 = v7;
      if (!--a2)
      {
        goto LABEL_9;
      }
    }

    goto LABEL_10;
  }

  v7 = a1;
LABEL_9:
  v6 = MEMORY[0x277D84F90];
  if ((~v7 & 0xF000000000000007) != 0)
  {
    v8 = 0;
    v9 = (MEMORY[0x277D84F90] + 32);
    while (1)
    {
      if ((v7 & 0x8000000000000000) != 0)
      {
        v11 = *((v7 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
        v10 = *((v7 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
        *v5 = v10;
        v12 = v11;
        outlined copy of NestedError(v10);
        outlined consume of NestedError?(v7);
        v7 = v11;
        if (v8)
        {
          v7 = v11;
          goto LABEL_28;
        }
      }

      else
      {
        v10 = 0xF000000000000007;
        *v5 = 0xF000000000000007;
        if (v8)
        {
          goto LABEL_28;
        }
      }

      v13 = v6[3];
      if (((v13 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_35;
      }

      v14 = v13 & 0xFFFFFFFFFFFFFFFELL;
      if (v14 <= 1)
      {
        v15 = 1;
      }

      else
      {
        v15 = v14;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5Error_pGMd, &_ss23_ContiguousArrayStorageCys5Error_pGMR);
      v16 = swift_allocObject();
      v17 = _swift_stdlib_malloc_size(v16);
      v18 = v17 - 32;
      if (v17 < 32)
      {
        v18 = v17 - 25;
      }

      v19 = v18 >> 3;
      v16[2] = v15;
      v16[3] = 2 * (v18 >> 3);
      v20 = (v16 + 4);
      v21 = v6[3] >> 1;
      if (v6[2])
      {
        v22 = v6 + 4;
        if (v16 != v6 || v20 >= v22 + 8 * v21)
        {
          memmove(v16 + 4, v22, 8 * v21);
        }

        v6[2] = 0;
      }

      v9 = (v20 + 8 * v21);
      v8 = (v19 & 0x7FFFFFFFFFFFFFFFLL) - v21;

      v6 = v16;
LABEL_28:
      v23 = __OFSUB__(v8--, 1);
      if (v23)
      {
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
        return;
      }

      *v9++ = v7;
      v7 = v10;
      if ((~v10 & 0xF000000000000007) == 0)
      {
        goto LABEL_30;
      }
    }
  }

LABEL_10:
  v8 = 0;
LABEL_30:

  v24 = v6[3];
  if (v24 >= 2)
  {
    v25 = v24 >> 1;
    v23 = __OFSUB__(v25, v8);
    v26 = v25 - v8;
    if (v23)
    {
      goto LABEL_36;
    }

    v6[2] = v26;
  }
}

uint64_t outlined destroy of (String, Any)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void outlined consume of APIError(void *a1, id a2, char a3)
{
  switch(a3)
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:

      break;
    case 13:

      break;
    default:
      return;
  }
}

uint64_t get_enum_tag_for_layout_string_11ShaderGraph8APIErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 0x1Fu) <= 0x17)
  {
    return *(a1 + 16) & 0x1F;
  }

  else
  {
    return (*a1 + 24);
  }
}

uint64_t getEnumTagSinglePayload for APIError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xE8 && *(a1 + 17))
  {
    return (*a1 + 232);
  }

  v3 = *(a1 + 16);
  if (v3 <= 0x18)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for APIError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xE7)
  {
    *(result + 16) = 0;
    *result = a2 - 232;
    *(result + 8) = 0;
    if (a3 >= 0xE8)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xE8)
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

uint64_t destructiveInjectEnumTag for APIError(uint64_t result, unsigned int a2)
{
  if (a2 >= 0x18)
  {
    *result = a2 - 24;
    *(result + 8) = 0;
    LOBYTE(a2) = 24;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t get_enum_tag_for_layout_string_11ShaderGraph013MetalFunctionB5ErrorV0E4TypeO(uint64_t a1)
{
  if ((*(a1 + 32) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 32) & 7;
  }
}

unint64_t get_enum_tag_for_layout_string_11ShaderGraph15SGInternalErrorV0D4TypeO(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 >= 0)
  {
    return v1 >> 61;
  }

  else
  {
    return (*a1 + 4);
  }
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for SGInternalError(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32) >> 3;
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

double storeEnumTagSinglePayload for SGInternalError(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 72) = 0;
    result = 0.0;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 80) = 1;
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
      result = 0.0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 8 * -a2;
      *(a1 + 40) = 0;
      *(a1 + 48) = 0;
      *(a1 + 56) = 0;
      return result;
    }

    *(a1 + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
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

uint64_t getEnumTagSinglePayload for SGInternalError.ErrorType(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32) >> 3;
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

double storeEnumTagSinglePayload for SGInternalError.ErrorType(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 56) = 0;
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 64) = 1;
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
      result = 0.0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 8 * -a2;
      *(a1 + 40) = 0;
      *(a1 + 48) = 0;
      *(a1 + 56) = 0;
      return result;
    }

    *(a1 + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for SGInternalError.ErrorType(void *result, uint64_t a2)
{
  if (a2 < 4)
  {
    result[4] = result[4] & 7 | (a2 << 61);
  }

  else
  {
    *result = (a2 - 4);
    result[1] = 0;
    result[2] = 0;
    result[3] = 0;
    result[4] = 0x8000000000000000;
    result[5] = 0;
    result[6] = 0;
    result[7] = 0;
  }

  return result;
}

uint64_t sub_265E593B0()
{
  v1 = *(v0 + 16);
  if ((~v1 & 0xF000000000000007) != 0)
  {
    outlined consume of NestedError(v1);
  }

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

BOOL specialized Sequence.allSatisfy(_:)(uint64_t a1, _OWORD *a2)
{
  v3 = (a1 + 80);
  v4 = *(a1 + 16) + 1;
  do
  {
    if (!--v4)
    {
      break;
    }

    v5 = v3 + 7;
    v6 = *v3;
    v7 = *(v3 - 8);
    v9 = *(v3 - 3);
    v8 = *(v3 - 2);
    v11 = *(v3 - 5);
    v10 = *(v3 - 4);
    v23[0] = *(v3 - 6);
    v23[1] = v11;
    v23[2] = v10;
    v23[3] = v9;
    v23[4] = v8;
    v24 = v7;
    v25 = v6;
    v12 = a2[1];
    v26[0] = *a2;
    v26[1] = v12;
    v13 = a2[2];
    v14 = a2[3];
    v15 = a2[5];
    v26[4] = a2[4];
    v26[5] = v15;
    v26[2] = v13;
    v26[3] = v14;
    v16 = a2[6];
    v17 = a2[7];
    *(v27 + 9) = *(a2 + 153);
    v18 = a2[9];
    v26[8] = a2[8];
    v27[0] = v18;
    v26[6] = v16;
    v26[7] = v17;

    outlined init with copy of UserGraph(v26, v22);
    v19 = UserGraph.edges(from:)(v23);
    outlined destroy of UserGraph(v26);
    v20 = *(v19 + 16);

    v3 = v5;
  }

  while (!v20);
  return v4 == 0;
}

unint64_t specialized Sequence.compactMap<A>(_:)(unint64_t result, _OWORD *a2)
{
  v2 = *(result + 16);
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  v4 = 0;
  v5 = result + 32;
  v51 = MEMORY[0x277D84F90];
  v52 = result + 32;
  v54 = *(result + 16);
LABEL_7:
  if (v4 < v2)
  {
    v6 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      goto LABEL_57;
    }

    v7 = v5 + 56 * v4;
    v9 = *v7;
    v8 = *(v7 + 8);
    v11 = *(v7 + 16);
    v10 = *(v7 + 24);
    v12 = *(v7 + 32);
    v13 = *(v7 + 40);
    v14 = *(v7 + 48);
    ++v4;
    *&v77 = v9;
    *(&v77 + 1) = v8;
    v81 = v8;
    v65 = v11;
    *&v78 = v11;
    *(&v78 + 1) = v10;
    v69 = v10;
    v58 = v12;
    *&v79 = v12;
    v59 = v13;
    BYTE8(v79) = v13;
    v60 = v14;
    v80 = v14;
    v15 = a2[5];
    v75[4] = a2[4];
    v75[5] = v15;
    v16 = a2[3];
    v75[2] = a2[2];
    v75[3] = v16;
    *(v76 + 9) = *(a2 + 153);
    v17 = a2[9];
    v75[8] = a2[8];
    v76[0] = v17;
    v18 = a2[7];
    v75[6] = a2[6];
    v75[7] = v18;
    v19 = a2[1];
    v75[0] = *a2;
    v75[1] = v19;
    v20 = v19;
    v21 = *(&v75[0] + 1) + 32;
    v22 = *(*(&v75[0] + 1) + 16);
    if (*&v75[0])
    {
      result = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(v9, v21, v22, (*&v75[0] + 16), *&v75[0] + 32);
      if (v23)
      {
        goto LABEL_6;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        goto LABEL_58;
      }
    }

    else
    {
      if (!v22)
      {
        goto LABEL_6;
      }

      result = 0;
      while (*(v21 + 8 * result) != v9)
      {
        if (v22 == ++result)
        {
          goto LABEL_6;
        }
      }
    }

    if (result >= *(v20 + 16))
    {
      goto LABEL_59;
    }

    v24 = (v20 + 48 * result);
    v26 = v24[7];
    v25 = v24[8];
    v27 = v24[9];
    v28 = *(v25 + 16);
    v57 = v6;
    if (v26)
    {

      outlined init with copy of UserGraph(v75, &v71);

      result = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(&v77, v25 + 32, v28, (v26 + 16), v26 + 32);
      if ((v29 & 1) == 0)
      {
        v30 = result;
        if ((result & 0x8000000000000000) == 0)
        {
          goto LABEL_16;
        }

        goto LABEL_60;
      }

      outlined destroy of UserGraph(v75);

LABEL_4:

      goto LABEL_5;
    }

    v56 = v6;

    v53 = v27;

    if (!v28)
    {
      outlined init with copy of UserGraph(v75, &v71);
LABEL_47:
      outlined destroy of UserGraph(v75);
      v5 = v52;
      v4 = v56;
      goto LABEL_4;
    }

    v62 = v28;
    outlined init with copy of UserGraph(v75, &v71);
    v35 = v28;
    v30 = 0;
    v36 = (v25 + 80);
    while (1)
    {
      if (*(v36 - 6) != v9)
      {
        goto LABEL_27;
      }

      v37 = *(v36 - 4);
      v38 = *(v36 - 3);
      v64 = *(v36 - 2);
      v39 = *(v36 - 8);
      v68 = *v36;
      v40 = *(**(v36 - 5) + 128);

      if ((v40(v81) & 1) == 0)
      {

        v35 = v62;
        goto LABEL_27;
      }

      if (v37 == v65 && v38 == v69)
      {

        v35 = v62;
        if (v39)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v35 = v62;
        if ((v42 & 1) == 0)
        {
          goto LABEL_27;
        }

        if (v39)
        {
LABEL_36:
          v43 = v59;
          if (v68 != v60)
          {
            v43 = 0;
          }

          if (v43)
          {
            goto LABEL_45;
          }

          goto LABEL_27;
        }
      }

      v44 = v59 ^ 1;
      if (v64 != v58)
      {
        v44 = 0;
      }

      if (v44 == 1 && v68 == v60)
      {
LABEL_45:
        v5 = v52;
        v27 = v53;
        v4 = v56;
LABEL_16:
        if (v30 >= *(v27 + 16))
        {
          goto LABEL_61;
        }

        v55 = v4;
        v31 = (v27 + 56 * v30);
        v32 = v31[5];
        v33 = v31[9];
        v34 = v31[10];
        v63 = v31[6];
        v66 = v31[4];
        v61 = v31[7];
        v67 = v31[8];
        outlined copy of Output?(v66, v32);
        outlined destroy of UserGraph(v75);

        if (v32)
        {

          outlined consume of Output?(v66, v32);
          v71 = v77;
          v72 = v78;
          v73 = v79;
          v74 = v80;
          result = swift_isUniquelyReferenced_nonNull_native();
          v2 = v54;
          if ((result & 1) == 0)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v51 + 16) + 1, 1, v51);
            v51 = result;
          }

          v46 = *(v51 + 16);
          v45 = *(v51 + 24);
          if (v46 >= v45 >> 1)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v45 > 1), v46 + 1, 1, v51);
            v51 = result;
          }

          *(v51 + 16) = v46 + 1;
          v47 = v51 + 112 * v46;
          *(v47 + 32) = v66;
          *(v47 + 40) = v32;
          *(v47 + 48) = v63;
          *(v47 + 56) = v61;
          *(v47 + 64) = v67;
          *(v47 + 72) = v33 & 1;
          v70[0] = v33 & 1;
          *(v47 + 73) = *v70;
          *(v47 + 76) = *&v70[3];
          *(v47 + 80) = v34;
          v48 = v71;
          v49 = v72;
          v50 = v73;
          *(v47 + 136) = v74;
          *(v47 + 120) = v50;
          *(v47 + 104) = v49;
          *(v47 + 88) = v48;
          v4 = v55;
          v5 = v52;
          if (v57 == v54)
          {
            return v51;
          }
        }

        else
        {

          v4 = v55;
LABEL_5:
          v6 = v57;
          v2 = v54;
LABEL_6:
          if (v6 == v2)
          {
            return v51;
          }
        }

        goto LABEL_7;
      }

LABEL_27:
      v36 += 7;
      if (v35 == ++v30)
      {
        goto LABEL_47;
      }
    }
  }

  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
  return result;
}

{
  v2 = *(result + 16);
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = a2;
  v4 = 0;
  v5 = result + 32;
  v57 = MEMORY[0x277D84F90];
  v59 = *(result + 16);
  v60 = result + 32;
  while (v4 < v2)
  {
    v6 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      goto LABEL_65;
    }

    v7 = v5 + 56 * v4;
    v9 = *v7;
    v8 = *(v7 + 8);
    v10 = *(v7 + 16);
    v11 = *(v7 + 24);
    v12 = *(v7 + 32);
    v13 = *(v7 + 40);
    v14 = *(v7 + 48);
    ++v4;
    v81[0] = v9;
    v81[1] = v8;
    v84 = v8;
    v72 = v10;
    v81[2] = v10;
    v81[3] = v11;
    v64 = v12;
    v81[4] = v12;
    v65 = v13;
    v82 = v13;
    v66 = v14;
    v83 = v14;
    v15 = v3[5];
    v75 = v3[4];
    v76 = v15;
    v16 = v3[3];
    v74[2] = v3[2];
    v74[3] = v16;
    *(v80 + 9) = *(v3 + 153);
    v17 = v3[9];
    v79 = v3[8];
    v80[0] = v17;
    v18 = v3[7];
    v77 = v3[6];
    v78 = v18;
    v19 = v3[1];
    v74[0] = *v3;
    v74[1] = v19;
    v20 = v19;
    v21 = *(&v74[0] + 1) + 32;
    v22 = *(*(&v74[0] + 1) + 16);
    if (*&v74[0])
    {
      result = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(v9, v21, v22, *&v74[0] + 16, *&v74[0] + 32);
      if (v23)
      {
        goto LABEL_16;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        goto LABEL_66;
      }

LABEL_8:
      if (result >= *(v20 + 16))
      {
        goto LABEL_67;
      }

      v24 = (v20 + 48 * result);
      v26 = v24[7];
      v25 = v24[8];
      v27 = v24[9];
      v28 = *(v25 + 16);
      v67 = v11;
      v63 = v6;
      if (!v26)
      {
        v61 = v24[9];
        v62 = v6;

        if (!v28)
        {
          outlined init with copy of UserGraph(v74, v73);

LABEL_45:

          v3 = a2;
          v2 = v59;
          v5 = v60;
          v4 = v6;
          goto LABEL_46;
        }

        v68 = v28;
        outlined init with copy of UserGraph(v74, v73);

        v31 = 0;
        v32 = (v25 + 80);
        while (2)
        {
          if (*(v32 - 6) == v9)
          {
            v33 = *(v32 - 4);
            v34 = *(v32 - 3);
            v70 = *(v32 - 2);
            v35 = *(v32 - 8);
            v36 = *v32;
            v37 = *(**(v32 - 5) + 128);

            if (v37(v84))
            {
              if (v33 == v72 && v34 == v67)
              {

                v28 = v68;
                if (v35)
                {
                  goto LABEL_29;
                }

                goto LABEL_34;
              }

              v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

              v28 = v68;
              if (v39)
              {
                if (v35)
                {
LABEL_29:
                  v40 = v65;
                  if (v36 != v66)
                  {
                    v40 = 0;
                  }

                  if (v40)
                  {
                    goto LABEL_38;
                  }

                  goto LABEL_20;
                }

LABEL_34:
                v41 = v65 ^ 1;
                if (v70 != v64)
                {
                  v41 = 0;
                }

                if (v41 == 1 && v36 == v66)
                {
LABEL_38:
                  v3 = a2;
                  v29 = v61;
                  v4 = v62;
                  goto LABEL_40;
                }
              }
            }

            else
            {

              v28 = v68;
            }
          }

LABEL_20:
          v32 += 7;
          if (v28 == ++v31)
          {
            goto LABEL_45;
          }

          continue;
        }
      }

      outlined init with copy of UserGraph(v74, v73);

      result = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(v81, v25 + 32, v28, v26 + 16, v26 + 32);
      v29 = v27;
      if (v30)
      {

        v5 = v60;
LABEL_46:

        outlined destroy of UserGraph(v74);

        v6 = v63;
        goto LABEL_48;
      }

      v31 = result;
      if ((result & 0x8000000000000000) != 0)
      {
        goto LABEL_68;
      }

LABEL_40:
      if (v31 >= *(v29 + 16))
      {
        goto LABEL_69;
      }

      v42 = (v29 + 56 * v31);
      v44 = v42[4];
      v43 = v42[5];
      v46 = v42[6];
      v45 = v42[7];
      v47 = v42[8];
      v69 = v42[10];
      v71 = v42[9];
      outlined copy of Output?(v44, v43);

      if (!v43)
      {
        outlined destroy of UserGraph(v74);

        v2 = v59;
        v5 = v60;
        v6 = v63;
        goto LABEL_48;
      }

      result = outlined consume of Output?(v44, v43);
      if (v44 == -7)
      {

        outlined destroy of UserGraph(v74);

        v2 = v59;
        v5 = v60;
        v6 = v63;
        goto LABEL_48;
      }

      v6 = v63;
      if ((v44 & 0x8000000000000000) != 0)
      {
        goto LABEL_70;
      }

      if (v44 >= *(v75 + 16))
      {
        goto LABEL_71;
      }

      v48 = (v75 + 48 * v44);
      v49 = v48[4];
      v50 = v48[5];
      v51 = v48[6];

      outlined copy of NodePersonality(v49);

      outlined destroy of UserGraph(v74);
      if (v49 >> 61 || *(v49 + 80) != 6)
      {
        outlined consume of NodePersonality(v49);

        v2 = v59;
        v5 = v60;
        goto LABEL_49;
      }

      v52 = *(v49 + 16);
      v53 = *(v49 + 24);
      outlined copy of SGDataTypeStorage(v52, v53, *(v49 + 32), *(v49 + 40), *(v49 + 48), *(v49 + 56), *(v49 + 64), *(v49 + 72), 6);
      outlined consume of NodePersonality(v49);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v57[2] + 1, 1, v57);
        v57 = result;
      }

      v2 = v59;
      v5 = v60;
      v55 = v57[2];
      v54 = v57[3];
      if (v55 >= v54 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v54 > 1), v55 + 1, 1, v57);
        v57 = result;
      }

      v57[2] = v55 + 1;
      v56 = &v57[4 * v55];
      v56[4] = v72;
      v56[5] = v67;
      v56[6] = v52;
      v56[7] = v53;
      if (v63 == v59)
      {
        return v57;
      }
    }

    else
    {
      if (v22)
      {
        result = 0;
        while (*(v21 + 8 * result) != v9)
        {
          if (v22 == ++result)
          {
            goto LABEL_16;
          }
        }

        goto LABEL_8;
      }

LABEL_16:

LABEL_48:

LABEL_49:
      if (v6 == v2)
      {
        return v57;
      }
    }
  }

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
  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay11ShaderGraph0dE4NodeVG_SayAH2IDVGs5NeverOTg504_s11d62Graph04UserB0V30removeUnconnectedNodesAndEdges5rootsySayAA0aB4F22VG_tFSayAG2IDVGAGXEfU_AF0kE0VTf1cn_n(uint64_t a1, _OWORD *a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  v32 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
  v5 = 0;
  result = v32;
  v27 = a1 + 32;
  v28 = v2;
  do
  {
    v30 = result;
    v38 = v5;
    v7 = v27 + 48 * v5;
    v8 = *(v7 + 8);
    v10 = *(v7 + 16);
    v11 = *(v7 + 40);
    v33[0] = *v7;
    v9 = v33[0];
    v33[1] = v8;
    v33[2] = v10;
    v34 = *(v7 + 24);
    v35 = v11;
    v12 = a2[9];
    v36[8] = a2[8];
    v37[0] = v12;
    *(v37 + 9) = *(a2 + 153);
    v13 = a2[5];
    v36[4] = a2[4];
    v36[5] = v13;
    v14 = a2[7];
    v36[6] = a2[6];
    v36[7] = v14;
    v15 = a2[1];
    v36[0] = *a2;
    v36[1] = v15;
    v16 = a2[3];
    v36[2] = a2[2];
    v36[3] = v16;
    outlined copy of NodePersonality(v33[0]);

    outlined init with copy of UserGraph(v36, &v31);
    UserGraph.connectedUpstreamSubgraph(rootedAt:)(v33, &v31);
    v17 = v31;
    outlined destroy of UserGraph(v36);

    v18 = *(v17 + 16);
    if (v18)
    {
      v29 = v9;
      v31 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18, 0);
      v19 = v31;
      v20 = *(v31 + 16);
      v21 = 56;
      do
      {
        v22 = *(v17 + v21);
        v31 = v19;
        v23 = *(v19 + 24);
        if (v20 >= v23 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v20 + 1, 1);
          v19 = v31;
        }

        *(v19 + 16) = v20 + 1;
        *(v19 + 8 * v20 + 32) = v22;
        v21 += 48;
        ++v20;
        --v18;
      }

      while (v18);

      outlined consume of NodePersonality(v29);
    }

    else
    {

      outlined consume of NodePersonality(v9);

      v19 = MEMORY[0x277D84F90];
    }

    result = v30;
    v32 = v30;
    v25 = *(v30 + 16);
    v24 = *(v30 + 24);
    v26 = v38;
    if (v25 >= v24 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1);
      result = v32;
    }

    v5 = v26 + 1;
    *(result + 16) = v25 + 1;
    *(result + 8 * v25 + 32) = v19;
  }

  while (v5 != v28);
  return result;
}

unint64_t UserGraph.edge(to:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = specialized OrderedDictionary.subscript.getter(*a1, *v2, v2[1], v2[2], &v26);
  v6 = v27;
  v7 = 0uLL;
  if (v27)
  {
    v8 = v30;
    v9 = v31;
    v11 = v28;
    v10 = v29;
    v40 = v26;

    outlined destroy of [Input](&v40, &_s11ShaderGraph10_HashTableV7StorageCSgMd, &_s11ShaderGraph10_HashTableV7StorageCSgMR);
    v39 = v6;
    outlined destroy of [Input](&v39, &_ss15ContiguousArrayVy11ShaderGraph6OutputVGMd, &_ss15ContiguousArrayVy11ShaderGraph6OutputVGMR);
    v38 = v11;
    outlined destroy of [Input](&v38, &_ss15ContiguousArrayVy11ShaderGraph10OrderedSetVyAC5InputVGGMd, &_ss15ContiguousArrayVy11ShaderGraph10OrderedSetVyAC5InputVGGMR);

    specialized OrderedDictionary.subscript.getter(a1, v10, v8, v9, &v32);

    v12 = v33;
    if (v33 >= 2)
    {
      v15 = v37;
      v21 = v36;
      v24 = v35;
      v14 = v34;
      v13 = v32;

      outlined destroy of [Input](&v32, &_s11ShaderGraph6OutputVSgSgMd, &_s11ShaderGraph6OutputVSgSgMR);
      v18 = v21 & 1;
      v25[0] = v21 & 1;
      v41 = *(a1 + 16);
      v6 = *a1;
      v16 = *(a1 + 8);
      v22 = *(a1 + 32);
      v23 = *(a1 + 16);
      v17 = *(a1 + 48);

      result = outlined init with copy of String(&v41, v25);
      v20 = v22;
      v19 = v23;
      v7 = v24;
    }

    else
    {
      v13 = 0;
      v12 = 0;
      v14 = 0;
      v15 = 0;
      v6 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0uLL;
      v20 = 0uLL;
      v7 = 0uLL;
    }
  }

  else
  {
    v13 = 0;
    v12 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0uLL;
    v20 = 0uLL;
  }

  *a2 = v13;
  *(a2 + 8) = v12;
  *(a2 + 16) = v14;
  *(a2 + 24) = v7;
  *(a2 + 40) = v18;
  *(a2 + 48) = v15;
  *(a2 + 56) = v6;
  *(a2 + 64) = v16;
  *(a2 + 72) = v19;
  *(a2 + 88) = v20;
  *(a2 + 104) = v17;
  return result;
}

unint64_t **specialized Sequence._copyContents(initializing:)(unint64_t **result, unint64_t *a2, uint64_t a3, unint64_t *a4, uint64_t a5, unint64_t *a6)
{
  if (a5 >= 1)
  {
    v6 = *a4;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_17:
    v8 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = a5;
    result[2] = a6;
    result[3] = v8;
    result[4] = v6;
    return a3;
  }

LABEL_16:
  v6 = 0;
  if (!a2)
  {
    goto LABEL_17;
  }

LABEL_3:
  if (!a3)
  {
    v8 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v7 = 0;
    v8 = 0;
    v9 = 1;
    while (1)
    {
      v10 = v8;
      if (!v6)
      {
        break;
      }

      v11 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v12 = v11 | (v8 << 6);
LABEL_12:
      *a2 = v12;
      if (v9 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v7 = v9;
      if (__OFADD__(v9++, 1))
      {
        __break(1u);
        goto LABEL_16;
      }
    }

    while (1)
    {
      v13 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= a5)
      {
        break;
      }

      v14 = a4[v13];
      ++v10;
      if (v14)
      {
        v15 = __clz(__rbit64(v14));
        v6 = (v14 - 1) & v14;
        v12 = v15 | (v13 << 6);
        v8 = v13;
        goto LABEL_12;
      }
    }

    v6 = 0;
    if (a5 <= v8 + 1)
    {
      v17 = v8 + 1;
    }

    else
    {
      v17 = a5;
    }

    v8 = v17 - 1;
    a3 = v7;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

unint64_t *specialized Sequence._copyContents(initializing:)(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (!a2)
  {
    v4 = 0;
    goto LABEL_12;
  }

  if (!a3)
  {
LABEL_10:
    v4 = a3;
LABEL_12:
    *result = a4;
    return v4;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v4 = 0;
    while (a4)
    {
      v5 = __clz(__rbit64(a4));
      a4 &= a4 - 1;
      *(a2 + 8 * v4) = v5;
      if (a3 - 1 == v4)
      {
        goto LABEL_10;
      }

      if (__OFADD__(++v4, 1))
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t specialized Sequence._copyContents(initializing:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12_IteratorBoxCys013_ClosureBasedA0Vys5Error_pGGMd, &_ss12_IteratorBoxCys013_ClosureBasedA0Vys5Error_pGGMR);
  result = swift_allocObject();
  v10 = result;
  v11 = 0;
  *(result + 16) = partial apply for closure #1 in NestedError.makeIterator();
  *(result + 24) = v8;
  if (!a2 || !a3)
  {
LABEL_11:
    *a1 = v10;
    return v11;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    closure #1 in NestedError.makeIterator()(v8, &v13);
    v12 = v13;
    if (v13)
    {
      v11 = 0;
      while (1)
      {
        *(a2 + 8 * v11) = v12;
        if (a3 - 1 == v11)
        {
          break;
        }

        closure #1 in NestedError.makeIterator()(v8, &v13);
        v12 = v13;
        ++v11;
        if (!v13)
        {
          goto LABEL_11;
        }
      }

      v11 = a3;
    }

    else
    {
      v11 = 0;
    }

    goto LABEL_11;
  }

  __break(1u);
  return result;
}

_OWORD *specialized Sequence._copyContents(initializing:)(_OWORD *result, _OWORD *a2, uint64_t a3)
{
  v4 = result;
  *v13 = *v3;
  *&v13[16] = v3[1];
  *&v13[32] = v3[2];
  if (!a2)
  {
    v5 = 0;
    v12 = v3[1];
    *result = *v3;
    result[1] = v12;
    result[2] = v3[2];
    return v5;
  }

  v5 = a3;
  if (!a3)
  {
LABEL_10:
    *v4 = *v13;
    *(v4 + 8) = *&v13[8];
    *(v4 + 24) = *&v13[24];
    *(v4 + 5) = *&v13[40];
    return v5;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v6 = a2;
    v7 = 1;
    while (1)
    {
      UserGraph.BreathFirstEdgeIterator.next()(v14);
      if (!*(&v14[0] + 1))
      {
        break;
      }

      v8 = v14[5];
      v6[4] = v14[4];
      v6[5] = v8;
      v6[6] = v14[6];
      v9 = v14[1];
      *v6 = v14[0];
      v6[1] = v9;
      v10 = v14[3];
      v6[2] = v14[2];
      v6[3] = v10;
      if (v5 == v7)
      {
        goto LABEL_10;
      }

      v6 += 7;
      if (__OFADD__(v7++, 1))
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    *v4 = *v13;
    *(v4 + 8) = *&v13[8];
    *(v4 + 24) = *&v13[24];
    *(v4 + 5) = *&v13[40];
    return (v7 - 1);
  }

  __break(1u);
  return result;
}

uint64_t specialized Sequence._copyContents(initializing:)(uint64_t result, _OWORD *a2, uint64_t a3)
{
  v4 = result;
  *v13 = *v3;
  *&v13[16] = *(v3 + 16);
  *&v13[32] = *(v3 + 32);
  if (!a2)
  {
    v5 = 0;
    v12 = *(v3 + 16);
    *result = *v3;
    *(result + 16) = v12;
    *(result + 32) = *(v3 + 32);
    return v5;
  }

  v5 = a3;
  if (!a3)
  {
LABEL_10:
    *v4 = *v13;
    *(v4 + 8) = *&v13[8];
    *(v4 + 24) = *&v13[24];
    return v5;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v6 = a2;
    v7 = 1;
    while (1)
    {
      UserGraph.DepthFirstEdgeIterator.next()(v14);
      if (!*(&v14[0] + 1))
      {
        break;
      }

      v8 = v14[5];
      v6[4] = v14[4];
      v6[5] = v8;
      v6[6] = v14[6];
      v9 = v14[1];
      *v6 = v14[0];
      v6[1] = v9;
      v10 = v14[3];
      v6[2] = v14[2];
      v6[3] = v10;
      if (v5 == v7)
      {
        goto LABEL_10;
      }

      v6 += 7;
      if (__OFADD__(v7++, 1))
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    *v4 = *v13;
    *(v4 + 8) = *&v13[8];
    *(v4 + 24) = *&v13[24];
    return v7 - 1;
  }

  __break(1u);
  return result;
}

void *specialized Sequence._copyContents(initializing:)(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = *(a4 + 16);
  if (!a2)
  {
    v18 = *(a4 + 16);
    v6 = 0;
LABEL_14:
    *v5 = a4;
    v5[1] = v18;
    return v6;
  }

  if (!a3)
  {
    v18 = *(a4 + 16);
LABEL_13:
    v6 = a3;
    goto LABEL_14;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    if (v6)
    {
      v8 = a2;
      v9 = 0;
      v10 = a3 - 1;
      v11 = (a4 + 56 * v6);
      while (v6 + v9 <= *(a4 + 16))
      {
        v12 = *(v11 - 2);
        v13 = *(v11 - 1);
        v14 = *v11;
        v15 = v11[1];
        v16 = *(v11 + 16);
        v17 = v11[3];
        *v8 = *(v11 - 3);
        *(v8 + 8) = v12;
        *(v8 + 16) = v13;
        *(v8 + 24) = v14;
        *(v8 + 32) = v15;
        *(v8 + 40) = v16;
        *(v8 + 48) = v17;
        if (!(v10 + v9))
        {

          v18 = v6 + v9 - 1;
          goto LABEL_13;
        }

        --v9;
        v11 -= 7;
        v8 += 56;
        v18 = v6 + v9;
        if (!(v6 + v9))
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    v18 = 0;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void *specialized Sequence._copyContents(initializing:)(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = *(a4 + 16);
  if (!a2)
  {
    v13 = *(a4 + 16);
    v6 = 0;
LABEL_14:
    *v5 = a4;
    v5[1] = v13;
    return v6;
  }

  if (!a3)
  {
    v13 = *(a4 + 16);
LABEL_13:
    v6 = a3;
    goto LABEL_14;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    if (v6)
    {
      v8 = a2;
      v9 = 0;
      v10 = a3 - 1;
      v11 = (a4 + 16 * v6 + 24);
      while (v6 + v9 <= *(a4 + 16))
      {
        v12 = *v11;
        *v8 = *(v11 - 1);
        v8[1] = v12;
        if (!(v10 + v9))
        {

          v13 = v6 + v9 - 1;
          goto LABEL_13;
        }

        --v9;
        v11 -= 2;
        v8 += 2;
        v13 = v6 + v9;
        if (!(v6 + v9))
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    v13 = 0;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall UserGraph.flatten()()
{
  v1 = *(v0 + 64);
  v2 = *(v1 + 16);

  v3 = 0;
  v4 = MEMORY[0x277D84F90];
  while (v3 < v2)
  {
    v5 = (v1 + 72 + 48 * v3);
    v6 = v3;
    while (1)
    {
      if (v3 >= v2)
      {
        __break(1u);
LABEL_19:
        __break(1u);
        return;
      }

      v7 = *(v5 - 2);
      if (v7 != -7)
      {
        break;
      }

      ++v6;
      v5 += 48;
      if (v2 == v6)
      {
        goto LABEL_15;
      }
    }

    v3 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      goto LABEL_19;
    }

    v8 = *(v5 - 5);
    if (v8 >> 61 == 6)
    {
      v17 = *(v5 - 3);
      v18 = *(v5 - 4);
      v16 = *(v5 - 1);
      v15 = *v5;
      outlined copy of NodePersonality(v8);

      v19 = v4;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 16) + 1, 1);
      }

      v10 = *(v4 + 16);
      v9 = *(v4 + 24);
      v11 = v10 + 1;
      if (v10 >= v9 >> 1)
      {
        v14 = *(v4 + 16);
        v13 = v10 + 1;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1);
        v10 = v14;
        v11 = v13;
        v4 = v19;
      }

      *(v4 + 16) = v11;
      v12 = v4 + 48 * v10;
      *(v12 + 32) = v8;
      *(v12 + 40) = v18;
      *(v12 + 48) = v17;
      *(v12 + 56) = v7;
      *(v12 + 64) = v16;
      *(v12 + 72) = v15;
    }
  }

LABEL_15:

  specialized Sequence.forEach(_:)(v4);
}