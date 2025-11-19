uint64_t ODIELanguageModel.init(contentsOf:adapterURL:baseModel:delegate:)()
{
  *(*v1 + 504) = v0;

  if (v0)
  {

    v2 = ODIELanguageModel.init(contentsOf:adapterURL:baseModel:delegate:);
  }

  else
  {
    v2 = ODIELanguageModel.init(contentsOf:adapterURL:baseModel:delegate:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v49 = v0;
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(*(v0 + 328), v0 + 200, &_s24TokenGenerationInference9BaseModel_pSgMd);
  if (*(v0 + 224))
  {
    outlined init with take of RandomNumberGenerator((v0 + 200), v0 + 160);
    if (one-time initialization token for device != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, static Log.device);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_220940000, v2, v3, "Loading ODIELanguageModel with base model already loaded", v4, 2u);
      MEMORY[0x223D90A10](v4, -1, -1);
    }

    outlined init with copy of DeterministicLanguageModelProtocol(v0 + 160, v0 + 240);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference9BaseModel_pMd);
    type metadata accessor for ODIEBaseModel();
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1(v0 + 160);
      v5 = *(v0 + 296);
      v6 = *(v5 + 32);
      v7 = *(v5 + 40);

      *(v0 + 568) = v6;
      *(v0 + 560) = v7;
      if (one-time initialization token for device != -1)
      {
        swift_once();
      }

      v8 = *(v0 + 456);
      v9 = *(v0 + 320);
      __swift_project_value_buffer(v1, static Log.device);
      outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v9, v8, &_s10Foundation3URLVSgMd);
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.default.getter();
      v12 = os_log_type_enabled(v10, v11);
      v13 = *(v0 + 456);
      if (v12)
      {
        v14 = *(v0 + 448);
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v48 = v16;
        *v15 = 136315138;
        outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v13, v14, &_s10Foundation3URLVSgMd);
        v17 = String.init<A>(describing:)();
        v19 = v18;
        outlined destroy of [Int](v13, &_s10Foundation3URLVSgMd);
        v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, &v48);

        *(v15 + 4) = v20;
        _os_log_impl(&dword_220940000, v10, v11, "ODIELanguageModel using adapter from URL: %s", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v16);
        MEMORY[0x223D90A10](v16, -1, -1);
        MEMORY[0x223D90A10](v15, -1, -1);
      }

      else
      {

        outlined destroy of [Int](v13, &_s10Foundation3URLVSgMd);
      }

      v28 = *(v0 + 440);
      v29 = *(v0 + 400);
      v30 = *(v0 + 408);
      outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(*(v0 + 320), v28, &_s10Foundation3URLVSgMd);
      v31 = (*(v30 + 48))(v28, 1, v29);
      v32 = *(v0 + 440);
      if (v31 == 1)
      {

        outlined destroy of [Int](v32, &_s10Foundation3URLVSgMd);
        v33 = *(v0 + 568);
        (*(*(v0 + 472) + 56))(*(v0 + 424), 1, 1, *(v0 + 464));
        KernelRegistry.init()();
        if (v33)
        {
          v34 = *(v0 + 568);

          v35 = swift_task_alloc();
          *(v0 + 592) = v35;
          *v35 = v0;
          v35[1] = ODIELanguageModel.init(contentsOf:adapterURL:baseModel:delegate:);
          v36 = *(v0 + 488);
          v37 = *(v0 + 424);
          v38 = *(v0 + 392);

          return specialized registerDelegateKernels<A>(into:program:adapter:delegate:)(v38, v36, v37, v34);
        }

        else
        {
          v44 = swift_task_alloc();
          *(v0 + 608) = v44;
          *v44 = v0;
          v44[1] = ODIELanguageModel.init(contentsOf:adapterURL:baseModel:delegate:);
          v45 = *(v0 + 488);
          v46 = *(v0 + 424);
          v47 = *(v0 + 392);

          return loadDecodingFunctions(from:using:adaptedBy:)(v45, v47, v46);
        }
      }

      else
      {
        (*(*(v0 + 408) + 32))(*(v0 + 416), *(v0 + 440), *(v0 + 400));
        v39 = swift_task_alloc();
        *(v0 + 576) = v39;
        *v39 = v0;
        v39[1] = ODIELanguageModel.init(contentsOf:adapterURL:baseModel:delegate:);
        v41 = *(v0 + 416);
        v40 = *(v0 + 424);
        v42 = *(v0 + 336);
        v43 = *(v0 + 344);

        return static ODIEUtils.loadOrCompileProgram(contentsOf:delegate:nameOfCompiledPackage:)(v40, v41, v42, v43, 7169633, 0xE300000000000000);
      }
    }

    else
    {
      _StringGuts.grow(_:)(127);
      *(v0 + 280) = 0;
      *(v0 + 288) = 0xE000000000000000;
      MEMORY[0x223D8E780](0xD00000000000007DLL, 0x8000000220AFE7E0);
      _print_unlocked<A, B>(_:_:)();
      return _assertionFailure(_:_:file:line:flags:)();
    }
  }

  else
  {
    outlined destroy of [Int](v0 + 200, &_s24TokenGenerationInference9BaseModel_pSgMd);
    if (one-time initialization token for device != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static Log.device);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_220940000, v22, v23, "Loading ODIELanguageModel with no base model loaded yet.", v24, 2u);
      MEMORY[0x223D90A10](v24, -1, -1);
    }

    v25 = swift_task_alloc();
    *(v0 + 512) = v25;
    *v25 = v0;
    v25[1] = ODIELanguageModel.init(contentsOf:adapterURL:baseModel:delegate:);
    v26 = *(v0 + 488);

    return specialized static ODIEUtils.loadStreamingDelegate(from:)(v26);
  }
}

{
  v1 = v0[61];
  v2 = v0[58];
  v3 = v0[59];
  v4 = v0[50];
  v5 = v0[51];
  v6 = v0[40];
  v7 = v0[39];
  outlined destroy of [Int](v0[41], &_s24TokenGenerationInference9BaseModel_pSgMd);
  outlined destroy of [Int](v6, &_s10Foundation3URLVSgMd);
  (*(v5 + 8))(v7, v4);
  (*(v3 + 8))(v1, v2);

  v8 = v0[1];

  return v8();
}

{
  v38 = v0;
  v1 = v0[69];
  v0[71] = v0[65];
  v0[70] = v1;
  if (one-time initialization token for device != -1)
  {
    swift_once();
  }

  v2 = v0[57];
  v3 = v0[40];
  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Log.device);
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v3, v2, &_s10Foundation3URLVSgMd);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[57];
  if (v7)
  {
    v9 = v0[56];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v37 = v11;
    *v10 = 136315138;
    outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v8, v9, &_s10Foundation3URLVSgMd);
    v12 = String.init<A>(describing:)();
    v14 = v13;
    outlined destroy of [Int](v8, &_s10Foundation3URLVSgMd);
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, &v37);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_220940000, v5, v6, "ODIELanguageModel using adapter from URL: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x223D90A10](v11, -1, -1);
    MEMORY[0x223D90A10](v10, -1, -1);
  }

  else
  {

    outlined destroy of [Int](v8, &_s10Foundation3URLVSgMd);
  }

  v16 = v0[55];
  v17 = v0[50];
  v18 = v0[51];
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v0[40], v16, &_s10Foundation3URLVSgMd);
  v19 = (*(v18 + 48))(v16, 1, v17);
  v20 = v0[55];
  if (v19 == 1)
  {

    outlined destroy of [Int](v20, &_s10Foundation3URLVSgMd);
    v21 = v0[71];
    (*(v0[59] + 56))(v0[53], 1, 1, v0[58]);
    KernelRegistry.init()();
    if (v21)
    {
      v22 = v0[71];

      v23 = swift_task_alloc();
      v0[74] = v23;
      *v23 = v0;
      v23[1] = ODIELanguageModel.init(contentsOf:adapterURL:baseModel:delegate:);
      v24 = v0[61];
      v25 = v0[53];
      v26 = v0[49];

      return specialized registerDelegateKernels<A>(into:program:adapter:delegate:)(v26, v24, v25, v22);
    }

    else
    {
      v33 = swift_task_alloc();
      v0[76] = v33;
      *v33 = v0;
      v33[1] = ODIELanguageModel.init(contentsOf:adapterURL:baseModel:delegate:);
      v34 = v0[61];
      v35 = v0[53];
      v36 = v0[49];

      return loadDecodingFunctions(from:using:adaptedBy:)(v34, v36, v35);
    }
  }

  else
  {
    (*(v0[51] + 32))(v0[52], v0[55], v0[50]);
    v28 = swift_task_alloc();
    v0[72] = v28;
    *v28 = v0;
    v28[1] = ODIELanguageModel.init(contentsOf:adapterURL:baseModel:delegate:);
    v30 = v0[52];
    v29 = v0[53];
    v31 = v0[42];
    v32 = v0[43];

    return static ODIEUtils.loadOrCompileProgram(contentsOf:delegate:nameOfCompiledPackage:)(v29, v30, v31, v32, 7169633, 0xE300000000000000);
  }
}

{
  v1 = v0[61];
  v2 = v0[58];
  v3 = v0[59];
  v4 = v0[50];
  v5 = v0[51];
  v7 = v0[40];
  v6 = v0[41];
  v8 = v0[39];

  outlined destroy of [Int](v6, &_s24TokenGenerationInference9BaseModel_pSgMd);
  outlined destroy of [Int](v7, &_s10Foundation3URLVSgMd);
  (*(v5 + 8))(v8, v4);
  (*(v3 + 8))(v1, v2);

  v9 = v0[1];

  return v9();
}

{
  *(*v1 + 584) = v0;

  if (v0)
  {
    v2 = ODIELanguageModel.init(contentsOf:adapterURL:baseModel:delegate:);
  }

  else
  {
    v2 = ODIELanguageModel.init(contentsOf:adapterURL:baseModel:delegate:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  (*(v0[51] + 8))(v0[52], v0[50]);
  v1 = v0[71];
  (*(v0[59] + 56))(v0[53], 0, 1, v0[58]);
  KernelRegistry.init()();
  if (v1)
  {
    v2 = v0[71];

    v3 = swift_task_alloc();
    v0[74] = v3;
    *v3 = v0;
    v3[1] = ODIELanguageModel.init(contentsOf:adapterURL:baseModel:delegate:);
    v4 = v0[61];
    v5 = v0[53];
    v6 = v0[49];

    return specialized registerDelegateKernels<A>(into:program:adapter:delegate:)(v6, v4, v5, v2);
  }

  else
  {
    v8 = swift_task_alloc();
    v0[76] = v8;
    *v8 = v0;
    v8[1] = ODIELanguageModel.init(contentsOf:adapterURL:baseModel:delegate:);
    v9 = v0[61];
    v10 = v0[53];
    v11 = v0[49];

    return loadDecodingFunctions(from:using:adaptedBy:)(v9, v11, v10);
  }
}

{
  v1 = v0[59];
  v9 = v0[58];
  v10 = v0[61];
  v2 = v0[50];
  v4 = v0[40];
  v3 = v0[41];
  v5 = v0[39];
  v6 = *(v0[51] + 8);
  v6(v0[52], v2);

  outlined destroy of [Int](v3, &_s24TokenGenerationInference9BaseModel_pSgMd);
  outlined destroy of [Int](v4, &_s10Foundation3URLVSgMd);
  v6(v5, v2);
  (*(v1 + 8))(v10, v9);

  v7 = v0[1];

  return v7();
}

{
  *(*v1 + 600) = v0;

  if (v0)
  {

    v2 = ODIELanguageModel.init(contentsOf:adapterURL:baseModel:delegate:);
  }

  else
  {
    v2 = ODIELanguageModel.init(contentsOf:adapterURL:baseModel:delegate:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{

  v1 = swift_task_alloc();
  v0[76] = v1;
  *v1 = v0;
  v1[1] = ODIELanguageModel.init(contentsOf:adapterURL:baseModel:delegate:);
  v2 = v0[61];
  v3 = v0[53];
  v4 = v0[49];

  return loadDecodingFunctions(from:using:adaptedBy:)(v2, v4, v3);
}

{
  v84 = v0;
  v1 = v0[78];
  v2 = v0[61];
  v3 = v0[49];
  v4 = ProgramDescriptor.functionNames.getter();
  v5 = swift_task_alloc();
  *(v5 + 16) = v2;
  *(v5 + 24) = v3;
  v6 = specialized Sequence.compactMap<A>(_:)(partial apply for closure #1 in loadGatherFunctions(from:using:), v5, v4);
  v7 = v0[77];
  if (v1)
  {
    v8 = v0[59];
    v77 = v0[58];
    v80 = v0[61];
    v9 = v0[51];
    v68 = v0[50];
    v71 = v0[53];
    v10 = v0[48];
    v73 = v0[47];
    v75 = v0[49];
    v12 = v0[40];
    v11 = v0[41];
    v65 = v0[39];

    outlined destroy of [Int](v11, &_s24TokenGenerationInference9BaseModel_pSgMd);
    outlined destroy of [Int](v12, &_s10Foundation3URLVSgMd);
    (*(v9 + 8))(v65, v68);
    outlined destroy of [Int](v71, &_s4ODIE17ProgramDescriptorVSgMd);
    (*(v10 + 8))(v75, v73);
    (*(v8 + 8))(v80, v77);
  }

  else
  {
    v13 = v6;

    if (!*(v7 + 16))
    {
      __break(1u);
      return result;
    }

    v15 = v0[77];
    if ((*(v15 + 32) & 1) == 0 || *(v13 + 2))
    {
      v16 = v0[71];
      v18 = v0[60];
      v17 = v0[61];
      v20 = v0[58];
      v19 = v0[59];
      v81 = v0[77];
      outlined init with copy of AFMDecodeFunction(v15 + 32, (v0 + 2));
      v21 = v0[6];
      v22 = v0[7];
      __swift_project_boxed_opaque_existential_1(v0 + 3, v21);
      v23 = (*(v22 + 32))(v21, v22);
      LOBYTE(v21) = v24;
      __swift_destroy_boxed_opaque_existential_1((v0 + 3));
      v25 = *(v19 + 16);
      v25(v18, v17, v20);
      if (v21)
      {
        v23 = -1;
      }

      type metadata accessor for ODIEImageFeatureProjector();
      swift_allocObject();

      v26 = ODIEImageFeatureProjector.init(programDescriptor:streamingDelegate:decoderBytesPerEmbedding:)(v18, v16, v23);
      v27 = v0[77];
      v78 = v26;
      v28 = v0[71];
      v29 = v0[70];
      v30 = v0[46];
      v31 = v0[38];
      v25(v31, v0[61], v0[58]);
      v32 = type metadata accessor for ODIELanguageModel();
      *(v31 + v32[5]) = v28;
      *(v31 + v32[6]) = v27;
      *(v31 + v32[7]) = v13;
      *(v31 + v32[8]) = v29;
      outlined init with copy of AFMDecodeFunction(v81 + 32, (v0 + 8));
      v33 = v0[12];
      v34 = v0[13];
      __swift_project_boxed_opaque_existential_1(v0 + 9, v33);
      v35 = *(v34 + 48);

      v36 = v35(v33, v34);
      __swift_destroy_boxed_opaque_existential_1((v0 + 9));
      outlined init with copy of AFMDecodeFunction(v81 + 32, (v0 + 14));

      v37 = v0[18];
      v38 = v0[19];
      __swift_project_boxed_opaque_existential_1(v0 + 15, v37);
      (*(v38 + 16))(v37, v38);
      outlined destroy of AFMDecodeFunction((v0 + 14));
      Function.descriptor.getter();

      v39 = swift_task_alloc();
      *(v39 + 16) = v30;
      v40 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySSG_SS_24TokenGenerationInference17ODIELanguageModelV23KeyValueCacheDescriptorVts5NeverOTg5(partial apply for closure #2 in ODIELanguageModel.init(contentsOf:adapterURL:baseModel:delegate:), v39, v36);

      if (*(v40 + 16))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS24TokenGenerationInference17ODIELanguageModelV23KeyValueCacheDescriptorVGMd);
        v41 = static _DictionaryStorage.allocate(capacity:)();
      }

      else
      {
        v41 = MEMORY[0x277D84F98];
      }

      v83 = v41;

      specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v49, 1, &v83);
      v70 = v0[61];
      v50 = v0[59];
      v67 = v0[58];
      v59 = v0[53];
      v51 = v0[51];
      v58 = v0[50];
      v52 = v0[48];
      v60 = v0[47];
      v61 = v0[49];
      v53 = v0[45];
      v63 = v0[44];
      v64 = v0[46];
      v54 = v0[40];
      v55 = v0[41];
      v56 = v0[39];
      v62 = v0[38];

      outlined destroy of [Int](v55, &_s24TokenGenerationInference9BaseModel_pSgMd);
      outlined destroy of [Int](v54, &_s10Foundation3URLVSgMd);
      (*(v51 + 8))(v56, v58);
      outlined destroy of [Int](v59, &_s4ODIE17ProgramDescriptorVSgMd);
      v57 = v83;
      (*(v52 + 8))(v61, v60);
      (*(v50 + 8))(v70, v67);
      *(v62 + v32[9]) = v57;
      *(v62 + v32[10]) = v78;
      (*(v53 + 8))(v64, v63);

      v48 = v0[1];
      goto LABEL_12;
    }

    v42 = v0[59];
    v79 = v0[58];
    v82 = v0[61];
    v43 = v0[51];
    v69 = v0[50];
    v72 = v0[53];
    v44 = v0[48];
    v74 = v0[47];
    v76 = v0[49];
    v46 = v0[40];
    v45 = v0[41];
    v66 = v0[39];

    lazy protocol witness table accessor for type DecoderModelError and conformance DecoderModelError();
    swift_allocError();
    *v47 = 0xD000000000000019;
    *(v47 + 8) = 0x8000000220AFE7C0;
    *(v47 + 16) = 1;
    swift_willThrow();

    outlined destroy of [Int](v45, &_s24TokenGenerationInference9BaseModel_pSgMd);
    outlined destroy of [Int](v46, &_s10Foundation3URLVSgMd);
    (*(v43 + 8))(v66, v69);
    outlined destroy of [Int](v72, &_s4ODIE17ProgramDescriptorVSgMd);
    (*(v44 + 8))(v76, v74);
    (*(v42 + 8))(v82, v79);
  }

  v48 = v0[1];
LABEL_12:

  return v48();
}

{
  v1 = v0[50];
  v2 = v0[51];
  v3 = v0[40];
  v4 = v0[39];
  outlined destroy of [Int](v0[41], &_s24TokenGenerationInference9BaseModel_pSgMd);
  outlined destroy of [Int](v3, &_s10Foundation3URLVSgMd);
  (*(v2 + 8))(v4, v1);

  v5 = v0[1];

  return v5();
}

{
  v1 = v0[59];
  v13 = v0[58];
  v14 = v0[61];
  v2 = v0[53];
  v3 = v0[50];
  v4 = v0[51];
  v5 = v0[48];
  v11 = v0[47];
  v12 = v0[49];
  v7 = v0[40];
  v6 = v0[41];
  v8 = v0[39];

  outlined destroy of [Int](v6, &_s24TokenGenerationInference9BaseModel_pSgMd);
  outlined destroy of [Int](v7, &_s10Foundation3URLVSgMd);
  (*(v4 + 8))(v8, v3);
  outlined destroy of [Int](v2, &_s4ODIE17ProgramDescriptorVSgMd);
  (*(v5 + 8))(v12, v11);
  (*(v1 + 8))(v14, v13);

  v9 = v0[1];

  return v9();
}

{
  v1 = v0[59];
  v13 = v0[58];
  v14 = v0[61];
  v2 = v0[53];
  v3 = v0[50];
  v4 = v0[51];
  v5 = v0[48];
  v11 = v0[47];
  v12 = v0[49];
  v7 = v0[40];
  v6 = v0[41];
  v8 = v0[39];

  outlined destroy of [Int](v6, &_s24TokenGenerationInference9BaseModel_pSgMd);
  outlined destroy of [Int](v7, &_s10Foundation3URLVSgMd);
  (*(v4 + 8))(v8, v3);
  outlined destroy of [Int](v2, &_s4ODIE17ProgramDescriptorVSgMd);
  (*(v5 + 8))(v12, v11);
  (*(v1 + 8))(v14, v13);

  v9 = v0[1];

  return v9();
}

uint64_t ODIELanguageModel.init(contentsOf:adapterURL:baseModel:delegate:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  v4[65] = a1;
  v4[66] = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](ODIELanguageModel.init(contentsOf:adapterURL:baseModel:delegate:), 0, 0);
  }

  else
  {

    v6 = swift_task_alloc();
    v4[67] = v6;
    *v6 = v5;
    v6[1] = ODIELanguageModel.init(contentsOf:adapterURL:baseModel:delegate:);
    v7 = v4[61];

    return specialized static ODIELanguageModel.loadEmbeddingTable(from:streamingDelegate:)(v7, a1);
  }
}

{
  v4 = *v2;
  *(*v2 + 544) = v1;

  if (v1)
  {

    v5 = ODIELanguageModel.init(contentsOf:adapterURL:baseModel:delegate:);
  }

  else
  {

    *(v4 + 552) = a1;
    v5 = ODIELanguageModel.init(contentsOf:adapterURL:baseModel:delegate:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

{
  v3 = *v2;
  *(v3 + 616) = a1;
  *(v3 + 624) = v1;

  if (v1)
  {
    v4 = ODIELanguageModel.init(contentsOf:adapterURL:baseModel:delegate:);
  }

  else
  {
    v4 = ODIELanguageModel.init(contentsOf:adapterURL:baseModel:delegate:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t specialized registerDelegateKernels<A>(into:program:adapter:delegate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = *a4;
  v4[5] = a3;
  v4[6] = v6;
  v4[3] = a1;
  v4[4] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s4ODIE25DelegateFunctionArgumentsVSgMd);
  v4[7] = swift_task_alloc();
  v7 = type metadata accessor for DelegateFunctionArguments();
  v4[8] = v7;
  v4[9] = *(v7 - 8);
  v4[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s4ODIE18FunctionDescriptorVSgMd);
  v4[11] = swift_task_alloc();
  v8 = type metadata accessor for FunctionDescriptor();
  v4[12] = v8;
  v4[13] = *(v8 - 8);
  v4[14] = swift_task_alloc();
  v9 = type metadata accessor for ProgramDescriptor();
  v4[15] = v9;
  v4[16] = *(v9 - 8);
  v4[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s4ODIE17ProgramDescriptorVSgMd);
  v4[18] = swift_task_alloc();
  v4[2] = a4;

  return MEMORY[0x2822009F8](specialized registerDelegateKernels<A>(into:program:adapter:delegate:), 0, 0);
}

uint64_t specialized registerDelegateKernels<A>(into:program:adapter:delegate:)()
{
  v63 = v0;
  if (one-time initialization token for device != -1)
  {
LABEL_25:
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Log.device);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_220940000, v2, v3, "Found streaming delegate usage", v4, 2u);
    MEMORY[0x223D90A10](v4, -1, -1);
  }

  v5 = v0[18];
  v6 = v0[15];
  v7 = v0[16];
  v8 = v0[5];

  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v8, v5, &_s4ODIE17ProgramDescriptorVSgMd);
  if ((*(v7 + 48))(v5, 1, v6) != 1)
  {
    v9 = v0[17];
    v10 = v0[15];
    v11 = v0[16];
    v12 = *(v11 + 32);
    v12(v9, v0[18], v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy4ODIE17ProgramDescriptorVGMd);
    v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_220AE8A30;
    v12(v14 + v13, v9, v10);
  }

  v15 = ProgramDescriptor.functionNames.getter();
  v16 = v15;
  v61 = *(v15 + 16);
  if (v61)
  {
    v17 = 0;
    v18 = v0[13];
    v19 = v0[9];
    v58 = (v18 + 32);
    v57 = (v19 + 48);
    v55 = (v19 + 32);
    v56 = (v19 + 8);
    v59 = (v18 + 8);
    v60 = (v18 + 48);
    v20 = (v15 + 40);
    v52 = v15;
    while (1)
    {
      if (v17 >= *(v16 + 16))
      {
        __break(1u);
        goto LABEL_25;
      }

      v26 = v0[11];
      v25 = v0[12];
      v28 = *(v20 - 1);
      v27 = *v20;

      ProgramDescriptor.functionDescriptor(for:)();
      result = (*v60)(v26, 1, v25);
      if (result == 1)
      {
        break;
      }

      v31 = v0[7];
      v30 = v0[8];
      (*v58)(v0[14], v0[11], v0[12]);
      MEMORY[0x223D8E2E0](0x687061724753504DLL, 0xE800000000000000);
      if ((*v57)(v31, 1, v30) == 1)
      {
        outlined destroy of [Int](v0[7], &_s4ODIE25DelegateFunctionArgumentsVSgMd);

        v32 = Logger.logObject.getter();
        v33 = static os_log_type_t.info.getter();

        v34 = os_log_type_enabled(v32, v33);
        v35 = v0[14];
        v36 = v0[12];
        if (v34)
        {
          v53 = v0[12];
          v21 = swift_slowAlloc();
          v22 = swift_slowAlloc();
          v62[0] = v22;
          *v21 = 136315138;
          v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v27, v62);

          *(v21 + 4) = v23;
          _os_log_impl(&dword_220940000, v32, v33, "Did not find MPSGraph args for function: %s", v21, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v22);
          v24 = v22;
          v16 = v52;
          MEMORY[0x223D90A10](v24, -1, -1);
          MEMORY[0x223D90A10](v21, -1, -1);

          (*v59)(v35, v53);
        }

        else
        {

          (*v59)(v35, v36);
        }
      }

      else
      {
        (*v55)(v0[10], v0[7], v0[8]);
        v37 = *(DelegateFunctionArguments.groups.getter() + 16);

        if (v37)
        {

          lazy protocol witness table accessor for type MPSGraphDelegate and conformance MPSGraphDelegate();
          dispatch thunk of Delegate.registerKernels(for:with:into:)();
          v38 = v0[14];
          v39 = v0[12];
          (*v56)(v0[10], v0[8]);
          (*v59)(v38, v39);
        }

        else
        {

          v40 = Logger.logObject.getter();
          v41 = static os_log_type_t.info.getter();

          v42 = os_log_type_enabled(v40, v41);
          v43 = v0[14];
          v44 = v0[12];
          v54 = v0[10];
          v45 = v0[8];
          if (v42)
          {
            v51 = v0[12];
            v46 = swift_slowAlloc();
            v50 = v43;
            v47 = swift_slowAlloc();
            v62[0] = v47;
            *v46 = 136315138;
            v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v27, v62);

            *(v46 + 4) = v48;
            _os_log_impl(&dword_220940000, v40, v41, "Function %s had delegate args but no groups??", v46, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v47);
            MEMORY[0x223D90A10](v47, -1, -1);
            MEMORY[0x223D90A10](v46, -1, -1);

            (*v56)(v54, v45);
            (*v59)(v50, v51);
          }

          else
          {

            (*v56)(v54, v45);
            (*v59)(v43, v44);
          }

          v16 = v52;
        }
      }

      ++v17;
      v20 += 2;
      if (v61 == v17)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_21:

    v49 = v0[1];

    return v49();
  }

  return result;
}

uint64_t loadDecodingFunctions(from:using:adaptedBy:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[27] = a2;
  v3[28] = a3;
  v3[26] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s4ODIE24DelegateProgramArgumentsVSgMd);
  v3[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](loadDecodingFunctions(from:using:adaptedBy:), 0, 0);
}

Swift::Int loadDecodingFunctions(from:using:adaptedBy:)()
{
  v45 = v0;
  v2 = *(v0 + 224);
  v1 = *(v0 + 232);
  v43 = *(v0 + 208);
  v3 = ProgramDescriptor.functionNames.getter();
  v4 = swift_task_alloc();
  *(v4 + 16) = v43;
  v5 = specialized _ArrayProtocol.filter(_:)(partial apply for closure #1 in loadDecodingFunctions(from:using:adaptedBy:), v4, v3);

  type metadata accessor for MPSGraphDelegate();
  v6 = static MPSGraphDelegate.name.getter();
  MEMORY[0x223D8E270](v6);

  v7 = type metadata accessor for DelegateProgramArguments();
  v8 = (*(*(v7 - 8) + 48))(v1, 1, v7);
  outlined destroy of [Int](v1, &_s4ODIE24DelegateProgramArgumentsVSgMd);
  v9 = *(v5 + 16);
  v10 = 5;
  if (v9 < 5)
  {
    v10 = *(v5 + 16);
  }

  if (v8 == 1)
  {
    v9 = v10;
  }

  v11 = (2 * v9) | 1;
  v12 = swift_task_alloc();
  *(v12 + 16) = v43;
  *(v12 + 32) = v2;

  v13 = specialized Sequence.compactMap<A>(_:)(partial apply for closure #2 in loadDecodingFunctions(from:using:adaptedBy:), v12, v5 + 32, 0, v11);
  v14 = 0;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_39;
  }

  while (1)
  {
    v18 = *(v13 + 16);
    v44[0] = v13 + 32;
    v44[1] = v18;
    result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v44);
    if (v14)
    {
      return result;
    }

    v19 = *(v13 + 16);
    if (!v19)
    {

      v26 = 0x8000000220AFE8C0;
      lazy protocol witness table accessor for type DecoderModelError and conformance DecoderModelError();
      swift_allocError();
      v28 = 0xD00000000000001BLL;
LABEL_18:
      *v27 = v28;
      *(v27 + 8) = v26;
      *(v27 + 16) = 1;
      swift_willThrow();

      v15 = *(v0 + 8);

      return v15();
    }

    v20 = 0;
    v21 = v13 + 32;
    while (v20 < *(v13 + 16))
    {
      outlined init with copy of AFMDecodeFunction(v21, v0 + 64);
      v23 = *(v0 + 96);
      v22 = *(v0 + 104);
      v24 = __swift_project_boxed_opaque_existential_1((v0 + 72), v23);
      v25 = *(*(v22 + 8) + 32);
      v14 = v24;
      if (v25(v23))
      {
        v29 = *(v0 + 80);
        *(v0 + 16) = *(v0 + 64);
        *(v0 + 32) = v29;
        *(v0 + 48) = *(v0 + 96);
        outlined destroy of [Int](v0 + 16, &_s24TokenGenerationInference17AFMDecodeFunctionVSgMd);
        v14 = -*(v13 + 16);
        v30 = -1;
        v31 = v13 + 32;
        while ((v14 + v30) != -1)
        {
          if (++v30 >= *(v13 + 16))
          {
            goto LABEL_38;
          }

          v23 = v31 + 48;
          outlined init with copy of AFMDecodeFunction(v31, v0 + 112);
          v32 = *(v0 + 112);
          outlined init with copy of AFMDecodeFunction(v13 + 32, v0 + 160);
          outlined destroy of AFMDecodeFunction(v0 + 112);
          v33 = *(v0 + 160);
          outlined destroy of AFMDecodeFunction(v0 + 160);
          v31 = v23;
          if (v32 != v33)
          {
            return _assertionFailure(_:_:file:line:flags:)();
          }
        }

        if (*(v13 + 16))
        {
          LODWORD(v23) = *(v13 + 32);
          if (one-time initialization token for device == -1)
          {
LABEL_26:
            v34 = type metadata accessor for Logger();
            __swift_project_value_buffer(v34, static Log.device);
            v35 = Logger.logObject.getter();
            v36 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v35, v36))
            {
              v37 = swift_slowAlloc();
              v38 = swift_slowAlloc();
              v44[0] = v38;
              *v37 = 136315138;
              if (v23)
              {
                v39 = 0xD000000000000021;
              }

              else
              {
                v39 = 0xD000000000000023;
              }

              if (v23)
              {
                v40 = "Unrecognized decode function.";
              }

              else
              {
                v40 = "mask + positions)";
              }

              v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40 | 0x8000000000000000, v44);

              *(v37 + 4) = v41;
              _os_log_impl(&dword_220940000, v35, v36, "Loaded decoding functions with %s iospec", v37, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v38);
              MEMORY[0x223D90A10](v38, -1, -1);
              MEMORY[0x223D90A10](v37, -1, -1);
            }

            v42 = *(v0 + 8);

            return v42(v13);
          }
        }

        else
        {
          __break(1u);
        }

        swift_once();
        goto LABEL_26;
      }

      ++v20;
      outlined destroy of AFMDecodeFunction(v0 + 64);
      v21 += 48;
      if (v19 == v20)
      {

        *(v0 + 32) = 0u;
        *(v0 + 48) = 0u;
        *(v0 + 16) = 0u;
        outlined destroy of [Int](v0 + 16, &_s24TokenGenerationInference17AFMDecodeFunctionVSgMd);
        v26 = 0x8000000220AFE910;
        lazy protocol witness table accessor for type DecoderModelError and conformance DecoderModelError();
        swift_allocError();
        v28 = 0xD00000000000002FLL;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    v13 = specialized _ArrayBuffer._consumeAndCreateNew()(v13);
  }
}

uint64_t closure #2 in ODIELanguageModel.init(contentsOf:adapterURL:baseModel:delegate:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s4ODIE15ArrayDescriptorVSgMd);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = *a1;
  v8 = a1[1];
  *a2 = v7;
  a2[1] = v8;

  FunctionDescriptor.findArrayDescriptor(of:)(v7, v8, v6);
  v9 = type metadata accessor for ArrayDescriptor();
  result = (*(*(v9 - 8) + 48))(v6, 1, v9);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    result = specialized ODIELanguageModel.KeyValueCacheDescriptor.init(_:)(v6);
    a2[2] = result;
    a2[3] = v11;
    a2[4] = v12;
    a2[5] = v13;
  }

  return result;
}

uint64_t $defer #1 () in static ODIELanguageModel.loadEmbeddingTable(from:streamingDelegate:)()
{
  v0 = type metadata accessor for OSSignpostError();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OSSignpostID();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for signposter != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v8, static ODIELanguageModel.signposter);
  v9 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v10 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    if ((*(v1 + 88))(v3, v0) == *MEMORY[0x277D85B00])
    {
      v11 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1 + 8))(v3, v0);
      v11 = "";
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_220940000, v9, v10, v13, "ODIELoadEmbeddings", v11, v12, 2u);
    MEMORY[0x223D90A10](v12, -1, -1);
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t closure #1 in loadGatherFunctions(from:using:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v22 = a4;
  v8 = type metadata accessor for KernelRegistry();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ProgramDescriptor();
  MEMORY[0x28223BE20](v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  v15 = a1[1];
  (*(v17 + 16))(v14, a2);
  (*(v9 + 16))(v11, a3, v8);

  result = specialized AFMGatherFunction.init(programDescriptor:functionName:kernelRegistry:)(v14, v16, v15, v11);
  if (!v4)
  {
    v20 = v22;
    *v22 = result;
    v20[1] = v19;
  }

  return result;
}

uint64_t closure #1 in loadDecodingFunctions(from:using:adaptedBy:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s4ODIE18FunctionDescriptorVSgMd);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v8 - v1;
  ProgramDescriptor.functionDescriptor(for:)();
  v3 = type metadata accessor for FunctionDescriptor();
  v4 = *(v3 - 8);
  result = (*(v4 + 48))(v2, 1, v3);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v6 = FunctionDescriptor.inputNames.getter();
    v8[0] = 0x706574735F6E69;
    v8[1] = 0xE700000000000000;
    MEMORY[0x28223BE20](v6);
    v8[-2] = v8;
    v7 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, &v8[-4], v6);

    (*(v4 + 8))(v2, v3);
    return v7 & 1;
  }

  return result;
}

uint64_t closure #2 in loadDecodingFunctions(from:using:adaptedBy:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v22 = a4;
  v23 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s4ODIE17ProgramDescriptorVSgMd);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v22 - v9;
  v11 = type metadata accessor for KernelRegistry();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ProgramDescriptor();
  MEMORY[0x28223BE20](v15);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  v19 = a1[1];
  (*(v20 + 16))(v17, a2);
  (*(v12 + 16))(v14, a3, v11);
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v22, v10, &_s4ODIE17ProgramDescriptorVSgMd);

  return AFMDecodeFunction.init(programDescriptor:functionName:kernelRegistry:adaptedBy:)(v17, v18, v19, v14, v10, v23);
}

Swift::Int specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }

  return result;
}

uint64_t specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v52 = *a4;
    v4 = (v52 + 48 * a3);
    v5 = result - a3;
LABEL_6:
    v42 = v4;
    v43 = a3;
    v41 = v5;
    while (1)
    {
      outlined init with copy of AFMDecodeFunction(v4, v48);
      v6 = v4 - 3;
      outlined init with copy of AFMDecodeFunction((v4 - 3), v44);
      v8 = v50;
      v7 = v51;
      __swift_project_boxed_opaque_existential_1(v49, v50);
      v9 = (*(*(v7 + 8) + 24))(v8);
      v11 = v46;
      v10 = v47;
      __swift_project_boxed_opaque_existential_1(v45, v46);
      v12 = (*(*(v10 + 8) + 24))(v11);
      v13 = v50;
      v14 = v51;
      __swift_project_boxed_opaque_existential_1(v49, v50);
      v15 = *(v14 + 8);
      if (v9 != v12)
      {
        break;
      }

      v16 = (*(v15 + 16))(v13);
      v18 = v46;
      v17 = v47;
      __swift_project_boxed_opaque_existential_1(v45, v46);
      v19 = (*(*(v17 + 8) + 16))(v18);
      v20 = v50;
      v21 = v51;
      __swift_project_boxed_opaque_existential_1(v49, v50);
      v22 = *(v21 + 8);
      if (v16 != v19)
      {
        v28 = (*(v22 + 16))(v20);
        v33 = v46;
        v32 = v47;
        __swift_project_boxed_opaque_existential_1(v45, v46);
        v31 = (*(*(v32 + 8) + 16))(v33);
LABEL_14:
        v34 = v31;
        outlined destroy of AFMDecodeFunction(v44);
        result = outlined destroy of AFMDecodeFunction(v48);
        if (v28 >= v34)
        {
          goto LABEL_5;
        }

        goto LABEL_15;
      }

      v23 = (*(v22 + 32))(v20);
      v25 = v46;
      v24 = v47;
      __swift_project_boxed_opaque_existential_1(v45, v46);
      if (((v23 ^ (*(*(v24 + 8) + 32))(v25)) & 1) == 0)
      {
        outlined destroy of AFMDecodeFunction(v44);
        result = outlined destroy of AFMDecodeFunction(v48);
LABEL_5:
        a3 = v43 + 1;
        v4 = v42 + 3;
        v5 = v41 - 1;
        if (v43 + 1 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      v27 = v50;
      v26 = v51;
      __swift_project_boxed_opaque_existential_1(v49, v50);
      LOBYTE(v26) = (*(*(v26 + 8) + 32))(v27);
      outlined destroy of AFMDecodeFunction(v44);
      result = outlined destroy of AFMDecodeFunction(v48);
      if ((v26 & 1) == 0)
      {
        goto LABEL_5;
      }

LABEL_15:
      if (!v52)
      {
        __break(1u);
        return result;
      }

      v36 = v4[1];
      v35 = v4[2];
      v37 = *v4;
      v38 = *(v4 - 2);
      *v4 = *v6;
      v4[1] = v38;
      v4[2] = *(v4 - 1);
      *v6 = v37;
      *(v4 - 2) = v36;
      v4 -= 3;
      v6[2] = v35;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_5;
      }
    }

    v28 = (*(v15 + 24))(v13);
    v30 = v46;
    v29 = v47;
    __swift_project_boxed_opaque_existential_1(v45, v46);
    v31 = (*(*(v29 + 8) + 24))(v30);
    goto LABEL_14;
  }

  return result;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 48;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 48;
  if (v9 >= v11)
  {
    if (a4 != __src || &__src[48 * v11] <= a4)
    {
      memmove(a4, __src, 48 * v11);
    }

    v94 = &v4[48 * v11];
    if (v10 < 48 || v6 <= v7)
    {
LABEL_49:
      v45 = v6;
      goto LABEL_50;
    }

    v83 = v4;
    while (1)
    {
      v45 = v6 - 48;
      v46 = v94 - 48;
      v5 -= 48;
      v84 = v6 - 48;
      v85 = v6;
      while (1)
      {
        outlined init with copy of AFMDecodeFunction(v46, v90);
        outlined init with copy of AFMDecodeFunction(v45, v86);
        v50 = v92;
        v49 = v93;
        __swift_project_boxed_opaque_existential_1(v91, v92);
        v51 = (*(*(v49 + 8) + 24))(v50);
        v53 = v88;
        v52 = v89;
        __swift_project_boxed_opaque_existential_1(v87, v88);
        v54 = (*(*(v52 + 8) + 24))(v53);
        v56 = v92;
        v55 = v93;
        __swift_project_boxed_opaque_existential_1(v91, v92);
        v57 = *(v55 + 8);
        if (v51 != v54)
        {
          v70 = (*(v57 + 24))(v56);
          v72 = v88;
          v71 = v89;
          __swift_project_boxed_opaque_existential_1(v87, v88);
          v73 = (*(*(v71 + 8) + 24))(v72);
          goto LABEL_40;
        }

        v58 = (*(v57 + 16))(v56);
        v60 = v88;
        v59 = v89;
        __swift_project_boxed_opaque_existential_1(v87, v88);
        v61 = (*(*(v59 + 8) + 16))(v60);
        v63 = v92;
        v62 = v93;
        __swift_project_boxed_opaque_existential_1(v91, v92);
        v64 = *(v62 + 8);
        if (v58 != v61)
        {
          break;
        }

        v65 = (*(v64 + 32))(v63);
        v67 = v88;
        v66 = v89;
        __swift_project_boxed_opaque_existential_1(v87, v88);
        if ((v65 ^ (*(*(v66 + 8) + 32))(v67)))
        {
          v68 = v92;
          v69 = v93;
          __swift_project_boxed_opaque_existential_1(v91, v92);
          LOBYTE(v68) = (*(*(v69 + 8) + 32))(v68);
          outlined destroy of AFMDecodeFunction(v86);
          outlined destroy of AFMDecodeFunction(v90);
          v4 = v83;
          v45 = v84;
          if (v68)
          {
            goto LABEL_44;
          }
        }

        else
        {
          outlined destroy of AFMDecodeFunction(v86);
          outlined destroy of AFMDecodeFunction(v90);
          v4 = v83;
          v45 = v84;
        }

LABEL_41:
        v6 = v85;
        if (v5 + 48 != v46 + 48)
        {
          v77 = *v46;
          v78 = *(v46 + 2);
          *(v5 + 1) = *(v46 + 1);
          *(v5 + 2) = v78;
          *v5 = v77;
        }

        v47 = v46 - 48;
        v5 -= 48;
        v48 = v46 > v4;
        v46 -= 48;
        if (!v48)
        {
          v94 = v47 + 48;
          goto LABEL_49;
        }
      }

      v70 = (*(v64 + 16))(v63);
      v75 = v88;
      v74 = v89;
      __swift_project_boxed_opaque_existential_1(v87, v88);
      v73 = (*(*(v74 + 8) + 16))(v75);
LABEL_40:
      v76 = v73;
      outlined destroy of AFMDecodeFunction(v86);
      outlined destroy of AFMDecodeFunction(v90);
      v48 = v70 < v76;
      v4 = v83;
      v45 = v84;
      if (!v48)
      {
        goto LABEL_41;
      }

LABEL_44:
      if (v5 + 48 != v85)
      {
        v79 = *v45;
        v80 = *(v45 + 2);
        *(v5 + 1) = *(v45 + 1);
        *(v5 + 2) = v80;
        *v5 = v79;
      }

      v94 = v46 + 48;
      if (v46 + 48 > v4)
      {
        v6 = v45;
        if (v45 > v7)
        {
          continue;
        }
      }

      v94 = v46 + 48;
      goto LABEL_50;
    }
  }

  if (a4 != __dst || &__dst[48 * v9] <= a4)
  {
    memmove(a4, __dst, 48 * v9);
  }

  v94 = &v4[48 * v9];
  if (v8 >= 48 && v6 < v5)
  {
    while (1)
    {
      outlined init with copy of AFMDecodeFunction(v6, v90);
      outlined init with copy of AFMDecodeFunction(v4, v86);
      v13 = v92;
      v12 = v93;
      __swift_project_boxed_opaque_existential_1(v91, v92);
      v14 = (*(*(v12 + 8) + 24))(v13);
      v16 = v88;
      v15 = v89;
      __swift_project_boxed_opaque_existential_1(v87, v88);
      v17 = (*(*(v15 + 8) + 24))(v16);
      v19 = v92;
      v18 = v93;
      __swift_project_boxed_opaque_existential_1(v91, v92);
      v20 = *(v18 + 8);
      if (v14 != v17)
      {
        break;
      }

      v21 = (*(v20 + 16))(v19);
      v23 = v88;
      v22 = v89;
      __swift_project_boxed_opaque_existential_1(v87, v88);
      v24 = (*(*(v22 + 8) + 16))(v23);
      v26 = v92;
      v25 = v93;
      __swift_project_boxed_opaque_existential_1(v91, v92);
      v27 = *(v25 + 8);
      if (v21 != v24)
      {
        v34 = (*(v27 + 16))(v26);
        v39 = v88;
        v38 = v89;
        __swift_project_boxed_opaque_existential_1(v87, v88);
        v37 = (*(*(v38 + 8) + 16))(v39);
LABEL_14:
        v40 = v37;
        outlined destroy of AFMDecodeFunction(v86);
        outlined destroy of AFMDecodeFunction(v90);
        if (v34 >= v40)
        {
          goto LABEL_19;
        }

        goto LABEL_15;
      }

      v28 = (*(v27 + 32))(v26);
      v30 = v88;
      v29 = v89;
      __swift_project_boxed_opaque_existential_1(v87, v88);
      if (((v28 ^ (*(*(v29 + 8) + 32))(v30)) & 1) == 0)
      {
        outlined destroy of AFMDecodeFunction(v86);
        outlined destroy of AFMDecodeFunction(v90);
LABEL_19:
        v41 = v4;
        v42 = v7 == v4;
        v4 += 48;
        if (v42)
        {
          goto LABEL_21;
        }

LABEL_20:
        v43 = *v41;
        v44 = *(v41 + 2);
        *(v7 + 1) = *(v41 + 1);
        *(v7 + 2) = v44;
        *v7 = v43;
        goto LABEL_21;
      }

      v32 = v92;
      v31 = v93;
      __swift_project_boxed_opaque_existential_1(v91, v92);
      v33 = (*(*(v31 + 8) + 32))(v32);
      outlined destroy of AFMDecodeFunction(v86);
      outlined destroy of AFMDecodeFunction(v90);
      if ((v33 & 1) == 0)
      {
        goto LABEL_19;
      }

LABEL_15:
      v41 = v6;
      v42 = v7 == v6;
      v6 += 48;
      if (!v42)
      {
        goto LABEL_20;
      }

LABEL_21:
      v7 += 48;
      if (v4 >= v94 || v6 >= v5)
      {
        goto LABEL_23;
      }
    }

    v34 = (*(v20 + 24))(v19);
    v36 = v88;
    v35 = v89;
    __swift_project_boxed_opaque_existential_1(v87, v88);
    v37 = (*(*(v35 + 8) + 24))(v36);
    goto LABEL_14;
  }

LABEL_23:
  v45 = v7;
LABEL_50:
  v81 = (v94 - v4) / 48;
  if (v45 != v4 || v45 >= &v4[48 * v81])
  {
    memmove(v45, v4, 48 * v81);
  }

  return 1;
}

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
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
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
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (v21 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

void specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_21;
  }

  LOBYTE(v6) = a2;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v39 = *(a1 + 64);
  v40 = *(a1 + 48);
  v9 = *a3;

  v10 = specialized __RawDictionaryStorage.find<A>(_:)(v8, v7);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v15, v6 & 1);
    v10 = specialized __RawDictionaryStorage.find<A>(_:)(v8, v7);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (v6)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v20 = v10;
  specialized _NativeDictionary.copy()();
  v10 = v20;
  if (v16)
  {
LABEL_8:
    v18 = swift_allocError();
    swift_willThrow();
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v22 = (v21[6] + 16 * v10);
  *v22 = v8;
  v22[1] = v7;
  v23 = (v21[7] + 32 * v10);
  *v23 = v40;
  v23[1] = v39;
  v24 = v21[2];
  v14 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    _StringGuts.grow(_:)(30);
    MEMORY[0x223D8E780](0xD00000000000001BLL, 0x8000000220AFB7D0);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x223D8E780](39, 0xE100000000000000);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v21[2] = v25;
  if (v4 != 1)
  {
    v6 = (a1 + 96);
    v26 = 1;
    while (v26 < *(a1 + 16))
    {
      v8 = *(v6 - 2);
      v7 = *(v6 - 1);
      v39 = v6[1];
      v40 = *v6;
      v27 = *a3;

      v28 = specialized __RawDictionaryStorage.find<A>(_:)(v8, v7);
      v30 = v27[2];
      v31 = (v29 & 1) == 0;
      v14 = __OFADD__(v30, v31);
      v32 = v30 + v31;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v29;
      if (v27[3] < v32)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v32, 1);
        v28 = specialized __RawDictionaryStorage.find<A>(_:)(v8, v7);
        if ((v16 & 1) != (v33 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v34 = *a3;
      *(*a3 + 8 * (v28 >> 6) + 64) |= 1 << v28;
      v35 = (v34[6] + 16 * v28);
      *v35 = v8;
      v35[1] = v7;
      v36 = (v34[7] + 32 * v28);
      *v36 = v40;
      v36[1] = v39;
      v37 = v34[2];
      v14 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v26;
      v34[2] = v38;
      v6 += 3;
      if (v4 == v26)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

uint64_t specialized static ODIELanguageModel.loadEmbeddingTable(from:streamingDelegate:)(uint64_t a1, uint64_t a2)
{
  v2[16] = a1;
  v2[17] = a2;
  v3 = type metadata accessor for Intent();
  v2[18] = v3;
  v2[19] = *(v3 - 8);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v4 = type metadata accessor for SymbolDescriptor();
  v2[22] = v4;
  v2[23] = *(v4 - 8);
  v2[24] = swift_task_alloc();
  v5 = type metadata accessor for FunctionDescriptor();
  v2[25] = v5;
  v2[26] = *(v5 - 8);
  v2[27] = swift_task_alloc();
  v6 = type metadata accessor for ArrayDescriptor();
  v2[28] = v6;
  v2[29] = *(v6 - 8);
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v7 = type metadata accessor for DelegateFunctionArguments();
  v2[32] = v7;
  v2[33] = *(v7 - 8);
  v2[34] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s4ODIE18FunctionDescriptorVSgMd);
  v2[35] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s4ODIE25DelegateFunctionArgumentsVSgMd);
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v8 = type metadata accessor for KernelRegistry();
  v2[38] = v8;
  v2[39] = *(v8 - 8);
  v2[40] = swift_task_alloc();
  v9 = type metadata accessor for OSSignpostID();
  v2[41] = v9;
  v2[42] = *(v9 - 8);
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized static ODIELanguageModel.loadEmbeddingTable(from:streamingDelegate:), 0, 0);
}

uint64_t specialized static ODIELanguageModel.loadEmbeddingTable(from:streamingDelegate:)()
{
  if (one-time initialization token for signposter != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v1, static ODIELanguageModel.signposter);
  static OSSignpostID.exclusive.getter();
  v2 = OSSignposter.logHandle.getter();
  v3 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_220940000, v2, v3, v5, "ODIELoadEmbeddings", "", v4, 2u);
    MEMORY[0x223D90A10](v4, -1, -1);
  }

  v6 = v0[43];
  v7 = v0[44];
  v9 = v0[41];
  v8 = v0[42];

  (*(v8 + 16))(v6, v7, v9);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v0[45] = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v8 + 8))(v7, v9);
  v10 = ProgramDescriptor.functionNames.getter();
  v0[14] = 0x626D655F64616F6CLL;
  v0[15] = 0xEF73676E69646465;
  v11 = swift_task_alloc();
  *(v11 + 16) = v0 + 14;
  LOBYTE(v9) = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v11, v10);

  if (v9)
  {
    v12 = v0[17];
    KernelRegistry.init()();
    if (v12)
    {
      v13 = v0[35];
      v15 = v0[25];
      v14 = v0[26];

      ProgramDescriptor.functionDescriptor(for:)();
      result = (*(v14 + 48))(v13, 1, v15);
      if (result == 1)
      {
        __break(1u);
        goto LABEL_32;
      }

      v18 = v0[36];
      v17 = v0[37];
      v19 = v0[35];
      v20 = v0[32];
      v21 = v0[33];
      v22 = v0[25];
      v23 = v0[26];
      type metadata accessor for MPSGraphDelegate();
      v24 = static MPSGraphDelegate.name.getter();
      MEMORY[0x223D8E2E0](v24);

      (*(v23 + 8))(v19, v22);
      outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v17, v18, &_s4ODIE25DelegateFunctionArgumentsVSgMd);
      if ((*(v21 + 48))(v18, 1, v20) == 1)
      {
        v25 = v0 + 36;
        outlined destroy of [Int](v0[37], &_s4ODIE25DelegateFunctionArgumentsVSgMd);
      }

      else
      {
        (*(v0[33] + 32))(v0[34], v0[36], v0[32]);
        if (one-time initialization token for device != -1)
        {
          swift_once();
        }

        v27 = type metadata accessor for Logger();
        __swift_project_value_buffer(v27, static Log.device);
        v28 = Logger.logObject.getter();
        v29 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          *v30 = 0;
          _os_log_impl(&dword_220940000, v28, v29, "load_embeddings was delegated to streaming delegate", v30, 2u);
          MEMORY[0x223D90A10](v30, -1, -1);
        }

        MPSGraphDelegate.registerKernels(for:with:into:)();
        v32 = v0[33];
        v31 = v0[34];
        v33 = v0[32];

        (*(v32 + 8))(v31, v33);
        v25 = v0 + 37;
      }

      outlined destroy of [Int](*v25, &_s4ODIE25DelegateFunctionArgumentsVSgMd);
    }

    v34 = type metadata accessor for EmptyProfiler();
    v35 = MEMORY[0x277D36AD0];
    v0[12] = v34;
    v0[13] = v35;
    __swift_allocate_boxed_opaque_existential_1(v0 + 9);
    EmptyProfiler.init()();
    v36 = ProgramDescriptor.function(named:kernelRegistry:dependencies:profiler:)();
    v0[46] = v36;
    v38 = v36;
    result = __swift_destroy_boxed_opaque_existential_1((v0 + 9));
    if (v38)
    {
      v39 = v0[31];
      v40 = v0[26];
      v41 = v0[27];
      v43 = v0[24];
      v42 = v0[25];
      v44 = v0[23];
      v66 = v0[22];
      Function.descriptor.getter();
      FunctionDescriptor.arrayDescriptor(of:)(0x6E69646465626D65, 0xEA00000000007367, v39);
      v45 = *(v40 + 8);
      v45(v41, v42);
      Function.descriptor.getter();
      FunctionDescriptor.symbol.getter();
      v45(v41, v42);
      v46 = SymbolDescriptor.outputIntents.getter();
      v0[47] = v46;
      (*(v44 + 8))(v43, v66);
      if (*(v46 + 16) != 1)
      {
        return _assertionFailure(_:_:file:line:flags:)();
      }

      v48 = v0[20];
      v47 = v0[21];
      v50 = v0[18];
      v49 = v0[19];
      (*(v49 + 16))(v47, v46 + ((*(v49 + 80) + 32) & ~*(v49 + 80)), v50);
      (*(v49 + 104))(v48, *MEMORY[0x277D36AE8], v50);
      v51 = MEMORY[0x223D8E370](v47, v48);
      v52 = *(v49 + 8);
      v52(v48, v50);
      v52(v47, v50);
      if (v51)
      {
        v53 = swift_task_alloc();
        v0[48] = v53;
        *v53 = v0;
        v53[1] = specialized static ODIELanguageModel.loadEmbeddingTable(from:streamingDelegate:);
        v54 = MEMORY[0x277D84F98];

        return Function._run(inputs:)(v54);
      }

      else
      {
        v56 = v0[30];
        v55 = v0[31];
        v58 = v0[28];
        v57 = v0[29];

        (*(v57 + 16))(v56, v55, v58);
        type metadata accessor for NDArray();
        swift_allocObject();
        v59 = NDArray.init(descriptor:)();
        v0[51] = v59;
        v60 = v59;

        v61 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_4ODIE7NDArrayCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
        v0[52] = v61;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_4ODIE7NDArrayCtGMd);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_220AE8A30;
        *(inited + 32) = 0x6E69646465626D65;
        v63 = inited + 32;
        *(inited + 40) = 0xEA00000000007367;
        *(inited + 48) = v60;
        v64 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_4ODIE7NDArrayCTt0g5Tf4g_n(inited);
        v0[53] = v64;
        swift_setDeallocating();
        outlined destroy of [Int](v63, &_sSS_4ODIE7NDArrayCtMd);
        v65 = swift_task_alloc();
        v0[54] = v65;
        *v65 = v0;
        v65[1] = specialized static ODIELanguageModel.loadEmbeddingTable(from:streamingDelegate:);

        return Function._run(inputs:outputs:)(v61, v64);
      }
    }

LABEL_32:
    __break(1u);
    return result;
  }

  lazy protocol witness table accessor for type DecoderModelError and conformance DecoderModelError();
  swift_allocError();
  *v26 = xmmword_220AEEFB0;
  *(v26 + 16) = 1;
  swift_willThrow();
  $defer #1 () in static ODIELanguageModel.loadEmbeddingTable(from:streamingDelegate:)();

  v37 = v0[1];

  return v37();
}

{
  if (!*(v0[49] + 16))
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v1 = specialized __RawDictionaryStorage.find<A>(_:)(0x6E69646465626D65, 0xEA00000000007367);
  if ((v2 & 1) == 0)
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v3 = v1;
  v4 = v0[49];
  v6 = v0[39];
  v5 = v0[40];
  v7 = v0[38];
  v8 = v0[31];
  v9 = v0[28];
  v10 = v0[29];

  v13 = *(*(v4 + 56) + 8 * v3);

  (*(v10 + 8))(v8, v9);
  (*(v6 + 8))(v5, v7);

  $defer #1 () in static ODIELanguageModel.loadEmbeddingTable(from:streamingDelegate:)();

  v11 = v0[1];

  return v11(v13);
}

{
  *(*v1 + 440) = v0;

  if (v0)
  {
    v2 = specialized static ODIELanguageModel.loadEmbeddingTable(from:streamingDelegate:);
  }

  else
  {
    v2 = specialized static ODIELanguageModel.loadEmbeddingTable(from:streamingDelegate:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v2 = v0[39];
  v1 = v0[40];
  v3 = v0[38];
  v4 = v0[31];
  v5 = v0[28];
  v6 = v0[29];

  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  v9 = v0[51];
  $defer #1 () in static ODIELanguageModel.loadEmbeddingTable(from:streamingDelegate:)();

  v7 = v0[1];

  return v7(v9);
}

{
  v2 = v0[39];
  v1 = v0[40];
  v3 = v0[38];
  v4 = v0[31];
  v5 = v0[28];
  v6 = v0[29];

  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  $defer #1 () in static ODIELanguageModel.loadEmbeddingTable(from:streamingDelegate:)();

  v7 = v0[1];

  return v7();
}

{
  v2 = v0[39];
  v1 = v0[40];
  v3 = v0[38];
  v4 = v0[31];
  v5 = v0[28];
  v6 = v0[29];

  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  $defer #1 () in static ODIELanguageModel.loadEmbeddingTable(from:streamingDelegate:)();

  v7 = v0[1];

  return v7();
}

uint64_t specialized static ODIELanguageModel.loadEmbeddingTable(from:streamingDelegate:)(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 392) = a1;
  *(v3 + 400) = v1;

  if (v1)
  {

    v4 = specialized static ODIELanguageModel.loadEmbeddingTable(from:streamingDelegate:);
  }

  else
  {
    v4 = specialized static ODIELanguageModel.loadEmbeddingTable(from:streamingDelegate:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

unint64_t lazy protocol witness table accessor for type MPSGraphDelegate and conformance MPSGraphDelegate()
{
  result = lazy protocol witness table cache variable for type MPSGraphDelegate and conformance MPSGraphDelegate;
  if (!lazy protocol witness table cache variable for type MPSGraphDelegate and conformance MPSGraphDelegate)
  {
    type metadata accessor for MPSGraphDelegate();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MPSGraphDelegate and conformance MPSGraphDelegate);
  }

  return result;
}

uint64_t specialized ODIELanguageModel.KeyValueCacheDescriptor.init(_:)(uint64_t a1)
{
  v2 = type metadata accessor for ScalarType();
  v67 = *(v2 - 8);
  v68 = v2;
  MEMORY[0x28223BE20](v2);
  v66 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Dimension();
  v72 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v65 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v64 = &v57 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v63 = &v57 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v62 = &v57 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v73 = &v57 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v69 = &v57 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v57 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v57 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v57 - v23;
  v75 = a1;
  v71 = ArrayDescriptor.interleave.getter();
  if (*(v71 + 16) != 5)
  {
    goto LABEL_39;
  }

  v25 = v72;
  v61 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v26 = v71 + v61;
  v77 = *(v72 + 16);
  v77(v24, (v71 + v61), v4);
  v74 = *(v25 + 88);
  v27 = v74(v24, v4);
  if (v27 != *MEMORY[0x277D36B40])
  {
    goto LABEL_35;
  }

  v28 = v27;
  v76 = *(v25 + 96);
  v76(v24, v4);
  v29 = v74;
  if (*v24 != 1)
  {
    goto LABEL_39;
  }

  v30 = *(v72 + 72);
  v77(v22, (v26 + v30), v4);
  if (v29(v22, v4) != v28)
  {
    goto LABEL_32;
  }

  v76(v22, v4);
  if (*v22 != 1)
  {
    goto LABEL_39;
  }

  v60 = 2 * v30;
  v31 = v30;
  v77(v19, (v26 + 2 * v30), v4);
  if (v29(v19, v4) != v28)
  {
    v24 = v19;
    goto LABEL_35;
  }

  v32 = v76;
  v76(v19, v4);
  v33 = *v19;
  v70 = v31;
  v58 = v33;
  v59 = 3 * v31;
  v34 = v26 + 3 * v31;
  v22 = v69;
  v77(v69, v34, v4);
  if (v29(v22, v4) != v28)
  {
LABEL_32:
    v24 = v22;
    goto LABEL_35;
  }

  v32(v22, v4);
  if (*v22 != 1)
  {
    goto LABEL_39;
  }

  v24 = v73;
  v77(v73, (v26 + 4 * v70), v4);
  if (v29(v24, v4) != v28)
  {
LABEL_35:
    (*(v72 + 8))(v24, v4);
    goto LABEL_39;
  }

  v76(v24, v4);
  if (*v24 != 1)
  {
    goto LABEL_39;
  }

  LODWORD(v73) = v28;
  v69 = ArrayDescriptor.shape.getter();
  if (*(v69 + 2) != 5)
  {
    goto LABEL_39;
  }

  v35 = v62;
  v36 = &v69[v61];
  v37 = v77;
  v77(v62, &v69[v61], v4);
  v38 = v74;
  v39 = v74(v35, v4);
  v40 = v63;
  if (v39 != v73)
  {
    goto LABEL_38;
  }

  v41 = v76;
  v76(v35, v4);
  v42 = *v35;
  v61 = v36;
  v62 = v42;
  v37(v40, &v36[v70], v4);
  v43 = v38(v40, v4);
  if (v43 != v73)
  {
    v62 = v40;
LABEL_38:
    (*(v72 + 8))(v62, v4);
    goto LABEL_39;
  }

  v41(v40, v4);
  v44 = v64;
  if (*v40 == 1)
  {
    v45 = v61;
    v46 = v77;
    v77(v64, (v61 + v60), v4);
    v47 = v74;
    v48 = v74(v44, v4);
    v49 = v73;
    v50 = v76;
    if (v48 == v73)
    {
      v76(v44, v4);
      v70 = *v44;
      v44 = v65;
      v46(v65, v45 + v59, v4);
      if (v47(v44, v4) == v49)
      {
        v50(v44, v4);
        if (*v44 != 1)
        {
          goto LABEL_39;
        }

        v51 = ArrayDescriptor.strides.getter();
        if (!v51)
        {
          goto LABEL_39;
        }

        if (v51[2] != 6 || v51[5] != v51[6] || v51[7] != v51[8])
        {
          goto LABEL_30;
        }

        v52 = v66;
        v53 = v75;
        ArrayDescriptor.scalarType.getter();
        v54 = ScalarType.byteCount.getter();
        v55 = type metadata accessor for ArrayDescriptor();
        (*(*(v55 - 8) + 8))(v53, v55);
        (*(v67 + 8))(v52, v68);
        if ((v62 * v70) >> 64 == (v62 * v70) >> 63)
        {
          if (v58)
          {
            if (v62 * v70 != 0x8000000000000000 || v58 != -1)
            {
              return v54;
            }

            goto LABEL_29;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:

        goto LABEL_39;
      }
    }

    v62 = v44;
    goto LABEL_38;
  }

LABEL_39:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized Collection.first.getter(uint64_t a1)
{
  return specialized Collection.first.getter(a1, specialized Dictionary.Keys.subscript.getter);
}

{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = __CocoaSet.startIndex.getter();
    v5 = v4;
    v6 = __CocoaSet.endIndex.getter();
    v8 = v7;
    v9 = MEMORY[0x223D8ED50](v3, v5, v6, v7);
    outlined consume of [String : String].Index._Variant(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      outlined consume of [String : String].Index._Variant(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v3 = _HashTable.startBucket.getter();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  specialized Set.subscript.getter(v3, v5, v2 != 0, a1);
  v12 = v11;
  outlined consume of [String : String].Index._Variant(v3, v5, v2 != 0);
  return v12;
}

uint64_t specialized Collection.first.getter(uint64_t a1, uint64_t (*a2)(uint64_t, void, void, uint64_t))
{
  v4 = _HashTable.startBucket.getter();
  if (v4 == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return a2(v4, *(a1 + 36), 0, a1);
  }
}

_OWORD *specialized Collection.first.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = _HashTable.startBucket.getter();
  if (v4 == 1 << *(a1 + 32))
  {
    result = 0;
    v6 = 0;
    v7 = 0uLL;
    v8 = 0uLL;
  }

  else
  {
    result = specialized Dictionary.subscript.getter(v9, v4, *(a1 + 36), 0, a1);
    v7 = v9[0];
    v8 = v9[1];
  }

  *a2 = result;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
  *(a2 + 32) = v8;
  return result;
}

_DWORD *specialized Collection.first.getter(uint64_t a1)
{
  v2 = _HashTable.startBucket.getter();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return specialized Dictionary.subscript.getter(&v4, v2, *(a1 + 36), 0, a1);
  }
}

uint64_t _s24TokenGenerationInference12AFMUtilitiesV23makeMaximumSizedBuffers3for9largestOf17excludingOperandsSDySS4ODIE7NDArrayC6BufferVGSaySSG_SayxGANtKAA23ArrayDescriptorProviderRzlFZAA17AFMDecodeFunctionV_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v121 = a2;
  v7 = type metadata accessor for NDArray.Buffer();
  MEMORY[0x28223BE20](v7 - 8);
  v116 = &v113 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OperandType();
  v157 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v147 = &v113 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v113 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s4ODIE11OperandTypeOSgMd);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v146 = &v113 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v153 = &v113 - v18;
  MEMORY[0x28223BE20](v17);
  v155 = &v113 - v19;
  v145 = type metadata accessor for FunctionDescriptor();
  v156 = *(v145 - 8);
  MEMORY[0x28223BE20](v145);
  v148 = &v113 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s4ODIE15ArrayDescriptorVSgMd);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v134 = &v113 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v144 = &v113 - v24;
  v25 = type metadata accessor for ArrayDescriptor();
  v26 = *(v25 - 8);
  v27 = MEMORY[0x28223BE20](v25);
  v117 = &v113 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v118 = &v113 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v135 = &v113 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v137 = &v113 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v122 = &v113 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v143 = &v113 - v38;
  MEMORY[0x28223BE20](v37);
  v133 = &v113 - v39;
  v165 = MEMORY[0x277D84F98];
  v40 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS4ODIE7NDArrayC6BufferVGMd);
  Dictionary.reserveCapacity(_:)(v40);
  v124 = v40;
  if (!v40)
  {
    return v165;
  }

  v132 = v13;
  v43 = 0;
  v44 = a1 + 32;
  v115 = v121 + 32;
  v158 = v157 + 6;
  v142 = &v157[4];
  v131 = v157 + 7;
  v130 = v157 + 2;
  v129 = v157 + 11;
  v128 = *MEMORY[0x277D36AC8];
  v127 = v157 + 1;
  v126 = v157 + 12;
  v150 = (v26 + 16);
  v141 = (v26 + 56);
  v140 = (v156 + 8);
  v139 = (v26 + 48);
  v154 = (v26 + 32);
  v149 = v26;
  v136 = (v26 + 8);
  *&v42 = 136315138;
  v113 = v42;
  *&v42 = 136315394;
  v114 = v42;
  v120 = a3;
  v119 = a1 + 32;
  v138 = v25;
  while (1)
  {
    v45 = (v44 + 16 * v43);
    v46 = v45[1];
    v152 = *v45;
    v161 = v152;
    v162 = v46;
    MEMORY[0x28223BE20](v41);
    v111 = &v161;

    if ((specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, (&v113 - 2), a3) & 1) == 0)
    {
      break;
    }

LABEL_4:
    if (++v43 == v124)
    {
      return v165;
    }
  }

  v151 = v46;
  v123 = v43;
  v125 = v4;
  v47 = *(v121 + 16);
  if (v47)
  {
    v48 = v115;
    v49 = MEMORY[0x277D84F90];
    do
    {
      v156 = v47;
      v157 = v49;
      outlined init with copy of AFMDecodeFunction(v48, &v161);
      v50 = v163;
      v51 = v164;
      __swift_project_boxed_opaque_existential_1(&v162, v163);
      (*(v51 + 16))(v50, v51);
      Function.descriptor.getter();

      v52 = v153;
      FunctionDescriptor.operandType(ofInput:)();
      isa = v158->isa;
      if ((v158->isa)(v52, 1, v9) == 1)
      {
        v54 = v155;
        FunctionDescriptor.operandType(ofOutput:)();
        v55 = isa(v52, 1, v9);
        v57 = v146;
        v56 = v147;
        v25 = v138;
        if (v55 != 1)
        {
          outlined destroy of [Int](v153, &_s4ODIE11OperandTypeOSgMd);
        }
      }

      else
      {
        v54 = v155;
        (*v142)(v155, v52, v9);
        (v131->isa)(v54, 0, 1, v9);
        v57 = v146;
        v56 = v147;
        v25 = v138;
      }

      outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v54, v57, &_s4ODIE11OperandTypeOSgMd);
      if (isa(v57, 1, v9) == 1)
      {
        outlined destroy of [Int](v54, &_s4ODIE11OperandTypeOSgMd);
        outlined destroy of [Int](v57, &_s4ODIE11OperandTypeOSgMd);
        v58 = v144;
        (*v141)(v144, 1, 1, v25);
      }

      else
      {
        v59 = v132;
        (*v142)(v132, v57, v9);
        (v130->isa)(v56, v59, v9);
        v60 = (v129->isa)(v56, v9);
        if (v60 != v128)
        {
          goto LABEL_53;
        }

        (v127->isa)(v59, v9);
        outlined destroy of [Int](v155, &_s4ODIE11OperandTypeOSgMd);
        (v126->isa)(v56, v9);
        v61 = swift_projectBox();
        v62 = v134;
        (*v150)(v134, v61, v25);
        (*v141)(v62, 0, 1, v25);

        v58 = v144;
        outlined init with take of Asset?(v62, v144, &_s4ODIE15ArrayDescriptorVSgMd);
      }

      (*v140)(v148, v145);
      outlined destroy of AFMDecodeFunction(&v161);
      if ((*v139)(v58, 1, v25) == 1)
      {
        outlined destroy of [Int](v58, &_s4ODIE15ArrayDescriptorVSgMd);
        v49 = v157;
      }

      else
      {
        v63 = *v154;
        v64 = v133;
        (*v154)(v133, v58, v25);
        v63(v143, v64, v25);
        v49 = v157;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v49[2].isa + 1, 1, v49);
        }

        v66 = v49[2].isa;
        v65 = v49[3].isa;
        v67 = v149;
        if (v66 >= v65 >> 1)
        {
          v68 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v65 > 1, v66 + 1, 1, v49);
          v67 = v149;
          v49 = v68;
        }

        v49[2].isa = (v66 + 1);
        v63(v49 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v66, v143, v25);
      }

      v48 += 48;
      v47 = v156 - 1;
    }

    while (v156 != 1);
  }

  else
  {
    v49 = MEMORY[0x277D84F90];
  }

  v69 = v49[2].isa;
  if (!v69)
  {

    v86 = v152;
    if (one-time initialization token for device != -1)
    {
      swift_once();
    }

    v87 = type metadata accessor for Logger();
    __swift_project_value_buffer(v87, static Log.device);
    v88 = v151;

    v89 = Logger.logObject.getter();
    v90 = static os_log_type_t.error.getter();

    v157 = v89;
    v91 = os_log_type_enabled(v89, v90);
    v4 = v125;
    if (v91)
    {
      v92 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      v161 = v93;
      *v92 = v113;
      v94 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v86, v88, &v161);

      *(v92 + 4) = v94;
      v95 = v157;
      _os_log_impl(&dword_220940000, v157, v90, "Did not allocate buffer for operand named %s because no functions were found to use it.", v92, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v93);
      MEMORY[0x223D90A10](v93, -1, -1);
      MEMORY[0x223D90A10](v92, -1, -1);
    }

    else
    {
    }

LABEL_48:
    a3 = v120;
    v43 = v123;
    v44 = v119;
    goto LABEL_4;
  }

  v70 = *(v149 + 16);
  v156 = v49 + ((*(v149 + 80) + 32) & ~*(v149 + 80));
  v157 = v70;
  (v70)(v137);
  v71 = v135;
  if (v69 != 1)
  {
    v96 = 1;
    while (1)
    {
      if (v96 >= v49[2].isa)
      {
        __break(1u);
        goto LABEL_52;
      }

      (v157)(v71, &v156[*(v149 + 72) * v96]);
      v97 = ArrayDescriptor.byteCount.getter();
      if (v98)
      {
        v161 = 0;
        v162 = 0xE000000000000000;
        _StringGuts.grow(_:)(50);

        v161 = 0xD000000000000030;
        v162 = 0x8000000220AFEBA0;
        MEMORY[0x223D8E780](v152, v151);
        v112 = 0;
        v110 = 112;
        goto LABEL_56;
      }

      v99 = v97;
      v100 = ArrayDescriptor.byteCount.getter();
      if (v101)
      {
        break;
      }

      v102 = *v136;
      if (v99 >= v100)
      {
        v71 = v135;
        v102(v135, v25);
      }

      else
      {
        v103 = v137;
        v102(v137, v25);
        v104 = v103;
        v71 = v135;
        (*v154)(v104, v135, v25);
      }

      if (v69 == ++v96)
      {
        goto LABEL_27;
      }
    }

    v161 = 0;
    v162 = 0xE000000000000000;
    _StringGuts.grow(_:)(50);

    v161 = 0xD000000000000030;
    v162 = 0x8000000220AFEBA0;
    MEMORY[0x223D8E780](v152, v151);
    v112 = 0;
    v110 = 116;
LABEL_56:
    v111 = v110;
    goto LABEL_57;
  }

LABEL_27:

  v72 = v122;
  (*v154)(v122, v137, v25);
  if (one-time initialization token for device != -1)
  {
    swift_once();
  }

  v73 = type metadata accessor for Logger();
  __swift_project_value_buffer(v73, static Log.device);
  v74 = v118;
  (v157)(v118, v72, v25);
  v75 = v151;

  v76 = Logger.logObject.getter();
  v77 = static os_log_type_t.info.getter();

  v78 = os_log_type_enabled(v76, v77);
  v4 = v125;
  if (!v78)
  {
    v85 = *v136;
    (*v136)(v74, v25);

    goto LABEL_45;
  }

  LODWORD(v156) = v77;
  v79 = v76;
  v80 = swift_slowAlloc();
  v81 = swift_slowAlloc();
  v161 = v81;
  *v80 = v114;
  *(v80 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v152, v75, &v161);
  *(v80 + 12) = 2048;
  v82 = ArrayDescriptor.byteCount.getter();
  if ((v83 & 1) == 0)
  {
    v84 = v82;
    v85 = *v136;
    (*v136)(v74, v25);
    *(v80 + 14) = v84;
    _os_log_impl(&dword_220940000, v79, v156, "Allocating buffer for operand %s of size %ld", v80, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v81);
    MEMORY[0x223D90A10](v81, -1, -1);
    MEMORY[0x223D90A10](v80, -1, -1);

    v4 = v125;
LABEL_45:
    v105 = v122;
    (v157)(v117, v122, v25);
    type metadata accessor for NDArray();
    swift_allocObject();
    NDArray.init(descriptor:)();
    if (v4)
    {
      v85(v105, v25);
    }

    v106 = v116;
    NDArray.buffer.getter();
    v107 = v165;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v161 = v107;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v106, v152, v151, isUniquelyReferenced_nonNull_native);

    v41 = (v85)(v105, v25);
    v165 = v161;
    goto LABEL_48;
  }

LABEL_52:
  __break(1u);
LABEL_53:
  v159 = 0;
  v160 = 0xE000000000000000;
  _StringGuts.grow(_:)(55);
  MEMORY[0x223D8E780](0xD000000000000019, 0x8000000220AFE210);
  MEMORY[0x223D8E780](v152, v151);
  MEMORY[0x223D8E780](0xD00000000000001ALL, 0x8000000220AFE230);
  _print_unlocked<A, B>(_:_:)();
  v112 = 0;
  v111 = 25;
LABEL_57:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t _s24TokenGenerationInference12AFMUtilitiesV23makeMaximumSizedBuffers3for9largestOf17excludingOperandsSDySS4ODIE7NDArrayC6BufferVGSaySSG_SayxGANtKAA23ArrayDescriptorProviderRzlFZAA17AFMGatherFunctionV_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v132 = a2;
  v7 = type metadata accessor for NDArray.Buffer();
  MEMORY[0x28223BE20](v7 - 8);
  v127 = &v123 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OperandType();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v156 = &v123 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v145 = &v123 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s4ODIE11OperandTypeOSgMd);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v155 = &v123 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v159 = &v123 - v18;
  MEMORY[0x28223BE20](v17);
  v163 = &v123 - v19;
  v154 = type metadata accessor for FunctionDescriptor();
  v168 = *(v154 - 8);
  MEMORY[0x28223BE20](v154);
  v21 = &v123 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s4ODIE15ArrayDescriptorVSgMd);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v144 = &v123 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v153 = &v123 - v25;
  v169 = type metadata accessor for ArrayDescriptor();
  v26 = *(v169 - 8);
  v27 = MEMORY[0x28223BE20](v169);
  v128 = &v123 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v129 = &v123 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v146 = &v123 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v147 = &v123 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v131 = &v123 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v152 = &v123 - v38;
  MEMORY[0x28223BE20](v37);
  v143 = &v123 - v39;
  v172 = MEMORY[0x277D84F98];
  v40 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS4ODIE7NDArrayC6BufferVGMd);
  Dictionary.reserveCapacity(_:)(v40);
  v135 = v40;
  if (!v40)
  {
    return v172;
  }

  v43 = 0;
  v134 = a1 + 32;
  v126 = v132 + 32;
  v167 = (v10 + 48);
  v151 = (v10 + 32);
  v142 = (v10 + 56);
  v141 = (v10 + 16);
  v140 = (v10 + 88);
  v139 = *MEMORY[0x277D36AC8];
  v138 = (v10 + 8);
  v137 = (v10 + 96);
  v160 = (v26 + 16);
  v150 = (v26 + 56);
  v149 = (v168 + 8);
  v148 = (v26 + 48);
  v162 = (v26 + 32);
  v157 = v26;
  v125 = (v26 + 8);
  *&v42 = 136315138;
  v123 = v42;
  *&v42 = 136315394;
  v124 = v42;
  v158 = v21;
  v44 = v169;
  v130 = a3;
  while (1)
  {
    v45 = (v134 + 16 * v43);
    v46 = v45[1];
    v164 = *v45;
    v170 = v164;
    v171 = v46;
    MEMORY[0x28223BE20](v41);
    v121 = &v170;

    if ((specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), (&v123 - 2), a3) & 1) == 0)
    {
      break;
    }

LABEL_4:
    if (++v43 == v135)
    {
      return v172;
    }
  }

  v161 = v46;
  v133 = v43;
  v136 = v4;
  v47 = *(v132 + 16);
  if (v47)
  {
    v48 = v126;
    v168 = MEMORY[0x277D84F90];
    v49 = v167;
    v50 = v159;
    do
    {
      v166 = v47;

      Function.descriptor.getter();
      FunctionDescriptor.operandType(ofInput:)();
      v51 = *v49;
      v52 = (*v49)(v50, 1, v9);
      v53 = v9;
      if (v52 == 1)
      {
        v54 = v163;
        FunctionDescriptor.operandType(ofOutput:)();
        v55 = v51(v50, 1, v53);
        v56 = v156;
        if (v55 != 1)
        {
          outlined destroy of [Int](v50, &_s4ODIE11OperandTypeOSgMd);
        }
      }

      else
      {
        v54 = v163;
        (*v151)(v163, v50, v53);
        (*v142)(v54, 0, 1, v53);
        v56 = v156;
      }

      v57 = v155;
      outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v54, v155, &_s4ODIE11OperandTypeOSgMd);
      if (v51(v57, 1, v53) == 1)
      {
        outlined destroy of [Int](v54, &_s4ODIE11OperandTypeOSgMd);
        outlined destroy of [Int](v57, &_s4ODIE11OperandTypeOSgMd);
        v58 = v153;
        v44 = v169;
        (*v150)(v153, 1, 1, v169);
        v50 = v159;
        v9 = v53;
      }

      else
      {
        v59 = v145;
        (*v151)(v145, v57, v53);
        (*v141)(v56, v59, v53);
        v60 = (*v140)(v56, v53);
        v9 = v53;
        if (v60 != v139)
        {
          goto LABEL_55;
        }

        (*v138)(v59, v53);
        outlined destroy of [Int](v163, &_s4ODIE11OperandTypeOSgMd);
        (*v137)(v56, v53);
        v61 = swift_projectBox();
        v62 = v144;
        v63 = v169;
        (*v160)(v144, v61, v169);
        (*v150)(v62, 0, 1, v63);

        v64 = v62;
        v44 = v63;
        v58 = v153;
        outlined init with take of Asset?(v64, v153, &_s4ODIE15ArrayDescriptorVSgMd);
        v50 = v159;
      }

      v65 = v164;
      (*v149)(v158, v154);

      if ((*v148)(v58, 1, v44) == 1)
      {
        outlined destroy of [Int](v58, &_s4ODIE15ArrayDescriptorVSgMd);
        v49 = v167;
      }

      else
      {
        v66 = v9;
        v67 = *v162;
        v68 = v143;
        (*v162)(v143, v58, v44);
        v67(v152, v68, v44);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v69 = v168;
        }

        else
        {
          v69 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v168 + 2) + 1, 1, v168);
        }

        v71 = *(v69 + 2);
        v70 = *(v69 + 3);
        v9 = v66;
        if (v71 >= v70 >> 1)
        {
          v69 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v70 > 1, v71 + 1, 1, v69);
        }

        v49 = v167;
        *(v69 + 2) = v71 + 1;
        v72 = (*(v157 + 80) + 32) & ~*(v157 + 80);
        v168 = v69;
        v73 = v69 + v72 + *(v157 + 72) * v71;
        v44 = v169;
        v67(v73, v152, v169);
        v65 = v164;
      }

      v48 += 16;
      v47 = (v166 - 1);
    }

    while (v166 != 1);
  }

  else
  {
    v168 = MEMORY[0x277D84F90];
    v65 = v164;
  }

  v74 = *(v168 + 2);
  if (!v74)
  {
    v96 = v65;

    v4 = v136;
    if (one-time initialization token for device != -1)
    {
      swift_once();
    }

    v97 = type metadata accessor for Logger();
    __swift_project_value_buffer(v97, static Log.device);
    v98 = v161;

    v99 = Logger.logObject.getter();
    v100 = static os_log_type_t.error.getter();

    v101 = v99;
    if (os_log_type_enabled(v99, v100))
    {
      v102 = v96;
      v103 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      v170 = v104;
      *v103 = v123;
      v105 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v102, v98, &v170);

      *(v103 + 4) = v105;
      _os_log_impl(&dword_220940000, v101, v100, "Did not allocate buffer for operand named %s because no functions were found to use it.", v103, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v104);
      MEMORY[0x223D90A10](v104, -1, -1);
      MEMORY[0x223D90A10](v103, -1, -1);
    }

    else
    {
    }

    a3 = v130;
    v44 = v169;
LABEL_50:
    v43 = v133;
    goto LABEL_4;
  }

  v75 = v157;
  v76 = v168 + ((*(v157 + 80) + 32) & ~*(v157 + 80));
  v77 = *(v157 + 16);
  v77(v147, v76, v44);
  v78 = v168;
  v79 = v146;
  v80 = v125;
  if (v74 != 1)
  {
    v106 = 1;
    while (1)
    {
      if (v106 >= *(v78 + 2))
      {
        __break(1u);
        goto LABEL_54;
      }

      v77(v79, &v76[*(v75 + 72) * v106], v169);
      v107 = ArrayDescriptor.byteCount.getter();
      if (v108)
      {
        v170 = 0;
        v171 = 0xE000000000000000;
        _StringGuts.grow(_:)(50);

        v170 = 0xD000000000000030;
        v171 = 0x8000000220AFEBA0;
        MEMORY[0x223D8E780](v164, v161);
        v122 = 0;
        v120 = 112;
        goto LABEL_58;
      }

      v109 = v107;
      v110 = ArrayDescriptor.byteCount.getter();
      if (v111)
      {
        break;
      }

      v112 = *v80;
      if (v109 >= v110)
      {
        v79 = v146;
        v112(v146, v169);
      }

      else
      {
        v113 = v147;
        v114 = v169;
        v112(v147, v169);
        v115 = v113;
        v79 = v146;
        (*v162)(v115, v146, v114);
      }

      v75 = v157;
      ++v106;
      v78 = v168;
      if (v74 == v106)
      {
        goto LABEL_28;
      }
    }

    v170 = 0;
    v171 = 0xE000000000000000;
    _StringGuts.grow(_:)(50);

    v170 = 0xD000000000000030;
    v171 = 0x8000000220AFEBA0;
    MEMORY[0x223D8E780](v164, v161);
    v122 = 0;
    v120 = 116;
LABEL_58:
    v121 = v120;
    goto LABEL_59;
  }

LABEL_28:
  v168 = v77;

  v81 = v131;
  v82 = v169;
  (*v162)(v131, v147, v169);
  if (one-time initialization token for device != -1)
  {
    swift_once();
  }

  v83 = type metadata accessor for Logger();
  __swift_project_value_buffer(v83, static Log.device);
  v84 = v129;
  v168(v129, v81, v82);
  v85 = v161;

  v86 = Logger.logObject.getter();
  v87 = static os_log_type_t.info.getter();

  v88 = os_log_type_enabled(v86, v87);
  v4 = v136;
  if (!v88)
  {
    v94 = *v80;
    (*v80)(v84, v82);

    goto LABEL_46;
  }

  v166 = v86;
  v89 = swift_slowAlloc();
  v90 = swift_slowAlloc();
  v170 = v90;
  *v89 = v124;
  *(v89 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v164, v85, &v170);
  *(v89 + 12) = 2048;
  v91 = ArrayDescriptor.byteCount.getter();
  if ((v92 & 1) == 0)
  {
    v93 = v91;
    v94 = *v80;
    v82 = v169;
    (*v80)(v84, v169);
    *(v89 + 14) = v93;
    v95 = v166;
    _os_log_impl(&dword_220940000, v166, v87, "Allocating buffer for operand %s of size %ld", v89, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v90);
    MEMORY[0x223D90A10](v90, -1, -1);
    MEMORY[0x223D90A10](v89, -1, -1);

    v81 = v131;
    v4 = v136;
LABEL_46:
    v168(v128, v81, v82);
    type metadata accessor for NDArray();
    swift_allocObject();
    NDArray.init(descriptor:)();
    if (v4)
    {
      v94(v81, v82);
    }

    v116 = v127;
    NDArray.buffer.getter();
    v117 = v172;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v170 = v117;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v116, v164, v161, isUniquelyReferenced_nonNull_native);

    v41 = (v94)(v81, v82);
    v172 = v170;
    a3 = v130;
    v44 = v82;
    goto LABEL_50;
  }

LABEL_54:
  __break(1u);
LABEL_55:
  v170 = 0;
  v171 = 0xE000000000000000;
  _StringGuts.grow(_:)(55);
  MEMORY[0x223D8E780](0xD000000000000019, 0x8000000220AFE210);
  MEMORY[0x223D8E780](v164, v161);
  MEMORY[0x223D8E780](0xD00000000000001ALL, 0x8000000220AFE230);
  _print_unlocked<A, B>(_:_:)();
  v122 = 0;
  v121 = 25;
LABEL_59:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t _s24TokenGenerationInference12AFMUtilitiesV25findOptimalDecodeFunction4from14currentContext15remainingTokens26tokensRequiringLogitsCountSi13functionIndex_Si10holesToAddtSgSayxG_S3itAA09AFMDecodeH10DescriptorRzlFZAA0wH0V_Tt3g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 16);
  if (!v5)
  {
LABEL_59:
    if (one-time initialization token for device == -1)
    {
LABEL_60:
      v66 = type metadata accessor for Logger();
      __swift_project_value_buffer(v66, static Log.device);
      v67 = Logger.logObject.getter();
      v68 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        *v69 = 134218496;
        *(v69 + 4) = a2;
        *(v69 + 12) = 2048;
        *(v69 + 14) = a3;
        *(v69 + 22) = 2048;
        *(v69 + 24) = a4;
        _os_log_impl(&dword_220940000, v67, v68, "Failed to find a decode function to run next inference for current context: %ld remainingTokens: %ld, tokensRequiringLogitsCount: %ld", v69, 0x20u);
        MEMORY[0x223D90A10](v69, -1, -1);
      }

      return 0;
    }

LABEL_79:
    swift_once();
    goto LABEL_60;
  }

  v6 = 0;
  v72 = 0;
  v7 = a1 + 32;
  v73 = -1;
  v70 = a1 + 32;
  v71 = 0x7FFFFFFFFFFFFFFFLL;
  v76 = *(a1 + 16);
  while (2)
  {
    v8 = v7 + 48 * v6;
    while (1)
    {
      if (v6 >= v5)
      {
        __break(1u);
LABEL_64:
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
LABEL_72:
        outlined destroy of AFMDecodeFunction(v79);
        return v75;
      }

      if (__OFADD__(v6, 1))
      {
        goto LABEL_64;
      }

      *v79 = v6;
      outlined init with copy of AFMDecodeFunction(v8, &v79[8]);
      v9 = v80;
      if (!v80)
      {
        goto LABEL_57;
      }

      v75 = *v79;
      v10 = v81;
      *v79 = *&v79[8];
      *&v79[16] = *&v79[24];
      *&v79[32] = v80;
      v80 = v81;
      __swift_project_boxed_opaque_existential_1(&v79[8], v9);
      v11 = (*(*(v10 + 8) + 24))(v9);
      if (!v11)
      {
        goto LABEL_65;
      }

      if (a2 == 0x8000000000000000 && v11 == -1)
      {
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
        goto LABEL_79;
      }

      v12 = v11 - a2 % v11;
      if (__OFSUB__(v11, a2 % v11))
      {
        goto LABEL_66;
      }

      if (v12 >= a3)
      {
        v12 = 0;
      }

      if (a2 % v11)
      {
        v13 = v12;
      }

      else
      {
        v13 = 0;
      }

      v14 = a2 + v13;
      if (__OFADD__(a2, v13))
      {
        goto LABEL_67;
      }

      v15 = v14 + v13;
      if (__OFADD__(v14, v13))
      {
        goto LABEL_68;
      }

      v78 = v6 + 1;
      v16 = a2;
      a2 = *&v79[32];
      v17 = v80;
      __swift_project_boxed_opaque_existential_1(&v79[8], *&v79[32]);
      v18 = (*(*(v17 + 8) + 24))(a2);
      if (!v18)
      {
        goto LABEL_69;
      }

      if (v15 == 0x8000000000000000 && v18 == -1)
      {
        goto LABEL_74;
      }

      v20 = __OFSUB__(v15, v15 % v18);
      v21 = v15 - v15 % v18;
      if (v20)
      {
        goto LABEL_70;
      }

      v23 = *&v79[32];
      v22 = v80;
      __swift_project_boxed_opaque_existential_1(&v79[8], *&v79[32]);
      a2 = (*(*(v22 + 8) + 24))(v23);
      v25 = *&v79[32];
      v24 = v80;
      __swift_project_boxed_opaque_existential_1(&v79[8], *&v79[32]);
      v26 = (*(*(v24 + 8) + 24))(v25);
      v20 = __OFADD__(v21, v26);
      v27 = v21 + v26;
      if (v20)
      {
        goto LABEL_71;
      }

      v29 = *&v79[32];
      v28 = v80;
      __swift_project_boxed_opaque_existential_1(&v79[8], *&v79[32]);
      if ((*(*(v28 + 8) + 16))(v29) >= v27)
      {
        v31 = *&v79[32];
        v30 = v80;
        __swift_project_boxed_opaque_existential_1(&v79[8], *&v79[32]);
        v32 = (*(*(v30 + 8) + 24))(v31);
        if (!v32)
        {
          goto LABEL_75;
        }

        if (v14 == 0x8000000000000000 && v32 == -1)
        {
          goto LABEL_78;
        }

        v34 = v14 % v32;
        v36 = *&v79[32];
        v35 = v80;
        __swift_project_boxed_opaque_existential_1(&v79[8], *&v79[32]);
        v37 = (*(*(v35 + 8) + 24))(v36);
        v38 = v37 - v34;
        if (__OFSUB__(v37, v34))
        {
          goto LABEL_76;
        }

        v39 = a3 - v38;
        if (__OFSUB__(a3, v38))
        {
          goto LABEL_77;
        }

        v41 = *&v79[32];
        v40 = v80;
        __swift_project_boxed_opaque_existential_1(&v79[8], *&v79[32]);
        if (((*(*(v40 + 8) + 32))(v41) & 1) != 0 || v39 >= a4)
        {
          break;
        }
      }

      outlined destroy of AFMDecodeFunction(v79);
      v5 = v76;
      ++v6;
      v8 += 48;
      a2 = v16;
      if (v78 == v76)
      {
        goto LABEL_57;
      }
    }

    if (a2 >= a3)
    {
      if (v39 < a4)
      {
        goto LABEL_72;
      }

      v43 = *&v79[32];
      v42 = v80;
      __swift_project_boxed_opaque_existential_1(&v79[8], *&v79[32]);
      if (((*(*(v42 + 8) + 32))(v43) & 1) == 0)
      {
        goto LABEL_72;
      }
    }

    v45 = *&v79[32];
    v44 = v80;
    __swift_project_boxed_opaque_existential_1(&v79[8], *&v79[32]);
    v46 = (*(*(v44 + 8) + 24))(v45);
    v48 = *&v79[32];
    v47 = v80;
    __swift_project_boxed_opaque_existential_1(&v79[8], *&v79[32]);
    v49 = v72;
    a2 = v16;
    if ((*(*(v47 + 8) + 24))(v48) == v72)
    {
      v51 = *&v79[32];
      v50 = v80;
      __swift_project_boxed_opaque_existential_1(&v79[8], *&v79[32]);
      v52 = (*(*(v50 + 8) + 16))(v51);
      v53 = v52 < v71;
      if (v39 < a4)
      {
        if (v72 < v46 || v52 < v71)
        {
          goto LABEL_52;
        }

        goto LABEL_53;
      }
    }

    else
    {
      if (v39 < a4)
      {
        if (v72 < v46)
        {
          goto LABEL_52;
        }

        goto LABEL_53;
      }

      v53 = 0;
    }

    v55 = *&v79[32];
    v54 = v80;
    __swift_project_boxed_opaque_existential_1(&v79[8], *&v79[32]);
    if ((*(*(v54 + 8) + 24))(v55) == v72 && (v57 = *&v79[32], v56 = v80, __swift_project_boxed_opaque_existential_1(&v79[8], *&v79[32]), (*(*(v56 + 8) + 16))(v57) == v71))
    {
      v59 = *&v79[32];
      v58 = v80;
      __swift_project_boxed_opaque_existential_1(&v79[8], *&v79[32]);
      v60 = (*(*(v58 + 8) + 32))(v59);
      if (v72 < v46 || v53 || (v60 & 1) == 0)
      {
LABEL_52:
        v62 = *&v79[32];
        v61 = v80;
        __swift_project_boxed_opaque_existential_1(&v79[8], *&v79[32]);
        v49 = (*(*(v61 + 8) + 24))(v62);
        v64 = *&v79[32];
        v63 = v80;
        __swift_project_boxed_opaque_existential_1(&v79[8], *&v79[32]);
        v71 = (*(*(v63 + 8) + 16))(v64);
        v73 = v75;
      }
    }

    else if (v72 < v46 || v53)
    {
      goto LABEL_52;
    }

LABEL_53:
    v72 = v49;
    outlined destroy of AFMDecodeFunction(v79);
    v5 = v76;
    v6 = v78;
    v7 = v70;
    if (v78 != v76)
    {
      continue;
    }

    break;
  }

LABEL_57:
  if (v73 == -1)
  {
    goto LABEL_59;
  }

  return v73;
}

uint64_t ODIELanguageModelRunner.description.getter()
{
  v12 = 0;
  v13[0] = 0xE000000000000000;
  _StringGuts.grow(_:)(67);
  v16 = 0;
  v17 = 0xE000000000000000;
  MEMORY[0x223D8E780](0xD000000000000014, 0x8000000220AFE9E0);
  v1 = v0 + OBJC_IVAR____TtC24TokenGenerationInference23ODIELanguageModelRunner_model;
  result = type metadata accessor for ODIELanguageModel();
  v3 = *(v1 + *(result + 24));
  v4 = *(v3 + 16);
  if (v4)
  {
    outlined init with copy of AFMDecodeFunction(v3 + 48 * v4 - 16, &v12);
    v6 = v14;
    v5 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    v7 = (*(*(v5 + 8) + 16))(v6);
    outlined destroy of AFMDecodeFunction(&v12);
    v12 = v7;
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x223D8E780](v8);

    MEMORY[0x223D8E780](0xD000000000000013, 0x8000000220AFEA00);
    result = NDArray.shape.getter();
    if (*(result + 16))
    {
      v9 = *(result + 32);

      v12 = v9;
      v10 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x223D8E780](v10);

      MEMORY[0x223D8E780](0xD000000000000016, 0x8000000220AFEA20);
      v11 = MEMORY[0x223D8E8D0](v3, &type metadata for AFMDecodeFunction);
      MEMORY[0x223D8E780](v11);

      return v16;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t ODIELanguageModelRunner.init(contentsOf:adapterURL:baseModel:delegate:ignoreUnknownTokens:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v7 + 368) = a6;
  *(v7 + 232) = a5;
  *(v7 + 240) = v6;
  *(v7 + 216) = a3;
  *(v7 + 224) = a4;
  *(v7 + 200) = a1;
  *(v7 + 208) = a2;
  *(v7 + 248) = *v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s4ODIE7NDArrayC6BufferVSgMd);
  *(v7 + 256) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  *(v7 + 264) = swift_task_alloc();
  v8 = type metadata accessor for URL();
  *(v7 + 272) = v8;
  *(v7 + 280) = *(v8 - 8);
  *(v7 + 288) = swift_task_alloc();
  *(v7 + 296) = type metadata accessor for ODIELanguageModel();
  *(v7 + 304) = swift_task_alloc();
  v9 = type metadata accessor for OSSignpostID();
  *(v7 + 312) = v9;
  *(v7 + 320) = *(v9 - 8);
  *(v7 + 328) = swift_task_alloc();
  *(v7 + 336) = swift_task_alloc();

  return MEMORY[0x2822009F8](ODIELanguageModelRunner.init(contentsOf:adapterURL:baseModel:delegate:ignoreUnknownTokens:), 0, 0);
}

uint64_t ODIELanguageModelRunner.init(contentsOf:adapterURL:baseModel:delegate:ignoreUnknownTokens:)()
{
  *(v0[30] + OBJC_IVAR____TtC24TokenGenerationInference23ODIELanguageModelRunner_isInDynamicMode) = 0;
  if (one-time initialization token for signposter != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v1, static ODIELanguageModel.signposter);
  static OSSignpostID.exclusive.getter();
  v2 = OSSignposter.logHandle.getter();
  v3 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_220940000, v2, v3, v5, "ODIELanguageModelInit", "", v4, 2u);
    MEMORY[0x223D90A10](v4, -1, -1);
  }

  v6 = v0[41];
  v7 = v0[42];
  v9 = v0[39];
  v8 = v0[40];
  v10 = v0[35];
  v11 = v0[36];
  v12 = v0[34];
  v22 = v0[33];
  v23 = v0[27];
  v21 = v0[26];
  v13 = v0[25];

  (*(v8 + 16))(v6, v7, v9);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v0[43] = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v8 + 8))(v7, v9);
  (*(v10 + 16))(v11, v13, v12);
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v21, v22, &_s10Foundation3URLVSgMd);
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v23, (v0 + 14), &_s24TokenGenerationInference9BaseModel_pSgMd);

  v14 = swift_task_alloc();
  v0[44] = v14;
  *v14 = v0;
  v14[1] = ODIELanguageModelRunner.init(contentsOf:adapterURL:baseModel:delegate:ignoreUnknownTokens:);
  v15 = v0[38];
  v16 = v0[36];
  v17 = v0[33];
  v18 = v0[28];
  v19 = v0[29];

  return ODIELanguageModel.init(contentsOf:adapterURL:baseModel:delegate:)(v15, v16, v17, (v0 + 14), v18, v19);
}

{
  *(*v1 + 360) = v0;

  if (v0)
  {

    v2 = ODIELanguageModelRunner.init(contentsOf:adapterURL:baseModel:delegate:ignoreUnknownTokens:);
  }

  else
  {
    v2 = ODIELanguageModelRunner.init(contentsOf:adapterURL:baseModel:delegate:ignoreUnknownTokens:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v65 = v0;
  v1 = *(v0 + 296);
  v2 = *(v0 + 240) + OBJC_IVAR____TtC24TokenGenerationInference23ODIELanguageModelRunner_model;
  outlined init with take of ODIELanguageModel(*(v0 + 304), v2);
  v3 = *(v1 + 24);
  v4 = *(v2 + v3);
  if (*(v4 + 16))
  {
    v5 = *(v0 + 360);
    outlined init with copy of AFMDecodeFunction(v4 + 32, v0 + 16);
    v6 = *(v0 + 48);
    v7 = *(v0 + 56);
    __swift_project_boxed_opaque_existential_1((v0 + 24), v6);
    v8 = (*(v7 + 24))(v6, v7);
    outlined destroy of AFMDecodeFunction(v0 + 16);
    v9 = *(v2 + v3);

    v10 = _s24TokenGenerationInference12AFMUtilitiesV23makeMaximumSizedBuffers3for9largestOf17excludingOperandsSDySS4ODIE7NDArrayC6BufferVGSaySSG_SayxGANtKAA23ArrayDescriptorProviderRzlFZAA17AFMDecodeFunctionV_Tt2g5(v8, v9, &outlined read-only object #0 of ODIELanguageModelRunner.init(contentsOf:adapterURL:baseModel:delegate:ignoreUnknownTokens:));
    if (v5)
    {

      outlined destroy of String(aInEmbeddings_0);
      v14 = *(v0 + 272);
      v15 = *(v0 + 280);
      v17 = *(v0 + 208);
      v16 = *(v0 + 216);
      v18 = *(v0 + 200);
      $defer #1 () in ODIELanguageModelRunner.init(contentsOf:adapterURL:baseModel:delegate:ignoreUnknownTokens:)(*(v0 + 344), v18);

      outlined destroy of [Int](v16, &_s24TokenGenerationInference9BaseModel_pSgMd);
      outlined destroy of [Int](v17, &_s10Foundation3URLVSgMd);
      (*(v15 + 8))(v18, v14);
      v19 = type metadata accessor for ProgramDescriptor();
      (*(*(v19 - 8) + 8))(v2, v19);

      swift_deallocPartialClassInstance();

      v20 = *(v0 + 8);

      return v20();
    }

    v11 = v10;
    v12 = *(v0 + 296);

    outlined destroy of String(aInEmbeddings_0);
    v13 = *(v2 + *(v12 + 28));

    v22 = _s24TokenGenerationInference12AFMUtilitiesV23makeMaximumSizedBuffers3for9largestOf17excludingOperandsSDySS4ODIE7NDArrayC6BufferVGSaySSG_SayxGANtKAA23ArrayDescriptorProviderRzlFZAA17AFMGatherFunctionV_Tt2g5(&outlined read-only object #0 of one-time initialization function for allNames, v13, &outlined read-only object #1 of ODIELanguageModelRunner.init(contentsOf:adapterURL:baseModel:delegate:ignoreUnknownTokens:));

    swift_arrayDestroy();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v64[0] = v11;
    specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v22, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, v64);
    v24 = *(v0 + 240);

    v25 = v64[0];
    *(v24 + OBJC_IVAR____TtC24TokenGenerationInference23ODIELanguageModelRunner_buffers) = v64[0];
    v26 = *(v2 + v3);
    v27 = *(v26 + 16);
    if (v27)
    {
      if (*(v26 + 32))
      {
        if (*(v25 + 16))
        {
          v28 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000011, 0x8000000220AFA610);
          v29 = *(v0 + 256);
          if (v30)
          {
            v62 = v28;
            v63 = *(v25 + 56);
            v31 = type metadata accessor for NDArray.Buffer();
            v32 = *(v31 - 8);
            (*(v32 + 16))(v29, v63 + *(v32 + 72) * v62, v31);
            (*(v32 + 56))(v29, 0, 1, v31);
          }

          else
          {
            v35 = type metadata accessor for NDArray.Buffer();
            (*(*(v35 - 8) + 56))(v29, 1, 1, v35);
          }
        }

        else
        {
          v33 = *(v0 + 256);
          v34 = type metadata accessor for NDArray.Buffer();
          (*(*(v34 - 8) + 56))(v33, 1, 1, v34);
        }

        v36 = *(v0 + 256);
        swift_beginAccess();
        specialized Dictionary.subscript.setter(v36, 0xD000000000000013, 0x8000000220AFA630);
        swift_endAccess();
        v26 = *(v2 + v3);
        v27 = *(v26 + 16);
        if (!v27)
        {
          __break(1u);
        }
      }

      v37 = *(v0 + 368);
      v38 = *(v0 + 240);
      outlined init with copy of AFMDecodeFunction(v26 + 48 * v27 - 16, v0 + 64);

      v39 = *(v0 + 96);
      v40 = *(v0 + 104);
      __swift_project_boxed_opaque_existential_1((v0 + 72), v39);
      v41 = (*(*(v40 + 8) + 16))(v39);
      outlined destroy of AFMDecodeFunction(v0 + 64);
      v42 = OBJC_IVAR____TtC24TokenGenerationInference23ODIELanguageModelRunner_contextTokens;
      v43 = MEMORY[0x277D84F90];
      *(v38 + OBJC_IVAR____TtC24TokenGenerationInference23ODIELanguageModelRunner_contextTokens) = MEMORY[0x277D84F90];
      swift_beginAccess();
      *(v38 + v42) = v43;
      v44 = v41 & ~(v41 >> 63);
      *(v38 + v42) = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v44, 0, v43);
      v45 = OBJC_IVAR____TtC24TokenGenerationInference23ODIELanguageModelRunner_holeIndices;
      *(v38 + OBJC_IVAR____TtC24TokenGenerationInference23ODIELanguageModelRunner_holeIndices) = v43;
      *(v38 + v45) = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v44, 0, v43);
      *(v38 + OBJC_IVAR____TtC24TokenGenerationInference23ODIELanguageModelRunner_ignoreUnknownTokens) = v37;
      if (one-time initialization token for device == -1)
      {
        goto LABEL_18;
      }

      goto LABEL_25;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_25:
  swift_once();
LABEL_18:
  v46 = type metadata accessor for Logger();
  __swift_project_value_buffer(v46, static Log.device);

  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v64[0] = v50;
    *v49 = 136315138;

    v51 = ODIELanguageModelRunner.description.getter();
    v53 = v52;

    v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v53, v64);

    *(v49 + 4) = v54;
    _os_log_impl(&dword_220940000, v47, v48, "\nLoaded ODIELanguageModel:\n%s\n", v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v50);
    MEMORY[0x223D90A10](v50, -1, -1);
    MEMORY[0x223D90A10](v49, -1, -1);
  }

  v55 = *(v0 + 280);
  v56 = *(v0 + 272);
  v57 = *(v0 + 208);
  v58 = *(v0 + 216);
  v59 = *(v0 + 200);
  $defer #1 () in ODIELanguageModelRunner.init(contentsOf:adapterURL:baseModel:delegate:ignoreUnknownTokens:)(*(v0 + 344), v59);

  outlined destroy of [Int](v58, &_s24TokenGenerationInference9BaseModel_pSgMd);
  outlined destroy of [Int](v57, &_s10Foundation3URLVSgMd);
  (*(v55 + 8))(v59, v56);

  v60 = *(v0 + 8);
  v61 = *(v0 + 240);

  return v60(v61);
}

{
  v1 = v0[34];
  v2 = v0[35];
  v4 = v0[26];
  v3 = v0[27];
  v5 = v0[25];
  $defer #1 () in ODIELanguageModelRunner.init(contentsOf:adapterURL:baseModel:delegate:ignoreUnknownTokens:)(v0[43], v5);

  outlined destroy of [Int](v3, &_s24TokenGenerationInference9BaseModel_pSgMd);
  outlined destroy of [Int](v4, &_s10Foundation3URLVSgMd);
  (*(v2 + 8))(v5, v1);
  swift_deallocPartialClassInstance();

  v6 = v0[1];

  return v6();
}

uint64_t $defer #1 () in ODIELanguageModelRunner.init(contentsOf:adapterURL:baseModel:delegate:ignoreUnknownTokens:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for OSSignpostError();
  v28 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v26[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v29 = type metadata accessor for OSSignpostID();
  v6 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v8 = &v26[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v26[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (one-time initialization token for signposter != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v13, static ODIELanguageModel.signposter);
  (*(v10 + 16))(v12, a2, v9);
  v14 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v27 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    v15 = v28;
    if ((*(v28 + 11))(v5, v3) == *MEMORY[0x277D85B00])
    {
      v16 = 0;
      v17 = 0;
      v28 = "[Error] Interval already ended";
    }

    else
    {
      (*(v15 + 1))(v5, v3);
      v28 = "URL: %s";
      v17 = 2;
      v16 = 1;
    }

    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v30 = v20;
    *v19 = v17;
    *(v19 + 1) = v16;
    *(v19 + 2) = 2080;
    lazy protocol witness table accessor for type URL and conformance URL();
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    (*(v10 + 8))(v12, v9);
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, &v30);

    *(v19 + 4) = v24;
    v25 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_220940000, v14, v27, v25, "ODIELanguageModelInit", v28, v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v20);
    MEMORY[0x223D90A10](v20, -1, -1);
    MEMORY[0x223D90A10](v19, -1, -1);

    return (*(v6 + 8))(v8, v29);
  }

  else
  {

    (*(v6 + 8))(v8, v29);
    return (*(v10 + 8))(v12, v9);
  }
}

uint64_t ODIELanguageModelRunner.run(tokens:computeLogitsTokenCount:tokenMasks:presampler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = a4;
  v5[9] = v4;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  return MEMORY[0x2822009F8](ODIELanguageModelRunner.run(tokens:computeLogitsTokenCount:tokenMasks:presampler:), 0, 0);
}

uint64_t ODIELanguageModelRunner.run(tokens:computeLogitsTokenCount:tokenMasks:presampler:)()
{
  v1 = v0[7];
  if (!v1)
  {
    v2 = v0[9];
    v3 = *(v0[5] + 16);
    v4 = OBJC_IVAR____TtC24TokenGenerationInference23ODIELanguageModelRunner_contextTokens;
    swift_beginAccess();
    v1 = specialized static AFMUtilities.defaultMasks(tokenCount:startingContextCount:)(v3, *(*(v2 + v4) + 16) - *(*(v2 + OBJC_IVAR____TtC24TokenGenerationInference23ODIELanguageModelRunner_holeIndices) + 16));
  }

  v5 = v0[5];
  v6 = *(v5 + 16);
  if (v6)
  {
    v31 = v1;
    v7 = v0[9];
    v36 = MEMORY[0x277D84F90];

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
    v8 = v36;
    v9 = v5 + 32;
    v10 = v7 + OBJC_IVAR____TtC24TokenGenerationInference23ODIELanguageModelRunner_model;
    v32 = OBJC_IVAR____TtC24TokenGenerationInference23ODIELanguageModelRunner_ignoreUnknownTokens;
    v33 = v7;
    v11 = 0;
    v34 = type metadata accessor for ODIELanguageModel();
    v35 = v10;
    while (1)
    {
      v12 = *(v9 + 8 * v11);
      result = NDArray.shape.getter();
      if (!*(result + 16))
      {
        goto LABEL_37;
      }

      v14 = *(result + 32);

      if (v12 >= v14)
      {
        if (v12 < 0xFFFFFFFF80000000)
        {
          goto LABEL_38;
        }

        if (v12 > 0x7FFFFFFF)
        {
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
          return result;
        }

        v15 = *(*(v35 + *(v34 + 40)) + 16);
        if (v15)
        {
          result = [swift_unknownObjectRetain() imageCount];
          v16 = result;
          if ((result & 0x80000000) != 0)
          {
            goto LABEL_40;
          }

          if (result)
          {
            v17 = 0;
            do
            {
              result = [v15 tokenRangeAt_];
              if (v12 >= result)
              {
                if (__OFADD__(result, v18))
                {
                  __break(1u);
LABEL_37:
                  __break(1u);
LABEL_38:
                  __break(1u);
                  goto LABEL_39;
                }

                if (v12 < result + v18)
                {
                  swift_unknownObjectRelease();
                  goto LABEL_25;
                }
              }

              v17 = (v17 + 1);
            }

            while (v16 != v17);
          }

          swift_unknownObjectRelease();
        }

        if (*(v33 + v32) != 1)
        {
          lazy protocol witness table accessor for type DecoderModelError and conformance DecoderModelError();
          swift_allocError();
          *v29 = v12;
          *(v29 + 8) = 0;
          *(v29 + 16) = 0;
          swift_willThrow();

          v30 = v0[1];

          return v30();
        }

        if (one-time initialization token for device != -1)
        {
          swift_once();
        }

        v19 = type metadata accessor for Logger();
        __swift_project_value_buffer(v19, static Log.device);
        v20 = Logger.logObject.getter();
        v21 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          *v22 = 134217984;
          *(v22 + 4) = v12;
          _os_log_impl(&dword_220940000, v20, v21, "Ignoring input token %ld", v22, 0xCu);
          MEMORY[0x223D90A10](v22, -1, -1);
        }

        v12 = 0;
      }

LABEL_25:
      v24 = *(v36 + 16);
      v23 = *(v36 + 24);
      if (v24 >= v23 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1);
      }

      ++v11;
      *(v36 + 16) = v24 + 1;
      *(v36 + 8 * v24 + 32) = v12;
      if (v11 == v6)
      {
        v1 = v31;
        goto LABEL_30;
      }
    }
  }

  v8 = MEMORY[0x277D84F90];
LABEL_30:
  v25 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySaySiGSay24TokenGenerationInference0F4MaskVGG_AI0F6RecordVs5NeverOTg506_sSi24fg12Inference0A4i6VAA0A6j17VIgynr_Si_ACtAEs5k161OIegnrzr_TR04_s24ab137Inference23ODIELanguageModelRunnerC3run6tokens013computeLogitsA5Count10tokenMasks10presamplerSayAA15LogitCollection_pG6logits_Si04callK0tq4s44G_xq5AA0A4d4VGSgy27O10Presampler_pSgtYaKFAA0Q26E13VSi_AOtXEfU0_Tf3nnnpf_nTf1cn_n(v8, v1);
  v0[10] = v25;

  v26 = swift_task_alloc();
  v0[11] = v26;
  *v26 = v0;
  v26[1] = ODIELanguageModelRunner.run(tokens:computeLogitsTokenCount:tokenMasks:presampler:);
  v27 = v0[8];
  v28 = v0[6];

  return ODIELanguageModelRunner.run(tokens:computeLogitsTokenCount:presampler:)(v25, v28, v27);
}

{

  v1 = v0[1];
  v3 = v0[13];
  v2 = v0[14];

  return v1(v2, v3);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t ODIELanguageModelRunner.run(tokens:computeLogitsTokenCount:tokenMasks:presampler:)(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 96) = v2;

  if (v2)
  {
    v7 = ODIELanguageModelRunner.run(tokens:computeLogitsTokenCount:tokenMasks:presampler:);
  }

  else
  {
    *(v6 + 104) = a2;
    *(v6 + 112) = a1;
    v7 = ODIELanguageModelRunner.run(tokens:computeLogitsTokenCount:tokenMasks:presampler:);
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySaySiGSay24TokenGenerationInference0F4MaskVGG_AI0F6RecordVs5NeverOTg506_sSi24fg12Inference0A4i6VAA0A6j17VIgynr_Si_ACtAEs5k161OIegnrzr_TR04_s24ab137Inference23ODIELanguageModelRunnerC3run6tokens013computeLogitsA5Count10tokenMasks10presamplerSayAA15LogitCollection_pG6logits_Si04callK0tq4s44G_xq5AA0A4d4VGSgy27O10Presampler_pSgtYaKFAA0Q26E13VSi_AOtXEfU0_Tf3nnnpf_nTf1cn_n(uint64_t a1, uint64_t a2)
{
  v31 = *(a1 + 16);
  if (*(a2 + 16) >= v31)
  {
    v4 = *(a1 + 16);
  }

  else
  {
    v4 = *(a2 + 16);
  }

  v34 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
  v6 = v4;
  v32 = a2;
  v29 = a1;
  if (v4)
  {
    v7 = (a1 + 32);
    v8 = (a2 + 48);
    v9 = v6;
    while (1)
    {
      v11 = *v7++;
      v10 = v11;
      v13 = *(v8 - 1);
      v12 = *v8;
      v14 = *(v8 - 2);

      if (!v12)
      {
        break;
      }

      if (v10 < 0xFFFFFFFF80000000)
      {
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      if (v10 > 0x7FFFFFFF)
      {
        goto LABEL_26;
      }

      v16 = *(v34 + 16);
      v15 = *(v34 + 24);
      v17 = v16 + 1;
      if (v16 >= v15 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1);
        v17 = v16 + 1;
      }

      *(v34 + 16) = v17;
      v18 = v34 + 32 * v16;
      *(v18 + 32) = v10;
      *(v18 + 40) = v14;
      *(v18 + 48) = v13;
      *(v18 + 56) = v12;
      v8 += 3;
      if (!--v9)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
LABEL_12:
    v20 = v30;
    v19 = v31;
    if (v31 <= v30)
    {
      return v34;
    }

    v21 = (v32 + 24 * v6 + 48);
    while (v6 < v19)
    {
      v22 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_28;
      }

      if (v20 == v6)
      {
        return v34;
      }

      if (v6 >= v20)
      {
        goto LABEL_29;
      }

      if (__OFADD__(v6, 1))
      {
        goto LABEL_30;
      }

      v23 = *(v29 + 32 + 8 * v6);
      if (v23 < 0xFFFFFFFF80000000)
      {
        goto LABEL_31;
      }

      if (v23 > 0x7FFFFFFF)
      {
        goto LABEL_32;
      }

      v24 = v6;
      v33 = *(v21 - 1);
      v25 = *v21;
      v27 = *(v34 + 16);
      v26 = *(v34 + 24);

      if (v27 >= v26 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1);
      }

      *(v34 + 16) = v27 + 1;
      v28 = v34 + 32 * v27;
      *(v28 + 32) = v23;
      *(v28 + 40) = v33;
      *(v28 + 56) = v25;
      v6 = v24 + 1;
      v21 += 3;
      v20 = v30;
      v19 = v31;
      if (v22 == v31)
      {
        return v34;
      }
    }

LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t ODIELanguageModelRunner.run(tokens:computeLogitsTokenCount:presampler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[17] = a3;
  v4[18] = v3;
  v4[15] = a1;
  v4[16] = a2;
  return MEMORY[0x2822009F8](ODIELanguageModelRunner.run(tokens:computeLogitsTokenCount:presampler:), 0, 0);
}

{
  v5 = *v4;
  v5[23] = a1;
  v5[24] = a2;
  v5[25] = a3;
  v5[26] = v3;

  if (v3)
  {

    v6 = ODIELanguageModelRunner.run(tokens:computeLogitsTokenCount:presampler:);
  }

  else
  {
    v6 = ODIELanguageModelRunner.run(tokens:computeLogitsTokenCount:presampler:);
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t ODIELanguageModelRunner.run(tokens:computeLogitsTokenCount:presampler:)()
{
  v1 = v0[16];
  v2 = *(v0[15] + 16);
  v0[19] = v2;
  v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1 & ~(v1 >> 63), 0, MEMORY[0x277D84F90]);
  v0[12] = v3;
  if (v2 < 1)
  {
    if (v3[2] == v0[16])
    {
      v9 = v0[1];

      return v9();
    }

    else
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }
  }

  else
  {
    v0[20] = v2;
    v0[21] = 0;
    v4 = v0[19] - v2;
    v5 = swift_task_alloc();
    v0[22] = v5;
    *v5 = v0;
    v5[1] = ODIELanguageModelRunner.run(tokens:computeLogitsTokenCount:presampler:);
    v7 = v0[15];
    v6 = v0[16];

    return ODIELanguageModelRunner.singleDecodeInference(tokens:tokenOffset:computeLogitsTokenCount:)(v7, v4, v6);
  }
}

{
  return (*(v0 + 8))();
}

void ODIELanguageModelRunner.run(tokens:computeLogitsTokenCount:presampler:)()
{
  v1 = v0[21];
  v2 = v1 + 1;
  if (__OFADD__(v1, 1))
  {
    __break(1u);
    goto LABEL_32;
  }

  v3 = v0[23];
  v4 = v0[20];
  v5 = v4 - v3;
  if (__OFSUB__(v4, v3))
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v6 = v0[19];
  v7 = v6 - v5;
  if (__OFSUB__(v6, v5))
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v8 = v0[16];
  v9 = __OFADD__(v7, v8);
  v10 = v7 + v8;
  if (v9)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v6 >= v10)
  {
    goto LABEL_8;
  }

  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v0[17], (v0 + 7), &_s24TokenGenerationInference15LogitPresampler_pSgMd);
  if (v0[10])
  {
    outlined init with take of LogitCollection(v0 + 7, v0 + 2);
  }

  else
  {
    v0[5] = type metadata accessor for BasicLogitPresampler();
    v0[6] = &protocol witness table for BasicLogitPresampler;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
    v17 = type metadata accessor for LogitIndexSet();
    (*(*(v17 - 8) + 56))(boxed_opaque_existential_1, 1, 1, v17);
    if (v0[10])
    {
      outlined destroy of [Int]((v0 + 7), &_s24TokenGenerationInference15LogitPresampler_pSgMd);
    }
  }

  if (!v0[25])
  {
    goto LABEL_30;
  }

  v18 = v0[23];
  if (v18 >= v0[16])
  {
    v19 = v0[16];
  }

  else
  {
    v19 = v0[23];
  }

  v9 = __OFSUB__(v18, v19);
  v20 = v18 - v19;
  if (v9)
  {
    goto LABEL_35;
  }

  v21 = v0[24];
  v22 = v21 + v20;
  if (__OFADD__(v21, v20))
  {
LABEL_36:
    __break(1u);
    return;
  }

  v23 = v0[26];
  v24 = v0[18];
  v25 = swift_task_alloc();
  v25[2] = v0 + 2;
  v25[3] = v24;
  v25[4] = v22;
  v25[5] = v19;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay24TokenGenerationInference15LogitCollection_pGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
  _s4ODIE7NDArrayC29withUnsafeMutableArrayPointer2of_q_xm_q_AA0defG0VyxGq0_YKXEtq0_YKs5ErrorR0_r1_lF();

  if (v23)
  {

    __swift_destroy_boxed_opaque_existential_1((v0 + 2));
    v26 = v0[1];

    v26();
    return;
  }

  v27 = v0[13];
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  specialized Array.append<A>(contentsOf:)(v27);
LABEL_8:

  if (v5 > 0)
  {
    v0[20] = v5;
    v0[21] = v2;
    v11 = v0[19] - v5;
    v12 = swift_task_alloc();
    v0[22] = v12;
    *v12 = v0;
    v12[1] = ODIELanguageModelRunner.run(tokens:computeLogitsTokenCount:presampler:);
    v14 = v0[15];
    v13 = v0[16];

    ODIELanguageModelRunner.singleDecodeInference(tokens:tokenOffset:computeLogitsTokenCount:)(v14, v11, v13);
    return;
  }

  if (*(v0[12] + 16) != v0[16])
  {
LABEL_30:
    _assertionFailure(_:_:file:line:flags:)();
    return;
  }

  v15 = v0[1];

  v15();
}

uint64_t ODIELanguageModelRunner.singleDecodeInference(tokens:tokenOffset:computeLogitsTokenCount:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[49] = a3;
  v4[50] = v3;
  v4[47] = a1;
  v4[48] = a2;
  v5 = type metadata accessor for OSSignpostID();
  v4[51] = v5;
  v4[52] = *(v5 - 8);
  v4[53] = swift_task_alloc();
  v4[54] = swift_task_alloc();

  return MEMORY[0x2822009F8](ODIELanguageModelRunner.singleDecodeInference(tokens:tokenOffset:computeLogitsTokenCount:), 0, 0);
}

uint64_t ODIELanguageModelRunner.singleDecodeInference(tokens:tokenOffset:computeLogitsTokenCount:)()
{
  v96 = v1;
  v4 = v1[48];
  v5 = *(v1[47] + 16);
  v6 = v5 - v4;
  if (__OFSUB__(v5, v4))
  {
    __break(1u);
LABEL_43:
    swift_once();
    goto LABEL_4;
  }

  v3 = v1;
  v7 = ODIELanguageModelRunner.findOptimalDecodeFunction(remainingTokens:computeLogitsTokenCount:)(v5 - v4, v1[49]);
  v0 = &unk_27CF76000;
  if ((v9 & 1) == 0)
  {
    v17 = v7;
    v18 = v8;
    v19 = v1[50];
    v0 = OBJC_IVAR____TtC24TokenGenerationInference23ODIELanguageModelRunner_contextTokens;
    v1[55] = OBJC_IVAR____TtC24TokenGenerationInference23ODIELanguageModelRunner_contextTokens;
    swift_beginAccess();
    v20 = *(*(v0 + v19) + 16);
    v21 = v20 + v18;
    if (!__OFADD__(v20, v18))
    {
      if (v21 >= v20)
      {
        v92 = v19;
        v2 = v1[50];
        v22 = OBJC_IVAR____TtC24TokenGenerationInference23ODIELanguageModelRunner_holeIndices;
        specialized Array.append<A>(contentsOf:)(v20, v21);
        if ((v18 & 0x8000000000000000) == 0)
        {
          v23 = v1[50];
          v3[20] = v18;
          *(v3 + 42) = -1;
          v3[22] = 0;
          v3[23] = 0;
          v3[24] = MEMORY[0x277D84F90];
          swift_beginAccess();
          specialized Array.append<A>(contentsOf:)((v3 + 20));
          swift_endAccess();
          v24 = OBJC_IVAR____TtC24TokenGenerationInference23ODIELanguageModelRunner_model;
          v25 = type metadata accessor for ODIELanguageModel();
          if ((v17 & 0x8000000000000000) == 0)
          {
            v26 = *(v23 + v24 + *(v25 + 24));
            if (v17 < *(v26 + 16))
            {
              v88 = v22;
              v90 = v5;
              v91 = v6;
              outlined init with copy of AFMDecodeFunction(v26 + 48 * v17 + 32, (v3 + 8));
              if (one-time initialization token for device == -1)
              {
                goto LABEL_12;
              }

              goto LABEL_51;
            }

LABEL_50:
            __break(1u);
LABEL_51:
            swift_once();
LABEL_12:
            v27 = type metadata accessor for Logger();
            __swift_project_value_buffer(v27, static Log.device);
            outlined init with copy of AFMDecodeFunction((v3 + 8), (v3 + 14));
            swift_retain_n();
            swift_bridgeObjectRetain_n();
            v28 = Logger.logObject.getter();
            v29 = static os_log_type_t.info.getter();
            if (os_log_type_enabled(v28, v29))
            {
              v86 = v2;
              v30 = swift_slowAlloc();
              v31 = swift_slowAlloc();
              *&v93 = v31;
              *v30 = 136315650;
              v32 = AFMDecodeFunction.description.getter();
              v34 = v33;
              outlined destroy of AFMDecodeFunction((v3 + 14));
              v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v34, &v93);

              *(v30 + 4) = v35;
              *(v30 + 12) = 2048;
              v36 = *(*(v0 + v92) + 16);

              *(v30 + 14) = v36;

              *(v30 + 22) = 2048;

              v37 = v91;
              *(v30 + 24) = v91;

              _os_log_impl(&dword_220940000, v28, v29, "Running next decode function %s at context: %ld and remaining token count: %ld", v30, 0x20u);
              __swift_destroy_boxed_opaque_existential_1(v31);
              MEMORY[0x223D90A10](v31, -1, -1);
              v38 = v30;
              v2 = v86;
              MEMORY[0x223D90A10](v38, -1, -1);
            }

            else
            {
              swift_bridgeObjectRelease_n();

              outlined destroy of AFMDecodeFunction((v3 + 14));
              v37 = v91;
            }

            if (one-time initialization token for signposter != -1)
            {
              swift_once();
            }

            v52 = type metadata accessor for OSSignposter();
            __swift_project_value_buffer(v52, static ODIELanguageModel.signposter);
            static OSSignpostID.exclusive.getter();
            v53 = OSSignposter.logHandle.getter();
            v54 = static os_signpost_type_t.begin.getter();
            if (OS_os_log.signpostsEnabled.getter())
            {
              v55 = swift_slowAlloc();
              *v55 = 0;
              v56 = OSSignpostID.rawValue.getter();
              _os_signpost_emit_with_name_impl(&dword_220940000, v53, v54, v56, "ODIESingleDecodeInference", "", v55, 2u);
              MEMORY[0x223D90A10](v55, -1, -1);
            }

            v57 = v3[53];
            v58 = v3[54];
            v60 = v3[51];
            v59 = v3[52];

            (*(v59 + 16))(v57, v58, v60);
            type metadata accessor for OSSignpostIntervalState();
            swift_allocObject();
            v3[56] = OSSignpostIntervalState.init(id:isOpen:)();
            (*(v59 + 8))(v58, v60);
            v61 = *(*(v0 + v92) + 16);
            v63 = v3[12];
            v62 = v3[13];
            __swift_project_boxed_opaque_existential_1(v3 + 9, v63);
            result = (*(*(v62 + 8) + 24))(v63);
            if (result)
            {
              v64 = v61 / result * result;
              v65 = *(*(v0 + v92) + 16);
              v66 = v65 - v64;
              v3[57] = v65 - v64;
              if (!__OFSUB__(v65, v64))
              {
                v68 = v3[12];
                v67 = v3[13];
                __swift_project_boxed_opaque_existential_1(v3 + 9, v68);
                result = (*(*(v67 + 8) + 24))(v68);
                if (!__OFSUB__(result, v66))
                {
                  if (result - v66 >= v37)
                  {
                    v69 = v37;
                  }

                  else
                  {
                    v69 = result - v66;
                  }

                  v3[58] = v69;
                  v70 = *(v0 + v92);
                  v3[59] = v70;
                  v71 = *(v70 + 16);
                  v72 = v71 - v66;
                  if (!__OFSUB__(v71, v66))
                  {
                    if (v71 >= v72)
                    {
                      if ((v72 & 0x8000000000000000) == 0)
                      {
                        v73 = v3[48];
                        v74 = __OFADD__(v73, v69);
                        v75 = v73 + v69;
                        v3[60] = v75;
                        if (!v74)
                        {
                          if (v75 >= v73)
                          {
                            if (v90 >= v73)
                            {
                              if ((v73 & 0x8000000000000000) == 0)
                              {
                                if (v90 >= v75)
                                {
                                  v76 = v3[50];
                                  v77 = v3[47];
                                  *&v93 = v70;
                                  *(&v93 + 1) = v70 + 32;
                                  v78 = (2 * v75) | 1;
                                  v94 = v72;
                                  v95 = (2 * v71) | 1;
                                  swift_bridgeObjectRetain_n();
                                  swift_bridgeObjectRetain_n();
                                  specialized ArraySlice.append<A>(contentsOf:)(v77, (v77 + 4), v73, v78);
                                  v79 = v94;
                                  v80 = v95;
                                  v87 = v93;
                                  v3[61] = v93;
                                  v3[62] = *(v2 + v88);
                                  v81 = OBJC_IVAR____TtC24TokenGenerationInference23ODIELanguageModelRunner_buffers;
                                  swift_beginAccess();
                                  v3[63] = *(v76 + v81);
                                  *(v3 + 25) = v87;
                                  v3[27] = v79;
                                  v3[28] = v80;

                                  v83 = v3[12];
                                  v82 = v3[13];
                                  __swift_project_boxed_opaque_existential_1(v3 + 9, v83);
                                  v89 = *(v82 + 40) + **(v82 + 40);
                                  v84 = swift_task_alloc();
                                  v3[64] = v84;
                                  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss10ArraySliceVy24TokenGenerationInference0C6RecordVGMd);
                                  v85 = lazy protocol witness table accessor for type ArraySlice<TokenRecord> and conformance ArraySlice<A>();
                                  *v84 = v3;
                                  v84[1] = ODIELanguageModelRunner.singleDecodeInference(tokens:tokenOffset:computeLogitsTokenCount:);
                                  v99 = v83;
                                  v100 = v82;
                                  v98 = v85;

                                  __asm { BRAA            X8, X16 }
                                }

                                goto LABEL_62;
                              }

LABEL_61:
                              __break(1u);
LABEL_62:
                              __break(1u);
                              return result;
                            }

LABEL_60:
                            __break(1u);
                            goto LABEL_61;
                          }

LABEL_59:
                          __break(1u);
                          goto LABEL_60;
                        }

LABEL_58:
                        __break(1u);
                        goto LABEL_59;
                      }

LABEL_57:
                      __break(1u);
                      goto LABEL_58;
                    }

LABEL_56:
                    __break(1u);
                    goto LABEL_57;
                  }

LABEL_55:
                  __break(1u);
                  goto LABEL_56;
                }

LABEL_54:
                __break(1u);
                goto LABEL_55;
              }
            }

            else
            {
              __break(1u);
            }

            __break(1u);
            goto LABEL_54;
          }

LABEL_49:
          __break(1u);
          goto LABEL_50;
        }

LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      goto LABEL_46;
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (one-time initialization token for device != -1)
  {
    goto LABEL_43;
  }

LABEL_4:
  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Log.device);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();
  v13 = os_log_type_enabled(v11, v12);
  v14 = v3[50];
  if (v13)
  {
    v15 = v3[49];
    v16 = swift_slowAlloc();
    *v16 = 134218496;
    v2 = v0[242];
    swift_beginAccess();
    *(v16 + 4) = *(*(v14 + v2) + 16);

    *(v16 + 12) = 2048;
    *(v16 + 14) = v6;
    *(v16 + 22) = 2048;
    *(v16 + 24) = v15;
    _os_log_impl(&dword_220940000, v11, v12, "Failed to find a decode function to run next inference for current context: %ld, remaining tokens: %ld, computeLogitsTokenCount: %ld", v16, 0x20u);
    MEMORY[0x223D90A10](v16, -1, -1);
  }

  else
  {
  }

  v39 = v3[50];
  v40 = v0[242];
  swift_beginAccess();
  v41 = *(*(v39 + v40) + 16);
  v42 = v41 + v6;
  if (__OFADD__(v41, v6))
  {
    goto LABEL_45;
  }

  v43 = v3[50] + OBJC_IVAR____TtC24TokenGenerationInference23ODIELanguageModelRunner_model;
  v44 = *(v43 + *(type metadata accessor for ODIELanguageModel() + 24));
  v45 = *(v44 + 16);
  if (!v45)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  outlined init with copy of AFMDecodeFunction(v44 + 48 * v45 - 16, (v3 + 2));
  v47 = v3[6];
  v46 = v3[7];
  __swift_project_boxed_opaque_existential_1(v3 + 3, v47);
  v48 = (*(*(v46 + 8) + 16))(v47);
  outlined destroy of AFMDecodeFunction((v3 + 2));
  lazy protocol witness table accessor for type DecoderModelError and conformance DecoderModelError();
  swift_allocError();
  *v49 = v42;
  *(v49 + 8) = v48;
  *(v49 + 16) = 3;
  swift_willThrow();

  v50 = v3[1];

  return v50();
}

{
  v1 = v0[56];
  v3 = v0[47];
  v2 = v0[48];
  v4 = (2 * v0[60]) | 1;
  swift_beginAccess();
  specialized Array.append<A>(contentsOf:)(v3, v3 + 32, v2, v4);
  swift_endAccess();
  swift_unknownObjectRelease();

  $defer #1 () in ODIELanguageModelRunner.singleDecodeInference(tokens:tokenOffset:computeLogitsTokenCount:)(v1, (v0 + 8));

  outlined destroy of AFMDecodeFunction((v0 + 8));

  v5 = v0[1];
  v6 = v0[66];
  v8 = v0[57];
  v7 = v0[58];

  return v5(v7, v8, v6);
}

{
  v1 = *(v0 + 448);

  swift_unknownObjectRelease();
  $defer #1 () in ODIELanguageModelRunner.singleDecodeInference(tokens:tokenOffset:computeLogitsTokenCount:)(v1, v0 + 64);

  outlined destroy of AFMDecodeFunction(v0 + 64);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t ODIELanguageModelRunner.singleDecodeInference(tokens:tokenOffset:computeLogitsTokenCount:)(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 520) = v1;

  if (v1)
  {
    v5 = ODIELanguageModelRunner.singleDecodeInference(tokens:tokenOffset:computeLogitsTokenCount:);
  }

  else
  {
    *(v4 + 528) = a1;
    v5 = ODIELanguageModelRunner.singleDecodeInference(tokens:tokenOffset:computeLogitsTokenCount:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t ODIELanguageModelRunner.findOptimalDecodeFunction(remainingTokens:computeLogitsTokenCount:)(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC24TokenGenerationInference23ODIELanguageModelRunner_contextTokens;
  swift_beginAccess();
  v6 = *(*(v2 + v5) + 16);
  v7 = v2 + OBJC_IVAR____TtC24TokenGenerationInference23ODIELanguageModelRunner_model;
  v8 = *(v7 + *(type metadata accessor for ODIELanguageModel() + 24));
  result = _s24TokenGenerationInference12AFMUtilitiesV25findOptimalDecodeFunction4from14currentContext15remainingTokens26tokensRequiringLogitsCountSi13functionIndex_Si10holesToAddtSgSayxG_S3itAA09AFMDecodeH10DescriptorRzlFZAA0wH0V_Tt3g5(v8, v6, a1, a2);
  v10 = result;
  v12 = v11;
  v13 = *(*(v2 + OBJC_IVAR____TtC24TokenGenerationInference23ODIELanguageModelRunner_holeIndices) + 16);
  if (v13)
  {
    v14 = _s24TokenGenerationInference12AFMUtilitiesV25findOptimalDecodeFunction4from14currentContext15remainingTokens26tokensRequiringLogitsCountSi13functionIndex_Si10holesToAddtSgSayxG_S3itAA09AFMDecodeH10DescriptorRzlFZAA0wH0V_Tt3g5(v8, *(*(v2 + v5) + 16) - v13, a1, a2);
    if ((v15 & 1) != 0 || (v12 & 1) == 0 && v10 == v14)
    {
      return v10;
    }

    v16 = v14;
    if (one-time initialization token for device != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Log.device);

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.info.getter();

    if (!os_log_type_enabled(v18, v19))
    {

      goto LABEL_14;
    }

    v20 = swift_slowAlloc();
    result = swift_slowAlloc();
    v27 = result;
    *v20 = 136315138;
    if ((v16 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v16 < *(v8 + 16))
    {
      v21 = result;
      outlined init with copy of AFMDecodeFunction(v8 + 48 * v16 + 32, v26);
      v22 = AFMDecodeFunction.description.getter();
      v24 = v23;
      outlined destroy of AFMDecodeFunction(v26);
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, &v27);

      *(v20 + 4) = v25;
      _os_log_impl(&dword_220940000, v18, v19, "Compacting cache holes so we can use %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x223D90A10](v21, -1, -1);
      MEMORY[0x223D90A10](v20, -1, -1);

LABEL_14:
      ODIELanguageModelRunner.compactCacheHoles()();
      return v16;
    }

    __break(1u);
  }

  return result;
}

uint64_t ODIELanguageModelRunner.compactCacheHoles()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s4ODIE7NDArrayC6BufferVSgMd);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v38 - v3;
  v5 = type metadata accessor for NDArray.Buffer();
  v6 = *(v5 - 8);
  result = MEMORY[0x28223BE20](v5);
  v46 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = OBJC_IVAR____TtC24TokenGenerationInference23ODIELanguageModelRunner_holeIndices;
  if (*(*(v0 + OBJC_IVAR____TtC24TokenGenerationInference23ODIELanguageModelRunner_holeIndices) + 16))
  {
    v9 = OBJC_IVAR____TtC24TokenGenerationInference23ODIELanguageModelRunner_contextTokens;
    swift_beginAccess();
    v38[0] = v9;
    v42 = *(*(v0 + v9) + 16);
    v10 = v0 + OBJC_IVAR____TtC24TokenGenerationInference23ODIELanguageModelRunner_model;
    v11 = *(v10 + *(type metadata accessor for ODIELanguageModel() + 36));
    v12 = v11 + 64;
    v13 = 1 << *(v11 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v11 + 64);
    v16 = (v13 + 63) >> 6;
    v44 = (v6 + 56);
    v45 = OBJC_IVAR____TtC24TokenGenerationInference23ODIELanguageModelRunner_buffers;
    v38[1] = v6 + 16;
    v43 = (v6 + 48);
    v39 = v6;
    v40 = (v6 + 8);
    v41 = (v6 + 32);
    v47 = v11;

    v17 = 0;
    if (v15)
    {
      while (1)
      {
        v18 = v4;
        v19 = v17;
LABEL_10:
        v20 = __clz(__rbit64(v15)) | (v19 << 6);
        v21 = (*(v47 + 48) + 16 * v20);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v47 + 56) + 32 * v20);
        v25 = *v24;
        v52 = v24[1];
        v27 = v24[2];
        v26 = v24[3];
        v50 = v25;
        v51 = v27;
        v49 = v26;
        v28 = v45;
        swift_beginAccess();
        v29 = *(v1 + v28);
        if (*(v29 + 16))
        {

          v30 = specialized __RawDictionaryStorage.find<A>(_:)(v22, v23);
          if (v31)
          {
            v32 = *(v29 + 56);
            v33 = v39;
            v4 = v18;
            (*(v39 + 16))(v18, v32 + *(v39 + 72) * v30, v5);
            (*(v33 + 56))(v18, 0, 1, v5);
          }

          else
          {
            v4 = v18;
            (*v44)(v18, 1, 1, v5);
          }
        }

        else
        {
          v4 = v18;
          (*v44)(v18, 1, 1, v5);
        }

        swift_endAccess();
        result = (*v43)(v4, 1, v5);
        if (result == 1)
        {
          break;
        }

        v15 &= v15 - 1;

        v34 = v46;
        (*v41)(v46, v4, v5);
        v35 = *(v1 + v48);

        specialized static AFMUtilities.fillCacheHoles(cacheBuffer:bytesPerElement:currentCacheSize:holeIndices:stridePerSequence:sequentialElementsPerToken:numSequencesPerToken:)(v34, v50, v42, v35, v49, v51, v52);

        result = (*v40)(v34, v5);
        v17 = v19;
        if (!v15)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
      while (1)
      {
LABEL_6:
        v19 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          __break(1u);
          goto LABEL_22;
        }

        if (v19 >= v16)
        {
          break;
        }

        v15 = *(v12 + 8 * v19);
        ++v17;
        if (v15)
        {
          v18 = v4;
          goto LABEL_10;
        }
      }

      *(v1 + v48) = MEMORY[0x277D84F90];

      v36 = v38[0];
      result = specialized MutableCollection._halfStablePartition(isSuffixElement:)(v1 + v38[0]);
      v37 = *(*(v1 + v36) + 16);
      if (v37 >= result)
      {
        return specialized Array.replaceSubrange<A>(_:with:)(result, v37);
      }

LABEL_22:
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t $defer #1 () in ODIELanguageModelRunner.singleDecodeInference(tokens:tokenOffset:computeLogitsTokenCount:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for OSSignpostError();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v27[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for OSSignpostID();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v27[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (one-time initialization token for signposter != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v11, static ODIELanguageModel.signposter);
  outlined init with copy of AFMDecodeFunction(a2, v35);
  outlined init with copy of AFMDecodeFunction(a2, v31);
  outlined init with copy of AFMDecodeFunction(a2, v27);
  v12 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v13 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    if ((*(v4 + 88))(v6, v3) == *MEMORY[0x277D85B00])
    {
      v14 = 0;
      v15 = "[Error] Interval already ended";
    }

    else
    {
      (*(v4 + 8))(v6, v3);
      v15 = "C: %ld, Q: %ld, CL: %{BOOL}d";
      v14 = 3;
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    *(v16 + 1) = v14;
    *(v16 + 2) = 2048;
    v18 = v37;
    v17 = v38;
    __swift_project_boxed_opaque_existential_1(v36, v37);
    v19 = (*(*(v17 + 8) + 16))(v18);
    outlined destroy of AFMDecodeFunction(v35);
    *(v16 + 4) = v19;
    *(v16 + 12) = 2048;
    v21 = v33;
    v20 = v34;
    __swift_project_boxed_opaque_existential_1(v32, v33);
    v22 = (*(*(v20 + 8) + 24))(v21);
    outlined destroy of AFMDecodeFunction(v31);
    *(v16 + 14) = v22;
    *(v16 + 22) = 1024;
    v24 = v29;
    v23 = v30;
    __swift_project_boxed_opaque_existential_1(v28, v29);
    LODWORD(v23) = (*(*(v23 + 8) + 32))(v24) & 1;
    outlined destroy of AFMDecodeFunction(v27);
    *(v16 + 24) = v23;
    v25 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_220940000, v12, v13, v25, "ODIESingleDecodeInference", v15, v16, 0x1Cu);
    MEMORY[0x223D90A10](v16, -1, -1);
  }

  else
  {
    outlined destroy of AFMDecodeFunction(v27);
    outlined destroy of AFMDecodeFunction(v31);
    outlined destroy of AFMDecodeFunction(v35);
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t closure #1 in ODIELanguageModelRunner.presampleLogits(from:with:computeLogitsTokenCount:)@<X0>(void *a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t *a4@<X5>, uint64_t *a5@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s4ODIE25UnsafeMutableArrayPointerVys7Float16VGMd);
  v10 = *UnsafeMutableArrayPointer.contents.getter();
  v11 = ~v10 & 0x7C00;
  v12 = v10 & 0x3FF;
  if (v11)
  {
    v13 = 1;
  }

  else
  {
    v13 = v12 == 0;
  }

  if (!v13)
  {
    lazy protocol witness table accessor for type DecoderModelError and conformance DecoderModelError();
    v18 = swift_allocError();
    *v19 = 0;
    *(v19 + 8) = 0;
    *(v19 + 16) = 4;
    result = swift_willThrow();
    *a4 = v18;
    return result;
  }

  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = UnsafeMutableArrayPointer.contents.getter();
  if (!result)
  {
    goto LABEL_16;
  }

  v15 = result;
  type metadata accessor for ODIELanguageModel();
  result = NDArray.shape.getter();
  if (!*(result + 16))
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = *(result + 32);

  result = NDArray.shape.getter();
  if (!*(result + 16))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v17 = *(result + 32);

  if (!__OFADD__(a2, a3))
  {
    if (a2 + a3 >= a2)
    {
      result = (*(v14 + 8))(v15, v16, v17, 1, a2);
      *a5 = result;
      return result;
    }

    goto LABEL_15;
  }

LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

Swift::Void __swiftcall ODIELanguageModelRunner.reset(toStep:)(Swift::Int toStep)
{
  v2 = v1;
  v3 = 0;
  v4 = 0;
  v5 = OBJC_IVAR____TtC24TokenGenerationInference23ODIELanguageModelRunner_holeIndices;
  v6 = *(v1 + OBJC_IVAR____TtC24TokenGenerationInference23ODIELanguageModelRunner_holeIndices);
  v7 = *(v6 + 16);
  v8 = v6 + 32;
  v9 = -1;
  do
  {
    if (v7 == v3)
    {
      goto LABEL_8;
    }

    v10 = *(v8 + 8 * v3);
    v11 = __OFSUB__(v10, v9);
    v12 = v10 - v9;
    if (v11)
    {
      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v11 = __OFSUB__(v12, 1);
    v13 = v12 - 1;
    if (v11)
    {
      goto LABEL_16;
    }

    v11 = __OFADD__(v4, v13);
    v4 += v13;
    if (v11)
    {
      goto LABEL_17;
    }

    ++v3;
    v9 = v10;
  }

  while (v4 < toStep);
  v7 = v3 - 1;
LABEL_8:
  v14 = toStep + v7;
  if (__OFADD__(toStep, v7))
  {
    goto LABEL_18;
  }

  v15 = OBJC_IVAR____TtC24TokenGenerationInference23ODIELanguageModelRunner_contextTokens;
  swift_beginAccess();
  v16 = *(*(v2 + v15) + 16);
  v11 = __OFSUB__(v16, v14);
  v17 = v16 - v14;
  if (v11)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  swift_beginAccess();
  specialized RangeReplaceableCollection<>.removeLast(_:)(v17, specialized Array.replaceSubrange<A>(_:with:));
  v18 = *(v2 + v5);
  v19 = *(v18 + 16);
  if (v19 < v7)
  {
LABEL_20:
    __break(1u);
    return;
  }

  if (v19 == v7)
  {
  }

  else
  {
    specialized _copyCollectionToContiguousArray<A>(_:)(v18, v18 + 32, 0, (2 * v7) | 1);
    v21 = v20;
  }

  *(v2 + v5) = v21;
}

Swift::Void __swiftcall ODIELanguageModelRunner.purge(steps:)(Swift::OpaquePointer steps)
{
  v2 = v1;
  rawValue = steps._rawValue;
  v52 = steps._rawValue;

  specialized MutableCollection<>.sort(by:)(&v52);
  v4 = v52;
  v5 = *(v52 + 2);
  if (v5)
  {
    v50 = rawValue;
    v6 = 0;
    v7 = (v52 + 32);
    v51 = *(v52 + 4);
    v8 = OBJC_IVAR____TtC24TokenGenerationInference23ODIELanguageModelRunner_holeIndices;
    v9 = OBJC_IVAR____TtC24TokenGenerationInference23ODIELanguageModelRunner_contextTokens;
    v10 = MEMORY[0x277D84F90];
    do
    {
      if (v6 >= *(v4 + 2))
      {
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
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
        swift_once();
        goto LABEL_32;
      }

      v12 = *(v7 + 8 * v6);
      v13 = __OFSUB__(v12, v6);
      v14 = v12 - v6;
      if (v13)
      {
        goto LABEL_62;
      }

      if (__OFADD__(v14, 1))
      {
        goto LABEL_63;
      }

      v15 = 0;
      v16 = 0;
      ++v6;
      v17 = *(v2 + v8);
      v18 = *(v17 + 16);
      v19 = v17 + 32;
      v20 = -1;
      do
      {
        if (v18 == v15)
        {
          goto LABEL_15;
        }

        v21 = *(v19 + 8 * v15);
        v13 = __OFSUB__(v21, v20);
        v22 = v21 - v20;
        if (v13)
        {
          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
          goto LABEL_54;
        }

        v13 = __OFSUB__(v22, 1);
        v23 = v22 - 1;
        if (v13)
        {
          goto LABEL_52;
        }

        v13 = __OFADD__(v16, v23);
        v16 += v23;
        if (v13)
        {
          goto LABEL_53;
        }

        ++v15;
        v20 = v21;
      }

      while (v16 < v14 + 1);
      v18 = v15 - 1;
LABEL_15:
      v24 = v14 + v18;
      if (__OFADD__(v14, v18))
      {
        goto LABEL_64;
      }

      swift_beginAccess();
      v25 = *(v2 + v9);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v2 + v9) = v25;
      if (isUniquelyReferenced_nonNull_native)
      {
        if ((v24 & 0x8000000000000000) == 0)
        {
          goto LABEL_18;
        }

LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v25 = specialized _ArrayBuffer._consumeAndCreateNew()(v25);
      *(v2 + v9) = v25;
      if (v24 < 0)
      {
        goto LABEL_25;
      }

LABEL_18:
      if (v24 >= *(v25 + 2))
      {
        goto LABEL_65;
      }

      v27 = &v25[32 * v24];
      *(v27 + 8) = -1;
      *(v27 + 5) = 0;
      *(v27 + 6) = 0;
      *(v27 + 7) = v10;
      *(v2 + v9) = v25;

      v28 = *(v2 + v8);
      v11 = *(v28 + 16);
      if (v11)
      {
        v29 = 0;
        v30 = v28 + 32;
        while (v24 >= *(v30 + 8 * v29))
        {
          if (v11 == ++v29)
          {
            goto LABEL_4;
          }
        }

        v11 = v29;
      }

LABEL_4:
      rawValue = (v2 + v8);
      specialized Array.replaceSubrange<A>(_:with:)(v11, v11, v24);
    }

    while (v6 != v5);
    v31 = *(v2 + v9);
    v32 = *(v31 + 2);
    v33 = v51;
    if (v32 < v51)
    {
      goto LABEL_66;
    }

    if (v51 != v32)
    {
      v7 = v51;
      v48 = *(v31 + 2);
      while (2)
      {
        if (v7 >= v32)
        {
          goto LABEL_67;
        }

        if ((v33 & 0x8000000000000000) != 0)
        {
          goto LABEL_68;
        }

        v49 = (v7 + 1);
        v37 = v5;
        do
        {
          v38 = v37 - 1;
          if (v37 < 1)
          {
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
            goto LABEL_61;
          }

          if (v38 >= *(v4 + 2))
          {
            goto LABEL_56;
          }

          if (v7 >= *(v31 + 2))
          {
            goto LABEL_57;
          }

          v39 = &v31[32 * v7];
          v41 = *(v39 + 5);
          v42 = *(v39 + 6);
          v40 = v39 + 40;
          v13 = __OFADD__(v41, v42);
          v43 = v41 + v42;
          if (v13)
          {
            goto LABEL_58;
          }

          v44 = *(*(v40 + 2) + 16);
          v13 = __OFADD__(v43, v44);
          v45 = v43 + v44;
          if (v13)
          {
            goto LABEL_59;
          }

          v46 = *&v4[8 * v37 + 24];
          if (v46 < v45)
          {
            v47 = swift_isUniquelyReferenced_nonNull_native();
            *(v2 + v9) = v31;
            if ((v47 & 1) == 0)
            {
              v31 = specialized _ArrayBuffer._consumeAndCreateNew()(v31);
              *(v2 + v9) = v31;
            }

            if (v7 >= *(v31 + 2))
            {
              goto LABEL_60;
            }

            TokenMask.remove(at:)(v46);
            *(v2 + v9) = v31;
          }

          v37 = v38;
        }

        while (v38);
        v32 = v48;
        ++v7;
        v33 = v51;
        if (v49 != v48)
        {
          continue;
        }

        break;
      }
    }

    v7 = v50;
    if (one-time initialization token for device != -1)
    {
      goto LABEL_69;
    }

LABEL_32:
    v34 = type metadata accessor for Logger();
    __swift_project_value_buffer(v34, static Log.device);

    rawValue = Logger.logObject.getter();
    v35 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(rawValue, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 134218496;
      *(v36 + 4) = *(v7 + 16);

      *(v36 + 12) = 2048;
      *(v36 + 14) = *(*(v2 + v9) + 16);
      *(v36 + 22) = 2048;
      *(v36 + 24) = *(*(v2 + v8) + 16);

      _os_log_impl(&dword_220940000, rawValue, v35, "purgeSteps called with %ld step(s), end of function call context token count is %ld and hole count is %ld", v36, 0x20u);
      MEMORY[0x223D90A10](v36, -1, -1);
    }

    else
    {
LABEL_54:
    }
  }

  else
  {
LABEL_26:
  }
}

uint64_t ODIELanguageModelRunner.makeKVCacheEntry(_:)(uint64_t a1, uint64_t a2)
{
  v5 = v2 + OBJC_IVAR____TtC24TokenGenerationInference23ODIELanguageModelRunner_model;
  v6 = type metadata accessor for ODIELanguageModel();
  result = specialized Collection.first.getter(*(v5 + *(v6 + 36)), v19);
  if (!v20)
  {
    goto LABEL_11;
  }

  v8 = v22;
  v9 = v23;
  v10 = v21;
  result = outlined destroy of [Int](v19, &_sSS3key_24TokenGenerationInference17ODIELanguageModelV23KeyValueCacheDescriptorV5valuetSgMd);
  v11 = v9 * v10;
  if ((v9 * v10) >> 64 != (v9 * v10) >> 63)
  {
    __break(1u);
    goto LABEL_8;
  }

  v12 = v11 * v8;
  if ((v11 * v8) >> 64 != (v11 * v8) >> 63)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v13 = a2 - a1;
  if (!__OFSUB__(a2, a1))
  {
    result = v13 * v12;
    if ((v13 * v12) >> 64 == (v13 * v12) >> 63)
    {
      v17 = specialized Data._Representation.init(capacity:)(result);
      v18 = v14;
      specialized ODIELanguageModelRunner.enumerateCacheSequences(range:block:)(a1, a2, v2, &v17);
      v15 = v17;
      v16 = v18;
      outlined copy of Data._Representation(v17, v18);
      outlined consume of Data._Representation(v15, v16);
      return v15;
    }

    goto LABEL_10;
  }

LABEL_9:
  __break(1u);
LABEL_10:
  __break(1u);
LABEL_11:
  __break(1u);
  return result;
}

uint64_t specialized ODIELanguageModelRunner.enumerateCacheSequences(range:block:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v108 = a4;
  v94 = type metadata accessor for NDArray.Buffer.Allocation();
  v7 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v9 = &v84[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s4ODIE7NDArrayC6BufferVSgMd);
  MEMORY[0x28223BE20](v10 - 8);
  v103 = &v84[-v11];
  v12 = a3 + OBJC_IVAR____TtC24TokenGenerationInference23ODIELanguageModelRunner_model;
  v13 = *(v12 + *(type metadata accessor for ODIELanguageModel() + 36));
  v14 = v13 + 64;
  v15 = 1 << *(v13 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v13 + 64);
  v98 = OBJC_IVAR____TtC24TokenGenerationInference23ODIELanguageModelRunner_buffers;
  v102 = (v15 + 63) >> 6;
  v93 = (v7 + 88);
  v92 = *MEMORY[0x277D36AF8];
  v87 = *MEMORY[0x277D36B00];
  v85 = *MEMORY[0x277D36AF0];
  v91 = (v7 + 96);
  v104 = a2;
  v90 = a2 - a1;
  v18 = __OFSUB__(a2, a1);
  v109 = v18;
  v101 = v13;

  v19 = 0;
  v99 = v9;
  v97 = v14;
  v89 = a3;
  v88 = a1;
LABEL_10:
  if (v17)
  {
    goto LABEL_15;
  }

  while (1)
  {
    v24 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
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
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
      goto LABEL_90;
    }

    if (v24 >= v102)
    {
    }

    v17 = *(v14 + 8 * v24);
    ++v19;
    if (v17)
    {
      v19 = v24;
LABEL_15:
      v105 = v17;
      v25 = __clz(__rbit64(v17)) | (v19 << 6);
      v26 = (*(v101 + 48) + 16 * v25);
      v27 = *v26;
      v28 = v26[1];
      v29 = (*(v101 + 56) + 32 * v25);
      v30 = v29[1];
      v111 = *v29;
      v112 = v30;
      v32 = v29[2];
      v31 = v29[3];
      v100 = v32;
      v110 = v31;
      v33 = v98;
      swift_beginAccess();
      v34 = *(a3 + v33);
      if (*(v34 + 16))
      {

        v35 = specialized __RawDictionaryStorage.find<A>(_:)(v27, v28);
        if (v36)
        {
          v37 = v35;
          v38 = *(v34 + 56);
          v22 = type metadata accessor for NDArray.Buffer();
          v39 = *(v22 - 8);
          v40 = v39;
          v41 = v38 + *(v39 + 72) * v37;
          v20 = v103;
          (*(v39 + 16))(v103, v41, v22);
          (*(v40 + 56))(v20, 0, 1, v22);
        }

        else
        {
          v22 = type metadata accessor for NDArray.Buffer();
          v20 = v103;
          (*(*(v22 - 8) + 56))(v103, 1, 1, v22);
        }

        v9 = v99;
      }

      else
      {
        v22 = type metadata accessor for NDArray.Buffer();
        v20 = v103;
        (*(*(v22 - 8) + 56))(v103, 1, 1, v22);
      }

      swift_endAccess();
      type metadata accessor for NDArray.Buffer();
      v23 = *(v22 - 8);
      if ((*(v23 + 48))(v20, 1, v22) == 1)
      {
        goto LABEL_89;
      }

      v21 = v105;
      if (v112 >= 1 && a1 != v104)
      {
        NDArray.Buffer.allocation.getter();
        v43 = v94;
        v44 = (*v93)(v9, v94);
        v96 = v22;
        v95 = v23;
        if (v44 == v92)
        {
          (*v91)(v9, v43);
          v86 = *v9;
          v45 = NDArray.Bytes.buffer.getter();
          if (v45)
          {
            v47 = v45;
            v48 = 0;
            AllocSize = (v46 - v45);
            v49 = a1 * v100;
            v50 = (a1 * v100) >> 64 != (a1 * v100) >> 63;
            v51 = v90 * v111;
            v52 = (v90 * v111) >> 64 != (v90 * v111) >> 63;
            v106 = v104 * v111;
            v53 = (v104 * v111) >> 64 != (v104 * v111) >> 63;
            do
            {
              v54 = v48 * v110;
              if ((v48 * v110) >> 64 != (v48 * v110) >> 63)
              {
                goto LABEL_68;
              }

              if (v50)
              {
                goto LABEL_69;
              }

              v55 = v54 + v49;
              if (__OFADD__(v54, v49))
              {
                goto LABEL_70;
              }

              v56 = v55 * v111;
              if ((v55 * v111) >> 64 != (v55 * v111) >> 63)
              {
                goto LABEL_71;
              }

              if (v109)
              {
                goto LABEL_72;
              }

              if (v52)
              {
                goto LABEL_73;
              }

              if (v53)
              {
                goto LABEL_74;
              }

              if (AllocSize < v106)
              {
                goto LABEL_92;
              }

              v114 = MEMORY[0x277D83EF0];
              v115 = MEMORY[0x277CC9EB0];
              v113[0] = v47 + v56;
              v113[1] = v47 + v56 + v51;
              __swift_project_boxed_opaque_existential_1(v113, MEMORY[0x277D83EF0]);
              ++v48;
              Data._Representation.append(contentsOf:)();
              __swift_destroy_boxed_opaque_existential_1(v113);
            }

            while (v112 != v48);

            goto LABEL_8;
          }

LABEL_90:
          __break(1u);
LABEL_91:
          __break(1u);
LABEL_92:
          v113[0] = 0;
          v113[1] = 0xE000000000000000;
          _StringGuts.grow(_:)(33);

          strcpy(v113, "source offset ");
          HIBYTE(v113[1]) = -18;
          v116 = v106;
LABEL_94:
          v82 = dispatch thunk of CustomStringConvertible.description.getter();
          MEMORY[0x223D8E780](v82);

          MEMORY[0x223D8E780](0x20666F2074756F20, 0xEF2073646E756F62);
          v116 = AllocSize;
          v83 = dispatch thunk of CustomStringConvertible.description.getter();
          MEMORY[0x223D8E780](v83);

          goto LABEL_95;
        }

        if (v44 != v87)
        {
          if (v44 == v85)
          {
            (*v91)(v9, v43);
            v68 = *v9;
            v106 = [swift_unknownObjectRetain() contents];
            v69 = v68;
            v86 = v68;
            AllocSize = [(__IOSurface *)v69 length];
            v70 = 0;
            v71 = a1 * v100;
            v72 = (a1 * v100) >> 64 != (a1 * v100) >> 63;
            v73 = v90 * v111;
            v74 = (v90 * v111) >> 64 != (v90 * v111) >> 63;
            v75 = v104 * v111;
            v76 = (v104 * v111) >> 64 != (v104 * v111) >> 63;
            while (1)
            {
              v77 = v70 * v110;
              if ((v70 * v110) >> 64 != (v70 * v110) >> 63)
              {
                goto LABEL_75;
              }

              if (v72)
              {
                goto LABEL_77;
              }

              v78 = v77 + v71;
              if (__OFADD__(v77, v71))
              {
                goto LABEL_79;
              }

              v79 = v78 * v111;
              if ((v78 * v111) >> 64 != (v78 * v111) >> 63)
              {
                goto LABEL_81;
              }

              if (v109)
              {
                goto LABEL_83;
              }

              if (v74)
              {
                goto LABEL_85;
              }

              if (v76)
              {
                goto LABEL_87;
              }

              if (AllocSize < v75)
              {
                break;
              }

              v114 = MEMORY[0x277D83EF0];
              v115 = MEMORY[0x277CC9EB0];
              v113[0] = v106 + v79;
              v113[1] = v106 + v79 + v73;
              __swift_project_boxed_opaque_existential_1(v113, MEMORY[0x277D83EF0]);
              ++v70;
              Data._Representation.append(contentsOf:)();
              __swift_destroy_boxed_opaque_existential_1(v113);
              if (v112 == v70)
              {
                swift_unknownObjectRelease();
                goto LABEL_8;
              }
            }

            v113[0] = 0;
            v113[1] = 0xE000000000000000;
            _StringGuts.grow(_:)(33);

            strcpy(v113, "source offset ");
            HIBYTE(v113[1]) = -18;
            v116 = v75;
            goto LABEL_94;
          }

          while (1)
          {
LABEL_95:
            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
          }
        }

        (*v91)(v9, v43);
        v57 = *v9;
        IOSurfaceLock(*v9, 0, 0);
        BaseAddress = IOSurfaceGetBaseAddress(v57);
        AllocSize = IOSurfaceGetAllocSize(v57);
        v86 = v57;
        if (!BaseAddress)
        {
          goto LABEL_91;
        }

        v59 = 0;
        v60 = a1 * v100;
        v61 = (a1 * v100) >> 64 != (a1 * v100) >> 63;
        v62 = v90 * v111;
        v63 = (v90 * v111) >> 64 != (v90 * v111) >> 63;
        v106 = v104 * v111;
        v64 = (v104 * v111) >> 64 != (v104 * v111) >> 63;
        do
        {
          v65 = v59 * v110;
          if ((v59 * v110) >> 64 != (v59 * v110) >> 63)
          {
            goto LABEL_76;
          }

          if (v61)
          {
            goto LABEL_78;
          }

          v66 = v65 + v60;
          if (__OFADD__(v65, v60))
          {
            goto LABEL_80;
          }

          v67 = v66 * v111;
          if ((v66 * v111) >> 64 != (v66 * v111) >> 63)
          {
            goto LABEL_82;
          }

          if (v109)
          {
            goto LABEL_84;
          }

          if (v63)
          {
            goto LABEL_86;
          }

          if (v64)
          {
            goto LABEL_88;
          }

          if (AllocSize < v106)
          {
            goto LABEL_92;
          }

          v114 = MEMORY[0x277D83EF0];
          v115 = MEMORY[0x277CC9EB0];
          v113[0] = &BaseAddress[v67];
          v113[1] = &BaseAddress[v67 + v62];
          __swift_project_boxed_opaque_existential_1(v113, MEMORY[0x277D83EF0]);
          ++v59;
          Data._Representation.append(contentsOf:)();
          __swift_destroy_boxed_opaque_existential_1(v113);
        }

        while (v112 != v59);
        v80 = v86;
        IOSurfaceUnlock(v86, 0, 0);

LABEL_8:
        a3 = v89;
        a1 = v88;
        v9 = v99;
        v20 = v103;
        v21 = v105;
        v22 = v96;
        v23 = v95;
      }

      v17 = (v21 - 1) & v21;
      (*(v23 + 8))(v20, v22);
      v14 = v97;
      goto LABEL_10;
    }
  }
}

uint64_t ODIELanguageModelRunner.setKVCacheEntry(_:tokens:tokenMasks:start:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = OBJC_IVAR____TtC24TokenGenerationInference23ODIELanguageModelRunner_contextTokens;
  swift_beginAccess();
  v45 = v12;
  if (*(*(v5 + v12) + 16) != a5)
  {
    if (one-time initialization token for device == -1)
    {
LABEL_9:
      v18 = type metadata accessor for Logger();
      __swift_project_value_buffer(v18, static Log.device);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v19, v20))
      {
LABEL_12:

        lazy protocol witness table accessor for type DecoderModelError and conformance DecoderModelError();
        swift_allocError();
        *v23 = xmmword_220AEF080;
        *(v23 + 16) = 4;
        return swift_willThrow();
      }

      v21 = swift_slowAlloc();
      *v21 = 134217984;
      *(v21 + 4) = a5;
      _os_log_impl(&dword_220940000, v19, v20, "Cannot insert KV cache entry at %ld", v21, 0xCu);
      v22 = v21;
LABEL_11:
      MEMORY[0x223D90A10](v22, -1, -1);
      goto LABEL_12;
    }

LABEL_43:
    swift_once();
    goto LABEL_9;
  }

  v46 = 0;
  v44 = *(a3 + 16);
  v13 = a5 + v44;
  if (__OFADD__(a5, v44))
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (v13 < a5)
  {
    __break(1u);
    goto LABEL_45;
  }

  outlined copy of Data._Representation(a1, a2);
  specialized ODIELanguageModelRunner.enumerateCacheSequences(range:block:)(a5, v13, v5, &v46, a1, a2);
  result = outlined consume of Data._Representation(a1, a2);
  if (v6)
  {
    return result;
  }

  v43 = v5;
  v15 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    v16 = v5;
    if (!v15)
    {
      v17 = BYTE6(a2);
      goto LABEL_33;
    }

    LODWORD(v17) = HIDWORD(a1) - a1;
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      v17 = v17;
LABEL_33:
      v28 = v45;
      if (v46 != v17)
      {
        goto LABEL_34;
      }

      goto LABEL_17;
    }

LABEL_47:
    __break(1u);
    return result;
  }

  v16 = v5;
  if (v15 == 2)
  {
    v25 = *(a1 + 16);
    v24 = *(a1 + 24);
    v26 = __OFSUB__(v24, v25);
    v27 = v24 - v25;
    v28 = v45;
    if (!v26)
    {
      if (v46 != v27)
      {
        goto LABEL_34;
      }

      goto LABEL_17;
    }

    __break(1u);
    goto LABEL_47;
  }

  v28 = v45;
  if (v46)
  {
LABEL_34:
    if (one-time initialization token for device == -1)
    {
LABEL_35:
      v38 = type metadata accessor for Logger();
      __swift_project_value_buffer(v38, static Log.device);
      v19 = Logger.logObject.getter();
      v39 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v19, v39))
      {
        goto LABEL_12;
      }

      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_220940000, v19, v39, "Did not use all bytes in cache entry", v40, 2u);
      v22 = v40;
      goto LABEL_11;
    }

LABEL_45:
    swift_once();
    goto LABEL_35;
  }

LABEL_17:
  if (v44)
  {
    v29 = 0;
    v41 = a4;
    v42 = a3 + 32;
    for (i = (a4 + 48); ; i += 3)
    {
      a5 = *(v42 + 8 * v29);
      if (a4)
      {
        if (v29 >= *(a4 + 16))
        {
          goto LABEL_41;
        }

        v32 = *(i - 2);
        v31 = *(i - 1);
        v33 = *i;
      }

      else
      {
        v32 = 0;
        v31 = *(*(v16 + v28) + 16);
        v33 = MEMORY[0x277D84F90];
      }

      if (a5 < 0xFFFFFFFF80000000)
      {
        break;
      }

      if (a5 > 0x7FFFFFFF)
      {
        goto LABEL_40;
      }

      v34 = *(v16 + v28);
      result = swift_isUniquelyReferenced_nonNull_native();
      v16 = v43;
      *(v43 + v28) = v34;
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v34 + 16) + 1, 1, v34);
        v16 = v43;
        v34 = result;
        *(v43 + v28) = result;
      }

      v36 = *(v34 + 16);
      v35 = *(v34 + 24);
      if (v36 >= v35 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1, v34);
        v16 = v43;
        v34 = result;
      }

      *(v34 + 16) = v36 + 1;
      v37 = v34 + 32 * v36;
      *(v37 + 32) = a5;
      ++v29;
      *(v37 + 40) = v32;
      *(v37 + 48) = v31;
      *(v37 + 56) = v33;
      v28 = v45;
      *(v16 + v45) = v34;
      a4 = v41;
      if (v44 == v29)
      {
        return result;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  return result;
}

uint64_t ODIELanguageModelRunner.embeddings(forToken:)(int a1)
{
  *(v2 + 16) = v1;
  *(v2 + 72) = a1;
  v3 = type metadata accessor for Data.Deallocator();
  *(v2 + 24) = v3;
  *(v2 + 32) = *(v3 - 8);
  *(v2 + 40) = swift_task_alloc();

  return MEMORY[0x2822009F8](ODIELanguageModelRunner.embeddings(forToken:), 0, 0);
}

uint64_t ODIELanguageModelRunner.embeddings(forToken:)()
{
  v1 = *(v0 + 16) + OBJC_IVAR____TtC24TokenGenerationInference23ODIELanguageModelRunner_model;
  v2 = *(v1 + *(type metadata accessor for ODIELanguageModel() + 40));
  v3 = *(v2 + 16);
  if (v3 && (v4 = *(v0 + 72), swift_unknownObjectRetain(), findEmbeddingLocation(forToken:in:)(v4, v3), LOBYTE(v4) = v5, swift_unknownObjectRelease(), (v4 & 1) == 0))
  {
    v8 = *(v2 + 56);
    *(v0 + 48) = v8;
    v9 = swift_slowAlloc();
    *(v0 + 56) = v9;
    v10 = swift_task_alloc();
    *(v0 + 64) = v10;
    *v10 = v0;
    v10[1] = ODIELanguageModelRunner.embeddings(forToken:);
    v11 = *(v0 + 72);

    return ODIEImageFeatureProjector.copyEmbedding(forToken:to:)(v11, v9, v9 + v8);
  }

  else
  {

    v6 = *(v0 + 8);

    return v6(0, 0xC000000000000000);
  }
}

{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](ODIELanguageModelRunner.embeddings(forToken:), 0, 0);
  }
}

{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[3];
  *v4 = closure #1 in ODIELanguageModelRunner.embeddings(forToken:);
  v4[1] = 0;
  (*(v3 + 104))(v4, *MEMORY[0x277CC92B8], v5);
  v6 = specialized Data.init(bytesNoCopy:count:deallocator:)(v2, v1, v4);
  v8 = v7;

  v9 = v0[1];

  return v9(v6, v8);
}

uint64_t ODIELanguageModelRunner.deinit()
{
  v1 = v0 + OBJC_IVAR____TtC24TokenGenerationInference23ODIELanguageModelRunner_model;
  v2 = type metadata accessor for ProgramDescriptor();
  (*(*(v2 - 8) + 8))(v1, v2);
  type metadata accessor for ODIELanguageModel();

  return v0;
}

uint64_t ODIELanguageModelRunner.__deallocating_deinit()
{
  ODIELanguageModelRunner.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ODIELanguageModelRunner()
{
  result = type metadata singleton initialization cache for ODIELanguageModelRunner;
  if (!type metadata singleton initialization cache for ODIELanguageModelRunner)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for ODIELanguageModelRunner()
{
  result = type metadata accessor for ODIELanguageModel();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TokenRecord(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for TokenRecord(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t protocol witness for LanguageModelRunner.run(tokens:computeLogitsTokenCount:tokenMasks:presampler:) in conformance ODIELanguageModelRunner(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = protocol witness for LanguageModelRunner.run(tokens:computeLogitsTokenCount:tokenMasks:presampler:) in conformance ODIELanguageModelRunner;

  return ODIELanguageModelRunner.run(tokens:computeLogitsTokenCount:tokenMasks:presampler:)(a1, a2, a3, a4);
}

uint64_t protocol witness for LanguageModelRunner.currentContextSize.getter in conformance ODIELanguageModelRunner()
{
  v1 = OBJC_IVAR____TtC24TokenGenerationInference23ODIELanguageModelRunner_contextTokens;
  swift_beginAccess();
  return *(*(v0 + v1) + 16);
}

uint64_t protocol witness for LanguageModelRunner.maxContextLength.getter in conformance ODIELanguageModelRunner()
{
  v1 = v0 + OBJC_IVAR____TtC24TokenGenerationInference23ODIELanguageModelRunner_model;
  result = type metadata accessor for ODIELanguageModel();
  v3 = *(v1 + *(result + 24));
  v4 = *(v3 + 16);
  if (v4)
  {
    outlined init with copy of AFMDecodeFunction(v3 + 48 * v4 - 16, &v8);
    v5 = v10;
    v6 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    v7 = (*(*(v6 + 8) + 16))(v5);
    outlined destroy of AFMDecodeFunction(&v8);
    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for LanguageModelRunner.vocabularyCount.getter in conformance ODIELanguageModelRunner()
{
  type metadata accessor for ODIELanguageModel();
  result = NDArray.shape.getter();
  if (*(result + 16))
  {
    v1 = *(result + 32);

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for LanguageModelRunner.encodedImages.getter in conformance ODIELanguageModelRunner()
{
  type metadata accessor for ODIELanguageModel();

  return swift_unknownObjectRetain();
}

uint64_t protocol witness for LanguageModelRunner.encodedImages.setter in conformance ODIELanguageModelRunner(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC24TokenGenerationInference23ODIELanguageModelRunner_model;
  v4 = *(v3 + *(type metadata accessor for ODIELanguageModel() + 40));
  if (v4[3])
  {
    v4[6] = -1;
  }

  v4[2] = a1;

  return swift_unknownObjectRelease();
}

uint64_t (*protocol witness for LanguageModelRunner.encodedImages.modify in conformance ODIELanguageModelRunner(void *a1))(uint64_t *a1)
{
  v3 = v1 + OBJC_IVAR____TtC24TokenGenerationInference23ODIELanguageModelRunner_model;
  v4 = *(v3 + *(type metadata accessor for ODIELanguageModel() + 40));
  a1[1] = v4;
  *a1 = *(v4 + 16);
  swift_unknownObjectRetain();
  return protocol witness for LanguageModelRunner.encodedImages.modify in conformance ODIELanguageModelRunner;
}

uint64_t protocol witness for LanguageModelRunner.encodedImages.modify in conformance ODIELanguageModelRunner(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  if (v1[3])
  {
    v1[6] = -1;
  }

  v1[2] = v2;
  return swift_unknownObjectRelease();
}

uint64_t protocol witness for LanguageModelRunner.embeddings(forToken:) in conformance ODIELanguageModelRunner(int a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for InferenceProvider.requestOneShot(clientData:configuration:) in conformance OnDeviceInferenceProvider;

  return ODIELanguageModelRunner.embeddings(forToken:)(a1);
}

uint64_t specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B)@<X0>(char *a1@<X0>, char *a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_4ODIE7NDArrayC6BufferV5valuetMd) + 48);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_4ODIE7NDArrayC6BufferVtMd) + 48);
  v7 = *a1;
  v6 = *(a1 + 1);
  v8 = type metadata accessor for NDArray.Buffer();
  (*(*(v8 - 8) + 16))(&a2[v5], &a1[v4], v8);
  *a2 = v7;
  *(a2 + 1) = v6;
}

uint64_t specialized MutableCollection._halfStablePartition(isSuffixElement:)(uint64_t result)
{
  v2 = *result;
  v3 = *(*result + 16);
  if (!v3)
  {
    return 0;
  }

  v4 = 0;
  v5 = 0;
  while (*(v2 + v4 + 32) != -1)
  {
    ++v5;
    v4 += 32;
    if (v3 == v5)
    {
      return *(*result + 16);
    }
  }

  if (v1)
  {
    return v5;
  }

  v6 = v5 + 1;
  if (!__OFADD__(v5, 1))
  {
    if (v6 == v3)
    {
      return v5;
    }

    v15 = result;
    while (v6 < v3)
    {
      v7 = *(v2 + v4 + 64);
      if (v7 != -1)
      {
        if (v6 != v5)
        {
          if (v5 >= v3)
          {
            goto LABEL_24;
          }

          v8 = v2 + 32 + 32 * v5;
          v18 = *v8;
          v16 = *(v8 + 16);
          v17 = *(v8 + 8);
          v9 = *(v8 + 24);
          v10 = *(v2 + v4 + 72);
          v11 = *(v2 + v4 + 80);
          v12 = *(v2 + v4 + 88);

          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
            v2 = result;
          }

          if (v5 >= *(v2 + 16))
          {
            goto LABEL_25;
          }

          v13 = v2 + 32 * v5;
          *(v13 + 32) = v7;
          *(v13 + 40) = v10;
          *(v13 + 48) = v11;
          *(v13 + 56) = v12;

          if (v6 >= *(v2 + 16))
          {
            goto LABEL_26;
          }

          v14 = v2 + v4;
          *(v14 + 64) = v18;
          *(v14 + 72) = v17;
          *(v14 + 80) = v16;
          *(v14 + 88) = v9;

          result = v15;
          *v15 = v2;
        }

        ++v5;
      }

      ++v6;
      v3 = *(v2 + 16);
      v4 += 32;
      if (v6 == v3)
      {
        return v5;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  __break(1u);
  return result;
}

void specialized Set.subscript.getter(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x223D8EDA0](a1, a2, v7);
      type metadata accessor for TGIE5AdapterConfigurationObjC();
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    type metadata accessor for TGIE5AdapterConfigurationObjC();
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v4 = v15;
    v8 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v9 = -1 << *(a4 + 32);
    v6 = v8 & ~v9;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v10 = ~v9;
      do
      {
        v11 = *(*(a4 + 48) + 8 * v6);
        v12 = static NSObject.== infix(_:_:)();

        if (v12)
        {
          goto LABEL_19;
        }

        v6 = (v6 + 1) & v10;
      }

      while (((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    __break(1u);
  }

  if ((v6 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v6)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v6 >> 6) + 56) >> v6) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v13 = *(*(a4 + 48) + 8 * v6);

  v14 = v13;
}

_OWORD *specialized Dictionary.subscript.getter(_OWORD *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 16 * a2);
    v6 = (*(a5 + 56) + 32 * a2);
    v7 = v6[1];
    *result = *v6;
    result[1] = v7;

    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

_DWORD *specialized Dictionary.subscript.getter(_DWORD *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 8 * a2);
    *result = *(*(a5 + 56) + 4 * a2);
    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t specialized LazyMapSequence.Iterator.next()@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_4ODIE7NDArrayC6BufferV5valuetMd);
  v46 = *(v3 - 8);
  v47 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v42 - v4;
  v45 = type metadata accessor for NDArray.Buffer();
  v6 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_4ODIE7NDArrayC6BufferV5valuetSgMd);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v49 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v10);
  v14 = &v42 - v13;
  v15 = *v1;
  v16 = v1[1];
  v18 = v1[2];
  v17 = v1[3];
  v19 = v1[4];
  v42 = v5;
  v48 = v18;
  if (v19)
  {
    v44 = a1;
    v20 = v17;
LABEL_11:
    v43 = (v19 - 1) & v19;
    v24 = __clz(__rbit64(v19)) | (v20 << 6);
    v25 = (*(v15 + 48) + 16 * v24);
    v26 = *v25;
    v27 = v25[1];
    v28 = v45;
    (*(v6 + 16))(v8, *(v15 + 56) + *(v6 + 72) * v24, v45);
    v29 = v47;
    v30 = *(v47 + 48);
    *v14 = v26;
    *(v14 + 1) = v27;
    v31 = v8;
    v32 = v29;
    (*(v6 + 32))(&v14[v30], v31, v28);
    v33 = v46;
    (*(v46 + 56))(v14, 0, 1, v32);

    v34 = v43;
    a1 = v44;
    v23 = v20;
    v35 = v33;
LABEL_12:
    *v1 = v15;
    v1[1] = v16;
    v36 = v49;
    v1[2] = v48;
    v1[3] = v23;
    v1[4] = v34;
    v37 = v1[5];
    outlined init with take of Asset?(v14, v36, &_sSS3key_4ODIE7NDArrayC6BufferV5valuetSgMd);
    v38 = 1;
    if ((*(v35 + 48))(v36, 1, v32) != 1)
    {
      v39 = v36;
      v40 = v42;
      outlined init with take of Asset?(v39, v42, &_sSS3key_4ODIE7NDArrayC6BufferV5valuetMd);
      v37(v40);
      outlined destroy of [Int](v40, &_sSS3key_4ODIE7NDArrayC6BufferV5valuetMd);
      v38 = 0;
    }

    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_4ODIE7NDArrayC6BufferVtMd);
    return (*(*(v41 - 8) + 56))(a1, v38, 1, v41);
  }

  else
  {
    v21 = (v18 + 64) >> 6;
    if (v21 <= v17 + 1)
    {
      v22 = v17 + 1;
    }

    else
    {
      v22 = (v18 + 64) >> 6;
    }

    v23 = v22 - 1;
    while (1)
    {
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v20 >= v21)
      {
        v35 = v46;
        v32 = v47;
        (*(v46 + 56))(&v42 - v13, 1, 1, v47);
        v34 = 0;
        goto LABEL_12;
      }

      v19 = *(v16 + 8 * v20);
      ++v17;
      if (v19)
      {
        v44 = a1;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t specialized ArraySlice.reserveCapacity(_:)(uint64_t result)
{
  v2 = result;
  v3 = v1[3];
  v4 = v3 >> 1;
  if ((v3 & 1) == 0)
  {
    goto LABEL_10;
  }

  v5 = *v1;
  result = swift_isUniquelyReferenced_nonNull();
  *v1 = v5;
  if ((result & 1) == 0)
  {
    goto LABEL_10;
  }

  v6 = v1[2];
  v7 = v4 - v6;
  if (__OFSUB__(v4, v6))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v8 = v1[1];
  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {
    swift_unknownObjectRelease();
    v9 = MEMORY[0x277D84F90];
  }

  v10 = *(v9 + 16);
  if (v8 + 32 * v6 + 32 * v7 != v9 + 32 * v10 + 32)
  {

    goto LABEL_9;
  }

  v11 = *(v9 + 24);

  v12 = (v11 >> 1) - v10;
  v13 = __OFADD__(v7, v12);
  v7 += v12;
  if (!v13)
  {
LABEL_9:
    if (v7 >= v2)
    {
LABEL_17:
      *v1 = v5;
      return result;
    }

LABEL_10:
    v14 = v1[2];
    if (__OFSUB__(v4, v14))
    {
      __break(1u);
    }

    else
    {
      result = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC24TokenGenerationInference0H6RecordV_Tt1g5(v4 - v14, v2);
      if (v4 >= v14)
      {
        v5 = result;
        v15 = result + 32;
        result = swift_arrayInitWithCopy();
        if (!__OFSUB__(0, v14))
        {
          v16 = *(v5 + 16);
          v13 = __OFADD__(v14, v16);
          v17 = v14 + v16;
          if (!v13)
          {
            if (v17 >= v14)
            {
              if ((v17 & 0x8000000000000000) == 0)
              {
                v18 = (2 * v17) | 1;
                result = swift_unknownObjectRelease();
                v1[1] = v15 - 32 * v14;
                v1[2] = v14;
                v1[3] = v18;
                goto LABEL_17;
              }

              goto LABEL_23;
            }

LABEL_22:
            __break(1u);
LABEL_23:
            __break(1u);
            goto LABEL_24;
          }

LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

LABEL_20:
        __break(1u);
        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *specialized ArraySlice.append<A>(contentsOf:)(void *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_37;
  }

  v30 = result;
  v8 = v4[2];
  v7 = v4[3];
  v9 = (v7 >> 1) - v8;
  if (__OFSUB__(v7 >> 1, v8))
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if ((v7 & 1) == 0)
  {
LABEL_8:
    v15 = v9;
    goto LABEL_10;
  }

  v12 = v4[1];
  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain();
  v13 = swift_dynamicCastClass();
  if (!v13)
  {
    swift_unknownObjectRelease();
    v13 = MEMORY[0x277D84F90];
  }

  v14 = *(v13 + 16);
  if (v12 + 32 * v8 + 32 * v9 != v13 + 32 * v14 + 32)
  {

    goto LABEL_8;
  }

  v16 = *(v13 + 24);

  v17 = (v16 >> 1) - v14;
  v18 = __OFADD__(v9, v17);
  v15 = v9 + v17;
  if (v18)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

LABEL_10:
  result = (v9 + v6);
  if (__OFADD__(v9, v6))
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v15 < result)
  {
    if (v15 + 0x4000000000000000 < 0)
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v19 = 2 * v15;
    if (v19 > result)
    {
      result = v19;
    }
  }

  result = specialized ArraySlice.reserveCapacity(_:)(result);
  v21 = v4[2];
  v20 = v4[3];
  v22 = (v20 >> 1) - v21;
  if (__OFSUB__(v20 >> 1, v21))
  {
    goto LABEL_39;
  }

  v23 = v4[1] + 32 * v21 + 32 * v22;
  if ((v20 & 1) == 0)
  {
LABEL_21:
    v26 = v22;
    goto LABEL_23;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain();
  v24 = swift_dynamicCastClass();
  if (!v24)
  {
    swift_unknownObjectRelease();
    v24 = MEMORY[0x277D84F90];
  }

  v25 = *(v24 + 16);
  if (v23 != v24 + 32 * v25 + 32)
  {

    goto LABEL_21;
  }

  v27 = *(v24 + 24);

  v28 = (v27 >> 1) - v25;
  v18 = __OFADD__(v22, v28);
  v26 = v22 + v28;
  if (v18)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

LABEL_23:
  v29 = v26 - v22;
  if (__OFSUB__(v26, v22))
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (v5 == a3)
  {
    if (v6 <= 0)
    {
      v6 = 0;
      v5 = a3;
      goto LABEL_31;
    }

    goto LABEL_41;
  }

  if (v29 < v6)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  swift_arrayInitWithCopy();
  if (v6 > 0)
  {
    result = (v22 + v6);
    if (__OFADD__(v22, v6))
    {
LABEL_46:
      __break(1u);
      return result;
    }

    specialized _SliceBuffer.count.setter(result);
  }

LABEL_31:
  if (v6 == v29)
  {
    v32[0] = v30;
    v32[1] = a2;
    v32[2] = a3;
    v32[3] = a4;
    v32[4] = v5;
    return specialized _ArrayBufferProtocol._arrayAppendSequence<A>(_:)(v32);
  }

  else
  {

    return swift_unknownObjectRelease();
  }
}

uint64_t specialized _ArrayBufferProtocol._arrayOutOfPlaceUpdate(_:_:_:_:)(uint64_t result, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v5 = v4[2];
  v6 = v4[3] >> 1;
  v7 = v6 - v5;
  if (__OFSUB__(v6, v5))
  {
    __break(1u);
    goto LABEL_29;
  }

  v9 = *result;
  v10 = *(*result + 16);
  v11 = __OFSUB__(v10, a2);
  v12 = v10 - a2;
  if (v11)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v14 = v12 - a3;
  if (__OFSUB__(v12, a3))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v15 = v7 - a2;
  if (__OFSUB__(v7, a2))
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v11 = __OFSUB__(v15, v14);
  v16 = v15 - v14;
  if (v11)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v31 = v14;
  v32 = v16;
  v17 = (v9 + 32);
  v18 = v9 + 32 + 32 * a2;
  result = specialized _SliceBuffer.requestUniqueMutableBackingBuffer(minimumCapacity:)(v7);
  v34 = v9 + 32;
  if (result)
  {
    v19 = result;
    __dst = (v18 + 32 * a3);
    v30 = v9;
    v20 = v4[2];
    v21 = (v4[1] + 32 * v20);
    v22 = &v21[32 * a2];
    swift_arrayDestroy();
    if (v17 != v21 || v17 >= v22)
    {
      memmove(v17, v21, 32 * a2);
    }

    swift_arrayDestroy();
    a4(v18, a3);
    v23 = &v22[32 * v32];
    if (__dst != v23 || __dst >= &v23[32 * v31])
    {
      memmove(__dst, v23, 32 * v31);
    }

    swift_arrayDestroy();
    *(v19 + 16) = 0;

    v9 = v30;
  }

  else
  {
    v20 = v4[2];
    v24 = v20 + a2;
    if (__OFADD__(v20, a2))
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    if (v24 < v20)
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    if (__OFSUB__(v24, v20))
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    swift_arrayInitWithCopy();
    result = (a4)(v34 + 32 * a2, a3);
    v25 = v24 + v32;
    if (__OFADD__(v24, v32))
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v26 = v4[3] >> 1;
    if (v26 < v25)
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    if (__OFSUB__(v26, v25))
    {
LABEL_42:
      __break(1u);
      return result;
    }

    swift_arrayInitWithCopy();
  }

  result = swift_unknownObjectRelease();
  if (__OFSUB__(0, v20))
  {
    goto LABEL_33;
  }

  v27 = *(v9 + 16);
  v11 = __OFADD__(v20, v27);
  v28 = v20 + v27;
  if (v11)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v28 < v20)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v28 < 0)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  *v4 = v9;
  v4[1] = v34 - 32 * v20;
  v4[2] = v20;
  v4[3] = (2 * v28) | 1;
}

uint64_t specialized _SliceBuffer.count.setter(uint64_t result)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = v3 >> 1;
  v5 = __OFSUB__(v3 >> 1, v2);
  v6 = (v3 >> 1) - v2;
  if (v5)
  {
    __break(1u);
    goto LABEL_12;
  }

  v7 = result - v6;
  if (__OFSUB__(result, v6))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (!v7)
  {
    return result;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain();
  result = swift_dynamicCastClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    result = MEMORY[0x277D84F90];
  }

  v8 = *(result + 16);
  v5 = __OFADD__(v8, v7);
  v9 = v8 + v7;
  if (v5)
  {
    goto LABEL_13;
  }

  *(result + 16) = v9;

  v10 = v4 + v7;
  if (__OFADD__(v4, v7))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 0)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  *(v1 + 24) = v3 & 1 | (2 * v10);
  return result;
}

void *specialized _ArrayBufferProtocol._arrayAppendSequence<A>(_:)(void *result)
{
  v3 = v1[2];
  v2 = v1[3];
  v4 = (v2 >> 1) - v3;
  if (__OFSUB__(v2 >> 1, v3))
  {
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    return result;
  }

  v5 = result[4];
  v30 = result;
  v40 = result[3] >> 1;
  if (v5 != v40)
  {
    v38 = result[2];
    if (v5 < v38 || v5 >= v40)
    {
      goto LABEL_52;
    }

    v32 = result[1];
    v7 = (v32 + 32 * v5);
    v8 = *(v7 + 2);
    v9 = *(v7 + 3);
    v10 = *v7;
    v11 = *(v7 + 1);

    if (v9)
    {
      v39 = v5 + 1;
      v31 = v1;
      while (1)
      {
        if (__OFADD__(v4, 1))
        {
          goto LABEL_44;
        }

        v41 = specialized _ArrayBufferProtocol._forceCreateUniqueMutableBuffer(countForNewBuffer:minNewCapacity:)(v4, v4 + 1, *v1, v1[1], v3, v2);
        v12 = specialized default argument 3 of _ArrayBufferProtocol._arrayOutOfPlaceUpdate(_:_:_:_:)();
        specialized _ArrayBufferProtocol._arrayOutOfPlaceUpdate(_:_:_:_:)(&v41, v4, 0, v12);

        v3 = v1[2];
        v2 = v1[3];
        if (__OFSUB__(v2 >> 1, v3))
        {
          break;
        }

        v33 = v2 >> 1;
        v36 = (v2 >> 1) - v3;
        v37 = v1[1];
        v35 = v1[3];
        if (v2)
        {
          type metadata accessor for __ContiguousArrayStorageBase();
          swift_unknownObjectRetain();
          v13 = swift_dynamicCastClass();
          if (!v13)
          {
            swift_unknownObjectRelease();
            v13 = MEMORY[0x277D84F90];
          }

          v14 = *(v13 + 16);
          v15 = v36;
          if (v37 + 32 * v3 + 32 * v36 == v13 + 32 * v14 + 32)
          {
            v17 = *(v13 + 24);

            v18 = (v17 >> 1) - v14;
            v16 = v36 + v18;
            if (__OFADD__(v36, v18))
            {
              goto LABEL_50;
            }
          }

          else
          {

            v16 = v36;
          }

          v2 = v35;
          v34 = v3;
        }

        else
        {
          v15 = (v2 >> 1) - v3;
          v16 = v15;
          v34 = v1[2];
        }

        if (v4 < v16)
        {
          v19 = 0;
          v20 = v32 + 32 * v39;
          v21 = v4 + 1;
          v22 = v37 + 32 * v4 + 32 * v3;
          v23 = v39;
          while (1)
          {
            v24 = v22 + v19;
            *v24 = v10;
            v4 = v21;
            *(v24 + 8) = v11;
            *(v24 + 16) = v8;
            *(v24 + 24) = v9;
            if (v40 == v23)
            {
              break;
            }

            if (v39 < v38 || v23 >= v40)
            {
              __break(1u);
LABEL_44:
              __break(1u);
              goto LABEL_45;
            }

            ++v23;
            v8 = *(v20 + v19 + 16);
            v9 = *(v20 + v19 + 24);
            v10 = *(v20 + v19);
            v11 = *(v20 + v19 + 8);

            if (v9)
            {
              v19 += 32;
              v21 = v4 + 1;
              if (v4 < v16)
              {
                continue;
              }
            }

            v39 = v23;
LABEL_30:
            v1 = v31;
            v3 = v34;
            v2 = v35;
            v15 = v36;
            goto LABEL_31;
          }

          v9 = 0;
          v8 = 0;
          v11 = 0;
          v10 = 0;
          v39 = v40;
          goto LABEL_30;
        }

LABEL_31:
        v25 = __OFSUB__(v4, v15);
        v26 = v4 - v15;
        if (v25)
        {
          goto LABEL_46;
        }

        if (v26)
        {
          type metadata accessor for __ContiguousArrayStorageBase();
          swift_unknownObjectRetain();
          result = swift_dynamicCastClass();
          if (!result)
          {
            swift_unknownObjectRelease();
            result = MEMORY[0x277D84F90];
          }

          v27 = result[2];
          v25 = __OFADD__(v27, v26);
          v28 = v27 + v26;
          if (v25)
          {
            goto LABEL_47;
          }

          result[2] = v28;

          v29 = v33 + v26;
          if (__OFADD__(v33, v26))
          {
            goto LABEL_48;
          }

          if ((v29 & 0x8000000000000000) != 0)
          {
            goto LABEL_49;
          }

          v2 = v2 & 1 | (2 * v29);
          v1[3] = v2;
          v3 = v34;
        }

        if (!v9)
        {
          goto LABEL_40;
        }
      }

LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }
  }

LABEL_40:
  outlined destroy of [Int](v30, &_ss16IteratorSequenceVys08IndexingA0Vys10ArraySliceVy24TokenGenerationInference0F6RecordVGGGMd);
}

void *specialized _ArrayBufferProtocol._forceCreateUniqueMutableBuffer(countForNewBuffer:minNewCapacity:)(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v8 = (a6 >> 1) - a5;
  if (__OFSUB__(a6 >> 1, a5))
  {
    __break(1u);
LABEL_28:
    if (v8 >= v7)
    {
      goto LABEL_21;
    }

LABEL_18:
    if (v8 + 0x4000000000000000 >= 0)
    {
      v8 *= 2;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_31;
  }

  v7 = a2;
  v6 = result;
  if ((a6 & 1) == 0)
  {
    goto LABEL_28;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain();
  v11 = swift_dynamicCastClass();
  if (!v11)
  {
    swift_unknownObjectRelease();
    v11 = MEMORY[0x277D84F90];
  }

  v12 = *(v11 + 16);
  v13 = a4 + 32 * a5 + 32 * v8;
  if (v13 == v11 + 32 * v12 + 32)
  {
    v15 = *(v11 + 24);

    v16 = (v15 >> 1) - v12;
    v14 = v8 + v16;
    if (__OFADD__(v8, v16))
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }
  }

  else
  {

    v14 = v8;
  }

  swift_unknownObjectRetain();
  v17 = swift_dynamicCastClass();
  if (v14 < v7)
  {
    if (!v17)
    {
      swift_unknownObjectRelease();
      v17 = MEMORY[0x277D84F90];
    }

    v18 = *(v17 + 16);
    if (v13 == v17 + 32 * v18 + 32)
    {
      v20 = *(v17 + 24);

      v21 = (v20 >> 1) - v18;
      v22 = __OFADD__(v8, v21);
      v8 += v21;
      if (v22)
      {
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }
    }

    else
    {
    }

    goto LABEL_18;
  }

  if (!v17)
  {
    swift_unknownObjectRelease();
    v17 = MEMORY[0x277D84F90];
  }

  v19 = *(v17 + 16);
  if (v13 == v17 + 32 * v19 + 32)
  {
    v23 = *(v17 + 24);

    v24 = (v23 >> 1) - v19;
    v22 = __OFADD__(v8, v24);
    v8 += v24;
    if (!v22)
    {
      goto LABEL_21;
    }

LABEL_33:
    __break(1u);
    return result;
  }

LABEL_21:
  if (v8 <= v7)
  {
    v25 = v7;
  }

  else
  {
    v25 = v8;
  }

  return _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC24TokenGenerationInference0H6RecordV_Tt1g5(v6, v25);
}

uint64_t specialized _SliceBuffer.requestUniqueMutableBackingBuffer(minimumCapacity:)(uint64_t a1)
{
  result = swift_isUniquelyReferenced_nonNull();
  if (!result)
  {
    return 0;
  }

  v5 = v1[2];
  v4 = v1[3];
  v6 = (v4 >> 1) - v5;
  if (__OFSUB__(v4 >> 1, v5))
  {
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v7 = v1[1] + 32 * v5;
  if ((v4 & 1) == 0)
  {
    goto LABEL_8;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain();
  v8 = swift_dynamicCastClass();
  if (!v8)
  {
    swift_unknownObjectRelease();
    v8 = MEMORY[0x277D84F90];
  }

  v9 = *(v8 + 16);
  if (v7 + 32 * v6 != v8 + 32 * v9 + 32)
  {

LABEL_8:
    v10 = v6;
    goto LABEL_10;
  }

  v11 = *(v8 + 24);

  v12 = (v11 >> 1) - v9;
  v13 = __OFADD__(v6, v12);
  v10 = v6 + v12;
  if (v13)
  {
    __break(1u);
    return result;
  }

LABEL_10:
  if (v10 < a1)
  {
    return 0;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain();
  result = swift_dynamicCastClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    result = MEMORY[0x277D84F90];
  }

  v14 = v7 - result - 1;
  if (v7 - result - 32 >= 0)
  {
    v14 = v7 - result - 32;
  }

  v13 = __OFADD__(v6, v14 >> 5);
  v4 = v6 + (v14 >> 5);
  if (v13)
  {
    goto LABEL_20;
  }

  if (v4 < *(result + 16))
  {
LABEL_21:
    v15 = result;
    specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v4);
    return v15;
  }

  return result;
}

uint64_t specialized Data.InlineData.init(_:)(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x277D85DE8];
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
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v56 = a5;
  v9 = type metadata accessor for NDArray.Buffer();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_4ODIE7NDArrayC6BufferVtSgMd);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = (&v45 - v14);
  v16 = -1 << *(a1 + 32);
  v17 = ~v16;
  v18 = *(a1 + 64);
  v19 = -v16;
  v49 = a1;
  v50 = a1 + 64;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  else
  {
    v20 = -1;
  }

  v51 = v17;
  v52 = 0;
  v53 = v20 & v18;
  v54 = a2;
  v55 = a3;
  v47 = v10;
  v48 = (v10 + 32);

  v45 = a3;

  for (i = v15; ; v15 = i)
  {
    specialized LazyMapSequence.Iterator.next()(v15);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_4ODIE7NDArrayC6BufferVtMd);
    if ((*(*(v21 - 8) + 48))(v15, 1, v21) == 1)
    {
      goto LABEL_17;
    }

    v22 = *(v21 + 48);
    v23 = *v15;
    v24 = v15[1];
    v25 = *v48;
    v26 = v15 + v22;
    v27 = v12;
    v28 = v9;
    (*v48)(v12, v26, v9);
    v29 = *v56;
    v31 = specialized __RawDictionaryStorage.find<A>(_:)(v23, v24);
    v32 = v29[2];
    v33 = (v30 & 1) == 0;
    v34 = v32 + v33;
    if (__OFADD__(v32, v33))
    {
      break;
    }

    v35 = v30;
    if (v29[3] >= v34)
    {
      if (a4)
      {
        if (v30)
        {
          goto LABEL_16;
        }
      }

      else
      {
        specialized _NativeDictionary.copy()();
        if (v35)
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v34, a4 & 1);
      v36 = specialized __RawDictionaryStorage.find<A>(_:)(v23, v24);
      if ((v35 & 1) != (v37 & 1))
      {
        goto LABEL_20;
      }

      v31 = v36;
      if (v35)
      {
LABEL_16:
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
LABEL_17:
        outlined consume of [Int : (next: Int, logit: Float)].Iterator._Variant();
      }
    }

    v38 = *v56;
    *(*v56 + 8 * (v31 >> 6) + 64) |= 1 << v31;
    v39 = (v38[6] + 16 * v31);
    *v39 = v23;
    v39[1] = v24;
    v40 = v38[7] + *(v47 + 72) * v31;
    v12 = v27;
    v9 = v28;
    v25(v40, v27, v28);
    v41 = v38[2];
    v42 = __OFADD__(v41, 1);
    v43 = v41 + 1;
    if (v42)
    {
      goto LABEL_19;
    }

    v38[2] = v43;
    a4 = 1;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t specialized Data._Representation.init(capacity:)(uint64_t result)
{
  if (result)
  {
    if (result < 15)
    {
      return 0;
    }

    else
    {
      v1 = result;
      type metadata accessor for __DataStorage();
      swift_allocObject();
      __DataStorage.init(capacity:)();
      if (v1 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = 0;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t specialized ODIELanguageModelRunner.enumerateCacheSequences(range:block:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, unint64_t a6)
{
  v201 = a4;
  v204 = *MEMORY[0x277D85DE8];
  v169 = type metadata accessor for NDArray.Buffer.Allocation();
  v11 = *(v169 - 8);
  MEMORY[0x28223BE20](v169);
  v175 = (&v160 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s4ODIE7NDArrayC6BufferVSgMd);
  MEMORY[0x28223BE20](v13 - 8);
  v183 = &v160 - v14;
  v172 = a3;
  v15 = a3 + OBJC_IVAR____TtC24TokenGenerationInference23ODIELanguageModelRunner_model;
  v16 = *(v15 + *(type metadata accessor for ODIELanguageModel() + 36));
  v17 = v16 + 64;
  v18 = 1 << *(v16 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(v16 + 64);
  v171 = OBJC_IVAR____TtC24TokenGenerationInference23ODIELanguageModelRunner_buffers;
  v174 = (v18 + 63) >> 6;
  v166 = (v11 + 88);
  v165 = *MEMORY[0x277D36AF8];
  v161 = *MEMORY[0x277D36B00];
  v160 = *MEMORY[0x277D36AF0];
  v164 = (v11 + 96);
  v179 = a2;
  v178 = a1;
  v163 = a2 - a1;
  v21 = __OFSUB__(a2, a1);
  v196 = v21;
  v195 = a6 >> 62;
  v200 = a5;
  v22 = __OFSUB__(HIDWORD(a5), a5);
  v182 = v22;
  v181 = HIDWORD(a5) - a5;
  v193 = BYTE6(a6);
  v194 = a6;

  v24 = 0;
  v168 = v17;
  v170 = v23;
  while (1)
  {
    v184 = v20;
    if (v20)
    {
      goto LABEL_17;
    }

    do
    {
      v25 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
LABEL_183:
        __break(1u);
LABEL_184:
        __break(1u);
LABEL_185:
        __break(1u);
LABEL_186:
        __break(1u);
LABEL_187:
        __break(1u);
LABEL_188:
        __break(1u);
LABEL_189:
        __break(1u);
LABEL_190:
        __break(1u);
LABEL_191:
        __break(1u);
LABEL_192:
        __break(1u);
LABEL_193:
        __break(1u);
LABEL_194:
        __break(1u);
LABEL_195:
        __break(1u);
LABEL_196:
        __break(1u);
LABEL_197:
        __break(1u);
LABEL_198:
        __break(1u);
LABEL_199:
        __break(1u);
LABEL_200:
        __break(1u);
LABEL_201:
        __break(1u);
LABEL_202:
        __break(1u);
LABEL_203:
        __break(1u);
LABEL_204:
        __break(1u);
LABEL_205:
        __break(1u);
LABEL_206:
        __break(1u);
LABEL_207:
        __break(1u);
LABEL_208:
        __break(1u);
LABEL_209:
        __break(1u);
LABEL_210:
        __break(1u);
LABEL_211:
        __break(1u);
LABEL_212:
        __break(1u);
LABEL_213:
        __break(1u);
LABEL_214:
        __break(1u);
LABEL_215:
        __break(1u);
LABEL_216:
        __break(1u);
LABEL_217:
        __break(1u);
LABEL_218:
        __break(1u);
LABEL_219:
        __break(1u);
LABEL_220:
        __break(1u);
LABEL_221:
        __break(1u);
LABEL_222:
        __break(1u);
LABEL_223:
        __break(1u);
LABEL_224:
        __break(1u);
LABEL_225:
        __break(1u);
LABEL_226:
        __break(1u);
LABEL_227:
        __break(1u);
LABEL_228:
        swift_once();
LABEL_168:
        v139 = type metadata accessor for Logger();
        __swift_project_value_buffer(v139, static Log.device);
        v140 = Logger.logObject.getter();
        v141 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v140, v141))
        {
          v142 = swift_slowAlloc();
          *v142 = 0;
          _os_log_impl(&dword_220940000, v140, v141, "Ran out of bytes in cache entry", v142, 2u);
          MEMORY[0x223D90A10](v142, -1, -1);
        }

        lazy protocol witness table accessor for type DecoderModelError and conformance DecoderModelError();
        v143 = swift_allocError();
        *v144 = xmmword_220AEF080;
        *(v144 + 16) = 4;
        v167 = v143;
        swift_willThrow();

LABEL_181:

        return (*(v176 + 8))(v183, v177);
      }

      if (v25 >= v174)
      {
      }

      ++v24;
    }

    while (!*(v17 + 8 * v25));
    v184 = *(v17 + 8 * v25);
    v24 = v25;
LABEL_17:
    v173 = v24;
    v26 = __clz(__rbit64(v184)) | (v24 << 6);
    v27 = (*(v23 + 48) + 16 * v26);
    v29 = *v27;
    v28 = v27[1];
    v30 = (*(v23 + 56) + 32 * v26);
    v31 = v30[1];
    v198 = *v30;
    v199 = v31;
    v32 = v30[2];
    v197 = v30[3];
    v33 = v172;
    v34 = v171;
    swift_beginAccess();
    v35 = *(v33 + v34);
    if (*(v35 + 16))
    {

      v36 = specialized __RawDictionaryStorage.find<A>(_:)(v29, v28);
      if (v37)
      {
        v38 = v36;
        v39 = *(v35 + 56);
        v40 = type metadata accessor for NDArray.Buffer();
        v41 = *(v40 - 8);
        v42 = v41;
        v43 = v39 + *(v41 + 72) * v38;
        v44 = v183;
        (*(v41 + 16))(v183, v43, v40);
        (*(v42 + 56))(v44, 0, 1, v40);
      }

      else
      {
        v40 = type metadata accessor for NDArray.Buffer();
        v44 = v183;
        (*(*(v40 - 8) + 56))(v183, 1, 1, v40);
      }
    }

    else
    {
      v40 = type metadata accessor for NDArray.Buffer();
      v44 = v183;
      (*(*(v40 - 8) + 56))(v183, 1, 1, v40);
    }

    swift_endAccess();
    type metadata accessor for NDArray.Buffer();
    v176 = *(v40 - 8);
    v45 = *(v176 + 48);
    v177 = v40;
    if (v45(v44, 1, v40) == 1)
    {
      __break(1u);
    }

    if (v199 >= 1 && v178 != v179)
    {
      break;
    }

LABEL_11:
    v20 = (v184 - 1) & v184;
    (*(v176 + 8))(v183, v177);
    v23 = v170;
    v17 = v168;
    v24 = v173;
  }

  NDArray.Buffer.allocation.getter();
  v47 = v175;
  v48 = v169;
  v49 = (*v166)(v175, v169);
  if (v49 != v165)
  {
    if (v49 == v161)
    {
      v80 = v175;
      (*v164)(v175, v169);
      v81 = *v80;
      IOSurfaceLock(v81, 0, 0);
      BaseAddress = IOSurfaceGetBaseAddress(v81);
      v185 = v81;
      result = IOSurfaceGetAllocSize(v81);
      v187 = result;
      if (!BaseAddress)
      {
        goto LABEL_234;
      }

      v83 = 0;
      v191 = v178 * v32;
      v192 = (v178 * v32) >> 64 != (v178 * v32) >> 63;
      v186 = v163 * v198;
      v190 = (v163 * v198) >> 64 != (v163 * v198) >> 63;
      v188 = v179 * v198;
      v189 = (v179 * v198) >> 64 != (v179 * v198) >> 63;
      while (1)
      {
        v85 = v83 * v197;
        if ((v83 * v197) >> 64 != (v83 * v197) >> 63)
        {
          goto LABEL_193;
        }

        if (v192)
        {
          goto LABEL_195;
        }

        v54 = __OFADD__(v85, v191);
        v86 = v85 + v191;
        if (v54)
        {
          goto LABEL_197;
        }

        v87 = v86 * v198;
        if ((v86 * v198) >> 64 != (v86 * v198) >> 63)
        {
          goto LABEL_198;
        }

        if (v196)
        {
          goto LABEL_200;
        }

        if (v190)
        {
          goto LABEL_203;
        }

        if (v189)
        {
          goto LABEL_204;
        }

        if (v187 < v188)
        {
          goto LABEL_229;
        }

        v88 = *v201 + v186;
        if (__OFADD__(*v201, v186))
        {
          goto LABEL_207;
        }

        if (v195 <= 1)
        {
          break;
        }

        if (v195 == 2)
        {
          v91 = *(v200 + 16);
          v90 = *(v200 + 24);
          v54 = __OFSUB__(v90, v91);
          v89 = v90 - v91;
          if (v54)
          {
            goto LABEL_216;
          }

LABEL_93:
          if (v89 < v88)
          {
            goto LABEL_171;
          }

          goto LABEL_96;
        }

        if (v88 >= 1)
        {
LABEL_171:
          if (one-time initialization token for device != -1)
          {
            swift_once();
          }

          v145 = type metadata accessor for Logger();
          __swift_project_value_buffer(v145, static Log.device);
          v146 = Logger.logObject.getter();
          v147 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v146, v147))
          {
            v148 = swift_slowAlloc();
            *v148 = 0;
            _os_log_impl(&dword_220940000, v146, v147, "Ran out of bytes in cache entry", v148, 2u);
            MEMORY[0x223D90A10](v148, -1, -1);
          }

          lazy protocol witness table accessor for type DecoderModelError and conformance DecoderModelError();
          v149 = swift_allocError();
          *v150 = xmmword_220AEF080;
          *(v150 + 16) = 4;
          v167 = v149;
          swift_willThrow();
          v151 = v185;
          IOSurfaceUnlock(v185, 0, 0);

          goto LABEL_181;
        }

LABEL_96:
        if (v88 < *v201)
        {
          goto LABEL_208;
        }

        v92 = Data._Representation.subscript.getter();
        v94 = v92;
        v95 = v93;
        v96 = v93 >> 62;
        if ((v93 >> 62) > 1)
        {
          if (v96 != 2)
          {
            goto LABEL_77;
          }

          v105 = *(v92 + 16);
          v162 = *(v92 + 24);
          v106 = __DataStorage._bytes.getter();
          if (v106)
          {
            v107 = __DataStorage._offset.getter();
            if (__OFSUB__(v105, v107))
            {
              goto LABEL_225;
            }

            v106 += v105 - v107;
          }

          v54 = __OFSUB__(v162, v105);
          v108 = &v162[-v105];
          if (v54)
          {
            goto LABEL_223;
          }

          v109 = MEMORY[0x223D8BBA0]();
          if (!v106)
          {
            goto LABEL_77;
          }

          if (v109 >= v108)
          {
            v103 = v108;
          }

          else
          {
            v103 = v109;
          }

          v104 = BaseAddress + v87;
          v102 = v106;
LABEL_117:
          memmove(v104, v102, v103);
          goto LABEL_77;
        }

        if (v96)
        {
          v162 = &v160;
          v97 = (v92 >> 32) - v92;
          if (v92 >> 32 < v92)
          {
            goto LABEL_221;
          }

          v98 = __DataStorage._bytes.getter();
          if (!v98)
          {
            MEMORY[0x223D8BBA0]();
            goto LABEL_77;
          }

          v99 = __DataStorage._offset.getter();
          v100 = v94 - v99;
          if (__OFSUB__(v94, v99))
          {
            goto LABEL_227;
          }

          v101 = MEMORY[0x223D8BBA0]();
          v102 = (v100 + v98);
          if (!(v100 + v98))
          {
            goto LABEL_77;
          }

          if (v101 >= v97)
          {
            v103 = (v94 >> 32) - v94;
          }

          else
          {
            v103 = v101;
          }

          v104 = BaseAddress + v87;
          goto LABEL_117;
        }

        *&__src = v92;
        WORD4(__src) = v93;
        BYTE10(__src) = BYTE2(v93);
        BYTE11(__src) = BYTE3(v93);
        BYTE12(__src) = BYTE4(v93);
        BYTE13(__src) = BYTE5(v93);
        memcpy(BaseAddress + v87, &__src, BYTE6(v93));
LABEL_77:
        ++v83;
        outlined consume of Data._Representation(v94, v95);
        *v201 = v88;
        v84 = v185;
        if (v199 == v83)
        {
          IOSurfaceUnlock(v185, 0, 0);

          goto LABEL_11;
        }
      }

      v89 = v193;
      if (v195)
      {
        v89 = v181;
        if (v182)
        {
          goto LABEL_218;
        }
      }

      goto LABEL_93;
    }

    if (v49 != v160)
    {
      goto LABEL_232;
    }

    v110 = v175;
    (*v164)();
    v111 = *v110;
    v185 = [swift_unknownObjectRetain() contents];
    v162 = v111;
    v112 = v111;
    v187 = [v162 length];
    v113 = 0;
    v191 = v178 * v32;
    v192 = (v178 * v32) >> 64 != (v178 * v32) >> 63;
    v186 = v163 * v198;
    v190 = (v163 * v198) >> 64 != (v163 * v198) >> 63;
    v188 = v179 * v198;
    v189 = (v179 * v198) >> 64 != (v179 * v198) >> 63;
    while (1)
    {
      v114 = v113 * v197;
      if ((v113 * v197) >> 64 != (v113 * v197) >> 63)
      {
        goto LABEL_192;
      }

      if (v192)
      {
        goto LABEL_194;
      }

      v54 = __OFADD__(v114, v191);
      v115 = v114 + v191;
      if (v54)
      {
        goto LABEL_196;
      }

      v116 = v115 * v198;
      if ((v115 * v198) >> 64 != (v115 * v198) >> 63)
      {
        goto LABEL_199;
      }

      if (v196)
      {
        goto LABEL_201;
      }

      if (v190)
      {
        goto LABEL_202;
      }

      if (v189)
      {
        goto LABEL_205;
      }

      if (v187 < v188)
      {
LABEL_229:
        *&__src = 0;
        *(&__src + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(33);

        strcpy(&__src, "source offset ");
        HIBYTE(__src) = -18;
        v202 = v188;
        v158 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x223D8E780](v158);

        MEMORY[0x223D8E780](0x20666F2074756F20, 0xEF2073646E756F62);
        v202 = v187;
        v159 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x223D8E780](v159);

        outlined consume of Data._Representation(v200, v194);
        result = _assertionFailure(_:_:file:line:flags:)();
        goto LABEL_233;
      }

      v117 = *v201 + v186;
      if (__OFADD__(*v201, v186))
      {
        goto LABEL_206;
      }

      if (v195 <= 1)
      {
        break;
      }

      if (v195 == 2)
      {
        v120 = *(v200 + 16);
        v119 = *(v200 + 24);
        v54 = __OFSUB__(v119, v120);
        v118 = v119 - v120;
        if (v54)
        {
          goto LABEL_217;
        }

LABEL_138:
        if (v118 < v117)
        {
          goto LABEL_176;
        }

        goto LABEL_141;
      }

      if (v117 >= 1)
      {
LABEL_176:
        if (one-time initialization token for device != -1)
        {
          swift_once();
        }

        v152 = type metadata accessor for Logger();
        __swift_project_value_buffer(v152, static Log.device);
        v153 = Logger.logObject.getter();
        v154 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v153, v154))
        {
          v155 = swift_slowAlloc();
          *v155 = 0;
          _os_log_impl(&dword_220940000, v153, v154, "Ran out of bytes in cache entry", v155, 2u);
          MEMORY[0x223D90A10](v155, -1, -1);
        }

        lazy protocol witness table accessor for type DecoderModelError and conformance DecoderModelError();
        v156 = swift_allocError();
        *v157 = xmmword_220AEF080;
        *(v157 + 16) = 4;
        v167 = v156;
        swift_willThrow();
        swift_unknownObjectRelease();
        goto LABEL_181;
      }

LABEL_141:
      if (v117 < *v201)
      {
        goto LABEL_209;
      }

      v121 = Data._Representation.subscript.getter();
      v123 = v121;
      v124 = v122;
      v125 = v122 >> 62;
      if ((v122 >> 62) > 1)
      {
        if (v125 != 2)
        {
          goto LABEL_122;
        }

        v134 = *(v121 + 16);
        BaseAddress = *(v121 + 24);
        v135 = __DataStorage._bytes.getter();
        if (v135)
        {
          v136 = __DataStorage._offset.getter();
          if (__OFSUB__(v134, v136))
          {
            goto LABEL_224;
          }

          v135 += v134 - v136;
        }

        v54 = __OFSUB__(BaseAddress, v134);
        v137 = BaseAddress - v134;
        if (v54)
        {
          goto LABEL_222;
        }

        v138 = MEMORY[0x223D8BBA0]();
        if (!v135)
        {
          goto LABEL_122;
        }

        if (v138 >= v137)
        {
          v132 = v137;
        }

        else
        {
          v132 = v138;
        }

        v133 = v185 + v116;
        v131 = v135;
LABEL_162:
        memmove(v133, v131, v132);
        goto LABEL_122;
      }

      if (v125)
      {
        BaseAddress = &v160;
        v126 = (v121 >> 32) - v121;
        if (v121 >> 32 < v121)
        {
          goto LABEL_220;
        }

        v127 = __DataStorage._bytes.getter();
        if (!v127)
        {
          MEMORY[0x223D8BBA0]();
          goto LABEL_122;
        }

        v128 = __DataStorage._offset.getter();
        v129 = v123 - v128;
        if (__OFSUB__(v123, v128))
        {
          goto LABEL_226;
        }

        v130 = MEMORY[0x223D8BBA0]();
        v131 = (v129 + v127);
        if (!(v129 + v127))
        {
          goto LABEL_122;
        }

        if (v130 >= v126)
        {
          v132 = (v123 >> 32) - v123;
        }

        else
        {
          v132 = v130;
        }

        v133 = v185 + v116;
        goto LABEL_162;
      }

      *&__src = v121;
      WORD4(__src) = v122;
      BYTE10(__src) = BYTE2(v122);
      BYTE11(__src) = BYTE3(v122);
      BYTE12(__src) = BYTE4(v122);
      BYTE13(__src) = BYTE5(v122);
      memcpy(v185 + v116, &__src, BYTE6(v122));
LABEL_122:
      ++v113;
      outlined consume of Data._Representation(v123, v124);
      *v201 = v117;
      if (v199 == v113)
      {
        swift_unknownObjectRelease();
        goto LABEL_11;
      }
    }

    v118 = v193;
    if (v195)
    {
      v118 = v181;
      if (v182)
      {
        goto LABEL_219;
      }
    }

    goto LABEL_138;
  }

  (*v164)(v47, v48);
  v162 = *v47;
  v50 = NDArray.Bytes.buffer.getter();
  BaseAddress = v50;
  if (v50)
  {
    v52 = 0;
    v187 = (v51 - v50);
    v191 = v178 * v32;
    v192 = (v178 * v32) >> 64 != (v178 * v32) >> 63;
    v186 = v163 * v198;
    v190 = (v163 * v198) >> 64 != (v163 * v198) >> 63;
    v188 = v179 * v198;
    v189 = (v179 * v198) >> 64 != (v179 * v198) >> 63;
    while (1)
    {
      v53 = v52 * v197;
      if ((v52 * v197) >> 64 != (v52 * v197) >> 63)
      {
        goto LABEL_183;
      }

      if (v192)
      {
        goto LABEL_184;
      }

      v54 = __OFADD__(v53, v191);
      v55 = v53 + v191;
      if (v54)
      {
        goto LABEL_185;
      }

      v56 = v55 * v198;
      if ((v55 * v198) >> 64 != (v55 * v198) >> 63)
      {
        goto LABEL_186;
      }

      if (v196)
      {
        goto LABEL_187;
      }

      if (v190)
      {
        goto LABEL_188;
      }

      if (v189)
      {
        goto LABEL_189;
      }

      if (v187 < v188)
      {
        goto LABEL_229;
      }

      v57 = *v201 + v186;
      if (__OFADD__(*v201, v186))
      {
        goto LABEL_190;
      }

      if (v195 <= 1)
      {
        break;
      }

      if (v195 == 2)
      {
        v60 = *(v200 + 16);
        v59 = *(v200 + 24);
        v54 = __OFSUB__(v59, v60);
        v58 = v59 - v60;
        if (v54)
        {
          goto LABEL_210;
        }

        goto LABEL_47;
      }

      if (v57 >= 1)
      {
LABEL_167:
        if (one-time initialization token for device != -1)
        {
          goto LABEL_228;
        }

        goto LABEL_168;
      }

LABEL_50:
      if (v57 < *v201)
      {
        goto LABEL_191;
      }

      v61 = Data._Representation.subscript.getter();
      v63 = v61;
      v64 = v62;
      v65 = v62 >> 62;
      if ((v62 >> 62) > 1)
      {
        if (v65 != 2)
        {
          goto LABEL_31;
        }

        v185 = &v160;
        v74 = *(v61 + 16);
        v75 = *(v61 + 24);
        v76 = __DataStorage._bytes.getter();
        if (v76)
        {
          v77 = __DataStorage._offset.getter();
          if (__OFSUB__(v74, v77))
          {
            goto LABEL_214;
          }

          v76 += v74 - v77;
        }

        v54 = __OFSUB__(v75, v74);
        v78 = v75 - v74;
        if (v54)
        {
          goto LABEL_213;
        }

        v79 = MEMORY[0x223D8BBA0]();
        if (!v76)
        {
          goto LABEL_31;
        }

        if (v79 >= v78)
        {
          v72 = v78;
        }

        else
        {
          v72 = v79;
        }

        v73 = BaseAddress + v56;
        v71 = v76;
LABEL_71:
        memmove(v73, v71, v72);
        goto LABEL_31;
      }

      if (v65)
      {
        v185 = &v160;
        v66 = (v61 >> 32) - v61;
        if (v61 >> 32 < v61)
        {
          goto LABEL_212;
        }

        v67 = __DataStorage._bytes.getter();
        if (!v67)
        {
          MEMORY[0x223D8BBA0]();
          goto LABEL_31;
        }

        v68 = __DataStorage._offset.getter();
        v69 = v63 - v68;
        if (__OFSUB__(v63, v68))
        {
          goto LABEL_215;
        }

        v70 = MEMORY[0x223D8BBA0]();
        v71 = (v69 + v67);
        if (!(v69 + v67))
        {
          goto LABEL_31;
        }

        if (v70 >= v66)
        {
          v72 = (v63 >> 32) - v63;
        }

        else
        {
          v72 = v70;
        }

        v73 = BaseAddress + v56;
        goto LABEL_71;
      }

      *&__src = v61;
      WORD4(__src) = v62;
      BYTE10(__src) = BYTE2(v62);
      BYTE11(__src) = BYTE3(v62);
      BYTE12(__src) = BYTE4(v62);
      BYTE13(__src) = BYTE5(v62);
      memcpy(BaseAddress + v56, &__src, BYTE6(v62));
LABEL_31:
      ++v52;
      outlined consume of Data._Representation(v63, v64);
      *v201 = v57;
      if (v199 == v52)
      {

        goto LABEL_11;
      }
    }

    v58 = v193;
    if (v195)
    {
      v58 = v181;
      if (v182)
      {
        goto LABEL_211;
      }
    }

LABEL_47:
    if (v58 < v57)
    {
      goto LABEL_167;
    }

    goto LABEL_50;
  }

  __break(1u);
LABEL_232:
  outlined consume of Data._Representation(v200, v194);
  result = _assertionFailure(_:_:file:line:flags:)();
LABEL_233:
  __break(1u);
LABEL_234:
  __break(1u);
  return result;
}