double UserGraph.DepthFirstEdgeIterator.init(_:initial:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  specialized UserGraph.DepthFirstEdgeIterator.init(_:initial:)(a1, a2, v7);
  outlined destroy of UserGraph(a1);
  result = *v7;
  v6 = v7[1];
  *a3 = v7[0];
  *(a3 + 16) = v6;
  *(a3 + 32) = v8;
  return result;
}

__n128 protocol witness for Sequence.makeIterator() in conformance UserGraph.DepthFirstEdgeIterator@<Q0>(uint64_t a1@<X8>)
{
  *a1 = *v1;
  *(a1 + 8) = *(v1 + 8);
  result = *(v1 + 24);
  *(a1 + 24) = result;
  return result;
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance UserGraph.DepthFirstEdgeIterator()
{
  v1 = v0[1];
  v7 = *v0;
  v8 = v1;
  v9 = *(v0 + 4);
  specialized _copySequenceToContiguousArray<A>(_:)(&v7);
  v3 = v2;
  v4 = *(&v7 + 1);
  v5 = v8;
  v12 = v7;
  outlined destroy of [Input](&v12, &_s11ShaderGraph10_HashTableV7StorageCSgMd, &_s11ShaderGraph10_HashTableV7StorageCSgMR);
  v11 = v4;
  outlined destroy of [Input](&v11, &_ss15ContiguousArrayVy11ShaderGraph0cD4NodeV2IDVGMd, &_ss15ContiguousArrayVy11ShaderGraph0cD4NodeV2IDVGMR);
  v10 = v5;
  outlined destroy of [Input](&v10, &_ss15ContiguousArrayVy11ShaderGraph04UserD0V8AdjacentVGMd, &_ss15ContiguousArrayVy11ShaderGraph04UserD0V8AdjacentVGMR);
  v13 = *(&v8 + 1);
  outlined destroy of [Input](&v13, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
  v14 = v9;
  outlined destroy of [Input](&v14, &_sShy11ShaderGraph5InputVGMd, &_sShy11ShaderGraph5InputVGMR);
  return v3;
}

uint64_t protocol witness for Sequence._copyContents(initializing:) in conformance UserGraph.DepthFirstEdgeIterator(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  v5 = *v3;
  v6 = v3[1];
  v7 = *(v3 + 4);
  return specialized Sequence._copyContents(initializing:)(a1, a2, a3);
}

__n128 protocol witness for IteratorProtocol.next() in conformance UserGraph.DepthFirstEdgeIterator@<Q0>(uint64_t a1@<X8>)
{
  UserGraph.DepthFirstEdgeIterator.next()(v5);
  v2 = v5[5];
  *(a1 + 64) = v5[4];
  *(a1 + 80) = v2;
  *(a1 + 96) = v5[6];
  v3 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v3;
  result = v5[3];
  *(a1 + 32) = v5[2];
  *(a1 + 48) = result;
  return result;
}

void UserGraph.BreathFirstEdgeIterator.next()(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v2 + 2);
  v4 = 0uLL;
  if (!v3)
  {
    v107 = 0;
    v71 = 0;
    v76 = 0;
    v77 = 0;
    v78 = 0;
    v79 = 0;
    v80 = 0;
    v81 = 0uLL;
    v82 = 0uLL;
    goto LABEL_87;
  }

  v5 = v1;
  v87 = a1;
  while (1)
  {
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v7 = *(v2 + 2);
      if (!v7)
      {
        goto LABEL_84;
      }
    }

    else
    {
      v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
      v7 = *(v2 + 2);
      if (!v7)
      {
LABEL_84:
        __break(1u);
LABEL_85:
        v107 = 0;
        v71 = 0;
        v3 = 0;
        v76 = 0;
        v77 = 0;
        v78 = 0;
        v79 = 0;
        v80 = 0;
        v81 = 0uLL;
        v82 = 0uLL;
        a1 = v87;
        v4 = 0uLL;
        goto LABEL_87;
      }
    }

    v8 = v7 - 1;
    v9 = &v2[56 * v7];
    v10 = *(v9 - 24);
    v11 = *(v9 - 8);
    v12 = *(v9 + 8);
    v123 = *(v9 + 3);
    v121 = v11;
    v122 = v12;
    v120 = v10;
    *(v2 + 2) = v8;
    v5[3] = v2;
    v14 = *v5;
    v13 = v5[1];
    v15 = v5[2];
    v16 = v120;
    v17 = v13 + 32;
    v101 = v13;
    if (!*v5)
    {
      break;
    }

    v19 = (v14 + 16);
    v18 = *(v14 + 16);
    Hasher.init(_seed:)();
    MEMORY[0x266772770](v16);
    v20 = Hasher._finalize()();
    v21 = 1 << *(v14 + 16);
    v22 = __OFSUB__(v21, 1);
    v23 = v21 - 1;
    if (v22)
    {
      goto LABEL_96;
    }

    v24 = v23 & v20;
    v25 = _HashTable.UnsafeHandle._startIterator(bucket:)(v23 & v20, (v14 + 16), v14 + 32);
    if (v25)
    {
      v28 = ~(-1 << *v19);
      v29 = *(v14 + 24) >> 6;
      v30 = v29 + (v25 ^ v28);
      if (v30 >= v28)
      {
        v31 = ~(-1 << *v19);
      }

      else
      {
        v31 = 0;
      }

      v32 = v30 - v31;
      if (*(v17 + 8 * (v30 - v31)) != v16)
      {
        v33 = 0;
        v34 = *v19 & 0x3FLL;
        v35 = (1 << v34) - 1;
        v36 = __OFADD__(v34 << v34, 64);
        v37 = (v34 << v34) + 126;
        if ((v34 << v34) + 64 >= 1)
        {
          v37 = (v34 << v34) + 63;
        }

        v38 = v37 >> 6;
        do
        {
          if (++v24 == 1 << v34)
          {
            if (v33)
            {
              goto LABEL_101;
            }

            v24 = 0;
            v33 = 1;
          }

          if (v27 >= v34)
          {
            v22 = __OFSUB__(v27, v34);
            v27 -= v34;
            if (v22)
            {
              __break(1u);
LABEL_93:
              __break(1u);
LABEL_94:
              __break(1u);
LABEL_95:
              __break(1u);
LABEL_96:
              __break(1u);
LABEL_97:
              __break(1u);
LABEL_98:
              __break(1u);
LABEL_99:
              __break(1u);
              goto LABEL_100;
            }

            v46 = v26 >> v34;
            v47 = v26 & v35;
            if ((v26 & v35) == 0)
            {
              goto LABEL_3;
            }
          }

          else
          {
            v39 = (v24 * v34) >> 6;
            if (v27)
            {
              if (v36)
              {
                goto LABEL_95;
              }

              if (v39 + 1 == v38)
              {
                v39 = 0;
              }

              else
              {
                ++v39;
              }
            }

            v40 = v34 - v27;
            if (__OFSUB__(v34, v27))
            {
              goto LABEL_93;
            }

            v41 = v39 == 2 && v34 == 5;
            v42 = 64;
            if (v41)
            {
              v42 = 32;
            }

            v22 = __OFSUB__(v42, v40);
            v43 = v42 - v40;
            if (v22)
            {
              goto LABEL_94;
            }

            v44 = *(v14 + 32 + 8 * v39);
            v45 = (v44 << v27) | v26;
            v46 = v44 >> v40;
            v27 = v43;
            v47 = v45 & v35;
            if ((v45 & v35) == 0)
            {
              goto LABEL_3;
            }
          }

          v48 = (v47 ^ v28) + v29;
          v49 = (v48 + (-1 << *v19) + 1) < 0;
          if (v48 >= v28)
          {
            v50 = ~(-1 << *v19);
          }

          else
          {
            v50 = 0;
          }

          v32 = v48 - v50;
          v26 = v46;
        }

        while (*(v17 + 8 * v32) != v16);
      }

      if ((v32 & 0x8000000000000000) != 0)
      {
        goto LABEL_97;
      }

      goto LABEL_45;
    }

LABEL_3:

    v124 = v121;
    v6 = &v124;
LABEL_4:
    outlined destroy of String(v6);
    v2 = v5[3];
    if (!*(v2 + 2))
    {
      goto LABEL_85;
    }
  }

  v59 = *(v13 + 16);
  if (!v59)
  {
    goto LABEL_3;
  }

  v32 = 0;
  while (*(v17 + 8 * v32) != v120)
  {
    if (v59 == ++v32)
    {
      goto LABEL_3;
    }
  }

LABEL_45:
  if (v32 >= *(v15 + 16))
  {
    goto LABEL_98;
  }

  v51 = (v15 + 48 * v32);
  v53 = v51[7];
  v52 = v51[8];
  v54 = v51[9];
  v55 = *(v52 + 16);
  v125[0] = v121;
  if (!v53)
  {
    v105 = *(&v120 + 1);
    v98 = v54;
    if (!v55)
    {

LABEL_81:

      v5 = v90;
      goto LABEL_82;
    }

    v88 = v15;
    v89 = v14;
    v94 = v122;
    v96 = v123;
    v92 = BYTE8(v122);
    v91 = BYTE8(v122) ^ 1;

    v60 = 0;
    v61 = (v52 + 80);
    while (1)
    {
      if (*(v61 - 6) != v16)
      {
        goto LABEL_57;
      }

      v62 = *(v61 - 4);
      v63 = *(v61 - 3);
      v103 = *(v61 - 2);
      v64 = *(v61 - 8);
      v106 = *v61;
      v65 = *(**(v61 - 5) + 128);

      if ((v65(v105) & 1) == 0)
      {

        goto LABEL_57;
      }

      if (v62 == *&v125[0] && v63 == *(&v125[0] + 1))
      {

        if (v64)
        {
          goto LABEL_66;
        }
      }

      else
      {
        v67 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v67 & 1) == 0)
        {
          goto LABEL_57;
        }

        if (v64)
        {
LABEL_66:
          v68 = v92;
          if (v106 != v96)
          {
            v68 = 0;
          }

          if (v68)
          {
            goto LABEL_75;
          }

          goto LABEL_57;
        }
      }

      v69 = v91;
      if (v103 != v94)
      {
        v69 = 0;
      }

      if (v69 == 1 && v106 == v96)
      {
LABEL_75:
        v14 = v89;
        v5 = v90;
        v15 = v88;
        goto LABEL_77;
      }

LABEL_57:
      v61 += 7;
      if (v55 == ++v60)
      {
        goto LABEL_81;
      }
    }
  }

  v56 = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(&v120, v52 + 32, v55, (v53 + 16), v53 + 32);
  v57 = v54;
  if (v58)
  {

LABEL_82:

    v6 = v125;
    goto LABEL_4;
  }

  v60 = v56;
  v98 = v57;
  if (v56 < 0)
  {
    goto LABEL_99;
  }

LABEL_77:
  if (v60 < *(v98 + 16))
  {
    v70 = (v98 + 56 * v60);
    v71 = v70[5];
    v72 = v70[6];
    v73 = v70[7];
    v75 = v70[8];
    v74 = v70[9];
    v107 = v70[4];
    v104 = v70[10];
    outlined copy of Output?(v107, v71);

    if (!v71)
    {

      v6 = v125;
      goto LABEL_4;
    }

    v83 = v72;
    v84 = v15;
    v97 = v73;
    v99 = v83;
    outlined consume of Output?(v107, v71);
    v80 = v74 & 1;
    LOBYTE(v108) = v74 & 1;
    v100 = v120;
    v93 = v122;
    v95 = v121;
    v79 = v123;
    specialized OrderedDictionary.subscript.getter(v107, v14, v101, v84, &v108);
    v85 = v109;
    v78 = v104;
    if (v109)
    {
      v86 = v112;
      v102 = v110;
      v116 = v112;
      v117 = v111;
      v115 = v113;
      v119 = v108;

      outlined init with copy of String(v125, v114);
      outlined init with copy of [Input](&v117, v114, &_s11ShaderGraph10_HashTableV7StorageCSgMd, &_s11ShaderGraph10_HashTableV7StorageCSgMR);
      outlined init with copy of [Input](&v116, v114, &_ss15ContiguousArrayVy11ShaderGraph5InputVGMd, &_ss15ContiguousArrayVy11ShaderGraph5InputVGMR);
      outlined init with copy of [Input](&v115, v114, &_ss15ContiguousArrayVy11ShaderGraph6OutputVSgGMd, &_ss15ContiguousArrayVy11ShaderGraph6OutputVSgGMR);
      outlined destroy of [Input](&v119, &_s11ShaderGraph10_HashTableV7StorageCSgMd, &_s11ShaderGraph10_HashTableV7StorageCSgMR);
      v114[0] = v85;
      outlined destroy of [Input](v114, &_ss15ContiguousArrayVy11ShaderGraph6OutputVGMd, &_ss15ContiguousArrayVy11ShaderGraph6OutputVGMR);
      v118 = v102;
      outlined destroy of [Input](&v118, &_ss15ContiguousArrayVy11ShaderGraph10OrderedSetVyAC5InputVGGMd, &_ss15ContiguousArrayVy11ShaderGraph10OrderedSetVyAC5InputVGGMR);
      outlined destroy of [Input](&v117, &_s11ShaderGraph10_HashTableV7StorageCSgMd, &_s11ShaderGraph10_HashTableV7StorageCSgMR);
      outlined destroy of [Input](&v116, &_ss15ContiguousArrayVy11ShaderGraph5InputVGMd, &_ss15ContiguousArrayVy11ShaderGraph5InputVGMR);
      outlined destroy of [Input](&v115, &_ss15ContiguousArrayVy11ShaderGraph6OutputVSgGMd, &_ss15ContiguousArrayVy11ShaderGraph6OutputVSgGMR);
      v5 = v90;
      outlined destroy of [Input](&v115, &_ss15ContiguousArrayVy11ShaderGraph6OutputVSgGMd, &_ss15ContiguousArrayVy11ShaderGraph6OutputVSgGMR);
      outlined destroy of [Input](&v117, &_s11ShaderGraph10_HashTableV7StorageCSgMd, &_s11ShaderGraph10_HashTableV7StorageCSgMR);
    }

    else
    {

      outlined init with copy of String(v125, v114);
      v86 = MEMORY[0x277D84F90];
    }

    specialized Sequence.forEach(_:)(v86, v5);

    outlined destroy of String(v125);

    a1 = v87;
    v4 = v100;
    v76 = v97;
    v3 = v99;
    v77 = v75;
    v82 = v93;
    v81 = v95;
LABEL_87:
    *a1 = v107;
    *(a1 + 8) = v71;
    *(a1 + 16) = v3;
    *(a1 + 24) = v76;
    *(a1 + 32) = v77;
    *(a1 + 40) = v80;
    *(a1 + 48) = v78;
    *(a1 + 56) = v4;
    *(a1 + 72) = v81;
    *(a1 + 88) = v82;
    *(a1 + 104) = v79;
    return;
  }

LABEL_100:
  __break(1u);
LABEL_101:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

double UserGraph.BreathFirstEdgeIterator.init(_:initial:)@<D0>(char *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  specialized UserGraph.BreathFirstEdgeIterator.init(_:initial:)(a1, a2, v7);
  outlined destroy of UserGraph(a1);
  v5 = v7[1];
  *a3 = v7[0];
  a3[1] = v5;
  result = *&v8;
  a3[2] = v8;
  return result;
}

__n128 protocol witness for Sequence.makeIterator() in conformance UserGraph.BreathFirstEdgeIterator@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *v1;
  *(a1 + 8) = *(v1 + 8);
  result = *(v1 + 24);
  *(a1 + 24) = result;
  *(a1 + 40) = v2;
  return result;
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance UserGraph.BreathFirstEdgeIterator()
{
  v1 = v0[1];
  v7 = *v0;
  v8 = v1;
  v9 = v0[2];
  specialized _copySequenceToContiguousArray<A>(_:)(&v7);
  v3 = v2;
  v4 = *(&v7 + 1);
  v5 = v8;
  v12 = v7;
  outlined destroy of [Input](&v12, &_s11ShaderGraph10_HashTableV7StorageCSgMd, &_s11ShaderGraph10_HashTableV7StorageCSgMR);
  v11 = v4;
  outlined destroy of [Input](&v11, &_ss15ContiguousArrayVy11ShaderGraph0cD4NodeV2IDVGMd, &_ss15ContiguousArrayVy11ShaderGraph0cD4NodeV2IDVGMR);
  v10 = v5;
  outlined destroy of [Input](&v10, &_ss15ContiguousArrayVy11ShaderGraph04UserD0V8AdjacentVGMd, &_ss15ContiguousArrayVy11ShaderGraph04UserD0V8AdjacentVGMR);
  v13 = *(&v8 + 1);
  outlined destroy of [Input](&v13, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
  v14 = v9;
  outlined destroy of [Input](&v14, &_sShy11ShaderGraph5InputVGMd, &_sShy11ShaderGraph5InputVGMR);
  v15 = *(&v9 + 1);
  outlined destroy of [Input](&v15, &_sSay11ShaderGraph0aB4NodeVGMd, &_sSay11ShaderGraph0aB4NodeVGMR);
  return v3;
}

_OWORD *protocol witness for Sequence._copyContents(initializing:) in conformance UserGraph.BreathFirstEdgeIterator(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  v5 = *v3;
  v6 = v3[1];
  v7 = v3[2];
  return specialized Sequence._copyContents(initializing:)(a1, a2, a3);
}

__n128 protocol witness for IteratorProtocol.next() in conformance UserGraph.BreathFirstEdgeIterator@<Q0>(uint64_t a1@<X8>)
{
  UserGraph.BreathFirstEdgeIterator.next()(v5);
  v2 = v5[5];
  *(a1 + 64) = v5[4];
  *(a1 + 80) = v2;
  *(a1 + 96) = v5[6];
  v3 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v3;
  result = v5[3];
  *(a1 + 32) = v5[2];
  *(a1 + 48) = result;
  return result;
}

Swift::Int ShaderGraphNode.ID.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x266772770](a1);
  return Hasher._finalize()();
}

uint64_t UserGraph.Adjacent.outgoing.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];

  return v1;
}

uint64_t UserGraph.Adjacent.outgoing.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;

  v8 = v3[1];

  v9 = v3[2];

  *v3 = a1;
  v3[1] = a2;
  v3[2] = a3;
  return result;
}

uint64_t UserGraph.Adjacent.incoming.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];

  return v1;
}

uint64_t UserGraph.Adjacent.incoming.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[3];

  v8 = v3[4];

  v9 = v3[5];

  v3[3] = a1;
  v3[4] = a2;
  v3[5] = a3;
  return result;
}

double UserGraph.Adjacent.init(_:)@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = a1[2];
  v10 = a1[1];
  v11 = v4;
  specialized UserGraph.Adjacent.init(_:)(v10, v4, v7);
  v9 = *a1;
  outlined destroy of NodePersonality(&v9);
  outlined destroy of [Input](&v10, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
  outlined destroy of [Input](&v11, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
  v5 = v7[1];
  *a2 = v7[0];
  a2[1] = v5;
  result = *&v8;
  a2[2] = v8;
  return result;
}

BOOL static UserGraph.Adjacent.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = a1[2];
  v5 = a2[2];
  result = 0;
  if (specialized Sequence<>.elementsEqual<A>(_:)(a2[1], a1[1]) & 1) != 0 && (_ss15ContiguousArrayVsSQRzlE2eeoiySbAByxG_ADtFZ11ShaderGraph10OrderedSetVyAE5InputVG_Tt1g5(v4, v5))
  {
    v6 = a1[4];
    v7 = a1[5];
    v8 = a2[4];
    v9 = a2[5];
    if (specialized Sequence<>.elementsEqual<A>(_:)(v8, v6) & 1) != 0 && (_ss15ContiguousArrayVsSQRzlE2eeoiySbAByxG_ADtFZ11ShaderGraph6OutputVSg_Tt1g5(v7, v9))
    {
      return 1;
    }
  }

  return result;
}

uint64_t UserGraph.Adjacent.hash(into:)(uint64_t a1)
{
  specialized OrderedDictionary<>.hash(into:)(a1, v1[1], v1[2]);
  v3 = v1[4];
  v4 = v1[5];

  return specialized OrderedDictionary<>.hash(into:)(a1, v3, v4);
}

Swift::Int UserGraph.Adjacent.hashValue.getter()
{
  Hasher.init(_seed:)();
  specialized OrderedDictionary<>.hash(into:)(v2, v0[1], v0[2]);
  specialized OrderedDictionary<>.hash(into:)(v2, v0[4], v0[5]);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance UserGraph.Adjacent()
{
  v1 = v0[1];
  v2 = v0[2];
  v4 = v0[4];
  v3 = v0[5];
  Hasher.init(_seed:)();
  specialized OrderedDictionary<>.hash(into:)(v6, v1, v2);
  specialized OrderedDictionary<>.hash(into:)(v6, v4, v3);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance UserGraph.Adjacent(uint64_t a1)
{
  v3 = v1[1];
  v4 = v1[2];
  v6 = v1[4];
  v5 = v1[5];
  specialized OrderedDictionary<>.hash(into:)(a1, v3, v4);

  return specialized OrderedDictionary<>.hash(into:)(a1, v6, v5);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance UserGraph.Adjacent()
{
  v1 = v0[1];
  v2 = v0[2];
  v4 = v0[4];
  v3 = v0[5];
  Hasher.init(_seed:)();
  specialized OrderedDictionary<>.hash(into:)(v6, v1, v2);
  specialized OrderedDictionary<>.hash(into:)(v6, v4, v3);
  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance UserGraph.Adjacent(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[2];
  v4 = a1[4];
  v3 = a1[5];
  v5 = a2[2];
  v7 = a2[4];
  v6 = a2[5];
  return (specialized Sequence<>.elementsEqual<A>(_:)(a2[1], a1[1]) & 1) != 0 && (_ss15ContiguousArrayVsSQRzlE2eeoiySbAByxG_ADtFZ11ShaderGraph10OrderedSetVyAE5InputVG_Tt1g5(v2, v5) & 1) != 0 && (specialized Sequence<>.elementsEqual<A>(_:)(v7, v4) & 1) != 0 && (_ss15ContiguousArrayVsSQRzlE2eeoiySbAByxG_ADtFZ11ShaderGraph6OutputVSg_Tt1g5(v3, v6) & 1) != 0;
}

uint64_t UserGraph.label.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

double UserGraph.edges.getter@<D0>(uint64_t a1@<X8>)
{
  outlined init with copy of UserGraph(v1, v6);
  v3 = UserGraph.sinkNodes()();
  specialized UserGraph.DepthFirstEdgeIterator.init(_:initial:)(v1, v3, v6);
  outlined destroy of UserGraph(v1);
  result = *v6;
  v5 = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v7;
  return result;
}

uint64_t UserGraph.sinkNodes()()
{
  v25 = *(v0 + 8);
  v31 = *(v0 + 16);
  v1 = *(v31 + 16);

  v3 = 0;
  v4 = result + 72;
  v22 = v1;
  v23 = MEMORY[0x277D84F90];
  v21 = result + 72;
LABEL_2:
  if (v3 <= v1)
  {
    v5 = v1;
  }

  else
  {
    v5 = v3;
  }

  v26 = v5;
  v6 = (v4 + 48 * v3);
  while (1)
  {
    if (v26 == v3)
    {
      outlined destroy of [Input](&v31, &_ss15ContiguousArrayVy11ShaderGraph04UserD0V8AdjacentVGMd, &_ss15ContiguousArrayVy11ShaderGraph04UserD0V8AdjacentVGMR);
      return v23;
    }

    if (v3 >= *(v25 + 16))
    {
      break;
    }

    v7 = *(v25 + 32 + 8 * v3);
    v8 = *(v6 - 5);
    v9 = *(v6 - 4);
    v10 = *(v6 - 3);
    v28 = *(v6 - 2);
    ++v3;
    v11 = *v6;
    v27 = *(v6 - 1);

    specialized closure #1 in UserGraph.sinkNodes()(v7, v9, v10, v24, v29);
    v12 = v29[0];
    v13 = v29[1];
    v14 = v29[2];
    v15 = v29[3];
    v16 = v29[4];
    v17 = v30;

    v6 += 6;
    if (v13)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v23 + 16) + 1, 1, v23);
        v23 = result;
      }

      v19 = *(v23 + 16);
      v18 = *(v23 + 24);
      if (v19 >= v18 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v23);
        v23 = result;
      }

      *(v23 + 16) = v19 + 1;
      v20 = v23 + 48 * v19;
      *(v20 + 32) = v12;
      *(v20 + 40) = v13;
      *(v20 + 48) = v14;
      *(v20 + 56) = v15;
      *(v20 + 64) = v16;
      *(v20 + 72) = v17 & 1;
      v4 = v21;
      v1 = v22;
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

double UserGraph.edgesBreathFirst.getter@<D0>(_OWORD *a1@<X8>)
{
  outlined init with copy of UserGraph(v1, v6);
  v3 = UserGraph.sinkNodes()();
  specialized UserGraph.BreathFirstEdgeIterator.init(_:initial:)(v1, v3, v6);
  outlined destroy of UserGraph(v1);
  v4 = v6[1];
  *a1 = v6[0];
  a1[1] = v4;
  result = v7[0];
  a1[2] = *v7;
  return result;
}

ShaderGraph::UserGraph::ID __swiftcall UserGraph.nextGraphID()()
{
  v1 = *(v0 + 72);
  result.value = v1 + 1;
  if (__OFADD__(v1, 1))
  {
    __break(1u);
  }

  else
  {
    *(v0 + 72) = result;
  }

  return result;
}

uint64_t UserGraph.argumentsNode.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 80);
  v4 = *(v1 + 88);
  v5 = *(v1 + 96);
  v6 = *(v1 + 104);
  v7 = *(v1 + 112);
  v8 = *(v1 + 120);
  outlined copy of NodePersonality(v3);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
}

uint64_t UserGraph.resultNode.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 128);
  v4 = *(v1 + 136);
  v5 = *(v1 + 144);
  v6 = *(v1 + 152);
  v7 = *(v1 + 160);
  v8 = *(v1 + 168);
  outlined copy of NodePersonality(v3);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
}

unint64_t specialized OrderedDictionary.subscript.modify(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0xE0uLL);
  }

  v6 = v5;
  *a1 = v5;
  *(v5 + 144) = a2;
  *(v5 + 152) = v2;
  v7 = v2[1];
  v8 = v7 + 32;
  v9 = *(v7 + 16);
  if (*v2)
  {
    v11 = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(a2, v8, v9, (*v2 + 16), *v2 + 32);
    v12 = (v6 + 104);
    v13 = (v6 + 112);
    v14 = (v6 + 120);
    v15 = (v6 + 128);
    v16 = (v6 + 136);
    *(v6 + 96) = 0u;
    *(v6 + 112) = 0u;
    *(v6 + 128) = 0u;
    if ((v17 & 1) == 0)
    {
      v37 = v10;
      goto LABEL_14;
    }

LABEL_12:
    v18 = 1;
LABEL_19:
    *(v6 + 200) = v11;
    *(v6 + 208) = v10;
    *(v6 + 216) = v18;
    *(v6 + 184) = v13;
    *(v6 + 192) = v12;
    *(v6 + 168) = v15;
    *(v6 + 176) = v14;
    *(v6 + 160) = v16;
    return OrderedDictionary.subscript.modifyspecialized ;
  }

  if (!v9)
  {
LABEL_11:
    v11 = 0;
    v10 = 0;
    v12 = (v5 + 104);
    v13 = (v5 + 112);
    *(v5 + 112) = 0u;
    *(v5 + 128) = 0u;
    v14 = (v5 + 120);
    v15 = (v5 + 128);
    v16 = (v5 + 136);
    *(v5 + 96) = 0u;
    goto LABEL_12;
  }

  v11 = 0;
  while (*(v8 + 8 * v11) != a2)
  {
    if (v9 == ++v11)
    {
      goto LABEL_11;
    }
  }

  v37 = 0;
  v12 = (v5 + 104);
  *(v5 + 112) = 0u;
  *(v5 + 128) = 0u;
  v13 = (v5 + 112);
  v14 = (v5 + 120);
  v15 = (v5 + 128);
  v16 = (v5 + 136);
  *(v5 + 96) = 0u;
LABEL_14:
  v20 = v2[2];
  v19 = v2 + 2;
  result = specialized MutableCollection.swapAt(_:_:)(v11, *(v20 + 16) - 1);
  v22 = *v19;
  if (*(*v19 + 16))
  {
    v23 = *v19;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v22);
      v22 = result;
    }

    v24 = *(v22 + 16);
    if (v24)
    {
      v25 = (v22 + 48 * v24);
      v26 = *(v25 - 2);
      v27 = *(v25 - 1);
      v28 = *v25;
      v29 = v25[1];
      v31 = v25[2];
      v30 = v25[3];
      *(v22 + 16) = v24 - 1;
      *v19 = v22;
      v32 = *v12;
      v33 = *v13;
      v34 = *v14;
      v35 = *v15;
      v36 = *v16;
      *(v6 + 96) = v26;
      *v12 = v27;
      *v13 = v28;
      *v14 = v29;
      *v15 = v31;
      *v16 = v30;
      outlined consume of UserGraph.Adjacent?(0, v32);
      v18 = 0;
      v10 = v37;
      goto LABEL_19;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *(v5 + 8) = a2;
  *(v5 + 16) = v2;
  v7 = v2[1];
  v8 = v7 + 32;
  v9 = *(v7 + 16);
  if (*v2)
  {
    v10 = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(a2, v8, v9, (*v2 + 16), *v2 + 32);
    v6[3] = v11;
    *v6 = 0;
    if (v12)
    {
      return OrderedDictionary.subscript.modifyspecialized ;
    }
  }

  else
  {
    if (!v9)
    {
LABEL_11:
      *v6 = 0;
      return OrderedDictionary.subscript.modifyspecialized ;
    }

    v10 = 0;
    while (*(v8 + 8 * v10) != a2)
    {
      if (v9 == ++v10)
      {
        goto LABEL_11;
      }
    }

    v11 = 0;
    *v6 = 0;
  }

  v6[4] = v10;
  v6[5] = v11;
  v15 = v2[2];
  v14 = v2 + 2;
  result = specialized MutableCollection.swapAt(_:_:)(v10, *(v15 + 16) - 1);
  v17 = *v14;
  if (*(*v14 + 16))
  {
    v18 = *v14;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v17);
      v17 = result;
    }

    v19 = v17[2];
    if (v19)
    {
      v20 = v19 - 1;
      v21 = v17[v20 + 4];
      v17[2] = v20;
      *v14 = v17;
      *v6 = v21;

      return OrderedDictionary.subscript.modifyspecialized ;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void OrderedDictionary.subscript.modifyspecialized (uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 96);
  v4 = **(*a1 + 192);
  v5 = **(*a1 + 184);
  v6 = **(*a1 + 176);
  v7 = **(*a1 + 168);
  v8 = **(*a1 + 160);
  if (a2)
  {
    if ((*(*a1 + 216) & 1) == 0)
    {
      if (!v4)
      {
        v9 = *(v2 + 200);
        v10 = *(v2 + 152);
        v12 = *(v10 + 16);
        v11 = (v10 + 16);
        if (v9 < *(v12 + 16))
        {
          specialized ContiguousArray.remove(at:)(v9, v2);
          v13 = *v11;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v11 = v13;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 16) + 1, 1);
            v13 = *v11;
          }

          v16 = *(v13 + 16);
          v15 = *(v13 + 24);
          if (v16 >= v15 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1);
            v13 = *v11;
          }

          *(v13 + 16) = v16 + 1;
          v17 = (v13 + 48 * v16);
          v18 = *v2;
          v19 = *(v2 + 16);
          v20 = *(v2 + 32);
LABEL_29:
          v17[3] = v19;
          v17[4] = v20;
          v17[2] = v18;
          *v11 = v13;
          v9 = *(v2 + 200);
          v48 = *(v2 + 152);
          goto LABEL_30;
        }

        goto LABEL_30;
      }

LABEL_18:
      v33 = *(v2 + 152);
      v36 = *(v33 + 16);
      v34 = (v33 + 16);
      v35 = v36;
      outlined copy of UserGraph.Adjacent?(*(*a1 + 96), v4);

      v37 = swift_isUniquelyReferenced_nonNull_native();
      *v34 = v36;
      if ((v37 & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v35 + 16) + 1, 1);
        v35 = *v34;
      }

      v38 = *(v35 + 16);
      v39 = *(v35 + 24);
      v40 = v38 + 1;
      if (v38 >= v39 >> 1)
      {
        v53 = *(v35 + 16);
        v54 = v38 + 1;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v38 + 1, 1);
        v40 = v54;
        v38 = v53;
        v35 = *v34;
      }

      v41 = *(v2 + 200);
      *(v35 + 16) = v40;
      v42 = (v35 + 48 * v38);
      v42[4] = v3;
      v42[5] = v4;
      v42[6] = v5;
      v42[7] = v6;
      v42[8] = v7;
      v42[9] = v8;
      *v34 = v35;
      specialized MutableCollection.swapAt(_:_:)(v41, v38);

      goto LABEL_31;
    }
  }

  else if ((*(*a1 + 216) & 1) == 0)
  {
    if (!v4)
    {
      v9 = *(v2 + 200);
      v43 = *(v2 + 152);
      v44 = *(v43 + 16);
      v11 = (v43 + 16);
      if (v9 < *(v44 + 16))
      {
        specialized ContiguousArray.remove(at:)(v9, v2 + 48);
        v13 = *v11;
        v45 = swift_isUniquelyReferenced_nonNull_native();
        *v11 = v13;
        if ((v45 & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 16) + 1, 1);
          v13 = *v11;
        }

        v47 = *(v13 + 16);
        v46 = *(v13 + 24);
        if (v47 >= v46 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v46 > 1), v47 + 1, 1);
          v13 = *v11;
        }

        *(v13 + 16) = v47 + 1;
        v17 = (v13 + 48 * v47);
        v18 = *(v2 + 48);
        v19 = *(v2 + 64);
        v20 = *(v2 + 80);
        goto LABEL_29;
      }

LABEL_30:
      specialized OrderedSet._removeExistingMember(at:in:)(v9, *(v2 + 208));
      goto LABEL_31;
    }

    goto LABEL_18;
  }

  if (v4)
  {
    v21 = *(v2 + 208);
    v23 = *(v2 + 144);
    v22 = *(v2 + 152);
    v24 = **(*a1 + 176);

    specialized OrderedSet._appendNew(_:in:)(v23, v21, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:), specialized closure #1 in static _HashTable.create<A>(uncheckedUniqueElements:scale:reservedScale:));
    v27 = *(v22 + 16);
    v25 = (v22 + 16);
    v26 = v27;
    v28 = swift_isUniquelyReferenced_nonNull_native();
    *v25 = v27;
    if ((v28 & 1) == 0)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v26 + 16) + 1, 1);
      v26 = *v25;
    }

    v30 = *(v26 + 16);
    v29 = *(v26 + 24);
    v31 = v30 + 1;
    if (v30 >= v29 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1);
      v31 = v30 + 1;
      v26 = *v25;
    }

    *(v26 + 16) = v31;
    v32 = (v26 + 48 * v30);
    v32[4] = v3;
    v32[5] = v4;
    v32[6] = v5;
    v32[7] = v6;
    v32[8] = v7;
    v32[9] = v8;
    *v25 = v26;
  }

LABEL_31:
  v49 = **(v2 + 184);
  v50 = **(v2 + 176);
  v51 = **(v2 + 168);
  v52 = **(v2 + 160);
  outlined consume of UserGraph.Adjacent?(*(v2 + 96), **(v2 + 192));

  free(v2);
}

{
  v2 = *a1;
  v3 = *(*a1 + 144);
  v4 = *(*a1 + 176);
  v5 = *v4;
  if (a2)
  {
    if (!v5)
    {
      v6 = *(v2 + 184);
      v7 = *(v2 + 168);
      v9 = *(v7 + 16);
      v8 = (v7 + 16);
      if (v6 < *(v9 + 16))
      {
        v10 = specialized ContiguousArray.remove(at:)(v6);
        v12 = v11;
        v13 = *v8;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v8 = v13;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 16) + 1, 1);
          v13 = *v8;
        }

        v15 = *(v13 + 16);
        v16 = *(v13 + 24);
        v17 = v15 + 1;
        if (v15 >= v16 >> 1)
        {
          v48 = *(v13 + 16);
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v15 + 1, 1);
          v15 = v48;
          v13 = *v8;
        }

        *(v13 + 16) = v17;
        v18 = v13 + 16 * v15;
        *(v18 + 32) = v10;
        *(v18 + 40) = v12;
        *v8 = v13;
        v6 = *(v2 + 184);
        v19 = *(v2 + 168);
      }

      specialized OrderedSet._removeExistingMember(at:in:)(v6, *(v2 + 192), v2);
      v20 = *(v2 + 8);

      *(v2 + 112) = *(v2 + 16);
      v21 = v2 + 112;
LABEL_23:
      outlined destroy of String(v21);
      goto LABEL_24;
    }
  }

  else if (!v5)
  {
    v32 = *(v2 + 184);
    v33 = *(v2 + 168);
    v35 = *(v33 + 16);
    v34 = (v33 + 16);
    if (v32 < *(v35 + 16))
    {
      v36 = specialized ContiguousArray.remove(at:)(v32);
      v38 = v37;
      v39 = *v34;
      v40 = swift_isUniquelyReferenced_nonNull_native();
      *v34 = v39;
      if ((v40 & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v39 + 16) + 1, 1);
        v39 = *v34;
      }

      v41 = *(v39 + 16);
      v42 = *(v39 + 24);
      v43 = v41 + 1;
      if (v41 >= v42 >> 1)
      {
        v49 = *(v39 + 16);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v42 > 1), v41 + 1, 1);
        v41 = v49;
        v39 = *v34;
      }

      *(v39 + 16) = v43;
      v44 = v39 + 16 * v41;
      *(v44 + 32) = v36;
      *(v44 + 40) = v38;
      *v34 = v39;
      v32 = *(v2 + 184);
      v45 = *(v2 + 168);
    }

    specialized OrderedSet._removeExistingMember(at:in:)(v32, *(v2 + 192), v2 + 56);
    v46 = *(v2 + 64);

    *(v2 + 128) = *(v2 + 72);
    v21 = v2 + 128;
    goto LABEL_23;
  }

  v22 = *(v2 + 168);
  v25 = *(v22 + 16);
  v23 = (v22 + 16);
  v24 = v25;
  outlined copy of OrderedSet<Input>?(*(*a1 + 144), *v4);

  v26 = swift_isUniquelyReferenced_nonNull_native();
  *v23 = v25;
  if ((v26 & 1) == 0)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v24 + 16) + 1, 1);
    v24 = *v23;
  }

  v27 = *(v24 + 16);
  v28 = *(v24 + 24);
  v29 = v27 + 1;
  if (v27 >= v28 >> 1)
  {
    v47 = *(v24 + 16);
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v27 + 1, 1);
    v27 = v47;
    v24 = *v23;
  }

  v30 = *(v2 + 184);
  *(v24 + 16) = v29;
  v31 = v24 + 16 * v27;
  *(v31 + 32) = v3;
  *(v31 + 40) = v5;
  *v23 = v24;
  specialized MutableCollection.swapAt(_:_:)(v30, v27);

LABEL_24:
  outlined consume of OrderedSet<Input>?(*(v2 + 144), **(v2 + 176));

  free(v2);
}

unint64_t specialized OrderedDictionary.subscript.modify(uint64_t *a1, uint64_t *a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0xD8uLL);
  }

  v6 = v5;
  *a1 = v5;
  *(v5 + 160) = a2;
  *(v5 + 168) = v2;
  v7 = *v2;
  v8 = v2[1];
  v9 = *(v8 + 16);
  if (*v2)
  {
    v10 = *v2;

    v11 = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(a2, v8 + 32, v9, (v7 + 16), v7 + 32);
    v13 = v12;
    v15 = v14;

    v16 = v6 + 19;
    v6[18] = 0;
    v6[19] = 0;
    if ((v13 & 1) == 0)
    {
      v17 = v11;
      goto LABEL_9;
    }

LABEL_8:
    v6[25] = v16;
    v6[26] = v15;
    return OrderedDictionary.subscript.modifyspecialized ;
  }

  v17 = specialized Collection<>.firstIndex(of:)(a2, v8 + 32, *(v8 + 16));
  v15 = 0;
  v16 = v6 + 19;
  v6[18] = 0;
  v6[19] = 0;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_9:
  v6[23] = v17;
  v6[24] = v15;
  v6[22] = v16;
  v21 = v2[2];
  v20 = v2 + 2;
  result = specialized MutableCollection.swapAt(_:_:)(v17, *(v21 + 16) - 1);
  v23 = *v20;
  if (*(*v20 + 16))
  {
    v24 = *v20;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v23);
      v23 = result;
    }

    v25 = v23[2];
    if (v25)
    {
      v26 = v25 - 1;
      v27 = &v23[2 * v26];
      v29 = v27[4];
      v28 = v27[5];
      v23[2] = v26;
      *v20 = v23;
      v30 = *v16;
      v6[18] = v29;
      *v16 = v28;
      outlined consume of OrderedSet<Input>?(0, v30);
      return OrderedDictionary.subscript.modifyspecialized ;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void OrderedDictionary.subscript.modifyspecialized (uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 144);
  v3 = **(*a1 + 200);
  if (v3)
  {
    v4 = *(v1 + 208);
    v6 = *(v1 + 160);
    v5 = *(v1 + 168);
    v7 = *(*a1 + 144);

    specialized OrderedSet._appendNew(_:in:)(v6, v4, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:));
    v10 = *(v5 + 16);
    v8 = (v5 + 16);
    v9 = v10;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v8 = v10;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 16) + 1, 1);
      v9 = *v8;
    }

    v13 = *(v9 + 16);
    v12 = *(v9 + 24);
    if (v13 >= v12 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
      v9 = *v8;
    }

    *(v9 + 16) = v13 + 1;
    v14 = v9 + 16 * v13;
    *(v14 + 32) = v2;
    *(v14 + 40) = v3;
    *v8 = v9;
    v2 = *(v1 + 144);
    v15 = **(v1 + 200);
  }

  else
  {
    v15 = 0;
  }

  outlined consume of OrderedSet<Input>?(v2, v15);

  free(v1);
}

void OrderedDictionary.subscript.modifyspecialized (uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v3 = v1[2];
    v4 = v1[3];
    v5 = v1[1];
    v6 = **a1;

    specialized OrderedSet._appendNew(_:in:)(v5, v4, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:), specialized closure #1 in static _HashTable.create<A>(uncheckedUniqueElements:scale:reservedScale:));
    v9 = *(v3 + 16);
    v7 = (v3 + 16);
    v8 = v9;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v7 = v9;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 16) + 1, 1);
      v8 = *v7;
    }

    v12 = *(v8 + 16);
    v11 = *(v8 + 24);
    if (v12 >= v11 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
      v8 = *v7;
    }

    *(v8 + 16) = v12 + 1;
    *(v8 + 8 * v12 + 32) = v2;
    *v7 = v8;
    v13 = *v1;
  }

  free(v1);
}

{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v3 = v1[2];
    v6 = *(v3 + 16);
    v4 = (v3 + 16);
    v5 = v6;
    v7 = **a1;
    swift_bridgeObjectRetain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v4 = v6;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 16) + 1, 1);
      v5 = *v4;
    }

    v9 = *(v5 + 16);
    v10 = *(v5 + 24);
    v11 = v9 + 1;
    if (v9 >= v10 >> 1)
    {
      v25 = *(v5 + 16);
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v9 + 1, 1);
      v9 = v25;
      v5 = *v4;
    }

    v12 = v1[4];
    *(v5 + 16) = v11;
    *(v5 + 8 * v9 + 32) = v2;
    *v4 = v5;
    specialized MutableCollection.swapAt(_:_:)(v12, v9);
  }

  else
  {
    v13 = v1[4];
    v14 = v1[2];
    v16 = *(v14 + 16);
    v15 = (v14 + 16);
    if (v13 < *(v16 + 16))
    {
      v17 = specialized ContiguousArray.remove(at:)(v13);
      v18 = *v15;
      v19 = swift_isUniquelyReferenced_nonNull_native();
      *v15 = v18;
      if ((v19 & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v18 + 16) + 1, 1);
        v18 = *v15;
      }

      v20 = *(v18 + 16);
      v21 = *(v18 + 24);
      v22 = v20 + 1;
      if (v20 >= v21 >> 1)
      {
        v26 = *(v18 + 16);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v20 + 1, 1);
        v20 = v26;
        v18 = *v15;
      }

      *(v18 + 16) = v22;
      *(v18 + 8 * v20 + 32) = v17;
      *v15 = v18;
      v13 = v1[4];
      v23 = v1[2];
    }

    specialized OrderedSet._removeExistingMember(at:in:)(v13, v1[5]);
  }

  v24 = *v1;

  free(v1);
}

{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v3 = v1[2];
    v5 = **a1;

    specialized OrderedSet._appendNew(_:in:)(v4, 0, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:), specialized closure #1 in static _HashTable.create<A>(uncheckedUniqueElements:scale:reservedScale:));
    v8 = *(v3 + 16);
    v6 = (v3 + 16);
    v7 = v8;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v6 = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 16) + 1, 1);
      v7 = *v6;
    }

    v11 = *(v7 + 16);
    v10 = *(v7 + 24);
    if (v11 >= v10 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
      v7 = *v6;
    }

    *(v7 + 16) = v11 + 1;
    *(v7 + 8 * v11 + 32) = v2;
    *v6 = v7;
    v12 = *v1;
  }

  free(v1);
}

uint64_t UserGraph.removeEdges(from:)(unint64_t *a1)
{
  v2 = a1;
  result = specialized OrderedDictionary.subscript.getter(*a1, *v1, v1[1], v1[2], &v37);
  v4 = v38;
  if (v38)
  {
    v5 = v37;
    specialized OrderedDictionary.subscript.getter(v2, v37, v38, v39);
    if (v6)
    {
      v7 = v6;
      outlined consume of UserGraph.Adjacent?(v5, v4);
      v8 = *(v7 + 16);
      if (v8)
      {
        v36 = MEMORY[0x277D84F90];
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8, 0);
        v9 = v36;
        v26 = v2[1];
        v40 = *(v2 + 1);
        if (!*(v7 + 16))
        {
LABEL_18:
          __break(1u);
          return result;
        }

        v10 = 0;
        v11 = (v7 + 80);
        v23 = v2;
        v24 = v8 - 1;
        v25 = v7;
        while (1)
        {
          v12 = *(v11 - 6);
          v13 = *(v11 - 5);
          v14 = *(v11 - 3);
          v27 = *(v11 - 2);
          v28 = *(v11 - 4);
          v15 = *(v11 - 8);
          v29 = *v11;
          v16 = *(v2 + 1);
          v32 = *v2;
          v33 = v16;
          v34 = *(v2 + 2);
          v35 = v2[6];
          v30[0] = v15;

          result = outlined init with copy of String(&v40, v30);
          v36 = v9;
          v18 = *(v9 + 16);
          v17 = *(v9 + 24);
          if (v18 >= v17 >> 1)
          {
            result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1);
            v9 = v36;
          }

          *(v9 + 16) = v18 + 1;
          v19 = v9 + 112 * v18;
          v20 = v32;
          v21 = v34;
          v22 = v35;
          *(v19 + 48) = v33;
          *(v19 + 64) = v21;
          *(v19 + 32) = v20;
          *(v19 + 80) = v22;
          *(v19 + 88) = v12;
          *(v19 + 96) = v13;
          *(v19 + 104) = v28;
          *(v19 + 112) = v14;
          *(v19 + 120) = v27;
          *(v19 + 128) = v15;
          LODWORD(v22) = *&v31[3];
          *(v19 + 129) = *v31;
          *(v19 + 132) = v22;
          *(v19 + 136) = v29;
          if (v24 == v10)
          {
            break;
          }

          v11 += 7;
          ++v10;
          v2 = v23;
          if (v10 >= *(v25 + 16))
          {
            goto LABEL_18;
          }
        }
      }

      else
      {

        v9 = MEMORY[0x277D84F90];
      }

      specialized Sequence.forEach(_:)(v9);
    }

    else
    {

      return outlined consume of UserGraph.Adjacent?(v5, v4);
    }
  }

  return result;
}

unint64_t UserGraph.subscript.getter@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v4 = *(v2 + 64);
  if (*(v4 + 16) <= result)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v5 = v4 + 48 * result;
  v6 = *(v5 + 56);
  if (v6 == -7)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v6 = 0;
    v10 = 0;
    v11 = 0;
  }

  else
  {
    v11 = *(v5 + 72);
    v10 = *(v5 + 64);
    v8 = *(v5 + 40);
    v9 = *(v5 + 48);
    v7 = *(v5 + 32);
    outlined copy of NodePersonality(v7);
  }

  *a2 = v7;
  *(a2 + 8) = v8;
  *(a2 + 16) = v9;
  *(a2 + 24) = v6;
  *(a2 + 32) = v10;
  *(a2 + 40) = v11;
  return result;
}

void UserGraph.hash(into:)(uint64_t a1)
{
  v2 = v1;
  specialized OrderedDictionary<>.hash(into:)(a1, v1[1], v1[2]);
  v4 = v1[3];
  v5 = v1[4];
  String.hash(into:)();
  MEMORY[0x266772770](v1[5]);
  v6 = v1[6];
  v7 = *(v6 + 16);
  MEMORY[0x266772770](v7);
  if (v7)
  {
    v8 = (v6 + 48);
    do
    {
      v9 = *(v8 - 2);
      v10 = *(v8 - 1);
      v11 = *v8;
      v8 += 3;

      String.hash(into:)();
      (*(*v11 + 120))(a1);

      --v7;
    }

    while (v7);
  }

  v12 = v2[7];
  v13 = *(v12 + 16);
  MEMORY[0x266772770](v13);
  if (v13)
  {
    v14 = (v12 + 48);
    do
    {
      v15 = *(v14 - 2);
      v16 = *(v14 - 1);
      v17 = *v14;
      v14 += 3;

      String.hash(into:)();
      (*(*v17 + 120))(a1);

      --v13;
    }

    while (v13);
  }

  specialized Array<A>.hash(into:)(a1, v2[8]);
  MEMORY[0x266772770](v2[9]);
  v18 = v2[11];
  v19 = v2[12];
  v20 = v2[13];
  v21 = v2[14];
  v22 = *(v2 + 120);
  NodePersonality.hash(into:)(a1, v2[10]);
  specialized Array<A>.hash(into:)(a1, v18);
  specialized Array<A>.hash(into:)(a1, v19);
  MEMORY[0x266772770](v20);
  if (v22)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x266772770](v21);
  }

  v23 = v2[16];
  v24 = v2[17];
  v25 = v2[18];
  v26 = v2[19];
  v27 = v2[20];
  v28 = *(v2 + 168);
  NodePersonality.hash(into:)(a1, v23);
  specialized Array<A>.hash(into:)(a1, v24);
  specialized Array<A>.hash(into:)(a1, v25);
  MEMORY[0x266772770](v26);
  if (v28)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x266772770](v27);
  }
}

Swift::Int UserGraph.hashValue.getter()
{
  Hasher.init(_seed:)();
  UserGraph.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance UserGraph()
{
  Hasher.init(_seed:)();
  UserGraph.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance UserGraph()
{
  Hasher.init(_seed:)();
  UserGraph.hash(into:)(v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance UserGraph(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[9];
  v13[8] = a1[8];
  v14[0] = v2;
  *(v14 + 9) = *(a1 + 153);
  v3 = a1[5];
  v13[4] = a1[4];
  v13[5] = v3;
  v4 = a1[7];
  v13[6] = a1[6];
  v13[7] = v4;
  v5 = a1[1];
  v13[0] = *a1;
  v13[1] = v5;
  v6 = a1[3];
  v13[2] = a1[2];
  v13[3] = v6;
  v7 = a2[9];
  v15[8] = a2[8];
  v16[0] = v7;
  *(v16 + 9) = *(a2 + 153);
  v8 = a2[5];
  v15[4] = a2[4];
  v15[5] = v8;
  v9 = a2[7];
  v15[6] = a2[6];
  v15[7] = v9;
  v10 = a2[1];
  v15[0] = *a2;
  v15[1] = v10;
  v11 = a2[3];
  v15[2] = a2[2];
  v15[3] = v11;
  return specialized static UserGraph.== infix(_:_:)(v13, v15) & 1;
}

uint64_t UserGraph.edges(from:)(uint64_t a1)
{
  specialized OrderedDictionary.subscript.getter(*(a1 + 24), *v1, v1[1], v1[2], &v57);
  v2 = v58;
  if (!v58)
  {
    return MEMORY[0x277D84F90];
  }

  v36 = v57;
  v3 = v59;
  v5 = v61;
  v4 = v62;
  v63 = v59;
  v64 = v58;
  v68 = v60;
  outlined destroy of [Input](&v68, &_s11ShaderGraph10_HashTableV7StorageCSgMd, &_s11ShaderGraph10_HashTableV7StorageCSgMR);
  v67 = v5;
  outlined destroy of [Input](&v67, &_ss15ContiguousArrayVy11ShaderGraph5InputVGMd, &_ss15ContiguousArrayVy11ShaderGraph5InputVGMR);
  v66 = v4;
  outlined destroy of [Input](&v66, &_ss15ContiguousArrayVy11ShaderGraph6OutputVSgGMd, &_ss15ContiguousArrayVy11ShaderGraph6OutputVSgGMR);
  v6 = *(v3 + 16);
  result = outlined init with copy of [Input](&v63, &v65, &_ss15ContiguousArrayVy11ShaderGraph10OrderedSetVyAC5InputVGGMd, &_ss15ContiguousArrayVy11ShaderGraph10OrderedSetVyAC5InputVGGMR);
  v8 = MEMORY[0x277D84F90];
  v41 = v6;
  if (!v6)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_32:
    v65 = v36;
    outlined destroy of [Input](&v65, &_s11ShaderGraph10_HashTableV7StorageCSgMd, &_s11ShaderGraph10_HashTableV7StorageCSgMR);
    outlined destroy of [Input](&v64, &_ss15ContiguousArrayVy11ShaderGraph6OutputVGMd, &_ss15ContiguousArrayVy11ShaderGraph6OutputVGMR);
    outlined destroy of [Input](&v63, &_ss15ContiguousArrayVy11ShaderGraph10OrderedSetVyAC5InputVGGMd, &_ss15ContiguousArrayVy11ShaderGraph10OrderedSetVyAC5InputVGGMR);
    outlined destroy of [Input](&v63, &_ss15ContiguousArrayVy11ShaderGraph10OrderedSetVyAC5InputVGGMd, &_ss15ContiguousArrayVy11ShaderGraph10OrderedSetVyAC5InputVGGMR);
    return v10;
  }

  v9 = 0;
  v39 = v2 + 32;
  v40 = v3 + 32;
  v10 = MEMORY[0x277D84F90];
  v37 = v3;
  v38 = v2;
  while (v9 < *(v2 + 16))
  {
    if (v9 >= *(v3 + 16))
    {
      goto LABEL_36;
    }

    v11 = (v40 + 16 * v9);
    v12 = v11[1];
    v13 = *(v12 + 16);
    if (v13)
    {
      v42 = v9;
      v43 = v10;
      v14 = (v39 + 56 * v9);
      v15 = v14[1];
      v16 = v14[3];
      v48 = v14[2];
      v49 = *v14;
      v17 = *(v14 + 40);
      v46 = v14[6];
      v47 = v14[4];
      v18 = *v11;
      v65 = v8;

      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13, 0);
      if (!*(v12 + 16))
      {
LABEL_34:
        __break(1u);
        break;
      }

      v19 = 0;
      v20 = v65;
      v21 = (v12 + 80);
      v45 = v12;
      v44 = v17;
      while (1)
      {
        v22 = *(v21 - 5);
        v23 = *(v21 - 3);
        v51 = *(v21 - 4);
        v52 = *(v21 - 6);
        v50 = *(v21 - 2);
        v54 = *v21;
        v53 = *(v21 - 8);
        v24 = *(v20 + 16);
        v25 = *(v20 + 24);
        v65 = v20;
        v26 = v20;

        v20 = v26;
        if (v24 >= v25 >> 1)
        {
          result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v24 + 1, 1);
          v20 = v65;
        }

        *(v20 + 16) = v24 + 1;
        v27 = v20 + 112 * v24;
        *(v27 + 32) = v49;
        *(v27 + 40) = v15;
        *(v27 + 48) = v48;
        *(v27 + 56) = v16;
        *(v27 + 64) = v47;
        *(v27 + 72) = v44;
        *(v27 + 73) = *v56;
        *(v27 + 76) = *&v56[3];
        *(v27 + 80) = v46;
        *(v27 + 88) = v52;
        *(v27 + 96) = v22;
        *(v27 + 104) = v51;
        *(v27 + 112) = v23;
        *(v27 + 120) = v50;
        *(v27 + 128) = v53;
        *(v27 + 132) = *&v55[3];
        *(v27 + 129) = *v55;
        *(v27 + 136) = v54;
        if (v13 - 1 == v19)
        {
          break;
        }

        v21 += 7;
        if (++v19 >= *(v45 + 16))
        {
          goto LABEL_34;
        }
      }

      v28 = v20;

      v3 = v37;
      v2 = v38;
      v9 = v42;
      v10 = v43;
      v8 = MEMORY[0x277D84F90];
    }

    else
    {
      v28 = v8;
    }

    v29 = *(v28 + 16);
    v30 = *(v10 + 16);
    v31 = v30 + v29;
    if (__OFADD__(v30, v29))
    {
      goto LABEL_37;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0 || v31 > *(v10 + 24) >> 1)
    {
      if (v30 <= v31)
      {
        v32 = v30 + v29;
      }

      else
      {
        v32 = v30;
      }

      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v32, 1, v10);
      v10 = result;
    }

    if (*(v28 + 16))
    {
      if ((*(v10 + 24) >> 1) - *(v10 + 16) < v29)
      {
        goto LABEL_39;
      }

      swift_arrayInitWithCopy();

      if (v29)
      {
        v33 = *(v10 + 16);
        v34 = __OFADD__(v33, v29);
        v35 = v33 + v29;
        if (v34)
        {
          goto LABEL_40;
        }

        *(v10 + 16) = v35;
      }
    }

    else
    {

      if (v29)
      {
        goto LABEL_38;
      }
    }

    if (++v9 == v41)
    {
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t UserGraph.edges(to:)(uint64_t a1)
{
  specialized OrderedDictionary.subscript.getter(*(a1 + 24), *v1, v1[1], v1[2], &v49);
  v2 = v50;
  if (!v50)
  {
    return MEMORY[0x277D84F90];
  }

  v4 = v53;
  v3 = v54;
  v5 = v51;
  v56 = v53;
  v57 = v52;
  v55 = v54;
  v60 = v49;
  outlined init with copy of [Input](&v57, &v59, &_s11ShaderGraph10_HashTableV7StorageCSgMd, &_s11ShaderGraph10_HashTableV7StorageCSgMR);
  outlined init with copy of [Input](&v56, &v59, &_ss15ContiguousArrayVy11ShaderGraph5InputVGMd, &_ss15ContiguousArrayVy11ShaderGraph5InputVGMR);
  outlined init with copy of [Input](&v55, &v59, &_ss15ContiguousArrayVy11ShaderGraph6OutputVSgGMd, &_ss15ContiguousArrayVy11ShaderGraph6OutputVSgGMR);
  outlined destroy of [Input](&v60, &_s11ShaderGraph10_HashTableV7StorageCSgMd, &_s11ShaderGraph10_HashTableV7StorageCSgMR);
  v59 = v2;
  outlined destroy of [Input](&v59, &_ss15ContiguousArrayVy11ShaderGraph6OutputVGMd, &_ss15ContiguousArrayVy11ShaderGraph6OutputVGMR);
  v58 = v5;
  outlined destroy of [Input](&v58, &_ss15ContiguousArrayVy11ShaderGraph10OrderedSetVyAC5InputVGGMd, &_ss15ContiguousArrayVy11ShaderGraph10OrderedSetVyAC5InputVGGMR);
  outlined destroy of [Input](&v57, &_s11ShaderGraph10_HashTableV7StorageCSgMd, &_s11ShaderGraph10_HashTableV7StorageCSgMR);
  outlined destroy of [Input](&v56, &_ss15ContiguousArrayVy11ShaderGraph5InputVGMd, &_ss15ContiguousArrayVy11ShaderGraph5InputVGMR);
  outlined destroy of [Input](&v55, &_ss15ContiguousArrayVy11ShaderGraph6OutputVSgGMd, &_ss15ContiguousArrayVy11ShaderGraph6OutputVSgGMR);
  v6 = *(v3 + 16);
  result = outlined init with copy of [Input](&v55, v48, &_ss15ContiguousArrayVy11ShaderGraph6OutputVSgGMd, &_ss15ContiguousArrayVy11ShaderGraph6OutputVSgGMR);
  if (v6)
  {
    v8 = 0;
    v9 = v3 + 40;
    v10 = MEMORY[0x277D84F90];
    for (i = 0; i < v6; v8 = i)
    {
      v12 = 56 * v8;
      v13 = v4;
      while (1)
      {
        if (i >= *(v4 + 16))
        {
          __break(1u);
LABEL_22:
          __break(1u);
          return result;
        }

        if (i >= *(v3 + 16))
        {
          goto LABEL_22;
        }

        v14 = *(v9 + v12 - 8);
        v15 = *(v9 + 56 * v8);
        v16 = *(v9 + v12 + 8);
        v17 = *(v9 + v12 + 16);
        v18 = *(v9 + v12 + 24);
        ++i;
        v19 = *(v9 + v12 + 40);
        if (v15)
        {
          break;
        }

        result = outlined consume of Output?(v14, 0);
        v13 += 56;
        v9 += 56;
        if (i >= v6)
        {
          goto LABEL_19;
        }
      }

      v39 = *(v13 + v12 + 64);
      v40 = *(v13 + v12 + 80);
      v46 = *(v13 + v12 + 56);
      v45 = *(v13 + v12 + 40);
      v37 = *(v13 + v12 + 32);
      v38 = *(v13 + v12 + 48);
      v44 = *(v13 + 56 * v8 + 72);
      LOBYTE(v48[0]) = *(v9 + v12 + 32) & 1;
      v20 = v14;
      v43 = v19;
      v21 = v10;
      v22 = v18;
      v23 = v17;
      v36 = v21;
      v24 = v16;
      swift_retain_n();
      swift_bridgeObjectRetain_n();
      outlined copy of Output?(v20, v15);

      v42 = v24;
      v41 = v23;
      v25 = v22;
      outlined consume of Output?(v20, v15);
      v47[0] = v44;
      v26 = v48[0];
      v10 = v36;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v36 + 16) + 1, 1, v36);
        v10 = result;
      }

      v28 = *(v10 + 16);
      v27 = *(v10 + 24);
      v29 = v41;
      v30 = v42;
      v31 = v20;
      if (v28 >= v27 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1, v10);
        v29 = v41;
        v30 = v42;
        v33 = v25;
        v32 = v43;
        v10 = result;
        v31 = v20;
      }

      else
      {
        v32 = v43;
        v33 = v25;
      }

      v9 = v3 + 40;
      *(v10 + 16) = v28 + 1;
      v34 = v10 + 112 * v28;
      *(v34 + 32) = v31;
      *(v34 + 40) = v15;
      *(v34 + 48) = v30;
      *(v34 + 56) = v29;
      *(v34 + 64) = v33;
      *(v34 + 72) = v26;
      v35 = *(v48 + 3);
      *(v34 + 73) = v48[0];
      *(v34 + 76) = v35;
      *(v34 + 80) = v32;
      *(v34 + 88) = v37;
      *(v34 + 96) = v45;
      *(v34 + 104) = v38;
      *(v34 + 112) = v46;
      *(v34 + 120) = v39;
      *(v34 + 128) = v44;
      *(v34 + 132) = *&v47[3];
      *(v34 + 129) = *v47;
      *(v34 + 136) = v40;
    }
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

LABEL_19:
  outlined destroy of [Input](&v57, &_s11ShaderGraph10_HashTableV7StorageCSgMd, &_s11ShaderGraph10_HashTableV7StorageCSgMR);
  outlined destroy of [Input](&v56, &_ss15ContiguousArrayVy11ShaderGraph5InputVGMd, &_ss15ContiguousArrayVy11ShaderGraph5InputVGMR);
  outlined destroy of [Input](&v55, &_ss15ContiguousArrayVy11ShaderGraph6OutputVSgGMd, &_ss15ContiguousArrayVy11ShaderGraph6OutputVSgGMR);
  outlined destroy of [Input](&v55, &_ss15ContiguousArrayVy11ShaderGraph6OutputVSgGMd, &_ss15ContiguousArrayVy11ShaderGraph6OutputVSgGMR);
  return v10;
}

BOOL UserGraph.isEmpty.getter()
{
  v1 = *(v0 + 64);
  v2 = (v1 + 56);
  v3 = *(v1 + 16) + 1;
  do
  {
    if (!--v3)
    {
      break;
    }

    v4 = *v2;
    v2 += 6;
  }

  while (v4 == -7);
  return v3 == 0;
}

uint64_t closure #1 in UserGraph.insert<A>(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v1;
  v4[2] = *(a1 + 32);
  v5 = *(a1 + 48);
  v2 = *(a1 + 72);
  v6[0] = *(a1 + 56);
  v6[1] = v2;
  v6[2] = *(a1 + 88);
  v7 = *(a1 + 104);
  return UserGraph.connect(_:to:)(v4, v6);
}

uint64_t UserGraph.prune(at:)(unint64_t *a1)
{
  result = UserGraph.remove(_:)(a1);
  v4 = *a1;
  if (*a1 == -7)
  {
    return result;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v5 = *(v1 + 64);
  if (v4 >= *(v5 + 16))
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v6 = (v5 + 48 * v4);
  v7 = v6[4];
  v8 = v6[5];
  v9 = v6[6];
  v10 = v6[7];
  outlined copy of NodePersonality(v7);

  specialized UserGraph.prune(_:)(v8, v9, v10);
  outlined consume of NodePersonality(v7);
}

uint64_t UserGraph.describeEdge(_:)(uint64_t result)
{
  v2 = result;
  v3 = *result;
  v4 = *(result + 16);
  v5 = *(result + 24);
  if (*result == -7)
  {
    v31 = 0;
    v6 = 0;
  }

  else
  {
    if ((v3 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v7 = *(v1 + 64);
    if (v3 >= *(v7 + 16))
    {
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v8 = v7 + 48 * v3;
    v6 = *(v8 + 40);
    v10 = *(v8 + 48);
    v9 = *(v8 + 56);
    v11 = *(v8 + 64);
    v12 = *(v8 + 72);
    v31 = *(v8 + 32);
    outlined copy of NodePersonality(v31);
  }

  v13 = v2[7];
  v27 = v2[10];
  v28 = v2[9];
  v26 = v5;
  if (v13 == -7)
  {
    v14 = 0;
    v15 = 0;
    goto LABEL_11;
  }

  if ((v13 & 0x8000000000000000) != 0)
  {
    goto LABEL_18;
  }

  v16 = *(v1 + 64);
  if (v13 < *(v16 + 16))
  {
    v17 = v16 + 48 * v13;
    v14 = *(v17 + 32);
    v15 = *(v17 + 40);
    v18 = *(v17 + 48);
    v19 = *(v17 + 56);
    v30 = *(v17 + 64);
    v29 = *(v17 + 72);
    outlined copy of NodePersonality(v14);

LABEL_11:
    if (v6)
    {
      outlined copy of NodePersonality(v31);

      v20 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266771550](v20);

      MEMORY[0x266771550](8236, 0xE200000000000000);
      MEMORY[0x266771550](v4, v26);
      outlined consume of NodePersonality(v31);

      v21 = 1701080942;
      v22 = 0xE400000000000000;
      if (v15)
      {
LABEL_13:
        outlined copy of NodePersonality(v14);

        v23 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x266771550](v23);

        MEMORY[0x266771550](8236, 0xE200000000000000);
        MEMORY[0x266771550](v28, v27);
        outlined consume of NodePersonality(v14);

        v25 = 1701080942;
        v24 = 0xE400000000000000;
LABEL_16:
        MEMORY[0x266771550](v21, v22);

        MEMORY[0x266771550](0x28203E2D2029, 0xE600000000000000);
        MEMORY[0x266771550](v25, v24);

        MEMORY[0x266771550](41, 0xE100000000000000);
        outlined consume of ShaderGraphNode?(v14, v15);
        outlined consume of ShaderGraphNode?(v31, v6);
        return 40;
      }
    }

    else
    {
      v21 = 0xD000000000000010;
      v22 = 0x8000000265F32330;
      if (v15)
      {
        goto LABEL_13;
      }
    }

    v25 = 0xD000000000000010;
    v24 = 0x8000000265F32330;
    goto LABEL_16;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t Edge.debugDescription.getter()
{
  MEMORY[0x266771550](1701274693, 0xE400000000000000);
  MEMORY[0x266771550](10272, 0xE200000000000000);
  v2 = *v0;
  v4 = v0[1];
  v6 = v0[2];
  v8 = *(v0 + 6);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x266771550](540945696, 0xE400000000000000);
  v3 = *(v0 + 56);
  v5 = *(v0 + 72);
  v7 = *(v0 + 88);
  v9 = *(v0 + 13);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x266771550](41, 0xE100000000000000);
  return 0;
}

unint64_t specialized OrderedSet._appendNew(_:in:)(uint64_t a1, uint64_t a2)
{
  return specialized OrderedSet._appendNew(_:in:)(a1, a2, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:), specialized closure #1 in static _HashTable.create<A>(uncheckedUniqueElements:scale:reservedScale:));
}

{
  return specialized OrderedSet._appendNew(_:in:)(a1, a2, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:), specialized closure #1 in static _HashTable.create<A>(uncheckedUniqueElements:scale:reservedScale:));
}

{
  outlined init with copy of [Input](a1, v24, &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGMd, &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGMR);
  v4 = v2 + 1;
  v5 = v2[1];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2[1] = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 16) + 1, 1);
    v5 = *v4;
  }

  v8 = *(v5 + 16);
  v7 = *(v5 + 24);
  if (v8 >= v7 >> 1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1);
    v5 = *v4;
  }

  *(v5 + 16) = v8 + 1;
  result = outlined init with take of WeakBox<SGEdge>(v24, v5 + 8 * v8 + 32);
  v2[1] = v5;
  v10 = *v2;
  if (*v2)
  {
    swift_beginAccess();
    if (specialized static _HashTable.maximumCapacity(forScale:)(v10[2] & 0x3FLL) > v8)
    {
      v11 = *v2;
      result = swift_isUniquelyReferenced_native();
      v12 = *v2;
      if ((result & 1) == 0)
      {
        if (!v12)
        {
LABEL_20:
          __break(1u);
          return result;
        }

        v13 = v12[2];
        v14 = (v13 & 0x3F) << v13;
        v15 = __OFADD__(v14, 64);
        v16 = v14 + 64;
        if (v15)
        {
          __break(1u);
LABEL_19:
          __break(1u);
          goto LABEL_20;
        }

        v18 = v16 - 1;
        v17 = v16 < 1;
        v19 = v16 + 62;
        if (!v17)
        {
          v19 = v18;
        }

        v20 = v19 >> 6;
        type metadata accessor for _HashTable.Storage();
        v21 = swift_allocObject();
        v22 = v12[3];
        v21[2] = v13;
        v21[3] = v22;
        memcpy(v21 + 4, v12 + 4, 8 * v20);

        *v2 = v21;
        v12 = v21;
      }

      if (v12)
      {
        v23 = *(*v4 + 16) + ~(v12[3] >> 6);
        return _HashTable.UnsafeHandle.subscript.setter((-1 << v12[2]) ^ ~(((v23 >> 63) & ~(-1 << v12[2])) + v23), a2, v12 + 2, (v12 + 4));
      }

      goto LABEL_19;
    }
  }

  else if (v8 < 0xF)
  {
    return result;
  }

  return specialized OrderedSet._regenerateHashTable()(specialized _HashTable.UnsafeHandle.fill<A>(uncheckedUniqueElements:), _s11ShaderGraph10_HashTableV6create23uncheckedUniqueElements5scale13reservedScaleACSgx_SiSgSitSkRzSH7ElementRpzlFZs15ContiguousArrayVyAA13TextureSourceOG_Tt2g5Tm);
}

{
  return specialized OrderedSet._appendNew(_:in:)(a1, a2, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:), specialized closure #1 in static _HashTable.create<A>(uncheckedUniqueElements:scale:reservedScale:));
}

{
  return specialized OrderedSet._appendNew(_:in:)(a1, a2, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:), specialized closure #1 in static _HashTable.create<A>(uncheckedUniqueElements:scale:reservedScale:));
}

unint64_t specialized OrderedSet._appendNew(_:in:)(__int128 *a1, uint64_t a2, void (*a3)(BOOL, uint64_t, uint64_t))
{
  v7 = v3 + 1;
  v8 = v3[1];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3[1] = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a3(0, *(v8 + 16) + 1, 1);
    v8 = *v7;
  }

  v11 = *(v8 + 16);
  v10 = *(v8 + 24);
  if (v11 >= v10 >> 1)
  {
    a3(v10 > 1, v11 + 1, 1);
    v8 = *v7;
  }

  v12 = *(a1 + 1);
  v34 = a1[1];
  *(v8 + 16) = v11 + 1;
  v13 = v8 + 56 * v11;
  v14 = *a1;
  v15 = a1[1];
  v16 = a1[2];
  *(v13 + 80) = *(a1 + 6);
  *(v13 + 48) = v15;
  *(v13 + 64) = v16;
  *(v13 + 32) = v14;
  v3[1] = v8;
  v17 = *v3;
  if (!*v3)
  {
    if (v11 < 0xF)
    {

      return outlined init with copy of String(&v34, v32);
    }

LABEL_16:

    outlined init with copy of String(&v34, v33);
    return specialized OrderedSet._regenerateHashTable()(_s11ShaderGraph10_HashTableV6create23uncheckedUniqueElements5scale13reservedScaleACSgx_SiSgSitSkRzSH7ElementRpzlFZs15ContiguousArrayVyAA5InputVG_Tt2g5Tm);
  }

  swift_beginAccess();
  if (specialized static _HashTable.maximumCapacity(forScale:)(v17[2] & 0x3FLL) <= v11)
  {
    goto LABEL_16;
  }

  outlined init with copy of String(&v34, v33);
  v18 = *v3;
  result = swift_isUniquelyReferenced_native();
  v20 = *v3;
  if (result)
  {
    goto LABEL_13;
  }

  if (v20)
  {
    v21 = v20[2];
    v22 = (v21 & 0x3F) << v21;
    v23 = __OFADD__(v22, 64);
    v24 = v22 + 64;
    if (v23)
    {
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v26 = v24 - 1;
    v25 = v24 < 1;
    v27 = v24 + 62;
    if (!v25)
    {
      v27 = v26;
    }

    v28 = v27 >> 6;
    type metadata accessor for _HashTable.Storage();
    v29 = swift_allocObject();
    v30 = v20[3];
    v29[2] = v21;
    v29[3] = v30;
    memcpy(v29 + 4, v20 + 4, 8 * v28);

    *v3 = v29;
    v20 = v29;
LABEL_13:
    if (v20)
    {
      v31 = *(*v7 + 16) + ~(v20[3] >> 6);
      return _HashTable.UnsafeHandle.subscript.setter((-1 << v20[2]) ^ ~(((v31 >> 63) & ~(-1 << v20[2])) + v31), a2, v20 + 2, (v20 + 4));
    }

    goto LABEL_19;
  }

LABEL_20:
  __break(1u);
  return result;
}

unint64_t specialized OrderedSet._appendNew(_:in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v10 = v3[1];
  v8 = v3 + 1;
  v9 = v10;

  result = swift_isUniquelyReferenced_nonNull_native();
  *v8 = v10;
  if ((result & 1) == 0)
  {
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 16) + 1, 1);
    v9 = *v8;
  }

  v13 = *(v9 + 16);
  v12 = *(v9 + 24);
  if (v13 >= v12 >> 1)
  {
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
    v9 = *v8;
  }

  *(v9 + 16) = v13 + 1;
  v14 = v9 + 16 * v13;
  *(v14 + 32) = a1;
  *(v14 + 40) = a2;
  v4[1] = v9;
  v15 = *v4;
  if (*v4)
  {
    swift_beginAccess();
    if (specialized static _HashTable.maximumCapacity(forScale:)(v15[2] & 0x3FLL) > v13)
    {
      v16 = *v4;
      result = swift_isUniquelyReferenced_native();
      v17 = *v4;
      if ((result & 1) == 0)
      {
        if (!v17)
        {
LABEL_20:
          __break(1u);
          return result;
        }

        v18 = v17[2];
        v19 = (v18 & 0x3F) << v18;
        v20 = __OFADD__(v19, 64);
        v21 = v19 + 64;
        if (v20)
        {
          __break(1u);
LABEL_19:
          __break(1u);
          goto LABEL_20;
        }

        v23 = v21 - 1;
        v22 = v21 < 1;
        v24 = v21 + 62;
        if (!v22)
        {
          v24 = v23;
        }

        v25 = v24 >> 6;
        type metadata accessor for _HashTable.Storage();
        v26 = swift_allocObject();
        v27 = v17[3];
        v26[2] = v18;
        v26[3] = v27;
        memcpy(v26 + 4, v17 + 4, 8 * v25);

        *v4 = v26;
        v17 = v26;
      }

      if (v17)
      {
        v28 = *(*v8 + 16) + ~(v17[3] >> 6);
        return _HashTable.UnsafeHandle.subscript.setter((-1 << v17[2]) ^ ~(((v28 >> 63) & ~(-1 << v17[2])) + v28), a3, v17 + 2, (v17 + 4));
      }

      goto LABEL_19;
    }
  }

  else if (v13 < 0xF)
  {
    return result;
  }

  return specialized OrderedSet._regenerateHashTable()(specialized closure #1 in static _HashTable.create<A>(uncheckedUniqueElements:scale:reservedScale:), _s11ShaderGraph10_HashTableV6create23uncheckedUniqueElements5scale13reservedScaleACSgx_SiSgSitSkRzSH7ElementRpzlFZs15ContiguousArrayVySiG_Tt2g5Tm);
}

unint64_t specialized OrderedSet._appendNew(_:in:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(BOOL, uint64_t, uint64_t), uint64_t a4)
{
  v7 = v4;
  v12 = v4[1];
  v10 = v4 + 1;
  v11 = v12;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v10 = v12;
  if ((result & 1) == 0)
  {
    result = a3(0, *(v11 + 16) + 1, 1);
    v11 = *v10;
  }

  v15 = *(v11 + 16);
  v14 = *(v11 + 24);
  if (v15 >= v14 >> 1)
  {
    result = a3(v14 > 1, v15 + 1, 1);
    v11 = *v10;
  }

  *(v11 + 16) = v15 + 1;
  *(v11 + 8 * v15 + 32) = a1;
  v7[1] = v11;
  v16 = *v7;
  if (*v7)
  {
    swift_beginAccess();
    if (specialized static _HashTable.maximumCapacity(forScale:)(v16[2] & 0x3FLL) > v15)
    {
      v17 = *v7;
      result = swift_isUniquelyReferenced_native();
      v18 = *v7;
      if ((result & 1) == 0)
      {
        if (!v18)
        {
LABEL_20:
          __break(1u);
          return result;
        }

        v19 = v18[2];
        v20 = (v19 & 0x3F) << v19;
        v21 = __OFADD__(v20, 64);
        v22 = v20 + 64;
        if (v21)
        {
          __break(1u);
LABEL_19:
          __break(1u);
          goto LABEL_20;
        }

        v24 = v22 - 1;
        v23 = v22 < 1;
        v25 = v22 + 62;
        if (!v23)
        {
          v25 = v24;
        }

        v26 = v25 >> 6;
        type metadata accessor for _HashTable.Storage();
        v27 = swift_allocObject();
        v28 = v18[3];
        v27[2] = v19;
        v27[3] = v28;
        memcpy(v27 + 4, v18 + 4, 8 * v26);

        *v7 = v27;
        v18 = v27;
      }

      if (v18)
      {
        v29 = *(*v10 + 16) + ~(v18[3] >> 6);
        return _HashTable.UnsafeHandle.subscript.setter((-1 << v18[2]) ^ ~(((v29 >> 63) & ~(-1 << v18[2])) + v29), a2, v18 + 2, (v18 + 4));
      }

      goto LABEL_19;
    }
  }

  else if (v15 < 0xF)
  {
    return result;
  }

  return specialized OrderedSet._regenerateHashTable()(a4, _s11ShaderGraph10_HashTableV6create23uncheckedUniqueElements5scale13reservedScaleACSgx_SiSgSitSkRzSH7ElementRpzlFZs15ContiguousArrayVySiG_Tt2g5Tm);
}

{
  v7 = v4;
  v12 = v4[1];
  v10 = v4 + 1;
  v11 = v12;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v10 = v12;
  if ((result & 1) == 0)
  {
    result = a3(0, *(v11 + 16) + 1, 1);
    v11 = *v10;
  }

  v15 = *(v11 + 16);
  v14 = *(v11 + 24);
  if (v15 >= v14 >> 1)
  {
    result = a3(v14 > 1, v15 + 1, 1);
    v11 = *v10;
  }

  *(v11 + 16) = v15 + 1;
  *(v11 + 8 * v15 + 32) = a1;
  v7[1] = v11;
  v16 = *v7;
  if (*v7)
  {
    swift_beginAccess();
    if (specialized static _HashTable.maximumCapacity(forScale:)(v16[2] & 0x3FLL) > v15)
    {
      v17 = *v7;
      result = swift_isUniquelyReferenced_native();
      v18 = *v7;
      if ((result & 1) == 0)
      {
        if (!v18)
        {
LABEL_20:
          __break(1u);
          return result;
        }

        v19 = v18[2];
        v20 = (v19 & 0x3F) << v19;
        v21 = __OFADD__(v20, 64);
        v22 = v20 + 64;
        if (v21)
        {
          __break(1u);
LABEL_19:
          __break(1u);
          goto LABEL_20;
        }

        v24 = v22 - 1;
        v23 = v22 < 1;
        v25 = v22 + 62;
        if (!v23)
        {
          v25 = v24;
        }

        v26 = v25 >> 6;
        type metadata accessor for _HashTable.Storage();
        v27 = swift_allocObject();
        v28 = v18[3];
        v27[2] = v19;
        v27[3] = v28;
        memcpy(v27 + 4, v18 + 4, 8 * v26);

        *v7 = v27;
        v18 = v27;
      }

      if (v18)
      {
        v29 = *(*v10 + 16) + ~(v18[3] >> 6);
        return _HashTable.UnsafeHandle.subscript.setter((-1 << v18[2]) ^ ~(((v29 >> 63) & ~(-1 << v18[2])) + v29), a2, v18 + 2, (v18 + 4));
      }

      goto LABEL_19;
    }
  }

  else if (v15 < 0xF)
  {
    return result;
  }

  return specialized OrderedSet._regenerateHashTable()(a4, _s11ShaderGraph10_HashTableV6create23uncheckedUniqueElements5scale13reservedScaleACSgx_SiSgSitSkRzSH7ElementRpzlFZs15ContiguousArrayVySiG_Tt2g5Tm);
}

unint64_t specialized OrderedSet._appendNew(_:in:)(void *a1, uint64_t a2)
{
  v4 = a1;
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  v5 = *(v2[1] + 16);
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  result = specialized ContiguousArray._endMutation()();
  v7 = *v2;
  v8 = *(v2[1] + 16);
  if (*v2)
  {
    swift_beginAccess();
    if (specialized static _HashTable.maximumCapacity(forScale:)(v7[2] & 0x3FLL) >= v8)
    {
      v9 = *v2;
      result = swift_isUniquelyReferenced_native();
      v10 = *v2;
      if ((result & 1) == 0)
      {
        if (!v10)
        {
LABEL_16:
          __break(1u);
          return result;
        }

        v11 = v10[2];
        v12 = (v11 & 0x3F) << v11;
        v13 = __OFADD__(v12, 64);
        v14 = v12 + 64;
        if (v13)
        {
          __break(1u);
LABEL_15:
          __break(1u);
          goto LABEL_16;
        }

        v16 = v14 - 1;
        v15 = v14 < 1;
        v17 = v14 + 62;
        if (!v15)
        {
          v17 = v16;
        }

        v18 = v17 >> 6;
        type metadata accessor for _HashTable.Storage();
        v19 = swift_allocObject();
        v20 = v10[3];
        v19[2] = v11;
        v19[3] = v20;
        memcpy(v19 + 4, v10 + 4, 8 * v18);

        *v2 = v19;
        v10 = v19;
      }

      if (v10)
      {
        v21 = *(v2[1] + 16) + ~(v10[3] >> 6);
        return _HashTable.UnsafeHandle.subscript.setter((-1 << v10[2]) ^ ~(((v21 >> 63) & ~(-1 << v10[2])) + v21), a2, v10 + 2, (v10 + 4));
      }

      goto LABEL_15;
    }
  }

  else if (v8 < 0x10)
  {
    return result;
  }

  return specialized OrderedSet._regenerateHashTable()(_s11ShaderGraph10_HashTableV6create23uncheckedUniqueElements5scale13reservedScaleACSgx_SiSgSitSkRzSH7ElementRpzlFZs15ContiguousArrayVyAA6SGNodeCG_Tt2g5Tm);
}

unint64_t specialized OrderedSet._appendNew(_:in:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v9 = v4 + 1;
  v10 = v4[1];
  outlined copy of TextureSource();
  result = swift_isUniquelyReferenced_nonNull_native();
  v4[1] = v10;
  if ((result & 1) == 0)
  {
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 16) + 1, 1);
    v10 = *v9;
  }

  v13 = *(v10 + 16);
  v12 = *(v10 + 24);
  if (v13 >= v12 >> 1)
  {
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
    v10 = *v9;
  }

  *(v10 + 16) = v13 + 1;
  v14 = v10 + 24 * v13;
  *(v14 + 32) = a1;
  *(v14 + 40) = a2;
  *(v14 + 48) = a3 & 1;
  v4[1] = v10;
  v15 = *v4;
  if (*v4)
  {
    swift_beginAccess();
    if (specialized static _HashTable.maximumCapacity(forScale:)(v15[2] & 0x3FLL) > v13)
    {
      v16 = *v4;
      result = swift_isUniquelyReferenced_native();
      v17 = *v4;
      if ((result & 1) == 0)
      {
        if (!v17)
        {
LABEL_20:
          __break(1u);
          return result;
        }

        v18 = v17[2];
        v19 = (v18 & 0x3F) << v18;
        v20 = __OFADD__(v19, 64);
        v21 = v19 + 64;
        if (v20)
        {
          __break(1u);
LABEL_19:
          __break(1u);
          goto LABEL_20;
        }

        v23 = v21 - 1;
        v22 = v21 < 1;
        v24 = v21 + 62;
        if (!v22)
        {
          v24 = v23;
        }

        v25 = v24 >> 6;
        type metadata accessor for _HashTable.Storage();
        v26 = swift_allocObject();
        v27 = v17[3];
        v26[2] = v18;
        v26[3] = v27;
        memcpy(v26 + 4, v17 + 4, 8 * v25);

        *v4 = v26;
        v17 = v26;
      }

      if (v17)
      {
        v28 = *(*v9 + 16) + ~(v17[3] >> 6);
        return _HashTable.UnsafeHandle.subscript.setter((-1 << v17[2]) ^ ~(((v28 >> 63) & ~(-1 << v17[2])) + v28), a4, v17 + 2, (v17 + 4));
      }

      goto LABEL_19;
    }
  }

  else if (v13 < 0xF)
  {
    return result;
  }

  return specialized OrderedSet._regenerateHashTable()(specialized _HashTable.UnsafeHandle.fill<A>(uncheckedUniqueElements:), _s11ShaderGraph10_HashTableV6create23uncheckedUniqueElements5scale13reservedScaleACSgx_SiSgSitSkRzSH7ElementRpzlFZs15ContiguousArrayVyAA13TextureSourceOG_Tt2g5Tm);
}

unint64_t specialized OrderedSet._appendNew(_:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v4 + 1;
  v10 = v4[1];

  result = swift_isUniquelyReferenced_nonNull_native();
  v4[1] = v10;
  if ((result & 1) == 0)
  {
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 16) + 1, 1);
    v10 = *v9;
  }

  v13 = *(v10 + 16);
  v12 = *(v10 + 24);
  if (v13 >= v12 >> 1)
  {
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
    v10 = *v9;
  }

  *(v10 + 16) = v13 + 1;
  v14 = (v10 + 24 * v13);
  v14[4] = a1;
  v14[5] = a2;
  v14[6] = a3;
  v4[1] = v10;
  v15 = *v4;
  if (*v4)
  {
    swift_beginAccess();
    if (specialized static _HashTable.maximumCapacity(forScale:)(v15[2] & 0x3FLL) > v13)
    {
      v16 = *v4;
      result = swift_isUniquelyReferenced_native();
      v17 = *v4;
      if ((result & 1) == 0)
      {
        if (!v17)
        {
LABEL_20:
          __break(1u);
          return result;
        }

        v18 = v17[2];
        v19 = (v18 & 0x3F) << v18;
        v20 = __OFADD__(v19, 64);
        v21 = v19 + 64;
        if (v20)
        {
          __break(1u);
LABEL_19:
          __break(1u);
          goto LABEL_20;
        }

        v23 = v21 - 1;
        v22 = v21 < 1;
        v24 = v21 + 62;
        if (!v22)
        {
          v24 = v23;
        }

        v25 = v24 >> 6;
        type metadata accessor for _HashTable.Storage();
        v26 = swift_allocObject();
        v27 = v17[3];
        v26[2] = v18;
        v26[3] = v27;
        memcpy(v26 + 4, v17 + 4, 8 * v25);

        *v4 = v26;
        v17 = v26;
      }

      if (v17)
      {
        v28 = *(*v9 + 16) + ~(v17[3] >> 6);
        return _HashTable.UnsafeHandle.subscript.setter((-1 << v17[2]) ^ ~(((v28 >> 63) & ~(-1 << v17[2])) + v28), a4, v17 + 2, (v17 + 4));
      }

      goto LABEL_19;
    }
  }

  else if (v13 < 0xF)
  {
    return result;
  }

  return specialized OrderedSet._regenerateHashTable()(specialized closure #1 in static _HashTable.create<A>(uncheckedUniqueElements:scale:reservedScale:), _s11ShaderGraph10_HashTableV6create23uncheckedUniqueElements5scale13reservedScaleACSgx_SiSgSitSkRzSH7ElementRpzlFZs15ContiguousArrayVySiG_Tt2g5Tm);
}

uint64_t specialized Collection<>.firstIndex(of:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = 0;
    v5 = *a1;
    v6 = (a2 + 24);
    v15 = *a1;
    do
    {
      if (*(v6 - 3) == v5)
      {
        v7 = a3;
        v8 = *(v6 - 1);
        v9 = *v6;
        v18 = *(v6 + 16);
        v16 = v6[1];
        v17 = v6[3];
        v10 = a1[1];
        v11 = *(**(v6 - 2) + 128);

        if (v11(v10))
        {
          if (v8 == a1[2] && v9 == a1[3])
          {

            a3 = v7;
            v5 = v15;
          }

          else
          {
            v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

            a3 = v7;
            v5 = v15;
            if ((v12 & 1) == 0)
            {
              goto LABEL_4;
            }
          }

          v13 = *(a1 + 40);
          if (v18)
          {
            if (!*(a1 + 40))
            {
              goto LABEL_4;
            }
          }

          else
          {
            if (v16 != a1[4])
            {
              v13 = 1;
            }

            if (v13)
            {
              goto LABEL_4;
            }
          }

          if (v17 == a1[6])
          {
            return v4;
          }
        }

        else
        {

          a3 = v7;
          v5 = v15;
        }
      }

LABEL_4:
      v6 += 7;
      ++v4;
    }

    while (a3 != v4);
  }

  return 0;
}

unint64_t specialized Collection<>.firstIndex(of:)(uint64_t a1, unint64_t a2)
{
  return specialized Collection<>.firstIndex(of:)(a1, a2, type metadata accessor for SGEdge);
}

{
  return specialized Collection<>.firstIndex(of:)(a1, a2, type metadata accessor for SGNode);
}

unint64_t specialized Collection<>.firstIndex(of:)(uint64_t a1, unint64_t a2, void (*a3)(void))
{
  v5 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v6 = __CocoaSet.count.getter();
  }

  else
  {
    v6 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  while (1)
  {
    if (v6 == v7)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x266772030](v7, a2);
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v8 = *(a2 + 8 * v7 + 32);
    }

    v9 = v8;
    a3(0);
    v10 = static NSObject.== infix(_:_:)();

    if (v10)
    {
      return v7;
    }

    if (__OFADD__(v7++, 1))
    {
      goto LABEL_16;
    }
  }
}

uint64_t specialized OrderedSet._append(_:)(uint64_t a1)
{
  v2 = v1[1];
  v3 = v2 + 32;
  v4 = *(v2 + 16);
  if (*v1)
  {
    v5 = a1;
    specialized _HashTable.UnsafeHandle._find<A>(_:in:)(a1, v3, v4, (*v1 + 16), *v1 + 32);
    if (v6)
    {
      a1 = v5;
LABEL_9:
      specialized OrderedSet._appendNew(_:in:)(a1, v4, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:), specialized closure #1 in static _HashTable.create<A>(uncheckedUniqueElements:scale:reservedScale:));
      v8 = *(v1[1] + 16) - 1;
      return 1;
    }
  }

  else
  {
    if (!v4)
    {
      goto LABEL_9;
    }

    v7 = 0;
    while (*(v3 + 8 * v7) != a1)
    {
      if (v4 == ++v7)
      {
        v4 = 0;
        goto LABEL_9;
      }
    }
  }

  return 0;
}

{
  v2 = v1[1];
  v3 = v2 + 32;
  v4 = *(v2 + 16);
  if (*v1)
  {
    v5 = a1;
    specialized _HashTable.UnsafeHandle._find<A>(_:in:)(a1, v3, v4, (*v1 + 16), *v1 + 32);
    if (v6)
    {
      a1 = v5;
LABEL_9:
      specialized OrderedSet._appendNew(_:in:)(a1, v4, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:), specialized closure #1 in static _HashTable.create<A>(uncheckedUniqueElements:scale:reservedScale:));
      v8 = *(v1[1] + 16) - 1;
      return 1;
    }
  }

  else
  {
    if (!v4)
    {
      goto LABEL_9;
    }

    v7 = 0;
    while (*(v3 + 8 * v7) != a1)
    {
      if (v4 == ++v7)
      {
        v4 = 0;
        goto LABEL_9;
      }
    }
  }

  return 0;
}

{
  v2 = v1;
  v4 = *v1;
  v5 = v2[1];
  v6 = v5 + 32;
  v7 = *(v5 + 16);
  if (!v4)
  {
    if (!v7)
    {
LABEL_14:
      v11 = 0;
      goto LABEL_15;
    }

    v13 = 0;
    while (1)
    {
      outlined init with copy of [Input](v6, v19, &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGMd, &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGMR);
      Strong = swift_unknownObjectWeakLoadStrong();
      v15 = swift_unknownObjectWeakLoadStrong();
      v16 = v15;
      if (!Strong)
      {
        break;
      }

      if (!v15)
      {
        outlined destroy of [Input](v19, &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGMd, &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGMR);
        v16 = Strong;
LABEL_7:

        goto LABEL_8;
      }

      type metadata accessor for SGEdge();
      v17 = static NSObject.== infix(_:_:)();
      outlined destroy of [Input](v19, &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGMd, &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGMR);

      if (v17)
      {
        return 0;
      }

LABEL_8:
      ++v13;
      v6 += 8;
      if (v7 == v13)
      {
        goto LABEL_14;
      }
    }

    outlined destroy of [Input](v19, &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGMd, &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGMR);
    if (!v16)
    {
      return 0;
    }

    goto LABEL_7;
  }

  specialized _HashTable.UnsafeHandle._find<A>(_:in:)(a1, v6, v7, (v4 + 16), v4 + 32);
  v9 = v8;
  v11 = v10;

  if ((v9 & 1) == 0)
  {
    return 0;
  }

LABEL_15:
  specialized OrderedSet._appendNew(_:in:)(a1, v11);
  v18 = *(v2[1] + 16) - 1;
  return 1;
}

{
  v2 = v1[1];
  v3 = v2 + 32;
  v4 = *(v2 + 16);
  if (*v1)
  {
    v5 = a1;
    specialized _HashTable.UnsafeHandle._find<A>(_:in:)(a1, v3, v4, (*v1 + 16), *v1 + 32);
    if (v6)
    {
      a1 = v5;
LABEL_9:
      specialized OrderedSet._appendNew(_:in:)(a1, v4, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:), specialized closure #1 in static _HashTable.create<A>(uncheckedUniqueElements:scale:reservedScale:));
      v8 = *(v1[1] + 16) - 1;
      return 1;
    }
  }

  else
  {
    if (!v4)
    {
      goto LABEL_9;
    }

    v7 = 0;
    while (*(v3 + 8 * v7) != a1)
    {
      if (v4 == ++v7)
      {
        v4 = 0;
        goto LABEL_9;
      }
    }
  }

  return 0;
}

uint64_t specialized OrderedSet._append(_:)(uint64_t *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v4 + 16);
  if (*v1)
  {
    v6 = *v1;

    specialized _HashTable.UnsafeHandle._find<A>(_:in:)(a1, v4 + 32, v5, (v3 + 16), v3 + 32);
    v8 = v7;
    v10 = v9;

    if ((v8 & 1) == 0)
    {
      return 0;
    }

LABEL_6:
    specialized OrderedSet._appendNew(_:in:)(a1, v10, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:));
    v12 = *(v1[1] + 16) - 1;
    return 1;
  }

  specialized Collection<>.firstIndex(of:)(a1, v4 + 32, *(v4 + 16));
  if (v11)
  {
    v10 = 0;
    goto LABEL_6;
  }

  return 0;
}

uint64_t specialized OrderedSet._append(_:)(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = v2[1];
  v6 = v5 + 32;
  v7 = *(v5 + 16);
  if (v4)
  {

    specialized _HashTable.UnsafeHandle._find<A>(_:in:)(a1, v6, v7, (v4 + 16), v4 + 32);
    v9 = v8;
    v11 = v10;

    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v7)
    {
      type metadata accessor for SGNode();
      v13 = 0;
      do
      {
        v14 = *(v6 + 8 * v13);
        v15 = static NSObject.== infix(_:_:)();

        if (v15)
        {
          return 0;
        }
      }

      while (v7 != ++v13);
    }

    v11 = 0;
  }

  specialized OrderedSet._appendNew(_:in:)(a1, v11);
  v16 = *(v2[1] + 16) - 1;
  return 1;
}

uint64_t specialized closure #1 in static _HashTable.create<A>(uncheckedUniqueElements:scale:reservedScale:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (!v3)
  {
    return result;
  }

  v5 = result;
  v6 = 0;
  v7 = a3 + 32;
  while (1)
  {
    v8 = *v5;
    v9 = MEMORY[0x266772750](*v5, *(v7 + 8 * v6));
    v10 = (1 << v8) - 1;
    if (__OFSUB__(1 << v8, 1))
    {
      goto LABEL_38;
    }

    v11 = v10 & v9;
    if (_HashTable.UnsafeHandle._startIterator(bucket:)(v10 & v9, v5, a2))
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

  v14 = 0;
  v15 = *v5 & 0x3FLL;
  v16 = 1 << *v5;
  v17 = v15 << *v5;
  v18 = v17 + 64;
  v19 = __OFADD__(v17, 64);
  v21 = v18 - 1;
  v20 = v18 < 1;
  v22 = v18 + 62;
  if (!v20)
  {
    v22 = v21;
  }

  v23 = v22 >> 6;
  while (1)
  {
    if (++v11 == v16)
    {
      if (v14)
      {
        goto LABEL_39;
      }

      v11 = 0;
      v14 = 1;
    }

    if (v13 >= v15)
    {
      break;
    }

    v24 = (v11 * v15) >> 6;
    if (v13)
    {
      if (v19)
      {
        goto LABEL_37;
      }

      if (v24 + 1 == v23)
      {
        v24 = 0;
      }

      else
      {
        ++v24;
      }
    }

    v25 = v15 - v13;
    if (__OFSUB__(v15, v13))
    {
      goto LABEL_35;
    }

    if (v24 == 2 && v15 == 5)
    {
      v27 = 32;
    }

    else
    {
      v27 = 64;
    }

    v28 = __OFSUB__(v27, v25);
    v29 = v27 - v25;
    if (v28)
    {
      goto LABEL_36;
    }

    v30 = *(a2 + 8 * v24);
    v31 = (v30 << v13) | v12;
    v12 = v30 >> v25;
    v13 = v29;
LABEL_12:
    if ((v31 & (v16 - 1)) == 0)
    {
      goto LABEL_3;
    }
  }

  v28 = __OFSUB__(v13, v15);
  v13 -= v15;
  if (!v28)
  {
    v31 = v12;
    v12 >>= v15;
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

{
  v3 = *(a3 + 16);
  if (!v3)
  {
    return result;
  }

  v5 = result;
  v6 = 0;
  v7 = a3 + 32;
  while (1)
  {
    v8 = *(v7 + 8 * v6);
    v9 = *v5;
    Hasher.init(_seed:)();
    MEMORY[0x266772770](v8);
    v10 = Hasher._finalize()();
    v11 = 1 << *v5;
    v12 = __OFSUB__(v11, 1);
    v13 = v11 - 1;
    if (v12)
    {
      goto LABEL_38;
    }

    v14 = v13 & v10;
    if (_HashTable.UnsafeHandle._startIterator(bucket:)(v13 & v10, v5, a2))
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

  v17 = 0;
  v18 = *v5 & 0x3F;
  v19 = 1 << *v5;
  v20 = v18 << *v5;
  v21 = v20 + 64;
  v22 = __OFADD__(v20, 64);
  v24 = v21 - 1;
  v23 = v21 < 1;
  v25 = v21 + 62;
  if (!v23)
  {
    v25 = v24;
  }

  v26 = v25 >> 6;
  while (1)
  {
    if (++v14 == v19)
    {
      if (v17)
      {
        goto LABEL_39;
      }

      v14 = 0;
      v17 = 1;
    }

    if (v16 >= v18)
    {
      break;
    }

    v27 = (v14 * v18) >> 6;
    if (v16)
    {
      if (v22)
      {
        goto LABEL_37;
      }

      if (v27 + 1 == v26)
      {
        v27 = 0;
      }

      else
      {
        ++v27;
      }
    }

    v28 = v18 - v16;
    if (__OFSUB__(v18, v16))
    {
      goto LABEL_35;
    }

    if (v27 == 2 && v18 == 5)
    {
      v30 = 32;
    }

    else
    {
      v30 = 64;
    }

    v12 = __OFSUB__(v30, v28);
    v31 = v30 - v28;
    if (v12)
    {
      goto LABEL_36;
    }

    v32 = *(a2 + 8 * v27);
    v33 = (v32 << v16) | v15;
    v15 = v32 >> v28;
    v16 = v31;
LABEL_12:
    if ((v33 & (v19 - 1)) == 0)
    {
      goto LABEL_3;
    }
  }

  v12 = __OFSUB__(v16, v18);
  v16 -= v18;
  if (!v12)
  {
    v33 = v15;
    v15 >>= v18;
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

{
  v3 = *(a3 + 16);
  if (!v3)
  {
    return result;
  }

  v5 = result;
  v6 = 0;
  v7 = a3 + 32;
  while (1)
  {
    v8 = (v7 + 16 * v6);
    v9 = *v8;
    v10 = v8[1];
    v11 = *v5;
    Hasher.init(_seed:)();
    String.hash(into:)();
    v12 = Hasher._finalize()();
    v13 = 1 << *v5;
    v14 = __OFSUB__(v13, 1);
    v15 = v13 - 1;
    if (v14)
    {
      goto LABEL_38;
    }

    v16 = v15 & v12;
    if (_HashTable.UnsafeHandle._startIterator(bucket:)(v15 & v12, v5, a2))
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
  v20 = *v5 & 0x3F;
  v21 = 1 << *v5;
  v22 = v20 << *v5;
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

    v34 = *(a2 + 8 * v29);
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

{
  v3 = *(a3 + 16);
  if (!v3)
  {
    return result;
  }

  v5 = result;
  v6 = 0;
  v7 = a3 + 32;
  while (1)
  {
    v8 = *(v7 + 8 * v6);
    v9 = NSObject._rawHashValue(seed:)(*v5);
    v10 = 1 << *v5;
    v11 = __OFSUB__(v10, 1);
    v12 = v10 - 1;
    if (v11)
    {
      goto LABEL_38;
    }

    v13 = v12 & v9;
    if (_HashTable.UnsafeHandle._startIterator(bucket:)(v12 & v9, v5, a2))
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

  v16 = 0;
  v17 = *v5 & 0x3F;
  v18 = 1 << *v5;
  v19 = v17 << *v5;
  v20 = v19 + 64;
  v21 = __OFADD__(v19, 64);
  v23 = v20 - 1;
  v22 = v20 < 1;
  v24 = v20 + 62;
  if (!v22)
  {
    v24 = v23;
  }

  v25 = v24 >> 6;
  while (1)
  {
    if (++v13 == v18)
    {
      if (v16)
      {
        goto LABEL_39;
      }

      v13 = 0;
      v16 = 1;
    }

    if (v15 >= v17)
    {
      break;
    }

    v26 = (v13 * v17) >> 6;
    if (v15)
    {
      if (v21)
      {
        goto LABEL_37;
      }

      if (v26 + 1 == v25)
      {
        v26 = 0;
      }

      else
      {
        ++v26;
      }
    }

    v27 = v17 - v15;
    if (__OFSUB__(v17, v15))
    {
      goto LABEL_35;
    }

    if (v26 == 2 && v17 == 5)
    {
      v29 = 32;
    }

    else
    {
      v29 = 64;
    }

    v11 = __OFSUB__(v29, v27);
    v30 = v29 - v27;
    if (v11)
    {
      goto LABEL_36;
    }

    v31 = *(a2 + 8 * v26);
    v32 = (v31 << v15) | v14;
    v14 = v31 >> v27;
    v15 = v30;
LABEL_12:
    if ((v32 & (v18 - 1)) == 0)
    {
      goto LABEL_3;
    }
  }

  v11 = __OFSUB__(v15, v17);
  v15 -= v17;
  if (!v11)
  {
    v32 = v14;
    v14 >>= v17;
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

{
  v36 = *(a3 + 16);
  if (!v36)
  {
    return result;
  }

  v4 = result;
  v5 = 0;
  v35 = a3 + 32;
  while (1)
  {
    v6 = (v35 + 24 * v5);
    v7 = *v6;
    v8 = v6[1];
    v9 = v6[2];
    v10 = *v4;
    Hasher.init(_seed:)();
    MEMORY[0x2667727B0](v7);
    String.hash(into:)();
    v11 = Hasher._finalize()();
    v12 = 1 << *v4;
    v13 = __OFSUB__(v12, 1);
    v14 = v12 - 1;
    if (v13)
    {
      goto LABEL_38;
    }

    v15 = v14 & v11;
    if (_HashTable.UnsafeHandle._startIterator(bucket:)(v14 & v11, v4, a2))
    {
      break;
    }

LABEL_3:
    result = _HashTable.BucketIterator.currentValue.setter(v5++, 0);
    if (v5 == v36)
    {
      return result;
    }
  }

  v18 = 0;
  v19 = *v4 & 0x3F;
  v20 = 1 << *v4;
  v21 = v19 << *v4;
  v22 = v21 + 64;
  v23 = __OFADD__(v21, 64);
  v25 = v22 - 1;
  v24 = v22 < 1;
  v26 = v22 + 62;
  if (!v24)
  {
    v26 = v25;
  }

  v27 = v26 >> 6;
  while (1)
  {
    if (++v15 == v20)
    {
      if (v18)
      {
        goto LABEL_39;
      }

      v15 = 0;
      v18 = 1;
    }

    if (v17 >= v19)
    {
      break;
    }

    v28 = (v15 * v19) >> 6;
    if (v17)
    {
      if (v23)
      {
        goto LABEL_37;
      }

      if (v28 + 1 == v27)
      {
        v28 = 0;
      }

      else
      {
        ++v28;
      }
    }

    v29 = v19 - v17;
    if (__OFSUB__(v19, v17))
    {
      goto LABEL_35;
    }

    if (v28 == 2 && v19 == 5)
    {
      v31 = 32;
    }

    else
    {
      v31 = 64;
    }

    v13 = __OFSUB__(v31, v29);
    v32 = v31 - v29;
    if (v13)
    {
      goto LABEL_36;
    }

    v33 = *(a2 + 8 * v28);
    v34 = (v33 << v17) | v16;
    v16 = v33 >> v29;
    v17 = v32;
LABEL_12:
    if ((v34 & (v20 - 1)) == 0)
    {
      goto LABEL_3;
    }
  }

  v13 = __OFSUB__(v17, v19);
  v17 -= v19;
  if (!v13)
  {
    v34 = v16;
    v16 >>= v19;
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

uint64_t _ss15ContiguousArrayVsSQRzlE2eeoiySbAByxG_ADtFZ11ShaderGraph0E5IndexVSg_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 48);
    v4 = (a1 + 48);
    do
    {
      if (*v4)
      {
        if (!*v3)
        {
          return 0;
        }
      }

      else
      {
        result = 0;
        if (*v3)
        {
          return result;
        }

        if (*(v4 - 2) != *(v3 - 2) || *(v4 - 1) != *(v3 - 1))
        {
          return result;
        }
      }

      v3 += 24;
      v4 += 24;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t _ss15ContiguousArrayVsSQRzlE2eeoiySbAByxG_ADtFZShy11ShaderGraph0E5IndexVG_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v8 = 1;
    }

    else
    {
      v3 = (a1 + 32);
      v4 = (a2 + 32);
      do
      {
        v6 = *v3++;
        v5 = v6;
        v7 = *v4++;
        v8 = _sSh2eeoiySbShyxG_ABtFZ11ShaderGraph0C5IndexV_Tt1g5(v5, v7);
        if ((v8 & 1) == 0)
        {
          break;
        }

        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t _ss15ContiguousArrayVsSQRzlE2eeoiySbAByxG_ADtFZ11ShaderGraph04UserE0V8AdjacentV_Tt1g5(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = 0;
  v17 = result + 32;
  v4 = a2 + 32;
  while (v3 != v2)
  {
    v5 = (v17 + 48 * v3);
    v6 = (v4 + 48 * v3);
    v7 = v5[2];
    v9 = v5[4];
    v8 = v5[5];
    v10 = v6[2];
    v12 = v6[4];
    v11 = v6[5];
    result = specialized Sequence<>.elementsEqual<A>(_:)(v6[1], v5[1]);
    if ((result & 1) == 0)
    {
      return 0;
    }

    v13 = *(v7 + 16);
    if (v13 != *(v10 + 16))
    {
      return 0;
    }

    if (v13)
    {
      v14 = v7 == v10;
    }

    else
    {
      v14 = 1;
    }

    if (!v14)
    {
      v15 = (v10 + 40);
      v16 = (v7 + 40);
      while (v13)
      {
        result = specialized Sequence<>.elementsEqual<A>(_:)(*v15, *v16);
        if ((result & 1) == 0)
        {
          return 0;
        }

        v15 += 2;
        v16 += 2;
        if (!--v13)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
      break;
    }

LABEL_16:
    if ((specialized Sequence<>.elementsEqual<A>(_:)(v12, v9) & 1) == 0 || (_ss15ContiguousArrayVsSQRzlE2eeoiySbAByxG_ADtFZ11ShaderGraph6OutputVSg_Tt1g5(v8, v11) & 1) == 0)
    {
      return 0;
    }

    ++v3;
    result = 1;
    if (v3 == v2)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t _ss15ContiguousArrayVsSQRzlE2eeoiySbAByxG_ADtFZ11ShaderGraph6OutputVSg_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a2 + 80);
  for (i = (a1 + 40); ; i += 7)
  {
    v6 = *(i - 1);
    v5 = *i;
    v7 = i[1];
    v8 = i[3];
    v31 = i[4];
    v9 = i[5];
    v10 = *(v3 - 6);
    v11 = *(v3 - 5);
    v12 = *(v3 - 4);
    if (*i)
    {
      break;
    }

    if (v11)
    {
      goto LABEL_23;
    }

LABEL_6:
    v3 += 7;
    if (!--v2)
    {
      return 1;
    }
  }

  if (!v11)
  {
LABEL_23:
    v22 = *(v3 - 3);
    outlined copy of Output?(*(v3 - 6), *(v3 - 5));
    outlined copy of Output?(v6, v5);
    outlined consume of Output?(v6, v5);
    v20 = v10;
    v21 = v11;
    goto LABEL_26;
  }

  v29 = i[2];
  if (v6 != v10)
  {
    outlined copy of Output?(v10, v11);
    outlined copy of Output?(v6, v5);

    v20 = v6;
    v21 = v5;
    goto LABEL_26;
  }

  v24 = v2;
  v26 = *(*v5 + 128);
  v13 = *(v3 - 3);
  v23 = *(v3 - 2);
  v25 = *(v3 - 1);
  v28 = *v3;
  outlined copy of Output?(v6, v11);
  v27 = v6;
  v30 = v8;
  outlined copy of Output?(v6, v5);
  v14 = v11;
  v15 = v5;
  if (v26(v14))
  {
    if (v7 == v12 && v29 == v13)
    {

      v16 = v31;
      v17 = v9;
      outlined consume of Output?(v6, v15);
    }

    else
    {
      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v16 = v31;
      v17 = v9;
      outlined consume of Output?(v27, v15);
      if ((v18 & 1) == 0)
      {
        return 0;
      }
    }

    if (v16)
    {
      v2 = v24;
      if ((v25 & (v17 == v28)) == 0)
      {
        return 0;
      }
    }

    else
    {
      result = 0;
      v2 = v24;
      if ((v25 & 1) != 0 || v30 != v23 || v17 != v28)
      {
        return result;
      }
    }

    goto LABEL_6;
  }

  v20 = v6;
  v21 = v5;
LABEL_26:
  outlined consume of Output?(v20, v21);
  return 0;
}

uint64_t _ss15ContiguousArrayVsSQRzlE2eeoiySbAByxG_ADtFZ11ShaderGraph10OrderedSetVyAE5InputVG_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v8 = 1;
    }

    else
    {
      v3 = (a2 + 40);
      v4 = (a1 + 40);
      do
      {
        v6 = *v4;
        v4 += 2;
        v5 = v6;
        v7 = *v3;
        v3 += 2;
        v8 = specialized Sequence<>.elementsEqual<A>(_:)(v7, v5);
        if ((v8 & 1) == 0)
        {
          break;
        }

        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

BOOL specialized closure #1 in Sequence<>.contains(_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (((*(**(a1 + 8) + 128))(*(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a2 + 40);
  if (*(a1 + 40))
  {
    if (!*(a2 + 40))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 32) != *(a2 + 32))
    {
      v5 = 1;
    }

    if (v5)
    {
      return 0;
    }
  }

  return *(a1 + 48) == *(a2 + 48);
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew()(uint64_t a1)
{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew()(void *a1)
{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

uint64_t specialized MutableCollection._halfStablePartition(isSuffixElement:)(uint64_t *a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v53 = *(a2 + 16);
  v6 = *a1;

  outlined init with copy of String(&v53, v52);
  v7 = specialized Collection.firstIndex(where:)(v6, a2);
  v9 = v8;

  if (v2)
  {
    outlined destroy of String(&v53);

    outlined destroy of String(&v53);
    return v7;
  }

  v54 = a2;
  result = outlined destroy of String(&v53);
  v39 = v5;
  if (v9)
  {
    v7 = *(v6 + 16);
LABEL_7:

    outlined destroy of String(&v53);
    return v7;
  }

  v38 = a1;
  v11 = v7 + 1;
  if (__OFADD__(v7, 1))
  {
    goto LABEL_47;
  }

  v13 = (v6 + 16);
  v12 = *(v6 + 16);
  if (v11 == v12)
  {
    goto LABEL_7;
  }

  v36 = *(&v53 + 1);
  v37 = v53;
  v14 = 56 * v7 + 136;
  v15 = v54;
  while (v11 < v12)
  {
    v16 = (v6 + v14);
    if (*(v6 + v14 - 48) == *v15)
    {
      v50 = *(v16 - 4);
      v17 = *(v16 - 3);
      v48 = *(v16 - 8);
      v44 = *(v16 - 2);
      v46 = *v16;
      v18 = *(**(v16 - 5) + 128);

      if ((v18(v39) & 1) == 0)
      {

        v15 = v54;
        goto LABEL_20;
      }

      if (v50 == v37 && v17 == v36)
      {

        v15 = v54;
      }

      else
      {
        v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v15 = v54;
        if ((v20 & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      v35 = *(v15 + 40);
      if (v48)
      {
        if (*(v15 + 40))
        {
          goto LABEL_39;
        }
      }

      else
      {
        if (v44 != *(v15 + 32))
        {
          v35 = 1;
        }

        if ((v35 & 1) == 0)
        {
LABEL_39:
          if (v46 == *(v15 + 48))
          {
            goto LABEL_30;
          }
        }
      }
    }

LABEL_20:
    if (v11 != v7)
    {
      if ((v7 & 0x8000000000000000) != 0)
      {
        goto LABEL_42;
      }

      if (v7 >= *v13)
      {
        goto LABEL_43;
      }

      if (v11 >= *v13)
      {
        goto LABEL_44;
      }

      v21 = v6 + 32 + 56 * v7;
      v23 = *v21;
      v22 = *(v21 + 8);
      v24 = *(v21 + 24);
      v42 = *(v21 + 32);
      v41 = *(v21 + 40);
      v40 = *(v21 + 48);
      v25 = *(v16 - 5);
      v26 = *(v16 - 3);
      v49 = *(v16 - 4);
      v51 = *(v16 - 6);
      v47 = *(v16 - 2);
      v27 = *(v16 - 8);
      v43 = *(v21 + 16);
      v45 = *(v6 + v14);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v6);
        v6 = result;
      }

      if (v7 >= *(v6 + 16))
      {
        goto LABEL_45;
      }

      v28 = v6 + 56 * v7;
      v29 = v27;
      v30 = *(v28 + 40);
      v31 = *(v28 + 56);
      *(v28 + 32) = v51;
      *(v28 + 40) = v25;
      *(v28 + 48) = v49;
      *(v28 + 56) = v26;
      *(v28 + 64) = v47;
      *(v28 + 72) = v29;
      *(v28 + 80) = v45;

      if (v11 >= *(v6 + 16))
      {
        goto LABEL_46;
      }

      v32 = (v6 + v14);
      v33 = *(v6 + v14 - 40);
      v34 = *(v6 + v14 - 24);
      *(v32 - 6) = v23;
      *(v32 - 5) = v22;
      *(v32 - 4) = v43;
      *(v32 - 3) = v24;
      *(v32 - 2) = v42;
      *(v32 - 8) = v41;
      *v32 = v40;

      *v38 = v6;
      v15 = v54;
    }

    ++v7;
LABEL_30:
    ++v11;
    v13 = (v6 + 16);
    v12 = *(v6 + 16);
    v14 += 56;
    if (v11 == v12)
    {
      goto LABEL_7;
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
  return result;
}

uint64_t specialized Sequence<>.elementsEqual<A>(_:)(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = 0;
  v4 = *(a2 + 16);
  v5 = *(result + 16);
  v6 = result + 32;
  while (1)
  {
    if (v3 == v4)
    {
      v7 = 0;
      v8 = *(a2 + 16);
      goto LABEL_7;
    }

    if (v3 >= v4)
    {
      break;
    }

    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_18;
    }

    v7 = *(a2 + 32 + 8 * v3);
LABEL_7:
    result = v2 == v5;
    if (v2 == v5)
    {
      v9 = 0;
      v10 = v5;
      if (v3 == v4)
      {
        return result;
      }
    }

    else
    {
      if (v2 >= v5)
      {
        goto LABEL_17;
      }

      v10 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        goto LABEL_19;
      }

      v9 = *(v6 + 8 * v2);
      if (v3 == v4)
      {
        return result;
      }
    }

    result = 0;
    if (v2 != v5)
    {
      v2 = v10;
      v3 = v8;
      if (v7 == v9)
      {
        continue;
      }
    }

    return result;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

{
  v2 = 0;
  v22 = *(a2 + 16);
  v3 = *(result + 16);
  v20 = a2 + 32;
  for (i = (result + 80); ; i += 7)
  {
    if (v2 == v22)
    {
      if (!v3)
      {
        return 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v27 = 0;
      v28 = 0;
      v9 = 0;
      v10 = v22;
      goto LABEL_10;
    }

    if (v2 >= v22)
    {
      break;
    }

    v10 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      goto LABEL_30;
    }

    v11 = v20 + 56 * v2;
    v5 = *(v11 + 48);
    v6 = *(v11 + 40);
    v8 = *(v11 + 24);
    v7 = *(v11 + 32);
    v27 = *(v11 + 16);
    v28 = *(v11 + 8);
    v9 = *v11;

    if (!v3)
    {
      if (v28)
      {
LABEL_25:
        v18 = v9;
        v19 = v28;
        goto LABEL_26;
      }

      return 1;
    }

LABEL_10:
    v23 = v10;
    v24 = v3;
    v21 = v7;
    v25 = *i;
    v26 = v5;
    v12 = *(i - 8);
    v13 = *(i - 3);
    v14 = *(i - 2);
    v15 = *(i - 5);
    v16 = *(i - 4);
    v17 = *(i - 6);

    if (!v28)
    {
      if (v15)
      {
        v18 = v17;
        v19 = v15;
LABEL_26:
        outlined consume of Output?(v18, v19);
        return 0;
      }

      return 1;
    }

    if (!v15)
    {
      goto LABEL_25;
    }

    if (v9 != v17 || ((*(*v28 + 128))(v15) & 1) == 0 || (v27 != v16 || v8 != v13) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
LABEL_20:

      return 0;
    }

    if (v6)
    {
      if ((v12 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    else if ((v12 & 1) != 0 || v21 != v14)
    {
      goto LABEL_20;
    }

    v3 = v24 - 1;
    v2 = v23;
    if (v26 != v25)
    {
      return 0;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t specialized static ShaderGraphNode.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((static NodePersonality.== infix(_:_:)(*a1, *a2) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ11ShaderGraph6OutputV_Tt1g5(*(a1 + 8), *(a2 + 8)) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ11ShaderGraph6OutputV_Tt1g5(*(a1 + 16), *(a2 + 16)) & 1) == 0 || *(a1 + 24) != *(a2 + 24))
  {
    return 0;
  }

  v4 = *(a2 + 40);
  if (*(a1 + 40))
  {
    if ((*(a2 + 40) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 32) != *(a2 + 32))
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t specialized static UserGraph.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if ((specialized Sequence<>.elementsEqual<A>(_:)(*(a2 + 8), *(a1 + 8)) & 1) == 0 || (_ss15ContiguousArrayVsSQRzlE2eeoiySbAByxG_ADtFZ11ShaderGraph04UserE0V8AdjacentV_Tt1g5(v4, v5) & 1) == 0)
  {
    goto LABEL_15;
  }

  v6 = *(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32);
  if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_15;
  }

  if (*(a1 + 40) != *(a2 + 40))
  {
    goto LABEL_15;
  }

  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ11ShaderGraph9InputSpecV_Tt1g5(*(a1 + 48), *(a2 + 48)) & 1) == 0)
  {
    goto LABEL_15;
  }

  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ11ShaderGraph9InputSpecV_Tt1g5(*(a1 + 56), *(a2 + 56)) & 1) == 0)
  {
    goto LABEL_15;
  }

  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ11ShaderGraph0bC4NodeV_Tt1g5(*(a1 + 64), *(a2 + 64)) & 1) == 0)
  {
    goto LABEL_15;
  }

  if (*(a1 + 72) != *(a2 + 72))
  {
    goto LABEL_15;
  }

  v7 = *(a1 + 96);
  v19 = *(a1 + 80);
  v20[0] = v7;
  *(v20 + 9) = *(a1 + 105);
  v8 = *(a2 + 96);
  v17 = *(a2 + 80);
  v18[0] = v8;
  *(v18 + 9) = *(a2 + 105);
  if (specialized static ShaderGraphNode.== infix(_:_:)(&v19, &v17))
  {
    v9 = *(a1 + 144);
    v15 = *(a1 + 128);
    v16[0] = v9;
    *(v16 + 9) = *(a1 + 153);
    v10 = *(a2 + 144);
    v13 = *(a2 + 128);
    v14[0] = v10;
    *(v14 + 9) = *(a2 + 153);
    v11 = specialized static ShaderGraphNode.== infix(_:_:)(&v15, &v13);
  }

  else
  {
LABEL_15:
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t specialized OrderedDictionary<>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  MEMORY[0x266772770](v4);

  v29 = v4;
  if (v4)
  {
    v6 = 0;
    v28 = a3 + 32;
    while (v6 < *(a2 + 16))
    {
      v7 = a2 + 32 + 56 * v6;
      v8 = *v7;
      v9 = *(v7 + 8);
      v10 = *(v7 + 16);
      v11 = *(v7 + 24);
      v12 = *(v7 + 32);
      v13 = *(v7 + 40);
      v14 = *(v7 + 48);
      v15 = (v28 + 16 * v6);
      v16 = *v15;
      v17 = v15[1];

      v33 = v17;
      v18 = v11;

      if (!v9)
      {
        goto LABEL_16;
      }

      MEMORY[0x266772770](v8);
      (*(*v9 + 120))(a1);
      String.hash(into:)();
      v31 = v6;
      if (v13)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x266772770](v12);
      }

      MEMORY[0x266772770](v14);
      result = MEMORY[0x266772770](*(v33 + 16));
      v32 = *(v33 + 16);
      if (v32)
      {
        v19 = 0;
        v20 = (v33 + 80);
        while (v19 < *(v33 + 16))
        {
          v21 = v18;
          v22 = *(v20 - 5);
          v23 = *(v20 - 4);
          v24 = *(v20 - 3);
          v25 = *(v20 - 2);
          v26 = *(v20 - 8);
          v27 = *v20;
          MEMORY[0x266772770](*(v20 - 6));
          (*(*v22 + 120))(a1);
          String.hash(into:)();
          if (v26 == 1)
          {
            Hasher._combine(_:)(0);
          }

          else
          {
            Hasher._combine(_:)(1u);
            MEMORY[0x266772770](v25);
          }

          v18 = v21;
          ++v19;
          result = MEMORY[0x266772770](v27);
          v20 += 7;
          if (v32 == v19)
          {
            goto LABEL_3;
          }
        }

        __break(1u);
        break;
      }

LABEL_3:
      v6 = v31 + 1;

      if (v31 + 1 == v29)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:
  }

  return result;
}

{
  v4 = *(a3 + 16);
  MEMORY[0x266772770](v4);

  v18 = v4;
  if (v4)
  {
    v26 = 0;
    v6 = (a2 + 40);
    v25 = (a3 + 40);
    while (v26 < *(a2 + 16))
    {
      v7 = *(v6 - 1);
      v8 = *v6;
      v9 = v6[2];
      v20 = v6[3];
      v10 = *(v6 + 32);
      v21 = v6[1];
      v22 = v6[5];
      v11 = *(v25 - 1);
      v12 = *v25;
      v13 = v25[1];
      v23 = v25[2];
      v24 = v6;
      v15 = v25[3];
      v14 = v25[4];
      v16 = v25[5];

      outlined copy of Output?(v11, v12);
      if (v8)
      {
        MEMORY[0x266772770](v7);
        (*(*v8 + 120))(a1);
        String.hash(into:)();
        if (v10)
        {
          Hasher._combine(_:)(0);
        }

        else
        {
          Hasher._combine(_:)(1u);
          MEMORY[0x266772770](v20);
        }

        MEMORY[0x266772770](v22);
        if (v12)
        {
          Hasher._combine(_:)(1u);
          MEMORY[0x266772770](v11);
          (*(*v12 + 120))(a1);
          String.hash(into:)();
          if (v14)
          {
            Hasher._combine(_:)(0);
          }

          else
          {
            Hasher._combine(_:)(1u);
            MEMORY[0x266772770](v15);
          }

          MEMORY[0x266772770](v16);

          result = outlined consume of Output?(v11, v12);
        }

        else
        {
          Hasher._combine(_:)(0);
        }

        v6 = v24 + 7;
        v25 += 7;
        if (v18 != ++v26)
        {
          continue;
        }
      }

      goto LABEL_15;
    }

    __break(1u);
  }

  else
  {
LABEL_15:
  }

  return result;
}

{
  v5 = *(a3 + 16);
  MEMORY[0x266772770](v5);

  v16 = v5;
  if (v5)
  {
    v7 = 0;
    v8 = (a3 + 40);
    while (v7 < *(a2 + 16))
    {
      v9 = *(a2 + 32 + 8 * v7);
      v10 = *(v8 - 1);
      v11 = *v8;
      v12 = v8[1];
      v13 = v8[2];
      v14 = v8[3];
      v15 = v8[4];

      if (v11)
      {
        ++v7;
        MEMORY[0x266772770](v9);
        specialized OrderedDictionary<>.hash(into:)(a1, v11, v12);

        specialized OrderedDictionary<>.hash(into:)(a1, v14, v15);

        v8 += 6;
        if (v16 != v7)
        {
          continue;
        }
      }

      goto LABEL_6;
    }

    __break(1u);
  }

  else
  {
LABEL_6:
  }

  return result;
}

uint64_t specialized static Edge.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 24);
  v3 = *(a1 + 40);
  v24 = *(a1 + 32);
  v25 = *(a1 + 48);
  v4 = *(a2 + 24);
  v23 = *(a2 + 32);
  v5 = *(a2 + 40);
  v6 = *(a2 + 48);
  v7 = *(a2 + 16);
  v9 = *(a1 + 16);
  if (((*(**(a1 + 8) + 128))(*(a2 + 8)) & 1) == 0 || (v9 != v7 || v2 != v4) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  result = 0;
  if (v3)
  {
    if ((v5 & 1) == 0)
    {
      return result;
    }

LABEL_12:
    v12 = a1;
    v13 = a2;
    if (v25 != v6)
    {
      return result;
    }

    if (*(a1 + 56) != *(a2 + 56))
    {
      return 0;
    }

    v14 = *(a1 + 80);
    v26 = *(a1 + 88);
    v15 = *(a1 + 96);
    v16 = *(v12 + 104);
    v17 = *(a2 + 80);
    v18 = *(a2 + 88);
    v19 = *(a2 + 96);
    v20 = v13[13];
    v21 = v13[9];
    v22 = *(v12 + 72);
    if (((*(**(v12 + 64) + 128))(v13[8]) & 1) == 0)
    {
      return 0;
    }

    if ((v22 != v21 || v14 != v17) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }

    if (v15)
    {
      if ((v19 & 1) == 0 || v16 != v20)
      {
        return 0;
      }
    }

    else if ((v19 & 1) != 0 || v26 != v18 || v16 != v20)
    {
      return 0;
    }

    return 1;
  }

  if ((v5 & 1) == 0 && v24 == v23)
  {
    goto LABEL_12;
  }

  return result;
}

BOOL specialized static Input.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (((*(**(a1 + 8) + 128))(*(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a2 + 40);
  if (*(a1 + 40))
  {
    if (!*(a2 + 40))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 32) != *(a2 + 32))
    {
      v5 = 1;
    }

    if (v5)
    {
      return 0;
    }
  }

  return *(a1 + 48) == *(a2 + 48);
}

void specialized OrderedDictionary<>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  MEMORY[0x266772770](v5);
  if (v5)
  {
    v6 = (a2 + 32);
    v7 = *(a2 + 16);
    v8 = (a3 + 48);
    while (v7)
    {
      v10 = *(v8 - 2);
      v9 = *(v8 - 1);
      v11 = *v8;
      MEMORY[0x266772770](*v6);
      if (v11 == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x266772770](v10);
        MEMORY[0x266772770](v9);
      }

      --v7;
      ++v6;
      v8 += 24;
      if (!--v5)
      {
        return;
      }
    }

    __break(1u);
  }
}

unint64_t specialized OrderedSet.append<A>(contentsOf:)(unint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = a3 >> 1;
  if (a3 >> 1 == a2)
  {
    return result;
  }

  v5 = a2;
  v6 = result;
  while (1)
  {
    if (v5 >= v4)
    {
      goto LABEL_54;
    }

    v8 = *(v6 + 8 * v5);
    v10 = *v3;
    v9 = v3[1];
    v11 = (v9 + 32);
    if (*v3)
    {
      break;
    }

    v40 = *(v9 + 16);
    if (!v40)
    {
LABEL_4:
      v7 = 0;
LABEL_5:
      result = specialized OrderedSet._appendNew(_:in:)(v8, v7, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:), specialized closure #1 in static _HashTable.create<A>(uncheckedUniqueElements:scale:reservedScale:));
      goto LABEL_6;
    }

    while (1)
    {
      v41 = *v11++;
      if (v41 == v8)
      {
        break;
      }

      if (!--v40)
      {
        goto LABEL_4;
      }
    }

LABEL_6:
    if (++v5 == v4)
    {
      return result;
    }
  }

  v13 = (v10 + 16);
  v12 = *(v10 + 16);
  v14 = MEMORY[0x266772750](v12, *(v6 + 8 * v5));
  v15 = (1 << v12) - 1;
  if (__OFSUB__(1 << v12, 1))
  {
    goto LABEL_56;
  }

  v7 = v15 & v14;
  result = _HashTable.UnsafeHandle._startIterator(bucket:)(v15 & v14, (v10 + 16), v10 + 32);
  if (!result)
  {
    goto LABEL_5;
  }

  v18 = 1 << *v13;
  v19 = v18 - 1;
  v20 = *(v10 + 24) >> 6;
  v21 = v20 + ((v18 - 1) ^ result);
  if (v21 >= v18 - 1)
  {
    v22 = v18 - 1;
  }

  else
  {
    v22 = 0;
  }

  if (v11[v21 - v22] == v8)
  {
    goto LABEL_6;
  }

  v23 = 0;
  v24 = *v13 & 0x3FLL;
  v25 = __OFADD__(v24 << v24, 64);
  v26 = (v24 << v24) + 126;
  if ((v24 << v24) + 64 >= 1)
  {
    v26 = (v24 << v24) + 63;
  }

  v27 = v26 >> 6;
  while (1)
  {
    if (++v7 == v18)
    {
      if (v23)
      {
        goto LABEL_57;
      }

      v7 = 0;
      v23 = 1;
    }

    if (v17 >= v24)
    {
      break;
    }

    v28 = (v7 * v24) >> 6;
    if (v17)
    {
      if (v25)
      {
        goto LABEL_55;
      }

      if (v28 + 1 == v27)
      {
        v28 = 0;
      }

      else
      {
        ++v28;
      }
    }

    v29 = v24 - v17;
    if (__OFSUB__(v24, v17))
    {
      goto LABEL_52;
    }

    if (v28 == 2 && v24 == 5)
    {
      v31 = 32;
    }

    else
    {
      v31 = 64;
    }

    v32 = __OFSUB__(v31, v29);
    v33 = v31 - v29;
    if (v32)
    {
      goto LABEL_53;
    }

    v34 = *(v10 + 32 + 8 * v28);
    result = v34 << v17;
    v35 = (v34 << v17) | v16;
    v36 = v34 >> v29;
    v17 = v33;
    v37 = v35 & v19;
    if ((v35 & v19) == 0)
    {
      goto LABEL_5;
    }

LABEL_42:
    v38 = (v37 ^ v19) + v20;
    if (v38 >= v19)
    {
      v39 = v18 - 1;
    }

    else
    {
      v39 = 0;
    }

    v16 = v36;
    if (v11[v38 - v39] == v8)
    {
      goto LABEL_6;
    }
  }

  v32 = __OFSUB__(v17, v24);
  v17 -= v24;
  if (!v32)
  {
    v36 = v16 >> v24;
    v37 = v16 & v19;
    if ((v16 & v19) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_42;
  }

  __break(1u);
LABEL_52:
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

uint64_t specialized ShaderGraphNode.init(id:graphid:inputs:outputs:shaderGraphData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v7 = a4;
  v8 = *(a4 + 16);
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v39 = MEMORY[0x277D84F90];
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8, 0);
    v11 = 0;
    v32 = v7;
    v33 = *(v7 + 16);
    v12 = (v7 + 48);
    do
    {
      if (v33 == v11)
      {
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      if (v11 >= *(v7 + 16))
      {
        goto LABEL_19;
      }

      v13 = *(v12 - 2);
      v14 = *(v12 - 1);
      v15 = *v12;
      v17 = *(v39 + 16);
      v16 = *(v39 + 24);

      if (v17 >= v16 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1);
      }

      *(v39 + 16) = v17 + 1;
      v18 = v39 + 56 * v17;
      *(v18 + 80) = v11;
      *(v18 + 32) = a1;
      *(v18 + 40) = v15;
      *(v18 + 48) = v13;
      *(v18 + 56) = v14;
      *(v18 + 64) = a2;
      *(v18 + 72) = a3 & 1;
      v12 += 3;
      ++v11;
      v7 = v32;
    }

    while (v8 != v11);
    v29 = v39;

    v19 = a5;
    v9 = MEMORY[0x277D84F90];
    v20 = *(a5 + 16);
    if (v20)
    {
      goto LABEL_11;
    }

    goto LABEL_17;
  }

  v19 = a5;

  v29 = MEMORY[0x277D84F90];
  v20 = *(v19 + 16);
  if (!v20)
  {
LABEL_17:

    *a7 = a6;
    *(a7 + 8) = v29;
    *(a7 + 16) = v9;
    *(a7 + 24) = a1;
    *(a7 + 32) = a2;
    *(a7 + 40) = a3 & 1;
    return result;
  }

LABEL_11:
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v20, 0);
  v21 = 0;
  v34 = *(v19 + 16);
  v22 = (v19 + 48);
  while (v34 != v21)
  {
    if (v21 >= *(v19 + 16))
    {
      goto LABEL_21;
    }

    v24 = *(v22 - 2);
    v23 = *(v22 - 1);
    v25 = *v22;
    v27 = *(v9 + 16);
    v26 = *(v9 + 24);

    if (v27 >= v26 >> 1)
    {
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1);
    }

    *(v9 + 16) = v27 + 1;
    v28 = v9 + 56 * v27;
    *(v28 + 80) = v21;
    *(v28 + 32) = a1;
    *(v28 + 40) = v25;
    *(v28 + 48) = v24;
    *(v28 + 56) = v23;
    *(v28 + 64) = a2;
    *(v28 + 72) = a3 & 1;
    v22 += 3;
    ++v21;
    v19 = a5;
    if (v20 == v21)
    {
      goto LABEL_17;
    }
  }

LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t specialized OrderedSet.append<A>(contentsOf:)(uint64_t result, uint64_t a2, unint64_t a3, void (*a4)(BOOL, uint64_t, uint64_t))
{
  v33 = result;
  v4 = a3 >> 1;
  if (a3 >> 1 != a2)
  {
    v5 = a2;
    v32 = a3 >> 1;
    while (1)
    {
      if (v5 >= v4)
      {
        __break(1u);
        return result;
      }

      v38 = v5;
      v7 = v33 + 56 * v5;
      v8 = *(v7 + 32);
      v43 = *(v7 + 16);
      v44 = v8;
      v42 = *v7;
      v9 = *(v7 + 48);
      v45 = v9;
      v46[0] = v43;
      v10 = *v35;
      v11 = v35[1];
      v12 = *(v11 + 16);
      v40 = *(&v42 + 1);
      if (*v35)
      {

        outlined init with copy of String(v46, v41);

        specialized _HashTable.UnsafeHandle._find<A>(_:in:)(&v42, v11 + 32, v12, (v10 + 16), v10 + 32);
        v14 = v13;
        v6 = v15;

        if ((v14 & 1) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_6;
      }

      if (v12)
      {
        break;
      }

      outlined init with copy of String(v46, v41);
LABEL_5:
      v6 = 0;
LABEL_6:
      specialized OrderedSet._appendNew(_:in:)(&v42, v6, a4);
LABEL_7:
      v5 = v38 + 1;

      result = outlined destroy of String(v46);
      v4 = v32;
      if (v38 + 1 == v32)
      {
        return result;
      }
    }

    v34 = v9;
    v16 = v42;
    v31 = v44;
    v17 = BYTE8(v44);
    v36 = *(&v46[0] + 1);
    v37 = *&v46[0];

    outlined init with copy of String(v46, v41);
    v29 = v17 ^ 1;
    v30 = v17;
    v18 = (v11 + 80);
    while (1)
    {
      if (*(v18 - 6) != v16)
      {
        goto LABEL_15;
      }

      v19 = *(v18 - 4);
      v20 = *(v18 - 3);
      v39 = *(v18 - 2);
      v21 = *(v18 - 8);
      v22 = *v18;
      v23 = *(**(v18 - 5) + 128);

      if ((v23(v40) & 1) == 0)
      {

        goto LABEL_15;
      }

      if (v19 == v37 && v20 == v36)
      {

        if (v21)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v25 & 1) == 0)
        {
          goto LABEL_15;
        }

        if (v21)
        {
LABEL_24:
          v26 = v30;
          if (v22 != v34)
          {
            v26 = 0;
          }

          if (v26)
          {
            goto LABEL_7;
          }

          goto LABEL_15;
        }
      }

      v27 = v29;
      if (v39 != v31)
      {
        v27 = 0;
      }

      if (v27 == 1 && v22 == v34)
      {
        goto LABEL_7;
      }

LABEL_15:
      v18 += 7;
      if (!--v12)
      {
        goto LABEL_5;
      }
    }
  }

  return result;
}

void specialized UserGraph.Adjacent.init(_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(a2 + 16);
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v30 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
    v7 = v30;
    v8 = *(v30 + 16);
    v9 = 16 * v8;
    v10 = v5;
    do
    {
      v11 = *(v30 + 24);
      v12 = v8++ >= v11 >> 1;
      if (v12)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v8, 1);
      }

      *(v30 + 16) = v8;
      v13 = v30 + v9;
      *(v13 + 32) = 0;
      *(v13 + 40) = v6;
      v9 += 16;
      --v10;
    }

    while (v10);
  }

  else
  {
    v8 = *(MEMORY[0x277D84F90] + 16);
    v7 = MEMORY[0x277D84F90];
  }

  if (v5 != v8)
  {
    goto LABEL_20;
  }

  _s11ShaderGraph10OrderedSetVyACyxGqd__c7ElementQyd__RszSkRd__lufCAA6OutputV_s15ContiguousArrayVyAHGTt0g5(v14);
  if (*(v16 + 16) != v5)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v17 = v15;
  v18 = v16;
  v19 = *(a1 + 16);
  if (!v19)
  {
    if (!*(v6 + 16))
    {
      goto LABEL_16;
    }

    goto LABEL_19;
  }

  v29 = v15;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v19, 0);
  v20 = *(v6 + 16);
  v21 = 56 * v20 + 32;
  v22 = 0uLL;
  v23 = v19;
  do
  {
    v24 = *(v6 + 24);
    v12 = v20++ >= v24 >> 1;
    if (v12)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v20, 1);
      v22 = 0uLL;
    }

    *(v6 + 16) = v20;
    v25 = v6 + v21;
    *(v25 + 48) = 0;
    *(v25 + 16) = v22;
    *(v25 + 32) = v22;
    v21 += 56;
    *v25 = v22;
    --v23;
  }

  while (v23);
  v17 = v29;
  if (v19 != v20)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_16:

  _s11ShaderGraph10OrderedSetVyACyxGqd__c7ElementQyd__RszSkRd__lufCAA5InputV_s15ContiguousArrayVyAHGTt0g5(v26);
  if (*(v28 + 16) == v19)
  {
    *a3 = v17;
    a3[1] = v18;
    a3[2] = v7;
    a3[3] = v27;
    a3[4] = v28;
    a3[5] = v6;
    return;
  }

LABEL_22:
  __break(1u);
}

__n128 specialized UserGraph.init(id:label:inputs:outputs:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v9 = MEMORY[0x277D84F90];
  _s11ShaderGraph17OrderedDictionaryV20uniqueKeysWithValuesACyxq_Gqd___tcSTRd__x_q_t7ElementRtd__lufCAA0aB4NodeV2IDV_AA04UserB0V8AdjacentVSayAK_AOtGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v62 = a4;

  *&v82 = _s11ShaderGraph17OrderedDictionaryV20uniqueKeysWithValuesACyxq_Gqd___tcSTRd__x_q_t7ElementRtd__lufCAA0aB4NodeV2IDV_AA04UserB0V8AdjacentVSayAK_AOtGTt0g5Tf4g_n(v9);
  *(&v82 + 1) = v10;
  v83 = v11;
  v12 = *(a5 + 16);
  v60 = a5;
  v61 = a1;
  if (v12)
  {
    *&v71 = v9;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12, 0);
    v13 = (a5 + 48);
    do
    {
      v14 = *(v13 - 2);
      v15 = *(v13 - 1);
      v16 = *v13;
      *&v71 = v9;
      v17 = *(v9 + 16);
      v18 = *(v9 + 24);

      if (v17 >= v18 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v17 + 1, 1);
        v9 = v71;
      }

      *(v9 + 16) = v17 + 1;
      v19 = (v9 + 24 * v17);
      v19[4] = v14;
      v19[5] = v15;
      v19[6] = v16;
      v13 += 3;
      --v12;
    }

    while (v12);
  }

  v20 = MEMORY[0x277D84F90];
  specialized ShaderGraphNode.init(id:graphid:inputs:outputs:shaderGraphData:)(0, a1, 0, v9, MEMORY[0x277D84F90], 0xE000000000000010, &v85);
  v101 = *(&v85 + 1);
  v102 = v85;
  v100 = *v86;
  outlined init with copy of NodePersonality(&v102, &v71);
  outlined init with copy of [Input](&v101, &v71, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
  outlined init with copy of [Input](&v100, &v71, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
  v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, v20);
  v23 = *(v21 + 2);
  v22 = *(v21 + 3);
  if (v23 >= v22 >> 1)
  {
    v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v21);
  }

  v25 = v100;
  v24 = v101;
  *(v21 + 2) = v23 + 1;
  v26 = &v21[48 * v23];
  v27 = *v86;
  *(v26 + 2) = v85;
  *(v26 + 3) = v27;
  *(v26 + 57) = *&v86[9];
  v55 = *&v86[8];
  v56 = v21;
  outlined init with copy of NodePersonality(&v102, &v71);
  outlined init with copy of [Input](&v101, &v71, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
  outlined init with copy of [Input](&v100, &v71, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
  specialized UserGraph.Adjacent.init(_:)(v24, v25, &v87);
  v28 = v87;
  v29 = v89;
  outlined destroy of NodePersonality(&v102);
  outlined destroy of [Input](&v101, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
  outlined destroy of [Input](&v100, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
  v108 = v88;
  v107 = v28;
  v109 = v29;
  v110 = v90;
  specialized OrderedDictionary.subscript.setter(&v107, v55);
  *(v84 + 7) = v85;
  *(&v84[1] + 7) = *v86;
  v84[2] = *&v86[9];
  v30 = *(v62 + 16);
  if (v30)
  {
    *&v71 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v30, 0);
    v31 = v71;
    v32 = (v62 + 48);
    do
    {
      v33 = *(v32 - 2);
      v34 = *(v32 - 1);
      v35 = *v32;
      *&v71 = v31;
      v36 = *(v31 + 16);
      v37 = *(v31 + 24);

      if (v36 >= v37 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v36 + 1, 1);
        v31 = v71;
      }

      *(v31 + 16) = v36 + 1;
      v38 = (v31 + 24 * v36);
      v38[4] = v33;
      v38[5] = v34;
      v38[6] = v35;
      v32 += 3;
      --v30;
    }

    while (v30);
  }

  else
  {

    v31 = MEMORY[0x277D84F90];
  }

  v39 = v56;
  specialized ShaderGraphNode.init(id:graphid:inputs:outputs:shaderGraphData:)(*(v56 + 2), v61, 0, MEMORY[0x277D84F90], v31, 0xE000000000000000, &v91);
  v98 = *(&v91 + 1);
  v99 = v91;
  v97 = *v92;
  outlined init with copy of NodePersonality(&v99, &v71);
  outlined init with copy of [Input](&v98, &v71, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
  outlined init with copy of [Input](&v97, &v71, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
  v41 = *(v56 + 2);
  v40 = *(v56 + 3);
  if (v41 >= v40 >> 1)
  {
    v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v40 > 1), v41 + 1, 1, v56);
  }

  v43 = v97;
  v42 = v98;
  *(v39 + 2) = v41 + 1;
  v44 = &v39[48 * v41];
  v46 = v91;
  v45 = *v92;
  *(v44 + 57) = *&v92[9];
  *(v44 + 2) = v46;
  *(v44 + 3) = v45;
  v47 = *&v92[8];
  outlined init with copy of NodePersonality(&v99, &v71);
  outlined init with copy of [Input](&v98, &v71, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
  outlined init with copy of [Input](&v97, &v71, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
  specialized UserGraph.Adjacent.init(_:)(v42, v43, &v93);
  v48 = v93;
  v49 = v95;
  outlined destroy of NodePersonality(&v99);
  outlined destroy of [Input](&v98, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
  outlined destroy of [Input](&v97, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
  v104 = v94;
  v103 = v48;
  v105 = v49;
  v106 = v96;
  specialized OrderedDictionary.subscript.setter(&v103, v47);

  v64 = v82;
  *&v65 = v83;
  *(&v65 + 1) = a2;
  *&v66 = a3;
  *(&v66 + 1) = v61;
  v67.n128_u64[0] = v62;
  v67.n128_u64[1] = v60;
  v68 = v39;
  v69 = v91;
  *v70 = *v92;
  *&v70[9] = *&v92[9];
  *&v70[57] = v84[2];
  *&v70[41] = v84[1];
  *&v70[25] = v84[0];
  v71 = v82;
  v72 = v83;
  v73 = a2;
  v74 = a3;
  v75 = v61;
  v76 = v62;
  v77 = v60;
  v78 = v39;
  v79 = 0;
  *(v81 + 9) = *&v92[9];
  v80 = v91;
  v81[0] = *v92;
  *(&v81[3] + 9) = v84[2];
  *(&v81[2] + 9) = v84[1];
  *(&v81[1] + 9) = v84[0];
  outlined init with copy of UserGraph(&v64, v63);
  outlined destroy of UserGraph(&v71);
  v50 = *&v70[48];
  *(a6 + 128) = *&v70[32];
  *(a6 + 144) = v50;
  *(a6 + 153) = *&v70[57];
  v51 = v69;
  *(a6 + 64) = v68;
  *(a6 + 80) = v51;
  v52 = *&v70[16];
  *(a6 + 96) = *v70;
  *(a6 + 112) = v52;
  v53 = v65;
  *a6 = v64;
  *(a6 + 16) = v53;
  result = v67;
  *(a6 + 32) = v66;
  *(a6 + 48) = result;
  return result;
}

uint64_t specialized ShaderGraphNode.input(labeled:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = result;
  v5 = (a3 + 80);
  v6 = *(a3 + 16) + 1;
  while (1)
  {
    if (!--v6)
    {
      v8 = 0;
      v7 = 0;
      v10 = 0;
      v9 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      goto LABEL_12;
    }

    v8 = *(v5 - 6);
    v7 = *(v5 - 5);
    v10 = *(v5 - 4);
    v9 = *(v5 - 3);
    v11 = *(v5 - 2);
    v12 = *(v5 - 8);
    v13 = *v5;
    if (v10 == v4 && v9 == a2)
    {
      break;
    }

    v5 += 7;
    result = _stringCompareWithSmolCheck(_:_:expecting:)();
    if (result)
    {
      goto LABEL_11;
    }
  }

  v10 = v4;
LABEL_11:

LABEL_12:
  *a4 = v8;
  a4[1] = v7;
  a4[2] = v10;
  a4[3] = v9;
  a4[4] = v11;
  a4[5] = v12;
  a4[6] = v13;
  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC11ShaderGraph15MaterialXTargetC_SayAFGTt0g5Tf4g_n(unint64_t a1)
{
  i = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_19:
    v3 = __CocoaSet.count.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = type metadata accessor for MaterialXTarget();
  v5 = lazy protocol witness table accessor for type MaterialXTarget and conformance MaterialXTarget();
  result = MEMORY[0x266771950](v3, v4, v5);
  v12 = result;
  if (!i)
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x266772030](i, a1);
        v10 = i + 1;
        if (__OFADD__(i, 1))
        {
LABEL_15:
          __break(1u);
          return v12;
        }
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_19;
        }

        v9 = *(a1 + 8 * i + 32);

        v10 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_15;
        }
      }

      specialized Set._Variant.insert(_:)(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }
  }

  v8 = result;
  v7 = __CocoaSet.count.getter();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t specialized UserGraph.DepthFirstEdgeIterator.init(_:initial:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = result;
  v6 = MEMORY[0x277D84F90];
  v19 = MEMORY[0x277D84F90];
  v7 = *(a2 + 16);
  if (v7)
  {
    v8 = 0;
    v9 = (a2 + 40);
    while (v8 < *(a2 + 16))
    {
      ++v8;
      v10 = *v9;
      v9 += 6;

      result = specialized Array.append<A>(contentsOf:)(v11);
      if (v7 == v8)
      {
        v6 = v19;
        goto LABEL_6;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

LABEL_6:

  v12 = *(v4[8] + 16);
  v13 = 10 * v12;
  if ((v12 * 10) >> 64 != (10 * v12) >> 63)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v13 > *(v6 + 3) >> 1)
  {
    if (*(v6 + 2) <= v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = *(v6 + 2);
    }

    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v15, 0, v6);
  }

  v20 = MEMORY[0x277D84FA0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy11ShaderGraph5InputVGMd, &_sShy11ShaderGraph5InputVGMR);
  Set.reserveCapacity(_:)(v13);
  v16 = *v4;
  v17 = v4[1];
  v18 = v4[2];
  *a3 = v16;
  a3[1] = v17;
  a3[2] = v18;
  a3[3] = v6;
  a3[4] = v20;
}

unint64_t *specialized closure #1 in UserGraph.hoist(_:)(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = result[3];
  if (v5 != a2 && v5 != a3)
  {
    v34 = result[3];
    v7 = result[1];
    v33 = *result;
    v8 = result[2];
    v9 = *(v7 + 16);
    v10 = MEMORY[0x277D84F90];
    if (v9)
    {
      v31 = result[2];
      *&v37 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9, 0);
      v10 = v37;
      v11 = (v7 + 56);
      do
      {
        v13 = *(v11 - 2);
        v12 = *(v11 - 1);
        v14 = *v11;
        *&v37 = v10;
        v16 = *(v10 + 16);
        v15 = *(v10 + 24);

        if (v16 >= v15 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1);
          v10 = v37;
        }

        *(v10 + 16) = v16 + 1;
        v17 = (v10 + 24 * v16);
        v17[4] = v12;
        v17[5] = v14;
        v17[6] = v13;
        v11 += 7;
        --v9;
      }

      while (v9);
      v8 = v31;
    }

    v18 = *(v8 + 16);
    v19 = MEMORY[0x277D84F90];
    if (v18)
    {
      v32 = v10;
      *&v37 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18, 0);
      v19 = v37;
      v20 = (v8 + 56);
      do
      {
        v22 = *(v20 - 2);
        v21 = *(v20 - 1);
        v23 = *v20;
        *&v37 = v19;
        v25 = *(v19 + 16);
        v24 = *(v19 + 24);

        if (v25 >= v24 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1);
          v10 = v32;
          v19 = v37;
        }

        *(v19 + 16) = v25 + 1;
        v26 = (v19 + 24 * v25);
        v26[4] = v21;
        v26[5] = v23;
        v26[6] = v22;
        v20 += 7;
        --v18;
      }

      while (v18);
    }

    UserGraph.insertNode(inputs:outputs:shaderGraphData:)(v10, v19, v33, &v37);

    v27 = v39;
    v28 = *a5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v36 = *a5;
    *a5 = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v27, v34, isUniquelyReferenced_nonNull_native);
    v42 = v37;
    outlined destroy of NodePersonality(&v42);
    v41 = *(&v37 + 1);
    outlined destroy of [Input](&v41, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    v40 = v38;
    outlined destroy of [Input](&v40, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
    v30 = *a5;
    *a5 = v36;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC11ShaderGraph6OutputV_SayAFGTt0g5Tf4g_nTm(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, void (*a4)(_BYTE *, void *))
{
  v7 = *(a1 + 16);
  v8 = a2();
  result = MEMORY[0x266771950](v7, a3, v8);
  v19 = result;
  if (v7)
  {
    v10 = (a1 + 80);
    do
    {
      v12 = *(v10 - 6);
      v11 = *(v10 - 5);
      v13 = *(v10 - 4);
      v14 = *(v10 - 3);
      v15 = *(v10 - 2);
      v16 = *(v10 - 8);
      v17 = *v10;
      v10 += 7;
      v20[0] = v12;
      v20[1] = v11;
      v20[2] = v13;
      v20[3] = v14;
      v20[4] = v15;
      v21 = v16;
      v22 = v17;

      a4(v18, v20);

      --v7;
    }

    while (v7);
    return v19;
  }

  return result;
}

uint64_t specialized closure #1 in UserGraph.sinkNodes()@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *(a3 + 16);

  v12 = 0;
  v13 = -1;
  v14 = 40;
  do
  {
    if (!v10)
    {
      goto LABEL_7;
    }

    if (++v13 >= *(a2 + 16))
    {
      __break(1u);
      goto LABEL_17;
    }

    v15 = *(a3 + v14);
    v14 += 16;
    --v10;
    v16 = *(v15 + 16);
    v17 = __OFADD__(v12, v16);
    v12 += v16;
  }

  while (!v17);
  __break(1u);
LABEL_7:

  v18 = 0;
  v19 = 0;
  if (v12)
  {
    v20 = 0;
    v21 = 0;
    v22 = 0;
    goto LABEL_15;
  }

  v20 = 0;
  v21 = 0;
  v22 = 0;
  if (a1 == -7)
  {
LABEL_15:
    *a5 = v18;
    *(a5 + 8) = v19;
    *(a5 + 16) = v20;
    *(a5 + 24) = v21;
    *(a5 + 32) = v22;
    *(a5 + 40) = v10;
    return result;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23 = *(a4 + 64);
  if (*(v23 + 16) > a1)
  {
    v24 = v23 + 48 * a1;
    v21 = *(v24 + 56);
    if (v21 == -7)
    {
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      LOBYTE(v10) = 0;
    }

    else
    {
      LOBYTE(v10) = *(v24 + 72);
      v22 = *(v24 + 64);
      v19 = *(v24 + 40);
      v20 = *(v24 + 48);
      v18 = *(v24 + 32);
      outlined copy of NodePersonality(v18);
    }

    goto LABEL_15;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t specialized closure #2 in UserGraph.hoist(_:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v13 = *a1;
  v14 = a1[1];
  v15 = a1[2];
  v130 = *(a1 + 6);
  v128 = v14;
  v129 = v15;
  v127 = v13;
  v16 = *(a1 + 56);
  v17 = *(a1 + 72);
  v18 = *(a1 + 88);
  v126 = *(a1 + 13);
  v124 = v17;
  v125 = v18;
  v123 = v16;
  v19 = specialized Set.contains(_:)(&v127, a2);
  result = specialized Set.contains(_:)(&v123, a3);
  if ((v19 & 1) == 0)
  {
    if ((result & 1) == 0)
    {
      v57 = *a7;
      if (!*(*a7 + 16))
      {
        return result;
      }

      v58 = *a7;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v127);
      if ((v59 & 1) == 0)
      {
        return result;
      }

      v60 = *a7;
      if (!*(*a7 + 16))
      {
        return result;
      }

      v61 = *(*(v57 + 56) + 8 * result);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v123);
      if ((v62 & 1) == 0 || v61 == -7)
      {
        return result;
      }

      if ((v61 & 0x8000000000000000) == 0)
      {
        v131 = v7;
        v63 = *(a6 + 64);
        v64 = *(v63 + 16);
        if (v61 < v64)
        {
          v65 = *(*(v60 + 56) + 8 * result);
          v66 = v63 + 32;
          v67 = (v63 + 32 + 48 * v61);
          v69 = *v67;
          v68 = v67[1];
          result = specialized ShaderGraphNode.input(labeled:)(v128, *(&v128 + 1), v67[2], &v99);
          v70 = *(&v99 + 1);
          if (!*(&v99 + 1))
          {
            return result;
          }

          if (v65 == -7)
          {
            goto LABEL_49;
          }

          if (v65 >= v64)
          {
LABEL_58:
            __break(1u);
            return result;
          }

          v76 = v99;
          v77 = (v66 + 48 * v65);
          v79 = *v77;
          v78 = v77[2];
          specialized ShaderGraphNode.input(labeled:)(v124, *(&v124 + 1), v77[1], &v112);
          if (!*(&v112 + 1))
          {
LABEL_49:

            outlined copy of NodePersonality(v69);

            v116 = v100;
            outlined destroy of String(&v116);
            outlined consume of NodePersonality(v69);
          }

          else
          {
            *&v119[24] = v113;
            *&v119[40] = v114;
            v95 = v113;
            v91 = v100;
            v117 = v100;
            v118 = v101;
            *&v116 = v76;
            *(&v116 + 1) = v70;
            *v119 = v102;
            *&v119[8] = v112;
            *&v119[56] = v115;
            *&v81 = v76;
            *(&v81 + 1) = v70;
            v82 = v100;
            *&v83 = v101;
            BYTE8(v83) = BYTE8(v101);
            v84 = v102;
            v105 = v112;
            v106 = v113;
            *&v107 = v114;
            BYTE8(v107) = BYTE8(v114);
            *v108 = v115;

            outlined copy of NodePersonality(v69);

            outlined copy of NodePersonality(v79);

            outlined init with copy of String(&v91, &v87);

            outlined init with copy of String(&v95, &v87);
            UserGraph.connect(_:to:)(&v81, &v105);
            outlined destroy of Edge(&v116);

            outlined destroy of String(&v95);
            outlined consume of NodePersonality(v79);

            outlined destroy of String(&v91);
            outlined consume of NodePersonality(v69);
          }
        }

LABEL_57:
        __break(1u);
        goto LABEL_58;
      }

LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    v34 = *a7;
    if (!*(*a7 + 16))
    {
      return result;
    }

    v35 = v124;
    result = specialized __RawDictionaryStorage.find<A>(_:)(v127);
    if ((v36 & 1) == 0)
    {
      return result;
    }

    v37 = *(*(v34 + 56) + 8 * result);
    if (v37 == -7)
    {
      return result;
    }

    if ((v37 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v38 = *(a6 + 64);
      if (v37 < *(v38 + 16))
      {
        v39 = (v38 + 48 * v37);
        v80 = v39[4];
        v131 = v39[5];
        result = specialized ShaderGraphNode.input(labeled:)(v128, *(&v128 + 1), v39[6], &v95);
        if (*(&v95 + 1))
        {
          v81 = v95;
          v82 = v96;
          v83 = v97;
          v84 = v98;
          specialized ShaderGraphNode.input(labeled:)(v35, *(&v35 + 1), a5, &v99);
          if (*(&v99 + 1))
          {
            v112 = v99;
            v113 = v100;
            v114 = v101;
            v115 = v102;
            v40 = *(a6 + 144);
            v121 = *(a6 + 128);
            v122[0] = v40;
            *(v122 + 9) = *(a6 + 153);
            v41 = *(a6 + 80);
            *&v119[16] = *(a6 + 64);
            *&v119[32] = v41;
            v42 = *(a6 + 112);
            *&v119[48] = *(a6 + 96);
            v120 = v42;
            v43 = *(a6 + 16);
            v116 = *a6;
            v117 = v43;
            v44 = *(a6 + 48);
            v118 = *(a6 + 32);
            *v119 = v44;

            outlined copy of NodePersonality(v80);
            outlined init with copy of UserGraph(&v116, &v105);
            v45 = UserGraph.edges(from:)(&v112);
            outlined destroy of UserGraph(&v116);
            v91 = v96;

            outlined init with copy of String(&v91, &v105);
            specialized Sequence.forEach(_:)(v45, &v81);

            outlined destroy of String(&v91);
            outlined consume of NodePersonality(v80);

            v105 = v113;
            outlined destroy of String(&v105);

            v33 = &v91;
            goto LABEL_7;
          }

          outlined copy of NodePersonality(v80);

          v116 = v96;
          outlined destroy of String(&v116);
          outlined consume of NodePersonality(v80);
        }

        return result;
      }
    }

    __break(1u);
    goto LABEL_54;
  }

  if ((result & 1) == 0)
  {
    result = specialized ShaderGraphNode.input(labeled:)(v128, *(&v128 + 1), a4, &v87);
    if (!*(&v87 + 1))
    {
      return result;
    }

    v99 = v87;
    v100 = v88;
    v101 = v89;
    v102 = v90;
    v46 = *(a6 + 144);
    v121 = *(a6 + 128);
    v122[0] = v46;
    *(v122 + 9) = *(a6 + 153);
    v47 = *(a6 + 80);
    *&v119[16] = *(a6 + 64);
    *&v119[32] = v47;
    v48 = *(a6 + 112);
    *&v119[48] = *(a6 + 96);
    v120 = v48;
    v49 = *(a6 + 16);
    v116 = *a6;
    v117 = v49;
    v50 = *(a6 + 48);
    v118 = *(a6 + 32);
    *v119 = v50;
    outlined init with copy of UserGraph(&v116, &v105);
    UserGraph.output(connectedTo:)(&v99, &v91);
    outlined destroy of UserGraph(&v116);
    v51 = *(&v91 + 1);
    if (!*(&v91 + 1))
    {

      v71 = v100;
      goto LABEL_37;
    }

    v52 = *a7;
    if (!*(*a7 + 16) || (v53 = v91, result = specialized __RawDictionaryStorage.find<A>(_:)(v123), (v54 & 1) == 0))
    {

      v81 = v100;
      outlined destroy of String(&v81);

      v71 = v92;
      goto LABEL_37;
    }

    v55 = *(*(v52 + 56) + 8 * result);
    if (v55 == -7)
    {

      v105 = v92;
      outlined destroy of String(&v105);

      v56 = v100;
LABEL_39:
      v81 = v56;
      return outlined destroy of String(&v81);
    }

    if ((v55 & 0x8000000000000000) == 0)
    {
      v131 = v7;
      v72 = *(a6 + 64);
      if (v55 < *(v72 + 16))
      {
        v73 = (v72 + 48 * v55);
        v74 = v73[4];
        v75 = v73[6];
        specialized ShaderGraphNode.input(labeled:)(v124, *(&v124 + 1), v73[5], &v95);
        if (*(&v95 + 1))
        {
          *&v108[24] = v96;
          *&v108[40] = v97;
          v85[0] = v96;
          v104 = v92;
          v106 = v92;
          v107 = v93;
          *&v105 = v53;
          *(&v105 + 1) = v51;
          *v108 = v94;
          *&v108[8] = v95;
          *&v108[56] = v98;
          *&v112 = v53;
          *(&v112 + 1) = v51;
          v113 = v92;
          *&v114 = v93;
          BYTE8(v114) = BYTE8(v93);
          v115 = v94;
          v81 = v95;
          v82 = v96;
          *&v83 = v97;
          BYTE8(v83) = BYTE8(v97);
          v84 = v98;

          outlined copy of NodePersonality(v74);

          outlined init with copy of String(&v104, &v103);

          outlined init with copy of String(v85, &v103);
          UserGraph.connect(_:to:)(&v112, &v81);
          outlined destroy of Edge(&v105);

          outlined destroy of String(v85);
          outlined consume of NodePersonality(v74);

          outlined destroy of String(&v104);

          v103 = v100;
          return outlined destroy of String(&v103);
        }

        else
        {

          v105 = v92;
          outlined destroy of String(&v105);

          v81 = v100;
          return outlined destroy of String(&v81);
        }
      }

      goto LABEL_55;
    }

LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v21 = v124;
  result = specialized ShaderGraphNode.input(labeled:)(v128, *(&v128 + 1), a4, v85);
  if (*(&v85[0] + 1))
  {
    v112 = v85[0];
    v113 = v85[1];
    v114 = v85[2];
    v115 = v86;
    v22 = *(a6 + 144);
    v121 = *(a6 + 128);
    v122[0] = v22;
    *(v122 + 9) = *(a6 + 153);
    v23 = *(a6 + 80);
    *&v119[16] = *(a6 + 64);
    *&v119[32] = v23;
    v24 = *(a6 + 112);
    *&v119[48] = *(a6 + 96);
    v120 = v24;
    v25 = *(a6 + 16);
    v116 = *a6;
    v117 = v25;
    v26 = *(a6 + 48);
    v118 = *(a6 + 32);
    *v119 = v26;
    outlined init with copy of UserGraph(&v116, &v105);
    UserGraph.output(connectedTo:)(&v112, &v87);
    outlined destroy of UserGraph(&v116);
    if (*(&v87 + 1))
    {
      v99 = v87;
      v100 = v88;
      v101 = v89;
      v102 = v90;
      specialized ShaderGraphNode.input(labeled:)(v21, *(&v21 + 1), a5, &v91);
      if (*(&v91 + 1))
      {
        v95 = v91;
        v96 = v92;
        v97 = v93;
        v98 = v94;
        v27 = *(a6 + 144);
        v110 = *(a6 + 128);
        v111[0] = v27;
        *(v111 + 9) = *(a6 + 153);
        v28 = *(a6 + 80);
        *&v108[16] = *(a6 + 64);
        *&v108[32] = v28;
        v29 = *(a6 + 112);
        *&v108[48] = *(a6 + 96);
        v109 = v29;
        v30 = *(a6 + 16);
        v105 = *a6;
        v106 = v30;
        v31 = *(a6 + 48);
        v107 = *(a6 + 32);
        *v108 = v31;
        outlined init with copy of UserGraph(&v105, &v81);
        v32 = UserGraph.edges(from:)(&v95);
        outlined destroy of UserGraph(&v105);
        v104 = v88;

        outlined init with copy of String(&v104, &v81);
        specialized Sequence.forEach(_:)(v32, &v99);

        outlined destroy of String(&v104);

        v103 = v113;
        outlined destroy of String(&v103);

        v81 = v96;
        outlined destroy of String(&v81);

        v33 = &v104;
LABEL_7:
        outlined destroy of String(v33);
      }

      v105 = v88;
      outlined destroy of String(&v105);

      v56 = v113;
      goto LABEL_39;
    }

    v71 = v113;
LABEL_37:
    v105 = v71;
    return outlined destroy of String(&v105);
  }

  return result;
}

unint64_t specialized Sequence.forEach(_:)(unint64_t result, void *a2, uint64_t a3)
{
  v3 = *(result + 16);
  if (!v3)
  {
    return result;
  }

  v4 = a2;
  v5 = 0;
  v75 = *(a3 + 8);
  v76 = *a3;
  v77 = (a3 + 16);
  v6 = result + 32;
  v7 = *(a3 + 24);
  v74 = *(a3 + 16);
  v72 = *(a3 + 48);
  v73 = *(a3 + 40);
  v83 = *(result + 16);
  v84 = result + 32;
  while (1)
  {
    v9 = v6 + 56 * v5;
    v10 = *(v9 + 16);
    v108 = *v9;
    v109 = v10;
    v110 = *(v9 + 32);
    v111 = *(v9 + 48);
    v11 = v108;
    v12 = v4[1];
    v13 = v4[2];
    v14 = v12 + 32;
    v15 = *(v12 + 16);
    if (!*v4)
    {
      if (!v15)
      {
        goto LABEL_5;
      }

      result = 0;
      while (*(v14 + 8 * result) != v108)
      {
        if (v15 == ++result)
        {
          goto LABEL_5;
        }
      }

      v17 = *(&v108 + 1);
      v112[0] = *(v9 + 16);
      goto LABEL_16;
    }

    result = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(v108, v14, v15, (*v4 + 16), *v4 + 32);
    if (v16)
    {
      goto LABEL_5;
    }

    v17 = *(&v108 + 1);
    v112[0] = v109;
    if ((result & 0x8000000000000000) != 0)
    {
      break;
    }

LABEL_16:
    if (result >= *(v13 + 16))
    {
      goto LABEL_74;
    }

    v18 = (v13 + 48 * result);
    v19 = v18[4];
    v20 = v18[5];
    v21 = v18[6];
    v22 = v18[7];
    v24 = v18[8];
    v23 = v18[9];
    v25 = *(v24 + 16);
    v95 = v5;
    v113 = v17;
    v90 = v20;
    v92 = v19;
    v94 = v23;
    if (!v22)
    {
      if (!v25)
      {

        outlined init with copy of String(v112, v101);

LABEL_50:
        outlined consume of UserGraph.Adjacent?(v92, v90);
LABEL_51:
        v4 = a2;
        v3 = v83;
        goto LABEL_52;
      }

      v86 = *(&v112[0] + 1);
      v87 = *&v112[0];
      v97 = v25;

      outlined init with copy of String(v112, v101);
      v80 = v110;
      v85 = v111;
      v81 = BYTE8(v110);
      v79 = BYTE8(v110) ^ 1;

      v44 = v97;
      v27 = 0;
      v45 = (v24 + 80);
      while (1)
      {
        if (*(v45 - 6) != v11)
        {
          goto LABEL_30;
        }

        v46 = *(v45 - 4);
        v47 = *(v45 - 3);
        v99 = *(v45 - 2);
        v48 = *(v45 - 8);
        v49 = *v45;
        v50 = *(**(v45 - 5) + 128);

        if ((v50(v113) & 1) == 0)
        {

          v44 = v97;
          goto LABEL_30;
        }

        v51 = v46 == v87 && v47 == v86;
        if (v51)
        {

          v44 = v97;
          if (v48)
          {
            goto LABEL_39;
          }
        }

        else
        {
          v52 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v44 = v97;
          if ((v52 & 1) == 0)
          {
            goto LABEL_30;
          }

          if (v48)
          {
LABEL_39:
            v53 = v81;
            if (v49 != v85)
            {
              v53 = 0;
            }

            if (v53)
            {
              goto LABEL_20;
            }

            goto LABEL_30;
          }
        }

        v54 = v79;
        if (v99 != v80)
        {
          v54 = 0;
        }

        if (v54 == 1 && v49 == v85)
        {
          goto LABEL_20;
        }

LABEL_30:
        v45 += 7;
        if (v44 == ++v27)
        {
          goto LABEL_50;
        }
      }
    }

    v26 = v25;

    outlined init with copy of String(v112, v101);

    swift_retain_n();

    v27 = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(&v108, v24 + 32, v26, (v22 + 16), v22 + 32);
    v29 = v28;

    if (v29)
    {
      goto LABEL_50;
    }

    if ((v27 & 0x8000000000000000) != 0)
    {
      goto LABEL_75;
    }

LABEL_20:
    if (v27 >= *(v94 + 16))
    {
      goto LABEL_76;
    }

    v30 = (v94 + 56 * v27);
    v31 = v30[4];
    v32 = v30[5];
    v33 = v30[6];
    v34 = v30[7];
    v35 = v30[8];
    v36 = v30[9];
    v37 = v30[10];
    outlined copy of Output?(v31, v32);
    outlined consume of UserGraph.Adjacent?(v92, v90);
    if (!v32)
    {
      v55 = *(a3 + 8);
      v107 = *v77;

      outlined init with copy of String(&v107, v101);
      outlined consume of Output?(v31, 0);
      outlined consume of Output?(v76, v75);
      goto LABEL_51;
    }

    v96 = v32;
    v98 = v33;
    v51 = v31 == *a3;
    v4 = a2;
    v5 = v95;
    v38 = v31;
    v6 = v84;
    if (v51)
    {
      v88 = v11;
      v39 = v35;
      v40 = *(a3 + 8);
      v106 = *v77;
      v91 = *(*v96 + 128);
      v93 = v38;
      v41 = v39;
      outlined copy of Output?(v38, v96);

      outlined init with copy of String(&v106, v101);
      if ((v91(v40) & 1) == 0)
      {

        outlined destroy of String(&v106);
        outlined consume of Output?(v93, v96);
        v38 = v93;
        v8 = v96;
        goto LABEL_3;
      }

      if (__PAIR128__(v34, v98) == v106)
      {

        outlined destroy of String(&v106);
        v42 = v36;
        v43 = v37;
        outlined consume of Output?(v93, v96);
        v3 = v83;
      }

      else
      {
        v56 = _stringCompareWithSmolCheck(_:_:expecting:)();

        outlined destroy of String(&v106);
        v42 = v36;
        v43 = v37;
        outlined consume of Output?(v93, v96);
        v3 = v83;
        if ((v56 & 1) == 0)
        {
          goto LABEL_66;
        }
      }

      v57 = *(a3 + 40);
      if (v42)
      {
        v58 = v88;
        if (!*(a3 + 40))
        {
          goto LABEL_66;
        }
      }

      else
      {
        if (v41 != *(a3 + 32))
        {
          v57 = 1;
        }

        v58 = v88;
        if (v57)
        {
LABEL_66:
          v69 = v93;
          v70 = v96;
LABEL_67:
          outlined consume of Output?(v69, v70);
          goto LABEL_4;
        }
      }

      if (v43 != *(a3 + 48))
      {
        goto LABEL_66;
      }

      v59 = specialized OrderedDictionary.subscript.modify(v101, v58);
      if (!v60[1])
      {
        v59(v101, 0);
        v69 = v93;
        v70 = v96;
        goto LABEL_67;
      }

      v89 = v59;
      v62 = v60[3];
      v61 = v60[4];
      v63 = *(v61 + 16);

      outlined init with copy of String(v112, v100);
      if (v62)
      {

        v64 = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(&v108, v61 + 32, v63, (v62 + 16), v62 + 32);
        v66 = v65;
        v68 = v67;
      }

      else
      {
        v64 = specialized Collection<>.firstIndex(of:)(&v108, v61 + 32, v63);
        v66 = v71;
        v68 = 0;
      }

      outlined destroy of String(v112);
      v3 = v83;
      if ((v66 & 1) == 0)
      {
        specialized OrderedSet._removeExistingMember(at:in:)(v64, v68, v102);

        v105 = v103;
        outlined destroy of String(&v105);
        specialized ContiguousArray.remove(at:)(v64, v104);
        outlined destroy of [Input](v104, &_s11ShaderGraph6OutputVSgMd, &_s11ShaderGraph6OutputVSgMR);
      }

      v89(v101, 0);
      outlined consume of Output?(v93, v96);
LABEL_52:
      v5 = v95;
      v6 = v84;
      goto LABEL_4;
    }

    v8 = v96;
LABEL_3:
    outlined consume of Output?(v38, v8);
    v3 = v83;
LABEL_4:

    result = outlined destroy of String(v112);
LABEL_5:
    if (++v5 == v3)
    {
      return result;
    }
  }

  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
  return result;
}

uint64_t specialized UserGraph.removeEdges(connectedTo:)(unint64_t a1)
{
  v2 = a1;
  v3 = 0;
  specialized OrderedDictionary.subscript.getter(a1, *v1, v1[1], v1[2], &v78);
  v4 = v79;
  if (v79)
  {
    v63 = v2;
    v5 = v80;
    v6 = v81;
    v7 = v78;

    outlined consume of UserGraph.Adjacent?(v7, v4);
    v8 = *(v6 + 16);

    v69 = v8;
    if (v8)
    {
      v9 = 0;
      v10 = (v5 + 56);
      v11 = (v6 + 40);
      v68 = v5;
      v70 = v6;
      while (1)
      {
        if (v9 >= *(v5 + 16))
        {
          __break(1u);
LABEL_55:
          __break(1u);
LABEL_56:
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
LABEL_62:
          __break(1u);
LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);

          result = specialized OrderedSet._regenerateHashTable()(_s11ShaderGraph10_HashTableV6create23uncheckedUniqueElements5scale13reservedScaleACSgx_SiSgSitSkRzSH7ElementRpzlFZs15ContiguousArrayVyAA5InputVG_Tt2g5Tm);
          __break(1u);
          return result;
        }

        v13 = *(v10 - 1);
        v89[0] = *(v10 - 3);
        v89[1] = v13;
        v89[2] = *(v10 + 1);
        v90 = v10[3];
        v14 = *(v10 - 2);
        v15 = *v10;
        v94 = v13;
        if (v9 >= *(v6 + 16))
        {
          goto LABEL_55;
        }

        v73 = v9;
        v75 = v3;
        v17 = *(v11 - 1);
        v16 = *v11;
        v19 = v11[1];
        v18 = v11[2];
        v21 = v11[3];
        v20 = v11[4];
        v22 = v11[5];
        v72 = v17;
        if (!*v11)
        {
          break;
        }

        v91[0] = *(v11 - 1);
        v91[1] = v16;
        v91[2] = v19;
        v91[3] = v18;
        v91[4] = v21;
        v92 = v20 & 1;
        v93 = v22;
        outlined copy of Output?(v17, v16);
        outlined copy of Output?(v17, v16);

        outlined init with copy of String(&v94, &v85);
        v23 = specialized OrderedDictionary.subscript.modify(&v85, v17);
        if (!*(v24 + 8))
        {
          v23(&v85, 0);

          goto LABEL_5;
        }

        v67 = v16;
        v25 = specialized OrderedDictionary.subscript.modify(&v82, v91);
        v27 = v26 + 1;
        v6 = v70;
        v12 = v73;
        if (v26[1])
        {
          v28 = v26;
          v65 = v25;
          v66 = v23;

          outlined init with copy of String(&v94, v95);
          v3 = v75;
          v29 = specialized MutableCollection._halfStablePartition(isSuffixElement:)(v27, v89);
          v30 = v29;
          v31 = *v27;
          v32 = *(*v27 + 16);
          v33 = v32 - v29;
          if (v32 < v29)
          {
            goto LABEL_58;
          }

          if (v29 < 0)
          {
            goto LABEL_59;
          }

          v3 = v29;
          if (__OFADD__(v32, v29 - v32))
          {
            goto LABEL_60;
          }

          v64 = v29 - v32;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v27 = v31;
          if (!isUniquelyReferenced_nonNull_native || v3 > *(v31 + 24) >> 1)
          {
            if (*(v31 + 16) <= v3)
            {
              v35 = v32 - v33;
            }

            else
            {
              v35 = *(v31 + 16);
            }

            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v35, 1);
            v31 = *v27;
          }

          v3 = (v31 + 32);
          v36 = (v31 + 32 + 56 * v30);
          swift_arrayDestroy();
          v37 = v32 == v30;
          v6 = v70;
          if (!v37)
          {
            memmove(v36, &v3[56 * v32], 56 * (*(v31 + 16) - v32));
            v38 = *(v31 + 16);
            v39 = __OFADD__(v38, v64);
            v40 = v38 - v33;
            if (v39)
            {
              goto LABEL_61;
            }

            *(v31 + 16) = v40;
          }

          v41 = *v28;
          v42 = v28[1];
          if (*v28)
          {
            swift_beginAccess();
            v43 = *(v41 + 24) & 0x3FLL;
            v44 = *(v42 + 16);
            v3 = 0;
            if (v44 <= 0xF)
            {
              v45 = *(v41 + 24) & 0x3FLL;
              if (!v43)
              {
LABEL_43:
                v49 = 0;
                goto LABEL_44;
              }

LABEL_42:
              v49 = _s11ShaderGraph10_HashTableV6create23uncheckedUniqueElements5scale13reservedScaleACSgx_SiSgSitSkRzSH7ElementRpzlFZs15ContiguousArrayVyAA5InputVG_Tt2g5Tm(v42, v45, 0, v43);
LABEL_44:

              *v28 = v49;
              v65(&v82, 0);
              v66(&v85, 0);

              v16 = v67;

              v5 = v68;
              goto LABEL_7;
            }
          }

          else
          {
            v44 = *(v42 + 16);
            v3 = 0;
            if (v44 <= 0xF)
            {
              goto LABEL_43;
            }

            v43 = 0;
          }

          v46 = ceil(v44 / 0.75);
          if (v46 == INFINITY)
          {
            goto LABEL_62;
          }

          if (v46 <= -9.22337204e18)
          {
            goto LABEL_63;
          }

          if (v46 >= 9.22337204e18)
          {
            goto LABEL_64;
          }

          if ((v44 + 1) > v46)
          {
            v47 = v44 + 1;
          }

          else
          {
            v47 = v46;
          }

          v48 = 64 - __clz(v47 - 1);
          if (v43 <= v48)
          {
            v45 = v48;
          }

          else
          {
            v45 = v43;
          }

          goto LABEL_42;
        }

        v25(&v82, 0);
        v23(&v85, 0);

        v3 = v75;
LABEL_6:
        v5 = v68;
LABEL_7:
        v9 = v12 + 1;
        outlined consume of Output?(v72, v16);
        v10 += 7;
        v11 += 7;
        if (v69 == v9)
        {
          goto LABEL_45;
        }
      }

      outlined init with copy of String(&v94, &v85);

LABEL_5:
      v6 = v70;
      v12 = v73;
      v3 = v75;
      goto LABEL_6;
    }

LABEL_45:

    v2 = v63;
  }

  result = specialized OrderedDictionary.subscript.getter(v2, *v71, v71[1], v71[2], &v82);
  v51 = v83;
  if (v83)
  {
    v52 = v84;
    v53 = v82;

    outlined consume of UserGraph.Adjacent?(v53, v51);
    v54 = *(v52 + 16);
    v76 = v52;

    v74 = v54;
    if (v54)
    {
      v55 = 0;
      v56 = (v52 + 40);
      v57 = v51 + 56;
      while (v55 < *(v51 + 16))
      {
        v85 = *(v57 - 24);
        v86 = *(v57 - 8);
        v87 = *(v57 + 8);
        v88 = *(v57 + 24);
        v58 = *(v57 - 16);
        v59 = *v57;
        v95[0] = v86;
        if (v55 >= *(v76 + 16))
        {
          goto LABEL_57;
        }

        v60 = *(v56 - 1);
        v61 = *v56;
        ++v55;

        outlined init with copy of String(v95, v77);

        outlined init with copy of String(v95, v77);

        specialized Sequence.forEach(_:)(v62, v71, &v85);

        outlined destroy of String(v95);

        v56 += 2;
        v57 += 56;
        if (v74 == v55)
        {
          goto LABEL_52;
        }
      }

      goto LABEL_56;
    }

LABEL_52:
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC11ShaderGraph11DebugConfigO5GroupO_SayAHGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = lazy protocol witness table accessor for type DebugConfig.Group and conformance DebugConfig.Group();
  result = MEMORY[0x266771950](v2, &type metadata for DebugConfig.Group, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      specialized Set._Variant.insert(_:)(&v7, v6);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t specialized ShaderGraphNode.dotID.getter()
{
  v0 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266771550](v0);

  MEMORY[0x266771550](110, 0xE100000000000000);
  v1 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266771550](v1);

  return 103;
}

char *specialized UserGraph.BreathFirstEdgeIterator.init(_:initial:)@<X0>(char *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v37 = result;
  v4 = *(a2 + 16);
  if (!v4)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_20:

    v17 = *(v37 + 8);
    v18 = *(v17 + 16);
    v19 = 10 * v18;
    if ((v18 * 10) >> 64 != (10 * v18) >> 63)
    {
      goto LABEL_36;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v19 <= *(v7 + 3) >> 1)
    {
      v21 = *(v7 + 2);
      if (v21)
      {
LABEL_24:
        v22 = &v7[56 * v21];
        v35 = v17;
        v23 = *(v22 - 3);
        v24 = *(v22 - 2);
        v25 = *(v22 - 1);
        v26 = *v22;
        v27 = *(v22 + 1);
        v28 = v22[16];
        v34 = *(v22 + 3);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph5InputVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph5InputVGMR);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_265F1F670;
        *(inited + 32) = v23;
        v17 = v35;
        *(inited + 40) = v24;
        *(inited + 48) = v25;
        *(inited + 56) = v26;
        *(inited + 64) = v27;
        *(inited + 72) = v28;
        *(inited + 80) = v34;

        v30 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC11ShaderGraph5InputV_Tt0g5Tf4g_n(inited);
        swift_setDeallocating();
        outlined destroy of Input(inited + 32);
LABEL_30:
        v38 = v30;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy11ShaderGraph5InputVGMd, &_sShy11ShaderGraph5InputVGMR);
        Set.reserveCapacity(_:)(v19);
        v32 = *(v37 + 1);
        v33 = *(v37 + 2);
        *a3 = *v37;
        a3[1] = v32;
        a3[2] = v33;
        a3[3] = v7;
        a3[4] = v38;
        a3[5] = v17;
      }
    }

    else
    {
      if (*(v7 + 2) <= v19)
      {
        v31 = v19;
      }

      else
      {
        v31 = *(v7 + 2);
      }

      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v31, 0, v7);
      v21 = *(v7 + 2);
      if (v21)
      {
        goto LABEL_24;
      }
    }

    v30 = MEMORY[0x277D84FA0];
    goto LABEL_30;
  }

  v5 = 0;
  v6 = (a2 + 40);
  v7 = MEMORY[0x277D84F90];
  while (v5 < *(a2 + 16))
  {
    v8 = *v6;
    v9 = *(*v6 + 16);
    v10 = *(v7 + 2);
    v11 = v10 + v9;
    if (__OFADD__(v10, v9))
    {
      goto LABEL_32;
    }

    v12 = *v6;

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v11 <= *(v7 + 3) >> 1)
    {
      if (*(v8 + 16))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v10 <= v11)
      {
        v13 = v10 + v9;
      }

      else
      {
        v13 = v10;
      }

      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v13, 1, v7);
      v7 = result;
      if (*(v8 + 16))
      {
LABEL_15:
        if ((*(v7 + 3) >> 1) - *(v7 + 2) < v9)
        {
          goto LABEL_34;
        }

        swift_arrayInitWithCopy();

        if (v9)
        {
          v14 = *(v7 + 2);
          v15 = __OFADD__(v14, v9);
          v16 = v14 + v9;
          if (v15)
          {
            goto LABEL_35;
          }

          *(v7 + 2) = v16;
        }

        goto LABEL_4;
      }
    }

    if (v9)
    {
      goto LABEL_33;
    }

LABEL_4:
    ++v5;
    v6 += 6;
    if (v4 == v5)
    {
      goto LABEL_20;
    }
  }

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
  return result;
}

uint64_t specialized Collection.firstIndex(where:)(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = 0;
  v5 = *a2;
  v6 = (a1 + 80);
  v15 = *(a1 + 16);
  do
  {
    if (*(v6 - 6) != v5)
    {
      goto LABEL_4;
    }

    v7 = *(v6 - 4);
    v8 = *(v6 - 3);
    v18 = *(v6 - 8);
    v16 = *(v6 - 2);
    v17 = *v6;
    v9 = a2[1];
    v10 = *(**(v6 - 5) + 128);

    if ((v10(v9) & 1) == 0)
    {

      v5 = v14;
      v2 = v15;
      goto LABEL_4;
    }

    if (v7 == a2[2] && v8 == a2[3])
    {

      v5 = v14;
      v2 = v15;
    }

    else
    {
      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v5 = v14;
      v2 = v15;
      if ((v11 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    v12 = *(a2 + 40);
    if (v18)
    {
      if (!*(a2 + 40))
      {
        goto LABEL_4;
      }
    }

    else
    {
      if (v16 != a2[4])
      {
        v12 = 1;
      }

      if (v12)
      {
        goto LABEL_4;
      }
    }

    if (v17 == a2[6])
    {
      return v4;
    }

LABEL_4:
    v6 += 7;
    ++v4;
  }

  while (v2 != v4);
  return 0;
}

uint64_t specialized OrderedSet.append<A>(contentsOf:)(uint64_t result)
{
  v25 = *(result + 16);
  if (v25)
  {
    v1 = 0;
    v24 = result + 32;
    while (1)
    {
      v2 = v24 + 56 * v1;
      v3 = *(v2 + 32);
      v35 = *(v2 + 16);
      v36 = v3;
      v34 = *v2;
      v4 = *(v2 + 48);
      v37 = v4;
      v38[0] = v35;
      v5 = *v27;
      v6 = v27[1];
      v7 = *(v6 + 16);
      v30 = v1;
      v32 = *(&v34 + 1);
      if (*v27)
      {

        outlined init with copy of String(v38, v33);

        specialized _HashTable.UnsafeHandle._find<A>(_:in:)(&v34, v6 + 32, v7, (v5 + 16), v5 + 32);
        v9 = v8;
        v7 = v10;

        if ((v9 & 1) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_4;
      }

      if (v7)
      {
        break;
      }

      outlined init with copy of String(v38, v33);
LABEL_4:
      specialized OrderedSet._appendNew(_:in:)(&v34, v7, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:));
LABEL_5:
      v1 = v30 + 1;

      result = outlined destroy of String(v38);
      if (v30 + 1 == v25)
      {
        return result;
      }
    }

    v26 = v4;
    v11 = v34;
    v23 = v36;
    v12 = BYTE8(v36);
    v28 = *(&v38[0] + 1);
    v29 = *&v38[0];

    outlined init with copy of String(v38, v33);
    v13 = (v6 + 80);
    while (1)
    {
      if (*(v13 - 6) != v11)
      {
        goto LABEL_12;
      }

      v14 = *(v13 - 4);
      v15 = *(v13 - 3);
      v31 = *(v13 - 2);
      v16 = *(v13 - 8);
      v17 = *v13;
      v18 = *(**(v13 - 5) + 128);

      if ((v18(v32) & 1) == 0)
      {

        goto LABEL_12;
      }

      if (v14 == v29 && v15 == v28)
      {

        if (v16)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v20 & 1) == 0)
        {
          goto LABEL_12;
        }

        if (v16)
        {
LABEL_21:
          v21 = v12;
          if (v17 != v26)
          {
            v21 = 0;
          }

          if (v21)
          {
            goto LABEL_5;
          }

          goto LABEL_12;
        }
      }

      v22 = v12 ^ 1;
      if (v31 != v23)
      {
        v22 = 0;
      }

      if (v22 == 1 && v17 == v26)
      {
        goto LABEL_5;
      }

LABEL_12:
      v13 += 7;
      if (!--v7)
      {
        goto LABEL_4;
      }
    }
  }

  return result;
}

void specialized UserGraph.prune(_:)(unint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  if (specialized Sequence.allSatisfy(_:)(a2, v4))
  {
    v7 = specialized Sequence.compactMap<A>(_:)(a1, v4);
    specialized Sequence.forEach(_:)(v7, v4);

    specialized UserGraph.removeEdges(connectedTo:)(a3);
    v8 = *(v4 + 64);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      if ((a3 & 0x8000000000000000) == 0)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
      if ((a3 & 0x8000000000000000) == 0)
      {
LABEL_4:
        if (*(v8 + 2) > a3)
        {
          ShaderGraphNode.update(id:)(-7);
          *(v4 + 64) = v8;
          return;
        }

LABEL_9:
        __break(1u);
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

uint64_t partial apply for closure #1 in UserGraph.insert<A>(_:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v3;
  v6[2] = *(a1 + 32);
  v7 = *(a1 + 48);
  v4 = *(a1 + 72);
  v8[0] = *(a1 + 56);
  v8[1] = v4;
  v8[2] = *(a1 + 88);
  v9 = *(a1 + 104);
  return UserGraph.connect(_:to:)(v6, v8);
}

unint64_t lazy protocol witness table accessor for type Input and conformance Input()
{
  result = lazy protocol witness table cache variable for type Input and conformance Input;
  if (!lazy protocol witness table cache variable for type Input and conformance Input)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Input and conformance Input);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Input and conformance Input;
  if (!lazy protocol witness table cache variable for type Input and conformance Input)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Input and conformance Input);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Output and conformance Output()
{
  result = lazy protocol witness table cache variable for type Output and conformance Output;
  if (!lazy protocol witness table cache variable for type Output and conformance Output)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Output and conformance Output);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Output and conformance Output;
  if (!lazy protocol witness table cache variable for type Output and conformance Output)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Output and conformance Output);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Edge and conformance Edge()
{
  result = lazy protocol witness table cache variable for type Edge and conformance Edge;
  if (!lazy protocol witness table cache variable for type Edge and conformance Edge)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Edge and conformance Edge);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ShaderGraphNode.ID and conformance ShaderGraphNode.ID()
{
  result = lazy protocol witness table cache variable for type ShaderGraphNode.ID and conformance ShaderGraphNode.ID;
  if (!lazy protocol witness table cache variable for type ShaderGraphNode.ID and conformance ShaderGraphNode.ID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShaderGraphNode.ID and conformance ShaderGraphNode.ID);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ShaderGraphNode.ID and conformance ShaderGraphNode.ID;
  if (!lazy protocol witness table cache variable for type ShaderGraphNode.ID and conformance ShaderGraphNode.ID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShaderGraphNode.ID and conformance ShaderGraphNode.ID);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ShaderGraphNode and conformance ShaderGraphNode()
{
  result = lazy protocol witness table cache variable for type ShaderGraphNode and conformance ShaderGraphNode;
  if (!lazy protocol witness table cache variable for type ShaderGraphNode and conformance ShaderGraphNode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShaderGraphNode and conformance ShaderGraphNode);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UserGraph.DepthFirstEdgeIterator and conformance UserGraph.DepthFirstEdgeIterator()
{
  result = lazy protocol witness table cache variable for type UserGraph.DepthFirstEdgeIterator and conformance UserGraph.DepthFirstEdgeIterator;
  if (!lazy protocol witness table cache variable for type UserGraph.DepthFirstEdgeIterator and conformance UserGraph.DepthFirstEdgeIterator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UserGraph.DepthFirstEdgeIterator and conformance UserGraph.DepthFirstEdgeIterator);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UserGraph.BreathFirstEdgeIterator and conformance UserGraph.BreathFirstEdgeIterator()
{
  result = lazy protocol witness table cache variable for type UserGraph.BreathFirstEdgeIterator and conformance UserGraph.BreathFirstEdgeIterator;
  if (!lazy protocol witness table cache variable for type UserGraph.BreathFirstEdgeIterator and conformance UserGraph.BreathFirstEdgeIterator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UserGraph.BreathFirstEdgeIterator and conformance UserGraph.BreathFirstEdgeIterator);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UserGraph.ID and conformance UserGraph.ID()
{
  result = lazy protocol witness table cache variable for type UserGraph.ID and conformance UserGraph.ID;
  if (!lazy protocol witness table cache variable for type UserGraph.ID and conformance UserGraph.ID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UserGraph.ID and conformance UserGraph.ID);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UserGraph.Adjacent and conformance UserGraph.Adjacent()
{
  result = lazy protocol witness table cache variable for type UserGraph.Adjacent and conformance UserGraph.Adjacent;
  if (!lazy protocol witness table cache variable for type UserGraph.Adjacent and conformance UserGraph.Adjacent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UserGraph.Adjacent and conformance UserGraph.Adjacent);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UserGraph and conformance UserGraph()
{
  result = lazy protocol witness table cache variable for type UserGraph and conformance UserGraph;
  if (!lazy protocol witness table cache variable for type UserGraph and conformance UserGraph)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UserGraph and conformance UserGraph);
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
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

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t getEnumTagSinglePayload for Edge(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t storeEnumTagSinglePayload for Edge(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy169_8(uint64_t a1, __int128 *a2)
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
  v9 = a2[9];
  *(a1 + 153) = *(a2 + 153);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for UserGraph(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 169))
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

uint64_t storeEnumTagSinglePayload for UserGraph(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 168) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 169) = 1;
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

    *(result + 169) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata instantiation function for UserGraph.Iterator()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for Input(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t storeEnumTagSinglePayload for Input(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UserGraph.BreathFirstEdgeIterator(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t storeEnumTagSinglePayload for UserGraph.BreathFirstEdgeIterator(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_265E73B98()
{
  v1 = *(v0 + 16);
  if ((~v1 & 0xF000000000000007) != 0)
  {
    outlined consume of NestedError(v1);
  }

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC11ShaderGraph0bC4NodeV2IDV_SayAHGTt0g5Tf4g_nTm(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, void (*a4)(uint64_t *, uint64_t))
{
  v7 = *(a1 + 16);
  v8 = a2();
  result = MEMORY[0x266771950](v7, a3, v8);
  v13 = result;
  if (v7)
  {
    v10 = (a1 + 32);
    do
    {
      v11 = *v10++;
      a4(&v12, v11);
      --v7;
    }

    while (v7);
    return v13;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FunctionNodeID and conformance FunctionNodeID()
{
  result = lazy protocol witness table cache variable for type FunctionNodeID and conformance FunctionNodeID;
  if (!lazy protocol witness table cache variable for type FunctionNodeID and conformance FunctionNodeID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FunctionNodeID and conformance FunctionNodeID);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FunctionNodeID and conformance FunctionNodeID;
  if (!lazy protocol witness table cache variable for type FunctionNodeID and conformance FunctionNodeID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FunctionNodeID and conformance FunctionNodeID);
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_nTm(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x266771950](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      specialized Set._Variant.insert(_:)(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MaterialXTarget and conformance MaterialXTarget()
{
  result = lazy protocol witness table cache variable for type MaterialXTarget and conformance MaterialXTarget;
  if (!lazy protocol witness table cache variable for type MaterialXTarget and conformance MaterialXTarget)
  {
    type metadata accessor for MaterialXTarget();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MaterialXTarget and conformance MaterialXTarget);
  }

  return result;
}

uint64_t specialized OrderedSet.append<A>(contentsOf:)(uint64_t result, uint64_t a2, unint64_t a3)
{
  v38 = result;
  v4 = a3 >> 1;
  if (a3 >> 1 == a2)
  {
    return result;
  }

  v5 = a2;
  while (1)
  {
    if (v5 >= v4)
    {
      goto LABEL_56;
    }

    v7 = *(v38 + 8 * v5);
    v9 = *v3;
    v8 = v3[1];
    v10 = (v8 + 32);
    if (*v3)
    {
      break;
    }

    v37 = *(v8 + 16);
    if (!v37)
    {
LABEL_4:
      v6 = 0;
LABEL_5:
      result = specialized OrderedSet._appendNew(_:in:)(v7, v6, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:), specialized closure #1 in static _HashTable.create<A>(uncheckedUniqueElements:scale:reservedScale:));
      goto LABEL_6;
    }

    while (*v10 != v7)
    {
      ++v10;
      if (!--v37)
      {
        goto LABEL_4;
      }
    }

LABEL_6:
    if (++v5 == v4)
    {
      return result;
    }
  }

  v11 = *(v9 + 16);
  v12 = MEMORY[0x266772750](v11, *(v38 + 8 * v5));
  v13 = (1 << v11) - 1;
  if (__OFSUB__(1 << v11, 1))
  {
    goto LABEL_57;
  }

  v6 = v13 & v12;
  v14 = _HashTable.UnsafeHandle._startIterator(bucket:)(v13 & v12, (v9 + 16), v9 + 32);
  if (!v14)
  {
    goto LABEL_5;
  }

  v17 = *(v9 + 24) >> 6;
  v18 = v17 + (v14 ^ v13);
  if (v18 >= v13)
  {
    v19 = (1 << v11) - 1;
  }

  else
  {
    v19 = 0;
  }

  result = 32;
  if (v10[v18 - v19] == v7)
  {
    goto LABEL_6;
  }

  v20 = 0;
  v21 = v11 & 0x3F;
  v22 = __OFADD__(v21 << v21, 64);
  v23 = (v21 << v21) + 126;
  if ((v21 << v21) + 64 >= 1)
  {
    v23 = (v21 << v21) + 63;
  }

  v24 = v23 >> 6;
  while (1)
  {
    if (++v6 == 1 << v11)
    {
      if (v20)
      {
        goto LABEL_58;
      }

      v6 = 0;
      v20 = 1;
    }

    if (v16 >= v21)
    {
      break;
    }

    v25 = (v6 * v21) >> 6;
    if (v16)
    {
      if (v22)
      {
        goto LABEL_55;
      }

      if (v25 + 1 == v24)
      {
        v25 = 0;
      }

      else
      {
        ++v25;
      }
    }

    v26 = v21 - v16;
    if (__OFSUB__(v21, v16))
    {
      goto LABEL_53;
    }

    if (v25 == 2 && v21 == 5)
    {
      v28 = 32;
    }

    else
    {
      v28 = 64;
    }

    v29 = __OFSUB__(v28, v26);
    v30 = v28 - v26;
    if (v29)
    {
      goto LABEL_54;
    }

    v31 = *(v9 + 32 + 8 * v25);
    v32 = (v31 << v16) | v15;
    v33 = v31 >> v26;
    v16 = v30;
    v34 = v32 & v13;
    if ((v32 & v13) == 0)
    {
      goto LABEL_5;
    }

LABEL_42:
    v35 = (v34 ^ v13) + v17;
    if (v35 >= v13)
    {
      v36 = (1 << v11) - 1;
    }

    else
    {
      v36 = 0;
    }

    v15 = v33;
    if (v10[v35 - v36] == v7)
    {
      goto LABEL_6;
    }
  }

  v29 = __OFSUB__(v16, v21);
  v16 -= v21;
  if (!v29)
  {
    v33 = v15 >> v21;
    v34 = v15 & v13;
    if ((v15 & v13) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_42;
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
  __break(1u);
LABEL_58:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}