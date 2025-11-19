uint64_t specialized Set.contains(_:)(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    goto LABEL_73;
  }

  v4 = *(a2 + 40);
  Hasher.init(_seed:)();
  DebugConfig.Group.rawValue.getter(a1);
  String.hash(into:)();

  v5 = Hasher._finalize()();
  v6 = -1 << *(a2 + 32);
  v7 = v5 & ~v6;
  if ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v30 = ~v6;
    v8 = 0x7972616D6D7573;
    while (1)
    {
      v9 = *(*(a2 + 48) + v7);
      if (v9 > 4)
      {
        if (*(*(a2 + 48) + v7) <= 6u)
        {
          if (v9 == 5)
          {
            v14 = 0x6E69686374697473;
            v15 = 0xEE00687061724767;
          }

          else
          {
            v14 = 0x446C616D696E696DLL;
            v15 = 0xEA0000000000746FLL;
          }
        }

        else if (v9 == 7)
        {
          v15 = 0xE800000000000000;
          v14 = 0x6870617247697061;
        }

        else if (v9 == 8)
        {
          v14 = 0xD000000000000011;
          v15 = 0x8000000265F2BCB0;
        }

        else
        {
          v14 = 0xD00000000000001ALL;
          v15 = 0x8000000265F2BCD0;
        }
      }

      else
      {
        if (v9 == 3)
        {
          v10 = 7630692;
        }

        else
        {
          v10 = 0x62694C6C6174656DLL;
        }

        if (v9 == 3)
        {
          v11 = 0xE300000000000000;
        }

        else
        {
          v11 = 0xEC00000079726172;
        }

        if (v9 == 2)
        {
          v10 = 0x65766968637261;
          v11 = 0xE700000000000000;
        }

        v12 = *(*(a2 + 48) + v7) ? v8 : 1701736302;
        v13 = *(*(a2 + 48) + v7) ? 0xE700000000000000 : 0xE400000000000000;
        v14 = *(*(a2 + 48) + v7) <= 1u ? v12 : v10;
        v15 = *(*(a2 + 48) + v7) <= 1u ? v13 : v11;
      }

      v16 = a1;
      v17 = 0xD00000000000001ALL;
      if (a1 == 8)
      {
        v17 = 0xD000000000000011;
      }

      v18 = 0x8000000265F2BCD0;
      if (a1 == 8)
      {
        v18 = 0x8000000265F2BCB0;
      }

      if (a1 == 7)
      {
        v17 = 0x6870617247697061;
        v18 = 0xE800000000000000;
      }

      v19 = 0x6E69686374697473;
      if (a1 != 5)
      {
        v19 = 0x446C616D696E696DLL;
      }

      v20 = 0xEE00687061724767;
      if (a1 != 5)
      {
        v20 = 0xEA0000000000746FLL;
      }

      if (a1 <= 6u)
      {
        v17 = v19;
        v18 = v20;
      }

      if (a1 == 3)
      {
        v21 = 7630692;
      }

      else
      {
        v21 = 0x62694C6C6174656DLL;
      }

      if (a1 == 3)
      {
        v22 = 0xE300000000000000;
      }

      else
      {
        v22 = 0xEC00000079726172;
      }

      if (a1 == 2)
      {
        v21 = 0x65766968637261;
        v22 = 0xE700000000000000;
      }

      if (a1)
      {
        v23 = v8;
      }

      else
      {
        v23 = 1701736302;
      }

      if (a1)
      {
        v24 = 0xE700000000000000;
      }

      else
      {
        v24 = 0xE400000000000000;
      }

      if (a1 <= 1u)
      {
        v21 = v23;
        v22 = v24;
      }

      v25 = a1 <= 4u ? v21 : v17;
      v26 = a1 <= 4u ? v22 : v18;
      if (v14 == v25 && v15 == v26)
      {
        break;
      }

      v27 = v8;
      v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v28 & 1) == 0)
      {
        v7 = (v7 + 1) & v30;
        a1 = v16;
        v8 = v27;
        if ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
        {
          continue;
        }
      }

      return v28 & 1;
    }

    v28 = 1;
  }

  else
  {
LABEL_73:
    v28 = 0;
  }

  return v28 & 1;
}

uint64_t specialized Set.contains(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v7 = Hasher._finalize()();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

BOOL specialized Set.contains(_:)(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = *(a2 + 40);
  Hasher.init(_seed:)();
  MEMORY[0x266772770](a1);
  v5 = Hasher._finalize()();
  v6 = -1 << *(a2 + 32);
  v7 = v5 & ~v6;
  if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  do
  {
    v9 = *(*(a2 + 48) + 8 * v7);
    result = v9 == a1;
    if (v9 == a1)
    {
      break;
    }

    v7 = (v7 + 1) & v8;
  }

  while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  return result;
}

uint64_t specialized Set.contains(_:)(uint64_t *a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = *(a2 + 40);
  Hasher.init(_seed:)();
  v5 = *a1;
  MEMORY[0x266772770](*a1);
  v26 = a1[1];
  (*(*v26 + 120))(v30);
  v24 = a1[3];
  v25 = a1[2];
  String.hash(into:)();
  v6 = a1[4];
  v22 = *(a1 + 40);
  if (v22 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x266772770](v6);
  }

  v23 = a1[6];
  MEMORY[0x266772770]();
  v8 = Hasher._finalize()();
  v9 = -1 << *(a2 + 32);
  v10 = v8 & ~v9;
  if ((*(a2 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v21 = v6;
    v11 = ~v9;
    do
    {
      v12 = *(a2 + 48) + 56 * v10;
      if (*v12 != v5)
      {
        goto LABEL_9;
      }

      v13 = *(v12 + 16);
      v14 = *(v12 + 24);
      v27 = *(v12 + 32);
      v28 = *(v12 + 40);
      v29 = *(v12 + 48);
      v15 = *(**(v12 + 8) + 128);

      if ((v15(v26) & 1) == 0)
      {

        goto LABEL_9;
      }

      if (v13 == v25 && v14 == v24)
      {

        if (v28)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v17 & 1) == 0)
        {
          goto LABEL_9;
        }

        if (v28)
        {
LABEL_18:
          v18 = v22;
          if (v29 != v23)
          {
            v18 = 0;
          }

          if (v18)
          {
            return 1;
          }

          goto LABEL_9;
        }
      }

      v19 = v22 ^ 1;
      if (v27 != v21)
      {
        v19 = 0;
      }

      if (v19 == 1 && v29 == v23)
      {
        return 1;
      }

LABEL_9:
      v10 = (v10 + 1) & v11;
    }

    while (((*(a2 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return 0;
}

double UserGraph.insertNode(inputs:outputs:shaderGraphData:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v9 = *(v4 + 40);
  v10 = *(v4 + 64);
  v11 = *(v10 + 2);

  outlined copy of NodePersonality(a3);
  specialized ShaderGraphNode.init(id:graphid:inputs:outputs:shaderGraphData:)(v11, v9, 0, a1, a2, a3, &v24);
  v31 = *(&v24 + 1);
  v32 = v24;
  v30 = *&v25[0];
  outlined init with copy of NodePersonality(&v32, &v33);
  outlined init with copy of [Input](&v31, &v33, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
  outlined init with copy of [Input](&v30, &v33, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
  }

  v13 = *(v10 + 2);
  v12 = *(v10 + 3);
  if (v13 >= v12 >> 1)
  {
    v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v10);
  }

  v15 = v30;
  v14 = v31;
  *(v10 + 2) = v13 + 1;
  v16 = &v10[48 * v13];
  v18 = v24;
  v17 = v25[0];
  *(v16 + 57) = *(v25 + 9);
  *(v16 + 2) = v18;
  *(v16 + 3) = v17;
  *(v4 + 64) = v10;
  v19 = *(&v25[0] + 1);
  outlined init with copy of NodePersonality(&v32, &v33);
  outlined init with copy of [Input](&v31, &v33, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
  outlined init with copy of [Input](&v30, &v33, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
  specialized UserGraph.Adjacent.init(_:)(v14, v15, &v26);
  v20 = v26;
  v21 = v28;
  outlined destroy of NodePersonality(&v32);
  outlined destroy of [Input](&v31, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
  outlined destroy of [Input](&v30, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
  v34 = v27;
  v33 = v20;
  v35 = v21;
  v36 = v29;
  specialized OrderedDictionary.subscript.setter(&v33, v19);
  v22 = v25[0];
  *a4 = v24;
  a4[1] = v22;
  result = *(v25 + 9);
  *(a4 + 25) = *(v25 + 9);
  return result;
}

uint64_t ShaderGraphNode.out.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  result = specialized ShaderGraphNode.input(labeled:)(7632239, 0xE300000000000000, *(v2 + 2), &v13);
  v5 = v14;
  if (v14)
  {
    v6 = v17;
    v7 = v16;
    v8 = v15;
    v9 = v18;
    *a1 = v13;
    *(a1 + 8) = v5;
    *(a1 + 16) = v8;
    *(a1 + 32) = v7;
    *(a1 + 40) = v6 & 1;
    *(a1 + 48) = v9;
  }

  else
  {
    MEMORY[0x266771550](7632239, 0xE300000000000000);
    MEMORY[0x266771550](32, 0xE100000000000000);
    v11 = *v2;
    *v12 = v2[1];
    *&v12[9] = *(v2 + 25);
    _print_unlocked<A, B>(_:_:)();
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    *v10 = 14;
    *(v10 + 8) = 0;
    *(v10 + 16) = 0xE000000000000000;
    return swift_willThrow();
  }

  return result;
}

uint64_t ShaderGraphNode.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  result = specialized ShaderGraphNode.input(labeled:)(a1, a2, *(v4 + 1), &v17);
  v9 = v18;
  if (v18)
  {
    v10 = v21;
    v11 = v20;
    v12 = v19;
    v13 = v22;
    *a3 = v17;
    *(a3 + 8) = v9;
    *(a3 + 16) = v12;
    *(a3 + 32) = v11;
    *(a3 + 40) = v10 & 1;
    *(a3 + 48) = v13;
  }

  else
  {
    MEMORY[0x266771550](a1, a2);
    MEMORY[0x266771550](32, 0xE100000000000000);
    v15 = *v4;
    *v16 = v4[1];
    *&v16[9] = *(v4 + 25);
    _print_unlocked<A, B>(_:_:)();
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    *v14 = 11;
    *(v14 + 8) = 0;
    *(v14 + 16) = 0xE000000000000000;
    return swift_willThrow();
  }

  return result;
}

{
  v4 = v3;
  result = specialized ShaderGraphNode.input(labeled:)(a1, a2, *(v4 + 2), &v17);
  v9 = v18;
  if (v18)
  {
    v10 = v21;
    v11 = v20;
    v12 = v19;
    v13 = v22;
    *a3 = v17;
    *(a3 + 8) = v9;
    *(a3 + 16) = v12;
    *(a3 + 32) = v11;
    *(a3 + 40) = v10 & 1;
    *(a3 + 48) = v13;
  }

  else
  {
    MEMORY[0x266771550](a1, a2);
    MEMORY[0x266771550](32, 0xE100000000000000);
    v15 = *v4;
    *v16 = v4[1];
    *&v16[9] = *(v4 + 25);
    _print_unlocked<A, B>(_:_:)();
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    *v14 = 14;
    *(v14 + 8) = 0;
    *(v14 + 16) = 0xE000000000000000;
    return swift_willThrow();
  }

  return result;
}

uint64_t UserGraph.connect(_:to:)(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v75 = *(a1 + 16);
  v76 = *(a1 + 8);
  v77 = *(a1 + 24);
  v78 = *(a1 + 32);
  v72 = *(a1 + 40);
  v73 = (a1 + 16);
  v79 = *(a1 + 48);
  v74 = *a1;
  v7 = specialized OrderedDictionary.subscript.modify(v81, *a1);
  v8 = v6[1];
  if (!v8)
  {
    v7(v81, 0);
    goto LABEL_23;
  }

  v9 = v6;
  v10 = *v6;
  v11 = *(v8 + 16);
  if (!*v6)
  {
    v18 = specialized Collection<>.firstIndex(of:)(a1, v8 + 32, *(v8 + 16));
    if ((v19 & 1) == 0)
    {
      v13 = v18;
      goto LABEL_18;
    }

    v17 = 0;
LABEL_8:
    specialized OrderedSet._appendNew(_:in:)(a1, v17, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:));
    _s11ShaderGraph10OrderedSetVyACyxGqd__c7ElementQyd__RszSkRd__lufCAA5InputV_SayAHGTt0g5(MEMORY[0x277D84F90]);
    v21 = v20;
    v23 = v22;
    v26 = v9[2];
    v24 = v9 + 2;
    v25 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v24 = v26;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v25 + 16) + 1, 1);
      v25 = *v24;
    }

    v29 = *(v25 + 16);
    v28 = *(v25 + 24);
    if (v29 >= v28 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1);
      v25 = *v24;
    }

    *(v25 + 16) = v29 + 1;
    v30 = v25 + 16 * v29;
    *(v30 + 32) = v21;
    *(v30 + 40) = v23;
    v13 = *v24;
    v31 = *(*v24 + 16);
    v32 = swift_isUniquelyReferenced_nonNull_native();
    *v24 = v13;
    if ((v32 & 1) == 0)
    {
      v13 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v13);
      *v24 = v13;
    }

    if (v31)
    {
      v34 = *(v13 + 16);
      v13 += 16;
      v33 = v34;
      if (v31 <= v34)
      {
        goto LABEL_22;
      }

      goto LABEL_47;
    }

    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v12 = *v6;

  v13 = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(a1, v8 + 32, v11, (v10 + 16), v10 + 32);
  v15 = v14;
  v17 = v16;

  if (v15)
  {
    goto LABEL_8;
  }

LABEL_18:
  v35 = v9[2];
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v9[2] = v35;
  if ((v36 & 1) == 0)
  {
    v35 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v35);
    v9[2] = v35;
  }

  if ((v13 & 0x8000000000000000) != 0)
  {
    goto LABEL_46;
  }

  v33 = v35[2];
  if (v13 >= v33)
  {
LABEL_48:
    __break(1u);
LABEL_49:
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), a2, 1);
    v51 = *v7;
LABEL_33:
    v51[2] = a2;
    v54 = &v51[7 * v13];
    *(v54 + 2) = 0u;
    *(v54 + 3) = 0u;
    *(v54 + 4) = 0u;
    v54[10] = 0;
    v55 = *v7;
    v56 = *(*v7 + 16);
    result = swift_isUniquelyReferenced_nonNull_native();
    *v7 = v55;
    if ((result & 1) == 0)
    {
      result = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v55);
      v55 = result;
      *v7 = result;
    }

    if (v56)
    {
      if (v56 <= v55[2])
      {
        v57 = &v55[7 * v56];
        v58 = *(v57 - 1);
        v59 = *v57;
        v60 = v57[1];
        v61 = v57[2];
        v62 = v57[3];
        outlined consume of Output?(*(v57 - 3), *(v57 - 2));
        v63 = *(a1 + 8);
        v82 = *v73;
        *(v57 - 3) = v74;
        *(v57 - 2) = v76;
        *(v57 - 1) = v75;
        *v57 = v77;
        v57[1] = v78;
        v57[2] = v72 & 1;
        v57[3] = v79;
LABEL_44:

        outlined init with copy of String(&v82, v80);
        return v3(v81, 0);
      }

      goto LABEL_52;
    }

    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

LABEL_22:
  specialized OrderedSet._append(_:)(a2);
  v7(v81, 0);
LABEL_23:
  v3 = specialized OrderedDictionary.subscript.modify(v81, *a2);
  if (!v37[1])
  {
    return v3(v81, 0);
  }

  v38 = v37;
  v40 = v37[3];
  v39 = v37[4];
  v41 = *(v39 + 16);
  if (!v40)
  {
    v49 = specialized Collection<>.firstIndex(of:)(a2, v39 + 32, *(v39 + 16));
    if ((v50 & 1) == 0)
    {
      v43 = v49;
      goto LABEL_39;
    }

    v47 = 0;
LABEL_30:
    specialized OrderedSet._appendNew(_:in:)(a2, v47, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:));
    v52 = v38[5];
    v7 = (v38 + 5);
    v51 = v52;
    v53 = swift_isUniquelyReferenced_nonNull_native();
    *v7 = v52;
    if ((v53 & 1) == 0)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v51[2] + 1, 1);
      v51 = *v7;
    }

    v13 = v51[2];
    v33 = v51[3];
    a2 = (v13 + 1);
    if (v13 < v33 >> 1)
    {
      goto LABEL_33;
    }

    goto LABEL_49;
  }

  v42 = v37[3];

  v43 = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(a2, v39 + 32, v41, (v40 + 16), v40 + 32);
  v45 = v44;
  v47 = v46;

  if (v45)
  {
    goto LABEL_30;
  }

LABEL_39:
  v64 = v38[5];
  result = swift_isUniquelyReferenced_nonNull_native();
  v38[5] = v64;
  if ((result & 1) == 0)
  {
    result = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v64);
    v64 = result;
    v38[5] = result;
  }

  if ((v43 & 0x8000000000000000) != 0)
  {
    goto LABEL_51;
  }

  if (v43 < v64[2])
  {
    v65 = &v64[7 * v43];
    v66 = v65[6];
    v67 = v65[7];
    v68 = v65[8];
    v69 = v65[9];
    v70 = v65[10];
    outlined consume of Output?(v65[4], v65[5]);
    v71 = *(a1 + 8);
    v82 = *v73;
    v65[4] = v74;
    v65[5] = v76;
    v65[6] = v75;
    v65[7] = v77;
    v65[8] = v78;
    v65[9] = v72 & 1;
    v65[10] = v79;
    goto LABEL_44;
  }

LABEL_53:
  __break(1u);
  return result;
}

Swift::Void __swiftcall UserGraph.removeUnconnectedNodesAndEdges(roots:)(Swift::OpaquePointer roots)
{
  v2 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay11ShaderGraph0dE4NodeVG_SayAH2IDVGs5NeverOTg504_s11d62Graph04UserB0V30removeUnconnectedNodesAndEdges5rootsySayAA0aB4F22VG_tFSayAG2IDVGAGXEfU_AF0kE0VTf1cn_n(roots._rawValue, v1);
  v3 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC11ShaderGraph0bC4NodeV2IDV_s15FlattenSequenceVySaySayAHGGGTt0g5(v2);
  v4 = *(v1 + 64);
  v5 = *(v4 + 16);

  v6 = 0;
  v16 = v4;
  while (2)
  {
    while (2)
    {
      if (v6 >= v5)
      {
LABEL_16:

        return;
      }

      v7 = (v4 + 56 + 48 * v6);
      v8 = v6;
      while (1)
      {
        if (v6 >= v5)
        {
          __break(1u);
          goto LABEL_20;
        }

        v9 = *v7;
        if (*v7 != -7)
        {
          break;
        }

        ++v8;
        v7 += 6;
        if (v5 == v8)
        {
          goto LABEL_16;
        }
      }

      v6 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v10 = *(v7 - 2);
      v11 = *(v7 - 1);
      v12 = *(v7 - 3);
      if (specialized Set.contains(_:)(*v7, v3))
      {
        continue;
      }

      break;
    }

    outlined copy of NodePersonality(v12);

    v15 = v1;
    specialized UserGraph.removeEdges(connectedTo:)(v9);
    v13 = v16;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = specialized _ArrayBuffer._consumeAndCreateNew()(v16);
      if ((v9 & 0x8000000000000000) == 0)
      {
        goto LABEL_12;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    if ((v9 & 0x8000000000000000) != 0)
    {
      goto LABEL_15;
    }

LABEL_12:
    if (v9 < *(v13 + 2))
    {
      v14 = v13;
      ShaderGraphNode.update(id:)(-7);
      outlined consume of NodePersonality(v12);

      v1 = v15;
      v16 = v14;
      *(v15 + 64) = v14;
      continue;
    }

    break;
  }

LABEL_21:
  __break(1u);
}

uint64_t UserGraph.nodes.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 64);
  v3 = (2 * *(v2 + 16)) | 1;
  *a1 = 0;
  a1[1] = v2;
  a1[2] = v2 + 32;
  a1[3] = 0;
  a1[4] = v3;
  a1[5] = closure #1 in UserGraph.nodes.getter;
  a1[6] = 0;
}

uint64_t UserGraph.connectedUpstreamSubgraph(rootedAt:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph0dE4NodeVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph0dE4NodeVGMR);
  inited = swift_initStackObject();
  v6 = *a1;
  v58 = a1[1];
  v59[0] = v6;
  v57 = a1[2];
  v8 = *a1;
  v7 = *(a1 + 1);
  inited[1] = xmmword_265F1F670;
  inited[2] = v8;
  inited[3] = v7;
  v36 = a1;
  *(inited + 57) = *(a1 + 25);
  outlined init with copy of UserGraph(v3, &v45);
  outlined init with copy of NodePersonality(v59, &v45);
  outlined init with copy of [Input](&v58, &v45, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
  outlined init with copy of [Input](&v57, &v45, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
  specialized UserGraph.DepthFirstEdgeIterator.init(_:initial:)(v3, inited, v48);
  v38 = v3;
  outlined destroy of UserGraph(v3);
  v9 = MEMORY[0x277D84F90];
  v44 = MEMORY[0x277D84F90];
  v55 = v48[1];
  v56 = v48[0];
  v53 = v48[3];
  v54 = v48[2];
  v52 = v48[4];
  outlined init with copy of [Input](&v56, &v45, &_s11ShaderGraph10_HashTableV7StorageCSgMd, &_s11ShaderGraph10_HashTableV7StorageCSgMR);
  outlined init with copy of [Input](&v55, &v45, &_ss15ContiguousArrayVy11ShaderGraph0cD4NodeV2IDVGMd, &_ss15ContiguousArrayVy11ShaderGraph0cD4NodeV2IDVGMR);
  outlined init with copy of [Input](&v54, &v45, &_ss15ContiguousArrayVy11ShaderGraph04UserD0V8AdjacentVGMd, &_ss15ContiguousArrayVy11ShaderGraph04UserD0V8AdjacentVGMR);
  outlined init with copy of [Input](&v53, &v45, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
  outlined init with copy of [Input](&v52, &v45, &_sShy11ShaderGraph5InputVGMd, &_sShy11ShaderGraph5InputVGMR);
  UserGraph.DepthFirstEdgeIterator.next()(&v49);
  if (v50)
  {
    do
    {
      v10 = v49;
      specialized OrderedSet._append(_:)(v51);
      specialized OrderedSet._append(_:)(v10);
      outlined destroy of [Input](&v49, &_s11ShaderGraph4EdgeVSgMd, &_s11ShaderGraph4EdgeVSgMR);
      UserGraph.DepthFirstEdgeIterator.next()(&v49);
    }

    while (v50);
    v11 = v44;
  }

  else
  {
    v11 = v9;
  }

  v12 = *(v11 + 16);
  if (v12)
  {
    v45 = v9;
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12, 0);
    v14 = 0;
    v15 = v45;
    v16 = *(v38 + 64);
    v39 = v16 + 32;
    v40 = v12;
    v41 = v11;
    v42 = *(v16 + 16);
    while (v14 < *(v11 + 16))
    {
      v17 = *(v11 + 8 * v14 + 32);
      if (v17 >= v42)
      {
        goto LABEL_16;
      }

      v18 = v39 + 48 * v17;
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      v22 = *(v18 + 24);
      v43 = *(v18 + 32);
      v23 = *(v18 + 40);
      outlined copy of NodePersonality(*v18);
      v45 = v15;
      v25 = *(v15 + 16);
      v24 = *(v15 + 24);

      if (v25 >= v24 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1);
        v15 = v45;
      }

      ++v14;
      *(v15 + 16) = v25 + 1;
      v26 = v15 + 48 * v25;
      *(v26 + 32) = v19;
      *(v26 + 40) = v20;
      *(v26 + 48) = v21;
      *(v26 + 56) = v22;
      *(v26 + 64) = v43;
      *(v26 + 72) = v23;
      v11 = v41;
      if (v40 == v14)
      {

        v28 = v36;
        v27 = a2;
        v29 = v15;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  else
  {

    v29 = MEMORY[0x277D84F90];
    v28 = a1;
    v27 = a2;
LABEL_14:
    v30 = swift_initStackObject();
    v31 = *v28;
    v32 = v28[1];
    v30[1] = xmmword_265F1F670;
    v30[2] = v31;
    v30[3] = v32;
    *(v30 + 57) = *(v28 + 25);
    outlined init with copy of UserGraph(v38, &v45);
    outlined init with copy of NodePersonality(v59, &v45);
    outlined init with copy of [Input](&v58, &v45, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    outlined init with copy of [Input](&v57, &v45, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
    specialized UserGraph.DepthFirstEdgeIterator.init(_:initial:)(v38, v30, &v45);
    v33 = v45;
    outlined destroy of UserGraph(v38);
    outlined destroy of [Input](&v56, &_s11ShaderGraph10_HashTableV7StorageCSgMd, &_s11ShaderGraph10_HashTableV7StorageCSgMR);
    outlined destroy of [Input](&v55, &_ss15ContiguousArrayVy11ShaderGraph0cD4NodeV2IDVGMd, &_ss15ContiguousArrayVy11ShaderGraph0cD4NodeV2IDVGMR);
    outlined destroy of [Input](&v54, &_ss15ContiguousArrayVy11ShaderGraph04UserD0V8AdjacentVGMd, &_ss15ContiguousArrayVy11ShaderGraph04UserD0V8AdjacentVGMR);
    outlined destroy of [Input](&v53, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    result = outlined destroy of [Input](&v52, &_sShy11ShaderGraph5InputVGMd, &_sShy11ShaderGraph5InputVGMR);
    v34 = v46;
    v35 = v47;
    *v27 = v29;
    *(v27 + 8) = v33;
    *(v27 + 16) = v34;
    *(v27 + 32) = v35;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC11ShaderGraph0bC4NodeV2IDV_s15FlattenSequenceVySaySayAHGGGTt0g5(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ShaderGraphNode.ID and conformance ShaderGraphNode.ID();
  result = MEMORY[0x266771950](0, &type metadata for ShaderGraphNode.ID, v2);
  v4 = 0;
  v11 = result;
  while (1)
  {
LABEL_6:
    v8 = *(a1 + 16);
    if (v4 == v8)
    {

      return v11;
    }

    if (v4 >= v8)
    {
      break;
    }

    v9 = *(a1 + 32 + 8 * v4);

    ++v4;
    if (v9)
    {
      v5 = *(v9 + 16);
      if (v5)
      {
        v6 = 0;
        while (v6 < v5)
        {
          v7 = v6 + 1;
          result = specialized Set._Variant.insert(_:)(&v10, *(v9 + 32 + 8 * v6));
          v5 = *(v9 + 16);
          v6 = v7;
          if (v7 == v5)
          {
            goto LABEL_6;
          }
        }

        __break(1u);
        break;
      }
    }
  }

  __break(1u);
  return result;
}

void UserGraph.replace(_:with:)(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 + 8);
  v7 = *a1;
  v15 = a1[1];
  v8 = v15;
  v16 = v7;
  v14 = a1[2];
  v9 = v14;
  outlined init with copy of NodePersonality(&v16, v13);
  outlined init with copy of [Input](&v15, v13, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
  outlined init with copy of [Input](&v14, v13, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
  specialized Sequence.forEach(_:)(v6, v8, v3);
  outlined destroy of NodePersonality(&v16);
  outlined destroy of [Input](&v15, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
  outlined destroy of [Input](&v14, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
  v10 = *(a2 + 16);
  outlined init with copy of NodePersonality(&v16, v13);
  outlined init with copy of [Input](&v15, v13, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
  outlined init with copy of [Input](&v14, v13, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
  specialized Sequence.forEach(_:)(v10, v9, v3);
  outlined destroy of NodePersonality(&v16);
  outlined destroy of [Input](&v15, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
  outlined destroy of [Input](&v14, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
  v11 = a1[3];
  specialized UserGraph.removeEdges(connectedTo:)(v11);
  v12 = *(v3 + 64);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((v11 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v12 = specialized _ArrayBuffer._consumeAndCreateNew()(v12);
  if ((v11 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v11 < *(v12 + 2))
  {
    ShaderGraphNode.update(id:)(-7);
    *(v3 + 64) = v12;
    return;
  }

LABEL_7:
  __break(1u);
}

double ShaderGraphNode.output(labeled:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  specialized ShaderGraphNode.input(labeled:)(a1, a2, *(v3 + 16), v7);
  v5 = v7[1];
  *a3 = v7[0];
  *(a3 + 16) = v5;
  result = *&v8;
  *(a3 + 32) = v8;
  *(a3 + 48) = v9;
  return result;
}

uint64_t UserGraph.edges(from:)(unint64_t *a1)
{
  v2 = a1;
  specialized OrderedDictionary.subscript.getter(*a1, *v1, v1[1], v1[2], &v40);
  v3 = v41;
  if (!v41)
  {
    return MEMORY[0x277D84F90];
  }

  v5 = v44;
  v4 = v45;
  v6 = v42;
  v7 = v40;
  v48 = v43;
  outlined destroy of [Input](&v48, &_s11ShaderGraph10_HashTableV7StorageCSgMd, &_s11ShaderGraph10_HashTableV7StorageCSgMR);
  v47 = v5;
  outlined destroy of [Input](&v47, &_ss15ContiguousArrayVy11ShaderGraph5InputVGMd, &_ss15ContiguousArrayVy11ShaderGraph5InputVGMR);
  v46 = v4;
  outlined destroy of [Input](&v46, &_ss15ContiguousArrayVy11ShaderGraph6OutputVSgGMd, &_ss15ContiguousArrayVy11ShaderGraph6OutputVSgGMR);
  specialized OrderedDictionary.subscript.getter(v2, v7, v3, v6);
  v9 = v8;

  v10 = MEMORY[0x277D84F90];
  if (!v9)
  {
    return v10;
  }

  v11 = *(v9 + 16);
  if (!v11)
  {

LABEL_14:

    return v10;
  }

  v39 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11, 0);
  v10 = v39;
  v30 = v2[1];
  v49 = *(v2 + 1);
  if (*(v9 + 16))
  {
    v13 = 0;
    v14 = (v9 + 80);
    v27 = v2;
    v28 = v11 - 1;
    v29 = v9;
    while (1)
    {
      v15 = *(v14 - 6);
      v16 = *(v14 - 5);
      v17 = *(v14 - 3);
      v18 = *(v14 - 2);
      v19 = *(v14 - 8);
      v31 = *(v14 - 4);
      v32 = *v14;
      v20 = *(v2 + 1);
      v35 = *v2;
      v36 = v20;
      v37 = *(v2 + 2);
      v38 = v2[6];
      v33[0] = v19;

      result = outlined init with copy of String(&v49, v33);
      v39 = v10;
      v22 = *(v10 + 16);
      v21 = *(v10 + 24);
      if (v22 >= v21 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1);
        v10 = v39;
      }

      *(v10 + 16) = v22 + 1;
      v23 = v10 + 112 * v22;
      v24 = v35;
      v25 = v37;
      v26 = v38;
      *(v23 + 48) = v36;
      *(v23 + 64) = v25;
      *(v23 + 32) = v24;
      *(v23 + 80) = v26;
      *(v23 + 88) = v15;
      *(v23 + 96) = v16;
      *(v23 + 104) = v31;
      *(v23 + 112) = v17;
      *(v23 + 120) = v18;
      *(v23 + 128) = v19;
      LODWORD(v26) = *&v34[3];
      *(v23 + 129) = *v34;
      *(v23 + 132) = v26;
      *(v23 + 136) = v32;
      if (v28 == v13)
      {
        break;
      }

      v14 += 7;
      ++v13;
      v2 = v27;
      if (v13 >= *(v29 + 16))
      {
        goto LABEL_16;
      }
    }

    goto LABEL_14;
  }

LABEL_16:
  __break(1u);
  return result;
}

unint64_t UserGraph.node(connectedTo:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = specialized OrderedDictionary.subscript.getter(*a1, *v2, v2[1], v2[2], &v22);
  v6 = v23;
  v7 = 0uLL;
  if (!v23)
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    goto LABEL_10;
  }

  v8 = v26;
  v9 = v27;
  v11 = v24;
  v10 = v25;
  v31 = v22;

  outlined destroy of [Input](&v31, &_s11ShaderGraph10_HashTableV7StorageCSgMd, &_s11ShaderGraph10_HashTableV7StorageCSgMR);
  v30 = v6;
  outlined destroy of [Input](&v30, &_ss15ContiguousArrayVy11ShaderGraph6OutputVGMd, &_ss15ContiguousArrayVy11ShaderGraph6OutputVGMR);
  v29 = v11;
  outlined destroy of [Input](&v29, &_ss15ContiguousArrayVy11ShaderGraph10OrderedSetVyAC5InputVGGMd, &_ss15ContiguousArrayVy11ShaderGraph10OrderedSetVyAC5InputVGGMR);

  specialized OrderedDictionary.subscript.getter(a1, v10, v8, v9, v28);

  if (v28[1] < 2uLL)
  {
LABEL_5:
    v15 = 0;
    v16 = 0;
    v6 = 0;
    v17 = 0;
    v7 = 0uLL;
LABEL_10:
    *a2 = v15;
    *(a2 + 8) = v16;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7;
    *(a2 + 40) = v17;
    return result;
  }

  v12 = v28[0];

  result = outlined destroy of [Input](v28, &_s11ShaderGraph6OutputVSgSgMd, &_s11ShaderGraph6OutputVSgSgMR);
  v13 = *(a1 + 8);
  v32 = *(a1 + 16);
  v14 = *(a1 + 24);
  if (v12 == -7)
  {

    outlined init with copy of String(&v32, v21);

    goto LABEL_5;
  }

  if ((v12 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v18 = v2[8];
    if (v12 < *(v18 + 16))
    {
      v19 = v18 + 48 * v12;
      v15 = *(v19 + 32);
      v16 = *(v19 + 40);
      v6 = *(v19 + 48);
      v20 = *(v19 + 56);
      v17 = *(v19 + 72);

      outlined init with copy of String(&v32, v21);
      outlined copy of NodePersonality(v15);

      v7 = v20;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t UserGraph.moveEdges(from:to:)(unint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *a1;
  result = specialized OrderedDictionary.subscript.getter(*a1, *v2, v2[1], v2[2], &v24);
  v8 = v25;
  if (v25)
  {
    v9 = v24;
    specialized OrderedDictionary.subscript.getter(a1, v24, v25, v26);
    v10 = v9;
    v12 = v11;
    result = outlined consume of UserGraph.Adjacent?(v10, v8);
    if (v12)
    {
      v13 = specialized OrderedDictionary.subscript.modify(v23, *a2);
      if (*(v14 + 8))
      {
        v15 = specialized OrderedDictionary.subscript.modify(v22, a2);
        if (*(v16 + 8))
        {
          specialized OrderedSet.append<A>(contentsOf:)(v12);
        }

        v15(v22, 0);
        v13(v23, 0);
      }

      else
      {
        v13(v23, 0);
      }

      v17 = specialized OrderedDictionary.subscript.modify(v23, v6);
      if (*(v18 + 8))
      {
        v19 = specialized OrderedDictionary.subscript.modify(v22, a1);
        if (*(v20 + 8))
        {
          specialized OrderedSet.removeAll(keepingCapacity:)(1);
        }

        v19(v22, 0);
        v17(v23, 0);
      }

      else
      {
        v17(v23, 0);
      }

      v21 = *(a2 + 8);
      *v23 = *(a2 + 16);

      outlined init with copy of String(v23, v22);
      specialized Sequence.forEach(_:)(v12, v3, a2);

      outlined destroy of String(v23);
    }
  }

  return result;
}

unint64_t specialized MutableCollection.swapAt(_:_:)(unint64_t result, unint64_t a2)
{
  if (result != a2)
  {
    v3 = result;
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v4 = *v2;
      v5 = *(*v2 + 16);
      if (v5 > result)
      {
        if (v5 > a2)
        {
          v7 = &v4[2 * result + 4];
          v8 = *v7;
          v9 = v7[1];
          v10 = &v4[2 * a2 + 4];
          v11 = *v10;
          v12 = v10[1];

          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v4);
            v4 = result;
          }

          if (v4[2] > v3)
          {
            v13 = &v4[2 * v3 + 4];
            v15 = *v13;
            v14 = v13[1];
            *v13 = v11;
            v13[1] = v12;

            if (v4[2] > a2)
            {
              v16 = &v4[2 * a2 + 4];
              v18 = *v16;
              v17 = v16[1];
              *v16 = v8;
              v16[1] = v9;

              *v2 = v4;
              return result;
            }

LABEL_15:
            __break(1u);
            return result;
          }

LABEL_14:
          __break(1u);
          goto LABEL_15;
        }

LABEL_13:
        __break(1u);
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_13;
  }

  return result;
}

{
  if (result != a2)
  {
    v3 = result;
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v4 = *v2;
      v5 = *(*v2 + 16);
      if (v5 > result)
      {
        if (v5 > a2)
        {
          v34 = v2;
          v7 = (v4 + 32 + 48 * result);
          v8 = *v7;
          v9 = v7[1];
          v10 = v7[2];
          v11 = v7[3];
          v12 = v7[4];
          v13 = (v4 + 32 + 48 * a2);
          v38 = *v13;
          v39 = v7[5];
          v41 = v13[1];
          v40 = v13[2];
          v15 = v13[4];
          v14 = v13[5];
          v37 = v13[3];

          v36 = v15;
          v16 = v8;
          v17 = v4;

          v35 = v14;

          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v4);
            v17 = result;
          }

          if (*(v17 + 16) > v3)
          {
            v32 = v10;
            v33 = v9;
            v18 = (v17 + 32 + 48 * v3);
            v20 = *v18;
            v19 = v18[1];
            v21 = v18[2];
            v22 = v18[3];
            v24 = v18[4];
            v23 = v18[5];
            *v18 = v38;
            v18[1] = v41;
            v18[2] = v40;
            v18[3] = v37;
            v18[4] = v36;
            v18[5] = v35;

            if (*(v17 + 16) > a2)
            {
              v25 = (v17 + 32 + 48 * a2);
              v26 = *v25;
              v27 = v25[1];
              v28 = v25[2];
              v29 = v25[3];
              v31 = v25[4];
              v30 = v25[5];
              *v25 = v16;
              v25[1] = v33;
              v25[2] = v32;
              v25[3] = v11;
              v25[4] = v12;
              v25[5] = v39;

              *v34 = v17;
              return result;
            }

LABEL_15:
            __break(1u);
            return result;
          }

LABEL_14:
          __break(1u);
          goto LABEL_15;
        }

LABEL_13:
        __break(1u);
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_13;
  }

  return result;
}

{
  if (result != a2)
  {
    v3 = result;
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v4 = *v2;
      v5 = *(*v2 + 16);
      if (v5 > result)
      {
        if (v5 > a2)
        {
          v7 = v4[result + 4];
          v8 = v4[a2 + 4];

          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v4);
            v4 = result;
          }

          if (v4[2] > v3)
          {
            v9 = v4 + 4;
            v10 = v4[v3 + 4];
            v4[v3 + 4] = v8;

            if (v4[2] > a2)
            {
              v11 = v9[a2];
              v9[a2] = v7;

              *v2 = v4;
              return result;
            }

LABEL_15:
            __break(1u);
            return result;
          }

LABEL_14:
          __break(1u);
          goto LABEL_15;
        }

LABEL_13:
        __break(1u);
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_13;
  }

  return result;
}

uint64_t specialized OrderedSet._regenerateHashTable()()
{
  return specialized OrderedSet._regenerateHashTable()(specialized closure #1 in static _HashTable.create<A>(uncheckedUniqueElements:scale:reservedScale:), _s11ShaderGraph10_HashTableV6create23uncheckedUniqueElements5scale13reservedScaleACSgx_SiSgSitSkRzSH7ElementRpzlFZs15ContiguousArrayVySiG_Tt2g5Tm);
}

{
  return specialized OrderedSet._regenerateHashTable()(specialized closure #1 in static _HashTable.create<A>(uncheckedUniqueElements:scale:reservedScale:), _s11ShaderGraph10_HashTableV6create23uncheckedUniqueElements5scale13reservedScaleACSgx_SiSgSitSkRzSH7ElementRpzlFZs15ContiguousArrayVySiG_Tt2g5Tm);
}

{
  return specialized OrderedSet._regenerateHashTable()(specialized closure #1 in static _HashTable.create<A>(uncheckedUniqueElements:scale:reservedScale:), _s11ShaderGraph10_HashTableV6create23uncheckedUniqueElements5scale13reservedScaleACSgx_SiSgSitSkRzSH7ElementRpzlFZs15ContiguousArrayVySiG_Tt2g5Tm);
}

{
  return specialized OrderedSet._regenerateHashTable()(specialized _HashTable.UnsafeHandle.fill<A>(uncheckedUniqueElements:), _s11ShaderGraph10_HashTableV6create23uncheckedUniqueElements5scale13reservedScaleACSgx_SiSgSitSkRzSH7ElementRpzlFZs15ContiguousArrayVyAA13TextureSourceOG_Tt2g5Tm);
}

{
  return specialized OrderedSet._regenerateHashTable()(_s11ShaderGraph10_HashTableV6create23uncheckedUniqueElements5scale13reservedScaleACSgx_SiSgSitSkRzSH7ElementRpzlFZs15ContiguousArrayVyAA6SGNodeCG_Tt2g5Tm);
}

{
  return specialized OrderedSet._regenerateHashTable()(specialized closure #1 in static _HashTable.create<A>(uncheckedUniqueElements:scale:reservedScale:), _s11ShaderGraph10_HashTableV6create23uncheckedUniqueElements5scale13reservedScaleACSgx_SiSgSitSkRzSH7ElementRpzlFZs15ContiguousArrayVySiG_Tt2g5Tm);
}

uint64_t specialized OrderedSet._regenerateHashTable()(uint64_t (*a1)(uint64_t, int64_t, void, uint64_t))
{
  v3 = *v1;
  if (*v1)
  {
    swift_beginAccess();
    v4 = *(v3 + 24) & 0x3FLL;
  }

  else
  {
    v4 = 0;
  }

  v5 = v1[1];
  v6 = *(v5 + 16);
  if (v4 || v6 >= 0x10)
  {
    v8 = specialized static _HashTable.scale(forCapacity:)(v6);
    if (v4 <= v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = v4;
    }

    v7 = a1(v5, v9, 0, v4);
  }

  else
  {
    v7 = 0;
  }

  *v1 = v7;
  return result;
}

uint64_t specialized OrderedSet._regenerateHashTable()(uint64_t a1, uint64_t (*a2)(uint64_t, int64_t, void, uint64_t, uint64_t))
{
  v5 = *v2;
  if (*v2)
  {
    swift_beginAccess();
    v6 = *(v5 + 24) & 0x3FLL;
  }

  else
  {
    v6 = 0;
  }

  v7 = v2[1];
  v8 = *(v7 + 16);
  if (v6 || v8 >= 0x10)
  {
    v10 = specialized static _HashTable.scale(forCapacity:)(v8);
    if (v6 <= v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = v6;
    }

    v9 = a2(v7, v11, 0, v6, a1);
  }

  else
  {
    v9 = 0;
  }

  *v2 = v9;
  return result;
}

uint64_t _ss15ContiguousArrayVyAByxGqd__c7ElementQyd__RszSTRd__lufC11ShaderGraph6SGEdgeC_SayAHGTt0g5Tm(unint64_t a1, uint64_t (*a2)(uint64_t, void), void (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v7 = __CocoaSet.count.getter();
  if (!v7)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v8 = v7;
  v9 = a2(v7, 0);
  a3(v9 + 32, v8, a1);
  v11 = v10;

  result = v9;
  if (v11 != v8)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t _s11ShaderGraph10_HashTableV6create23uncheckedUniqueElements5scale13reservedScaleACSgx_SiSgSitSkRzSH7ElementRpzlFZs15ContiguousArrayVySiG_Tt2g5Tm(uint64_t result, uint64_t a2, char a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  v6 = result;
  v7 = 0;
  v8 = *(result + 16);
  if (v8 >= 0x10)
  {
    v9 = ceil(v8 / 0.75);
    if (v9 == INFINITY)
    {
      __break(1u);
    }

    else if (v9 > -9.22337204e18)
    {
      if (v9 < 9.22337204e18)
      {
        if ((v8 + 1) > v9)
        {
          v10 = v8 + 1;
        }

        else
        {
          v10 = v9;
        }

        v7 = 64 - __clz(v10 - 1);
        goto LABEL_9;
      }

LABEL_21:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_21;
  }

LABEL_9:
  result = 0;
  if (a3)
  {
    v11 = 0;
  }

  else
  {
    v11 = a2;
  }

  if (v7 > v11)
  {
    v11 = v7;
  }

  if (v11 <= a4)
  {
    v11 = a4;
  }

  if (v11 >= 5)
  {
    v12 = specialized _HashTable.init(scale:reservedScale:)(v11, a4);
    a5(v12 + 16, v12 + 32, v6);
    return v12;
  }

  return result;
}

uint64_t _s11ShaderGraph10_HashTableV6create23uncheckedUniqueElements5scale13reservedScaleACSgx_SiSgSitSkRzSH7ElementRpzlFZs15ContiguousArrayVyAA5InputVG_Tt2g5Tm(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  v4 = *(result + 16);
  if (v4 >= 0x10)
  {
    v5 = ceil(v4 / 0.75);
    if (v5 == INFINITY)
    {
      __break(1u);
    }

    else if (v5 > -9.22337204e18)
    {
      if (v5 < 9.22337204e18)
      {
        if ((v4 + 1) > v5)
        {
          v6 = v4 + 1;
        }

        else
        {
          v6 = v5;
        }

        v7 = 64 - __clz(v6 - 1);
        goto LABEL_10;
      }

LABEL_22:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_22;
  }

  v7 = 0;
LABEL_10:
  v8 = 0;
  if (a3)
  {
    v9 = 0;
  }

  else
  {
    v9 = a2;
  }

  if (v7 <= v9)
  {
    v7 = v9;
  }

  if (v7 <= a4)
  {
    v7 = a4;
  }

  if (v7 >= 5)
  {
    v10 = result;
    v8 = specialized _HashTable.init(scale:reservedScale:)(v7, a4);
    specialized _HashTable.UnsafeHandle.fill<A>(uncheckedUniqueElements:)(v10, (v8 + 16), v8 + 32);
  }

  return v8;
}

uint64_t _s11ShaderGraph10_HashTableV6create23uncheckedUniqueElements5scale13reservedScaleACSgx_SiSgSitSkRzSH7ElementRpzlFZs15ContiguousArrayVyAA13TextureSourceOG_Tt2g5Tm(uint64_t result, uint64_t a2, char a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(result + 16);
  if (v6 >= 0x10)
  {
    v7 = ceil(v6 / 0.75);
    if (v7 == INFINITY)
    {
      __break(1u);
    }

    else if (v7 > -9.22337204e18)
    {
      if (v7 < 9.22337204e18)
      {
        if ((v6 + 1) > v7)
        {
          v8 = v6 + 1;
        }

        else
        {
          v8 = v7;
        }

        v9 = 64 - __clz(v8 - 1);
        goto LABEL_10;
      }

LABEL_22:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_22;
  }

  v9 = 0;
LABEL_10:
  v10 = 0;
  if (a3)
  {
    v11 = 0;
  }

  else
  {
    v11 = a2;
  }

  if (v9 <= v11)
  {
    v9 = v11;
  }

  if (v9 <= a4)
  {
    v9 = a4;
  }

  if (v9 >= 5)
  {
    v12 = result;
    v10 = specialized _HashTable.init(scale:reservedScale:)(v9, a4);
    a5(v12, v10 + 16, v10 + 32);
  }

  return v10;
}

uint64_t _s11ShaderGraph10_HashTableV6create23uncheckedUniqueElements5scale13reservedScaleACSgx_SiSgSitSkRzSH7ElementRpzlFZs15ContiguousArrayVyAA6SGNodeCG_Tt2g5Tm(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  v4 = result;
  v5 = 0;
  v6 = *(result + 16);
  if (v6 >= 0x10)
  {
    v7 = ceil(v6 / 0.75);
    if (v7 == INFINITY)
    {
      __break(1u);
    }

    else if (v7 > -9.22337204e18)
    {
      if (v7 < 9.22337204e18)
      {
        if ((v6 + 1) > v7)
        {
          v8 = v6 + 1;
        }

        else
        {
          v8 = v7;
        }

        v5 = 64 - __clz(v8 - 1);
        goto LABEL_9;
      }

LABEL_21:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_21;
  }

LABEL_9:
  result = 0;
  if (a3)
  {
    v9 = 0;
  }

  else
  {
    v9 = a2;
  }

  if (v5 > v9)
  {
    v9 = v5;
  }

  if (v9 <= a4)
  {
    v9 = a4;
  }

  if (v9 >= 5)
  {
    v10 = specialized _HashTable.init(scale:reservedScale:)(v9, a4);
    specialized closure #1 in static _HashTable.create<A>(uncheckedUniqueElements:scale:reservedScale:)(v10 + 16, v10 + 32, v4);
    return v10;
  }

  return result;
}

void _s11ShaderGraph10OrderedSetVyACyxGqd__c7ElementQyd__RszSkRd__lufCAA5InputV_s15ContiguousArrayVyAHGTt0g5(uint64_t a1)
{
  v2 = specialized default argument 1 of OrderedSet._extractSubset(using:extraCapacity:)();
  DuplicateIn5scale13reservedScaleACSg04hashD0_5IndexQz3endtx_SiSgSitSkRzSH7ElementRpzlFZs15ContiguousArrayVyAA5InputVG_Tt3g5Tm = _s11ShaderGraph10_HashTableV6create21untilFirstDuplicateIn5scale13reservedScaleACSg04hashD0_5IndexQz3endtx_SiSgSitSkRzSH7ElementRpzlFZs15ContiguousArrayVyAA5InputVG_Tt3g5Tm(v8, a1, 0, 1, v2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), closure #1 in Sequence<>.contains(_:)specialized partial apply, specialized Sequence.contains(where:));
  v4 = *(a1 + 16);
  v5 = v8[0];
  if (v8[0] != v4)
  {
    if ((v8[0] & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v4 >= v8[0])
    {
      v6 = DuplicateIn5scale13reservedScaleACSg04hashD0_5IndexQz3endtx_SiSgSitSkRzSH7ElementRpzlFZs15ContiguousArrayVyAA5InputVG_Tt3g5Tm;
      specialized _copyCollectionToContiguousArray<A>(_:)(a1, a1 + 32, 0, (2 * v8[0]) | 1);
      v8[1] = v6;
      v8[2] = v7;
      if (*(a1 + 16) >= v4)
      {
        specialized OrderedSet.append<A>(contentsOf:)(a1 + 32, v5, (2 * v4) | 1, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:));

        return;
      }

LABEL_9:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_9;
  }
}

void _s11ShaderGraph10OrderedSetVyACyxGqd__c7ElementQyd__RszSkRd__lufCAA6OutputV_s15ContiguousArrayVyAHGTt0g5(uint64_t a1)
{
  v2 = specialized default argument 1 of OrderedSet._extractSubset(using:extraCapacity:)();
  DuplicateIn5scale13reservedScaleACSg04hashD0_5IndexQz3endtx_SiSgSitSkRzSH7ElementRpzlFZs15ContiguousArrayVyAA5InputVG_Tt3g5Tm = _s11ShaderGraph10_HashTableV6create21untilFirstDuplicateIn5scale13reservedScaleACSg04hashD0_5IndexQz3endtx_SiSgSitSkRzSH7ElementRpzlFZs15ContiguousArrayVyAA5InputVG_Tt3g5Tm(v8, a1, 0, 1, v2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), closure #1 in Sequence<>.contains(_:)specialized partial apply, specialized Sequence.contains(where:));
  v4 = *(a1 + 16);
  v5 = v8[0];
  if (v8[0] != v4)
  {
    if ((v8[0] & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v4 >= v8[0])
    {
      v6 = DuplicateIn5scale13reservedScaleACSg04hashD0_5IndexQz3endtx_SiSgSitSkRzSH7ElementRpzlFZs15ContiguousArrayVyAA5InputVG_Tt3g5Tm;
      specialized _copyCollectionToContiguousArray<A>(_:)(a1, a1 + 32, 0, (2 * v8[0]) | 1);
      v8[1] = v6;
      v8[2] = v7;
      if (*(a1 + 16) >= v4)
      {
        specialized OrderedSet.append<A>(contentsOf:)(a1 + 32, v5, (2 * v4) | 1, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:));

        return;
      }

LABEL_9:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_9;
  }
}

void _s11ShaderGraph10OrderedSetVyACyxGqd__c7ElementQyd__RszSkRd__lufCAA5InputV_SayAHGTt0g5(uint64_t a1)
{
  v2 = specialized default argument 1 of OrderedSet._extractSubset(using:extraCapacity:)();
  DuplicateIn5scale13reservedScaleACSg04hashD0_5IndexQz3endtx_SiSgSitSkRzSH7ElementRpzlFZSayAA5InputVG_Tt3g5 = _s11ShaderGraph10_HashTableV6create21untilFirstDuplicateIn5scale13reservedScaleACSg04hashD0_5IndexQz3endtx_SiSgSitSkRzSH7ElementRpzlFZSayAA5InputVG_Tt3g5(v8, a1, 0, 1, v2);
  v4 = *(a1 + 16);
  v5 = v8[0];
  if (v8[0] != v4)
  {
    if ((v8[0] & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v4 >= v8[0])
    {
      v6 = DuplicateIn5scale13reservedScaleACSg04hashD0_5IndexQz3endtx_SiSgSitSkRzSH7ElementRpzlFZSayAA5InputVG_Tt3g5;
      specialized _copyCollectionToContiguousArray<A>(_:)(a1, a1 + 32, 0, (2 * v8[0]) | 1);
      v8[1] = v6;
      v8[2] = v7;
      if (*(a1 + 16) >= v4)
      {
        specialized OrderedSet.append<A>(contentsOf:)(a1 + 32, v5, (2 * v4) | 1, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:));

        return;
      }

LABEL_9:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_9;
  }
}

uint64_t _s11ShaderGraph10OrderedSetVyACyxGqd__c7ElementQyd__RszSkRd__lufCSi_SaySiGTt0g5Tm(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(unint64_t *, uint64_t, void, uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, void, unint64_t), void (*a5)(uint64_t, unint64_t, unint64_t))
{
  v9 = a2();
  result = a3(&v14, a1, 0, 1, v9);
  v11 = *(a1 + 16);
  v12 = v14;
  if (v14 != v11)
  {
    if ((v14 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v11 >= v14)
    {
      v13 = result;
      result = a4(a1, a1 + 32, 0, (2 * v14) | 1);
      v15 = v13;
      v16 = result;
      if (*(a1 + 16) >= v11)
      {
        a5(a1 + 32, v12, (2 * v11) | 1);

        return v15;
      }

LABEL_9:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_9;
  }

  return result;
}

uint64_t _s11ShaderGraph10OrderedSetVyACyxGqd__c7ElementQyd__RszSkRd__lufCAA6SGEdgeC_SayAHGTt0g5(unint64_t a1)
{
  v7 = specialized default argument 1 of OrderedSet._extractSubset(using:extraCapacity:)();
  DuplicateIn5scale13reservedScaleACSg04hashD0_5IndexQz3endtx_SiSgSitSkRzSH7ElementRpzlFZSayAA6SGEdgeCG_Tt3g5Tm = _s11ShaderGraph10_HashTableV6create21untilFirstDuplicateIn5scale13reservedScaleACSg04hashD0_5IndexQz3endtx_SiSgSitSkRzSH7ElementRpzlFZSayAA6SGEdgeCG_Tt3g5Tm(&v62, a1, 0, 1, v7, type metadata accessor for SGEdge, partial apply for specialized closure #1 in Sequence<>.contains(_:), specialized Sequence.contains(where:));
  v8 = (a1 >> 62);
  if (!(a1 >> 62))
  {
    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_3;
  }

LABEL_99:
  v9 = __CocoaSet.count.getter();
LABEL_3:
  v10 = v62;
  if (v62 == v9)
  {
    _ss15ContiguousArrayVyAByxGqd__c7ElementQyd__RszSTRd__lufC11ShaderGraph6SGEdgeC_SayAHGTt0g5Tm(a1, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC11ShaderGraph6SGNodeC_Tt1g5, specialized Array._copyContents(initializing:));
    return DuplicateIn5scale13reservedScaleACSg04hashD0_5IndexQz3endtx_SiSgSitSkRzSH7ElementRpzlFZSayAA6SGEdgeCG_Tt3g5Tm;
  }

  if (v62 < 0)
  {
    __break(1u);
    goto LABEL_101;
  }

  if (!v8)
  {
    v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_13;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    v1 = a1;
  }

  else
  {
    v1 = a1 & 0xFFFFFFFFFFFFFF8;
  }

  if ((__CocoaSet.count.getter() & 0x8000000000000000) == 0)
  {
    v12 = __CocoaSet.count.getter();
LABEL_13:
    if (v12 >= v10)
    {
      v3 = (a1 & 0xC000000000000001);
      if ((a1 & 0xC000000000000001) != 0 && v10)
      {
        type metadata accessor for SGEdge();

        v13 = 0;
        do
        {
          v14 = v13 + 1;
          _ArrayBuffer._typeCheckSlowPath(_:)(v13);
          v13 = v14;
        }

        while (v10 != v14);
        if (!v8)
        {
LABEL_19:
          v1 = 0;
          v2 = a1 & 0xFFFFFFFFFFFFFF8;
          v15 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
          v4 = (2 * v10) | 1;
          goto LABEL_23;
        }
      }

      else
      {

        if (!v8)
        {
          goto LABEL_19;
        }
      }

      v2 = _CocoaArrayWrapper.subscript.getter();
      v1 = v16;
      v4 = v17;
      if ((v17 & 1) == 0)
      {
        goto LABEL_22;
      }

LABEL_23:
      v5 = v10;
      v61 = v15;
      type metadata accessor for __ContiguousArrayStorageBase();
      swift_unknownObjectRetain_n();
      v19 = swift_dynamicCastClass();
      if (!v19)
      {
        swift_unknownObjectRelease();
        v19 = MEMORY[0x277D84F90];
      }

      v20 = *(v19 + 16);

      if (!__OFSUB__(v4 >> 1, v1))
      {
        if (v20 == (v4 >> 1) - v1)
        {
          v1 = swift_dynamicCastClass();
          swift_unknownObjectRelease();
          v10 = v5;
          if (!v1)
          {
            v1 = MEMORY[0x277D84F90];
            goto LABEL_29;
          }

          goto LABEL_30;
        }

        goto LABEL_107;
      }

      goto LABEL_106;
    }

LABEL_101:
    __break(1u);
LABEL_102:
    __break(1u);
LABEL_103:
    __break(1u);
    goto LABEL_104;
  }

  while (1)
  {
    __break(1u);
LABEL_106:
    __break(1u);
LABEL_107:
    swift_unknownObjectRelease();
    v15 = v61;
    v10 = v5;
LABEL_22:
    specialized _copyCollectionToContiguousArray<A>(_:)(v2, v15, v1, v4);
    v1 = v18;
LABEL_29:
    swift_unknownObjectRelease();
LABEL_30:
    v63 = DuplicateIn5scale13reservedScaleACSg04hashD0_5IndexQz3endtx_SiSgSitSkRzSH7ElementRpzlFZSayAA6SGEdgeCG_Tt3g5Tm;
    v64 = v1;
    if (v9 < v10)
    {
      goto LABEL_102;
    }

    if (v8)
    {
      v21 = __CocoaSet.count.getter();
    }

    else
    {
      v21 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v21 < v9)
    {
      goto LABEL_103;
    }

    if (!v3)
    {

      goto LABEL_41;
    }

    if (v10 < v9)
    {
      break;
    }

LABEL_104:
    __break(1u);
  }

  type metadata accessor for SGEdge();

  v22 = v10;
  do
  {
    v3 = (v22 + 1);
    _ArrayBuffer._typeCheckSlowPath(_:)(v22);
    v22 = v3;
  }

  while (v9 != v3);
LABEL_41:

  if (v8)
  {
    _CocoaArrayWrapper.subscript.getter();
    v59 = v23;
    v10 = v24;
    v26 = v25;

    v9 = v26 >> 1;
  }

  else
  {
    v59 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  }

  v2 = DuplicateIn5scale13reservedScaleACSg04hashD0_5IndexQz3endtx_SiSgSitSkRzSH7ElementRpzlFZSayAA6SGEdgeCG_Tt3g5Tm;
  a1 = DuplicateIn5scale13reservedScaleACSg04hashD0_5IndexQz3endtx_SiSgSitSkRzSH7ElementRpzlFZSayAA6SGEdgeCG_Tt3g5Tm;
  if (v10 == v9)
  {
    goto LABEL_93;
  }

  v57 = v9;
  while (1)
  {
    if (v10 >= v9)
    {
LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
LABEL_98:
      __break(1u);
      goto LABEL_99;
    }

    v2 = *(v59 + 8 * v10);
    v5 = v63;
    v3 = (v64 + 32);
    if (!v63)
    {
      v54 = *(v64 + 16);
      v55 = v2;
      if (v54)
      {
        v1 = v55;
        v8 = v2;
        a1 = type metadata accessor for SGEdge();
        while (1)
        {
          v2 = *v3;
          v4 = static NSObject.== infix(_:_:)();

          if (v4)
          {
            break;
          }

          ++v3;
          if (!--v54)
          {
            v4 = 0;
            v2 = v8;
            goto LABEL_90;
          }
        }

        goto LABEL_47;
      }

      v4 = 0;
      goto LABEL_90;
    }

    v60 = v10;
    v27 = (v63 + 16);
    v1 = *(v63 + 16);
    v28 = v2;

    a1 = v28;
    v29 = NSObject._rawHashValue(seed:)(v1);
    v30 = 1 << *v27;
    v31 = __OFSUB__(v30, 1);
    v32 = v30 - 1;
    if (v31)
    {
      goto LABEL_98;
    }

    v58 = v2;
    v4 = v32 & v29;
    v33 = _HashTable.UnsafeHandle._startIterator(bucket:)(v32 & v29, (v5 + 16), v5 + 32);
    if (!v33)
    {
LABEL_88:

      v9 = v57;
      v2 = v58;
      v10 = v60;
LABEL_90:
      a1 = &v63;
      specialized OrderedSet._appendNew(_:in:)(v2, v4);

      goto LABEL_47;
    }

    v36 = v34;
    v2 = v35;
    v37 = -1 << *(v5 + 16);
    v38 = (v37 ^ ~v33) + (*(v5 + 24) >> 6);
    v39 = v38 >= ~v37 ? ~v37 : 0;
    v40 = v38 - v39;
    a1 = type metadata accessor for SGEdge();
    v8 = v3[v40];
    v1 = static NSObject.== infix(_:_:)();

    if ((v1 & 1) == 0)
    {
      break;
    }

LABEL_46:

    v9 = v57;
    v10 = v60;
LABEL_47:
    if (++v10 == v9)
    {
      a1 = v63;
LABEL_93:
      swift_unknownObjectRelease();

      return a1;
    }
  }

  LODWORD(v61) = 0;
  while (1)
  {
    ++v4;
    v41 = *v27 & 0x3FLL;
    v42 = 1 << *v27;
    if (v4 != v42)
    {
      goto LABEL_60;
    }

    if (v61)
    {
      break;
    }

    v4 = 0;
    LODWORD(v61) = 1;
LABEL_60:
    if (v2 >= v41)
    {
      v50 = (v42 - 1) & v36;
      v36 >>= v41;
      v2 -= v41;
      if (!v50)
      {
        goto LABEL_88;
      }
    }

    else
    {
      v43 = (v4 * v41) >> 6;
      if (v2)
      {
        if (__OFADD__(v41 << v41, 64))
        {
          goto LABEL_97;
        }

        v44 = (v41 << v41) + 126;
        if ((v41 << v41) + 64 >= 1)
        {
          v44 = (v41 << v41) + 63;
        }

        if (v43 + 1 == v44 >> 6)
        {
          v43 = 0;
        }

        else
        {
          ++v43;
        }
      }

      v45 = v41 - v2;
      if (__OFSUB__(v41, v2))
      {
        __break(1u);
LABEL_95:
        __break(1u);
        goto LABEL_96;
      }

      v46 = v43 == 2 && v41 == 5;
      v47 = 64;
      if (v46)
      {
        v47 = 32;
      }

      v31 = __OFSUB__(v47, v45);
      v48 = v47 - v45;
      if (v31)
      {
        goto LABEL_95;
      }

      v49 = *(v5 + 32 + 8 * v43);
      v50 = ((v49 << v2) | v36) & (v42 - 1);
      v36 = v49 >> v45;
      v2 = v48;
      if (!v50)
      {
        goto LABEL_88;
      }
    }

    v51 = -1 << v41;
    v52 = (v51 ^ ~v50) + (*(v5 + 24) >> 6);
    if (v52 >= ~v51)
    {
      v53 = ~v51;
    }

    else
    {
      v53 = 0;
    }

    v1 = v3[v52 - v53];
    v8 = static NSObject.== infix(_:_:)();

    if (v8)
    {
      goto LABEL_46;
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t _s11ShaderGraph10OrderedSetVyACyxGqd__c7ElementQyd__RszSkRd__lufCAA6SGNodeC_SayAHGTt0g5(unint64_t a1)
{
  v7 = specialized default argument 1 of OrderedSet._extractSubset(using:extraCapacity:)();
  DuplicateIn5scale13reservedScaleACSg04hashD0_5IndexQz3endtx_SiSgSitSkRzSH7ElementRpzlFZSayAA6SGEdgeCG_Tt3g5Tm = _s11ShaderGraph10_HashTableV6create21untilFirstDuplicateIn5scale13reservedScaleACSg04hashD0_5IndexQz3endtx_SiSgSitSkRzSH7ElementRpzlFZSayAA6SGEdgeCG_Tt3g5Tm(&v62, a1, 0, 1, v7, type metadata accessor for SGNode, partial apply for specialized closure #1 in Sequence<>.contains(_:), specialized Sequence.contains(where:));
  v8 = (a1 >> 62);
  if (!(a1 >> 62))
  {
    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_3;
  }

LABEL_99:
  v9 = __CocoaSet.count.getter();
LABEL_3:
  v10 = v62;
  if (v62 == v9)
  {
    _ss15ContiguousArrayVyAByxGqd__c7ElementQyd__RszSTRd__lufC11ShaderGraph6SGEdgeC_SayAHGTt0g5Tm(a1, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC11ShaderGraph6SGNodeC_Tt1g5, specialized Array._copyContents(initializing:));
    return DuplicateIn5scale13reservedScaleACSg04hashD0_5IndexQz3endtx_SiSgSitSkRzSH7ElementRpzlFZSayAA6SGEdgeCG_Tt3g5Tm;
  }

  if (v62 < 0)
  {
    __break(1u);
    goto LABEL_101;
  }

  if (!v8)
  {
    v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_13;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    v1 = a1;
  }

  else
  {
    v1 = a1 & 0xFFFFFFFFFFFFFF8;
  }

  if ((__CocoaSet.count.getter() & 0x8000000000000000) == 0)
  {
    v12 = __CocoaSet.count.getter();
LABEL_13:
    if (v12 >= v10)
    {
      v3 = (a1 & 0xC000000000000001);
      if ((a1 & 0xC000000000000001) != 0 && v10)
      {
        type metadata accessor for SGNode();

        v13 = 0;
        do
        {
          v14 = v13 + 1;
          _ArrayBuffer._typeCheckSlowPath(_:)(v13);
          v13 = v14;
        }

        while (v10 != v14);
        if (!v8)
        {
LABEL_19:
          v1 = 0;
          v2 = a1 & 0xFFFFFFFFFFFFFF8;
          v15 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
          v4 = (2 * v10) | 1;
          goto LABEL_23;
        }
      }

      else
      {

        if (!v8)
        {
          goto LABEL_19;
        }
      }

      v2 = _CocoaArrayWrapper.subscript.getter();
      v1 = v16;
      v4 = v17;
      if ((v17 & 1) == 0)
      {
        goto LABEL_22;
      }

LABEL_23:
      v5 = v10;
      v61 = v15;
      type metadata accessor for __ContiguousArrayStorageBase();
      swift_unknownObjectRetain_n();
      v19 = swift_dynamicCastClass();
      if (!v19)
      {
        swift_unknownObjectRelease();
        v19 = MEMORY[0x277D84F90];
      }

      v20 = *(v19 + 16);

      if (!__OFSUB__(v4 >> 1, v1))
      {
        if (v20 == (v4 >> 1) - v1)
        {
          v1 = swift_dynamicCastClass();
          swift_unknownObjectRelease();
          v10 = v5;
          if (!v1)
          {
            v1 = MEMORY[0x277D84F90];
            goto LABEL_29;
          }

          goto LABEL_30;
        }

        goto LABEL_107;
      }

      goto LABEL_106;
    }

LABEL_101:
    __break(1u);
LABEL_102:
    __break(1u);
LABEL_103:
    __break(1u);
    goto LABEL_104;
  }

  while (1)
  {
    __break(1u);
LABEL_106:
    __break(1u);
LABEL_107:
    swift_unknownObjectRelease();
    v15 = v61;
    v10 = v5;
LABEL_22:
    specialized _copyCollectionToContiguousArray<A>(_:)(v2, v15, v1, v4);
    v1 = v18;
LABEL_29:
    swift_unknownObjectRelease();
LABEL_30:
    v63 = DuplicateIn5scale13reservedScaleACSg04hashD0_5IndexQz3endtx_SiSgSitSkRzSH7ElementRpzlFZSayAA6SGEdgeCG_Tt3g5Tm;
    v64 = v1;
    if (v9 < v10)
    {
      goto LABEL_102;
    }

    if (v8)
    {
      v21 = __CocoaSet.count.getter();
    }

    else
    {
      v21 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v21 < v9)
    {
      goto LABEL_103;
    }

    if (!v3)
    {

      goto LABEL_41;
    }

    if (v10 < v9)
    {
      break;
    }

LABEL_104:
    __break(1u);
  }

  type metadata accessor for SGNode();

  v22 = v10;
  do
  {
    v3 = (v22 + 1);
    _ArrayBuffer._typeCheckSlowPath(_:)(v22);
    v22 = v3;
  }

  while (v9 != v3);
LABEL_41:

  if (v8)
  {
    _CocoaArrayWrapper.subscript.getter();
    v59 = v23;
    v10 = v24;
    v26 = v25;

    v9 = v26 >> 1;
  }

  else
  {
    v59 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  }

  v2 = DuplicateIn5scale13reservedScaleACSg04hashD0_5IndexQz3endtx_SiSgSitSkRzSH7ElementRpzlFZSayAA6SGEdgeCG_Tt3g5Tm;
  a1 = DuplicateIn5scale13reservedScaleACSg04hashD0_5IndexQz3endtx_SiSgSitSkRzSH7ElementRpzlFZSayAA6SGEdgeCG_Tt3g5Tm;
  if (v10 == v9)
  {
    goto LABEL_93;
  }

  v57 = v9;
  while (1)
  {
    if (v10 >= v9)
    {
LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
LABEL_98:
      __break(1u);
      goto LABEL_99;
    }

    v2 = *(v59 + 8 * v10);
    v5 = v63;
    v3 = (v64 + 32);
    if (!v63)
    {
      v54 = *(v64 + 16);
      v55 = v2;
      if (v54)
      {
        v1 = v55;
        v8 = v2;
        a1 = type metadata accessor for SGNode();
        while (1)
        {
          v2 = *v3;
          v4 = static NSObject.== infix(_:_:)();

          if (v4)
          {
            break;
          }

          ++v3;
          if (!--v54)
          {
            v4 = 0;
            v2 = v8;
            goto LABEL_90;
          }
        }

        goto LABEL_47;
      }

      v4 = 0;
      goto LABEL_90;
    }

    v60 = v10;
    v27 = (v63 + 16);
    v1 = *(v63 + 16);
    v28 = v2;

    a1 = v28;
    v29 = NSObject._rawHashValue(seed:)(v1);
    v30 = 1 << *v27;
    v31 = __OFSUB__(v30, 1);
    v32 = v30 - 1;
    if (v31)
    {
      goto LABEL_98;
    }

    v58 = v2;
    v4 = v32 & v29;
    v33 = _HashTable.UnsafeHandle._startIterator(bucket:)(v32 & v29, (v5 + 16), v5 + 32);
    if (!v33)
    {
LABEL_88:

      v9 = v57;
      v2 = v58;
      v10 = v60;
LABEL_90:
      a1 = &v63;
      specialized OrderedSet._appendNew(_:in:)(v2, v4);

      goto LABEL_47;
    }

    v36 = v34;
    v2 = v35;
    v37 = -1 << *(v5 + 16);
    v38 = (v37 ^ ~v33) + (*(v5 + 24) >> 6);
    v39 = v38 >= ~v37 ? ~v37 : 0;
    v40 = v38 - v39;
    a1 = type metadata accessor for SGNode();
    v8 = v3[v40];
    v1 = static NSObject.== infix(_:_:)();

    if ((v1 & 1) == 0)
    {
      break;
    }

LABEL_46:

    v9 = v57;
    v10 = v60;
LABEL_47:
    if (++v10 == v9)
    {
      a1 = v63;
LABEL_93:
      swift_unknownObjectRelease();

      return a1;
    }
  }

  LODWORD(v61) = 0;
  while (1)
  {
    ++v4;
    v41 = *v27 & 0x3FLL;
    v42 = 1 << *v27;
    if (v4 != v42)
    {
      goto LABEL_60;
    }

    if (v61)
    {
      break;
    }

    v4 = 0;
    LODWORD(v61) = 1;
LABEL_60:
    if (v2 >= v41)
    {
      v50 = (v42 - 1) & v36;
      v36 >>= v41;
      v2 -= v41;
      if (!v50)
      {
        goto LABEL_88;
      }
    }

    else
    {
      v43 = (v4 * v41) >> 6;
      if (v2)
      {
        if (__OFADD__(v41 << v41, 64))
        {
          goto LABEL_97;
        }

        v44 = (v41 << v41) + 126;
        if ((v41 << v41) + 64 >= 1)
        {
          v44 = (v41 << v41) + 63;
        }

        if (v43 + 1 == v44 >> 6)
        {
          v43 = 0;
        }

        else
        {
          ++v43;
        }
      }

      v45 = v41 - v2;
      if (__OFSUB__(v41, v2))
      {
        __break(1u);
LABEL_95:
        __break(1u);
        goto LABEL_96;
      }

      v46 = v43 == 2 && v41 == 5;
      v47 = 64;
      if (v46)
      {
        v47 = 32;
      }

      v31 = __OFSUB__(v47, v45);
      v48 = v47 - v45;
      if (v31)
      {
        goto LABEL_95;
      }

      v49 = *(v5 + 32 + 8 * v43);
      v50 = ((v49 << v2) | v36) & (v42 - 1);
      v36 = v49 >> v45;
      v2 = v48;
      if (!v50)
      {
        goto LABEL_88;
      }
    }

    v51 = -1 << v41;
    v52 = (v51 ^ ~v50) + (*(v5 + 24) >> 6);
    if (v52 >= ~v51)
    {
      v53 = ~v51;
    }

    else
    {
      v53 = 0;
    }

    v1 = v3[v52 - v53];
    v8 = static NSObject.== infix(_:_:)();

    if (v8)
    {
      goto LABEL_46;
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

unint64_t *_s11ShaderGraph10_HashTableV6create21untilFirstDuplicateIn5scale13reservedScaleACSg04hashD0_5IndexQz3endtx_SiSgSitSkRzSH7ElementRpzlFZSaySiG_Tt3g5(unint64_t *result, uint64_t a2, int64_t a3, char a4, uint64_t a5)
{
  v6 = result;
  v7 = *(a2 + 16);
  if (v7 < 0x10)
  {
    v10 = 0;
    goto LABEL_10;
  }

  v8 = ceil(v7 / 0.75);
  if (v8 == INFINITY)
  {
    __break(1u);
    goto LABEL_32;
  }

  if (v8 <= -9.22337204e18)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (v8 >= 9.22337204e18)
  {
LABEL_33:
    __break(1u);
    return result;
  }

  if ((v7 + 1) > v8)
  {
    v9 = v7 + 1;
  }

  else
  {
    v9 = v8;
  }

  v10 = 64 - __clz(v9 - 1);
LABEL_10:
  if (a4)
  {
    v11 = 0;
  }

  else
  {
    v11 = a3;
  }

  if (v10 <= v11)
  {
    v10 = v11;
  }

  if (v10 <= a5)
  {
    v12 = a5;
  }

  else
  {
    v12 = v10;
  }

  if (v12 > 4)
  {
    v13 = specialized _HashTable.init(scale:reservedScale:)(v12, a5);
    specialized _HashTable.UnsafeHandle.fill<A>(untilFirstDuplicateIn:)(&v29, a2, (v13 + 16), v13 + 32);
    result = v13;
    *v6 = v29;
  }

  else
  {
    if (v7 >= 2)
    {
      v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a2 + 16), 0, MEMORY[0x277D84F90]);
      v15 = 0;
      v16 = a2 + 32;
      do
      {
        v17 = 0;
        v18 = v15++;
        v19 = *(v16 + 8 * v18);
        v20 = *(v14 + 2);
        while (v20 != v17)
        {
          v21 = &v14[8 * v17++];
          if (*(v21 + 4) == v19)
          {

            result = 0;
            *v6 = v18;
            return result;
          }
        }

        v22 = *(v14 + 3);
        v23 = v20 + 1;
        if (v20 >= v22 >> 1)
        {
          v27 = v19;
          v28 = v16;
          v25 = *(v14 + 2);
          v26 = v15;
          v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v20 + 1, 1, v14);
          v20 = v25;
          v15 = v26;
          v19 = v27;
          v16 = v28;
          v14 = v24;
        }

        *(v14 + 2) = v23;
        *&v14[8 * v20 + 32] = v19;
      }

      while (v15 != v7);
    }

    result = 0;
    *v6 = v7;
  }

  return result;
}

unint64_t *_s11ShaderGraph10_HashTableV6create21untilFirstDuplicateIn5scale13reservedScaleACSg04hashD0_5IndexQz3endtx_SiSgSitSkRzSH7ElementRpzlFZs15ContiguousArrayVyAA5InputVG_Tt3g5Tm(unint64_t *result, uint64_t a2, int64_t a3, char a4, uint64_t a5, uint64_t (*a6)(void), uint64_t a7, uint64_t (*a8)(uint64_t, void *, uint64_t))
{
  v41 = a7;
  v42 = a8;
  v9 = result;
  v10 = 0;
  v11 = *(a2 + 16);
  if (v11 < 0x10)
  {
    goto LABEL_9;
  }

  v12 = ceil(v11 / 0.75);
  if (v12 == INFINITY)
  {
    __break(1u);
    goto LABEL_31;
  }

  if (v12 <= -9.22337204e18)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v12 >= 9.22337204e18)
  {
LABEL_32:
    __break(1u);
    return result;
  }

  if ((v11 + 1) > v12)
  {
    v13 = v11 + 1;
  }

  else
  {
    v13 = v12;
  }

  v10 = 64 - __clz(v13 - 1);
LABEL_9:
  if (a4)
  {
    v14 = 0;
  }

  else
  {
    v14 = a3;
  }

  if (v10 <= v14)
  {
    v10 = v14;
  }

  if (v10 <= a5)
  {
    v15 = a5;
  }

  else
  {
    v15 = v10;
  }

  if (v15 > 4)
  {
    v16 = specialized _HashTable.init(scale:reservedScale:)(v15, a5);
    specialized _HashTable.UnsafeHandle.fill<A>(untilFirstDuplicateIn:)(v46, a2, (v16 + 16), v16 + 32);
    result = v16;
    *v9 = v46[0];
  }

  else if (v11 >= 2)
  {
    v39 = v9;
    v38 = a6;
    v17 = (a6)(0, v11, 0, MEMORY[0x277D84F90]);
    v18 = v17;
    v19 = 0;
    v45 = 0;
    v20 = (a2 + 80);
    v40 = v11;
    while (1)
    {
      v44 = &v38;
      v21 = *(v20 - 5);
      v22 = *(v20 - 4);
      v23 = *(v20 - 3);
      v24 = *(v20 - 2);
      v25 = *(v20 - 8);
      v26 = *v20;
      v43 = *(v20 - 6);
      v46[0] = v43;
      v46[1] = v21;
      v46[2] = v22;
      v46[3] = v23;
      v46[4] = v24;
      v47 = v25;
      v48 = v26;
      MEMORY[0x28223BE20](v17);
      v37[2] = v46;

      v27 = v18;
      v28 = v18;
      v29 = v45;
      if (v42(v41, v37, v27))
      {
        break;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v31 = v28;
      v45 = v29;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v31 = (v38)(0, *(v28 + 16) + 1, 1);
      }

      v44 = v22;
      v33 = *(v31 + 16);
      v32 = *(v31 + 24);
      v18 = v31;
      if (v33 >= v32 >> 1)
      {
        v18 = v38(v32 > 1);
      }

      ++v19;
      v20 += 7;

      *(v18 + 16) = v33 + 1;
      v34 = v18 + 56 * v33;
      v35 = v44;
      *(v34 + 32) = v43;
      *(v34 + 40) = v21;
      *(v34 + 48) = v35;
      *(v34 + 56) = v23;
      *(v34 + 64) = v24;
      *(v34 + 72) = v25;
      *(v34 + 80) = v26;
      v36 = v40;
      if (v40 == v19)
      {

        result = 0;
        *v39 = v36;
        return result;
      }
    }

    result = 0;
    *v39 = v19;
  }

  else
  {
    result = 0;
    *v9 = v11;
  }

  return result;
}

unint64_t *_s11ShaderGraph10_HashTableV6create21untilFirstDuplicateIn5scale13reservedScaleACSg04hashD0_5IndexQz3endtx_SiSgSitSkRzSH7ElementRpzlFZSayAA5InputVG_Tt3g5(unint64_t *result, uint64_t a2, int64_t a3, char a4, uint64_t a5)
{
  v6 = result;
  v7 = 0;
  v8 = *(a2 + 16);
  if (v8 < 0x10)
  {
    goto LABEL_9;
  }

  v9 = ceil(v8 / 0.75);
  if (v9 == INFINITY)
  {
    __break(1u);
    goto LABEL_31;
  }

  if (v9 <= -9.22337204e18)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v9 >= 9.22337204e18)
  {
LABEL_32:
    __break(1u);
    return result;
  }

  if ((v8 + 1) > v9)
  {
    v10 = v8 + 1;
  }

  else
  {
    v10 = v9;
  }

  v7 = 64 - __clz(v10 - 1);
LABEL_9:
  if (a4)
  {
    v11 = 0;
  }

  else
  {
    v11 = a3;
  }

  if (v7 <= v11)
  {
    v7 = v11;
  }

  if (v7 <= a5)
  {
    v12 = a5;
  }

  else
  {
    v12 = v7;
  }

  if (v12 > 4)
  {
    v13 = specialized _HashTable.init(scale:reservedScale:)(v12, a5);
    specialized _HashTable.UnsafeHandle.fill<A>(untilFirstDuplicateIn:)(v41, a2, (v13 + 16), v13 + 32);
    result = v13;
    *v6 = v41[0];
  }

  else if (v8 >= 2)
  {
    v36 = v6;
    v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8, 0, MEMORY[0x277D84F90]);
    v15 = v14;
    v16 = 0;
    v40 = 0;
    v17 = (a2 + 80);
    v37 = v8;
    while (1)
    {
      v39 = &v35;
      v18 = *(v17 - 5);
      v20 = *(v17 - 4);
      v19 = *(v17 - 3);
      v21 = *(v17 - 2);
      v22 = *(v17 - 8);
      v23 = *v17;
      v38 = *(v17 - 6);
      v41[0] = v38;
      v41[1] = v18;
      v41[2] = v20;
      v41[3] = v19;
      v41[4] = v21;
      v42 = v22;
      v43 = v23;
      MEMORY[0x28223BE20](v14);
      v34[2] = v41;

      v24 = v15;
      v25 = v15;
      v26 = v40;
      if (specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v34, v24))
      {
        break;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v28 = v25;
      v40 = v26;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v25 + 2) + 1, 1, v25);
      }

      v39 = v20;
      v30 = *(v28 + 2);
      v29 = *(v28 + 3);
      v15 = v28;
      if (v30 >= v29 >> 1)
      {
        v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1, v28);
      }

      ++v16;
      v17 += 7;

      *(v15 + 2) = v30 + 1;
      v31 = &v15[56 * v30];
      v32 = v39;
      *(v31 + 4) = v38;
      *(v31 + 5) = v18;
      *(v31 + 6) = v32;
      *(v31 + 7) = v19;
      *(v31 + 8) = v21;
      v31[72] = v22;
      *(v31 + 10) = v23;
      v33 = v37;
      if (v37 == v16)
      {

        result = 0;
        *v36 = v33;
        return result;
      }
    }

    result = 0;
    *v36 = v16;
  }

  else
  {
    result = 0;
    *v6 = v8;
  }

  return result;
}

unint64_t *_s11ShaderGraph10_HashTableV6create21untilFirstDuplicateIn5scale13reservedScaleACSg04hashD0_5IndexQz3endtx_SiSgSitSkRzSH7ElementRpzlFZSaySOG_Tt3g5(unint64_t *result, uint64_t a2, int64_t a3, char a4, uint64_t a5)
{
  v6 = result;
  v7 = *(a2 + 16);
  if (v7 < 0x10)
  {
    v10 = 0;
    goto LABEL_10;
  }

  v8 = ceil(v7 / 0.75);
  if (v8 == INFINITY)
  {
    __break(1u);
    goto LABEL_32;
  }

  if (v8 <= -9.22337204e18)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (v8 >= 9.22337204e18)
  {
LABEL_33:
    __break(1u);
    return result;
  }

  if ((v7 + 1) > v8)
  {
    v9 = v7 + 1;
  }

  else
  {
    v9 = v8;
  }

  v10 = 64 - __clz(v9 - 1);
LABEL_10:
  if (a4)
  {
    v11 = 0;
  }

  else
  {
    v11 = a3;
  }

  if (v10 <= v11)
  {
    v10 = v11;
  }

  if (v10 <= a5)
  {
    v12 = a5;
  }

  else
  {
    v12 = v10;
  }

  if (v12 > 4)
  {
    v13 = specialized _HashTable.init(scale:reservedScale:)(v12, a5);
    specialized _HashTable.UnsafeHandle.fill<A>(untilFirstDuplicateIn:)(&v29, a2, (v13 + 16), v13 + 32);
    result = v13;
    *v6 = v29;
  }

  else
  {
    if (v7 >= 2)
    {
      v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a2 + 16), 0, MEMORY[0x277D84F90]);
      v15 = 0;
      v16 = a2 + 32;
      do
      {
        v17 = 0;
        v18 = v15++;
        v19 = *(v16 + 8 * v18);
        v20 = *(v14 + 2);
        while (v20 != v17)
        {
          v21 = &v14[8 * v17++];
          if (*(v21 + 4) == v19)
          {

            result = 0;
            *v6 = v18;
            return result;
          }
        }

        v22 = *(v14 + 3);
        v23 = v20 + 1;
        if (v20 >= v22 >> 1)
        {
          v27 = v19;
          v28 = v16;
          v25 = *(v14 + 2);
          v26 = v15;
          v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v20 + 1, 1, v14);
          v20 = v25;
          v15 = v26;
          v19 = v27;
          v16 = v28;
          v14 = v24;
        }

        *(v14 + 2) = v23;
        *&v14[8 * v20 + 32] = v19;
      }

      while (v15 != v7);
    }

    result = 0;
    *v6 = v7;
  }

  return result;
}

uint64_t _s11ShaderGraph10_HashTableV6create21untilFirstDuplicateIn5scale13reservedScaleACSg04hashD0_5IndexQz3endtx_SiSgSitSkRzSH7ElementRpzlFZSayAA6SGEdgeCG_Tt3g5Tm(unint64_t *a1, unint64_t a2, uint64_t a3, char a4, uint64_t a5, unint64_t *a6, uint64_t a7, uint64_t (*a8)(uint64_t, double))
{
  v31 = a8;
  LOBYTE(v11) = a4;
  v15 = (a2 >> 62);
  if (a2 >> 62)
  {
LABEL_38:
    v16 = __CocoaSet.count.getter();
  }

  else
  {
    v16 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v17 = specialized static _HashTable.scale(forCapacity:)(v16);
  if (v11)
  {
    v18 = 0;
  }

  else
  {
    v18 = a3;
  }

  if (v17 > v18)
  {
    v18 = v17;
  }

  if (v18 <= a5)
  {
    v19 = a5;
  }

  else
  {
    v19 = v18;
  }

  if (v19 > 4)
  {
    v21 = specialized _HashTable.init(scale:reservedScale:)(v19, a5);
    specialized _HashTable.UnsafeHandle.fill<A>(untilFirstDuplicateIn:)(&v33, a2, (v21 + 16), v21 + 32, a6);
    result = v21;
    v20 = v33;
LABEL_19:
    *a1 = v20;
    return result;
  }

  if (!v15)
  {
    v20 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v20 >= 2)
    {
      v33 = MEMORY[0x277D84F90];
      a6 = &v33;
      specialized Array.reserveCapacity(_:)(v20);
      a3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_21;
    }

    goto LABEL_18;
  }

  if (__CocoaSet.count.getter() < 2)
  {
    v20 = __CocoaSet.count.getter();
LABEL_18:
    result = 0;
    goto LABEL_19;
  }

  v33 = MEMORY[0x277D84F90];
  v23 = __CocoaSet.count.getter();
  a6 = &v33;
  specialized Array.reserveCapacity(_:)(v23);
  result = __CocoaSet.count.getter();
  a3 = result;
  if (result < 0)
  {
    __break(1u);
    return result;
  }

LABEL_21:
  v29 = v15;
  v30 = a1;
  if (a3)
  {
    v11 = 0;
    a5 = 0;
    do
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v24 = MEMORY[0x266772030](v11, a2);
      }

      else
      {
        if (v11 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_38;
        }

        v24 = *(a2 + 8 * v11 + 32);
      }

      v25 = v24;
      a1 = v28;
      v32 = v24;
      v26 = MEMORY[0x28223BE20](v24);
      if (v31(a7, v26))
      {

        result = 0;
        *v30 = v11;
        return result;
      }

      v15 = v25;
      a6 = &v33;
      MEMORY[0x266771770]();
      if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v28[1] = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      ++v11;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    while (a3 != v11);
  }

  if (v29)
  {
    v27 = __CocoaSet.count.getter();
  }

  else
  {
    v27 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = 0;
  *v30 = v27;
  return result;
}

void UserGraph.createSubgraph(labeled:inputs:outputs:)(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v7 = *(v5 + 72);
  v8 = v7 + 1;
  if (__OFADD__(v7, 1))
  {
    __break(1u);
  }

  else
  {
    *(v5 + 72) = v8;

    specialized UserGraph.init(id:label:inputs:outputs:)(v8, a1, a2, a3, a4, v18);
    v13 = v19[0];
    a5[8] = v18[8];
    a5[9] = v13;
    *(a5 + 153) = *(v19 + 9);
    v14 = v18[5];
    a5[4] = v18[4];
    a5[5] = v14;
    v15 = v18[7];
    a5[6] = v18[6];
    a5[7] = v15;
    v16 = v18[1];
    *a5 = v18[0];
    a5[1] = v16;
    v17 = v18[3];
    a5[2] = v18[2];
    a5[3] = v17;
  }
}

__n128 UserGraph.init(label:inputs:outputs:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  specialized UserGraph.init(id:label:inputs:outputs:)(0, a1, a2, a3, a4, v11);
  v6 = v12[0];
  *(a5 + 128) = v11[8];
  *(a5 + 144) = v6;
  *(a5 + 153) = *(v12 + 9);
  v7 = v11[5];
  *(a5 + 64) = v11[4];
  *(a5 + 80) = v7;
  v8 = v11[7];
  *(a5 + 96) = v11[6];
  *(a5 + 112) = v8;
  v9 = v11[1];
  *a5 = v11[0];
  *(a5 + 16) = v9;
  result = v11[3];
  *(a5 + 32) = v11[2];
  *(a5 + 48) = result;
  return result;
}

unint64_t UserGraph.node(withID:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result == -7)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0uLL;
LABEL_6:
    *a2 = v4;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v8;
    *(a2 + 40) = v7;
    return result;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v9 = *(v2 + 64);
    if (*(v9 + 16) > result)
    {
      v10 = v9 + 48 * result;
      v4 = *(v10 + 32);
      v5 = *(v10 + 40);
      v6 = *(v10 + 48);
      v11 = *(v10 + 56);
      v7 = *(v10 + 72);
      outlined copy of NodePersonality(v4);

      v8 = v11;
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

double ShaderGraphNode.input(labeled:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  specialized ShaderGraphNode.input(labeled:)(a1, a2, *(v3 + 8), v7);
  v5 = v7[1];
  *a3 = v7[0];
  *(a3 + 16) = v5;
  result = *&v8;
  *(a3 + 32) = v8;
  *(a3 + 48) = v9;
  return result;
}

__n128 Edge.init(from:to:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  *v6 = *(a1 + 48);
  v5 = *(a1 + 16);
  *&v6[8] = *a2;
  v3 = *(a1 + 32);
  *&v6[24] = *(a2 + 16);
  *&v6[40] = *(a2 + 32);
  *&v6[56] = *(a2 + 48);
  *a3 = *a1;
  a3[1] = v5;
  result = *&v6[32];
  a3[5] = *&v6[32];
  a3[6] = *&v6[48];
  a3[3] = *v6;
  a3[4] = *&v6[16];
  a3[2] = v3;
  return result;
}

Swift::Int specialized _HashTable.UnsafeHandle._find<A>(_:in:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v9 = *a4;
  Hasher.init(_seed:)();
  v10 = *a1;
  MEMORY[0x266772770](*a1);
  v36 = a1[1];
  (*(*v36 + 120))(v38);
  v34 = a1[3];
  v35 = a1[2];
  String.hash(into:)();
  v11 = a1[4];
  v32 = *(a1 + 40);
  if (v32 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x266772770](v11);
  }

  v33 = a1[6];
  MEMORY[0x266772770]();
  result = Hasher._finalize()();
  v13 = 1 << *a4;
  v14 = __OFSUB__(v13, 1);
  v15 = v13 - 1;
  if (v14)
  {
    __break(1u);
    return result;
  }

  v16 = _HashTable.UnsafeHandle.startFind(_:)(v38, v15 & result, a4, a5);
  if (v17)
  {
    return v16;
  }

  while (1)
  {
    v18 = a2 + 56 * v16;
    if (*v18 != v10)
    {
      goto LABEL_26;
    }

    v19 = *(v18 + 16);
    v20 = *(v18 + 24);
    v37 = *(v18 + 32);
    v21 = *(v18 + 40);
    v22 = *(v18 + 48);
    v23 = *(**(v18 + 8) + 128);

    if ((v23(v36) & 1) == 0)
    {

      goto LABEL_26;
    }

    if (v19 == v35 && v20 == v34)
    {

      if (v21)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v25 & 1) == 0)
      {
        goto LABEL_26;
      }

      if (v21)
      {
LABEL_14:
        v26 = v32;
        if (v22 != v33)
        {
          v26 = 0;
        }

        if (v26)
        {
          return v16;
        }

        goto LABEL_26;
      }
    }

    v27 = v32 ^ 1;
    if (v37 != v11)
    {
      v27 = 0;
    }

    if (v27 == 1 && v22 == v33)
    {
      return v16;
    }

LABEL_26:
    _HashTable.BucketIterator.advance()();
    if (!v39)
    {
      return 0;
    }

    v29 = -1 << *v38[0];
    v30 = (v29 ^ ~v39) + (*(v38[0] + 8) >> 6);
    if (v30 >= ~v29)
    {
      v31 = ~v29;
    }

    else
    {
      v31 = 0;
    }

    v16 = v30 - v31;
  }
}

Swift::Int specialized _HashTable.UnsafeHandle._find<A>(_:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v11 = *a5;
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v13 = 1 << *a5;
  v14 = __OFSUB__(v13, 1);
  v15 = v13 - 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    v16 = _HashTable.UnsafeHandle.startFind(_:)(&v26, v15 & result, a5, a6);
    v17 = v16;
    if ((v18 & 1) == 0)
    {
      v19 = (a3 + 16 * v16);
      v20 = *v19 == a1 && v19[1] == a2;
      if (!v20 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        while (1)
        {
          _HashTable.BucketIterator.advance()();
          if (!v27)
          {
            break;
          }

          v21 = -1 << *v26;
          v22 = (v21 ^ ~v27) + (v26[1] >> 6);
          if (v22 >= ~v21)
          {
            v23 = ~v21;
          }

          else
          {
            v23 = 0;
          }

          v17 = v22 - v23;
          v24 = (a3 + 16 * (v22 - v23));
          v25 = *v24 == a1 && v24[1] == a2;
          if (v25 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            return v17;
          }
        }

        return 0;
      }
    }

    return v17;
  }

  return result;
}

{
  v12 = *a5;
  Hasher.init(_seed:)();
  MEMORY[0x2667727B0](a1);
  String.hash(into:)();
  result = Hasher._finalize()();
  v14 = 1 << *a5;
  v15 = __OFSUB__(v14, 1);
  v16 = v14 - 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    v17 = _HashTable.UnsafeHandle.startFind(_:)(&v27, v16 & result, a5, a6);
    v18 = v17;
    if ((v19 & 1) == 0)
    {
      v20 = *(a4 + 16);
      if (v17 >= v20)
      {
LABEL_16:
        __break(1u);
      }

      else
      {
        v21 = a4 + 32;
        while (1)
        {
          v22 = (v21 + 24 * v18);
          if (*v22 == a1)
          {
            v23 = v22[1] == a2 && v22[2] == a3;
            if (v23 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }
          }

          _HashTable.BucketIterator.advance()();
          if (!v28)
          {
            return 0;
          }

          v24 = -1 << *v27;
          v25 = (v24 ^ ~v28) + (v27[1] >> 6);
          if (v25 >= ~v24)
          {
            v26 = ~v24;
          }

          else
          {
            v26 = 0;
          }

          v18 = v25 - v26;
          if (v25 - v26 >= v20)
          {
            goto LABEL_16;
          }
        }
      }
    }

    return v18;
  }

  return result;
}

Swift::Int specialized _HashTable.UnsafeHandle._find<A>(_:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v8 = *a4;
  Hasher.init(_seed:)();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    Hasher._combine(_:)(1u);
    v11 = v10;
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  result = Hasher._finalize()();
  v13 = 1 << *a4;
  v14 = __OFSUB__(v13, 1);
  v15 = v13 - 1;
  if (v14)
  {
    __break(1u);
    return result;
  }

  v16 = _HashTable.UnsafeHandle.startFind(_:)(&v26, v15 & result, a4, a5);
  if (v17)
  {
    return v16;
  }

  while (1)
  {
    outlined init with copy of [Input](a2 + 8 * v16, v25, &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGMd, &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGMR);
    v18 = swift_unknownObjectWeakLoadStrong();
    v19 = swift_unknownObjectWeakLoadStrong();
    v20 = v19;
    if (!v18)
    {
      outlined destroy of [Input](v25, &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGMd, &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGMR);
      if (!v20)
      {
        return v16;
      }

      goto LABEL_13;
    }

    if (!v19)
    {
      outlined destroy of [Input](v25, &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGMd, &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGMR);
      v20 = v18;
LABEL_13:

      goto LABEL_14;
    }

    type metadata accessor for SGEdge();
    v21 = static NSObject.== infix(_:_:)();
    outlined destroy of [Input](v25, &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGMd, &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGMR);

    if (v21)
    {
      return v16;
    }

LABEL_14:
    _HashTable.BucketIterator.advance()();
    if (!v27)
    {
      return 0;
    }

    v22 = -1 << *v26;
    v23 = (v22 ^ ~v27) + (v26[1] >> 6);
    if (v23 >= ~v22)
    {
      v24 = ~v22;
    }

    else
    {
      v24 = 0;
    }

    v16 = v23 - v24;
  }
}

unint64_t specialized _HashTable.UnsafeHandle._find<A>(_:in:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v9 = *a4;
  result = MEMORY[0x266772750](*a4, a1);
  if (__OFSUB__(1 << v9, 1))
  {
    __break(1u);
  }

  else
  {
    result = _HashTable.UnsafeHandle.startFind(_:)(&v15, ((1 << v9) - 1) & result, a4, a5);
    if ((v11 & 1) == 0 && *(a2 + 8 * result) != a1)
    {
      while (1)
      {
        _HashTable.BucketIterator.advance()();
        if (!v16)
        {
          break;
        }

        v12 = -1 << *v15;
        v13 = (v12 ^ ~v16) + (v15[1] >> 6);
        if (v13 >= ~v12)
        {
          v14 = ~v12;
        }

        else
        {
          v14 = 0;
        }

        result = v13 - v14;
        if (*(a2 + 8 * (v13 - v14)) == a1)
        {
          return result;
        }
      }

      return 0;
    }
  }

  return result;
}

{
  v9 = *a4;
  result = MEMORY[0x266772750](*a4, a1);
  if (__OFSUB__(1 << v9, 1))
  {
    __break(1u);
  }

  else
  {
    result = _HashTable.UnsafeHandle.startFind(_:)(&v15, ((1 << v9) - 1) & result, a4, a5);
    if ((v11 & 1) == 0 && *(a2 + 8 * result) != a1)
    {
      while (1)
      {
        _HashTable.BucketIterator.advance()();
        if (!v16)
        {
          break;
        }

        v12 = -1 << *v15;
        v13 = (v12 ^ ~v16) + (v15[1] >> 6);
        if (v13 >= ~v12)
        {
          v14 = ~v12;
        }

        else
        {
          v14 = 0;
        }

        result = v13 - v14;
        if (*(a2 + 8 * (v13 - v14)) == a1)
        {
          return result;
        }
      }

      return 0;
    }
  }

  return result;
}

Swift::Int specialized _HashTable.UnsafeHandle._find<A>(_:in:)(uint64_t a1, uint64_t a2, uint64_t a3, Swift::Int *a4, uint64_t a5)
{
  result = NSObject._rawHashValue(seed:)(*a4);
  v9 = 1 << *a4;
  v10 = __OFSUB__(v9, 1);
  v11 = v9 - 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    v12 = _HashTable.UnsafeHandle.startFind(_:)(&v21, v11 & result, a4, a5);
    if ((v13 & 1) == 0)
    {
      type metadata accessor for SGNode();
      v14 = *(a2 + 8 * v12);
      v15 = static NSObject.== infix(_:_:)();

      if ((v15 & 1) == 0)
      {
        while (1)
        {
          _HashTable.BucketIterator.advance()();
          if (!v22)
          {
            break;
          }

          v16 = -1 << *v21;
          v17 = (v16 ^ ~v22) + (v21[1] >> 6);
          if (v17 >= ~v16)
          {
            v18 = ~v16;
          }

          else
          {
            v18 = 0;
          }

          v12 = v17 - v18;
          v19 = *(a2 + 8 * (v17 - v18));
          v20 = static NSObject.== infix(_:_:)();

          if (v20)
          {
            return v12;
          }
        }

        return 0;
      }
    }

    return v12;
  }

  return result;
}

Swift::Int specialized _HashTable.UnsafeHandle._find<A>(_:in:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7)
{
  v13 = *a6;
  Hasher.init(_seed:)();
  MEMORY[0x266772770](a3 & 1);
  String.hash(into:)();
  result = Hasher._finalize()();
  v15 = 1 << *a6;
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
    return result;
  }

  v18 = _HashTable.UnsafeHandle.startFind(_:)(&v25, v17 & result, a6, a7);
  if (v19)
  {
    return v18;
  }

  while (1)
  {
    v20 = a4 + 24 * v18;
    if (*(v20 + 16))
    {
      if ((a3 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else if (a3)
    {
      goto LABEL_12;
    }

    v21 = *v20 == a1 && *(v20 + 8) == a2;
    if (v21 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      return v18;
    }

LABEL_12:
    _HashTable.BucketIterator.advance()();
    if (!v26)
    {
      return 0;
    }

    v22 = -1 << *v25;
    v23 = (v22 ^ ~v26) + (v25[1] >> 6);
    if (v23 >= ~v22)
    {
      v24 = ~v22;
    }

    else
    {
      v24 = 0;
    }

    v18 = v23 - v24;
  }
}

Swift::Int specialized _HashTable.UnsafeHandle._find<A>(_:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7)
{
  v13 = *a6;
  Hasher.init(_seed:)();
  MEMORY[0x2667727B0](a1);
  String.hash(into:)();
  result = Hasher._finalize()();
  v15 = 1 << *a6;
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    v18 = _HashTable.UnsafeHandle.startFind(_:)(&v25, v17 & result, a6, a7);
    if ((v19 & 1) == 0)
    {
      while (1)
      {
        v20 = (a4 + 24 * v18);
        if (*v20 == a1)
        {
          v21 = v20[1] == a2 && v20[2] == a3;
          if (v21 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }
        }

        _HashTable.BucketIterator.advance()();
        if (!v26)
        {
          return 0;
        }

        v22 = -1 << *v25;
        v23 = (v22 ^ ~v26) + (v25[1] >> 6);
        if (v23 >= ~v22)
        {
          v24 = ~v22;
        }

        else
        {
          v24 = 0;
        }

        v18 = v23 - v24;
      }
    }

    return v18;
  }

  return result;
}

unint64_t specialized _HashTable.UnsafeHandle._find<A>(_:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v9 = *a4;
  Hasher.init(_seed:)();
  MEMORY[0x266772770](a1);
  result = Hasher._finalize()();
  v11 = 1 << *a4;
  v12 = __OFSUB__(v11, 1);
  v13 = v11 - 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    result = _HashTable.UnsafeHandle.startFind(_:)(&v18, v13 & result, a4, a5);
    if ((v14 & 1) == 0 && *(a2 + 8 * result) != a1)
    {
      while (1)
      {
        _HashTable.BucketIterator.advance()();
        if (!v19)
        {
          break;
        }

        v15 = -1 << *v18;
        v16 = (v15 ^ ~v19) + (v18[1] >> 6);
        if (v16 >= ~v15)
        {
          v17 = ~v15;
        }

        else
        {
          v17 = 0;
        }

        result = v16 - v17;
        if (*(a2 + 8 * (v16 - v17)) == a1)
        {
          return result;
        }
      }

      return 0;
    }
  }

  return result;
}

uint64_t specialized _HashTable.UnsafeHandle.fill<A>(uncheckedUniqueElements:)(uint64_t result, uint64_t *a2, uint64_t a3)
{
  v41 = *(result + 16);
  if (!v41)
  {
    return result;
  }

  v5 = 0;
  v40 = result + 32;
  while (1)
  {
    v42 = v5;
    v6 = v40 + 56 * v5;
    v7 = *v6;
    v8 = *(v6 + 8);
    v9 = *(v6 + 16);
    v10 = *(v6 + 24);
    v11 = *(v6 + 32);
    v12 = *(v6 + 40);
    v13 = *(v6 + 48);
    v14 = *a2;
    Hasher.init(_seed:)();
    MEMORY[0x266772770](v7);
    (*(*v8 + 120))(v43);
    String.hash(into:)();
    if (v12 == 1)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      Hasher._combine(_:)(1u);
      MEMORY[0x266772770](v11);
    }

    MEMORY[0x266772770](v13);
    v15 = Hasher._finalize()();
    v16 = 1 << *a2;
    v17 = __OFSUB__(v16, 1);
    v18 = v16 - 1;
    if (v17)
    {
      goto LABEL_42;
    }

    v19 = v18 & v15;
    v20 = _HashTable.UnsafeHandle._startIterator(bucket:)(v18 & v15, a2, a3);
    v43[0] = a2;
    v43[1] = a3;
    v44 = v19;
    v45 = v20;
    v46 = v21;
    v47 = v22;
    v48 = 0;
    if (v20)
    {
      break;
    }

LABEL_4:
    result = _HashTable.BucketIterator.currentValue.setter(v42, 0);
    v5 = v42 + 1;
    if (v42 + 1 == v41)
    {
      return result;
    }
  }

  v23 = 0;
  v24 = *a2 & 0x3F;
  v25 = 1 << *a2;
  v26 = v24 << *a2;
  v27 = v26 + 64;
  v28 = __OFADD__(v26, 64);
  v30 = v27 - 1;
  v29 = v27 < 1;
  v31 = v27 + 62;
  if (!v29)
  {
    v31 = v30;
  }

  v32 = v31 >> 6;
  while (1)
  {
    if (++v19 == v25)
    {
      if (v23)
      {
        goto LABEL_43;
      }

      v19 = 0;
      v23 = 1;
    }

    if (v22 >= v24)
    {
      break;
    }

    v33 = (v19 * v24) >> 6;
    if (v22)
    {
      if (v28)
      {
        goto LABEL_41;
      }

      if (v33 + 1 == v32)
      {
        v33 = 0;
      }

      else
      {
        ++v33;
      }
    }

    v34 = v24 - v22;
    if (__OFSUB__(v24, v22))
    {
      goto LABEL_39;
    }

    if (v33 == 2 && v24 == 5)
    {
      v36 = 32;
    }

    else
    {
      v36 = 64;
    }

    v17 = __OFSUB__(v36, v34);
    v37 = v36 - v34;
    if (v17)
    {
      goto LABEL_40;
    }

    v38 = *(a3 + 8 * v33);
    v39 = (v38 << v22) | v21;
    v21 = v38 >> v34;
    v22 = v37;
LABEL_16:
    if ((v39 & (v25 - 1)) == 0)
    {
      v48 = v23;
      v46 = v21;
      v47 = v22;
      v44 = v19;
      v45 = 0;
      goto LABEL_4;
    }
  }

  v17 = __OFSUB__(v22, v24);
  v22 -= v24;
  if (!v17)
  {
    v39 = v21;
    v21 >>= v24;
    goto LABEL_16;
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v3 = *(result + 16);
  if (!v3)
  {
    return result;
  }

  v6 = 0;
  v38 = result + 32;
  while (1)
  {
    outlined init with copy of [Input](v38 + 8 * v6, v39, &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGMd, &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGMR);
    v7 = *a2;
    Hasher.init(_seed:)();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v9 = Strong;
      Hasher._combine(_:)(1u);
      v10 = v9;
      NSObject.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    v11 = Hasher._finalize()();
    v12 = 1 << *a2;
    v13 = __OFSUB__(v12, 1);
    v14 = v12 - 1;
    if (v13)
    {
      goto LABEL_41;
    }

    v15 = v14 & v11;
    v16 = _HashTable.UnsafeHandle._startIterator(bucket:)(v14 & v11, a2, a3);
    v18 = v17;
    v20 = v19;
    outlined destroy of [Input](v39, &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGMd, &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGMR);
    if (v16)
    {
      break;
    }

LABEL_3:
    result = _HashTable.BucketIterator.currentValue.setter(v6++, 0);
    if (v6 == v3)
    {
      return result;
    }
  }

  v21 = 0;
  v22 = *a2 & 0x3F;
  v23 = 1 << *a2;
  v24 = v22 << *a2;
  v25 = v24 + 64;
  v26 = __OFADD__(v24, 64);
  v28 = v25 - 1;
  v27 = v25 < 1;
  v29 = v25 + 62;
  if (!v27)
  {
    v29 = v28;
  }

  v30 = v29 >> 6;
  while (1)
  {
    if (++v15 == v23)
    {
      if (v21)
      {
        goto LABEL_42;
      }

      v15 = 0;
      v21 = 1;
    }

    if (v20 >= v22)
    {
      break;
    }

    v31 = (v15 * v22) >> 6;
    if (v20)
    {
      if (v26)
      {
        goto LABEL_40;
      }

      if (v31 + 1 == v30)
      {
        v31 = 0;
      }

      else
      {
        ++v31;
      }
    }

    v32 = v22 - v20;
    if (__OFSUB__(v22, v20))
    {
      goto LABEL_38;
    }

    if (v31 == 2 && v22 == 5)
    {
      v34 = 32;
    }

    else
    {
      v34 = 64;
    }

    v13 = __OFSUB__(v34, v32);
    v35 = v34 - v32;
    if (v13)
    {
      goto LABEL_39;
    }

    v36 = *(a3 + 8 * v31);
    v37 = (v36 << v20) | v18;
    v18 = v36 >> v32;
    v20 = v35;
LABEL_15:
    if ((v37 & (v23 - 1)) == 0)
    {
      goto LABEL_3;
    }
  }

  v13 = __OFSUB__(v20, v22);
  v20 -= v22;
  if (!v13)
  {
    v37 = v18;
    v18 >>= v22;
    goto LABEL_15;
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v3 = *(result + 16);
  if (!v3)
  {
    return result;
  }

  v6 = 0;
  v36 = result + 32;
  while (1)
  {
    v7 = v36 + 24 * v6;
    v8 = *v7;
    v9 = *(v7 + 8);
    v10 = *(v7 + 16);
    v11 = *a2;
    Hasher.init(_seed:)();
    MEMORY[0x266772770](v10);
    String.hash(into:)();
    v12 = Hasher._finalize()();
    v13 = 1 << *a2;
    v14 = __OFSUB__(v13, 1);
    v15 = v13 - 1;
    if (v14)
    {
      goto LABEL_38;
    }

    v16 = v15 & v12;
    if (_HashTable.UnsafeHandle._startIterator(bucket:)(v15 & v12, a2, a3))
    {
      break;
    }

LABEL_3:
    result = _HashTable.BucketIterator.currentValue.setter(v6++, 0);
    if (v6 == v3)
    {
      return result;
    }
  }

  v19 = 0;
  v20 = *a2 & 0x3F;
  v21 = 1 << *a2;
  v22 = v20 << *a2;
  v23 = v22 + 64;
  v24 = __OFADD__(v22, 64);
  v26 = v23 - 1;
  v25 = v23 < 1;
  v27 = v23 + 62;
  if (!v25)
  {
    v27 = v26;
  }

  v28 = v27 >> 6;
  while (1)
  {
    if (++v16 == v21)
    {
      if (v19)
      {
        goto LABEL_39;
      }

      v16 = 0;
      v19 = 1;
    }

    if (v18 >= v20)
    {
      break;
    }

    v29 = (v16 * v20) >> 6;
    if (v18)
    {
      if (v24)
      {
        goto LABEL_37;
      }

      if (v29 + 1 == v28)
      {
        v29 = 0;
      }

      else
      {
        ++v29;
      }
    }

    v30 = v20 - v18;
    if (__OFSUB__(v20, v18))
    {
      goto LABEL_35;
    }

    if (v29 == 2 && v20 == 5)
    {
      v32 = 32;
    }

    else
    {
      v32 = 64;
    }

    v14 = __OFSUB__(v32, v30);
    v33 = v32 - v30;
    if (v14)
    {
      goto LABEL_36;
    }

    v34 = *(a3 + 8 * v29);
    v35 = (v34 << v18) | v17;
    v17 = v34 >> v30;
    v18 = v33;
LABEL_12:
    if ((v35 & (v21 - 1)) == 0)
    {
      goto LABEL_3;
    }
  }

  v14 = __OFSUB__(v18, v20);
  v18 -= v20;
  if (!v14)
  {
    v35 = v17;
    v17 >>= v20;
    goto LABEL_12;
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized _HashTable.UnsafeHandle.fill<A>(untilFirstDuplicateIn:)(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = *(a2 + 16);
  if (v4)
  {
    v7 = 0;
    v8 = a2 + 32;
    while (1)
    {
      v9 = *(v8 + 8 * v7);
      v10 = *a3;
      v11 = MEMORY[0x266772750](*a3, v9);
      v12 = (1 << v10) - 1;
      if (__OFSUB__(1 << v10, 1))
      {
        break;
      }

      v13 = v12 & v11;
      v14 = _HashTable.UnsafeHandle._startIterator(bucket:)(v12 & v11, a3, a4);
      v17 = 0;
      if (v14)
      {
        v18 = *a3 & 0x3FLL;
        v19 = 1 << *a3;
        v20 = __OFADD__(v18 << v18, 64);
        v21 = (v18 << v18) + 63;
        if ((v18 << v18) + 64 < 1)
        {
          v21 = (v18 << v18) + 126;
        }

        v22 = v19 - 1;
        v23 = v21 >> 6;
        v24 = v15;
        while (1)
        {
          v27 = (a3[1] >> 6) + (v14 ^ v22);
          v28 = v27 >= v22 ? v19 - 1 : 0;
          v29 = v27 - v28;
          if (v29 >= v4)
          {
            break;
          }

          if (*(v8 + 8 * v29) == v9)
          {
            result = 0;
            *a1 = v7;
            return result;
          }

          if (++v13 == v19)
          {
            if (v17)
            {
              goto LABEL_48;
            }

            v13 = 0;
            v17 = 1;
          }

          if (v16 >= v18)
          {
            v34 = __OFSUB__(v16, v18);
            v16 -= v18;
            if (v34)
            {
              goto LABEL_43;
            }

            v26 = v24 >> v18;
          }

          else
          {
            v30 = (v13 * v18) >> 6;
            if (v16)
            {
              if (v20)
              {
                goto LABEL_46;
              }

              if (v30 + 1 == v23)
              {
                v30 = 0;
              }

              else
              {
                ++v30;
              }
            }

            v31 = v18 - v16;
            if (__OFSUB__(v18, v16))
            {
              goto LABEL_44;
            }

            v32 = v30 == 2 && v18 == 5;
            if (v32)
            {
              v33 = 32;
            }

            else
            {
              v33 = 64;
            }

            v34 = __OFSUB__(v33, v31);
            v35 = v33 - v31;
            if (v34)
            {
              goto LABEL_45;
            }

            v25 = *(a4 + 8 * v30);
            v24 |= v25 << v16;
            v26 = v25 >> v31;
            v16 = v35;
          }

          v14 = v24 & v22;
          v32 = (v24 & v22) == 0;
          v24 = v26;
          if (v32)
          {
            goto LABEL_3;
          }
        }

        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
        break;
      }

LABEL_3:
      _HashTable.BucketIterator.currentValue.setter(v7++, 0);
      if (v7 == v4)
      {
        goto LABEL_40;
      }
    }

    __break(1u);
LABEL_48:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
LABEL_40:
    *a1 = v4;
    return 1;
  }

  return result;
}

{
  v61 = *(a2 + 16);
  if (v61)
  {
    v5 = 0;
    v60 = a2 + 32;
    while (1)
    {
      v7 = (v60 + 56 * v5);
      v8 = *v7;
      v9 = v7[1];
      v10 = v7[2];
      v11 = v7[3];
      v12 = v7[4];
      v13 = *(v7 + 40);
      v54 = v7[6];
      v14 = *a3;
      Hasher.init(_seed:)();
      v59 = v8;
      MEMORY[0x266772770](v8);
      v56 = v9;
      (*(*v9 + 120))(v62);
      v55 = v11;
      String.hash(into:)();
      v53 = v13;
      if (v13 == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x266772770](v12);
      }

      MEMORY[0x266772770](v54);
      v15 = Hasher._finalize()();
      v16 = 1 << *a3;
      v17 = __OFSUB__(v16, 1);
      v18 = v16 - 1;
      if (v17)
      {
        break;
      }

      v51 = v5;
      v19 = v18 & v15;
      v20 = _HashTable.UnsafeHandle._startIterator(bucket:)(v18 & v15, a3, a4);
      v22 = v21;
      v24 = v23;
      v63 = a3;
      v64 = a4;
      if (v20)
      {
        v52 = v12;
        v6 = 0;
        v25 = *a3;
        while (1)
        {
          v26 = -1 << v25;
          v27 = (v26 ^ ~v20) + (a3[1] >> 6);
          v28 = v27 >= ~v26 ? ~v26 : 0;
          v29 = v27 - v28;
          if (v29 >= v61)
          {
            break;
          }

          v30 = v60 + 56 * v29;
          if (*v30 == v59)
          {
            v31 = *(v30 + 24);
            v58 = *(v30 + 32);
            v32 = *(v30 + 40);
            v33 = *(v30 + 48);
            v34 = *(v30 + 16);
            if ((*(**(v30 + 8) + 128))(v56))
            {
              v35 = v34 == v10 && v31 == v55;
              if (v35 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
                if (v32)
                {
                  v36 = v53;
                  if (v33 != v54)
                  {
                    v36 = 0;
                  }

                  if (v36)
                  {
                    goto LABEL_55;
                  }
                }

                else
                {
                  v37 = v53 ^ 1;
                  if (v58 != v52)
                  {
                    v37 = 0;
                  }

                  if (v37 == 1 && v33 == v54)
                  {
LABEL_55:
                    result = 0;
                    *a1 = v51;
                    return result;
                  }
                }
              }
            }
          }

          ++v19;
          v25 = *a3;
          v39 = *a3 & 0x3FLL;
          v40 = 1 << *a3;
          if (v19 == v40)
          {
            if (v6)
            {
              goto LABEL_61;
            }

            v19 = 0;
            v6 = 1;
          }

          if (v24 >= v39)
          {
            v24 -= v39;
            v20 = (v40 - 1) & v22;
            v22 >>= v39;
            if (!v20)
            {
              goto LABEL_4;
            }
          }

          else
          {
            v41 = (v19 * v39) >> 6;
            if (v24)
            {
              if (__OFADD__(v39 << v39, 64))
              {
                goto LABEL_59;
              }

              v42 = (v39 << v39) + 126;
              if ((v39 << v39) + 64 >= 1)
              {
                v42 = (v39 << v39) + 63;
              }

              if (v41 + 1 == v42 >> 6)
              {
                v41 = 0;
              }

              else
              {
                ++v41;
              }
            }

            v43 = v39 - v24;
            if (__OFSUB__(v39, v24))
            {
              goto LABEL_57;
            }

            v44 = v41 == 2 && v39 == 5;
            v45 = 64;
            if (v44)
            {
              v45 = 32;
            }

            v17 = __OFSUB__(v45, v43);
            v46 = v45 - v43;
            if (v17)
            {
              goto LABEL_58;
            }

            v47 = *(a4 + 8 * v41);
            v48 = (v47 << v24) | v22;
            v22 = v47 >> v43;
            v24 = v46;
            v20 = v48 & (v40 - 1);
            if (!v20)
            {
              goto LABEL_4;
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
        break;
      }

      v6 = 0;
LABEL_4:
      v69 = v6;
      v65 = v19;
      v66 = 0;
      v67 = v22;
      v68 = v24;
      _HashTable.BucketIterator.currentValue.setter(v51, 0);
      v5 = v51 + 1;
      if (v51 + 1 == v61)
      {
        goto LABEL_54;
      }
    }

    __break(1u);
LABEL_61:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
LABEL_54:
    *a1 = v61;
    return 1;
  }

  return result;
}

{
  v4 = *(a2 + 16);
  if (!v4)
  {
LABEL_51:
    *a1 = v4;
    return 1;
  }

  v5 = a3;
  v6 = 0;
  v7 = a2 + 32;
  v54 = a2 + 32;
  v55 = *(a2 + 16);
  while (1)
  {
    v48 = v6;
    v8 = (v7 + 56 * v6);
    v9 = *v8;
    v10 = v8[1];
    v11 = v8[3];
    v52 = v8[2];
    v51 = *(v8 + 40);
    v49 = v8[4];
    v50 = v8[6];
    v12 = *v5;
    Hasher.init(_seed:)();
    v60 = v9;
    MEMORY[0x266772770](v9);
    v13 = *(*v10 + 120);

    v61 = v10;
    v13(v63);
    v62 = v11;
    String.hash(into:)();
    if (v51 == 1)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      Hasher._combine(_:)(1u);
      MEMORY[0x266772770](v49);
    }

    MEMORY[0x266772770](v50);
    v14 = Hasher._finalize()();
    v15 = 1 << *v5;
    v16 = __OFSUB__(v15, 1);
    v17 = v15 - 1;
    if (v16)
    {
      goto LABEL_56;
    }

    v18 = v17 & v14;
    v19 = _HashTable.UnsafeHandle._startIterator(bucket:)(v17 & v14, v5, a4);
    v21 = v20;
    v23 = v22;

    v64 = v5;
    v65 = a4;
    v24 = 0;
    if (v19)
    {
      break;
    }

LABEL_3:
    v70 = v24;
    v66 = v18;
    v67 = 0;
    v68 = v21;
    v69 = v23;
    _HashTable.BucketIterator.currentValue.setter(v48, 0);
    v6 = v48 + 1;
    if (v48 + 1 == v4)
    {
      goto LABEL_51;
    }
  }

  v25 = *v5;
  while (1)
  {
    v26 = -1 << v25;
    v27 = (v26 ^ ~v19) + (v5[1] >> 6);
    v28 = v27 >= ~v26 ? ~v26 : 0;
    v29 = v27 - v28;
    if (v29 >= v4)
    {
      break;
    }

    v30 = v7 + 56 * v29;
    if (*v30 == v60)
    {
      v59 = v24;
      v31 = *(v30 + 16);
      v32 = *(v30 + 24);
      v56 = *(v30 + 32);
      v33 = *(v30 + 40);
      v58 = *(v30 + 48);
      v34 = *(**(v30 + 8) + 128);

      if (v34(v61))
      {
        v35 = v31 == v52 && v32 == v62;
        if (v35 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          if (v33)
          {

            if (v51)
            {
              goto LABEL_49;
            }

            goto LABEL_27;
          }

          if ((v51 & 1) == 0)
          {

            if (v56 == v49)
            {
LABEL_49:

              v5 = a3;
              v7 = v54;
              v4 = v55;
              v24 = v59;
              if (v58 == v50)
              {
                result = 0;
                *a1 = v48;
                return result;
              }

              goto LABEL_28;
            }

            goto LABEL_27;
          }
        }
      }

LABEL_27:

      v5 = a3;
      v7 = v54;
      v4 = v55;
      v24 = v59;
    }

LABEL_28:
    ++v18;
    v25 = *v5;
    v36 = *v5 & 0x3FLL;
    v37 = 1 << *v5;
    if (v18 == v37)
    {
      if (v24)
      {
        goto LABEL_57;
      }

      v18 = 0;
      v24 = 1;
    }

    if (v23 >= v36)
    {
      v23 -= v36;
      v19 = (v37 - 1) & v21;
      v21 >>= v36;
      if (!v19)
      {
        goto LABEL_3;
      }
    }

    else
    {
      v38 = (v18 * v36) >> 6;
      if (v23)
      {
        if (__OFADD__(v36 << v36, 64))
        {
          goto LABEL_55;
        }

        v39 = (v36 << v36) + 126;
        if ((v36 << v36) + 64 >= 1)
        {
          v39 = (v36 << v36) + 63;
        }

        if (v38 + 1 == v39 >> 6)
        {
          v38 = 0;
        }

        else
        {
          ++v38;
        }
      }

      v40 = v36 - v23;
      if (__OFSUB__(v36, v23))
      {
        goto LABEL_53;
      }

      v41 = v38 == 2 && v36 == 5;
      v42 = 64;
      if (v41)
      {
        v42 = 32;
      }

      v16 = __OFSUB__(v42, v40);
      v43 = v42 - v40;
      if (v16)
      {
        goto LABEL_54;
      }

      v44 = *(a4 + 8 * v38);
      v45 = (v44 << v23) | v21;
      v21 = v44 >> v40;
      v23 = v43;
      v19 = v45 & (v37 - 1);
      if (!v19)
      {
        goto LABEL_3;
      }
    }
  }

  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized _HashTable.UnsafeHandle.fill<A>(untilFirstDuplicateIn:)(unint64_t *a1, unint64_t a2, Swift::Int *a3, uint64_t a4, void (*a5)(void))
{
  if (a2 >> 62)
  {
    goto LABEL_49;
  }

  v7 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v7)
  {
    do
    {
      v8 = 0;
      v49 = a2 & 0xC000000000000001;
      v46 = a2 + 32;
      v44 = v7;
      while (1)
      {
        if (v49)
        {
          v9 = MEMORY[0x266772030](v8, a2);
        }

        else
        {
          if (v8 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_51;
          }

          v9 = *(v46 + 8 * v8);
        }

        v10 = v9;
        v11 = NSObject._rawHashValue(seed:)(*a3);
        v12 = 1 << *a3;
        v13 = __OFSUB__(v12, 1);
        v14 = v12 - 1;
        if (v13)
        {
          break;
        }

        v15 = v14 & v11;
        v16 = _HashTable.UnsafeHandle._startIterator(bucket:)(v14 & v11, a3, a4);
        v18 = v17;
        v20 = v19;

        v21 = 0;
        if (v16)
        {
          v22 = *a3;
          while (1)
          {
            while (1)
            {
              v23 = -1 << v22;
              v24 = (v23 ^ ~v16) + (a3[1] >> 6);
              v25 = v24 >= ~v23 ? ~v23 : 0;
              v26 = v24 - v25;
              if (v49)
              {
                v27 = MEMORY[0x266772030](v26, a2);
                v28 = MEMORY[0x266772030](v8, a2);
              }

              else
              {
                if ((v26 & 0x8000000000000000) != 0)
                {
                  goto LABEL_45;
                }

                if (v26 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_46;
                }

                v29 = *(v46 + 8 * v8);
                v27 = *(v46 + 8 * v26);
                v28 = v29;
              }

              v30 = v28;
              a5(0);
              v31 = static NSObject.== infix(_:_:)();

              if (v31)
              {
                result = 0;
                *a1 = v8;
                return result;
              }

              ++v15;
              v22 = *a3;
              v32 = *a3 & 0x3F;
              v33 = 1 << *a3;
              if (v15 == v33)
              {
                if (v21)
                {
                  goto LABEL_52;
                }

                v15 = 0;
                v21 = 1;
              }

              if (v20 < v32)
              {
                break;
              }

              v20 -= v32;
              v16 = (v33 - 1) & v18;
              v18 >>= v32;
              if (!v16)
              {
                goto LABEL_4;
              }
            }

            v34 = (v15 * v32) >> 6;
            if (v20)
            {
              if (__OFADD__(v32 << v32, 64))
              {
                goto LABEL_47;
              }

              v35 = (v32 << v32) + 126;
              if ((v32 << v32) + 64 >= 1)
              {
                v35 = (v32 << v32) + 63;
              }

              if (v34 + 1 == v35 >> 6)
              {
                v34 = 0;
              }

              else
              {
                ++v34;
              }
            }

            v36 = v32 - v20;
            if (__OFSUB__(v32, v20))
            {
              break;
            }

            v37 = v34 == 2 && v32 == 5;
            v38 = 64;
            if (v37)
            {
              v38 = 32;
            }

            v13 = __OFSUB__(v38, v36);
            v39 = v38 - v36;
            if (v13)
            {
              goto LABEL_44;
            }

            v40 = *(a4 + 8 * v34);
            v41 = (v40 << v20) | v18;
            v18 = v40 >> v36;
            v20 = v39;
            v16 = v41 & (v33 - 1);
            if (!v16)
            {
              goto LABEL_4;
            }
          }

          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
          break;
        }

LABEL_4:
        _HashTable.BucketIterator.currentValue.setter(v8++, 0);
        v7 = v44;
        if (v8 == v44)
        {
          goto LABEL_54;
        }
      }

      __break(1u);
LABEL_49:
      v43 = __CocoaSet.count.getter();
      if (v43 < 0)
      {
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        v43 = _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      v7 = v43;
    }

    while (v43);
  }

LABEL_54:
  *a1 = v7;
  return 1;
}

uint64_t UserGraph.insert(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v1;
  v6[2] = *(a1 + 32);
  v7 = *(a1 + 48);
  v2 = *(a1 + 72);
  v4[0] = *(a1 + 56);
  v4[1] = v2;
  v4[2] = *(a1 + 88);
  v5 = *(a1 + 104);
  return UserGraph.connect(_:to:)(v6, v4);
}

uint64_t specialized OrderedDictionary.subscript.setter(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6 = result;
  v7 = v3[1];
  v8 = v7 + 32;
  v9 = *(v7 + 16);
  if (!*v3)
  {
    if (v9)
    {
      v11 = 0;
      while (*(v8 + 8 * v11) != a3)
      {
        if (v9 == ++v11)
        {
          v9 = 0;
          goto LABEL_14;
        }
      }

      v9 = 0;
      if (result)
      {
        goto LABEL_4;
      }

LABEL_22:
      specialized OrderedSet._removeExistingMember(at:in:)(v11, v9);
      specialized ContiguousArray.remove(at:)(v11);
    }

LABEL_14:
    if (v6)
    {
      specialized OrderedSet._appendNew(_:in:)(a3, v9, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:), specialized closure #1 in static _HashTable.create<A>(uncheckedUniqueElements:scale:reservedScale:));
      v17 = v3[2];
      v15 = v3 + 2;
      v16 = v17;
      result = swift_isUniquelyReferenced_nonNull_native();
      *v15 = v17;
      if ((result & 1) == 0)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 16) + 1, 1);
        v16 = *v15;
      }

      v19 = *(v16 + 16);
      v18 = *(v16 + 24);
      if (v19 >= v18 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1);
        v16 = *v15;
      }

      *(v16 + 16) = v19 + 1;
      v20 = v16 + 16 * v19;
      *(v20 + 32) = v6;
      *(v20 + 40) = a2;
      *v15 = v16;
    }

    return result;
  }

  result = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(a3, v8, v9, (*v3 + 16), *v3 + 32);
  if (v10)
  {
    goto LABEL_14;
  }

  v11 = result;
  if (!v6)
  {
    goto LABEL_22;
  }

LABEL_4:
  v12 = v3[2];
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v12);
    v12 = result;
  }

  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v11 < v12[2])
  {
    v13 = &v12[2 * v11];
    v14 = v13[4];
    v13[4] = v6;
    v13[5] = a2;

    v3[2] = v12;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t specialized OrderedDictionary.subscript.setter(uint64_t result, uint64_t a2)
{
  v5 = *result;
  v4 = *(result + 8);
  v7 = *(result + 16);
  v6 = *(result + 24);
  v9 = *(result + 32);
  v8 = *(result + 40);
  v10 = v2[1];
  v11 = v10 + 32;
  v12 = *(v10 + 16);
  if (!*v2)
  {
    if (v12)
    {
      v14 = 0;
      while (*(v11 + 8 * v14) != a2)
      {
        if (v12 == ++v14)
        {
          v12 = 0;
          goto LABEL_14;
        }
      }

      v12 = 0;
      if (v4)
      {
        goto LABEL_4;
      }

LABEL_21:
      specialized OrderedSet._removeExistingMember(at:in:)(v14, v12);
      specialized ContiguousArray.remove(at:)(v14, v36);
      v32 = v36[1];
      v33 = v36[2];
      v42 = v36[0];
      outlined destroy of [Input](&v42, &_s11ShaderGraph10_HashTableV7StorageCSgMd, &_s11ShaderGraph10_HashTableV7StorageCSgMR);
      v41 = v32;
      outlined destroy of [Input](&v41, &_ss15ContiguousArrayVy11ShaderGraph6OutputVGMd, &_ss15ContiguousArrayVy11ShaderGraph6OutputVGMR);
      v40 = v33;
      outlined destroy of [Input](&v40, &_ss15ContiguousArrayVy11ShaderGraph10OrderedSetVyAC5InputVGGMd, &_ss15ContiguousArrayVy11ShaderGraph10OrderedSetVyAC5InputVGGMR);
      v34 = v36[4];
      v35 = v36[5];
      v39 = v36[3];
      outlined destroy of [Input](&v39, &_s11ShaderGraph10_HashTableV7StorageCSgMd, &_s11ShaderGraph10_HashTableV7StorageCSgMR);
      v38 = v34;
      outlined destroy of [Input](&v38, &_ss15ContiguousArrayVy11ShaderGraph5InputVGMd, &_ss15ContiguousArrayVy11ShaderGraph5InputVGMR);
      v37 = v35;
      return outlined destroy of [Input](&v37, &_ss15ContiguousArrayVy11ShaderGraph6OutputVSgGMd, &_ss15ContiguousArrayVy11ShaderGraph6OutputVSgGMR);
    }

LABEL_14:
    if (v4)
    {
      specialized OrderedSet._appendNew(_:in:)(a2, v12, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:), specialized closure #1 in static _HashTable.create<A>(uncheckedUniqueElements:scale:reservedScale:));
      v28 = v2[2];
      v27 = v2 + 2;
      v26 = v28;
      result = swift_isUniquelyReferenced_nonNull_native();
      *v27 = v28;
      if ((result & 1) == 0)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v26 + 16) + 1, 1);
        v26 = *v27;
      }

      v30 = *(v26 + 16);
      v29 = *(v26 + 24);
      if (v30 >= v29 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1);
        v26 = *v27;
      }

      *(v26 + 16) = v30 + 1;
      v31 = (v26 + 48 * v30);
      v31[4] = v5;
      v31[5] = v4;
      v31[6] = v7;
      v31[7] = v6;
      v31[8] = v9;
      v31[9] = v8;
      *v27 = v26;
    }

    return result;
  }

  result = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(a2, v11, v12, (*v2 + 16), *v2 + 32);
  if (v13)
  {
    goto LABEL_14;
  }

  v14 = result;
  if (!v4)
  {
    goto LABEL_21;
  }

LABEL_4:
  v15 = v2[2];
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v15);
    v15 = result;
  }

  if ((v14 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v14 < *(v15 + 16))
  {
    v16 = (v15 + 48 * v14);
    v17 = v16[4];
    v18 = v16[5];
    v19 = v8;
    v20 = v9;
    v21 = v16[6];
    v22 = v16[7];
    v23 = v6;
    v25 = v16[8];
    v24 = v16[9];
    v16[4] = v5;
    v16[5] = v4;
    v16[6] = v7;
    v16[7] = v23;
    v16[8] = v20;
    v16[9] = v19;

    v2[2] = v15;
    return result;
  }

  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = v2[1];
  v6 = v5 + 32;
  v7 = *(v5 + 16);
  if (!*v2)
  {
    if (v7)
    {
      v9 = 0;
      while (*(v6 + 8 * v9) != a2)
      {
        if (v7 == ++v9)
        {
          v7 = 0;
          goto LABEL_14;
        }
      }

      v7 = 0;
      if (result)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }

LABEL_14:
    if (!v4)
    {
      return result;
    }

    specialized OrderedSet._appendNew(_:in:)(a2, v7, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:), specialized closure #1 in static _HashTable.create<A>(uncheckedUniqueElements:scale:reservedScale:));
    swift_unknownObjectRetain();
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v13 = *(v2[2] + 16);
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    goto LABEL_19;
  }

  result = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(a2, v6, v7, (*v2 + 16), *v2 + 32);
  if (v8)
  {
    goto LABEL_14;
  }

  v9 = result;
  if (!v4)
  {
LABEL_18:
    specialized OrderedSet._removeExistingMember(at:in:)(v9, v7);
    specialized ContiguousArray.remove(at:)(v9);
LABEL_19:

    return swift_unknownObjectRelease();
  }

LABEL_4:
  v10 = v2[2];
  result = swift_isUniquelyReferenced_nonNull_native();
  v2[2] = v10;
  if ((result & 1) == 0)
  {
    result = _ss22_ContiguousArrayBufferV20_consumeAndCreateNewAByxGyF11ShaderGraph6SGNodeC_Tg5_0(v10);
    v10 = result;
    v2[2] = result;
  }

  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v9 < *(v10 + 16))
  {
    v11 = v10 + 8 * v9;
    v12 = *(v11 + 32);
    *(v11 + 32) = v4;
    swift_unknownObjectRelease();
    return specialized ContiguousArray._endMutation()();
  }

  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = v2[1];
  v6 = v5 + 32;
  v7 = *(v5 + 16);
  if (!*v2)
  {
    if (v7)
    {
      v9 = 0;
      while (*(v6 + 8 * v9) != a2)
      {
        if (v7 == ++v9)
        {
          v7 = 0;
          goto LABEL_14;
        }
      }

      v7 = 0;
      if (result)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }

LABEL_14:
    if (!v4)
    {
      return result;
    }

    specialized OrderedSet._appendNew(_:in:)(a2, v7, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:), specialized closure #1 in static _HashTable.create<A>(uncheckedUniqueElements:scale:reservedScale:));
    swift_unknownObjectRetain();
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v13 = *(v2[2] + 16);
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    goto LABEL_19;
  }

  result = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(a2, v6, v7, (*v2 + 16), *v2 + 32);
  if (v8)
  {
    goto LABEL_14;
  }

  v9 = result;
  if (!v4)
  {
LABEL_18:
    specialized OrderedSet._removeExistingMember(at:in:)(v9, v7);
    specialized ContiguousArray.remove(at:)(v9);
LABEL_19:

    return swift_unknownObjectRelease();
  }

LABEL_4:
  v10 = v2[2];
  result = swift_isUniquelyReferenced_nonNull_native();
  v2[2] = v10;
  if ((result & 1) == 0)
  {
    result = _ss22_ContiguousArrayBufferV20_consumeAndCreateNewAByxGyF11ShaderGraph6SGNodeC_Tg5_0(v10);
    v10 = result;
    v2[2] = result;
  }

  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v9 < *(v10 + 16))
  {
    v11 = v10 + 8 * v9;
    v12 = *(v11 + 32);
    *(v11 + 32) = v4;
    swift_unknownObjectRelease();
    return specialized ContiguousArray._endMutation()();
  }

  __break(1u);
  return result;
}

uint64_t specialized OrderedDictionary.subscript.setter(uint64_t *a1, uint64_t a2)
{
  v5 = *a1;
  v4 = a1[1];
  v7 = a1[2];
  v6 = a1[3];
  v38 = v6;
  v39 = a1[4];
  v40 = a1[5];
  v41 = a1[6];
  v9 = *v2;
  v8 = v2[1];
  v10 = *(v8 + 16);
  if (*v2)
  {
    v11 = a1[2];
    v12 = *v2;

    v13 = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(a2, v8 + 32, v10, (v9 + 16), v9 + 32);
    v15 = v14;
    v17 = v16;

    if (v15)
    {
      v7 = v11;
      goto LABEL_5;
    }

    v7 = v11;
  }

  else
  {
    v18 = specialized Collection<>.firstIndex(of:)(a2, v8 + 32, *(v8 + 16));
    v17 = 0;
    if (v19)
    {
LABEL_5:
      if (v4 == 1)
      {
        v20 = *(a2 + 8);

        v44[0] = *(a2 + 16);
        return outlined destroy of String(v44);
      }

      else
      {
        specialized OrderedSet._appendNew(_:in:)(a2, v17, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:));
        v22 = *(a2 + 8);

        v44[0] = *(a2 + 16);
        outlined destroy of String(v44);
        v24 = v2 + 2;
        v23 = v2[2];
        result = swift_isUniquelyReferenced_nonNull_native();
        v2[2] = v23;
        if ((result & 1) == 0)
        {
          result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v23 + 16) + 1, 1);
          v23 = *v24;
        }

        v26 = *(v23 + 16);
        v25 = *(v23 + 24);
        if (v26 >= v25 >> 1)
        {
          result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1);
          v23 = *v24;
        }

        *(v23 + 16) = v26 + 1;
        v27 = (v23 + 56 * v26);
        v27[4] = v5;
        v27[5] = v4;
        v27[6] = v7;
        v27[7] = v38;
        v27[8] = v39;
        v27[9] = v40;
        v27[10] = v41;
        *v24 = v23;
      }

      return result;
    }

    v13 = v18;
  }

  v28 = *(a2 + 8);

  v46 = *(a2 + 16);
  outlined destroy of String(&v46);
  if (v4 == 1)
  {
    specialized OrderedSet._removeExistingMember(at:in:)(v13, v17, v42);

    v45 = v43;
    outlined destroy of String(&v45);
    specialized ContiguousArray.remove(at:)(v13, v44);
    return outlined destroy of [Input](v44, &_s11ShaderGraph6OutputVSgMd, &_s11ShaderGraph6OutputVSgMR);
  }

  v29 = v2[2];
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v29);
    v29 = result;
  }

  if ((v13 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v13 < v29[2])
  {
    v30 = &v29[7 * v13];
    v31 = v30[4];
    v32 = v30[5];
    v33 = v30[6];
    v34 = v30[7];
    v35 = v30[8];
    v36 = v30[9];
    v37 = v30[10];
    v30[4] = v5;
    v30[5] = v4;
    v30[6] = v7;
    v30[7] = v38;
    v30[8] = v39;
    v30[9] = v40;
    v30[10] = v41;
    result = outlined consume of Output?(v31, v32);
    v2[2] = v29;
    return result;
  }

  __break(1u);
  return result;
}

void specialized OrderedDictionary.subscript.setter(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = v3[1];
  v9 = *(v8 + 16);
  if (*v3)
  {
    v10 = *v3;

    v11 = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(a2, a3, v8 + 32, v9, (v7 + 16), v7 + 32);
    v13 = v12;
    v9 = v14;

    if ((v13 & 1) == 0)
    {

      if (!a1)
      {
        goto LABEL_26;
      }

LABEL_20:
      v21 = v3[2];
      v19 = v3 + 2;
      NewAByxGyF11ShaderGraph6SGNodeC_Tg5_0 = v21;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v19 = v21;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        NewAByxGyF11ShaderGraph6SGNodeC_Tg5_0 = _ss22_ContiguousArrayBufferV20_consumeAndCreateNewAByxGyF11ShaderGraph6SGNodeC_Tg5_0(NewAByxGyF11ShaderGraph6SGNodeC_Tg5_0);
        *v19 = NewAByxGyF11ShaderGraph6SGNodeC_Tg5_0;
      }

      if ((v11 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v11 < *(NewAByxGyF11ShaderGraph6SGNodeC_Tg5_0 + 16))
      {
        v23 = NewAByxGyF11ShaderGraph6SGNodeC_Tg5_0 + 8 * v11;
        v24 = *(v23 + 32);
        *(v23 + 32) = a1;

        specialized ContiguousArray._endMutation()();
        return;
      }

      __break(1u);
      return;
    }
  }

  else if (v9)
  {
    v11 = 0;
    v15 = (v8 + 40);
    while (1)
    {
      v16 = *(v15 - 1) == a2 && *v15 == a3;
      if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      ++v11;
      v15 += 2;
      if (v9 == v11)
      {
        v9 = 0;
        goto LABEL_14;
      }
    }

    if (!a1)
    {
      v9 = 0;
LABEL_26:
      specialized OrderedSet._removeExistingMember(at:in:)(v11, v9);

      v18 = specialized ContiguousArray.remove(at:)(v11);
      goto LABEL_27;
    }

    goto LABEL_20;
  }

LABEL_14:
  if (a1)
  {
    specialized OrderedSet._appendNew(_:in:)(a2, a3, v9);

    v25 = a1;
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v17 = *(v3[2] + 16);
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v18 = v25;
LABEL_27:

    return;
  }
}

uint64_t specialized OrderedDictionary.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = v3[1];
  v9 = *(v8 + 16);
  if (*v3)
  {
    v10 = *v3;

    v11 = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(a2, a3, v8 + 32, v9, (v7 + 16), v7 + 32);
    v13 = v12;
    v9 = v14;

    if ((v13 & 1) == 0)
    {

      if (!a1)
      {
        goto LABEL_26;
      }

LABEL_20:
      v21 = v3[2];
      v19 = v3 + 2;
      v20 = v21;
      result = swift_isUniquelyReferenced_nonNull_native();
      *v19 = v21;
      if ((result & 1) == 0)
      {
        result = _ss22_ContiguousArrayBufferV20_consumeAndCreateNewAByxGyF11ShaderGraph6SGNodeC_Tg5_0(v20);
        v20 = result;
        *v19 = result;
      }

      if ((v11 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v11 < *(v20 + 16))
      {
        v22 = v20 + 8 * v11;
        v23 = *(v22 + 32);
        *(v22 + 32) = a1;
        swift_unknownObjectRelease();
        return specialized ContiguousArray._endMutation()();
      }

      __break(1u);
      return result;
    }
  }

  else if (v9)
  {
    v11 = 0;
    v15 = (v8 + 40);
    while (1)
    {
      v16 = *(v15 - 1) == a2 && *v15 == a3;
      if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      ++v11;
      v15 += 2;
      if (v9 == v11)
      {
        v9 = 0;
        goto LABEL_14;
      }
    }

    if (!a1)
    {
      v9 = 0;
LABEL_26:
      specialized OrderedSet._removeExistingMember(at:in:)(v11, v9);

      specialized ContiguousArray.remove(at:)(v11);
      goto LABEL_27;
    }

    goto LABEL_20;
  }

LABEL_14:
  if (a1)
  {
    specialized OrderedSet._appendNew(_:in:)(a2, a3, v9);

    swift_unknownObjectRetain();
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v17 = *(v3[2] + 16);
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
LABEL_27:

    return swift_unknownObjectRelease();
  }
}

uint64_t specialized OrderedDictionary.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  v10 = v4[1];
  v11 = *(v10 + 16);
  if (!*v4)
  {
    if (v11)
    {
      v13 = 0;
      v17 = (v10 + 48);
      while (1)
      {
        if (*(v17 - 2) == a2)
        {
          v18 = *(v17 - 1) == a3 && *v17 == a4;
          if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }
        }

        ++v13;
        v17 += 3;
        if (v11 == v13)
        {
          v11 = 0;
          goto LABEL_21;
        }
      }

      if (a1)
      {
        goto LABEL_15;
      }

      v11 = 0;
      goto LABEL_27;
    }

    goto LABEL_21;
  }

  v12 = *v4;

  v13 = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(a2, a3, a4, v10 + 32, v11, (v9 + 16), v9 + 32);
  v15 = v14;
  v11 = v16;

  if (v15)
  {
LABEL_21:
    if (a1)
    {
      specialized OrderedSet._appendNew(_:in:)(a2, a3, a4, v11);

      swift_unknownObjectRetain();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v25 = *(v4[2] + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
LABEL_28:

      return swift_unknownObjectRelease();
    }
  }

  if (!a1)
  {
LABEL_27:
    specialized OrderedSet._removeExistingMember(at:in:)(v13, v11);

    specialized ContiguousArray.remove(at:)(v13);
    goto LABEL_28;
  }

LABEL_15:
  v21 = v4[2];
  v19 = v4 + 2;
  v20 = v21;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v19 = v21;
  if ((result & 1) == 0)
  {
    result = _ss22_ContiguousArrayBufferV20_consumeAndCreateNewAByxGyF11ShaderGraph6SGNodeC_Tg5_0(v20);
    v20 = result;
    *v19 = result;
  }

  if ((v13 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v13 < *(v20 + 16))
  {
    v23 = v20 + 8 * v13;
    v24 = *(v23 + 32);
    *(v23 + 32) = a1;
    swift_unknownObjectRelease();
    return specialized ContiguousArray._endMutation()();
  }

  __break(1u);
  return result;
}

uint64_t specialized OrderedDictionary.subscript.setter(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  v10 = v4[1];
  v11 = *(v10 + 16);
  if (*v4)
  {
    v12 = *v4;

    v13 = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(a3, a4, v10 + 32, v11, (v9 + 16), v9 + 32);
    v15 = v14;
    v11 = v16;

    if ((v15 & 1) == 0)
    {

      goto LABEL_23;
    }

LABEL_13:
    if (a2 == -1)
    {
    }

    else
    {
      specialized OrderedSet._appendNew(_:in:)(a3, a4, v11);

      v21 = v4[2];
      v19 = v4 + 2;
      v20 = v21;
      result = swift_isUniquelyReferenced_nonNull_native();
      *v19 = v21;
      if ((result & 1) == 0)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v20 + 16) + 1, 1);
        v20 = *v19;
      }

      v24 = *(v20 + 16);
      v23 = *(v20 + 24);
      if (v24 >= v23 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1);
        v20 = *v19;
      }

      *(v20 + 16) = v24 + 1;
      v25 = v20 + 16 * v24;
      *(v25 + 32) = a1;
      *(v25 + 40) = a2 & 1;
      *v19 = v20;
    }

    return result;
  }

  if (!v11)
  {
    goto LABEL_13;
  }

  v13 = 0;
  v17 = (v10 + 40);
  while (1)
  {
    v18 = *(v17 - 1) == a3 && *v17 == a4;
    if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    ++v13;
    v17 += 2;
    if (v11 == v13)
    {
      v11 = 0;
      goto LABEL_13;
    }
  }

  v11 = 0;
LABEL_23:
  if (a2 == -1)
  {
    specialized OrderedSet._removeExistingMember(at:in:)(v13, v11);

    v30 = specialized ContiguousArray.remove(at:)(v13);
    v32 = v31 & 1;

    return outlined consume of MetalLibrary(v30, v32);
  }

  else
  {
    v26 = v4[2];
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v26);
      v26 = result;
    }

    if ((v13 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v13 < *(v26 + 16))
    {
      v27 = v26 + 16 * v13;
      v28 = *(v27 + 32);
      v29 = *(v27 + 40);
      *(v27 + 32) = a1;
      *(v27 + 40) = a2 & 1;
      result = outlined consume of MetalLibrary(v28, v29);
      v4[2] = v26;
      return result;
    }

    __break(1u);
  }

  return result;
}

void specialized OrderedSet.removeAll(keepingCapacity:)(char a1)
{
  v4 = v1 + 1;
  v3 = v1[1];
  if ((a1 & 1) == 0)
  {

    v1[1] = MEMORY[0x277D84F90];
    v7 = *v1;

    *v1 = 0;
    return;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *v4;
  if (isUniquelyReferenced_nonNull_native)
  {
    specialized ContiguousArray.replaceSubrange<A>(_:with:)(0, *(v6 + 16), specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
    if (!*v1)
    {
      return;
    }

LABEL_10:
    isUniquelyReferenced_native = swift_isUniquelyReferenced_native();
    v11 = *v1;
    if ((isUniquelyReferenced_native & 1) == 0)
    {
      if (!v11)
      {
LABEL_21:
        __break(1u);
        return;
      }

      v12 = v11[2];
      v13 = (v12 & 0x3F) << v12;
      v14 = __OFADD__(v13, 64);
      v15 = v13 + 64;
      if (v14)
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v17 = v15 - 1;
      v16 = v15 < 1;
      v18 = v15 + 62;
      if (!v16)
      {
        v18 = v17;
      }

      v19 = v18 >> 6;
      type metadata accessor for _HashTable.Storage();
      v20 = swift_allocObject();
      v21 = v11[3];
      v20[2] = v12;
      v20[3] = v21;
      memcpy(v20 + 4, v11 + 4, 8 * v19);

      *v1 = v20;
      v11 = v20;
    }

    if (v11)
    {
      closure #1 in OrderedSet.removeAll(keepingCapacity:)(v11 + 2, v11 + 4);
      return;
    }

    goto LABEL_20;
  }

  if (*(v6 + 24) >= 2uLL)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph5InputVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph5InputVGMR);
    v8 = swift_allocObject();
    v9 = _swift_stdlib_malloc_size(v8);
    v8[2] = 0;
    v8[3] = 2 * ((v9 - 32) / 56);
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  *v4 = v8;
  if (*v1)
  {
    goto LABEL_10;
  }
}

unint64_t specialized OrderedDictionary.subscript.getter@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v7 = result;
  v9 = a3 + 32;
  v10 = *(a3 + 16);
  if (!a2)
  {
    if (v10)
    {
      result = 0;
      while (*(v9 + 8 * result) != v7)
      {
        if (v10 == ++result)
        {
          goto LABEL_10;
        }
      }

      goto LABEL_4;
    }

LABEL_10:
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    goto LABEL_11;
  }

  result = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(result, v9, v10, (a2 + 16), a2 + 32);
  if (v11)
  {
    goto LABEL_10;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_13;
  }

LABEL_4:
  if (result < *(a4 + 16))
  {
    v12 = (a4 + 48 * result);
    v13 = v12[4];
    v14 = v12[5];
    v15 = v12[6];
    v16 = v12[7];
    v17 = v12[8];
    v18 = v12[9];

LABEL_11:
    *a5 = v13;
    a5[1] = v14;
    a5[2] = v15;
    a5[3] = v16;
    a5[4] = v17;
    a5[5] = v18;
    return result;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t specialized OrderedDictionary.subscript.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v8 = *(a3 + 16);
  if (a2)
  {

    v11 = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(a1, a3 + 32, v8, (a2 + 16), a2 + 32);
    v13 = v12;

    if ((v13 & 1) == 0)
    {
      if ((v11 & 0x8000000000000000) == 0)
      {
        goto LABEL_4;
      }

LABEL_10:
      __break(1u);
      goto LABEL_11;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v17 = 1;
    goto LABEL_8;
  }

  result = specialized Collection<>.firstIndex(of:)(a1, a3 + 32, *(a3 + 16));
  if (v23)
  {
    goto LABEL_7;
  }

  v11 = result;
  if (result < 0)
  {
    goto LABEL_10;
  }

LABEL_4:
  if (v11 < *(a4 + 16))
  {
    v15 = (a4 + 56 * v11);
    v16 = v15[4];
    v17 = v15[5];
    v18 = v15[6];
    v19 = v15[7];
    v20 = v15[8];
    v21 = v15[9];
    v22 = v15[10];
    result = outlined copy of Output?(v16, v17);
LABEL_8:
    *a5 = v16;
    a5[1] = v17;
    a5[2] = v18;
    a5[3] = v19;
    a5[4] = v20;
    a5[5] = v21;
    a5[6] = v22;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t specialized OrderedDictionary.subscript.getter(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + 16);
  if (a2)
  {

    v9 = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(a1, a3 + 32, v6, (a2 + 16), a2 + 32);
    v11 = v10;

    if ((v11 & 1) == 0)
    {
      if ((v9 & 0x8000000000000000) == 0)
      {
        goto LABEL_4;
      }

LABEL_10:
      __break(1u);
      goto LABEL_11;
    }

    return 0;
  }

  result = specialized Collection<>.firstIndex(of:)(a1, a3 + 32, *(a3 + 16));
  if (v16)
  {
    return 0;
  }

  v9 = result;
  if (result < 0)
  {
    goto LABEL_10;
  }

LABEL_4:
  if (v9 < *(a4 + 16))
  {
    v13 = a4 + 16 * v9;
    v14 = *(v13 + 32);
    v15 = *(v13 + 40);

    return v14;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t specialized OrderedDictionary.subscript.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v9 = result;
  v11 = *(a4 + 16);
  if (a3)
  {

    v13 = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(v9, a2, a4 + 32, v11, (a3 + 16), a3 + 32);
    v15 = v14;

    if (v15)
    {
LABEL_3:
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v11 = 0;
LABEL_17:
      *a6 = v16;
      a6[1] = v17;
      a6[2] = v18;
      a6[3] = v19;
      a6[4] = v20;
      a6[5] = v11;
      return result;
    }

    if ((v13 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_19;
    }
  }

  else
  {
    if (!v11)
    {
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      goto LABEL_17;
    }

    v13 = 0;
    v21 = (a4 + 40);
    while (1)
    {
      result = *(v21 - 1);
      if (result == v9 && *v21 == a2)
      {
        break;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        break;
      }

      ++v13;
      v21 += 2;
      if (v11 == v13)
      {
        goto LABEL_3;
      }
    }
  }

  if (v13 < *(a5 + 16))
  {
    v23 = (a5 + 48 * v13);
    v16 = v23[4];
    v17 = v23[5];
    v18 = v23[6];
    v19 = v23[7];
    v20 = v23[8];
    v11 = v23[9];

    result = outlined copy of MaterialXAvailability(v20, v11);
    goto LABEL_17;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t specialized OrderedDictionary.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 + 16);
  if (!a3)
  {
    if (v9)
    {
      v11 = 0;
      for (i = (a4 + 40); ; i += 2)
      {
        result = *(i - 1);
        if (result == a1 && *i == a2)
        {
          break;
        }

        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        if (result)
        {
          break;
        }

        if (v9 == ++v11)
        {
          return 0;
        }
      }

      goto LABEL_4;
    }

    return 0;
  }

  v11 = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(a1, a2, a4 + 32, v9, (a3 + 16), a3 + 32);
  v13 = v12;

  if (v13)
  {
    return 0;
  }

  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_17;
  }

LABEL_4:
  if (v11 < *(a5 + 16))
  {
    v15 = *(a5 + 8 * v11 + 32);
    v16 = v15;
    return v15;
  }

LABEL_17:
  __break(1u);
  return result;
}

{
  v9 = *(a4 + 16);
  if (!a3)
  {
    if (v9)
    {
      v11 = 0;
      for (i = (a4 + 40); ; i += 2)
      {
        result = *(i - 1);
        if (result == a1 && *i == a2)
        {
          break;
        }

        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        if (result)
        {
          break;
        }

        if (v9 == ++v11)
        {
          return 0;
        }
      }

      goto LABEL_4;
    }

    return 0;
  }

  v11 = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(a1, a2, a4 + 32, v9, (a3 + 16), a3 + 32);
  v13 = v12;

  if (v13)
  {
    return 0;
  }

  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_17;
  }

LABEL_4:
  if (v11 < *(a5 + 16))
  {
    v15 = a5 + 16 * v11;
    v16 = *(v15 + 32);
    outlined copy of MetalLibrary(v16, *(v15 + 40));
    return v16;
  }

LABEL_17:
  __break(1u);
  return result;
}

{
  v9 = *(a4 + 16);
  if (!a3)
  {
    if (v9)
    {
      v11 = 0;
      for (i = (a4 + 40); ; i += 2)
      {
        result = *(i - 1);
        if (result == a1 && *i == a2)
        {
          break;
        }

        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        if (result)
        {
          break;
        }

        if (v9 == ++v11)
        {
          return 0;
        }
      }

LABEL_4:
      if (v11 < *(a5 + 16))
      {
        v15 = *(a5 + 8 * v11 + 32);
        return swift_unknownObjectRetain();
      }

      goto LABEL_16;
    }

    return 0;
  }

  v11 = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(a1, a2, a4 + 32, v9, (a3 + 16), a3 + 32);
  v13 = v12;

  if (v13)
  {
    return 0;
  }

  if ((v11 & 0x8000000000000000) == 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

unint64_t specialized OrderedDictionary.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a3 + 32;
  v8 = *(a3 + 16);
  if (a2)
  {
    result = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(a1, v7, v8, (a2 + 16), a2 + 32);
    if ((v10 & 1) == 0)
    {
      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_12:
        __break(1u);
        return result;
      }

LABEL_4:
      if (result < *(a4 + 16))
      {
        v11 = *(a4 + 8 * result + 32);
        return swift_unknownObjectRetain();
      }

      goto LABEL_12;
    }

    return 0;
  }

  else
  {
    result = 0;
    if (v8)
    {
      while (*(v7 + 8 * result) != a1)
      {
        if (v8 == ++result)
        {
          return 0;
        }
      }

      goto LABEL_4;
    }
  }

  return result;
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
LABEL_11:
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v3 = result;
      goto LABEL_12;
    }

LABEL_10:
    __CocoaSet.count.getter();
    goto LABEL_11;
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

LABEL_12:
  *v1 = v3;
  return result;
}

uint64_t UserGraph.Iterator.next()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 16);
  v21 = *(v5 - 8);
  v6 = *(v21 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  v9 = v3[1];
  v11 = v3[2];
  v12 = v3[3];
  v13 = v3[4];
  if (v10 >= ArraySlice.endIndex.getter())
  {
    v18 = *(v21 + 56);

    return v18(a2, 1, 1, v5);
  }

  else
  {
    v20 = a2;
    v14 = v3[5];
    v15 = v3[6];
    v22 = (v21 + 8);
    v23 = v14;
    while (1)
    {
      ArraySlice.subscript.getter();
      v16 = v23(v8);
      (*v22)(v8, v5);
      if (v16)
      {
        break;
      }

      *v3 = ++v10;
      if (v10 >= ArraySlice.endIndex.getter())
      {
        return (*(v21 + 56))(v20, 1, 1, v5);
      }
    }

    v19 = v20;
    ArraySlice.subscript.getter();
    result = (*(v21 + 56))(v19, 0, 1, v5);
    if (__OFADD__(*v3, 1))
    {
      __break(1u);
    }

    else
    {
      ++*v3;
    }
  }

  return result;
}

unint64_t UserGraph.output(connectedTo:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = specialized OrderedDictionary.subscript.getter(*a1, *v2, v2[1], v2[2], &v22);
  v6 = v23;
  v7 = 0uLL;
  if (v23)
  {
    v8 = v26;
    v9 = v27;
    v11 = v24;
    v10 = v25;
    v36 = v22;

    outlined destroy of [Input](&v36, &_s11ShaderGraph10_HashTableV7StorageCSgMd, &_s11ShaderGraph10_HashTableV7StorageCSgMR);
    v35 = v6;
    outlined destroy of [Input](&v35, &_ss15ContiguousArrayVy11ShaderGraph6OutputVGMd, &_ss15ContiguousArrayVy11ShaderGraph6OutputVGMR);
    v34 = v11;
    outlined destroy of [Input](&v34, &_ss15ContiguousArrayVy11ShaderGraph10OrderedSetVyAC5InputVGGMd, &_ss15ContiguousArrayVy11ShaderGraph10OrderedSetVyAC5InputVGGMR);

    specialized OrderedDictionary.subscript.getter(a1, v10, v8, v9, &v28);

    v12 = v29;
    if (v29 >= 2)
    {
      v17 = v32;
      v16 = v33;
      v20 = v31;
      v14 = v30;
      v13 = v28;

      outlined destroy of [Input](&v28, &_s11ShaderGraph6OutputVSgSgMd, &_s11ShaderGraph6OutputVSgSgMR);
      v18 = *(a1 + 8);
      v37 = *(a1 + 16);
      v19 = *(a1 + 24);

      outlined init with copy of String(&v37, v21);

      v7 = v20;
      v15 = v17 & 1;
    }

    else
    {
      v13 = 0;
      v12 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
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
  }

  *a2 = v13;
  *(a2 + 8) = v12;
  *(a2 + 16) = v14;
  *(a2 + 24) = v7;
  *(a2 + 40) = v15;
  *(a2 + 48) = v16;
  return result;
}

void UserGraph.remove(_:)(uint64_t a1)
{
  v2 = *(a1 + 24);
  specialized UserGraph.removeEdges(connectedTo:)(v2);
  v3 = *(v1 + 64);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
  if ((v2 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v2 < *(v3 + 2))
  {
    ShaderGraphNode.update(id:)(-7);
    *(v1 + 64) = v3;
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t UserGraph.moveEdge(from:to:)(uint64_t a1, uint64_t a2)
{
  v5 = *a1;
  result = specialized OrderedDictionary.subscript.getter(*a1, *v2, v2[1], v2[2], &v35);
  v7 = v36;
  if (v36)
  {
    v8 = v35;
    specialized OrderedDictionary.subscript.getter(a1, v37, v38, v39, &v40);
    result = outlined consume of UserGraph.Adjacent?(v8, v7);
    v9 = v41;
    if (v41 >= 2)
    {
      v10 = v42;
      v11 = v43;
      v12 = a2;
      v13 = v44;
      v14 = v46;
      v31 = *(&v42 + 1);
      v32 = v40;
      v48[0] = v40;
      v48[1] = v41;
      v49 = v42;
      v50 = v43;
      v51 = v44;
      *v52 = *v45;
      *&v52[3] = *&v45[3];
      v53 = v46;
      v15 = specialized OrderedDictionary.subscript.modify(v57, *v12);
      if (*(v16 + 8))
      {
        v17 = *(v12 + 8);
        v56 = *(v12 + 16);
        v54 = v49;
        v59[0] = v32;
        v59[1] = v9;
        v59[2] = v10;
        v59[3] = v31;
        v59[4] = v11;
        v59[5] = v13 & 1;
        v59[6] = v14;
        v18 = v15;

        outlined init with copy of String(&v56, v47);

        outlined init with copy of String(&v54, v47);
        specialized OrderedDictionary.subscript.setter(v59, v12);
        v18(v57, 0);
      }

      else
      {
        v15(v57, 0);
      }

      v19 = specialized OrderedDictionary.subscript.modify(v47, v5);
      if (*(v20 + 8))
      {
        v21 = *(a1 + 8);
        v55 = *(a1 + 16);
        *v57 = xmmword_265F1F680;
        memset(&v57[2], 0, 32);
        v58 = 0;

        outlined init with copy of String(&v55, v34);
        specialized OrderedDictionary.subscript.setter(v57, a1);
      }

      v19(v47, 0);
      v22 = v48[0];
      v23 = specialized OrderedDictionary.subscript.modify(v34, v48[0]);
      if (*(v24 + 8))
      {
        v25 = specialized OrderedDictionary.subscript.modify(v33, v48);
        if (*(v26 + 8))
        {
          specialized OrderedSet.remove(_:)(a1, v47);
          outlined destroy of [Input](v47, &_s11ShaderGraph5InputVSgMd, &_s11ShaderGraph5InputVSgMR);
        }

        v25(v33, 0);
        v23(v34, 0);
      }

      else
      {
        v23(v34, 0);
      }

      v27 = specialized OrderedDictionary.subscript.modify(v34, v22);
      if (*(v28 + 8))
      {
        v29 = specialized OrderedDictionary.subscript.modify(v33, v48);
        if (*(v30 + 8))
        {
          specialized OrderedSet._append(_:)(v12);
        }

        v29(v33, 0);
        v27(v34, 0);
      }

      else
      {
        v27(v34, 0);
      }

      *v34 = v49;
      return outlined destroy of String(v34);
    }
  }

  return result;
}

uint64_t UserGraph.copyEdge(originalDestination:newDestination:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  specialized OrderedDictionary.subscript.getter(*a2, *v2, v2[1], v2[2], &v19);
  v6 = v20;
  if (!v20)
  {
    goto LABEL_3;
  }

  v7 = v23;
  v8 = v24;
  v10 = v21;
  v9 = v22;
  v37 = v19;

  outlined destroy of [Input](&v37, &_s11ShaderGraph10_HashTableV7StorageCSgMd, &_s11ShaderGraph10_HashTableV7StorageCSgMR);
  v36 = v6;
  outlined destroy of [Input](&v36, &_ss15ContiguousArrayVy11ShaderGraph6OutputVGMd, &_ss15ContiguousArrayVy11ShaderGraph6OutputVGMR);
  v35 = v10;
  outlined destroy of [Input](&v35, &_ss15ContiguousArrayVy11ShaderGraph10OrderedSetVyAC5InputVGGMd, &_ss15ContiguousArrayVy11ShaderGraph10OrderedSetVyAC5InputVGGMR);

  specialized OrderedDictionary.subscript.getter(a2, v9, v7, v8, v25);

  if (v25[1] >= 2uLL)
  {

    outlined destroy of [Input](v25, &_s11ShaderGraph6OutputVSgSgMd, &_s11ShaderGraph6OutputVSgSgMR);
    v17 = *(a2 + 8);
    v39[0] = *(a2 + 16);
    v18 = *(a2 + 24);

    outlined init with copy of String(v39, v31);
  }

  else
  {
LABEL_3:
    v11 = *(v3 + 9);
    v39[8] = *(v3 + 8);
    v40[0] = v11;
    *(v40 + 9) = *(v3 + 153);
    v12 = *(v3 + 5);
    v39[4] = *(v3 + 4);
    v39[5] = v12;
    v13 = *(v3 + 7);
    v39[6] = *(v3 + 6);
    v39[7] = v13;
    v14 = *(v3 + 1);
    v39[0] = *v3;
    v39[1] = v14;
    v15 = *(v3 + 3);
    v39[2] = *(v3 + 2);
    v39[3] = v15;
    UserGraph.output(connectedTo:)(a1, &v26);
    if (v27)
    {
      v31[0] = v26;
      v31[1] = v27;
      v32 = v28;
      v33 = v29;
      v34 = v30;
      UserGraph.connect(_:to:)(v31, a2);

      v38 = v32;
      outlined destroy of String(&v38);
      return 1;
    }
  }

  return 0;
}

unint64_t UserGraph.replaceShaderGraphData(for:with:)(uint64_t a1, unint64_t a2)
{
  v5 = *(v2 + 64);
  outlined copy of NodePersonality(a2);
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    v7 = *(a1 + 24);
    if ((v7 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
  v5 = result;
  v7 = *(a1 + 24);
  if ((v7 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v7 < *(v5 + 16))
  {
    v8 = v5 + 48 * v7;
    v9 = *(v8 + 32);
    *(v8 + 32) = a2;
    result = outlined consume of NodePersonality(v9);
    *(v2 + 64) = v5;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void UserGraph.hoist(_:)(unint64_t *a1)
{
  v2 = *a1;
  v90 = v2;
  if (v2 >> 61 != 6)
  {
    if (one-time initialization token for logger == -1)
    {
      goto LABEL_17;
    }

    goto LABEL_29;
  }

  v3 = (v2 & 0x1FFFFFFFFFFFFFFFLL);
  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[3];
  v7 = v3[4];
  v8 = v3[6];
  v69[4] = v3[5];
  v69[5] = v8;
  v69[2] = v6;
  v69[3] = v7;
  v9 = v3[7];
  v10 = v3[8];
  v11 = v3[9];
  v12 = v3[10];
  *(v70 + 9) = *(v3 + 169);
  v69[8] = v11;
  v70[0] = v12;
  v69[6] = v9;
  v69[7] = v10;
  v69[0] = v4;
  v69[1] = v5;
  v13 = v3[10];
  v79 = v3[9];
  v80[0] = v13;
  *(v80 + 9) = *(v3 + 169);
  v14 = v3[6];
  v75 = v3[5];
  v76 = v14;
  v15 = v3[8];
  v77 = v3[7];
  v78 = v15;
  v16 = v3[2];
  v71 = v3[1];
  v72 = v16;
  v17 = v3[4];
  v73 = v3[3];
  v74 = v17;
  outlined init with copy of UserGraph(v69, v91);
  UserGraph.flatten()();
  v18 = *(&v77 + 1);
  v19 = *(&v80[0] + 1);
  v68 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC11ShaderGraph0cD4NodeV2IDV_AGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v20 = v75;
  v21 = *(v75 + 16);

  if (!v21)
  {
LABEL_13:

    v30 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC11ShaderGraph6OutputV_SayAFGTt0g5Tf4g_nTm(v29, lazy protocol witness table accessor for type Output and conformance Output, &type metadata for Output, specialized Set._Variant.insert(_:));

    v32 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC11ShaderGraph6OutputV_SayAFGTt0g5Tf4g_nTm(v31, lazy protocol witness table accessor for type Input and conformance Input, &type metadata for Input, specialized Set._Variant.insert(_:));

    v98 = v79;
    v99[0] = v80[0];
    *(v99 + 9) = *(v80 + 9);
    v94 = v75;
    v95 = v76;
    v97 = v78;
    v96 = v77;
    *v91 = v71;
    *&v91[16] = v72;
    v93 = v74;
    v92 = v73;
    outlined init with copy of UserGraph(v91, &v58);
    v33 = UserGraph.sinkNodes()();
    specialized UserGraph.DepthFirstEdgeIterator.init(_:initial:)(v91, v33, v81);
    outlined destroy of UserGraph(v91);
    v34 = a1[1];
    v35 = a1[2];
    v89 = v34;
    v88 = v35;
    v87 = v81[0];
    v86 = v81[1];
    v85 = v81[2];
    v84 = v81[3];
    v83 = v81[4];

    outlined init with copy of NodePersonality(&v90, &v58);
    outlined init with copy of [Input](&v89, &v58, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    outlined init with copy of [Input](&v88, &v58, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
    outlined init with copy of [Input](&v87, &v58, &_s11ShaderGraph10_HashTableV7StorageCSgMd, &_s11ShaderGraph10_HashTableV7StorageCSgMR);
    outlined init with copy of [Input](&v86, &v58, &_ss15ContiguousArrayVy11ShaderGraph0cD4NodeV2IDVGMd, &_ss15ContiguousArrayVy11ShaderGraph0cD4NodeV2IDVGMR);
    outlined init with copy of [Input](&v85, &v58, &_ss15ContiguousArrayVy11ShaderGraph04UserD0V8AdjacentVGMd, &_ss15ContiguousArrayVy11ShaderGraph04UserD0V8AdjacentVGMR);
    outlined init with copy of [Input](&v84, &v58, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    outlined init with copy of [Input](&v83, &v58, &_sShy11ShaderGraph5InputVGMd, &_sShy11ShaderGraph5InputVGMR);
    while (1)
    {
      UserGraph.DepthFirstEdgeIterator.next()(v82);
      v55 = v82[4];
      v56 = v82[5];
      v57 = v82[6];
      v51 = v82[0];
      v52 = v82[1];
      v53 = v82[2];
      v54 = v82[3];
      if (!*(&v82[0] + 1))
      {
        break;
      }

      v62 = v55;
      v63 = v56;
      v64 = v57;
      v58 = v51;
      v59 = v52;
      v60 = v53;
      v61 = v54;
      specialized closure #2 in UserGraph.hoist(_:)(&v58, v30, v32, v34, v35, v1, &v68);
      v48 = v62;
      v49 = v63;
      v50 = v64;
      v44 = v58;
      v45 = v59;
      v46 = v60;
      v47 = v61;
      outlined destroy of Edge(&v44);
    }

    outlined destroy of NodePersonality(&v90);
    outlined destroy of [Input](&v89, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    outlined destroy of [Input](&v88, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

    outlined destroy of [Input](&v87, &_s11ShaderGraph10_HashTableV7StorageCSgMd, &_s11ShaderGraph10_HashTableV7StorageCSgMR);
    outlined destroy of [Input](&v86, &_ss15ContiguousArrayVy11ShaderGraph0cD4NodeV2IDVGMd, &_ss15ContiguousArrayVy11ShaderGraph0cD4NodeV2IDVGMR);
    outlined destroy of [Input](&v85, &_ss15ContiguousArrayVy11ShaderGraph04UserD0V8AdjacentVGMd, &_ss15ContiguousArrayVy11ShaderGraph04UserD0V8AdjacentVGMR);
    outlined destroy of [Input](&v84, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    outlined destroy of [Input](&v83, &_sShy11ShaderGraph5InputVGMd, &_sShy11ShaderGraph5InputVGMR);

    v40 = a1[3];
    specialized UserGraph.removeEdges(connectedTo:)(v40);
    v41 = *(v1 + 64);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      if ((v40 & 0x8000000000000000) == 0)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v41 = specialized _ArrayBuffer._consumeAndCreateNew()(v41);
      if ((v40 & 0x8000000000000000) == 0)
      {
LABEL_21:
        if (v40 < *(v41 + 2))
        {
          ShaderGraphNode.update(id:)(-7);
          *(v1 + 64) = v41;
          v66 = v79;
          v67[0] = v80[0];
          *(v67 + 9) = *(v80 + 9);
          v62 = v75;
          v63 = v76;
          v64 = v77;
          v65 = v78;
          v58 = v71;
          v59 = v72;
          v60 = v73;
          v61 = v74;
          outlined destroy of UserGraph(&v58);

          return;
        }

        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
    v48 = v62;
    v49 = v63;
    v50 = v64;
    v44 = v58;
    v45 = v59;
    v46 = v60;
    v47 = v61;
    outlined destroy of Edge(&v44);

    __break(1u);
    return;
  }

  v22 = 0;
  while (v22 < v21)
  {
    v23 = v20 + 32 + 48 * v22;
    v24 = *(v23 + 24);
    v26 = __OFADD__(v22++, 1);
    if (v24 == -7)
    {
      if (v26)
      {
        goto LABEL_27;
      }

      if (v22 >= v21)
      {
        goto LABEL_13;
      }
    }

    else
    {
      if (v26)
      {
        goto LABEL_28;
      }

      v27 = *(v23 + 40);
      v28 = *(v23 + 32);
      *v91 = *v23;
      *&v91[8] = *(v23 + 8);
      *&v91[24] = v24;
      *&v92 = v28;
      BYTE8(v92) = v27;
      specialized closure #1 in UserGraph.hoist(_:)(v91, v18, v19, v1, &v68);
      if (v22 >= v21)
      {
        goto LABEL_13;
      }
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  swift_once();
LABEL_17:
  v36 = type metadata accessor for Logger();
  __swift_project_value_buffer(v36, logger);
  oslog = Logger.logObject.getter();
  v37 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v91 = v39;
    *v38 = 136315138;
    *(v38 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x3A5F287473696F68, 0xE900000000000029, v91);
    _os_log_impl(&dword_265D7D000, oslog, v37, "%s: Called on a non-graph node.", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v39);
    MEMORY[0x266773120](v39, -1, -1);
    MEMORY[0x266773120](v38, -1, -1);
  }

  else
  {
  }
}

unint64_t *UserGraph.node(containingInput:)@<X0>(unint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v4 = *result;
  if (*result == -7)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0uLL;
LABEL_6:
    *a2 = v5;
    *(a2 + 8) = v6;
    *(a2 + 16) = v7;
    *(a2 + 24) = v9;
    *(a2 + 40) = v8;
    return result;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v10 = *(v2 + 64);
    if (v4 < *(v10 + 16))
    {
      v11 = v10 + 48 * v4;
      v5 = *(v11 + 32);
      v6 = *(v11 + 40);
      v7 = *(v11 + 48);
      v12 = *(v11 + 56);
      v8 = *(v11 + 72);
      outlined copy of NodePersonality(v5);

      v9 = v12;
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

uint64_t UserGraph.remove(_:)(uint64_t a1)
{
  v2 = v1;
  v71 = *(a1 + 56);
  v3 = *(a1 + 88);
  v72 = *(a1 + 72);
  v73 = v3;
  v74 = *(a1 + 104);
  v4 = *(a1 + 16);
  v69[0] = *a1;
  v69[1] = v4;
  v69[2] = *(a1 + 32);
  v70 = *(a1 + 48);
  v6 = specialized OrderedDictionary.subscript.modify(v68, *&v69[0]);
  v7 = v5[1];
  if (!v7)
  {
    v6(v68, 0);
    goto LABEL_25;
  }

  v8 = v5;
  v9 = *v5;
  v10 = *(v7 + 16);
  if (!*v5)
  {
    v17 = specialized Collection<>.firstIndex(of:)(v69, v7 + 32, *(v7 + 16));
    if ((v18 & 1) == 0)
    {
      v12 = v17;
      goto LABEL_19;
    }

    v16 = 0;
LABEL_8:
    specialized OrderedSet._appendNew(_:in:)(v69, v16, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:));
    _s11ShaderGraph10OrderedSetVyACyxGqd__c7ElementQyd__RszSkRd__lufCAA5InputV_SayAHGTt0g5(MEMORY[0x277D84F90]);
    v20 = v19;
    v22 = v21;
    v25 = v8[2];
    v23 = v8 + 2;
    v24 = v25;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v23 = v25;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v24 + 16) + 1, 1);
      v24 = *v23;
    }

    v28 = *(v24 + 16);
    v27 = *(v24 + 24);
    if (v28 >= v27 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1);
      v24 = *v23;
    }

    *(v24 + 16) = v28 + 1;
    v29 = v24 + 16 * v28;
    *(v29 + 32) = v20;
    *(v29 + 40) = v22;
    v12 = *v23;
    v30 = *(*v23 + 16);
    v31 = swift_isUniquelyReferenced_nonNull_native();
    *v23 = v12;
    if ((v31 & 1) == 0)
    {
      v12 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v12);
      *v23 = v12;
    }

    if (v30)
    {
      v33 = *(v12 + 16);
      v12 += 16;
      v32 = v33;
      if (v30 <= v33)
      {
        v34 = v12 + 16 * v30;
        v75 = v72;

        outlined init with copy of String(&v75, v67);
        v12 = 0;
        v35 = specialized MutableCollection._halfStablePartition(isSuffixElement:)((v34 + 8), &v71);
        v36 = *(*(v34 + 8) + 16);
        if (v36 < v35)
        {
LABEL_54:
          __break(1u);
          goto LABEL_55;
        }

        goto LABEL_24;
      }

      goto LABEL_49;
    }

    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v11 = *v5;

  v12 = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(v69, v7 + 32, v10, (v9 + 16), v9 + 32);
  v14 = v13;
  v16 = v15;

  if (v14)
  {
    goto LABEL_8;
  }

LABEL_19:
  v30 = v8[2];
  v37 = swift_isUniquelyReferenced_nonNull_native();
  v8[2] = v30;
  if ((v37 & 1) == 0)
  {
    v30 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v30);
    v8[2] = v30;
  }

  if ((v12 & 0x8000000000000000) != 0)
  {
    goto LABEL_48;
  }

  v32 = *(v30 + 16);
  if (v12 >= v32)
  {
LABEL_50:
    __break(1u);
LABEL_51:
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v6, 1);
    v52 = *v12;
LABEL_35:
    v52[2] = v6;
    v55 = &v52[7 * v30];
    *(v55 + 2) = 0u;
    *(v55 + 3) = 0u;
    *(v55 + 4) = 0u;
    v55[10] = 0;
    v56 = *v12;
    v57 = *(*v12 + 16);
    v58 = swift_isUniquelyReferenced_nonNull_native();
    *v12 = v56;
    if ((v58 & 1) == 0)
    {
      v56 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v56);
      *v12 = v56;
    }

    if (v57)
    {
      if (v57 <= v56[2])
      {
        v59 = &v56[7 * v57 - 3];
LABEL_46:
        v62 = v59[2];
        v63 = v59[3];
        v64 = v59[4];
        v65 = v59[5];
        v66 = v59[6];
        outlined consume of Output?(*v59, v59[1]);
        v59[6] = 0;
        *(v59 + 1) = 0u;
        *(v59 + 2) = 0u;
        *v59 = 0u;
        return v2(v68, 0);
      }

      goto LABEL_56;
    }

    __break(1u);
    goto LABEL_53;
  }

  v38 = (v30 + 16 * v12);
  v75 = v72;

  outlined init with copy of String(&v75, v67);
  v12 = 0;
  v35 = specialized MutableCollection._halfStablePartition(isSuffixElement:)(v38 + 5, &v71);
  v36 = *(v38[5] + 16);
  if (v36 < v35)
  {
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

LABEL_24:
  specialized ContiguousArray.replaceSubrange<A>(_:with:)(v35, v36, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
  specialized OrderedSet._regenerateHashTable()(_s11ShaderGraph10_HashTableV6create23uncheckedUniqueElements5scale13reservedScaleACSgx_SiSgSitSkRzSH7ElementRpzlFZs15ContiguousArrayVyAA5InputVG_Tt2g5Tm);
  v6(v68, 0);
LABEL_25:
  v2 = specialized OrderedDictionary.subscript.modify(v68, v71);
  if (!v39[1])
  {
    return v2(v68, 0);
  }

  v12 = v39;
  v40 = v39[3];
  v41 = v39[4];
  v42 = *(v41 + 16);
  if (!v40)
  {
    v50 = specialized Collection<>.firstIndex(of:)(&v71, v41 + 32, *(v41 + 16));
    if ((v51 & 1) == 0)
    {
      v44 = v50;
      goto LABEL_41;
    }

    v48 = 0;
LABEL_32:
    specialized OrderedSet._appendNew(_:in:)(&v71, v48, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:));
    v53 = *(v12 + 40);
    v12 += 40;
    v52 = v53;
    v54 = swift_isUniquelyReferenced_nonNull_native();
    *v12 = v53;
    if ((v54 & 1) == 0)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v52[2] + 1, 1);
      v52 = *v12;
    }

    v30 = v52[2];
    v32 = v52[3];
    v6 = (v30 + 1);
    if (v30 < v32 >> 1)
    {
      goto LABEL_35;
    }

    goto LABEL_51;
  }

  v43 = v39[3];

  v44 = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(&v71, v41 + 32, v42, (v40 + 16), v40 + 32);
  v46 = v45;
  v48 = v47;

  if (v46)
  {
    goto LABEL_32;
  }

LABEL_41:
  v60 = *(v12 + 40);
  v61 = swift_isUniquelyReferenced_nonNull_native();
  *(v12 + 40) = v60;
  if ((v61 & 1) == 0)
  {
    v60 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v60);
    *(v12 + 40) = v60;
  }

  if ((v44 & 0x8000000000000000) != 0)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  if (v44 < v60[2])
  {
    v59 = &v60[7 * v44 + 4];
    goto LABEL_46;
  }

LABEL_57:
  __break(1u);

  result = specialized OrderedSet._regenerateHashTable()(_s11ShaderGraph10_HashTableV6create23uncheckedUniqueElements5scale13reservedScaleACSgx_SiSgSitSkRzSH7ElementRpzlFZs15ContiguousArrayVyAA5InputVG_Tt2g5Tm);
  __break(1u);
  return result;
}

uint64_t UserGraph.connectedBreathFirstUpstreamSubgraph(rootedAt:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph0dE4NodeVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph0dE4NodeVGMR);
  inited = swift_initStackObject();
  v5 = *a1;
  v59 = a1[1];
  v60[0] = v5;
  v58 = a1[2];
  v7 = *a1;
  v6 = *(a1 + 1);
  inited[1] = xmmword_265F1F670;
  inited[2] = v7;
  inited[3] = v6;
  *(inited + 57) = *(a1 + 25);
  outlined init with copy of UserGraph(v2, &v44);
  outlined init with copy of NodePersonality(v60, &v44);
  outlined init with copy of [Input](&v59, &v44, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
  outlined init with copy of [Input](&v58, &v44, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
  specialized UserGraph.BreathFirstEdgeIterator.init(_:initial:)(v2, inited, v48);
  v37 = v2;
  outlined destroy of UserGraph(v2);
  v8 = MEMORY[0x277D84F90];
  v43 = MEMORY[0x277D84F90];
  v56 = v48[1];
  v57 = v48[0];
  v54 = v48[3];
  v55 = v48[2];
  v52 = v48[5];
  v53 = v48[4];
  outlined init with copy of [Input](&v57, &v44, &_s11ShaderGraph10_HashTableV7StorageCSgMd, &_s11ShaderGraph10_HashTableV7StorageCSgMR);
  outlined init with copy of [Input](&v56, &v44, &_ss15ContiguousArrayVy11ShaderGraph0cD4NodeV2IDVGMd, &_ss15ContiguousArrayVy11ShaderGraph0cD4NodeV2IDVGMR);
  outlined init with copy of [Input](&v55, &v44, &_ss15ContiguousArrayVy11ShaderGraph04UserD0V8AdjacentVGMd, &_ss15ContiguousArrayVy11ShaderGraph04UserD0V8AdjacentVGMR);
  outlined init with copy of [Input](&v54, &v44, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
  outlined init with copy of [Input](&v53, &v44, &_sShy11ShaderGraph5InputVGMd, &_sShy11ShaderGraph5InputVGMR);
  outlined init with copy of [Input](&v52, &v44, &_sSay11ShaderGraph0aB4NodeVGMd, &_sSay11ShaderGraph0aB4NodeVGMR);
  UserGraph.BreathFirstEdgeIterator.next()(&v49);
  if (v50)
  {
    do
    {
      v9 = v49;
      specialized OrderedSet._append(_:)(v51);
      specialized OrderedSet._append(_:)(v9);
      outlined destroy of [Input](&v49, &_s11ShaderGraph4EdgeVSgMd, &_s11ShaderGraph4EdgeVSgMR);
      UserGraph.BreathFirstEdgeIterator.next()(&v49);
    }

    while (v50);
    v10 = v43;
  }

  else
  {
    v10 = v8;
  }

  v11 = *(v10 + 16);
  if (v11)
  {
    v35 = a1;
    v44 = v8;
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11, 0);
    v13 = 0;
    v14 = v44;
    v15 = *(v37 + 64);
    v38 = v15 + 32;
    v39 = v11;
    v40 = v10;
    v41 = *(v15 + 16);
    while (v13 < *(v10 + 16))
    {
      v16 = *(v10 + 8 * v13 + 32);
      if (v16 >= v41)
      {
        goto LABEL_16;
      }

      v17 = v38 + 48 * v16;
      v18 = *v17;
      v19 = *(v17 + 8);
      v20 = *(v17 + 16);
      v21 = *(v17 + 24);
      v42 = *(v17 + 32);
      v22 = *(v17 + 40);
      outlined copy of NodePersonality(*v17);
      v44 = v14;
      v23 = *(v14 + 16);
      v24 = *(v14 + 24);

      if (v23 >= v24 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v23 + 1, 1);
        v14 = v44;
      }

      ++v13;
      *(v14 + 16) = v23 + 1;
      v25 = v14 + 48 * v23;
      *(v25 + 32) = v18;
      *(v25 + 40) = v19;
      *(v25 + 48) = v20;
      *(v25 + 56) = v21;
      *(v25 + 64) = v42;
      *(v25 + 72) = v22;
      v10 = v40;
      if (v39 == v13)
      {

        v26 = v14;
        v27 = a2;
        a1 = v35;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  else
  {

    v26 = MEMORY[0x277D84F90];
    v27 = a2;
LABEL_14:
    v28 = swift_initStackObject();
    v29 = *a1;
    v30 = *(a1 + 1);
    v28[1] = xmmword_265F1F670;
    v28[2] = v29;
    v28[3] = v30;
    *(v28 + 57) = *(a1 + 25);
    outlined init with copy of UserGraph(v37, &v44);
    outlined init with copy of NodePersonality(v60, &v44);
    outlined init with copy of [Input](&v59, &v44, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    outlined init with copy of [Input](&v58, &v44, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
    specialized UserGraph.BreathFirstEdgeIterator.init(_:initial:)(v37, v28, &v44);
    v31 = v44;
    v32 = v47;
    outlined destroy of UserGraph(v37);
    outlined destroy of [Input](&v57, &_s11ShaderGraph10_HashTableV7StorageCSgMd, &_s11ShaderGraph10_HashTableV7StorageCSgMR);
    outlined destroy of [Input](&v56, &_ss15ContiguousArrayVy11ShaderGraph0cD4NodeV2IDVGMd, &_ss15ContiguousArrayVy11ShaderGraph0cD4NodeV2IDVGMR);
    outlined destroy of [Input](&v55, &_ss15ContiguousArrayVy11ShaderGraph04UserD0V8AdjacentVGMd, &_ss15ContiguousArrayVy11ShaderGraph04UserD0V8AdjacentVGMR);
    outlined destroy of [Input](&v54, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    outlined destroy of [Input](&v53, &_sShy11ShaderGraph5InputVGMd, &_sShy11ShaderGraph5InputVGMR);
    result = outlined destroy of [Input](&v52, &_sSay11ShaderGraph0aB4NodeVGMd, &_sSay11ShaderGraph0aB4NodeVGMR);
    v33 = v45;
    v34 = v46;
    *v27 = v26;
    *(v27 + 8) = v31;
    *(v27 + 16) = v33;
    *(v27 + 32) = v34;
    *(v27 + 48) = v32;
  }

  return result;
}

uint64_t UserGraph.removeEdge(to:)(uint64_t *a1)
{
  result = specialized OrderedDictionary.subscript.getter(*a1, *v1, v1[1], v1[2], &v11);
  v4 = v12;
  if (v12)
  {
    v5 = v11;
    specialized OrderedDictionary.subscript.getter(a1, v13, v14, v15, &v16);
    result = outlined consume of UserGraph.Adjacent?(v5, v4);
    if (v17 >= 2)
    {
      v24 = v18;
      v25 = v19;
      v6 = *(a1 + 1);
      v7 = *(a1 + 2);
      v27 = *a1;
      v28 = v6;
      v29 = v7;
      v8 = a1[1];
      v21 = v18;
      v22 = v6;
      v9 = a1[6];
      v26 = v20;
      v30 = v9;
      v23[0] = v16;
      v23[1] = v17;
      outlined init with copy of [Input](&v16, v10, &_s11ShaderGraph6OutputVSgSgMd, &_s11ShaderGraph6OutputVSgSgMR);

      outlined init with copy of String(&v21, v10);

      outlined init with copy of String(&v22, v10);
      UserGraph.remove(_:)(v23);
      outlined destroy of Edge(v23);

      outlined destroy of String(&v21);
      return outlined destroy of [Input](&v16, &_s11ShaderGraph6OutputVSgSgMd, &_s11ShaderGraph6OutputVSgSgMR);
    }
  }

  return result;
}

uint64_t Input.label.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t Input.graphid.getter()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

BOOL _s11ShaderGraph6OutputVSQAASQ2eeoiySbx_xtFZTW_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return specialized static Input.== infix(_:_:)(v5, v7);
}

uint64_t Input.hash(into:)(uint64_t a1)
{
  MEMORY[0x266772770](*v1);
  (*(**(v1 + 8) + 120))(a1);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  String.hash(into:)();
  if (*(v1 + 40) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v5 = *(v1 + 32);
    Hasher._combine(_:)(1u);
    MEMORY[0x266772770](v5);
  }

  return MEMORY[0x266772770](*(v1 + 48));
}

Swift::Int Input.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x266772770](*v0);
  (*(**(v0 + 8) + 120))(v5);
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  String.hash(into:)();
  if (*(v0 + 40) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v3 = *(v0 + 32);
    Hasher._combine(_:)(1u);
    MEMORY[0x266772770](v3);
  }

  MEMORY[0x266772770](*(v0 + 48));
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Input()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = *(v0 + 40);
  v7 = v0[6];
  Hasher.init(_seed:)();
  MEMORY[0x266772770](v1);
  (*(*v2 + 120))(v9);
  String.hash(into:)();
  if (v6 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x266772770](v5);
  }

  MEMORY[0x266772770](v7);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Input(uint64_t a1)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  MEMORY[0x266772770](*v1);
  (*(*v3 + 120))(a1);
  String.hash(into:)();
  if (v7 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x266772770](v6);
  }

  return MEMORY[0x266772770](v8);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Input()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = *(v0 + 40);
  v7 = v0[6];
  Hasher.init(_seed:)();
  MEMORY[0x266772770](v1);
  (*(*v2 + 120))(v9);
  String.hash(into:)();
  if (v6 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x266772770](v5);
  }

  MEMORY[0x266772770](v7);
  return Hasher._finalize()();
}

uint64_t Output.dotID.getter()
{
  v1 = v0[4];
  *(v0 + 40);
  v2 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266771550](v2);

  MEMORY[0x266771550](110, 0xE100000000000000);
  v10 = *v0;
  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266771550](v3);

  MEMORY[0x266771550](0x5F7475706E695FLL, 0xE700000000000000);
  v4 = v0[2];
  v0[3];

  v5 = String.Iterator.next()();
  object = v5.value._object;
  if (v5.value._object)
  {
    countAndFlagsBits = v5.value._countAndFlagsBits;
    do
    {
      if ((countAndFlagsBits != 58 || object != 0xE100000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        MEMORY[0x266771540](countAndFlagsBits, object);
      }

      v8 = String.Iterator.next()();
      countAndFlagsBits = v8.value._countAndFlagsBits;
      object = v8.value._object;
    }

    while (v8.value._object);
    object = 0;
  }

  MEMORY[0x266771550](object, 0xE000000000000000);

  return 103;
}

uint64_t Input.dotID.getter()
{
  _StringGuts.grow(_:)(16);

  v1 = v0[4];
  *(v0 + 40);
  v2 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266771550](v2);

  MEMORY[0x266771550](110, 0xE100000000000000);
  v10 = *v0;
  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266771550](v3);

  MEMORY[0x266771550](0x5F74757074756F5FLL, 0xE800000000000000);
  v4 = v0[2];
  v0[3];

  v5 = String.Iterator.next()();
  object = v5.value._object;
  if (v5.value._object)
  {
    countAndFlagsBits = v5.value._countAndFlagsBits;
    do
    {
      if ((countAndFlagsBits != 58 || object != 0xE100000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        MEMORY[0x266771540](countAndFlagsBits, object);
      }

      v8 = String.Iterator.next()();
      countAndFlagsBits = v8.value._countAndFlagsBits;
      object = v8.value._object;
    }

    while (v8.value._object);
    object = 0;
  }

  MEMORY[0x266771550](object, 0xE000000000000000);

  return 103;
}

uint64_t ShaderGraphNode.dotID.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  return specialized ShaderGraphNode.dotID.getter();
}

uint64_t Edge.from.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  *(a1 + 48) = v7;
}

uint64_t Edge.to.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  v3 = *(v1 + 72);
  v4 = *(v1 + 80);
  v5 = *(v1 + 88);
  v6 = *(v1 + 96);
  v7 = *(v1 + 104);
  *a1 = *(v1 + 56);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  *(a1 + 48) = v7;
}

uint64_t Edge.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  MEMORY[0x266772770](*v1);
  (*(*v3 + 120))(a1);
  String.hash(into:)();
  if (v7)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x266772770](v6);
  }

  MEMORY[0x266772770](v8);
  v9 = *(v1 + 64);
  v10 = *(v1 + 72);
  v11 = *(v1 + 80);
  v12 = *(v1 + 88);
  v13 = *(v1 + 96);
  v14 = *(v1 + 104);
  MEMORY[0x266772770](*(v1 + 56));
  (*(*v9 + 120))(a1);
  String.hash(into:)();
  if (v13)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x266772770](v12);
  }

  return MEMORY[0x266772770](v14);
}

Swift::Int Edge.hashValue.getter()
{
  Hasher.init(_seed:)();
  Edge.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Edge()
{
  Hasher.init(_seed:)();
  Edge.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Edge()
{
  Hasher.init(_seed:)();
  Edge.hash(into:)(v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Edge(_OWORD *a1, __int128 *a2)
{
  v2 = a1[5];
  v13[4] = a1[4];
  v13[5] = v2;
  v3 = a1[6];
  v4 = a1[1];
  v13[0] = *a1;
  v13[1] = v4;
  v5 = a1[3];
  v13[2] = a1[2];
  v13[3] = v5;
  v6 = *a2;
  v7 = a2[1];
  v13[6] = v3;
  v14[0] = v6;
  v8 = a2[2];
  v9 = a2[3];
  v10 = a2[6];
  v14[5] = a2[5];
  v14[6] = v10;
  v11 = a2[4];
  v14[3] = v9;
  v14[4] = v11;
  v14[1] = v7;
  v14[2] = v8;
  return specialized static Edge.== infix(_:_:)(v13, v14) & 1;
}

unint64_t ShaderGraphNode.shaderGraphData.getter()
{
  v1 = *v0;
  outlined copy of NodePersonality(*v0);
  return v1;
}

unint64_t ShaderGraphNode.shaderGraphData.setter(unint64_t a1)
{
  result = outlined consume of NodePersonality(*v1);
  *v1 = a1;
  return result;
}

uint64_t ShaderGraphNode.graphid.getter()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

uint64_t ShaderGraphNode.ID.description.getter()
{
  v0 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266771550](v0);

  return 1701080942;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ShaderGraphNode.ID()
{
  v3 = *v0;
  v1 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266771550](v1);

  return 1701080942;
}

Swift::Void __swiftcall ShaderGraphNode.update(id:)(ShaderGraph::ShaderGraphNode::ID id)
{
  v1[3].value = id.value;
  value = v1[1].value;
  v4 = *(value + 16);

  if (v4)
  {
    v5 = 0;
    v6 = 0;
    v7 = value;
    while (v6 < *(value + 16))
    {
      v8 = *(value + v5 + 40);
      v9 = *(value + v5 + 56);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
      }

      if (v6 >= *(v7 + 2))
      {
        goto LABEL_19;
      }

      ++v6;
      *&v7[v5 + 32] = id;

      v1[1].value = v7;
      v5 += 56;
      if (v4 == v6)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_8:

    v10 = v1[2].value;
    v11 = *(v10 + 16);

    if (!v11)
    {
LABEL_15:

      return;
    }

    v12 = 0;
    v13 = 0;
    v14 = v10;
    while (v13 < *(v10 + 16))
    {
      v15 = *(v10 + v12 + 40);
      v16 = *(v10 + v12 + 56);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = specialized _ArrayBuffer._consumeAndCreateNew()(v14);
      }

      if (v13 >= *(v14 + 2))
      {
        goto LABEL_21;
      }

      ++v13;
      *&v14[v12 + 32] = id;

      v1[2].value = v14;
      v12 += 56;
      if (v11 == v13)
      {
        goto LABEL_15;
      }
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

void ShaderGraphNode.hash(into:)(uint64_t a1)
{
  v2 = v1;
  NodePersonality.hash(into:)(a1, *v2);
  specialized Array<A>.hash(into:)(a1, *(v2 + 8));
  specialized Array<A>.hash(into:)(a1, *(v2 + 16));
  MEMORY[0x266772770](*(v2 + 24));
  if (*(v2 + 40) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v4 = *(v2 + 32);
    Hasher._combine(_:)(1u);
    MEMORY[0x266772770](v4);
  }
}

Swift::Int ShaderGraphNode.hashValue.getter()
{
  Hasher.init(_seed:)();
  NodePersonality.hash(into:)(v3, *v0);
  specialized Array<A>.hash(into:)(v3, *(v0 + 8));
  specialized Array<A>.hash(into:)(v3, *(v0 + 16));
  MEMORY[0x266772770](*(v0 + 24));
  if (*(v0 + 40) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v1 = *(v0 + 32);
    Hasher._combine(_:)(1u);
    MEMORY[0x266772770](v1);
  }

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ShaderGraphNode()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  Hasher.init(_seed:)();
  NodePersonality.hash(into:)(v8, v1);
  specialized Array<A>.hash(into:)(v8, v2);
  specialized Array<A>.hash(into:)(v8, v3);
  MEMORY[0x266772770](v4);
  if (v6 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x266772770](v5);
  }

  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance ShaderGraphNode(uint64_t a1)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  NodePersonality.hash(into:)(a1, *v1);
  specialized Array<A>.hash(into:)(a1, v3);
  specialized Array<A>.hash(into:)(a1, v4);
  MEMORY[0x266772770](v5);
  if (v7 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x266772770](v6);
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ShaderGraphNode()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  Hasher.init(_seed:)();
  NodePersonality.hash(into:)(v8, v1);
  specialized Array<A>.hash(into:)(v8, v2);
  specialized Array<A>.hash(into:)(v8, v3);
  MEMORY[0x266772770](v4);
  if (v6 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x266772770](v5);
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ShaderGraphNode(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 9) = *(a1 + 25);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 9) = *(a2 + 25);
  return specialized static ShaderGraphNode.== infix(_:_:)(&v5, &v7) & 1;
}

uint64_t UserGraph.Iterator.elements.getter()
{
  v1 = v0[1];
  v2 = v0[2];
  v4 = v0[3];
  v3 = v0[4];
  return swift_unknownObjectRetain();
}

uint64_t UserGraph.Iterator.isLiving.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t UserGraph.Iterator.init(elements:isLiving:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  swift_unknownObjectRetain();
  v14 = ArraySlice.startIndex.getter();
  result = swift_unknownObjectRelease();
  *a7 = v14;
  a7[1] = a1;
  a7[2] = a2;
  a7[3] = a3;
  a7[4] = a4;
  a7[5] = a5;
  a7[6] = a6;
  return result;
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance UserGraph.Iterator<A>()
{
  v1 = specialized Sequence._copyToContiguousArray()();
  v2 = *(v0 + 8);
  swift_unknownObjectRelease();
  v3 = *(v0 + 48);

  return v1;
}

void UserGraph.DepthFirstEdgeIterator.next()(uint64_t a1@<X8>)
{
  v3 = (v1 + 24);
  v2 = *(v1 + 24);
  v4 = *(v2 + 2);
  v5 = 0uLL;
  if (v4)
  {
    v6 = v1;
    v49 = a1;
    v54 = (v1 + 24);
    while (1)
    {
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v8 = *(v2 + 2);
        if (!v8)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
        v8 = *(v2 + 2);
        if (!v8)
        {
LABEL_27:
          __break(1u);
LABEL_28:
          v35 = 0;
          v34 = 0;
          v36 = 0;
          v33 = 0;
          v37 = 0;
          v4 = 0;
          v38 = 0;
          v39 = 0;
          v40 = 0uLL;
          v41 = 0uLL;
          a1 = v49;
          v5 = 0uLL;
          goto LABEL_30;
        }
      }

      v9 = v8 - 1;
      v10 = &v2[56 * v8];
      v11 = *(v10 - 24);
      v12 = *(v10 - 8);
      v13 = *(v10 + 8);
      v70 = *(v10 + 3);
      v68 = v12;
      v69 = v13;
      v67 = v11;
      *(v2 + 2) = v9;
      *v3 = v2;
      if (specialized Set.contains(_:)(&v67, v6[4]))
      {

        v71 = v68;
        v7 = &v71;
      }

      else
      {
        v72[0] = v68;

        outlined init with copy of String(v72, &v56);
        specialized Set._Variant.insert(_:)(&v56, &v67);

        v14 = *v6;
        v15 = v6[1];
        v16 = v6[2];
        v17 = v15 + 32;
        v18 = *(v15 + 16);
        if (*v6)
        {
          v19 = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(v67, v17, v18, (v14 + 16), v14 + 32);
          if (v20)
          {
            goto LABEL_19;
          }

          if ((v19 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_36:
            __break(1u);
LABEL_37:
            __break(1u);
LABEL_38:
            __break(1u);
            return;
          }
        }

        else
        {
          if (!v18)
          {
LABEL_19:

            v7 = v72;
            goto LABEL_4;
          }

          v19 = 0;
          while (*(v17 + 8 * v19) != v67)
          {
            if (v18 == ++v19)
            {
              goto LABEL_19;
            }
          }
        }

        if (v19 >= *(v16 + 16))
        {
          goto LABEL_36;
        }

        v21 = (v16 + 48 * v19);
        v22 = v21[7];
        v23 = v21[8];
        v24 = v21[9];
        v25 = *(v23 + 16);
        if (v22)
        {

          v26 = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(&v67, v23 + 32, v25, (v22 + 16), v22 + 32);
          if (v27)
          {
            goto LABEL_21;
          }
        }

        else
        {

          v26 = specialized Collection<>.firstIndex(of:)(&v67, v23 + 32, v25);
          if (v28)
          {
LABEL_21:

            v7 = v72;
            goto LABEL_4;
          }
        }

        if ((v26 & 0x8000000000000000) != 0)
        {
          goto LABEL_37;
        }

        if (v26 >= *(v24 + 16))
        {
          goto LABEL_38;
        }

        v50 = v16;
        v29 = (v24 + 56 * v26);
        v30 = v29[5];
        v31 = v29[9];
        v32 = v29[10];
        v51 = v29[6];
        v52 = v29[4];
        v33 = v29[7];
        v53 = v29[8];
        outlined copy of Output?(v52, v30);

        v34 = v30;

        if (v30)
        {

          v36 = v51;
          v47 = v32;
          outlined consume of Output?(v52, v34);
          v39 = v31 & 1;
          LOBYTE(v56) = v39;
          v48 = v67;
          v45 = v69;
          v46 = v68;
          v38 = v70;
          specialized OrderedDictionary.subscript.getter(v52, v14, v15, v50, &v56);
          v42 = v57;
          v37 = v53;
          if (v57)
          {
            v43 = v60;
            v44 = v58;
            v64 = v59;
            v62 = v61;
            v63 = v60;
            v66 = v56;

            outlined init with copy of String(v72, v55);
            outlined init with copy of [Input](&v64, v55, &_s11ShaderGraph10_HashTableV7StorageCSgMd, &_s11ShaderGraph10_HashTableV7StorageCSgMR);
            outlined init with copy of [Input](&v63, v55, &_ss15ContiguousArrayVy11ShaderGraph5InputVGMd, &_ss15ContiguousArrayVy11ShaderGraph5InputVGMR);
            outlined init with copy of [Input](&v62, v55, &_ss15ContiguousArrayVy11ShaderGraph6OutputVSgGMd, &_ss15ContiguousArrayVy11ShaderGraph6OutputVSgGMR);
            outlined destroy of [Input](&v66, &_s11ShaderGraph10_HashTableV7StorageCSgMd, &_s11ShaderGraph10_HashTableV7StorageCSgMR);
            v55[0] = v42;
            outlined destroy of [Input](v55, &_ss15ContiguousArrayVy11ShaderGraph6OutputVGMd, &_ss15ContiguousArrayVy11ShaderGraph6OutputVGMR);
            v65 = v44;
            outlined destroy of [Input](&v65, &_ss15ContiguousArrayVy11ShaderGraph10OrderedSetVyAC5InputVGGMd, &_ss15ContiguousArrayVy11ShaderGraph10OrderedSetVyAC5InputVGGMR);
            outlined destroy of [Input](&v64, &_s11ShaderGraph10_HashTableV7StorageCSgMd, &_s11ShaderGraph10_HashTableV7StorageCSgMR);
            outlined destroy of [Input](&v63, &_ss15ContiguousArrayVy11ShaderGraph5InputVGMd, &_ss15ContiguousArrayVy11ShaderGraph5InputVGMR);
            outlined destroy of [Input](&v62, &_ss15ContiguousArrayVy11ShaderGraph6OutputVSgGMd, &_ss15ContiguousArrayVy11ShaderGraph6OutputVSgGMR);
            v36 = v51;
            outlined destroy of [Input](&v62, &_ss15ContiguousArrayVy11ShaderGraph6OutputVSgGMd, &_ss15ContiguousArrayVy11ShaderGraph6OutputVSgGMR);
            v35 = v52;
            v37 = v53;
            outlined destroy of [Input](&v64, &_s11ShaderGraph10_HashTableV7StorageCSgMd, &_s11ShaderGraph10_HashTableV7StorageCSgMR);
          }

          else
          {
            v35 = v52;

            outlined init with copy of String(v72, v55);
            v43 = MEMORY[0x277D84F90];
          }

          specialized Array.append<A>(contentsOf:)(v43);

          outlined destroy of String(v72);
          a1 = v49;
          v5 = v48;
          v4 = v47;
          v41 = v45;
          v40 = v46;
          goto LABEL_30;
        }

        v7 = v72;
        v3 = v54;
      }

LABEL_4:
      outlined destroy of String(v7);
      v2 = *v3;
      if (!*(*v3 + 2))
      {
        goto LABEL_28;
      }
    }
  }

  v35 = 0;
  v34 = 0;
  v36 = 0;
  v33 = 0;
  v37 = 0;
  v38 = 0;
  v39 = 0;
  v40 = 0uLL;
  v41 = 0uLL;
LABEL_30:
  *a1 = v35;
  *(a1 + 8) = v34;
  *(a1 + 16) = v36;
  *(a1 + 24) = v33;
  *(a1 + 32) = v37;
  *(a1 + 40) = v39;
  *(a1 + 48) = v4;
  *(a1 + 56) = v5;
  *(a1 + 72) = v40;
  *(a1 + 88) = v41;
  *(a1 + 104) = v38;
}