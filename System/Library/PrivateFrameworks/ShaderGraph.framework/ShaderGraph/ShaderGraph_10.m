uint64_t specialized OrderedSet.removeSubrange(_:)(uint64_t result, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v5 = v2 + 1;
  v4 = v6;
  if (!v6)
  {
    return specialized ContiguousArray.replaceSubrange<A>(_:with:)(result, a2);
  }

  v7 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_20;
  }

  if (v7 <= 0)
  {
    return result;
  }

  v8 = *(*v5 + 16);
  v9 = v8 - v7;
  if ((v8 - v7) > (v8 >> 1))
  {
    v10 = result;
    v11 = a2;
    v12 = specialized OrderedSet._minimumCapacity.getter(v4);
    a2 = v11;
    v13 = v12;
    result = v10;
    if (v9 >= v13)
    {
      v14 = *v3;
      result = swift_isUniquelyReferenced_native();
      v15 = *v3;
      if (result)
      {
        goto LABEL_15;
      }

      if (!v15)
      {
LABEL_22:
        __break(1u);
        return result;
      }

      v16 = v15[2];
      v17 = (v16 & 0x3F) << v16;
      v18 = __OFADD__(v17, 64);
      v19 = v17 + 64;
      if (!v18)
      {
        v21 = v19 - 1;
        v20 = v19 < 1;
        v22 = v19 + 62;
        if (!v20)
        {
          v22 = v21;
        }

        v23 = v22 >> 6;
        type metadata accessor for _HashTable.Storage();
        v24 = swift_allocObject();
        v25 = v15[3];
        v24[2] = v16;
        v24[3] = v25;
        memcpy(v24 + 4, v15 + 4, 8 * v23);

        *v3 = v24;
        v15 = v24;
LABEL_15:
        if (v15)
        {

          specialized closure #1 in OrderedSet.removeSubrange(_:)((v15 + 2), v15 + 4, v3, v10, v11);

          result = v10;
          a2 = v11;
          return specialized ContiguousArray.replaceSubrange<A>(_:with:)(result, a2);
        }

        goto LABEL_21;
      }

LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }
  }

  specialized ContiguousArray.replaceSubrange<A>(_:with:)(result, a2);

  return specialized OrderedSet._regenerateHashTable()();
}

uint64_t static GPUSpecificCacheKey.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 != a4)
  {
    return 0;
  }

  if (a2 == a5 && a3 == a6)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t GPUSpecificCacheKey.hash(into:)(uint64_t a1, uint64_t a2)
{
  MEMORY[0x2667727B0](a2);

  return String.hash(into:)();
}

Swift::Int GPUSpecificCacheKey.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x2667727B0](a1);
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance GPUSpecificCacheKey()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  MEMORY[0x2667727B0](v1);
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance GPUSpecificCacheKey()
{
  v1 = v0[1];
  v2 = v0[2];
  MEMORY[0x2667727B0](*v0);

  return String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance GPUSpecificCacheKey()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  MEMORY[0x2667727B0](v1);
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance GPUSpecificCacheKey(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (a1[1] == a2[1] && a1[2] == a2[2])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t *GraphCompiler.samplerCache.unsafeMutableAddressor()
{
  if (one-time initialization token for samplerCache != -1)
  {
    swift_once();
  }

  return &static GraphCompiler.samplerCache;
}

uint64_t one-time initialization function for samplerCache(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v5 = MEMORY[0x277D84F90];
  v6 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62)
  {
    v8 = a2;
    v9 = a3;
    v6 = MEMORY[0x277D84F90];
    v10 = __CocoaSet.count.getter();
    if (v10)
    {
      v11 = v10;
      v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC11ShaderGraph6SGNodeC_Tt1g5(v10, 0);
      specialized Array._copyContents(initializing:)(v6 + 32, v11, MEMORY[0x277D84F90]);
      v13 = v12;

      a3 = v9;
      a2 = v8;
      if (v13 == v11)
      {
        goto LABEL_2;
      }

      __break(1u);
    }

    a3 = v9;
    a2 = v8;
  }

LABEL_2:
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = swift_allocObject();
  *(result + 40) = 0;
  *(result + 16) = 0;
  *(result + 24) = v5;
  *(result + 32) = v6;
  *a4 = result;
  return result;
}

uint64_t *GraphCompiler.builtInLibraryCache.unsafeMutableAddressor()
{
  if (one-time initialization token for builtInLibraryCache != -1)
  {
    swift_once();
  }

  return &static GraphCompiler.builtInLibraryCache;
}

id one-time initialization function for shaderGraphBundle()
{
  type metadata accessor for SGGraph();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  static GraphCompiler.shaderGraphBundle = result;
  return result;
}

uint64_t *GraphCompiler.shaderGraphBundle.unsafeMutableAddressor()
{
  if (one-time initialization token for shaderGraphBundle != -1)
  {
    swift_once();
  }

  return &static GraphCompiler.shaderGraphBundle;
}

id static GraphCompiler.shaderGraphBundle.getter()
{
  if (one-time initialization token for shaderGraphBundle != -1)
  {
    swift_once();
  }

  v1 = static GraphCompiler.shaderGraphBundle;

  return v1;
}

uint64_t GraphCompiler.signposter.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GraphCompiler() + 20);
  v4 = type metadata accessor for OSSignposter();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void closure #1 in GraphCompiler.compile(for:options:)(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X4>, unint64_t *a4@<X8>)
{
  v26[2] = *MEMORY[0x277D85DE8];
  v7 = specialized OrderedDictionary.subscript.getter(a2, *a1, a1[1], a1[2]);
  if (v7)
  {
    *a4 = v7;
  }

  else
  {
    v23 = a4;
    v24 = a3;
    _StringGuts.grow(_:)(17);

    v26[0] = 0x4C6E49746C697562;
    v26[1] = 0xEF5F797261726269;
    v25 = a2;
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266771550](v8);

    v9 = *(type metadata accessor for GraphCompiler() + 20);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v26[0] = v11;
    *v10 = 136315138;
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x4C6E49746C697562, 0xEF5F797261726269, v26);

    *(v10 + 4) = v12;
    v13 = OSSignposter.logHandle.getter();
    v14 = static os_signpost_type_t.begin.getter();
    v15 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_265D7D000, v13, v14, v15, "waitingOnMetal", "%s", v10, 0xCu);
    if (one-time initialization token for shaderGraphBundle != -1)
    {
      swift_once();
    }

    v25 = 0;
    v16 = [v24 newDefaultLibraryWithBundle:static GraphCompiler.shaderGraphBundle error:&v25];
    v17 = v25;
    if (v16)
    {
      v18 = static os_signpost_type_t.end.getter();
      v19 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&dword_265D7D000, v13, v18, v19, "waitingOnMetal", "%s", v10, 0xCu);

      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      MEMORY[0x266773120](v11, -1, -1);
      MEMORY[0x266773120](v10, -1, -1);
      v20 = swift_unknownObjectRetain();
      specialized OrderedDictionary.subscript.setter(v20, a2);
      *v23 = v16;
    }

    else
    {
      v21 = v17;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

void GraphCompiler.convertColorConstants(to:in:)(CGColorSpace *a1, uint64_t a2)
{
  v20 = a2;
  if (a1)
  {
    v3 = a1;
  }

  else
  {
    v4 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF490]);
    if (!v4)
    {
      lazy protocol witness table accessor for type GraphCompilerErrors and conformance GraphCompilerErrors();
      swift_allocError();
      *v17 = xmmword_265F23D80;
      *(v17 + 16) = 3;
      swift_willThrow();
      return;
    }

    v3 = v4;
    a1 = 0;
  }

  v5 = *(v20 + 64);
  v6 = *(v5 + 16);
  v7 = a1;

  if (v6)
  {
    v8 = 0;
    while (v8 < v6)
    {
      v10 = v5 + 32 + 48 * v8;
      v11 = *(v10 + 24);
      if (v11 == -7)
      {
        v9 = __OFADD__(v8++, 1);
        if (v9)
        {
          goto LABEL_18;
        }

        if (v8 >= v6)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v9 = __OFADD__(v8++, 1);
        if (v9)
        {
          goto LABEL_19;
        }

        v12 = *(v10 + 8);
        v13 = *(v10 + 16);
        v14 = *v10;
        v15 = *(v10 + 40);
        v16 = *(v10 + 32);
        v18[0] = v14;
        v18[1] = v12;
        v18[2] = v13;
        v18[3] = v11;
        v18[4] = v16;
        v19 = v15;
        outlined copy of NodePersonality(v14);

        closure #1 in UserGraph.convertColors(to:)(v18, v3, v20);
        outlined consume of NodePersonality(v14);
        if (v2)
        {

          return;
        }

        if (v8 >= v6)
        {
          goto LABEL_14;
        }
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_14:
  }
}

void GraphCompiler.extractSamplerNodes(in:into:device:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = v4;
  v111 = a3;
  v128 = a2;
  v110 = a1;
  v7 = *(a1 + 64);
  v8 = *(v7 + 16);

  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  while (v9 < v8)
  {
    v11 = (v7 + 72 + 48 * v9);
    v12 = v9;
    while (1)
    {
      if (v9 >= v8)
      {
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
        goto LABEL_75;
      }

      v5 = *(v11 - 2);
      if (v5 != -7)
      {
        break;
      }

      ++v12;
      v11 += 48;
      if (v8 == v12)
      {
        goto LABEL_15;
      }
    }

    v9 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      goto LABEL_77;
    }

    if (*(v11 - 5) == 0xE000000000000008)
    {
      v13 = *(v11 - 4);
      v14 = *(v11 - 3);
      v109 = *(v11 - 1);
      LODWORD(v108) = *v11;
      v107 = v13;

      v106 = v14;

      *&v112 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 16) + 1, 1);
        v10 = v112;
      }

      v16 = *(v10 + 16);
      v15 = *(v10 + 24);
      v17 = v16 + 1;
      if (v16 >= v15 >> 1)
      {
        v104 = *(v10 + 16);
        *&v105 = v3;
        v20 = v16 + 1;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1);
        v17 = v20;
        v16 = v104;
        v10 = v112;
      }

      *(v10 + 16) = v17;
      v18 = v10 + 48 * v16;
      v19 = v107;
      *(v18 + 32) = 0xE000000000000008;
      *(v18 + 40) = v19;
      *(v18 + 48) = v106;
      *(v18 + 56) = v5;
      *(v18 + 64) = v109;
      *(v18 + 72) = v108;
    }
  }

LABEL_15:

  MEMORY[0x28223BE20](v21);
  v98 = v3;
  v99 = v110;
  v22 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay11ShaderGraph0dE4NodeVG_SS_AHtsAE_pTg5(partial apply for closure #2 in GraphCompiler.extractSamplerNodes(in:into:device:), &v97, v10);
  v5 = v6;
  if (v6)
  {

    return;
  }

  v103 = v22;

  if (one-time initialization token for samplerCache != -1)
  {
    goto LABEL_78;
  }

  while (1)
  {
    v24 = static GraphCompiler.samplerCache;
    MEMORY[0x28223BE20](v23);
    v98 = v103;
    v99 = v111;
    os_unfair_lock_lock(v24 + 10);
    partial apply for closure #3 in GraphCompiler.extractSamplerNodes(in:into:device:)(&v24[4], &v112);
    v25 = v128;
    v109 = v5;
    v26 = v24 + 10;
    if (v5)
    {
      break;
    }

    os_unfair_lock_unlock(v26);
    v111 = v112;
    v108 = *(v112 + 16);
    if (v108)
    {
      v27 = 0;
      v107 = v111 + 32;
      do
      {
        if (v27 >= *(v111 + 16))
        {
          goto LABEL_72;
        }

        v30 = (v107 + 24 * v27);
        v31 = *v30;
        v32 = v30[1];
        v33 = v30[2];
        v35 = *v25;
        v34 = v25[1];
        v36 = *(v34 + 16);
        if (v35)
        {
          v37 = v30[1];

          swift_unknownObjectRetain();

          v38 = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(v31, v32, v34 + 32, v36, (v35 + 16), v35 + 32);
          v5 = v39;
          v41 = v40;

          if (v5)
          {
            goto LABEL_38;
          }
        }

        else
        {
          if (!v36)
          {
LABEL_37:

            swift_unknownObjectRetain();
            v41 = 0;
LABEL_38:
            v43 = v41;
            v25 = v128;
            specialized OrderedSet._appendNew(_:in:)(v31, v32, v43);

            v48 = v25[2];
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v25[2] = v48;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v48 + 2) + 1, 1);
              v48 = v25[2];
            }

            v5 = *(v48 + 2);
            v28 = *(v48 + 3);
            if (v5 >= v28 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v5 + 1, 1);
              v48 = v25[2];
            }

            *(v48 + 2) = v5 + 1;
            v29 = &v48[16 * v5];
            *(v29 + 4) = v33;
            v29[40] = 1;
            goto LABEL_24;
          }

          v38 = 0;
          v5 = v34 + 40;
          while (1)
          {
            v42 = *(v5 - 8) == v31 && *v5 == v32;
            if (v42 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }

            ++v38;
            v5 += 16;
            if (v36 == v38)
            {
              goto LABEL_37;
            }
          }

          swift_unknownObjectRetain();
        }

        v25 = v128;
        v48 = *(v128 + 16);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v48 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v48);
        }

        if ((v38 & 0x8000000000000000) != 0)
        {
          goto LABEL_73;
        }

        if (v38 >= *(v48 + 2))
        {
          goto LABEL_74;
        }

        v45 = &v48[16 * v38];
        v46 = *(v45 + 4);
        v47 = v45[40];
        *(v45 + 4) = v33;
        v45[40] = 1;
        outlined consume of MetalLibrary(v46, v47);
LABEL_24:
        ++v27;
        v25[2] = v48;
      }

      while (v27 != v108);
    }

    v49 = v103;
    v101 = *(v103 + 16);
    if (!v101)
    {
LABEL_70:

      return;
    }

    v50 = 0;
    v100 = v103 + 32;
    while (v50 < *(v49 + 16))
    {
      v51 = v100 + (v50 << 6);
      v52 = v25;
      v54 = *v51;
      v53 = *(v51 + 8);
      v56 = *(v51 + 24);
      v57 = *(v51 + 32);
      v58 = *(v51 + 56);
      *&v123 = *(v51 + 16);
      v55 = v123;
      *(&v123 + 1) = v56;
      *v124 = v57;
      v105 = *(v51 + 40);
      *&v124[8] = v105;
      v125 = v58;
      v59 = *v52;
      v60 = v52[1];
      v61 = v52[2];

      v111 = v55;
      outlined copy of NodePersonality(v55);
      v106 = v56;
      v62 = v57;
      v63 = v54;

      v64 = specialized OrderedDictionary.subscript.getter(v54, v53, v59, v60, v61);
      v104 = v50;
      if (v65 == -1)
      {
        v66 = v110[9];
        v126[8] = v110[8];
        v127[0] = v66;
        v5 = &v123;
        *(v127 + 9) = *(v110 + 153);
        v67 = v110[5];
        v126[4] = v110[4];
        v126[5] = v67;
        v68 = v110[7];
        v126[6] = v110[6];
        v126[7] = v68;
        v69 = v110[1];
        v126[0] = *v110;
        v126[1] = v69;
        v70 = v110[3];
        v126[2] = v110[2];
        v126[3] = v70;
        outlined init with copy of UserGraph(v126, &v112);
        v71 = v109;
        v72 = GraphCompiler.extract(node:from:withName:)(&v123, v126, v54, v53);
        outlined destroy of UserGraph(v126);
        v109 = v71;
        if (v71)
        {

          outlined consume of NodePersonality(v111);

          goto LABEL_70;
        }

        v73 = v54;
        v25 = v128;
        specialized OrderedDictionary.subscript.setter(v72, 0, v73, v53);
      }

      else
      {
        v5 = &v123;
        outlined consume of MetalLibrary?(v64, v65);
        v25 = v128;
      }

      v74 = *(v62 + 16);
      v107 = v53;
      v108 = v62;
      if (v74)
      {
        v102 = v63;
        *&v112 = MEMORY[0x277D84F90];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v74, 0);
        v75 = v112;
        v76 = (v62 + 56);
        do
        {
          v78 = *(v76 - 2);
          v77 = *(v76 - 1);
          v79 = *v76;
          *&v112 = v75;
          v81 = *(v75 + 16);
          v80 = *(v75 + 24);

          if (v81 >= v80 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v80 > 1), v81 + 1, 1);
            v75 = v112;
          }

          *(v75 + 16) = v81 + 1;
          v82 = (v75 + 24 * v81);
          v82[4] = v77;
          v82[5] = v79;
          v82[6] = v78;
          v76 += 7;
          --v74;
        }

        while (v74);
        v83 = v75;
        v5 = &v123;
        v25 = v128;
        v53 = v107;
        v62 = v108;
        v63 = v102;
      }

      else
      {
        v83 = MEMORY[0x277D84F90];
      }

      v84 = swift_allocObject();
      *(v84 + 16) = v63;
      *(v84 + 24) = v53;
      specialized ShaderGraphNode.output(labeled:)(&v116, 7632239, 0xE300000000000000, v62);
      v85 = v117;
      if (!v117)
      {
        goto LABEL_68;
      }

      v121 = v118;

      outlined destroy of String(&v121);
      *(v84 + 32) = v85;
      v86 = v62;
      v87 = v110;
      UserGraph.insertNode(inputs:outputs:shaderGraphData:)(MEMORY[0x277D84F90], v83, v84 | 0x2000000000000000, &v119);

      v84 = *(&v119 + 1);
      v88 = v111;
      outlined copy of NodePersonality(v111);
      v89 = v106;

      v90 = v109;
      specialized Sequence.forEach(_:)(v84, v89, v87);
      outlined consume of NodePersonality(v88);

      v91 = v120;
      outlined copy of NodePersonality(v88);

      specialized Sequence.forEach(_:)(v91, v86, v87);
      v109 = v90;
      outlined consume of NodePersonality(v88);

      v5 = v105;
      specialized UserGraph.removeEdges(connectedTo:)(v105);
      v92 = *(v87 + 64);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        if ((v5 & 0x8000000000000000) != 0)
        {
          goto LABEL_67;
        }
      }

      else
      {
        v92 = specialized _ArrayBuffer._consumeAndCreateNew()(v92);
        if ((v5 & 0x8000000000000000) != 0)
        {
LABEL_67:
          __break(1u);
LABEL_68:
          v114 = 0;
          v115 = 0xE000000000000000;

          MEMORY[0x266771550](7632239, 0xE300000000000000);
          MEMORY[0x266771550](32, 0xE100000000000000);
          v112 = v123;
          v113[0] = *v124;
          *(v113 + 9) = *(v5 + 25);
          _print_unlocked<A, B>(_:_:)();
          v93 = v114;
          v94 = v115;
          lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
          swift_allocError();
          *v95 = 14;
          *(v95 + 8) = v93;
          *(v95 + 16) = v94;
          swift_willThrow();

          v96 = *(v84 + 24);

          swift_deallocUninitializedObject();

          outlined consume of NodePersonality(v111);

          return;
        }
      }

      if (v5 >= *(v92 + 2))
      {
        goto LABEL_76;
      }

      v50 = v104 + 1;
      ShaderGraphNode.update(id:)(-7);
      v122 = v119;
      outlined destroy of NodePersonality(&v122);

      outlined consume of NodePersonality(v111);

      *(v110 + 8) = v92;
      v49 = v103;
      if (v50 == v101)
      {
        goto LABEL_70;
      }
    }

LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    v23 = swift_once();
  }

  os_unfair_lock_unlock(v26);
  __break(1u);
}

uint64_t GraphCompiler.replaceGettersWithFunctionCalls(in:)(uint64_t a1)
{
  v3 = *(*(a1 + 64) + 16);

  if (v3)
  {
    v5 = 0;
    v6 = result + 32;
    while (v5 < v3)
    {
      v8 = v6 + 48 * v5;
      v9 = *(v8 + 24);
      if (v9 == -7)
      {
        v7 = __OFADD__(v5++, 1);
        if (v7)
        {
          goto LABEL_13;
        }

        if (v5 >= v3)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v7 = __OFADD__(v5++, 1);
        if (v7)
        {
          goto LABEL_14;
        }

        v10 = *(v8 + 8);
        v11 = *(v8 + 16);
        v12 = *v8;
        v13 = *(v8 + 40);
        v14 = *(v8 + 32);
        v15[0] = v12;
        v15[1] = v10;
        v15[2] = v11;
        v15[3] = v9;
        v15[4] = v14;
        v16 = v13;
        outlined copy of NodePersonality(v12);

        closure #1 in GraphCompiler.replaceGettersWithFunctionCalls(in:)(v15, a1, &v17);
        outlined consume of NodePersonality(v12);
        if (v1)
        {
        }

        if (v5 >= v3)
        {
          goto LABEL_10;
        }
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
  }

  else
  {
LABEL_10:

    return v17;
  }

  return result;
}

char *GraphCompiler.functionGraph(for:)(__int128 *a1)
{
  type metadata accessor for UserGraphCompiler();
  v3 = swift_allocObject();
  _s11ShaderGraph04UserB8CompilerC14CompileContextVSgWOi0_(v45);
  v4 = v45[11];
  *(v3 + 176) = v45[10];
  *(v3 + 192) = v4;
  *(v3 + 208) = v46;
  v5 = v45[7];
  *(v3 + 112) = v45[6];
  *(v3 + 128) = v5;
  v6 = v45[9];
  *(v3 + 144) = v45[8];
  *(v3 + 160) = v6;
  v7 = v45[3];
  *(v3 + 48) = v45[2];
  *(v3 + 64) = v7;
  v8 = v45[5];
  *(v3 + 80) = v45[4];
  *(v3 + 96) = v8;
  v9 = v45[1];
  *(v3 + 16) = v45[0];
  *(v3 + 32) = v9;
  type metadata accessor for MetalShaderProgram();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D84F90];
  v10[2] = MEMORY[0x277D84F90];
  v10[3] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC11ShaderGraph14FunctionNodeIDV_AC05MetaleF0_pTt0g5Tf4g_n(v11);
  v10[4] = v11;
  v10[5] = v11;
  v10[6] = 1;
  v12 = UserGraphCompiler.compile(sourceProgram:into:)(a1, v10);
  if (v1)
  {

LABEL_38:

    return v12;
  }

  v38 = v12;
  v13 = MetalShaderProgram.terminalNodes()();
  v47 = v11;
  v14 = *(v13 + 2);
  v39 = v13;
  if (v14)
  {
    v15 = (v13 + 32);
    v41 = MEMORY[0x277D84F90];
    do
    {
      outlined init with copy of MetalFunctionNode(v15, v44);
      outlined init with take of MetalFunctionNode(v44, v43);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ShaderGraph17MetalFunctionNode_pMd, &_s11ShaderGraph17MetalFunctionNode_pMR);
      type metadata accessor for RESurfaceShaderFunctionNode();
      if ((swift_dynamicCast() & 1) != 0 && v43[5])
      {
        MEMORY[0x266771770]();
        if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v42 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v41 = v47;
      }

      v15 += 40;
      --v14;
    }

    while (v14);
  }

  else
  {
    v41 = v11;
  }

  v16 = *(v39 + 2);

  v17 = v41;
  if (v41 >> 62)
  {
LABEL_25:
    v23 = v17;
    if (v16 == __CocoaSet.count.getter())
    {
      v24 = __CocoaSet.count.getter();
      v17 = v23;
      v18 = v24;
      v40 = v16;
      if (v24)
      {
        goto LABEL_15;
      }

      goto LABEL_27;
    }

LABEL_37:

    lazy protocol witness table accessor for type GraphCompilerErrors and conformance GraphCompilerErrors();
    swift_allocError();
    *v35 = 0;
    *(v35 + 8) = 0;
    *(v35 + 16) = 3;
    swift_willThrow();

    v12 = v38;
    goto LABEL_38;
  }

  v18 = v16;
  if (v16 != *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_37;
  }

  v40 = v16;
  if (v16)
  {
LABEL_15:
    v19 = 0;
    v16 = v17 & 0xC000000000000001;
    v20 = v17 & 0xFFFFFFFFFFFFFF8;
    do
    {
      if (v16)
      {
        v21 = MEMORY[0x266772030](v19, v17);
        v22 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
LABEL_23:
          __break(1u);

          v12 = v38;

          goto LABEL_38;
        }
      }

      else
      {
        if (v19 >= *(v20 + 16))
        {
          __break(1u);
          goto LABEL_25;
        }

        v21 = *(v17 + 8 * v19 + 32);

        v22 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          goto LABEL_23;
        }
      }

      *&v44[0] = v21;
      closure #2 in GraphCompiler.functionGraph(for:)(v44, v38);

      ++v19;
      v17 = v41;
    }

    while (v22 != v18);
  }

LABEL_27:
  if (!v40)
  {

    v28 = MEMORY[0x277D84F90];
LABEL_41:
    _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC11ShaderGraph14FunctionNodeIDV_SayAFGTt0g5Tf4g_n(v28);

    v37.n128_f64[0] = MEMORY[0x28223BE20](v36);
    v12 = v38;
    (*(*v38 + 288))(partial apply for closure #3 in GraphCompiler.functionGraph(for:), v37);

    return v12;
  }

  v25 = v17;
  v43[0] = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v40 & ~(v40 >> 63), 0);
  if ((v40 & 0x8000000000000000) == 0)
  {
    v27 = 0;
    v28 = v43[0];
    v29 = v25;
    v30 = v25 & 0xC000000000000001;
    do
    {
      if (v30)
      {
        v31 = MEMORY[0x266772030](v27, v29);
      }

      else
      {
        v31 = *(v29 + 8 * v27 + 32);
      }

      swift_beginAccess();
      v32 = *(v31 + 88);

      v43[0] = v28;
      v34 = *(v28 + 16);
      v33 = *(v28 + 24);
      if (v34 >= v33 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1);
        v28 = v43[0];
      }

      ++v27;
      *(v28 + 16) = v34 + 1;
      *(v28 + 8 * v34 + 32) = v32;
      v29 = v41;
    }

    while (v40 != v27);

    goto LABEL_41;
  }

  __break(1u);
  return result;
}

uint64_t closure #6 in GraphCompiler.compile(for:options:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = *(result + 16);
  if (*(v6 + 16) <= 0x1000uLL)
  {
    goto LABEL_5;
  }

  if (*(*(result + 8) + 16) < 0xC00uLL)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  result = specialized OrderedSet.removeSubrange(_:)(0, 3072);
  if (*(v6 + 16) < 0xC00uLL)
  {
LABEL_29:
    __break(1u);
    return result;
  }

  result = specialized ContiguousArray.replaceSubrange<A>(_:with:)(0, 3072);
LABEL_5:
  v25 = *(a2 + 16);
  if (!v25)
  {
    return result;
  }

  v7 = 0;
  v23 = v5;
  v24 = a2 + 32;
  while (1)
  {
    v9 = (v24 + 24 * v7);
    v10 = *v9;
    v11 = v9[1];
    v12 = v9[2];
    v14 = *v5;
    v13 = v5[1];
    v26 = v5[2];
    v15 = *(v13 + 16);
    if (*v5)
    {
      break;
    }

    if (v15)
    {
      v16 = 0;
      v19 = (v13 + 48);
      while (1)
      {
        if (*(v19 - 2) == a3)
        {
          v20 = *(v19 - 1) == v10 && *v19 == v11;
          if (v20 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }
        }

        ++v16;
        v19 += 3;
        if (v15 == v16)
        {
          goto LABEL_7;
        }
      }

      swift_bridgeObjectRetain_n();
      swift_unknownObjectRetain();
      goto LABEL_24;
    }

LABEL_7:
    swift_bridgeObjectRetain_n();
    swift_unknownObjectRetain();
LABEL_8:
    v8 = swift_unknownObjectRetain();
    v5 = v23;
    specialized OrderedDictionary.subscript.setter(v8, a3, v10, v11);
    swift_unknownObjectRelease();

LABEL_9:
    if (++v7 == v25)
    {
      return result;
    }
  }

  swift_bridgeObjectRetain_n();
  swift_unknownObjectRetain();

  v16 = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(a3, v10, v11, v13 + 32, v15, (v14 + 16), v14 + 32);
  v18 = v17;

  if (v18)
  {
    goto LABEL_8;
  }

  if ((v16 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_28;
  }

LABEL_24:
  v21 = *(v26 + 16);
  swift_unknownObjectRelease();
  result = swift_bridgeObjectRelease_n();
  v22 = v16 >= v21;
  v5 = v23;
  if (!v22)
  {
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t closure #2 in GraphCompiler.functionGraph(for:)(void *a1, uint64_t a2)
{
  v5 = *a1;
  v41 = type metadata accessor for RESurfaceShaderFunctionNode();
  v42 = &protocol witness table for RESurfaceShaderFunctionNode;
  *&v40 = v5;

  v6 = MetalShaderProgram.topologicalSort(from:)(&v40);
  result = __swift_destroy_boxed_opaque_existential_1Tm(&v40);
  if (!v2)
  {
    v38 = a2;
    v43 = MEMORY[0x277D84F90];
    v8 = *(v6 + 16);
    if (v8)
    {
      v3 = v6 + 32;
      v9 = MEMORY[0x277D84F90];
      do
      {
        outlined init with copy of MetalFunctionNode(v3, &v40);
        outlined init with take of MetalFunctionNode(&v40, v39);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ShaderGraph17MetalFunctionNode_pMd, &_s11ShaderGraph17MetalFunctionNode_pMR);
        type metadata accessor for MetalFunctionParameterNode();
        if ((swift_dynamicCast() & 1) != 0 && v39[5])
        {
          MEMORY[0x266771770]();
          if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v10 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v9 = v43;
        }

        v3 += 40;
        --v8;
      }

      while (v8);
    }

    else
    {

      v9 = MEMORY[0x277D84F90];
    }

    v39[0] = MEMORY[0x277D84FA0];
    if (v9 >> 62)
    {
      goto LABEL_24;
    }

    for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
    {
      v3 = 0;
      while ((v9 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x266772030](v3, v9);
        v13 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          goto LABEL_22;
        }

LABEL_18:
        v14 = (*(*v12 + 160))();
        specialized Set._Variant.insert(_:)(&v40, v14, v15);

        ++v3;
        if (v13 == i)
        {
          goto LABEL_25;
        }
      }

      if (v3 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_23;
      }

      v12 = *(v9 + 8 * v3 + 32);

      v13 = v3 + 1;
      if (!__OFADD__(v3, 1))
      {
        goto LABEL_18;
      }

LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      ;
    }

LABEL_25:

    v16 = *(v39[0] + 16);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS4name_11ShaderGraph13MetalDataTypeC4typetGMd, &_ss23_ContiguousArrayStorageCySS4name_11ShaderGraph13MetalDataTypeC4typetGMR);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_265F1F670;
    v18 = v5[5];
    v19 = v5[6];
    *(v17 + 32) = v5[4];
    *(v17 + 40) = v18;
    *(v17 + 48) = v19;
    v20 = v5[8];
    if (!v20)
    {

      goto LABEL_33;
    }

    v3 = v5[7];
    v21 = v5[9];

    outlined copy of (name: String, type: MetalDataType)?(v3, v20);
    if (v16 <= 1)
    {

      goto LABEL_33;
    }

    v22 = one-time initialization token for uint8;

    if (v22 != -1)
    {
      goto LABEL_39;
    }

    while (1)
    {
      type metadata accessor for MetalDataType.Pointer();
      swift_allocObject();

      v24 = specialized MetalDataType.Pointer.init(to:isConst:addressSpace:)(v23, 0, 0);

      v26 = *(v17 + 16);
      v25 = *(v17 + 24);
      if (v26 >= v25 >> 1)
      {
        v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1, v17);
      }

      *(v17 + 16) = v26 + 1;
      v27 = (v17 + 24 * v26);
      v27[4] = v3;
      v27[5] = v20;
      v27[6] = v24;
LABEL_33:
      if (one-time initialization token for void != -1)
      {
        swift_once();
      }

      v28 = *(v38 + 48);
      if (!__OFADD__(v28, 1))
      {
        break;
      }

      __break(1u);
LABEL_39:
      swift_once();
    }

    v29 = v5[2];
    v30 = v5[3];
    v31 = static MetalDataType.void;
    *(v38 + 48) = v28 + 1;
    type metadata accessor for MetalFunctionDefinitionNode();
    v32 = swift_allocObject();
    v32[4] = v31;
    v32[5] = v29;
    v32[6] = v30;
    v32[7] = 0;
    v32[8] = 0xE000000000000000;
    v32[9] = v17;
    v33 = MEMORY[0x277D84F90];
    v32[2] = v28;
    v32[3] = v33;

    v34 = specialized MetalShaderProgram.add<A>(_:)(v32);

    (*(*v34 + 208))(0x6863746974735B5BLL, 0xEE005D5D656C6261);
    (*(*v34 + 232))(v17);
    swift_beginAccess();
    v35 = v5[12];
    v36 = *(*v34 + 160);

    v36(v37);
  }

  return result;
}

BOOL closure #3 in GraphCompiler.functionGraph(for:)(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = (*(v4 + 24))(v3, v4);
  return (specialized Set.contains(_:)(v5, a2) & 1) == 0;
}

uint64_t closure #1 in GraphCompiler.replaceGettersWithFunctionCalls(in:)(uint64_t result, uint64_t a2, void *a3)
{
  v3 = *result;
  if (*result >> 61 == 4)
  {
    v4 = *(result + 8);
    if (v4[2])
    {
      v57 = *(result + 16);
      v56 = *(result + 24);
      v5 = *(result + 32);
      v6 = *(result + 40);
      v7 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v8 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v9 = v4[5];
      v10 = v4[7];
      type metadata accessor for MetalDataType();
      result = swift_dynamicCastClass();
      if (result)
      {
        swift_retain_n();

        DataType.subscript.getter(v7, v8, &v64);

        if (!v65)
        {
        }

        v51 = v3;
        v52 = v65;
        v53 = v4;
        v11 = v64;
        v12 = v66;
        v13 = v67;
        specialized ShaderGraphNode.output(labeled:)(&v68, 7632239, 0xE300000000000000, v57);
        if (v69)
        {
          v50 = v69;
          v48 = v11;
          v79 = v70;
          outlined destroy of String(&v79);
          type metadata accessor for MetalDataType.Struct();
          v14 = swift_dynamicCastClass();
          if (v14)
          {
            v15 = v14;
            v47 = v13;
            v58 = *(v12 + 24);
            v62 = *(v12 + 32);
            lazy protocol witness table accessor for type String and conformance String();
            StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
            v16 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
            v18 = v17;

            v59 = *(v15 + 24);
            v63 = *(v15 + 32);

            MEMORY[0x266771550](95, 0xE100000000000000);
            v19 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x266771550](v19);

            MEMORY[0x266771550](95, 0xE100000000000000);
            MEMORY[0x266771550](v16, v18);

            v20 = swift_allocObject();
            *(v20 + 16) = v59;
            *(v20 + 24) = v63;
            *(v20 + 32) = v50;
            v21 = *(v53 + 16);
            v49 = v20;
            if (v21)
            {
              v60 = MEMORY[0x277D84F90];

              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21, 0);
              v22 = v60;
              v23 = (v53 + 56);
              do
              {
                v24 = *(v23 - 2);
                v25 = *(v23 - 1);
                v26 = *v23;
                v28 = *(v60 + 16);
                v27 = *(v60 + 24);

                if (v28 >= v27 >> 1)
                {
                  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1);
                }

                *(v60 + 16) = v28 + 1;
                v29 = (v60 + 24 * v28);
                v29[4] = v25;
                v29[5] = v26;
                v29[6] = v24;
                v23 += 7;
                --v21;
              }

              while (v21);
              v20 = v49;
            }

            else
            {

              v22 = MEMORY[0x277D84F90];
            }

            v33 = v57;
            v34 = *(v57 + 16);
            v35 = MEMORY[0x277D84F90];
            if (v34)
            {
              v46 = v22;
              v61 = MEMORY[0x277D84F90];
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v34, 0);
              v35 = v61;
              v36 = (v57 + 56);
              do
              {
                v37 = *(v36 - 2);
                v38 = *(v36 - 1);
                v39 = *v36;
                v41 = *(v61 + 16);
                v40 = *(v61 + 24);

                if (v41 >= v40 >> 1)
                {
                  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v40 > 1), v41 + 1, 1);
                  v22 = v46;
                }

                *(v61 + 16) = v41 + 1;
                v42 = (v61 + 24 * v41);
                v42[4] = v38;
                v42[5] = v39;
                v42[6] = v37;
                v36 += 7;
                --v34;
              }

              while (v34);
              v33 = v57;
              v20 = v49;
            }

            UserGraph.insertNode(inputs:outputs:shaderGraphData:)(v22, v35, v20 | 0x2000000000000000, &v71);

            v43 = *(&v71 + 1);
            outlined copy of NodePersonality(v51);

            specialized Sequence.forEach(_:)(v43, v53, a2);
            outlined consume of NodePersonality(v51);

            v44 = v72;
            outlined copy of NodePersonality(v51);

            specialized Sequence.forEach(_:)(v44, v33, a2);
            outlined consume of NodePersonality(v51);

            specialized UserGraph.removeEdges(connectedTo:)(v56);
            v45 = *(a2 + 64);
            result = swift_isUniquelyReferenced_nonNull_native();
            *(a2 + 64) = v45;
            if (result)
            {
              if ((v56 & 0x8000000000000000) == 0)
              {
                goto LABEL_26;
              }
            }

            else
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew()(v45);
              v45 = result;
              *(a2 + 64) = result;
              if ((v56 & 0x8000000000000000) == 0)
              {
LABEL_26:
                if (v56 < *(v45 + 16))
                {
                  ShaderGraphNode.update(id:)(-7);
                  v77[0] = v48;
                  v77[1] = v52;
                  outlined destroy of String(v77);

                  v78 = v47;
                  outlined destroy of [Input](&v78, &_sSaySSGMd, &_sSaySSGMR);

                  v80 = v71;
                  outlined destroy of NodePersonality(&v80);

                  if (!__OFADD__(*a3, 1))
                  {
                    ++*a3;
                    return result;
                  }

LABEL_33:
                  __break(1u);
                  return result;
                }

LABEL_32:
                __break(1u);
                goto LABEL_33;
              }
            }

            __break(1u);
            goto LABEL_32;
          }

          lazy protocol witness table accessor for type GraphCompilerErrors and conformance GraphCompilerErrors();
          swift_allocError();
          *v32 = 0xD000000000000030;
          *(v32 + 8) = 0x8000000265F307D0;
          *(v32 + 16) = 2;
          swift_willThrow();

          v75[0] = v11;
          v75[1] = v52;
          outlined destroy of String(v75);

          v76 = v13;
          v31 = &v76;
        }

        else
        {
          MEMORY[0x266771550](7632239, 0xE300000000000000);
          MEMORY[0x266771550](32, 0xE100000000000000);
          _print_unlocked<A, B>(_:_:)();
          lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
          swift_allocError();
          *v30 = 14;
          *(v30 + 8) = 0;
          *(v30 + 16) = 0xE000000000000000;
          swift_willThrow();
          v73[0] = v11;
          v73[1] = v52;
          outlined destroy of String(v73);

          v74 = v13;
          v31 = &v74;
        }

        outlined destroy of [Input](v31, &_sSaySSGMd, &_sSaySSGMR);
      }
    }
  }

  return result;
}

uint64_t closure #1 in GraphCompiler.replaceMetalFunctionsWithStitchedNodes(in:)(uint64_t result, uint64_t a2)
{
  if (*result >> 61 == 1)
  {
    v42 = *result;
    v2 = *(result + 8);
    v45 = *(result + 16);
    v3 = *(result + 24);
    v4 = *((*result & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v5 = *((*result & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    v6 = *((*result & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
    v7 = "ND_realitykit_min_lod_clamp";
    v8 = 0xD000000000000012;
    if (v4 == 1935763810 && v5 == 0xE400000000000000)
    {
      v13 = 0xD000000000000012;
      goto LABEL_18;
    }

    v10 = *((*result & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v11 = *((*result & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    if (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || ((v7 = "ND_realitykit_level", v8 = 0xD00000000000001BLL, v4 == 0x5F646F6C5F6E696DLL) ? (v12 = v5 == 0xED0000706D616C63) : (v12 = 0), v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (v7 = "ND_realitykit_gradient2d", v8 = 0xD000000000000013, v4 == 0x6C6576656CLL) && v5 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)()))
    {
      v13 = v8;
      goto LABEL_18;
    }

    v7 = "ND_realitykit_gradient3d";
    if (v4 == 0x746E656964617267 && v5 == 0xEA00000000006432 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (v7 = "ND_realitykit_gradientcube", v4 == 0x746E656964617267) && v5 == 0xEA00000000006433 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v13 = 0xD000000000000018;
      goto LABEL_18;
    }

    v7 = "_graphCompiler_final";
    v13 = 0xD00000000000001ALL;
    if (v4 == 0x746E656964617267 && v5 == 0xEC00000065627563 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
    {
LABEL_18:
      v41 = v3;
      v39 = v7 | 0x8000000000000000;
      v40 = v2;
      v14 = *(v2 + 16);
      v44 = v13;
      if (v14)
      {
        *&v46 = MEMORY[0x277D84F90];
        v15 = v6;

        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14, 0);
        v16 = v46;
        v17 = (v2 + 56);
        do
        {
          v18 = *(v17 - 2);
          v19 = *(v17 - 1);
          v20 = *v17;
          *&v46 = v16;
          v22 = *(v16 + 16);
          v21 = *(v16 + 24);

          if (v22 >= v21 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1);
            v16 = v46;
          }

          *(v16 + 16) = v22 + 1;
          v23 = (v16 + 24 * v22);
          v23[4] = v19;
          v23[5] = v20;
          v23[6] = v18;
          v17 += 7;
          --v14;
        }

        while (v14);
        v6 = v15;
      }

      else
      {

        v16 = MEMORY[0x277D84F90];
      }

      v24 = v45;
      v25 = *(v45 + 16);
      v26 = MEMORY[0x277D84F90];
      if (v25)
      {
        v38 = v16;
        *&v46 = MEMORY[0x277D84F90];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v25, 0);
        v26 = v46;
        v27 = (v45 + 56);
        do
        {
          v28 = *(v27 - 2);
          v29 = *(v27 - 1);
          v30 = *v27;
          *&v46 = v26;
          v32 = *(v26 + 16);
          v31 = *(v26 + 24);

          if (v32 >= v31 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1);
            v16 = v38;
            v26 = v46;
          }

          *(v26 + 16) = v32 + 1;
          v33 = (v26 + 24 * v32);
          v33[4] = v29;
          v33[5] = v30;
          v33[6] = v28;
          v27 += 7;
          --v25;
        }

        while (v25);
        v13 = v44;
        v24 = v45;
      }

      v34 = swift_allocObject();
      *(v34 + 16) = v13;
      *(v34 + 24) = v39;
      *(v34 + 32) = v6;

      UserGraph.insertNode(inputs:outputs:shaderGraphData:)(v16, v26, v34 | 0x2000000000000000, &v46);

      v35 = *(&v46 + 1);
      outlined copy of NodePersonality(v42);

      specialized Sequence.forEach(_:)(v35, v40, a2);
      outlined consume of NodePersonality(v42);

      v36 = v47;
      outlined copy of NodePersonality(v42);

      specialized Sequence.forEach(_:)(v36, v24, a2);
      outlined consume of NodePersonality(v42);

      specialized UserGraph.removeEdges(connectedTo:)(v41);
      v37 = *(a2 + 64);
      result = swift_isUniquelyReferenced_nonNull_native();
      *(a2 + 64) = v37;
      if (result)
      {
        if ((v41 & 0x8000000000000000) == 0)
        {
          goto LABEL_33;
        }
      }

      else
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew()(v37);
        v37 = result;
        *(a2 + 64) = result;
        if ((v41 & 0x8000000000000000) == 0)
        {
LABEL_33:
          if (v41 < *(v37 + 16))
          {
            ShaderGraphNode.update(id:)(-7);
            v48 = v46;
            outlined destroy of NodePersonality(&v48);
          }

LABEL_49:
          __break(1u);
          return result;
        }
      }

      __break(1u);
      goto LABEL_49;
    }
  }

  return result;
}

uint64_t closure #2 in GraphCompiler.samplerName(for:in:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v6 = *a1;
  v7 = *a1 >> 61;
  if (v7 != 1)
  {
    if (!v7)
    {
      v9 = *(v6 + 16);
      v8 = *(v6 + 24);
      v69 = *(v6 + 32);
      v71 = *(v6 + 48);
      v72 = *(v6 + 64);
      v10 = *(v6 + 80);
      if (v10 != 6)
      {
        *&v73 = 0;
        *(&v73 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(25);
        v68 = v73;
        MEMORY[0x266771550](0xD000000000000017, 0x8000000265F30A20);
        *&v73 = v9;
        *(&v73 + 1) = v8;
        v74 = v69;
        v75 = v71;
        v76 = v72;
        v77 = v10;
        _print_unlocked<A, B>(_:_:)();
        lazy protocol witness table accessor for type GraphCompilerErrors and conformance GraphCompilerErrors();
        v34 = swift_allocError();
        *v35 = v68;
        *(v35 + 16) = 0;
        result = swift_willThrow();
        *a2 = v34;
        return result;
      }

      v11 = *(v6 + 88);
      *&v73 = 0;
      *(&v73 + 1) = 0xE000000000000000;
      result = (*(*v11 + 144))();
      if (result)
      {
        v13 = *(result + 24);
        v14 = *(result + 32);

        MEMORY[0x266771550](v13, v14);

        MEMORY[0x266771550](95, 0xE100000000000000);
        result = MEMORY[0x266771550](v9, v8);
        v15 = *(&v73 + 1);
        *a3 = v73;
        a3[1] = v15;
        return result;
      }

      goto LABEL_42;
    }

    *&v73 = 0;
    *(&v73 + 1) = 0xE000000000000000;
    _print_unlocked<A, B>(_:_:)();
LABEL_16:
    lazy protocol witness table accessor for type GraphCompilerErrors and conformance GraphCompilerErrors();
    v32 = swift_allocError();
    *v33 = v73;
    *(v33 + 16) = 0;
    result = swift_willThrow();
    *a2 = v32;
    return result;
  }

  v67 = a3;
  v16 = a1[1];
  result = 0x73696E615F78616DLL;
  v17 = v6 & 0x1FFFFFFFFFFFFFFFLL;
  v19 = *(v17 + 16);
  v18 = *(v17 + 24);
  if (v19 != 0x73696E615F78616DLL || v18 != 0xEE0079706F72746FLL)
  {
    v21 = *(v17 + 16);
    v22 = *(v17 + 24);
    result = _stringCompareWithSmolCheck(_:_:expecting:)();
    if ((result & 1) == 0)
    {
      result = 0x6D616C635F646F6CLL;
      v38 = v19 == 0x6D616C635F646F6CLL && v18 == 0xE900000000000070;
      if (v38 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
      {
        if (!*(v16 + 16))
        {
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        v39 = *(v16 + 40);
        v40 = *(v16 + 48);
        v41 = *(v16 + 56);
        v42 = *(v16 + 64);
        v43 = *(v16 + 72);
        v44 = *(v16 + 80);
        v113[0] = *(v16 + 32);
        v113[1] = v39;
        v113[2] = v40;
        v113[3] = v41;
        v113[4] = v42;
        v114 = v43;
        v115 = v44;

        UserGraph.node(connectedTo:)(v113, &v83);

        if (v84)
        {
          v64 = a2;
          v65 = v84;
          if (*(v16 + 16) >= 2uLL)
          {
            v45 = v83;
            v66 = v85;
            v46 = *(v16 + 96);
            v47 = *(v16 + 104);
            v48 = *(v16 + 112);
            v49 = *(v16 + 120);
            v50 = *(v16 + 128);
            v51 = *(v16 + 136);
            v110[0] = *(v16 + 88);
            v110[1] = v46;
            v110[2] = v47;
            v110[3] = v48;
            v110[4] = v49;
            v111 = v50;
            v112 = v51;

            UserGraph.node(connectedTo:)(v110, &v86);

            v52 = v87;
            if (v87)
            {
              v53 = v86;
              v54 = v88;
              specialized GraphCompiler.floatValue(from:)(v45);
              if (v3)
              {
                v98 = v53;
                outlined destroy of NodePersonality(&v98);
                v99 = v52;
                outlined destroy of [Input](&v99, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
                v100 = v54;
                outlined destroy of [Input](&v100, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
                outlined consume of NodePersonality(v45);
                v94 = v65;
                outlined destroy of [Input](&v94, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
                v95 = v66;
                result = outlined destroy of [Input](&v95, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
                *v64 = v3;
              }

              else
              {
                specialized GraphCompiler.floatValue(from:)(v53);
                *&v73 = 0x6D616C635F646F6CLL;
                *(&v73 + 1) = 0xEA00000000005F70;
                v62 = dispatch thunk of CustomStringConvertible.description.getter();
                MEMORY[0x266771550](v62);

                MEMORY[0x266771550](95, 0xE100000000000000);
                v63 = dispatch thunk of CustomStringConvertible.description.getter();
                MEMORY[0x266771550](v63);

                outlined consume of NodePersonality(v45);
                v92 = v65;
                outlined destroy of [Input](&v92, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
                v93 = v66;
                outlined destroy of [Input](&v93, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
                outlined consume of NodePersonality(v53);
                v96 = v52;
                outlined destroy of [Input](&v96, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
                v97 = v54;
                result = outlined destroy of [Input](&v97, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
                *a3 = v73;
              }
            }

            else
            {
              _StringGuts.grow(_:)(33);

              *&v73 = 0xD00000000000001FLL;
              *(&v73 + 1) = 0x8000000265F309B0;
              MEMORY[0x266771550](v19, v18);
              lazy protocol witness table accessor for type GraphCompilerErrors and conformance GraphCompilerErrors();
              v60 = swift_allocError();
              *v61 = v73;
              *(v61 + 16) = 0;
              swift_willThrow();
              v89 = v45;
              outlined destroy of NodePersonality(&v89);
              v90 = v65;
              outlined destroy of [Input](&v90, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
              v91 = v66;
              result = outlined destroy of [Input](&v91, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
              *v64 = v60;
            }

            return result;
          }

LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
          return result;
        }

        *&v73 = 0;
        *(&v73 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(33);

        v58 = 0x8000000265F30990;
        v59 = 0xD00000000000001FLL;
      }

      else
      {
        *&v73 = 0;
        *(&v73 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(23);

        v58 = 0x8000000265F30970;
        v59 = 0xD000000000000015;
      }

      *&v73 = v59;
      *(&v73 + 1) = v58;
      MEMORY[0x266771550](v19, v18);
      goto LABEL_16;
    }
  }

  if (!*(v16 + 16))
  {
    __break(1u);
    goto LABEL_40;
  }

  v23 = *(v16 + 40);
  v24 = *(v16 + 48);
  v25 = *(v16 + 56);
  v26 = *(v16 + 64);
  v27 = *(v16 + 72);
  v28 = *(v16 + 80);
  v107[0] = *(v16 + 32);
  v107[1] = v23;
  v107[2] = v24;
  v107[3] = v25;
  v107[4] = v26;
  v108 = v27;
  v109 = v28;

  UserGraph.node(connectedTo:)(v107, &v78);

  v29 = v79;
  if (v79)
  {
    v30 = v78;
    v31 = v80;
    specialized GraphCompiler.constantValue(from:)(v78, v81);
    if (v3)
    {
      outlined consume of NodePersonality(v30);
      v105 = v29;
      outlined destroy of [Input](&v105, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v106 = v31;
      result = outlined destroy of [Input](&v106, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
      *a2 = v3;
      return result;
    }

    if ((SGDataTypeStorage.bitPattern.getter() & 0x100000000) == 0)
    {
      outlined init with copy of SGDataTypeStorage(v81, &v73);
      _StringGuts.grow(_:)(17);

      *&v73 = 0x73696E615F78616DLL;
      *(&v73 + 1) = 0xEF5F79706F72746FLL;
      v55 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266771550](v55);

      outlined destroy of SGDataTypeStorage(v81);
      outlined consume of NodePersonality(v30);
      v56 = v73;
      v103 = v29;
      outlined destroy of [Input](&v103, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v104 = v31;
      result = outlined destroy of [Input](&v104, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
      *v67 = v56;
      return result;
    }

    *&v70 = 0;
    *(&v70 + 1) = 0xE000000000000000;
    outlined init with copy of SGDataTypeStorage(v81, &v73);
    _StringGuts.grow(_:)(27);
    MEMORY[0x266771550](0xD000000000000018, 0x8000000265F30A00);
    v75 = v81[2];
    v76 = v81[3];
    v77 = v82;
    v73 = v81[0];
    v74 = v81[1];
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x266771550](32, 0xE100000000000000);
    lazy protocol witness table accessor for type GraphCompilerErrors and conformance GraphCompilerErrors();
    v36 = swift_allocError();
    *v57 = v70;
    *(v57 + 16) = 0;
    swift_willThrow();
    outlined destroy of SGDataTypeStorage(v81);
    outlined consume of NodePersonality(v30);
    v101 = v29;
    outlined destroy of [Input](&v101, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    v102 = v31;
    result = outlined destroy of [Input](&v102, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
  }

  else
  {
    _StringGuts.grow(_:)(40);

    *&v73 = 0xD000000000000026;
    *(&v73 + 1) = 0x8000000265F309D0;
    MEMORY[0x266771550](v19, v18);
    lazy protocol witness table accessor for type GraphCompilerErrors and conformance GraphCompilerErrors();
    v36 = swift_allocError();
    *v37 = v73;
    *(v37 + 16) = 0;
    result = swift_willThrow();
  }

  *a2 = v36;
  return result;
}

uint64_t closure #2 in GraphCompiler.extractSamplerNodes(in:into:device:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X2>, void *a3@<X3>, uint64_t a4@<X8>)
{
  v8 = *a1;
  v7 = *(a1 + 8);
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  v25 = *(a1 + 32);
  v21 = *(a1 + 40);
  v11 = a2[9];
  v23[8] = a2[8];
  v24[0] = v11;
  *(v24 + 9) = *(a2 + 153);
  v12 = a2[5];
  v23[4] = a2[4];
  v23[5] = v12;
  v13 = a2[7];
  v23[6] = a2[6];
  v23[7] = v13;
  v14 = a2[1];
  v23[0] = *a2;
  v23[1] = v14;
  v15 = a2[3];
  v23[2] = a2[2];
  v23[3] = v15;
  outlined init with copy of UserGraph(v23, v22);
  v16 = specialized GraphCompiler.samplerName(for:in:)(v7, v23);
  if (v4)
  {
    result = outlined destroy of UserGraph(v23);
    *a3 = v4;
  }

  else
  {
    v19 = v16;
    v20 = v17;
    outlined destroy of UserGraph(v23);
    *a4 = v19;
    *(a4 + 8) = v20;
    *(a4 + 16) = v8;
    *(a4 + 24) = v7;
    *(a4 + 32) = v9;
    *(a4 + 40) = v10;
    *(a4 + 48) = v25;
    *(a4 + 56) = v21;
    outlined copy of NodePersonality(v8);
  }

  return result;
}

uint64_t closure #3 in GraphCompiler.extractSamplerNodes(in:into:device:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v30 = result;
  v4 = *(a2 + 16);
  if (!v4)
  {
    v27 = MEMORY[0x277D84F90];
LABEL_27:
    *a4 = v27;
    return result;
  }

  v5 = 0;
  v29 = a2 + 32;
  v27 = MEMORY[0x277D84F90];
  v28 = *(a2 + 16);
  while (v5 < v4)
  {
    v9 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      goto LABEL_29;
    }

    v10 = (v29 + (v5 << 6));
    v12 = *v10;
    v11 = v10[1];
    v13 = v10[2];
    v14 = v10[3];
    v15 = v10[4];
    v33 = v5 + 1;

    outlined copy of NodePersonality(v13);

    v16 = [a3 registryID];
    v18 = *v30;
    v17 = v30[1];
    v32 = v30[2];
    v19 = *(v17 + 16);
    if (*v30)
    {

      v6 = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(v16, v12, v11, v17 + 32, v19, (v18 + 16), v18 + 32);
      v8 = v7;

      if (v8)
      {
        goto LABEL_4;
      }

      if ((v6 & 0x8000000000000000) != 0)
      {
        goto LABEL_30;
      }

LABEL_19:
      if (v6 >= *(v32 + 16))
      {
        goto LABEL_31;
      }

      v22 = *(v32 + 8 * v6 + 32);
      swift_unknownObjectRetain();
      outlined consume of NodePersonality(v13);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v27[2] + 1, 1, v27);
        v27 = result;
      }

      v4 = v28;
      v5 = v33;
      v24 = v27[2];
      v23 = v27[3];
      if (v24 >= v23 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1, v27);
        v27 = result;
      }

      v27[2] = v24 + 1;
      v25 = &v27[3 * v24];
      v25[4] = v12;
      v25[5] = v11;
      v25[6] = v22;
      if (v9 == v28)
      {
        goto LABEL_27;
      }
    }

    else
    {
      if (v19)
      {
        v6 = 0;
        v20 = (v17 + 48);
        do
        {
          if (*(v20 - 2) == v16)
          {
            result = *(v20 - 1);
            if (result == v12 && *v20 == v11)
            {
              goto LABEL_19;
            }

            result = _stringCompareWithSmolCheck(_:_:expecting:)();
            if (result)
            {
              goto LABEL_19;
            }
          }

          ++v6;
          v20 += 3;
        }

        while (v19 != v6);
      }

LABEL_4:

      outlined consume of NodePersonality(v13);

      v4 = v28;
      v5 = v33;
      if (v9 == v28)
      {
        goto LABEL_27;
      }
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t GraphCompiler.extract(node:from:withName:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v63 = a1;
  UserGraph.connectedUpstreamSubgraph(rootedAt:)(a1, &v85);
  v5 = v85;
  v6 = *(&v86 + 1);
  v7 = *(&v87 + 1);
  v124 = *(&v85 + 1);
  v129 = v86;
  v125 = v86;
  v126 = v87;
  v8 = MEMORY[0x277D84F90];
  v106 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC11ShaderGraph0cD4NodeV2IDV_AGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  specialized UserGraph.init(id:label:inputs:outputs:)(0, 1886217588, 0xE400000000000000, v8, v8, &v96);
  specialized Sequence.forEach(_:)(v5, &v96, &v106);
  specialized Sequence.forEach(_:)(&v124, &v106, &v96);
  type metadata accessor for UserGraphCompiler();
  v9 = swift_allocObject();
  _s11ShaderGraph04UserB8CompilerC14CompileContextVSgWOi0_(v127);
  v10 = v127[11];
  *(v9 + 176) = v127[10];
  *(v9 + 192) = v10;
  *(v9 + 208) = v128;
  v11 = v127[7];
  *(v9 + 112) = v127[6];
  *(v9 + 128) = v11;
  v12 = v127[9];
  *(v9 + 144) = v127[8];
  *(v9 + 160) = v12;
  v13 = v127[3];
  *(v9 + 48) = v127[2];
  *(v9 + 64) = v13;
  v14 = v127[5];
  *(v9 + 80) = v127[4];
  *(v9 + 96) = v14;
  v15 = v127[1];
  *(v9 + 16) = v127[0];
  *(v9 + 32) = v15;
  v122 = v104;
  v123[0] = v105[0];
  *(v123 + 9) = *(v105 + 9);
  v118 = v100;
  v119 = v101;
  v120 = v102;
  v121 = v103;
  v117[0] = v96;
  v117[1] = v97;
  v117[2] = v98;
  v117[3] = v99;
  type metadata accessor for MetalShaderProgram();
  v16 = swift_allocObject();
  v16[2] = v8;
  v16[3] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC11ShaderGraph14FunctionNodeIDV_AC05MetaleF0_pTt0g5Tf4g_n(v8);
  v16[4] = v8;
  v16[5] = v8;
  v16[6] = 1;
  v17 = UserGraphCompiler.compile(sourceProgram:into:)(v117, v16);
  if (v4)
  {

LABEL_14:
    v92 = v103;
    v93 = v104;
    v94[0] = v105[0];
    *(v94 + 9) = *(v105 + 9);
    v89 = v100;
    v90 = v101;
    v91 = v102;
    v85 = v96;
    v86 = v97;
    v87 = v98;
    v88 = v99;
    outlined destroy of UserGraph(&v85);
LABEL_15:

    return v17;
  }

  *&v59 = v5;

  v18 = v106;
  if (!*(v106 + 16))
  {
    __break(1u);
    goto LABEL_20;
  }

  v60 = v17;
  v19 = v118;
  v20 = specialized __RawDictionaryStorage.find<A>(_:)(*(v63 + 24));
  if ((v21 & 1) == 0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v22 = *(*(v18 + 56) + 8 * v20);
  if (v22 == -7)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if ((v22 & 0x8000000000000000) != 0)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v22 >= *(v19 + 16))
  {
LABEL_23:
    __break(1u);
LABEL_24:
    swift_once();
LABEL_17:
    *(v6 + 48) = static MetalDataType.void;
    v46 = v65;
    v26 = v66;
    __swift_project_boxed_opaque_existential_1(v64, v65);
    v47 = *(v26 + 2);

    v48 = v47(v46, v26);
    v17 = v60;
    v49 = *(v60 + 48);
    if (!__OFADD__(v49, 1))
    {
      v50 = v48;
      *(v60 + 48) = v49 + 1;
      type metadata accessor for MetalFunctionDefinitionNode();
      v51 = swift_allocObject();
      v51[4] = v50;
      v51[5] = a3;
      v51[6] = a4;
      v51[7] = 0;
      v51[8] = 0xE000000000000000;
      v51[9] = v6;
      v52 = MEMORY[0x277D84F90];
      v51[2] = v49;
      v51[3] = v52;

      v53 = specialized MetalShaderProgram.add<A>(_:)(v51);

      (*(*v53 + 208))(0x6863746974735B5BLL, 0xEE005D5D656C6261);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph17MetalFunctionNode_pGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph17MetalFunctionNode_pGMR);
      v54 = swift_allocObject();
      *(v54 + 16) = v59;
      outlined init with copy of MetalFunctionNode(v64, v54 + 32);
      (*(*v53 + 264))(v54);
      outlined consume of NodePersonality(v63);

      __swift_destroy_boxed_opaque_existential_1Tm(v64);
      v55 = v105[0];
      v7[8] = v104;
      v7[9] = v55;
      *(v7 + 153) = *(v105 + 9);
      v71 = v100;
      v72 = v101;
      v56 = v103;
      v7[6] = v102;
      v7[7] = v56;
      v67 = v96;
      v68 = v97;
      v69 = v98;
      v70 = v99;
      outlined destroy of UserGraph(&v67);
      goto LABEL_15;
    }

    __break(1u);
    goto LABEL_26;
  }

  v23 = v19 + 48 * v22;
  v24 = *(v23 + 40);
  v63 = *(v23 + 32);
  v25 = *(v23 + 48);
  v26 = *(v23 + 56);
  v27 = *(v23 + 64);
  v58 = *(v23 + 72);
  swift_beginAccess();
  v28 = *(v9 + 160);
  v29 = *(v9 + 192);
  v7 = &v67;
  v82 = *(v9 + 176);
  v83 = v29;
  v30 = *(v9 + 96);
  v31 = *(v9 + 128);
  v78 = *(v9 + 112);
  v79 = v31;
  v32 = *(v9 + 128);
  v33 = *(v9 + 160);
  v80 = *(v9 + 144);
  v81 = v33;
  v34 = *(v9 + 32);
  v35 = *(v9 + 64);
  v74 = *(v9 + 48);
  v75 = v35;
  v36 = *(v9 + 64);
  v37 = *(v9 + 96);
  v76 = *(v9 + 80);
  v77 = v37;
  v38 = *(v9 + 32);
  v73[0] = *(v9 + 16);
  v73[1] = v38;
  v39 = *(v9 + 192);
  v94[1] = v82;
  v94[2] = v39;
  v91 = v78;
  v92 = v32;
  v93 = v80;
  v94[0] = v28;
  v87 = v74;
  v88 = v36;
  v89 = v76;
  v90 = v30;
  v84 = *(v9 + 208);
  v95 = *(v9 + 208);
  v85 = v73[0];
  v86 = v34;
  if (getEnumTag for IOAttachment(&v85) != 1)
  {
    specialized ShaderGraphNode.output(labeled:)(&v107, 7632239, 0xE300000000000000, v25);
    if (!v108)
    {
      v64[0] = 0;
      v64[1] = 0xE000000000000000;
      outlined copy of NodePersonality(v63);

      outlined init with copy of [Input](v73, &v67, &_s11ShaderGraph04UserB8CompilerC14CompileContextVSgMd, &_s11ShaderGraph04UserB8CompilerC14CompileContextVSgMR);
      MEMORY[0x266771550](7632239, 0xE300000000000000);
      MEMORY[0x266771550](32, 0xE100000000000000);
      *&v67 = v63;
      *(&v67 + 1) = v24;
      *&v68 = v25;
      *(&v68 + 1) = v26;
      *&v69 = v27;
      BYTE8(v69) = v58;
      _print_unlocked<A, B>(_:_:)();
      lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
      swift_allocError();
      *v44 = 14;
      *(v44 + 8) = 0;
      *(v44 + 16) = 0xE000000000000000;
      swift_willThrow();

      outlined destroy of [Input](v73, &_s11ShaderGraph04UserB8CompilerC14CompileContextVSgMd, &_s11ShaderGraph04UserB8CompilerC14CompileContextVSgMR);
      outlined consume of NodePersonality(v63);

      goto LABEL_14;
    }

    v26 = v109;
    v111[0] = v107;
    v111[1] = v108;
    v112[0] = v109[0];
    v112[1] = v109[1];
    v113 = v110;
    v40 = v95;
    if (!*(v95 + 16))
    {
      goto LABEL_27;
    }

    v26 = v112;
    outlined copy of NodePersonality(v63);

    outlined init with copy of [Input](v73, &v67, &_s11ShaderGraph04UserB8CompilerC14CompileContextVSgMd, &_s11ShaderGraph04UserB8CompilerC14CompileContextVSgMR);
    v41 = specialized __RawDictionaryStorage.find<A>(_:)(v111);
    if ((v42 & 1) == 0)
    {

      v57 = &v114;
      goto LABEL_29;
    }

    v43 = *(*(v40 + 56) + 8 * v41);

    v115 = v112[0];
    outlined destroy of String(&v115);
    outlined destroy of [Input](v73, &_s11ShaderGraph04UserB8CompilerC14CompileContextVSgMd, &_s11ShaderGraph04UserB8CompilerC14CompileContextVSgMR);
    (*(*v17 + 272))(v64, v43);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS4name_11ShaderGraph13MetalDataTypeC4typetGMd, &_ss23_ContiguousArrayStorageCySS4name_11ShaderGraph13MetalDataTypeC4typetGMR);
    v6 = swift_allocObject();
    v59 = xmmword_265F1F670;
    *(v6 + 16) = xmmword_265F1F670;
    *(v6 + 32) = 1684631414;
    *(v6 + 40) = 0xE400000000000000;
    if (one-time initialization token for void == -1)
    {
      goto LABEL_17;
    }

    goto LABEL_24;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  outlined copy of NodePersonality(v63);

  outlined init with copy of [Input](v73, &v67, &_s11ShaderGraph04UserB8CompilerC14CompileContextVSgMd, &_s11ShaderGraph04UserB8CompilerC14CompileContextVSgMR);

  v57 = &v116;
LABEL_29:
  *v57 = *v26;
  outlined destroy of String(v57);
  result = outlined destroy of [Input](v73, &_s11ShaderGraph04UserB8CompilerC14CompileContextVSgMd, &_s11ShaderGraph04UserB8CompilerC14CompileContextVSgMR);
  __break(1u);
  return result;
}

uint64_t closure #1 in GraphCompiler.extract(node:from:withName:)(unint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v3 = a1[1];
  v30 = *a1;
  v4 = a1[2];
  v31 = a1[3];
  v5 = *(v3 + 16);
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v28 = a1[2];
    *&v34 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
    v6 = v34;
    v7 = (v3 + 56);
    do
    {
      v9 = *(v7 - 2);
      v8 = *(v7 - 1);
      v10 = *v7;
      *&v34 = v6;
      v12 = *(v6 + 16);
      v11 = *(v6 + 24);

      if (v12 >= v11 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
        v6 = v34;
      }

      *(v6 + 16) = v12 + 1;
      v13 = (v6 + 24 * v12);
      v13[4] = v8;
      v13[5] = v10;
      v13[6] = v9;
      v7 += 7;
      --v5;
    }

    while (v5);
    v4 = v28;
  }

  v14 = *(v4 + 16);
  v15 = MEMORY[0x277D84F90];
  if (v14)
  {
    v29 = v6;
    *&v34 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14, 0);
    v15 = v34;
    v16 = (v4 + 56);
    do
    {
      v17 = *(v16 - 2);
      v18 = *(v16 - 1);
      v19 = *v16;
      *&v34 = v15;
      v21 = *(v15 + 16);
      v20 = *(v15 + 24);

      if (v21 >= v20 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1);
        v6 = v29;
        v15 = v34;
      }

      *(v15 + 16) = v21 + 1;
      v22 = (v15 + 24 * v21);
      v22[4] = v18;
      v22[5] = v19;
      v22[6] = v17;
      v16 += 7;
      --v14;
    }

    while (v14);
  }

  UserGraph.insertNode(inputs:outputs:shaderGraphData:)(v6, v15, v30, &v34);

  v23 = v36;
  v24 = *a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v33 = *a3;
  *a3 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v23, v31, isUniquelyReferenced_nonNull_native);
  v39 = v34;
  outlined destroy of NodePersonality(&v39);
  v38 = *(&v34 + 1);
  outlined destroy of [Input](&v38, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
  v37 = v35;
  outlined destroy of [Input](&v37, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
  v26 = *a3;
  *a3 = v33;
}

uint64_t closure #2 in GraphCompiler.extract(node:from:withName:)(uint64_t result, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  if (*(*a2 + 16))
  {
    v7 = *(result + 16);
    v6 = *(result + 24);
    v8 = *(result + 56);
    v10 = *(result + 72);
    v9 = *(result + 80);
    result = specialized __RawDictionaryStorage.find<A>(_:)(*result);
    if (v11)
    {
      v12 = *(*(v3 + 56) + 8 * result);
      if (v12 != -7)
      {
        if ((v12 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else
        {
          v13 = *(a3 + 64);
          if (v12 < *(v13 + 16))
          {
            v14 = (v13 + 48 * v12);
            v15 = v14[5];
            v33 = v14[4];
            v61 = v14[6];
            specialized ShaderGraphNode.output(labeled:)(&v35, v7, v6, v61);
            result = v36;
            if (!v36)
            {
              return result;
            }

            v16 = v37;
            v17 = v38;
            v18 = *a2;
            if (*(*a2 + 16))
            {
              v31 = v36;
              v32 = v37;
              v19 = v38;
              v29 = v35;
              v20 = v39;
              v30 = v40;
              v21 = v41;
              result = specialized __RawDictionaryStorage.find<A>(_:)(v8);
              if (v22)
              {
                v23 = *(*(v18 + 56) + 8 * result);
                if (v23 == -7)
                {
                  goto LABEL_18;
                }

                if ((v23 & 0x8000000000000000) == 0)
                {
                  v28 = v20;
                  v24 = *(a3 + 64);
                  if (v23 < *(v24 + 16))
                  {
                    v25 = (v24 + 48 * v23);
                    v27 = v25[4];
                    v26 = v25[6];
                    specialized ShaderGraphNode.output(labeled:)(&v42, v10, v9, v25[5]);
                    if (v43)
                    {
                      v49[0] = v32;
                      v49[1] = v19;
                      v50[0] = v44;
                      v50[1] = v45;
                      v51[0] = v29;
                      v51[1] = v31;
                      v51[2] = v32;
                      v51[3] = v19;
                      v51[4] = v28;
                      v52 = v30 & 1;
                      v53 = v21;
                      v54 = v42;
                      v55 = v43;
                      v56 = v44;
                      v57 = v45;
                      v58 = v46;
                      v59 = v47 & 1;
                      v60 = v48;

                      outlined copy of NodePersonality(v33);

                      outlined copy of NodePersonality(v27);

                      outlined init with copy of String(v49, v34);

                      outlined init with copy of String(v50, v34);
                      UserGraph.connect(_:to:)(v51, &v54);

                      outlined destroy of String(v50);
                      outlined consume of NodePersonality(v27);

                      outlined destroy of String(v49);
                      outlined consume of NodePersonality(v33);
                    }

LABEL_18:

                    outlined copy of NodePersonality(v33);

                    v54 = v32;
                    v55 = v19;
                    outlined destroy of String(&v54);
                    outlined consume of NodePersonality(v33);
                  }

LABEL_24:
                  __break(1u);
                  return result;
                }

LABEL_23:
                __break(1u);
                goto LABEL_24;
              }

              v54 = v32;
              v55 = v19;
            }

            else
            {

              v54 = v16;
              v55 = v17;
            }

            return outlined destroy of String(&v54);
          }
        }

        __break(1u);
        goto LABEL_23;
      }
    }
  }

  return result;
}

void closure #1 in UserGraph.convertColors(to:)(unint64_t *a1, CGColorSpace *a2, uint64_t a3)
{
  v3 = *a1;
  if (*a1 >> 61)
  {
    return;
  }

  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = *(v3 + 32);
  v66[0] = *(v3 + 16);
  v66[1] = v8;
  v9 = *(v3 + 64);
  v66[2] = *(v3 + 48);
  v66[3] = v9;
  v67 = *(v3 + 80);
  v10 = *&v66[0];
  if (v67 == 22)
  {
    v62 = a3;
    v63 = v7;
    v11 = 1;
    v12 = 3;
  }

  else
  {
    if (v67 != 23)
    {
      return;
    }

    v62 = a3;
    v63 = v7;
    v11 = 0;
    v12 = 4;
  }

  outlined init with copy of SGDataTypeStorage(v66, &v64);
  CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(a2, kCGRenderingIntentDefault, v10, 0);
  if (!CopyByMatchingToColorSpace)
  {
    v64 = 0;
    v65 = 0xE000000000000000;
    _StringGuts.grow(_:)(50);
    MEMORY[0x266771550](0xD00000000000002FLL, 0x8000000265F30A80);
    v24 = CGColorSpaceCopyName(a2);
    if (v24)
    {
      type metadata accessor for CFStringRef(0);
      v25 = v24;
      v26 = String.init<A>(describing:)();
      v28 = v27;
    }

    else
    {
      v26 = 0x3E6C696E3CLL;
      v28 = 0xE500000000000000;
    }

    MEMORY[0x266771550](v26, v28);

    MEMORY[0x266771550](39, 0xE100000000000000);
    v43 = v64;
    v44 = v65;
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    *v45 = 25;
    *(v45 + 8) = v43;
    *(v45 + 16) = v44;
    swift_willThrow();
    outlined destroy of SGDataTypeStorage(v66);
    return;
  }

  v14 = CopyByMatchingToColorSpace;
  v15 = CGColorRef.components.getter();
  if (!v15)
  {
    v64 = 0;
    v65 = 0xE000000000000000;
    _StringGuts.grow(_:)(57);
    MEMORY[0x266771550](0xD000000000000036, 0x8000000265F30AB0);
    type metadata accessor for CGColorRef(0);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x266771550](39, 0xE100000000000000);
    v29 = v64;
    v30 = v65;
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    v32 = 47;
LABEL_41:
    *v31 = v32;
    *(v31 + 8) = v29;
    *(v31 + 16) = v30;
    swift_willThrow();
    outlined destroy of SGDataTypeStorage(v66);

    return;
  }

  v60 = v6;
  v61 = v5;
  v16 = *(v15 + 16);
  if (v16)
  {
    v55 = v14;
    v64 = MEMORY[0x277D84F90];
    v57 = v15;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16, 0);
    v17 = v57;
    v18 = v64;
    v19 = *(v64 + 16);
    v20 = 32;
    do
    {
      v21 = *(v17 + v20);
      v64 = v18;
      v22 = *(v18 + 24);
      if (v19 >= v22 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v19 + 1, 1);
        v17 = v57;
        v18 = v64;
      }

      v23 = v21;
      *(v18 + 16) = v19 + 1;
      *(v18 + 4 * v19 + 32) = v23;
      v20 += 8;
      ++v19;
      --v16;
    }

    while (v16);

    v14 = v55;
  }

  else
  {

    v18 = MEMORY[0x277D84F90];
  }

  v33 = *(v18 + 16);
  if (v33 < v12)
  {

    v64 = 0;
    v65 = 0xE000000000000000;
    _StringGuts.grow(_:)(42);
    MEMORY[0x266771550](0xD000000000000027, 0x8000000265F30AF0);
    v34 = CGColorSpaceCopyName(a2);
    if (v34)
    {
      type metadata accessor for CFStringRef(0);
      v35 = v34;
      v36 = String.init<A>(describing:)();
      v38 = v37;
    }

    else
    {
      v36 = 0x3E6C696E3CLL;
      v38 = 0xE500000000000000;
    }

    MEMORY[0x266771550](v36, v38);

    MEMORY[0x266771550](39, 0xE100000000000000);
    v29 = v64;
    v30 = v65;
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    v32 = 25;
    goto LABEL_41;
  }

  if (v11)
  {
    if (one-time initialization token for color3 != -1)
    {
      goto LABEL_46;
    }

    v39 = v63;
    if (!v33)
    {
      goto LABEL_47;
    }

LABEL_24:
    if (v33 != 1)
    {
      if (v33 >= 3)
      {
        v40 = static MetalDataType.color3;
        *&v41 = *(v18 + 32);
        *(&v41 + 1) = *(v18 + 40);
        v58 = v41;
        swift_retain_n();

        for (i = 8; ; i = 9)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMR);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_265F1F670;
          *(inited + 32) = 7632239;
          *(inited + 40) = 0xE300000000000000;
          *(inited + 48) = v40;
          v48 = swift_allocObject();
          *(v48 + 16) = v58;
          *(v48 + 80) = i;
          *(v48 + 88) = v40;
          v63 = v40;

          v18 = v62;
          UserGraph.insertNode(inputs:outputs:shaderGraphData:)(MEMORY[0x277D84F90], inited, v48, &v68);

          swift_setDeallocating();
          v49 = *(inited + 16);
          swift_arrayDestroy();
          v50 = *(&v68 + 1);
          outlined copy of NodePersonality(v3);

          specialized Sequence.forEach(_:)(v50, v61, v62);
          outlined consume of NodePersonality(v3);

          v51 = v69;
          outlined copy of NodePersonality(v3);

          specialized Sequence.forEach(_:)(v51, v60, v62);
          outlined consume of NodePersonality(v3);

          specialized UserGraph.removeEdges(connectedTo:)(v39);
          v52 = *(v62 + 64);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v62 + 64) = v52;
          if (isUniquelyReferenced_nonNull_native)
          {
            if ((v39 & 0x8000000000000000) != 0)
            {
              goto LABEL_44;
            }
          }

          else
          {
            v52 = specialized _ArrayBuffer._consumeAndCreateNew()(v52);
            *(v62 + 64) = v52;
            if ((v39 & 0x8000000000000000) != 0)
            {
LABEL_44:
              __break(1u);
              goto LABEL_45;
            }
          }

          if (v39 < *(v52 + 2))
          {
            ShaderGraphNode.update(id:)(-7);
            outlined destroy of SGDataTypeStorage(v66);

            v70 = v68;
            outlined destroy of NodePersonality(&v70);

            return;
          }

LABEL_45:
          __break(1u);
LABEL_46:
          swift_once();
          v33 = *(v18 + 16);
          v39 = v63;
          if (v33)
          {
            goto LABEL_24;
          }

LABEL_47:
          __break(1u);
LABEL_48:
          swift_once();
          v33 = *(v18 + 16);
          v39 = v63;
          if (!v33)
          {
            goto LABEL_49;
          }

LABEL_31:
          if (v33 == 1)
          {
            goto LABEL_51;
          }

          if (v33 < 3)
          {
            goto LABEL_53;
          }

          if (v33 == 3)
          {
            goto LABEL_54;
          }

          v40 = static MetalDataType.color4;
          v59 = *(v18 + 32);
          v54 = *(v18 + 36);
          v56 = *(v18 + 40);
          swift_retain_n();

          *&v46 = __PAIR64__(v54, v59);
          *(&v46 + 1) = v56;
          v58 = v46;
        }
      }

      goto LABEL_52;
    }
  }

  else
  {
    if (one-time initialization token for color4 != -1)
    {
      goto LABEL_48;
    }

    v39 = v63;
    if (v33)
    {
      goto LABEL_31;
    }

LABEL_49:
    __break(1u);
  }

  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
}

uint64_t specialized closure #1 in OrderedSet.removeSubrange(_:)(uint64_t result, void *a2, uint64_t a3, unint64_t a4, int64_t a5)
{
  if ((a4 & 0x8000000000000000) != 0)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v8 = result;
  result = *(a3 + 8);
  v9 = *(result + 16);
  if (v9 < a4 || v9 < a5)
  {
    goto LABEL_19;
  }

  if ((a5 & 0x8000000000000000) == 0)
  {
    v25 = *(a3 + 8);

    v24 = a5;
    v26 = a4;
    v12 = a5 - a4;
    if (a5 == a4)
    {
LABEL_15:

      v23 = *(a3 + 8);

      specialized _HashTable.UnsafeHandle.adjustContents<A>(preparingForRemovalOf:in:)(v26, v24, v23, v8, a2);
    }

    if (a5 >= a4)
    {
      v13 = a5 - a4;
    }

    else
    {
      v13 = 0;
    }

    v14 = (v25 + 24 * a4 + 48);
    while (v13)
    {
      v27 = v12;
      v15 = *(v14 - 1);
      v16 = *v14;
      v17 = *(v14 - 2);
      v18 = *(a3 + 8);

      specialized _HashTable.UnsafeHandle._find<A>(_:in:)(v17, v15, v16, v18, v8, a2);
      v20 = v19;
      v22 = v21;

      if (v20)
      {
        goto LABEL_17;
      }

      specialized _HashTable.UnsafeHandle.delete(bucket:hashValueGenerator:)(v22, v8, a2, a3);

      --v13;
      v14 += 3;
      v12 = v27 - 1;
      if (v27 == 1)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t closure #1 in _globalStringTablePointerOfStaticString(_:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (result)
  {
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void partial apply for closure #1 in GraphCompiler.compile(for:options:)(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  closure #1 in GraphCompiler.compile(for:options:)(a1, *(v2 + 16), *(v2 + 40), a2);
}

uint64_t outlined destroy of MetalStitchingBackend(uint64_t a1)
{
  v2 = type metadata accessor for MetalStitchingBackend();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

void closure #1 in OSLogArguments.append(_:)(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t outlined copy of MetalLibrary(uint64_t a1, char a2)
{
  if (a2)
  {
    return swift_unknownObjectRetain();
  }

  else
  {
  }
}

uint64_t outlined consume of MetalLibrary(uint64_t a1, char a2)
{
  if (a2)
  {
    return swift_unknownObjectRelease();
  }

  else
  {
  }
}

double _s11ShaderGraph04UserB8CompilerC14CompileContextVSgWOi0_(uint64_t a1)
{
  *(a1 + 192) = 0;
  result = 0.0;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

unint64_t lazy protocol witness table accessor for type GPUSpecificCacheKey and conformance GPUSpecificCacheKey()
{
  result = lazy protocol witness table cache variable for type GPUSpecificCacheKey and conformance GPUSpecificCacheKey;
  if (!lazy protocol witness table cache variable for type GPUSpecificCacheKey and conformance GPUSpecificCacheKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GPUSpecificCacheKey and conformance GPUSpecificCacheKey);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_11ShaderGraph0B14CompilerErrorsO(uint64_t a1)
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

uint64_t getEnumTagSinglePayload for GraphCompilerErrors(uint64_t a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for GraphCompilerErrors(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t destructiveInjectEnumTag for GraphCompilerErrors(uint64_t result, unsigned int a2)
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

uint64_t getEnumTagSinglePayload for GPUSpecificCacheKey(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for GPUSpecificCacheKey(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_265E28F18(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for OSSignposter();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_265E28FD8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for OSSignposter();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata completion function for GraphCompiler()
{
  result = type metadata accessor for OSSignposter();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t outlined copy of (name: String, type: MetalDataType)?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_265E2915C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t outlined consume of MetalLibrary?(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return outlined consume of MetalLibrary(result, a2 & 1);
  }

  return result;
}

unint64_t specialized GraphCompiler.constantValue(from:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result >> 61)
  {
    _StringGuts.grow(_:)(31);

    v4 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266771550](v4);

    MEMORY[0x266771550](1701080942, 0xE400000000000000);

    lazy protocol witness table accessor for type GraphCompilerErrors and conformance GraphCompilerErrors();
    swift_allocError();
    *v5 = 0xD00000000000001DLL;
    *(v5 + 8) = 0x8000000265F30A40;
    *(v5 + 16) = 1;
    return swift_willThrow();
  }

  else
  {
    v2 = *(result + 64);
    *(a2 + 32) = *(result + 48);
    *(a2 + 48) = v2;
    *(a2 + 64) = *(result + 80);
    v3 = *(result + 32);
    *a2 = *(result + 16);
    *(a2 + 16) = v3;
  }

  return result;
}

unint64_t specialized GraphCompiler.floatValue(from:)(unint64_t result)
{
  if (result >> 61)
  {
    _StringGuts.grow(_:)(31);

    v2 = 0x8000000265F30A40;
    v3 = 0xD00000000000001DLL;
  }

  else
  {
    if (*(result + 80) == 5)
    {
      v1 = *(result + 16);
      return result;
    }

    _StringGuts.grow(_:)(21);

    v2 = 0x8000000265F30A60;
    v3 = 0xD000000000000013;
  }

  v6 = v3;
  v7 = v2;
  v4 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266771550](v4);

  MEMORY[0x266771550](1701080942, 0xE400000000000000);

  lazy protocol witness table accessor for type GraphCompilerErrors and conformance GraphCompilerErrors();
  swift_allocError();
  *v5 = v6;
  *(v5 + 8) = v7;
  *(v5 + 16) = 1;
  return swift_willThrow();
}

unint64_t specialized GraphCompiler.samplerName(for:in:)(unint64_t result, void *a2)
{
  v2 = a2;
  v3 = *(result + 16);
  if (!v3)
  {
    v6 = MEMORY[0x277D84F90];
    goto LABEL_58;
  }

  v4 = 0;
  v5 = result + 32;
  v6 = MEMORY[0x277D84F90];
  v62 = a2;
  v65 = result + 32;
  v60 = v3;
  do
  {
    v61 = v6;
    while (1)
    {
      if (v4 >= v3)
      {
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
        goto LABEL_65;
      }

      v7 = v5 + 56 * v4;
      v9 = *v7;
      v8 = *(v7 + 8);
      v11 = *(v7 + 16);
      v10 = *(v7 + 24);
      v12 = *(v7 + 32);
      v13 = *(v7 + 40);
      v14 = *(v7 + 48);
      v76 = v9;
      v77 = v8;
      v83 = v8;
      v78 = v11;
      v79 = v10;
      v67 = v12;
      v80 = v12;
      v68 = v13;
      v81 = v13;
      v69 = v14;
      v82 = v14;
      if (__OFADD__(v4++, 1))
      {
        goto LABEL_62;
      }

      v71 = v11;
      v73 = v10;
      v16 = v2[1];
      v17 = v2[2];
      v18 = v16 + 32;
      v19 = *(v16 + 16);
      if (*v2)
      {
        result = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(v9, v18, v19, *v2 + 16, *v2 + 32);
        if (v20)
        {
          goto LABEL_7;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_63;
        }
      }

      else
      {
        if (!v19)
        {
          goto LABEL_7;
        }

        result = 0;
        while (*(v18 + 8 * result) != v9)
        {
          if (v19 == ++result)
          {
            goto LABEL_7;
          }
        }
      }

      if (result >= *(v17 + 16))
      {
        goto LABEL_64;
      }

      v21 = (v17 + 48 * result);
      v22 = v21[7];
      v23 = v21[8];
      v24 = v21[9];
      v25 = *(v23 + 16);
      if (v22)
      {
        v66 = v24;

        v26 = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(&v76, v23 + 32, v25, v22 + 16, v22 + 32);
        v28 = v27;

        if ((v28 & 1) == 0)
        {
          if ((v26 & 0x8000000000000000) == 0)
          {
            goto LABEL_17;
          }

LABEL_65:
          __break(1u);
LABEL_66:
          __break(1u);
LABEL_67:
          __break(1u);
LABEL_68:
          __break(1u);
          return result;
        }

LABEL_5:
        v5 = v65;
        goto LABEL_6;
      }

      if (!v25)
      {

        goto LABEL_6;
      }

      v66 = v24;
      v63 = v4;
      v64 = v68 ^ 1;

      v26 = 0;
      v31 = (v23 + 80);
      while (1)
      {
        if (*(v31 - 6) != v9)
        {
          goto LABEL_29;
        }

        v32 = *(v31 - 5);
        v33 = *(v31 - 4);
        v34 = *(v31 - 3);
        v70 = *(v31 - 2);
        v35 = *(v31 - 8);
        v72 = *v31;
        v36 = *(*v32 + 128);

        if ((v36(v83) & 1) == 0)
        {

          goto LABEL_29;
        }

        if (v33 != v71 || v34 != v73)
        {
          v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v38 & 1) == 0)
          {
            goto LABEL_29;
          }

          if ((v35 & 1) == 0)
          {
            break;
          }

          goto LABEL_38;
        }

        if ((v35 & 1) == 0)
        {
          break;
        }

LABEL_38:
        v39 = v68;
        if (v72 != v69)
        {
          v39 = 0;
        }

        if (v39)
        {
          goto LABEL_47;
        }

LABEL_29:
        v31 += 7;
        if (v25 == ++v26)
        {
          v6 = v61;
          v2 = v62;
          v4 = v63;
          v3 = v60;
          goto LABEL_5;
        }
      }

      v40 = v64;
      if (v70 != v67)
      {
        v40 = 0;
      }

      if (v40 != 1 || v72 != v69)
      {
        goto LABEL_29;
      }

LABEL_47:
      v6 = v61;
      v2 = v62;
      v4 = v63;
      v3 = v60;
LABEL_17:
      if (v26 >= *(v66 + 16))
      {
        goto LABEL_66;
      }

      v29 = (v66 + 56 * v26);
      v5 = v65;
      if (v29[5])
      {
        v30 = v29[4];
        v83 = v77;
        result = v79;
        if (v30 != -7)
        {
          break;
        }
      }

LABEL_6:

LABEL_7:
      if (v4 == v3)
      {
        goto LABEL_58;
      }
    }

    if ((v30 & 0x8000000000000000) != 0)
    {
      goto LABEL_67;
    }

    v41 = v2[8];
    if (v30 >= *(v41 + 16))
    {
      goto LABEL_68;
    }

    v42 = v29[7];
    v43 = v41 + 48 * v30;
    v45 = *(v43 + 32);
    v44 = *(v43 + 40);
    v47 = *(v43 + 48);
    v46 = *(v43 + 56);
    v72 = *(v43 + 64);
    v73 = v46;
    LODWORD(v71) = *(v43 + 72);

    outlined copy of NodePersonality(v45);

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 16) + 1, 1, v6);
      v6 = result;
    }

    v49 = *(v6 + 16);
    v48 = *(v6 + 24);
    if (v49 >= v48 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v48 > 1), v49 + 1, 1, v6);
      v6 = result;
    }

    *(v6 + 16) = v49 + 1;
    v50 = v6 + 48 * v49;
    *(v50 + 32) = v45;
    *(v50 + 40) = v44;
    v51 = v72;
    v52 = v73;
    *(v50 + 48) = v47;
    *(v50 + 56) = v52;
    *(v50 + 64) = v51;
    *(v50 + 72) = v71;
    v2 = v62;
    v5 = v65;
  }

  while (v4 != v3);
LABEL_58:
  MEMORY[0x28223BE20](result);
  v59[2] = v2;
  v59[3] = v59[4];
  v53 = v59[5];
  v54 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay11ShaderGraph0dE4NodeVG_SSsAE_pTg5(partial apply for closure #2 in GraphCompiler.samplerName(for:in:), v59, v6);
  if (v53)
  {
  }

  v55 = v54;

  v74 = v55;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v56 = BidirectionalCollection<>.joined(separator:)();
  v58 = v57;

  v74 = 0x5F72656C706D6173;
  v75 = 0xE800000000000000;
  MEMORY[0x266771550](v56, v58);

  return v74;
}

uint64_t partial apply for closure #2 in GraphCompiler.samplerName(for:in:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  return closure #2 in GraphCompiler.samplerName(for:in:)(a1, a2, a3);
}

uint64_t sub_265E29A64()
{
  outlined consume of SGDataTypeStorage(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80));
  v1 = *(v0 + 88);

  return MEMORY[0x2821FE8E8](v0, 96, 15);
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for MetalLibrary(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for MetalLibrary(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t OrderedDictionary.description.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v47 = a6;
  v37 = a2;
  v38 = a1;
  v49 = *(a5 - 8);
  v9 = *(v49 + 64);
  MEMORY[0x28223BE20](a1);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = *(v12 - 8);
  v13 = v51[8];
  MEMORY[0x28223BE20](v14);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v18 = type metadata accessor for Optional();
  v50 = *(v18 - 8);
  v19 = *(v50 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v35 - v23;
  v36 = a3;
  v54 = a3;
  type metadata accessor for ContiguousArray();
  swift_getWitnessTable();
  if (Collection.isEmpty.getter())
  {
    return 6109787;
  }

  v58 = 91;
  v59 = 0xE100000000000000;
  v48 = v18;
  v54 = v38;
  v55 = v37;
  v56 = v36;
  v57 = 0;
  v47 = type metadata accessor for OrderedDictionary.Iterator();

  OrderedDictionary.Iterator.next()(v47, v21);
  v27 = v50 + 32;
  v26 = *(v50 + 32);
  v26(v24, v21, v48);
  v28 = *(TupleTypeMetadata2 - 8);
  v29 = *(v28 + 48);
  v45 = v28 + 48;
  v46 = v29;
  if (v29(v24, 1, TupleTypeMetadata2) != 1)
  {
    v50 = v27;
    v44 = v26;
    v30 = *(TupleTypeMetadata2 + 48);
    v42 = v51[4];
    v43 = v51 + 4;
    v42(v16, v24, a4);
    v31 = v49;
    v40 = *(v49 + 32);
    v41 = v49 + 32;
    v40(v11, &v24[v30], a5);
    v52 = 0;
    v53 = 0xE000000000000000;
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    MEMORY[0x266771550](8250, 0xE200000000000000);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    MEMORY[0x266771550](v52, v53);

    v32 = *(v31 + 8);
    v49 = v31 + 8;
    v32(v11, a5);
    v33 = v51[1];
    ++v51;
    v33(v16, a4);
    OrderedDictionary.Iterator.next()(v47, v21);
    v44(v24, v21, v48);
    if (v46(v24, 1, TupleTypeMetadata2) != 1)
    {
      v39 = v24;
      do
      {
        v34 = *(TupleTypeMetadata2 + 48);
        v42(v16, v24, a4);
        v40(v11, &v24[v34], a5);
        MEMORY[0x266771550](8236, 0xE200000000000000);
        v52 = 0;
        v53 = 0xE000000000000000;
        DefaultStringInterpolation.appendInterpolation<A>(_:)();
        MEMORY[0x266771550](8250, 0xE200000000000000);
        DefaultStringInterpolation.appendInterpolation<A>(_:)();
        MEMORY[0x266771550](v52, v53);
        v24 = v39;

        v32(v11, a5);
        v33(v16, a4);
        OrderedDictionary.Iterator.next()(v47, v21);
        v44(v24, v21, v48);
      }

      while (v46(v24, 1, TupleTypeMetadata2) != 1);
    }
  }

  MEMORY[0x266771550](93, 0xE100000000000000);
  return v58;
}

id buildFailureMaterial(usesSurfaceUniforms:usesGeometryUniforms:device:)(char a1, char a2, void *a3)
{
  v71[1] = *MEMORY[0x277D85DE8];
  type metadata accessor for SGGraph();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [objc_opt_self() bundleForClass_];
  v71[0] = 0;
  v8 = [a3 newDefaultLibraryWithBundle:v7 error:v71];
  v9 = v71[0];
  if (!v8)
  {
    v15 = v71[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
LABEL_17:

    goto LABEL_18;
  }

  v70 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  if (a1)
  {
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_265F24070;
    v11 = objc_allocWithZone(MEMORY[0x277CD6E00]);
    v12 = v9;
    *(v10 + 32) = [v11 initWithArgumentIndex_];
    *(v10 + 40) = [objc_allocWithZone(MEMORY[0x277CD6E00]) initWithArgumentIndex_];
    v13 = "eometryModifierCustomParams";
    v14 = 0xD000000000000029;
  }

  else
  {
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_265F20CD0;
    v17 = objc_allocWithZone(MEMORY[0x277CD6E00]);
    v18 = v9;
    *(v16 + 32) = [v17 initWithArgumentIndex_];
    v13 = "ntain enough channels '";
    v14 = 0xD00000000000001DLL;
  }

  v19 = MEMORY[0x266771450](v14, v13 | 0x8000000000000000);

  v20 = [v70 newFunctionWithName_];

  if (!v20)
  {

    lazy protocol witness table accessor for type APIError and conformance APIError();
    swift_allocError();
    *v36 = xmmword_265F23200;
    *(v36 + 16) = 24;
    swift_willThrow();
    swift_unknownObjectRelease();
    goto LABEL_17;
  }

  v66 = v20;
  v67 = v7;
  v63 = a3;
  v21 = objc_allocWithZone(MEMORY[0x277CD6DC0]);
  v22 = MEMORY[0x266771450](v14, v13 | 0x8000000000000000);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo24MTLFunctionStitchingNode_pMd, &_sSo24MTLFunctionStitchingNode_pMR);
  isa = Array._bridgeToObjectiveC()().super.isa;

  type metadata accessor for NSArray(0, &lazy cache variable for type metadata for MTLFunctionStitchingFunctionNode, 0x277CD6DC0);
  v24 = Array._bridgeToObjectiveC()().super.isa;
  v25 = [v21 initWithName:v22 arguments:isa controlDependencies:v24];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_265F20CD0;
  *(v26 + 32) = v25;
  v27 = objc_allocWithZone(MEMORY[0x277CD6DD8]);
  v65 = v25;
  v28 = MEMORY[0x266771450](0xD000000000000018, 0x8000000265F2D560);
  v29 = Array._bridgeToObjectiveC()().super.isa;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo29MTLFunctionStitchingAttribute_pMd, &_sSo29MTLFunctionStitchingAttribute_pMR);
  v30 = Array._bridgeToObjectiveC()().super.isa;
  v64 = [v27 initWithFunctionName:v28 nodes:v29 outputNode:0 attributes:v30];

  if (a2)
  {
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_265F24070;
    *(v31 + 32) = [objc_allocWithZone(MEMORY[0x277CD6E00]) initWithArgumentIndex_];
    v32 = (v31 + 40);
    v33 = "SGFailedMaterialSurfaceShader";
    v34 = 0xD00000000000002BLL;
    v35 = 1;
  }

  else
  {
    v37 = swift_allocObject();
    v35 = 0;
    *(v37 + 16) = xmmword_265F20CD0;
    v32 = (v37 + 32);
    v33 = "com.apple.shadergraph";
    v34 = 0xD00000000000001FLL;
  }

  *v32 = [objc_allocWithZone(MEMORY[0x277CD6E00]) initWithArgumentIndex_];
  v38 = MEMORY[0x266771450](v34, v33 | 0x8000000000000000);

  v39 = [v70 newFunctionWithName_];

  if (!v39)
  {

    lazy protocol witness table accessor for type APIError and conformance APIError();
    swift_allocError();
    *v59 = xmmword_265F23200;
    *(v59 + 16) = 24;
    swift_willThrow();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
LABEL_16:
    v7 = v65;
    goto LABEL_17;
  }

  v40 = objc_allocWithZone(MEMORY[0x277CD6DC0]);
  v41 = MEMORY[0x266771450](v34, v33 | 0x8000000000000000);

  v42 = Array._bridgeToObjectiveC()().super.isa;

  v43 = Array._bridgeToObjectiveC()().super.isa;
  v44 = [v40 initWithName:v41 arguments:v42 controlDependencies:v43];

  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_265F20CD0;
  *(v45 + 32) = v44;
  v46 = objc_allocWithZone(MEMORY[0x277CD6DD8]);
  v68 = v44;
  v47 = MEMORY[0x266771450](0xD00000000000001BLL, 0x8000000265F2D500);
  v48 = Array._bridgeToObjectiveC()().super.isa;

  v49 = Array._bridgeToObjectiveC()().super.isa;
  v50 = [v46 initWithFunctionName:v47 nodes:v48 outputNode:0 attributes:v49];

  v51 = [objc_allocWithZone(MEMORY[0x277CD7010]) init];
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_265F24070;
  *(v52 + 32) = v66;
  *(v52 + 40) = v39;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo11MTLFunction_pMd, &_sSo11MTLFunction_pMR);
  v53 = Array._bridgeToObjectiveC()().super.isa;

  [v51 setFunctions_];

  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_265F24070;
  *(v54 + 32) = v64;
  *(v54 + 40) = v50;
  type metadata accessor for NSArray(0, &lazy cache variable for type metadata for MTLFunctionStitchingGraph, 0x277CD6DD8);
  v69 = v64;
  v55 = v50;
  v56 = Array._bridgeToObjectiveC()().super.isa;

  [v51 setFunctionGraphs_];

  v71[0] = 0;
  v57 = [v63 newLibraryWithStitchedDescriptor:v51 error:v71];
  if (!v57)
  {
    v60 = v71[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    goto LABEL_16;
  }

  v7 = v57;
  v58 = v71[0];
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

LABEL_18:
  v61 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t OrderedSet.description.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](a1);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10.n128_f64[0] = MEMORY[0x28223BE20](v8);
  v12 = &v21 - v11;
  v25 = 91;
  v26 = 0xE100000000000000;
  if (*(v9 + 16))
  {
    v23 = *(v9 + 16);
    v24 = v9;
    ContiguousArray.subscript.getter();
    v22 = v4[4];
    v22(v7, v12, a3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
    v13 = swift_allocObject();
    v21 = xmmword_265F1F670;
    *(v13 + 16) = xmmword_265F1F670;
    *(v13 + 56) = a3;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v13 + 32));
    v15 = v4[2];
    v15(boxed_opaque_existential_0, v7, a3);
    print<A>(_:separator:terminator:to:)();

    v16 = v4[1];
    v16(v7, a3);
    if (v23 != 1)
    {
      v17 = 1;
      do
      {
        ContiguousArray.subscript.getter();
        ++v17;
        v22(v7, v12, a3);
        MEMORY[0x266771550](8236, 0xE200000000000000);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
        v18 = swift_allocObject();
        *(v18 + 16) = v21;
        *(v18 + 56) = a3;
        v19 = __swift_allocate_boxed_opaque_existential_0((v18 + 32));
        v15(v19, v7, a3);
        print<A>(_:separator:terminator:to:)();

        v16(v7, a3);
      }

      while (v23 != v17);
    }
  }

  MEMORY[0x266771550](93, 0xE100000000000000, v10);
  return v25;
}

Swift::Double __swiftcall _HashTable.UnsafeHandle.debugLoadFactor()()
{
  v2 = v0;
  v3 = _HashTable.UnsafeHandle._startIterator(bucket:)(0, v0, v1) != 0;
  _HashTable.BucketIterator.advance()();
  return v3 / (1 << *v2);
}

char *_HashTable.UnsafeHandle.debugContents()(void *a1, uint64_t a2)
{
  v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, (1 << *a1) & ~(1 << *a1 >> 63), 0, MEMORY[0x277D84F90]);
  v13 = _HashTable.UnsafeHandle._startIterator(bucket:)(0, a1, a2);
  if (v13)
  {
    v5 = -1 << *a1;
    v6 = (v5 ^ ~v13) + (a1[1] >> 6);
    if (v6 >= ~v5)
    {
      v7 = ~v5;
    }

    else
    {
      v7 = 0;
    }

    v8 = v6 - v7;
  }

  else
  {
    v8 = 0;
  }

  v10 = *(v4 + 2);
  v9 = *(v4 + 3);
  if (v10 >= v9 >> 1)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v4);
  }

  *(v4 + 2) = v10 + 1;
  v11 = &v4[16 * v10];
  *(v11 + 4) = v8;
  v11[40] = v13 == 0;
  _HashTable.BucketIterator.advance()();
  return v4;
}

uint64_t _HashTable.Bucket.description.getter()
{
  v0 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266771550](v0);

  MEMORY[0x266771550](41, 0xE100000000000000);
  return 0x402874656B637542;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance _HashTable.Bucket()
{
  v3 = *v0;
  v1 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266771550](v1);

  MEMORY[0x266771550](41, 0xE100000000000000);
  return 0x402874656B637542;
}

Swift::Int __swiftcall _HashTable.UnsafeHandle.debugOccupiedCount()()
{
  v2 = _HashTable.UnsafeHandle._startIterator(bucket:)(0, v0, v1) != 0;
  _HashTable.BucketIterator.advance()();
  return v2;
}

uint64_t _HashTable.BucketIterator.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v28 = *(v0 + 16);
  countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  object = v6;
  result = String.count.getter();
  if (result <= 3)
  {
    v9 = 4 - result;
    if (__OFSUB__(4, result))
    {
      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    v10._countAndFlagsBits = 32;
    v10._object = 0xE100000000000000;
    v11 = String.init(repeating:count:)(v10, v9);

    MEMORY[0x266771550](countAndFlagsBits, object);

    countAndFlagsBits = v11._countAndFlagsBits;
    object = v11._object;
  }

  if (!v2)
  {
    v15 = 0xE400000000000000;
    v13 = 1818848800;
    goto LABEL_9;
  }

  v12 = ((-1 << *v1) ^ ~v2) + (v1[1] >> 6);
  v13 = dispatch thunk of CustomStringConvertible.description.getter();
  v15 = v14;
  result = String.count.getter();
  if (result > 3)
  {
LABEL_9:
    lazy protocol witness table accessor for type UInt64 and conformance UInt64();
    v19 = String.init<A>(_:radix:uppercase:)();
    v21 = v20;
    result = String.count.getter();
    if (result >= v4)
    {
LABEL_12:
      _StringGuts.grow(_:)(68);
      MEMORY[0x266771550](0xD000000000000016, 0x8000000265F30BA0);
      v27 = *v1 & 0x3FLL;
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266771550](v25);

      MEMORY[0x266771550](0x74656B637562202CLL, 0xEA0000000000203ALL);
      MEMORY[0x266771550](countAndFlagsBits, object);

      MEMORY[0x266771550](0x3A65756C6176202CLL, 0xE900000000000020);
      MEMORY[0x266771550](v13, v15);

      MEMORY[0x266771550](0x203A73746962202CLL, 0xE800000000000000);
      MEMORY[0x266771550](v19, v21);

      MEMORY[0x266771550](10272, 0xE200000000000000);
      v26 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266771550](v26);

      MEMORY[0x266771550](0x29297374696220, 0xE700000000000000);
      return 0;
    }

    v22 = v4 - result;
    if (!__OFSUB__(v4, result))
    {
      v23._countAndFlagsBits = 48;
      v23._object = 0xE100000000000000;
      v24 = String.init(repeating:count:)(v23, v22);

      MEMORY[0x266771550](v19, v21);

      v19 = v24._countAndFlagsBits;
      v21 = v24._object;
      goto LABEL_12;
    }

    goto LABEL_14;
  }

  v16 = 4 - result;
  if (!__OFSUB__(4, result))
  {
    v17._countAndFlagsBits = 32;
    v17._object = 0xE100000000000000;
    v18 = String.init(repeating:count:)(v17, v16);

    MEMORY[0x266771550](v13, v15);

    v13 = v18._countAndFlagsBits;
    v15 = v18._object;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type UInt64 and conformance UInt64()
{
  result = lazy protocol witness table cache variable for type UInt64 and conformance UInt64;
  if (!lazy protocol witness table cache variable for type UInt64 and conformance UInt64)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UInt64 and conformance UInt64);
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> UserGraph.mapStringInputs(nodeDefStore:)(ShaderGraph::NodeDefStore nodeDefStore)
{
  rawValue = nodeDefStore.nodeDefs._rawValue;
  v3 = *(*(v1 + 64) + 16);

  if (v3)
  {
    v5 = 0;
    v6 = v4 + 32;
    while (v5 < v3)
    {
      v8 = v6 + 48 * v5;
      v9 = *(v8 + 24);
      if (v9 == -7)
      {
        v7 = __OFADD__(v5++, 1);
        if (v7)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v7 = __OFADD__(v5++, 1);
        if (v7)
        {
          goto LABEL_15;
        }

        v10 = *(v8 + 8);
        v11 = *(v8 + 16);
        v12 = *v8;
        v13 = *(v8 + 40);
        v14 = *(v8 + 32);
        v15[0] = v12;
        v15[1] = v10;
        v15[2] = v11;
        v15[3] = v9;
        v15[4] = v14;
        v16 = v13;
        outlined copy of NodePersonality(v12);

        specialized closure #1 in UserGraph.mapStringInputs(nodeDefStore:)(v15, rawValue);
        outlined consume of NodePersonality(v12);
        if (v2)
        {

          goto LABEL_12;
        }
      }

      if (v5 >= v3)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
LABEL_12:
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> UserGraph.insertMaterialXDefaultValues(nodeDefStore:)(ShaderGraph::NodeDefStore nodeDefStore)
{
  v3 = v1;
  rawValue = nodeDefStore.implementations._rawValue;
  v16 = nodeDefStore.nodeDefs._rawValue;
  v17 = nodeDefStore.geomPropDefs._rawValue;
  v4 = *(*(v1 + 64) + 16);

  if (v4)
  {
    v6 = 0;
    v7 = v5 + 32;
    while (v6 < v4)
    {
      v9 = v7 + 48 * v6;
      v10 = *(v9 + 24);
      if (v10 == -7)
      {
        v8 = __OFADD__(v6++, 1);
        if (v8)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v8 = __OFADD__(v6++, 1);
        if (v8)
        {
          goto LABEL_15;
        }

        v11 = *(v9 + 8);
        v12 = *(v9 + 16);
        v13 = *v9;
        v14 = *(v9 + 40);
        v15 = *(v9 + 32);
        *&v18 = v13;
        *(&v18 + 1) = v11;
        v19 = v12;
        v20 = v10;
        v21 = v15;
        v22 = v14;
        outlined copy of NodePersonality(v13);

        closure #1 in UserGraph.insertMaterialXDefaultValues(nodeDefStore:)(&v18, v16, v17, rawValue, v3);
        outlined consume of NodePersonality(v13);
        if (v2)
        {

          goto LABEL_12;
        }
      }

      if (v6 >= v4)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
LABEL_12:
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> UserGraph.resolvingNodegraphImplementations(nodeDefStore:)(ShaderGraph::NodeDefStore nodeDefStore)
{
  v2 = v1;
  rawValue = nodeDefStore.implementations._rawValue;
  v16 = nodeDefStore.nodeDefs._rawValue;
  v17 = nodeDefStore.geomPropDefs._rawValue;
  v3 = *(*(v1 + 64) + 16);

  if (v3)
  {
    v5 = 0;
    v6 = v4 + 32;
    while (v5 < v3)
    {
      v7 = v6 + 48 * v5;
      v8 = *(v7 + 24);
      v10 = __OFADD__(v5++, 1);
      if (v8 == -7)
      {
        if (v10)
        {
          goto LABEL_14;
        }

        if (v5 >= v3)
        {
          goto LABEL_12;
        }
      }

      else
      {
        if (v10)
        {
          goto LABEL_15;
        }

        v11 = *(v7 + 40);
        v12 = *(v7 + 32);
        v14 = *(v7 + 8);
        v13 = *(v7 + 16);
        v15 = *v7;
        v18[0] = v15;
        v18[1] = v14;
        v18[2] = v13;
        v18[3] = v8;
        v18[4] = v12;
        v19 = v11;
        outlined copy of NodePersonality(v15);

        closure #1 in UserGraph.resolvingNodegraphImplementations(nodeDefStore:)(v18, v16, v17, rawValue, v2);
        outlined consume of NodePersonality(v15);

        if (v5 >= v3)
        {
          goto LABEL_12;
        }
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
LABEL_12:
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> UserGraph.removeEdgesToExplicitlyIgnoredInputs()()
{
  v1 = *(*(v0 + 64) + 16);

  if (v1)
  {
    v3 = 0;
    v4 = v2 + 32;
    while (v3 < v1)
    {
      v6 = (v4 + 48 * v3);
      if (v6[3] == -7)
      {
        v5 = __OFADD__(v3++, 1);
        if (v5)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v5 = __OFADD__(v3++, 1);
        if (v5)
        {
          goto LABEL_15;
        }

        v7 = *v6;
        if (*v6 >> 61 == 5)
        {
          v8 = v6[1];
          v9 = v6[2];
          v11 = *((v7 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          v10 = *((v7 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
          outlined copy of NodePersonality(v7);

          v12._countAndFlagsBits = 0x6567616D695F444ELL;
          v12._object = 0xE800000000000000;
          LOBYTE(v11) = String.hasPrefix(_:)(v12);

          if (v11)
          {
            v13 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(&outlined read-only object #0 of UserGraph.removeEdgesToExplicitlyIgnoredInputs());
            swift_arrayDestroy();

            specialized Sequence.forEach(_:)(v8, v13, v14);
            swift_bridgeObjectRelease_n();
          }

          outlined consume of NodePersonality(v7);
        }
      }

      if (v3 >= v1)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
LABEL_12:
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> UserGraph.resolveMaterialXEnums()()
{
  v2 = *(*(v0 + 64) + 16);

  if (v2)
  {
    v4 = 0;
    v5 = v3 + 32;
    while (v4 < v2)
    {
      v7 = (v5 + 48 * v4);
      if (v7[3] == -7)
      {
        v6 = __OFADD__(v4++, 1);
        if (v6)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v6 = __OFADD__(v4++, 1);
        if (v6)
        {
          goto LABEL_15;
        }

        v8 = v7[1];
        v9 = v7[2];
        v10 = *v7;
        outlined copy of NodePersonality(*v7);

        specialized Sequence.forEach(_:)(v8, v0, closure #1 in closure #1 in UserGraph.resolveMaterialXEnums());
        outlined consume of NodePersonality(v10);
        if (v1)
        {

          goto LABEL_12;
        }
      }

      if (v4 >= v2)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
LABEL_12:
  }
}

uint64_t UserGraph.replaceMultiOutputNodes()(void (*a1)(void *, uint64_t))
{
  v18 = a1;
  v3 = v1;
  v4 = *(*(v1 + 64) + 16);

  if (!v4)
  {
  }

  v6 = 0;
  v7 = result + 32;
  while (v6 < v4)
  {
    v9 = v7 + 48 * v6;
    v10 = *(v9 + 24);
    if (v10 == -7)
    {
      v8 = __OFADD__(v6++, 1);
      if (v8)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v8 = __OFADD__(v6++, 1);
      if (v8)
      {
        goto LABEL_15;
      }

      v11 = *(v9 + 8);
      v12 = *(v9 + 16);
      v13 = *v9;
      v14 = *(v9 + 40);
      v15 = *(v9 + 32);
      v16[0] = v13;
      v16[1] = v11;
      v16[2] = v12;
      v16[3] = v10;
      v16[4] = v15;
      v17 = v14;
      outlined copy of NodePersonality(v13);

      v18(v16, v3);
      outlined consume of NodePersonality(v13);
      if (v2)
      {
      }
    }

    if (v6 >= v4)
    {
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

Swift::Void __swiftcall UserGraph.transformSamplerNodes()()
{
  v1 = *(v0 + 64);
  v2 = (2 * *(v1 + 16)) | 1;
  v3[0] = 0;
  v3[1] = v1;
  v3[2] = v1 + 32;
  v3[3] = 0;
  v3[4] = v2;
  v3[5] = closure #1 in UserGraph.nodes.getter;
  v3[6] = 0;
  v3[7] = closure #1 in UserGraph.transformSamplerNodes();
  v3[8] = 0;

  specialized Sequence.forEach(_:)(v3, v0);
  outlined destroy of [Input](v3, &_ss18LazyFilterSequenceVy11ShaderGraph04UserE0V8IteratorVy_AC0dE4NodeVGGMd, &_ss18LazyFilterSequenceVy11ShaderGraph04UserE0V8IteratorVy_AC0dE4NodeVGGMR);
}

uint64_t UserGraph.transformGeomPropValueNodes(surface:geometryModifier:nodeDefStore:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a4;
  v5 = v4;
  v6 = *(*(v4 + 64) + 16);

  if (!v6)
  {
  }

  v8 = 0;
  v9 = result + 32;
  while (v8 < v6)
  {
    v10 = v9 + 48 * v8;
    v11 = *(v10 + 24);
    v13 = __OFADD__(v8++, 1);
    if (v11 == -7)
    {
      if (v13)
      {
        goto LABEL_14;
      }

      if (v8 >= v6)
      {
      }
    }

    else
    {
      if (v13)
      {
        goto LABEL_15;
      }

      v14 = *(v10 + 40);
      v15 = *(v10 + 32);
      v17 = *(v10 + 8);
      v16 = *(v10 + 16);
      v18 = *v10;
      v20[0] = v18;
      v20[1] = v17;
      v20[2] = v16;
      v20[3] = v11;
      v20[4] = v15;
      v21 = v14;
      outlined copy of NodePersonality(v18);

      specialized closure #1 in UserGraph.transformGeomPropValueNodes(surface:geometryModifier:nodeDefStore:)(v20, a3, v22, v5);
      outlined consume of NodePersonality(v18);

      if (v8 >= v6)
      {
      }
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

uint64_t UserGraph.insertParamsInputs(surface:geometryModifier:nodeDefStore:)(uint64_t *a1, unint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  v6 = a2 + 2;
  v5 = a2[2];
  result = specialized UserGraph.insertParamsInputs(surface:type:nodeDefStore:)(a1, 0);
  if (!v2)
  {
    if (v3)
    {
      v8 = v4;
      v9 = v3;
      v10[0] = *v6;
      *(v10 + 9) = *(v6 + 9);
      outlined copy of NodePersonality(v4);

      specialized UserGraph.insertParamsInputs(surface:type:nodeDefStore:)(&v8, 1);
      v11 = v8;
      outlined destroy of NodePersonality(&v11);
      v12 = v9;
      outlined destroy of [Input](&v12, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v13 = *&v10[0];
      return outlined destroy of [Input](&v13, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
    }
  }

  return result;
}

uint64_t UserGraph.rewireUniformInputs(customUniformsType:)(uint64_t a1)
{
  v4 = *(v1 + 96);

  v6 = specialized _ArrayProtocol.filter(_:)(v5, v1);

  v24 = *(v6 + 16);
  if (!v24)
  {
  }

  v70 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_265F1F670;
  *(inited + 32) = 7632239;
  *(inited + 40) = 0xE300000000000000;
  *(inited + 48) = a1;
  v8 = swift_allocObject();
  *(v8 + 16) = 12580;
  *(v8 + 24) = 0xE200000000000000;

  UserGraph.insertNode(inputs:outputs:shaderGraphData:)(MEMORY[0x277D84F90], inited, v8 | 0x6000000000000000, &v26);

  swift_setDeallocating();
  v9 = *(inited + 16);
  result = swift_arrayDestroy();
  v11 = 0;
  v25 = v27;
  v12 = (v6 + 80);
  while (v11 < *(v6 + 16))
  {
    v13 = v6;
    v14 = *(v12 - 5);
    v16 = *(v12 - 4);
    v15 = *(v12 - 3);
    v17 = *(v12 - 2);
    v18 = *(v12 - 8);
    v19 = *v12;
    v67[0] = *(v12 - 6);
    v67[1] = v14;
    v67[2] = v16;
    v67[3] = v15;
    v67[4] = v17;
    v68 = v18;
    v69 = v19;
    v66 = v25;
    specialized ShaderGraphNode.output(labeled:)(&v28, 7632239, 0xE300000000000000, v25);
    if (!v29)
    {

      MEMORY[0x266771550](7632239, 0xE300000000000000);
      MEMORY[0x266771550](32, 0xE100000000000000);
      _print_unlocked<A, B>(_:_:)();
      lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
      swift_allocError();
      *v21 = 14;
      *(v21 + 8) = 0;
      *(v21 + 16) = 0xE000000000000000;
      swift_willThrow();

      v65 = v26;
      outlined destroy of NodePersonality(&v65);
      v64 = *(&v26 + 1);
      v22 = &v64;
LABEL_13:
      outlined destroy of [Input](v22, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      return outlined destroy of [Input](&v66, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
    }

    v44 = v28;
    v45 = v29;
    v46 = v30;
    v47 = v31;
    v48 = v32;
    swift_bridgeObjectRetain_n();

    v20 = v70;
    Output.getProperty(_:_:)(v1, v16, v15, &v33);
    v70 = v20;
    if (v20)
    {

      v50 = v46;
      outlined destroy of String(&v50);

      v63 = v26;
      outlined destroy of NodePersonality(&v63);
      v62 = *(&v26 + 1);
      v22 = &v62;
      goto LABEL_13;
    }

    v49 = v46;
    outlined destroy of String(&v49);
    v61 = v34;
    specialized ShaderGraphNode.output(labeled:)(&v35, 7632239, 0xE300000000000000, v34);
    v6 = v13;
    if (!v36)
    {

      MEMORY[0x266771550](7632239, 0xE300000000000000);
      MEMORY[0x266771550](32, 0xE100000000000000);
      _print_unlocked<A, B>(_:_:)();
      lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
      swift_allocError();
      *v23 = 14;
      *(v23 + 8) = 0;
      *(v23 + 16) = 0xE000000000000000;
      swift_willThrow();
      v60 = v33;
      outlined destroy of NodePersonality(&v60);
      v59 = *(&v33 + 1);
      outlined destroy of [Input](&v59, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      outlined destroy of [Input](&v61, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

      v58 = v26;
      outlined destroy of NodePersonality(&v58);
      v57 = *(&v26 + 1);
      v22 = &v57;
      goto LABEL_13;
    }

    ++v11;
    v40[0] = v35;
    v40[1] = v36;
    v41 = v37;
    v42 = v38;
    v43 = v39;
    UserGraph.moveEdges(from:to:)(v67, v40);

    v51 = v41;
    outlined destroy of String(&v51);
    v56 = v33;
    outlined destroy of NodePersonality(&v56);
    v55 = *(&v33 + 1);
    outlined destroy of [Input](&v55, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    outlined destroy of [Input](&v61, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

    v12 += 7;
    if (v24 == v11)
    {

      v54 = v26;
      outlined destroy of NodePersonality(&v54);
      v53 = *(&v26 + 1);
      outlined destroy of [Input](&v53, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v52 = v25;
      return outlined destroy of [Input](&v52, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
    }
  }

  __break(1u);
  return result;
}

uint64_t UserGraph.resolveMaterialXNodeDefs(connectedTo:nodeDefStore:shaderType:)(uint64_t *a1, uint64_t a2, uint64_t a3, unsigned int (*a4)(char *, uint64_t, uint64_t), char a5)
{
  v6 = v5;
  if (a5)
  {
    if (one-time initialization token for realitykit_geometryModifier != -1)
    {
LABEL_33:
      swift_once();
    }

    v8 = &static MaterialXTarget.realitykit_geometryModifier;
  }

  else
  {
    if (one-time initialization token for realitykit_surfaceShader != -1)
    {
      swift_once();
    }

    v8 = &static MaterialXTarget.realitykit_surfaceShader;
  }

  v9 = *v8;
  v10 = v6[9];
  v53 = v6[8];
  v54[0] = v10;
  *(v54 + 9) = *(v6 + 153);
  v11 = v6[5];
  v49 = v6[4];
  v50 = v11;
  v12 = v6[7];
  v51 = v6[6];
  v52 = v12;
  v13 = v6[1];
  v45 = *v6;
  v46 = v13;
  v14 = v6[3];
  v47 = v6[2];
  v48 = v14;
  v40 = v9;
  swift_retain_n();
  UserGraph.connectedUpstreamSubgraph(rootedAt:)(a1, &v42);
  v15 = v42;

  v16 = *(v15 + 16);
  if (v16)
  {
    v42 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16, 0);
    v17 = v42;
    v18 = *(v42 + 16);
    v19 = 56;
    do
    {
      v20 = *(v15 + v19);
      v42 = v17;
      v21 = *(v17 + 24);
      if (v18 >= v21 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v18 + 1, 1);
        v17 = v42;
      }

      *(v17 + 16) = v18 + 1;
      *(v17 + 8 * v18 + 32) = v20;
      v19 += 48;
      ++v18;
      --v16;
    }

    while (v16);
  }

  else
  {

    v17 = MEMORY[0x277D84F90];
  }

  v22 = v49;
  v55 = v49;
  a1 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC11ShaderGraph0bC4NodeV2IDV_SayAHGTt0g5Tf4g_n(v17);

  v23 = *(v22 + 16);
  swift_bridgeObjectRetain_n();
  if (v23)
  {
    v24 = 0;
    v25 = 0;
LABEL_16:
    v26 = 48 * v24;
    while (v24 < v23)
    {
      v27 = v22 + v26;
      v28 = *(v22 + v26 + 56);
      if (v28 != -7)
      {
        v30 = __OFADD__(v24++, 1);
        if (!v30)
        {
          v30 = __OFADD__(v25++, 1);
          if (!v30)
          {
            v31 = *(v27 + 32);
            v32 = *(v27 + 40);
            v33 = *(v27 + 48);
            v34 = *(v27 + 64);
            v35 = *(v27 + 72);
            v43[0] = v31;
            v43[1] = v32;
            v43[2] = v33;
            v43[3] = v28;
            v43[4] = v34;
            v44 = v35;
            outlined copy of NodePersonality(v31);

            specialized closure #1 in UserGraph.resolveMaterialXNodeDefs(connectedTo:nodeDefStore:shaderType:)(v43, a2, a3, a4, a1, v40, v6);
            if (v41)
            {

              outlined destroy of [Input](&v55, &_sSay11ShaderGraph0aB4NodeVGMd, &_sSay11ShaderGraph0aB4NodeVGMR);

              outlined consume of NodePersonality(v31);
              swift_unknownObjectRelease();
            }

            outlined consume of NodePersonality(v31);

            if (v24 < v23)
            {
              goto LABEL_16;
            }

            goto LABEL_26;
          }

LABEL_32:
          __break(1u);
          goto LABEL_33;
        }

LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      v29 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        goto LABEL_30;
      }

      ++v24;
      v26 += 48;
      if (v29 >= v23)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

LABEL_26:

  outlined destroy of [Input](&v55, &_sSay11ShaderGraph0aB4NodeVGMd, &_sSay11ShaderGraph0aB4NodeVGMR);
  swift_unknownObjectRelease();
}

uint64_t specialized Sequence.forEach(_:)(uint64_t result, uint64_t a2, void (*a3)(void *, uint64_t))
{
  v4 = *(result + 16);
  if (v4)
  {
    v7 = (result + 80);
    while (1)
    {
      v8 = *v7;
      v9 = *(v7 - 8);
      v11 = *(v7 - 3);
      v10 = *(v7 - 2);
      v13 = *(v7 - 5);
      v12 = *(v7 - 4);
      v14[0] = *(v7 - 6);
      v14[1] = v13;
      v14[2] = v12;
      v14[3] = v11;
      v14[4] = v10;
      v15 = v9;
      v16 = v8;

      a3(v14, a2);
      if (v3)
      {
        break;
      }

      v7 += 7;

      if (!--v4)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t specialized Sequence.forEach(_:)(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v34 = *(a1 + 1);
  v4 = a1[4];
  v36 = a1[5];
  v35 = v4;
  v5 = a1[6];
  v24 = a1[7];
  v6 = a1[8];
  v33 = v2;
  v7 = *(&v34 + 1);
  v26 = v34;
  v8 = v4 >> 1;
  outlined init with copy of [Input](&v33, v30, &_ss10ArraySliceVy11ShaderGraph0cD4NodeVGMd, &_ss10ArraySliceVy11ShaderGraph0cD4NodeVGMR);

  while (1)
  {
    if (v3 >= v8)
    {

      return swift_unknownObjectRelease();
    }

    if (v3 < v7 || v3 >= v8)
    {
      break;
    }

    v12 = v26 + 48 * v3;
    v13 = *v12;
    v14 = *(v12 + 8);
    v15 = *(v12 + 16);
    v16 = *(v12 + 40);
    v27[0] = v13;
    v27[1] = v14;
    v27[2] = v15;
    v28 = *(v12 + 24);
    v29 = v16;
    outlined copy of NodePersonality(v13);

    v17 = v36(v27);
    outlined consume of NodePersonality(v13);

    if (v17)
    {
      v19 = *v12;
      v18 = *(v12 + 8);
      v20 = *(v12 + 16);
      v21 = *(v12 + 40);
      v30[0] = v19;
      v30[1] = v18;
      v30[2] = v20;
      v25 = *(v12 + 24);
      v31 = v25;
      v32 = v21;
      outlined copy of NodePersonality(v19);

      if (v24(v30))
      {
        v22 = *(a2 + 64);
        result = swift_isUniquelyReferenced_nonNull_native();
        *(a2 + 64) = v22;
        if ((result & 1) == 0)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew()(v22);
          v22 = result;
          *(a2 + 64) = result;
        }

        if ((v25 & 0x8000000000000000) != 0)
        {
          goto LABEL_17;
        }

        if (v25 >= *(v22 + 16))
        {
          goto LABEL_18;
        }

        v10 = v22 + 48 * v25;
        v11 = *(v10 + 32);
        *(v10 + 32) = 0xE000000000000008;
        outlined consume of NodePersonality(v11);
      }

      outlined consume of NodePersonality(v19);
    }

    ++v3;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

uint64_t ShaderGraphNode.isGetTextureNode.getter()
{
  if (*v0 >> 61 != 5)
  {
    return 0;
  }

  v1 = *((*v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v2 = *((*v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);

  v3._object = 0x8000000265F2D870;
  v3._countAndFlagsBits = 0xD000000000000013;
  LOBYTE(v1) = String.hasPrefix(_:)(v3);

  return v1 & 1;
}

uint64_t ShaderGraphNode.isMaterialXCubeimageNode.getter()
{
  if (*v0 >> 61 != 5)
  {
    return 0;
  }

  v1 = *((*v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v2 = *((*v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);

  v3._object = 0x8000000265F2D850;
  v3._countAndFlagsBits = 0xD000000000000017;
  LOBYTE(v1) = String.hasPrefix(_:)(v3);

  return v1 & 1;
}

uint64_t ShaderGraphNode.isRealityKitImageNode.getter()
{
  if (*v0 >> 61 != 5)
  {
    return 0;
  }

  v1 = *((*v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v2 = *((*v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);

  v3._object = 0x8000000265F2D830;
  v3._countAndFlagsBits = 0xD000000000000014;
  LOBYTE(v1) = String.hasPrefix(_:)(v3);

  return v1 & 1;
}

uint64_t UserGraph.transformGetTextureNodes<A>(_:textureAssignments:customUniformsType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17[0] = a3;
  v8 = type metadata accessor for LazySequence();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = type metadata accessor for LazyFilterSequence();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v17 - v14;
  MEMORY[0x2667716D0](a4, a5, v13);
  swift_getWitnessTable();
  LazySequenceProtocol.filter(_:)();
  v17[4] = v17[1];
  v17[5] = a2;
  v17[6] = v17[0];
  swift_getWitnessTable();
  Sequence.forEach(_:)();
  return (*(v11 + 8))(v15, v10);
}

unint64_t UserGraph.transformMaterialXImageNodes<A>(_:paramType:textureAssignments:customUniformsType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v225 = a3;
  v226 = a4;
  v7 = *(a5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  v10 = &v202 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v219 = *(AssociatedTypeWitness - 8);
  v12 = *(v219 + 64);
  v13 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v15 = &v202 - v14;
  (*(v7 + 16))(v10, a1, a5, v13);
  dispatch thunk of Sequence.makeIterator()();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v17 = AssociatedTypeWitness;
  dispatch thunk of IteratorProtocol.next()();
  v19 = *&v236[8];
  v227 = v15;
  if (!*&v236[8])
  {
    return (*(v219 + 8))(v227, v17);
  }

  v20 = *v236;
  v21 = *&v236[24];
  v22 = v236[40];
  v215 = 0x8000000265F2D8E0;
  *&v18 = 136315138;
  v210 = v18;
  v211 = xmmword_265F1F680;
  v23 = v224;
  v221 = AssociatedTypeWitness;
  v213 = AssociatedConformanceWitness;
  while (1)
  {
    v233 = v19;
    if (v20 >> 61 == 5)
    {
      break;
    }

    outlined consume of NodePersonality(v20);

LABEL_4:

    dispatch thunk of IteratorProtocol.next()();
    v20 = *v236;
    v19 = *&v236[8];
    v21 = *&v236[24];
    v22 = v236[40];
    if (!*&v236[8])
    {
      return (*(v219 + 8))(v227, v17);
    }
  }

  v232 = v21;
  v25 = *((v20 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v24 = *((v20 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);

  v26._countAndFlagsBits = 0x6567616D695F444ELL;
  v26._object = 0xE800000000000000;
  v27 = String.hasPrefix(_:)(v26);

  if (!v27)
  {
    outlined consume of NodePersonality(v20);

    v17 = v221;
    goto LABEL_4;
  }

  v28 = *(&v233 + 1);
  specialized ShaderGraphNode.output(labeled:)(&v243, 7632239, 0xE300000000000000, *(&v233 + 1));
  v29 = v244;
  if (!v244)
  {
    v234 = 0;
    v235 = 0xE000000000000000;
    MEMORY[0x266771550](7632239, 0xE300000000000000);
    MEMORY[0x266771550](32, 0xE100000000000000);
    *v236 = v20;
    *&v236[8] = v233;
    *&v236[24] = v232;
    v236[40] = v22 & 1;
    _print_unlocked<A, B>(_:_:)();
    v163 = v234;
    v164 = v235;
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    *v165 = 14;
    *(v165 + 8) = v163;
    *(v165 + 16) = v164;
    swift_willThrow();
    (*(v219 + 8))(v227, v221);
    outlined consume of NodePersonality(v20);
    goto LABEL_168;
  }

  v398 = v245;
  v30 = outlined destroy of String(&v398);
  v31 = (*(*v29 + 144))(v30);

  if (!v31)
  {
    v234 = 0;
    v235 = 0xE000000000000000;
    *v236 = v20;
    *&v236[8] = v233;
    *&v236[24] = v232;
    v236[40] = v22 & 1;
    _print_unlocked<A, B>(_:_:)();
    v166 = v234;
    v167 = v235;
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    *v168 = 8;
    *(v168 + 8) = v166;
    *(v168 + 16) = v167;
    swift_willThrow();
    outlined consume of NodePersonality(v20);

    goto LABEL_155;
  }

  specialized ShaderGraphNode.metalTextureType.getter(v20);

  v217 = v31;
  UserGraph.insertImageNode(metalTextureType:resultType:)(v32, v31, &v246);

  specialized ShaderGraphNode.output(labeled:)(&v248, 7632239, 0xE300000000000000, v28);
  if (!v249)
  {
    v234 = 0;
    v235 = 0xE000000000000000;
    MEMORY[0x266771550](7632239, 0xE300000000000000);
    MEMORY[0x266771550](32, 0xE100000000000000);
    *v236 = v20;
    *&v236[8] = v233;
    *&v236[24] = v232;
    v236[40] = v22 & 1;
    _print_unlocked<A, B>(_:_:)();
    v169 = v234;
    v170 = v235;
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    *v171 = 14;
    *(v171 + 8) = v169;
    *(v171 + 16) = v170;
    swift_willThrow();
    (*(v219 + 8))(v227, v221);
    v472 = v246;
    outlined destroy of NodePersonality(&v472);
    v471 = *(&v246 + 1);
    outlined destroy of [Input](&v471, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    v470 = *&v247[0];
    v172 = &v470;
    goto LABEL_167;
  }

  v394[0] = v248;
  v394[1] = v249;
  v395 = v250;
  v396 = v251;
  v397 = v252;
  v469 = *&v247[0];
  specialized ShaderGraphNode.output(labeled:)(&v253, 7632239, 0xE300000000000000, *&v247[0]);
  if (!v254)
  {
    v234 = 0;
    v235 = 0xE000000000000000;
    MEMORY[0x266771550](7632239, 0xE300000000000000);
    MEMORY[0x266771550](32, 0xE100000000000000);
    *v236 = v246;
    *&v236[16] = v247[0];
    *&v236[25] = *(v247 + 9);
    _print_unlocked<A, B>(_:_:)();
    v173 = v234;
    v174 = v235;
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    *v175 = 14;
    *(v175 + 8) = v173;
    *(v175 + 16) = v174;
    swift_willThrow();
    (*(v219 + 8))(v227, v221);

    v399 = v395;
    outlined destroy of String(&v399);
    v468 = v246;
    outlined destroy of NodePersonality(&v468);
    v467 = *(&v246 + 1);
    outlined destroy of [Input](&v467, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    v172 = &v469;
    goto LABEL_167;
  }

  v390[0] = v253;
  v390[1] = v254;
  v391 = v255;
  v392 = v256;
  v393 = v257;
  UserGraph.moveEdges(from:to:)(v394, v390);

  v401 = v391;
  outlined destroy of String(&v401);

  v400 = v395;
  outlined destroy of String(&v400);
  *v236 = 0;
  *&v236[8] = 0xE000000000000000;
  _StringGuts.grow(_:)(27);

  *v236 = 0xD000000000000018;
  *&v236[8] = v215;
  v234 = 1701080942;
  v235 = 0xE400000000000000;
  v242 = v232;
  v33 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266771550](v33);

  MEMORY[0x266771550](v234, v235);

  MEMORY[0x266771550](39, 0xE100000000000000);
  specialized UserGraph.insertCreateSampler(label:)(&v258);

  v466 = *&v259[0];
  specialized ShaderGraphNode.output(labeled:)(&v260, 7632239, 0xE300000000000000, *&v259[0]);
  if (!v261)
  {
    v234 = 0;
    v235 = 0xE000000000000000;
    MEMORY[0x266771550](7632239, 0xE300000000000000);
    MEMORY[0x266771550](32, 0xE100000000000000);
    *v236 = v258;
    *&v236[16] = v259[0];
    *&v236[25] = *(v259 + 9);
    _print_unlocked<A, B>(_:_:)();
    v176 = v234;
    v177 = v235;
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    *v178 = 14;
    *(v178 + 8) = v176;
    *(v178 + 16) = v177;
    swift_willThrow();
    (*(v219 + 8))(v227, v221);
    v465 = v258;
    outlined destroy of NodePersonality(&v465);
    v464 = *(&v258 + 1);
    outlined destroy of [Input](&v464, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    outlined destroy of [Input](&v466, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
    v463 = v246;
    outlined destroy of NodePersonality(&v463);
    v462 = *(&v246 + 1);
    v179 = &v462;
LABEL_166:
    outlined destroy of [Input](v179, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    v172 = &v469;
LABEL_167:
    outlined destroy of [Input](v172, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

    outlined consume of NodePersonality(v20);
LABEL_168:
  }

  v386[0] = v260;
  v386[1] = v261;
  v387 = v262;
  v388 = v263;
  v389 = v264;
  v461 = *(&v246 + 1);
  v231 = *(&v246 + 1);
  specialized ShaderGraphNode.output(labeled:)(&v265, 115, 0xE100000000000000, *(&v246 + 1));
  if (!v266)
  {
    v234 = 0;
    v235 = 0xE000000000000000;
    MEMORY[0x266771550](115, 0xE100000000000000);
    MEMORY[0x266771550](32, 0xE100000000000000);
    *v236 = v246;
    *&v236[16] = v247[0];
    *&v236[25] = *(v247 + 9);
    _print_unlocked<A, B>(_:_:)();
    v180 = v234;
    v181 = v235;
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    *v182 = 11;
    *(v182 + 8) = v180;
    *(v182 + 16) = v181;
    swift_willThrow();
    (*(v219 + 8))(v227, v221);

    v402 = v387;
    outlined destroy of String(&v402);
    v460 = v258;
    outlined destroy of NodePersonality(&v460);
    v459 = *(&v258 + 1);
    outlined destroy of [Input](&v459, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    outlined destroy of [Input](&v466, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
    v458 = v246;
    outlined destroy of NodePersonality(&v458);
    v179 = &v461;
    goto LABEL_166;
  }

  v382[0] = v265;
  v382[1] = v266;
  v383 = v267;
  v384 = v268;
  v385 = v269;
  v34 = v490;
  UserGraph.connect(_:to:)(v386, v382);

  v404 = v383;
  outlined destroy of String(&v404);

  v403 = v387;
  outlined destroy of String(&v403);
  v35 = v233;
  v228 = *(v233 + 16);
  if (!v228)
  {
    v429 = v246;

    outlined destroy of NodePersonality(&v429);
    outlined destroy of [Input](&v461, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    outlined destroy of [Input](&v469, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

    v428 = v258;
    outlined destroy of NodePersonality(&v428);
    v427 = *(&v258 + 1);
    v153 = &v427;
LABEL_151:
    outlined destroy of [Input](v153, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    outlined destroy of [Input](&v466, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
    outlined consume of NodePersonality(v20);

    v17 = v221;
    goto LABEL_4;
  }

  v229 = v233 + 32;

  v36 = 0;
  v218 = v20;
  v216 = v28;
  v230 = v35;
  while (1)
  {
    if (v36 >= v35[2].isa)
    {
      __break(1u);
LABEL_171:

      v234 = 0;
      v235 = 0xE000000000000000;
      v222 = v34;
      MEMORY[0x266771550](0x7365726464615F73, 0xE900000000000073);
      MEMORY[0x266771550](32, 0xE100000000000000);
      *v236 = v258;
      *&v236[16] = v259[0];
      *&v236[25] = *(v259 + 9);
      _print_unlocked<A, B>(_:_:)();
      v223 = v35;
      v186 = v234;
      v187 = v235;
      lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
      swift_allocError();
      *v188 = 11;
      *(v188 + 8) = v186;
      *(v188 + 16) = v187;
      swift_willThrow();
      v446 = v246;
      outlined destroy of NodePersonality(&v446);
      outlined destroy of [Input](&v461, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      outlined destroy of [Input](&v469, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

      v445 = v258;
      outlined destroy of NodePersonality(&v445);
      v157 = &v447;
      goto LABEL_154;
    }

    v37 = (v229 + 56 * v36);
    v38 = *v37;
    v35 = v37[1];
    v39 = v37[2];
    v34 = v37[3];
    v40 = v37[4];
    v41 = *(v37 + 40);
    v42 = v37[6];
    *&v232 = v38;
    *&v473 = v38;
    *(&v473 + 1) = v35;
    *&v474 = v39;
    *(&v474 + 1) = v34;
    *&v475 = v40;
    BYTE8(v475) = v41;
    v476 = v42;
    v43 = v39 == 1701603686 && v34 == 0xE400000000000000;
    if (v43 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      specialized ShaderGraphNode.output(labeled:)(&v270, 1701603686, 0xE400000000000000, v231);
      if (v271)
      {
        v344[0] = v270;
        v344[1] = v271;
        v345 = v272;
        v346 = v273;
        v347 = v274;

        v34 = v490;
        UserGraph.convertFilenameInput(_:movingTo:textureAssignments:customUniformsType:)(&v473, v344, v225, v226);
        if (v23)
        {
          outlined consume of NodePersonality(v20);

          v435 = v246;
          outlined destroy of NodePersonality(&v435);
          v223 = v35;
          outlined destroy of [Input](&v461, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
          outlined destroy of [Input](&v469, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

          v434 = v258;
          outlined destroy of NodePersonality(&v434);
          v433 = *(&v258 + 1);
          outlined destroy of [Input](&v433, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
          outlined destroy of [Input](&v466, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

          v426 = v345;
          outlined destroy of String(&v426);

          goto LABEL_157;
        }

        v425 = v345;
        outlined destroy of String(&v425);

        goto LABEL_66;
      }

      v234 = 0;
      v235 = 0xE000000000000000;
      v222 = v34;
      MEMORY[0x266771550](1701603686, 0xE400000000000000);
      MEMORY[0x266771550](32, 0xE100000000000000);
      *v236 = v246;
      *&v236[16] = v247[0];
      *&v236[25] = *(v247 + 9);
      _print_unlocked<A, B>(_:_:)();
      v223 = v35;
      v154 = v234;
      v155 = v235;
      lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
      swift_allocError();
      *v156 = 11;
      *(v156 + 8) = v154;
      *(v156 + 16) = v155;
      swift_willThrow();
      v438 = v246;
      outlined destroy of NodePersonality(&v438);
      outlined destroy of [Input](&v461, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      outlined destroy of [Input](&v469, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

      v437 = v258;
      outlined destroy of NodePersonality(&v437);
      v436 = *(&v258 + 1);
      v157 = &v436;
LABEL_154:
      outlined destroy of [Input](v157, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      outlined destroy of [Input](&v466, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

      outlined consume of NodePersonality(v20);

      goto LABEL_155;
    }

    v44 = v39 == 0x746C7561666564 && v34 == 0xE700000000000000;
    if (v44 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v223 = v35;
      v45 = v227;
      specialized ShaderGraphNode.output(labeled:)(&v275, 0x56746C7561666564, 0xEA00000000006C61, v231);
      v222 = v34;
      if (!v276)
      {

        v234 = 0;
        v235 = 0xE000000000000000;
        MEMORY[0x266771550](0x56746C7561666564, 0xEA00000000006C61);
        MEMORY[0x266771550](32, 0xE100000000000000);
        *v236 = v246;
        *&v236[16] = v247[0];
        *&v236[25] = *(v247 + 9);
        _print_unlocked<A, B>(_:_:)();
        v160 = v234;
        v161 = v235;
        lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
        swift_allocError();
        *v162 = 11;
        *(v162 + 8) = v160;
        *(v162 + 16) = v161;
        swift_willThrow();
        v441 = v246;
        outlined destroy of NodePersonality(&v441);
        outlined destroy of [Input](&v461, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
        outlined destroy of [Input](&v469, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

        v440 = v258;
        outlined destroy of NodePersonality(&v440);
        v439 = *(&v258 + 1);
        outlined destroy of [Input](&v439, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
        outlined destroy of [Input](&v466, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

        outlined consume of NodePersonality(v20);

        v158 = *(v219 + 8);
        v159 = v45;
        return v158(v159, v221);
      }

      v220 = v36;
      v46 = v275;
      v354[0] = v275;
      v354[1] = v276;
      v355 = v277;
      v356 = v278;
      v357 = v279;
      specialized OrderedDictionary.subscript.getter(v232, *v490, v490[1], v490[2], &v280);
      v47 = v281;
      if (v281)
      {
        v212 = v46;
        v224 = v23;
        v48 = v285;
        v49 = v284;
        v50 = v283;
        v214 = v282;
        v51 = v280;
        v34 = v223;

        specialized OrderedDictionary.subscript.getter(&v473, v50, v49, v48, &v286);
        v20 = v218;
        v23 = v224;
        outlined consume of UserGraph.Adjacent?(v51, v47);
        v52 = v287;
        if (v287 > 1)
        {
          v53 = v288;
          v54 = v289;
          v55 = v290;
          v56 = v292;
          v214 = v286;
          v348[0] = v286;
          v348[1] = v287;
          v349 = v288;
          v350 = v289;
          v351 = v290;
          *v352 = *v291;
          *&v352[3] = *&v291[3];
          v353 = v292;
          v57 = specialized OrderedDictionary.subscript.modify(v236, v212);
          if (*(v58 + 8))
          {
            v420 = v277;
            v424 = v349;
            v479[0] = v214;
            v479[1] = v52;
            v480 = v53;
            v481 = v54;
            v482 = v55 & 1;
            v483 = v56;
            v59 = v57;

            outlined init with copy of String(&v420, &v234);

            outlined init with copy of String(&v424, &v234);
            specialized OrderedDictionary.subscript.setter(v479, v354);
            v59(v236, 0);
          }

          else
          {
            v57(v236, 0);
          }

          v62 = specialized OrderedDictionary.subscript.modify(v236, v232);
          v20 = v218;
          v23 = v224;
          if (*(v63 + 8))
          {
            v477[0] = v211;
            memset(&v477[1], 0, 32);
            v478 = 0;

            specialized OrderedDictionary.subscript.setter(v477, &v473);
          }

          v62(v236, 0);
          v64 = v348[0];
          v65 = specialized OrderedDictionary.subscript.modify(v236, v348[0]);
          if (*(v66 + 8))
          {
            v67 = specialized OrderedDictionary.subscript.modify(&v234, v348);
            if (*(v68 + 8))
            {
              specialized OrderedSet.remove(_:)(&v473, v293);
              outlined destroy of [Input](v293, &_s11ShaderGraph5InputVSgMd, &_s11ShaderGraph5InputVSgMR);
            }

            v67(&v234, 0);
            v65(v236, 0);
            v23 = v224;
          }

          else
          {
            v65(v236, 0);
          }

          v69 = specialized OrderedDictionary.subscript.modify(v236, v64);
          if (*(v70 + 8))
          {
            v71 = specialized OrderedDictionary.subscript.modify(&v234, v348);
            if (*(v72 + 8))
            {
              specialized OrderedSet._append(_:)(v354);
              v71(&v234, 0);
              v69(v236, 0);

              v423 = v349;
              v73 = &v423;
            }

            else
            {
              v71(&v234, 0);
              v69(v236, 0);

              v422 = v349;
              v73 = &v422;
            }
          }

          else
          {
            v69(v236, 0);

            v421 = v349;
            v73 = &v421;
          }

          outlined destroy of String(v73);
          v34 = v223;
        }
      }

      else
      {
        v34 = v223;
      }

      v419 = v355;
      outlined destroy of String(&v419);

      v36 = v220;
      goto LABEL_66;
    }

    v60 = v39 == 0x64726F6F63786574 && v34 == 0xE800000000000000;
    if (v60 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      specialized ShaderGraphNode.output(labeled:)(&v294, 0x64726F6F63786574, 0xE800000000000000, v231);
      if (!v295)
      {

        v234 = 0;
        v235 = 0xE000000000000000;
        v222 = v34;
        MEMORY[0x266771550](0x64726F6F63786574, 0xE800000000000000);
        MEMORY[0x266771550](32, 0xE100000000000000);
        *v236 = v246;
        *&v236[16] = v247[0];
        *&v236[25] = *(v247 + 9);
        _print_unlocked<A, B>(_:_:)();
        v223 = v35;
        v183 = v234;
        v184 = v235;
        lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
        swift_allocError();
        *v185 = 11;
        *(v185 + 8) = v183;
        *(v185 + 16) = v184;
        swift_willThrow();
        v444 = v246;
        outlined destroy of NodePersonality(&v444);
        outlined destroy of [Input](&v461, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
        outlined destroy of [Input](&v469, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

        v443 = v258;
        outlined destroy of NodePersonality(&v443);
        v442 = *(&v258 + 1);
        v157 = &v442;
        goto LABEL_154;
      }

      v358[0] = v294;
      v358[1] = v295;
      v359 = v296;
      v360 = v297;
      v361 = v298;

      v34 = v490;
      UserGraph.moveEdge(from:to:)(&v473, v358);

      v20 = v218;
      v418 = v359;
      v61 = &v418;
LABEL_42:
      outlined destroy of String(v61);
LABEL_43:

      goto LABEL_66;
    }

    v74 = v39 == 0x7373657264646175 && v34 == 0xEC00000065646F6DLL;
    if (v74 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v447 = *(&v258 + 1);
      specialized ShaderGraphNode.output(labeled:)(&v299, 0x7365726464615F73, 0xE900000000000073, *(&v258 + 1));
      if (!v300)
      {
        goto LABEL_171;
      }

      v362[0] = v299;
      v362[1] = v300;
      v363 = v301;
      v364 = v302;
      v365 = v303;

      v34 = v490;
      UserGraph.moveEdge(from:to:)(&v473, v362);

      v20 = v218;
      v417 = v363;
      v61 = &v417;
      goto LABEL_42;
    }

    if (v39 == 0x7373657264646176 && v34 == 0xEC00000065646F6DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v450 = *(&v258 + 1);
      specialized ShaderGraphNode.output(labeled:)(&v304, 0x7365726464615F74, 0xE900000000000073, *(&v258 + 1));
      if (!v305)
      {

        v234 = 0;
        v235 = 0xE000000000000000;
        v222 = v34;
        MEMORY[0x266771550](0x7365726464615F74, 0xE900000000000073);
        MEMORY[0x266771550](32, 0xE100000000000000);
        *v236 = v258;
        *&v236[16] = v259[0];
        *&v236[25] = *(v259 + 9);
        _print_unlocked<A, B>(_:_:)();
        v223 = v35;
        v189 = v234;
        v190 = v235;
        lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
        swift_allocError();
        *v191 = 11;
        *(v191 + 8) = v189;
        *(v191 + 16) = v190;
        swift_willThrow();
        v449 = v246;
        outlined destroy of NodePersonality(&v449);
        outlined destroy of [Input](&v461, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
        outlined destroy of [Input](&v469, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

        v448 = v258;
        outlined destroy of NodePersonality(&v448);
        v157 = &v450;
        goto LABEL_154;
      }

      v366[0] = v304;
      v366[1] = v305;
      v367 = v306;
      v368 = v307;
      v369 = v308;

      v34 = v490;
      UserGraph.moveEdge(from:to:)(&v473, v366);

      v20 = v218;
      v416 = v367;
      v61 = &v416;
      goto LABEL_42;
    }

    if (v39 == 0x79747265746C6966 && v34 == 0xEA00000000006570 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    if ((v39 != 0x726579616CLL || v34 != 0xE500000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 && (v39 != 0x6E6172656D617266 || v34 != 0xEA00000000006567) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 && (v39 != 0x66666F656D617266 || v34 != 0xEB00000000746573))
    {
      v147 = v34;
      if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 && (v39 != 0x646E65656D617266 || v34 != 0xEE006E6F69746361) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        v148 = one-time initialization token for logger;

        if (v148 != -1)
        {
          swift_once();
        }

        v149 = type metadata accessor for Logger();
        __swift_project_value_buffer(v149, logger);
        v223 = v35;

        v34 = Logger.logObject.getter();
        v150 = static os_log_type_t.error.getter();

        LODWORD(v224) = v150;
        *&v232 = v34;
        if (os_log_type_enabled(v34, v150))
        {
          v151 = swift_slowAlloc();
          v152 = swift_slowAlloc();
          *v236 = v152;
          *v151 = v210;
          *(v151 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v147, v236);
          v34 = v232;
          _os_log_impl(&dword_265D7D000, v232, v224, "Ignoring unexpected image node input '%s'", v151, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v152);
          MEMORY[0x266773120](v152, -1, -1);
          MEMORY[0x266773120](v151, -1, -1);
        }

        else
        {
        }
      }

      v20 = v218;
      v35 = v230;
      goto LABEL_67;
    }

LABEL_66:
    v35 = v230;
LABEL_67:
    v36 = (v36 + 1);
    if (v36 == v228)
    {
      v432 = v246;
      outlined destroy of NodePersonality(&v432);
      outlined destroy of [Input](&v461, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      outlined destroy of [Input](&v469, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

      v431 = v258;
      outlined destroy of NodePersonality(&v431);
      v430 = *(&v258 + 1);
      v153 = &v430;
      goto LABEL_151;
    }
  }

  v457 = *(&v258 + 1);
  v214 = *(&v258 + 1);
  specialized ShaderGraphNode.output(labeled:)(v309, 0x746C69665F67616DLL, 0xEA00000000007265, *(&v258 + 1));
  v222 = v34;
  v223 = v35;
  if (!*(&v309[0] + 1))
  {

    v234 = 0;
    v235 = 0xE000000000000000;
    MEMORY[0x266771550](0x746C69665F67616DLL, 0xEA00000000007265);
    MEMORY[0x266771550](32, 0xE100000000000000);
    *v236 = v258;
    *&v236[16] = v259[0];
    *&v236[25] = *(v259 + 9);
    _print_unlocked<A, B>(_:_:)();
    v192 = v234;
    v193 = v235;
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    *v194 = 11;
    *(v194 + 8) = v192;
    *(v194 + 16) = v193;
    swift_willThrow();
    v456 = v246;
    outlined destroy of NodePersonality(&v456);
    outlined destroy of [Input](&v461, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    outlined destroy of [Input](&v469, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

    v455 = v258;
    v195 = &v455;
LABEL_175:
    outlined destroy of NodePersonality(v195);
    v157 = &v457;
    goto LABEL_154;
  }

  result = *&v309[0];
  v378 = v309[0];
  v379 = v309[1];
  v380 = v309[2];
  v381 = v310;
  v77 = *v490;
  v76 = v490[1];
  v212 = v490[2];
  v78 = v76 + 32;
  v208 = v76;
  v209 = v77;
  v79 = *(v76 + 16);
  v220 = v36;
  if (!v77)
  {
    if (v79)
    {
      v81 = 0;
      while (*(v78 + 8 * v81) != *&v309[0])
      {
        if (v79 == ++v81)
        {
          goto LABEL_89;
        }
      }

      goto LABEL_81;
    }

    goto LABEL_89;
  }

  result = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(*&v309[0], v78, v79, v209 + 16, v209 + 32);
  if (v80)
  {
LABEL_89:
    v224 = v23;

    goto LABEL_105;
  }

  v81 = result;
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_178:
    __break(1u);
LABEL_179:
    __break(1u);
LABEL_180:
    __break(1u);
LABEL_181:
    __break(1u);
LABEL_182:
    __break(1u);
LABEL_183:
    __break(1u);
LABEL_184:
    __break(1u);
    return result;
  }

LABEL_81:
  if (v81 >= *(v212 + 16))
  {
    goto LABEL_178;
  }

  v82 = (v212 + 48 * v81);
  v84 = v82[7];
  v83 = v82[8];
  v207 = v82[9];
  v85 = *(v83 + 16);
  v224 = v23;
  if (v84)
  {

    result = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(&v378, v83 + 32, v85, v84 + 16, v84 + 32);
    if ((v86 & 1) == 0)
    {
      v206 = v84;
      v87 = v207;
      goto LABEL_101;
    }

LABEL_100:

    goto LABEL_105;
  }

  v206 = 0;

  v87 = v207;

  result = specialized Collection<>.firstIndex(of:)(&v378, v83 + 32, v85);
  if (v88)
  {
    goto LABEL_100;
  }

LABEL_101:
  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_182;
  }

  if (result >= *(v87 + 16))
  {
    goto LABEL_181;
  }

  v89 = (v87 + 56 * result);
  v90 = v89[4];
  v91 = v89[5];
  v92 = v89[7];
  v93 = v89[8];
  v94 = v89[9];
  v95 = v89[10];
  v203 = v89[6];
  v204 = v90;
  v96 = v92;
  v205 = v93;
  v207 = v95;
  outlined copy of Output?(v90, v91);
  v97 = v91;

  if (v91)
  {

    v98 = v96;

    v100 = v203;
    v99 = v204;
    outlined consume of Output?(v204, v97);
    LOBYTE(v234) = v94 & 1;
    v238 = v378;
    v239 = v379;
    v240 = v380;
    v241 = v381;
    *v236 = v99;
    *&v236[8] = v97;
    *&v236[16] = v100;
    *&v236[24] = v98;
    *&v236[32] = v205;
    v236[40] = v94 & 1;
    v237 = v207;
    outlined destroy of Edge(v236);
  }

  else
  {
LABEL_105:
    specialized OrderedDictionary.subscript.getter(v232, v209, v208, v212, &v313);
    v101 = v314;
    if (!v314)
    {
      goto LABEL_107;
    }

    v102 = v318;
    v103 = v317;
    v104 = v316;
    v105 = v315;
    v409 = v313;

    outlined destroy of [Input](&v409, &_s11ShaderGraph10_HashTableV7StorageCSgMd, &_s11ShaderGraph10_HashTableV7StorageCSgMR);
    v408 = v101;
    outlined destroy of [Input](&v408, &_ss15ContiguousArrayVy11ShaderGraph6OutputVGMd, &_ss15ContiguousArrayVy11ShaderGraph6OutputVGMR);
    v407 = v105;
    outlined destroy of [Input](&v407, &_ss15ContiguousArrayVy11ShaderGraph10OrderedSetVyAC5InputVGGMd, &_ss15ContiguousArrayVy11ShaderGraph10OrderedSetVyAC5InputVGGMR);

    specialized OrderedDictionary.subscript.getter(&v473, v104, v103, v102, &v319);

    v106 = v320;
    if (v320 >= 2)
    {
      v107 = v325;
      v108 = v324;
      v109 = v323;
      v110 = v322;
      v111 = v321;
      v112 = v319;

      outlined destroy of [Input](&v319, &_s11ShaderGraph6OutputVSgSgMd, &_s11ShaderGraph6OutputVSgSgMR);
      LOBYTE(v234) = v108 & 1;
      v238 = v473;
      v239 = v474;
      v240 = v475;
      v241 = v476;
      *v236 = v112;
      *&v236[8] = v106;
      *&v236[16] = v111;
      *&v236[24] = v110;
      *&v236[32] = v109;
      v236[40] = v108 & 1;
      v237 = v107;
      v487[0] = v112;
      v487[1] = v106;
      v20 = v218;
      v487[2] = v111;
      v487[3] = v110;
      v487[4] = v109;
      v488 = v108 & 1;
      v489 = v107;

      outlined destroy of Edge(v236);
      UserGraph.connect(_:to:)(v487, &v378);

      v405 = v379;
      outlined destroy of String(&v405);
    }

    else
    {
LABEL_107:

      v406 = v379;
      outlined destroy of String(&v406);
    }
  }

  specialized ShaderGraphNode.output(labeled:)(v311, 0x746C69665F70696DLL, 0xEA00000000007265, v214);
  if (!*(&v311[0] + 1))
  {

    v234 = 0;
    v235 = 0xE000000000000000;
    MEMORY[0x266771550](0x746C69665F70696DLL, 0xEA00000000007265);
    MEMORY[0x266771550](32, 0xE100000000000000);
    *v236 = v258;
    *&v236[16] = v259[0];
    *&v236[25] = *(v259 + 9);
    _print_unlocked<A, B>(_:_:)();
    v196 = v234;
    v197 = v235;
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    *v198 = 11;
    *(v198 + 8) = v196;
    *(v198 + 16) = v197;
    swift_willThrow();
    v454 = v246;
    outlined destroy of NodePersonality(&v454);
    outlined destroy of [Input](&v461, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    outlined destroy of [Input](&v469, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

    v453 = v258;
    v195 = &v453;
    goto LABEL_175;
  }

  result = *&v311[0];
  v374 = v311[0];
  v375 = v311[1];
  v376 = v311[2];
  v377 = v312;
  v113 = *v490;
  v114 = v490[1];
  v115 = v490[2];
  v116 = v114 + 32;
  v117 = *(v114 + 16);
  if (!*v490)
  {
    if (v117)
    {
      v119 = 0;
      while (*(v116 + 8 * v119) != *&v311[0])
      {
        if (v117 == ++v119)
        {
          goto LABEL_132;
        }
      }

      v209 = v490[1];
      v23 = v224;
      goto LABEL_120;
    }

    goto LABEL_132;
  }

  result = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(*&v311[0], v116, v117, v113 + 16, v113 + 32);
  if (v118)
  {
    goto LABEL_132;
  }

  v119 = result;
  v209 = v114;
  v23 = v224;
  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_179;
  }

LABEL_120:
  v208 = v113;
  if (v119 >= *(v115 + 16))
  {
    goto LABEL_180;
  }

  v207 = v115;
  v120 = (v115 + 48 * v119);
  v121 = v120[7];
  v122 = v120[8];
  v212 = v120[9];
  v123 = *(v122 + 16);
  if (v121)
  {

    result = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(&v374, v122 + 32, v123, v121 + 16, v121 + 32);
    if ((v124 & 1) == 0)
    {
      v224 = v122;
      goto LABEL_126;
    }

LABEL_125:
    v224 = v23;

LABEL_131:
    v115 = v207;
    v113 = v208;
    v114 = v209;
LABEL_132:
    specialized OrderedDictionary.subscript.getter(v232, v113, v114, v115, &v331);
    v135 = v332;
    if (!v332)
    {
      goto LABEL_134;
    }

    v136 = v336;
    v137 = v335;
    v138 = v334;
    v139 = v333;
    v414 = v331;

    outlined destroy of [Input](&v414, &_s11ShaderGraph10_HashTableV7StorageCSgMd, &_s11ShaderGraph10_HashTableV7StorageCSgMR);
    v413 = v135;
    outlined destroy of [Input](&v413, &_ss15ContiguousArrayVy11ShaderGraph6OutputVGMd, &_ss15ContiguousArrayVy11ShaderGraph6OutputVGMR);
    v412 = v139;
    outlined destroy of [Input](&v412, &_ss15ContiguousArrayVy11ShaderGraph10OrderedSetVyAC5InputVGGMd, &_ss15ContiguousArrayVy11ShaderGraph10OrderedSetVyAC5InputVGGMR);

    specialized OrderedDictionary.subscript.getter(&v473, v138, v137, v136, &v337);

    v140 = v338;
    if (v338 >= 2)
    {
      v141 = v343;
      v142 = v342;
      v143 = v341;
      v144 = v340;
      v145 = v339;
      v146 = v337;

      outlined destroy of [Input](&v337, &_s11ShaderGraph6OutputVSgSgMd, &_s11ShaderGraph6OutputVSgSgMR);
      LOBYTE(v234) = v142 & 1;
      v238 = v473;
      v239 = v474;
      v240 = v475;
      v241 = v476;
      *v236 = v146;
      *&v236[8] = v140;
      *&v236[16] = v145;
      *&v236[24] = v144;
      *&v236[32] = v143;
      v236[40] = v142 & 1;
      v237 = v141;
      v484[0] = v146;
      v484[1] = v140;
      v20 = v218;
      v484[2] = v145;
      v484[3] = v144;
      v484[4] = v143;
      v485 = v142 & 1;
      v486 = v141;

      outlined destroy of Edge(v236);
      UserGraph.connect(_:to:)(v484, &v374);

      v410 = v375;
      outlined destroy of String(&v410);
    }

    else
    {
LABEL_134:

      v411 = v375;
      outlined destroy of String(&v411);
    }

    v23 = v224;
  }

  else
  {

    v224 = v122;
    result = specialized Collection<>.firstIndex(of:)(&v374, v122 + 32, v123);
    if (v125)
    {
      goto LABEL_125;
    }

LABEL_126:
    if ((result & 0x8000000000000000) != 0)
    {
      goto LABEL_183;
    }

    if (result >= *(v212 + 16))
    {
      goto LABEL_184;
    }

    v126 = (v212 + 56 * result);
    v127 = v126[4];
    v128 = v126[5];
    v129 = v126[6];
    v130 = v126[8];
    v131 = v126[9];
    v132 = v126[10];
    v202 = v126[7];
    v203 = v127;
    v204 = v130;
    v205 = v129;
    v206 = v132;
    outlined copy of Output?(v127, v128);

    if (!v128)
    {
      v224 = v23;
      goto LABEL_131;
    }

    v133 = v202;

    v134 = v203;
    outlined consume of Output?(v203, v128);
    v238 = v374;
    LOBYTE(v234) = v131 & 1;
    v239 = v375;
    v240 = v376;
    v241 = v377;
    *v236 = v134;
    *&v236[8] = v128;
    *&v236[16] = v205;
    *&v236[24] = v133;
    *&v236[32] = v204;
    v236[40] = v131 & 1;
    v237 = v206;
    outlined destroy of Edge(v236);
  }

  v36 = v220;
  specialized ShaderGraphNode.output(labeled:)(&v326, 0x746C69665F6E696DLL, 0xEA00000000007265, v214);
  if (v327)
  {
    v370[0] = v326;
    v370[1] = v327;
    v371 = v328;
    v372 = v329;
    v373 = v330;
    v34 = v490;
    UserGraph.moveEdge(from:to:)(&v473, v370);

    v415 = v371;
    outlined destroy of String(&v415);
    goto LABEL_43;
  }

  v234 = 0;
  v235 = 0xE000000000000000;
  MEMORY[0x266771550](0x746C69665F6E696DLL, 0xEA00000000007265);
  MEMORY[0x266771550](32, 0xE100000000000000);
  *v236 = v258;
  *&v236[16] = v259[0];
  *&v236[25] = *(v259 + 9);
  _print_unlocked<A, B>(_:_:)();
  v199 = v234;
  v200 = v235;
  lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
  swift_allocError();
  *v201 = 11;
  *(v201 + 8) = v199;
  *(v201 + 16) = v200;
  swift_willThrow();
  v452 = v246;
  outlined destroy of NodePersonality(&v452);
  outlined destroy of [Input](&v461, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
  outlined destroy of [Input](&v469, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

  v451 = v258;
  outlined destroy of NodePersonality(&v451);
  outlined destroy of [Input](&v457, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
  outlined destroy of [Input](&v466, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

  outlined consume of NodePersonality(v20);

LABEL_155:

LABEL_157:
  v158 = *(v219 + 8);
  v159 = v227;
  return v158(v159, v221);
}

uint64_t UserGraph.transformMaterialXCubeimageNodes<A>(_:paramType:textureAssignments:customUniformsType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v96 = a3;
  v97 = a4;
  v7 = *(a5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  v10 = &v92 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v99 = *(AssociatedTypeWitness - 8);
  v12 = *(v99 + 64);
  v13 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v15 = &v92 - v14;
  (*(v7 + 16))(v10, a1, a5, v13);
  dispatch thunk of Sequence.makeIterator()();
  v16 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v107 = v15;
  v18 = AssociatedConformanceWitness;
  dispatch thunk of IteratorProtocol.next()();
  v19 = *(v112 + 8);
  if (!*(&v112[0] + 1))
  {
    return (*(v99 + 8))(v107, v16);
  }

  v20 = *&v112[0];
  v21 = *(&v112[1] + 1);
  v22 = *&v112[2];
  v23 = BYTE8(v112[2]);
  v102 = "ND_realitykit_image_";
  v103 = v16;
  v94 = v18;
  v95 = 0x8000000265F2D8C0;
  while (1)
  {
    v108 = v19;
    v24 = *(&v19 + 1);
    if (v20 >> 61 != 5)
    {
      goto LABEL_4;
    }

    v26 = *((v20 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v25 = *((v20 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);

    v27._object = (v102 | 0x8000000000000000);
    v27._countAndFlagsBits = 0xD000000000000017;
    v28 = String.hasPrefix(_:)(v27);

    if (!v28)
    {
      v16 = v103;
      goto LABEL_4;
    }

    specialized ShaderGraphNode.output(labeled:)(&v113, 7632239, 0xE300000000000000, v24);
    v29 = v114;
    if (!v114)
    {
      v110 = 0;
      v111 = 0xE000000000000000;
      MEMORY[0x266771550](7632239, 0xE300000000000000);
      MEMORY[0x266771550](32, 0xE100000000000000);
      *&v112[0] = v20;
      *(v112 + 8) = v108;
      *(&v112[1] + 1) = v21;
      *&v112[2] = v22;
      BYTE8(v112[2]) = v23 & 1;
      _print_unlocked<A, B>(_:_:)();
      v39 = v110;
      v40 = v111;
      lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
      swift_allocError();
      *v41 = 14;
      *(v41 + 8) = v39;
      *(v41 + 16) = v40;
      swift_willThrow();
      (*(v99 + 8))(v107, v103);
      outlined consume of NodePersonality(v20);
    }

    v246 = v115;
    v30 = outlined destroy of String(&v246);
    v31 = (*(*v29 + 144))(v30);

    v104 = v31;
    if (!v31)
    {
      *&v112[0] = 0;
      *(&v112[0] + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(40);

      *&v112[0] = 0xD000000000000025;
      *(&v112[0] + 1) = 0x8000000265F2D890;
      v110 = 1701080942;
      v111 = 0xE400000000000000;
      v109 = v21;
      v42 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266771550](v42);

      MEMORY[0x266771550](v110, v111);

      MEMORY[0x266771550](39, 0xE100000000000000);
      v43 = v112[0];
      lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
      swift_allocError();
      *v44 = 2;
      *(v44 + 8) = v43;
      swift_willThrow();
      outlined consume of NodePersonality(v20);

      return (*(v99 + 8))(v107, v103);
    }

    v101 = v24;
    *&v112[0] = 0;
    *(&v112[0] + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(31);

    *&v112[0] = 0xD00000000000001CLL;
    *(&v112[0] + 1) = v95;
    v109 = v21;
    v110 = 1701080942;
    v111 = 0xE400000000000000;
    v32 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266771550](v32);

    MEMORY[0x266771550](v110, v111);

    MEMORY[0x266771550](39, 0xE100000000000000);
    specialized UserGraph.insertCreateSampler(label:)(&v116);

    v106 = v108;
    specialized ShaderGraphNode.output(labeled:)(&v118, 0x79747265746C6966, 0xEA00000000006570, v108);
    if (!v119)
    {
      v110 = 0;
      v111 = 0xE000000000000000;
      MEMORY[0x266771550](0x79747265746C6966, 0xEA00000000006570);
      MEMORY[0x266771550](32, 0xE100000000000000);
      *&v112[0] = v20;
      *(v112 + 8) = v108;
      *(&v112[1] + 1) = v21;
      *&v112[2] = v22;
      BYTE8(v112[2]) = v23 & 1;
      _print_unlocked<A, B>(_:_:)();
      v45 = v110;
      v46 = v111;
      lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
      swift_allocError();
      *v47 = 11;
      *(v47 + 8) = v45;
      *(v47 + 16) = v46;
      swift_willThrow();
      (*(v99 + 8))(v107, v103);
      v336[0] = v116;
      outlined destroy of NodePersonality(v336);
      v335 = *(&v116 + 1);
      outlined destroy of [Input](&v335, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v334 = *&v117[0];
      v48 = &v334;
      goto LABEL_43;
    }

    v242[0] = v118;
    v242[1] = v119;
    v243 = v120;
    v244 = v121;
    v245 = v122;
    v33 = *(&v116 + 1);
    v333 = *(&v116 + 1);
    specialized ShaderGraphNode.output(labeled:)(&v123, 0x746C69665F67616DLL, 0xEA00000000007265, *(&v116 + 1));
    if (!v124)
    {
      v110 = 0;
      v111 = 0xE000000000000000;
      MEMORY[0x266771550](0x746C69665F67616DLL, 0xEA00000000007265);
      MEMORY[0x266771550](32, 0xE100000000000000);
      v112[0] = v116;
      v112[1] = v117[0];
      *(&v112[1] + 9) = *(v117 + 9);
      _print_unlocked<A, B>(_:_:)();
      v49 = v110;
      v50 = v111;
      lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
      swift_allocError();
      *v51 = 11;
      *(v51 + 8) = v49;
      *(v51 + 16) = v50;
      swift_willThrow();
      (*(v99 + 8))(v107, v103);

      v257 = v243;
      outlined destroy of String(&v257);
      v332 = v116;
      outlined destroy of NodePersonality(&v332);
      outlined destroy of [Input](&v333, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v331 = *&v117[0];
      v48 = &v331;
      goto LABEL_43;
    }

    v100 = v20;
    v238[0] = v123;
    v238[1] = v124;
    v239 = v125;
    v240 = v126;
    v241 = v127;
    UserGraph.copyEdge(originalDestination:newDestination:)(v242, v238);

    v262 = v239;
    outlined destroy of String(&v262);
    specialized ShaderGraphNode.output(labeled:)(&v128, 0x746C69665F70696DLL, 0xEA00000000007265, v33);
    if (!v129)
    {
      v110 = 0;
      v111 = 0xE000000000000000;
      MEMORY[0x266771550](0x746C69665F70696DLL, 0xEA00000000007265);
      MEMORY[0x266771550](32, 0xE100000000000000);
      v112[0] = v116;
      v112[1] = v117[0];
      *(&v112[1] + 9) = *(v117 + 9);
      _print_unlocked<A, B>(_:_:)();
      v52 = v110;
      v53 = v111;
      lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
      swift_allocError();
      *v54 = 11;
      *(v54 + 8) = v52;
      *(v54 + 16) = v53;
      swift_willThrow();
      (*(v99 + 8))(v107, v103);

      v256 = v243;
      outlined destroy of String(&v256);
      v330 = v116;
      outlined destroy of NodePersonality(&v330);
      outlined destroy of [Input](&v333, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v329 = *&v117[0];
      v55 = &v329;
      goto LABEL_32;
    }

    v98 = v23;
    v234[0] = v128;
    v234[1] = v129;
    v235 = v130;
    v236 = v131;
    v237 = v132;
    UserGraph.copyEdge(originalDestination:newDestination:)(v242, v234);

    v263 = v235;
    outlined destroy of String(&v263);
    specialized ShaderGraphNode.output(labeled:)(&v133, 0x746C69665F6E696DLL, 0xEA00000000007265, v33);
    if (!v134)
    {
      v110 = 0;
      v111 = 0xE000000000000000;
      MEMORY[0x266771550](0x746C69665F6E696DLL, 0xEA00000000007265);
      MEMORY[0x266771550](32, 0xE100000000000000);
      v112[0] = v116;
      v112[1] = v117[0];
      *(&v112[1] + 9) = *(v117 + 9);
      _print_unlocked<A, B>(_:_:)();
      v56 = v110;
      v57 = v111;
      lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
      swift_allocError();
      *v58 = 11;
      *(v58 + 8) = v56;
      *(v58 + 16) = v57;
      swift_willThrow();
      (*(v99 + 8))(v107, v103);

      v255 = v243;
      outlined destroy of String(&v255);
      v328 = v116;
      outlined destroy of NodePersonality(&v328);
      outlined destroy of [Input](&v333, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v327 = *&v117[0];
      v55 = &v327;
LABEL_32:
      outlined destroy of [Input](v55, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

      v59 = v100;
LABEL_44:
      outlined consume of NodePersonality(v59);
      goto LABEL_45;
    }

    v230[0] = v133;
    v230[1] = v134;
    v231 = v135;
    v232 = v136;
    v233 = v137;
    UserGraph.moveEdge(from:to:)(v242, v230);

    v264 = v231;
    outlined destroy of String(&v264);
    v20 = v100;
    specialized ShaderGraphNode.metalTextureType.getter(v100);

    UserGraph.insertCubeimageNode(metalTextureType:resultType:)(v34, v104, &v138);

    specialized ShaderGraphNode.output(labeled:)(&v140, 1701603686, 0xE400000000000000, v106);
    if (!v141)
    {
      v110 = 0;
      v111 = 0xE000000000000000;
      MEMORY[0x266771550](1701603686, 0xE400000000000000);
      MEMORY[0x266771550](32, 0xE100000000000000);
      *&v112[0] = v20;
      *(v112 + 8) = v108;
      *(&v112[1] + 1) = v21;
      *&v112[2] = v22;
      BYTE8(v112[2]) = v98 & 1;
      _print_unlocked<A, B>(_:_:)();
      v60 = v110;
      v61 = v111;
      lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
      swift_allocError();
      *v62 = 11;
      *(v62 + 8) = v60;
      *(v62 + 16) = v61;
      swift_willThrow();
      (*(v99 + 8))(v107, v103);
      v326 = v138;
      outlined destroy of NodePersonality(&v326);
      v325 = *(&v138 + 1);
      outlined destroy of [Input](&v325, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v324 = *&v139[0];
      outlined destroy of [Input](&v324, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

      v254 = v243;
      outlined destroy of String(&v254);
      v323 = v116;
      outlined destroy of NodePersonality(&v323);
      outlined destroy of [Input](&v333, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v322 = *&v117[0];
      v48 = &v322;
LABEL_43:
      outlined destroy of [Input](v48, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

      v59 = v20;
      goto LABEL_44;
    }

    v226[0] = v140;
    v226[1] = v141;
    v227 = v142;
    v228 = v143;
    v229 = v144;
    v35 = *(&v138 + 1);
    v321 = *(&v138 + 1);
    specialized ShaderGraphNode.output(labeled:)(&v145, 1701603686, 0xE400000000000000, *(&v138 + 1));
    if (!v146)
    {
      v110 = 0;
      v111 = 0xE000000000000000;
      MEMORY[0x266771550](1701603686, 0xE400000000000000);
      MEMORY[0x266771550](32, 0xE100000000000000);
      v112[0] = v138;
      v112[1] = v139[0];
      *(&v112[1] + 9) = *(v139 + 9);
      _print_unlocked<A, B>(_:_:)();
      v63 = v110;
      v64 = v111;
      lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
      swift_allocError();
      *v65 = 11;
      *(v65 + 8) = v63;
      *(v65 + 16) = v64;
      swift_willThrow();
      (*(v99 + 8))(v107, v103);

      v266 = v227;
      outlined destroy of String(&v266);
      v320 = v138;
      outlined destroy of NodePersonality(&v320);
      outlined destroy of [Input](&v321, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v319 = *&v139[0];
      outlined destroy of [Input](&v319, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

      v253 = v243;
      outlined destroy of String(&v253);
      v318 = v116;
      outlined destroy of NodePersonality(&v318);
      outlined destroy of [Input](&v333, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v317 = *&v117[0];
      v48 = &v317;
      goto LABEL_43;
    }

    v222[0] = v145;
    v222[1] = v146;
    v223 = v147;
    v224 = v148;
    v225 = v149;
    v36 = v105;
    UserGraph.convertFilenameInput(_:movingTo:textureAssignments:customUniformsType:)(v226, v222, v96, v97);
    v105 = v36;
    if (v36)
    {
      (*(v99 + 8))(v107, v103);

      v268 = v223;
      outlined destroy of String(&v268);

      v265 = v227;
      outlined destroy of String(&v265);
      v316 = v138;
      outlined destroy of NodePersonality(&v316);
      outlined destroy of [Input](&v321, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v315 = *&v139[0];
      outlined destroy of [Input](&v315, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

      v252 = v243;
      outlined destroy of String(&v252);
      v314 = v116;
      outlined destroy of NodePersonality(&v314);
      outlined destroy of [Input](&v333, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v313 = *&v117[0];
      outlined destroy of [Input](&v313, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

      outlined consume of NodePersonality(v20);
    }

    v269 = v223;
    outlined destroy of String(&v269);

    v267 = v227;
    outlined destroy of String(&v267);
    specialized ShaderGraphNode.output(labeled:)(&v150, 0x746C7561666564, 0xE700000000000000, v106);
    if (!v151)
    {
      v110 = 0;
      v111 = 0xE000000000000000;
      MEMORY[0x266771550](0x746C7561666564, 0xE700000000000000);
      MEMORY[0x266771550](32, 0xE100000000000000);
      *&v112[0] = v20;
      *(v112 + 8) = v108;
      *(&v112[1] + 1) = v21;
      *&v112[2] = v22;
      BYTE8(v112[2]) = v98 & 1;
      _print_unlocked<A, B>(_:_:)();
      v66 = v110;
      v67 = v111;
      lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
      swift_allocError();
      *v68 = 11;
      *(v68 + 8) = v66;
      *(v68 + 16) = v67;
      swift_willThrow();
      (*(v99 + 8))(v107, v103);
      v312 = v138;
      outlined destroy of NodePersonality(&v312);
      outlined destroy of [Input](&v321, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v311 = *&v139[0];
      outlined destroy of [Input](&v311, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

      v251 = v243;
      outlined destroy of String(&v251);
      v310 = v116;
      outlined destroy of NodePersonality(&v310);
      outlined destroy of [Input](&v333, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v309 = *&v117[0];
      v48 = &v309;
      goto LABEL_43;
    }

    v93 = v22;
    v218[0] = v150;
    v218[1] = v151;
    v219 = v152;
    v220 = v153;
    v221 = v154;
    specialized ShaderGraphNode.output(labeled:)(&v155, 0x56746C7561666564, 0xEA00000000006C61, v35);
    v37 = v98;
    if (!v156)
    {
      v110 = 0;
      v111 = 0xE000000000000000;
      MEMORY[0x266771550](0x56746C7561666564, 0xEA00000000006C61);
      MEMORY[0x266771550](32, 0xE100000000000000);
      v112[0] = v138;
      v112[1] = v139[0];
      *(&v112[1] + 9) = *(v139 + 9);
      _print_unlocked<A, B>(_:_:)();
      v69 = v110;
      v70 = v111;
      lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
      swift_allocError();
      *v71 = 11;
      *(v71 + 8) = v69;
      *(v71 + 16) = v70;
      swift_willThrow();
      (*(v99 + 8))(v107, v103);

      v270 = v219;
      outlined destroy of String(&v270);
      v308 = v138;
      outlined destroy of NodePersonality(&v308);
      outlined destroy of [Input](&v321, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v307 = *&v139[0];
      outlined destroy of [Input](&v307, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

      v250 = v243;
      outlined destroy of String(&v250);
      v306 = v116;
      outlined destroy of NodePersonality(&v306);
      outlined destroy of [Input](&v333, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v305 = *&v117[0];
      v48 = &v305;
      goto LABEL_43;
    }

    v214[0] = v155;
    v214[1] = v156;
    v215 = v157;
    v216 = v158;
    v217 = v159;
    UserGraph.moveEdge(from:to:)(v218, v214);

    v272 = v215;
    outlined destroy of String(&v272);

    v271 = v219;
    outlined destroy of String(&v271);
    specialized ShaderGraphNode.output(labeled:)(&v160, 0x64726F6F63786574, 0xE800000000000000, v106);
    if (!v161)
    {
      v110 = 0;
      v111 = 0xE000000000000000;
      MEMORY[0x266771550](0x64726F6F63786574, 0xE800000000000000);
      MEMORY[0x266771550](32, 0xE100000000000000);
      *&v112[0] = v20;
      *(v112 + 8) = v108;
      *(&v112[1] + 1) = v21;
      *&v112[2] = v93;
      BYTE8(v112[2]) = v37 & 1;
      _print_unlocked<A, B>(_:_:)();
      v72 = v110;
      v73 = v111;
      lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
      swift_allocError();
      *v74 = 11;
      *(v74 + 8) = v72;
      *(v74 + 16) = v73;
      swift_willThrow();
      (*(v99 + 8))(v107, v103);
      v304 = v138;
      outlined destroy of NodePersonality(&v304);
      outlined destroy of [Input](&v321, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v303 = *&v139[0];
      outlined destroy of [Input](&v303, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

      v249 = v243;
      outlined destroy of String(&v249);
      v302 = v116;
      outlined destroy of NodePersonality(&v302);
      outlined destroy of [Input](&v333, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v301 = *&v117[0];
      v48 = &v301;
      goto LABEL_43;
    }

    v210[0] = v160;
    v210[1] = v161;
    v211 = v162;
    v212 = v163;
    v213 = v164;
    specialized ShaderGraphNode.output(labeled:)(&v165, 0x64726F6F63786574, 0xE800000000000000, v35);
    if (!v166)
    {
      v110 = 0;
      v111 = 0xE000000000000000;
      MEMORY[0x266771550](0x64726F6F63786574, 0xE800000000000000);
      MEMORY[0x266771550](32, 0xE100000000000000);
      v112[0] = v138;
      v112[1] = v139[0];
      *(&v112[1] + 9) = *(v139 + 9);
      _print_unlocked<A, B>(_:_:)();
      v75 = v110;
      v76 = v111;
      lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
      swift_allocError();
      *v77 = 11;
      *(v77 + 8) = v75;
      *(v77 + 16) = v76;
      swift_willThrow();
      (*(v99 + 8))(v107, v103);

      v273 = v211;
      outlined destroy of String(&v273);
      v300 = v138;
      outlined destroy of NodePersonality(&v300);
      outlined destroy of [Input](&v321, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v299 = *&v139[0];
      outlined destroy of [Input](&v299, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

      v248 = v243;
      outlined destroy of String(&v248);
      v298 = v116;
      outlined destroy of NodePersonality(&v298);
      outlined destroy of [Input](&v333, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v297 = *&v117[0];
      v48 = &v297;
      goto LABEL_43;
    }

    v206[0] = v165;
    v206[1] = v166;
    v207 = v167;
    v208 = v168;
    v209 = v169;
    UserGraph.moveEdge(from:to:)(v210, v206);

    v275 = v207;
    outlined destroy of String(&v275);

    v274 = v211;
    outlined destroy of String(&v274);
    v296 = *&v117[0];
    specialized ShaderGraphNode.output(labeled:)(&v170, 7632239, 0xE300000000000000, *&v117[0]);
    if (!v171)
    {
      v110 = 0;
      v111 = 0xE000000000000000;
      MEMORY[0x266771550](7632239, 0xE300000000000000);
      MEMORY[0x266771550](32, 0xE100000000000000);
      v112[0] = v116;
      v112[1] = v117[0];
      *(&v112[1] + 9) = *(v117 + 9);
      _print_unlocked<A, B>(_:_:)();
      v78 = v110;
      v79 = v111;
      lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
      swift_allocError();
      *v80 = 14;
      *(v80 + 8) = v78;
      *(v80 + 16) = v79;
      swift_willThrow();
      (*(v99 + 8))(v107, v103);
      v295 = v138;
      outlined destroy of NodePersonality(&v295);
      outlined destroy of [Input](&v321, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v294 = *&v139[0];
      outlined destroy of [Input](&v294, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

      v261 = v243;
      outlined destroy of String(&v261);
      v293 = v116;
      v81 = &v293;
LABEL_42:
      outlined destroy of NodePersonality(v81);
      outlined destroy of [Input](&v333, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v48 = &v296;
      goto LABEL_43;
    }

    v202[0] = v170;
    v202[1] = v171;
    v203 = v172;
    v204 = v173;
    v205 = v174;
    specialized ShaderGraphNode.output(labeled:)(&v175, 0x72656C706D6173, 0xE700000000000000, v35);
    if (!v176)
    {
      v110 = 0;
      v111 = 0xE000000000000000;
      MEMORY[0x266771550](0x72656C706D6173, 0xE700000000000000);
      MEMORY[0x266771550](32, 0xE100000000000000);
      v112[0] = v138;
      v112[1] = v139[0];
      *(&v112[1] + 9) = *(v139 + 9);
      _print_unlocked<A, B>(_:_:)();
      v82 = v110;
      v83 = v111;
      lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
      swift_allocError();
      *v84 = 11;
      *(v84 + 8) = v82;
      *(v84 + 16) = v83;
      swift_willThrow();
      (*(v99 + 8))(v107, v103);

      v276 = v203;
      outlined destroy of String(&v276);
      v292 = v138;
      outlined destroy of NodePersonality(&v292);
      outlined destroy of [Input](&v321, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v291 = *&v139[0];
      outlined destroy of [Input](&v291, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

      v247 = v243;
      outlined destroy of String(&v247);
      v290 = v116;
      v81 = &v290;
      goto LABEL_42;
    }

    v198[0] = v175;
    v198[1] = v176;
    v199 = v177;
    v200 = v178;
    v201 = v179;
    UserGraph.connect(_:to:)(v202, v198);

    v278 = v199;
    outlined destroy of String(&v278);

    v277 = v203;
    outlined destroy of String(&v277);
    specialized ShaderGraphNode.output(labeled:)(&v180, 7632239, 0xE300000000000000, v101);
    if (!v181)
    {
      break;
    }

    v194[0] = v180;
    v194[1] = v181;
    v195 = v182;
    v196 = v183;
    v197 = v184;
    v286 = *&v139[0];
    specialized ShaderGraphNode.output(labeled:)(&v185, 7632239, 0xE300000000000000, *&v139[0]);
    if (!v186)
    {
      v110 = 0;
      v111 = 0xE000000000000000;
      MEMORY[0x266771550](7632239, 0xE300000000000000);
      MEMORY[0x266771550](32, 0xE100000000000000);
      v112[0] = v138;
      v112[1] = v139[0];
      *(&v112[1] + 9) = *(v139 + 9);
      _print_unlocked<A, B>(_:_:)();
      v89 = v110;
      v90 = v111;
      lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
      swift_allocError();
      *v91 = 14;
      *(v91 + 8) = v89;
      *(v91 + 16) = v90;
      swift_willThrow();
      (*(v99 + 8))(v107, v103);

      v279 = v195;
      outlined destroy of String(&v279);
      v285 = v138;
      outlined destroy of NodePersonality(&v285);
      outlined destroy of [Input](&v321, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      outlined destroy of [Input](&v286, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

      v258 = v243;
      outlined destroy of String(&v258);
      v284 = v116;
      v88 = &v284;
      goto LABEL_49;
    }

    v190[0] = v185;
    v190[1] = v186;
    v191 = v187;
    v192 = v188;
    v193 = v189;
    UserGraph.moveEdges(from:to:)(v194, v190);

    v281 = v191;
    outlined destroy of String(&v281);

    v280 = v195;
    outlined destroy of String(&v280);
    v283 = v138;
    outlined destroy of NodePersonality(&v283);
    outlined destroy of [Input](&v321, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    outlined destroy of [Input](&v286, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

    v259 = v243;
    outlined destroy of String(&v259);
    v282 = v116;
    outlined destroy of NodePersonality(&v282);
    outlined destroy of [Input](&v333, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    outlined destroy of [Input](&v296, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

    v16 = v103;
LABEL_4:
    outlined consume of NodePersonality(v20);

    dispatch thunk of IteratorProtocol.next()();
    v20 = *&v112[0];
    v19 = *(v112 + 8);
    v21 = *(&v112[1] + 1);
    v22 = *&v112[2];
    v23 = BYTE8(v112[2]);
    if (!*(&v112[0] + 1))
    {
      return (*(v99 + 8))(v107, v16);
    }
  }

  v110 = 0;
  v111 = 0xE000000000000000;
  MEMORY[0x266771550](7632239, 0xE300000000000000);
  MEMORY[0x266771550](32, 0xE100000000000000);
  *&v112[0] = v20;
  *(v112 + 8) = v108;
  *(&v112[1] + 1) = v21;
  *&v112[2] = v93;
  BYTE8(v112[2]) = v37 & 1;
  _print_unlocked<A, B>(_:_:)();
  v85 = v110;
  v86 = v111;
  lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
  swift_allocError();
  *v87 = 14;
  *(v87 + 8) = v85;
  *(v87 + 16) = v86;
  swift_willThrow();
  (*(v99 + 8))(v107, v103);
  v289 = v138;
  outlined destroy of NodePersonality(&v289);
  outlined destroy of [Input](&v321, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
  v288 = *&v139[0];
  outlined destroy of [Input](&v288, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

  v260 = v243;
  outlined destroy of String(&v260);
  v287 = v116;
  v88 = &v287;
LABEL_49:
  outlined destroy of NodePersonality(v88);
  outlined destroy of [Input](&v333, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
  outlined destroy of [Input](&v296, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

  outlined consume of NodePersonality(v20);
LABEL_45:
}

uint64_t UserGraph.transformRealityKitImageNodes<A>(_:paramType:textureAssignments:customUniformsType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(*(a5 - 8) + 64);
  v6 = MEMORY[0x28223BE20](a1);
  (*(v8 + 16))(&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  v9 = Sequence.filter(_:)();

  specialized Sequence.forEach(_:)(v9);
}

uint64_t *MaterialXHardcodedNames.realityKitBackgroundBlurNodes.unsafeMutableAddressor()
{
  if (one-time initialization token for realityKitBackgroundBlurNodes != -1)
  {
    swift_once();
  }

  return &static MaterialXHardcodedNames.realityKitBackgroundBlurNodes;
}

double UserGraph.insertGeomPropGetter(_:outputType:nodeDefStore:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  specialized UserGraph.insertGeomPropGetter(_:outputType:nodeDefStore:)(a1, a2, a3, &v8);
  if (!v4)
  {
    v7 = v9[0];
    *a4 = v8;
    a4[1] = v7;
    result = *(v9 + 9);
    *(a4 + 25) = *(v9 + 9);
  }

  return result;
}

double UserGraph.insertConstantValue(type:valueString:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_265F1F670;
  *(inited + 32) = 7632239;
  *(inited + 40) = 0xE300000000000000;
  *(inited + 48) = a1;
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  *(v9 + 80) = 6;
  *(v9 + 88) = a1;
  swift_retain_n();

  UserGraph.insertNode(inputs:outputs:shaderGraphData:)(MEMORY[0x277D84F90], inited, v9, &v13);

  swift_setDeallocating();
  v10 = *(inited + 16);
  swift_arrayDestroy();
  v11 = v14[0];
  *a4 = v13;
  a4[1] = v11;
  result = *(v14 + 9);
  *(a4 + 25) = *(v14 + 9);
  return result;
}

uint64_t one-time initialization function for passthroughNodeNames()
{
  v0 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for passthroughNodeNames);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SStMd, &_sSS_SStMR);
  result = swift_arrayDestroy();
  passthroughNodeNames._rawValue = v0;
  return result;
}

uint64_t one-time initialization function for validLODOptionsSets()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyShySSGGMd, &_ss23_ContiguousArrayStorageCyShySSGGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_265F24120;
  *(v0 + 32) = MEMORY[0x277D84FA0];
  v1 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for validLODOptionsSets);
  outlined destroy of String(&unk_287795880);
  *(v0 + 40) = v1;
  v2 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(&outlined read-only object #1 of one-time initialization function for validLODOptionsSets);
  outlined destroy of String(&unk_2877958B0);
  *(v0 + 48) = v2;
  v3 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(&outlined read-only object #2 of one-time initialization function for validLODOptionsSets);
  outlined destroy of String(&unk_2877958E0);
  *(v0 + 56) = v3;
  v4 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(&outlined read-only object #3 of one-time initialization function for validLODOptionsSets);
  outlined destroy of String(&unk_287795910);
  *(v0 + 64) = v4;
  v5 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(&outlined read-only object #4 of one-time initialization function for validLODOptionsSets);
  outlined destroy of String(&unk_287795940);
  *(v0 + 72) = v5;
  v6 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(&outlined read-only object #5 of one-time initialization function for validLODOptionsSets);
  swift_arrayDestroy();
  *(v0 + 80) = v6;
  v7 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(&outlined read-only object #6 of one-time initialization function for validLODOptionsSets);
  swift_arrayDestroy();
  *(v0 + 88) = v7;
  v8 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(&outlined read-only object #7 of one-time initialization function for validLODOptionsSets);
  result = swift_arrayDestroy();
  *(v0 + 96) = v8;
  validLODOptionsSets._rawValue = v0;
  return result;
}

uint64_t one-time initialization function for realityKitBackgroundBlurNodes()
{
  v0 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for realityKitBackgroundBlurNodes);
  result = swift_arrayDestroy();
  static MaterialXHardcodedNames.realityKitBackgroundBlurNodes = v0;
  return result;
}

uint64_t (*static MaterialXHardcodedNames.realityKitBackgroundBlurNodes.modify())()
{
  if (one-time initialization token for realityKitBackgroundBlurNodes != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return XMLParserDelegate.Element.children.modify;
}

uint64_t one-time initialization function for realityKitLightSpillNodes()
{
  v0 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for realityKitLightSpillNodes);
  result = swift_arrayDestroy();
  static MaterialXHardcodedNames.realityKitLightSpillNodes = v0;
  return result;
}

uint64_t *MaterialXHardcodedNames.realityKitLightSpillNodes.unsafeMutableAddressor()
{
  if (one-time initialization token for realityKitLightSpillNodes != -1)
  {
    swift_once();
  }

  return &static MaterialXHardcodedNames.realityKitLightSpillNodes;
}

uint64_t (*static MaterialXHardcodedNames.realityKitLightSpillNodes.modify())()
{
  if (one-time initialization token for realityKitLightSpillNodes != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return XMLParserDelegate.Element.children.modify;
}

uint64_t one-time initialization function for realityKitHoverStateNodes()
{
  v0 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for realityKitHoverStateNodes);
  result = outlined destroy of String(&unk_287796500);
  static MaterialXHardcodedNames.realityKitHoverStateNodes = v0;
  return result;
}

uint64_t *MaterialXHardcodedNames.realityKitHoverStateNodes.unsafeMutableAddressor()
{
  if (one-time initialization token for realityKitHoverStateNodes != -1)
  {
    swift_once();
  }

  return &static MaterialXHardcodedNames.realityKitHoverStateNodes;
}

uint64_t (*static MaterialXHardcodedNames.realityKitHoverStateNodes.modify())()
{
  if (one-time initialization token for realityKitHoverStateNodes != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return XMLParserDelegate.Element.children.modify;
}

uint64_t key path getter for static MaterialXHardcodedNames.realityKitBackgroundBlurNodes : MaterialXHardcodedNames.Type@<X0>(void *a1@<X3>, void *a2@<X4>, void *a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a3 = *a2;
}

uint64_t key path setter for static MaterialXHardcodedNames.realityKitBackgroundBlurNodes : MaterialXHardcodedNames.Type(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v7 = *a1;
  v8 = *a5;

  if (v8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9 = *a6;
  *a6 = v7;
}

uint64_t ShaderGraphNode.metalTextureType.getter()
{
  specialized ShaderGraphNode.metalTextureType.getter(*v0);
}

__n128 UserGraph.insertImageNode(metalTextureType:resultType:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph9InputSpecVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph9InputSpecVGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_265F21D70;
  *(inited + 32) = 1701603686;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = a1;
  *(inited + 56) = 0x56746C7561666564;
  *(inited + 64) = 0xEA00000000006C61;
  *(inited + 72) = a2;
  v7 = one-time initialization token for float2;
  swift_retain_n();

  if (v7 != -1)
  {
    swift_once();
  }

  v8 = static MetalDataType.float2;
  *(inited + 80) = 0x64726F6F63786574;
  *(inited + 88) = 0xE800000000000000;
  *(inited + 96) = v8;
  v9 = one-time initialization token for sampler;

  if (v9 != -1)
  {
    swift_once();
  }

  v10 = static MetalDataType.sampler;
  *(inited + 104) = 115;
  *(inited + 112) = 0xE100000000000000;
  *(inited + 120) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMR);
  v11 = swift_initStackObject();
  *(v11 + 16) = xmmword_265F1F670;
  *(v11 + 32) = 7632239;
  *(v11 + 40) = 0xE300000000000000;
  *(v11 + 48) = a2;
  v12 = swift_allocObject();
  *&v18 = 0;
  *(&v18 + 1) = 0xE000000000000000;

  _StringGuts.grow(_:)(19);

  *&v18 = 0xD000000000000011;
  *(&v18 + 1) = 0x8000000265F30BC0;
  MEMORY[0x266771550](*(a2 + 24), *(a2 + 32));
  v13 = *(&v18 + 1);
  *(v12 + 16) = v18;
  *(v12 + 24) = v13;
  *(v12 + 32) = a2;
  UserGraph.insertNode(inputs:outputs:shaderGraphData:)(inited, v11, v12 | 0x2000000000000000, &v18);

  swift_setDeallocating();
  v14 = *(v11 + 16);
  swift_arrayDestroy();
  swift_setDeallocating();
  v15 = *(inited + 16);
  swift_arrayDestroy();
  v16 = v19[0];
  *a3 = v18;
  a3[1] = v16;
  result = *(v19 + 9);
  *(a3 + 25) = *(v19 + 9);
  return result;
}

double UserGraph.insertCreateSampler(label:)@<D0>(_OWORD *a1@<X8>)
{
  specialized UserGraph.insertCreateSampler(label:)(&v4);
  v2 = v5[0];
  *a1 = v4;
  a1[1] = v2;
  result = *(v5 + 9);
  *(a1 + 25) = *(v5 + 9);
  return result;
}

void UserGraph.convertFilenameInput(_:movingTo:textureAssignments:customUniformsType:)(unint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v123[3] = v4[1];
  v123[2] = v10;
  v11 = v4[2];
  v12 = v4[3];
  v13 = v4[4];
  v124 = v4[5];
  v123[6] = v13;
  v123[4] = v11;
  v123[5] = v12;
  v14 = v4[6];
  v15 = v4[7];
  *(v127 + 9) = *(v4 + 153);
  v16 = v4[8];
  v127[0] = v4[9];
  v126 = v16;
  *v125 = v14;
  *&v125[16] = v15;
  UserGraph.node(connectedTo:)(a1, &v56);
  v17 = v57;
  if (v57)
  {
    v86 = v56;
    v87 = v57;
    v88[0] = v58[0];
    *(v88 + 9) = *(v58 + 9);
    v89 = v56;
    if (!(v56 >> 61) && *(v56 + 80) == 6)
    {
      v128 = a2;
      v18 = *(v56 + 16);
      v19 = *(v56 + 24);
      v20 = *(v56 + 32);
      v53 = *(v56 + 48);
      v54 = *(v56 + 40);
      v52 = *(v56 + 56);
      *v50 = *(v56 + 72);
      v51 = *(v56 + 64);

      UserGraph.insertGetTexture(_:textureAssignments:customUniformsType:)(v18, v19, a3, a4, v59);
      if (v5)
      {
        outlined destroy of NodePersonality(&v89);
        v100 = v17;
        outlined destroy of [Input](&v100, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
        v101 = *&v88[0];
        outlined destroy of [Input](&v101, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
        outlined consume of SGDataTypeStorage(v18, v19, v20, v54, v53, v52, v51, v50[0], 6);
        return;
      }

      outlined consume of SGDataTypeStorage(v18, v19, v20, v54, v53, v52, v51, v50[0], 6);
      v36 = v59;
      goto LABEL_21;
    }

    v122 = v124;
    v123[0] = *v125;
    *(v123 + 9) = *&v125[9];
    if ((specialized static ShaderGraphNode.== infix(_:_:)(&v86, &v122) & 1) == 0)
    {
      outlined destroy of NodePersonality(&v89);
      v94 = v87;
      outlined destroy of [Input](&v94, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v95 = *&v88[0];
      outlined destroy of [Input](&v95, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
      return;
    }

    v21 = v4[9];
    v120 = v4[8];
    v121[0] = v21;
    *(v121 + 9) = *(v4 + 153);
    v22 = v4[5];
    v116 = v4[4];
    v117 = v22;
    v23 = v4[7];
    v118 = v4[6];
    v119 = v23;
    v24 = v4[1];
    v112 = *v4;
    v113 = v24;
    v25 = v4[3];
    v114 = v4[2];
    v115 = v25;
    UserGraph.output(connectedTo:)(a1, v60);
    if (v61)
    {
      v128 = a2;
      v27 = v62;
      v26 = v63;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMR);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_265F1F670;
      *(v28 + 32) = 7632239;
      *(v28 + 40) = 0xE300000000000000;
      *(v28 + 48) = a4;
      v29 = swift_allocObject();
      *(v29 + 16) = 12580;
      *(v29 + 24) = 0xE200000000000000;

      UserGraph.insertNode(inputs:outputs:shaderGraphData:)(MEMORY[0x277D84F90], v28, v29 | 0x6000000000000000, &v64);

      swift_setDeallocating();
      v30 = *(v28 + 16);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v111 = v65;
      specialized ShaderGraphNode.output(labeled:)(&v66, 7632239, 0xE300000000000000, v65);
      if (v67)
      {
        v81 = v66;
        v82 = v67;
        v83 = v68;
        v84 = v69;
        v85 = v70;
        v108 = v64;
        outlined destroy of NodePersonality(&v108);
        v107 = *(&v64 + 1);
        outlined destroy of [Input](&v107, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
        outlined destroy of [Input](&v111, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
        Output.getProperty(_:_:)(v4, v27, v26, v71);
        if (!v5)
        {

          v105 = v83;
          outlined destroy of String(&v105);

          v36 = v71;
LABEL_21:
          v45 = *(v36 + 3);
          v44 = *(v36 + 4);
          v46 = *(v36 + 40);
          v47 = *(v36 + 1);
          v48 = *v36;
          specialized ShaderGraphNode.output(labeled:)(&v72, 7632239, 0xE300000000000000, *(v36 + 2));
          if (v73)
          {
            v77[0] = v72;
            v77[1] = v73;
            v78 = v74;
            v79 = v75;
            v80 = v76;
            UserGraph.connect(_:to:)(v77, v128);
            outlined destroy of NodePersonality(&v89);
            v96 = v87;
            outlined destroy of [Input](&v96, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
            v97 = *&v88[0];
            outlined destroy of [Input](&v97, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

            v106 = v78;
            outlined destroy of String(&v106);
          }

          else
          {
            MEMORY[0x266771550](7632239, 0xE300000000000000);
            MEMORY[0x266771550](32, 0xE100000000000000);
            _print_unlocked<A, B>(_:_:)();
            lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
            swift_allocError();
            *v49 = 14;
            *(v49 + 8) = 0;
            *(v49 + 16) = 0xE000000000000000;
            swift_willThrow();
            outlined destroy of NodePersonality(&v89);
            v98 = v87;
            outlined destroy of [Input](&v98, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
            v99 = *&v88[0];
            outlined destroy of [Input](&v99, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
          }

          outlined consume of NodePersonality(v48);

          goto LABEL_25;
        }

        v104 = v83;
        outlined destroy of String(&v104);
        outlined destroy of NodePersonality(&v89);
        v102 = v87;
        outlined destroy of [Input](&v102, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
        v103 = *&v88[0];
        outlined destroy of [Input](&v103, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
      }

      else
      {
        MEMORY[0x266771550](7632239, 0xE300000000000000);
        MEMORY[0x266771550](32, 0xE100000000000000);
        _print_unlocked<A, B>(_:_:)();
        lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
        swift_allocError();
        *v37 = 14;
        *(v37 + 8) = 0;
        *(v37 + 16) = 0xE000000000000000;
        swift_willThrow();
        v110 = v64;
        outlined destroy of NodePersonality(&v110);
        v109 = *(&v64 + 1);
        outlined destroy of [Input](&v109, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
        outlined destroy of [Input](&v111, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
        outlined destroy of NodePersonality(&v89);
        v90 = v87;
        outlined destroy of [Input](&v90, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
        v91 = *&v88[0];
        outlined destroy of [Input](&v91, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
      }

LABEL_25:

      return;
    }

    v31 = *a1;
    if (*a1 == -7)
    {
      v32 = 0;
      v33 = 0;
      v128 = 0;
      v34 = 0xED00002165646F6ELL;
      v35 = 0x20676E697373696DLL;
LABEL_19:
      *&v55 = 0;
      *(&v55 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(58);
      MEMORY[0x266771550](0xD00000000000002BLL, 0x8000000265F30BE0);
      MEMORY[0x266771550](a1[2], a1[3]);
      MEMORY[0x266771550](0x646F6E206E6F2027, 0xEB00000000203A65);
      MEMORY[0x266771550](v35, v34);

      lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
      swift_allocError();
      *v43 = 44;
      *(v43 + 8) = v55;
      swift_willThrow();
      outlined consume of ShaderGraphNode?(v32, v33);
      outlined destroy of NodePersonality(&v89);
      v92 = v87;
      outlined destroy of [Input](&v92, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v93 = *&v88[0];
      outlined destroy of [Input](&v93, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
      return;
    }

    if ((v31 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v31 < *(v116 + 16))
    {
      v38 = v116 + 48 * v31;
      v32 = *(v38 + 32);
      v33 = *(v38 + 40);
      v39 = *(v38 + 48);
      v40 = *(v38 + 56);
      v128 = *(v38 + 64);
      v41 = *(v38 + 72);
      outlined copy of NodePersonality(v32);

      outlined copy of NodePersonality(v32);

      v42 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266771550](v42);

      outlined consume of NodePersonality(v32);

      v34 = 0xE400000000000000;
      v35 = 1701080942;
      goto LABEL_19;
    }

    __break(1u);
  }
}

__n128 UserGraph.insertCubeimageNode(metalTextureType:resultType:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph9InputSpecVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph9InputSpecVGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_265F21D70;
  *(inited + 32) = 1701603686;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = a1;
  *(inited + 56) = 0x56746C7561666564;
  *(inited + 64) = 0xEA00000000006C61;
  *(inited + 72) = a2;
  v7 = one-time initialization token for float3;
  swift_retain_n();

  if (v7 != -1)
  {
    swift_once();
  }

  v8 = static MetalDataType.float3;
  *(inited + 80) = 0x64726F6F63786574;
  *(inited + 88) = 0xE800000000000000;
  *(inited + 96) = v8;
  v9 = one-time initialization token for sampler;

  if (v9 != -1)
  {
    swift_once();
  }

  v10 = static MetalDataType.sampler;
  *(inited + 104) = 0x72656C706D6173;
  *(inited + 112) = 0xE700000000000000;
  *(inited + 120) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMR);
  v11 = swift_initStackObject();
  *(v11 + 16) = xmmword_265F1F670;
  *(v11 + 32) = 7632239;
  *(v11 + 40) = 0xE300000000000000;
  *(v11 + 48) = a2;
  v12 = swift_allocObject();
  *&v18 = 0;
  *(&v18 + 1) = 0xE000000000000000;

  _StringGuts.grow(_:)(23);

  *&v18 = 0xD000000000000015;
  *(&v18 + 1) = 0x8000000265F30C10;
  MEMORY[0x266771550](*(a2 + 24), *(a2 + 32));
  v13 = *(&v18 + 1);
  *(v12 + 16) = v18;
  *(v12 + 24) = v13;
  *(v12 + 32) = a2;
  UserGraph.insertNode(inputs:outputs:shaderGraphData:)(inited, v11, v12 | 0x2000000000000000, &v18);

  swift_setDeallocating();
  v14 = *(v11 + 16);
  swift_arrayDestroy();
  swift_setDeallocating();
  v15 = *(inited + 16);
  swift_arrayDestroy();
  v16 = v19[0];
  *a3 = v18;
  a3[1] = v16;
  result = *(v19 + 9);
  *(a3 + 25) = *(v19 + 9);
  return result;
}

BOOL specialized implicit closure #1 in UserGraph.transformRealityKitImageNodes<A>(_:paramType:textureAssignments:customUniformsType:)(void *a1)
{
  if (*a1 >> 61 != 5)
  {
    return 0;
  }

  v1 = *((*a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v2 = *((*a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);

  v3._object = 0x8000000265F2D830;
  v3._countAndFlagsBits = 0xD000000000000014;
  v4 = String.hasPrefix(_:)(v3);

  return v4;
}

uint64_t closure #1 in UserGraph.transformRealityKitImageNodes<A>(_:paramType:textureAssignments:customUniformsType:)(uint64_t a1)
{
  v2 = MEMORY[0x28223BE20](a1);
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = *v2;
  v10 = v2[1];
  *&v552[9] = *(v2 + 25);
  v551 = v9;
  *v552 = v10;
  _StringGuts.grow(_:)(23);

  *&v185[0] = 0xD000000000000014;
  *(&v185[0] + 1) = 0x8000000265F30E90;
  v11 = *&v552[8];
  *&v183 = 1701080942;
  *(&v183 + 1) = 0xE400000000000000;
  v180 = *&v552[8];
  v12 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266771550](v12);

  MEMORY[0x266771550](1701080942, 0xE400000000000000);

  MEMORY[0x266771550](39, 0xE100000000000000);
  specialized UserGraph.insertCreateSampler(label:)(&v188);

  UserGraph.insertSampleTexture(for:)(&v551, &v190);
  if (v1)
  {
    v605 = v1;
    v550 = v188;
    outlined destroy of NodePersonality(&v550);
    v549 = *(&v188 + 1);
    outlined destroy of [Input](&v549, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    v548 = v189;
    v13 = &v548;
    return outlined destroy of [Input](v13, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
  }

  ShaderGraphNode.subscript.getter(7632239, 0xE300000000000000, v192);
  ShaderGraphNode.subscript.getter(0x72656C706D6173, 0xE700000000000000, v193);
  v605 = 0;
  UserGraph.connect(_:to:)(v192, v193);

  v547[0] = v194;
  outlined destroy of String(v547);

  v546 = v192[1];
  outlined destroy of String(&v546);
  v187 = MEMORY[0x277D84FA0];
  v602 = *(&v551 + 1);
  v16 = *(*(&v551 + 1) + 16);
  v172 = v8;
  v176 = v16;
  if (!v16)
  {

    v162 = 0;
    v158 = 0;
    v159 = 0;
    v160 = 0;
    v161 = 0;
    v163 = 0;
    v156 = 0;
    v154 = 0;
    v155 = 0;
    v157 = 0;
    v105 = 0;
    v164 = 0;
    v166 = 0;
    v6 = 0;
LABEL_180:
    v106 = v605;
    ShaderGraphNode.subscript.getter(7632239, 0xE300000000000000, v277);
    if (v106)
    {
      v605 = v106;
      outlined consume of ShaderGraphNode?(v6, v166);
      outlined consume of ShaderGraphNode?(v105, v157);
      outlined consume of ShaderGraphNode?(v160, v163);
      v304 = v188;
      outlined destroy of NodePersonality(&v304);
      v303 = *(&v188 + 1);
      outlined destroy of [Input](&v303, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v302 = v189;
      outlined destroy of [Input](&v302, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
      v301 = v190;
      outlined destroy of NodePersonality(&v301);
      v300 = *(&v190 + 1);
      outlined destroy of [Input](&v300, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v299 = *&v191[0];
      v13 = &v299;
    }

    else
    {
      ShaderGraphNode.subscript.getter(7632239, 0xE300000000000000, v279);
      v605 = 0;
      UserGraph.moveEdges(from:to:)(v277, v279);
      outlined consume of ShaderGraphNode?(v6, v166);
      outlined consume of ShaderGraphNode?(v105, v157);
      outlined consume of ShaderGraphNode?(v160, v163);
      v298[0] = v188;
      outlined destroy of NodePersonality(v298);
      v297 = *(&v188 + 1);
      outlined destroy of [Input](&v297, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v296 = v189;
      outlined destroy of [Input](&v296, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

      v295 = v279[1];
      outlined destroy of String(&v295);

      v294 = v278;
      outlined destroy of String(&v294);
      v293 = v190;
      outlined destroy of NodePersonality(&v293);
      v292 = *(&v190 + 1);
      outlined destroy of [Input](&v292, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v291 = *&v191[0];
      v13 = &v291;
    }

    return outlined destroy of [Input](v13, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
  }

  v147 = v11;
  v152 = v6;
  v153 = v4;
  v17 = 0;
  v162 = 0;
  v158 = 0;
  v159 = 0;
  v160 = 0;
  v161 = 0;
  v163 = 0;
  v156 = 0;
  v154 = 0;
  v155 = 0;
  v150 = 0;
  v151 = 0;
  v157 = 0;
  v164 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v166 = 0;
  v149 = 0;
  v175 = *(&v551 + 1) + 32;
  *&v15 = 136315394;
  v146 = v15;
  v165 = MEMORY[0x277D84FA0];
  v148 = 0xE900000000000070;
  v21 = *(&v551 + 1);
  v171 = *(&v551 + 1);
  while (1)
  {
    if (v17 >= *(v21 + 16))
    {
      __break(1u);
      goto LABEL_205;
    }

    v179 = v17;
    v22 = v175 + 56 * v17;
    v23 = *v22;
    v24 = *(v22 + 8);
    v25 = *(v22 + 16);
    v6 = *(v22 + 24);
    v26 = *(v22 + 32);
    v27 = *(v22 + 40);
    v28 = *(v22 + 48);
    v563[0] = v23;
    v563[1] = v24;
    v177 = v25;
    v563[2] = v25;
    v563[3] = v6;
    v564 = v27;
    v563[4] = v26;
    v565 = v28;
    v29 = v8[9];
    v185[8] = v8[8];
    v186[0] = v29;
    *(v186 + 9) = *(v8 + 153);
    v30 = v8[5];
    v185[4] = v8[4];
    v185[5] = v30;
    v31 = v8[7];
    v185[6] = v8[6];
    v185[7] = v31;
    v32 = v8[1];
    v185[0] = *v8;
    v185[1] = v32;
    v33 = v8[3];
    v185[2] = v8[2];
    v185[3] = v33;
    v34 = v32;
    v35 = *(&v185[0] + 1) + 32;
    v36 = *(*(&v185[0] + 1) + 16);
    if (*&v185[0])
    {
      v37 = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(v23, v35, v36, *&v185[0] + 16, *&v185[0] + 32);
      if (v38)
      {
        goto LABEL_7;
      }

      v39 = v37;
      if (v37 < 0)
      {
        __break(1u);
LABEL_207:
        __break(1u);
LABEL_208:
        v605 = v1;

        v387 = v188;
        outlined destroy of NodePersonality(&v387);
        v386 = *(&v188 + 1);
        outlined destroy of [Input](&v386, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
        v385 = v189;
        outlined destroy of [Input](&v385, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
        outlined consume of ShaderGraphNode?(v160, v163);
        outlined consume of ShaderGraphNode?(v151, v157);
        outlined consume of ShaderGraphNode?(v149, v166);

        v384 = v190;
        outlined destroy of NodePersonality(&v384);
        v383 = *(&v190 + 1);
        outlined destroy of [Input](&v383, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
        v382 = *&v191[0];
        v13 = &v382;
        return outlined destroy of [Input](v13, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
      }
    }

    else
    {
      if (!v36)
      {
        goto LABEL_7;
      }

      v39 = 0;
      while (*(v35 + 8 * v39) != v23)
      {
        if (v36 == ++v39)
        {
          goto LABEL_7;
        }
      }
    }

    if (v39 >= *(v34 + 16))
    {
      goto LABEL_207;
    }

    v178 = v24;
    v174 = v19;
    v40 = (v34 + 48 * v39);
    v41 = v40[7];
    v42 = v40[8];
    v43 = v40[9];
    v44 = *(v42 + 16);
    if (v41)
    {
      swift_bridgeObjectRetain_n();
      v45 = v6;
      v6 = v178;

      outlined init with copy of UserGraph(v185, &v183);

      v46 = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(v563, v42 + 32, v44, v41 + 16, v41 + 32);
      if (v47)
      {
        goto LABEL_23;
      }

      v6 = v45;
    }

    else
    {
      swift_bridgeObjectRetain_n();

      outlined init with copy of UserGraph(v185, &v183);

      v46 = specialized Collection<>.firstIndex(of:)(v563, v42 + 32, v44);
      if (v48)
      {
        v6 = v178;
LABEL_23:
        outlined destroy of UserGraph(v185);

        swift_bridgeObjectRelease_n();

LABEL_33:
        v19 = v174;
LABEL_34:
        v21 = v171;
        v8 = v172;
        goto LABEL_7;
      }
    }

    if ((v46 & 0x8000000000000000) != 0)
    {
      break;
    }

    v169 = v20;
    v170 = v6;
    v173 = v18;
    if (v46 >= *(v43 + 16))
    {
      goto LABEL_211;
    }

    v49 = (v43 + 56 * v46);
    v51 = v49[4];
    v50 = v49[5];
    v52 = v49[6];
    v6 = v49[7];
    v54 = v49[8];
    v53 = v49[9];
    v167 = v49[10];
    v168 = v53;
    outlined copy of Output?(v51, v50);
    outlined destroy of UserGraph(v185);

    if (!v50)
    {

      swift_bridgeObjectRelease_n();
      v20 = v169;
      v18 = v173;
      goto LABEL_33;
    }

    outlined consume of Output?(v51, v50);
    v55 = v170;

    v56 = v178;

    v6 = v55;

    v58 = v177;
    *&v183 = v177;
    *(&v183 + 1) = v55;
    MEMORY[0x28223BE20](v57);
    v145 = &v183;
    v1 = v605;
    v59 = specialized Sequence.contains(where:)(_sSTsSQ7ElementRpzrlE8containsySbABFSbABXEfU_SaySSG_TG5TA_0, v144, &outlined read-only object #0 of closure #1 in UserGraph.transformRealityKitImageNodes<A>(_:paramType:textureAssignments:customUniformsType:));
    v605 = v1;
    swift_arrayDestroy();
    if ((v59 & 1) == 0)
    {
      v20 = v169;
      v18 = v173;
      v19 = v174;
      v21 = v171;
LABEL_36:
      if (v58 == 1701603686 && v6 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v361 = *(&v190 + 1);
        specialized ShaderGraphNode.output(labeled:)(&v195, 0x65727574786574, 0xE700000000000000, *(&v190 + 1));
        v8 = v172;
        if (!v196)
        {

          v180 = 0;
          v181 = 0xE000000000000000;
          MEMORY[0x266771550](0x65727574786574, 0xE700000000000000);
          MEMORY[0x266771550](32, 0xE100000000000000);
          v183 = v190;
          v184[0] = v191[0];
          *(v184 + 9) = *(v191 + 9);
          _print_unlocked<A, B>(_:_:)();
          v121 = v180;
          v122 = v181;
          lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
          v123 = swift_allocError();
          *v124 = 11;
          *(v124 + 8) = v121;
          *(v124 + 16) = v122;
          v605 = v123;
          swift_willThrow();
          v360 = v188;
          outlined destroy of NodePersonality(&v360);
          v359 = *(&v188 + 1);
          outlined destroy of [Input](&v359, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
          v358 = v189;
          outlined destroy of [Input](&v358, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
          outlined consume of ShaderGraphNode?(v160, v163);
          outlined consume of ShaderGraphNode?(v151, v157);
          outlined consume of ShaderGraphNode?(v149, v166);

          v357 = v190;
          outlined destroy of NodePersonality(&v357);
          outlined destroy of [Input](&v361, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
          v356 = *&v191[0];
          v13 = &v356;
          return outlined destroy of [Input](v13, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
        }

        v280[0] = v195;
        v280[1] = v196;
        v281 = v197;
        v282 = v198;
        v283 = v199;
        v1 = v605;
        UserGraph.convertFilenameInput(_:movingTo:textureAssignments:customUniformsType:)(v563, v280, v152, v153);
        v605 = v1;
        if (v1)
        {

          v290 = v281;
          outlined destroy of String(&v290);
          v355 = v188;
          outlined destroy of NodePersonality(&v355);
          v354 = *(&v188 + 1);
          outlined destroy of [Input](&v354, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
          v353 = v189;
          outlined destroy of [Input](&v353, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
          outlined consume of ShaderGraphNode?(v160, v163);
          outlined consume of ShaderGraphNode?(v151, v157);
          outlined consume of ShaderGraphNode?(v149, v166);

          v352 = v190;
          outlined destroy of NodePersonality(&v352);
          outlined destroy of [Input](&v361, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
          v351 = *&v191[0];
          v13 = &v351;
          return outlined destroy of [Input](v13, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
        }

        v289 = v281;
        outlined destroy of String(&v289);
        v18 = v173;
        goto LABEL_7;
      }

      if (v58 == 0x64726F6F63786574 && v6 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v367 = *(&v190 + 1);
        specialized ShaderGraphNode.output(labeled:)(&v200, 0x64726F6F63, 0xE500000000000000, *(&v190 + 1));
        if (!v201)
        {

          v180 = 0;
          v181 = 0xE000000000000000;
          MEMORY[0x266771550](0x64726F6F63, 0xE500000000000000);
          MEMORY[0x266771550](32, 0xE100000000000000);
          v183 = v190;
          v184[0] = v191[0];
          *(v184 + 9) = *(v191 + 9);
          _print_unlocked<A, B>(_:_:)();
          v135 = v180;
          v136 = v181;
          lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
          v137 = swift_allocError();
          *v138 = 11;
          *(v138 + 8) = v135;
          *(v138 + 16) = v136;
          v605 = v137;
          swift_willThrow();
          v366 = v188;
          outlined destroy of NodePersonality(&v366);
          v365 = *(&v188 + 1);
          outlined destroy of [Input](&v365, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
          v364 = v189;
          outlined destroy of [Input](&v364, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
          outlined consume of ShaderGraphNode?(v160, v163);
          outlined consume of ShaderGraphNode?(v151, v157);
          outlined consume of ShaderGraphNode?(v149, v166);

          v363 = v190;
          outlined destroy of NodePersonality(&v363);
          outlined destroy of [Input](&v367, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
          v362 = *&v191[0];
          v13 = &v362;
          return outlined destroy of [Input](v13, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
        }

        v284[0] = v200;
        v284[1] = v201;
        v285 = v202;
        v286 = v203;
        v287 = v204;
        v63 = v172;
        UserGraph.moveEdge(from:to:)(v563, v284);

        v8 = v63;

        v288 = v285;
        outlined destroy of String(&v288);
        goto LABEL_7;
      }

      if (v58 == 0x6C6576656CLL && v6 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v1 = v605;
        ShaderGraphNode.subscript.getter(0x6C6576656CLL, 0xE500000000000000, v205);
        if (v1)
        {
          goto LABEL_208;
        }

        Input.prependUnaryFunction(_:argumentType:in:)(0x6C6576656CLL, 0xE500000000000000, v56, v172, &v206);
        v605 = 0;

        v381[0] = v205[1];
        outlined destroy of String(v381);
        v1 = v605;
        ShaderGraphNode.subscript.getter(28265, 0xE200000000000000, v208);
        v605 = v1;
        if (v1)
        {

          v380 = v206;
          outlined destroy of NodePersonality(&v380);
          v379 = *(&v206 + 1);
          outlined destroy of [Input](&v379, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
          v378 = v207;
          outlined destroy of [Input](&v378, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
          v377 = v188;
          outlined destroy of NodePersonality(&v377);
          v376 = *(&v188 + 1);
          outlined destroy of [Input](&v376, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
          v375 = v189;
          outlined destroy of [Input](&v375, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
          outlined consume of ShaderGraphNode?(v160, v163);
          outlined consume of ShaderGraphNode?(v151, v157);
          outlined consume of ShaderGraphNode?(v149, v166);

          v374 = v190;
          outlined destroy of NodePersonality(&v374);
          v373 = *(&v190 + 1);
          outlined destroy of [Input](&v373, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
          v372 = *&v191[0];
          v13 = &v372;
          return outlined destroy of [Input](v13, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
        }

        v64 = v172;
        UserGraph.moveEdge(from:to:)(v563, v208);

        v8 = v64;

        v371 = v208[1];
        outlined destroy of String(&v371);
        v370 = v206;
        outlined destroy of NodePersonality(&v370);
        v369 = *(&v206 + 1);
        outlined destroy of [Input](&v369, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
        v368 = v207;
        outlined destroy of [Input](&v368, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
        v18 = v173;
        goto LABEL_7;
      }

      if (v58 == 1935763810 && v6 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v1 = v605;
        ShaderGraphNode.subscript.getter(1935763810, 0xE400000000000000, v209);
        if (v1)
        {
          goto LABEL_212;
        }

        Input.prependUnaryFunction(_:argumentType:in:)(1935763810, 0xE400000000000000, v56, v172, &v210);
        v605 = 0;

        v401[0] = v209[1];
        outlined destroy of String(v401);
        v1 = v605;
        ShaderGraphNode.subscript.getter(28265, 0xE200000000000000, v212);
        v605 = v1;
        if (v1)
        {

          v400 = v210;
          outlined destroy of NodePersonality(&v400);
          v399 = *(&v210 + 1);
          outlined destroy of [Input](&v399, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
          v398 = v211;
          outlined destroy of [Input](&v398, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
          v397 = v188;
          outlined destroy of NodePersonality(&v397);
          v396 = *(&v188 + 1);
          outlined destroy of [Input](&v396, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
          v395 = v189;
          outlined destroy of [Input](&v395, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
          outlined consume of ShaderGraphNode?(v160, v163);
          outlined consume of ShaderGraphNode?(v151, v157);
          outlined consume of ShaderGraphNode?(v149, v166);

          v394 = v190;
          outlined destroy of NodePersonality(&v394);
          v393 = *(&v190 + 1);
          outlined destroy of [Input](&v393, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
          v392 = *&v191[0];
          v13 = &v392;
          return outlined destroy of [Input](v13, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
        }

        v65 = v172;
        UserGraph.moveEdge(from:to:)(v563, v212);

        v8 = v65;

        v391 = v212[1];
        outlined destroy of String(&v391);
        v390 = v210;
        outlined destroy of NodePersonality(&v390);
        v389 = *(&v210 + 1);
        outlined destroy of [Input](&v389, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
        v388 = v211;
        v66 = &v388;
LABEL_59:
        outlined destroy of [Input](v66, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
        goto LABEL_7;
      }

      if (v58 == 0x5F646F6C5F6E696DLL && v6 == 0xED0000706D616C63 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v67 = v605;
        ShaderGraphNode.subscript.getter(0x5F646F6C5F6E696DLL, 0xED0000706D616C63, v213);
        if (v67)
        {
          v605 = v67;

          v427 = v188;
          outlined destroy of NodePersonality(&v427);
          v426 = *(&v188 + 1);
          outlined destroy of [Input](&v426, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
          v425 = v189;
          outlined destroy of [Input](&v425, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
          outlined consume of ShaderGraphNode?(v160, v163);
          outlined consume of ShaderGraphNode?(v151, v157);
          outlined consume of ShaderGraphNode?(v149, v166);

          v424 = v190;
          outlined destroy of NodePersonality(&v424);
          v423 = *(&v190 + 1);
          outlined destroy of [Input](&v423, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
          v422 = *&v191[0];
          v13 = &v422;
          return outlined destroy of [Input](v13, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
        }

        Input.prependUnaryFunction(_:argumentType:in:)(0x5F646F6C5F6E696DLL, 0xED0000706D616C63, v56, v172, &v214);
        v605 = 0;

        v421[0] = v213[1];
        outlined destroy of String(v421);
        v1 = v605;
        ShaderGraphNode.subscript.getter(28265, 0xE200000000000000, v216);
        v605 = v1;
        if (v1)
        {

          v420 = v214;
          outlined destroy of NodePersonality(&v420);
          v419 = *(&v214 + 1);
          outlined destroy of [Input](&v419, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
          v418 = v215;
          outlined destroy of [Input](&v418, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
          v417 = v188;
          outlined destroy of NodePersonality(&v417);
          v416 = *(&v188 + 1);
          outlined destroy of [Input](&v416, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
          v415 = v189;
          outlined destroy of [Input](&v415, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
          outlined consume of ShaderGraphNode?(v160, v163);
          outlined consume of ShaderGraphNode?(v151, v157);
          outlined consume of ShaderGraphNode?(v149, v166);

          v414 = v190;
          outlined destroy of NodePersonality(&v414);
          v413 = *(&v190 + 1);
          outlined destroy of [Input](&v413, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
          v412 = *&v191[0];
          v13 = &v412;
          return outlined destroy of [Input](v13, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
        }

        v68 = v172;
        UserGraph.moveEdge(from:to:)(v563, v216);

        v8 = v68;

        v411 = v216[1];
        outlined destroy of String(&v411);
        v410 = v214;
        outlined destroy of NodePersonality(&v410);
        v409 = *(&v214 + 1);
        outlined destroy of [Input](&v409, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
        v408 = v215;
        v66 = &v408;
        goto LABEL_59;
      }

      if (v58 == 0x746E656964617267 && v6 == 0xEC000000785F6432 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        if (!v163)
        {
          v69 = v605;
          ShaderGraphNode.subscript.getter(0x746E656964617267, 0xE800000000000000, v217);
          v605 = v69;
          if (v69)
          {

            v441 = v188;
            outlined destroy of NodePersonality(&v441);
            v440 = *(&v188 + 1);
            outlined destroy of [Input](&v440, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
            v439 = v189;
            outlined destroy of [Input](&v439, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
            outlined consume of ShaderGraphNode?(v151, v157);
            outlined consume of ShaderGraphNode?(v149, v166);

            v438 = v190;
            outlined destroy of NodePersonality(&v438);
            v437 = *(&v190 + 1);
            outlined destroy of [Input](&v437, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
            v436 = *&v191[0];
            v13 = &v436;
            return outlined destroy of [Input](v13, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
          }

          Input.prependCreateGradient2DNode(in:)(&v218);
          v605 = 0;

          v435[0] = v217[1];
          outlined destroy of String(v435);
          v162 = v222;
          v158 = v220;
          v159 = v221;
          v163 = *(&v218 + 1);
          v160 = v218;
          v161 = v219;
        }

        v70 = v160;
        v566 = v160;
        v6 = v163;
        v567 = v163;
        v568 = v161;
        v569 = v158;
        v570 = v159;
        v162 &= 1u;
        v571 = v162;
        outlined copy of NodePersonality(v160);

        v1 = v605;
        ShaderGraphNode.subscript.getter(2019840100, 0xE400000000000000, v223);
        v605 = v1;
        if (v1)
        {

          v434 = v188;
          outlined destroy of NodePersonality(&v434);
          v433 = *(&v188 + 1);
          outlined destroy of [Input](&v433, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
          v432 = v189;
          outlined destroy of [Input](&v432, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
          outlined consume of NodePersonality(v70);

          outlined consume of NodePersonality(v70);

          outlined consume of ShaderGraphNode?(v151, v157);
          outlined consume of ShaderGraphNode?(v149, v166);

          v431 = v190;
          outlined destroy of NodePersonality(&v431);
          v430 = *(&v190 + 1);
          outlined destroy of [Input](&v430, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
          v429 = *&v191[0];
          v13 = &v429;
          return outlined destroy of [Input](v13, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
        }

        outlined consume of NodePersonality(v70);

        v8 = v172;
        UserGraph.moveEdge(from:to:)(v563, v223);

        v428 = v223[1];
        v71 = &v428;
        goto LABEL_74;
      }

      if (v177 == 0x746E656964617267 && v170 == 0xEC000000795F6432 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        if (!v163)
        {
          v72 = v605;
          ShaderGraphNode.subscript.getter(0x746E656964617267, 0xE800000000000000, v224);
          v605 = v72;
          if (v72)
          {

            v455 = v188;
            outlined destroy of NodePersonality(&v455);
            v454 = *(&v188 + 1);
            outlined destroy of [Input](&v454, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
            v453 = v189;
            outlined destroy of [Input](&v453, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
            outlined consume of ShaderGraphNode?(v151, v157);
            outlined consume of ShaderGraphNode?(v149, v166);

            v452 = v190;
            outlined destroy of NodePersonality(&v452);
            v451 = *(&v190 + 1);
            outlined destroy of [Input](&v451, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
            v450 = *&v191[0];
            v13 = &v450;
            return outlined destroy of [Input](v13, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
          }

          Input.prependCreateGradient2DNode(in:)(&v225);
          v605 = 0;

          v449[0] = v224[1];
          outlined destroy of String(v449);
          v162 = v229;
          v158 = v227;
          v159 = v228;
          v163 = *(&v225 + 1);
          v160 = v225;
          v161 = v226;
        }

        v572 = v160;
        v573 = v163;
        v574 = v161;
        v575 = v158;
        v576 = v159;
        v162 &= 1u;
        v577 = v162;
        outlined copy of NodePersonality(v160);

        v1 = v605;
        ShaderGraphNode.subscript.getter(2036617316, 0xE400000000000000, v230);
        v605 = v1;
        if (v1)
        {

          v448 = v188;
          outlined destroy of NodePersonality(&v448);
          v447 = *(&v188 + 1);
          outlined destroy of [Input](&v447, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
          v446 = v189;
          outlined destroy of [Input](&v446, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
          v139 = v160;
          outlined consume of NodePersonality(v160);

          outlined consume of NodePersonality(v139);

          outlined consume of ShaderGraphNode?(v151, v157);
          outlined consume of ShaderGraphNode?(v149, v166);

          v445 = v190;
          outlined destroy of NodePersonality(&v445);
          v444 = *(&v190 + 1);
          outlined destroy of [Input](&v444, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
          v443 = *&v191[0];
          v13 = &v443;
          return outlined destroy of [Input](v13, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
        }

        outlined consume of NodePersonality(v160);

        v8 = v172;
        UserGraph.moveEdge(from:to:)(v563, v230);

        v442 = v230[1];
        v71 = &v442;
        goto LABEL_74;
      }

      if (v177 == 0x746E656964617267 && v170 == 0xEC000000785F6433 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        if (!v157)
        {
          v73 = v605;
          ShaderGraphNode.subscript.getter(0x746E656964617267, 0xE800000000000000, v231);
          v605 = v73;
          if (v73)
          {

            v469 = v188;
            outlined destroy of NodePersonality(&v469);
            v468 = *(&v188 + 1);
            outlined destroy of [Input](&v468, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
            v467 = v189;
            outlined destroy of [Input](&v467, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
            outlined consume of ShaderGraphNode?(v160, v163);
            outlined consume of ShaderGraphNode?(v149, v166);

            v466 = v190;
            outlined destroy of NodePersonality(&v466);
            v465 = *(&v190 + 1);
            outlined destroy of [Input](&v465, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
            v464 = *&v191[0];
            v13 = &v464;
            return outlined destroy of [Input](v13, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
          }

          Input.prependCreateGradient3DNode(in:)(&v232);
          v605 = 0;

          v463[0] = v231[1];
          outlined destroy of String(v463);
          v156 = v236;
          v154 = v235;
          v155 = v233;
          v157 = *(&v232 + 1);
          v150 = v234;
          v151 = v232;
        }

        v578 = v151;
        v579 = v157;
        v580 = v155;
        v581 = v150;
        v582 = v154;
        v156 &= 1u;
        v583 = v156;
        outlined copy of NodePersonality(v151);

        v1 = v605;
        ShaderGraphNode.subscript.getter(2019840100, 0xE400000000000000, v237);
        v605 = v1;
        if (v1)
        {

          v462 = v188;
          outlined destroy of NodePersonality(&v462);
          v461 = *(&v188 + 1);
          outlined destroy of [Input](&v461, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
          v460 = v189;
          outlined destroy of [Input](&v460, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
          v140 = v151;
          outlined consume of NodePersonality(v151);

          outlined consume of NodePersonality(v140);

          outlined consume of ShaderGraphNode?(v160, v163);
          outlined consume of ShaderGraphNode?(v149, v166);

          v459 = v190;
          outlined destroy of NodePersonality(&v459);
          v458 = *(&v190 + 1);
          outlined destroy of [Input](&v458, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
          v457 = *&v191[0];
          v13 = &v457;
          return outlined destroy of [Input](v13, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
        }

        outlined consume of NodePersonality(v151);

        v8 = v172;
        UserGraph.moveEdge(from:to:)(v563, v237);

        v456 = v237[1];
        v71 = &v456;
        goto LABEL_74;
      }

      if (v177 == 0x746E656964617267 && v170 == 0xEC000000795F6433 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        if (!v157)
        {
          v74 = v605;
          ShaderGraphNode.subscript.getter(0x746E656964617267, 0xE800000000000000, v238);
          v605 = v74;
          if (v74)
          {

            v483 = v188;
            outlined destroy of NodePersonality(&v483);
            v482 = *(&v188 + 1);
            outlined destroy of [Input](&v482, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
            v481 = v189;
            outlined destroy of [Input](&v481, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
            outlined consume of ShaderGraphNode?(v160, v163);
            outlined consume of ShaderGraphNode?(v149, v166);

            v480 = v190;
            outlined destroy of NodePersonality(&v480);
            v479 = *(&v190 + 1);
            outlined destroy of [Input](&v479, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
            v478 = *&v191[0];
            v13 = &v478;
            return outlined destroy of [Input](v13, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
          }

          Input.prependCreateGradient3DNode(in:)(&v239);
          v605 = 0;

          v477[0] = v238[1];
          outlined destroy of String(v477);
          v156 = v243;
          v154 = v242;
          v155 = v240;
          v157 = *(&v239 + 1);
          v150 = v241;
          v151 = v239;
        }

        v584 = v151;
        v585 = v157;
        v586 = v155;
        v587 = v150;
        v588 = v154;
        v156 &= 1u;
        v589 = v156;
        outlined copy of NodePersonality(v151);

        v1 = v605;
        ShaderGraphNode.subscript.getter(2036617316, 0xE400000000000000, v244);
        v605 = v1;
        if (v1)
        {

          v476 = v188;
          outlined destroy of NodePersonality(&v476);
          v475 = *(&v188 + 1);
          outlined destroy of [Input](&v475, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
          v474 = v189;
          outlined destroy of [Input](&v474, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
          v141 = v151;
          outlined consume of NodePersonality(v151);

          outlined consume of NodePersonality(v141);

          outlined consume of ShaderGraphNode?(v160, v163);
          outlined consume of ShaderGraphNode?(v149, v166);

          v473 = v190;
          outlined destroy of NodePersonality(&v473);
          v472 = *(&v190 + 1);
          outlined destroy of [Input](&v472, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
          v471 = *&v191[0];
          v13 = &v471;
          return outlined destroy of [Input](v13, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
        }

        outlined consume of NodePersonality(v151);

        v8 = v172;
        UserGraph.moveEdge(from:to:)(v563, v244);

        v470 = v244[1];
        v71 = &v470;
        goto LABEL_74;
      }

      if (v177 == 0x746C7561666564 && v170 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v1 = v605;
        ShaderGraphNode.subscript.getter(v177, v170, v245);
        v605 = v1;
        if (v1)
        {

          v490 = v188;
          outlined destroy of NodePersonality(&v490);
          v489 = *(&v188 + 1);
          outlined destroy of [Input](&v489, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
          v488 = v189;
          outlined destroy of [Input](&v488, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
          outlined consume of ShaderGraphNode?(v160, v163);
          outlined consume of ShaderGraphNode?(v151, v157);
          outlined consume of ShaderGraphNode?(v149, v166);
          swift_bridgeObjectRelease_n();

          v487 = v190;
          outlined destroy of NodePersonality(&v487);
          v486 = *(&v190 + 1);
          outlined destroy of [Input](&v486, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
          v485 = *&v191[0];
          v13 = &v485;
          return outlined destroy of [Input](v13, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
        }

        v8 = v172;
        UserGraph.moveEdge(from:to:)(v563, v245);

        v484 = v245[1];
        v71 = &v484;
        goto LABEL_74;
      }

      if (v177 == 0x73696E615F78616DLL && v170 == 0xEE0079706F72746FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v75 = v605;
        ShaderGraphNode.subscript.getter(0x73696E615F78616DLL, 0xEE0079706F72746FLL, v246);
        v605 = v75;
        if (v75)
        {

          v510 = v188;
          outlined destroy of NodePersonality(&v510);
          v509 = *(&v188 + 1);
          outlined destroy of [Input](&v509, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
          v508 = v189;
          outlined destroy of [Input](&v508, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
          outlined consume of ShaderGraphNode?(v160, v163);
          outlined consume of ShaderGraphNode?(v151, v157);
          outlined consume of ShaderGraphNode?(v149, v166);

          v507 = v190;
          outlined destroy of NodePersonality(&v507);
          v506 = *(&v190 + 1);
          outlined destroy of [Input](&v506, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
          v505 = *&v191[0];
          v13 = &v505;
          return outlined destroy of [Input](v13, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
        }

        Input.prependUnaryFunction(_:argumentType:in:)(0x73696E615F78616DLL, 0xEE0079706F72746FLL, v178, v172, &v247);
        v605 = 0;

        v504[0] = v246[1];
        outlined destroy of String(v504);
        v1 = v605;
        ShaderGraphNode.subscript.getter(28265, 0xE200000000000000, v249);
        v605 = v1;
        if (v1)
        {

          v503 = v188;
          outlined destroy of NodePersonality(&v503);
          v502 = *(&v188 + 1);
          outlined destroy of [Input](&v502, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
          v501 = v189;
          outlined destroy of [Input](&v501, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
          v500 = v247;
          outlined destroy of NodePersonality(&v500);
          v499 = *(&v247 + 1);
          outlined destroy of [Input](&v499, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
          v498 = v248;
          outlined destroy of [Input](&v498, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
          outlined consume of ShaderGraphNode?(v160, v163);
          outlined consume of ShaderGraphNode?(v151, v157);
          outlined consume of ShaderGraphNode?(v149, v166);

          v497 = v190;
          outlined destroy of NodePersonality(&v497);
          v496 = *(&v190 + 1);
          outlined destroy of [Input](&v496, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
          v495 = *&v191[0];
          v13 = &v495;
          return outlined destroy of [Input](v13, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
        }

        v8 = v172;
        UserGraph.moveEdge(from:to:)(v563, v249);

        v494 = v249[1];
        outlined destroy of String(&v494);
        v493 = v247;
        outlined destroy of NodePersonality(&v493);
        v492 = *(&v247 + 1);
        outlined destroy of [Input](&v492, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
        v491 = v248;
        outlined destroy of [Input](&v491, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
        goto LABEL_75;
      }

      if (v177 == 0x6E696D5F646F6CLL && v170 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        if (!v166)
        {
          v76 = v605;
          ShaderGraphNode.subscript.getter(0x6D616C635F646F6CLL, v148, v250);
          v605 = v76;
          if (v76)
          {

            v524 = v188;
            outlined destroy of NodePersonality(&v524);
            v523 = *(&v188 + 1);
            outlined destroy of [Input](&v523, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
            v522 = v189;
            outlined destroy of [Input](&v522, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
            outlined consume of ShaderGraphNode?(v160, v163);
            outlined consume of ShaderGraphNode?(v151, v157);

            v521 = v190;
            outlined destroy of NodePersonality(&v521);
            v520 = *(&v190 + 1);
            outlined destroy of [Input](&v520, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
            v519 = *&v191[0];
            v13 = &v519;
            return outlined destroy of [Input](v13, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
          }

          Input.prependCreateLODClampNode(in:)(&v251);
          v605 = 0;

          v518[0] = v250[1];
          outlined destroy of String(v518);
          v164 = v255;
          v173 = v254;
          v174 = v253;
          v169 = v252;
          v166 = *(&v251 + 1);
          v149 = v251;
        }

        v590 = v149;
        v591 = v166;
        v592 = v169;
        v593 = v174;
        v594 = v173;
        v77 = v164 & 1;
        v595 = v164 & 1;
        outlined copy of NodePersonality(v149);

        v1 = v605;
        ShaderGraphNode.subscript.getter(0x6E696D5F646F6CLL, 0xE700000000000000, v256);
        v605 = v1;
        if (v1)
        {

          v517 = v188;
          outlined destroy of NodePersonality(&v517);
          v516 = *(&v188 + 1);
          outlined destroy of [Input](&v516, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
          v515 = v189;
          outlined destroy of [Input](&v515, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
          v142 = v149;
          outlined consume of NodePersonality(v149);

          outlined consume of NodePersonality(v142);

          outlined consume of ShaderGraphNode?(v160, v163);
          outlined consume of ShaderGraphNode?(v151, v157);

          v514 = v190;
          outlined destroy of NodePersonality(&v514);
          v513 = *(&v190 + 1);
          outlined destroy of [Input](&v513, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
          v512 = *&v191[0];
          v13 = &v512;
          return outlined destroy of [Input](v13, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
        }

        outlined consume of NodePersonality(v149);
        v20 = v169;

        v8 = v172;
        UserGraph.moveEdge(from:to:)(v563, v256);

        v511 = v256[1];
        v78 = &v511;
        goto LABEL_120;
      }

      if (v177 == 0x78616D5F646F6CLL && v170 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        if (!v166)
        {
          v79 = v605;
          ShaderGraphNode.subscript.getter(0x6D616C635F646F6CLL, v148, v257);
          v605 = v79;
          if (v79)
          {

            v538 = v188;
            outlined destroy of NodePersonality(&v538);
            v537 = *(&v188 + 1);
            outlined destroy of [Input](&v537, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
            v536 = v189;
            outlined destroy of [Input](&v536, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
            outlined consume of ShaderGraphNode?(v160, v163);
            outlined consume of ShaderGraphNode?(v151, v157);

            v535 = v190;
            outlined destroy of NodePersonality(&v535);
            v534 = *(&v190 + 1);
            outlined destroy of [Input](&v534, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
            v533 = *&v191[0];
            v13 = &v533;
            return outlined destroy of [Input](v13, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
          }

          Input.prependCreateLODClampNode(in:)(&v258);
          v605 = 0;

          v532[0] = v257[1];
          outlined destroy of String(v532);
          v164 = v262;
          v173 = v261;
          v174 = v260;
          v169 = v259;
          v166 = *(&v258 + 1);
          v149 = v258;
        }

        v596 = v149;
        v597 = v166;
        v598 = v169;
        v599 = v174;
        v600 = v173;
        v77 = v164 & 1;
        v601 = v164 & 1;
        outlined copy of NodePersonality(v149);

        v1 = v605;
        ShaderGraphNode.subscript.getter(0x78616D5F646F6CLL, 0xE700000000000000, v263);
        v605 = v1;
        if (v1)
        {

          v531 = v188;
          outlined destroy of NodePersonality(&v531);
          v530 = *(&v188 + 1);
          outlined destroy of [Input](&v530, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
          v529 = v189;
          outlined destroy of [Input](&v529, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
          v143 = v149;
          outlined consume of NodePersonality(v149);

          outlined consume of NodePersonality(v143);

          outlined consume of ShaderGraphNode?(v160, v163);
          outlined consume of ShaderGraphNode?(v151, v157);

          v528 = v190;
          outlined destroy of NodePersonality(&v528);
          v527 = *(&v190 + 1);
          outlined destroy of [Input](&v527, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
          v526 = *&v191[0];
          v13 = &v526;
          return outlined destroy of [Input](v13, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
        }

        outlined consume of NodePersonality(v149);
        v20 = v169;

        v8 = v172;
        UserGraph.moveEdge(from:to:)(v563, v263);

        v525 = v263[1];
        v78 = &v525;
LABEL_120:
        outlined destroy of String(v78);
        v164 = v77;
LABEL_76:
        v18 = v173;
        v19 = v174;
        v21 = v171;
        goto LABEL_7;
      }

      if (v177 == 0x64726F6F63 && v170 == 0xE500000000000000)
      {
        goto LABEL_168;
      }

      if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v177 == 0x7365726464615F73 && v170 == 0xE900000000000073)
      {
        goto LABEL_168;
      }

      v80 = v177;
      v81 = v170;
      v82 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v83 = v80 == 0x7365726464615F74 && v81 == 0xE900000000000073;
      v84 = v83;
      if ((v82 & 1) != 0 || v84 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v177 == 0x635F726564726F62 && v170 == 0xEC000000726F6C6FLL)
      {
        goto LABEL_168;
      }

      if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v177 == 0x746C69665F67616DLL && v170 == 0xEA00000000007265)
      {
        goto LABEL_168;
      }

      v85 = v177;
      v86 = v170;
      v87 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v88 = v85 == 0x746C69665F6E696DLL && v86 == 0xEA00000000007265;
      v89 = v88;
      if (v87 & 1) != 0 || v89 || ((v90 = v177, v91 = v170, v92 = _stringCompareWithSmolCheck(_:_:expecting:)(), v90 == 0x746C69665F70696DLL) ? (v93 = v91 == 0xEA00000000007265) : (v93 = 0), !v93 ? (v94 = 0) : (v94 = 1), (v92 & 1) != 0 || (v94 & 1) != 0 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v177 == 0x5F657261706D6F63 && v170 == 0xEC000000636E7566 || (_stringCompareWithSmolCheck(_:_:expecting:)()))
      {
LABEL_168:
        v1 = v605;
        ShaderGraphNode.subscript.getter(v177, v170, v264);
        v605 = v1;
        if (v1)
        {

          v545 = v188;
          outlined destroy of NodePersonality(&v545);
          v544 = *(&v188 + 1);
          outlined destroy of [Input](&v544, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
          v543 = v189;
          outlined destroy of [Input](&v543, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
          outlined consume of ShaderGraphNode?(v160, v163);
          outlined consume of ShaderGraphNode?(v151, v157);
          outlined consume of ShaderGraphNode?(v149, v166);
          swift_bridgeObjectRelease_n();

          v542 = v190;
          outlined destroy of NodePersonality(&v542);
          v541 = *(&v190 + 1);
          outlined destroy of [Input](&v541, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
          v540 = *&v191[0];
          v13 = &v540;
          return outlined destroy of [Input](v13, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
        }

        v8 = v172;
        UserGraph.moveEdge(from:to:)(v563, v264);

        v539 = v264[1];
        v71 = &v539;
LABEL_74:
        outlined destroy of String(v71);
LABEL_75:
        v20 = v169;
        goto LABEL_76;
      }

      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v95 = type metadata accessor for Logger();
      __swift_project_value_buffer(v95, logger);
      v603 = v551;
      v604[0] = *v552;

      outlined init with copy of NodePersonality(&v603, &v183);
      outlined init with copy of [Input](&v602, &v183, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      outlined init with copy of [Input](v604, &v183, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
      v96 = Logger.logObject.getter();
      v97 = static os_log_type_t.error.getter();

      outlined destroy of ShaderGraphNode(&v551);
      if (os_log_type_enabled(v96, v97))
      {
        v98 = swift_slowAlloc();
        v99 = swift_slowAlloc();
        v180 = v99;
        *v98 = v146;
        v6 = v170;

        v100 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v177, v6, &v180);

        *(v98 + 4) = v100;
        *(v98 + 12) = 2080;
        *&v183 = 1701080942;
        *(&v183 + 1) = 0xE400000000000000;
        v182 = v147;
        v101 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x266771550](v101);

        v102 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v183, *(&v183 + 1), &v180);

        *(v98 + 14) = v102;
        _os_log_impl(&dword_265D7D000, v96, v97, "Ignoring unexpected input '%s' on node '%s'", v98, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266773120](v99, -1, -1);
        MEMORY[0x266773120](v98, -1, -1);
      }

      v20 = v169;
      v18 = v173;
      v19 = v174;
      goto LABEL_34;
    }

    specialized Set._Variant.insert(_:)(&v183, v58, v55);

    v20 = v169;
    v18 = v173;
    v19 = v174;
    v21 = v171;
    if (one-time initialization token for validLODOptionsSets != -1)
    {
      v60 = swift_once();
    }

    v165 = v187;
    *&v183 = v187;
    MEMORY[0x28223BE20](v60);
    v145 = &v183;
    v1 = v605;
    v62 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v144, v61);
    v605 = v1;
    if (v62)
    {
      goto LABEL_36;
    }

    swift_bridgeObjectRelease_n();
    v8 = v172;
LABEL_7:
    v17 = v179 + 1;
    if (v179 + 1 == v176)
    {
      v174 = v19;

      v103 = v166;
      if (!v166)
      {
        v166 = 0;
        v105 = v151;
        v6 = v149;
        goto LABEL_180;
      }

      v6 = v149;
      v555 = v149;
      v556 = v166;
      v557 = v20;
      v558 = v174;
      v559 = v18;
      v560 = v164 & 1;
      outlined copy of NodePersonality(v149);

      v104 = v605;
      ShaderGraphNode.subscript.getter(0x6E696D5F646F6CLL, 0xE700000000000000, v265);
      v605 = v104;
      if (v104)
      {
        outlined consume of ShaderGraphNode?(v6, v103);
        outlined consume of ShaderGraphNode?(v151, v157);
        outlined consume of ShaderGraphNode?(v160, v163);
        v350 = v190;
        outlined destroy of NodePersonality(&v350);
        v349 = *(&v190 + 1);
        outlined destroy of [Input](&v349, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
        v348 = *&v191[0];
        outlined destroy of [Input](&v348, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
        v347 = v188;
        outlined destroy of NodePersonality(&v347);
        v346 = *(&v188 + 1);
        outlined destroy of [Input](&v346, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
        v345 = v189;
        outlined destroy of [Input](&v345, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
        outlined consume of NodePersonality(v6);
LABEL_202:
      }

      v107 = v8[8];
      v108 = v8[9];
      v109 = v8[6];
      v561[7] = v8[7];
      v561[8] = v107;
      v562[0] = v108;
      *(v562 + 9) = *(v8 + 153);
      v110 = v8[5];
      v561[4] = v8[4];
      v561[5] = v110;
      v561[6] = v109;
      v111 = v8[1];
      v561[0] = *v8;
      v561[1] = v111;
      v112 = v8[3];
      v561[2] = v8[2];
      v561[3] = v112;
      outlined init with copy of UserGraph(v561, v185);
      UserGraph.node(connectedTo:)(v265, v267);
      outlined destroy of UserGraph(v561);
      if (v267[1])
      {
        outlined destroy of [Input](v267, &_s11ShaderGraph0aB4NodeVSgMd, &_s11ShaderGraph0aB4NodeVSgMR);
      }

      else
      {
        v173 = v18;
        if (one-time initialization token for float != -1)
        {
          swift_once();
        }

        v115 = static MetalDataType.float;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMR);
        v116 = swift_allocObject();
        *(v116 + 16) = xmmword_265F1F670;
        *(v116 + 32) = 7632239;
        *(v116 + 40) = 0xE300000000000000;
        *(v116 + 48) = v115;
        v117 = swift_allocObject();
        *(v117 + 16) = 0;
        *(v117 + 80) = 5;
        *(v117 + 88) = v115;
        swift_retain_n();
        v118 = v172;
        UserGraph.insertNode(inputs:outputs:shaderGraphData:)(MEMORY[0x277D84F90], v116, v117, &v268);

        swift_setDeallocating();
        v119 = *(v116 + 16);
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v120 = v605;
        ShaderGraphNode.subscript.getter(7632239, 0xE300000000000000, v270);
        v605 = v120;
        if (v120)
        {
          outlined consume of ShaderGraphNode?(v6, v166);
          outlined consume of ShaderGraphNode?(v151, v157);
          outlined consume of ShaderGraphNode?(v160, v163);
          v344 = v190;
          outlined destroy of NodePersonality(&v344);
          v343 = *(&v190 + 1);
          outlined destroy of [Input](&v343, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
          v342 = *&v191[0];
          outlined destroy of [Input](&v342, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
          v341 = v188;
          outlined destroy of NodePersonality(&v341);
          v340 = *(&v188 + 1);
          outlined destroy of [Input](&v340, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
          v339 = v189;
          outlined destroy of [Input](&v339, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
          v338 = v268;
          outlined destroy of NodePersonality(&v338);
          v337 = *(&v268 + 1);
          outlined destroy of [Input](&v337, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
          v336 = v269;
          outlined destroy of [Input](&v336, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

          v335 = v266;
          v114 = &v335;
          goto LABEL_201;
        }

        UserGraph.connect(_:to:)(v270, v265);

        v334 = v270[1];
        outlined destroy of String(&v334);
        v333 = v268;
        outlined destroy of NodePersonality(&v333);
        v332 = *(&v268 + 1);
        outlined destroy of [Input](&v332, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
        v331 = v269;
        outlined destroy of [Input](&v331, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
        v18 = v173;
        v8 = v118;
      }

      v113 = v605;
      ShaderGraphNode.subscript.getter(0x78616D5F646F6CLL, 0xE700000000000000, v271);
      v605 = v113;
      if (v113)
      {
        outlined consume of ShaderGraphNode?(v6, v166);
        outlined consume of ShaderGraphNode?(v151, v157);
        outlined consume of ShaderGraphNode?(v160, v163);
        v330 = v190;
        outlined destroy of NodePersonality(&v330);
        v329 = *(&v190 + 1);
        outlined destroy of [Input](&v329, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
        v328 = *&v191[0];
        outlined destroy of [Input](&v328, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
        v327 = v188;
        outlined destroy of NodePersonality(&v327);
        v326 = *(&v188 + 1);
        outlined destroy of [Input](&v326, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
        v325 = v189;
        outlined destroy of [Input](&v325, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

        v324 = v266;
        v114 = &v324;
LABEL_201:
        outlined destroy of String(v114);
        outlined consume of NodePersonality(v6);
        goto LABEL_202;
      }

      v125 = v8[9];
      v553[8] = v8[8];
      v554[0] = v125;
      *(v554 + 9) = *(v8 + 153);
      v126 = v8[5];
      v553[4] = v8[4];
      v553[5] = v126;
      v127 = v8[7];
      v553[6] = v8[6];
      v553[7] = v127;
      v128 = v8[1];
      v553[0] = *v8;
      v553[1] = v128;
      v129 = v8[3];
      v553[2] = v8[2];
      v553[3] = v129;
      outlined init with copy of UserGraph(v553, v185);
      UserGraph.node(connectedTo:)(v271, v273);
      outlined destroy of UserGraph(v553);
      if (v273[1])
      {
        outlined destroy of [Input](v273, &_s11ShaderGraph0aB4NodeVSgMd, &_s11ShaderGraph0aB4NodeVSgMR);

        v306 = v272;
        outlined destroy of String(&v306);

        v305 = v266;
        outlined destroy of String(&v305);
        outlined consume of NodePersonality(v6);

LABEL_195:
        v105 = v151;
        goto LABEL_180;
      }

      v173 = v18;
      if (one-time initialization token for float != -1)
      {
        swift_once();
      }

      v130 = static MetalDataType.float;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMR);
      v131 = swift_allocObject();
      *(v131 + 16) = xmmword_265F1F670;
      *(v131 + 32) = 7632239;
      *(v131 + 40) = 0xE300000000000000;
      *(v131 + 48) = v130;
      v132 = swift_allocObject();
      *(v132 + 16) = 1232348144;
      *(v132 + 80) = 5;
      *(v132 + 88) = v130;
      swift_retain_n();
      UserGraph.insertNode(inputs:outputs:shaderGraphData:)(MEMORY[0x277D84F90], v131, v132, &v274);

      swift_setDeallocating();
      v133 = *(v131 + 16);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v134 = v605;
      ShaderGraphNode.subscript.getter(7632239, 0xE300000000000000, v276);
      v605 = v134;
      if (v134)
      {
        outlined consume of ShaderGraphNode?(v6, v166);
        outlined consume of ShaderGraphNode?(v151, v157);
        outlined consume of ShaderGraphNode?(v160, v163);
        v323 = v190;
        outlined destroy of NodePersonality(&v323);
        v322 = *(&v190 + 1);
        outlined destroy of [Input](&v322, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
        v321 = *&v191[0];
        outlined destroy of [Input](&v321, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
        v320 = v188;
        outlined destroy of NodePersonality(&v320);
        v319 = *(&v188 + 1);
        outlined destroy of [Input](&v319, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
        v318 = v189;
        outlined destroy of [Input](&v318, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
        v317 = v274;
        outlined destroy of NodePersonality(&v317);
        v316 = *(&v274 + 1);
        outlined destroy of [Input](&v316, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
        v315 = v275;
        outlined destroy of [Input](&v315, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

        v314 = v272;
        outlined destroy of String(&v314);

        v313 = v266;
        v114 = &v313;
        goto LABEL_201;
      }

LABEL_205:
      UserGraph.connect(_:to:)(v276, v271);

      v312 = v272;
      outlined destroy of String(&v312);

      v311 = v266;
      outlined destroy of String(&v311);
      outlined consume of NodePersonality(v6);

      v310 = v276[1];
      outlined destroy of String(&v310);
      v309 = v274;
      outlined destroy of NodePersonality(&v309);
      v308 = *(&v274 + 1);
      outlined destroy of [Input](&v308, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v307 = v275;
      outlined destroy of [Input](&v307, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
      goto LABEL_195;
    }
  }

  __break(1u);
LABEL_211:
  __break(1u);
LABEL_212:
  v605 = v1;

  v407 = v188;
  outlined destroy of NodePersonality(&v407);
  v406 = *(&v188 + 1);
  outlined destroy of [Input](&v406, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
  v405 = v189;
  outlined destroy of [Input](&v405, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
  outlined consume of ShaderGraphNode?(v160, v163);
  outlined consume of ShaderGraphNode?(v151, v157);
  outlined consume of ShaderGraphNode?(v149, v166);

  v404 = v190;
  outlined destroy of NodePersonality(&v404);
  v403 = *(&v190 + 1);
  outlined destroy of [Input](&v403, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
  v402 = *&v191[0];
  v13 = &v402;
  return outlined destroy of [Input](v13, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
}