void UserGraph.insertSampleTexture(for:)(__int128 *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  specialized ShaderGraphNode.output(labeled:)(&v84, 7632239, 0xE300000000000000, *(a1 + 2));
  v6 = v85;
  if (v85)
  {
    v80 = a2;
    v97 = v86;
    outlined destroy of String(&v97);
    v7 = specialized ShaderGraphNode.metalTextureType.getter(*a1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph9InputSpecVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph9InputSpecVGMR);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_265F21D70;
    v9 = one-time initialization token for sampler;

    if (v9 != -1)
    {
      swift_once();
    }

    v10 = static MetalDataType.sampler;
    *(v8 + 32) = 0x72656C706D6173;
    *(v8 + 40) = 0xE700000000000000;
    *(v8 + 48) = v10;
    *(v8 + 56) = 0x65727574786574;
    *(v8 + 64) = 0xE700000000000000;
    *(v8 + 72) = v7;
    *(v8 + 80) = 0x746C7561666564;
    *(v8 + 88) = 0xE700000000000000;
    *(v8 + 96) = v6;
    v11 = one-time initialization token for float2;

    if (v11 != -1)
    {
      swift_once();
    }

    v98 = v3;
    v12 = static MetalDataType.float2;
    *(v8 + 104) = 0x64726F6F63;
    *(v8 + 112) = 0xE500000000000000;
    *(v8 + 120) = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_265F1F670;
    v14 = one-time initialization token for texture2d_half;

    if (v14 != -1)
    {
      swift_once();
    }

    v15 = *(*v7 + 128);

    v17 = v15(v16);

    v18 = "ND_sample_texture2d_float";
    v19 = 0xD000000000000018;
    if ((v17 & 1) == 0)
    {
      v19 = 0xD000000000000019;
      v18 = "realitykit_cubeimage_";
    }

    *(v13 + 32) = v19;
    *(v13 + 40) = v18 | 0x8000000000000000;
    v20 = *(a1 + 1);
    specialized ShaderGraphNode.output(labeled:)(v87, 1935763810, 0xE400000000000000, v20);
    if (v87[1])
    {
      outlined destroy of [Input](v87, &_s11ShaderGraph5InputVSgMd, &_s11ShaderGraph5InputVSgMR);
      if (one-time initialization token for bias != -1)
      {
        swift_once();
      }

      v21 = static MetalDataType.bias;

      v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
      v24 = *(v22 + 2);
      v23 = *(v22 + 3);
      if (v24 >= v23 >> 1)
      {
        v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1, v22);
      }

      *(v22 + 2) = v24 + 1;
      v25 = &v22[24 * v24];
      *(v25 + 4) = 1935763810;
      *(v25 + 5) = 0xE400000000000000;
      *(v25 + 6) = v21;
      v27 = *(v13 + 16);
      v26 = *(v13 + 24);
      if (v27 >= v26 >> 1)
      {
        v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v13);
      }

      *(v13 + 16) = v27 + 1;
      v28 = v13 + 16 * v27;
      *(v28 + 32) = 1935763810;
      *(v28 + 40) = 0xE400000000000000;
    }

    else
    {
      v22 = MEMORY[0x277D84F90];
    }

    specialized ShaderGraphNode.output(labeled:)(v88, 0x6C6576656CLL, 0xE500000000000000, v20);
    if (v88[1])
    {
      outlined destroy of [Input](v88, &_s11ShaderGraph5InputVSgMd, &_s11ShaderGraph5InputVSgMR);
      if (one-time initialization token for level != -1)
      {
        swift_once();
      }

      v40 = static MetalDataType.level;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v22 + 2) + 1, 1, v22);
      }

      v42 = *(v22 + 2);
      v41 = *(v22 + 3);
      if (v42 >= v41 >> 1)
      {
        v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v42 + 1, 1, v22);
      }

      *(v22 + 2) = v42 + 1;
      v43 = &v22[24 * v42];
      *(v43 + 4) = 0x6C6576656CLL;
      *(v43 + 5) = 0xE500000000000000;
      *(v43 + 6) = v40;
      v45 = *(v13 + 16);
      v44 = *(v13 + 24);
      if (v45 >= v44 >> 1)
      {
        v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v45 + 1, 1, v13);
      }

      *(v13 + 16) = v45 + 1;
      v46 = v13 + 16 * v45;
      *(v46 + 32) = 6582124;
      *(v46 + 40) = 0xE300000000000000;
    }

    specialized ShaderGraphNode.output(labeled:)(v89, 0x746E656964617267, 0xEC000000785F6432, v20);
    if (v89[1])
    {
      outlined destroy of [Input](v89, &_s11ShaderGraph5InputVSgMd, &_s11ShaderGraph5InputVSgMR);
      specialized ShaderGraphNode.output(labeled:)(v90, 0x746E656964617267, 0xEC000000795F6432, v20);
      if (v90[1])
      {
        outlined destroy of [Input](v90, &_s11ShaderGraph5InputVSgMd, &_s11ShaderGraph5InputVSgMR);
        if (one-time initialization token for gradient2d != -1)
        {
          swift_once();
        }

        v47 = static MetalDataType.gradient2d;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v22 + 2) + 1, 1, v22);
        }

        v49 = *(v22 + 2);
        v48 = *(v22 + 3);
        if (v49 >= v48 >> 1)
        {
          v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v48 > 1), v49 + 1, 1, v22);
        }

        *(v22 + 2) = v49 + 1;
        v50 = &v22[24 * v49];
        *(v50 + 4) = 0x746E656964617267;
        *(v50 + 5) = 0xE800000000000000;
        *(v50 + 6) = v47;
        v52 = *(v13 + 16);
        v51 = *(v13 + 24);
        if (v52 >= v51 >> 1)
        {
          v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v51 > 1), v52 + 1, 1, v13);
        }

        *(v13 + 16) = v52 + 1;
        v53 = v13 + 16 * v52;
        *(v53 + 32) = 0x746E656964617267;
        *(v53 + 40) = 0xEA00000000006432;
      }
    }

    specialized ShaderGraphNode.output(labeled:)(v91, 0x746E656964617267, 0xEC000000785F6433, v20);
    if (v91[1])
    {
      outlined destroy of [Input](v91, &_s11ShaderGraph5InputVSgMd, &_s11ShaderGraph5InputVSgMR);
      specialized ShaderGraphNode.output(labeled:)(v92, 0x746E656964617267, 0xEC000000795F6433, v20);
      if (v92[1])
      {
        outlined destroy of [Input](v92, &_s11ShaderGraph5InputVSgMd, &_s11ShaderGraph5InputVSgMR);
        specialized ShaderGraphNode.output(labeled:)(v93, 0x746E656964617267, 0xEC0000007A5F6433, v20);
        if (v93[1])
        {
          outlined destroy of [Input](v93, &_s11ShaderGraph5InputVSgMd, &_s11ShaderGraph5InputVSgMR);
          if (one-time initialization token for gradient2d != -1)
          {
            swift_once();
          }

          v54 = static MetalDataType.gradient2d;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v22 + 2) + 1, 1, v22);
          }

          v56 = *(v22 + 2);
          v55 = *(v22 + 3);
          if (v56 >= v55 >> 1)
          {
            v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v55 > 1), v56 + 1, 1, v22);
          }

          *(v22 + 2) = v56 + 1;
          v57 = &v22[24 * v56];
          *(v57 + 4) = 0x746E656964617267;
          *(v57 + 5) = 0xE800000000000000;
          *(v57 + 6) = v54;
          v59 = *(v13 + 16);
          v58 = *(v13 + 24);
          if (v59 >= v58 >> 1)
          {
            v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v58 > 1), v59 + 1, 1, v13);
          }

          *(v13 + 16) = v59 + 1;
          v60 = v13 + 16 * v59;
          *(v60 + 32) = 0x746E656964617267;
          *(v60 + 40) = 0xEA00000000006433;
        }
      }
    }

    isUniquelyReferenced_nonNull_native = specialized ShaderGraphNode.output(labeled:)(v94, 0x5F646F6C5F6E696DLL, 0xED0000706D616C63, v20);
    if (v94[1])
    {
      outlined destroy of [Input](v94, &_s11ShaderGraph5InputVSgMd, &_s11ShaderGraph5InputVSgMR);
      if (one-time initialization token for min_lod_clamp != -1)
      {
        swift_once();
      }

      v62 = static MetalDataType.min_lod_clamp;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v22 + 2) + 1, 1, v22);
        v22 = isUniquelyReferenced_nonNull_native;
      }

      v64 = *(v22 + 2);
      v63 = *(v22 + 3);
      if (v64 >= v63 >> 1)
      {
        isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v63 > 1), v64 + 1, 1, v22);
        v22 = isUniquelyReferenced_nonNull_native;
      }

      *(v22 + 2) = v64 + 1;
      v65 = &v22[24 * v64];
      strcpy(v65 + 32, "min_lod_clamp");
      *(v65 + 23) = -4864;
      *(v65 + 6) = v62;
      v67 = *(v13 + 16);
      v66 = *(v13 + 24);
      if (v67 >= v66 >> 1)
      {
        isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v66 > 1), v67 + 1, 1, v13);
        v13 = isUniquelyReferenced_nonNull_native;
      }

      *(v13 + 16) = v67 + 1;
      v68 = v13 + 16 * v67;
      strcpy((v68 + 32), "min_lod_clamp");
      *(v68 + 46) = -4864;
    }

    v69 = (*(*v6 + 144))(isUniquelyReferenced_nonNull_native);
    if (v69)
    {
      v71 = *(v69 + 24);
      v70 = *(v69 + 32);

      v73 = *(v13 + 16);
      v72 = *(v13 + 24);
      if (v73 >= v72 >> 1)
      {
        v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v72 > 1), v73 + 1, 1, v13);
      }

      *(v13 + 16) = v73 + 1;
      v74 = v13 + 16 * v73;
      *(v74 + 32) = v71;
      *(v74 + 40) = v70;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR);
      BidirectionalCollection<>.joined(separator:)();

      specialized Array.append<A>(contentsOf:)(v22);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMR);
      v75 = swift_allocObject();
      *(v75 + 16) = xmmword_265F1F670;
      *(v75 + 32) = 7632239;
      *(v75 + 40) = 0xE300000000000000;
      *(v75 + 48) = v6;
      v76 = swift_allocObject();

      *(v76 + 16) = String.init<A>(_:)();
      *(v76 + 24) = v77;
      *(v76 + 32) = v6;

      UserGraph.insertNode(inputs:outputs:shaderGraphData:)(v8, v75, v76 | 0x2000000000000000, &v95);

      swift_setDeallocating();
      v78 = *(v75 + 16);
      swift_arrayDestroy();
      swift_deallocClassInstance();

      v79 = v96[0];
      *v80 = v95;
      v80[1] = v79;
      *(v80 + 25) = *(v96 + 9);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    MEMORY[0x266771550](7632239, 0xE300000000000000);
    MEMORY[0x266771550](32, 0xE100000000000000);
    v81 = *a1;
    *v83 = a1[1];
    *&v83[9] = *(a1 + 25);
    _print_unlocked<A, B>(_:_:)();

    v82 = *a1;
    *v83 = a1[1];
    *&v83[9] = *(a1 + 25);
    _print_unlocked<A, B>(_:_:)();
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    v29 = swift_allocError();
    *v30 = 8;
    *(v30 + 8) = 0;
    *(v30 + 16) = 0xE000000000000000;
    swift_willThrow();
    v31 = v29;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    __swift_project_value_buffer(v32, logger);
    v33 = v29;
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v36 = 138412290;
      v38 = v29;
      v39 = _swift_stdlib_bridgeErrorToNSError();
      *(v36 + 4) = v39;
      *v37 = v39;
      _os_log_impl(&dword_265D7D000, v34, v35, "%@", v36, 0xCu);
      outlined destroy of [Input](v37, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x266773120](v37, -1, -1);
      MEMORY[0x266773120](v36, -1, -1);
    }

    swift_willThrow();
  }
}

uint64_t Input.prependUnaryFunction(_:argumentType:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v33[4] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph9InputSpecVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph9InputSpecVGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_265F1F670;
  *(inited + 32) = 28265;
  *(inited + 40) = 0xE200000000000000;
  *(inited + 48) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMR);
  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_265F1F670;
  v10 = v5[1];
  *(v9 + 32) = 7632239;
  *(v9 + 40) = 0xE300000000000000;
  *(v9 + 48) = v10;
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  *(v11 + 32) = v10;
  swift_retain_n();

  UserGraph.insertNode(inputs:outputs:shaderGraphData:)(inited, v9, v11 | 0x2000000000000000, &v19);
  swift_setDeallocating();
  v12 = *(inited + 16);
  swift_arrayDestroy();

  swift_setDeallocating();
  v13 = *(v9 + 16);
  swift_arrayDestroy();
  v33[0] = *&v20[0];
  specialized ShaderGraphNode.output(labeled:)(&v21, 7632239, 0xE300000000000000, *&v20[0]);
  if (v22)
  {
    v26[0] = v21;
    v26[1] = v22;
    v27 = v23;
    v28 = v24;
    v29 = v25;
    UserGraph.connect(_:to:)(v26, v5);

    v30 = v27;
    result = outlined destroy of String(&v30);
    v15 = v20[0];
    *a5 = v19;
    a5[1] = v15;
    *(a5 + 25) = *(v20 + 9);
  }

  else
  {
    MEMORY[0x266771550](7632239, 0xE300000000000000);
    MEMORY[0x266771550](32, 0xE100000000000000);
    _print_unlocked<A, B>(_:_:)();
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    *v16 = 14;
    *(v16 + 8) = 0;
    *(v16 + 16) = 0xE000000000000000;
    swift_willThrow();
    v32 = v19;
    outlined destroy of NodePersonality(&v32);
    v31 = *(&v19 + 1);
    outlined destroy of [Input](&v31, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    return outlined destroy of [Input](v33, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
  }

  return result;
}

uint64_t Input.prependCreateGradient2DNode(in:)@<X0>(void *a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X3>, _OWORD *a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph9InputSpecVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph9InputSpecVGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_265F21D90;
  if (*a1 != -1)
  {
    swift_once();
  }

  v9 = *a2;
  *(inited + 32) = 2019840100;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = v9;
  *(inited + 56) = 2036617316;
  *(inited + 64) = 0xE400000000000000;
  *(inited + 72) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMR);
  v10 = swift_initStackObject();
  *(v10 + 16) = xmmword_265F1F670;
  v11 = v4[1];
  *(v10 + 32) = 7632239;
  *(v10 + 40) = 0xE300000000000000;
  *(v10 + 48) = v11;
  v12 = swift_allocObject();
  *(v12 + 16) = 0x746E656964617267;
  *(v12 + 24) = a3;
  *(v12 + 32) = v11;
  swift_retain_n();
  swift_retain_n();
  UserGraph.insertNode(inputs:outputs:shaderGraphData:)(inited, v10, v12 | 0x2000000000000000, &v19);
  swift_setDeallocating();
  v13 = *(inited + 16);
  swift_arrayDestroy();

  swift_setDeallocating();
  v14 = *(v10 + 16);
  swift_arrayDestroy();
  v33[0] = *&v20[0];
  specialized ShaderGraphNode.output(labeled:)(&v21, 7632239, 0xE300000000000000, *&v20[0]);
  if (v22)
  {
    v26[0] = v21;
    v26[1] = v22;
    v27 = v23;
    v28 = v24;
    v29 = v25;
    UserGraph.connect(_:to:)(v26, v4);

    v30 = v27;
    result = outlined destroy of String(&v30);
    v16 = v20[0];
    *a4 = v19;
    a4[1] = v16;
    *(a4 + 25) = *(v20 + 9);
  }

  else
  {
    MEMORY[0x266771550](7632239, 0xE300000000000000);
    MEMORY[0x266771550](32, 0xE100000000000000);
    _print_unlocked<A, B>(_:_:)();
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    *v17 = 14;
    *(v17 + 8) = 0;
    *(v17 + 16) = 0xE000000000000000;
    swift_willThrow();
    v32 = v19;
    outlined destroy of NodePersonality(&v32);
    v31 = *(&v19 + 1);
    outlined destroy of [Input](&v31, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    return outlined destroy of [Input](v33, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
  }

  return result;
}

uint64_t Input.prependCreateLODClampNode(in:)@<X0>(_OWORD *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph9InputSpecVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph9InputSpecVGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_265F21D90;
  if (one-time initialization token for float != -1)
  {
    swift_once();
  }

  v4 = static MetalDataType.float;
  *(inited + 32) = 0x6E696D5F646F6CLL;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 48) = v4;
  *(inited + 56) = 0x78616D5F646F6CLL;
  *(inited + 64) = 0xE700000000000000;
  *(inited + 72) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMR);
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_265F1F670;
  v6 = v1[1];
  *(v5 + 32) = 7632239;
  *(v5 + 40) = 0xE300000000000000;
  *(v5 + 48) = v6;
  v7 = swift_allocObject();
  *(v7 + 16) = 0x6D616C635F646F6CLL;
  *(v7 + 24) = 0xE900000000000070;
  *(v7 + 32) = v6;
  swift_retain_n();
  swift_retain_n();
  UserGraph.insertNode(inputs:outputs:shaderGraphData:)(inited, v5, v7 | 0x2000000000000000, &v13);
  swift_setDeallocating();
  v8 = *(inited + 16);
  swift_arrayDestroy();

  swift_setDeallocating();
  v9 = *(v5 + 16);
  swift_arrayDestroy();
  v27[0] = *&v14[0];
  specialized ShaderGraphNode.output(labeled:)(&v15, 7632239, 0xE300000000000000, *&v14[0]);
  if (v16)
  {
    v20[0] = v15;
    v20[1] = v16;
    v21 = v17;
    v22 = v18;
    v23 = v19;
    UserGraph.connect(_:to:)(v20, v1);

    v24 = v21;
    result = outlined destroy of String(&v24);
    v11 = v14[0];
    *a1 = v13;
    a1[1] = v11;
    *(a1 + 25) = *(v14 + 9);
  }

  else
  {
    MEMORY[0x266771550](7632239, 0xE300000000000000);
    MEMORY[0x266771550](32, 0xE100000000000000);
    _print_unlocked<A, B>(_:_:)();
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    *v12 = 14;
    *(v12 + 8) = 0;
    *(v12 + 16) = 0xE000000000000000;
    swift_willThrow();
    v26 = v13;
    outlined destroy of NodePersonality(&v26);
    v25 = *(&v13 + 1);
    outlined destroy of [Input](&v25, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    return outlined destroy of [Input](v27, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
  }

  return result;
}

double UserGraph.insertConstantValue(type:value:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_265F1F670;
  *(inited + 32) = 7632239;
  *(inited + 40) = 0xE300000000000000;
  *(inited + 48) = a1;
  v7 = swift_allocObject();
  v8 = *(a2 + 48);
  *(v7 + 48) = *(a2 + 32);
  *(v7 + 64) = v8;
  *(v7 + 80) = *(a2 + 64);
  v9 = *(a2 + 16);
  *(v7 + 16) = *a2;
  *(v7 + 32) = v9;
  *(v7 + 88) = a1;
  swift_retain_n();
  outlined init with copy of SGDataTypeStorage(a2, &v13);
  UserGraph.insertNode(inputs:outputs:shaderGraphData:)(MEMORY[0x277D84F90], inited, v7, &v13);

  swift_setDeallocating();
  v10 = *(inited + 16);
  swift_arrayDestroy();
  v11 = v14[0];
  *a3 = v13;
  a3[1] = v11;
  result = *(v14 + 9);
  *(a3 + 25) = *(v14 + 9);
  return result;
}

uint64_t closure #1 in UserGraph.transformSamplerNodes()(uint64_t result)
{
  v1 = *(result + 16);
  v2 = (v1 + 56);
  v3 = -*(v1 + 16);
  v4 = -1;
  while (1)
  {
    v5 = v3 + v4;
    if (v3 + v4 == -1)
    {
      return v5 != -1;
    }

    if (++v4 >= *(v1 + 16))
    {
      break;
    }

    v6 = *(v2 - 2);
    v7 = *v2;
    v8 = one-time initialization token for sampler;

    if (v8 != -1)
    {
      swift_once();
    }

    v2 += 7;
    v9 = (*(*v6 + 128))(static MaterialXDataType.sampler);

    if (v9)
    {
      return v5 != -1;
    }
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in UserGraph.transformGetTextureNodes<A>(_:textureAssignments:customUniformsType:)(void *a1)
{
  if (*a1 >> 61 != 5)
  {
    return 0;
  }

  v1 = *((*a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v2 = *((*a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);

  v3._object = 0x8000000265F2D870;
  v3._countAndFlagsBits = 0xD000000000000013;
  LOBYTE(v1) = String.hasPrefix(_:)(v3);

  return v1 & 1;
}

uint64_t closure #2 in UserGraph.transformGetTextureNodes<A>(_:textureAssignments:customUniformsType:)(uint64_t result, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 8);
  if (*(v4 + 16))
  {
    v62 = *result;
    v63 = *(result + 16);
    v64 = *(result + 24);
    v9 = *(v4 + 32);
    v8 = *(v4 + 40);
    v10 = *(v4 + 48);
    v11 = *(v4 + 56);
    v12 = *(v4 + 64);
    v13 = *(v4 + 72);
    v14 = *(v4 + 80);
    v114[0] = v9;
    v114[1] = v8;
    v60 = v10;
    v114[2] = v10;
    v114[3] = v11;
    v114[4] = v12;
    v115 = v13;
    v116 = v14;
    v15 = a2[9];
    v121[8] = a2[8];
    v122[0] = v15;
    *(v122 + 9) = *(a2 + 153);
    v16 = a2[5];
    v121[4] = a2[4];
    v121[5] = v16;
    v17 = a2[6];
    v121[7] = a2[7];
    v121[6] = v17;
    v18 = a2[2];
    v121[3] = a2[3];
    v121[2] = v18;
    v19 = *a2;
    v121[1] = a2[1];
    v121[0] = v19;

    outlined init with copy of UserGraph(v121, &v66);
    UserGraph.node(connectedTo:)(v114, &v68);
    outlined destroy of UserGraph(v121);
    v20 = v69;
    if (v69)
    {
      v91 = v68;
      v92 = v69;
      v93[0] = v70[0];
      *(v93 + 9) = *(v70 + 9);
      v94 = v68;
      if (!(v68 >> 61) && *(v68 + 80) == 6)
      {
        v22 = *(v68 + 16);
        v21 = *(v68 + 24);
        v59 = *(v68 + 40);
        v61 = *(v68 + 32);
        v57 = *(v68 + 56);
        v58 = *(v68 + 48);
        v55 = *(v68 + 72);
        v56 = *(v68 + 64);

        v23 = v125;
        UserGraph.insertGetTexture(_:textureAssignments:customUniformsType:)(v22, v21, a3, a4, &v71);
        if (v23)
        {
          outlined destroy of NodePersonality(&v94);
          v103 = v20;
          outlined destroy of [Input](&v103, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
          v104 = *&v93[0];
          outlined destroy of [Input](&v104, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
          outlined consume of SGDataTypeStorage(v22, v21, v61, v59, v58, v57, v56, v55, 6);
        }

        v43 = *(&v71 + 1);
        v42 = v71;
        v44 = v72;
        outlined consume of SGDataTypeStorage(v22, v21, v61, v59, v58, v57, v56, v55, 6);
        goto LABEL_26;
      }

      v24 = a2[6];
      v119 = a2[5];
      v120[0] = v24;
      *(v120 + 9) = *(a2 + 105);
      v123 = v119;
      v124[0] = v24;
      outlined init with copy of NodePersonality(&v123, &v66);
      outlined init with copy of [Input](&v123 + 8, &v66, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      outlined init with copy of [Input](v124, &v66, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
      v25 = specialized static ShaderGraphNode.== infix(_:_:)(&v91, &v119);
      outlined destroy of NodePersonality(&v123);
      outlined destroy of [Input](&v123 + 8, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      outlined destroy of [Input](v124, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
      if ((v25 & 1) == 0)
      {
        lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
        swift_allocError();
        *v37 = 44;
        *(v37 + 8) = 0xD00000000000003ALL;
        *(v37 + 16) = 0x8000000265F30EB0;
        swift_willThrow();
        outlined destroy of NodePersonality(&v94);
        v99 = v92;
        outlined destroy of [Input](&v99, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
        v100 = *&v93[0];
        outlined destroy of [Input](&v100, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
      }

      v26 = a2[9];
      v117[8] = a2[8];
      v118[0] = v26;
      *(v118 + 9) = *(a2 + 153);
      v27 = a2[5];
      v117[4] = a2[4];
      v117[5] = v27;
      v28 = a2[6];
      v117[7] = a2[7];
      v117[6] = v28;
      v29 = a2[1];
      v117[0] = *a2;
      v117[1] = v29;
      v30 = a2[3];
      v117[2] = a2[2];
      v117[3] = v30;
      outlined init with copy of UserGraph(v117, &v66);
      UserGraph.output(connectedTo:)(v114, v73);
      outlined destroy of UserGraph(v117);
      result = v74;
      if (v74)
      {
        v31 = v75;
        v32 = v76;

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMR);
        v33 = swift_allocObject();
        *(v33 + 16) = xmmword_265F1F670;
        *(v33 + 32) = 7632239;
        *(v33 + 40) = 0xE300000000000000;
        *(v33 + 48) = a4;
        v34 = swift_allocObject();
        *(v34 + 16) = 12580;
        *(v34 + 24) = 0xE200000000000000;

        UserGraph.insertNode(inputs:outputs:shaderGraphData:)(MEMORY[0x277D84F90], v33, v34 | 0x6000000000000000, &v77);

        swift_setDeallocating();
        v35 = *(v33 + 16);
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v113 = *&v78[0];
        specialized ShaderGraphNode.output(labeled:)(&v79, 7632239, 0xE300000000000000, *&v78[0]);
        if (!v80)
        {
          MEMORY[0x266771550](7632239, 0xE300000000000000);
          MEMORY[0x266771550](32, 0xE100000000000000);
          v66 = v77;
          v67[0] = v78[0];
          *(v67 + 9) = *(v78 + 9);
          _print_unlocked<A, B>(_:_:)();
          lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
          swift_allocError();
          *v45 = 14;
          *(v45 + 8) = 0;
          *(v45 + 16) = 0xE000000000000000;
          swift_willThrow();
          v112 = v77;
          outlined destroy of NodePersonality(&v112);
          v111 = *(&v77 + 1);
          outlined destroy of [Input](&v111, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
          outlined destroy of [Input](&v113, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
          outlined destroy of NodePersonality(&v94);
          v95 = v92;
          outlined destroy of [Input](&v95, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
          v96 = *&v93[0];
          outlined destroy of [Input](&v96, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
        }

        v86 = v79;
        v87 = v80;
        v88 = v81;
        v89 = v82;
        v90 = v83;
        v110 = v77;
        outlined destroy of NodePersonality(&v110);
        v109 = *(&v77 + 1);
        outlined destroy of [Input](&v109, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
        outlined destroy of [Input](&v113, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
        v36 = v125;
        Output.getProperty(_:_:)(a2, v31, v32, &v84);
        if (v36)
        {

          v107 = v88;
          outlined destroy of String(&v107);
          outlined destroy of NodePersonality(&v94);
          v105 = v92;
          outlined destroy of [Input](&v105, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
          v106 = *&v93[0];
          outlined destroy of [Input](&v106, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
        }

        v43 = *(&v84 + 1);
        v53 = v84;
        v44 = v85;

        v108 = v88;
        outlined destroy of String(&v108);
        v42 = v53;

LABEL_26:
        outlined copy of NodePersonality(v42);

        outlined copy of NodePersonality(v62);

        specialized Sequence.forEach(_:)(v43, v4, a2);
        outlined consume of NodePersonality(v62);

        outlined copy of NodePersonality(v62);

        specialized Sequence.forEach(_:)(v44, v63, a2);
        v125 = 0;
        outlined consume of NodePersonality(v62);

        specialized UserGraph.removeEdges(connectedTo:)(v64);
        v54 = *(a2 + 8);
        result = swift_isUniquelyReferenced_nonNull_native();
        *(a2 + 8) = v54;
        if (result)
        {
          if ((v64 & 0x8000000000000000) == 0)
          {
            goto LABEL_28;
          }
        }

        else
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew()(v54);
          v54 = result;
          *(a2 + 8) = result;
          if ((v64 & 0x8000000000000000) == 0)
          {
LABEL_28:
            if (v64 < *(v54 + 16))
            {
              ShaderGraphNode.update(id:)(-7);
              outlined consume of ShaderGraphNode?(v42, v43);
              outlined consume of NodePersonality(v42);

              outlined destroy of NodePersonality(&v94);
              v101 = v92;
              outlined destroy of [Input](&v101, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
              v102 = *&v93[0];
              return outlined destroy of [Input](&v102, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
            }

            goto LABEL_32;
          }
        }

        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      if (v9 == -7)
      {
        v38 = 0;
        v39 = 0;
        v125 = 0;
        v40 = 0xED00002165646F6ELL;
        v41 = 0x20676E697373696DLL;
      }

      else
      {
        if ((v9 & 0x8000000000000000) != 0)
        {
LABEL_33:
          __break(1u);
          goto LABEL_34;
        }

        v46 = *(a2 + 8);
        if (v9 >= *(v46 + 16))
        {
LABEL_34:
          __break(1u);
          return result;
        }

        v47 = v46 + 48 * v9;
        v38 = *(v47 + 32);
        v39 = *(v47 + 40);
        v49 = *(v47 + 48);
        v48 = *(v47 + 56);
        v125 = *(v47 + 64);
        v65 = *(v47 + 72);
        *&v66 = 1701080942;
        *(&v66 + 1) = 0xE400000000000000;
        outlined copy of NodePersonality(v38);

        outlined copy of NodePersonality(v38);

        v50 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x266771550](v50);

        outlined consume of NodePersonality(v38);

        v40 = *(&v66 + 1);
        v41 = v66;
      }

      *&v66 = 0;
      *(&v66 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(58);
      MEMORY[0x266771550](0xD00000000000002BLL, 0x8000000265F30BE0);

      MEMORY[0x266771550](v60, v11);

      MEMORY[0x266771550](0x646F6E206E6F2027, 0xEB00000000203A65);
      MEMORY[0x266771550](v41, v40);

      v51 = v66;
      lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
      swift_allocError();
      *v52 = 44;
      *(v52 + 8) = v51;
      swift_willThrow();
      outlined consume of ShaderGraphNode?(v38, v39);
      outlined destroy of NodePersonality(&v94);
      v97 = v92;
      outlined destroy of [Input](&v97, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v98 = *&v93[0];
      outlined destroy of [Input](&v98, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
    }

    else
    {
    }
  }

  return result;
}

uint64_t UserGraph.insertGetTexture(_:textureAssignments:customUniformsType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  if (!*(a3 + 16) || (v10 = v5, v13 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v14 & 1) == 0))
  {
    _StringGuts.grow(_:)(47);

    *&v27 = 0xD00000000000002CLL;
    *(&v27 + 1) = 0x8000000265F30C70;
    MEMORY[0x266771550](a1, a2);
    v22 = 39;
    v23 = 0xE100000000000000;
LABEL_9:
    MEMORY[0x266771550](v22, v23);
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    *v24 = 47;
    *(v24 + 8) = v27;
    return swift_willThrow();
  }

  v15 = (*(a3 + 56) + 24 * v13);
  v16 = v15[1];
  v49 = *v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_265F1F670;
  *(inited + 32) = 7632239;
  *(inited + 40) = 0xE300000000000000;
  *(inited + 48) = a4;
  v18 = swift_allocObject();
  *(v18 + 16) = 12580;
  *(v18 + 24) = 0xE200000000000000;

  UserGraph.insertNode(inputs:outputs:shaderGraphData:)(MEMORY[0x277D84F90], inited, v18 | 0x6000000000000000, &v28);

  swift_setDeallocating();
  v19 = *(inited + 16);
  swift_arrayDestroy();
  v48[0] = v29;
  specialized ShaderGraphNode.output(labeled:)(&v30, 7632239, 0xE300000000000000, v29);
  if (!v31)
  {
    MEMORY[0x266771550](7632239, 0xE300000000000000);
    MEMORY[0x266771550](32, 0xE100000000000000);
    _print_unlocked<A, B>(_:_:)();

    v47 = v28;
    outlined destroy of NodePersonality(&v47);
    v46 = *(&v28 + 1);
    outlined destroy of [Input](&v46, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    outlined destroy of [Input](v48, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
    v21 = v49;
    goto LABEL_8;
  }

  v37 = v30;
  v38 = v31;
  v39 = v32;
  v40 = v33;
  v41 = v34;
  v45 = v28;
  outlined destroy of NodePersonality(&v45);
  v44 = *(&v28 + 1);
  outlined destroy of [Input](&v44, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
  outlined destroy of [Input](v48, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
  v20 = v10;
  v21 = v49;
  Output.getProperty(_:_:)(v20, v49, v16, &v35);
  if (v6)
  {

    v42 = v39;
    outlined destroy of String(&v42);
LABEL_8:
    *&v27 = 0;
    *(&v27 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(51);
    MEMORY[0x266771550](0xD00000000000002FLL, 0x8000000265F30CA0);
    MEMORY[0x266771550](v21, v16);

    v22 = 11815;
    v23 = 0xE200000000000000;
    goto LABEL_9;
  }

  v43 = v39;
  result = outlined destroy of String(&v43);
  v26 = v36[0];
  *a5 = v35;
  a5[1] = v26;
  *(a5 + 25) = *(v36 + 9);
  return result;
}

double UserGraph.insertGetParams(type:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_265F1F670;
  *(inited + 32) = 7632239;
  *(inited + 40) = 0xE300000000000000;
  *(inited + 48) = a1;
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = 0xE200000000000000;

  UserGraph.insertNode(inputs:outputs:shaderGraphData:)(MEMORY[0x277D84F90], inited, v7 | 0x6000000000000000, &v11);

  swift_setDeallocating();
  v8 = *(inited + 16);
  swift_arrayDestroy();
  v9 = v12[0];
  *a3 = v11;
  a3[1] = v9;
  result = *(v12 + 9);
  *(a3 + 25) = *(v12 + 9);
  return result;
}

uint64_t Output.getProperty(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v5 = v4;
  v49[4] = a1;
  v9 = v4[1];

  DataType.subscript.getter(a2, a3, &v27);
  if (v28)
  {
    v22 = a4;
    v24 = v28;
    v23 = v27;
    v10 = v29;
    v25 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph9InputSpecVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph9InputSpecVGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_265F1F670;
    *(inited + 32) = 28265;
    *(inited + 40) = 0xE200000000000000;
    *(inited + 48) = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMR);
    v12 = swift_initStackObject();
    *(v12 + 16) = xmmword_265F1F670;
    *(v12 + 32) = 7632239;
    *(v12 + 40) = 0xE300000000000000;
    *(v12 + 48) = v10;
    v13 = swift_allocObject();
    *(v13 + 16) = a2;
    *(v13 + 24) = a3;

    UserGraph.insertNode(inputs:outputs:shaderGraphData:)(inited, v12, v13 | 0x8000000000000000, &v31);

    swift_setDeallocating();
    v14 = *(v12 + 16);
    swift_arrayDestroy();
    swift_setDeallocating();
    v15 = *(inited + 16);
    swift_arrayDestroy();
    v49[0] = *(&v31 + 1);
    specialized ShaderGraphNode.output(labeled:)(&v33, 28265, 0xE200000000000000, *(&v31 + 1));
    if (v34)
    {
      v38[0] = v33;
      v38[1] = v34;
      v39 = v35;
      v40 = v36;
      v41 = v37;
      UserGraph.connect(_:to:)(v5, v38);

      v46 = v39;
      outlined destroy of String(&v46);
      v42[0] = v23;
      v42[1] = v24;
      outlined destroy of String(v42);

      v43 = v25;
      result = outlined destroy of [Input](&v43, &_sSaySSGMd, &_sSaySSGMR);
      v17 = v32[0];
      *v22 = v31;
      v22[1] = v17;
      *(v22 + 25) = *(v32 + 9);
    }

    else
    {
      MEMORY[0x266771550](28265, 0xE200000000000000);
      MEMORY[0x266771550](32, 0xE100000000000000);
      _print_unlocked<A, B>(_:_:)();
      lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
      swift_allocError();
      *v21 = 11;
      *(v21 + 8) = 0;
      *(v21 + 16) = 0xE000000000000000;
      swift_willThrow();
      v48 = v31;
      outlined destroy of NodePersonality(&v48);
      outlined destroy of [Input](v49, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v47 = *&v32[0];
      outlined destroy of [Input](&v47, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
      v44[0] = v23;
      v44[1] = v24;
      outlined destroy of String(v44);

      v45 = v25;
      return outlined destroy of [Input](&v45, &_sSaySSGMd, &_sSaySSGMR);
    }
  }

  else
  {

    *&v26 = 0;
    *(&v26 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(53);
    MEMORY[0x266771550](0x79747265706F7250, 0xEA00000000002720);
    MEMORY[0x266771550](a2, a3);
    MEMORY[0x266771550](0xD000000000000017, 0x8000000265F30CD0);
    MEMORY[0x266771550](v4[2], v4[3]);
    v18 = MEMORY[0x266771550](0x7420687469772027, 0xED00002720657079);
    v19 = (*(*v9 + 136))(v18);
    MEMORY[0x266771550](v19);

    MEMORY[0x266771550](39, 0xE100000000000000);
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    *v20 = 45;
    *(v20 + 8) = v26;
    return swift_willThrow();
  }

  return result;
}

uint64_t closure #1 in closure #1 in UserGraph.mapStringInputs(nodeDefStore:)(void *a1, uint64_t *a2, _BYTE *a3)
{
  v5 = *a2;
  v6 = a2[1];
  if (*a2 == 0x636170736D6F7266 && v6 == 0xE900000000000065)
  {
    goto LABEL_14;
  }

  v8 = a2[2];
  v9 = *a2;
  v10 = a2[1];
  if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {
    goto LABEL_14;
  }

  v11 = v5 == 0x65636170736F74 && v6 == 0xE700000000000000;
  if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    goto LABEL_14;
  }

  if (one-time initialization token for space != -1)
  {
    swift_once();
  }

  if (MaterialXDataType.isStructurallyEqual(to:)(static MaterialXDataType.space))
  {
LABEL_14:
    *a3 = 1;
    v13 = a1[2];
    v12 = a1[3];
    v14 = one-time initialization token for space;

    if (v14 != -1)
    {
      swift_once();
    }
  }

  else
  {
    v13 = a1[2];
    v16 = a1[3];
    v17 = a1[1];
  }

  return v13;
}

uint64_t closure #3 in closure #1 in UserGraph.mapStringInputs(nodeDefStore:)(__int128 *a1, _OWORD *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v73 = *(a1 + 6);
  v72[1] = v4;
  v72[2] = v5;
  v72[0] = v3;
  v6 = *(&v3 + 1);
  if (one-time initialization token for space != -1)
  {
    swift_once();
  }

  result = (*(*v6 + 128))(static MaterialXDataType.space);
  if (result)
  {
    v8 = a2[9];
    v74[8] = a2[8];
    v75[0] = v8;
    *(v75 + 9) = *(a2 + 153);
    v9 = a2[5];
    v74[4] = a2[4];
    v74[5] = v9;
    v10 = a2[7];
    v74[6] = a2[6];
    v74[7] = v10;
    v11 = a2[1];
    v74[0] = *a2;
    v74[1] = v11;
    v12 = a2[3];
    v74[2] = a2[2];
    v74[3] = v12;
    outlined init with copy of UserGraph(v74, &v39);
    UserGraph.node(connectedTo:)(v72, &v41);
    outlined destroy of UserGraph(v74);
    v13 = v42;
    if (!v42)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMR);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_265F1F670;
      if (one-time initialization token for string != -1)
      {
        swift_once();
      }

      v27 = static MaterialXDataType.string;
      *(v26 + 32) = 7632239;
      *(v26 + 40) = 0xE300000000000000;
      *(v26 + 48) = v27;
      v28 = swift_allocObject();
      *(v28 + 16) = 0x646C726F77;
      *(v28 + 24) = 0xE500000000000000;
      *(v28 + 80) = 6;
      *(v28 + 88) = v27;
      swift_retain_n();
      UserGraph.insertNode(inputs:outputs:shaderGraphData:)(MEMORY[0x277D84F90], v26, v28, &v45);

      swift_setDeallocating();
      v29 = *(v26 + 16);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v71 = *&v46[0];
      specialized ShaderGraphNode.output(labeled:)(&v47, 7632239, 0xE300000000000000, *&v46[0]);
      if (v48)
      {
        v54[0] = v47;
        v54[1] = v48;
        v55 = v49;
        v56 = v50;
        v57 = v51;
        UserGraph.connect(_:to:)(v54, v72);

        v65 = v55;
        outlined destroy of String(&v65);
        v68 = v45;
        outlined destroy of NodePersonality(&v68);
        v67 = *(&v45 + 1);
        outlined destroy of [Input](&v67, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      }

      else
      {
        MEMORY[0x266771550](7632239, 0xE300000000000000);
        MEMORY[0x266771550](32, 0xE100000000000000);
        v39 = v45;
        v40[0] = v46[0];
        *(v40 + 9) = *(v46 + 9);
        _print_unlocked<A, B>(_:_:)();
        lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
        swift_allocError();
        *v30 = 14;
        *(v30 + 8) = 0;
        *(v30 + 16) = 0xE000000000000000;
        swift_willThrow();
        v70 = v45;
        outlined destroy of NodePersonality(&v70);
        v69 = *(&v45 + 1);
        outlined destroy of [Input](&v69, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      }

      v25 = &v71;
      return outlined destroy of [Input](v25, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
    }

    v15 = v43;
    v14 = v44;
    v58 = v41;
    if (v41 >> 61 || *(v41 + 80) != 6)
    {
      outlined destroy of NodePersonality(&v58);
      v60 = v13;
      outlined destroy of [Input](&v60, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v61 = v15;
      v25 = &v61;
      return outlined destroy of [Input](v25, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
    }

    if ((*(v41 + 16) || *(v41 + 24) != 0xE000000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      outlined destroy of NodePersonality(&v58);
      v62 = v13;
      outlined destroy of [Input](&v62, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v63 = v15;
      v25 = &v63;
      return outlined destroy of [Input](v25, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
    }

    v38 = v14;
    v76 = a2;
    v59 = v15;
    v16 = *(v15 + 16);
    v17 = MEMORY[0x277D84F90];
    v37 = v15;
    if (v16)
    {
      v36 = v13;
      *&v39 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16, 0);
      v17 = v39;
      v18 = (v15 + 56);
      do
      {
        v20 = *(v18 - 2);
        v19 = *(v18 - 1);
        v21 = *v18;
        *&v39 = v17;
        v23 = *(v17 + 16);
        v22 = *(v17 + 24);

        if (v23 >= v22 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1);
          v17 = v39;
        }

        *(v17 + 16) = v23 + 1;
        v24 = (v17 + 24 * v23);
        v24[4] = v19;
        v24[5] = v21;
        v24[6] = v20;
        v18 += 7;
        --v16;
      }

      while (v16);
      v13 = v36;
    }

    v31 = swift_allocObject();
    *(v31 + 16) = 0x646C726F77;
    *(v31 + 24) = 0xE500000000000000;
    *(v31 + 80) = 6;
    if (one-time initialization token for string != -1)
    {
      swift_once();
    }

    *(v31 + 88) = static MaterialXDataType.string;

    v32 = v76;
    UserGraph.insertNode(inputs:outputs:shaderGraphData:)(MEMORY[0x277D84F90], v17, v31, &v52);

    v33 = *(&v52 + 1);
    v64 = v13;
    outlined init with copy of NodePersonality(&v58, &v39);
    outlined init with copy of [Input](&v64, &v39, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    outlined init with copy of [Input](&v59, &v39, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
    specialized Sequence.forEach(_:)(v33, v13, v32);
    outlined destroy of NodePersonality(&v58);
    outlined destroy of [Input](&v64, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    outlined destroy of [Input](&v59, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
    v34 = v53;
    outlined init with copy of NodePersonality(&v58, &v39);
    outlined init with copy of [Input](&v64, &v39, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    outlined init with copy of [Input](&v59, &v39, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
    specialized Sequence.forEach(_:)(v34, v37, v32);
    outlined destroy of NodePersonality(&v58);
    outlined destroy of [Input](&v64, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    outlined destroy of [Input](&v59, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
    specialized UserGraph.removeEdges(connectedTo:)(v38);
    v35 = *(v32 + 64);
    result = swift_isUniquelyReferenced_nonNull_native();
    *(v32 + 64) = v35;
    if (result)
    {
      if ((v38 & 0x8000000000000000) == 0)
      {
        goto LABEL_27;
      }
    }

    else
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v35);
      v35 = result;
      *(v32 + 64) = result;
      if ((v38 & 0x8000000000000000) == 0)
      {
LABEL_27:
        if (v38 < *(v35 + 16))
        {
          ShaderGraphNode.update(id:)(-7);
          v66 = v52;
          outlined destroy of NodePersonality(&v66);

          outlined destroy of NodePersonality(&v58);
          outlined destroy of [Input](&v64, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
          v25 = &v59;
          return outlined destroy of [Input](v25, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
        }

LABEL_34:
        __break(1u);
        return result;
      }
    }

    __break(1u);
    goto LABEL_34;
  }

  return result;
}

void closure #1 in UserGraph.resolvingNodegraphImplementations(nodeDefStore:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v118 = a3;
  v119 = a4;
  v9 = type metadata accessor for NodeDef.Implementation(0);
  v117 = *(v9 - 8);
  v10 = *(v117 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v110 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for NodeDef.Implementation.Kind(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = (&v110 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *a1;
  if (*a1 >> 61 == 5)
  {
    if (*(a2 + 16))
    {
      v115 = a5;
      v164 = v5;
      v18 = a1[1];
      v113 = a1[2];
      v114 = v18;
      v19 = a1[3];
      v111 = v17;
      v112 = v19;
      v20 = *((v17 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v21 = *((v17 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v22 = a2;

      v23 = specialized __RawDictionaryStorage.find<A>(_:)(v20, v21);
      v25 = v24;

      if (v25)
      {
        v116 = v22;
        v26 = *(v22 + 56) + 152 * v23;
        v27 = *(v26 + 16);
        v159[0] = *v26;
        v159[1] = v27;
        v28 = *(v26 + 80);
        v30 = *(v26 + 32);
        v29 = *(v26 + 48);
        v159[4] = *(v26 + 64);
        v159[5] = v28;
        v159[2] = v30;
        v159[3] = v29;
        v32 = *(v26 + 112);
        v31 = *(v26 + 128);
        v33 = *(v26 + 96);
        v160 = *(v26 + 144);
        v159[7] = v32;
        v159[8] = v31;
        v159[6] = v33;
        v34 = v119;
        if (*(v119 + 16))
        {
          v35 = v159[0];
          outlined init with copy of NodeDef(v159, v150);
          v36 = specialized __RawDictionaryStorage.find<A>(_:)(v35, *(&v35 + 1));
          if (v37)
          {
            v38 = *(*(v34 + 56) + 8 * v36);

            goto LABEL_10;
          }
        }

        else
        {
          outlined init with copy of NodeDef(v159, v150);
        }

        v38 = MEMORY[0x277D84F90];
LABEL_10:
        outlined destroy of NodeDef(v159);
        if (!*(v38 + 16))
        {

          return;
        }

        outlined init with copy of NodeDef.Implementation.Kind(v38 + ((*(v117 + 80) + 32) & ~*(v117 + 80)), v12, type metadata accessor for NodeDef.Implementation);

        outlined init with copy of NodeDef.Implementation.Kind(&v12[*(v9 + 20)], v16, type metadata accessor for NodeDef.Implementation.Kind);
        outlined destroy of NodeDef.Implementation.Kind(v12, type metadata accessor for NodeDef.Implementation);
        if (swift_getEnumCaseMultiPayload())
        {
          outlined destroy of NodeDef.Implementation.Kind(v16, type metadata accessor for NodeDef.Implementation.Kind);
          return;
        }

        v39 = v16[7];
        v40 = v16[9];
        v157 = v16[8];
        v158[0] = v40;
        *(v158 + 9) = *(v16 + 153);
        v41 = v16[3];
        v42 = v16[5];
        v153 = v16[4];
        v154 = v42;
        v43 = v16[5];
        v44 = v16[7];
        v155 = v16[6];
        v156 = v44;
        v45 = v16[1];
        v150[0] = *v16;
        v150[1] = v45;
        v46 = v16[3];
        v48 = *v16;
        v47 = v16[1];
        v151 = v16[2];
        v152 = v46;
        v49 = v16[9];
        v148 = v157;
        v149[0] = v49;
        *(v149 + 9) = *(v16 + 153);
        v144 = v153;
        v145 = v43;
        v146 = v155;
        v147 = v39;
        v140 = v48;
        v141 = v47;
        v50 = v153;
        v142 = v151;
        v143 = v41;
        v51 = *(v153 + 16);
        outlined init with copy of UserGraph(v150, &v130);

        if (v51)
        {
          v52 = 0;
          while (v52 < v51)
          {
            v54 = &v50[48 * v52 + 32];
            v55 = *(v54 + 24);
            if (v55 == -7)
            {
              v53 = __OFADD__(v52++, 1);
              if (v53)
              {
                goto LABEL_58;
              }

              if (v52 >= v51)
              {
                goto LABEL_23;
              }
            }

            else
            {
              v53 = __OFADD__(v52++, 1);
              if (v53)
              {
                goto LABEL_59;
              }

              v13 = *v54;
              v56 = *(v54 + 8);
              v57 = *(v54 + 16);
              v58 = *(v54 + 40);
              v59 = *(v54 + 32);
              *&v120 = v13;
              *(&v120 + 1) = v56;
              *&v121 = v57;
              *(&v121 + 1) = v55;
              *&v122 = v59;
              BYTE8(v122) = v58;
              outlined copy of NodePersonality(v13);

              v60 = v164;
              specialized closure #1 in UserGraph.mapStringInputs(nodeDefStore:)(&v120, v116);
              v164 = v60;
              if (v60)
              {
                outlined consume of NodePersonality(v13);

                outlined destroy of UserGraph(v150);

                v138 = v148;
                v139[0] = v149[0];
                *(v139 + 9) = *(v149 + 9);
                v134 = v144;
                v135 = v145;
                v136 = v146;
                v137 = v147;
                v130 = v140;
                v131 = v141;
                v132 = v142;
                v133 = v143;
                outlined destroy of UserGraph(&v130);
                __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
                v107 = swift_allocObject();
                *(v107 + 16) = xmmword_265F1F670;
                *&v161 = 0;
                *(&v161 + 1) = 0xE000000000000000;
                MEMORY[0x266771550](0x20524F525245, 0xE600000000000000);
                v108 = v164;
                v163 = v164;
                __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
                _print_unlocked<A, B>(_:_:)();
                v109 = v161;
                *(v107 + 56) = MEMORY[0x277D837D0];
                *(v107 + 32) = v109;
                print(_:separator:terminator:)();

                return;
              }

              outlined consume of NodePersonality(v13);

              if (v52 >= v51)
              {
                goto LABEL_23;
              }
            }
          }
        }

        else
        {
LABEL_23:

          v50 = v144;
          v13 = *(v144 + 16);

          if (!v13)
          {
            v51 = v115;
LABEL_36:

            v71 = v114;
            v72 = *(v114 + 16);
            v119 = MEMORY[0x277D84F90];
            if (v72)
            {
              *&v130 = MEMORY[0x277D84F90];
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v72, 0);
              v119 = v130;
              v73 = (v71 + 56);
              do
              {
                v74 = *(v73 - 2);
                v75 = *(v73 - 1);
                v76 = *v73;
                *&v130 = v119;
                v78 = *(v119 + 16);
                v77 = *(v119 + 24);

                if (v78 >= v77 >> 1)
                {
                  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v77 > 1), v78 + 1, 1);
                  v119 = v130;
                }

                v79 = v119;
                *(v119 + 16) = v78 + 1;
                v80 = (v79 + 24 * v78);
                v80[4] = v75;
                v80[5] = v76;
                v80[6] = v74;
                v73 += 7;
                --v72;
              }

              while (v72);
              v51 = v115;
            }

            v81 = v113;
            v82 = *(v113 + 16);
            v83 = MEMORY[0x277D84F90];
            if (v82)
            {
              *&v130 = MEMORY[0x277D84F90];
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v82, 0);
              v84 = v130;
              v85 = (v81 + 56);
              do
              {
                v87 = *(v85 - 2);
                v86 = *(v85 - 1);
                v88 = *v85;
                *&v130 = v84;
                v90 = *(v84 + 16);
                v89 = *(v84 + 24);

                if (v90 >= v89 >> 1)
                {
                  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v89 > 1), v90 + 1, 1);
                  v84 = v130;
                }

                *(v84 + 16) = v90 + 1;
                v91 = (v84 + 24 * v90);
                v91[4] = v86;
                v91[5] = v88;
                v91[6] = v87;
                v85 += 7;
                --v82;
              }

              while (v82);
              v83 = v84;
              v51 = v115;
              v81 = v113;
            }

            v92 = swift_allocObject();
            v93 = v149[0];
            v138 = v148;
            v139[0] = v149[0];
            *(v139 + 9) = *(v149 + 9);
            v94 = v144;
            v95 = v145;
            v134 = v144;
            v135 = v145;
            v97 = v146;
            v96 = v147;
            v136 = v146;
            v137 = v147;
            v98 = v140;
            v99 = v141;
            v130 = v140;
            v131 = v141;
            v101 = v142;
            v100 = v143;
            v132 = v142;
            v133 = v143;
            *(v92 + 144) = v148;
            *(v92 + 160) = v93;
            *(v92 + 169) = *(v149 + 9);
            *(v92 + 80) = v94;
            *(v92 + 96) = v95;
            *(v92 + 112) = v97;
            *(v92 + 128) = v96;
            *(v92 + 16) = v98;
            *(v92 + 32) = v99;
            *(v92 + 48) = v101;
            *(v92 + 64) = v100;
            outlined init with copy of UserGraph(&v130, &v120);
            UserGraph.insertNode(inputs:outputs:shaderGraphData:)(v119, v83, v92 | 0xC000000000000000, &v161);

            v102 = *(&v161 + 1);
            v103 = v111;
            outlined copy of NodePersonality(v111);
            v104 = v114;

            specialized Sequence.forEach(_:)(v102, v104, v51);
            outlined consume of NodePersonality(v103);

            v105 = v162;
            outlined copy of NodePersonality(v103);

            specialized Sequence.forEach(_:)(v105, v81, v51);
            outlined consume of NodePersonality(v103);

            v13 = v112;
            specialized UserGraph.removeEdges(connectedTo:)(v112);
            v50 = *(v51 + 64);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *(v51 + 64) = v50;
            if (isUniquelyReferenced_nonNull_native)
            {
              if ((v13 & 0x8000000000000000) != 0)
              {
LABEL_61:
                __break(1u);
LABEL_62:
                __break(1u);
                return;
              }

LABEL_50:
              if (v13 < *(v50 + 2))
              {
                ShaderGraphNode.update(id:)(-7);
                UserGraph.hoist(_:)(&v161);
                v163 = v161;
                outlined destroy of NodePersonality(&v163);

                outlined destroy of UserGraph(v150);
                v128 = v148;
                v129[0] = v149[0];
                *(v129 + 9) = *(v149 + 9);
                v124 = v144;
                v125 = v145;
                v126 = v146;
                v127 = v147;
                v120 = v140;
                v121 = v141;
                v122 = v142;
                v123 = v143;
                outlined destroy of UserGraph(&v120);
                return;
              }

              goto LABEL_62;
            }

LABEL_60:
            v50 = specialized _ArrayBuffer._consumeAndCreateNew()(v50);
            *(v51 + 64) = v50;
            if ((v13 & 0x8000000000000000) != 0)
            {
              goto LABEL_61;
            }

            goto LABEL_50;
          }

          v61 = 0;
          v51 = v115;
          while (v61 < v13)
          {
            v62 = &v50[48 * v61 + 32];
            v63 = *(v62 + 24);
            v53 = __OFADD__(v61++, 1);
            v64 = v53;
            if (v63 == -7)
            {
              if (v64)
              {
                goto LABEL_56;
              }

              if (v61 >= v13)
              {
                goto LABEL_36;
              }
            }

            else
            {
              if (v64)
              {
                goto LABEL_57;
              }

              v65 = *(v62 + 40);
              v66 = *(v62 + 32);
              v68 = *(v62 + 8);
              v67 = *(v62 + 16);
              *&v130 = *v62;
              v69 = v130;
              *(&v130 + 1) = v68;
              *&v131 = v67;
              *(&v131 + 1) = v63;
              *&v132 = v66;
              BYTE8(v132) = v65;
              outlined copy of NodePersonality(v130);

              v70 = v164;
              closure #1 in UserGraph.resolvingNodegraphImplementations(nodeDefStore:)(&v130, v116, v118, v119, &v140);
              v164 = v70;
              outlined consume of NodePersonality(v69);
              v51 = v115;

              if (v61 >= v13)
              {
                goto LABEL_36;
              }
            }
          }

          __break(1u);
        }

        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
        goto LABEL_60;
      }
    }
  }
}

__int128 *closure #1 in UserGraph.insertMaterialXDefaultValues(nodeDefStore:)(__int128 *result, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5)
{
  v6 = v5;
  v7 = result[1];
  v45 = *result;
  v46[0] = v7;
  *(v46 + 9) = *(result + 25);
  v48[0] = v45;
  if (v45 >> 61 == 5)
  {
    v12 = *((v45 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v11 = *((v45 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    v13 = *(a2 + 16);

    if (v13 && (v14 = specialized __RawDictionaryStorage.find<A>(_:)(v12, v11), (v15 & 1) != 0))
    {
      v16 = v14;

      v17 = *(a2 + 56) + 152 * v16;
      v18 = *v17;
      v43[1] = *(v17 + 16);
      v19 = *(v17 + 32);
      v20 = *(v17 + 48);
      v21 = *(v17 + 80);
      v43[4] = *(v17 + 64);
      v43[5] = v21;
      v43[2] = v19;
      v43[3] = v20;
      v22 = *(v17 + 96);
      v23 = *(v17 + 112);
      v24 = *(v17 + 128);
      v44 = *(v17 + 144);
      v43[7] = v23;
      v43[8] = v24;
      v43[6] = v22;
      v43[0] = v18;
      v25 = *(&v45 + 1);
      v47 = *(&v45 + 1);
      v49 = *&v46[0];
      v26 = *(*(&v45 + 1) + 16);
      outlined init with copy of NodeDef(v43, &v36);
      outlined init with copy of NodeDef(v43, &v36);
      outlined init with copy of NodePersonality(v48, &v36);
      outlined init with copy of [Input](&v47, &v36, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      outlined init with copy of [Input](&v49, &v36, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

      if (v26)
      {
        v27 = (v25 + 80);
        while (1)
        {
          v28 = *v27;
          v29 = *(v27 - 8);
          v31 = *(v27 - 3);
          v30 = *(v27 - 2);
          v33 = *(v27 - 5);
          v32 = *(v27 - 4);
          *&v36 = *(v27 - 6);
          *(&v36 + 1) = v33;
          v37 = v32;
          v38 = v31;
          v39 = v30;
          v40 = v29;
          v41 = v28;

          specialized closure #1 in closure #1 in UserGraph.insertMaterialXDefaultValues(nodeDefStore:)(&v36, v43, &v45, a5, a2, a3);
          if (v6)
          {
            break;
          }

          v27 += 7;

          if (!--v26)
          {
            goto LABEL_8;
          }
        }
      }

      else
      {
LABEL_8:
      }

      outlined destroy of NodePersonality(v48);
      outlined destroy of [Input](&v47, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      outlined destroy of [Input](&v49, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
      outlined destroy of NodeDef(v43);
      return outlined destroy of NodeDef(v43);
    }

    else
    {
      _StringGuts.grow(_:)(49);

      MEMORY[0x266771550](v12, v11);

      MEMORY[0x266771550](0x6F6E20726F662027, 0xEC00000027206564);
      v42 = *(&v46[0] + 1);
      v34 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266771550](v34);

      MEMORY[0x266771550](1701080942, 0xE400000000000000);

      MEMORY[0x266771550](39, 0xE100000000000000);
      lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
      swift_allocError();
      *v35 = 28;
      *(v35 + 8) = 0xD000000000000020;
      *(v35 + 16) = 0x8000000265F315A0;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t index #1 (for:) in UserGraph.resolveSwizzleNodes(nodeDefStore:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 114 && a2 == 0xE100000000000000)
  {
    return 0;
  }

  v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  result = 0;
  v7 = a1 == 120 && a2 == 0xE100000000000000;
  if ((v5 & 1) == 0 && !v7)
  {
    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      return 0;
    }

    if (a1 == 103 && a2 == 0xE100000000000000)
    {
      return 1;
    }

    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v9 = a1 == 121 && a2 == 0xE100000000000000;
    v10 = v9;
    result = 1;
    if ((v8 & 1) == 0 && !v10)
    {
      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        return 1;
      }

      if (a1 == 98 && a2 == 0xE100000000000000)
      {
        return 2;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v12 = a1 == 122 && a2 == 0xE100000000000000;
      v13 = v12;
      result = 2;
      if ((v11 & 1) == 0 && !v13)
      {
        if (_stringCompareWithSmolCheck(_:_:expecting:)())
        {
          return 2;
        }

        if (a1 == 97 && a2 == 0xE100000000000000)
        {
          return 3;
        }

        v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v16 = a1 == 119 && a2 == 0xE100000000000000;
        result = 3;
        if ((v14 & 1) == 0 && !v16)
        {
          if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            _StringGuts.grow(_:)(19);
            MEMORY[0x266771550](0xD000000000000011, 0x8000000265F313C0);
            Character.write<A>(to:)();
            lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
            swift_allocError();
            *v17 = 25;
            *(v17 + 8) = 0;
            *(v17 + 16) = 0xE000000000000000;
            return swift_willThrow();
          }

          return 3;
        }
      }
    }
  }

  return result;
}

uint64_t closure #1 in UserGraph.resolveSwizzleNodes(nodeDefStore:)(__int128 *a1, _OWORD *a2, unint64_t a3, uint64_t a4)
{
  v239 = a3;
  v240 = a4;
  v6 = type metadata accessor for CharacterSet();
  v7 = *(v6 - 8);
  v241 = v6;
  v242 = v7;
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = (&v227 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v227 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v227 - v15;
  v17 = a1[1];
  v419 = *a1;
  v420[0] = v17;
  *(v420 + 9) = *(a1 + 25);
  v18 = a2[8];
  v19 = a2[9];
  v20 = a2[6];
  v423[7] = a2[7];
  v423[8] = v18;
  v424[0] = v19;
  *(v424 + 9) = *(a2 + 153);
  v21 = a2[5];
  v423[4] = a2[4];
  v423[5] = v21;
  v423[6] = v20;
  v22 = a2[1];
  v423[0] = *a2;
  v423[1] = v22;
  v23 = a2[3];
  v423[2] = a2[2];
  v423[3] = v23;
  outlined init with copy of UserGraph(v423, &v252);
  v24 = v426;
  ShaderGraphNode.subscript.getter(7632239, 0xE300000000000000, v256);
  if (v24)
  {
    return outlined destroy of UserGraph(v423);
  }

  v238 = v11;
  v236 = v14;
  v426 = 0;
  v237 = v16;
  v26 = UserGraph.edges(from:)(v256);

  v410 = v257;
  outlined destroy of String(&v410);
  outlined destroy of UserGraph(v423);
  v27 = *(v26 + 16);

  if (v27)
  {
    v28 = *(&v419 + 1);
    specialized ShaderGraphNode.output(labeled:)(&v258, 0x736C656E6E616863, 0xE800000000000000, *(&v419 + 1));
    if (!v259)
    {
      *&v248 = 0;
      *(&v248 + 1) = 0xE000000000000000;
      MEMORY[0x266771550](0x736C656E6E616863, 0xE900000000000020);
      v252 = v419;
      v253[0] = v420[0];
      *(v253 + 9) = *(v420 + 9);
      _print_unlocked<A, B>(_:_:)();
      v39 = v248;
      lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
      swift_allocError();
      *v40 = 11;
      *(v40 + 8) = v39;
      return swift_willThrow();
    }

    v289[0] = v258;
    v289[1] = v259;
    v290 = v260;
    v291 = v261;
    v292 = v262;
    v29 = a2[9];
    v30 = &v419;
    v421[8] = a2[8];
    v422[0] = v29;
    *(v422 + 9) = *(a2 + 153);
    v31 = a2[5];
    v421[4] = a2[4];
    v421[5] = v31;
    v32 = a2[7];
    v421[6] = a2[6];
    v421[7] = v32;
    v33 = a2[1];
    v421[0] = *a2;
    v421[1] = v33;
    v34 = a2[3];
    v421[2] = a2[2];
    v421[3] = v34;
    outlined init with copy of UserGraph(v421, &v252);
    UserGraph.node(connectedTo:)(v289, &v263);
    outlined destroy of UserGraph(v421);
    v35 = v264;
    if (!v264)
    {
      lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
      swift_allocError();
      *v41 = 9;
      *(v41 + 8) = 0xD000000000000018;
      *(v41 + 16) = 0x8000000265F31220;
      swift_willThrow();

      v293 = v290;
      return outlined destroy of String(&v293);
    }

    v36 = v265;
    v316 = v263;
    if (v263 >> 61)
    {
      *&v248 = 0;
      *(&v248 + 1) = 0xE000000000000000;
      v252 = v419;
      v253[0] = v420[0];
      *(v253 + 9) = *(v420 + 9);
      _print_unlocked<A, B>(_:_:)();
      v42 = v248;
      lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
      swift_allocError();
      *v43 = 41;
      *(v43 + 8) = v42;
      swift_willThrow();
      outlined destroy of NodePersonality(&v316);
      v317 = v35;
      outlined destroy of [Input](&v317, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v318 = v36;
      outlined destroy of [Input](&v318, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

      v294 = v290;
      return outlined destroy of String(&v294);
    }

    v37 = *(v263 + 48);
    v253[0] = *(v263 + 32);
    v253[1] = v37;
    v254 = *(v263 + 64);
    v255 = *(v263 + 80);
    v252 = *(v263 + 16);
    outlined init with copy of SGDataTypeStorage(&v252, &v248);
    v38 = v426;
    ShaderGraphNode.subscript.getter(7632239, 0xE300000000000000, &v266);
    v426 = v38;
    if (v38)
    {
      outlined destroy of SGDataTypeStorage(&v252);
      outlined destroy of NodePersonality(&v316);
      v319 = v35;
      outlined destroy of [Input](&v319, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v320 = v36;
      outlined destroy of [Input](&v320, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

      v295 = v290;
      return outlined destroy of String(&v295);
    }

    v235 = v35;
    v44 = *(&v266 + 1);
    specialized ShaderGraphNode.output(labeled:)(v270, 28265, 0xE200000000000000, v28);
    v45 = *(&v270[0] + 1);
    if (!*(&v270[0] + 1))
    {
      v246 = 0;
      v247 = 0xE000000000000000;

      MEMORY[0x266771550](2125417, 0xE300000000000000);
      v248 = v419;
      v249[0] = v420[0];
      *(v249 + 9) = *(v420 + 9);
      _print_unlocked<A, B>(_:_:)();
      v50 = v246;
      v51 = v247;
      lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
      swift_allocError();
      *v52 = 11;
      *(v52 + 8) = v50;
      *(v52 + 16) = v51;
      swift_willThrow();

      v409 = v267;
      outlined destroy of String(&v409);
      outlined destroy of SGDataTypeStorage(&v252);
      outlined destroy of NodePersonality(&v316);
      v321 = v235;
      outlined destroy of [Input](&v321, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v322 = v36;
      outlined destroy of [Input](&v322, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

      v296 = v290;
      return outlined destroy of String(&v296);
    }

    v285 = v270[0];
    v286 = v270[1];
    v287 = v270[2];
    v288 = v271;
    if (v255 != 6)
    {
      v249[1] = v253[1];
      v250 = v254;
      v251 = v255;
      v248 = v252;
      v249[0] = v253[0];
      outlined init with copy of SGDataTypeStorage(&v252, &v246);

      v53 = String.init<A>(describing:)();
      v55 = v54;
      lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
      swift_allocError();
      *v56 = 25;
      *(v56 + 8) = v53;
      *(v56 + 16) = v55;
      swift_willThrow();

      v361 = v286;
      outlined destroy of String(&v361);

      v408 = v267;
      outlined destroy of String(&v408);
      outlined destroy of SGDataTypeStorage(&v252);
      outlined destroy of NodePersonality(&v316);
      v323 = v235;
      outlined destroy of [Input](&v323, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v324 = v36;
      outlined destroy of [Input](&v324, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

      v297 = v290;
      return outlined destroy of String(&v297);
    }

    v46 = v252;
    outlined init with copy of SGDataTypeStorage(&v252, &v248);

    if ((String.count.getter() - 5) <= 0xFFFFFFFFFFFFFFFBLL)
    {
      v246 = 0;
      v247 = 0xE000000000000000;
      MEMORY[0x266771550](v46, *(&v46 + 1));
      outlined destroy of SGDataTypeStorage(&v252);
      MEMORY[0x266771550](32, 0xE100000000000000);
      v248 = v419;
      v249[0] = v420[0];
      *(v249 + 9) = *(v420 + 9);
      _print_unlocked<A, B>(_:_:)();
      v47 = v246;
      v48 = v247;
      lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
      swift_allocError();
      *v49 = 25;
      *(v49 + 8) = v47;
      *(v49 + 16) = v48;
      swift_willThrow();

      v362 = v286;
      outlined destroy of String(&v362);

      v381 = v267;
      outlined destroy of String(&v381);
      outlined destroy of SGDataTypeStorage(&v252);
      outlined destroy of NodePersonality(&v316);
      v325 = v235;
      outlined destroy of [Input](&v325, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v326 = v36;
      outlined destroy of [Input](&v326, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

      v298 = v290;
      return outlined destroy of String(&v298);
    }

    v232 = v36;
    v233 = v45;
    v231 = v44;
    v57 = v237;
    *v234 = v46;
    CharacterSet.init(charactersIn:)();
    v59 = v241;
    v58 = v242;
    v60 = *(v242 + 16);
    v229 = v242 + 16;
    v230 = v60;
    v60();
    v228 = lazy protocol witness table accessor for type CharacterSet and conformance CharacterSet(&lazy protocol witness table cache variable for type CharacterSet and conformance CharacterSet);
    v61 = v236;
    dispatch thunk of SetAlgebra.intersection(_:)();
    v227 = lazy protocol witness table accessor for type CharacterSet and conformance CharacterSet(&lazy protocol witness table cache variable for type CharacterSet and conformance CharacterSet);
    LODWORD(v239) = dispatch thunk of static Equatable.== infix(_:_:)();
    v63 = *(v58 + 8);
    v62 = v58 + 8;
    v63(v61, v59);
    (v230)(v238, v57, v59);
    dispatch thunk of SetAlgebra.intersection(_:)();
    v64 = dispatch thunk of static Equatable.== infix(_:_:)();
    v238 = v63;
    v63(v61, v59);
    if ((v239 & 1) == 0 && (v64 & 1) == 0)
    {
      v246 = 0;
      v247 = 0xE000000000000000;
      MEMORY[0x266771550](*v234, *&v234[8]);
      outlined destroy of SGDataTypeStorage(&v252);
      MEMORY[0x266771550](32, 0xE100000000000000);
      v248 = v419;
      v249[0] = v420[0];
      *(v249 + 9) = *(v420 + 9);
      _print_unlocked<A, B>(_:_:)();
      v65 = v246;
      v66 = v247;
      lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
      swift_allocError();
      *v67 = 25;
      *(v67 + 8) = v65;
      *(v67 + 16) = v66;
      swift_willThrow();

      v315 = v290;
      outlined destroy of String(&v315);

      v379 = v286;
      outlined destroy of String(&v379);

      v407 = v267;
      outlined destroy of String(&v407);
      outlined destroy of NodePersonality(&v316);
      v359 = v235;
      outlined destroy of [Input](&v359, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v360 = v232;
      outlined destroy of [Input](&v360, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

      outlined destroy of SGDataTypeStorage(&v252);
      v68 = v57;
      return v238(v68, v59);
    }

    v69 = String.count.getter();
    v242 = v62;
    if (v69)
    {
      *&v248 = MEMORY[0x277D84F90];
      v70 = v69;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v69 & ~(v69 >> 63), 0);
      v239 = v70;
      if (v70 < 0)
      {
        __break(1u);
        goto LABEL_50;
      }

      v59 = 0;
      v240 = v248;
      v70 = 15;
      while (1)
      {
        v71 = v59 + 1;
        if (__OFADD__(v59, 1))
        {
          break;
        }

        v72 = String.subscript.getter();
        v73 = v426;
        v75 = index #1 (for:) in UserGraph.resolveSwizzleNodes(nodeDefStore:)(v72, v74);
        v426 = v73;
        if (v73)
        {

          v299 = v290;
          outlined destroy of String(&v299);
          outlined destroy of SGDataTypeStorage(&v252);

          v363 = v286;
          outlined destroy of String(&v363);

          v406 = v267;
          outlined destroy of String(&v406);
          outlined destroy of NodePersonality(&v316);
          v327 = v235;
          outlined destroy of [Input](&v327, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
          v328 = v232;
          outlined destroy of [Input](&v328, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

          outlined destroy of SGDataTypeStorage(&v252);

          v238(v237, v241);
        }

        v76 = v75;

        v77 = v240;
        *&v248 = v240;
        v79 = *(v240 + 16);
        v78 = *(v240 + 24);
        if (v79 >= v78 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v78 > 1), v79 + 1, 1);
          v77 = v248;
        }

        *(v77 + 16) = v79 + 1;
        v240 = v77;
        *(v77 + 8 * v79 + 32) = v76;
        v70 = String.index(after:)();
        ++v59;
        v30 = 7632239;
        if (v71 == v239)
        {
          v59 = v241;
          goto LABEL_32;
        }
      }

      __break(1u);
    }

    else
    {
      v240 = MEMORY[0x277D84F90];
      v30 = 7632239;
LABEL_32:
      v70 = (*(*v233 + 144))();
      v80 = one-time initialization token for float;

      if (v80 == -1)
      {
LABEL_33:
        if (v70)
        {
          v81 = MetalDataType.isEqual(to:)();

          if (v81)
          {

            v246 = 0xD00000000000001ELL;
            v247 = 0x8000000265F313A0;
            v83 = *(v240 + 16);
            v84 = 32;
            v85 = v233;
            while (v83)
            {
              v86 = *(v240 + v84);
              v84 += 8;
              --v83;
              if (v86 >= 1)
              {
                outlined destroy of SGDataTypeStorage(&v252);

                lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
                swift_allocError();
                *v87 = 44;
                *(v87 + 8) = 0xD000000000000030;
                *(v87 + 16) = 0x8000000265F31260;
                swift_willThrow();

                v300 = v290;
                outlined destroy of String(&v300);

                v364 = v286;
                outlined destroy of String(&v364);

                v395 = v267;
                outlined destroy of String(&v395);
                outlined destroy of NodePersonality(&v316);
                v329 = v235;
                outlined destroy of [Input](&v329, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
                v330 = v232;
                v88 = &v330;
LABEL_185:
                outlined destroy of [Input](v88, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

                outlined destroy of SGDataTypeStorage(&v252);
                v68 = v237;
                return v238(v68, v59);
              }
            }

            v239 = 0x8000000265F313A0;
            goto LABEL_121;
          }
        }

        v89 = one-time initialization token for float2;

        if (v89 == -1)
        {
          if (!v70)
          {
            goto LABEL_51;
          }

LABEL_41:
          v90 = MetalDataType.isEqual(to:)();

          if (v90)
          {

            v91 = 0x8000000265F31380;
            v246 = 0xD00000000000001FLL;
            v247 = 0x8000000265F31380;
            v92 = *(v240 + 16);
            v93 = 32;
            do
            {
              if (!v92)
              {
                goto LABEL_58;
              }

              v94 = *(v240 + v93);
              v93 += 8;
              --v92;
            }

            while (v94 < 2);
            outlined destroy of SGDataTypeStorage(&v252);

            lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
            swift_allocError();
            *v95 = 44;
            *(v95 + 8) = 0xD000000000000030;
            *(v95 + 16) = 0x8000000265F31260;
            swift_willThrow();

            v301 = v290;
            outlined destroy of String(&v301);

            v365 = v286;
            outlined destroy of String(&v365);

            v396 = v267;
            outlined destroy of String(&v396);
            outlined destroy of NodePersonality(&v316);
            v331 = v235;
            outlined destroy of [Input](&v331, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
            v332 = v232;
            v96 = &v332;
LABEL_67:
            outlined destroy of [Input](v96, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

            outlined destroy of SGDataTypeStorage(&v252);
            return v238(v237, v59);
          }

LABEL_51:
          v97 = one-time initialization token for float3;

          if (v97 == -1)
          {
            if (!v70)
            {
              goto LABEL_60;
            }
          }

          else
          {
            swift_once();
            if (!v70)
            {
              goto LABEL_60;
            }
          }

          v98 = MetalDataType.isEqual(to:)();

          if (v98)
          {

            v91 = 0x8000000265F31360;
            v246 = 0xD00000000000001FLL;
            v247 = 0x8000000265F31360;
            v99 = *(v240 + 16);
            v100 = 32;
            while (v99)
            {
              v101 = *(v240 + v100);
              v100 += 8;
              --v99;
              if (v101 >= 3)
              {
                outlined destroy of SGDataTypeStorage(&v252);

                lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
                swift_allocError();
                *v102 = 44;
                *(v102 + 8) = 0xD000000000000030;
                *(v102 + 16) = 0x8000000265F31260;
                swift_willThrow();

                v302 = v290;
                outlined destroy of String(&v302);

                v366 = v286;
                outlined destroy of String(&v366);

                v397 = v267;
                outlined destroy of String(&v397);
                outlined destroy of NodePersonality(&v316);
                v333 = v235;
                outlined destroy of [Input](&v333, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
                v334 = v232;
                v96 = &v334;
                goto LABEL_67;
              }
            }

LABEL_58:
            v239 = v91;
            v85 = v233;
            goto LABEL_121;
          }

LABEL_60:
          v103 = one-time initialization token for float4;

          if (v103 == -1)
          {
            if (!v70)
            {
              goto LABEL_70;
            }
          }

          else
          {
            swift_once();
            if (!v70)
            {
              goto LABEL_70;
            }
          }

          v104 = MetalDataType.isEqual(to:)();

          if (v104)
          {

            v246 = 0xD00000000000001FLL;
            v247 = 0x8000000265F31340;
            v239 = 0x8000000265F31340;
            v105 = *(v240 + 16);
            v106 = 32;
            while (v105)
            {
              v107 = *(v240 + v106);
              v106 += 8;
              --v105;
              if (v107 >= 4)
              {
                outlined destroy of SGDataTypeStorage(&v252);

                lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
                swift_allocError();
                *v108 = 44;
                *(v108 + 8) = 0xD000000000000030;
                *(v108 + 16) = 0x8000000265F31260;
                swift_willThrow();

                v303 = v290;
                outlined destroy of String(&v303);

                v367 = v286;
                outlined destroy of String(&v367);

                v398 = v267;
                outlined destroy of String(&v398);
                outlined destroy of NodePersonality(&v316);
                v335 = v235;
                outlined destroy of [Input](&v335, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
                v336 = v232;
                v96 = &v336;
                goto LABEL_67;
              }
            }

            v85 = v233;
            v30 = 7632239;
            goto LABEL_121;
          }

LABEL_70:
          v109 = one-time initialization token for half;

          if (v109 == -1)
          {
            if (!v70)
            {
              goto LABEL_78;
            }
          }

          else
          {
            swift_once();
            if (!v70)
            {
              goto LABEL_78;
            }
          }

          v110 = MetalDataType.isEqual(to:)();

          if (v110)
          {

            v246 = 0xD00000000000001DLL;
            v247 = 0x8000000265F31320;
            v239 = 0x8000000265F31320;
            v111 = *(v240 + 16);
            v112 = 32;
            do
            {
              if (!v111)
              {
                goto LABEL_120;
              }

              v113 = *(v240 + v112);
              v112 += 8;
              --v111;
            }

            while (v113 < 1);
            outlined destroy of SGDataTypeStorage(&v252);

            lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
            swift_allocError();
            *v114 = 44;
            *(v114 + 8) = 0xD000000000000030;
            *(v114 + 16) = 0x8000000265F31260;
            swift_willThrow();

            v304 = v290;
            outlined destroy of String(&v304);

            v368 = v286;
            outlined destroy of String(&v368);

            v399 = v267;
            outlined destroy of String(&v399);
            outlined destroy of NodePersonality(&v316);
            v337 = v235;
            outlined destroy of [Input](&v337, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
            v338 = v232;
            v115 = &v338;
            goto LABEL_85;
          }

LABEL_78:
          v116 = one-time initialization token for half2;

          if (v116 == -1)
          {
            if (!v70)
            {
              goto LABEL_88;
            }
          }

          else
          {
            swift_once();
            if (!v70)
            {
              goto LABEL_88;
            }
          }

          v117 = MetalDataType.isEqual(to:)();

          if (v117)
          {

            v246 = 0xD00000000000001ELL;
            v247 = 0x8000000265F31300;
            v239 = 0x8000000265F31300;
            v118 = *(v240 + 16);
            v119 = 32;
            do
            {
              if (!v118)
              {
                goto LABEL_120;
              }

              v120 = *(v240 + v119);
              v119 += 8;
              --v118;
            }

            while (v120 < 2);
            outlined destroy of SGDataTypeStorage(&v252);

            lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
            swift_allocError();
            *v121 = 44;
            *(v121 + 8) = 0xD000000000000030;
            *(v121 + 16) = 0x8000000265F31260;
            swift_willThrow();

            v305 = v290;
            outlined destroy of String(&v305);

            v369 = v286;
            outlined destroy of String(&v369);

            v400 = v267;
            outlined destroy of String(&v400);
            outlined destroy of NodePersonality(&v316);
            v339 = v235;
            outlined destroy of [Input](&v339, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
            v340 = v232;
            v115 = &v340;
LABEL_85:
            outlined destroy of [Input](v115, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

            outlined destroy of SGDataTypeStorage(&v252);
            return v238(v237, v241);
          }

LABEL_88:
          v122 = one-time initialization token for half3;

          if (v122 == -1)
          {
            if (!v70)
            {
              goto LABEL_96;
            }
          }

          else
          {
            swift_once();
            if (!v70)
            {
              goto LABEL_96;
            }
          }

          v123 = MetalDataType.isEqual(to:)();

          if (v123)
          {

            v246 = 0xD00000000000001ELL;
            v247 = 0x8000000265F312E0;
            v239 = 0x8000000265F312E0;
            v124 = *(v240 + 16);
            v125 = 32;
            do
            {
              if (!v124)
              {
                goto LABEL_120;
              }

              v126 = *(v240 + v125);
              v125 += 8;
              --v124;
            }

            while (v126 < 3);
            outlined destroy of SGDataTypeStorage(&v252);

            lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
            swift_allocError();
            *v127 = 44;
            *(v127 + 8) = 0xD000000000000030;
            *(v127 + 16) = 0x8000000265F31260;
            swift_willThrow();

            v306 = v290;
            outlined destroy of String(&v306);

            v370 = v286;
            outlined destroy of String(&v370);

            v401 = v267;
            outlined destroy of String(&v401);
            outlined destroy of NodePersonality(&v316);
            v341 = v235;
            outlined destroy of [Input](&v341, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
            v342 = v232;
            v128 = &v342;
LABEL_209:
            outlined destroy of [Input](v128, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
            goto LABEL_210;
          }

LABEL_96:
          v129 = one-time initialization token for half4;

          if (v129 == -1)
          {
            if (!v70)
            {
              goto LABEL_104;
            }
          }

          else
          {
            swift_once();
            if (!v70)
            {
              goto LABEL_104;
            }
          }

          v130 = MetalDataType.isEqual(to:)();

          if (v130)
          {

            v246 = 0xD00000000000001ELL;
            v247 = 0x8000000265F312C0;
            v239 = 0x8000000265F312C0;
            v131 = *(v240 + 16);
            v132 = 32;
            do
            {
              if (!v131)
              {
                goto LABEL_120;
              }

              v133 = *(v240 + v132);
              v132 += 8;
              --v131;
            }

            while (v133 < 4);
            outlined destroy of SGDataTypeStorage(&v252);

            lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
            swift_allocError();
            *v134 = 44;
            *(v134 + 8) = 0xD000000000000030;
            *(v134 + 16) = 0x8000000265F31260;
            swift_willThrow();

            v307 = v290;
            outlined destroy of String(&v307);

            v371 = v286;
            outlined destroy of String(&v371);

            v402 = v267;
            outlined destroy of String(&v402);
            outlined destroy of NodePersonality(&v316);
            v343 = v235;
            outlined destroy of [Input](&v343, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
            v344 = v232;
            v128 = &v344;
            goto LABEL_209;
          }

LABEL_104:
          v135 = one-time initialization token for color3;

          if (v135 == -1)
          {
            if (!v70)
            {
              goto LABEL_112;
            }
          }

          else
          {
            swift_once();
            if (!v70)
            {
              goto LABEL_112;
            }
          }

          v136 = MetalDataType.isEqual(to:)();

          if (v136)
          {

            v246 = 0xD00000000000001FLL;
            v247 = 0x8000000265F312A0;
            v239 = 0x8000000265F312A0;
            v137 = *(v240 + 16);
            v138 = 32;
            do
            {
              if (!v137)
              {
                goto LABEL_120;
              }

              v139 = *(v240 + v138);
              v138 += 8;
              --v137;
            }

            while (v139 < 3);
            outlined destroy of SGDataTypeStorage(&v252);

            lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
            swift_allocError();
            *v140 = 44;
            *(v140 + 8) = 0xD000000000000030;
            *(v140 + 16) = 0x8000000265F31260;
            swift_willThrow();

            v308 = v290;
            outlined destroy of String(&v308);

            v372 = v286;
            outlined destroy of String(&v372);

            v403 = v267;
            outlined destroy of String(&v403);
            outlined destroy of NodePersonality(&v316);
            v345 = v235;
            outlined destroy of [Input](&v345, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
            v346 = v232;
            v128 = &v346;
            goto LABEL_209;
          }

LABEL_112:
          if (one-time initialization token for color4 != -1)
          {
            swift_once();
          }

          if (v70)
          {
            v141 = MetalDataType.isEqual(to:)();

            if (v141)
            {
              v246 = 0xD00000000000001FLL;
              v247 = 0x8000000265F31240;
              v239 = 0x8000000265F31240;
              v142 = *(v240 + 16);
              v143 = 32;
              while (v142)
              {
                v144 = *(v240 + v143);
                v143 += 8;
                --v142;
                if (v144 >= 4)
                {
                  outlined destroy of SGDataTypeStorage(&v252);

                  lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
                  swift_allocError();
                  *v145 = 44;
                  *(v145 + 8) = 0xD000000000000030;
                  *(v145 + 16) = 0x8000000265F31260;
                  swift_willThrow();

                  v309 = v290;
                  outlined destroy of String(&v309);

                  v373 = v286;
                  outlined destroy of String(&v373);

                  v404 = v267;
                  outlined destroy of String(&v404);
                  outlined destroy of NodePersonality(&v316);
                  v347 = v235;
                  outlined destroy of [Input](&v347, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
                  v348 = v232;
                  v128 = &v348;
                  goto LABEL_209;
                }
              }

LABEL_120:
              v59 = v241;
              v85 = v233;
              v30 = 7632239;
LABEL_121:
              v146 = (*(*v231 + 144))(v82);
              if (v146 && (MetalDataType.isEqual(to:)() & 1) != 0)
              {

                MEMORY[0x266771550](0x74616F6C66, 0xE500000000000000);
                v147 = 1;
                goto LABEL_174;
              }

              v148 = one-time initialization token for float2;

              if (v148 == -1)
              {
                if (!v146)
                {
                  goto LABEL_132;
                }
              }

              else
              {
                swift_once();
                if (!v146)
                {
                  goto LABEL_132;
                }
              }

              v149 = MetalDataType.isEqual(to:)();

              if (v149)
              {

                MEMORY[0x266771550](0x3274616F6C66, 0xE600000000000000);
                v147 = 2;
                goto LABEL_174;
              }

LABEL_132:
              v153 = one-time initialization token for float3;

              if (v153 == -1)
              {
                if (!v146)
                {
                  goto LABEL_137;
                }
              }

              else
              {
                swift_once();
                if (!v146)
                {
                  goto LABEL_137;
                }
              }

              v154 = MetalDataType.isEqual(to:)();

              if (v154)
              {

                MEMORY[0x266771550](0x3374616F6C66, 0xE600000000000000);
                v147 = 3;
                goto LABEL_174;
              }

LABEL_137:
              v155 = one-time initialization token for float4;

              if (v155 == -1)
              {
                if (!v146)
                {
                  goto LABEL_142;
                }
              }

              else
              {
                swift_once();
                if (!v146)
                {
                  goto LABEL_142;
                }
              }

              v156 = MetalDataType.isEqual(to:)();

              if (v156)
              {

                MEMORY[0x266771550](0x3474616F6C66, 0xE600000000000000);
                v147 = 4;
                while (1)
                {
LABEL_174:
                  v172 = *v234;
                  if (*(v240 + 16) != v147)
                  {

                    v244 = 0;
                    v245 = 0xE000000000000000;
                    MEMORY[0x266771550](v172, *&v234[8]);
                    outlined destroy of SGDataTypeStorage(&v252);
                    MEMORY[0x266771550](32, 0xE100000000000000);
                    v248 = v419;
                    v249[0] = v420[0];
                    *(v249 + 9) = *(v420 + 9);
                    _print_unlocked<A, B>(_:_:)();
                    v182 = v244;
                    v183 = v245;
                    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
                    swift_allocError();
                    *v184 = 25;
                    *(v184 + 8) = v182;
                    *(v184 + 16) = v183;
                    swift_willThrow();

                    v314 = v290;
                    outlined destroy of String(&v314);

                    v378 = v286;
                    outlined destroy of String(&v378);

                    v393 = v267;
                    outlined destroy of String(&v393);
                    outlined destroy of NodePersonality(&v316);
                    v357 = v235;
                    outlined destroy of [Input](&v357, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
                    v358 = v232;
                    v88 = &v358;
                    goto LABEL_185;
                  }

                  outlined destroy of SGDataTypeStorage(&v252);
                  v173 = v240;
                  v146 = *(v240 + 16);
                  if (v146)
                  {
                    break;
                  }

                  v175 = MEMORY[0x277D84F90];
LABEL_188:
                  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph9InputSpecVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph9InputSpecVGMR);
                  v185 = swift_allocObject();
                  *&v234[8] = xmmword_265F1F670;
                  *(v185 + 16) = xmmword_265F1F670;
                  *(v185 + 32) = 0x726F74636576;
                  *(v185 + 40) = 0xE600000000000000;
                  *(v185 + 48) = v85;
                  *&v248 = v185;
                  v186 = v231;

                  specialized Array.append<A>(contentsOf:)(v175);
                  v187 = v248;
                  *v234 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMR);
                  v188 = swift_allocObject();
                  *(v188 + 16) = *&v234[8];
                  *(v188 + 32) = v30;
                  v146 = v188 + 32;
                  *(v188 + 40) = 0xE300000000000000;
                  *(v188 + 48) = v186;
                  v189 = swift_allocObject();
                  v190 = v247;
                  *(v189 + 16) = v246;
                  *(v189 + 24) = v190;
                  *(v189 + 32) = v186;
                  swift_retain_n();
                  UserGraph.insertNode(inputs:outputs:shaderGraphData:)(v187, v188, v189 | 0x2000000000000000, &v272);

                  swift_setDeallocating();
                  v191 = *(v188 + 16);
                  swift_arrayDestroy();
                  swift_deallocClassInstance();

                  v192 = *(&v272 + 1);
                  v392 = *(&v272 + 1);
                  v193 = v232;
                  if (!*(*(&v272 + 1) + 16))
                  {
                    goto LABEL_213;
                  }

                  v194 = *(*(&v272 + 1) + 40);
                  v195 = *(*(&v272 + 1) + 48);
                  v196 = *(*(&v272 + 1) + 56);
                  v197 = *(*(&v272 + 1) + 64);
                  v198 = *(*(&v272 + 1) + 72);
                  v199 = *(*(&v272 + 1) + 80);
                  v416[0] = *(*(&v272 + 1) + 32);
                  v416[1] = v194;
                  v416[2] = v195;
                  v416[3] = v196;
                  v416[4] = v197;
                  v417 = v198;
                  v418 = v199;

                  UserGraph.moveEdge(from:to:)(&v285, v416);

                  v391 = v273;
                  if (*(v273 + 16))
                  {
                    v200 = *(v273 + 40);
                    v201 = *(v273 + 48);
                    v202 = *(v273 + 56);
                    v203 = *(v273 + 64);
                    v204 = *(v273 + 72);
                    v205 = *(v273 + 80);
                    v413[0] = *(v273 + 32);
                    v413[1] = v200;
                    v413[2] = v201;
                    v413[3] = v202;
                    v413[4] = v203;
                    v414 = v204;
                    v415 = v205;

                    UserGraph.moveEdges(from:to:)(&v266, v413);

                    v206 = *(v192 + 16);
                    if (!v206)
                    {
                      goto LABEL_215;
                    }

                    v207 = *(v240 + 16);
                    outlined init with copy of [Input](&v392, &v248, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);

                    outlined init with copy of [Input](&v392, &v248, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
                    v228 = v192;
                    v229 = v207;
                    if (!v207)
                    {
                      v209 = v426;
LABEL_202:
                      v426 = v209;

                      v312 = v290;
                      outlined destroy of String(&v312);
                      outlined destroy of SGDataTypeStorage(&v252);

                      outlined destroy of [Input](&v392, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
                      v383 = v272;
                      outlined destroy of NodePersonality(&v383);
                      outlined destroy of [Input](&v392, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
                      outlined destroy of [Input](&v391, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

                      v376 = v286;
                      outlined destroy of String(&v376);

                      v382 = v267;
                      outlined destroy of String(&v382);
                      outlined destroy of NodePersonality(&v316);
                      v353 = v235;
                      outlined destroy of [Input](&v353, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
                      v354 = v193;
                      outlined destroy of [Input](&v354, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

                      v238(v237, v241);
                      swift_unknownObjectRelease();
                    }

                    v146 = 0;
                    v230 = (v206 - 1);
                    v208 = v192 + 104;
                    v209 = v426;
                    while (v146 < *(v240 + 16))
                    {
                      if (v230 == v146)
                      {
                        goto LABEL_202;
                      }

                      v210 = *(v240 + 8 * v146 + 32);
                      v211 = *v208;
                      v411[0] = *(v208 - 16);
                      v411[1] = v211;
                      v411[2] = *(v208 + 16);
                      v212 = v208;
                      v412 = *(v208 + 32);
                      v213 = *(&v411[0] + 1);
                      v425[0] = v211;

                      outlined init with copy of String(v425, &v248);
                      v214 = constantFunction(for:)(v210);
                      v426 = v215;
                      v239 = v213;
                      if (v215)
                      {
                        goto LABEL_205;
                      }

                      v236 = v146;
                      if (one-time initialization token for int32 != -1)
                      {
                        swift_once();
                      }

                      v216 = static MetalDataType.int32;
                      v217 = swift_allocObject();
                      *(v217 + 16) = *&v234[8];
                      *(v217 + 32) = 7632239;
                      *(v217 + 40) = 0xE300000000000000;
                      *(v217 + 48) = v216;
                      v218 = swift_allocObject();
                      *(v218 + 16) = v214;
                      *(v218 + 32) = v216;
                      swift_retain_n();
                      UserGraph.insertNode(inputs:outputs:shaderGraphData:)(MEMORY[0x277D84F90], v217, v218 | 0x2000000000000000, &v274);

                      swift_setDeallocating();
                      v219 = *(v217 + 16);
                      swift_arrayDestroy();
                      swift_deallocClassInstance();
                      v390 = *&v275[0];
                      specialized ShaderGraphNode.output(labeled:)(&v276, 7632239, 0xE300000000000000, *&v275[0]);
                      if (!v277)
                      {
                        v244 = 0;
                        v245 = 0xE000000000000000;
                        MEMORY[0x266771550](7632239, 0xE300000000000000);
                        MEMORY[0x266771550](32, 0xE100000000000000);
                        v248 = v274;
                        v249[0] = v275[0];
                        *(v249 + 9) = *(v275 + 9);
                        _print_unlocked<A, B>(_:_:)();
                        v220 = v244;
                        v221 = v245;
                        lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
                        v222 = swift_allocError();
                        *v223 = 14;
                        *(v223 + 8) = v220;
                        *(v223 + 16) = v221;
                        v426 = v222;
                        swift_willThrow();
                        v389 = v274;
                        outlined destroy of NodePersonality(&v389);
                        v388 = *(&v274 + 1);
                        outlined destroy of [Input](&v388, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
                        outlined destroy of [Input](&v390, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
LABEL_205:

                        v313 = v290;
                        outlined destroy of String(&v313);

                        outlined destroy of [Input](&v392, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
                        v387 = v272;
                        outlined destroy of NodePersonality(&v387);
                        outlined destroy of [Input](&v392, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
                        outlined destroy of [Input](&v391, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

                        v377 = v286;
                        outlined destroy of String(&v377);

                        v386 = v267;
                        outlined destroy of String(&v386);
                        outlined destroy of NodePersonality(&v316);
                        v355 = v235;
                        outlined destroy of [Input](&v355, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
                        v356 = v232;
                        outlined destroy of [Input](&v356, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

                        outlined destroy of SGDataTypeStorage(&v252);

                        outlined destroy of String(v425);
                        v238(v237, v241);
                        swift_unknownObjectRelease();
                      }

                      v146 = (v236 + 1);
                      v281[0] = v276;
                      v281[1] = v277;
                      v282 = v278;
                      v283 = v279;
                      v284 = v280;
                      UserGraph.connect(_:to:)(v281, v411);

                      v380 = v282;
                      outlined destroy of String(&v380);
                      v385 = v274;
                      outlined destroy of NodePersonality(&v385);
                      v384 = *(&v274 + 1);
                      outlined destroy of [Input](&v384, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
                      outlined destroy of [Input](&v390, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

                      outlined destroy of String(v425);
                      v208 = v212 + 56;
                      v193 = v232;
                      v209 = v426;
                      if (v229 == v146)
                      {
                        goto LABEL_202;
                      }
                    }

                    goto LABEL_212;
                  }

LABEL_214:
                  __break(1u);
LABEL_215:
                  __break(1u);
LABEL_216:
                  swift_once();
LABEL_169:
                  if (!v146)
                  {

                    outlined destroy of SGDataTypeStorage(&v252);

LABEL_208:

                    v244 = 0;
                    v245 = 0xE000000000000000;
                    v248 = v266;
                    v249[0] = v267;
                    v249[1] = v268;
                    *&v250 = v269;
                    _print_unlocked<A, B>(_:_:)();
                    MEMORY[0x266771550](32, 0xE100000000000000);
                    v248 = v419;
                    v249[0] = v420[0];
                    *(v249 + 9) = *(v420 + 9);
                    _print_unlocked<A, B>(_:_:)();
                    v224 = v244;
                    v225 = v245;
                    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
                    swift_allocError();
                    *v226 = 43;
                    *(v226 + 8) = v224;
                    *(v226 + 16) = v225;
                    swift_willThrow();

                    v311 = v290;
                    outlined destroy of String(&v311);

                    v375 = v286;
                    outlined destroy of String(&v375);

                    v394 = v267;
                    outlined destroy of String(&v394);
                    outlined destroy of NodePersonality(&v316);
                    v351 = v235;
                    outlined destroy of [Input](&v351, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
                    v352 = v232;
                    v128 = &v352;
                    goto LABEL_209;
                  }

                  v171 = MetalDataType.isEqual(to:)();

                  if ((v171 & 1) == 0)
                  {
                    outlined destroy of SGDataTypeStorage(&v252);

                    goto LABEL_208;
                  }

                  v167 = 0x34726F6C6F63;
                  v168 = 0xE600000000000000;
LABEL_172:
                  MEMORY[0x266771550](v167, v168);
                  v147 = 4;
LABEL_173:
                  v59 = v241;
                  v85 = v233;
                  v30 = 7632239;
                }

                v244 = MEMORY[0x277D84F90];

                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v146, 0);
                v174 = 0;
                v175 = v244;
                v239 = *(v173 + 16);
                v236 = v146;
                while (v239 != v174)
                {
                  *&v248 = 0x5F7865646E69;
                  *(&v248 + 1) = 0xE600000000000000;
                  v243 = v174;
                  v176 = dispatch thunk of CustomStringConvertible.description.getter();
                  MEMORY[0x266771550](v176);

                  v177 = v248;
                  if (one-time initialization token for int32 != -1)
                  {
                    swift_once();
                  }

                  v178 = static MetalDataType.int32;
                  v244 = v175;
                  v180 = *(v175 + 16);
                  v179 = *(v175 + 24);

                  if (v180 >= v179 >> 1)
                  {
                    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v179 > 1), v180 + 1, 1);
                    v175 = v244;
                  }

                  ++v174;
                  *(v175 + 16) = v180 + 1;
                  v181 = v175 + 24 * v180;
                  *(v181 + 32) = v177;
                  *(v181 + 48) = v178;
                  v146 = v236;
                  v30 = 7632239;
                  if (v236 == v174)
                  {

                    v85 = v233;
                    goto LABEL_188;
                  }
                }

                __break(1u);
LABEL_212:
                __break(1u);
LABEL_213:
                __break(1u);
                goto LABEL_214;
              }

LABEL_142:
              v157 = one-time initialization token for half;

              if (v157 == -1)
              {
                if (!v146)
                {
                  goto LABEL_147;
                }
              }

              else
              {
                swift_once();
                if (!v146)
                {
                  goto LABEL_147;
                }
              }

              v158 = MetalDataType.isEqual(to:)();

              if (v158)
              {

                MEMORY[0x266771550](1718378856, 0xE400000000000000);
                v147 = 1;
                goto LABEL_173;
              }

LABEL_147:
              v159 = one-time initialization token for half2;

              if (v159 == -1)
              {
                if (!v146)
                {
                  goto LABEL_152;
                }
              }

              else
              {
                swift_once();
                if (!v146)
                {
                  goto LABEL_152;
                }
              }

              v160 = MetalDataType.isEqual(to:)();

              if (v160)
              {

                MEMORY[0x266771550](0x32666C6168, 0xE500000000000000);
                v147 = 2;
                goto LABEL_173;
              }

LABEL_152:
              v161 = one-time initialization token for half3;

              if (v161 == -1)
              {
                if (!v146)
                {
                  goto LABEL_157;
                }
              }

              else
              {
                swift_once();
                if (!v146)
                {
                  goto LABEL_157;
                }
              }

              v162 = MetalDataType.isEqual(to:)();

              if (v162)
              {

                v163 = 0x33666C6168;
                v164 = 0xE500000000000000;
LABEL_166:
                MEMORY[0x266771550](v163, v164);
                v147 = 3;
                goto LABEL_173;
              }

LABEL_157:
              v165 = one-time initialization token for half4;

              if (v165 == -1)
              {
                if (!v146)
                {
                  goto LABEL_162;
                }
              }

              else
              {
                swift_once();
                if (!v146)
                {
                  goto LABEL_162;
                }
              }

              v166 = MetalDataType.isEqual(to:)();

              if (v166)
              {

                v167 = 0x34666C6168;
                v168 = 0xE500000000000000;
                goto LABEL_172;
              }

LABEL_162:
              v169 = one-time initialization token for color3;

              if (v169 == -1)
              {
                if (!v146)
                {
                  goto LABEL_168;
                }
              }

              else
              {
                swift_once();
                if (!v146)
                {
                  goto LABEL_168;
                }
              }

              v170 = MetalDataType.isEqual(to:)();

              if (v170)
              {

                v163 = 0x33726F6C6F63;
                v164 = 0xE600000000000000;
                goto LABEL_166;
              }

LABEL_168:
              if (one-time initialization token for color4 != -1)
              {
                goto LABEL_216;
              }

              goto LABEL_169;
            }

            outlined destroy of SGDataTypeStorage(&v252);
          }

          else
          {

            outlined destroy of SGDataTypeStorage(&v252);
          }

          v244 = 0;
          v245 = 0xE000000000000000;
          v248 = v285;
          v249[0] = v286;
          v249[1] = v287;
          *&v250 = v288;
          _print_unlocked<A, B>(_:_:)();
          MEMORY[0x266771550](32, 0xE100000000000000);
          v248 = v419;
          v249[0] = v420[0];
          *(v249 + 9) = *(v420 + 9);
          _print_unlocked<A, B>(_:_:)();
          v150 = v244;
          v151 = v245;
          lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
          swift_allocError();
          *v152 = 42;
          *(v152 + 8) = v150;
          *(v152 + 16) = v151;
          swift_willThrow();

          v310 = v290;
          outlined destroy of String(&v310);

          v374 = v286;
          outlined destroy of String(&v374);

          v405 = v267;
          outlined destroy of String(&v405);
          outlined destroy of NodePersonality(&v316);
          v349 = v235;
          outlined destroy of [Input](&v349, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
          v350 = v232;
          outlined destroy of [Input](&v350, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
LABEL_210:

          outlined destroy of SGDataTypeStorage(&v252);
          return v238(v237, v241);
        }

LABEL_50:
        swift_once();
        if (!v70)
        {
          goto LABEL_51;
        }

        goto LABEL_41;
      }
    }

    swift_once();
    goto LABEL_33;
  }

  return result;
}

double UserGraph.constantIntegerNode(for:)@<D0>(Swift::Int a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = constantFunction(for:)(a1);
  if (!v5)
  {
    if (one-time initialization token for int32 != -1)
    {
      swift_once();
    }

    v6 = static MetalDataType.int32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_265F1F670;
    *(inited + 32) = 7632239;
    *(inited + 40) = 0xE300000000000000;
    *(inited + 48) = v6;
    v8 = swift_allocObject();
    *(v8 + 16) = v4;
    *(v8 + 32) = v6;
    swift_retain_n();
    UserGraph.insertNode(inputs:outputs:shaderGraphData:)(MEMORY[0x277D84F90], inited, v8 | 0x2000000000000000, &v11);

    swift_setDeallocating();
    v9 = *(inited + 16);
    swift_arrayDestroy();
    v10 = v12[0];
    *a2 = v11;
    a2[1] = v10;
    result = *(v12 + 9);
    *(a2 + 25) = *(v12 + 9);
  }

  return result;
}

uint64_t closure #1 in UserGraph.resolveEnvironmentRadianceNode()(uint64_t result, uint64_t a2)
{
  v3 = *result;
  if (*result >> 61 == 5)
  {
    v70 = v2;
    v6 = *(result + 8);
    v5 = *(result + 16);
    v7 = *(result + 24);
    v8 = *(result + 32);
    v9 = *(result + 40);
    v10 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) == 0xD000000000000022 && 0x8000000265F31100 == *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    if (v10 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
    {
      v276 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph9InputSpecVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph9InputSpecVGMR);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_265F24130;
      if (one-time initialization token for surface_parameters_private != -1)
      {
        swift_once();
      }

      v71 = v5;
      v12 = static MetalDataType.re.surface_parameters_private;
      *(v11 + 32) = 0x736D61726170;
      *(v11 + 40) = 0xE600000000000000;
      *(v11 + 48) = v12;
      v13 = one-time initialization token for color3;
      v65 = v12;

      if (v13 != -1)
      {
        swift_once();
      }

      v14 = static MetalDataType.color3;
      *(v11 + 56) = 0x6F6C6F4365736162;
      *(v11 + 64) = 0xE900000000000072;
      *(v11 + 72) = v14;
      v15 = one-time initialization token for half;

      if (v15 != -1)
      {
        swift_once();
      }

      v16 = static MetalDataType.half;
      *(v11 + 80) = 0x73656E6867756F72;
      *(v11 + 88) = 0xE900000000000073;
      *(v11 + 96) = v16;
      *(v11 + 104) = 0x72616C7563657073;
      *(v11 + 112) = 0xE800000000000000;
      *(v11 + 120) = v16;
      *(v11 + 128) = 0x63696C6C6174656DLL;
      *(v11 + 136) = 0xE800000000000000;
      *(v11 + 144) = v16;
      v17 = one-time initialization token for float3;
      swift_retain_n();
      if (v17 != -1)
      {
        swift_once();
      }

      v66 = v8;
      v67 = v3;
      v68 = v7;
      v69 = v6;
      v18 = static MetalDataType.float3;
      *(v11 + 152) = 0x6C616D726F6ELL;
      *(v11 + 160) = 0xE600000000000000;
      *(v11 + 168) = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMR);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_265F1F670;
      v20 = one-time initialization token for EnvironmentRadianceResult;

      if (v20 != -1)
      {
        swift_once();
      }

      v21 = static MetalDataType.re.EnvironmentRadianceResult;
      *(v19 + 32) = 7632239;
      *(v19 + 40) = 0xE300000000000000;
      *(v19 + 48) = v21;
      v22 = swift_allocObject();
      *(v22 + 16) = 0xD00000000000002ALL;
      *(v22 + 24) = 0x8000000265F31130;
      *(v22 + 32) = v21;
      swift_retain_n();
      UserGraph.insertNode(inputs:outputs:shaderGraphData:)(v11, v19, v22 | 0x2000000000000000, &v75);

      swift_setDeallocating();
      v23 = *(v19 + 16);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      swift_setDeallocating();
      v24 = *(v11 + 16);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_265F1F670;
      *(v25 + 32) = 28265;
      *(v25 + 40) = 0xE200000000000000;
      *(v25 + 48) = v21;
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_265F1F670;
      if (one-time initialization token for half3 != -1)
      {
        v64 = v26;
        swift_once();
        v26 = v64;
      }

      v27 = static MetalDataType.half3;
      *(v26 + 32) = 7632239;
      *(v26 + 40) = 0xE300000000000000;
      *(v26 + 48) = v27;
      v28 = v26;
      v29 = swift_allocObject();
      *(v29 + 16) = 0xD000000000000029;
      *(v29 + 24) = 0x8000000265F31160;
      *(v29 + 32) = v27;
      swift_retain_n();
      UserGraph.insertNode(inputs:outputs:shaderGraphData:)(v25, v28, v29 | 0x2000000000000000, &v77);

      swift_setDeallocating();
      v30 = *(v28 + 16);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      swift_setDeallocating();
      v31 = *(v25 + 16);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_265F1F670;
      *(v32 + 32) = 28265;
      *(v32 + 40) = 0xE200000000000000;
      *(v32 + 48) = v21;
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_265F1F670;
      *(v33 + 32) = 7632239;
      *(v33 + 40) = 0xE300000000000000;
      *(v33 + 48) = v27;
      v34 = swift_allocObject();
      *(v34 + 16) = 0xD00000000000002ALL;
      *(v34 + 24) = 0x8000000265F31190;
      *(v34 + 32) = v27;
      UserGraph.insertNode(inputs:outputs:shaderGraphData:)(v32, v33, v34 | 0x2000000000000000, &v79);

      swift_setDeallocating();
      v35 = *(v33 + 16);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      swift_setDeallocating();
      v36 = *(v32 + 16);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      specialized ShaderGraphNode.output(labeled:)(&v81, 0x5265737566666964, 0xEF65636E61696461, v71);
      if (v82)
      {
        v160[0] = v81;
        v160[1] = v82;
        v161 = v83;
        v162 = v84;
        v163 = v85;
        specialized ShaderGraphNode.output(labeled:)(&v86, 0xD000000000000010, 0x8000000265F311E0, v71);
        if (v87)
        {
          v156[0] = v86;
          v156[1] = v87;
          v157 = v88;
          v158 = v89;
          v159 = v90;
          v257 = *&v78[0];
          specialized ShaderGraphNode.output(labeled:)(&v91, 7632239, 0xE300000000000000, *&v78[0]);
          if (v92)
          {
            v152[0] = v91;
            v152[1] = v92;
            v153 = v93;
            v154 = v94;
            v155 = v95;
            UserGraph.moveEdges(from:to:)(v160, v152);

            v183 = v153;
            outlined destroy of String(&v183);
            v248 = *&v80[0];
            specialized ShaderGraphNode.output(labeled:)(&v96, 7632239, 0xE300000000000000, *&v80[0]);
            if (v97)
            {
              v148[0] = v96;
              v148[1] = v97;
              v149 = v98;
              v150 = v99;
              v151 = v100;
              UserGraph.moveEdges(from:to:)(v156, v148);

              v184 = v149;
              outlined destroy of String(&v184);
              v239 = *(&v75 + 1);
              v240 = v75;
              v238 = *&v76[0];
              outlined init with copy of NodePersonality(&v240, &v72);
              outlined init with copy of [Input](&v239, &v72, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
              outlined init with copy of [Input](&v238, &v72, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
              specialized Sequence.forEach(_:)(v69, &v75);
              if (v70)
              {
                outlined destroy of NodePersonality(&v240);
                outlined destroy of [Input](&v239, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
                outlined destroy of [Input](&v238, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
                v237 = v79;
                outlined destroy of NodePersonality(&v237);
                v236 = *(&v79 + 1);
                outlined destroy of [Input](&v236, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
                outlined destroy of [Input](&v248, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
                v235 = v77;
                outlined destroy of NodePersonality(&v235);
                v234 = *(&v77 + 1);
                outlined destroy of [Input](&v234, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
                outlined destroy of [Input](&v257, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

                v173 = v161;
                outlined destroy of String(&v173);
                outlined destroy of NodePersonality(&v240);
                outlined destroy of [Input](&v239, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
                outlined destroy of [Input](&v238, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

                v182 = v157;
                return outlined destroy of String(&v182);
              }

              outlined destroy of NodePersonality(&v240);
              outlined destroy of [Input](&v239, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
              outlined destroy of [Input](&v238, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
              v46 = swift_allocObject();
              *(v46 + 16) = xmmword_265F1F670;
              *(v46 + 32) = 7632239;
              *(v46 + 40) = 0xE300000000000000;
              *(v46 + 48) = v65;
              v47 = swift_allocObject();
              *(v47 + 16) = 12324;
              *(v47 + 24) = 0xE200000000000000;

              UserGraph.insertNode(inputs:outputs:shaderGraphData:)(MEMORY[0x277D84F90], v46, v47 | 0x6000000000000000, &v101);

              swift_setDeallocating();
              v48 = *(v46 + 16);
              swift_arrayDestroy();
              swift_deallocClassInstance();
              v233 = *&v102[0];
              specialized ShaderGraphNode.output(labeled:)(&v103, 7632239, 0xE300000000000000, *&v102[0]);
              if (v104)
              {
                v144[0] = v103;
                v144[1] = v104;
                v145 = v105;
                v146 = v106;
                v147 = v107;
                specialized ShaderGraphNode.output(labeled:)(&v108, 0x736D61726170, 0xE600000000000000, v239);
                if (v109)
                {
                  v140[0] = v108;
                  v140[1] = v109;
                  v141 = v110;
                  v142 = v111;
                  v143 = v112;
                  v49 = v238;
                  v50 = v276;
                  UserGraph.connect(_:to:)(v144, v140);
                  specialized ShaderGraphNode.output(labeled:)(&v113, 7632239, 0xE300000000000000, v49);
                  if (v114)
                  {
                    v136[0] = v113;
                    v136[1] = v114;
                    v137 = v115;
                    v138 = v116;
                    v139 = v117;
                    v214 = *(&v77 + 1);
                    specialized ShaderGraphNode.output(labeled:)(&v118, 28265, 0xE200000000000000, *(&v77 + 1));
                    if (v119)
                    {
                      v132[0] = v118;
                      v132[1] = v119;
                      v133 = v120;
                      v134 = v121;
                      v135 = v122;
                      v208 = *(&v79 + 1);
                      specialized ShaderGraphNode.output(labeled:)(&v123, 28265, 0xE200000000000000, *(&v79 + 1));
                      if (v124)
                      {
                        v128[0] = v123;
                        v128[1] = v124;
                        v129 = v125;
                        v130 = v126;
                        v131 = v127;
                        UserGraph.connect(_:to:)(v136, v132);
                        UserGraph.connect(_:to:)(v136, v128);
                        specialized UserGraph.removeEdges(connectedTo:)(v68);
                        v51 = *(v50 + 64);
                        result = swift_isUniquelyReferenced_nonNull_native();
                        *(v50 + 64) = v51;
                        if (result)
                        {
                          if ((v68 & 0x8000000000000000) == 0)
                          {
                            goto LABEL_37;
                          }
                        }

                        else
                        {
                          result = specialized _ArrayBuffer._consumeAndCreateNew()(v51);
                          v51 = result;
                          *(v50 + 64) = result;
                          if ((v68 & 0x8000000000000000) == 0)
                          {
LABEL_37:
                            if (v68 < *(v51 + 16))
                            {
                              ShaderGraphNode.update(id:)(-7);
                              v203 = v79;
                              outlined destroy of NodePersonality(&v203);
                              outlined destroy of [Input](&v208, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
                              outlined destroy of [Input](&v248, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
                              v202 = v77;
                              outlined destroy of NodePersonality(&v202);
                              outlined destroy of [Input](&v214, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
                              outlined destroy of [Input](&v257, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
                              outlined destroy of NodePersonality(&v240);
                              outlined destroy of [Input](&v239, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
                              outlined destroy of [Input](&v238, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

                              v172 = v161;
                              outlined destroy of String(&v172);

                              v181 = v157;
                              outlined destroy of String(&v181);

                              v185 = v145;
                              outlined destroy of String(&v185);

                              v193 = v141;
                              outlined destroy of String(&v193);

                              v194 = v137;
                              outlined destroy of String(&v194);

                              v198 = v133;
                              outlined destroy of String(&v198);

                              v199 = v129;
                              outlined destroy of String(&v199);
                              v201 = v101;
                              outlined destroy of NodePersonality(&v201);
                              v200 = *(&v101 + 1);
                              outlined destroy of [Input](&v200, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
                              return outlined destroy of [Input](&v233, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
                            }

                            goto LABEL_50;
                          }
                        }

                        __break(1u);
LABEL_50:
                        __break(1u);
                        return result;
                      }

                      *&v74 = 0;
                      *(&v74 + 1) = 0xE000000000000000;
                      MEMORY[0x266771550](2125417, 0xE300000000000000);
                      v72 = v79;
                      *v73 = v80[0];
                      *&v73[9] = *(v80 + 9);
                      _print_unlocked<A, B>(_:_:)();
                      v62 = v74;
                      lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
                      swift_allocError();
                      *v63 = 11;
                      *(v63 + 8) = v62;
                      swift_willThrow();

                      v197 = v133;
                      outlined destroy of String(&v197);

                      v195 = v137;
                      outlined destroy of String(&v195);

                      v192 = v141;
                      outlined destroy of String(&v192);

                      v186 = v145;
                      outlined destroy of String(&v186);
                      v207 = v101;
                      outlined destroy of NodePersonality(&v207);
                      v206 = *(&v101 + 1);
                      outlined destroy of [Input](&v206, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
                      outlined destroy of [Input](&v233, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

                      v180 = v157;
                      outlined destroy of String(&v180);

                      v171 = v161;
                      outlined destroy of String(&v171);
                      v205 = v79;
                      outlined destroy of NodePersonality(&v205);
                      outlined destroy of [Input](&v208, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
                      outlined destroy of [Input](&v248, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
                      v204 = v77;
                      v61 = &v204;
                    }

                    else
                    {
                      *&v74 = 0;
                      *(&v74 + 1) = 0xE000000000000000;
                      MEMORY[0x266771550](2125417, 0xE300000000000000);
                      v72 = v77;
                      *v73 = v78[0];
                      *&v73[9] = *(v78 + 9);
                      _print_unlocked<A, B>(_:_:)();
                      v59 = v74;
                      lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
                      swift_allocError();
                      *v60 = 11;
                      *(v60 + 8) = v59;
                      swift_willThrow();

                      v196 = v137;
                      outlined destroy of String(&v196);

                      v191 = v141;
                      outlined destroy of String(&v191);

                      v187 = v145;
                      outlined destroy of String(&v187);
                      v213 = v101;
                      outlined destroy of NodePersonality(&v213);
                      v212 = *(&v101 + 1);
                      outlined destroy of [Input](&v212, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
                      outlined destroy of [Input](&v233, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

                      v179 = v157;
                      outlined destroy of String(&v179);

                      v170 = v161;
                      outlined destroy of String(&v170);
                      v211 = v79;
                      outlined destroy of NodePersonality(&v211);
                      v210 = *(&v79 + 1);
                      outlined destroy of [Input](&v210, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
                      outlined destroy of [Input](&v248, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
                      v209 = v77;
                      v61 = &v209;
                    }

                    outlined destroy of NodePersonality(v61);
                    v54 = &v214;
                  }

                  else
                  {
                    *&v74 = 0;
                    *(&v74 + 1) = 0xE000000000000000;
                    MEMORY[0x266771550](7632239, 0xE300000000000000);
                    MEMORY[0x266771550](32, 0xE100000000000000);
                    v72 = v75;
                    *v73 = v76[0];
                    *&v73[9] = *(v76 + 9);
                    _print_unlocked<A, B>(_:_:)();
                    v57 = v74;
                    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
                    swift_allocError();
                    *v58 = 14;
                    *(v58 + 8) = v57;
                    swift_willThrow();

                    v190 = v141;
                    outlined destroy of String(&v190);

                    v188 = v145;
                    outlined destroy of String(&v188);
                    v220 = v101;
                    outlined destroy of NodePersonality(&v220);
                    v219 = *(&v101 + 1);
                    outlined destroy of [Input](&v219, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
                    outlined destroy of [Input](&v233, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

                    v178 = v157;
                    outlined destroy of String(&v178);

                    v169 = v161;
                    outlined destroy of String(&v169);
                    v218 = v79;
                    outlined destroy of NodePersonality(&v218);
                    v217 = *(&v79 + 1);
                    outlined destroy of [Input](&v217, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
                    outlined destroy of [Input](&v248, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
                    v216 = v77;
                    outlined destroy of NodePersonality(&v216);
                    v215 = *(&v77 + 1);
                    v54 = &v215;
                  }
                }

                else
                {
                  *&v74 = 0;
                  *(&v74 + 1) = 0xE000000000000000;
                  MEMORY[0x266771550](0x20736D61726170, 0xE700000000000000);
                  v72 = v75;
                  *v73 = v76[0];
                  *&v73[9] = *(v76 + 9);
                  _print_unlocked<A, B>(_:_:)();
                  v55 = v74;
                  lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
                  swift_allocError();
                  *v56 = 11;
                  *(v56 + 8) = v55;
                  swift_willThrow();

                  v189 = v145;
                  outlined destroy of String(&v189);
                  v226 = v101;
                  outlined destroy of NodePersonality(&v226);
                  v225 = *(&v101 + 1);
                  outlined destroy of [Input](&v225, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
                  outlined destroy of [Input](&v233, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

                  v177 = v157;
                  outlined destroy of String(&v177);

                  v168 = v161;
                  outlined destroy of String(&v168);
                  v224 = v79;
                  outlined destroy of NodePersonality(&v224);
                  v223 = *(&v79 + 1);
                  outlined destroy of [Input](&v223, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
                  outlined destroy of [Input](&v248, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
                  v222 = v77;
                  outlined destroy of NodePersonality(&v222);
                  v221 = *(&v77 + 1);
                  v54 = &v221;
                }
              }

              else
              {
                *&v74 = 0;
                *(&v74 + 1) = 0xE000000000000000;
                MEMORY[0x266771550](7632239, 0xE300000000000000);
                MEMORY[0x266771550](32, 0xE100000000000000);
                v72 = v101;
                *v73 = v102[0];
                *&v73[9] = *(v102 + 9);
                _print_unlocked<A, B>(_:_:)();

                *&v74 = 0;
                *(&v74 + 1) = 0xE000000000000000;
                MEMORY[0x266771550](544503151, 0xE400000000000000);
                v72 = v101;
                *v73 = v102[0];
                *&v73[9] = *(v102 + 9);
                _print_unlocked<A, B>(_:_:)();
                v52 = v74;
                lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
                swift_allocError();
                *v53 = 14;
                *(v53 + 8) = v52;
                swift_willThrow();
                v232 = v101;
                outlined destroy of NodePersonality(&v232);
                v231 = *(&v101 + 1);
                outlined destroy of [Input](&v231, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
                outlined destroy of [Input](&v233, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

                v176 = v157;
                outlined destroy of String(&v176);

                v167 = v161;
                outlined destroy of String(&v167);
                v230 = v79;
                outlined destroy of NodePersonality(&v230);
                v229 = *(&v79 + 1);
                outlined destroy of [Input](&v229, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
                outlined destroy of [Input](&v248, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
                v228 = v77;
                outlined destroy of NodePersonality(&v228);
                v227 = *(&v77 + 1);
                v54 = &v227;
              }

              outlined destroy of [Input](v54, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
              outlined destroy of [Input](&v257, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
              outlined destroy of NodePersonality(&v240);
              outlined destroy of [Input](&v239, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
              v39 = &v238;
            }

            else
            {
              *&v74 = 0;
              *(&v74 + 1) = 0xE000000000000000;
              MEMORY[0x266771550](7632239, 0xE300000000000000);
              MEMORY[0x266771550](32, 0xE100000000000000);
              v72 = v79;
              *v73 = v80[0];
              *&v73[9] = *(v80 + 9);
              _print_unlocked<A, B>(_:_:)();
              v44 = v74;
              lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
              swift_allocError();
              *v45 = 14;
              *(v45 + 8) = v44;
              swift_willThrow();

              v175 = v157;
              outlined destroy of String(&v175);

              v166 = v161;
              outlined destroy of String(&v166);
              v247 = v79;
              outlined destroy of NodePersonality(&v247);
              v246 = *(&v79 + 1);
              outlined destroy of [Input](&v246, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
              outlined destroy of [Input](&v248, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
              v245 = v77;
              outlined destroy of NodePersonality(&v245);
              v244 = *(&v77 + 1);
              outlined destroy of [Input](&v244, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
              outlined destroy of [Input](&v257, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
              v243 = v75;
              outlined destroy of NodePersonality(&v243);
              v242 = *(&v75 + 1);
              outlined destroy of [Input](&v242, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
              v241 = *&v76[0];
              v39 = &v241;
            }
          }

          else
          {
            *&v74 = 0;
            *(&v74 + 1) = 0xE000000000000000;
            MEMORY[0x266771550](7632239, 0xE300000000000000);
            MEMORY[0x266771550](32, 0xE100000000000000);
            v72 = v77;
            *v73 = v78[0];
            *&v73[9] = *(v78 + 9);
            _print_unlocked<A, B>(_:_:)();
            v42 = v74;
            lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
            swift_allocError();
            *v43 = 14;
            *(v43 + 8) = v42;
            swift_willThrow();

            v174 = v157;
            outlined destroy of String(&v174);

            v165 = v161;
            outlined destroy of String(&v165);
            v256 = v79;
            outlined destroy of NodePersonality(&v256);
            v255 = *(&v79 + 1);
            outlined destroy of [Input](&v255, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
            v254 = *&v80[0];
            outlined destroy of [Input](&v254, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
            v253 = v77;
            outlined destroy of NodePersonality(&v253);
            v252 = *(&v77 + 1);
            outlined destroy of [Input](&v252, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
            outlined destroy of [Input](&v257, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
            v251 = v75;
            outlined destroy of NodePersonality(&v251);
            v250 = *(&v75 + 1);
            outlined destroy of [Input](&v250, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
            v249 = *&v76[0];
            v39 = &v249;
          }
        }

        else
        {
          *&v72 = 0;
          *(&v72 + 1) = 0xE000000000000000;
          _StringGuts.grow(_:)(19);
          v74 = v72;
          MEMORY[0x266771550](0xD000000000000011, 0x8000000265F31200);
          *&v72 = v67;
          *(&v72 + 1) = v69;
          *v73 = v71;
          *&v73[8] = v68;
          *&v73[16] = v66;
          v73[24] = v9;
          _print_unlocked<A, B>(_:_:)();
          v40 = v74;
          lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
          swift_allocError();
          *v41 = 14;
          *(v41 + 8) = v40;
          swift_willThrow();

          v164 = v161;
          outlined destroy of String(&v164);
          v266 = v79;
          outlined destroy of NodePersonality(&v266);
          v265 = *(&v79 + 1);
          outlined destroy of [Input](&v265, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
          v264 = *&v80[0];
          outlined destroy of [Input](&v264, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
          v263 = v77;
          outlined destroy of NodePersonality(&v263);
          v262 = *(&v77 + 1);
          outlined destroy of [Input](&v262, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
          v261 = *&v78[0];
          outlined destroy of [Input](&v261, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
          v260 = v75;
          outlined destroy of NodePersonality(&v260);
          v259 = *(&v75 + 1);
          outlined destroy of [Input](&v259, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
          v258 = *&v76[0];
          v39 = &v258;
        }
      }

      else
      {
        *&v72 = 0;
        *(&v72 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(18);
        v74 = v72;
        MEMORY[0x266771550](0xD000000000000010, 0x8000000265F311C0);
        *&v72 = v67;
        *(&v72 + 1) = v69;
        *v73 = v71;
        *&v73[8] = v68;
        *&v73[16] = v66;
        v73[24] = v9;
        _print_unlocked<A, B>(_:_:)();
        v37 = v74;
        lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
        swift_allocError();
        *v38 = 14;
        *(v38 + 8) = v37;
        swift_willThrow();
        v275[0] = v79;
        outlined destroy of NodePersonality(v275);
        v274 = *(&v79 + 1);
        outlined destroy of [Input](&v274, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
        v273 = *&v80[0];
        outlined destroy of [Input](&v273, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
        v272 = v77;
        outlined destroy of NodePersonality(&v272);
        v271 = *(&v77 + 1);
        outlined destroy of [Input](&v271, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
        v270 = *&v78[0];
        outlined destroy of [Input](&v270, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
        v269 = v75;
        outlined destroy of NodePersonality(&v269);
        v268 = *(&v75 + 1);
        outlined destroy of [Input](&v268, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
        v267 = *&v76[0];
        v39 = &v267;
      }

      return outlined destroy of [Input](v39, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
    }
  }

  return result;
}

uint64_t swizzleFunction #1 (for:) in UserGraph.replaceMultiOutputNodes()(uint64_t a1)
{
  if (one-time initialization token for float2 != -1)
  {
    swift_once();
  }

  if (MetalDataType.isEqual(to:)())
  {
    return 0xD000000000000024;
  }

  if (one-time initialization token for float3 != -1)
  {
    swift_once();
  }

  if (MetalDataType.isEqual(to:)())
  {
    return 0xD000000000000024;
  }

  if (one-time initialization token for float4 != -1)
  {
    swift_once();
  }

  if (MetalDataType.isEqual(to:)())
  {
    return 0xD000000000000024;
  }

  _StringGuts.grow(_:)(43);

  v4 = (*(*a1 + 136))(v3);
  MEMORY[0x266771550](v4);

  lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
  swift_allocError();
  *v5 = 44;
  *(v5 + 8) = 0xD000000000000029;
  *(v5 + 16) = 0x8000000265F314E0;
  return swift_willThrow();
}

uint64_t closure #1 in UserGraph.replaceMultiOutputNodes()(uint64_t result, uint64_t a2)
{
  v3 = v2;
  if (*result >> 61 == 5)
  {
    v5 = *(result + 8);
    v6 = *(result + 16);
    v7 = *((*result & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v8 = *((*result & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    v9 = v7 == 0xD000000000000014 && 0x8000000265F31440 == v8;
    if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      if (one-time initialization token for float2 != -1)
      {
        goto LABEL_58;
      }

      while (1)
      {
        v10 = &static MetalDataType.float2;
LABEL_22:
        v13 = *v10;
        v14 = swift_retain_n();
        v15 = swizzleFunction #1 (for:) in UserGraph.replaceMultiOutputNodes()(v14);
        v17 = v16;

        if (v3)
        {
        }

        if (!v5[2])
        {
          goto LABEL_42;
        }

        v67 = v15;
        v18 = v5[5];
        v19 = v5[6];
        v20 = v5[7];
        v21 = v5[8];
        v22 = *(v5 + 72);
        v23 = v5[10];
        v114[0] = v5[4];
        v114[1] = v18;
        v114[2] = v19;
        v114[3] = v20;
        v114[4] = v21;
        v115 = v22;
        v116 = v23;
        v24 = *(a2 + 144);
        v117[8] = *(a2 + 128);
        v118[0] = v24;
        *(v118 + 9) = *(a2 + 153);
        v25 = *(a2 + 80);
        v117[4] = *(a2 + 64);
        v117[5] = v25;
        v26 = *(a2 + 96);
        v117[7] = *(a2 + 112);
        v117[6] = v26;
        v27 = *(a2 + 32);
        v117[3] = *(a2 + 48);
        v117[2] = v27;
        v28 = *a2;
        v117[1] = *(a2 + 16);
        v117[0] = v28;

        outlined init with copy of UserGraph(v117, &v69);
        UserGraph.edge(to:)(v114, v71);
        outlined destroy of UserGraph(v117);
        if (!*(&v71[0] + 1))
        {
        }

        v68 = v17;
        v85 = v71[0];
        v88 = v71[3];
        v89 = v71[4];
        v90 = v71[5];
        v91 = v71[6];
        v86 = v71[1];
        v87 = v71[2];
        UserGraph.remove(_:)(&v85);
        v66 = *(v6 + 16);
        if (!v66)
        {
LABEL_40:

          outlined destroy of [Input](v71, &_s11ShaderGraph4EdgeVSgMd, &_s11ShaderGraph4EdgeVSgMR);
LABEL_42:
        }

        v29 = 0;
        v5 = (v6 + 80);
        v64 = v13;
        v65 = v6;
        while (v29 < *(v6 + 16))
        {
          v30 = *v5;
          v31 = *(v5 - 8);
          v33 = *(v5 - 3);
          v32 = *(v5 - 2);
          v35 = *(v5 - 5);
          v34 = *(v5 - 4);
          v102[0] = *(v5 - 6);
          v102[1] = v35;
          v102[2] = v34;
          v102[3] = v33;
          v102[4] = v32;
          v103 = v31;
          v104 = v30;

          UserGraph.constantIntegerNode(for:)(v29, &v72);
          v119 = *&v73[0];
          specialized ShaderGraphNode.output(labeled:)(&v74, 7632239, 0xE300000000000000, *&v73[0]);
          if (!v75)
          {
            MEMORY[0x266771550](7632239, 0xE300000000000000);
            MEMORY[0x266771550](32, 0xE100000000000000);
            v69 = v72;
            v70[0] = v73[0];
            *(v70 + 9) = *(v73 + 9);
            _print_unlocked<A, B>(_:_:)();
            lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
            swift_allocError();
            *v63 = 14;
            *(v63 + 8) = 0;
            *(v63 + 16) = 0xE000000000000000;
            swift_willThrow();
            v101 = v72;
            outlined destroy of NodePersonality(&v101);
            v100 = *(&v72 + 1);
            outlined destroy of [Input](&v100, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
            outlined destroy of [Input](&v119, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

            outlined destroy of [Input](v71, &_s11ShaderGraph4EdgeVSgMd, &_s11ShaderGraph4EdgeVSgMR);

            goto LABEL_42;
          }

          v81[0] = v74;
          v81[1] = v75;
          v82 = v76;
          v83 = v77;
          v84 = v78;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph9InputSpecVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph9InputSpecVGMR);
          v36 = swift_allocObject();
          *(v36 + 16) = xmmword_265F21D90;
          *(v36 + 32) = 28265;
          *(v36 + 40) = 0xE200000000000000;
          *(v36 + 48) = v13;
          v37 = one-time initialization token for int32;

          if (v37 != -1)
          {
            swift_once();
          }

          v38 = a2;
          v39 = static MetalDataType.int32;
          *(v36 + 56) = 0x7865646E69;
          *(v36 + 64) = 0xE500000000000000;
          *(v36 + 72) = v39;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMR);
          v40 = swift_allocObject();
          *(v40 + 16) = xmmword_265F1F670;
          v41 = one-time initialization token for float;

          if (v41 != -1)
          {
            swift_once();
          }

          v42 = static MetalDataType.float;
          *(v40 + 32) = 7632239;
          *(v40 + 40) = 0xE300000000000000;
          *(v40 + 48) = v42;
          a2 = swift_allocObject();
          *(a2 + 16) = v67;
          *(a2 + 24) = v68;
          *(a2 + 32) = v42;
          swift_retain_n();

          UserGraph.insertNode(inputs:outputs:shaderGraphData:)(v36, v40, a2 | 0x2000000000000000, &v79);

          swift_setDeallocating();
          v43 = *(v40 + 16);
          swift_arrayDestroy();
          swift_deallocClassInstance();
          swift_setDeallocating();
          v44 = *(v36 + 16);
          swift_arrayDestroy();
          swift_deallocClassInstance();
          v92[0] = v85;
          v92[1] = v86;
          v92[2] = v87;
          v93 = v88;
          v6 = *(&v79 + 1);
          v99 = *(&v79 + 1);
          if (!*(*(&v79 + 1) + 16))
          {
            goto LABEL_55;
          }

          v45 = *(*(&v79 + 1) + 40);
          v46 = *(*(&v79 + 1) + 48);
          v47 = *(*(&v79 + 1) + 56);
          v48 = *(*(&v79 + 1) + 64);
          v49 = *(*(&v79 + 1) + 72);
          v50 = *(*(&v79 + 1) + 80);
          v111[0] = *(*(&v79 + 1) + 32);
          v111[1] = v45;
          v111[2] = v46;
          v111[3] = v47;
          v111[4] = v48;
          v112 = v49;
          v113 = v50;

          UserGraph.connect(_:to:)(v92, v111);

          if (*(v6 + 16) < 2uLL)
          {
            goto LABEL_56;
          }

          a2 = v38;
          v51 = *(v6 + 96);
          v52 = *(v6 + 104);
          v53 = *(v6 + 112);
          v54 = *(v6 + 120);
          v55 = *(v6 + 128);
          v56 = *(v6 + 136);
          v108[0] = *(v6 + 88);
          v108[1] = v51;
          v108[2] = v52;
          v108[3] = v53;
          v108[4] = v54;
          v109 = v55;
          v110 = v56;

          UserGraph.connect(_:to:)(v81, v108);

          v98 = v80;
          if (!*(v80 + 16))
          {
            goto LABEL_57;
          }

          v57 = *(v80 + 40);
          v58 = *(v80 + 48);
          v59 = *(v80 + 56);
          v60 = *(v80 + 64);
          v61 = *(v80 + 72);
          v62 = *(v80 + 80);
          v105[0] = *(v80 + 32);
          v105[1] = v57;
          v105[2] = v58;
          v105[3] = v59;
          v105[4] = v60;
          v106 = v61;
          v107 = v62;

          UserGraph.moveEdges(from:to:)(v102, v105);

          v94 = v82;
          outlined destroy of String(&v94);
          v97 = v72;
          outlined destroy of NodePersonality(&v97);
          v96 = *(&v72 + 1);
          outlined destroy of [Input](&v96, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
          outlined destroy of [Input](&v119, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
          v95 = v79;
          outlined destroy of NodePersonality(&v95);
          outlined destroy of [Input](&v99, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
          ++v29;
          outlined destroy of [Input](&v98, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

          v5 += 7;
          v13 = v64;
          v6 = v65;
          if (v66 == v29)
          {
            goto LABEL_40;
          }
        }

        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        swift_once();
      }
    }

    else
    {
      v11 = v7 == 0xD000000000000013 && 0x8000000265F31460 == v8;
      if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (v7 == 0xD000000000000014 ? (v12 = 0x8000000265F31480 == v8) : (v12 = 0), v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
      {
        if (one-time initialization token for float3 != -1)
        {
          swift_once();
        }

        v10 = &static MetalDataType.float3;
        goto LABEL_22;
      }

      if (v7 == 0xD000000000000013 && 0x8000000265F314A0 == v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v7 == 0xD000000000000014 && 0x8000000265F314C0 == v8 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
      {
        if (one-time initialization token for float4 != -1)
        {
          swift_once();
        }

        v10 = &static MetalDataType.float4;
        goto LABEL_22;
      }
    }
  }

  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> constantFunction(for:)(Swift::Int a1)
{
  v2 = 0xD000000000000025;
  if (a1 <= 1)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        v3 = "ND_appleinternal_constant_one_integer";
LABEL_11:
        v4 = (v3 - 32);
        goto LABEL_12;
      }

      goto LABEL_8;
    }

    v4 = "_constant_one_integer";
    v2 = 0xD000000000000026;
LABEL_12:
    v9 = (v4 | 0x8000000000000000);
    goto LABEL_13;
  }

  if (a1 == 2)
  {
    v3 = "ND_appleinternal_constant_two_integer";
    goto LABEL_11;
  }

  if (a1 == 3)
  {
    v4 = " not a built in constant";
    v2 = 0xD000000000000027;
    goto LABEL_12;
  }

LABEL_8:
  _StringGuts.grow(_:)(26);
  v5 = dispatch thunk of CustomStringConvertible.description.getter();
  v7 = v6;

  MEMORY[0x266771550](0xD000000000000018, 0x8000000265F30CF0);
  lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
  swift_allocError();
  *v8 = 25;
  *(v8 + 8) = v5;
  *(v8 + 16) = v7;
  v2 = swift_willThrow();
LABEL_13:
  result._object = v9;
  result._countAndFlagsBits = v2;
  return result;
}

unint64_t *closure #2 in UserGraph.splitSharedNodes(nodeDefStore:surfaceShader:geometryModifier:)(unint64_t *result, _OWORD *a2, uint64_t *a3, uint64_t *a4, char **a5, char **a6)
{
  v122 = *result;
  if (*result == 0xE000000000000000)
  {
    return result;
  }

  v172 = v6;
  v8 = result[1];
  v9 = result[2];
  v116 = result[3];
  v10 = MEMORY[0x277D84F90];
  v129 = *(v8 + 16);
  v120 = v9;
  if (v129)
  {
    *&v170[0] = MEMORY[0x277D84F90];

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v129, 0);
    v11 = *&v170[0];
    v12 = (v8 + 56);
    v13 = v129;
    do
    {
      v15 = *(v12 - 2);
      v14 = *(v12 - 1);
      v7 = *v12;
      *&v170[0] = v11;
      v17 = *(v11 + 16);
      v16 = *(v11 + 24);

      if (v17 >= v16 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1);
        v11 = *&v170[0];
      }

      *(v11 + 16) = v17 + 1;
      v18 = (v11 + 24 * v17);
      v18[4] = v14;
      v18[5] = v7;
      v18[6] = v15;
      v12 += 7;
      --v13;
    }

    while (v13);
    v9 = v120;
    v10 = MEMORY[0x277D84F90];
  }

  else
  {

    v11 = MEMORY[0x277D84F90];
  }

  v121 = v8;
  v123 = *(v9 + 16);
  if (v123)
  {
    *&v170[0] = v10;

    v118 = v11;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v123, 0);
    v19 = v10;
    v20 = (v9 + 56);
    v21 = v123;
    do
    {
      v7 = *(v20 - 2);
      v22 = *(v20 - 1);
      v23 = *v20;
      *&v170[0] = v19;
      v25 = *(v19 + 16);
      v24 = *(v19 + 24);

      if (v25 >= v24 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1);
        v11 = v118;
        v19 = *&v170[0];
      }

      *(v19 + 16) = v25 + 1;
      v26 = (v19 + 24 * v25);
      v26[4] = v22;
      v26[5] = v23;
      v26[6] = v7;
      v20 += 7;
      --v21;
    }

    while (v21);
    v9 = v120;
  }

  else
  {

    v19 = MEMORY[0x277D84F90];
  }

  UserGraph.insertNode(inputs:outputs:shaderGraphData:)(v11, v19, v122, &v155);

  specialized Set._Variant.insert(_:)(v170, v157);
  v27 = MEMORY[0x277D84F90];
  if (v129)
  {
    *&v170[0] = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v129, 0);
    v28 = v129;
    v27 = *&v170[0];
    v29 = (v121 + 56);
    do
    {
      v30 = *(v29 - 2);
      v31 = *(v29 - 1);
      v7 = *v29;
      *&v170[0] = v27;
      v33 = *(v27 + 16);
      v32 = *(v27 + 24);

      if (v33 >= v32 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1);
        v27 = *&v170[0];
      }

      *(v27 + 16) = v33 + 1;
      v34 = (v27 + 24 * v33);
      v34[4] = v31;
      v34[5] = v7;
      v34[6] = v30;
      v29 += 7;
      --v28;
    }

    while (v28);
    v9 = v120;
  }

  v35 = MEMORY[0x277D84F90];
  if (v123)
  {
    *&v170[0] = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v123, 0);
    v36 = v123;
    v35 = *&v170[0];
    v37 = (v9 + 56);
    do
    {
      v7 = *(v37 - 2);
      v38 = *(v37 - 1);
      v39 = *v37;
      *&v170[0] = v35;
      v41 = *(v35 + 16);
      v40 = *(v35 + 24);

      if (v41 >= v40 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v40 > 1), v41 + 1, 1);
        v35 = *&v170[0];
      }

      *(v35 + 16) = v41 + 1;
      v42 = (v35 + 24 * v41);
      v42[4] = v38;
      v42[5] = v39;
      v42[6] = v7;
      v37 += 7;
      --v36;
    }

    while (v36);
    v9 = v120;
  }

  UserGraph.insertNode(inputs:outputs:shaderGraphData:)(v27, v35, v122, &v158);

  specialized Set._Variant.insert(_:)(v170, v160);
  v43 = v156;
  v44 = v159;
  v45 = *(v9 + 16);
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();

  v117 = v45;
  v119 = v43;
  if (v45)
  {
    v46 = 0;
    v47 = 0;
    do
    {
      v48 = *(v43 + 2);
      if (v47 == v48)
      {
        break;
      }

      if (v47 >= v48)
      {
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
        goto LABEL_60;
      }

      v49 = *(v44 + 16);
      if (v47 == v49)
      {
        break;
      }

      v51 = *(v9 + v46 + 32);
      v50 = *(v9 + v46 + 40);
      v52 = *(v9 + v46 + 48);
      v53 = *(v9 + v46 + 56);
      v54 = *(v9 + v46 + 64);
      v55 = *(v9 + v46 + 72);
      v56 = *(v9 + v46 + 80);
      v57 = *&v43[v46 + 32];
      v58 = *&v43[v46 + 40];
      v59 = *&v43[v46 + 48];
      v35 = *&v43[v46 + 56];
      v60 = *&v43[v46 + 64];
      v61 = v43[v46 + 72];
      v62 = *&v43[v46 + 80];
      v167[0] = v51;
      v167[1] = v50;
      v167[2] = v52;
      v167[3] = v53;
      v167[4] = v54;
      v168 = v55;
      v169 = v56;
      v161[0] = v57;
      v161[1] = v58;
      v161[2] = v59;
      v161[3] = v35;
      v161[4] = v60;
      v162 = v61;
      v163 = v62;
      if (v47 >= v49)
      {
        goto LABEL_58;
      }

      ++v47;
      v63 = v44 + v46;
      v124 = v46;
      v64 = *(v44 + v46 + 32);
      v65 = *(v44 + v46 + 40);
      v66 = *(v44 + v46 + 48);
      v67 = *(v63 + 56);
      v68 = *(v63 + 64);
      v69 = *(v63 + 72);
      v70 = *(v63 + 80);
      v164[0] = v64;
      v164[1] = v65;
      v164[2] = v66;
      v164[3] = v67;
      v164[4] = v68;
      v165 = v69;
      v166 = v70;
      v143 = v61;
      v142 = v69;
      *&v144 = v51;
      *(&v144 + 1) = v50;
      *&v145 = v52;
      *(&v145 + 1) = v53;
      *&v146 = v54;
      BYTE8(v146) = v55;
      *&v147 = v56;
      *(&v147 + 1) = v57;
      *&v148 = v58;
      *(&v148 + 1) = v59;
      *&v149 = v35;
      *(&v149 + 1) = v60;
      LOBYTE(v150) = v61;
      *(&v150 + 1) = v62;
      *&v151 = v64;
      *(&v151 + 1) = v65;
      *&v152 = v66;
      *(&v152 + 1) = v67;
      *&v153 = v68;
      BYTE8(v153) = v69;
      v154 = v70;
      v71 = a2[8];
      v72 = a2[9];
      v73 = a2[6];
      v170[7] = a2[7];
      v170[8] = v71;
      v171[0] = v72;
      *(v171 + 9) = *(a2 + 153);
      v74 = a2[5];
      v170[4] = a2[4];
      v170[5] = v74;
      v170[6] = v73;
      v75 = a2[1];
      v170[0] = *a2;
      v170[1] = v75;
      v76 = a2[3];
      v170[2] = a2[2];
      v170[3] = v76;

      outlined init with copy of [Input](&v144, &v131, &_s11ShaderGraph6OutputV_AC_ACttMd, &_s11ShaderGraph6OutputV_AC_ACttMR);
      outlined init with copy of UserGraph(v170, &v131);
      v7 = UserGraph.edges(from:)(v167);
      outlined destroy of UserGraph(v170);

      v9 = v120;
      v77 = v172;
      specialized Sequence.forEach(_:)(v7, a3, a4, a2, a5, v161, a6, v164);
      v172 = v77;
      v43 = v119;

      swift_bridgeObjectRelease_n();

      swift_bridgeObjectRelease_n();

      outlined destroy of [Input](&v144, &_s11ShaderGraph6OutputV_AC_ACttMd, &_s11ShaderGraph6OutputV_AC_ACttMR);
      v46 = v124 + 56;
    }

    while (v117 != v47);
  }

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  v78 = *(&v155 + 1);
  v79 = *(&v158 + 1);
  v43 = v121;
  v80 = *(v121 + 16);
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();

  if (v80)
  {
    v81 = 0;
    v35 = 0;
    v7 = a2;
    v82 = a6;
    do
    {
      v83 = *(v78 + 16);
      if (v35 == v83)
      {
        break;
      }

      if (v35 >= v83)
      {
        goto LABEL_57;
      }

      v84 = *(v79 + 16);
      if (v35 == v84)
      {
        break;
      }

      if (v35 >= v84)
      {
        goto LABEL_59;
      }

      v86 = *(v121 + v81 + 32);
      v85 = *(v121 + v81 + 40);
      v87 = *(v121 + v81 + 48);
      v88 = *(v121 + v81 + 56);
      v89 = *(v121 + v81 + 64);
      v90 = *(v121 + v81 + 72);
      v91 = *(v121 + v81 + 80);
      v92 = *(v78 + v81 + 32);
      v43 = *(v78 + v81 + 40);
      v93 = *(v78 + v81 + 48);
      v94 = *(v78 + v81 + 56);
      v95 = *(v78 + v81 + 64);
      v96 = *(v78 + v81 + 80);
      v97 = *(v79 + v81 + 32);
      v98 = *(v79 + v81 + 40);
      v99 = *(v79 + v81 + 48);
      v100 = *(v79 + v81 + 56);
      v101 = *(v79 + v81 + 64);
      v102 = *(v79 + v81 + 72);
      v103 = *(v79 + v81 + 80);
      v142 = *(v78 + v81 + 72);
      v143 = v90;
      *&v131 = v86;
      *(&v131 + 1) = v85;
      *&v132 = v87;
      *(&v132 + 1) = v88;
      *&v133 = v89;
      BYTE8(v133) = v90;
      *&v134 = v91;
      *(&v134 + 1) = v92;
      *&v135 = v43;
      *(&v135 + 1) = v93;
      *&v136 = v94;
      *(&v136 + 1) = v95;
      LOBYTE(v137) = v142;
      *(&v137 + 1) = v96;
      *&v138 = v97;
      *(&v138 + 1) = v98;
      *&v139 = v99;
      *(&v139 + 1) = v100;
      *&v140 = v101;
      BYTE8(v140) = v102;
      v141 = v103;

      v7 = a2;

      v82 = a6;

      v104 = v172;
      closure #2 in closure #2 in UserGraph.splitSharedNodes(nodeDefStore:surfaceShader:geometryModifier:)(&v131, a2, a3, a4, a5, a6);
      v172 = v104;
      if (v104)
      {
        goto LABEL_63;
      }

      ++v35;
      v152 = v139;
      v153 = v140;
      v154 = v141;
      v148 = v135;
      v149 = v136;
      v150 = v137;
      v151 = v138;
      v144 = v131;
      v145 = v132;
      v146 = v133;
      v147 = v134;
      outlined destroy of [Input](&v144, &_s11ShaderGraph5InputV_AC_ACttMd, &_s11ShaderGraph5InputV_AC_ACttMR);
      v81 += 56;
    }

    while (v80 != v35);
  }

  else
  {
    v7 = a2;
    v82 = a6;
  }

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  v105 = *a5;

  specialized Sequence.forEach(_:)(v106);

  v107 = *v82;

  specialized Sequence.forEach(_:)(v108);

  v109 = *a5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v111 = *a5;
  if (isUniquelyReferenced_nonNull_native)
  {
    specialized Array.replaceSubrange<A>(_:with:)(0, *(v111 + 2));
  }

  else
  {
    *a5 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC11ShaderGraph4EdgeV_Tt1g5(0, *(v111 + 3) >> 1);
  }

  v35 = v116;
  v112 = *v82;
  v113 = swift_isUniquelyReferenced_nonNull_native();
  v114 = *v82;
  if (v113)
  {
    specialized Array.replaceSubrange<A>(_:with:)(0, *(v114 + 16));
  }

  else
  {
    *v82 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC11ShaderGraph4EdgeV_Tt1g5(0, *(v114 + 24) >> 1);
  }

  specialized UserGraph.removeEdges(connectedTo:)(v116);
  v43 = *(v7 + 64);
  v115 = swift_isUniquelyReferenced_nonNull_native();
  *(v7 + 64) = v43;
  if (v115)
  {
    if ((v116 & 0x8000000000000000) == 0)
    {
      goto LABEL_53;
    }
  }

  else
  {
LABEL_60:
    v43 = specialized _ArrayBuffer._consumeAndCreateNew()(v43);
    *(v7 + 64) = v43;
    if ((v35 & 0x8000000000000000) == 0)
    {
LABEL_53:
      if (v35 < *(v43 + 2))
      {
        ShaderGraphNode.update(id:)(-7);
        *&v131 = v158;
        outlined destroy of NodePersonality(&v131);

        *&v144 = v155;
        outlined destroy of NodePersonality(&v144);
      }

      goto LABEL_62;
    }
  }

  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  v152 = v139;
  v153 = v140;
  v154 = v141;
  v148 = v135;
  v149 = v136;
  v150 = v137;
  v151 = v138;
  v144 = v131;
  v145 = v132;
  v146 = v133;
  v147 = v134;
  outlined destroy of [Input](&v144, &_s11ShaderGraph5InputV_AC_ACttMd, &_s11ShaderGraph5InputV_AC_ACttMR);

  __break(1u);
  return result;
}

uint64_t closure #2 in closure #2 in UserGraph.splitSharedNodes(nodeDefStore:surfaceShader:geometryModifier:)(__int128 *a1, _OWORD *a2, uint64_t *a3, void *a4, char **a5, char **a6)
{
  v7 = a1[9];
  v89 = a1[8];
  v90 = v7;
  v91 = *(a1 + 20);
  v8 = a1[5];
  v85 = a1[4];
  v86 = v8;
  v9 = a1[6];
  v88 = a1[7];
  v87 = v9;
  v10 = a1[1];
  v81 = *a1;
  v82 = v10;
  v11 = a1[2];
  v84 = a1[3];
  v83 = v11;
  v75[0] = v81;
  v75[1] = v82;
  v76 = v11;
  v77 = BYTE8(v11);
  *v69 = *(&v84 + 1);
  v78 = v84;
  *&v69[8] = v85;
  *&v69[24] = v86;
  v69[40] = v87;
  v70 = *(&v87 + 1);
  v71 = v88;
  v72 = v89;
  *&v73 = v90;
  BYTE8(v73) = BYTE8(v90);
  v74 = v91;
  v12 = a2[1];
  v79[0] = *a2;
  v79[1] = v12;
  v13 = a2[2];
  v14 = a2[3];
  v15 = a2[5];
  v79[4] = a2[4];
  v79[5] = v15;
  v79[2] = v13;
  v79[3] = v14;
  v16 = a2[6];
  v17 = a2[7];
  *(v80 + 9) = *(a2 + 153);
  v18 = a2[9];
  v79[8] = a2[8];
  v80[0] = v18;
  v79[6] = v16;
  v79[7] = v17;
  outlined init with copy of [Input](&v81, &v56, &_s11ShaderGraph5InputV_AC_ACttMd, &_s11ShaderGraph5InputV_AC_ACttMR);
  outlined init with copy of UserGraph(v79, &v56);
  UserGraph.edge(to:)(v75, v63);
  outlined destroy of UserGraph(v79);
  if (!*(&v63[0] + 1))
  {
  }

  v56 = v63[0];
  v59 = v63[3];
  v60 = v63[4];
  v61 = v63[5];
  v62 = v63[6];
  v57 = v63[1];
  v58 = v63[2];
  UserGraph.remove(_:)(&v56);
  v19 = *a3;
  v64 = v56;
  v65 = v57;
  v66 = v58;
  v67 = v59;
  v20 = v56;
  v21 = specialized Set.contains(_:)(v56, v19);
  v22 = specialized Set.contains(_:)(v20, *a4);
  if ((v21 & 1) == 0)
  {
    if ((v22 & 1) == 0)
    {
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v40 = type metadata accessor for Logger();
      __swift_project_value_buffer(v40, logger);
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&dword_265D7D000, v41, v42, "Edge destination node isn't a surface node or geometry modifier node.", v43, 2u);
        MEMORY[0x266773120](v43, -1, -1);
      }

      goto LABEL_23;
    }

    UserGraph.connect(_:to:)(&v64, &v71);

LABEL_17:

LABEL_23:

    return outlined destroy of [Input](v63, &_s11ShaderGraph4EdgeVSgMd, &_s11ShaderGraph4EdgeVSgMR);
  }

  if ((v22 & 1) == 0)
  {
    UserGraph.connect(_:to:)(&v64, v69);

    goto LABEL_17;
  }

  v68 = v57;
  v52 = v56;
  v53 = v57;
  v54 = v58;
  *&v55[8] = *v69;
  *&v55[40] = *&v69[32];
  *v55 = v59;
  *&v55[56] = v70;
  *&v55[24] = *&v69[16];
  v23 = *a5;

  outlined init with copy of String(&v68, v51);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a5 = v23;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v23 + 2) + 1, 1, v23);
    *a5 = v23;
  }

  v26 = *(v23 + 2);
  v25 = *(v23 + 3);
  if (v26 >= v25 >> 1)
  {
    v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1, v23);
    *a5 = v23;
  }

  *(v23 + 2) = v26 + 1;
  v27 = &v23[112 * v26];
  v28 = v52;
  v29 = v54;
  *(v27 + 3) = v53;
  *(v27 + 4) = v29;
  *(v27 + 2) = v28;
  v30 = *v55;
  v31 = *&v55[16];
  v32 = *&v55[48];
  *(v27 + 7) = *&v55[32];
  *(v27 + 8) = v32;
  *(v27 + 5) = v30;
  *(v27 + 6) = v31;
  v47 = v64;
  v48 = v65;
  v49 = v66;
  *v50 = v67;
  *&v50[8] = v71;
  *&v50[24] = v72;
  *&v50[40] = v73;
  *&v50[56] = v74;
  v33 = *a6;

  outlined init with copy of String(&v68, v51);

  v34 = swift_isUniquelyReferenced_nonNull_native();
  *a6 = v33;
  if ((v34 & 1) == 0)
  {
    v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v33 + 2) + 1, 1, v33);
    *a6 = v33;
  }

  v36 = *(v33 + 2);
  v35 = *(v33 + 3);
  if (v36 >= v35 >> 1)
  {
    *a6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1, v33);
  }

  outlined destroy of [Input](v63, &_s11ShaderGraph4EdgeVSgMd, &_s11ShaderGraph4EdgeVSgMR);

  v38 = *a6;
  *(v38 + 2) = v36 + 1;
  v39 = &v38[112 * v36];
  *(v39 + 6) = *&v50[16];
  *(v39 + 7) = *&v50[32];
  *(v39 + 8) = *&v50[48];
  *(v39 + 2) = v47;
  *(v39 + 3) = v48;
  *(v39 + 4) = v49;
  *(v39 + 5) = *v50;
  return result;
}

uint64_t closure #1 in UserGraph.insertConversionFromFloatColorToHalfColor(for:)(void *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  specialized ShaderGraphNode.output(labeled:)(&v31, *a1, v2, *(a2 + 96));
  if (!v32)
  {
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    *v13 = 14;
    *(v13 + 8) = v3;
    *(v13 + 16) = v2;
    swift_willThrow();
  }

  v56[0] = v31;
  v56[1] = v32;
  v57 = v33;
  v58 = v34;
  v59 = v35;
  if (v4 == 44)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph9InputSpecVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph9InputSpecVGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_265F1F670;
    if (one-time initialization token for float4 != -1)
    {
      swift_once();
    }

    v15 = static MaterialXDataType.float4;
    *(inited + 32) = 28265;
    *(inited + 40) = 0xE200000000000000;
    *(inited + 48) = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMR);
    v16 = swift_initStackObject();
    *(v16 + 16) = xmmword_265F1F670;
    v17 = one-time initialization token for color4;

    if (v17 != -1)
    {
      swift_once();
    }

    v18 = static MaterialXDataType.color4;
    *(v16 + 32) = 7632239;
    *(v16 + 40) = 0xE300000000000000;
    *(v16 + 48) = v18;
    v19 = swift_allocObject();
    *(v19 + 16) = 0xD000000000000019;
    *(v19 + 24) = 0x8000000265F30E50;

    v11 = v37;
    UserGraph.insertNode(inputs:outputs:shaderGraphData:)(inited, v16, v19 | 0xA000000000000000, v37);

    swift_setDeallocating();
    v20 = *(v16 + 16);
    swift_arrayDestroy();
  }

  else
  {
    if (v4 != 41)
    {

      v60 = v33;
      return outlined destroy of String(&v60);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph9InputSpecVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph9InputSpecVGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_265F1F670;
    if (one-time initialization token for float3 != -1)
    {
      swift_once();
    }

    v6 = static MaterialXDataType.float3;
    *(inited + 32) = 28265;
    *(inited + 40) = 0xE200000000000000;
    *(inited + 48) = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMR);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_265F1F670;
    v8 = one-time initialization token for color3;

    if (v8 != -1)
    {
      swift_once();
    }

    v9 = static MaterialXDataType.color3;
    *(v7 + 32) = 7632239;
    *(v7 + 40) = 0xE300000000000000;
    *(v7 + 48) = v9;
    v10 = swift_allocObject();
    *(v10 + 16) = 0xD000000000000019;
    *(v10 + 24) = 0x8000000265F30E70;

    v11 = v36;
    UserGraph.insertNode(inputs:outputs:shaderGraphData:)(inited, v7, v10 | 0xA000000000000000, v36);

    swift_setDeallocating();
    v12 = *(v7 + 16);
    swift_arrayDestroy();
    swift_deallocClassInstance();
  }

  swift_setDeallocating();
  v21 = *(inited + 16);
  swift_arrayDestroy();
  v23 = *v11;
  v22 = *(v11 + 1);
  v25 = *(v11 + 3);
  v24 = *(v11 + 4);
  v26 = *(v11 + 40);
  v27 = *(v11 + 2);
  outlined copy of NodePersonality(*v11);

  specialized ShaderGraphNode.output(labeled:)(&v38, 7632239, 0xE300000000000000, v27);
  outlined consume of NodePersonality(v23);

  if (v39)
  {
    v52[0] = v38;
    v52[1] = v39;
    v53 = v40;
    v54 = v41;
    v55 = v42;
    specialized ShaderGraphNode.output(labeled:)(&v43, 28265, 0xE200000000000000, v22);
    if (v44)
    {
      v48[0] = v43;
      v48[1] = v44;
      v49 = v45;
      v50 = v46;
      v51 = v47;
      UserGraph.moveEdges(from:to:)(v56, v52);
      UserGraph.connect(_:to:)(v56, v48);

      v63 = v57;
      outlined destroy of String(&v63);

      v65 = v53;
      outlined destroy of String(&v65);

      v66 = v49;
      v28 = &v66;
    }

    else
    {
      MEMORY[0x266771550](2125417, 0xE300000000000000);
      _print_unlocked<A, B>(_:_:)();
      lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
      swift_allocError();
      *v30 = 11;
      *(v30 + 8) = 0;
      *(v30 + 16) = 0xE000000000000000;
      swift_willThrow();

      v62 = v57;
      outlined destroy of String(&v62);

      v64 = v53;
      v28 = &v64;
    }
  }

  else
  {
    MEMORY[0x266771550](544503151, 0xE400000000000000);
    _print_unlocked<A, B>(_:_:)();
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    *v29 = 14;
    *(v29 + 8) = 0;
    *(v29 + 16) = 0xE000000000000000;
    swift_willThrow();

    v61 = v57;
    v28 = &v61;
  }

  outlined destroy of String(v28);
  outlined consume of NodePersonality(v23);
}

uint64_t closure #1 in closure #1 in UserGraph.resolveMaterialXEnums()(__int128 *a1, _OWORD *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v155 = *(a1 + 6);
  v153 = v4;
  v154 = v5;
  v152 = v3;
  v6 = *(&v3 + 1);
  type metadata accessor for MaterialXDataType();
  result = swift_dynamicCastClass();
  if (result)
  {
    v8 = result;
    v9 = *(result + 24);
    if (v9)
    {
      v10 = a2[9];
      v164[8] = a2[8];
      v165[0] = v10;
      *(v165 + 9) = *(a2 + 153);
      v11 = a2[5];
      v164[4] = a2[4];
      v164[5] = v11;
      v12 = a2[6];
      v164[7] = a2[7];
      v164[6] = v12;
      v13 = a2[1];
      v164[0] = *a2;
      v164[1] = v13;
      v14 = a2[2];
      v164[3] = a2[3];
      v164[2] = v14;

      outlined init with copy of UserGraph(v164, v115);
      UserGraph.output(connectedTo:)(&v152, &v117);
      outlined destroy of UserGraph(v164);
      if (!v118)
      {
        goto LABEL_6;
      }

      v167 = v6;
      v15 = v117;
      v133 = v119;
      v134 = v120;
      v135 = v121;
      if (v117 == -7)
      {

        v136 = v119;
        return outlined destroy of String(&v136);
      }

      if ((v117 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else
      {
        v16 = *(a2 + 8);
        if (v117 < *(v16 + 16))
        {
          v111 = v118;
          v17 = v16 + 48 * v117;
          v18 = *(v17 + 32);
          v19 = *(v17 + 40);
          v20 = *(v17 + 48);
          if (v18 >> 61)
          {
            v38 = *(v17 + 32);
            outlined copy of NodePersonality(v38);

            outlined consume of NodePersonality(v38);

            v137 = v119;
            return outlined destroy of String(&v137);
          }

          v21 = *(v17 + 64);
          v106 = *(v17 + 56);
          v107 = v21;
          LODWORD(v108) = *(v17 + 72);
          v22 = *(v18 + 88);
          v109 = v20;
          v110 = v22;
          v23 = v18;
          v24 = swift_dynamicCastClass();
          if (v24)
          {
            v26 = *(v23 + 48);
            v25 = *(v23 + 64);
            v27 = *(v23 + 16);
            v28 = *(v23 + 32);
            v116 = *(v23 + 80);
            v115[0] = v27;
            v115[1] = v28;
            v115[2] = v26;
            v115[3] = v25;
            v29 = v23;
            *(&v105 + 1) = v19;
            if (v116 == 6)
            {
              v30 = *(&v115[0] + 1);
              v31 = *(v24 + 24);
              v104 = *&v115[0];
              *&v105 = v29;
              if (v31)
              {
                v32 = _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v9, v31);
                if ((v32 & 1) == 0)
                {

                  outlined copy of NodePersonality(v105);

                  v54 = MEMORY[0x277D837D0];
                  v55 = MEMORY[0x2667717B0](v9, MEMORY[0x277D837D0]);
                  v57 = v56;

                  *&v112 = v55;
                  *(&v112 + 1) = v57;
                  MEMORY[0x266771550](540877088, 0xE400000000000000);
                  v58 = MEMORY[0x2667717B0](v31, v54);
                  MEMORY[0x266771550](v58);

                  v59 = v55;
                  v60 = v57;
                  if (one-time initialization token for logger != -1)
                  {
                    swift_once();
                  }

                  v61 = type metadata accessor for Logger();
                  __swift_project_value_buffer(v61, logger);

                  v62 = Logger.logObject.getter();
                  v63 = static os_log_type_t.error.getter();

                  if (os_log_type_enabled(v62, v63))
                  {
                    v64 = swift_slowAlloc();
                    v65 = swift_slowAlloc();
                    *&v112 = v65;
                    *v64 = 136315138;
                    *(v64 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v60, &v112);
                    _os_log_impl(&dword_265D7D000, v62, v63, "%s", v64, 0xCu);
                    __swift_destroy_boxed_opaque_existential_1Tm(v65);
                    MEMORY[0x266773120](v65, -1, -1);
                    MEMORY[0x266773120](v64, -1, -1);
                  }

                  lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
                  swift_allocError();
                  *v66 = 44;
                  *(v66 + 8) = v59;
                  *(v66 + 16) = v60;
                  swift_willThrow();

                  outlined consume of NodePersonality(v105);

                  v140 = v133;
                  v37 = &v140;
                  goto LABEL_51;
                }

                v102 = &v101;
                v114 = __PAIR128__(v30, v104);
                MEMORY[0x28223BE20](v32);
                v100 = &v114;
                v103 = v30;

                outlined copy of NodePersonality(v105);

                outlined init with copy of SGDataTypeStorage(v115, &v112);
                v33 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v99, v9);

                if ((v33 & 1) == 0)
                {
                  *&v114 = 0;
                  *(&v114 + 1) = 0xE000000000000000;
                  MEMORY[0x266771550](v104, v103);
                  outlined destroy of SGDataTypeStorage(v115);
                  MEMORY[0x266771550](32, 0xE100000000000000);
                  v34 = v105;
                  v112 = v105;
                  *&v113[0] = v109;
                  *(&v113[0] + 1) = v106;
                  *&v113[1] = v107;
                  BYTE8(v113[1]) = v108;
                  _print_unlocked<A, B>(_:_:)();
                  v35 = v114;
                  lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
                  swift_allocError();
                  *v36 = 25;
                  *(v36 + 8) = v35;
                  swift_willThrow();

                  outlined consume of NodePersonality(v34);

                  v141 = v133;
                  v37 = &v141;
LABEL_51:
                  outlined destroy of String(v37);
                }
              }

              else
              {
                v102 = &v101;
                v103 = *(&v115[0] + 1);
                v114 = v115[0];
                MEMORY[0x28223BE20](v24);
                v100 = &v114;

                outlined copy of NodePersonality(v29);

                outlined init with copy of SGDataTypeStorage(v115, &v112);
                if ((specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v99, v9) & 1) == 0)
                {
                  if (one-time initialization token for logger != -1)
                  {
                    swift_once();
                  }

                  v67 = type metadata accessor for Logger();
                  __swift_project_value_buffer(v67, logger);

                  outlined init with copy of SGDataTypeStorage(v115, &v112);
                  v68 = Logger.logObject.getter();
                  v69 = static os_log_type_t.error.getter();
                  outlined destroy of SGDataTypeStorage(v115);

                  if (os_log_type_enabled(v68, v69))
                  {
                    v70 = swift_slowAlloc();
                    v71 = swift_slowAlloc();
                    *&v112 = v71;
                    *v70 = 136315394;
                    v72 = v104;
                    *(v70 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v104, v103, &v112);
                    *(v70 + 12) = 2080;
                    v73 = MEMORY[0x2667717B0](v9, MEMORY[0x277D837D0]);
                    v75 = v74;

                    v76 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v73, v75, &v112);

                    *(v70 + 14) = v76;
                    _os_log_impl(&dword_265D7D000, v68, v69, "Enum value %s not a memeber of enum set %s", v70, 0x16u);
                    swift_arrayDestroy();
                    MEMORY[0x266773120](v71, -1, -1);
                    MEMORY[0x266773120](v70, -1, -1);

                    v77 = v103;
                    v78 = v109;
                  }

                  else
                  {

                    v78 = v109;
                    v77 = v103;
                    v72 = v104;
                  }

                  *&v114 = 0;
                  *(&v114 + 1) = 0xE000000000000000;
                  MEMORY[0x266771550](v72, v77);
                  outlined destroy of SGDataTypeStorage(v115);
                  MEMORY[0x266771550](32, 0xE100000000000000);
                  v87 = v105;
                  v112 = v105;
                  *&v113[0] = v78;
                  *(&v113[0] + 1) = v106;
                  *&v113[1] = v107;
                  BYTE8(v113[1]) = v108;
                  _print_unlocked<A, B>(_:_:)();
                  v88 = v114;
                  lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
                  swift_allocError();
                  *v89 = 25;
                  *(v89 + 8) = v88;
                  swift_willThrow();

                  outlined consume of NodePersonality(v87);

                  v139 = v133;
                  v37 = &v139;
                  goto LABEL_51;
                }
              }

              v108 = MaterialXDataType.asMetalDataType.getter();
              if (v108)
              {
                v46 = v103;
                v47 = v104;
                v48._countAndFlagsBits = v104;
                v48._object = v103;
                v49 = MetalDataType.convertEnumConstant(_:)(v48);
                if (v49.value._object)
                {
                  outlined destroy of SGDataTypeStorage(v115);
                  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMR);
                  v50 = swift_allocObject();
                  *(v50 + 16) = xmmword_265F1F670;
                  *(v50 + 32) = 7632239;
                  v107 = v50 + 32;
                  v51 = v108;
                  *(v50 + 40) = 0xE300000000000000;
                  *(v50 + 48) = v51;
                  v52 = swift_allocObject();
                  *(v52 + 16) = v49;
                  *(v52 + 80) = 6;
                  *(v52 + 88) = v51;
                  swift_retain_n();

                  UserGraph.insertNode(inputs:outputs:shaderGraphData:)(MEMORY[0x277D84F90], v50, v52, &v122);

                  swift_setDeallocating();
                  v53 = *(v50 + 16);
                  swift_arrayDestroy();
                  swift_deallocClassInstance();
                  v142 = v119;
                  v157 = v119;
                  v158 = v120;
                  v166 = v153;
                  v160 = v152;
                  v161 = v153;
                  v162 = v154;
                  v159 = v121;
                  v163 = v155;
                  v156[0] = v15;
                  v156[1] = v111;

                  outlined init with copy of String(&v142, &v112);
                  outlined init with copy of String(&v166, &v112);
                  UserGraph.remove(_:)(v156);
                  outlined destroy of Edge(v156);
                  v151 = *&v123[0];
                  specialized ShaderGraphNode.output(labeled:)(&v124, 7632239, 0xE300000000000000, *&v123[0]);
                  if (v125)
                  {
                    v129[0] = v124;
                    v129[1] = v125;
                    v130 = v126;
                    v131 = v127;
                    v132 = v128;
                    UserGraph.connect(_:to:)(v129, &v152);

                    v146 = v130;
                    outlined destroy of String(&v146);
                    v148 = v122;
                    outlined destroy of NodePersonality(&v148);
                    v147 = *(&v122 + 1);
                    outlined destroy of [Input](&v147, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
                    outlined destroy of [Input](&v151, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

                    outlined consume of NodePersonality(v105);

                    return outlined destroy of String(&v142);
                  }

                  *&v114 = 0;
                  *(&v114 + 1) = 0xE000000000000000;
                  MEMORY[0x266771550](7632239, 0xE300000000000000);
                  MEMORY[0x266771550](32, 0xE100000000000000);
                  v112 = v122;
                  v113[0] = v123[0];
                  *(v113 + 9) = *(v123 + 9);
                  _print_unlocked<A, B>(_:_:)();
                  v97 = v114;
                  lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
                  swift_allocError();
                  *v98 = 14;
                  *(v98 + 8) = v97;
                  swift_willThrow();
                  v150 = v122;
                  outlined destroy of NodePersonality(&v150);
                  v149 = *(&v122 + 1);
                  outlined destroy of [Input](&v149, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
                  outlined destroy of [Input](&v151, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

                  outlined consume of NodePersonality(v105);

                  v37 = &v142;
                }

                else
                {
                  *&v112 = 0;
                  *(&v112 + 1) = 0xE000000000000000;
                  _StringGuts.grow(_:)(39);

                  *&v112 = 0xD000000000000012;
                  *(&v112 + 1) = 0x8000000265F313E0;
                  MEMORY[0x266771550](v47, v46);
                  outlined destroy of SGDataTypeStorage(v115);
                  MEMORY[0x266771550](0xD000000000000013, 0x8000000265F31420);
                  v90 = v112;
                  if (one-time initialization token for logger != -1)
                  {
                    swift_once();
                  }

                  v91 = type metadata accessor for Logger();
                  __swift_project_value_buffer(v91, logger);

                  v92 = Logger.logObject.getter();
                  v93 = static os_log_type_t.error.getter();

                  if (os_log_type_enabled(v92, v93))
                  {
                    v94 = swift_slowAlloc();
                    v95 = swift_slowAlloc();
                    *&v112 = v95;
                    *v94 = 136315138;
                    *(v94 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v90, *(&v90 + 1), &v112);
                    _os_log_impl(&dword_265D7D000, v92, v93, "%s", v94, 0xCu);
                    __swift_destroy_boxed_opaque_existential_1Tm(v95);
                    MEMORY[0x266773120](v95, -1, -1);
                    MEMORY[0x266773120](v94, -1, -1);
                  }

                  lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
                  swift_allocError();
                  *v96 = 44;
                  *(v96 + 8) = v90;
                  swift_willThrow();

                  outlined consume of NodePersonality(v105);

                  v143 = v133;
                  v37 = &v143;
                }
              }

              else
              {
                outlined destroy of SGDataTypeStorage(v115);
                *&v112 = 0;
                *(&v112 + 1) = 0xE000000000000000;
                _StringGuts.grow(_:)(39);

                *&v112 = 0xD000000000000012;
                *(&v112 + 1) = 0x8000000265F313E0;
                v79 = MaterialXDataType.description.getter();
                MEMORY[0x266771550](v79);

                MEMORY[0x266771550](0xD000000000000013, 0x8000000265F31400);
                v80 = v112;
                if (one-time initialization token for logger != -1)
                {
                  swift_once();
                }

                v81 = type metadata accessor for Logger();
                __swift_project_value_buffer(v81, logger);

                v82 = Logger.logObject.getter();
                v83 = static os_log_type_t.error.getter();

                if (os_log_type_enabled(v82, v83))
                {
                  v84 = swift_slowAlloc();
                  v85 = swift_slowAlloc();
                  *&v112 = v85;
                  *v84 = 136315138;
                  *(v84 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v80, *(&v80 + 1), &v112);
                  _os_log_impl(&dword_265D7D000, v82, v83, "%s", v84, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1Tm(v85);
                  MEMORY[0x266773120](v85, -1, -1);
                  MEMORY[0x266773120](v84, -1, -1);
                }

                lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
                swift_allocError();
                *v86 = 44;
                *(v86 + 8) = v80;
                swift_willThrow();

                outlined consume of NodePersonality(v105);

                v144 = v133;
                v37 = &v144;
              }

              goto LABEL_51;
            }

            outlined copy of NodePersonality(v23);

            *&v114 = 0;
            *(&v114 + 1) = 0xE000000000000000;
            v15 = v23;
            *&v112 = v23;
            *(&v112 + 1) = v19;
            *&v113[0] = v109;
            *(&v113[0] + 1) = v106;
            *&v113[1] = v107;
            BYTE8(v113[1]) = v108;
            _print_unlocked<A, B>(_:_:)();
            v8 = 0;
            v9 = 0xE000000000000000;
            if (one-time initialization token for logger == -1)
            {
LABEL_19:
              v39 = type metadata accessor for Logger();
              __swift_project_value_buffer(v39, logger);

              v40 = Logger.logObject.getter();
              v41 = static os_log_type_t.error.getter();

              if (os_log_type_enabled(v40, v41))
              {
                v42 = swift_slowAlloc();
                v43 = swift_slowAlloc();
                *&v112 = v43;
                *v42 = 136315138;
                v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v112);

                *(v42 + 4) = v44;
                _os_log_impl(&dword_265D7D000, v40, v41, "enum value isn't a string %s", v42, 0xCu);
                __swift_destroy_boxed_opaque_existential_1Tm(v43);
                MEMORY[0x266773120](v43, -1, -1);
                MEMORY[0x266773120](v42, -1, -1);
              }

              else
              {
              }

              lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
              swift_allocError();
              *v45 = 44;
              *(v45 + 8) = 0;
              *(v45 + 16) = 0;
              swift_willThrow();

              outlined consume of NodePersonality(v15);

              v145 = v133;
              v37 = &v145;
              goto LABEL_51;
            }

LABEL_55:
            swift_once();
            goto LABEL_19;
          }

          v138 = v119;
          outlined destroy of String(&v138);
LABEL_6:
        }
      }

      __break(1u);
      goto LABEL_55;
    }
  }

  return result;
}

uint64_t closure #1 in UserGraph.insertParamsInputs(surface:type:nodeDefStore:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char **a7)
{
  v12 = *a1;
  v11 = a1[1];
  v14 = a1[2];
  v13 = a1[3];
  result = specialized Set.contains(_:)(v13, a2);
  if ((result & 1) == 0 || (v12 & 0xE000000000000000) != 0xA000000000000000)
  {
    return result;
  }

  v68 = v14;
  v69 = v11;
  v66 = a6;
  v67 = v13;
  v65 = v12;
  v16 = v12 & 0x1FFFFFFFFFFFFFFFLL;
  v17 = *(v16 + 16);
  v18 = *(v16 + 24);
  v19 = one-time initialization token for realityKitParamGetterFuncs;

  if (v19 != -1)
  {
    swift_once();
  }

  v20 = static ShaderGraphNode.realityKitParamGetterFuncs;

  v21 = specialized Set.contains(_:)(v17, v18, v20);

  if ((v21 & 1) == 0)
  {
  }

  MEMORY[0x266771550](95, 0xE100000000000000);

  MEMORY[0x266771550](a3, a4);

  v63 = v17;
  v64 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph9InputSpecVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph9InputSpecVGMR);
  inited = swift_initStackObject();
  v23 = inited;
  *(inited + 16) = xmmword_265F1F670;
  *(inited + 32) = 12324;
  *(inited + 40) = 0xE200000000000000;
  *(inited + 48) = a5;
  v24 = *(v69 + 16);
  v25 = MEMORY[0x277D84F90];
  if (v24)
  {
    v60 = inited;
    v61 = v16;
    v73 = MEMORY[0x277D84F90];
    swift_retain_n();
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v24, 0);
    v26 = v73;
    v27 = (v69 + 56);
    do
    {
      v28 = *(v27 - 2);
      v29 = *(v27 - 1);
      v30 = *v27;
      v32 = *(v73 + 16);
      v31 = *(v73 + 24);

      if (v32 >= v31 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1);
      }

      *(v73 + 16) = v32 + 1;
      v33 = (v73 + 24 * v32);
      v33[4] = v29;
      v33[5] = v30;
      v33[6] = v28;
      v27 += 7;
      --v24;
    }

    while (v24);
    v23 = v60;
    v16 = v61;
    v25 = MEMORY[0x277D84F90];
  }

  else
  {
    swift_retain_n();
    v26 = MEMORY[0x277D84F90];
  }

  specialized Array.append<A>(contentsOf:)(v26);
  v34 = v23;
  v35 = v68;
  if (v68[2] != 1)
  {

    _StringGuts.grow(_:)(43);
    MEMORY[0x266771550](0xD000000000000029, 0x8000000265F310B0);
    v71 = *(v16 + 16);
    v72 = *(v16 + 24);
    swift_bridgeObjectRetain_n();
    v58 = String.init<A>(describing:)();
    MEMORY[0x266771550](v58);

    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    *v59 = 40;
    *(v59 + 8) = 0;
    *(v59 + 16) = 0xE000000000000000;
    swift_willThrow();
  }

  v36 = v68[7];
  v74 = v25;
  v62 = v68[5];
  swift_retain_n();

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 0);
  v37 = v25;
  v39 = v68[5];
  v38 = v68[6];
  v40 = v68[7];
  v42 = *(v74 + 16);
  v41 = *(v74 + 24);

  if (v42 >= v41 >> 1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v42 + 1, 1);
    v37 = v74;
  }

  *(v37 + 16) = v42 + 1;
  v43 = (v37 + 24 * v42);
  v43[4] = v38;
  v43[5] = v40;
  v43[6] = v39;
  v44 = swift_allocObject();
  v45 = v62;
  *(v44 + 16) = v63;
  *(v44 + 24) = v64;
  *(v44 + 32) = v62;

  v46 = v66;
  UserGraph.insertNode(inputs:outputs:shaderGraphData:)(v34, v37, v44 | 0x2000000000000000, &v75);

  v47 = *(&v75 + 1);
  outlined copy of NodePersonality(v65);

  specialized Sequence.forEach(_:)(v47, v69, v66);
  outlined consume of NodePersonality(v65);

  v48 = v76;
  outlined copy of NodePersonality(v65);

  specialized Sequence.forEach(_:)(v48, v68, v66);
  outlined consume of NodePersonality(v65);

  v49 = v67;
  specialized UserGraph.removeEdges(connectedTo:)(v67);
  v50 = *(v66 + 64);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v66 + 64) = v50;
  if (isUniquelyReferenced_nonNull_native)
  {
    if ((v67 & 0x8000000000000000) == 0)
    {
      goto LABEL_19;
    }

LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v50 = specialized _ArrayBuffer._consumeAndCreateNew()(v50);
  *(v66 + 64) = v50;
  if ((v67 & 0x8000000000000000) != 0)
  {
    goto LABEL_28;
  }

LABEL_19:
  if (v67 >= *(v50 + 2))
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v46 = &v50[48 * v67 + 32];
  ShaderGraphNode.update(id:)(-7);
  if (!*(v47 + 16))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v48 = *(v47 + 32);
  v46 = *(v47 + 40);
  v45 = *(v47 + 48);
  v49 = *(v47 + 56);
  v35 = *(v47 + 64);
  v52 = *(v47 + 72);
  v67 = *(v47 + 80);
  v50 = *a7;

  v53 = swift_isUniquelyReferenced_nonNull_native();
  *a7 = v50;
  LOBYTE(v68) = v52;
  if ((v53 & 1) == 0)
  {
LABEL_31:
    v50 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v50 + 2) + 1, 1, v50);
    *a7 = v50;
  }

  v55 = *(v50 + 2);
  v54 = *(v50 + 3);
  if (v55 >= v54 >> 1)
  {
    *a7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v54 > 1), v55 + 1, 1, v50);
  }

  v77 = v75;
  outlined destroy of NodePersonality(&v77);

  v56 = *a7;
  *(v56 + 2) = v55 + 1;
  v57 = &v56[56 * v55];
  *(v57 + 4) = v48;
  *(v57 + 5) = v46;
  *(v57 + 6) = v45;
  *(v57 + 7) = v49;
  *(v57 + 8) = v35;
  v57[72] = v68;
  *(v57 + 10) = v67;
  return result;
}

uint64_t UserGraph.materialXImageNodes.getter(uint64_t a1, void *a2)
{
  v27._countAndFlagsBits = a1;
  v27._object = a2;
  v28 = *(v2 + 64);
  v3 = *(v28 + 16);

  if (v3)
  {
    v5 = 0;
    v6 = result + 32;
    v25 = MEMORY[0x277D84F90];
    v26 = result + 32;
    while (v5 < v3)
    {
      v8 = v6 + 48 * v5;
      v9 = *(v8 + 24);
      if (v9 == -7)
      {
        v7 = __OFADD__(v5++, 1);
        if (v7)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v7 = __OFADD__(v5++, 1);
        if (v7)
        {
          goto LABEL_20;
        }

        v10 = *v8;
        if (*v8 >> 61 == 5)
        {
          v12 = *(v8 + 8);
          v11 = *(v8 + 16);
          v13 = *(v8 + 32);
          v14 = *(v8 + 40);
          v15 = *((v10 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          v16 = *((v10 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
          outlined copy of NodePersonality(v10);

          LOBYTE(v15) = String.hasPrefix(_:)(v27);

          if (v15)
          {
            v24 = v13;
            v17 = v25;
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v25 + 16) + 1, 1);
              v17 = v25;
            }

            v6 = v26;
            v18 = v24;
            v19 = v14;
            v21 = *(v17 + 16);
            v20 = *(v17 + 24);
            v22 = v21 + 1;
            if (v21 >= v20 >> 1)
            {
              result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1);
              v19 = v14;
              v18 = v24;
              v22 = v21 + 1;
              v17 = v25;
            }

            *(v17 + 16) = v22;
            v25 = v17;
            v23 = v17 + 48 * v21;
            *(v23 + 32) = v10;
            *(v23 + 40) = v12;
            *(v23 + 48) = v11;
            *(v23 + 56) = v9;
            *(v23 + 64) = v18;
            *(v23 + 72) = v19;
          }

          else
          {
            outlined consume of NodePersonality(v10);

            v6 = v26;
          }
        }
      }

      if (v5 >= v3)
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
    v25 = MEMORY[0x277D84F90];
LABEL_17:
    outlined destroy of [Input](&v28, &_sSay11ShaderGraph0aB4NodeVGMd, &_sSay11ShaderGraph0aB4NodeVGMR);
    return v25;
  }

  return result;
}

uint64_t ShaderGraphNode.isMaterialXImageNode.getter(uint64_t a1, void *a2)
{
  if (*v2 >> 61 != 5)
  {
    return 0;
  }

  v3 = *((*v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v4 = *((*v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);

  v7._countAndFlagsBits = a1;
  v7._object = a2;
  LOBYTE(v3) = String.hasPrefix(_:)(v7);

  return v3 & 1;
}

uint64_t UserGraph.materialXCubeimageNodes.getter()
{
  v24 = *(v0 + 64);
  v1 = *(v24 + 16);

  if (!v1)
  {
    v22 = MEMORY[0x277D84F90];
LABEL_18:
    outlined destroy of [Input](&v24, &_sSay11ShaderGraph0aB4NodeVGMd, &_sSay11ShaderGraph0aB4NodeVGMR);
    return v22;
  }

  v3 = 0;
  v4 = result + 32;
  v22 = MEMORY[0x277D84F90];
  v23 = result + 32;
  while (v3 < v1)
  {
    v6 = v4 + 48 * v3;
    v7 = *(v6 + 24);
    if (v7 == -7)
    {
      v5 = __OFADD__(v3++, 1);
      if (v5)
      {
        goto LABEL_20;
      }

LABEL_4:
      if (v3 >= v1)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v5 = __OFADD__(v3++, 1);
      if (v5)
      {
        goto LABEL_21;
      }

      v8 = *v6;
      if (*v6 >> 61 != 5)
      {
        goto LABEL_4;
      }

      v9 = *(v6 + 8);
      v10 = *(v6 + 16);
      v11 = *(v6 + 32);
      v12 = *(v6 + 40);
      v13 = *((v8 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v14 = *((v8 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      outlined copy of NodePersonality(v8);

      v15._object = 0x8000000265F2D850;
      v15._countAndFlagsBits = 0xD000000000000017;
      LOBYTE(v13) = String.hasPrefix(_:)(v15);

      if ((v13 & 1) == 0)
      {
        outlined consume of NodePersonality(v8);

        v4 = v23;
        goto LABEL_4;
      }

      v16 = v22;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v22 + 16) + 1, 1);
        v16 = v22;
      }

      v17 = v11;
      v19 = *(v16 + 16);
      v18 = *(v16 + 24);
      v20 = v19 + 1;
      if (v19 >= v18 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1);
        v17 = v11;
        v20 = v19 + 1;
        v16 = v22;
      }

      *(v16 + 16) = v20;
      v22 = v16;
      v21 = v16 + 48 * v19;
      *(v21 + 32) = v8;
      *(v21 + 40) = v9;
      *(v21 + 48) = v10;
      *(v21 + 56) = v7;
      *(v21 + 64) = v17;
      *(v21 + 72) = v12;
      v4 = v23;
      if (v3 >= v1)
      {
        goto LABEL_18;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t ShaderGraphNode.isModernRealityKitTextureNode.getter()
{
  if (*v0 >> 61 != 5)
  {
    return 0;
  }

  v1 = *((*v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v2 = *((*v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);

  v3._object = 0x8000000265F30DD0;
  v3._countAndFlagsBits = 0xD000000000000014;
  LOBYTE(v1) = String.hasPrefix(_:)(v3);

  return v1 & 1;
}

uint64_t ShaderGraphNode.isRealityKit2DImageArrayNode.getter()
{
  if (*v0 >> 61 != 5)
  {
    return 0;
  }

  v1 = *((*v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v2 = *((*v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);

  v3._object = 0x8000000265F30DF0;
  v3._countAndFlagsBits = 0xD00000000000001DLL;
  LOBYTE(v1) = String.hasPrefix(_:)(v3);

  return v1 & 1;
}

uint64_t ShaderGraphNode.isRealityKit3DImageNode.getter()
{
  if (*v0 >> 61 != 5)
  {
    return 0;
  }

  v1 = *((*v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v2 = *((*v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);

  v3._object = 0x8000000265F30E10;
  v3._countAndFlagsBits = 0xD000000000000018;
  LOBYTE(v1) = String.hasPrefix(_:)(v3);

  return v1 & 1;
}

uint64_t ShaderGraphNode.isModernRealityKitTextureCubeNode.getter()
{
  if (*v0 >> 61 != 5)
  {
    return 0;
  }

  v1 = *((*v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v2 = *((*v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);

  v3._object = 0x8000000265F30E30;
  v3._countAndFlagsBits = 0xD000000000000018;
  LOBYTE(v1) = String.hasPrefix(_:)(v3);

  return v1 & 1;
}

uint64_t one-time initialization function for realityKitSurfaceParamNodes()
{
  result = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  static ShaderGraphNode.realityKitSurfaceParamNodes = result;
  return result;
}

uint64_t *ShaderGraphNode.realityKitSurfaceParamNodes.unsafeMutableAddressor()
{
  if (one-time initialization token for realityKitSurfaceParamNodes != -1)
  {
    swift_once();
  }

  return &static ShaderGraphNode.realityKitSurfaceParamNodes;
}

uint64_t static MaterialXHardcodedNames.realityKitBackgroundBlurNodes.getter(void *a1, uint64_t *a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = *a2;
}

uint64_t static MaterialXHardcodedNames.realityKitBackgroundBlurNodes.setter(uint64_t a1, void *a2, uint64_t *a3)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = *a3;
  *a3 = a1;
}

uint64_t (*static ShaderGraphNode.realityKitSurfaceParamNodes.modify())()
{
  if (one-time initialization token for realityKitSurfaceParamNodes != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return XMLParserDelegate.StringNode.children.modify;
}

uint64_t one-time initialization function for realityKitParamGetterFuncs()
{
  if (one-time initialization token for realityKitGeometryGetterFuncs != -1)
  {
    swift_once();
  }

  v0 = realityKitGeometryGetterFuncs;
  v1 = one-time initialization token for realityKitSurfaceGetterFuncs;

  if (v1 != -1)
  {
    swift_once();
  }

  v3 = specialized Set.union<A>(_:)(v2, v0);
  if (one-time initialization token for realityKitSurfaceParamNodes != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  v5 = specialized Set.union<A>(_:)(v4, v3);
  if (one-time initialization token for realityKitBackgroundBlurNodes != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  v7 = specialized Set.union<A>(_:)(v6, v5);
  if (one-time initialization token for realityKitLightSpillNodes != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  v9 = specialized Set.union<A>(_:)(v8, v7);
  if (one-time initialization token for realityKitHoverStateNodes != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  result = specialized Set.union<A>(_:)(v10, v9);
  static ShaderGraphNode.realityKitParamGetterFuncs = result;
  return result;
}

uint64_t specialized Set.union<A>(_:)(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    specialized Set._Variant.insert(_:)(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

double UserGraph.getArgument(name:type:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_265F1F670;
  *(inited + 32) = 7632239;
  *(inited + 40) = 0xE300000000000000;
  *(inited + 48) = a3;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;

  UserGraph.insertNode(inputs:outputs:shaderGraphData:)(MEMORY[0x277D84F90], inited, v9 | 0x6000000000000000, &v13);

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

uint64_t Input.prependFunction(_:label:arguments:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, _OWORD *a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_265F1F670;
  v9 = v4[1];
  *(inited + 32) = 7632239;
  *(inited + 40) = 0xE300000000000000;
  *(inited + 48) = v9;
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = v9;
  swift_retain_n();

  UserGraph.insertNode(inputs:outputs:shaderGraphData:)(a3, inited, v10 | 0x2000000000000000, &v16);

  swift_setDeallocating();
  v11 = *(inited + 16);
  swift_arrayDestroy();
  v30[0] = *&v17[0];
  specialized ShaderGraphNode.output(labeled:)(&v18, 7632239, 0xE300000000000000, *&v17[0]);
  if (v19)
  {
    v23[0] = v18;
    v23[1] = v19;
    v24 = v20;
    v25 = v21;
    v26 = v22;
    UserGraph.connect(_:to:)(v23, v4);

    v27 = v24;
    result = outlined destroy of String(&v27);
    v13 = v17[0];
    *a4 = v16;
    a4[1] = v13;
    *(a4 + 25) = *(v17 + 9);
  }

  else
  {
    MEMORY[0x266771550](7632239, 0xE300000000000000);
    MEMORY[0x266771550](32, 0xE100000000000000);
    _print_unlocked<A, B>(_:_:)();
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    *v14 = 14;
    *(v14 + 8) = 0;
    *(v14 + 16) = 0xE000000000000000;
    swift_willThrow();
    v29 = v16;
    outlined destroy of NodePersonality(&v29);
    v28 = *(&v16 + 1);
    outlined destroy of [Input](&v28, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    return outlined destroy of [Input](v30, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
  }

  return result;
}

uint64_t Output.appendUnaryFunction(_:resultType:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v33[4] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph9InputSpecVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph9InputSpecVGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_265F1F670;
  v9 = *(v5 + 8);
  *(inited + 32) = 28265;
  *(inited + 40) = 0xE200000000000000;
  *(inited + 48) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMR);
  v10 = swift_initStackObject();
  *(v10 + 16) = xmmword_265F1F670;
  *(v10 + 32) = 7632239;
  *(v10 + 40) = 0xE300000000000000;
  *(v10 + 48) = a3;
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  *(v11 + 32) = a3;
  swift_retain_n();

  UserGraph.insertNode(inputs:outputs:shaderGraphData:)(inited, v10, v11 | 0x2000000000000000, &v19);

  swift_setDeallocating();
  v12 = *(v10 + 16);
  swift_arrayDestroy();
  swift_setDeallocating();
  v13 = *(inited + 16);
  swift_arrayDestroy();
  v33[0] = *(&v19 + 1);
  specialized ShaderGraphNode.output(labeled:)(&v21, 28265, 0xE200000000000000, *(&v19 + 1));
  if (v22)
  {
    v26[0] = v21;
    v26[1] = v22;
    v27 = v23;
    v28 = v24;
    v29 = v25;
    UserGraph.connect(_:to:)(v5, v26);

    v30 = v27;
    result = outlined destroy of String(&v30);
    v15 = v20[0];
    *a5 = v19;
    a5[1] = v15;
    *(a5 + 25) = *(v20 + 9);
  }

  else
  {
    MEMORY[0x266771550](28265, 0xE200000000000000);
    MEMORY[0x266771550](32, 0xE100000000000000);
    _print_unlocked<A, B>(_:_:)();
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    *v16 = 11;
    *(v16 + 8) = 0;
    *(v16 + 16) = 0xE000000000000000;
    swift_willThrow();
    v32 = v19;
    outlined destroy of NodePersonality(&v32);
    outlined destroy of [Input](v33, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    v31 = *&v20[0];
    return outlined destroy of [Input](&v31, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
  }

  return result;
}

int64_t specialized OrderedSet.remove(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = *(v5 + 16);
  if (!*v2)
  {
    result = specialized Collection<>.firstIndex(of:)(a1, v5 + 32, *(v5 + 16));
    v13 = 0;
    if (v21)
    {
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      goto LABEL_8;
    }

LABEL_7:
    result = specialized OrderedSet._removeExistingMember(at:in:)(result, v13, v22);
    v13 = v22[0];
    v15 = v22[1];
    v16 = v22[2];
    v17 = v22[3];
    v18 = v22[4];
    v19 = v23;
    v20 = v24;
    goto LABEL_8;
  }

  v8 = *v2;

  v9 = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(a1, v5 + 32, v6, v4 + 16, v4 + 32);
  v11 = v10;
  v13 = v12;

  if ((v11 & 1) == 0)
  {
    result = v9;
    goto LABEL_7;
  }

  v13 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
LABEL_8:
  *a2 = v13;
  a2[1] = v15;
  a2[2] = v16;
  a2[3] = v17;
  a2[4] = v18;
  a2[5] = v19;
  a2[6] = v20;
  return result;
}

void specialized OrderedSet.remove(_:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *v2;
  v4 = v2[1];
  v6 = v4 + 32;
  v7 = *(v4 + 16);
  if (!*v2)
  {
    if (!v7)
    {
      goto LABEL_14;
    }

    v9 = 0;
    while (1)
    {
      outlined init with copy of [Input](v6, v21, &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGMd, &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGMR);
      Strong = swift_unknownObjectWeakLoadStrong();
      v15 = swift_unknownObjectWeakLoadStrong();
      v16 = v15;
      if (!Strong)
      {
        break;
      }

      if (!v15)
      {
        outlined destroy of [Input](v21, &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGMd, &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGMR);
        v16 = Strong;
LABEL_7:

        goto LABEL_8;
      }

      type metadata accessor for SGEdge();
      v17 = static NSObject.== infix(_:_:)();
      outlined destroy of [Input](v21, &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGMd, &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGMR);

      if (v17)
      {
LABEL_15:
        v13 = 0;
        goto LABEL_16;
      }

LABEL_8:
      ++v9;
      v6 += 8;
      if (v7 == v9)
      {
        goto LABEL_14;
      }
    }

    outlined destroy of [Input](v21, &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGMd, &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGMR);
    if (!v16)
    {
      goto LABEL_15;
    }

    goto LABEL_7;
  }

  v8 = *v2;

  v9 = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(a1, v6, v7, (v5 + 16), v5 + 32);
  v11 = v10;
  v13 = v12;

  if ((v11 & 1) == 0)
  {
LABEL_16:
    v18 = a2;
    specialized OrderedSet._removeExistingMember(at:in:)(v9, v13, a2);
    v19 = 0;
    goto LABEL_17;
  }

LABEL_14:
  v18 = a2;
  *a2 = 0;
  v19 = 1;
LABEL_17:
  *(v18 + 8) = v19;
}

unint64_t _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC11ShaderGraph15MaterialXTargetC_Tt0g5Tf4g_n(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = __CocoaSet.count.getter();
    if (result)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy11ShaderGraph15MaterialXTargetCGMd, &_ss11_SetStorageCy11ShaderGraph15MaterialXTargetCGMR);
      result = static _SetStorage.allocate(capacity:)();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (!v2)
  {
LABEL_4:
    v5 = *(v4 + 16);
    if (!v5)
    {
      return v3;
    }

    goto LABEL_9;
  }

LABEL_8:
  result = __CocoaSet.count.getter();
  v5 = result;
  if (!result)
  {
    return v3;
  }

LABEL_9:
  v6 = v3 + 56;
  v38 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    while (1)
    {
      result = MEMORY[0x266772030](v7, v1);
      v8 = __OFADD__(v7++, 1);
      if (v8)
      {
        break;
      }

      v9 = result;
      v10 = *(v3 + 40);
      Hasher.init(_seed:)();
      v11 = *(v9 + 16);
      v12 = *(v9 + 24);
      String.hash(into:)();
      specialized Optional<A>.hash(into:)(v39, *(v9 + 32));
      result = Hasher._finalize()();
      v13 = ~(-1 << *(v3 + 32));
      v14 = result & v13;
      v15 = (result & v13) >> 6;
      v16 = *(v6 + 8 * v15);
      v17 = 1 << (result & v13);
      if ((v17 & v16) != 0)
      {
        while (1)
        {
          v18 = *(*(v3 + 48) + 8 * v14);

          v20 = specialized static MaterialXTarget.== infix(_:_:)(v19, v9);

          if (v20)
          {
            break;
          }

          v14 = (v14 + 1) & v13;
          v15 = v14 >> 6;
          v16 = *(v6 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            v5 = v38;
            goto LABEL_17;
          }
        }

        swift_unknownObjectRelease();
        v5 = v38;
        if (v7 == v38)
        {
          return v3;
        }
      }

      else
      {
LABEL_17:
        *(v6 + 8 * v15) = v17 | v16;
        *(*(v3 + 48) + 8 * v14) = v9;
        v21 = *(v3 + 16);
        v8 = __OFADD__(v21, 1);
        v22 = v21 + 1;
        if (v8)
        {
          goto LABEL_31;
        }

        *(v3 + 16) = v22;
        if (v7 == v5)
        {
          return v3;
        }
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {
    v23 = 0;
    v37 = v1 + 32;
    v24 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v23 != v24)
    {
      v25 = *(v37 + 8 * v23);
      v26 = *(v3 + 40);
      Hasher.init(_seed:)();
      v27 = *(v25 + 16);
      v28 = *(v25 + 24);

      String.hash(into:)();
      specialized Optional<A>.hash(into:)(v39, *(v25 + 32));
      result = Hasher._finalize()();
      v29 = ~(-1 << *(v3 + 32));
      for (i = result & v29; ; i = (i + 1) & v29)
      {
        v31 = *(v6 + 8 * (i >> 6));
        if (((1 << i) & v31) == 0)
        {
          break;
        }

        v32 = *(*(v3 + 48) + 8 * i);

        v34 = specialized static MaterialXTarget.== infix(_:_:)(v33, v25);

        if (v34)
        {

          goto LABEL_22;
        }
      }

      *(v6 + 8 * (i >> 6)) = (1 << i) | v31;
      *(*(v3 + 48) + 8 * i) = v25;
      v35 = *(v3 + 16);
      v8 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v8)
      {
        goto LABEL_33;
      }

      *(v3 + 16) = v36;
LABEL_22:
      if (++v23 == v38)
      {
        return v3;
      }
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

void *specialized UserGraph.insertGeomPropGetter(_:outputType:nodeDefStore:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  result = GeomPropDef.GeomProp.paramGetterNodeDefName(type:)(a2, *(a1 + 24), *(a1 + 32), *(a1 + 40));
  if (!v4)
  {
    specialized NodeDefStore.createNode(in:nodeDefName:)(result, v9, a3, &v28);
    v92[4] = 0;

    v10 = *(&v28 + 1);
    v92[0] = *(&v28 + 1);
    result = specialized ShaderGraphNode.output(labeled:)(&v30, 0x7865646E69, 0xE500000000000000, *(&v28 + 1));
    v11 = v31;
    if (!v31)
    {
LABEL_10:
      result = specialized ShaderGraphNode.output(labeled:)(&v42, 0x6563617073, 0xE500000000000000, v10);
      v17 = v43;
      if (!v43)
      {
LABEL_25:
        v26 = v29[0];
        *a4 = v28;
        a4[1] = v26;
        *(a4 + 25) = *(v29 + 9);
        return result;
      }

      v58[0] = v42;
      v58[1] = v43;
      v59 = v44;
      v60 = v45;
      v61 = v46;
      if (*(a1 + 41) > 1u)
      {
        if (*(a1 + 41) != 2)
        {

          v74 = v44;
          v23 = &v74;
          goto LABEL_24;
        }

        v19 = 0xE500000000000000;
        v18 = 0x646C726F77;
      }

      else
      {
        if (*(a1 + 41))
        {
          v18 = 0x7463656A626FLL;
        }

        else
        {
          v18 = 0x6C65646F6DLL;
        }

        if (*(a1 + 41))
        {
          v19 = 0xE600000000000000;
        }

        else
        {
          v19 = 0xE500000000000000;
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMR);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_265F1F670;
      *(v20 + 32) = 7632239;
      *(v20 + 40) = 0xE300000000000000;
      *(v20 + 48) = v17;
      v21 = swift_allocObject();
      *(v21 + 16) = v18;
      *(v21 + 24) = v19;
      *(v21 + 80) = 6;
      *(v21 + 88) = v17;
      swift_retain_n();

      UserGraph.insertNode(inputs:outputs:shaderGraphData:)(MEMORY[0x277D84F90], v20, v21, &v47);

      swift_setDeallocating();
      v22 = *(v20 + 16);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v84 = v48;
      specialized ShaderGraphNode.output(labeled:)(&v49, 7632239, 0xE300000000000000, v48);
      if (v50)
      {
        v54[0] = v49;
        v54[1] = v50;
        v55 = v51;
        v56 = v52;
        v57 = v53;
        UserGraph.connect(_:to:)(v54, v58);

        v77 = v55;
        outlined destroy of String(&v77);
        v79 = v47;
        outlined destroy of NodePersonality(&v79);
        v78 = *(&v47 + 1);
        outlined destroy of [Input](&v78, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
        outlined destroy of [Input](&v84, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

        v75 = v59;
        v23 = &v75;
LABEL_24:
        result = outlined destroy of String(v23);
        goto LABEL_25;
      }

      MEMORY[0x266771550](7632239, 0xE300000000000000);
      MEMORY[0x266771550](32, 0xE100000000000000);
      _print_unlocked<A, B>(_:_:)();
      lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
      swift_allocError();
      *v24 = 14;
      *(v24 + 8) = 0;
      *(v24 + 16) = 0xE000000000000000;
      swift_willThrow();
      v83 = v47;
      outlined destroy of NodePersonality(&v83);
      v82 = *(&v47 + 1);
      outlined destroy of [Input](&v82, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      outlined destroy of [Input](&v84, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

      v76 = v59;
      outlined destroy of String(&v76);
      v81 = v28;
      outlined destroy of NodePersonality(&v81);
      outlined destroy of [Input](v92, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v80 = *&v29[0];
      v25 = &v80;
      return outlined destroy of [Input](v25, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
    }

    v66[0] = v30;
    v66[1] = v31;
    v67 = v32;
    v68 = v33;
    v69 = v34;
    if (*(a1 + 56))
    {

      v70 = v32;
      v12 = &v70;
LABEL_9:
      outlined destroy of String(v12);
      goto LABEL_10;
    }

    v13 = *(a1 + 48);
    if (v13 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v13 <= 0x7FFFFFFF)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMR);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_265F1F670;
      *(v14 + 32) = 7632239;
      *(v14 + 40) = 0xE300000000000000;
      *(v14 + 48) = v11;
      v15 = swift_allocObject();
      *(v15 + 16) = v13;
      *(v15 + 80) = 2;
      *(v15 + 88) = v11;
      swift_retain_n();
      UserGraph.insertNode(inputs:outputs:shaderGraphData:)(MEMORY[0x277D84F90], v14, v15, &v35);

      swift_setDeallocating();
      v16 = *(v14 + 16);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v91 = v36;
      specialized ShaderGraphNode.output(labeled:)(&v37, 7632239, 0xE300000000000000, v36);
      if (!v38)
      {
        MEMORY[0x266771550](7632239, 0xE300000000000000);
        MEMORY[0x266771550](32, 0xE100000000000000);
        _print_unlocked<A, B>(_:_:)();
        lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
        swift_allocError();
        *v27 = 14;
        *(v27 + 8) = 0;
        *(v27 + 16) = 0xE000000000000000;
        swift_willThrow();
        v90 = v35;
        outlined destroy of NodePersonality(&v90);
        v89 = *(&v35 + 1);
        outlined destroy of [Input](&v89, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
        outlined destroy of [Input](&v91, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

        v72 = v67;
        outlined destroy of String(&v72);
        v88 = v28;
        outlined destroy of NodePersonality(&v88);
        outlined destroy of [Input](v92, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
        v87 = *&v29[0];
        v25 = &v87;
        return outlined destroy of [Input](v25, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
      }

      v62[0] = v37;
      v62[1] = v38;
      v63 = v39;
      v64 = v40;
      v65 = v41;
      UserGraph.connect(_:to:)(v62, v66);

      v73 = v63;
      outlined destroy of String(&v73);
      v86 = v35;
      outlined destroy of NodePersonality(&v86);
      v85 = *(&v35 + 1);
      outlined destroy of [Input](&v85, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      outlined destroy of [Input](&v91, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

      v71 = v67;
      v12 = &v71;
      goto LABEL_9;
    }

    __break(1u);
  }

  return result;
}

Swift::Int specialized _ArrayProtocol.filter(_:)(Swift::Int result, uint64_t *a2)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = 0;
    v19 = result + 32;
    v4 = MEMORY[0x277D84F90];
    while (v3 < v2)
    {
      v8 = v3;
      if (__OFADD__(v3++, 1))
      {
        goto LABEL_20;
      }

      v10 = *a2;
      if (*(*a2 + 16))
      {
        v11 = v19 + 48 * v8;
        v12 = *v11;
        v13 = *(v11 + 8);
        v14 = *(v11 + 16);
        v22 = *(v11 + 24);
        v20 = *(v11 + 40);
        v15 = *(v10 + 40);
        Hasher.init(_seed:)();
        MEMORY[0x266772770](v22);
        result = Hasher._finalize()();
        v16 = -1 << *(v10 + 32);
        v17 = result & ~v16;
        if ((*(v10 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
        {
          v18 = ~v16;
          while (*(*(v10 + 48) + 8 * v17) != v22)
          {
            v17 = (v17 + 1) & v18;
            if (((*(v10 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
            {
              goto LABEL_6;
            }
          }

          outlined copy of NodePersonality(v12);

          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 16) + 1, 1);
          }

          v6 = *(v4 + 16);
          v5 = *(v4 + 24);
          if (v6 >= v5 >> 1)
          {
            result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1);
          }

          *(v4 + 16) = v6 + 1;
          v7 = v4 + 48 * v6;
          *(v7 + 32) = v12;
          *(v7 + 40) = v13;
          *(v7 + 48) = v14;
          *(v7 + 56) = v22;
          *(v7 + 72) = v20;
        }
      }

LABEL_6:
      if (v3 == v2)
      {
        return v4;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t specialized _ArrayProtocol.filter(_:)(uint64_t result, _OWORD *a2)
{
  v2 = *(result + 16);
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  v4 = 0;
  v5 = result + 80;
  v6 = MEMORY[0x277D84F90];
  v28 = result + 80;
  do
  {
    v37 = v6;
    v7 = (v5 + 56 * v4);
    for (i = v4; ; ++i)
    {
      if (i >= v2)
      {
        __break(1u);
LABEL_18:
        __break(1u);
        return result;
      }

      v9 = *(v7 - 5);
      v10 = *(v7 - 4);
      v11 = *(v7 - 3);
      v12 = *(v7 - 2);
      v13 = *(v7 - 8);
      v14 = *v7;
      *&v31 = *(v7 - 6);
      *(&v31 + 1) = v9;
      *&v32 = v10;
      *(&v32 + 1) = v11;
      *&v33 = v12;
      BYTE8(v33) = v13;
      v34 = v14;
      v4 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_18;
      }

      v15 = a2[9];
      v35[8] = a2[8];
      v36[0] = v15;
      *(v36 + 9) = *(a2 + 153);
      v16 = a2[5];
      v35[4] = a2[4];
      v35[5] = v16;
      v17 = a2[7];
      v35[6] = a2[6];
      v35[7] = v17;
      v18 = a2[1];
      v35[0] = *a2;
      v35[1] = v18;
      v19 = a2[3];
      v35[2] = a2[2];
      v35[3] = v19;

      outlined init with copy of UserGraph(v35, v29);
      v20 = UserGraph.edges(from:)(&v31);
      outlined destroy of UserGraph(v35);
      v21 = *(v20 + 16);

      if (v21)
      {
        break;
      }

      v7 += 7;
      if (v4 == v2)
      {
        return v37;
      }
    }

    v6 = v37;
    result = swift_isUniquelyReferenced_nonNull_native();
    v30 = v6;
    if ((result & 1) == 0)
    {
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 16) + 1, 1);
      v6 = v30;
    }

    v5 = v28;
    v23 = *(v6 + 16);
    v22 = *(v6 + 24);
    if (v23 >= v22 >> 1)
    {
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1);
      v6 = v30;
    }

    *(v6 + 16) = v23 + 1;
    v24 = v6 + 56 * v23;
    v25 = v31;
    v26 = v32;
    v27 = v33;
    *(v24 + 80) = v34;
    *(v24 + 48) = v26;
    *(v24 + 64) = v27;
    *(v24 + 32) = v25;
  }

  while (v4 != v2);
  return v6;
}

uint64_t _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySay11ShaderGraph5InputVGSayAH7NodeDefV6IOSpecVGG_AH0H4SpecVs5NeverOTg504_s11f6Graph5h4VAA7ij2V6k6VAA0C4l17VIgggo_AC_AGtAIs5M11OIegnrzr_TRAjoSIgggo_Tf1cn_nTf4ng_n(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *, _OWORD *))
{
  v4 = a1;
  v5 = *(a1 + 16);
  v6 = *(a2 + 16);
  if (v6 >= v5)
  {
    v7 = *(a1 + 16);
  }

  else
  {
    v7 = *(a2 + 16);
  }

  v69 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
  v8 = v69;
  v45 = v6;
  v46 = v5;
  v43 = a2;
  v44 = v4;
  if (v7)
  {
    v56 = v69;

    if (v5)
    {
      v10 = (a2 + 32);
      v55 = v7 - 1;
      v57 = (v4 + 80);
      v58 = v6;
      for (i = v5; i; --i)
      {
        if (!v58)
        {
          break;
        }

        v11 = *(v57 - 5);
        v61 = *(v57 - 6);
        v12 = *(v57 - 3);
        v84 = *(v57 - 4);
        v62 = *(v57 - 2);
        v54 = *v57;
        v13 = *(v57 - 8);
        v14 = v10[1];
        v64 = *v10;
        v65 = v14;
        *v66 = v10[2];
        *&v66[9] = *(v10 + 41);
        v63[0] = v13;
        v15 = v64;
        v16 = v14;
        v17 = *v66;
        v60 = *&v66[16];
        v59 = v66[24];

        result = outlined init with copy of NodeDef.IOSpec(&v64, v73);
        if (!v11)
        {
          break;
        }

        v49 = v10;
        v75[0] = v61;
        v75[1] = v11;
        v75[2] = v84;
        v75[3] = v12;
        v75[4] = v62;
        v76 = v63[0];
        v79 = 0;
        v78 = 0;
        v77 = 0;
        v80 = v54;
        v81[0] = v15;
        v81[1] = v16;
        v81[2] = v17;
        v82 = v60;
        v83 = v59;
        v18 = a3(v75, v81);
        v52 = v19;
        v53 = v18;
        v51 = v20;
        *&v64 = v61;
        *(&v64 + 1) = v11;
        *&v65 = v84;
        *(&v65 + 1) = v12;
        *v66 = v62;
        v66[8] = v63[0];
        v66[15] = 0;
        *&v66[13] = 0;
        *&v66[9] = 0;
        *&v66[16] = v54;
        *&v66[24] = v15;
        v67 = v16;
        *v68 = v17;
        *&v68[16] = v60;
        v68[24] = v59;
        result = outlined destroy of [Input](&v64, &_s11ShaderGraph5InputV_AA7NodeDefV6IOSpecVtMd, &_s11ShaderGraph5InputV_AA7NodeDefV6IOSpecVtMR);
        v8 = v56;
        v69 = v56;
        v22 = *(v56 + 16);
        v21 = *(v56 + 24);
        if (v22 >= v21 >> 1)
        {
          result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1);
          v8 = v69;
        }

        *(v8 + 16) = v22 + 1;
        v23 = (v8 + 24 * v22);
        v23[4] = v53;
        v23[5] = v52;
        v23[6] = v51;
        if (!v55)
        {
          v4 = v44;
          if (v5 > v6)
          {
            goto LABEL_17;
          }

          goto LABEL_26;
        }

        v56 = v8;
        v57 += 7;
        --v55;
        v10 = v49 + 4;
        --v58;
      }
    }
  }

  else
  {

    if (v5 <= v6)
    {
LABEL_26:

      return v8;
    }

LABEL_17:
    v24 = (v4 + 56 * v7 + 80);
    v25 = (v43 + (v7 << 6) + 32);
    while (v7 < v5)
    {
      v26 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_28;
      }

      if (v6 == v7)
      {
        goto LABEL_26;
      }

      v27 = *(v24 - 6);
      result = *(v24 - 5);
      v28 = *(v24 - 4);
      v29 = *(v24 - 3);
      v30 = *(v24 - 2);
      v31 = *(v24 - 8);
      v32 = *v24;
      v70[0] = v27;
      v70[1] = result;
      v70[2] = v28;
      v70[3] = v29;
      v70[4] = v30;
      v71 = v31;
      v72 = v32;
      if (v7 >= v6)
      {
        goto LABEL_29;
      }

      v33 = v25[1];
      v73[0] = *v25;
      v73[1] = v33;
      v74[0] = v25[2];
      *(v74 + 9) = *(v25 + 41);
      if (__OFADD__(v7, 1))
      {
        goto LABEL_30;
      }

      v47 = v7;
      v34 = v25[1];
      *&v66[24] = *v25;
      *&v64 = v27;
      *(&v64 + 1) = result;
      *&v65 = v28;
      *(&v65 + 1) = v29;
      *v66 = v30;
      v66[8] = v31;
      *&v66[16] = v32;
      v67 = v34;
      *v68 = v25[2];
      *&v68[9] = *(v25 + 41);

      outlined init with copy of NodeDef.IOSpec(v73, v63);
      v35 = a3(v70, v73);
      v37 = v36;
      v39 = v38;
      result = outlined destroy of [Input](&v64, &_s11ShaderGraph5InputV_AA7NodeDefV6IOSpecVtMd, &_s11ShaderGraph5InputV_AA7NodeDefV6IOSpecVtMR);
      v69 = v8;
      v41 = *(v8 + 16);
      v40 = *(v8 + 24);
      if (v41 >= v40 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v40 > 1), v41 + 1, 1);
        v8 = v69;
      }

      *(v8 + 16) = v41 + 1;
      v42 = (v8 + 24 * v41);
      v42[4] = v35;
      v42[5] = v37;
      v42[6] = v39;
      v5 = v46;
      v7 = v47 + 1;
      v24 += 7;
      v25 += 4;
      v6 = v45;
      if (v26 == v46)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }

  __break(1u);
  return result;
}

Swift::Int _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC11ShaderGraph11DebugConfigO5GroupO_Tt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy11ShaderGraph11DebugConfigO5GroupOGMd, &_ss11_SetStorageCy11ShaderGraph11DebugConfigO5GroupOGMR);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v34 = v1;
    v35 = a1 + 32;
    while (1)
    {
      v6 = *(v35 + v4);
      v36 = v4 + 1;
      v7 = *(v3 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v9 = ~(-1 << *(v3 + 32));
      v10 = result & v9;
      v11 = (result & v9) >> 6;
      v12 = *(v5 + 8 * v11);
      v13 = 1 << (result & v9);
      if ((v13 & v12) != 0)
      {
        do
        {
          v14 = *(*(v3 + 48) + v10);
          if (v14 > 4)
          {
            if (*(*(v3 + 48) + v10) <= 6u)
            {
              if (v14 == 5)
              {
                v19 = 0x6E69686374697473;
              }

              else
              {
                v19 = 0x446C616D696E696DLL;
              }

              if (v14 == 5)
              {
                v20 = 0xEE00687061724767;
              }

              else
              {
                v20 = 0xEA0000000000746FLL;
              }

              if (v6 > 4)
              {
                goto LABEL_56;
              }
            }

            else if (v14 == 7)
            {
              v20 = 0xE800000000000000;
              v19 = 0x6870617247697061;
              if (v6 > 4)
              {
                goto LABEL_56;
              }
            }

            else if (v14 == 8)
            {
              v19 = 0xD000000000000011;
              v20 = 0x8000000265F2BCB0;
              if (v6 > 4)
              {
                goto LABEL_56;
              }
            }

            else
            {
              v19 = 0xD00000000000001ALL;
              v20 = 0x8000000265F2BCD0;
              if (v6 > 4)
              {
                goto LABEL_56;
              }
            }
          }

          else
          {
            v15 = 0x62694C6C6174656DLL;
            if (v14 == 3)
            {
              v15 = 7630692;
            }

            v16 = 0xEC00000079726172;
            if (v14 == 3)
            {
              v16 = 0xE300000000000000;
            }

            if (v14 == 2)
            {
              v15 = 0x65766968637261;
              v16 = 0xE700000000000000;
            }

            v17 = 0x7972616D6D7573;
            if (!*(*(v3 + 48) + v10))
            {
              v17 = 1701736302;
            }

            v18 = 0xE400000000000000;
            if (*(*(v3 + 48) + v10))
            {
              v18 = 0xE700000000000000;
            }

            if (*(*(v3 + 48) + v10) <= 1u)
            {
              v19 = v17;
            }

            else
            {
              v19 = v15;
            }

            if (*(*(v3 + 48) + v10) <= 1u)
            {
              v20 = v18;
            }

            else
            {
              v20 = v16;
            }

            if (v6 > 4)
            {
LABEL_56:
              v25 = 0xD00000000000001ALL;
              if (v6 == 8)
              {
                v25 = 0xD000000000000011;
              }

              v26 = 0x8000000265F2BCD0;
              if (v6 == 8)
              {
                v26 = 0x8000000265F2BCB0;
              }

              if (v6 == 7)
              {
                v25 = 0x6870617247697061;
                v26 = 0xE800000000000000;
              }

              v27 = 0x6E69686374697473;
              if (v6 != 5)
              {
                v27 = 0x446C616D696E696DLL;
              }

              v28 = 0xEE00687061724767;
              if (v6 != 5)
              {
                v28 = 0xEA0000000000746FLL;
              }

              if (v6 <= 6)
              {
                v29 = v27;
              }

              else
              {
                v29 = v25;
              }

              if (v6 <= 6)
              {
                v24 = v28;
              }

              else
              {
                v24 = v26;
              }

              if (v19 != v29)
              {
                goto LABEL_74;
              }

              goto LABEL_73;
            }
          }

          if (v6 <= 1)
          {
            if (v6)
            {
              v24 = 0xE700000000000000;
              if (v19 != 0x7972616D6D7573)
              {
                goto LABEL_74;
              }
            }

            else
            {
              v24 = 0xE400000000000000;
              if (v19 != 1701736302)
              {
                goto LABEL_74;
              }
            }
          }

          else
          {
            v21 = 0x62694C6C6174656DLL;
            if (v6 == 3)
            {
              v21 = 7630692;
            }

            v22 = 0xEC00000079726172;
            if (v6 == 3)
            {
              v22 = 0xE300000000000000;
            }

            if (v6 == 2)
            {
              v23 = 0x65766968637261;
            }

            else
            {
              v23 = v21;
            }

            if (v6 == 2)
            {
              v24 = 0xE700000000000000;
            }

            else
            {
              v24 = v22;
            }

            if (v19 != v23)
            {
              goto LABEL_74;
            }
          }

LABEL_73:
          if (v20 == v24)
          {

            goto LABEL_4;
          }

LABEL_74:
          v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v30)
          {
            goto LABEL_4;
          }

          v10 = (v10 + 1) & v9;
          v11 = v10 >> 6;
          v12 = *(v5 + 8 * (v10 >> 6));
          v13 = 1 << v10;
        }

        while ((v12 & (1 << v10)) != 0);
      }

      *(v5 + 8 * v11) = v12 | v13;
      *(*(v3 + 48) + v10) = v6;
      v31 = *(v3 + 16);
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        break;
      }

      *(v3 + 16) = v33;
LABEL_4:
      v4 = v36;
      if (v36 == v34)
      {
        return v3;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

Swift::Int _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC11ShaderGraph5InputV_Tt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy11ShaderGraph5InputVGMd, &_ss11_SetStorageCy11ShaderGraph5InputVGMR);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v37 = a1 + 32;
    v39 = v1;
    while (1)
    {
      v7 = (v37 + 56 * v4);
      v8 = *v7;
      v9 = v7[1];
      v10 = v7[2];
      v11 = v7[3];
      v40 = v7[4];
      v41 = *(v7 + 40);
      v42 = v7[6];
      v12 = *(v3 + 40);
      Hasher.init(_seed:)();
      v48 = v8;
      MEMORY[0x266772770](v8);
      v13 = *(*v9 + 120);

      v46 = v9;
      v13(v49);
      v43 = v10;
      v44 = v11;
      String.hash(into:)();
      if (v41 == 1)
      {
        Hasher._combine(_:)(0);
        v14 = v40;
      }

      else
      {
        Hasher._combine(_:)(1u);
        v14 = v40;
        MEMORY[0x266772770](v40);
      }

      MEMORY[0x266772770](v42);
      result = Hasher._finalize()();
      v16 = -1 << *(v3 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      v19 = *(v5 + 8 * (v17 >> 6));
      v20 = 1 << v17;
      v6 = v39;
      if (((1 << v17) & v19) != 0)
      {
        break;
      }

LABEL_34:
      *(v5 + 8 * v18) = v19 | v20;
      v33 = *(v3 + 48) + 56 * v17;
      *v33 = v48;
      *(v33 + 8) = v46;
      *(v33 + 16) = v43;
      *(v33 + 24) = v44;
      *(v33 + 32) = v14;
      *(v33 + 40) = v41;
      *(v33 + 48) = v42;
      v34 = *(v3 + 16);
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v36;
LABEL_4:
      if (++v4 == v6)
      {
        return v3;
      }
    }

    v38 = v4;
    v21 = ~v16;
    while (1)
    {
      v22 = *(v3 + 48) + 56 * v17;
      if (*v22 == v48)
      {
        v23 = v5;
        v24 = *(v22 + 16);
        v25 = *(v22 + 24);
        v45 = *(v22 + 32);
        v26 = *(v22 + 40);
        v47 = *(v22 + 48);
        v27 = *(**(v22 + 8) + 128);

        if (v27(v46))
        {
          if (v24 == v43 && v25 == v44)
          {

            v5 = v23;
            if ((v26 & 1) == 0)
            {
LABEL_25:
              v31 = v41 ^ 1;
              if (v45 != v40)
              {
                v31 = 0;
              }

              if (v31 == 1 && v47 == v42)
              {
LABEL_3:

                v4 = v38;
                v6 = v39;
                goto LABEL_4;
              }

              goto LABEL_11;
            }

            goto LABEL_20;
          }

          v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v5 = v23;
          if (v29)
          {
            if ((v26 & 1) == 0)
            {
              goto LABEL_25;
            }

LABEL_20:
            v30 = v41;
            if (v47 != v42)
            {
              v30 = 0;
            }

            if (v30)
            {
              goto LABEL_3;
            }
          }
        }

        else
        {

          v5 = v23;
        }
      }

LABEL_11:
      v17 = (v17 + 1) & v21;
      v18 = v17 >> 6;
      v19 = *(v5 + 8 * (v17 >> 6));
      v20 = 1 << v17;
      if ((v19 & (1 << v17)) == 0)
      {
        v4 = v38;
        v6 = v39;
        v14 = v40;
        goto LABEL_34;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t specialized Sequence.forEach(_:)(uint64_t result, uint64_t *a2, uint64_t *a3, uint64_t a4, char **a5, uint64_t a6, char **a7, uint64_t a8)
{
  v103 = a4;
  v75 = *(result + 16);
  if (v75)
  {
    v10 = 0;
    v74 = result + 32;
    do
    {
      v11 = v74 + 112 * v10;
      v12 = *(v11 + 80);
      v98 = *(v11 + 64);
      v99 = v12;
      v13 = *(v11 + 96);
      v14 = *(v11 + 16);
      v97[0] = *v11;
      v97[1] = v14;
      v15 = *(v11 + 48);
      v97[2] = *(v11 + 32);
      v97[3] = v15;
      v16 = *a2;
      v17 = *(&v15 + 1);
      v18 = *(v11 + 72);
      v100 = v13;
      v101 = v18;
      v19 = *(v11 + 88);
      v96 = *(v11 + 104);
      v93 = __PAIR128__(v98, v17);
      v94 = *(v11 + 72);
      v95 = v19;
      if (*(v16 + 16) && (v20 = *(v16 + 40), Hasher.init(_seed:)(), MEMORY[0x266772770](v17), v21 = Hasher._finalize()(), v22 = v16 + 56, v23 = -1 << *(v16 + 32), v24 = v21 & ~v23, ((*(v16 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) != 0))
      {
        v25 = ~v23;
        v26 = *(v16 + 48);
        do
        {
          v27 = *(v26 + 8 * v24);
          v28 = v27 == v17;
          if (v27 == v17)
          {
            break;
          }

          v24 = (v24 + 1) & v25;
        }

        while (((*(v22 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) != 0);
      }

      else
      {
        v28 = 0;
      }

      v29 = *a3;
      if (*(*a3 + 16) && (v30 = *(v29 + 40), Hasher.init(_seed:)(), MEMORY[0x266772770](v17), v31 = Hasher._finalize()(), v32 = v29 + 56, v33 = -1 << *(v29 + 32), v34 = v31 & ~v33, ((*(v29 + 56 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) != 0))
      {
        v35 = ~v33;
        v36 = *(v29 + 48);
        do
        {
          v37 = *(v36 + 8 * v34);
          v38 = v37 == v17;
          if (v37 == v17)
          {
            break;
          }

          v34 = (v34 + 1) & v35;
        }

        while (((*(v32 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) != 0);
      }

      else
      {
        v38 = 0;
      }

      v102[0] = v101;

      outlined init with copy of String(v102, &v84);

      outlined init with copy of String(v102, &v84);
      outlined init with copy of Edge(v97, &v84);
      UserGraph.remove(_:)(v97);
      if (v28)
      {
        if (v38)
        {
          v39 = *(a6 + 8);
          v40 = *a6;
          v92 = *(a6 + 16);
          v41 = *(a6 + 16);
          v42 = *(a6 + 32);
          v80 = v40;
          v81 = v41;
          v82 = v42;
          *v83 = *(a6 + 48);
          *&v83[40] = v95;
          *&v83[24] = v94;
          *&v83[8] = v93;
          *&v83[56] = v96;
          v84 = v40;
          v85 = v41;
          v89 = *&v83[32];
          v90 = *&v83[48];
          v87 = *v83;
          v88 = *&v83[16];
          v86 = v42;
          v43 = *a5;

          outlined init with copy of String(&v92, &v80);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *a5 = v43;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v43 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v43 + 2) + 1, 1, v43);
            *a5 = v43;
          }

          v46 = *(v43 + 2);
          v45 = *(v43 + 3);
          if (v46 >= v45 >> 1)
          {
            v43 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v45 > 1), v46 + 1, 1, v43);
            *a5 = v43;
          }

          *(v43 + 2) = v46 + 1;
          v47 = &v43[112 * v46];
          v48 = v84;
          v49 = v86;
          *(v47 + 3) = v85;
          *(v47 + 4) = v49;
          *(v47 + 2) = v48;
          v50 = v87;
          v51 = v88;
          v52 = v90;
          *(v47 + 7) = v89;
          *(v47 + 8) = v52;
          *(v47 + 5) = v50;
          *(v47 + 6) = v51;
          v53 = *(a8 + 8);
          v54 = *a8;
          v91 = *(a8 + 16);
          v55 = *(a8 + 16);
          v56 = *(a8 + 32);
          v78[0] = v54;
          v78[1] = v55;
          v78[2] = v56;
          *v79 = *(a8 + 48);
          *&v79[40] = v95;
          *&v79[24] = v94;
          *&v79[8] = v93;
          *&v79[56] = v96;
          v80 = v54;
          v81 = v55;
          *&v83[32] = *&v79[32];
          *&v83[48] = *&v79[48];
          *v83 = *v79;
          *&v83[16] = *&v79[16];
          v82 = v56;
          v57 = *a7;

          outlined init with copy of String(&v91, v78);
          v58 = swift_isUniquelyReferenced_nonNull_native();
          *a7 = v57;
          if ((v58 & 1) == 0)
          {
            v57 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v57 + 2) + 1, 1, v57);
            *a7 = v57;
          }

          v60 = *(v57 + 2);
          v59 = *(v57 + 3);
          if (v60 >= v59 >> 1)
          {
            v57 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v59 > 1), v60 + 1, 1, v57);
            *a7 = v57;
          }

          *(v57 + 2) = v60 + 1;
          v61 = &v57[112 * v60];
          v62 = v80;
          v63 = v82;
          *(v61 + 3) = v81;
          *(v61 + 4) = v63;
          *(v61 + 2) = v62;
          v64 = *v83;
          v65 = *&v83[16];
          v66 = *&v83[48];
          *(v61 + 7) = *&v83[32];
          *(v61 + 8) = v66;
          *(v61 + 5) = v64;
          *(v61 + 6) = v65;
          goto LABEL_4;
        }

        outlined destroy of String(v102);

        outlined destroy of String(v102);
        v67 = a6;
      }

      else
      {

        outlined destroy of String(v102);

        outlined destroy of String(v102);
        if (!v38)
        {
          if (one-time initialization token for logger != -1)
          {
            swift_once();
          }

          v68 = type metadata accessor for Logger();
          __swift_project_value_buffer(v68, logger);
          v69 = Logger.logObject.getter();
          v70 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v69, v70))
          {
            v71 = swift_slowAlloc();
            *v71 = 0;
            _os_log_impl(&dword_265D7D000, v69, v70, "Edge destination node isn't a surface node or geometry modifier node.", v71, 2u);
            MEMORY[0x266773120](v71, -1, -1);
          }

          goto LABEL_4;
        }

        v67 = a8;
      }

      UserGraph.connect(_:to:)(v67, &v93);
LABEL_4:
      result = outlined destroy of Edge(v97);
      ++v10;
    }

    while (v10 != v75);
  }

  return result;
}

uint64_t specialized UserGraph.splitSharedNodes(nodeDefStore:surfaceShader:geometryModifier:)(uint64_t result, uint64_t a2)
{
  v3 = v2;
  v4 = *(a2 + 8);
  if (v4)
  {
    v5 = result;
    v6 = *(a2 + 16);
    v48 = *a2;
    v49 = v4;
    v50[0] = *(a2 + 16);
    *(v50 + 9) = *(a2 + 25);
    v7 = v3[8];
    v8 = v3[9];
    v9 = v3[6];
    v54[9] = v3[7];
    v54[10] = v7;
    v55[0] = v8;
    *(v55 + 9) = *(v3 + 153);
    v10 = v3[5];
    v54[6] = v3[4];
    v54[7] = v10;
    v54[8] = v9;
    v11 = v3[1];
    v54[2] = *v3;
    v54[3] = v11;
    v12 = v3[3];
    v54[4] = v3[2];
    v54[5] = v12;
    outlined copy of NodePersonality(v48);

    UserGraph.connectedBreathFirstUpstreamSubgraph(rootedAt:)(v5, v53);
    v13 = *&v53[0];

    v14 = v3[9];
    v53[8] = v3[8];
    v54[0] = v14;
    *(v54 + 9) = *(v3 + 153);
    v15 = v3[5];
    v53[4] = v3[4];
    v53[5] = v15;
    v16 = v3[7];
    v53[6] = v3[6];
    v53[7] = v16;
    v17 = v3[1];
    v53[0] = *v3;
    v53[1] = v17;
    v18 = v3[3];
    v53[2] = v3[2];
    v53[3] = v18;
    UserGraph.connectedBreathFirstUpstreamSubgraph(rootedAt:)(&v48, &v44);
    v19 = v44;

    v20 = *(v19 + 16);
    if (v20)
    {
      v44 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v20, 0);
      v21 = v44;
      v22 = *(v44 + 16);
      v23 = 56;
      do
      {
        v24 = *(v19 + v23);
        v44 = v21;
        v25 = *(v21 + 24);
        if (v22 >= v25 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v22 + 1, 1);
          v21 = v44;
        }

        *(v21 + 16) = v22 + 1;
        *(v21 + 8 * v22 + 32) = v24;
        v23 += 48;
        ++v22;
        --v20;
      }

      while (v20);
    }

    else
    {

      v21 = MEMORY[0x277D84F90];
    }

    v26 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC11ShaderGraph0bC4NodeV2IDV_SayAHGTt0g5Tf4g_n(v21);

    v43 = v26;
    v27 = *(v13 + 16);
    v28 = MEMORY[0x277D84F90];
    if (v27)
    {
      v44 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v27, 0);
      v29 = v44;
      v30 = (v13 + 56);
      v31 = *(v44 + 16);
      do
      {
        v33 = *v30;
        v30 += 6;
        v32 = v33;
        v44 = v29;
        v34 = *(v29 + 24);
        if (v31 >= v34 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v31 + 1, 1);
          v29 = v44;
        }

        *(v29 + 16) = v31 + 1;
        *(v29 + 8 * v31++ + 32) = v32;
        --v27;
      }

      while (v27);
    }

    else
    {
      v29 = MEMORY[0x277D84F90];
    }

    v35 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC11ShaderGraph0bC4NodeV2IDV_SayAHGTt0g5Tf4g_n(v29);

    v42 = v35;
    v36 = specialized _ArrayProtocol.filter(_:)(v13, &v43);

    v40 = v28;
    v41 = v28;
    v37 = *(v36 + 16);
    if (v37)
    {
      v38 = v36 + 40;
      do
      {
        v39 = *(v38 + 32);
        v44 = *(v38 - 8);
        v45 = *v38;
        v46 = *(v38 + 16);
        LOBYTE(v47) = v39;
        closure #2 in UserGraph.splitSharedNodes(nodeDefStore:surfaceShader:geometryModifier:)(&v44, v3, &v42, &v43, &v41, &v40);
        v38 += 48;
        --v37;
      }

      while (v37);
    }

    v51 = v48;
    outlined destroy of NodePersonality(&v51);
    v52 = v49;
    outlined destroy of [Input](&v52, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    v44 = *&v50[0];
    outlined destroy of [Input](&v44, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
  }

  return result;
}

uint64_t *specialized closure #1 in UserGraph.mapStringInputs(nodeDefStore:)(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  if (*result >> 61 == 5)
  {
    v5 = result[1];
    v4 = result[2];
    v6 = result[3];
    v8 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v7 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);

    v9._countAndFlagsBits = 0x736E6172745F444ELL;
    v9._object = 0xEC0000006D726F66;
    if (String.hasPrefix(_:)(v9) || (v10._object = 0x8000000265F315D0, v10._countAndFlagsBits = 0xD000000000000020, String.hasPrefix(_:)(v10)))
    {
      if (*(a2 + 16) && (v11 = specialized __RawDictionaryStorage.find<A>(_:)(v8, v7), (v12 & 1) != 0))
      {
        v13 = v11;

        v15 = *(*(a2 + 56) + 152 * v13 + 128);
        MEMORY[0x28223BE20](v14);

        _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySay11ShaderGraph5InputVGSayAH7NodeDefV6IOSpecVGG_AH0H4SpecVs5NeverOTg504_s11f6Graph5h4VAA7ij2V6k6VAA0C4l17VIgggo_AC_AGtAIs5M11OIegnrzr_TRAjoSIgggo_Tf1cn_nTf4ng_n(v16, v15, partial apply for closure #1 in closure #1 in UserGraph.mapStringInputs(nodeDefStore:));
      }

      else
      {
        _StringGuts.grow(_:)(49);

        MEMORY[0x266771550](v8, v7);

        MEMORY[0x266771550](0x6F6E20726F662027, 0xEC00000027206564);
        v17 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x266771550](v17);

        MEMORY[0x266771550](1701080942, 0xE400000000000000);

        MEMORY[0x266771550](39, 0xE100000000000000);
        lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
        swift_allocError();
        *v18 = 28;
        *(v18 + 8) = 0xD000000000000020;
        *(v18 + 16) = 0x8000000265F315A0;
        return swift_willThrow();
      }
    }

    else
    {
    }
  }

  return result;
}

uint64_t specialized closure #1 in closure #1 in UserGraph.insertMaterialXDefaultValues(nodeDefStore:)(__int128 *a1, __int128 *a2, __int128 *a3, _OWORD *a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v117 = a5;
  v13 = *a1;
  v14 = a1[1];
  v15 = a1[2];
  v112 = *(a1 + 6);
  v111[1] = v14;
  v111[2] = v15;
  v111[0] = v13;
  v16 = v14;
  NodeDef.subscript.getter(v14, *(&v14 + 1), v76);
  if (!v77)
  {
    v74 = 0;
    v75 = 0xE000000000000000;
    MEMORY[0x266771550](v16, *(&v16 + 1));
    MEMORY[0x266771550](32, 0xE100000000000000);
    v27 = a2[7];
    v70 = a2[6];
    v71 = v27;
    v72 = a2[8];
    v73 = *(a2 + 18);
    v28 = a2[3];
    *&v66[16] = a2[2];
    v67 = v28;
    v29 = a2[5];
    v68 = a2[4];
    v69 = v29;
    v30 = a2[1];
    v65 = *a2;
    *v66 = v30;
    _print_unlocked<A, B>(_:_:)();
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    *v31 = 13;
    *(v31 + 8) = 0;
    *(v31 + 16) = 0xE000000000000000;
    return swift_willThrow();
  }

  v98 = v78;
  v99 = v79;
  if (!(*(&v78 + 1) | *(&v79 + 1)))
  {
    goto LABEL_41;
  }

  type metadata accessor for MaterialXDataType();
  v17 = swift_dynamicCastClass();
  if (!v17)
  {
    v74 = 0;
    v75 = 0xE000000000000000;
    v33 = a1[1];
    v65 = *a1;
    *v66 = v33;
    *&v66[16] = a1[2];
    *&v67 = *(a1 + 6);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x266771550](32, 0xE100000000000000);
    v34 = a3[1];
    v65 = *a3;
    *v66 = v34;
    *&v66[9] = *(a3 + 25);
    _print_unlocked<A, B>(_:_:)();
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    *v35 = 42;
    *(v35 + 8) = 0;
    *(v35 + 16) = 0xE000000000000000;
    swift_willThrow();
LABEL_41:
    v55 = &_s11ShaderGraph7NodeDefV6IOSpecVSgMd;
    v56 = &_s11ShaderGraph7NodeDefV6IOSpecVSgMR;
    v57 = v76;
    return outlined destroy of [Input](v57, v55, v56);
  }

  v18 = v17;
  v19 = a4[9];
  v115[8] = a4[8];
  v116[0] = v19;
  *(v116 + 9) = *(a4 + 153);
  v20 = a4[5];
  v115[4] = a4[4];
  v115[5] = v20;
  v21 = a4[7];
  v115[6] = a4[6];
  v115[7] = v21;
  v22 = a4[1];
  v115[0] = *a4;
  v115[1] = v22;
  v23 = a4[3];
  v115[2] = a4[2];
  v115[3] = v23;

  outlined init with copy of [Input](&v99, &v65, &_sSSSgMd, &_sSSSgMR);
  outlined init with copy of [Input](&v98, &v65, &_sSSSgMd, &_sSSSgMR);
  outlined init with copy of UserGraph(v115, &v65);
  UserGraph.output(connectedTo:)(v111, v80);
  outlined destroy of UserGraph(v115);
  if (!v80[1])
  {
    goto LABEL_8;
  }

  v95 = v81;
  v96 = v82;
  v97 = v83;
  if (v80[0] == -7)
  {

    v100 = v81;
    v24 = &v100;
LABEL_7:
    outlined destroy of String(v24);
LABEL_8:
    v25 = *(&v98 + 1);
    if (*(&v98 + 1))
    {
      v26 = v98;

      outlined destroy of [Input](&v99, &_sSSSgMd, &_sSSSgMR);
      UserGraph.insertMaterialXDefaultValue(_:ofType:toFeedInput:)(v26, v25, v18, v111);
      if (!v7)
      {

        outlined destroy of [Input](v76, &_s11ShaderGraph7NodeDefV6IOSpecVSgMd, &_s11ShaderGraph7NodeDefV6IOSpecVSgMR);
        v55 = &_sSSSgMd;
        v56 = &_sSSSgMR;
        v57 = &v98;
        return outlined destroy of [Input](v57, v55, v56);
      }

      outlined destroy of [Input](&v98, &_sSSSgMd, &_sSSSgMR);
      goto LABEL_37;
    }

    v42 = *(&v99 + 1);
    if (*(&v99 + 1))
    {
      v43 = v99;
      if (*(a6 + 16) && (v44 = specialized __RawDictionaryStorage.find<A>(_:)(v99, *(&v99 + 1)), (v45 & 1) != 0))
      {
        v46 = v44;

        outlined destroy of [Input](&v99, &_sSSSgMd, &_sSSSgMR);
        v47 = (*(a6 + 56) + (v46 << 6));
        v49 = v47[1];
        v48 = v47[2];
        v50 = *v47;
        *(v114 + 9) = *(v47 + 41);
        v113[1] = v49;
        v114[0] = v48;
        v113[0] = v50;
        outlined init with copy of GeomPropDef(v113, &v65);
        specialized UserGraph.insertGeomPropGetter(_:outputType:nodeDefStore:)(v113, v18, v117, &v84);
        if (v7)
        {

          v51 = &_s11ShaderGraph7NodeDefV6IOSpecVSgMd;
          v52 = &_s11ShaderGraph7NodeDefV6IOSpecVSgMR;
          v53 = v76;
LABEL_32:
          outlined destroy of [Input](v53, v51, v52);
          return outlined destroy of GeomPropDef(v113);
        }

        v110 = *&v85[0];
        specialized ShaderGraphNode.output(labeled:)(&v86, 7632239, 0xE300000000000000, *&v85[0]);
        if (!v87)
        {
          v74 = 0;
          v75 = 0xE000000000000000;
          MEMORY[0x266771550](7632239, 0xE300000000000000);
          MEMORY[0x266771550](32, 0xE100000000000000);
          v65 = v84;
          *v66 = v85[0];
          *&v66[9] = *(v85 + 9);
          _print_unlocked<A, B>(_:_:)();
          v60 = v74;
          v61 = v75;
          lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
          swift_allocError();
          *v62 = 14;
          *(v62 + 8) = v60;
          *(v62 + 16) = v61;
          swift_willThrow();

          outlined destroy of [Input](v76, &_s11ShaderGraph7NodeDefV6IOSpecVSgMd, &_s11ShaderGraph7NodeDefV6IOSpecVSgMR);
          v109 = v84;
          outlined destroy of NodePersonality(&v109);
          v108 = *(&v84 + 1);
          outlined destroy of [Input](&v108, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
          v51 = &_sSay11ShaderGraph6OutputVGMd;
          v52 = &_sSay11ShaderGraph6OutputVGMR;
          v53 = &v110;
          goto LABEL_32;
        }

        v91[0] = v86;
        v91[1] = v87;
        v92 = v88;
        v93 = v89;
        v94 = v90;
        UserGraph.connect(_:to:)(v91, v111);

        v105 = v92;
        outlined destroy of String(&v105);
        v107 = v84;
        outlined destroy of NodePersonality(&v107);
        v106 = *(&v84 + 1);
        outlined destroy of [Input](&v106, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
        outlined destroy of [Input](&v110, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
        outlined destroy of GeomPropDef(v113);
      }

      else
      {
        v65 = v16;
        MEMORY[0x266771550](32, 0xE100000000000000);
        MEMORY[0x266771550](v43, v42);
        outlined destroy of [Input](&v99, &_sSSSgMd, &_sSSSgMR);
        v58 = v65;
        lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
        swift_allocError();
        *v59 = 17;
        *(v59 + 8) = v58;
        swift_willThrow();
      }

LABEL_37:

      goto LABEL_41;
    }

LABEL_40:

    goto LABEL_41;
  }

  if ((v80[0] & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_48;
  }

  v36 = *(a4 + 8);
  if (v80[0] >= *(v36 + 16))
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v37 = (v36 + 48 * v80[0]);
  v38 = v37[5];
  v39 = v37[6];
  v63 = v37[7];
  v64 = v37[4];
  outlined copy of NodePersonality(v64);
  v40 = one-time initialization token for string;

  if (v40 != -1)
  {
LABEL_49:
    swift_once();
  }

  if ((MaterialXDataType.isEqual(to:)() & 1) == 0 && !*(v18 + 24))
  {

    outlined destroy of [Input](&v99, &_sSSSgMd, &_sSSSgMR);
    outlined destroy of [Input](&v98, &_sSSSgMd, &_sSSSgMR);

    v104 = v81;
    outlined destroy of String(&v104);
    outlined consume of NodePersonality(v64);

    goto LABEL_40;
  }

  if (v64 >> 61 || *(v64 + 80) != 6)
  {
    outlined consume of NodePersonality(v64);

    v102 = v81;
    v54 = &v102;
LABEL_34:
    outlined destroy of String(v54);
    outlined destroy of [Input](&v99, &_sSSSgMd, &_sSSSgMR);
    outlined destroy of [Input](&v98, &_sSSSgMd, &_sSSSgMR);
    outlined destroy of [Input](v76, &_s11ShaderGraph7NodeDefV6IOSpecVSgMd, &_s11ShaderGraph7NodeDefV6IOSpecVSgMR);
  }

  if ((*(v64 + 16) || *(v64 + 24) != 0xE000000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    outlined consume of NodePersonality(v64);

    v101 = v81;
    v54 = &v101;
    goto LABEL_34;
  }

  specialized UserGraph.removeEdges(connectedTo:)(v63);
  v41 = *(a4 + 8);
  result = swift_isUniquelyReferenced_nonNull_native();
  *(a4 + 8) = v41;
  if (result)
  {
    if ((v63 & 0x8000000000000000) == 0)
    {
      goto LABEL_25;
    }

LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew()(v41);
  v41 = result;
  *(a4 + 8) = result;
  if ((v63 & 0x8000000000000000) != 0)
  {
    goto LABEL_51;
  }

LABEL_25:
  if (v63 < *(v41 + 16))
  {
    ShaderGraphNode.update(id:)(-7);
    outlined consume of NodePersonality(v64);

    v103 = v95;
    v24 = &v103;
    goto LABEL_7;
  }

LABEL_52:
  __break(1u);
  return result;
}