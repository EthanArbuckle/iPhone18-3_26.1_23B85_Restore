void (*specialized Dictionary.subscript.modify(uint64_t **a1, uint64_t a2))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = specialized Dictionary._Variant.subscript.modify(v4, a2);
  return Dictionary.subscript.modifyspecialized ;
}

void Dictionary.subscript.modifyspecialized (void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed RIOPxrUsdObjectRef) -> (@unowned Unmanaged<RIOBuilderRef>?)(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v6 = v4();

  return v6;
}

id ImportSession.core.getter()
{
  v1 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

uint64_t ImportSession.sceneUpdatePassCompletion.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC9RealityIO13ImportSession_sceneUpdatePassCompletion);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];
  sub_26187DB8C(v3);
  return v3;
}

uint64_t key path getter for ImportSession.sceneUpdatePassCompletion : ImportSession@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC9RealityIO13ImportSession_sceneUpdatePassCompletion);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = partial apply for thunk for @escaping @callee_guaranteed () -> ();
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_26187DB8C(v4);
}

uint64_t key path setter for ImportSession.sceneUpdatePassCompletion : ImportSession(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed () -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC9RealityIO13ImportSession_sceneUpdatePassCompletion);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_26187DB8C(v3);
  sub_26187DB8C(v6);
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v8);
  ImportSession.sceneUpdatePassCompletion.didset();
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v6);
}

uint64_t ImportSession.sceneUpdatePassCompletion.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC9RealityIO13ImportSession_sceneUpdatePassCompletion);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  sub_26187DB8C(a1);
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v6);
  ImportSession.sceneUpdatePassCompletion.didset();
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(a1);
}

uint64_t ImportSession.sceneUpdatePassCompletion.didset()
{
  v1 = (v0 + OBJC_IVAR____TtC9RealityIO13ImportSession_sceneUpdatePassCompletion);
  swift_beginAccess();
  v2 = *v1;
  if (*v1)
  {
    v3 = v1[1];
    v4 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
    swift_beginAccess();
    v5 = *(v0 + v4);
    v6 = swift_allocObject();
    *(v6 + 16) = v2;
    *(v6 + 24) = v3;
    v12[4] = partial apply for thunk for @escaping @callee_guaranteed () -> ();
    v12[5] = v6;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 1107296256;
    v12[2] = thunk for @escaping @callee_guaranteed () -> ();
    v12[3] = &block_descriptor_273;
    v7 = _Block_copy(v12);
    sub_26187DB8C(v2);
    sub_26187DB8C(v2);
    v8 = v5;

    RIOImportSessionSetSceneUpdatePassCompletion();
    _Block_release(v7);

    return outlined consume of (@escaping @callee_guaranteed () -> ())?(v2);
  }

  else
  {
    v10 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
    swift_beginAccess();
    v11 = *(v0 + v10);
    return RIOImportSessionSetSceneUpdatePassCompletion();
  }
}

uint64_t (*ImportSession.sceneUpdatePassCompletion.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return ImportSession.sceneUpdatePassCompletion.modify;
}

uint64_t ImportSession.sceneUpdatePassCompletion.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    return ImportSession.sceneUpdatePassCompletion.didset();
  }

  return result;
}

char *ImportSession.__allocating_init(pipelineVersion:)()
{
  v0 = type metadata accessor for __EngineRef();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for __ServiceLocator();
  static __ServiceLocator.shared.getter();
  dispatch thunk of __ServiceLocator.engine.getter();

  dispatch thunk of __Engine.__coreEngine.getter();

  __AssetRef.__as<A>(_:)();
  (*(v1 + 8))(v4, v0);
  v5 = RIOImportSessionCreateWithEngine();
  v6 = type metadata accessor for Entity();
  v7 = type metadata accessor for ImportSession(0);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  return specialized ImportSession.init<A>(core:entityType:)(v5, v6);
}

char *ImportSession.__allocating_init(serviceLocator:pipelineVersion:)(uint64_t a1)
{
  getEngine(_:)(a1);
  v1 = RIOImportSessionCreateWithEngine();
  v2 = type metadata accessor for Entity();
  v3 = type metadata accessor for ImportSession(0);
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v6 = specialized ImportSession.init<A>(core:entityType:)(v1, v2);

  return v6;
}

uint64_t getEngine(_:)(uint64_t a1)
{
  v2 = type metadata accessor for __EngineRef();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    type metadata accessor for __ServiceLocator();
    static __ServiceLocator.shared.getter();
  }

  dispatch thunk of __ServiceLocator.engine.getter();

  dispatch thunk of __Engine.__coreEngine.getter();

  __AssetRef.__as<A>(_:)();
  (*(v3 + 8))(v6, v2);
  return v8[1];
}

Swift::Int ImportSession.LoadError.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x26670FA20](v1);
  return Hasher._finalize()();
}

unsigned int *ImportSession.__allocating_init<A>(from:pipelineVersion:threading:entityType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v13, a1, v8, v11);
  v14 = ImportSession.__allocating_init<A>(from:serviceLocator:pipelineVersion:threading:entityType:)(v13, 0, a2, a3, a4);
  (*(v9 + 8))(a1, v8);
  return v14;
}

unsigned int *ImportSession.__allocating_init<A>(from:serviceLocator:pipelineVersion:threading:entityType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v23 = *MEMORY[0x277D85DE8];
  getEngine(_:)(a2);
  if (specialized static USDImportService.canLoad(url:)())
  {
    v22 = a5;
    URL._bridgeToObjectiveC()(v9);
    v11 = v10;
    v5 = RIOImportSessionCreateWithURLWithErrorReporting();

    if (v5)
    {
      v12 = v6[12];
      v13 = *(v6 + 26);
      swift_allocObject();
      v14 = v5;
      v5 = ImportSession.init<A>(core:entityType:)(v5, v22);

      v15 = type metadata accessor for URL();
      (*(*(v15 - 8) + 8))(a1, v15);
    }

    else
    {
      lazy protocol witness table accessor for type ImportSession.LoadError and conformance ImportSession.LoadError();
      swift_allocError();
      *v18 = 1;
      swift_willThrow();

      v19 = type metadata accessor for URL();
      (*(*(v19 - 8) + 8))(a1, v19);
    }
  }

  else
  {
    lazy protocol witness table accessor for type ImportSession.LoadError and conformance ImportSession.LoadError();
    swift_allocError();
    *v16 = 0;
    swift_willThrow();

    v17 = type metadata accessor for URL();
    (*(*(v17 - 8) + 8))(a1, v17);
  }

  v20 = *MEMORY[0x277D85DE8];
  return v5;
}

char *ImportSession.__allocating_init<A>(contentsOf:serviceLocator:pipelineVersion:threading:entityType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  getEngine(_:)(a2);
  if (specialized static USDImportService.canLoad(url:)())
  {
    URL._bridgeToObjectiveC()(v9);
    v11 = v10;
    v12 = RIOImportSessionCreateWithURL();

    v13 = *(v6 + 48);
    v14 = *(v6 + 52);
    swift_allocObject();
    v15 = ImportSession.init<A>(core:entityType:)(v12, a5);

    v16 = type metadata accessor for URL();
    v17 = *(*(v16 - 8) + 8);

    v17(a1, v16);
    if (v15)
    {
    }
  }

  else
  {
    v18 = type metadata accessor for URL();
    (*(*(v18 - 8) + 8))(a1, v18);

    return 0;
  }

  return v15;
}

char *ImportSession.__allocating_init<A>(contentsOf:pipelineVersion:threading:entityType:isolationMode:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v15, a1, v10, v13);
  v16 = ImportSession.__allocating_init<A>(contentsOf:serviceLocator:pipelineVersion:threading:entityType:isolationMode:)(v15, 0, a2, a3, a4, a5);
  (*(v11 + 8))(a1, v10);
  return v16;
}

char *ImportSession.__allocating_init<A>(contentsOf:serviceLocator:pipelineVersion:threading:entityType:isolationMode:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v7 = v6;
  getEngine(_:)(a2);
  if (specialized static USDImportService.canLoad(url:)())
  {
    URL._bridgeToObjectiveC()(v11);
    v13 = v12;
    if (a6)
    {
      SingleUseImporterWithURL = RIOImportSessionCreateSingleUseImporterWithURL();
    }

    else
    {
      SingleUseImporterWithURL = RIOImportSessionCreateWithURL();
    }

    v17 = SingleUseImporterWithURL;

    v18 = *(v7 + 48);
    v19 = *(v7 + 52);
    swift_allocObject();
    v20 = ImportSession.init<A>(core:entityType:)(v17, a5);

    v21 = type metadata accessor for URL();
    (*(*(v21 - 8) + 8))(a1, v21);
    return v20;
  }

  else
  {
    v15 = type metadata accessor for URL();
    (*(*(v15 - 8) + 8))(a1, v15);

    return 0;
  }
}

char *ImportSession.__allocating_init<A>(named:in:serviceLocator:pipelineVersion:threading:entityType:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, uint64_t a8)
{
  v31 = a8;
  v30 = a7;
  v29 = a6;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v28[-v15];
  v17 = type metadata accessor for URL();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v28[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v22);
  v24 = &v28[-v23];
  type metadata accessor for USDImportService();
  static USDImportService.urlForUSD(named:in:)(a1, a2, a3, v16);

  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {

    outlined destroy of Any?(v16, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    return 0;
  }

  else
  {
    (*(v18 + 32))(v24, v16, v17);
    (*(v18 + 16))(v21, v24, v17);
    v25 = ImportSession.__allocating_init<A>(contentsOf:serviceLocator:pipelineVersion:threading:entityType:)(v21, a4, a5, v29, v30);

    v26 = *(v18 + 8);

    v26(v24, v17);
    if (v25)
    {
    }
  }

  return v25;
}

uint64_t ImportSession.__allocating_init<A>(withName:in:serviceLocator:pipelineVersion:threading:entityType:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unsigned int a5, unsigned int a6, uint64_t a7, uint64_t a8)
{
  v32 = a8;
  v31 = a7;
  v29 = a5;
  v30 = a6;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v29 - v14;
  v16 = type metadata accessor for URL();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v29 - v22;
  type metadata accessor for USDImportService();
  static USDImportService.urlForUSD(named:in:)(a1, a2, a3, v15);

  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    outlined destroy of Any?(v15, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    lazy protocol witness table accessor for type ImportSession.LoadError and conformance ImportSession.LoadError();
    swift_allocError();
    *v24 = 2;
    swift_willThrow();
  }

  else
  {
    (*(v17 + 32))(v23, v15, v16);
    (*(v17 + 16))(v20, v23, v16);
    v25 = v33;
    v26 = ImportSession.__allocating_init<A>(from:serviceLocator:pipelineVersion:threading:entityType:)(v20, a4, v29, v30, v31);
    v27 = (v17 + 8);
    if (v25)
    {
      (*v27)(v23, v16);
    }

    else
    {
      a4 = v26;

      (*v27)(v23, v16);
    }
  }

  return a4;
}

char *ImportSession.__allocating_init<A>(stage:serviceLocator:pipelineVersion:threading:entityType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  getEngine(_:)(a2);
  v8 = *(a1 + 16);
  v9 = RIOImportSessionCreateWithStage();
  v10 = *(v5 + 48);
  v11 = *(v5 + 52);
  swift_allocObject();
  v12 = ImportSession.init<A>(core:entityType:)(v9, a5);

  return v12;
}

char *ImportSession.__allocating_init<A>(stage:serviceLocator:pipelineVersion:threading:entityType:isolationMode:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v7 = v6;
  getEngine(_:)(a2);
  v11 = *(a1 + 16);
  if (a6)
  {
    SingleUseImporterWithStage = RIOImportSessionCreateSingleUseImporterWithStage();
  }

  else
  {
    SingleUseImporterWithStage = RIOImportSessionCreateWithStage();
  }

  v13 = SingleUseImporterWithStage;
  v14 = *(v7 + 48);
  v15 = *(v7 + 52);
  swift_allocObject();
  v16 = ImportSession.init<A>(core:entityType:)(v13, a5);

  if (v16)
  {
  }

  return v16;
}

char *ImportSession.init<A>(core:entityType:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v53[1] = a2;
  v5 = type metadata accessor for __EntityRef();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC9RealityIO13ImportSession_deploymentTarget;
  v11 = type metadata accessor for __REAssetBundle.ExportOptions.DeploymentTarget();
  (*(*(v11 - 8) + 56))(&v3[v10], 1, 1, v11);
  v12 = OBJC_IVAR____TtC9RealityIO13ImportSession_sceneTable;
  type metadata accessor for SafeSceneUUIDTable();
  v13 = swift_allocObject();
  *(v13 + 16) = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10Foundation4UUIDVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *&v3[v12] = v13;
  *(v13 + 24) = v14;
  v15 = &v3[OBJC_IVAR____TtC9RealityIO13ImportSession_sceneUpdatePassCompletion];
  *v15 = 0;
  *(v15 + 1) = 0;
  *&v3[OBJC_IVAR____TtC9RealityIO13ImportSession_swiftBuildersByPrimPath] = MEMORY[0x277D84F98];
  if (a1)
  {
    v16 = &unk_27FEC8000;
    *&v3[OBJC_IVAR____TtC9RealityIO13ImportSession_core] = a1;
    v17 = a1;
    EngineRef = RIOImportSessionGetEngineRef();
    if (EngineRef && (*(v3 + 4) = EngineRef, (v19 = RIOImportSessionGetStage()) != 0))
    {
      v20 = v19;
      v53[0] = v6;
      type metadata accessor for Stage();
      v21 = swift_allocObject();
      *(v21 + 16) = v20;
      *(v3 + 2) = v21;
      v22 = v20;
      RootEntity = RIOImportSessionGetRootEntity();
      if (RootEntity)
      {
        v24 = RootEntity;
        v25 = v22;
        v26 = type metadata accessor for AnchorEntity();
        v27 = swift_dynamicCastMetatype();
        REAnchorComponentGetComponentType();
        REEntityRemoveComponentByClass();
        REAnchoringComponentGetComponentType();
        if (REEntityGetComponentByClass())
        {
          if (!v27)
          {
            REAnchoringComponentGetComponentType();
            REEntityRemoveComponentByClass();
          }
        }

        else if (v27)
        {
          REAnchoringComponentGetComponentType();
          REEntityAddComponentByClass();
        }

        v36 = type metadata accessor for ModelEntity();
        if (swift_dynamicCastMetatype())
        {
          v57 = MEMORY[0x277D841D8];
          aBlock = v24;
          static __AssetRef.__fromCore(_:)();
          __swift_destroy_boxed_opaque_existential_0(&aBlock);
          v37 = *(v36 + 48);
          v38 = *(v36 + 52);
          swift_allocObject();
          v39 = MEMORY[0x26670D9A0](v9);
        }

        else
        {
          v40 = type metadata accessor for BodyTrackedEntity();
          if (swift_dynamicCastMetatype())
          {
            v57 = MEMORY[0x277D841D8];
            aBlock = v24;
            static __AssetRef.__fromCore(_:)();
            __swift_destroy_boxed_opaque_existential_0(&aBlock);
            v41 = *(v40 + 48);
            v42 = *(v40 + 52);
            swift_allocObject();
            v39 = MEMORY[0x26670DC40](v9);
          }

          else
          {
            if (!swift_dynamicCastMetatype())
            {
              type metadata accessor for Entity();
              v57 = MEMORY[0x277D841D8];
              aBlock = v24;
              static __AssetRef.__fromCore(_:)();
              __swift_destroy_boxed_opaque_existential_0(&aBlock);
              v45 = static Entity.__fromCore(_:)();
              (*(v53[0] + 8))(v9, v5);
              *(v3 + 3) = v45;
              goto LABEL_23;
            }

            v57 = MEMORY[0x277D841D8];
            aBlock = v24;
            static __AssetRef.__fromCore(_:)();
            __swift_destroy_boxed_opaque_existential_0(&aBlock);
            v43 = *(v26 + 48);
            v44 = *(v26 + 52);
            swift_allocObject();
            v39 = MEMORY[0x26670DA30](v9);
          }
        }

        v45 = v39;
        *(v3 + 3) = v39;
LABEL_23:
        type metadata accessor for BehaviorsCommitter();
        v46 = swift_allocObject();
        v46[3] = MEMORY[0x277D84F98];

        v46[4] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9RealityIO27SceneDescriptionFoundationsO4PathV_s13OpaquePointerVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
        v46[2] = v45;
        *&v3[OBJC_IVAR____TtC9RealityIO13ImportSession_behaviorsCommitter] = v46;
        v47 = swift_allocObject();
        swift_weakInit();
        v58 = partial apply for closure #1 in ImportSession.init<A>(core:entityType:);
        v59 = v47;
        aBlock = MEMORY[0x277D85DD0];
        v55 = 1107296256;
        v56 = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer, @unowned UnsafePointer<Int8>, @unowned OpaquePointer) -> ();
        v57 = &block_descriptor_13_0;
        v48 = _Block_copy(&aBlock);

        v49 = *(v3 + 3);
        v50 = swift_allocObject();
        swift_weakInit();
        swift_unownedRetainStrong();
        swift_unownedRetain();

        v51 = swift_allocObject();
        *(v51 + 16) = v49;
        *(v51 + 24) = v50;
        v58 = partial apply for closure #2 in ImportSession.init<A>(core:entityType:);
        v59 = v51;
        aBlock = MEMORY[0x277D85DD0];
        v55 = 1107296256;
        v56 = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer, @unowned UnsafeMutablePointer<OpaquePointer?>?, @unowned UnsafeMutablePointer<OpaquePointer?>?, @unowned Int, @unowned Int) -> ();
        v57 = &block_descriptor_20;
        v52 = _Block_copy(&aBlock);

        RIOImportSessionSetRegistrationForScenes();
        _Block_release(v52);
        _Block_release(v48);
        RIOImportSessionSetSwiftObject();
        ImportSession.registerDefaultSwiftBuilders()();

        return v3;
      }

      v35 = *(v3 + 2);

      v16 = &unk_27FEC8000;
    }

    else
    {
    }

    outlined destroy of Any?(&v3[OBJC_IVAR____TtC9RealityIO13ImportSession_deploymentTarget], &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMd, &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMR);
    v28 = *&v3[OBJC_IVAR____TtC9RealityIO13ImportSession_sceneTable];
  }

  else
  {
    outlined destroy of Any?(&v3[OBJC_IVAR____TtC9RealityIO13ImportSession_deploymentTarget], &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMd, &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMR);
    v29 = *&v3[OBJC_IVAR____TtC9RealityIO13ImportSession_sceneTable];
  }

  v30 = *&v3[OBJC_IVAR____TtC9RealityIO13ImportSession_sceneUpdatePassCompletion + 8];
  outlined consume of (@escaping @callee_guaranteed () -> ())?(*&v3[OBJC_IVAR____TtC9RealityIO13ImportSession_sceneUpdatePassCompletion]);
  v31 = *&v3[OBJC_IVAR____TtC9RealityIO13ImportSession_swiftBuildersByPrimPath];

  type metadata accessor for ImportSession(0);
  v32 = *(*v3 + 48);
  v33 = *(*v3 + 52);
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t closure #1 in ImportSession.init<A>(core:entityType:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v148 = a3;
  v149 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v135 = &v127 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v133 = &v127 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v131 = &v127 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v142 = &v127 - v13;
  MEMORY[0x28223BE20](v14);
  v143 = &v127 - v15;
  MEMORY[0x28223BE20](v16);
  v132 = &v127 - v17;
  MEMORY[0x28223BE20](v18);
  v152 = &v127 - v19;
  MEMORY[0x28223BE20](v20);
  v129 = &v127 - v21;
  MEMORY[0x28223BE20](v22);
  v140 = (&v127 - v23);
  MEMORY[0x28223BE20](v24);
  v141 = &v127 - v25;
  MEMORY[0x28223BE20](v26);
  v150 = &v127 - v27;
  MEMORY[0x28223BE20](v28);
  v30 = &v127 - v29;
  MEMORY[0x28223BE20](v31);
  v33 = &v127 - v32;
  v34 = type metadata accessor for UUID();
  v154 = *(v34 - 8);
  v35 = *(v154 + 64);
  MEMORY[0x28223BE20](v34);
  v134 = &v127 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v153 = &v127 - v38;
  MEMORY[0x28223BE20](v39);
  v130 = &v127 - v40;
  MEMORY[0x28223BE20](v41);
  v43 = &v127 - v42;
  MEMORY[0x28223BE20](v44);
  v151 = &v127 - v45;
  v46 = type metadata accessor for __SceneRef();
  v47 = *(v46 - 8);
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v46);
  v50 = &v127 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v138 = v4;
    v52 = result;
    type metadata accessor for Scene();
    v157 = MEMORY[0x277D841D8];
    v155 = a1;
    static __AssetRef.__fromCore(_:)();
    __swift_destroy_boxed_opaque_existential_0(&v155);
    v53 = static Scene.__fromCore(_:)();
    (*(v47 + 8))(v50, v46);
    v54 = String.init(cString:)();
    v56 = v55;
    v139 = v52;
    v128 = OBJC_IVAR____TtC9RealityIO13ImportSession_sceneTable;
    v57 = *(v52 + OBJC_IVAR____TtC9RealityIO13ImportSession_sceneTable);

    v149 = v53;
    Scene.__sceneIdentifier.getter();
    [*(v57 + 16) lock];
    v155 = 10867;
    v156 = 0xE200000000000000;
    v145 = v54;
    v146 = v56;
    MEMORY[0x26670F080](v54, v56);
    v58 = v155;
    v59 = v156;
    swift_beginAccess();
    v60 = *(v57 + 24);
    if (*(v60 + 16) && (v61 = specialized __RawDictionaryStorage.find<A>(_:)(v58, v59), (v62 & 1) != 0))
    {
      v63 = v154;
      v64 = *(v154 + 16);
      v65 = (v154 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v66 = v151;
      v64(v151, *(v60 + 56) + *(v154 + 72) * v61, v34);
      swift_endAccess();
    }

    else
    {
      v147 = v58;
      swift_endAccess();
      outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v33, v30, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v63 = v154;
      v67 = *(v154 + 48);
      if (v67(v30, 1, v34) == 1)
      {
        UUID.init()();
        if (v67(v30, 1, v34) != 1)
        {
          outlined destroy of Any?(v30, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        }
      }

      else
      {
        (*(v63 + 32))(v43, v30, v34);
      }

      v68 = *(v63 + 16);
      v65 = (v63 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v69 = v150;
      v68(v150, v43, v34);
      (*(v63 + 56))(v69, 0, 1, v34);
      swift_beginAccess();
      v70 = v69;
      v64 = v68;
      specialized Dictionary.subscript.setter(v70, v147, v59);
      swift_endAccess();
      v66 = v151;
      (*(v63 + 32))(v151, v43, v34);
    }

    v144 = v65;
    [*(v57 + 16) unlock];
    outlined destroy of Any?(v33, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);

    v71 = v141;
    Scene.__sceneIdentifier.getter();
    v72 = v71;
    v73 = v140;
    v64(v140, v66, v34);
    v137 = *(v63 + 56);
    v147 = v63 + 56;
    v137(v73, 0, 1, v34);
    v74 = *(v138 + 48);
    v75 = v133;
    outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v72, v133, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v73, v75 + v74, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v76 = v63;
    v79 = *(v63 + 48);
    v78 = v63 + 48;
    v77 = v79;
    v80 = v79(v75, 1, v34);
    v136 = v79;
    if (v80 == 1)
    {
      outlined destroy of Any?(v73, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      outlined destroy of Any?(v72, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v81 = v77(v75 + v74, 1, v34);
      v82 = v134;
      v83 = v78;
      if (v81 == 1)
      {
        outlined destroy of Any?(v75, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v84 = v143;
        v85 = v153;
        v86 = v137;
LABEL_17:
        type metadata accessor for Entity();
        v89 = static Entity.fromCore(_:ignoringEntityInfo:)();
        v90 = *(v139 + v128);

        v141 = v89;
        Entity.__interactionIdentifier.getter();
        [*(v90 + 16) lock];
        swift_beginAccess();
        v91 = *(v90 + 24);
        v92 = *(v91 + 16);
        v140 = v64;
        v127 = v83;
        if (v92 && (v93 = specialized __RawDictionaryStorage.find<A>(_:)(v145, v146), (v94 & 1) != 0))
        {
          v64(v85, *(v91 + 56) + *(v154 + 72) * v93, v34);
          swift_endAccess();
        }

        else
        {
          swift_endAccess();
          v95 = v132;
          outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v152, v132, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          v96 = v136;
          if (v136(v95, 1, v34) == 1)
          {
            UUID.init()();
            if (v96(v95, 1, v34) != 1)
            {
              outlined destroy of Any?(v95, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
            }
          }

          else
          {
            (*(v154 + 32))(v82, v95, v34);
          }

          v97 = v150;
          v64(v150, v82, v34);
          v86(v97, 0, 1, v34);
          swift_beginAccess();
          v98 = v82;
          v99 = v146;

          specialized Dictionary.subscript.setter(v97, v145, v99);
          swift_endAccess();
          v85 = v153;
          v100 = v98;
          v64 = v140;
          (*(v154 + 32))(v153, v100, v34);
        }

        [*(v90 + 16) unlock];
        outlined destroy of Any?(v152, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);

        Entity.__interactionIdentifier.getter();
        v101 = v142;
        v64(v142, v85, v34);
        v102 = v137;
        v137(v101, 0, 1, v34);
        v103 = *(v138 + 48);
        v104 = v135;
        outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v84, v135, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v101, v104 + v103, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v105 = v136;
        v106 = v102;
        if (v136(v104, 1, v34) == 1)
        {
          v107 = v105;
          outlined destroy of Any?(v101, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          outlined destroy of Any?(v84, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          v108 = v34;
          v109 = v107(v104 + v103, 1, v34);
          v110 = v151;
          if (v109 == 1)
          {
            outlined destroy of Any?(v104, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
            v111 = v153;
LABEL_32:
            v114 = *(v139 + OBJC_IVAR____TtC9RealityIO13ImportSession_behaviorsCommitter);
            String.utf8CString.getter();

            v115 = RIOPxrSdfPathCreateFromCString();

            swift_beginAccess();
            specialized Dictionary._Variant.updateValue(_:forKey:)(v148, v115);
            swift_endAccess();

            v116 = *(v154 + 8);
            v116(v111, v34);
            return (v116)(v110, v34);
          }
        }

        else
        {
          v112 = v131;
          outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v104, v131, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          if (v105(v104 + v103, 1, v34) != 1)
          {
            v123 = v154;
            v124 = v130;
            (*(v154 + 32))(v130, v104 + v103, v34);
            _sSo10CFErrorRefaABs5Error10FoundationWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
            v125 = dispatch thunk of static Equatable.== infix(_:_:)();
            v126 = *(v123 + 8);
            v126(v124, v34);
            outlined destroy of Any?(v142, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
            outlined destroy of Any?(v143, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
            v126(v112, v34);
            outlined destroy of Any?(v104, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
            v111 = v153;
            v110 = v151;
            if (v125)
            {
              goto LABEL_32;
            }

            goto LABEL_31;
          }

          outlined destroy of Any?(v142, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          outlined destroy of Any?(v143, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          v108 = v34;
          (*(v154 + 8))(v112, v34);
          v110 = v151;
        }

        outlined destroy of Any?(v104, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
        v111 = v153;
        v34 = v108;
LABEL_31:
        v113 = v150;
        v140(v150, v111, v34);
        v106(v113, 0, 1, v34);
        Entity.__interactionIdentifier.setter();
        goto LABEL_32;
      }
    }

    else
    {
      v87 = v129;
      outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v75, v129, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v83 = v78;
      if (v77(v75 + v74, 1, v34) != 1)
      {
        v117 = v76;
        v118 = v75 + v74;
        v119 = v130;
        (*(v76 + 32))(v130, v118, v34);
        _sSo10CFErrorRefaABs5Error10FoundationWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
        v120 = dispatch thunk of static Equatable.== infix(_:_:)();
        v121 = v87;
        v122 = *(v117 + 8);
        v122(v119, v34);
        outlined destroy of Any?(v140, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        outlined destroy of Any?(v141, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v122(v121, v34);
        outlined destroy of Any?(v75, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v84 = v143;
        v82 = v134;
        v85 = v153;
        v86 = v137;
        if (v120)
        {
          goto LABEL_17;
        }

        goto LABEL_16;
      }

      outlined destroy of Any?(v140, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      outlined destroy of Any?(v141, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      (*(v76 + 8))(v87, v34);
      v82 = v134;
    }

    outlined destroy of Any?(v75, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
    v84 = v143;
    v85 = v153;
    v86 = v137;
LABEL_16:
    v88 = v150;
    v64(v150, v151, v34);
    v86(v88, 0, 1, v34);
    Scene.__sceneIdentifier.setter();
    goto LABEL_17;
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned OpaquePointer, @unowned UnsafePointer<Int8>, @unowned OpaquePointer) -> ()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v8(a2, a3, a4);
}

void closure #2 in ImportSession.init<A>(core:entityType:)(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v87 = type metadata accessor for __SceneImportOperation.__ImportedScene();
  v78 = *(v87 - 8);
  v14 = *(v78 + 64);
  MEMORY[0x28223BE20](v87);
  v86 = v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v85 = v62 - v17;
  v76 = type metadata accessor for __AssetRef();
  v18 = *(v76 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v76);
  v75 = v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v84 = v62 - v23;
  v77 = type metadata accessor for UUID();
  v24 = *(v77 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v77);
  v74 = v62 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v83 = v62 - v28;
  v82 = type metadata accessor for __SceneRef();
  v29 = *(*(v82 - 8) + 64);
  MEMORY[0x28223BE20](v82);
  v81 = v62 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 && a3)
  {
    if (a4 < 0)
    {
      __break(1u);
    }

    else
    {
      v62[1] = a6;
      v62[0] = a1;
      v63 = a7;
      v65 = a5;
      v64 = a2;
      if (a4)
      {
        v80 = (v30 + 8);
        v79 = (v24 + 48);
        v72 = (v24 + 32);
        v71 = (v18 + 8);
        v70 = (v24 + 16);
        v69 = (v78 + 16);
        v68 = v78 + 8;
        v67 = (v24 + 8);
        v88 = MEMORY[0x277D84F90];
        v32 = MEMORY[0x277D841D8];
        v66 = v78 + 32;
        v33 = a2;
        v34 = a3;
        v35 = v77;
        v73 = a3;
        do
        {
          v37 = *v33++;
          v36 = v37;
          if (v37)
          {
            v38 = *v34;
            if (*v34)
            {
              v89 = v33;
              type metadata accessor for Scene();
              v91 = v32;
              aBlock[0] = v36;
              v39 = v81;
              static __AssetRef.__fromCore(_:)();
              __swift_destroy_boxed_opaque_existential_0(aBlock);
              static Scene.__fromCore(_:)();
              (*v80)(v39, v82);
              v40 = v84;
              Scene.__sceneIdentifier.getter();
              if ((*v79)(v40, 1, v35) == 1)
              {

                outlined destroy of Any?(v40, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
              }

              else
              {
                v41 = v40;
                v42 = v83;
                (*v72)(v83, v41, v35);
                type metadata accessor for __REAsset();
                v91 = v32;
                aBlock[0] = v38;
                v43 = v75;
                static __AssetRef.__fromCore(_:)();
                __swift_destroy_boxed_opaque_existential_0(aBlock);
                static __REAsset.__fromHandle(_:)();
                (*v71)(v43, v76);
                (*v70)(v74, v42, v35);
                dispatch thunk of Scene.name.getter();

                v44 = v85;
                __SceneImportOperation.__ImportedScene.init(sceneIdentifier:sceneName:sceneAsset:sceneActive:)();
                (*v69)(v86, v44, v87);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v88 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v88[2] + 1, 1, v88);
                }

                v46 = v88[2];
                v45 = v88[3];
                if (v46 >= v45 >> 1)
                {
                  v88 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v45 > 1, v46 + 1, 1, v88);
                }

                v47 = v78;
                v48 = v87;
                (*(v78 + 8))(v85, v87);
                v35 = v77;
                (*v67)(v83, v77);
                v49 = v88;
                v88[2] = v46 + 1;
                (*(v47 + 32))(v49 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v46, v86, v48);
                a3 = v73;
                v32 = MEMORY[0x277D841D8];
              }

              v33 = v89;
            }
          }

          --a5;
          ++v34;
          --a4;
        }

        while (a4);
      }

      else
      {
        v88 = MEMORY[0x277D84F90];
      }

      v50 = a3[v65];
      if (!v50)
      {
        goto LABEL_22;
      }

      if (!v64[v65])
      {
        goto LABEL_22;
      }

      RESceneGetName();
      v51 = String.init(cString:)();
      v53 = v52;
      type metadata accessor for __SceneResourceCache();
      swift_unownedRetainStrong();
      static __SceneResourceCache.attachImportedScenesForSceneChangeToEntity(importedScenes:entity:)();

      v54 = v63;
      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v56 = Strong;
        v57 = swift_allocObject();
        v57[2] = v51;
        v57[3] = v53;
        v57[4] = v50;
        v57[5] = v54;
        v57[6] = v62[0];
        v58 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
        swift_beginAccess();
        v59 = *(v56 + v58);
        v92 = partial apply for closure #1 in closure #2 in ImportSession.init<A>(core:entityType:);
        v93 = v57;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
        v91 = &block_descriptor_267;
        v60 = _Block_copy(aBlock);

        v61 = v59;

        RIOImportSessionPerformSceneChangeSetupBlockOnEngineQueue();
        _Block_release(v60);
      }

      else
      {
LABEL_22:
      }
    }
  }
}

uint64_t closure #1 in closure #2 in ImportSession.init<A>(core:entityType:)()
{
  String.utf8CString.getter();
  v0 = RESceneCreate();

  if (v0)
  {
    type metadata accessor for __ServiceLocator();
    static __ServiceLocator.shared.getter();
    dispatch thunk of __ServiceLocator.assetService.getter();

    __swift_project_boxed_opaque_existential_1(v12, v12[3]);
    dispatch thunk of __REAssetService.__handle.getter();
    __swift_destroy_boxed_opaque_existential_0(v12);
    RESceneLoadFromAsset();
    EntitiesArray = RESceneGetEntitiesArray();
    if (v3 >= 1)
    {
      v4 = EntitiesArray;
      type metadata accessor for Entity();
      v5 = *v4;
      static Entity.fromCore(_:ignoringEntityInfo:)();
      swift_beginAccess();
      result = swift_weakLoadStrong();
      if (!result)
      {
        __break(1u);
        return result;
      }

      v6 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
      v7 = result;
      swift_beginAccess();
      v8 = *(v7 + v6);

      v9 = *v4;
      RIOImportSessionOverridePrimPathToEntityForSceneAssetEntities();

      v10 = *v4;
      REEntityInsertChild();
      v11._countAndFlagsBits = 0;
      v11._object = 0xE000000000000000;
      Entity.setLoadContext(fileName:)(v11);
    }

    return RERelease();
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned OpaquePointer, @unowned UnsafeMutablePointer<OpaquePointer?>?, @unowned UnsafeMutablePointer<OpaquePointer?>?, @unowned Int, @unowned Int) -> ()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(a1 + 32);
  v11 = *(a1 + 40);

  v12(a2, a3, a4, a5, a6);
}

void ImportSession.registerDefaultSwiftBuilders()()
{
  v1 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  v4[2] = v3;
  v4[3] = closure #1 in ImportSession.registerDefaultSwiftBuilders();
  v4[4] = 0;
  v102 = closure #1 in ImportSession.register(builderGenerator:)partial apply;
  v103 = v4;
  aBlock = MEMORY[0x277D85DD0];
  v99 = 1107296256;
  v100 = thunk for @escaping @callee_guaranteed (@guaranteed RIOPxrUsdObjectRef) -> (@unowned Unmanaged<RIOBuilderRef>?);
  v101 = &block_descriptor_116;
  v5 = _Block_copy(&aBlock);
  v6 = v2;

  RIOImportSessionRegisterBuilderGenerator();
  _Block_release(v5);

  v7 = *(v0 + v1);
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = closure #2 in ImportSession.registerDefaultSwiftBuilders();
  v9[4] = 0;
  v102 = closure #1 in ImportSession.register(builderGenerator:)partial apply;
  v103 = v9;
  aBlock = MEMORY[0x277D85DD0];
  v99 = 1107296256;
  v100 = thunk for @escaping @callee_guaranteed (@guaranteed RIOPxrUsdObjectRef) -> (@unowned Unmanaged<RIOBuilderRef>?);
  v101 = &block_descriptor_124;
  v10 = _Block_copy(&aBlock);
  v11 = v7;

  RIOImportSessionRegisterBuilderGenerator();
  _Block_release(v10);

  v12 = *(v0 + v1);
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = closure #3 in ImportSession.registerDefaultSwiftBuilders();
  v14[4] = 0;
  v102 = closure #1 in ImportSession.register(builderGenerator:)partial apply;
  v103 = v14;
  aBlock = MEMORY[0x277D85DD0];
  v99 = 1107296256;
  v100 = thunk for @escaping @callee_guaranteed (@guaranteed RIOPxrUsdObjectRef) -> (@unowned Unmanaged<RIOBuilderRef>?);
  v101 = &block_descriptor_132;
  v15 = _Block_copy(&aBlock);
  v16 = v12;

  RIOImportSessionRegisterBuilderGenerator();
  _Block_release(v15);

  v17 = *(v0 + v1);
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = swift_allocObject();
  v19[2] = v18;
  v19[3] = closure #4 in ImportSession.registerDefaultSwiftBuilders();
  v19[4] = 0;
  v102 = closure #1 in ImportSession.register(builderGenerator:)partial apply;
  v103 = v19;
  aBlock = MEMORY[0x277D85DD0];
  v99 = 1107296256;
  v100 = thunk for @escaping @callee_guaranteed (@guaranteed RIOPxrUsdObjectRef) -> (@unowned Unmanaged<RIOBuilderRef>?);
  v101 = &block_descriptor_140;
  v20 = _Block_copy(&aBlock);
  v21 = v17;

  RIOImportSessionRegisterBuilderGenerator();
  _Block_release(v20);

  v22 = swift_allocObject();
  swift_weakInit();
  v23 = *(v0 + v1);
  v24 = swift_allocObject();
  swift_weakInit();
  v25 = swift_allocObject();
  v25[2] = v24;
  v25[3] = partial apply for closure #5 in ImportSession.registerDefaultSwiftBuilders();
  v25[4] = v22;
  v102 = closure #1 in ImportSession.register(builderGenerator:)partial apply;
  v103 = v25;
  aBlock = MEMORY[0x277D85DD0];
  v99 = 1107296256;
  v100 = thunk for @escaping @callee_guaranteed (@guaranteed RIOPxrUsdObjectRef) -> (@unowned Unmanaged<RIOBuilderRef>?);
  v101 = &block_descriptor_149;
  v26 = _Block_copy(&aBlock);
  swift_retain_n();
  v27 = v23;

  RIOImportSessionRegisterBuilderGenerator();
  _Block_release(v26);

  v28 = *(v0 + v1);
  v29 = swift_allocObject();
  swift_weakInit();
  v30 = swift_allocObject();
  v30[2] = v29;
  v30[3] = closure #6 in ImportSession.registerDefaultSwiftBuilders();
  v30[4] = 0;
  v102 = closure #1 in ImportSession.register(builderGenerator:)partial apply;
  v103 = v30;
  aBlock = MEMORY[0x277D85DD0];
  v99 = 1107296256;
  v100 = thunk for @escaping @callee_guaranteed (@guaranteed RIOPxrUsdObjectRef) -> (@unowned Unmanaged<RIOBuilderRef>?);
  v101 = &block_descriptor_157;
  v31 = _Block_copy(&aBlock);
  v32 = v28;

  RIOImportSessionRegisterBuilderGenerator();
  _Block_release(v31);

  v33 = *(v0 + v1);
  v34 = swift_allocObject();
  swift_weakInit();
  v35 = swift_allocObject();
  v35[2] = v34;
  v35[3] = closure #7 in ImportSession.registerDefaultSwiftBuilders();
  v35[4] = 0;
  v102 = closure #1 in ImportSession.register(builderGenerator:)partial apply;
  v103 = v35;
  aBlock = MEMORY[0x277D85DD0];
  v99 = 1107296256;
  v100 = thunk for @escaping @callee_guaranteed (@guaranteed RIOPxrUsdObjectRef) -> (@unowned Unmanaged<RIOBuilderRef>?);
  v101 = &block_descriptor_165;
  v36 = _Block_copy(&aBlock);
  v37 = v33;

  RIOImportSessionRegisterBuilderGenerator();
  _Block_release(v36);

  v38 = *(v0 + v1);
  v39 = swift_allocObject();
  swift_weakInit();
  v40 = swift_allocObject();
  v40[2] = v39;
  v40[3] = closure #8 in ImportSession.registerDefaultSwiftBuilders();
  v40[4] = 0;
  v102 = closure #1 in ImportSession.register(builderGenerator:)partial apply;
  v103 = v40;
  aBlock = MEMORY[0x277D85DD0];
  v99 = 1107296256;
  v100 = thunk for @escaping @callee_guaranteed (@guaranteed RIOPxrUsdObjectRef) -> (@unowned Unmanaged<RIOBuilderRef>?);
  v101 = &block_descriptor_173;
  v41 = _Block_copy(&aBlock);
  v42 = v38;

  RIOImportSessionRegisterBuilderGenerator();
  _Block_release(v41);

  v43 = *(v0 + v1);
  v44 = swift_allocObject();
  swift_weakInit();
  v45 = swift_allocObject();
  v45[2] = v44;
  v45[3] = closure #9 in ImportSession.registerDefaultSwiftBuilders();
  v45[4] = 0;
  v102 = closure #1 in ImportSession.register(builderGenerator:)partial apply;
  v103 = v45;
  aBlock = MEMORY[0x277D85DD0];
  v99 = 1107296256;
  v100 = thunk for @escaping @callee_guaranteed (@guaranteed RIOPxrUsdObjectRef) -> (@unowned Unmanaged<RIOBuilderRef>?);
  v101 = &block_descriptor_181;
  v46 = _Block_copy(&aBlock);
  v47 = v43;

  RIOImportSessionRegisterBuilderGenerator();
  _Block_release(v46);

  v48 = *(v0 + v1);
  v49 = swift_allocObject();
  swift_weakInit();
  v50 = swift_allocObject();
  v50[2] = v49;
  v50[3] = closure #10 in ImportSession.registerDefaultSwiftBuilders();
  v50[4] = 0;
  v102 = closure #1 in ImportSession.register(builderGenerator:)partial apply;
  v103 = v50;
  aBlock = MEMORY[0x277D85DD0];
  v99 = 1107296256;
  v100 = thunk for @escaping @callee_guaranteed (@guaranteed RIOPxrUsdObjectRef) -> (@unowned Unmanaged<RIOBuilderRef>?);
  v101 = &block_descriptor_189;
  v51 = _Block_copy(&aBlock);
  v52 = v48;

  RIOImportSessionRegisterBuilderGenerator();
  _Block_release(v51);

  v53 = *(v0 + v1);
  v54 = swift_allocObject();
  swift_weakInit();
  v55 = swift_allocObject();
  v55[2] = v54;
  v55[3] = closure #11 in ImportSession.registerDefaultSwiftBuilders();
  v55[4] = 0;
  v102 = closure #1 in ImportSession.register(builderGenerator:)partial apply;
  v103 = v55;
  aBlock = MEMORY[0x277D85DD0];
  v99 = 1107296256;
  v100 = thunk for @escaping @callee_guaranteed (@guaranteed RIOPxrUsdObjectRef) -> (@unowned Unmanaged<RIOBuilderRef>?);
  v101 = &block_descriptor_197;
  v56 = _Block_copy(&aBlock);
  v57 = v53;

  RIOImportSessionRegisterBuilderGenerator();
  _Block_release(v56);

  v58 = *(v0 + v1);
  v59 = swift_allocObject();
  swift_weakInit();
  v60 = swift_allocObject();
  v60[2] = v59;
  v60[3] = closure #12 in ImportSession.registerDefaultSwiftBuilders();
  v60[4] = 0;
  v102 = closure #1 in ImportSession.register(builderGenerator:)partial apply;
  v103 = v60;
  aBlock = MEMORY[0x277D85DD0];
  v99 = 1107296256;
  v100 = thunk for @escaping @callee_guaranteed (@guaranteed RIOPxrUsdObjectRef) -> (@unowned Unmanaged<RIOBuilderRef>?);
  v101 = &block_descriptor_205;
  v61 = _Block_copy(&aBlock);
  v62 = v58;

  RIOImportSessionRegisterBuilderGenerator();
  _Block_release(v61);

  v63 = *(v0 + v1);
  v64 = swift_allocObject();
  swift_weakInit();
  v65 = swift_allocObject();
  v65[2] = v64;
  v65[3] = closure #13 in ImportSession.registerDefaultSwiftBuilders();
  v65[4] = 0;
  v102 = closure #1 in ImportSession.register(builderGenerator:)partial apply;
  v103 = v65;
  aBlock = MEMORY[0x277D85DD0];
  v99 = 1107296256;
  v100 = thunk for @escaping @callee_guaranteed (@guaranteed RIOPxrUsdObjectRef) -> (@unowned Unmanaged<RIOBuilderRef>?);
  v101 = &block_descriptor_213;
  v66 = _Block_copy(&aBlock);
  v67 = v63;

  RIOImportSessionRegisterBuilderGenerator();
  _Block_release(v66);

  v68 = *(v0 + v1);
  v69 = swift_allocObject();
  swift_weakInit();
  v70 = swift_allocObject();
  v70[2] = v69;
  v70[3] = closure #14 in ImportSession.registerDefaultSwiftBuilders();
  v70[4] = 0;
  v102 = closure #1 in ImportSession.register(builderGenerator:)partial apply;
  v103 = v70;
  aBlock = MEMORY[0x277D85DD0];
  v99 = 1107296256;
  v100 = thunk for @escaping @callee_guaranteed (@guaranteed RIOPxrUsdObjectRef) -> (@unowned Unmanaged<RIOBuilderRef>?);
  v101 = &block_descriptor_221;
  v71 = _Block_copy(&aBlock);
  v72 = v68;

  RIOImportSessionRegisterBuilderGenerator();
  _Block_release(v71);

  v73 = *(v0 + v1);
  v74 = swift_allocObject();
  swift_weakInit();
  v75 = swift_allocObject();
  v75[2] = v74;
  v75[3] = closure #15 in ImportSession.registerDefaultSwiftBuilders();
  v75[4] = 0;
  v102 = closure #1 in ImportSession.register(builderGenerator:)partial apply;
  v103 = v75;
  aBlock = MEMORY[0x277D85DD0];
  v99 = 1107296256;
  v100 = thunk for @escaping @callee_guaranteed (@guaranteed RIOPxrUsdObjectRef) -> (@unowned Unmanaged<RIOBuilderRef>?);
  v101 = &block_descriptor_229;
  v76 = _Block_copy(&aBlock);
  v77 = v73;

  RIOImportSessionRegisterBuilderGenerator();
  _Block_release(v76);

  v78 = *(v0 + v1);
  v79 = swift_allocObject();
  swift_weakInit();
  v80 = swift_allocObject();
  v80[2] = v79;
  v80[3] = closure #16 in ImportSession.registerDefaultSwiftBuilders();
  v80[4] = 0;
  v102 = closure #1 in ImportSession.register(builderGenerator:)partial apply;
  v103 = v80;
  aBlock = MEMORY[0x277D85DD0];
  v99 = 1107296256;
  v100 = thunk for @escaping @callee_guaranteed (@guaranteed RIOPxrUsdObjectRef) -> (@unowned Unmanaged<RIOBuilderRef>?);
  v101 = &block_descriptor_237;
  v81 = _Block_copy(&aBlock);
  v82 = v78;

  RIOImportSessionRegisterBuilderGenerator();
  _Block_release(v81);

  v83 = *(v0 + v1);
  v84 = swift_allocObject();
  swift_weakInit();
  v85 = swift_allocObject();
  v85[2] = v84;
  v85[3] = closure #17 in ImportSession.registerDefaultSwiftBuilders();
  v85[4] = 0;
  v102 = closure #1 in ImportSession.register(builderGenerator:)partial apply;
  v103 = v85;
  aBlock = MEMORY[0x277D85DD0];
  v99 = 1107296256;
  v100 = thunk for @escaping @callee_guaranteed (@guaranteed RIOPxrUsdObjectRef) -> (@unowned Unmanaged<RIOBuilderRef>?);
  v101 = &block_descriptor_245;
  v86 = _Block_copy(&aBlock);
  v87 = v83;

  RIOImportSessionRegisterBuilderGenerator();
  _Block_release(v86);

  v88 = *(v0 + v1);
  v89 = swift_allocObject();
  swift_weakInit();
  v90 = swift_allocObject();
  v90[2] = v89;
  v90[3] = closure #18 in ImportSession.registerDefaultSwiftBuilders();
  v90[4] = 0;
  v102 = closure #1 in ImportSession.register(builderGenerator:)partial apply;
  v103 = v90;
  aBlock = MEMORY[0x277D85DD0];
  v99 = 1107296256;
  v100 = thunk for @escaping @callee_guaranteed (@guaranteed RIOPxrUsdObjectRef) -> (@unowned Unmanaged<RIOBuilderRef>?);
  v101 = &block_descriptor_253;
  v91 = _Block_copy(&aBlock);
  v92 = v88;

  RIOImportSessionRegisterBuilderGenerator();
  _Block_release(v91);

  v93 = *(v0 + v1);
  v94 = swift_allocObject();
  swift_weakInit();
  v95 = swift_allocObject();
  v95[2] = v94;
  v95[3] = closure #19 in ImportSession.registerDefaultSwiftBuilders();
  v95[4] = 0;
  v102 = closure #1 in ImportSession.register(builderGenerator:)partial apply;
  v103 = v95;
  aBlock = MEMORY[0x277D85DD0];
  v99 = 1107296256;
  v100 = thunk for @escaping @callee_guaranteed (@guaranteed RIOPxrUsdObjectRef) -> (@unowned Unmanaged<RIOBuilderRef>?);
  v101 = &block_descriptor_261;
  v96 = _Block_copy(&aBlock);
  v97 = v93;

  RIOImportSessionRegisterBuilderGenerator();
  _Block_release(v96);
}

uint64_t ImportSession.setLoadSubdsAsSubds(loadAsSubd:)(char a1, uint64_t (*a2)(void, void))
{
  v5 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
  swift_beginAccess();
  return a2(*(v2 + v5), a1 & 1);
}

void ImportSession.setOriginalUrl(url:)()
{
  v1 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
  swift_beginAccess();
  v2 = *(v0 + v1);
  URL._bridgeToObjectiveC()(v3);
  v5 = v4;
  RIOImportSessionSetOriginalUrl();
}

uint64_t ImportSession.getLoadSubdsAsSubds(url:)()
{
  v1 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
  swift_beginAccess();
  v2 = *(v0 + v1);
  return RIOImportSessionGetLoadSubdsAsSubds();
}

Swift::Void __swiftcall ImportSession.setSkipAudio(_:)(Swift::Bool a1)
{
  v2 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
  swift_beginAccess();
  v3 = *(v1 + v2);
  RIOImportSessionSetLoadAudio();
}

uint64_t ImportSession.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  outlined destroy of Any?(v0 + OBJC_IVAR____TtC9RealityIO13ImportSession_deploymentTarget, &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMd, &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMR);
  v3 = *(v0 + OBJC_IVAR____TtC9RealityIO13ImportSession_sceneTable);

  v4 = *(v0 + OBJC_IVAR____TtC9RealityIO13ImportSession_sceneUpdatePassCompletion + 8);
  outlined consume of (@escaping @callee_guaranteed () -> ())?(*(v0 + OBJC_IVAR____TtC9RealityIO13ImportSession_sceneUpdatePassCompletion));
  v5 = *(v0 + OBJC_IVAR____TtC9RealityIO13ImportSession_swiftBuildersByPrimPath);

  v6 = *(v0 + OBJC_IVAR____TtC9RealityIO13ImportSession_behaviorsCommitter);

  return v0;
}

uint64_t ImportSession.__deallocating_deinit()
{
  ImportSession.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t closure #1 in ImportSession.registerDefaultSwiftBuilders()()
{
  type metadata accessor for TimelineBuilder();
  result = swift_allocObject();
  *(result + 16) = 2;
  return result;
}

uint64_t closure #2 in ImportSession.registerDefaultSwiftBuilders()()
{
  type metadata accessor for TimelineTrackAndActionBuilder();
  result = swift_allocObject();
  *(result + 16) = 2;
  return result;
}

uint64_t closure #3 in ImportSession.registerDefaultSwiftBuilders()()
{
  type metadata accessor for TriggerBuilder();
  result = swift_allocObject();
  *(result + 16) = 2;
  return result;
}

uint64_t closure #4 in ImportSession.registerDefaultSwiftBuilders()()
{
  type metadata accessor for ActionBuilder();
  result = swift_allocObject();
  *(result + 16) = 2;
  return result;
}

uint64_t closure #5 in ImportSession.registerDefaultSwiftBuilders()()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + OBJC_IVAR____TtC9RealityIO13ImportSession_behaviorsCommitter);

    type metadata accessor for BehaviorBuilder();
    result = swift_allocObject();
    *(result + 16) = 2;
    *(result + 24) = v1;
  }

  return result;
}

uint64_t closure #6 in ImportSession.registerDefaultSwiftBuilders()()
{
  type metadata accessor for PhysicsComponentBuilder();
  result = swift_allocObject();
  *(result + 16) = 2;
  return result;
}

uint64_t closure #7 in ImportSession.registerDefaultSwiftBuilders()()
{
  type metadata accessor for ReferenceImageBuilder();
  result = swift_allocObject();
  *(result + 16) = 2;
  return result;
}

double closure #8 in ImportSession.registerDefaultSwiftBuilders()()
{
  type metadata accessor for AudioFileBuilder();
  v0 = swift_allocObject();
  *(v0 + 16) = 2;
  result = 0.0;
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0;
  return result;
}

uint64_t closure #9 in ImportSession.registerDefaultSwiftBuilders()()
{
  type metadata accessor for AudioFileGroupBuilder();
  result = swift_allocObject();
  *(result + 16) = 2;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t closure #10 in ImportSession.registerDefaultSwiftBuilders()()
{
  type metadata accessor for AudioMixGroupBuilder();
  result = swift_allocObject();
  *(result + 16) = 2;
  *(result + 24) = 0;
  *(result + 32) = 1;
  return result;
}

uint64_t closure #11 in ImportSession.registerDefaultSwiftBuilders()()
{
  type metadata accessor for ImageBasedLightReceiverBuilder();
  result = swift_allocObject();
  *(result + 16) = 2;
  return result;
}

uint64_t closure #12 in ImportSession.registerDefaultSwiftBuilders()()
{
  type metadata accessor for ImageBasedLightBuilder();
  result = swift_allocObject();
  *(result + 16) = 3;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 40) = 2;
  return result;
}

uint64_t closure #13 in ImportSession.registerDefaultSwiftBuilders()()
{
  type metadata accessor for VirtualEnvironmentProbeComponentBuilder();
  swift_allocObject();
  return VirtualEnvironmentProbeComponentBuilder.init()();
}

uint64_t closure #14 in ImportSession.registerDefaultSwiftBuilders()()
{
  v0 = type metadata accessor for ModelSortGroupBuilder();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  *(v3 + 16) = 2;
  v4 = OBJC_IVAR____TtC9RealityIO21ModelSortGroupBuilder_meshSortingGroup;
  v5 = type metadata accessor for ModelSortGroup();
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  return v3;
}

uint64_t closure #15 in ImportSession.registerDefaultSwiftBuilders()()
{
  type metadata accessor for ModelSortGroupComponentBuilder();
  result = swift_allocObject();
  *(result + 16) = 2;
  return result;
}

uint64_t closure #16 in ImportSession.registerDefaultSwiftBuilders()()
{
  type metadata accessor for AnchoringComponentBuilder();
  result = swift_allocObject();
  *(result + 16) = 2;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

uint64_t closure #17 in ImportSession.registerDefaultSwiftBuilders()()
{
  type metadata accessor for SpotLightComponentBuilder();
  result = swift_allocObject();
  *(result + 16) = 2;
  return result;
}

uint64_t closure #18 in ImportSession.registerDefaultSwiftBuilders()()
{
  type metadata accessor for DirectionalLightComponentBuilder();
  result = swift_allocObject();
  *(result + 16) = 2;
  return result;
}

uint64_t closure #19 in ImportSession.registerDefaultSwiftBuilders()()
{
  type metadata accessor for CustomComponentBuilder();
  swift_allocObject();
  return CustomComponentBuilder.init()();
}

void ImportSession.reloadAsset(assetURL:)()
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
  swift_beginAccess();
  v2 = *(v0 + v1);
  URL._bridgeToObjectiveC()(v3);
  v5 = v4;
  v6 = RIOImportSessionReloadAsset();

  if ((v6 & 1) == 0)
  {
    lazy protocol witness table accessor for type ImportSession.LoadError and conformance ImportSession.LoadError();
    swift_allocError();
    *v7 = 1;
    swift_willThrow();
  }

  v8 = *MEMORY[0x277D85DE8];
}

void ImportSession.performBlockAfterAssetLoadOnEngineQueue(block:)(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
  swift_beginAccess();
  v6 = *(v2 + v5);
  aBlock[4] = a1;
  aBlock[5] = a2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_23;
  v7 = _Block_copy(aBlock);
  v8 = v6;

  RIOImportSessionPerformBlockAfterAssetLoadOnEngineQueue();
  _Block_release(v7);
}

uint64_t ImportSession.activeSceneCount.getter()
{
  v1 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
  swift_beginAccess();
  v2 = *(v0 + v1);
  result = RIOImportSessionGetSceneCount();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = 0;
    v5 = result;
    if (result)
    {
      v6 = 0;
      while (1)
      {
        v7 = *(v0 + v1);
        if (RIOImportSessionIsSceneActive())
        {
          if (__OFADD__(v4++, 1))
          {
            break;
          }
        }

        if (v5 == ++v6)
        {
          return v4;
        }
      }

      __break(1u);
    }

    return v4;
  }

  return result;
}

uint64_t (*ImportSession.entityTaggingEditMode.modify(uint64_t a1))(unsigned __int8 *a1)
{
  v3 = *(v1 + 16);
  *a1 = v3;
  v4 = *(v3 + 16);
  *(a1 + 8) = RIOPxrUsdStageGetEntityTaggingEditMode();
  return ImportSession.entityTaggingEditMode.modify;
}

uint64_t (*ImportSession.includeUnusedMaterials.modify(uint64_t a1))(unsigned __int8 *a1)
{
  v3 = *(v1 + 16);
  *a1 = v3;
  v4 = *(v3 + 16);
  *(a1 + 8) = RIOPxrUsdStageGetIncludeUnusedMaterials();
  return ImportSession.includeUnusedMaterials.modify;
}

uint64_t ImportSession.includeUnusedMaterials.modify(unsigned __int8 *a1)
{
  v1 = a1[8];
  v2 = *(*a1 + 16);
  return RIOPxrUsdStageSetIncludeUnusedMaterials();
}

uint64_t ImportSession.requestUpdateSynchronouslyOnEngineQueue()(uint64_t (*a1)(void))
{
  v3 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
  swift_beginAccess();
  return a1(*(v1 + v3));
}

uint64_t ImportSession.dumpDiagnostics(_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
  swift_beginAccess();
  v6 = *(v3 + v5);
  String.utf8CString.getter();
  v7 = v6;
  v8 = a3();

  return v8;
}

uint64_t ImportSession.getStatistics()()
{
  v1 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
  swift_beginAccess();
  v2 = *(v0 + v1);
  result = RIOImportSessionCopyStatistics();
  if (result)
  {
    objc_opt_self();
    swift_dynamicCastObjCClassUnconditional();
    result = static Dictionary._forceBridgeFromObjectiveC(_:result:)();
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t static ImportSession.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for RIOImportSessionRef(0);
  v4 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
  swift_beginAccess();
  v5 = *(a1 + v4);
  v6 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
  swift_beginAccess();
  v7 = *(a2 + v6);
  _sSo10CFErrorRefaABs5Error10FoundationWlTm_0(&lazy protocol witness table cache variable for type RIOImportSessionRef and conformance RIOImportSessionRef, type metadata accessor for RIOImportSessionRef);
  v8 = v5;
  v9 = v7;
  LOBYTE(a2) = static _CFObject.== infix(_:_:)();

  return a2 & 1;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ImportSession(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  type metadata accessor for RIOImportSessionRef(0);
  v4 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
  swift_beginAccess();
  v5 = *(v2 + v4);
  v6 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
  swift_beginAccess();
  v7 = *(v3 + v6);
  _sSo10CFErrorRefaABs5Error10FoundationWlTm_0(&lazy protocol witness table cache variable for type RIOImportSessionRef and conformance RIOImportSessionRef, type metadata accessor for RIOImportSessionRef);
  v8 = v5;
  v9 = v7;
  LOBYTE(v6) = static _CFObject.== infix(_:_:)();

  return v6 & 1;
}

uint64_t ImportSession.description.getter()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO13ImportSessionCmMd, &_s9RealityIO13ImportSessionCmMR);
  v3 = String.init<A>(describing:)();
  v4 = *(v0[2] + 16);
  v5 = RIOPxrUsdStageCopyUSDA();
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  MEMORY[0x26670F080](v6, v8);

  MEMORY[0x26670F080](8236, 0xE200000000000000);

  MEMORY[0x26670F080](0x203A656761747328, 0xE800000000000000);

  _StringGuts.grow(_:)(29);

  v9 = v1[3];
  v10 = dispatch thunk of Entity.name.getter();
  MEMORY[0x26670F080](v10);

  MEMORY[0x26670F080](10537, 0xE200000000000000);

  MEMORY[0x26670F080](0xD000000000000019, 0x8000000261996860);

  return v3;
}

id ImportSession.prim(of:)()
{
  v1 = v0;
  v2 = type metadata accessor for __EntityRef();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of Entity.__coreEntity.getter();
  __AssetRef.__as<A>(_:)();
  (*(v3 + 8))(v6, v2);
  result = MEMORY[0x266710BD0](v13[1]);
  if (result)
  {
    v8 = result;
    v9 = *(v1 + 16);
    v10 = RIOPxrTfTokenEmpty();
    v11 = *(v9 + 16);
    PrimIfNeeded = RIOPxrUsdStageCreatePrimIfNeeded();

    type metadata accessor for Prim();
    result = swift_allocObject();
    *(result + 2) = PrimIfNeeded;
  }

  return result;
}

uint64_t ImportSession.primPath(of:)()
{
  v0 = type metadata accessor for __EntityRef();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of Entity.__coreEntity.getter();
  __AssetRef.__as<A>(_:)();
  (*(v1 + 8))(v4, v0);
  v5 = MEMORY[0x266710BD0](v10[1]);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = RIOPxrSdfPathCopyString();
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v8;
}

uint64_t static ImportSession.allComponents.getter()
{
  v0 = swift_allocObject();
  *(v0 + 16) = MEMORY[0x277D84F98];
  v1 = (v0 + 16);
  v5[4] = partial apply for closure #1 in static ImportSession.allComponents.getter;
  v5[5] = v0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> ();
  v5[3] = &block_descriptor_30_0;
  v2 = _Block_copy(v5);

  REGlobalTypeRegistryWithReadLock();
  _Block_release(v2);
  swift_beginAccess();
  v3 = *v1;

  return v3;
}

uint64_t closure #1 in static ImportSession.allComponents.getter(uint64_t a1, uint64_t a2)
{
  v28 = *MEMORY[0x277D85DE8];
  result = RETypeRegistryGetTypeInfoByTypeName();
  if (result)
  {
    result = RETypeInfoGetSubClassCount();
    if (result < 0)
    {
      goto LABEL_24;
    }

    if (result)
    {
      v4 = 0;
      v5 = result - 1;
      while (1)
      {
        RETypeInfoGetSubClass();
        result = REComponentClassFromTypeInfo();
        if (result)
        {
          v6 = result;
          result = RETypeInfoGetName();
          if (result)
          {
            String.init(cString:)();
            ID = RETypeInfoGetID();
            v9 = v8;
            lazy protocol witness table accessor for type String and conformance String();
            v10 = StringProtocol.contains<A>(_:)();

            if ((v10 & 1) == 0)
            {
              swift_beginAccess();
              v11 = *(a2 + 16);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v13 = *(a2 + 16);
              *(a2 + 16) = 0x8000000000000000;
              v14 = specialized __RawDictionaryStorage.find<A>(_:)(v6);
              v16 = v13[2];
              v17 = (v15 & 1) == 0;
              v18 = __OFADD__(v16, v17);
              v19 = v16 + v17;
              if (v18)
              {
                __break(1u);
LABEL_23:
                __break(1u);
LABEL_24:
                __break(1u);
              }

              v20 = v15;
              if (v13[3] >= v19)
              {
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  v26 = v14;
                  specialized _NativeDictionary.copy()();
                  v14 = v26;
                }
              }

              else
              {
                specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v19, isUniquelyReferenced_nonNull_native);
                v14 = specialized __RawDictionaryStorage.find<A>(_:)(v6);
                if ((v20 & 1) != (v21 & 1))
                {
                  type metadata accessor for REComponentClassPtr(0);
                  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
                  __break(1u);
                  return result;
                }
              }

              if (v20)
              {
                v22 = (v13[7] + 16 * v14);
                *v22 = ID;
                v22[1] = v9;
              }

              else
              {
                v13[(v14 >> 6) + 8] |= 1 << v14;
                *(v13[6] + 8 * v14) = v6;
                v23 = (v13[7] + 16 * v14);
                *v23 = ID;
                v23[1] = v9;
                v24 = v13[2];
                v18 = __OFADD__(v24, 1);
                v25 = v24 + 1;
                if (v18)
                {
                  goto LABEL_23;
                }

                v13[2] = v25;
              }

              *(a2 + 16) = v13;
              result = swift_endAccess();
            }
          }
        }

        if (v5 == v4)
        {
          break;
        }

        ++v4;
      }
    }
  }

  v27 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> ()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t one-time initialization function for realityKitComponentClasses()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo19REComponentClassPtraGMd, &_ss23_ContiguousArrayStorageCySo19REComponentClassPtraGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_26198E4A0;
  *(v0 + 32) = REAnchoringComponentGetComponentType();
  *(v0 + 40) = REBallSocketJointComponentGetComponentType();
  *(v0 + 48) = REBodyTrackingComponentGetComponentType();
  *(v0 + 56) = REColliderComponentGetComponentType();
  *(v0 + 64) = REDebugMeshComponentGetComponentType();
  *(v0 + 72) = REDirectionalLightComponentGetComponentType();
  *(v0 + 80) = REHingeJointComponentGetComponentType();
  *(v0 + 88) = REMeshComponentGetComponentType();
  *(v0 + 96) = REMeshSortingComponentGetComponentType();
  *(v0 + 104) = REPerspectiveCameraComponentGetComponentType();
  *(v0 + 112) = RERigidBodyComponentGetComponentType();
  *(v0 + 120) = REMotionStateComponentGetComponentType();
  *(v0 + 128) = REPinComponentGetComponentType();
  *(v0 + 136) = REPointLightComponentGetComponentType();
  *(v0 + 144) = RESceneUnderstandingComponentGetComponentType();
  *(v0 + 152) = RESpotLightComponentGetComponentType();
  *(v0 + 160) = RENetworkComponentGetComponentType();
  *(v0 + 168) = RETransformComponentGetComponentType();
  *(v0 + 176) = REImageBasedLightComponentGetComponentType();
  *(v0 + 184) = REImageBasedLightReceiverComponentGetComponentType();
  result = REVirtualEnvironmentProbeComponentGetComponentType();
  *(v0 + 192) = result;
  static ImportSession.realityKitComponentClasses = v0;
  return result;
}

uint64_t static ImportSession.realityKitComponentClasses.getter()
{
  if (one-time initialization token for realityKitComponentClasses != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static ImportSession.realityKitComponentClasses.setter(void *a1)
{
  if (one-time initialization token for realityKitComponentClasses != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static ImportSession.realityKitComponentClasses = a1;
}

uint64_t (*static ImportSession.realityKitComponentClasses.modify())()
{
  if (one-time initialization token for realityKitComponentClasses != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return CompileSession.includeUnusedMaterials.modify;
}

uint64_t static ImportSession.realityKitComponents.getter(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, unint64_t, uint64_t))
{
  v6 = swift_allocObject();
  *(v6 + 16) = MEMORY[0x277D84F98];
  v7 = (v6 + 16);
  aBlock[4] = a1;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> ();
  aBlock[3] = a2;
  v8 = _Block_copy(aBlock);

  REGlobalTypeRegistryWithReadLock();
  _Block_release(v8);
  swift_beginAccess();
  v9 = *v7;

  v10 = specialized _NativeDictionary.filter(_:)(v9, a3, a3);

  return v10;
}

uint64_t static ImportSession.getRealityKitComponentName(componentClass:)()
{
  REComponentClassGetName();

  return String.init(cString:)();
}

uint64_t static ImportSession.getSwiftRealityKitComponentName(reComponentName:)(uint64_t a1, uint64_t a2)
{
  v4 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SaySSGTt0g5Tf4g_n(&outlined read-only object #7 of static ImportSession.getSwiftRealityKitComponentName(reComponentName:));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SaySSGtMd, &_sSS_SaySSGtMR);
  swift_arrayDestroy();
  if (*(v4 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 8 * v5);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  return v7;
}

uint64_t ImportSession.TextureOperatorContainer.keys.getter()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSs13OpaquePointerVGMd, &_ss18_DictionaryStorageCySSs13OpaquePointerVGMR);
  result = static _DictionaryStorage.copy(original:)();
  v3 = result;
  v4 = 0;
  v5 = 1 << *(v1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v1 + 64);
  v8 = (v5 + 63) >> 6;
  v9 = result + 64;
  if (v7)
  {
    while (1)
    {
      v10 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_10:
      v13 = v10 | (v4 << 6);
      v14 = *(*(*(v1 + 56) + 8 * v13) + 16);
      if (!v14)
      {
        break;
      }

      v15 = *(*(v1 + 48) + 16 * v13);
      result = *(*(v1 + 48) + 16 * v13 + 8);
      *(v9 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v16 = (v3[6] + 16 * v13);
      *v16 = v15;
      v16[1] = result;
      *(v3[7] + 8 * v13) = v14;
      v17 = v3[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_16;
      }

      v3[2] = v19;

      if (!v7)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v11 = v4;
    while (1)
    {
      v4 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return v3;
      }

      v12 = *(v1 + 64 + 8 * v4);
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v7 = (v12 - 1) & v12;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void *ImportSession.TextureOperatorContainer.makeIterator()()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSs13OpaquePointerVGMd, &_ss18_DictionaryStorageCySSs13OpaquePointerVGMR);
  result = static _DictionaryStorage.copy(original:)();
  v3 = result;
  v4 = 0;
  v5 = 1 << *(v1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v1 + 64);
  v8 = (v5 + 63) >> 6;
  v9 = result + 8;
  if (v7)
  {
    while (1)
    {
      v10 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_10:
      v13 = v10 | (v4 << 6);
      v14 = *(*(*(v1 + 56) + 8 * v13) + 16);
      if (!v14)
      {
        break;
      }

      v15 = *(*(v1 + 48) + 16 * v13);
      result = *(*(v1 + 48) + 16 * v13 + 8);
      *(v9 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v16 = (v3[6] + 16 * v13);
      *v16 = v15;
      v16[1] = result;
      *(v3[7] + 8 * v13) = v14;
      v17 = v3[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
LABEL_19:
        __break(1u);
        break;
      }

      v3[2] = v19;

      if (!v7)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:
    v11 = v4;
    while (1)
    {
      v4 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
        goto LABEL_19;
      }

      if (v4 >= v8)
      {
        break;
      }

      v12 = *(v1 + 64 + 8 * v4);
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v7 = (v12 - 1) & v12;
        goto LABEL_10;
      }
    }

    v20 = -1 << *(v3 + 32);
    v21 = ~v20;
    v22 = -v20;
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    else
    {
      v23 = -1;
    }

    v24 = v23 & v3[8];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12_IteratorBoxCySD0A0VySSs13OpaquePointerV_GGMd, &_ss12_IteratorBoxCySD0A0VySSs13OpaquePointerV_GGMR);
    result = swift_allocObject();
    result[2] = v3;
    result[3] = v9;
    result[4] = v21;
    result[5] = 0;
    result[6] = v24;
  }

  return result;
}

uint64_t ImportSession.TextureOperatorContainer.subscript.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  if (*(v3 + 16) && (v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v5 & 1) != 0))
  {
    return *(*(*(v3 + 56) + 8 * v4) + 16);
  }

  else
  {
    return 0;
  }
}

void ImportSession.TextureOperatorContainer.setDownsample(factor:for:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 24);
  if (*(v5 + 16))
  {
    v6 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if (v7)
    {
      v8 = *(*(v5 + 56) + 8 * v6);
      v9 = v8 + 56;
      v10 = 1 << *(v8 + 32);
      v11 = -1;
      if (v10 < 64)
      {
        v11 = ~(-1 << v10);
      }

      v12 = v11 & *(v8 + 56);
      v13 = (v10 + 63) >> 6;
      v34 = v8;

      v14 = 0;
      while (v12)
      {
LABEL_13:
        v19 = (*(v34 + 48) + ((v14 << 10) | (16 * __clz(__rbit64(v12)))));
        v20 = *v19;
        v21 = v19[1];
        String.utf8CString.getter();
        v22 = RIOPxrSdfPathCreateFromCString();

        v23 = RIOPxrTfTokenEmpty();
        v24 = *(a4 + 16);
        PrimIfNeeded = RIOPxrUsdStageCreatePrimIfNeeded();

        if (String.count.getter() < 1)
        {
          v26 = RIOPxrTfTokenEmpty();
        }

        else
        {
          v26 = RIOPxrTfTokenCreateWithCString();
        }

        v27 = v26;
        if (!RIOPxrUsdPrimHasAttribute())
        {

          lazy protocol witness table accessor for type Object.Error and conformance Object.Error();
          swift_willThrowTypedImpl();
          swift_allocError();
          *v33 = 0;

          return;
        }

        v28 = RIOPxrUsdPrimCopyAttribute();

        type metadata accessor for AnyAttribute();
        v29 = swift_allocObject();
        v29[2] = v28;

        if (String.count.getter() <= 0)
        {
          v30 = RIOPxrTfTokenEmpty();
        }

        else
        {
          v30 = RIOPxrTfTokenCreateWithCString();
        }

        v31 = v30;
        v36 = PrimIfNeeded;
        v32 = v29[2];
        if (String.count.getter() < 1)
        {
          v15 = RIOPxrTfTokenEmpty();
        }

        else
        {
          v15 = RIOPxrTfTokenCreateWithCString();
        }

        v16 = v15;
        v12 &= v12 - 1;
        v17 = RIOPxrVtValueCreateWithInt32();
        RIOPxrUsdObjectMetadataSetValue();

        outlined consume of Result<AnyAttribute, Object.Error>(v29, 0);
        outlined consume of Result<AnyAttribute, Object.Error>(v29, 0);
      }

      while (1)
      {
        v18 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v18 >= v13)
        {

          return;
        }

        v12 = *(v9 + 8 * v18);
        ++v14;
        if (v12)
        {
          v14 = v18;
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }
}

uint64_t ImportSession.TextureOperatorContainer.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t protocol witness for Sequence.makeIterator() in conformance ImportSession.TextureOperatorContainer@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = ImportSession.TextureOperatorContainer.makeIterator()();

  *a1 = v4;
  return result;
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance ImportSession.TextureOperatorContainer()
{
  v1 = *v0;
  v2 = specialized _copySequenceToContiguousArray<A>(_:)();

  return v2;
}

uint64_t specialized Sequence._copyContents(initializing:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = ImportSession.TextureOperatorContainer.makeIterator()();

  v8 = 0;
  if (!a2 || !a3)
  {
LABEL_9:
    *a1 = v6;
    return v8;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    dispatch thunk of _AnyIteratorBoxBase.next()();
    v9 = v12;
    v8 = 0;
    if (v12)
    {
      v10 = v11;
      while (1)
      {
        *a2 = v10;
        *(a2 + 8) = v9;
        if (a3 - 1 == v8)
        {
          break;
        }

        dispatch thunk of _AnyIteratorBoxBase.next()();
        v10 = v11;
        v9 = v12;
        ++v8;
        a2 += 24;
      }

      v8 = a3;
    }

    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t ImportSession.gatherTexturesAsImportOperations(onlyUsedTextures:)()
{
  v1 = swift_allocObject();
  v2 = MEMORY[0x277D84F90];
  *(v1 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_9RealityIO21RESharedObjectWrapperCys13OpaquePointerVGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ShySSGTt0g5Tf4g_n(v2);
  v4 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
  swift_beginAccess();
  v5 = *(v0 + v4);
  type metadata accessor for __ServiceLocator();
  v6 = v5;
  static __ServiceLocator.shared.getter();
  dispatch thunk of __ServiceLocator.coreServiceLocator.getter();

  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  *(v7 + 24) = v1;
  aBlock[4] = partial apply for closure #1 in ImportSession.gatherTexturesAsImportOperations(onlyUsedTextures:);
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer?, @unowned UnsafePointer<Int8>, @unowned UnsafePointer<Int8>) -> ();
  aBlock[3] = &block_descriptor_59_0;
  v8 = _Block_copy(aBlock);

  RIOImportSessionGatherTextureInfoWithOptionallyUnusedTextures();
  _Block_release(v8);

  swift_beginAccess();
  v9 = *(v1 + 16);
  swift_beginAccess();
  v10 = *(v3 + 16);

  type metadata accessor for ImportSession.TextureOperatorContainer();
  result = swift_allocObject();
  *(result + 16) = v9;
  *(result + 24) = v10;
  return result;
}

void closure #1 in ImportSession.gatherTexturesAsImportOperations(onlyUsedTextures:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = String.init(cString:)();
  v10 = v9;
  v11 = String.init(cString:)();
  v13 = v12;
  swift_beginAccess();
  v14 = *(a4 + 16);
  if (*(v14 + 16) && (v15 = specialized __RawDictionaryStorage.find<A>(_:)(v11, v13), (v16 & 1) != 0))
  {
    v31 = *(*(v14 + 56) + 8 * v15);
    swift_endAccess();

    specialized Set._Variant.insert(_:)(&v30, v8, v10);

    v17 = v31;
    swift_beginAccess();

    v18 = *(a4 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = *(a4 + 16);
    *(a4 + 16) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v17, v11, v13, isUniquelyReferenced_nonNull_native);

    v20 = v29;
  }

  else
  {
    swift_endAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2619891C0;
    *(inited + 32) = v8;
    v22 = inited + 32;
    *(inited + 40) = v10;
    v23 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of String(v22);
    swift_beginAccess();

    v24 = *(a4 + 16);
    v25 = swift_isUniquelyReferenced_nonNull_native();
    v31 = *(a4 + 16);
    *(a4 + 16) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v23, v11, v13, v25);

    v20 = v31;
  }

  *(a4 + 16) = v20;
  swift_endAccess();
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO21RESharedObjectWrapperCys13OpaquePointerVGMd, &_s9RealityIO21RESharedObjectWrapperCys13OpaquePointerVGMR);
    v26 = swift_allocObject();
    *(v26 + 16) = a1;
    RERetain();
    swift_beginAccess();
    v27 = *(a5 + 16);
    v28 = swift_isUniquelyReferenced_nonNull_native();
    v31 = *(a5 + 16);
    *(a5 + 16) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v26, v11, v13, v28);

    *(a5 + 16) = v31;
    swift_endAccess();
  }

  else
  {
  }
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned OpaquePointer?, @unowned UnsafePointer<Int8>, @unowned UnsafePointer<Int8>) -> ()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v8(a2, a3, a4);
}

uint64_t ImportSession.MeshAssetEstimate.approximateFootprint.getter()
{
  v1 = v0[1];
  v2 = v0[3];
  v3 = v1 * v2;
  if ((v1 * v2) >> 64 != (v1 * v2) >> 63)
  {
    __break(1u);
    goto LABEL_8;
  }

  if ((v3 - 0x2000000000000000) >> 62 != 3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v4 = v0[2];
  v5 = (v4 * 3) >> 64;
  v6 = 3 * v4;
  if (v5 != v6 >> 63)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v6 - 0x2000000000000000) >> 62 != 3)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = 4 * v3;
  result = v7 + 4 * v6;
  if (__OFADD__(v7, 4 * v6))
  {
LABEL_11:
    __break(1u);
  }

  return result;
}

void *static ImportSession.MeshAssetEstimate.+ infix(_:_:)@<X0>(void *result@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  if (__OFADD__(*result, *a2))
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = a2[1];
  v4 = result[1];
  v5 = __OFADD__(v4, v3);
  v6 = v4 + v3;
  if (v5)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = result[2];
  v8 = a2[2];
  v5 = __OFADD__(v7, v8);
  v9 = v7 + v8;
  if (v5)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v10 = result[3];
  if (a2[3] > v10)
  {
    v10 = a2[3];
  }

  *a3 = *result + *a2;
  a3[1] = v6;
  a3[2] = v9;
  a3[3] = v10;
  return result;
}

double static ImportSession.MeshAssetEstimate.zero.getter@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

void *ImportSession.MeshAssetEstimates.makeIterator()()
{
  v1 = *v0;
  v2 = -1 << *(*v0 + 32);
  v3 = *v0 + 64;
  v4 = ~v2;
  v5 = -v2;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(*v0 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12_IteratorBoxCySD0A0VySS9RealityIO13ImportSessionC17MeshAssetEstimateV_GGMd, &_ss12_IteratorBoxCySD0A0VySS9RealityIO13ImportSessionC17MeshAssetEstimateV_GGMR);
  v8 = swift_allocObject();
  v8[2] = v1;
  v8[3] = v3;
  v8[4] = v4;
  v8[5] = 0;
  v8[6] = v7;

  return v8;
}

double ImportSession.MeshAssetEstimates.subscript.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *v3;
  if (*(v5 + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v7 & 1) != 0))
  {
    v8 = (*(v5 + 56) + 32 * v6);
    v9 = *v8;
    v10 = v8[1];
    *a3 = *v8;
    *(a3 + 16) = v10;
    *(a3 + 32) = 0;
  }

  else
  {
    *&v9 = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 1;
  }

  return *&v9;
}

uint64_t protocol witness for Sequence.makeIterator() in conformance ImportSession.MeshAssetEstimates@<X0>(void *a1@<X8>)
{
  v3 = ImportSession.MeshAssetEstimates.makeIterator()();
  v4 = *v1;

  *a1 = v3;
  return result;
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance ImportSession.MeshAssetEstimates()
{
  v1 = specialized _copySequenceToContiguousArray<A>(_:)(*v0);

  return v1;
}

RealityIO::ImportSession::MeshAssetEstimates __swiftcall ImportSession.gatherEntitiesWithMeshAssetEstimates()()
{
  v2 = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_9RealityIO13ImportSessionC17MeshAssetEstimateVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v4 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
  swift_beginAccess();
  v5 = *(v1 + v4);
  aBlock[4] = partial apply for closure #1 in ImportSession.gatherEntitiesWithMeshAssetEstimates();
  aBlock[5] = v3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned UnsafePointer<Int8>, @unowned Int, @unowned Int, @unowned Int, @unowned Int) -> ();
  aBlock[3] = &block_descriptor_65;
  v6 = _Block_copy(aBlock);
  v7 = v5;

  RIOImportSessionGatherMeshEstimates();
  _Block_release(v6);

  swift_beginAccess();
  v8 = *(v3 + 16);

  *v2 = v8;
  return result;
}

uint64_t closure #1 in ImportSession.gatherEntitiesWithMeshAssetEstimates()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = String.init(cString:)();
  v13 = v12;
  swift_beginAccess();
  v14 = *(a6 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(a6 + 16);
  *(a6 + 16) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a2, a3, a4, a5, v11, v13, isUniquelyReferenced_nonNull_native);

  *(a6 + 16) = v17;
  return swift_endAccess();
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned UnsafePointer<Int8>, @unowned Int, @unowned Int, @unowned Int, @unowned Int) -> ()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(a1 + 32);
  v11 = *(a1 + 40);

  v12(a2, a3, a4, a5, a6);
}

uint64_t ImportSession.EvaluationFault.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v44 = a1;
  v3 = type metadata accessor for __REAssetBundle.ExportOptions.PlatformRequirement();
  v42 = *(v3 - 8);
  v4 = *(v42 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for __REAssetBundle.ExportOptions.PlatformOS();
  v43 = *(v7 - 8);
  v8 = *(v43 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for __REAssetBundle.ExportOptions.DeploymentTarget();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ImportSession.EvaluationFault(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = (&v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of ImportSession.EvaluationFault(v2, v19);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    v24 = v43;
    v40 = v6;
    v41 = v3;
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        v31 = v19;
        v32 = v11;
        (*(v12 + 32))(v15, v31, v11);
        MEMORY[0x26670FA20](3);
        __REAssetBundle.ExportOptions.DeploymentTarget.platform.getter();
        _sSo10CFErrorRefaABs5Error10FoundationWlTm_0(&lazy protocol witness table cache variable for type __REAssetBundle.ExportOptions.PlatformOS and conformance __REAssetBundle.ExportOptions.PlatformOS, MEMORY[0x277CDACC0]);
        dispatch thunk of Hashable.hash(into:)();
        (*(v24 + 8))(v10, v7);
        v33 = __REAssetBundle.ExportOptions.DeploymentTarget.version.getter();
        Hasher._combine(_:)(v33);
        v34 = __REAssetBundle.ExportOptions.DeploymentTarget.version.getter();
        Hasher._combine(_:)(HIDWORD(v34));
        __REAssetBundle.ExportOptions.DeploymentTarget.version.getter();
        Hasher._combine(_:)(v35);
        v36 = v40;
        __REAssetBundle.ExportOptions.DeploymentTarget.platformRequirement.getter();
        _sSo10CFErrorRefaABs5Error10FoundationWlTm_0(&lazy protocol witness table cache variable for type __REAssetBundle.ExportOptions.PlatformRequirement and conformance __REAssetBundle.ExportOptions.PlatformRequirement, MEMORY[0x277CDACE0]);
        v37 = v41;
        dispatch thunk of Hashable.hash(into:)();
        (*(v42 + 8))(v36, v37);
        return (*(v12 + 8))(v15, v32);
      }

      v25 = *v19;
      v26 = v19[1];
      v23 = 2;
    }

    else
    {
      v29 = *v19;
      v30 = v19[1];
      v23 = 1;
    }

    goto LABEL_13;
  }

  if (EnumCaseMultiPayload <= 4)
  {
    v21 = *v19;
    v22 = v19[1];
    if (EnumCaseMultiPayload == 3)
    {
      v23 = 4;
    }

    else
    {
      v23 = 5;
    }

    goto LABEL_13;
  }

  if (EnumCaseMultiPayload == 5)
  {
    v27 = *v19;
    v28 = v19[1];
    v23 = 6;
LABEL_13:
    MEMORY[0x26670FA20](v23);
    String.hash(into:)();
  }

  return MEMORY[0x26670FA20](0);
}

Swift::Int ImportSession.EvaluationFault.hashValue.getter()
{
  Hasher.init(_seed:)();
  ImportSession.EvaluationFault.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ImportSession.EvaluationFault()
{
  Hasher.init(_seed:)();
  ImportSession.EvaluationFault.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ImportSession.EvaluationFault()
{
  Hasher.init(_seed:)();
  ImportSession.EvaluationFault.hash(into:)(v1);
  return Hasher._finalize()();
}

uint64_t ImportSession.getEvaluationFaults()()
{
  v1 = type metadata accessor for __REAssetBundle.ExportOptions.DeploymentTarget();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v18[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMd, &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v18[-v8];
  v10 = swift_allocObject();
  *(v10 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_Say9RealityIO13ImportSessionC15EvaluationFaultOGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v11 = OBJC_IVAR____TtC9RealityIO13ImportSession_deploymentTarget;
  swift_beginAccess();
  outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v0 + v11, v9, &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMd, &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMR);
  if ((*(v2 + 48))(v9, 1, v1) != 1)
  {
    (*(v2 + 32))(v5, v9, v1);
    closure #1 in ImportSession.getEvaluationFaults()(v5, v10, aBlock);
    (*(v2 + 8))(v5, v1);
  }

  v12 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
  swift_beginAccess();
  v13 = *(v0 + v12);
  aBlock[4] = partial apply for closure #2 in ImportSession.getEvaluationFaults();
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned UnsafePointer<Int8>, @unowned RIOImportSessionFaultType, @unowned UnsafePointer<Int8>) -> ();
  aBlock[3] = &block_descriptor_71_0;
  v14 = _Block_copy(aBlock);
  v15 = v13;

  RIOImportSessionGatherFaultRecords();
  _Block_release(v14);

  swift_beginAccess();
  v16 = *(v10 + 16);

  return v16;
}

uint64_t addFault #1 (_:_:) in ImportSession.getEvaluationFaults()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v8 = *(a4 + 16);
  if (*(v8 + 16) && (v9 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);
    swift_endAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9RealityIO13ImportSessionC15EvaluationFaultOGMd, &_ss23_ContiguousArrayStorageCy9RealityIO13ImportSessionC15EvaluationFaultOGMR);
    v12 = *(type metadata accessor for ImportSession.EvaluationFault(0) - 8);
    v13 = *(v12 + 72);
    v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_2619891C0;
    outlined init with copy of ImportSession.EvaluationFault(a3, v15 + v14);

    specialized Array.append<A>(contentsOf:)(v15);
    swift_beginAccess();
    v16 = *(a4 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *(a4 + 16);
    *(a4 + 16) = 0x8000000000000000;
    v18 = v11;
  }

  else
  {
    swift_endAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9RealityIO13ImportSessionC15EvaluationFaultOGMd, &_ss23_ContiguousArrayStorageCy9RealityIO13ImportSessionC15EvaluationFaultOGMR);
    v19 = *(type metadata accessor for ImportSession.EvaluationFault(0) - 8);
    v20 = *(v19 + 72);
    v21 = (*(v19 + 80) + 32) & ~*(v19 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_2619891C0;
    outlined init with copy of ImportSession.EvaluationFault(a3, v22 + v21);
    swift_beginAccess();

    v23 = *(a4 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *(a4 + 16);
    *(a4 + 16) = 0x8000000000000000;
    v18 = v22;
  }

  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v18, a1, a2, isUniquelyReferenced_nonNull_native);

  *(a4 + 16) = v25;
  return swift_endAccess();
}

uint64_t closure #1 in ImportSession.getEvaluationFaults()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v20 = a2;
  v22 = a3;
  v4 = type metadata accessor for ImportSession.EvaluationFault(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for __REAssetBundle.ExportOptions.PlatformOS();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __REAssetBundle.ExportOptions.DeploymentTarget.platform.getter();
  __REAssetBundle.ExportOptions.PlatformOS.rawValue.getter();
  (*(v9 + 8))(v12, v8);
  LODWORD(v8) = __REAssetBundle.ExportOptions.DeploymentTarget.version.getter();
  v13 = __REAssetBundle.ExportOptions.DeploymentTarget.version.getter() >> 32;
  __REAssetBundle.ExportOptions.DeploymentTarget.version.getter();
  *&v14 = __PAIR64__(v13, v8);
  *(&v14 + 1) = v15;
  v21 = v14;
  String.utf8CString.getter();

  VersionFromDeploymentTarget = RERealityFileWriterGetVersionFromDeploymentTarget();

  if (!VersionFromDeploymentTarget)
  {
    v18 = type metadata accessor for __REAssetBundle.ExportOptions.DeploymentTarget();
    (*(*(v18 - 8) + 16))(v7, a1, v18);
    swift_storeEnumTagMultiPayload();
    addFault #1 (_:_:) in ImportSession.getEvaluationFaults()(0, 0xE000000000000000, v7, v20);
    result = outlined destroy of ImportSession.EvaluationFault(v7);
  }

  *v22 = VersionFromDeploymentTarget;
  return result;
}

uint64_t closure #2 in ImportSession.getEvaluationFaults()(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for ImportSession.EvaluationFault(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (&v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = String.init(cString:)();
  v12 = v11;
  if (a2)
  {
    *v9 = String.init(cString:)();
    v9[1] = v13;
  }

  swift_storeEnumTagMultiPayload();
  addFault #1 (_:_:) in ImportSession.getEvaluationFaults()(v10, v12, v9, a4);

  return outlined destroy of ImportSession.EvaluationFault(v9);
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned UnsafePointer<Int8>, @unowned RIOImportSessionFaultType, @unowned UnsafePointer<Int8>) -> ()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v8(a2, a3, a4);
}

void ImportSession.getCompatibilityFaults(for:)(uint64_t a1)
{
  v1 = ImportSession.getCompatibilityFaultsByPrimPath(for:)(a1);
  v2 = v1;
  v3 = v1 + 64;
  v4 = 1 << *(v1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v1 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  for (i = MEMORY[0x277D84FA0]; v6; i = v14)
  {
    v10 = v8;
LABEL_9:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = *(*(v2 + 56) + ((v10 << 9) | (8 * v11)));

    specialized Set.union<A>(_:)(v13, i);
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      return;
    }

    v6 = *(v3 + 8 * v10);
    ++v8;
    if (v6)
    {
      v8 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t addFault #1 (_:_:) in ImportSession.getCompatibilityFaultsByPrimPath(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for ImportSession.EvaluationFault(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v30 - v14;
  swift_beginAccess();
  v16 = *(a4 + 16);
  if (*(v16 + 16) && (v17 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v18 & 1) != 0))
  {
    v32 = *(*(v16 + 56) + 8 * v17);
    swift_endAccess();
    outlined init with copy of ImportSession.EvaluationFault(a3, v12);

    specialized Set._Variant.insert(_:)(v15, v12);
    outlined destroy of ImportSession.EvaluationFault(v15);
    v19 = v32;
    swift_beginAccess();

    v20 = *(a4 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = *(a4 + 16);
    *(a4 + 16) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v19, a1, a2, isUniquelyReferenced_nonNull_native);

    v22 = v31;
  }

  else
  {
    swift_endAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9RealityIO13ImportSessionC15EvaluationFaultOGMd, &_ss23_ContiguousArrayStorageCy9RealityIO13ImportSessionC15EvaluationFaultOGMR);
    v23 = *(v9 + 72);
    v24 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_2619891C0;
    outlined init with copy of ImportSession.EvaluationFault(a3, v25 + v24);
    v26 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC9RealityIO13ImportSessionC15EvaluationFaultO_Tt0g5Tf4g_n(v25);
    swift_setDeallocating();
    outlined destroy of ImportSession.EvaluationFault(v25 + v24);
    swift_deallocClassInstance();
    swift_beginAccess();

    v27 = *(a4 + 16);
    v28 = swift_isUniquelyReferenced_nonNull_native();
    v32 = *(a4 + 16);
    *(a4 + 16) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v26, a1, a2, v28);

    v22 = v32;
  }

  *(a4 + 16) = v22;
  return swift_endAccess();
}

uint64_t closure #1 in ImportSession.getCompatibilityFaultsByPrimPath(for:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for ImportSession.EvaluationFault(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (&v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = String.init(cString:)();
  v12 = v11;
  if (a2 == 4 || a2 == 3)
  {
    *v9 = String.init(cString:)();
    v9[1] = v13;
    swift_storeEnumTagMultiPayload();
    addFault #1 (_:_:) in ImportSession.getCompatibilityFaultsByPrimPath(for:)(v10, v12, v9, a4);

    return outlined destroy of ImportSession.EvaluationFault(v9);
  }

  else
  {
  }
}

uint64_t __REAssetBundle.ExportOptions.DeploymentTarget.hash(into:)()
{
  v0 = type metadata accessor for __REAssetBundle.ExportOptions.PlatformRequirement();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for __REAssetBundle.ExportOptions.PlatformOS();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __REAssetBundle.ExportOptions.DeploymentTarget.platform.getter();
  _sSo10CFErrorRefaABs5Error10FoundationWlTm_0(&lazy protocol witness table cache variable for type __REAssetBundle.ExportOptions.PlatformOS and conformance __REAssetBundle.ExportOptions.PlatformOS, MEMORY[0x277CDACC0]);
  dispatch thunk of Hashable.hash(into:)();
  (*(v6 + 8))(v9, v5);
  v10 = __REAssetBundle.ExportOptions.DeploymentTarget.version.getter();
  Hasher._combine(_:)(v10);
  v11 = __REAssetBundle.ExportOptions.DeploymentTarget.version.getter();
  Hasher._combine(_:)(HIDWORD(v11));
  __REAssetBundle.ExportOptions.DeploymentTarget.version.getter();
  Hasher._combine(_:)(v12);
  __REAssetBundle.ExportOptions.DeploymentTarget.platformRequirement.getter();
  _sSo10CFErrorRefaABs5Error10FoundationWlTm_0(&lazy protocol witness table cache variable for type __REAssetBundle.ExportOptions.PlatformRequirement and conformance __REAssetBundle.ExportOptions.PlatformRequirement, MEMORY[0x277CDACE0]);
  dispatch thunk of Hashable.hash(into:)();
  return (*(v1 + 8))(v4, v0);
}

Swift::Int __REAssetBundle.ExportOptions.DeploymentTarget.hashValue.getter()
{
  v0 = type metadata accessor for __REAssetBundle.ExportOptions.PlatformRequirement();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for __REAssetBundle.ExportOptions.PlatformOS();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  Hasher.init(_seed:)();
  __REAssetBundle.ExportOptions.DeploymentTarget.platform.getter();
  _sSo10CFErrorRefaABs5Error10FoundationWlTm_0(&lazy protocol witness table cache variable for type __REAssetBundle.ExportOptions.PlatformOS and conformance __REAssetBundle.ExportOptions.PlatformOS, MEMORY[0x277CDACC0]);
  dispatch thunk of Hashable.hash(into:)();
  (*(v6 + 8))(v9, v5);
  v10 = __REAssetBundle.ExportOptions.DeploymentTarget.version.getter();
  Hasher._combine(_:)(v10);
  v11 = __REAssetBundle.ExportOptions.DeploymentTarget.version.getter();
  Hasher._combine(_:)(HIDWORD(v11));
  __REAssetBundle.ExportOptions.DeploymentTarget.version.getter();
  Hasher._combine(_:)(v12);
  __REAssetBundle.ExportOptions.DeploymentTarget.platformRequirement.getter();
  _sSo10CFErrorRefaABs5Error10FoundationWlTm_0(&lazy protocol witness table cache variable for type __REAssetBundle.ExportOptions.PlatformRequirement and conformance __REAssetBundle.ExportOptions.PlatformRequirement, MEMORY[0x277CDACE0]);
  dispatch thunk of Hashable.hash(into:)();
  (*(v1 + 8))(v4, v0);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance __REAssetBundle.ExportOptions.DeploymentTarget()
{
  v0 = type metadata accessor for __REAssetBundle.ExportOptions.PlatformRequirement();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for __REAssetBundle.ExportOptions.PlatformOS();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __REAssetBundle.ExportOptions.DeploymentTarget.platform.getter();
  _sSo10CFErrorRefaABs5Error10FoundationWlTm_0(&lazy protocol witness table cache variable for type __REAssetBundle.ExportOptions.PlatformOS and conformance __REAssetBundle.ExportOptions.PlatformOS, MEMORY[0x277CDACC0]);
  dispatch thunk of Hashable.hash(into:)();
  (*(v6 + 8))(v9, v5);
  v10 = __REAssetBundle.ExportOptions.DeploymentTarget.version.getter();
  Hasher._combine(_:)(v10);
  v11 = __REAssetBundle.ExportOptions.DeploymentTarget.version.getter();
  Hasher._combine(_:)(HIDWORD(v11));
  __REAssetBundle.ExportOptions.DeploymentTarget.version.getter();
  Hasher._combine(_:)(v12);
  __REAssetBundle.ExportOptions.DeploymentTarget.platformRequirement.getter();
  _sSo10CFErrorRefaABs5Error10FoundationWlTm_0(&lazy protocol witness table cache variable for type __REAssetBundle.ExportOptions.PlatformRequirement and conformance __REAssetBundle.ExportOptions.PlatformRequirement, MEMORY[0x277CDACE0]);
  dispatch thunk of Hashable.hash(into:)();
  return (*(v1 + 8))(v4, v0);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance __REAssetBundle.ExportOptions.DeploymentTarget()
{
  v0 = type metadata accessor for __REAssetBundle.ExportOptions.PlatformRequirement();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for __REAssetBundle.ExportOptions.PlatformOS();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  Hasher.init(_seed:)();
  __REAssetBundle.ExportOptions.DeploymentTarget.platform.getter();
  _sSo10CFErrorRefaABs5Error10FoundationWlTm_0(&lazy protocol witness table cache variable for type __REAssetBundle.ExportOptions.PlatformOS and conformance __REAssetBundle.ExportOptions.PlatformOS, MEMORY[0x277CDACC0]);
  dispatch thunk of Hashable.hash(into:)();
  (*(v6 + 8))(v9, v5);
  v10 = __REAssetBundle.ExportOptions.DeploymentTarget.version.getter();
  Hasher._combine(_:)(v10);
  v11 = __REAssetBundle.ExportOptions.DeploymentTarget.version.getter();
  Hasher._combine(_:)(HIDWORD(v11));
  __REAssetBundle.ExportOptions.DeploymentTarget.version.getter();
  Hasher._combine(_:)(v12);
  __REAssetBundle.ExportOptions.DeploymentTarget.platformRequirement.getter();
  _sSo10CFErrorRefaABs5Error10FoundationWlTm_0(&lazy protocol witness table cache variable for type __REAssetBundle.ExportOptions.PlatformRequirement and conformance __REAssetBundle.ExportOptions.PlatformRequirement, MEMORY[0x277CDACE0]);
  dispatch thunk of Hashable.hash(into:)();
  (*(v1 + 8))(v4, v0);
  return Hasher._finalize()();
}

uint64_t static ImportSession.primPathMetadataKey.getter()
{
  RIOImportSessionPrimPathMetadataKey();

  return String.init(cString:)();
}

uint64_t static ImportSession.resolvedPathMetadataKey.getter()
{
  RIOImportSessionResolvedPathMetadataKey();

  return String.init(cString:)();
}

uint64_t static ImportSession.assetInfoMetadataKey.getter()
{
  RIOImportSessionAssetInfoMetadataKey();

  return String.init(cString:)();
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t outlined assign with take of __REAssetBundle.ExportOptions.DeploymentTarget?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMd, &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t specialized Dictionary._Variant.updateValue(_:forKey:)(uint64_t a1, void *a2)
{
  v4 = v2;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v10 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = v11;
  if (v9[3] < v15)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v15, isUniquelyReferenced_nonNull_native);
    v10 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v3 & 1) == (v16 & 1))
    {
      goto LABEL_6;
    }

    v10 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v19 = v10;
    specialized _NativeDictionary.copy()();
    v10 = v19;
    if (v3)
    {
      goto LABEL_7;
    }

LABEL_10:
    specialized _NativeDictionary._insert(at:key:value:)(v10, a2, a1, v9);
    v20 = a2;
    v18 = 0;
    goto LABEL_11;
  }

LABEL_6:
  if ((v3 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v17 = v9[7];
  v18 = *(v17 + 8 * v10);
  *(v17 + 8 * v10) = a1;
LABEL_11:
  *v4 = v9;
  return v18;
}

void (*specialized Dictionary._Variant.subscript.modify(uint64_t *a1, uint64_t a2))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x50uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6[8] = specialized Dictionary._Variant.asNative.modify(v6);
  v6[9] = specialized _NativeDictionary.subscript.modify(v6 + 4, a2, isUniquelyReferenced_nonNull_native);
  return Dictionary._Variant.subscript.modifyspecialized ;
}

void Dictionary._Variant.subscript.modifyspecialized (uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*specialized _NativeDictionary.subscript.modify(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1)
{
  v4 = v3;
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
  *(v8 + 8) = a2;
  *(v8 + 16) = v3;
  v10 = *v3;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  *(v9 + 32) = v12 & 1;
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
      goto LABEL_11;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a3 & 1);
    v20 = *v4;
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v17 & 1) == (v21 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v9 + 24) = v11;
  if (v17)
  {
    v22 = *(*(*v4 + 56) + 8 * v11);
  }

  else
  {
    v22 = 0;
  }

  *v9 = v22;
  return _NativeDictionary.subscript.modifyspecialized ;
}

void _NativeDictionary.subscript.modifyspecialized (uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 32);
  if (v2)
  {
    v4 = v1[3];
    v5 = *v1[2];
    if (v3)
    {
      *(v5[7] + 8 * v4) = v2;
    }

    else
    {
      v8 = v1[1];
      specialized _NativeDictionary._insert(at:key:value:)(v4, v8, v2, v5);
      v9 = v8;
    }
  }

  else if ((*a1)[4])
  {
    v6 = v1[3];
    v7 = *v1[2];
    outlined destroy of SceneDescriptionFoundations.Path(*(v7 + 48) + 8 * v6);
    specialized _NativeDictionary._delete(at:)(v6, v7);
  }

  v10 = *v1;

  free(v1);
}

uint64_t (*specialized Dictionary._Variant.asNative.modify(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return Dictionary._Variant.asNative.modifyspecialized ;
}

uint64_t specialized _NativeDictionary.filter(_:)(uint64_t a1, uint64_t (*a2)(char *, unint64_t, uint64_t), uint64_t (*a3)(void *, uint64_t, uint64_t))
{
  v5 = a1;
  v15[1] = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x28223BE20](a1);
    v9 = v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    result = a2(v9, v7, v5);
    if (v3)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v13 = swift_slowAlloc();
  v14 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVySo19REComponentClassPtraSo8RETypeIDaG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab11VKXEfU_So19ij8Ptra_So8L6IDaTG5ALxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyAiKIsgnndzo_Tf1nc_n02_suijvwlx15SbIgyyd_AbDSbs5z76_pIegnndzo_TR057_s9RealityIO13ImportSessionC20realityKitComponentsSDySo19ab7vw3D28X34GvgZSbAF_AHtXEfU_Tf4nnd_nTf3nnpf_nTf1nnc_nTm(v13, v7, v5, a3);
  result = MEMORY[0x266713AD0](v13, -1, -1);
  if (!v3)
  {
    result = v14;
  }

LABEL_4:
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t specialized closure #1 in _NativeDictionary.filter(_:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v21 = result;
  v4 = 0;
  v5 = 0;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
LABEL_4:
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = *(*(a3 + 48) + 8 * v14);
    if (one-time initialization token for realityKitComponentClasses != -1)
    {
      swift_once();
    }

    result = swift_beginAccess();
    v16 = *(static ImportSession.realityKitComponentClasses + 2);
    v17 = (static ImportSession.realityKitComponentClasses + 32);
    while (v16)
    {
      v18 = *v17++;
      --v16;
      if (v18 == v15)
      {
        *(v21 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
        if (__OFADD__(v4++, 1))
        {
          goto LABEL_21;
        }

        goto LABEL_4;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      return specialized _NativeDictionary.extractDictionary(using:count:)(v21, a2, v4, a3);
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

{
  v21 = result;
  v4 = 0;
  v5 = 0;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
LABEL_5:
  while (v9)
  {
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_12:
    v15 = v12 | (v5 << 6);
    v16 = *(*(a3 + 48) + 8 * v15);
    if (one-time initialization token for realityKitComponentClasses != -1)
    {
      swift_once();
    }

    result = swift_beginAccess();
    v17 = *(static ImportSession.realityKitComponentClasses + 2);
    v18 = (static ImportSession.realityKitComponentClasses + 32);
    while (v17)
    {
      v19 = *v18++;
      --v17;
      if (v19 == v16)
      {
        goto LABEL_5;
      }
    }

    *(v21 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
    if (__OFADD__(v4++, 1))
    {
      goto LABEL_20;
    }
  }

  v13 = v5;
  while (1)
  {
    v5 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      return specialized _NativeDictionary.extractDictionary(using:count:)(v21, a2, v4, a3);
    }

    v14 = *(v6 + 8 * v5);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v9 = (v14 - 1) & v14;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

void *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVySo19REComponentClassPtraSo8RETypeIDaG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab11VKXEfU_So19ij8Ptra_So8L6IDaTG5ALxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyAiKIsgnndzo_Tf1nc_n02_suijvwlx15SbIgyyd_AbDSbs5z76_pIegnndzo_TR057_s9RealityIO13ImportSessionC20realityKitComponentsSDySo19ab7vw3D28X34GvgZSbAF_AHtXEfU_Tf4nnd_nTf3nnpf_nTf1nnc_nTm(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = a4(result, a2, a3);

    return v8;
  }

  return result;
}

uint64_t specialized _NativeDictionary.extractDictionary(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo19REComponentClassPtraSo8RETypeIDaGMd, &_ss18_DictionaryStorageCySo19REComponentClassPtraSo8RETypeIDaGMR);
  result = static _DictionaryStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(*(v4 + 48) + 8 * v16);
    v28 = *(*(v4 + 56) + 16 * v16);
    v18 = *(v9 + 40);
    Hasher.init(_seed:)();
    MEMORY[0x26670FA20](v17);
    result = Hasher._finalize()();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v9 + 48) + 8 * v22) = v17;
    *(*(v9 + 56) + 16 * v22) = v28;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t specialized _copySequenceToContiguousArray<A>(_:)(uint64_t a1)
{
  v1 = a1 + 64;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  v7 = 0;
  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  v10 = MEMORY[0x277D84F90] + 32;
  if (v4)
  {
    while (1)
    {
      v11 = v8;
LABEL_8:
      v12 = __clz(__rbit64(v4)) | (v11 << 6);
      v13 = (*(a1 + 48) + 16 * v12);
      v14 = *v13;
      v15 = v13[1];
      v16 = (*(a1 + 56) + 32 * v12);
      v31 = v16[1];
      v32 = *v16;
      if (v7)
      {

        v17 = v9;
        v18 = __OFSUB__(v7--, 1);
        if (v18)
        {
          goto LABEL_33;
        }
      }

      else
      {
        v19 = v9[3];
        if (((v19 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_34;
        }

        v20 = v19 & 0xFFFFFFFFFFFFFFFELL;
        if (v20 <= 1)
        {
          v21 = 1;
        }

        else
        {
          v21 = v20;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS3key_9RealityIO13ImportSessionC17MeshAssetEstimateV5valuetGMd, &_ss23_ContiguousArrayStorageCySS3key_9RealityIO13ImportSessionC17MeshAssetEstimateV5valuetGMR);
        v17 = swift_allocObject();
        v22 = (_swift_stdlib_malloc_size(v17) - 32) / 48;
        v17[2] = v21;
        v17[3] = 2 * v22;
        v23 = v17 + 4;
        v24 = v9[3] >> 1;
        v10 = &v17[6 * v24 + 4];
        v25 = (v22 & 0x7FFFFFFFFFFFFFFFLL) - v24;
        if (v9[2])
        {
          if (v17 != v9 || v23 >= &v9[6 * v24 + 4])
          {
            memmove(v23, v9 + 4, 48 * v24);
          }

          v9[2] = 0;
        }

        else
        {
        }

        v18 = __OFSUB__(v25, 1);
        v7 = v25 - 1;
        if (v18)
        {
          goto LABEL_33;
        }
      }

      v4 &= v4 - 1;
      *v10 = v14;
      *(v10 + 8) = v15;
      *(v10 + 16) = v32;
      *(v10 + 32) = v31;
      v10 += 48;
      v9 = v17;
      v8 = v11;
      if (!v4)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    if (v11 >= v5)
    {
      break;
    }

    v4 = *(v1 + 8 * v11);
    ++v8;
    if (v4)
    {
      goto LABEL_8;
    }
  }

  v27 = v9[3];
  if (v27 < 2)
  {
    return v9;
  }

  v28 = v27 >> 1;
  v18 = __OFSUB__(v28, v7);
  v29 = v28 - v7;
  if (!v18)
  {
    v9[2] = v29;
    return v9;
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t specialized _copySequenceToContiguousArray<A>(_:)()
{
  ImportSession.TextureOperatorContainer.makeIterator()();
  result = dispatch thunk of _AnyIteratorBoxBase.next()();
  v1 = v18;
  v2 = MEMORY[0x277D84F90];
  v3 = 0;
  if (v18)
  {
    v4 = MEMORY[0x277D84F90] + 32;
    v5 = v17;
    while (1)
    {
      if (!v3)
      {
        v6 = v2[3];
        if (((v6 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_23;
        }

        v16 = v1;
        v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
        if (v7 <= 1)
        {
          v8 = 1;
        }

        else
        {
          v8 = v7;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS3key_s13OpaquePointerV5valuetGMd, &_ss23_ContiguousArrayStorageCySS3key_s13OpaquePointerV5valuetGMR);
        v9 = swift_allocObject();
        v10 = (_swift_stdlib_malloc_size(v9) - 32) / 24;
        v9[2] = v8;
        v9[3] = 2 * v10;
        v11 = (v9 + 4);
        v12 = v2[3] >> 1;
        if (v2[2])
        {
          if (v9 != v2 || v11 >= &v2[3 * v12 + 4])
          {
            memmove(v9 + 4, v2 + 4, 24 * v12);
          }

          v2[2] = 0;
        }

        v4 = v11 + 24 * v12;
        v3 = (v10 & 0x7FFFFFFFFFFFFFFFLL) - v12;

        v2 = v9;
        v1 = v16;
      }

      if (__OFSUB__(v3--, 1))
      {
        break;
      }

      *v4 = v5;
      *(v4 + 8) = v1;
      result = dispatch thunk of _AnyIteratorBoxBase.next()();
      v5 = v17;
      v1 = v18;
      v4 += 24;
    }

    __break(1u);
LABEL_23:
    __break(1u);
    __break(1u);
  }

  else
  {

    v15 = v2[3];
    if (v15 >= 2)
    {
      v2[2] = v15 >> 1;
    }

    return v2;
  }

  return result;
}

uint64_t specialized static __REAssetBundle.ExportOptions.DeploymentTarget.== infix(_:_:)(uint64_t a1)
{
  v2 = type metadata accessor for __REAssetBundle.ExportOptions.PlatformRequirement();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v32 = &v29[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v31 = &v29[-v7];
  v8 = type metadata accessor for __REAssetBundle.ExportOptions.PlatformOS();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v29[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v15 = &v29[-v14];
  v33 = a1;
  __REAssetBundle.ExportOptions.DeploymentTarget.platform.getter();
  __REAssetBundle.ExportOptions.DeploymentTarget.platform.getter();
  _sSo10CFErrorRefaABs5Error10FoundationWlTm_0(&lazy protocol witness table cache variable for type __REAssetBundle.ExportOptions.PlatformOS and conformance __REAssetBundle.ExportOptions.PlatformOS, MEMORY[0x277CDACC0]);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v36 == v34 && v37 == v35)
  {
    v16 = *(v9 + 8);
    v16(v12, v8);
    v16(v15, v8);
  }

  else
  {
    v30 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v17 = v3;
    v18 = v2;
    v19 = *(v9 + 8);
    v19(v12, v8);
    v19(v15, v8);
    v2 = v18;
    v3 = v17;

    v20 = 0;
    if ((v30 & 1) == 0)
    {
      return v20 & 1;
    }
  }

  v21 = __REAssetBundle.ExportOptions.DeploymentTarget.version.getter();
  v23 = v22;
  v20 = 0;
  if (v21 == __REAssetBundle.ExportOptions.DeploymentTarget.version.getter() && v23 == v24)
  {
    v25 = v31;
    __REAssetBundle.ExportOptions.DeploymentTarget.platformRequirement.getter();
    v26 = v32;
    __REAssetBundle.ExportOptions.DeploymentTarget.platformRequirement.getter();
    v20 = static __REAssetBundle.ExportOptions.PlatformRequirement.== infix(_:_:)();
    v27 = *(v3 + 8);
    v27(v26, v2);
    v27(v25, v2);
  }

  return v20 & 1;
}

uint64_t specialized static ImportSession.EvaluationFault.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v47 = a1;
  v48 = a2;
  v2 = type metadata accessor for __REAssetBundle.ExportOptions.DeploymentTarget();
  v45 = *(v2 - 8);
  v46 = v2;
  v3 = *(v45 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ImportSession.EvaluationFault(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (&v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v12 = (&v45 - v11);
  MEMORY[0x28223BE20](v13);
  v15 = (&v45 - v14);
  MEMORY[0x28223BE20](v16);
  v18 = &v45 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = (&v45 - v20);
  MEMORY[0x28223BE20](v22);
  v24 = (&v45 - v23);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO13ImportSessionC15EvaluationFaultO_AEtMd, &_s9RealityIO13ImportSessionC15EvaluationFaultO_AEtMR);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v28 = &v45 - v27;
  v30 = (&v45 + *(v29 + 56) - v27);
  outlined init with copy of ImportSession.EvaluationFault(v47, &v45 - v27);
  outlined init with copy of ImportSession.EvaluationFault(v48, v30);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    v35 = v18;
    v36 = v45;
    v37 = v46;
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        outlined init with copy of ImportSession.EvaluationFault(v28, v35);
        if (swift_getEnumCaseMultiPayload() == 2)
        {
          (*(v36 + 32))(v5, v30, v37);
          v42 = specialized static __REAssetBundle.ExportOptions.DeploymentTarget.== infix(_:_:)(v35);
          v43 = *(v36 + 8);
          v43(v5, v37);
          v43(v35, v37);
          outlined destroy of ImportSession.EvaluationFault(v28);
          return v42 & 1;
        }

        (*(v36 + 8))(v35, v37);
        goto LABEL_25;
      }

      outlined init with copy of ImportSession.EvaluationFault(v28, v21);
      v39 = *v21;
      v38 = v21[1];
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_24;
      }
    }

    else
    {
      outlined init with copy of ImportSession.EvaluationFault(v28, v24);
      v39 = *v24;
      v38 = v24[1];
      if (swift_getEnumCaseMultiPayload())
      {
        goto LABEL_24;
      }
    }
  }

  else if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload != 5)
    {
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        goto LABEL_32;
      }

LABEL_25:
      outlined destroy of Any?(v28, &_s9RealityIO13ImportSessionC15EvaluationFaultO_AEtMd, &_s9RealityIO13ImportSessionC15EvaluationFaultO_AEtMR);
      goto LABEL_26;
    }

    outlined init with copy of ImportSession.EvaluationFault(v28, v9);
    v39 = *v9;
    v38 = v9[1];
    if (swift_getEnumCaseMultiPayload() != 5)
    {
      goto LABEL_24;
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 3)
    {
      outlined init with copy of ImportSession.EvaluationFault(v28, v15);
      v33 = *v15;
      v32 = v15[1];
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        if (v33 != *v30 || v32 != v30[1])
        {
          goto LABEL_17;
        }

LABEL_22:

        goto LABEL_32;
      }

      goto LABEL_24;
    }

    outlined init with copy of ImportSession.EvaluationFault(v28, v12);
    v39 = *v12;
    v38 = v12[1];
    if (swift_getEnumCaseMultiPayload() != 4)
    {
LABEL_24:

      goto LABEL_25;
    }
  }

  if (v39 == *v30 && v38 == v30[1])
  {
    goto LABEL_22;
  }

LABEL_17:
  v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v41)
  {
LABEL_32:
    outlined destroy of ImportSession.EvaluationFault(v28);
    v42 = 1;
    return v42 & 1;
  }

  outlined destroy of ImportSession.EvaluationFault(v28);
LABEL_26:
  v42 = 0;
  return v42 & 1;
}

unint64_t lazy protocol witness table accessor for type ImportSession.LoadError and conformance ImportSession.LoadError()
{
  result = lazy protocol witness table cache variable for type ImportSession.LoadError and conformance ImportSession.LoadError;
  if (!lazy protocol witness table cache variable for type ImportSession.LoadError and conformance ImportSession.LoadError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImportSession.LoadError and conformance ImportSession.LoadError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ImportSession.LoadError and conformance ImportSession.LoadError;
  if (!lazy protocol witness table cache variable for type ImportSession.LoadError and conformance ImportSession.LoadError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImportSession.LoadError and conformance ImportSession.LoadError);
  }

  return result;
}

uint64_t _sSo10CFErrorRefaABs5Error10FoundationWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t ImportSession.TextureOperatorContainer.__deallocating_deinit(void (*a1)(void), void (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  a1(*(v3 + 16));
  a2(*(v3 + 24));

  return a3(v3, 32, 7);
}

uint64_t lazy protocol witness table accessor for type AnyIterator<(key: String, value: OpaquePointer)> and conformance AnyIterator<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t keypath_get_74Tm@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, _BYTE *a3@<X8>)
{
  result = a2(*(*(*a1 + 16) + 16));
  *a3 = result;
  return result;
}

void type metadata completion function for ImportSession()
{
  type metadata accessor for __REAssetBundle.ExportOptions.DeploymentTarget?();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t getEnumTagSinglePayload for ImportSession.LoadError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ImportSession.LoadError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
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

uint64_t type metadata completion function for ImportSession.EvaluationFault()
{
  result = type metadata accessor for __REAssetBundle.ExportOptions.DeploymentTarget();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed () -> (@out ())()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed () -> ()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t objectdestroy_5Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t partial apply for closure #1 in closure #2 in ImportSession.init<A>(core:entityType:)()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  return closure #1 in closure #2 in ImportSession.init<A>(core:entityType:)();
}

id static ToolsFoundations.Token.Scope.getter@<X0>(void *a1@<X8>)
{
  return static ToolsFoundations.Token.Scope.getter(a1);
}

{
  if (String.count.getter() < 1)
  {
    result = RIOPxrTfTokenEmpty();
  }

  else
  {
    result = RIOPxrTfTokenCreateWithCString();
  }

  *a1 = result;
  return result;
}

char *ToolsFoundations.Token.schemaPropertyNames()()
{
  v1 = *v0;
  v2 = RIOPxrTfTokenCopyTypeSchemaPropertyNames();
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    type metadata accessor for RIOPxrTfTokenRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();
    v5 = v4;
    if (!(v4 >> 62))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
LABEL_3:
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
        goto LABEL_4;
      }

LABEL_13:

      return MEMORY[0x277D84F90];
    }
  }

  v6 = __CocoaSet.count.getter();
  if (!v6)
  {
    goto LABEL_13;
  }

LABEL_4:
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6 & ~(v6 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v8 = v4;
    if ((v5 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v6; ++i)
      {
        v10 = MEMORY[0x26670F670](i, v5);
        v12 = *(v8 + 16);
        v11 = *(v8 + 24);
        if (v12 >= v11 >> 1)
        {
          v13 = v10;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
          v10 = v13;
        }

        *(v8 + 16) = v12 + 1;
        *(v8 + 8 * v12 + 32) = v10;
      }
    }

    else
    {
      v14 = 32;
      do
      {
        v15 = *(v4 + 16);
        v16 = *(v4 + 24);
        v17 = *(v5 + v14);
        if (v15 >= v16 >> 1)
        {
          v18 = v16 > 1;
          v19 = v17;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v18, v15 + 1, 1);
          v17 = v19;
        }

        *(v4 + 16) = v15 + 1;
        *(v4 + 8 * v15 + 32) = v17;
        v14 += 8;
        --v6;
      }

      while (v6);
    }

    return v8;
  }

  __break(1u);
  return result;
}

uint64_t (*RigidSchema.xformTranslateOp.modify(void *a1))()
{
  *a1 = 0xD000000000000011;
  a1[1] = 0x8000000261996A20;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*RigidSchema.xformOrientOp.modify(char *a1))()
{
  strcpy(a1, "xformOp:orient");
  a1[15] = -18;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*RigidSchema.xformScaleOp.modify(uint64_t a1))()
{
  strcpy(a1, "xformOp:scale");
  *(a1 + 14) = -4864;
  return RigidSchema.xformTranslateOp.modify;
}

void RigidSchema.xformOpOrder.getter(uint64_t a1@<X8>)
{
  strcpy(a1, "xformOpOrder");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

uint64_t (*RigidSchema.xformOpOrder.modify(uint64_t a1))(uint64_t a1)
{
  strcpy(a1, "xformOpOrder");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
  return RigidSchema.xformOpOrder.modify;
}

uint64_t (*RigidSchema.radius.modify(void *a1))()
{
  *a1 = 0x737569646172;
  a1[1] = 0xE600000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*RigidSchema.height.modify(void *a1))()
{
  *a1 = 0x746867696568;
  a1[1] = 0xE600000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*RigidSchema.size.modify(void *a1))()
{
  *a1 = 1702521203;
  a1[1] = 0xE400000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*RigidSchema.content.modify(void *a1))()
{
  *a1 = 0x746E65746E6F63;
  a1[1] = 0xE700000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*RigidSchema.font.modify(void *a1))()
{
  *a1 = 1953394534;
  a1[1] = 0xE400000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*RigidSchema.pointSize.modify(void *a1))()
{
  *a1 = 0x7A6953746E696F70;
  a1[1] = 0xE900000000000065;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*RigidSchema.width.modify(void *a1))()
{
  *a1 = 0x6874646977;
  a1[1] = 0xE500000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*RigidSchema.depth.modify(void *a1))()
{
  *a1 = 0x6874706564;
  a1[1] = 0xE500000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*RigidSchema.horizontalAlignment.modify(void *a1))()
{
  *a1 = 0xD000000000000013;
  a1[1] = 0x8000000261996A40;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*RigidSchema.verticalAlignment.modify(void *a1))()
{
  *a1 = 0xD000000000000011;
  a1[1] = 0x8000000261996A60;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*RigidSchema.wrapMode.modify(void *a1))()
{
  *a1 = 0x65646F4D70617277;
  a1[1] = 0xE800000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*protocol witness for Capsule.radius.modify in conformance Schema(void *a1))()
{
  *a1 = 0x737569646172;
  a1[1] = 0xE600000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*protocol witness for Capsule.height.modify in conformance Schema(void *a1))()
{
  *a1 = 0x746867696568;
  a1[1] = 0xE600000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*protocol witness for Cube.size.modify in conformance Schema(void *a1))()
{
  *a1 = 1702521203;
  a1[1] = 0xE400000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*protocol witness for PreliminaryText.content.modify in conformance Schema(void *a1))()
{
  *a1 = 0x746E65746E6F63;
  a1[1] = 0xE700000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*protocol witness for PreliminaryText.font.modify in conformance Schema(void *a1))()
{
  *a1 = 1953394534;
  a1[1] = 0xE400000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*protocol witness for PreliminaryText.pointSize.modify in conformance Schema(void *a1))()
{
  *a1 = 0x7A6953746E696F70;
  a1[1] = 0xE900000000000065;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*protocol witness for PreliminaryText.width.modify in conformance Schema(void *a1))()
{
  *a1 = 0x6874646977;
  a1[1] = 0xE500000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*protocol witness for PreliminaryText.depth.modify in conformance Schema(void *a1))()
{
  *a1 = 0x6874706564;
  a1[1] = 0xE500000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*protocol witness for PreliminaryText.horizontalAlignment.modify in conformance Schema(void *a1))()
{
  *a1 = 0xD000000000000013;
  a1[1] = 0x8000000261996A40;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*protocol witness for PreliminaryText.verticalAlignment.modify in conformance Schema(void *a1))()
{
  *a1 = 0xD000000000000011;
  a1[1] = 0x8000000261996A60;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*protocol witness for PreliminaryText.wrapMode.modify in conformance Schema(void *a1))()
{
  *a1 = 0x65646F4D70617277;
  a1[1] = 0xE800000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*protocol witness for Xformable.xformTranslateOp.modify in conformance Schema(void *a1))()
{
  *a1 = 0xD000000000000011;
  a1[1] = 0x8000000261996A20;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*protocol witness for Xformable.xformOrientOp.modify in conformance Schema(char *a1))()
{
  strcpy(a1, "xformOp:orient");
  a1[15] = -18;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*protocol witness for Xformable.xformScaleOp.modify in conformance Schema(uint64_t a1))()
{
  strcpy(a1, "xformOp:scale");
  *(a1 + 14) = -4864;
  return RigidSchema.xformTranslateOp.modify;
}

void protocol witness for Xformable.xformOpOrder.getter in conformance Schema(uint64_t a1@<X8>)
{
  strcpy(a1, "xformOpOrder");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

uint64_t (*protocol witness for Xformable.xformOpOrder.modify in conformance Schema(uint64_t a1))()
{
  strcpy(a1, "xformOpOrder");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
  return RigidSchema.xformTranslateOp.modify;
}

void __swiftcall UsdGeomXformable.localTransformation(at:)(simd_double4x4_optional *__return_ptr retstr, Swift::Double at)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *((*(*(v2 + 8) + 8))() + 16);

  LocalTransformation = RIOPxrUsdGeomXformableXformQueryGetLocalTransformation();

  if (LocalTransformation)
  {
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    _sSo14simd_double4x4aSgWOi_(&v11);
    v26 = v17;
    v27 = v18;
    v28 = v19;
    v22 = v13;
    v23 = v14;
    v24 = v15;
    v25 = v16;
    v20 = v11;
    v21 = v12;
  }

  else
  {
    _sSo14simd_double4x4aSgWOi0_(&v20);
  }

  v6 = v27;
  *retstr->value.columns[3].f64 = v26;
  *&retstr->value.columns[3].f64[2] = v6;
  retstr->is_nil = v28;
  v7 = v23;
  *retstr->value.columns[1].f64 = v22;
  *&retstr->value.columns[1].f64[2] = v7;
  v8 = v25;
  *retstr->value.columns[2].f64 = v24;
  *&retstr->value.columns[2].f64[2] = v8;
  v9 = v21;
  *retstr->value.columns[0].f64 = v20;
  *&retstr->value.columns[0].f64[2] = v9;
  v10 = *MEMORY[0x277D85DE8];
}

void __swiftcall UsdGeomXformable.localTransformation(at:)(simd_float4x4_optional *__return_ptr retstr, Swift::Double at)
{
  UsdGeomXformable.localTransformation(at:)(&v8, at);
  if (_sSo14simd_double4x4aSgWOg(&v8) == 1)
  {
    v3 = 1;
    v4 = 0uLL;
    v5 = 0uLL;
    v6 = 0uLL;
    v7 = 0uLL;
  }

  else
  {
    v3 = 0;
    v4 = vcvt_hight_f32_f64(vcvt_f32_f64(*v8.value.columns[0].f64), *&v8.value.columns[0].f64[2]);
    v5 = vcvt_hight_f32_f64(vcvt_f32_f64(*v8.value.columns[1].f64), *&v8.value.columns[1].f64[2]);
    v6 = vcvt_hight_f32_f64(vcvt_f32_f64(*v8.value.columns[2].f64), *&v8.value.columns[2].f64[2]);
    v7 = vcvt_hight_f32_f64(vcvt_f32_f64(*v8.value.columns[3].f64), *&v8.value.columns[3].f64[2]);
  }

  retstr->value.columns[0] = v4;
  retstr->value.columns[1] = v5;
  retstr->value.columns[2] = v6;
  retstr->value.columns[3] = v7;
  retstr->is_nil = v3;
}

uint64_t UsdGeomXformable.timeSamples.getter(uint64_t a1, uint64_t a2)
{
  v2 = *((*(*(a2 + 8) + 8))() + 16);

  CopyTimeSamples = RIOPxrUsdGeomXformableXformQueryCopyTimeSamples();

  static Array._conditionallyBridgeFromObjectiveC(_:result:)();
  return MEMORY[0x277D84F90];
}

uint64_t XformPrim.deinit()
{
  v1 = *(v0 + 16);

  outlined destroy of Any?(v0 + 24, &_s9RealityIO10PropertiesVyAA5Xform_pGMd, &_s9RealityIO10PropertiesVyAA5Xform_pGMR);
  return v0;
}

uint64_t MeshPrim.deinit()
{
  v1 = *(v0 + 16);

  outlined destroy of Any?(v0 + 24, &_s9RealityIO10PropertiesVyAA4Mesh_pGMd, &_s9RealityIO10PropertiesVyAA4Mesh_pGMR);
  return v0;
}

uint64_t XformPrim.__deallocating_deinit(uint64_t *a1, uint64_t *a2)
{
  v5 = *(v2 + 16);

  outlined destroy of Any?(v2 + 24, a1, a2);

  return swift_deallocClassInstance();
}

uint64_t CapsulePrim.deinit()
{
  v1 = *(v0 + 16);

  outlined destroy of Any?(v0 + 24, &_s9RealityIO10PropertiesVyAA7Capsule_pGMd, &_s9RealityIO10PropertiesVyAA7Capsule_pGMR);
  return v0;
}

uint64_t ConePrim.deinit()
{
  v1 = *(v0 + 16);

  outlined destroy of Any?(v0 + 24, &_s9RealityIO10PropertiesVyAA4Cone_pGMd, &_s9RealityIO10PropertiesVyAA4Cone_pGMR);
  return v0;
}

uint64_t CubePrim.deinit()
{
  v1 = *(v0 + 16);

  outlined destroy of Any?(v0 + 24, &_s9RealityIO10PropertiesVyAA4Cube_pGMd, &_s9RealityIO10PropertiesVyAA4Cube_pGMR);
  return v0;
}

uint64_t CylinderPrim.deinit()
{
  v1 = *(v0 + 16);

  outlined destroy of Any?(v0 + 24, &_s9RealityIO10PropertiesVyAA8Cylinder_pGMd, &_s9RealityIO10PropertiesVyAA8Cylinder_pGMR);
  return v0;
}

uint64_t SpherePrim.deinit()
{
  v1 = *(v0 + 16);

  outlined destroy of Any?(v0 + 24, &_s9RealityIO10PropertiesVyAA6Sphere_pGMd, &_s9RealityIO10PropertiesVyAA6Sphere_pGMR);
  return v0;
}

uint64_t PreliminaryTextPrim.deinit()
{
  v1 = *(v0 + 16);

  outlined destroy of Any?(v0 + 24, &_s9RealityIO10PropertiesVyAA15PreliminaryText_pGMd, &_s9RealityIO10PropertiesVyAA15PreliminaryText_pGMR);
  return v0;
}

void *Stage.xform(at:)(uint64_t *a1)
{
  v2 = *a1;
  if (String.count.getter() < 1)
  {
    v3 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v3 = RIOPxrTfTokenCreateWithCString();
  }

  v4 = v3;
  v5 = *(v1 + 16);
  PrimIfNeeded = RIOPxrUsdStageCreatePrimIfNeeded();

  type metadata accessor for Prim();
  v7 = swift_allocObject();
  *(v7 + 16) = PrimIfNeeded;
  type metadata accessor for XformPrim(0);
  v8 = swift_allocObject();
  v8[7] = &type metadata for Schema;
  v8[8] = &protocol witness table for Schema;
  v8[2] = v7;
  v8[3] = v7;

  return v8;
}

void *Stage.mesh(at:)(uint64_t *a1)
{
  v2 = *a1;
  if (String.count.getter() < 1)
  {
    v3 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v3 = RIOPxrTfTokenCreateWithCString();
  }

  v4 = v3;
  v5 = *(v1 + 16);
  PrimIfNeeded = RIOPxrUsdStageCreatePrimIfNeeded();

  type metadata accessor for Prim();
  v7 = swift_allocObject();
  *(v7 + 16) = PrimIfNeeded;
  type metadata accessor for MeshPrim(0);
  v8 = swift_allocObject();
  v8[7] = &type metadata for Schema;
  v8[8] = &protocol witness table for Schema;
  v8[2] = v7;
  v8[3] = v7;

  return v8;
}

void *Stage.capsule(at:)(uint64_t *a1)
{
  v2 = *a1;
  if (String.count.getter() < 1)
  {
    v3 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v3 = RIOPxrTfTokenCreateWithCString();
  }

  v4 = v3;
  v5 = *(v1 + 16);
  PrimIfNeeded = RIOPxrUsdStageCreatePrimIfNeeded();

  type metadata accessor for Prim();
  v7 = swift_allocObject();
  *(v7 + 16) = PrimIfNeeded;
  type metadata accessor for CapsulePrim(0);
  v8 = swift_allocObject();
  v8[7] = &type metadata for Schema;
  v8[8] = &protocol witness table for Schema;
  v8[2] = v7;
  v8[3] = v7;

  return v8;
}

void *Stage.cone(at:)(uint64_t *a1)
{
  v2 = *a1;
  if (String.count.getter() < 1)
  {
    v3 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v3 = RIOPxrTfTokenCreateWithCString();
  }

  v4 = v3;
  v5 = *(v1 + 16);
  PrimIfNeeded = RIOPxrUsdStageCreatePrimIfNeeded();

  type metadata accessor for Prim();
  v7 = swift_allocObject();
  *(v7 + 16) = PrimIfNeeded;
  type metadata accessor for ConePrim(0);
  v8 = swift_allocObject();
  v8[7] = &type metadata for Schema;
  v8[8] = &protocol witness table for Schema;
  v8[2] = v7;
  v8[3] = v7;

  return v8;
}

void *Stage.cube(at:)(uint64_t *a1)
{
  v2 = *a1;
  if (String.count.getter() < 1)
  {
    v3 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v3 = RIOPxrTfTokenCreateWithCString();
  }

  v4 = v3;
  v5 = *(v1 + 16);
  PrimIfNeeded = RIOPxrUsdStageCreatePrimIfNeeded();

  type metadata accessor for Prim();
  v7 = swift_allocObject();
  *(v7 + 16) = PrimIfNeeded;
  type metadata accessor for CubePrim(0);
  v8 = swift_allocObject();
  v8[7] = &type metadata for Schema;
  v8[8] = &protocol witness table for Schema;
  v8[2] = v7;
  v8[3] = v7;

  return v8;
}

void *Stage.cylinder(at:)(uint64_t *a1)
{
  v2 = *a1;
  if (String.count.getter() < 1)
  {
    v3 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v3 = RIOPxrTfTokenCreateWithCString();
  }

  v4 = v3;
  v5 = *(v1 + 16);
  PrimIfNeeded = RIOPxrUsdStageCreatePrimIfNeeded();

  type metadata accessor for Prim();
  v7 = swift_allocObject();
  *(v7 + 16) = PrimIfNeeded;
  type metadata accessor for CylinderPrim(0);
  v8 = swift_allocObject();
  v8[7] = &type metadata for Schema;
  v8[8] = &protocol witness table for Schema;
  v8[2] = v7;
  v8[3] = v7;

  return v8;
}

void *Stage.sphere(at:)(uint64_t *a1)
{
  v2 = *a1;
  if (String.count.getter() < 1)
  {
    v3 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v3 = RIOPxrTfTokenCreateWithCString();
  }

  v4 = v3;
  v5 = *(v1 + 16);
  PrimIfNeeded = RIOPxrUsdStageCreatePrimIfNeeded();

  type metadata accessor for Prim();
  v7 = swift_allocObject();
  *(v7 + 16) = PrimIfNeeded;
  type metadata accessor for SpherePrim(0);
  v8 = swift_allocObject();
  v8[7] = &type metadata for Schema;
  v8[8] = &protocol witness table for Schema;
  v8[2] = v7;
  v8[3] = v7;

  return v8;
}

void *Stage.preliminaryText(at:)(uint64_t *a1)
{
  v2 = *a1;
  if (String.count.getter() < 1)
  {
    v3 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v3 = RIOPxrTfTokenCreateWithCString();
  }

  v4 = v3;
  v5 = *(v1 + 16);
  PrimIfNeeded = RIOPxrUsdStageCreatePrimIfNeeded();

  type metadata accessor for Prim();
  v7 = swift_allocObject();
  *(v7 + 16) = PrimIfNeeded;
  type metadata accessor for PreliminaryTextPrim(0);
  v8 = swift_allocObject();
  v8[7] = &type metadata for Schema;
  v8[8] = &protocol witness table for Schema;
  v8[2] = v7;
  v8[3] = v7;

  return v8;
}

uint64_t Stage.materialBindingAPI(at:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = RIOPxrTfTokenEmpty();
  v4 = *(v1 + 16);
  PrimIfNeeded = RIOPxrUsdStageCreatePrimIfNeeded();

  type metadata accessor for Prim();
  v6 = swift_allocObject();
  *(v6 + 16) = PrimIfNeeded;
  type metadata accessor for MaterialBindingAPI();
  result = swift_allocObject();
  *(result + 16) = v6;
  return result;
}

uint64_t MaterialBindingAPI.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t MaterialBindingAPI.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t MaterialBindingAPI.bind(material:)(uint64_t a1)
{
  v3 = *(*(v1 + 16) + 16);
  v4 = RIOPxrUsdShadeMaterialBindingAPICreateFromObjectRef();
  v5 = *(a1 + 16);
  v6 = RIOPxrUsdShadeMaterialBindingAPIBind();

  return v6;
}

uint64_t MaterialBindingAPI.bind(material:collection:)(uint64_t a1, uint64_t a2)
{
  v5 = *(*(v2 + 16) + 16);
  v6 = RIOPxrUsdShadeMaterialBindingAPICreateFromObjectRef();
  v7 = *(a1 + 16);
  v8 = *(a2 + 24);
  v9 = RIOPxrUsdShadeMaterialBindingAPIBindCollection();

  return v9;
}

Swift::Bool __swiftcall MaterialBindingAPI.unbind()()
{
  v1 = *(*(v0 + 16) + 16);
  v2 = RIOPxrUsdShadeMaterialBindingAPICreateFromObjectRef();
  v3 = RIOPxrUsdShadeMaterialBindingAPIUnbind();

  return v3;
}

uint64_t MaterialBindingAPI.unbind(collection:)(uint64_t a1)
{
  v3 = *(*(v1 + 16) + 16);
  v4 = RIOPxrUsdShadeMaterialBindingAPICreateFromObjectRef();
  v5 = *(a1 + 24);
  v6 = RIOPxrUsdShadeMaterialBindingAPIUnbindCollection();

  return v6;
}

void key path getter for MaterialBindingAPI.materialBindingStrengthForDirectBinding : MaterialBindingAPI(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(*(*a1 + 16) + 16);
  v4 = RIOPxrUsdShadeMaterialBindingAPICreateFromObjectRef();
  v5 = RIOPxrUsdShadeMaterialBindingAPICopyMaterialBindingStrengthForDirectBinding();

  *a2 = v5;
}

void key path setter for MaterialBindingAPI.materialBindingStrengthForDirectBinding : MaterialBindingAPI(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*(*a2 + 16) + 16);
  v4 = RIOPxrUsdShadeMaterialBindingAPICreateFromObjectRef();
  RIOPxrUsdShadeMaterialBindingAPISetMaterialBindingStrengthForDirectBinding();
}

void MaterialBindingAPI.materialBindingStrengthForDirectBinding.setter(id *a1)
{
  v4 = *a1;
  v2 = *(*(v1 + 16) + 16);
  v3 = RIOPxrUsdShadeMaterialBindingAPICreateFromObjectRef();
  RIOPxrUsdShadeMaterialBindingAPISetMaterialBindingStrengthForDirectBinding();
}

void (*MaterialBindingAPI.materialBindingStrengthForDirectBinding.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = *(v1 + 16);
  a1[1] = v3;
  v4 = *(v3 + 16);
  v5 = RIOPxrUsdShadeMaterialBindingAPICreateFromObjectRef();
  v6 = RIOPxrUsdShadeMaterialBindingAPICopyMaterialBindingStrengthForDirectBinding();

  *a1 = v6;
  return MaterialBindingAPI.materialBindingStrengthForDirectBinding.modify;
}

void MaterialBindingAPI.materialBindingStrengthForDirectBinding.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(v2 + 16);
  if (a2)
  {
    v5 = v3;
    v7 = RIOPxrUsdShadeMaterialBindingAPICreateFromObjectRef();
    RIOPxrUsdShadeMaterialBindingAPISetMaterialBindingStrengthForDirectBinding();
  }

  else
  {
    v6 = *(v2 + 16);
    v7 = RIOPxrUsdShadeMaterialBindingAPICreateFromObjectRef();
    RIOPxrUsdShadeMaterialBindingAPISetMaterialBindingStrengthForDirectBinding();
  }
}

uint64_t MaterialBindingAPI.collectionBindings.getter()
{
  v1 = v0;
  v2 = *(*(v0 + 16) + 16);
  v3 = RIOPxrUsdShadeMaterialBindingAPICreateFromObjectRef();
  v4 = RIOPxrUsdShadeMaterialBindingAPICopyCollectionBindings();

  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    v7 = MEMORY[0x277D84F90];
    if (v6)
    {
      type metadata accessor for RIOPxrUsdShadeMaterialBindingAPICollectionBindingRef(0);
      v8 = v4;
      static Array._conditionallyBridgeFromObjectiveC(_:result:)();
    }
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  if (!(v7 >> 62))
  {
    v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_7;
    }

LABEL_16:

    return MEMORY[0x277D84F90];
  }

  v9 = __CocoaSet.count.getter();
  if (!v9)
  {
    goto LABEL_16;
  }

LABEL_7:
  v21 = v5;
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if (v9 < 0)
  {
    __break(1u);
  }

  else
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v11 = 0;
      do
      {
        v12 = v11 + 1;
        v13 = MEMORY[0x26670F670]();
        type metadata accessor for MaterialCollectionBinding();
        v14 = swift_allocObject();
        *(v14 + 16) = v1;
        *(v14 + 24) = v13;

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v15 = *(v21 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v11 = v12;
      }

      while (v9 != v12);
    }

    else
    {
      type metadata accessor for MaterialCollectionBinding();
      v16 = 32;
      do
      {
        v17 = *(v7 + v16);
        v18 = swift_allocObject();
        *(v18 + 16) = v1;
        *(v18 + 24) = v17;

        v19 = v17;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v20 = *(v5 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v16 += 8;
        --v9;
      }

      while (v9);
    }

    return v21;
  }

  return result;
}

void MaterialBindingAPI.directBinding.getter(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(*(v2 + 16) + 16);
  v6 = RIOPxrUsdShadeMaterialBindingAPICreateFromObjectRef();
  v7 = a1();

  *a2 = v7;
}

uint64_t _sSo14simd_double4x4aSgWOg(uint64_t a1)
{
  if (*(a1 + 128))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

void *keypath_getTm@<X0>(void *(*a1)(void *__return_ptr)@<X3>, void *a2@<X8>)
{
  result = a1(v5);
  v4 = v5[1];
  *a2 = v5[0];
  a2[1] = v4;
  return result;
}

uint64_t keypath_setTm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *))
{
  v7 = *a1;
  v6 = a1[1];
  v9[0] = v7;
  v9[1] = v6;

  return a5(v9);
}

id one-time initialization function for iblPropertyName(uint64_t a1)
{
  return one-time initialization function for infoID(a1, 7103081, 0xE300000000000000, "ibl", &static ImageBasedLightBuilder.iblPropertyName);
}

{
  return one-time initialization function for infoID(a1, 7103081, 0xE300000000000000, "ibl", &static VirtualEnvironmentProbeComponentBuilder.iblPropertyName);
}

id one-time initialization function for intensityPropertyName()
{
  if (String.count.getter() < 1)
  {
    result = RIOPxrTfTokenEmpty();
  }

  else
  {
    result = RIOPxrTfTokenCreateWithCString();
  }

  static ImageBasedLightBuilder.intensityPropertyName = result;
  return result;
}

{
  if (String.count.getter() < 1)
  {
    result = RIOPxrTfTokenEmpty();
  }

  else
  {
    result = RIOPxrTfTokenCreateWithCString();
  }

  static VirtualEnvironmentProbeComponentBuilder.intensityPropertyName = result;
  return result;
}

uint64_t ImageBasedLightBuilder.run(inputs:)(uint64_t a1)
{
  v2 = v1;
  v146 = *MEMORY[0x277D85DE8];
  v4 = Inputs.prim.getter();
  v5 = *(v4 + 16);
  v6 = RIOPxrUsdObjectCopyName();
  v7 = RIOPxrTfTokenCopyString();
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  if (one-time initialization token for infoID != -1)
  {
    swift_once();
  }

  v11 = *(v4 + 16);
  if (!RIOPxrUsdPrimHasAttribute())
  {
    goto LABEL_23;
  }

  v12 = RIOPxrUsdPrimCopyAttribute();
  v13 = RIOPxrUsdAttributeCopyValue();
  if (!v13)
  {

LABEL_24:
    ImageBasedLightBuilder.clear(inputs:)(a1);
    v30 = *MEMORY[0x277D85DE8];
  }

  v14 = v13;
  v15 = RIOPxrVtValueCopyToken();

  if (!v15)
  {
LABEL_23:

    goto LABEL_24;
  }

  v16 = RIOPxrTfTokenCopyString();
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  if (v17 != 0xD00000000000001ALL || 0x8000000261996D60 != v19)
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v20)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_11:
  v21 = Prim.parent.getter();
  if (!v21)
  {
    goto LABEL_14;
  }

  v22 = v21;
  v23 = *(v21 + 16);
  if (RIOPxrUsdPrimEvaluateEntityOnExport())
  {

LABEL_14:
    if (one-time initialization token for OutputName != -1)
    {
      swift_once();
    }

    Inputs.subscript.getter(static EntityBuilder.OutputName, qword_27FEBC3A0, &aBlock);
    if (v143)
    {
      type metadata accessor for EntityProxy();
      if (swift_dynamicCast())
      {

        v139 = v140;
        v24 = *(v4 + 16);
        if ((RIOPxrUsdPrimIsActive() & 1) == 0)
        {
          ImageBasedLightBuilder.clear(inputs:)(a1);

LABEL_36:
          v43 = *MEMORY[0x277D85DE8];
          return result;
        }

        if (one-time initialization token for iblPropertyName != -1)
        {
          swift_once();
        }

        v25 = *(v4 + 16);
        v26 = static ImageBasedLightBuilder.iblPropertyName;
        if (RIOPxrUsdPrimHasAttribute())
        {
          v27 = *(v4 + 16);
          v28 = RIOPxrUsdPrimCopyAttribute();
          type metadata accessor for AnyAttribute();
          v29 = swift_allocObject();
          *(v29 + 16) = v28;
        }

        else
        {

          *&aBlock = 0;
          lazy protocol witness table accessor for type Object.Error and conformance Object.Error();
          swift_willThrowTypedImpl();
          outlined consume of Object.Error(aBlock);
          v29 = 0;
        }

        if (one-time initialization token for iblBlendPropertyName != -1)
        {
          swift_once();
        }

        v44 = *(v4 + 16);
        v45 = static ImageBasedLightBuilder.iblBlendPropertyName;
        if (RIOPxrUsdPrimHasAttribute())
        {
          v46 = *(v4 + 16);
          v47 = RIOPxrUsdPrimCopyAttribute();
          type metadata accessor for AnyAttribute();
          v48 = swift_allocObject();
          *(v48 + 16) = v47;
        }

        else
        {

          *&aBlock = 0;
          lazy protocol witness table accessor for type Object.Error and conformance Object.Error();
          swift_willThrowTypedImpl();
          outlined consume of Object.Error(aBlock);
          v48 = 0;
        }

        if (one-time initialization token for blendEnablePropertyName != -1)
        {
          swift_once();
        }

        *&aBlock = static ImageBasedLightBuilder.blendEnablePropertyName;
        v49 = static ImageBasedLightBuilder.blendEnablePropertyName;
        v50 = specialized AudioMixGroupBuilder.getAttribute(named:fromPrim:)(&aBlock, v4);

        if (v50 && (LOBYTE(aBlock) = 0, Bool = RIOPxrVtValueGetBool(), v50, (Bool & 1) != 0))
        {
          v52 = aBlock;
        }

        else
        {
          v52 = 0;
        }

        v135 = v52;
        if (one-time initialization token for rotationEnablePropertyName != -1)
        {
          swift_once();
        }

        *&aBlock = static ImageBasedLightBuilder.rotationEnablePropertyName;
        v53 = static ImageBasedLightBuilder.rotationEnablePropertyName;
        v54 = specialized AudioMixGroupBuilder.getAttribute(named:fromPrim:)(&aBlock, v4);

        if (v54 && (LOBYTE(aBlock) = 0, v55 = RIOPxrVtValueGetBool(), v54, (v55 & 1) != 0))
        {
          v56 = aBlock;
        }

        else
        {
          v56 = 0;
        }

        v134 = v56;
        if (one-time initialization token for mixFactorPropertyName != -1)
        {
          swift_once();
        }

        *&aBlock = static ImageBasedLightBuilder.mixFactorPropertyName;
        v57 = static ImageBasedLightBuilder.mixFactorPropertyName;
        v58 = specialized AudioMixGroupBuilder.getAttribute(named:fromPrim:)(&aBlock, v4);

        v59 = 0;
        if (v58)
        {
          LODWORD(aBlock) = 0;
          Float = RIOPxrVtValueGetFloat();

          if (Float)
          {
            v59 = aBlock;
          }
        }

        if (one-time initialization token for blendIBLsFactorPropertyName != -1)
        {
          swift_once();
        }

        *&aBlock = static ImageBasedLightBuilder.blendIBLsFactorPropertyName;
        v61 = static ImageBasedLightBuilder.blendIBLsFactorPropertyName;
        v62 = specialized AudioMixGroupBuilder.getAttribute(named:fromPrim:)(&aBlock, v4);

        v63 = 0;
        if (v62)
        {
          LODWORD(aBlock) = 0;
          v64 = RIOPxrVtValueGetFloat();

          if (v64)
          {
            v63 = aBlock;
          }
        }

        if (one-time initialization token for isGlobalPropertyName != -1)
        {
          swift_once();
        }

        *&aBlock = static ImageBasedLightBuilder.isGlobalPropertyName;
        v65 = static ImageBasedLightBuilder.isGlobalPropertyName;
        v66 = specialized AudioMixGroupBuilder.getAttribute(named:fromPrim:)(&aBlock, v4);

        if (v66 && (LOBYTE(aBlock) = 0, v67 = RIOPxrVtValueGetBool(), v66, (v67 & 1) != 0))
        {
          v68 = aBlock;
        }

        else
        {
          v68 = 0;
        }

        v133 = v68;
        if (one-time initialization token for intensityPropertyName != -1)
        {
          swift_once();
        }

        *&aBlock = static ImageBasedLightBuilder.intensityPropertyName;
        v69 = static ImageBasedLightBuilder.intensityPropertyName;
        v70 = specialized AudioMixGroupBuilder.getAttribute(named:fromPrim:)(&aBlock, v4);

        v71 = 0;
        if (v70)
        {
          LODWORD(aBlock) = 0;
          v72 = RIOPxrVtValueGetFloat();

          if (v72)
          {
            v71 = aBlock;
          }
        }

        if (one-time initialization token for mixColorPropertyName != -1)
        {
          swift_once();
        }

        *&aBlock = static ImageBasedLightBuilder.mixColorPropertyName;
        v73 = static ImageBasedLightBuilder.mixColorPropertyName;
        v74 = specialized AudioMixGroupBuilder.getAttribute(named:fromPrim:)(&aBlock, v4);

        v137 = 0u;
        if (v74)
        {
          aBlock = 0uLL;
          Float3 = RIOPxrVtValueGetFloat3();

          if (Float3)
          {
            v137 = aBlock;
          }
        }

        v76 = specialized ImageBasedLightBuilder.getMode(fromPrim:)(v4);
        v77 = v76;
        v78 = *(v2 + 16);
        v79 = v76 == 3 && v78 == 3;
        if (v78 != 3 && v76 != 3)
        {
          v80 = 1701736302;
          if (*(v2 + 16))
          {
            if (v78 == 1)
            {
              v81 = 0xE600000000000000;
              v82 = 0x656C676E6973;
            }

            else
            {
              v81 = 0xE500000000000000;
              v82 = 0x646E656C62;
            }
          }

          else
          {
            v81 = 0xE400000000000000;
            v82 = 1701736302;
          }

          if (v77)
          {
            if (v77 == 1)
            {
              v83 = 0xE600000000000000;
              v80 = 0x656C676E6973;
            }

            else
            {
              v83 = 0xE500000000000000;
              v80 = 0x646E656C62;
            }
          }

          else
          {
            v83 = 0xE400000000000000;
          }

          if (v82 == v80 && v81 == v83)
          {
            v79 = 1;
          }

          else
          {
            v79 = _stringCompareWithSmolCheck(_:_:expecting:)();
          }
        }

        v136 = v29;
        if (v29)
        {
          v84 = *(v29 + 16);

          EmptyValue = RIOPxrUsdAttributeCopyValue();
          if (!EmptyValue)
          {
            EmptyValue = RIOPxrVtValueCreateEmptyValue();
          }

          v86 = RIOPxrVtValueCopyAssetPath();

          v87 = *(v2 + 24);
          if (v87)
          {
            if (v86)
            {
              v131 = v48;
              type metadata accessor for RIOPxrSdfAssetPathRef(0);
              lazy protocol witness table accessor for type RIOPxrSdfAssetPathRef and conformance RIOPxrSdfAssetPathRef();
              v88 = v87;
              v138 = v86;
              v89 = v86;
              v90 = v88;
              v91 = static _CFObject.== infix(_:_:)();

              if (v79)
              {
                LODWORD(v92) = v91 ^ 1;
                v48 = v131;
                v93 = v138;
                goto LABEL_120;
              }

              v48 = v131;
              v93 = v138;
              goto LABEL_119;
            }

            goto LABEL_110;
          }

          if (v86)
          {
            v87 = 0;
            v94 = v86;
            goto LABEL_113;
          }
        }

        else
        {
          v87 = *(v2 + 24);
          if (v87)
          {
LABEL_110:
            v94 = 0;
            v86 = v87;
LABEL_113:
            v95 = v86;

            if (v79)
            {
              LODWORD(v92) = 1;
              v93 = v94;
              goto LABEL_120;
            }

            v93 = v94;
            goto LABEL_119;
          }
        }

        v93 = 0;
        if (v79)
        {
          LODWORD(v92) = 0;
          goto LABEL_120;
        }

LABEL_119:
        LODWORD(v92) = 1;
LABEL_120:
        v132 = v77;
        v138 = v93;
        if (v48)
        {
          v96 = *(v48 + 16);

          v97 = RIOPxrUsdAttributeCopyValue();
          if (!v97)
          {
            v97 = RIOPxrVtValueCreateEmptyValue();
          }

          v98 = v48;

          v99 = RIOPxrVtValueCopyAssetPath();

          v100 = *(v2 + 32);
          if (v100)
          {
            if (v99)
            {
              LODWORD(v131) = v92;
              type metadata accessor for RIOPxrSdfAssetPathRef(0);
              lazy protocol witness table accessor for type RIOPxrSdfAssetPathRef and conformance RIOPxrSdfAssetPathRef();
              v101 = v100;
              v92 = v99;
              v102 = v101;
              static _CFObject.== infix(_:_:)();

              LOBYTE(v92) = v131;
              goto LABEL_132;
            }

            goto LABEL_127;
          }

          if (v99)
          {
            v100 = 0;
            v103 = v99;
            goto LABEL_130;
          }
        }

        else
        {
          v98 = 0;
          v100 = *(v2 + 32);
          if (v100)
          {
LABEL_127:
            v103 = 0;
            v99 = v100;
LABEL_130:
            v104 = v99;

            v99 = v103;
            goto LABEL_132;
          }
        }

        v99 = 0;
LABEL_132:
        v131 = &v131;
        MEMORY[0x28223BE20](v76);
        v114[16] = v92 & 1;
        v115 = v136;
        v116 = a1;
        v117 = v105 & 1;
        v118 = v98;
        v106 = v138;
        v119 = v139;
        v120 = v2;
        v121 = v132;
        v122 = v63;
        v123 = v107;
        v124 = v71;
        v125 = v108;
        v126 = v109;
        v127 = v59;
        v128 = v137;
        v129 = v138;
        v130 = v99;
        v110 = *(a1 + 56);
        v111 = swift_allocObject();
        *(v111 + 16) = partial apply for closure #1 in ImageBasedLightBuilder.run(inputs:);
        *(v111 + 24) = v114;
        v144 = thunk for @callee_guaranteed () -> ()partial apply;
        v145 = v111;
        *&aBlock = MEMORY[0x277D85DD0];
        *(&aBlock + 1) = 1107296256;
        v142 = thunk for @escaping @callee_guaranteed () -> ();
        v143 = &block_descriptor_30_1;
        v112 = _Block_copy(&aBlock);

        RIOBuilderInputsPerformBlockSyncOnEngineQueue();

        _Block_release(v112);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if (isEscapingClosureAtFileLocation)
        {
          __break(1u);
        }

        goto LABEL_36;
      }
    }

    else
    {
      outlined destroy of Any?(&aBlock);
    }

    if (one-time initialization token for iblComponents != -1)
    {
      swift_once();
    }

    static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_2619891C0;
    *(v42 + 56) = MEMORY[0x277D837D0];
    *(v42 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v42 + 32) = v8;
    *(v42 + 40) = v10;
    os_log(_:dso:log:type:_:)();

    goto LABEL_36;
  }

  if (one-time initialization token for iblComponents != -1)
  {
    swift_once();
  }

  v139 = static OS_os_log.iblComponents;
  LODWORD(v138) = static os_log_type_t.error.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_26198A8E0;
  v33 = *(v22 + 16);
  v34 = RIOPxrUsdObjectCopyPath();
  v35 = RIOPxrSdfPathCopyString();
  v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v38 = v37;

  v39 = MEMORY[0x277D837D0];
  *(v32 + 56) = MEMORY[0x277D837D0];
  v40 = lazy protocol witness table accessor for type String and conformance String();
  *(v32 + 64) = v40;
  *(v32 + 32) = v36;
  *(v32 + 40) = v38;

  *(v32 + 96) = v39;
  *(v32 + 104) = v40;
  *(v32 + 72) = v8;
  *(v32 + 80) = v10;
  os_log(_:dso:log:type:_:)();

  v41 = *MEMORY[0x277D85DE8];
}

void closure #1 in ImageBasedLightBuilder.run(inputs:)(char a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned __int8 a8, uint64_t a9, void *a10, void *a11)
{
  if ((a1 & 1) != 0 && a2)
  {

    Inputs.createIBLAsset(on:)(v15);
    v17 = v16;

    if ((a4 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO21RESharedObjectWrapperCys13OpaquePointerVGMd, &_s9RealityIO21RESharedObjectWrapperCys13OpaquePointerVGMR);
    v17 = swift_allocObject();
    *(v17 + 16) = 0;
    if ((a4 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  if (a5)
  {

    Inputs.createIBLAsset(on:)(v18);
    v20 = v19;

    goto LABEL_9;
  }

LABEL_8:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO21RESharedObjectWrapperCys13OpaquePointerVGMd, &_s9RealityIO21RESharedObjectWrapperCys13OpaquePointerVGMR);
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
LABEL_9:
  __AssetRef.__as<A>(_:)();
  REImageBasedLightComponentGetComponentType();
  v21 = REEntityGetOrAddComponentByClass();
  swift_beginAccess();
  v22 = objc_getAssociatedObject(a7, &static BuilderAssociatedKeys.CoreReference);
  swift_endAccess();
  if (v22)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined init with take of Any(&v34, &v35);
    type metadata accessor for RIOBuilderRef(0);
    swift_dynamicCast();
    RIOBuilderAddComponent();

    if (a8 > 1u)
    {
      if (a8 != 2)
      {
        if (a1)
        {
          v26 = *(v17 + 16);
          REImageBasedLightComponentSetIBLNullable();
        }

        if (a4)
        {
          v27 = *(v20 + 16);
          REImageBasedLightComponentSetIBLBlendNullable();
        }

        REImageBasedLightComponentSetEnableBlend();
        REImageBasedLightComponentSetBlendIBLsFactor();
        goto LABEL_28;
      }

      if (a1)
      {
        v23 = *(v17 + 16);
        REImageBasedLightComponentSetIBLNullable();
      }

      if (a4)
      {
        v24 = *(v20 + 16);
        REImageBasedLightComponentSetIBLBlendNullable();
      }

      REImageBasedLightComponentSetEnableBlend();
      REImageBasedLightComponentSetBlendIBLsFactor();
    }

    else if (a8)
    {
      if (a1)
      {
        v25 = *(v17 + 16);
        REImageBasedLightComponentSetIBLNullable();
      }

      REImageBasedLightComponentSetEnableBlend();
    }

    else
    {
      REImageBasedLightComponentSetIBLNullable();
    }

    *(a7 + 16) = a8;
LABEL_28:
    REImageBasedLightComponentSetIntensityExponent();
    REImageBasedLightComponentSetRotationEnabled();
    REImageBasedLightComponentSetBlendRotationEnabled();
    REImageBasedLightComponentSetGlobalIBL();
    REImageBasedLightComponentSetMixFactor();
    REImageBasedLightComponentSetMixColor();
    MEMORY[0x26670FF10](v21);

    v28 = *(a7 + 24);
    *(a7 + 24) = a10;
    v29 = a10;

    v30 = *(a7 + 32);
    *(a7 + 32) = a11;
    v31 = a11;

    *(a7 + 41) = 1;
    return;
  }

  __break(1u);
}

uint64_t ImageBasedLightBuilder.clear(inputs:)(uint64_t a1)
{
  v2 = v1;
  if (one-time initialization token for OutputName != -1)
  {
    swift_once();
  }

  Inputs.subscript.getter(static EntityBuilder.OutputName, qword_27FEBC3A0, &aBlock);
  if (!v12)
  {
    return outlined destroy of Any?(&aBlock);
  }

  type metadata accessor for EntityProxy();
  result = swift_dynamicCast();
  if (result)
  {
    if (*(v2 + 41) == 1)
    {
      MEMORY[0x28223BE20](v15);
      v9[2] = v5;
      v9[3] = v2;
      v6 = *(a1 + 56);
      v7 = swift_allocObject();
      *(v7 + 16) = partial apply for closure #1 in ImageBasedLightBuilder.clear(inputs:);
      *(v7 + 24) = v9;
      v13 = partial apply for thunk for @callee_guaranteed () -> ();
      v14 = v7;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      v11 = thunk for @escaping @callee_guaranteed () -> ();
      v12 = &block_descriptor_15;
      v8 = _Block_copy(&aBlock);

      RIOBuilderInputsPerformBlockSyncOnEngineQueue();
      _Block_release(v8);
      LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

      if (v6)
      {
        __break(1u);
      }
    }

    else
    {
    }
  }

  return result;
}

void closure #1 in ImageBasedLightBuilder.clear(inputs:)(uint64_t a1, uint64_t a2)
{
  __AssetRef.__as<A>(_:)();
  REImageBasedLightComponentGetComponentType();
  REEntityRemoveComponentByClass();
  v3 = *(a2 + 24);
  *(a2 + 24) = 0;

  v4 = *(a2 + 32);
  *(a2 + 32) = 0;

  *(a2 + 41) = 0;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ImageBasedLightBuilder.Mode(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x656C676E6973;
  if (v2 != 1)
  {
    v4 = 0x646E656C62;
    v3 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1701736302;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x656C676E6973;
  if (*a2 != 1)
  {
    v8 = 0x646E656C62;
    v7 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1701736302;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
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

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ImageBasedLightBuilder.Mode()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ImageBasedLightBuilder.Mode()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ImageBasedLightBuilder.Mode()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance ImageBasedLightBuilder.Mode@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized ImageBasedLightBuilder.Mode.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance ImageBasedLightBuilder.Mode(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x656C676E6973;
  if (v2 != 1)
  {
    v5 = 0x646E656C62;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1701736302;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t ImageBasedLightBuilder.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t lazy protocol witness table accessor for type ImageBasedLightBuilder.Mode and conformance ImageBasedLightBuilder.Mode()
{
  result = lazy protocol witness table cache variable for type ImageBasedLightBuilder.Mode and conformance ImageBasedLightBuilder.Mode;
  if (!lazy protocol witness table cache variable for type ImageBasedLightBuilder.Mode and conformance ImageBasedLightBuilder.Mode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImageBasedLightBuilder.Mode and conformance ImageBasedLightBuilder.Mode);
  }

  return result;
}

uint64_t specialized ImageBasedLightBuilder.stageSubscription.getter()
{
  if (one-time initialization token for realityKitComponentTypeName != -1)
  {
    swift_once();
  }

  v10 = static ImageBasedLightBuilder.realityKitComponentTypeName;
  v0 = static ImageBasedLightBuilder.realityKitComponentTypeName;
  v1 = specialized TypeNamePrimDirtyState.__allocating_init(typeName:)(&v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26198A640;
  *(inited + 32) = v1;
  v3 = MEMORY[0x277D84FA0];
  v10 = MEMORY[0x277D84FA0];

  specialized Sequence.forEach(_:)(inited);

  swift_setDeallocating();
  v4 = *(inited + 16);
  swift_arrayDestroy();
  v5 = v10;
  type metadata accessor for StageDirtyState();
  swift_allocObject();
  v6 = StageDirtyState.init(stageMetadataContainsAnyOf:primsContainAnyOf:core:)(v3, v5, 0);
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_26198A640;
  *(v7 + 32) = v6;
  v10 = v3;

  specialized Sequence.forEach(_:)(v7);

  swift_setDeallocating();
  v8 = *(v7 + 16);
  swift_arrayDestroy();
  return v10;
}

unint64_t specialized ImageBasedLightBuilder.Mode.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ImageBasedLightBuilder.Mode.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t specialized ImageBasedLightBuilder.getMode(fromPrim:)(uint64_t a1)
{
  if (one-time initialization token for modePropertyName != -1)
  {
    swift_once();
  }

  v12 = static ImageBasedLightBuilder.modePropertyName;
  v2 = static ImageBasedLightBuilder.modePropertyName;
  v3 = specialized AudioMixGroupBuilder.getAttribute(named:fromPrim:)(&v12, a1);

  if (!v3)
  {
    return 3;
  }

  v4 = RIOPxrVtValueCopyToken();

  if (!v4)
  {
    return 3;
  }

  v5 = RIOPxrTfTokenCopyString();
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9._countAndFlagsBits = v6;
  v9._object = v8;
  v10 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ImageBasedLightBuilder.Mode.init(rawValue:), v9);

  if (v10 >= 3)
  {
    return 3;
  }

  else
  {
    return v10;
  }
}

float partial apply for closure #1 in ImageBasedLightBuilder.run(inputs:)()
{
  v1 = *(v0 + 76);
  v2 = *(v0 + 84);
  v3 = *(v0 + 92);
  v4 = *(v0 + 96);
  BYTE2(v6) = *(v0 + 89);
  BYTE1(v6) = *(v0 + 88);
  LOBYTE(v6) = *(v0 + 80);
  closure #1 in ImageBasedLightBuilder.run(inputs:)(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), v6, *(v0 + 112), *(v0 + 120));
  return result;
}

unint64_t lazy protocol witness table accessor for type RIOPxrSdfAssetPathRef and conformance RIOPxrSdfAssetPathRef()
{
  result = lazy protocol witness table cache variable for type RIOPxrSdfAssetPathRef and conformance RIOPxrSdfAssetPathRef;
  if (!lazy protocol witness table cache variable for type RIOPxrSdfAssetPathRef and conformance RIOPxrSdfAssetPathRef)
  {
    type metadata accessor for RIOPxrSdfAssetPathRef(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RIOPxrSdfAssetPathRef and conformance RIOPxrSdfAssetPathRef);
  }

  return result;
}

uint64_t static StageDirtyStateBuilder.buildBlock(_:)(unint64_t a1)
{
  v2 = MEMORY[0x277D84FA0];
  specialized Sequence.forEach(_:)(a1);
  return v2;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO15StageDirtyStateCG_So010RIOBuildergF13DescriptorRefas5NeverOTg503_s9d68IO7BuilderPAAE12generateCore7primRefySo015RIOPxrUsdObjectG0a_tFSo030igfjw6AA0mL5H52Ccfu_32bf63a0112cb27e84fc959358271e62f1AkITf3nnnpk_nTf1cn_n(uint64_t a1)
{
  v24 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaSet.count.getter();
    result = MEMORY[0x277D84F90];
    if (!v2)
    {
      return result;
    }

    v29 = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    result = __CocoaSet.startIndex.getter();
    v26 = result;
    v27 = v4;
    v28 = 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (!v2)
  {
    return result;
  }

  v29 = MEMORY[0x277D84F90];
  specialized ContiguousArray.reserveCapacity(_:)();
  v5 = -1 << *(a1 + 32);
  result = _HashTable.startBucket.getter();
  v6 = *(a1 + 36);
  v26 = result;
  v27 = v6;
  v28 = 0;
LABEL_7:
  v7 = 0;
  while (v7 < v2)
  {
    if (__OFADD__(v7++, 1))
    {
      goto LABEL_31;
    }

    v11 = v26;
    v10 = v27;
    v12 = v28;
    v13 = *(specialized Set.subscript.getter(v26, v27, v28, a1) + 32);

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v14 = *(v29 + 16);
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    result = specialized ContiguousArray._endMutation()();
    if (v24)
    {
      if (!v12)
      {
        goto LABEL_35;
      }

      if (__CocoaSet.Index.handleBitPattern.getter())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSh5IndexVy9RealityIO15StageDirtyStateC_GMd, &_sSh5IndexVy9RealityIO15StageDirtyStateC_GMR);
      v8 = Set.Index._asCocoa.modify();
      __CocoaSet.formIndex(after:isUnique:)();
      result = v8(v25, 0);
      if (v7 == v2)
      {
LABEL_28:
        outlined consume of Set<ToolsFoundations.Token>.Index._Variant(v26, v27, v28);
        return v29;
      }
    }

    else
    {
      if (v12)
      {
        goto LABEL_36;
      }

      if ((v11 & 0x8000000000000000) != 0)
      {
        goto LABEL_32;
      }

      v15 = 1 << *(a1 + 32);
      if (v11 >= v15)
      {
        goto LABEL_32;
      }

      v16 = v11 >> 6;
      v17 = *(a1 + 56 + 8 * (v11 >> 6));
      if (((v17 >> v11) & 1) == 0)
      {
        goto LABEL_33;
      }

      if (*(a1 + 36) != v10)
      {
        goto LABEL_34;
      }

      v18 = v17 & (-2 << (v11 & 0x3F));
      if (v18)
      {
        v15 = __clz(__rbit64(v18)) | v11 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v19 = v16 << 6;
        v20 = v16 + 1;
        v21 = (a1 + 64 + 8 * v16);
        while (v20 < (v15 + 63) >> 6)
        {
          v23 = *v21++;
          v22 = v23;
          v19 += 64;
          ++v20;
          if (v23)
          {
            result = outlined consume of Set<ToolsFoundations.Token>.Index._Variant(v11, v10, 0);
            v15 = __clz(__rbit64(v22)) + v19;
            goto LABEL_27;
          }
        }

        result = outlined consume of Set<ToolsFoundations.Token>.Index._Variant(v11, v10, 0);
      }

LABEL_27:
      v26 = v15;
      v27 = v10;
      v28 = 0;
      if (v7 == v2)
      {
        goto LABEL_28;
      }
    }
  }

  __break(1u);
LABEL_31:
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

void Builder.addComponent<A>(component:)()
{
  v0 = type metadata accessor for __ComponentTypeRef();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Component.__coreComponentType.getter();
  type metadata accessor for REComponentType(0);
  __ComponentTypeRef.__as<A>(_:)();
  (*(v1 + 8))(v4, v0);
  v5 = REComponentClassFromType();
  if (v5)
  {
    v7 = Builder.outputs.getter(v5, v6, &static BuilderAssociatedKeys.CoreReference, type metadata accessor for RIOBuilderRef);
    RIOBuilderAddComponentByClass();
  }
}

uint64_t _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSo33RIOBuilderDirtyStageDescriptorRefa_SayAEGTt0g5(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = __CocoaSet.count.getter();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v4 = v3;
  v5 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo33RIOBuilderDirtyStageDescriptorRefa_Tt1g5(v3, 0);
  specialized Array._copyContents(initializing:)((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t Builder.prim.getter(uint64_t a1, uint64_t a2)
{
  v2 = Builder.outputs.getter(a1, a2, &static BuilderAssociatedKeys.CoreReference, type metadata accessor for RIOBuilderRef);
  v3 = RIOBuilderCopyPrim();

  type metadata accessor for Prim();
  result = swift_allocObject();
  *(result + 16) = v3;
  return result;
}

Swift::Void __swiftcall Builder.addComponent(componentRef:)(Swift::OpaquePointer componentRef)
{
  v2 = Builder.outputs.getter(componentRef._rawValue, v1, &static BuilderAssociatedKeys.CoreReference, type metadata accessor for RIOBuilderRef);
  RIOBuilderAddComponent();
}

void Builder.generateCore(primRef:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  aBlock = a2;
  swift_getMetatypeMetadata();
  v6 = String.init<A>(reflecting:)();
  v25 = MEMORY[0x26670EFB0](v6);

  (*(a3 + 16))(&aBlock, a2, a3);
  v7 = (*(a3 + 8))(a2, a3);
  v8 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO15StageDirtyStateCG_So010RIOBuildergF13DescriptorRefas5NeverOTg503_s9d68IO7BuilderPAAE12generateCore7primRefySo015RIOPxrUsdObjectG0a_tFSo030igfjw6AA0mL5H52Ccfu_32bf63a0112cb27e84fc959358271e62f1AkITf3nnnpk_nTf1cn_n(v7);

  _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSo33RIOBuilderDirtyStageDescriptorRefa_SayAEGTt0g5(v8);
  type metadata accessor for RIOBuilderDirtyStageDescriptorRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v10 = RIOBuilderDirtyStageSubscriptionCreateWithDirtyStageDescriptors();

  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = v11;
  v30 = partial apply for closure #1 in Builder.generateCore(primRef:);
  v31 = v12;
  aBlock = MEMORY[0x277D85DD0];
  v27 = 1107296256;
  v28 = thunk for @escaping @callee_guaranteed () -> (@unowned Unmanaged<RIOBuilderOutputsDescriptorRef>);
  v29 = &block_descriptor_16;
  v13 = _Block_copy(&aBlock);

  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = v14;
  v30 = partial apply for closure #2 in Builder.generateCore(primRef:);
  v31 = v15;
  aBlock = MEMORY[0x277D85DD0];
  v27 = 1107296256;
  v28 = thunk for @escaping @callee_guaranteed () -> (@unowned Unmanaged<RIOBuilderOutputsDescriptorRef>);
  v29 = &block_descriptor_14;
  v16 = _Block_copy(&aBlock);

  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = swift_allocObject();
  v18[2] = a2;
  v18[3] = a3;
  v18[4] = v17;
  v30 = partial apply for closure #3 in Builder.generateCore(primRef:);
  v31 = v18;
  aBlock = MEMORY[0x277D85DD0];
  v27 = 1107296256;
  v28 = thunk for @escaping @callee_guaranteed (@guaranteed RIOBuilderInputsRef) -> ();
  v29 = &block_descriptor_21;
  v19 = _Block_copy(&aBlock);

  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = swift_allocObject();
  v21[2] = a2;
  v21[3] = a3;
  v21[4] = v20;
  v30 = partial apply for closure #4 in Builder.generateCore(primRef:);
  v31 = v21;
  aBlock = MEMORY[0x277D85DD0];
  v27 = 1107296256;
  v28 = thunk for @escaping @callee_guaranteed (@guaranteed RIOBuilderInputsRef) -> ();
  v29 = &block_descriptor_28;
  v22 = _Block_copy(&aBlock);

  v23 = RIOBuilderCreateWithBuilderInfo();
  _Block_release(v22);
  _Block_release(v19);
  _Block_release(v16);
  _Block_release(v13);

  if (v23)
  {
    swift_beginAccess();
    v24 = v23;
    objc_setAssociatedObject(v3, &static BuilderAssociatedKeys.CoreReference, v24, 1);
    swift_endAccess();

    RIOBuilderSetSwiftObject();
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall Builder.generateOutputs()()
{
  v3 = v2;
  v4 = Builder.outputs.getter(v0, v1, &static BuilderAssociatedKeys.CoreReference, type metadata accessor for RIOBuilderRef);
  v5 = RIOBuilderOutputsCreate();

  v6 = RIOBuilderOutputsGetSwiftObject();
  type metadata accessor for Outputs();
  if (v6)
  {
    v7 = swift_dynamicCastClassUnconditional();
  }

  else
  {
    swift_allocObject();
    v7 = Outputs.init(core:)(v5);
  }

  v8 = v7;
  swift_beginAccess();

  objc_setAssociatedObject(v3, &static BuilderAssociatedKeys.OutputsReference, v8, 1);
  swift_endAccess();
}

uint64_t Builder.outputs.getter(uint64_t a1, uint64_t a2, const void *a3, void (*a4)(void))
{
  swift_beginAccess();
  v7 = objc_getAssociatedObject(v4, a3);
  result = swift_endAccess();
  if (v7)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined init with take of Any(&v10, &v11);
    a4(0);
    swift_dynamicCast();
    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void Builder.primPath.getter(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = Builder.outputs.getter(a1, a2, &static BuilderAssociatedKeys.CoreReference, type metadata accessor for RIOBuilderRef);
  v5 = RIOBuilderCopyPrimPath();

  *a3 = v5;
}

uint64_t closure #1 in Builder.generateCore(primRef:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = (*(a3 + 24))(a2, a3);
    v6 = v5;
    v24 = MEMORY[0x277D84F90];
    v7 = v5 + 56;
    v8 = 1 << *(v5 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v5 + 56);
    v11 = (v8 + 63) >> 6;

    v13 = 0;
    if (!v10)
    {
      goto LABEL_7;
    }

    do
    {
LABEL_5:
      while (1)
      {
        v14 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
        v15 = *(v6 + 48) + 56 * (v14 | (v13 << 6));
        v20 = *v15;
        v21 = *(v15 + 16);
        v22 = *(v15 + 32);
        v23 = *(v15 + 48);
        result = InputDescriptor.convertToCore()();
        if (result)
        {
          break;
        }

        if (!v10)
        {
          goto LABEL_7;
        }
      }

      MEMORY[0x26670F130]();
      if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v19 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    while (v10);
LABEL_7:
    while (1)
    {
      v16 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v16 >= v11)
      {

        type metadata accessor for RIOBuilderInputDescriptorRef(0);
        v17.super.isa = Array._bridgeToObjectiveC()().super.isa;

        v18 = RIOBuilderInputsDescriptorCreateWithInputDescriptors();
        swift_unknownObjectRelease();
        goto LABEL_17;
      }

      v10 = *(v7 + 8 * v16);
      ++v13;
      if (v10)
      {
        v13 = v16;
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
    v17.super.isa = Array._bridgeToObjectiveC()().super.isa;
    v18 = RIOBuilderInputsDescriptorCreateWithInputDescriptors();
LABEL_17:

    return v18;
  }

  return result;
}

uint64_t closure #2 in Builder.generateCore(primRef:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = (*(a3 + 32))(a2, a3);
    v26 = v5;
    v27 = MEMORY[0x277D84F90];
    v6 = v5 + 56;
    v7 = 1 << *(v5 + 32);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & *(v5 + 56);
    v10 = (v7 + 63) >> 6;

    for (i = 0; v9; result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)())
    {
      while (1)
      {
LABEL_13:
        v16 = *(v26 + 48) + 40 * (__clz(__rbit64(v9)) | (i << 6));
        v18 = *v16;
        v17 = *(v16 + 8);
        v20 = *(v16 + 16);
        v19 = *(v16 + 24);
        v21 = *(v16 + 32);

        v22 = MEMORY[0x26670EFB0](v18, v17);
        if (String.count.getter() < 1)
        {
          v13 = RIOPxrTfTokenEmpty();
        }

        else
        {
          String.utf8CString.getter();
          v13 = RIOPxrTfTokenCreateWithCString();
        }

        v9 &= v9 - 1;
        v14 = RIOBuilderOutputDescriptorCreateWithNameAndOutputIdentifierAndOptionality();

        if (v14)
        {
          break;
        }

        if (!v9)
        {
          goto LABEL_9;
        }
      }

      MEMORY[0x26670F130](result);
      if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v23 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }
    }

LABEL_9:
    while (1)
    {
      v15 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v15 >= v10)
      {

        type metadata accessor for RIOBuilderOutputDescriptorRef(0);
        v24.super.isa = Array._bridgeToObjectiveC()().super.isa;

        v25 = RIOBuilderOutputsDescriptorCreateWithOutputDescriptors();
        swift_unknownObjectRelease();
        goto LABEL_21;
      }

      v9 = *(v6 + 8 * v15);
      ++i;
      if (v9)
      {
        i = v15;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v24.super.isa = Array._bridgeToObjectiveC()().super.isa;
    v25 = RIOBuilderOutputsDescriptorCreateWithOutputDescriptors();
LABEL_21:

    return v25;
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned Unmanaged<RIOBuilderInputsDescriptorRef>)(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  return v4;
}

void *closure #3 in Builder.generateCore(primRef:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    type metadata accessor for Inputs();
    v8 = swift_allocObject();
    *(v8 + 56) = a1;
    v9 = a1;
    result = RIOBuilderInputsCopyStageDelta();
    if (result)
    {
      Inputs.StageDelta.init(core:)(result, v12);
      v10 = v13;
      v11 = v12[1];
      *(v8 + 16) = v12[0];
      *(v8 + 32) = v11;
      *(v8 + 48) = v10;
      (*(a4 + 40))(v8, a3, a4);
      swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void thunk for @escaping @callee_guaranteed (@guaranteed RIOBuilderInputsRef) -> ()(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void *closure #4 in Builder.generateCore(primRef:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    type metadata accessor for Inputs();
    v8 = swift_allocObject();
    *(v8 + 56) = a1;
    v9 = a1;
    result = RIOBuilderInputsCopyStageDelta();
    if (result)
    {
      Inputs.StageDelta.init(core:)(result, v12);
      v10 = v13;
      v11 = v12[1];
      *(v8 + 16) = v12[0];
      *(v8 + 32) = v11;
      *(v8 + 48) = v10;
      (*(a4 + 48))(v8, a3, a4);
      swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t specialized Array._copyContents(initializing:)(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [RIOBuilderDirtyStageDescriptorRef] and conformance [A]();
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo33RIOBuilderDirtyStageDescriptorRefaGMd, &_sSaySo33RIOBuilderDirtyStageDescriptorRefaGMR);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for RIOBuilderDirtyStageDescriptorRef(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type [RIOBuilderDirtyStageDescriptorRef] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [RIOBuilderDirtyStageDescriptorRef] and conformance [A];
  if (!lazy protocol witness table cache variable for type [RIOBuilderDirtyStageDescriptorRef] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo33RIOBuilderDirtyStageDescriptorRefaGMd, &_sSaySo33RIOBuilderDirtyStageDescriptorRefaGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [RIOBuilderDirtyStageDescriptorRef] and conformance [A]);
  }

  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay10Foundation4UUIDVG_9RealityIO4PrimCsAE_pTg5(void (*a1)(uint64_t *__return_ptr, uint64_t, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  result = MEMORY[0x277D84F90];
  if (v6)
  {
    v15 = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v9 = *(type metadata accessor for UUID() - 8);
    v10 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v11 = *(v9 + 72);
    while (1)
    {
      a1(&v14, v10, &v13);
      if (v4)
      {
        break;
      }

      v4 = 0;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v12 = *(v15 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v10 += v11;
      if (!--v6)
      {
        return v15;
      }
    }
  }

  return result;
}

uint64_t SceneDescriptionFoundations.Path.deletingLastPathComponent()@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = RIOPxrSdfPathCopyString();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = lazy protocol witness table accessor for type String and conformance String();
  v6 = MEMORY[0x26670F450](47, 0xE100000000000000, 0x7FFFFFFFFFFFFFFFLL, 1, MEMORY[0x277D837D0], v5);

  if (*(v6 + 16) < 2uLL)
  {

    result = RIOPxrSdfPathCreateFromCString();
    v10 = result;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss10ArraySliceVySsGMd, &_ss10ArraySliceVySsGMR);
    lazy protocol witness table accessor for type ArraySlice<Substring> and conformance ArraySlice<A>();
    lazy protocol witness table accessor for type Substring and conformance Substring();
    v7 = Sequence<>.joined(separator:)();
    v9 = v8;

    MEMORY[0x26670F080](v7, v9);

    String.utf8CString.getter();

    v10 = RIOPxrSdfPathCreateFromCString();
  }

  *a1 = v10;
  return result;
}

uint64_t InteractionSpecificationsUSDStageErrors.errorDescription.getter()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for InteractionSpecificationsUSDStageErrors.InteractionType(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for InteractionSpecificationsUSDStageErrors(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = (&v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of InteractionSpecificationsUSDStageErrors(v1, v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v16 = *v14;
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO27SceneDescriptionFoundationsO4PathV4path_AA39InteractionSpecificationsUSDStageErrorsO0H4TypeO011interactionL0tMd, &_s9RealityIO27SceneDescriptionFoundationsO4PathV4path_AA39InteractionSpecificationsUSDStageErrorsO0H4TypeO011interactionL0tMR);
      outlined init with take of InteractionSpecificationsUSDStageErrors.InteractionType(v14 + *(v17 + 48), v10);
      v41 = 0;
      v42 = 0xE000000000000000;
      _StringGuts.grow(_:)(76);
      MEMORY[0x26670F080](0xD00000000000002BLL, 0x80000002619970A0);
      v18 = RIOPxrSdfPathCopyString();
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;

      MEMORY[0x26670F080](v19, v21);

      v22 = " not implemented at path: ";
      v23 = 0xD00000000000001CLL;
    }

    else
    {
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO27SceneDescriptionFoundationsO4PathV4path_AA39InteractionSpecificationsUSDStageErrorsO0H4TypeO011interactionL0SS9valueNametMd, &_s9RealityIO27SceneDescriptionFoundationsO4PathV4path_AA39InteractionSpecificationsUSDStageErrorsO0H4TypeO011interactionL0SS9valueNametMR);
      v33 = (v14 + *(v32 + 64));
      v35 = *v33;
      v34 = v33[1];
      outlined init with take of InteractionSpecificationsUSDStageErrors.InteractionType(v14 + *(v32 + 48), v10);
      v41 = 0;
      v42 = 0xE000000000000000;
      _StringGuts.grow(_:)(89);
      MEMORY[0x26670F080](0xD000000000000019, 0x8000000261997050);
      v36 = RIOPxrSdfPathCopyString();
      v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v39 = v38;

      MEMORY[0x26670F080](v37, v39);

      MEMORY[0x26670F080](0x65756C6156202E22, 0xEB0000000022203ALL);
      MEMORY[0x26670F080](v35, v34);

      v22 = "Nil value at prim path: ";
      v23 = 0xD00000000000002ELL;
    }

    MEMORY[0x26670F080](v23, v22 | 0x8000000000000000);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x26670F080](34, 0xE100000000000000);

    v31 = v41;
  }

  else
  {
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO27SceneDescriptionFoundationsO4PathV4path_AA39InteractionSpecificationsUSDStageErrorsO0H4TypeO011interactionL010Foundation4UUIDV6targettMd, &_s9RealityIO27SceneDescriptionFoundationsO4PathV4path_AA39InteractionSpecificationsUSDStageErrorsO0H4TypeO011interactionL010Foundation4UUIDV6targettMR);
    v25 = *(v24 + 64);
    outlined init with take of InteractionSpecificationsUSDStageErrors.InteractionType(v14 + *(v24 + 48), v10);
    (*(v3 + 32))(v6, v14 + v25, v2);
    v41 = 0;
    v42 = 0xE000000000000000;
    _StringGuts.grow(_:)(129);
    MEMORY[0x26670F080](0xD00000000000001ELL, 0x80000002619970F0);
    v26 = RIOPxrSdfPathCopyString();
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;

    MEMORY[0x26670F080](v27, v29);

    MEMORY[0x26670F080](0xD000000000000049, 0x8000000261997110);
    lazy protocol witness table accessor for type InteractionSpecificationsUSDStageErrors and conformance InteractionSpecificationsUSDStageErrors(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    v30 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x26670F080](v30);

    MEMORY[0x26670F080](0xD000000000000013, 0x8000000261997160);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x26670F080](34, 0xE100000000000000);

    v31 = v41;
    (*(v3 + 8))(v6, v2);
  }

  outlined destroy of InteractionSpecificationsUSDStageErrors.InteractionType(v10);
  return v31;
}

char *Stage.setBehavior(_:at:mapping:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v126 = a4;
  v130 = a1;
  v109 = type metadata accessor for __RKEntityActionGroupArguments();
  v108 = *(v109 - 8);
  v6 = *(v108 + 64);
  MEMORY[0x28223BE20](v109);
  v8 = &v107 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_10RealityKit30__RKEntityTriggerSpecificationO7elementtMd, &_sSi6offset_10RealityKit30__RKEntityTriggerSpecificationO7elementtMR);
  v129 = *(v124 - 8);
  v9 = *(v129 + 64);
  MEMORY[0x28223BE20](v124);
  v119 = (&v107 - v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_10RealityKit30__RKEntityTriggerSpecificationO7elementtSgMd, &_sSi6offset_10RealityKit30__RKEntityTriggerSpecificationO7elementtSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v120 = &v107 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = (&v107 - v15);
  v113 = type metadata accessor for __RKEntityActionSpecification();
  v112 = *(v113 - 8);
  v17 = *(v112 + 64);
  MEMORY[0x28223BE20](v113);
  v110 = &v107 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = (&v107 - v20);
  v22 = type metadata accessor for __RKEntityTriggerSpecification();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  KeyPath = &v107 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = (&v107 - v27);
  MEMORY[0x28223BE20](v29);
  v115 = &v107 - v30;
  String.utf8CString.getter();
  v31 = RIOPxrSdfPathCreateFromCString();

  v32 = RIOPxrTfTokenEmpty();
  v125 = v5;
  v33 = *(v5 + 16);
  v127 = v31;
  PrimIfNeeded = RIOPxrUsdStageCreatePrimIfNeeded();
  type metadata accessor for Prim();
  v35 = swift_allocObject();
  *(v35 + 16) = PrimIfNeeded;
  v36 = v35;

  v37 = String.count.getter();
  v107 = v8;
  if (v37 < 1)
  {
    v38 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v38 = RIOPxrTfTokenCreateWithCString();
  }

  v39 = v38;
  v40 = *(v36 + 16);
  RIOPxrUsdPrimSetTypeName();

  v136[4] = &type metadata for Schema;
  v136[5] = &protocol witness table for Schema;
  v136[0] = v36;

  v41 = v115;
  __RKEntityInteractionSpecification.trigger.getter();
  v114 = v21;
  __RKEntityInteractionSpecification.action.getter();
  v42 = *(v23 + 16);
  v118 = v23 + 16;
  v117 = v42;
  v42(v28, v41, v22);
  v43 = (*(v23 + 88))(v28, v22) == *MEMORY[0x277CDAFC8];
  v121 = v23;
  if (!v43)
  {
    v65 = v127;
    v137 = v127;
    SceneDescriptionFoundations.Path.appendingPathComponent(_:)(0x5272656767697254, 0xEB00000000746F6FLL, &v133);
    v66 = v133;
    v67 = v116;
    v68 = Stage.setTrigger(trigger:at:mapping:)(v41, &v133, v126);
    v116 = v67;
    if (v67)
    {

      (*(v112 + 8))(v114, v113);
      v69 = *(v121 + 8);
      v69(v41, v22);
      outlined destroy of Any?(v136, &_s9RealityIO10PropertiesVyAA14BehaviorSchema_pGMd, &_s9RealityIO10PropertiesVyAA14BehaviorSchema_pGMR);

      v69(v28, v22);
      return v36;
    }

    v111 = v36;
    v87 = v68;
    swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVGMd, &_ss23_ContiguousArrayStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2619891C0;
    v89 = *(v87 + 2);
    *(inited + 32) = RIOPxrUsdObjectCopyPath();
    v90 = v127;
    specialized Properties.subscript.setter(inited);

    (*(v121 + 8))(v28, v22);
    v71 = v116;
LABEL_35:
    v137 = v90;
    SceneDescriptionFoundations.Path.appendingPathComponent(_:)(0x6F526E6F69746341, 0xEA0000000000746FLL, &v133);
    v91 = v133;
    v92 = v114;
    v93 = Stage.setAction(action:at:mapping:)(v114, &v133, v126);
    if (v71)
    {
      v36 = v111;

      (*(v112 + 8))(v92, v113);
      (*(v121 + 8))(v115, v22);
      outlined destroy of Any?(v136, &_s9RealityIO10PropertiesVyAA14BehaviorSchema_pGMd, &_s9RealityIO10PropertiesVyAA14BehaviorSchema_pGMR);
    }

    else
    {
      v94 = v93;
      swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVGMd, &_ss23_ContiguousArrayStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVGMR);
      v95 = swift_initStackObject();
      *(v95 + 16) = xmmword_2619891C0;
      Kind = v94[1].Kind;
      *(v95 + 32) = RIOPxrUsdObjectCopyPath();
      specialized Properties.subscript.setter(v95);
      v97 = v112;
      v98 = v110;
      v99 = v113;
      (*(v112 + 16))(v110, v92, v113);
      if ((*(v97 + 88))(v98, v99) == *MEMORY[0x277CDAFA0])
      {
        (*(v97 + 96))(v98, v99);
        v116 = 0;
        v100 = v108;
        v101 = v107;
        v102 = v109;
        (*(v108 + 32))(v107, v98, v109);
        v103 = v97;
        v104 = __RKEntityActionGroupArguments.exclusive.getter();
        (*(v100 + 8))(v101, v102);
      }

      else
      {
        (*(v97 + 8))(v98, v99);
        v103 = v97;
        v104 = 0;
      }

      v105 = v115;
      swift_getKeyPath();
      specialized Properties.subscript.setter(v104 & 1);

      (*(v103 + 8))(v114, v99);
      (*(v121 + 8))(v105, v22);
      outlined destroy of Any?(v136, &_s9RealityIO10PropertiesVyAA14BehaviorSchema_pGMd, &_s9RealityIO10PropertiesVyAA14BehaviorSchema_pGMR);
      return v111;
    }

    return v36;
  }

  v111 = v36;
  v44 = v116;
  v45 = v23 + 96;
  v46 = (*(v23 + 96))(v28, v22);
  v47 = 0;
  v128 = *v28;
  v137 = MEMORY[0x277D84F90];
  v48 = (v129 + 56);
  v49 = (v129 + 48);
  v123 = (v45 - 64);
  v122 = (v45 - 88);
  v130 = MEMORY[0x277D84F90];
  v129 = v22;
  v50 = v120;
  while (1)
  {
    v51 = *(v128 + 16);
    v52 = v124;
    if (v47 == v51)
    {
      v53 = 1;
    }

    else
    {
      if (v47 >= v51)
      {
        goto LABEL_43;
      }

      v54 = v128 + ((*(v121 + 80) + 32) & ~*(v121 + 80)) + *(v121 + 72) * v47;
      v55 = *(v124 + 48);
      v56 = v22;
      v57 = v119;
      *v119 = v47;
      v117(v57 + v55, v54, v56);
      v58 = v57;
      v22 = v56;
      v50 = v120;
      outlined init with take of (URL, __REAsset)(v58, v120, &_sSi6offset_10RealityKit30__RKEntityTriggerSpecificationO7elementtMd, &_sSi6offset_10RealityKit30__RKEntityTriggerSpecificationO7elementtMR);
      v53 = 0;
      ++v47;
    }

    (*v48)(v50, v53, 1, v52);
    outlined init with take of (URL, __REAsset)(v50, v16, &_sSi6offset_10RealityKit30__RKEntityTriggerSpecificationO7elementtSgMd, &_sSi6offset_10RealityKit30__RKEntityTriggerSpecificationO7elementtSgMR);
    if ((*v49)(v16, 1, v52) == 1)
    {
      break;
    }

    v59 = *v16;
    v60 = v16 + *(v52 + 48);
    v61 = KeyPath;
    v46 = (*v123)(KeyPath, v60, v22);
    v133 = 0x5F72656767697254;
    v134 = 0xE800000000000000;
    v135 = v127;
    if (__OFADD__(v59, 1))
    {
      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v132 = v59 + 1;
    v62 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x26670F080](v62);

    SceneDescriptionFoundations.Path.appendingPathComponent(_:)(v133, v134, &v133);

    v63 = v61;
    v64 = v133;
    Stage.setTrigger(trigger:at:mapping:)(v63, &v133, v126);
    if (v44)
    {
      v83 = v111;

      v84 = *v122;
      v85 = v129;
      (*v122)(KeyPath, v129);

      (*(v112 + 8))(v114, v113);
      v86 = v85;
      v36 = v83;
      v84(v115, v86);

      outlined destroy of Any?(v136, &_s9RealityIO10PropertiesVyAA14BehaviorSchema_pGMd, &_s9RealityIO10PropertiesVyAA14BehaviorSchema_pGMR);

      return v36;
    }

    MEMORY[0x26670F130]();
    if (*((v137 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v137 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v130 = *((v137 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v22 = v129;
    v46 = (*v122)(KeyPath, v129);
    v130 = v137;
  }

  KeyPath = swift_getKeyPath();
  v46 = v130;
  if (!(v130 >> 62))
  {
    v70 = *((v130 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_21;
  }

LABEL_44:
  v106 = v46;
  v70 = __CocoaSet.count.getter();
  v46 = v106;
LABEL_21:
  v71 = v44;
  if (!v70)
  {

    v75 = MEMORY[0x277D84F90];
LABEL_34:
    specialized Properties.subscript.setter(v75);
    v90 = v127;
    goto LABEL_35;
  }

  v72 = v46;
  v133 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v70 & ~(v70 >> 63), 0);
  if ((v70 & 0x8000000000000000) == 0)
  {
    v74 = 0;
    v75 = v133;
    v76 = v72;
    v77 = v72 & 0xC000000000000001;
    do
    {
      if (v77)
      {
        v78 = MEMORY[0x26670F670](v74, v76);
      }

      else
      {
        v78 = *(v76 + 8 * v74 + 32);
      }

      v79 = *(v78 + 16);
      v80 = RIOPxrUsdObjectCopyPath();

      v133 = v75;
      v82 = v75[2];
      v81 = v75[3];
      if (v82 >= v81 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v81 > 1), v82 + 1, 1);
        v75 = v133;
      }

      ++v74;
      v75[2] = v82 + 1;
      v75[v82 + 4] = v80;
      v22 = v129;
      v76 = v130;
    }

    while (v70 != v74);

    v71 = v44;
    goto LABEL_34;
  }

  __break(1u);
  return result;
}

uint64_t SceneDescriptionFoundations.Path.appendingPathComponent(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *v3;
  v8 = RIOPxrSdfPathCopyString();
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12 = v9 == 47 && v11 == 0xE100000000000000;
  if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
  }

  else
  {
    MEMORY[0x26670F080](47, 0xE100000000000000);
  }

  MEMORY[0x26670F080](a1, a2);
  String.utf8CString.getter();

  v13 = RIOPxrSdfPathCreateFromCString();

  *a3 = v13;
  return result;
}

char *Stage.setTrigger(trigger:at:mapping:)(void *a1, void **a2, uint64_t a3)
{
  v134 = a3;
  v137 = a1;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  MEMORY[0x28223BE20](v5);
  v130 = &v129 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v129 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v129 - v13;
  v136 = type metadata accessor for __RKEntityTriggerSpecification();
  v15 = *(v136 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v136);
  v135 = &v129 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a2;
  v19 = RIOPxrTfTokenEmpty();
  v20 = *(v3 + 16);
  v133 = v18;
  PrimIfNeeded = RIOPxrUsdStageCreatePrimIfNeeded();
  type metadata accessor for Prim();
  v22 = swift_allocObject();
  *(v22 + 16) = PrimIfNeeded;

  if (String.count.getter() < 1)
  {
    v23 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v23 = RIOPxrTfTokenCreateWithCString();
  }

  v24 = v23;
  v25 = *(v22 + 16);
  RIOPxrUsdPrimSetTypeName();

  v26 = v135;
  v27 = v136;
  v132 = *(v15 + 16);
  v132(v135, v137, v136);
  v28 = (*(v15 + 88))(v26, v27);
  if (v28 == *MEMORY[0x277CDAFE8])
  {
    (*(v15 + 96))(v26, v27);
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV6target_Sf8distance10RealityKit26__RKEntityProximityTriggerC8ExitTypeO4typetMd, &_s10Foundation4UUIDV6target_Sf8distance10RealityKit26__RKEntityProximityTriggerC8ExitTypeO4typetMR);
    v30 = *(v26 + *(v29 + 48));
    v130 = *(v29 + 64);
    v31 = v11;
    (*(v6 + 4))(v11, v26, v5);
    v32 = v134;
    if (*(v134 + 16) && (v33 = specialized __RawDictionaryStorage.find<A>(_:)(v11), (v34 & 1) != 0))
    {
      v35 = *(*(*(v32 + 56) + 8 * v33) + 16);
      v36 = RIOPxrUsdObjectCopyPath();
      v140 = &type metadata for Schema;
      v141 = &protocol witness table for Schema;
      v139[0] = v22;
      KeyPath = swift_getKeyPath();

      if (String.count.getter() < 1)
      {
        v38 = RIOPxrTfTokenEmpty();
      }

      else
      {
        v38 = RIOPxrTfTokenCreateWithCString();
      }

      specialized Properties.subscript.setter(v38, KeyPath, MEMORY[0x277D00A50], MEMORY[0x277D00E40]);
      swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVGMd, &_ss23_ContiguousArrayStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2619891C0;
      *(inited + 32) = v36;
      v96 = v36;
      specialized Properties.subscript.setter(inited);
      swift_getKeyPath();
      specialized Properties.subscript.setter(COERCE__INT64(v30), 0);

      (*(v6 + 1))(v31, v5);
      outlined destroy of Any?(v139, &_s9RealityIO10PropertiesVyAA30ProximityToCameraTriggerSchema_pGMd, &_s9RealityIO10PropertiesVyAA30ProximityToCameraTriggerSchema_pGMR);
      v97 = type metadata accessor for __RKEntityProximityTrigger.ExitType();
      (*(*(v97 - 8) + 8))(v135 + v130, v97);
    }

    else
    {
      v134 = type metadata accessor for InteractionSpecificationsUSDStageErrors(0);
      lazy protocol witness table accessor for type InteractionSpecificationsUSDStageErrors and conformance InteractionSpecificationsUSDStageErrors(&lazy protocol witness table cache variable for type InteractionSpecificationsUSDStageErrors and conformance InteractionSpecificationsUSDStageErrors, type metadata accessor for InteractionSpecificationsUSDStageErrors);
      swift_allocError();
      v129 = v5;
      v50 = v49;
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO27SceneDescriptionFoundationsO4PathV4path_AA39InteractionSpecificationsUSDStageErrorsO0H4TypeO011interactionL010Foundation4UUIDV6targettMd, &_s9RealityIO27SceneDescriptionFoundationsO4PathV4path_AA39InteractionSpecificationsUSDStageErrorsO0H4TypeO011interactionL010Foundation4UUIDV6targettMR);
      v52 = *(v51 + 48);
      v53 = v22;
      v54 = *(v51 + 64);
      v55 = v133;
      *v50 = v133;
      v132(v50 + v52, v137, v136);
      type metadata accessor for InteractionSpecificationsUSDStageErrors.InteractionType(0);
      swift_storeEnumTagMultiPayload();
      v56 = v50 + v54;
      v22 = v53;
      v57 = v129;
      (*(v6 + 2))(v56, v31, v129);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v58 = v55;

      (*(v6 + 1))(v31, v57);
      v59 = type metadata accessor for __RKEntityProximityTrigger.ExitType();
      (*(*(v59 - 8) + 8))(v135 + v130, v59);
    }

    return v22;
  }

  if (v28 == *MEMORY[0x277CDAFF0])
  {
    (*(v15 + 96))(v26, v27);
    v39 = v130;
    v40 = v26;
    v41 = v5;
    (*(v6 + 4))(v130, v40, v5);
    v42 = v134;
    if (*(v134 + 16) && (v43 = specialized __RawDictionaryStorage.find<A>(_:)(v39), (v44 & 1) != 0))
    {
      v45 = *(*(*(v42 + 56) + 8 * v43) + 16);
      v46 = RIOPxrUsdObjectCopyPath();
      v140 = &type metadata for Schema;
      v141 = &protocol witness table for Schema;
      v139[0] = v22;
      v47 = swift_getKeyPath();

      if (String.count.getter() < 1)
      {
        v48 = RIOPxrTfTokenEmpty();
      }

      else
      {
        v48 = RIOPxrTfTokenCreateWithCString();
      }

      specialized Properties.subscript.setter(v48, v47, MEMORY[0x277D00A50], MEMORY[0x277D00E40]);
      swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVGMd, &_ss23_ContiguousArrayStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVGMR);
      v104 = swift_initStackObject();
      *(v104 + 16) = xmmword_2619891C0;
      *(v104 + 32) = v46;
      specialized Properties.subscript.setter(v104);
      (*(v6 + 1))(v39, v41);
      outlined destroy of Any?(v139, &_s9RealityIO10PropertiesVyAA16TapTriggerSchema_pGMd, &_s9RealityIO10PropertiesVyAA16TapTriggerSchema_pGMR);
    }

    else
    {
      v134 = type metadata accessor for InteractionSpecificationsUSDStageErrors(0);
      lazy protocol witness table accessor for type InteractionSpecificationsUSDStageErrors and conformance InteractionSpecificationsUSDStageErrors(&lazy protocol witness table cache variable for type InteractionSpecificationsUSDStageErrors and conformance InteractionSpecificationsUSDStageErrors, type metadata accessor for InteractionSpecificationsUSDStageErrors);
      swift_allocError();
      v74 = v73;
      v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO27SceneDescriptionFoundationsO4PathV4path_AA39InteractionSpecificationsUSDStageErrorsO0H4TypeO011interactionL010Foundation4UUIDV6targettMd, &_s9RealityIO27SceneDescriptionFoundationsO4PathV4path_AA39InteractionSpecificationsUSDStageErrorsO0H4TypeO011interactionL010Foundation4UUIDV6targettMR);
      v76 = *(v75 + 48);
      v77 = *(v75 + 64);
      v135 = v22;
      v78 = v133;
      *v74 = v133;
      v132(&v74[v76], v137, v136);
      type metadata accessor for InteractionSpecificationsUSDStageErrors.InteractionType(0);
      swift_storeEnumTagMultiPayload();
      (*(v6 + 2))(&v74[v77], v39, v41);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v79 = v78;
      v22 = v135;

      (*(v6 + 1))(v39, v41);
    }

    return v22;
  }

  if (v28 != *MEMORY[0x277CDAFE0])
  {
    if (v28 == *MEMORY[0x277CDAFD8])
    {
      (*(v15 + 96))(v26, v27);
      v80 = *v26;
      v81 = v26[1];
      v140 = &type metadata for Schema;
      v141 = &protocol witness table for Schema;
      v139[0] = v22;
      v82 = swift_getKeyPath();

      if (String.count.getter() < 1)
      {
        v83 = RIOPxrTfTokenEmpty();
      }

      else
      {
        v83 = RIOPxrTfTokenCreateWithCString();
      }

      specialized Properties.subscript.setter(v83, v82, MEMORY[0x277D00A50], MEMORY[0x277D00E40]);
      swift_getKeyPath();
      specialized Properties.subscript.setter(v80, v81);
      v105 = &_s9RealityIO10PropertiesVyAA25NotificationTriggerSchema_pGMd;
      v106 = &_s9RealityIO10PropertiesVyAA25NotificationTriggerSchema_pGMR;
    }

    else
    {
      if (v28 != *MEMORY[0x277CDAFD0])
      {
        v134 = type metadata accessor for InteractionSpecificationsUSDStageErrors(0);
        lazy protocol witness table accessor for type InteractionSpecificationsUSDStageErrors and conformance InteractionSpecificationsUSDStageErrors(&lazy protocol witness table cache variable for type InteractionSpecificationsUSDStageErrors and conformance InteractionSpecificationsUSDStageErrors, type metadata accessor for InteractionSpecificationsUSDStageErrors);
        swift_allocError();
        v98 = v27;
        v100 = v99;
        v101 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO27SceneDescriptionFoundationsO4PathV4path_AA39InteractionSpecificationsUSDStageErrorsO0H4TypeO011interactionL0tMd, &_s9RealityIO27SceneDescriptionFoundationsO4PathV4path_AA39InteractionSpecificationsUSDStageErrorsO0H4TypeO011interactionL0tMR) + 48);
        v102 = v133;
        *v100 = v133;
        v132(v100 + v101, v137, v98);
        type metadata accessor for InteractionSpecificationsUSDStageErrors.InteractionType(0);
        swift_storeEnumTagMultiPayload();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        v103 = v102;

        (*(v15 + 8))(v26, v98);
        return v22;
      }

      v140 = &type metadata for Schema;
      v141 = &protocol witness table for Schema;
      v139[0] = v22;
      v93 = swift_getKeyPath();

      if (String.count.getter() < 1)
      {
        v94 = RIOPxrTfTokenEmpty();
      }

      else
      {
        v94 = RIOPxrTfTokenCreateWithCString();
      }

      specialized Properties.subscript.setter(v94, v93, MEMORY[0x277D00A50], MEMORY[0x277D00E40]);
      v110 = swift_getKeyPath();
      if (String.count.getter() < 1)
      {
        v111 = RIOPxrTfTokenEmpty();
      }

      else
      {
        v111 = RIOPxrTfTokenCreateWithCString();
      }

      specialized Properties.subscript.setter(v111, v110, MEMORY[0x277D00A50], MEMORY[0x277D00E40]);
      v105 = &_s9RealityIO10PropertiesVyAA28SceneTransitionTriggerSchema_pGMd;
      v106 = &_s9RealityIO10PropertiesVyAA28SceneTransitionTriggerSchema_pGMR;
    }

    outlined destroy of Any?(v139, v105, v106);
    return v22;
  }

  (*(v15 + 96))(v26, v27);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV6target_SayACG17collidingEntitiesSaySSG4tagstMd, &_s10Foundation4UUIDV6target_SayACG17collidingEntitiesSaySSG4tagstMR);
  v61 = v5;
  v62 = *(v26 + *(v60 + 48));
  v63 = *(v26 + *(v60 + 64));

  v130 = v6;
  v64 = *(v6 + 4);
  v129 = v61;
  v64(v14, v26, v61);
  v65 = v134;
  if (!*(v134 + 16) || (v66 = specialized __RawDictionaryStorage.find<A>(_:)(v14), (v67 & 1) == 0))
  {

    v135 = type metadata accessor for InteractionSpecificationsUSDStageErrors(0);
    lazy protocol witness table accessor for type InteractionSpecificationsUSDStageErrors and conformance InteractionSpecificationsUSDStageErrors(&lazy protocol witness table cache variable for type InteractionSpecificationsUSDStageErrors and conformance InteractionSpecificationsUSDStageErrors, type metadata accessor for InteractionSpecificationsUSDStageErrors);
    swift_allocError();
    v85 = v84;
    v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO27SceneDescriptionFoundationsO4PathV4path_AA39InteractionSpecificationsUSDStageErrorsO0H4TypeO011interactionL010Foundation4UUIDV6targettMd, &_s9RealityIO27SceneDescriptionFoundationsO4PathV4path_AA39InteractionSpecificationsUSDStageErrorsO0H4TypeO011interactionL010Foundation4UUIDV6targettMR);
    v87 = *(v86 + 48);
    v88 = *(v86 + 64);
    v89 = v133;
    *v85 = v133;
    v132(&v85[v87], v137, v136);
    type metadata accessor for InteractionSpecificationsUSDStageErrors.InteractionType(0);
    swift_storeEnumTagMultiPayload();
    v90 = v130;
    v91 = v129;
    (*(v130 + 16))(&v85[v88], v14, v129);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v92 = v89;

    (*(v90 + 8))(v14, v91);
    return v22;
  }

  v136 = v14;
  v68 = *(*(*(v65 + 56) + 8 * v66) + 16);
  v69 = RIOPxrUsdObjectCopyPath();
  MEMORY[0x28223BE20](v69);
  v70 = v133;
  *(&v129 - 4) = v65;
  *(&v129 - 3) = v70;
  *(&v129 - 2) = v137;
  v71 = v131;
  v72 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay10Foundation4UUIDVG_9RealityIO4PrimCsAE_pTg5(partial apply for closure #1 in Stage.setTrigger(trigger:at:mapping:), (&v129 - 6), v62);
  if (v71)
  {
    (*(v130 + 8))(v136, v129);

    return v22;
  }

  v107 = v72;

  v140 = &type metadata for Schema;
  v141 = &protocol witness table for Schema;
  v139[0] = v22;
  v108 = swift_getKeyPath();

  if (String.count.getter() < 1)
  {
    v109 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v109 = RIOPxrTfTokenCreateWithCString();
  }

  v135 = v22;
  specialized Properties.subscript.setter(v109, v108, MEMORY[0x277D00A50], MEMORY[0x277D00E40]);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVGMd, &_ss23_ContiguousArrayStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVGMR);
  v113 = swift_initStackObject();
  *(v113 + 16) = xmmword_2619891C0;
  *(v113 + 32) = v69;
  v114 = v69;
  specialized Properties.subscript.setter(v113);
  swift_getKeyPath();
  if (v107 >> 62)
  {
    v115 = __CocoaSet.count.getter();
  }

  else
  {
    v115 = *((v107 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v116 = v129;
  if (!v115)
  {

    v117 = MEMORY[0x277D84F90];
LABEL_61:
    specialized Properties.subscript.setter(v117);

    (*(v130 + 8))(v136, v116);
    outlined destroy of Any?(v139, &_s9RealityIO10PropertiesVyAA20CollideTriggerSchema_pGMd, &_s9RealityIO10PropertiesVyAA20CollideTriggerSchema_pGMR);
    return v135;
  }

  v138 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v115 & ~(v115 >> 63), 0);
  if ((v115 & 0x8000000000000000) == 0)
  {
    v137 = v114;
    v117 = v138;
    if ((v107 & 0xC000000000000001) != 0)
    {
      v131 = v71;
      for (i = 0; i != v115; ++i)
      {
        v119 = *(MEMORY[0x26670F670](i, v107) + 16);
        v120 = RIOPxrUsdObjectCopyPath();
        swift_unknownObjectRelease();
        v138 = v117;
        v122 = *(v117 + 16);
        v121 = *(v117 + 24);
        if (v122 >= v121 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v121 > 1), v122 + 1, 1);
          v117 = v138;
        }

        *(v117 + 16) = v122 + 1;
        *(v117 + 8 * v122 + 32) = v120;
      }
    }

    else
    {
      v123 = 32;
      do
      {
        v124 = *(*(v107 + v123) + 16);
        v125 = RIOPxrUsdObjectCopyPath();
        v138 = v117;
        v127 = *(v117 + 16);
        v126 = *(v117 + 24);
        if (v127 >= v126 >> 1)
        {
          v128 = v125;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v126 > 1), v127 + 1, 1);
          v125 = v128;
          v117 = v138;
        }

        *(v117 + 16) = v127 + 1;
        *(v117 + 8 * v127 + 32) = v125;
        v123 += 8;
        --v115;
      }

      while (v115);
    }

    v116 = v129;
    v114 = v137;
    goto LABEL_61;
  }

  __break(1u);
  return result;
}

ValueMetadata *Stage.setAction(action:at:mapping:)(void (**a1)(void *, uint64_t, uint64_t, char *), void **a2, uint64_t a3)
{
  v1025 = a3;
  v1027 = a1;
  v4 = type metadata accessor for __RKWaitActionArguments();
  v909 = *(v4 - 8);
  v910 = v4;
  v5 = *(v909 + 64);
  MEMORY[0x28223BE20](v4);
  v908 = &v876 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for __RKEntityHideActionBuildOutAnimationType();
  v929 = *(v7 - 8);
  v930 = v7;
  v8 = *(v929 + 64);
  MEMORY[0x28223BE20](v7);
  v918 = &v876 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v917 = &v876 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit41__RKEntityHideActionBuildOutAnimationTypeOSgMd, &_s10RealityKit41__RKEntityHideActionBuildOutAnimationTypeOSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v927 = &v876 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v928 = &v876 - v16;
  v968 = type metadata accessor for __RKEntityHideActionArguments();
  v967 = *(v968 - 8);
  v17 = *(v967 + 64);
  MEMORY[0x28223BE20](v968);
  v954 = &v876 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for __RKEntityShowActionBuildInAnimationType();
  v905 = *(v19 - 8);
  v906 = v19;
  v20 = *(v905 + 64);
  MEMORY[0x28223BE20](v19);
  v889 = &v876 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v888 = &v876 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit40__RKEntityShowActionBuildInAnimationTypeOSgMd, &_s10RealityKit40__RKEntityShowActionBuildInAnimationTypeOSgMR);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v903 = &v876 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v904 = &v876 - v28;
  v950 = type metadata accessor for __RKEntityShowActionArguments();
  v949 = *(v950 - 8);
  v29 = *(v949 + 64);
  MEMORY[0x28223BE20](v950);
  v942 = &v876 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v881 = &v876 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit22__RKEntityMoveEaseTypeOSgMd, &_s10RealityKit22__RKEntityMoveEaseTypeOSgMR);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34 - 8);
  v946 = &v876 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v924 = &v876 - v38;
  MEMORY[0x28223BE20](v39);
  v900 = &v876 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit18__RKEntityMoveEaseOSgMd, &_s10RealityKit18__RKEntityMoveEaseOSgMR);
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41 - 8);
  v945 = &v876 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v923 = &v876 - v45;
  MEMORY[0x28223BE20](v46);
  v899 = (&v876 - v47);
  v916 = type metadata accessor for __RKEntityMoveSelection();
  v898 = *(v916 - 8);
  v48 = *(v898 + 64);
  MEMORY[0x28223BE20](v916);
  v886 = &v876 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50);
  v896 = &v876 - v51;
  MEMORY[0x28223BE20](v52);
  v897 = &v876 - v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit23__RKEntityMoveSelectionOSgMd, &_s10RealityKit23__RKEntityMoveSelectionOSgMR);
  v55 = *(*(v54 - 8) + 64);
  MEMORY[0x28223BE20](v54 - 8);
  v895 = &v876 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v57);
  v907 = &v876 - v58;
  v59 = type metadata accessor for __RKEntityTransformActionArguments();
  v936 = *(v59 - 8);
  v937 = v59;
  v60 = *(v936 + 64);
  MEMORY[0x28223BE20](v59);
  v931 = &v876 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  started = type metadata accessor for __RKEntityStartAnimateActionArguments();
  v939 = *(started - 8);
  v62 = *(v939 + 64);
  MEMORY[0x28223BE20](started);
  v64 = &v876 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v65);
  v943 = &v876 - v66;
  v67 = type metadata accessor for __RKEntitySpinActionArguments();
  v883 = *(v67 - 8);
  v884 = v67;
  v68 = *(v883 + 64);
  MEMORY[0x28223BE20](v67);
  v885 = &v876 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit27__RKEntitySpinDirectionTypeOSgMd, &_s10RealityKit27__RKEntitySpinDirectionTypeOSgMR);
  v71 = *(*(v70 - 8) + 64);
  MEMORY[0x28223BE20](v70 - 8);
  v876 = &v876 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v73);
  v877 = &v876 - v74;
  v892 = type metadata accessor for __RKEntityOrbitEntityActionArguments();
  v911 = *(v892 - 8);
  v75 = *(v911 + 64);
  MEMORY[0x28223BE20](v892);
  v914 = &v876 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1008 = type metadata accessor for __RKEntityCustomActionArguments();
  v1007 = *(v1008 - 8);
  v77 = *(v1007 + 64);
  MEMORY[0x28223BE20](v1008);
  v1006 = &v876 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  v887 = type metadata accessor for __RKEntityLookAtCameraActionArguments();
  v891 = *(v887 - 8);
  v79 = *(v891 + 64);
  MEMORY[0x28223BE20](v887);
  v901 = &v876 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  v948 = type metadata accessor for __RKEntityForceActionArguments();
  v953 = *(v948 - 8);
  v81 = *(v953 + 64);
  MEMORY[0x28223BE20](v948);
  v955 = &v876 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1015 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_10RealityKit29__RKEntityActionSpecificationO7elementtMd, &_sSi6offset_10RealityKit29__RKEntityActionSpecificationO7elementtMR);
  v966 = *(v1015 - 8);
  v83 = *(v966 + 64);
  MEMORY[0x28223BE20](v1015);
  v1005 = (&v876 - v84);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_10RealityKit29__RKEntityActionSpecificationO7elementtSgMd, &_sSi6offset_10RealityKit29__RKEntityActionSpecificationO7elementtSgMR);
  v86 = *(*(v85 - 8) + 64);
  MEMORY[0x28223BE20](v85 - 8);
  v1009 = (&v876 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v88);
  v1017 = (&v876 - v89);
  v960 = type metadata accessor for __RKEntityEmphasisAnimationType();
  v958 = *(v960 - 8);
  v90 = *(v958 + 64);
  MEMORY[0x28223BE20](v960);
  v959 = &v876 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit31__RKEntityEmphasisAnimationTypeOSgMd, &_s10RealityKit31__RKEntityEmphasisAnimationTypeOSgMR);
  v93 = *(*(v92 - 8) + 64);
  MEMORY[0x28223BE20](v92 - 8);
  v957 = &v876 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v95);
  v964 = &v876 - v96;
  v962 = type metadata accessor for __RKEntityActionAnimationStyle();
  v961 = *(v962 - 8);
  v97 = *(v961 + 64);
  MEMORY[0x28223BE20](v962);
  v944 = &v876 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v99);
  v922 = &v876 - v100;
  MEMORY[0x28223BE20](v101);
  v951 = &v876 - v102;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit30__RKEntityActionAnimationStyleOSgMd, &_s10RealityKit30__RKEntityActionAnimationStyleOSgMR);
  v104 = *(*(v103 - 8) + 64);
  MEMORY[0x28223BE20](v103 - 8);
  v926 = &v876 - ((v105 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v106);
  v938 = &v876 - v107;
  MEMORY[0x28223BE20](v108);
  v902 = &v876 - v109;
  MEMORY[0x28223BE20](v110);
  v915 = &v876 - v111;
  MEMORY[0x28223BE20](v112);
  v956 = &v876 - v113;
  MEMORY[0x28223BE20](v114);
  v963 = &v876 - v115;
  v994 = type metadata accessor for __RKEntityEmphasisActionArguments();
  v993 = *(v994 - 8);
  v116 = *(v993 + 64);
  MEMORY[0x28223BE20](v994);
  v1000 = &v876 - ((v117 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1014 = type metadata accessor for __RKChangeSceneActionArguments();
  v1013 = *(v1014 - 8);
  v118 = *(v1013 + 64);
  MEMORY[0x28223BE20](v1014);
  v1012 = &v876 - ((v119 + 15) & 0xFFFFFFFFFFFFFFF0);
  v998 = type metadata accessor for __RKEntityActionMultiplePerformBehavior();
  v999 = *(v998 - 8);
  v120 = *(v999 + 64);
  MEMORY[0x28223BE20](v998);
  v912 = &v876 - ((v121 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v122);
  v913 = &v876 - v123;
  MEMORY[0x28223BE20](v124);
  v934 = &v876 - v125;
  MEMORY[0x28223BE20](v126);
  v974 = &v876 - v127;
  MEMORY[0x28223BE20](v128);
  v992 = &v876 - v129;
  MEMORY[0x28223BE20](v130);
  v991 = &v876 - v131;
  v1010 = type metadata accessor for __RKAudioSpatialModeSelection();
  v1004 = *(v1010 - 8);
  v132 = *(v1004 + 64);
  MEMORY[0x28223BE20](v1010);
  v973 = &v876 - ((v133 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v134);
  v989 = &v876 - v135;
  MEMORY[0x28223BE20](v136);
  v988 = &v876 - v137;
  v997 = type metadata accessor for __RKEntityAudioActionType();
  v996 = *(v997 - 8);
  v138 = *(v996 + 64);
  MEMORY[0x28223BE20](v997);
  v986 = &v876 - ((v139 + 15) & 0xFFFFFFFFFFFFFFF0);
  v977 = type metadata accessor for __RKEntityGroupActionOrder();
  v983 = *(v977 - 8);
  v140 = *(v983 + 64);
  MEMORY[0x28223BE20](v977);
  v965 = &v876 - ((v141 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v142);
  v976 = &v876 - v143;
  MEMORY[0x28223BE20](v144);
  v971 = &v876 - v145;
  v984 = type metadata accessor for __RKEntityActionGroupArguments();
  v995 = *(v984 - 8);
  v146 = *(v995 + 64);
  MEMORY[0x28223BE20](v984);
  v925 = &v876 - ((v147 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v148);
  v975 = &v876 - v149;
  MEMORY[0x28223BE20](v150);
  v972 = &v876 - v151;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit39__RKEntityActionMultiplePerformBehaviorOSgMd, &_s10RealityKit39__RKEntityActionMultiplePerformBehaviorOSgMR);
  v153 = *(*(v152 - 8) + 64);
  MEMORY[0x28223BE20](v152 - 8);
  v990 = &v876 - ((v154 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v155);
  v1003 = &v876 - v156;
  MEMORY[0x28223BE20](v157);
  v970 = &v876 - v158;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit29__RKAudioSpatialModeSelectionOSgMd, &_s10RealityKit29__RKAudioSpatialModeSelectionOSgMR);
  v160 = *(*(v159 - 8) + 64);
  MEMORY[0x28223BE20](v159 - 8);
  v987 = &v876 - ((v161 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v162);
  v1002 = &v876 - v163;
  MEMORY[0x28223BE20](v164);
  v982 = &v876 - v165;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit25__RKEntityAudioActionTypeOSgMd, &_s10RealityKit25__RKEntityAudioActionTypeOSgMR);
  v167 = *(*(v166 - 8) + 64);
  MEMORY[0x28223BE20](v166 - 8);
  v985 = &v876 - ((v168 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v169);
  v1001 = &v876 - v170;
  MEMORY[0x28223BE20](v171);
  v981 = &v876 - v172;
  v1022 = type metadata accessor for UUID();
  v1021 = *(v1022 - 1);
  v173 = *(v1021 + 64);
  MEMORY[0x28223BE20](v1022);
  v952 = &v876 - ((v174 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v175);
  v940 = &v876 - v176;
  MEMORY[0x28223BE20](v177);
  v880 = &v876 - v178;
  MEMORY[0x28223BE20](v179);
  v920 = &v876 - v180;
  MEMORY[0x28223BE20](v181);
  v919 = &v876 - v182;
  MEMORY[0x28223BE20](v183);
  v932 = &v876 - v184;
  MEMORY[0x28223BE20](v185);
  v878 = &v876 - v186;
  MEMORY[0x28223BE20](v187);
  v879 = &v876 - v188;
  MEMORY[0x28223BE20](v189);
  v890 = &v876 - v190;
  MEMORY[0x28223BE20](v191);
  v193 = &v876 - v192;
  MEMORY[0x28223BE20](v194);
  v882 = &v876 - v195;
  MEMORY[0x28223BE20](v196);
  v947 = &v876 - v197;
  MEMORY[0x28223BE20](v198);
  v200 = &v876 - v199;
  MEMORY[0x28223BE20](v201);
  v203 = &v876 - v202;
  MEMORY[0x28223BE20](v204);
  v980 = &v876 - v205;
  MEMORY[0x28223BE20](v206);
  v208 = &v876 - v207;
  v1023 = type metadata accessor for __RKEntityAudioActionArguments();
  v1016 = *(v1023 - 1);
  v209 = *(v1016 + 64);
  MEMORY[0x28223BE20](v1023);
  v979 = &v876 - ((v210 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v211);
  i = &v876 - v212;
  *&v1030.f64[0] = type metadata accessor for __RKEntityActionSpecification();
  v1028.f64[0] = *(*&v1030.f64[0] - 8);
  v213 = *(*&v1028.f64[0] + 64);
  MEMORY[0x28223BE20](*&v1030.f64[0]);
  v921 = &v876 - ((v214 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v215);
  v933 = (&v876 - v216);
  MEMORY[0x28223BE20](v217);
  v1011 = &v876 - v218;
  MEMORY[0x28223BE20](v219);
  v969 = &v876 - v220;
  MEMORY[0x28223BE20](v221);
  v978 = &v876 - v222;
  MEMORY[0x28223BE20](v223);
  v225 = &v876 - v224;
  v226 = *a2;
  v227 = RIOPxrTfTokenEmpty();
  v894 = *(v1026 + 16);
  v1024 = v226;
  PrimIfNeeded = RIOPxrUsdStageCreatePrimIfNeeded();
  v893 = type metadata accessor for Prim();
  v229 = swift_allocObject();
  *(v229 + 16) = PrimIfNeeded;
  v230 = v229;

  v231 = String.count.getter();
  v935 = v64;
  if (v231 < 1)
  {
    v232 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v232 = RIOPxrTfTokenCreateWithCString();
  }

  v233 = v232;
  v1029 = v230;
  Kind = v230[1].Kind;
  RIOPxrUsdPrimSetTypeName();

  v235 = v1028.f64[0];
  v236 = *(*&v1028.f64[0] + 16);
  v237 = v1030.f64[0];
  v1020 = (*&v1028.f64[0] + 16);
  v1019 = v236;
  v236(v225, v1027, *&v1030.f64[0]);
  v238 = (*(*&v235 + 88))(v225, COERCE_FLOAT64_T(*&v237));
  v239 = v238;
  if (v238 != *MEMORY[0x277CDAF90])
  {
    if (v238 == *MEMORY[0x277CDAF48])
    {
      v272 = v1030.f64[0];
      (*(*&v1028.f64[0] + 96))(v225, *&v1030.f64[0]);
      (*(v1013 + 32))(v1012, v225, v1014);
      __RKChangeSceneActionArguments.targetSceneIdentifier.getter();
      v273 = v1025;
      v251 = v1029;
      if (!*(v1025 + 16) || (v274 = specialized __RawDictionaryStorage.find<A>(_:)(v203), (v275 & 1) == 0))
      {
        (*(v1021 + 8))(v203, v1022);
        type metadata accessor for InteractionSpecificationsUSDStageErrors(0);
        lazy protocol witness table accessor for type InteractionSpecificationsUSDStageErrors and conformance InteractionSpecificationsUSDStageErrors(&lazy protocol witness table cache variable for type InteractionSpecificationsUSDStageErrors and conformance InteractionSpecificationsUSDStageErrors, type metadata accessor for InteractionSpecificationsUSDStageErrors);
        v301 = swift_allocError();
        v303 = v302;
        v304 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO27SceneDescriptionFoundationsO4PathV4path_AA39InteractionSpecificationsUSDStageErrorsO0H4TypeO011interactionL010Foundation4UUIDV6targettMd, &_s9RealityIO27SceneDescriptionFoundationsO4PathV4path_AA39InteractionSpecificationsUSDStageErrorsO0H4TypeO011interactionL010Foundation4UUIDV6targettMR);
        v305 = *(v304 + 48);
        v306 = *(v304 + 64);
        v307 = v1024;
        *v303 = v1024;
        v1019(&v303[v305], v1027, *&v272);
        type metadata accessor for InteractionSpecificationsUSDStageErrors.InteractionType(0);
        swift_storeEnumTagMultiPayload();
        v308 = v307;
        v309 = v1012;
        __RKChangeSceneActionArguments.targetSceneIdentifier.getter();
        swift_storeEnumTagMultiPayload();
        v1031 = v301;
        swift_willThrow();

        (*(v1013 + 8))(v309, v1014);
        return v251;
      }

      v276 = *(*(v273 + 56) + 8 * v274);
      v277 = *(v1021 + 8);

      v277(v203, v1022);
      v278 = *(v276 + 16);
      v279 = RIOPxrUsdObjectCopyPath();

      v1042 = &protocol witness table for Schema;
      v1041 = &type metadata for Schema;
      v1039 = v251;
      KeyPath = swift_getKeyPath();

      if (String.count.getter() < 1)
      {
        v281 = RIOPxrTfTokenEmpty();
      }

      else
      {
        v281 = RIOPxrTfTokenCreateWithCString();
      }

      specialized Properties.subscript.setter(v281, KeyPath, MEMORY[0x277D00A50], MEMORY[0x277D00E40]);
      swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVGMd, &_ss23_ContiguousArrayStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVGMR);
      v373 = swift_allocObject();
      *(v373 + 16) = xmmword_2619891C0;
      *(v373 + 32) = v279;
      specialized Properties.subscript.setter(v373);
      (*(v1013 + 8))(v1012, v1014);
      v374 = &_s9RealityIO10PropertiesVyAA23ChangeSceneActionSchema_pGMd;
      v375 = &_s9RealityIO10PropertiesVyAA23ChangeSceneActionSchema_pGMR;
LABEL_162:
      outlined destroy of Any?(&v1039, v374, v375);
      return v251;
    }

    v251 = v1029;
    if (v238 == *MEMORY[0x277CDAFA8])
    {
      v290 = v1030.f64[0];
      (*(*&v1028.f64[0] + 96))(v225, *&v1030.f64[0]);
      v291 = (*(v1007 + 32))(v1006, v225, v1008);
      MEMORY[0x26670E2D0](v291);
      v292 = v1025;
      if (!*(v1025 + 16) || (v293 = specialized __RawDictionaryStorage.find<A>(_:)(v193), (v294 & 1) == 0))
      {
        (*(v1021 + 8))(v193, v1022);
        type metadata accessor for InteractionSpecificationsUSDStageErrors(0);
        lazy protocol witness table accessor for type InteractionSpecificationsUSDStageErrors and conformance InteractionSpecificationsUSDStageErrors(&lazy protocol witness table cache variable for type InteractionSpecificationsUSDStageErrors and conformance InteractionSpecificationsUSDStageErrors, type metadata accessor for InteractionSpecificationsUSDStageErrors);
        v324 = swift_allocError();
        v326 = v325;
        v327 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO27SceneDescriptionFoundationsO4PathV4path_AA39InteractionSpecificationsUSDStageErrorsO0H4TypeO011interactionL010Foundation4UUIDV6targettMd, &_s9RealityIO27SceneDescriptionFoundationsO4PathV4path_AA39InteractionSpecificationsUSDStageErrorsO0H4TypeO011interactionL010Foundation4UUIDV6targettMR);
        v328 = *(v327 + 48);
        v329 = *(v327 + 64);
        v330 = v1024;
        *v326 = v1024;
        v1019(&v326[v328], v1027, *&v290);
        type metadata accessor for InteractionSpecificationsUSDStageErrors.InteractionType(0);
        swift_storeEnumTagMultiPayload();
        v331 = v330;
        v332 = v1006;
        MEMORY[0x26670E2D0](v331);
        swift_storeEnumTagMultiPayload();
        v1031 = v324;
        swift_willThrow();

        (*(v1007 + 8))(v332, v1008);
        return v251;
      }

      v295 = *(*(v292 + 56) + 8 * v293);
      v296 = *(v1021 + 8);

      v296(v193, v1022);
      v297 = *(v295 + 16);
      v298 = RIOPxrUsdObjectCopyPath();

      v1042 = &protocol witness table for Schema;
      v1041 = &type metadata for Schema;
      v1039 = v251;
      v299 = swift_getKeyPath();

      if (String.count.getter() < 1)
      {
        v300 = RIOPxrTfTokenEmpty();
      }

      else
      {
        v300 = RIOPxrTfTokenCreateWithCString();
      }

      specialized Properties.subscript.setter(v300, v299, MEMORY[0x277D00A50], MEMORY[0x277D00E40]);
      swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVGMd, &_ss23_ContiguousArrayStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVGMR);
      v408 = swift_allocObject();
      *(v408 + 16) = xmmword_2619891C0;
      *(v408 + 32) = v298;
      v409 = v298;
      specialized Properties.subscript.setter(v408);
      swift_getKeyPath();
      v410 = v1006;
      v411 = __RKEntityCustomActionArguments.actionIdentifier.getter();
      specialized Properties.subscript.setter(v411, v412);

      (*(v1007 + 8))(v410, v1008);
      v374 = &_s9RealityIO10PropertiesVyAA24NotificationActionSchema_pGMd;
      v375 = &_s9RealityIO10PropertiesVyAA24NotificationActionSchema_pGMR;
      goto LABEL_162;
    }

    if (v238 == *MEMORY[0x277CDAFB0])
    {
      v251 = *&v1030.f64[0];
      (*(*&v1028.f64[0] + 96))(v225, *&v1030.f64[0]);
      v310 = (*(v993 + 32))(v1000, v225, v994);
      MEMORY[0x26670E350](v310);
      v311 = v1025;
      if (!*(v1025 + 16) || (v312 = specialized __RawDictionaryStorage.find<A>(_:)(v200), (v313 & 1) == 0))
      {
        (*(v1021 + 8))(v200, v1022);
        type metadata accessor for InteractionSpecificationsUSDStageErrors(0);
        lazy protocol witness table accessor for type InteractionSpecificationsUSDStageErrors and conformance InteractionSpecificationsUSDStageErrors(&lazy protocol witness table cache variable for type InteractionSpecificationsUSDStageErrors and conformance InteractionSpecificationsUSDStageErrors, type metadata accessor for InteractionSpecificationsUSDStageErrors);
        v351 = swift_allocError();
        v353 = v352;
        v354 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO27SceneDescriptionFoundationsO4PathV4path_AA39InteractionSpecificationsUSDStageErrorsO0H4TypeO011interactionL010Foundation4UUIDV6targettMd, &_s9RealityIO27SceneDescriptionFoundationsO4PathV4path_AA39InteractionSpecificationsUSDStageErrorsO0H4TypeO011interactionL010Foundation4UUIDV6targettMR);
        v355 = *(v354 + 48);
        v356 = *(v354 + 64);
        v357 = v1024;
        *v353 = v1024;
        v1019(&v353[v355], v1027, v251);
        type metadata accessor for InteractionSpecificationsUSDStageErrors.InteractionType(0);
        swift_storeEnumTagMultiPayload();
        v358 = v357;
        v359 = v1000;
        MEMORY[0x26670E350](v358);
        swift_storeEnumTagMultiPayload();
        v1031 = v351;
        swift_willThrow();

        (*(v993 + 8))(v359, v994);
        return v251;
      }

      v314 = *(*(v311 + 56) + 8 * v312);
      v315 = *(v1021 + 8);

      v315(v200, v1022);
      v316 = *(v314 + 16);
      v317 = RIOPxrUsdObjectCopyPath();

      v1042 = &protocol witness table for Schema;
      v1041 = &type metadata for Schema;
      v251 = v1029;
      v1039 = v1029;
      v318 = swift_getKeyPath();

      if (String.count.getter() < 1)
      {
        v319 = RIOPxrTfTokenEmpty();
      }

      else
      {
        v319 = RIOPxrTfTokenCreateWithCString();
      }

      v495 = v962;
      v496 = v961;
      v497 = v959;
      specialized Properties.subscript.setter(v319, v318, MEMORY[0x277D00A50], MEMORY[0x277D00E40]);
      swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVGMd, &_ss23_ContiguousArrayStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVGMR);
      v498 = swift_allocObject();
      *(v498 + 16) = xmmword_2619891C0;
      *(v498 + 32) = v317;
      *&v1030.f64[0] = v317;
      specialized Properties.subscript.setter(v498);
      swift_getKeyPath();
      v499 = __RKEntityEmphasisActionArguments.duration.getter();
      v500 = BYTE4(v499) & 1;
      if ((v499 & 0x100000000) != 0)
      {
        v501 = 0.0;
      }

      else
      {
        v501 = *&v499;
      }

      specialized Properties.subscript.setter(*&v501, v500);
      v502 = swift_getKeyPath();
      v503 = v963;
      __RKEntityEmphasisActionArguments.animationStyle.getter();
      v504 = v956;
      outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v503, v956, &_s10RealityKit30__RKEntityActionAnimationStyleOSgMd, &_s10RealityKit30__RKEntityActionAnimationStyleOSgMR);
      if ((*(v496 + 48))(v504, 1, v495) == 1)
      {
        outlined destroy of Any?(v503, &_s10RealityKit30__RKEntityActionAnimationStyleOSgMd, &_s10RealityKit30__RKEntityActionAnimationStyleOSgMR);
        v505 = 0;
      }

      else
      {
        v506 = v951;
        (*(v496 + 32))(v951, v504, v495);
        __RKEntityActionAnimationStyle.rawValue.getter();
        v507 = (v496 + 8);
        if (String.count.getter() < 1)
        {

          v508 = RIOPxrTfTokenEmpty();
          (*v507)(v506, v495);
          outlined destroy of Any?(v963, &_s10RealityKit30__RKEntityActionAnimationStyleOSgMd, &_s10RealityKit30__RKEntityActionAnimationStyleOSgMR);
        }

        else
        {
          String.utf8CString.getter();

          v508 = RIOPxrTfTokenCreateWithCString();
          (*v507)(v506, v495);
          outlined destroy of Any?(v963, &_s10RealityKit30__RKEntityActionAnimationStyleOSgMd, &_s10RealityKit30__RKEntityActionAnimationStyleOSgMR);
        }

        v505 = v508;
      }

      specialized Properties.subscript.setter(v505, v502, MEMORY[0x277D00A50], MEMORY[0x277D00E40]);
      v544 = swift_getKeyPath();
      v545 = v964;
      __RKEntityEmphasisActionArguments.emphasisAnimationType.getter();
      v546 = v957;
      outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v545, v957, &_s10RealityKit31__RKEntityEmphasisAnimationTypeOSgMd, &_s10RealityKit31__RKEntityEmphasisAnimationTypeOSgMR);
      v547 = v958;
      v548 = v960;
      if ((*(v958 + 48))(v546, 1, v960) == 1)
      {
        outlined destroy of Any?(v545, &_s10RealityKit31__RKEntityEmphasisAnimationTypeOSgMd, &_s10RealityKit31__RKEntityEmphasisAnimationTypeOSgMR);
        v549 = 0;
      }

      else
      {
        (*(v547 + 32))(v497, v546, v548);
        __RKEntityEmphasisAnimationType.rawValue.getter();
        v550 = (v547 + 8);
        if (String.count.getter() < 1)
        {

          v551 = RIOPxrTfTokenEmpty();
          (*v550)(v497, v548);
          outlined destroy of Any?(v964, &_s10RealityKit31__RKEntityEmphasisAnimationTypeOSgMd, &_s10RealityKit31__RKEntityEmphasisAnimationTypeOSgMR);
        }

        else
        {
          String.utf8CString.getter();

          v551 = RIOPxrTfTokenCreateWithCString();
          (*v550)(v497, v548);
          outlined destroy of Any?(v964, &_s10RealityKit31__RKEntityEmphasisAnimationTypeOSgMd, &_s10RealityKit31__RKEntityEmphasisAnimationTypeOSgMR);
        }

        v549 = v551;
      }

      specialized Properties.subscript.setter(v549, v544, MEMORY[0x277D00A50], MEMORY[0x277D00E40]);

      (*(v993 + 8))(v1000, v994);
      v374 = &_s9RealityIO10PropertiesVyAA20EmphasisActionSchema_pGMd;
      v375 = &_s9RealityIO10PropertiesVyAA20EmphasisActionSchema_pGMR;
      goto LABEL_162;
    }

    v333 = *MEMORY[0x277CDAFA0];
    v334 = *&v1028.f64[0];
    if (v238 == v333)
    {
      v335 = v1030.f64[0];
      (*(*&v1028.f64[0] + 96))(v225, *&v1030.f64[0]);
      (*(v995 + 32))(v975, v225, v984);
      v1042 = &protocol witness table for Schema;
      v1041 = &type metadata for Schema;
      v1039 = v251;
      v336 = swift_getKeyPath();

      if (String.count.getter() < 1)
      {
        v337 = RIOPxrTfTokenEmpty();
      }

      else
      {
        v337 = RIOPxrTfTokenCreateWithCString();
      }

      v225 = v1015;
      v251 = v977;
      specialized Properties.subscript.setter(v337, v336, MEMORY[0x277D00A50], MEMORY[0x277D00E40]);
      v432 = swift_getKeyPath();
      v433 = v976;
      __RKEntityActionGroupArguments.order.getter();
      v434 = v983;
      v435 = v965;
      (*(v983 + 16))(v965, v433, v251);
      v436 = (*(v434 + 88))(v435, v251);
      if (v436 != *MEMORY[0x277CDAEF8] && v436 != *MEMORY[0x277CDAF00])
      {
        goto LABEL_349;
      }

      v437 = v1028.f64[0];
      (*(v983 + 8))(v976, v251);
      if (String.count.getter() < 1)
      {

        v439 = RIOPxrTfTokenEmpty();
      }

      else
      {
        String.utf8CString.getter();

        v438 = RIOPxrTfTokenCreateWithCString();

        v439 = v438;
      }

      specialized Properties.subscript.setter(v439, v432, MEMORY[0x277D00A50], MEMORY[0x277D00E40]);
      swift_getKeyPath();
      v440 = __RKEntityActionGroupArguments.loopCount.getter();
      if (v441)
      {
        goto LABEL_348;
      }

      specialized Properties.subscript.setter(v440 == 0);
      LODWORD(v239) = swift_getKeyPath();
      v442 = __RKEntityActionGroupArguments.loopCount.getter();
      specialized Properties.subscript.setter(v442, v443 & 1);
      v444 = MEMORY[0x277D84F90];
      v1037 = MEMORY[0x277D84F90];
      v445 = 0;
      v1016 = __RKEntityActionGroupArguments.actions.getter();
      v446 = *(v1016 + 16);
      v1027 = (v966 + 56);
      v1023 = (v966 + 48);
      v1022 = (*&v437 + 32);
      v1021 = *&v437 + 8;
      v334 = v1009;
      for (i = v446; ; v446 = i)
      {
        v447 = v1017;
        if (v445 == v446)
        {
          v448 = 1;
          v445 = v446;
          v251 = v1029;
        }

        else
        {
          if ((v445 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_233:
            __break(1u);
            goto LABEL_234;
          }

          v334 = v1029;
          if (v445 >= *(v1016 + 16))
          {
            goto LABEL_233;
          }

          v449 = v1016 + ((*(*&v1028.f64[0] + 80) + 32) & ~*(*&v1028.f64[0] + 80)) + *(*&v1028.f64[0] + 72) * v445;
          v450 = *(v225 + 12);
          v451 = v1005;
          *v1005 = v445;
          v1019(v451 + v450, v449, *&v335);
          v452 = v451;
          v251 = v334;
          v334 = v1009;
          outlined init with take of (URL, __REAsset)(v452, v1009, &_sSi6offset_10RealityKit29__RKEntityActionSpecificationO7elementtMd, &_sSi6offset_10RealityKit29__RKEntityActionSpecificationO7elementtMR);
          v448 = 0;
          ++v445;
          v447 = v1017;
        }

        (*v1027)(v334, v448, 1, v225);
        outlined init with take of (URL, __REAsset)(v334, v447, &_sSi6offset_10RealityKit29__RKEntityActionSpecificationO7elementtSgMd, &_sSi6offset_10RealityKit29__RKEntityActionSpecificationO7elementtSgMR);
        v239 = v444;
        if ((*v1023)(v447, 1, v225) == 1)
        {
          break;
        }

        v251 = *v447;
        v453 = v1011;
        (*v1022)(v1011, v447 + *(v225 + 12), COERCE_FLOAT64_T(*&v335));
        v454 = RIOPxrSdfPathCopyString();
        v455 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v457 = v456;

        v1033 = 0x5F6E6F697463412FLL;
        v1034 = 0xE800000000000000;
        if (__OFADD__(v251, 1))
        {
          __break(1u);
          goto LABEL_218;
        }

        v1032 = &v251->Kind + 1;
        v458 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x26670F080](v458);

        v459 = v1033;
        v251 = v1034;
        v1033 = v455;
        v1034 = v457;

        MEMORY[0x26670F080](v459, v251);

        String.utf8CString.getter();

        v460 = RIOPxrSdfPathCreateFromCString();

        v1033 = v460;
        v461 = v1031;
        Stage.setAction(action:at:mapping:)(v453, &v1033, v1025);
        v1031 = v461;
        if (v461)
        {

          (*v1021)(v453, *&v1030.f64[0]);
          (*(v995 + 8))(v975, v984);

          outlined destroy of Any?(&v1039, &_s9RealityIO10PropertiesVyAA17GroupActionSchema_pGMd, &_s9RealityIO10PropertiesVyAA17GroupActionSchema_pGMR);

          return v251;
        }

        MEMORY[0x26670F130]();
        if (*((v1037 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v1037 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v251 = *((v1037 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v453 = v1011;
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v335 = v1030.f64[0];
        (*v1021)(v453, *&v1030.f64[0]);
        v444 = v1037;
        v225 = v1015;
      }

      v462 = swift_getKeyPath();
      if (v444 >> 62)
      {
        v463 = __CocoaSet.count.getter();
        v464 = v995;
        if (v463)
        {
          goto LABEL_107;
        }
      }

      else
      {
        v463 = *((v444 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v464 = v995;
        if (v463)
        {
LABEL_107:
          *&v1028.f64[0] = v462;
          v1033 = MEMORY[0x277D84F90];
          v465 = &v1033;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v463 & ~(v463 >> 63), 0);
          if ((v463 & 0x8000000000000000) == 0)
          {
            v467 = 0;
            v468 = v1033;
            *&v1030.f64[0] = v444 & 0xC000000000000001;
            do
            {
              if (*&v1030.f64[0])
              {
                v469 = MEMORY[0x26670F670](v467, v444);
              }

              else
              {
                v469 = *(v444 + 8 * v467 + 32);
              }

              v470 = *(v469 + 16);
              v471 = RIOPxrUsdObjectCopyPath();

              v1033 = v468;
              v473 = v468[2];
              v472 = v468[3];
              if (v473 >= v472 >> 1)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v472 > 1), v473 + 1, 1);
                v468 = v1033;
              }

              ++v467;
              v468[2] = v473 + 1;
              v468[v473 + 4] = v471;
              v251 = v1029;
              v444 = v239;
            }

            while (v463 != v467);

            v464 = v995;
            goto LABEL_331;
          }

          __break(1u);
          goto LABEL_343;
        }
      }

      v468 = MEMORY[0x277D84F90];
LABEL_331:
      specialized Properties.subscript.setter(v468);
      (*(v464 + 1))(v975, v984);
      v374 = &_s9RealityIO10PropertiesVyAA17GroupActionSchema_pGMd;
      v375 = &_s9RealityIO10PropertiesVyAA17GroupActionSchema_pGMR;
      goto LABEL_162;
    }

    if (v238 == *MEMORY[0x277CDAF70])
    {
      v360 = v1030.f64[0];
      (*(*&v1028.f64[0] + 96))(v225, *&v1030.f64[0]);
      v361 = v954;
      v362 = (*(v967 + 32))(v954, v225, v968);
      v363 = v952;
      MEMORY[0x26670DFC0](v362);
      v364 = v1025;
      if (!*(v1025 + 16) || (v365 = specialized __RawDictionaryStorage.find<A>(_:)(v363), (v366 & 1) == 0))
      {
        (*(v1021 + 8))(v363, v1022);
        v1031 = type metadata accessor for InteractionSpecificationsUSDStageErrors(0);
        lazy protocol witness table accessor for type InteractionSpecificationsUSDStageErrors and conformance InteractionSpecificationsUSDStageErrors(&lazy protocol witness table cache variable for type InteractionSpecificationsUSDStageErrors and conformance InteractionSpecificationsUSDStageErrors, type metadata accessor for InteractionSpecificationsUSDStageErrors);
        v474 = swift_allocError();
        v476 = v475;
        v477 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO27SceneDescriptionFoundationsO4PathV4path_AA39InteractionSpecificationsUSDStageErrorsO0H4TypeO011interactionL010Foundation4UUIDV6targettMd, &_s9RealityIO27SceneDescriptionFoundationsO4PathV4path_AA39InteractionSpecificationsUSDStageErrorsO0H4TypeO011interactionL010Foundation4UUIDV6targettMR);
        v478 = *(v477 + 48);
        v479 = *(v477 + 64);
        v480 = v361;
        v481 = v1024;
        *v476 = v1024;
        v1019(&v476[v478], v1027, *&v360);
        type metadata accessor for InteractionSpecificationsUSDStageErrors.InteractionType(0);
        swift_storeEnumTagMultiPayload();
        MEMORY[0x26670DFC0](v481);
        swift_storeEnumTagMultiPayload();
        v1031 = v474;
        swift_willThrow();

        (*(v967 + 8))(v480, v968);
        return v251;
      }

      v367 = *(*(v364 + 56) + 8 * v365);
      v368 = *(v1021 + 8);

      v368(v363, v1022);
      v369 = *(v367 + 16);
      v370 = RIOPxrUsdObjectCopyPath();

      v1042 = &protocol witness table for Schema;
      v1041 = &type metadata for Schema;
      v1039 = v251;
      v371 = swift_getKeyPath();

      if (String.count.getter() < 1)
      {
        v372 = RIOPxrTfTokenEmpty();
      }

      else
      {
        v372 = RIOPxrTfTokenCreateWithCString();
      }

      v580 = v962;
      specialized Properties.subscript.setter(v372, v371, MEMORY[0x277D00A50], MEMORY[0x277D00E40]);
      swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVGMd, &_ss23_ContiguousArrayStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVGMR);
      v581 = swift_allocObject();
      *(v581 + 16) = xmmword_2619891C0;
      *(v581 + 32) = v370;
      *&v1030.f64[0] = v370;
      specialized Properties.subscript.setter(v581);
      swift_getKeyPath();
      v582 = __RKEntityHideActionArguments.duration.getter();
      v583 = BYTE4(v582) & 1;
      if ((v582 & 0x100000000) != 0)
      {
        v584 = 0.0;
      }

      else
      {
        v584 = *&v582;
      }

      specialized Properties.subscript.setter(*&v584, v583);
      v585 = swift_getKeyPath();
      if (String.count.getter() < 1)
      {
        v586 = RIOPxrTfTokenEmpty();
      }

      else
      {
        v586 = RIOPxrTfTokenCreateWithCString();
      }

      v587 = v946;
      v588 = v944;
      specialized Properties.subscript.setter(v586, v585, MEMORY[0x277D00A50], MEMORY[0x277D00E40]);
      v589 = v945;
      __RKEntityHideActionArguments.ease.getter();
      __RKEntityHideActionArguments.easeType.getter();
      v590 = v1031;
      setEaseType #1 (ease:easeType:on:) in Stage.setAction(action:at:mapping:)(v589, v587, v251, v1024, v1027);
      v1031 = v590;
      if (v590)
      {

        outlined destroy of Any?(v587, &_s10RealityKit22__RKEntityMoveEaseTypeOSgMd, &_s10RealityKit22__RKEntityMoveEaseTypeOSgMR);
        outlined destroy of Any?(v589, &_s10RealityKit18__RKEntityMoveEaseOSgMd, &_s10RealityKit18__RKEntityMoveEaseOSgMR);
        (*(v967 + 8))(v361, v968);
LABEL_161:
        v374 = &_s9RealityIO10PropertiesVyAA22VisibilityActionSchema_pGMd;
        v375 = &_s9RealityIO10PropertiesVyAA22VisibilityActionSchema_pGMR;
        goto LABEL_162;
      }

      outlined destroy of Any?(v587, &_s10RealityKit22__RKEntityMoveEaseTypeOSgMd, &_s10RealityKit22__RKEntityMoveEaseTypeOSgMR);
      outlined destroy of Any?(v589, &_s10RealityKit18__RKEntityMoveEaseOSgMd, &_s10RealityKit18__RKEntityMoveEaseOSgMR);
      *&v1028.f64[0] = swift_getKeyPath();
      v592 = v938;
      __RKEntityHideActionArguments.animationStyle.getter();
      v593 = v592;
      v594 = v926;
      outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v592, v926, &_s10RealityKit30__RKEntityActionAnimationStyleOSgMd, &_s10RealityKit30__RKEntityActionAnimationStyleOSgMR);
      v595 = v961;
      if ((*(v961 + 48))(v594, 1, v580) == 1)
      {
        outlined destroy of Any?(v593, &_s10RealityKit30__RKEntityActionAnimationStyleOSgMd, &_s10RealityKit30__RKEntityActionAnimationStyleOSgMR);
        v596 = 0;
      }

      else
      {
        (*(v595 + 32))(v588, v594, v580);
        __RKEntityActionAnimationStyle.rawValue.getter();
        v613 = (v595 + 8);
        if (String.count.getter() < 1)
        {

          v614 = RIOPxrTfTokenEmpty();
          (*v613)(v588, v580);
          outlined destroy of Any?(v938, &_s10RealityKit30__RKEntityActionAnimationStyleOSgMd, &_s10RealityKit30__RKEntityActionAnimationStyleOSgMR);
        }

        else
        {
          String.utf8CString.getter();

          v614 = RIOPxrTfTokenCreateWithCString();
          (*v613)(v588, v580);
          outlined destroy of Any?(v938, &_s10RealityKit30__RKEntityActionAnimationStyleOSgMd, &_s10RealityKit30__RKEntityActionAnimationStyleOSgMR);
        }

        v596 = v614;
        v361 = v954;
      }

      specialized Properties.subscript.setter(v596, *&v1028.f64[0], MEMORY[0x277D00A50], MEMORY[0x277D00E40]);
      *&v1028.f64[0] = swift_getKeyPath();
      v666 = v928;
      __RKEntityHideActionArguments.buildOutAnimationType.getter();
      v667 = v666;
      v668 = v927;
      outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v666, v927, &_s10RealityKit41__RKEntityHideActionBuildOutAnimationTypeOSgMd, &_s10RealityKit41__RKEntityHideActionBuildOutAnimationTypeOSgMR);
      v670 = v929;
      v669 = v930;
      if ((*(v929 + 48))(v668, 1, v930) == 1)
      {
        outlined destroy of Any?(v666, &_s10RealityKit41__RKEntityHideActionBuildOutAnimationTypeOSgMd, &_s10RealityKit41__RKEntityHideActionBuildOutAnimationTypeOSgMR);
        v671 = 0;
      }

      else
      {
        v672 = v917;
        (*(v670 + 32))(v917, v668, v669);
        v673 = v667;
        v674 = v918;
        (*(v670 + 16))(v918, v672, v669);
        LOBYTE(v674) = specialized __RKEntityActionVisibilityTypeUSD.init(from:)(v674);
        (*(v670 + 8))(v672, v669);
        outlined destroy of Any?(v673, &_s10RealityKit41__RKEntityHideActionBuildOutAnimationTypeOSgMd, &_s10RealityKit41__RKEntityHideActionBuildOutAnimationTypeOSgMR);
        __RKEntityActionVisibilityTypeUSD.rawValue.getter(v674);
        if (String.count.getter() <= 0)
        {

          v671 = RIOPxrTfTokenEmpty();
        }

        else
        {
          String.utf8CString.getter();

          v675 = RIOPxrTfTokenCreateWithCString();

          v671 = v675;
        }
      }

      specialized Properties.subscript.setter(v671, *&v1028.f64[0], MEMORY[0x277D00A50], MEMORY[0x277D00E40]);
      swift_getKeyPath();
      v676 = __RKEntityHideActionArguments.distance.getter();
      v677 = BYTE4(v676) & 1;
      if ((v676 & 0x100000000) != 0)
      {
        v678 = 0.0;
      }

      else
      {
        v678 = *&v676;
      }

      specialized Properties.subscript.setter(*&v678, v677);

      (*(v967 + 8))(v361, v968);
      goto LABEL_211;
    }

    if (v238 == *MEMORY[0x277CDAF98])
    {
      (*(*&v1028.f64[0] + 96))(v225, *&v1030.f64[0]);
      v396 = v948;
      v397 = (*(v953 + 32))(v955, v225, v948);
      v398 = v947;
      MEMORY[0x26670E270](v397);
      v399 = v1025;
      if (*(v1025 + 16))
      {
        v400 = specialized __RawDictionaryStorage.find<A>(_:)(v398);
        if (v401)
        {
          v402 = *(*(v399 + 56) + 8 * v400);
          v403 = *(v1021 + 8);

          v403(v398, v1022);
          v404 = *(v402 + 16);
          v405 = RIOPxrUsdObjectCopyPath();

          v1042 = &protocol witness table for Schema;
          v1041 = &type metadata for Schema;
          v1039 = v251;
          v406 = swift_getKeyPath();

          if (String.count.getter() < 1)
          {
            v407 = RIOPxrTfTokenEmpty();
          }

          else
          {
            v407 = RIOPxrTfTokenCreateWithCString();
          }

          specialized Properties.subscript.setter(v407, v406, MEMORY[0x277D00A50], MEMORY[0x277D00E40]);
          swift_getKeyPath();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVGMd, &_ss23_ContiguousArrayStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVGMR);
          v606 = swift_allocObject();
          *(v606 + 16) = xmmword_2619891C0;
          *(v606 + 32) = v405;
          v607 = v405;
          specialized Properties.subscript.setter(v606);
          swift_getKeyPath();
          v608 = __RKEntityForceActionArguments.velocity.getter();
          if (v610)
          {
            v611 = 0uLL;
            v612 = 0.0;
          }

          else
          {
            v611 = vcvtq_f64_f32(v608);
            v612 = v609;
          }

          v1043 = v611;
          v1044 = v612;
          v1045 = 0;
          v1046 = v610 & 1;
          specialized Properties.subscript.setter(&v1043);

          (*(v953 + 8))(v955, v396);
          v374 = &_s9RealityIO10PropertiesVyAA19ImpulseActionSchema_pGMd;
          v375 = &_s9RealityIO10PropertiesVyAA19ImpulseActionSchema_pGMR;
          goto LABEL_162;
        }
      }

      (*(v1021 + 8))(v398, v1022);
      type metadata accessor for InteractionSpecificationsUSDStageErrors(0);
      lazy protocol witness table accessor for type InteractionSpecificationsUSDStageErrors and conformance InteractionSpecificationsUSDStageErrors(&lazy protocol witness table cache variable for type InteractionSpecificationsUSDStageErrors and conformance InteractionSpecificationsUSDStageErrors, type metadata accessor for InteractionSpecificationsUSDStageErrors);
      v513 = swift_allocError();
      v515 = v514;
      v516 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO27SceneDescriptionFoundationsO4PathV4path_AA39InteractionSpecificationsUSDStageErrorsO0H4TypeO011interactionL010Foundation4UUIDV6targettMd, &_s9RealityIO27SceneDescriptionFoundationsO4PathV4path_AA39InteractionSpecificationsUSDStageErrorsO0H4TypeO011interactionL010Foundation4UUIDV6targettMR);
      v517 = *(v516 + 48);
      v518 = *(v516 + 64);
      v519 = v1024;
      *v515 = v1024;
      v1019(&v515[v517], v1027, *&v1030.f64[0]);
      type metadata accessor for InteractionSpecificationsUSDStageErrors.InteractionType(0);
      swift_storeEnumTagMultiPayload();
      v520 = v519;
      v521 = v955;
      MEMORY[0x26670E270](v520);
      swift_storeEnumTagMultiPayload();
      v1031 = v513;
      swift_willThrow();

      v522 = v953;
    }

    else
    {
      if (v238 == *MEMORY[0x277CDAF78])
      {
        v482 = v1030.f64[0];
        (*(*&v1028.f64[0] + 96))(v225, *&v1030.f64[0]);
        v483 = v942;
        v484 = (*(v949 + 32))(v942, v225, v950);
        v485 = v940;
        MEMORY[0x26670E050](v484);
        v486 = v1025;
        if (!*(v1025 + 16) || (v487 = specialized __RawDictionaryStorage.find<A>(_:)(v485), (v488 & 1) == 0))
        {
          (*(v1021 + 8))(v485, v1022);
          v1031 = type metadata accessor for InteractionSpecificationsUSDStageErrors(0);
          lazy protocol witness table accessor for type InteractionSpecificationsUSDStageErrors and conformance InteractionSpecificationsUSDStageErrors(&lazy protocol witness table cache variable for type InteractionSpecificationsUSDStageErrors and conformance InteractionSpecificationsUSDStageErrors, type metadata accessor for InteractionSpecificationsUSDStageErrors);
          v552 = swift_allocError();
          v554 = v553;
          v555 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO27SceneDescriptionFoundationsO4PathV4path_AA39InteractionSpecificationsUSDStageErrorsO0H4TypeO011interactionL010Foundation4UUIDV6targettMd, &_s9RealityIO27SceneDescriptionFoundationsO4PathV4path_AA39InteractionSpecificationsUSDStageErrorsO0H4TypeO011interactionL010Foundation4UUIDV6targettMR);
          v556 = *(v555 + 48);
          v557 = *(v555 + 64);
          v558 = v483;
          v559 = v1024;
          *v554 = v1024;
          v1019(&v554[v556], v1027, *&v482);
          type metadata accessor for InteractionSpecificationsUSDStageErrors.InteractionType(0);
          swift_storeEnumTagMultiPayload();
          MEMORY[0x26670E050](v559);
          swift_storeEnumTagMultiPayload();
          v1031 = v552;
          swift_willThrow();

          (*(v949 + 8))(v558, v950);
          return v251;
        }

        v489 = *(*(v486 + 56) + 8 * v487);
        v490 = *(v1021 + 8);

        v490(v485, v1022);
        v491 = *(v489 + 16);
        v492 = RIOPxrUsdObjectCopyPath();

        v1042 = &protocol witness table for Schema;
        v1041 = &type metadata for Schema;
        v1039 = v251;
        v493 = swift_getKeyPath();

        if (String.count.getter() < 1)
        {
          v494 = RIOPxrTfTokenEmpty();
        }

        else
        {
          v494 = RIOPxrTfTokenCreateWithCString();
        }

        v640 = v962;
        specialized Properties.subscript.setter(v494, v493, MEMORY[0x277D00A50], MEMORY[0x277D00E40]);
        swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVGMd, &_ss23_ContiguousArrayStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVGMR);
        v641 = swift_allocObject();
        *(v641 + 16) = xmmword_2619891C0;
        *(v641 + 32) = v492;
        *&v1030.f64[0] = v492;
        specialized Properties.subscript.setter(v641);
        swift_getKeyPath();
        v642 = __RKEntityShowActionArguments.duration.getter();
        v643 = BYTE4(v642) & 1;
        if ((v642 & 0x100000000) != 0)
        {
          v644 = 0.0;
        }

        else
        {
          v644 = *&v642;
        }

        specialized Properties.subscript.setter(*&v644, v643);
        v645 = swift_getKeyPath();
        if (String.count.getter() < 1)
        {
          v646 = RIOPxrTfTokenEmpty();
        }

        else
        {
          v646 = RIOPxrTfTokenCreateWithCString();
        }

        v647 = v924;
        v648 = v922;
        specialized Properties.subscript.setter(v646, v645, MEMORY[0x277D00A50], MEMORY[0x277D00E40]);
        v649 = v923;
        __RKEntityShowActionArguments.ease.getter();
        __RKEntityShowActionArguments.easeType.getter();
        v650 = v1031;
        setEaseType #1 (ease:easeType:on:) in Stage.setAction(action:at:mapping:)(v649, v647, v251, v1024, v1027);
        v1031 = v650;
        if (v650)
        {

          outlined destroy of Any?(v647, &_s10RealityKit22__RKEntityMoveEaseTypeOSgMd, &_s10RealityKit22__RKEntityMoveEaseTypeOSgMR);
          outlined destroy of Any?(v649, &_s10RealityKit18__RKEntityMoveEaseOSgMd, &_s10RealityKit18__RKEntityMoveEaseOSgMR);
          (*(v949 + 8))(v483, v950);
          goto LABEL_161;
        }

        outlined destroy of Any?(v647, &_s10RealityKit22__RKEntityMoveEaseTypeOSgMd, &_s10RealityKit22__RKEntityMoveEaseTypeOSgMR);
        outlined destroy of Any?(v649, &_s10RealityKit18__RKEntityMoveEaseOSgMd, &_s10RealityKit18__RKEntityMoveEaseOSgMR);
        *&v1028.f64[0] = swift_getKeyPath();
        v651 = v915;
        __RKEntityShowActionArguments.animationStyle.getter();
        v652 = v651;
        v653 = v902;
        outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v651, v902, &_s10RealityKit30__RKEntityActionAnimationStyleOSgMd, &_s10RealityKit30__RKEntityActionAnimationStyleOSgMR);
        v654 = v961;
        if ((*(v961 + 48))(v653, 1, v640) == 1)
        {
          outlined destroy of Any?(v652, &_s10RealityKit30__RKEntityActionAnimationStyleOSgMd, &_s10RealityKit30__RKEntityActionAnimationStyleOSgMR);
          v655 = 0;
        }

        else
        {
          (*(v654 + 32))(v648, v653, v640);
          __RKEntityActionAnimationStyle.rawValue.getter();
          v698 = (v654 + 8);
          if (String.count.getter() < 1)
          {

            v699 = RIOPxrTfTokenEmpty();
            (*v698)(v648, v640);
            outlined destroy of Any?(v915, &_s10RealityKit30__RKEntityActionAnimationStyleOSgMd, &_s10RealityKit30__RKEntityActionAnimationStyleOSgMR);
          }

          else
          {
            String.utf8CString.getter();

            v699 = RIOPxrTfTokenCreateWithCString();
            (*v698)(v648, v640);
            outlined destroy of Any?(v915, &_s10RealityKit30__RKEntityActionAnimationStyleOSgMd, &_s10RealityKit30__RKEntityActionAnimationStyleOSgMR);
          }

          v655 = v699;
          v483 = v942;
        }

        specialized Properties.subscript.setter(v655, *&v1028.f64[0], MEMORY[0x277D00A50], MEMORY[0x277D00E40]);
        *&v1028.f64[0] = swift_getKeyPath();
        v734 = v904;
        __RKEntityShowActionArguments.buildInAnimationType.getter();
        v735 = v734;
        v736 = v903;
        outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v734, v903, &_s10RealityKit40__RKEntityShowActionBuildInAnimationTypeOSgMd, &_s10RealityKit40__RKEntityShowActionBuildInAnimationTypeOSgMR);
        v738 = v905;
        v737 = v906;
        if ((*(v905 + 48))(v736, 1, v906) == 1)
        {
          outlined destroy of Any?(v734, &_s10RealityKit40__RKEntityShowActionBuildInAnimationTypeOSgMd, &_s10RealityKit40__RKEntityShowActionBuildInAnimationTypeOSgMR);
          v739 = 0;
        }

        else
        {
          v740 = v888;
          (*(v738 + 32))(v888, v736, v737);
          v741 = v735;
          v742 = v889;
          (*(v738 + 16))(v889, v740, v737);
          LOBYTE(v742) = specialized __RKEntityActionVisibilityTypeUSD.init(from:)(v742);
          (*(v738 + 8))(v740, v737);
          outlined destroy of Any?(v741, &_s10RealityKit40__RKEntityShowActionBuildInAnimationTypeOSgMd, &_s10RealityKit40__RKEntityShowActionBuildInAnimationTypeOSgMR);
          __RKEntityActionVisibilityTypeUSD.rawValue.getter(v742);
          if (String.count.getter() <= 0)
          {

            v739 = RIOPxrTfTokenEmpty();
          }

          else
          {
            String.utf8CString.getter();

            v743 = RIOPxrTfTokenCreateWithCString();

            v739 = v743;
          }
        }

        specialized Properties.subscript.setter(v739, *&v1028.f64[0], MEMORY[0x277D00A50], MEMORY[0x277D00E40]);
        swift_getKeyPath();
        v744 = __RKEntityShowActionArguments.distance.getter();
        v745 = BYTE4(v744) & 1;
        if ((v744 & 0x100000000) != 0)
        {
          v746 = 0.0;
        }

        else
        {
          v746 = *&v744;
        }

        specialized Properties.subscript.setter(*&v746, v745);

        (*(v949 + 8))(v483, v950);
LABEL_211:
        v374 = &_s9RealityIO10PropertiesVyAA22VisibilityActionSchema_pGMd;
        v375 = &_s9RealityIO10PropertiesVyAA22VisibilityActionSchema_pGMR;
        goto LABEL_162;
      }

      v445 = v1025;
      if (v238 == *MEMORY[0x277CDAF68])
      {
        (*(*&v1028.f64[0] + 96))(v225, *&v1030.f64[0]);
        v523 = v939;
        v524 = v943;
        v525 = v225;
        v526 = started;
        (*(v939 + 32))(v943, v525, started);
        if (__RKEntityStartAnimateActionArguments.loopCount.getter() >= 2)
        {
          MEMORY[0x26670E5D0]();
          __RKEntityStartAnimateActionArguments.multiplePerformBehavior.getter();
          __RKEntityStartAnimateActionArguments.clipStart.getter();
          __RKEntityStartAnimateActionArguments.clipDuration.getter();
          __RKEntityStartAnimateActionArguments.clipReversed.getter();
          __RKEntityStartAnimateActionArguments.animationSpeed.getter();
          __RKEntityStartAnimateActionArguments.clipReverses.getter();
          v527 = v935;
          __RKEntityStartAnimateActionArguments.init(target:loopCount:multiplePerformBehavior:clipStart:clipDuration:clipReversed:animationSpeed:clipReverses:)();
          v528 = *(v523 + 16);
          v529 = v933;
          v528(v933, v527, v526);
          Description = v334[6].Description;
          p_Description = &v334[6].Description;
          v1027 = Description;
          v532 = v1030.f64[0];
          (Description)(v529, v239, *&v1030.f64[0]);
          (*(v983 + 104))(v971, *MEMORY[0x277CDAEF8], v977);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMd, &_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMR);
          v533 = *(p_Description - 4);
          v534 = (*(p_Description - 24) + 32) & ~*(p_Description - 24);
          v535 = swift_allocObject();
          *(v535 + 16) = xmmword_2619891C0;
          v1019((v535 + v534), v529, *&v532);
          __RKEntityStartAnimateActionArguments.loopCount.getter();
          v536 = v925;
          __RKEntityActionGroupArguments.init(order:actions:exclusive:loopCount:)();
          v537 = v995;
          v538 = v921;
          v251 = v984;
          (*(v995 + 16))(v921, v536, v984);
          (v1027)(v538, v333, *&v532);
          v1033 = v1024;
          v539 = v1031;
          Stage.makeParentPrim(from:baseName:)(&v1033, 0x756F7247706F6F4CLL, 0xE900000000000070, &v1039);
          v1031 = v539;
          if (v539)
          {

            v540 = *(*&v1028.f64[0] + 8);
            v541 = v1030.f64[0];
            v540(v538, *&v1030.f64[0]);
            (*(v537 + 8))(v536, v251);
            v540(v933, *&v541);
            v542 = *(v939 + 8);
            v543 = started;
            v542(v935, started);
            v542(v943, v543);
          }

          else
          {
            v656 = v935;
            v657 = v1039;
            v658 = Stage.setAction(action:at:mapping:)(v538, &v1039, v1025);
            v1031 = 0;
            v709 = v658;

            v710 = *(*&v1028.f64[0] + 8);
            v711 = v1030.f64[0];
            v710(v538, *&v1030.f64[0]);
            (*(v995 + 8))(v925, v984);
            v710(v933, *&v711);
            v712 = *(v939 + 8);
            v713 = started;
            v712(v656, started);
            v712(v943, v713);

            return v709;
          }

          return v251;
        }

        v597 = v919;
        MEMORY[0x26670E5D0]();
        v598 = specialized Dictionary.subscript.getter(v597, v445);
        (*(v1021 + 8))(v597, v1022);
        if (!v598)
        {
          *&v1028.f64[0] = type metadata accessor for InteractionSpecificationsUSDStageErrors(0);
          lazy protocol witness table accessor for type InteractionSpecificationsUSDStageErrors and conformance InteractionSpecificationsUSDStageErrors(&lazy protocol witness table cache variable for type InteractionSpecificationsUSDStageErrors and conformance InteractionSpecificationsUSDStageErrors, type metadata accessor for InteractionSpecificationsUSDStageErrors);
          v1031 = swift_allocError();
          v660 = v659;
          v661 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO27SceneDescriptionFoundationsO4PathV4path_AA39InteractionSpecificationsUSDStageErrorsO0H4TypeO011interactionL010Foundation4UUIDV6targettMd, &_s9RealityIO27SceneDescriptionFoundationsO4PathV4path_AA39InteractionSpecificationsUSDStageErrorsO0H4TypeO011interactionL010Foundation4UUIDV6targettMR);
          v662 = *(v661 + 48);
          v663 = v523;
          v664 = *(v661 + 64);
          v665 = v1024;
          *v660 = v1024;
          v1019(&v660[v662], v1027, *&v1030.f64[0]);
          type metadata accessor for InteractionSpecificationsUSDStageErrors.InteractionType(0);
          swift_storeEnumTagMultiPayload();
          MEMORY[0x26670E5D0](v665);
          swift_storeEnumTagMultiPayload();
          swift_willThrow();

          (*(v663 + 8))(v524, started);
          return v251;
        }

        v599 = *(v598 + 16);
        v239 = RIOPxrUsdObjectCopyPath();

        v1042 = &protocol witness table for Schema;
        v1041 = &type metadata for Schema;
        v1039 = v251;
        v453 = swift_getKeyPath();

        if (String.count.getter() < 1)
        {
LABEL_218:
          v600 = RIOPxrTfTokenEmpty();
        }

        else
        {
          v600 = RIOPxrTfTokenCreateWithCString();
        }

        v690 = v998;
        v691 = v913;
        specialized Properties.subscript.setter(v600, v453, MEMORY[0x277D00A50], MEMORY[0x277D00E40]);
        swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVGMd, &_ss23_ContiguousArrayStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVGMR);
        v692 = swift_allocObject();
        *(v692 + 16) = xmmword_2619891C0;
        *(v692 + 32) = v239;
        v693 = v239;
        specialized Properties.subscript.setter(v692);
        v694 = swift_getKeyPath();
        __RKEntityStartAnimateActionArguments.multiplePerformBehavior.getter();
        v695 = v999;
        v696 = v912;
        (*(v999 + 16))(v912, v691, v690);
        v697 = (*(v695 + 88))(v696, v690);
        if (v697 != *MEMORY[0x277CDB010] && v697 != *MEMORY[0x277CDB018] && v697 != *MEMORY[0x277CDB008])
        {
          goto LABEL_352;
        }

        (*(v999 + 8))(v691, v690);
        if (String.count.getter() < 1)
        {

          v702 = RIOPxrTfTokenEmpty();
        }

        else
        {
          String.utf8CString.getter();

          v701 = RIOPxrTfTokenCreateWithCString();

          v702 = v701;
        }

        specialized Properties.subscript.setter(v702, v694, MEMORY[0x277D00A50], MEMORY[0x277D00E40]);
        swift_getKeyPath();
        v703 = v943;
        __RKEntityStartAnimateActionArguments.clipStart.getter();
        specialized Properties.subscript.setter(v704, 0);
        swift_getKeyPath();
        __RKEntityStartAnimateActionArguments.clipDuration.getter();
        specialized Properties.subscript.setter(v705, 0);
        swift_getKeyPath();
        v706 = __RKEntityStartAnimateActionArguments.clipReversed.getter();
        specialized Properties.subscript.setter(v706 & 1);
        swift_getKeyPath();
        __RKEntityStartAnimateActionArguments.animationSpeed.getter();
        specialized Properties.subscript.setter(COERCE__INT64(v707), 0);
        swift_getKeyPath();
        v708 = __RKEntityStartAnimateActionArguments.clipReverses.getter();
        specialized Properties.subscript.setter(v708 & 1);

        (*(v939 + 8))(v703, started);
        v374 = &_s9RealityIO10PropertiesVyAA20StartAnimationSchema_pGMd;
        v375 = &_s9RealityIO10PropertiesVyAA20StartAnimationSchema_pGMR;
        goto LABEL_162;
      }

      v462 = &v1047;
      if (v238 == *MEMORY[0x277CDAFB8])
      {
        (*(*&v1028.f64[0] + 96))(v225, *&v1030.f64[0]);
        v560 = v931;
        v561 = (*(v936 + 32))(v931, v225, v937);
        v562 = v920;
        MEMORY[0x26670E410](v561);
        if (!*(v445 + 16) || (v563 = specialized __RawDictionaryStorage.find<A>(_:)(v562), (v564 & 1) == 0))
        {
          (*(v1021 + 8))(v562, v1022);
          type metadata accessor for InteractionSpecificationsUSDStageErrors(0);
          lazy protocol witness table accessor for type InteractionSpecificationsUSDStageErrors and conformance InteractionSpecificationsUSDStageErrors(&lazy protocol witness table cache variable for type InteractionSpecificationsUSDStageErrors and conformance InteractionSpecificationsUSDStageErrors, type metadata accessor for InteractionSpecificationsUSDStageErrors);
          v615 = swift_allocError();
          v617 = v616;
          v618 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO27SceneDescriptionFoundationsO4PathV4path_AA39InteractionSpecificationsUSDStageErrorsO0H4TypeO011interactionL010Foundation4UUIDV6targettMd, &_s9RealityIO27SceneDescriptionFoundationsO4PathV4path_AA39InteractionSpecificationsUSDStageErrorsO0H4TypeO011interactionL010Foundation4UUIDV6targettMR);
          v619 = *(v618 + 48);
          v620 = *(v618 + 64);
          v621 = v1024;
          *v617 = v1024;
          v1019(&v617[v619], v1027, *&v1030.f64[0]);
          type metadata accessor for InteractionSpecificationsUSDStageErrors.InteractionType(0);
          swift_storeEnumTagMultiPayload();
          MEMORY[0x26670E410](v621);
          swift_storeEnumTagMultiPayload();
          v1031 = v615;
          swift_willThrow();

          (*(v936 + 8))(v560, v937);
          return v251;
        }

        v565 = *(*(v445 + 56) + 8 * v563);
        v566 = (v1021 + 8);
        v567 = *(v1021 + 8);

        v1023 = v566;
        v1020 = v567;
        v567(v562, v1022);
        v568 = *(v565 + 16);
        v444 = RIOPxrUsdObjectCopyPath();

        v569 = RIOPxrSdfPathCopyString();
        v570 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v572 = v571;

        v1039 = v570;
        v1040 = v572;
        v1033 = 47;
        v1034 = 0xE100000000000000;
        v1037 = 95;
        v1038 = 0xE100000000000000;
        lazy protocol witness table accessor for type String and conformance String();
        v573 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        v575 = v574;

        v1039 = 47;
        v1040 = 0xE100000000000000;
        MEMORY[0x26670F080](v573, v575);

        String.utf8CString.getter();

        v576 = RIOPxrSdfPathCreateFromCString();

        v577 = RIOPxrTfTokenEmpty();
        v578 = RIOPxrUsdStageCreatePrimIfNeeded();
        v239 = swift_allocObject();
        v239[2] = v578;

        if (String.count.getter() < 1)
        {
          v579 = RIOPxrTfTokenEmpty();
        }

        else
        {
          v579 = RIOPxrTfTokenCreateWithCString();
        }

        v724 = v579;
        v725 = v931;
        v726 = v239[2];

        RIOPxrUsdPrimSetTypeName();

        v251 = &type metadata for Schema;
        v1042 = &protocol witness table for Schema;
        v1041 = &type metadata for Schema;
        v1039 = v239;
        v727 = __RKEntityTransformActionArguments.location.getter();
        if (v731)
        {
          v464 = MEMORY[0x277D84F90];
LABEL_260:
          v761 = __RKEntityTransformActionArguments.orientation.getter();
          if ((v764 & 1) == 0)
          {
            v765 = v762;
            *&v763.f64[0] = v761;
            v1030 = v763;
            LODWORD(v763.f64[0]) = v761;
            v1028 = v763;
            swift_getKeyPath();
            v462[9] = vcvtq_f64_f32(__PAIR64__(HIDWORD(v1030.f64[0]), LODWORD(v1028.f64[0])));
            v462[10] = vcvtq_f64_f32(v765);
            v1058 = 0;
            specialized Properties.subscript.setter(v1057);
            if (String.count.getter() < 1)
            {
              v766 = RIOPxrTfTokenEmpty();
            }

            else
            {
              v766 = RIOPxrTfTokenCreateWithCString();
            }

            v767 = v766;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v464 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v464 + 2) + 1, 1, v464);
            }

            v769 = *(v464 + 2);
            v768 = *(v464 + 3);
            if (v769 >= v768 >> 1)
            {
              v464 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v768 > 1), v769 + 1, 1, v464);
            }

            *(v464 + 2) = v769 + 1;
            *&v464[8 * v769 + 32] = v767;
            v725 = v931;
          }

          v770 = __RKEntityTransformActionArguments.scale.getter();
          if ((v770 & 0x100000000) == 0)
          {
            *&v771 = *&v770;
            swift_getKeyPath();
            v1055[0] = v771;
            v1055[1] = v771;
            v1055[2] = v771;
            v1055[3] = 0;
            v1056 = 0;
            specialized Properties.subscript.setter(v1055);
            if (String.count.getter() < 1)
            {
              v772 = RIOPxrTfTokenEmpty();
            }

            else
            {
              v772 = RIOPxrTfTokenCreateWithCString();
            }

            v773 = v772;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v464 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v464 + 2) + 1, 1, v464);
            }

            v775 = *(v464 + 2);
            v774 = *(v464 + 3);
            if (v775 >= v774 >> 1)
            {
              v464 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v774 > 1), v775 + 1, 1, v464);
            }

            *(v464 + 2) = v775 + 1;
            *&v464[8 * v775 + 32] = v773;
          }

          swift_getKeyPath();

          specialized Properties.subscript.setter(v776);
          v1036 = &protocol witness table for Schema;
          v1035 = v251;
          v1033 = v1029;
          v777 = swift_getKeyPath();

          if (String.count.getter() < 1)
          {
            v778 = RIOPxrTfTokenEmpty();
          }

          else
          {
            v778 = RIOPxrTfTokenCreateWithCString();
          }

          specialized Properties.subscript.setter(v778, v777, MEMORY[0x277D00A50], MEMORY[0x277D00E40]);
          swift_getKeyPath();
          *&v1028.f64[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVGMd, &_ss23_ContiguousArrayStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVGMR);
          v779 = swift_allocObject();
          v1026 = xmmword_2619891C0;
          *(v779 + 16) = xmmword_2619891C0;
          *(v779 + 32) = v444;
          *&v1030.f64[0] = v444;
          specialized Properties.subscript.setter(v779);
          swift_getKeyPath();
          v780 = __RKEntityTransformActionArguments.duration.getter();
          v781 = BYTE4(v780) & 1;
          if ((v780 & 0x100000000) != 0)
          {
            v782 = 0.0;
          }

          else
          {
            v782 = *&v780;
          }

          specialized Properties.subscript.setter(*&v782, v781);
          v783 = swift_getKeyPath();
          v784 = v907;
          __RKEntityTransformActionArguments.moveType.getter();
          v785 = v895;
          outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v784, v895, &_s10RealityKit23__RKEntityMoveSelectionOSgMd, &_s10RealityKit23__RKEntityMoveSelectionOSgMR);
          v786 = v898;
          v787 = v916;
          if ((*(v898 + 48))(v785, 1, v916) == 1)
          {
            outlined destroy of Any?(v784, &_s10RealityKit23__RKEntityMoveSelectionOSgMd, &_s10RealityKit23__RKEntityMoveSelectionOSgMR);

            v788 = 0;
          }

          else
          {
            v789 = v897;
            (*(v786 + 32))(v897, v785, v787);
            v790 = *(v786 + 16);
            v791 = v896;
            v790(v896, v789, v916);
            v792 = v886;
            v790(v886, v791, v916);
            v793 = v916;
            v794 = (*(v786 + 88))(v792, v916);
            if (v794 != *MEMORY[0x277CDAE90] && v794 != *MEMORY[0x277CDAE98])
            {
              goto LABEL_349;
            }

            v795 = *(v786 + 8);
            v795(v896, v793);
            if (String.count.getter() < 1)
            {

              v797 = RIOPxrTfTokenEmpty();
              v795(v897, v793);
              outlined destroy of Any?(v907, &_s10RealityKit23__RKEntityMoveSelectionOSgMd, &_s10RealityKit23__RKEntityMoveSelectionOSgMR);

              v788 = v797;
            }

            else
            {
              String.utf8CString.getter();

              v796 = RIOPxrTfTokenCreateWithCString();
              v795(v897, v793);
              outlined destroy of Any?(v907, &_s10RealityKit23__RKEntityMoveSelectionOSgMd, &_s10RealityKit23__RKEntityMoveSelectionOSgMR);

              v788 = v796;
            }

            v725 = v931;
          }

          specialized Properties.subscript.setter(v788, v783, MEMORY[0x277D00A50], MEMORY[0x277D00E40]);
          v251 = v899;
          __RKEntityTransformActionArguments.ease.getter();
          v798 = v900;
          __RKEntityTransformActionArguments.easeType.getter();
          v799 = v1031;
          setEaseType #1 (ease:easeType:on:) in Stage.setAction(action:at:mapping:)(v251, v798, v1029, v1024, v1027);
          v1031 = v799;
          if (v799)
          {

            outlined destroy of Any?(v798, &_s10RealityKit22__RKEntityMoveEaseTypeOSgMd, &_s10RealityKit22__RKEntityMoveEaseTypeOSgMR);
            outlined destroy of Any?(v251, &_s10RealityKit18__RKEntityMoveEaseOSgMd, &_s10RealityKit18__RKEntityMoveEaseOSgMR);
            (*(v936 + 8))(v725, v937);
            outlined destroy of Any?(&v1033, &_s9RealityIO10PropertiesVyAA21TransformActionSchema_pGMd, &_s9RealityIO10PropertiesVyAA21TransformActionSchema_pGMR);
            v374 = &_s9RealityIO10PropertiesVyAA9Xformable_pGMd;
            v375 = &_s9RealityIO10PropertiesVyAA9Xformable_pGMR;
            goto LABEL_162;
          }

          outlined destroy of Any?(v798, &_s10RealityKit22__RKEntityMoveEaseTypeOSgMd, &_s10RealityKit22__RKEntityMoveEaseTypeOSgMR);
          outlined destroy of Any?(v251, &_s10RealityKit18__RKEntityMoveEaseOSgMd, &_s10RealityKit18__RKEntityMoveEaseOSgMR);
          v800 = v881;
          __RKEntityTransformActionArguments.relativeToEntity.getter();
          v801 = v1021;
          v802 = v1022;
          if ((*(v1021 + 48))(v800, 1, v1022) == 1)
          {
            outlined destroy of Any?(v800, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          }

          else
          {
            v803 = v880;
            (*(v801 + 32))(v880, v800, v802);
            v804 = specialized Dictionary.subscript.getter(v803, v1025);
            if (v804)
            {
              v805 = *(v804 + 16);
              v806 = RIOPxrUsdObjectCopyPath();

              v807 = swift_getKeyPath();
              v808 = RIOPxrSdfPathCopyString();
              static String._unconditionallyBridgeFromObjectiveC(_:)();

              if (String.count.getter() < 1)
              {

                v809 = RIOPxrTfTokenEmpty();
              }

              else
              {
                String.utf8CString.getter();

                v809 = RIOPxrTfTokenCreateWithCString();
              }

              specialized Properties.subscript.setter(v809, v807, MEMORY[0x277D00A50], MEMORY[0x277D00E40]);
            }

            v1020(v880, v1022);
          }

          swift_getKeyPath();
          v843 = swift_allocObject();
          *(v843 + 16) = v1026;
          v844 = v239[2];
          v845 = RIOPxrUsdObjectCopyPath();

          *(v843 + 32) = v845;
          specialized Properties.subscript.setter(v843);

          (*(v936 + 8))(v931, v937);
          outlined destroy of Any?(&v1033, &_s9RealityIO10PropertiesVyAA21TransformActionSchema_pGMd, &_s9RealityIO10PropertiesVyAA21TransformActionSchema_pGMR);
          v841 = &_s9RealityIO10PropertiesVyAA9Xformable_pGMd;
          v842 = &_s9RealityIO10PropertiesVyAA9Xformable_pGMR;
LABEL_315:
          outlined destroy of Any?(&v1039, v841, v842);
          return v1029;
        }

        *&v729.f64[0] = v727;
        v1030 = v729;
        LODWORD(v730.f64[0]) = v727;
        v1028 = v730;
        v732 = COERCE_FLOAT(vdupq_n_s64(v728).i32[2]);
        swift_getKeyPath();
        v1059 = vcvtq_f64_f32(__PAIR64__(HIDWORD(v1030.f64[0]), LODWORD(v1028.f64[0])));
        v1060 = v732;
        v1061 = 0;
        v1062 = 0;
        specialized Properties.subscript.setter(&v1059);
        if (String.count.getter() < 1)
        {
          v733 = RIOPxrTfTokenEmpty();
        }

        else
        {
          v733 = RIOPxrTfTokenCreateWithCString();
        }

        v465 = v733;
        v464 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
        v463 = *(v464 + 2);
        v466 = *(v464 + 3);
        v445 = v463 + 1;
        if (v463 < v466 >> 1)
        {
LABEL_259:
          *(v464 + 2) = v445;
          *&v464[8 * v463 + 32] = v465;
          v725 = v931;
          goto LABEL_260;
        }

LABEL_343:
        v464 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v466 > 1), v445, 1, v464);
        goto LABEL_259;
      }

      if (v238 == *MEMORY[0x277CDAF88])
      {
        (*(*&v1028.f64[0] + 96))(v225, *&v1030.f64[0]);
        v602 = v908;
        v601 = v909;
        v603 = v910;
        (*(v909 + 32))(v908, v225, v910);
        v1042 = &protocol witness table for Schema;
        v1041 = &type metadata for Schema;
        v1039 = v251;
        v604 = swift_getKeyPath();

        if (String.count.getter() < 1)
        {
          v605 = RIOPxrTfTokenEmpty();
        }

        else
        {
          v605 = RIOPxrTfTokenCreateWithCString();
        }

        specialized Properties.subscript.setter(v605, v604, MEMORY[0x277D00A50], MEMORY[0x277D00E40]);
        swift_getKeyPath();
        __RKWaitActionArguments.duration.getter();
        specialized Properties.subscript.setter(COERCE__INT64(v700), 0);
        (*(v601 + 8))(v602, v603);
        v374 = &_s9RealityIO10PropertiesVyAA16WaitActionSchema_pGMd;
        v375 = &_s9RealityIO10PropertiesVyAA16WaitActionSchema_pGMR;
        goto LABEL_162;
      }

      if (v238 == *MEMORY[0x277CDAF50])
      {
        (*(*&v1028.f64[0] + 96))(v225, *&v1030.f64[0]);
        v622 = v445;
        v396 = v892;
        v623 = (*(v911 + 32))(v914, v225, v892);
        v624 = v890;
        MEMORY[0x26670E4C0](v623);
        if (*(v622 + 16) && (v625 = specialized __RawDictionaryStorage.find<A>(_:)(v624), (v626 & 1) != 0))
        {
          v627 = *(*(v622 + 56) + 8 * v625);
          v628 = *(v1021 + 8);

          v628(v624, v1022);
          v629 = *(v627 + 16);
          v630 = RIOPxrUsdObjectCopyPath();

          v632 = v879;
          MEMORY[0x26670E4C0](v631);
          if (*(v622 + 16))
          {
            v633 = specialized __RawDictionaryStorage.find<A>(_:)(v632);
            if (v634)
            {
              v635 = *(*(v622 + 56) + 8 * v633);

              v628(v632, v1022);
              v636 = *(v635 + 16);
              v637 = RIOPxrUsdObjectCopyPath();

              v1042 = &protocol witness table for Schema;
              v1041 = &type metadata for Schema;
              v1039 = v251;
              v638 = swift_getKeyPath();

              if (String.count.getter() < 1)
              {
                v639 = RIOPxrTfTokenEmpty();
              }

              else
              {
                v639 = RIOPxrTfTokenCreateWithCString();
              }

              specialized Properties.subscript.setter(v639, v638, MEMORY[0x277D00A50], MEMORY[0x277D00E40]);
              swift_getKeyPath();
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVGMd, &_ss23_ContiguousArrayStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVGMR);
              v846 = swift_allocObject();
              *(v846 + 16) = xmmword_2619891C0;
              *(v846 + 32) = v630;
              v847 = v630;
              specialized Properties.subscript.setter(v846);
              swift_getKeyPath();
              v848 = __RKEntityOrbitEntityActionArguments.orientToPath.getter();
              specialized Properties.subscript.setter(v848);
              v849 = swift_getKeyPath();
              v850 = RIOPxrSdfPathCopyString();
              static String._unconditionallyBridgeFromObjectiveC(_:)();

              if (String.count.getter() < 1)
              {

                v851 = RIOPxrTfTokenEmpty();
              }

              else
              {
                String.utf8CString.getter();

                v851 = RIOPxrTfTokenCreateWithCString();
              }

              specialized Properties.subscript.setter(v851, v849, MEMORY[0x277D00A50], MEMORY[0x277D00E40]);
              swift_getKeyPath();
              v852 = __RKEntityOrbitEntityActionArguments.duration.getter();
              v853 = BYTE4(v852) & 1;
              if ((v852 & 0x100000000) != 0)
              {
                v854 = 0.0;
              }

              else
              {
                v854 = *&v852;
              }

              specialized Properties.subscript.setter(*&v854, v853);
              swift_getKeyPath();
              v855 = __RKEntityOrbitEntityActionArguments.rotations.getter();
              v856 = BYTE4(v855) & 1;
              if ((v855 & 0x100000000) != 0)
              {
                v857 = 0.0;
              }

              else
              {
                v857 = *&v855;
              }

              specialized Properties.subscript.setter(*&v857, v856);
              v858 = v877;
              __RKEntityOrbitEntityActionArguments.spinDirection.getter();
              v859 = __RKEntityOrbitEntityActionArguments.orbitalAxis.getter();
              v861 = v1031;
              setRotationAxis #1 (direction:axis:on:) in Stage.setAction(action:at:mapping:)(v858, v859, v862, v860 & 1, v1029, v1024, v1027);
              v1031 = v861;
              if (v861)
              {

                outlined destroy of Any?(v877, &_s10RealityKit27__RKEntitySpinDirectionTypeOSgMd, &_s10RealityKit27__RKEntitySpinDirectionTypeOSgMR);
                (*(v911 + 8))(v914, v892);
                v374 = &_s9RealityIO10PropertiesVyAA17OrbitActionSchema_pGMd;
                v375 = &_s9RealityIO10PropertiesVyAA17OrbitActionSchema_pGMR;
                goto LABEL_162;
              }

              outlined destroy of Any?(v877, &_s10RealityKit27__RKEntitySpinDirectionTypeOSgMd, &_s10RealityKit27__RKEntitySpinDirectionTypeOSgMR);
              (*(v911 + 8))(v914, v892);
              v841 = &_s9RealityIO10PropertiesVyAA17OrbitActionSchema_pGMd;
              v842 = &_s9RealityIO10PropertiesVyAA17OrbitActionSchema_pGMR;
              goto LABEL_315;
            }
          }

          v628(v632, v1022);
        }

        else
        {
          (*(v1021 + 8))(v624, v1022);
        }

        type metadata accessor for InteractionSpecificationsUSDStageErrors(0);
        lazy protocol witness table accessor for type InteractionSpecificationsUSDStageErrors and conformance InteractionSpecificationsUSDStageErrors(&lazy protocol witness table cache variable for type InteractionSpecificationsUSDStageErrors and conformance InteractionSpecificationsUSDStageErrors, type metadata accessor for InteractionSpecificationsUSDStageErrors);
        v810 = swift_allocError();
        v812 = v811;
        v813 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO27SceneDescriptionFoundationsO4PathV4path_AA39InteractionSpecificationsUSDStageErrorsO0H4TypeO011interactionL010Foundation4UUIDV6targettMd, &_s9RealityIO27SceneDescriptionFoundationsO4PathV4path_AA39InteractionSpecificationsUSDStageErrorsO0H4TypeO011interactionL010Foundation4UUIDV6targettMR);
        v814 = *(v813 + 48);
        v815 = *(v813 + 64);
        v816 = v1024;
        *v812 = v1024;
        v1019(&v812[v814], v1027, *&v1030.f64[0]);
        type metadata accessor for InteractionSpecificationsUSDStageErrors.InteractionType(0);
        swift_storeEnumTagMultiPayload();
        v817 = v816;
        v521 = v914;
        MEMORY[0x26670E4C0](v817);
        swift_storeEnumTagMultiPayload();
        v1031 = v810;
        swift_willThrow();

        v522 = v911;
      }

      else
      {
        if (v238 != *MEMORY[0x277CDAF58])
        {
LABEL_234:
          if (v239 != *MEMORY[0x277CDAF80])
          {
            type metadata accessor for InteractionSpecificationsUSDStageErrors(0);
            lazy protocol witness table accessor for type InteractionSpecificationsUSDStageErrors and conformance InteractionSpecificationsUSDStageErrors(&lazy protocol witness table cache variable for type InteractionSpecificationsUSDStageErrors and conformance InteractionSpecificationsUSDStageErrors, type metadata accessor for InteractionSpecificationsUSDStageErrors);
            v1031 = swift_allocError();
            v756 = v755;
            v757 = v334;
            v758 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO27SceneDescriptionFoundationsO4PathV4path_AA39InteractionSpecificationsUSDStageErrorsO0H4TypeO011interactionL0tMd, &_s9RealityIO27SceneDescriptionFoundationsO4PathV4path_AA39InteractionSpecificationsUSDStageErrorsO0H4TypeO011interactionL0tMR) + 48);
            v759 = v1024;
            *v756 = v1024;
            v251 = *&v1030.f64[0];
            v1019(&v756[v758], v1027, *&v1030.f64[0]);
            type metadata accessor for InteractionSpecificationsUSDStageErrors.InteractionType(0);
            swift_storeEnumTagMultiPayload();
            swift_storeEnumTagMultiPayload();
            swift_willThrow();
            v760 = v759;

            (v757->Description)(v225, v251);
            return v251;
          }

          (v334[6].Kind)(v225, *&v1030.f64[0]);
          v714 = (*(v883 + 32))(v885, v225, v884);
          v715 = v878;
          MEMORY[0x26670E0D0](v714);
          if (!*(v445 + 16) || (v716 = specialized __RawDictionaryStorage.find<A>(_:)(v715), (v717 & 1) == 0))
          {
            (*(v1021 + 8))(v715, v1022);
            type metadata accessor for InteractionSpecificationsUSDStageErrors(0);
            lazy protocol witness table accessor for type InteractionSpecificationsUSDStageErrors and conformance InteractionSpecificationsUSDStageErrors(&lazy protocol witness table cache variable for type InteractionSpecificationsUSDStageErrors and conformance InteractionSpecificationsUSDStageErrors, type metadata accessor for InteractionSpecificationsUSDStageErrors);
            v818 = swift_allocError();
            v820 = v819;
            v821 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO27SceneDescriptionFoundationsO4PathV4path_AA39InteractionSpecificationsUSDStageErrorsO0H4TypeO011interactionL010Foundation4UUIDV6targettMd, &_s9RealityIO27SceneDescriptionFoundationsO4PathV4path_AA39InteractionSpecificationsUSDStageErrorsO0H4TypeO011interactionL010Foundation4UUIDV6targettMR);
            v822 = *(v821 + 48);
            v823 = *(v821 + 64);
            v824 = v1024;
            *v820 = v1024;
            v1019(&v820[v822], v1027, *&v1030.f64[0]);
            type metadata accessor for InteractionSpecificationsUSDStageErrors.InteractionType(0);
            swift_storeEnumTagMultiPayload();
            v825 = v824;
            v826 = v885;
            MEMORY[0x26670E0D0](v825);
            swift_storeEnumTagMultiPayload();
            v1031 = v818;
            swift_willThrow();

            (*(v883 + 8))(v826, v884);
            return v251;
          }

          v718 = *(*(v445 + 56) + 8 * v716);
          v719 = *(v1021 + 8);

          v719(v715, v1022);
          v720 = *(v718 + 16);
          v721 = RIOPxrUsdObjectCopyPath();

          v1042 = &protocol witness table for Schema;
          v1041 = &type metadata for Schema;
          v1039 = v1029;
          v722 = swift_getKeyPath();

          if (String.count.getter() < 1)
          {
            v723 = RIOPxrTfTokenEmpty();
          }

          else
          {
            v723 = RIOPxrTfTokenCreateWithCString();
          }

          specialized Properties.subscript.setter(v723, v722, MEMORY[0x277D00A50], MEMORY[0x277D00E40]);
          swift_getKeyPath();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVGMd, &_ss23_ContiguousArrayStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVGMR);
          v863 = swift_allocObject();
          *(v863 + 16) = xmmword_2619891C0;
          *(v863 + 32) = v721;
          v864 = v721;
          specialized Properties.subscript.setter(v863);
          swift_getKeyPath();
          v865 = __RKEntitySpinActionArguments.duration.getter();
          v866 = BYTE4(v865) & 1;
          if ((v865 & 0x100000000) != 0)
          {
            v867 = 0.0;
          }

          else
          {
            v867 = *&v865;
          }

          specialized Properties.subscript.setter(*&v867, v866);
          swift_getKeyPath();
          v868 = __RKEntitySpinActionArguments.iterations.getter();
          v869 = BYTE4(v868) & 1;
          if ((v868 & 0x100000000) != 0)
          {
            v870 = 0.0;
          }

          else
          {
            v870 = *&v868;
          }

          specialized Properties.subscript.setter(*&v870, v869);
          v871 = v876;
          __RKEntitySpinActionArguments.direction.getter();
          v872 = __RKEntitySpinActionArguments.axis.getter();
          v874 = v1031;
          setRotationAxis #1 (direction:axis:on:) in Stage.setAction(action:at:mapping:)(v871, v872, v875, v873 & 1, v1029, v1024, v1027);
          v1031 = v874;
          if (v874)
          {

            outlined destroy of Any?(v876, &_s10RealityKit27__RKEntitySpinDirectionTypeOSgMd, &_s10RealityKit27__RKEntitySpinDirectionTypeOSgMR);
            (*(v883 + 8))(v885, v884);
            v374 = &_s9RealityIO10PropertiesVyAA16SpinActionSchema_pGMd;
            v375 = &_s9RealityIO10PropertiesVyAA16SpinActionSchema_pGMR;
            goto LABEL_162;
          }

          outlined destroy of Any?(v876, &_s10RealityKit27__RKEntitySpinDirectionTypeOSgMd, &_s10RealityKit27__RKEntitySpinDirectionTypeOSgMR);
          (*(v883 + 8))(v885, v884);
          v841 = &_s9RealityIO10PropertiesVyAA16SpinActionSchema_pGMd;
          v842 = &_s9RealityIO10PropertiesVyAA16SpinActionSchema_pGMR;
          goto LABEL_315;
        }

        (*(*&v1028.f64[0] + 96))(v225, *&v1030.f64[0]);
        v679 = v445;
        v396 = v887;
        v680 = (*(v891 + 32))(v901, v225, v887);
        v681 = v882;
        MEMORY[0x26670E510](v680);
        if (*(v679 + 16))
        {
          v682 = specialized __RawDictionaryStorage.find<A>(_:)(v681);
          if (v683)
          {
            v684 = *(*(v679 + 56) + 8 * v682);
            v685 = *(v1021 + 8);

            v685(v681, v1022);
            v686 = *(v684 + 16);
            v687 = RIOPxrUsdObjectCopyPath();

            v1042 = &protocol witness table for Schema;
            v1041 = &type metadata for Schema;
            v1039 = v251;
            v688 = swift_getKeyPath();

            if (String.count.getter() < 1)
            {
              v689 = RIOPxrTfTokenEmpty();
            }

            else
            {
              v689 = RIOPxrTfTokenCreateWithCString();
            }

            specialized Properties.subscript.setter(v689, v688, MEMORY[0x277D00A50], MEMORY[0x277D00E40]);
            swift_getKeyPath();
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVGMd, &_ss23_ContiguousArrayStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVGMR);
            v827 = swift_allocObject();
            *(v827 + 16) = xmmword_2619891C0;
            *(v827 + 32) = v687;
            v828 = v687;
            specialized Properties.subscript.setter(v827);
            swift_getKeyPath();
            v829 = __RKEntityLookAtCameraActionArguments.duration.getter();
            v830 = BYTE4(v829) & 1;
            if ((v829 & 0x100000000) != 0)
            {
              v831 = 0.0;
            }

            else
            {
              v831 = *&v829;
            }

            specialized Properties.subscript.setter(*&v831, v830);
            swift_getKeyPath();
            v832 = __RKEntityLookAtCameraActionArguments.direction.getter();
            v1030 = 0u;
            v835 = 0.0;
            v836 = 0.0;
            v837 = 0uLL;
            if ((v834 & 1) == 0)
            {
              v837 = vcvtq_f64_f32(v832);
              v836 = v833;
            }

            v1051 = v837;
            v1052 = v836;
            v1053 = 0;
            v1054 = v834 & 1;
            specialized Properties.subscript.setter(&v1051);
            swift_getKeyPath();
            v838 = __RKEntityLookAtCameraActionArguments.upVector.getter();
            if ((v840 & 1) == 0)
            {
              v1030 = vcvtq_f64_f32(v838);
              v835 = v839;
            }

            v1047 = v1030;
            v1048 = v835;
            v1049 = 0;
            v1050 = v840 & 1;
            specialized Properties.subscript.setter(&v1047);

            (*(v891 + 8))(v901, v887);
            v841 = &_s9RealityIO10PropertiesVyAA24LookAtCameraActionSchema_pGMd;
            v842 = &_s9RealityIO10PropertiesVyAA24LookAtCameraActionSchema_pGMR;
            goto LABEL_315;
          }
        }

        (*(v1021 + 8))(v681, v1022);
        type metadata accessor for InteractionSpecificationsUSDStageErrors(0);
        lazy protocol witness table accessor for type InteractionSpecificationsUSDStageErrors and conformance InteractionSpecificationsUSDStageErrors(&lazy protocol witness table cache variable for type InteractionSpecificationsUSDStageErrors and conformance InteractionSpecificationsUSDStageErrors, type metadata accessor for InteractionSpecificationsUSDStageErrors);
        v747 = swift_allocError();
        v749 = v748;
        v750 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO27SceneDescriptionFoundationsO4PathV4path_AA39InteractionSpecificationsUSDStageErrorsO0H4TypeO011interactionL010Foundation4UUIDV6targettMd, &_s9RealityIO27SceneDescriptionFoundationsO4PathV4path_AA39InteractionSpecificationsUSDStageErrorsO0H4TypeO011interactionL010Foundation4UUIDV6targettMR);
        v751 = *(v750 + 48);
        v752 = *(v750 + 64);
        v753 = v1024;
        *v749 = v1024;
        v1019(&v749[v751], v1027, *&v1030.f64[0]);
        type metadata accessor for InteractionSpecificationsUSDStageErrors.InteractionType(0);
        swift_storeEnumTagMultiPayload();
        v754 = v753;
        v521 = v901;
        MEMORY[0x26670E510](v754);
        swift_storeEnumTagMultiPayload();
        v1031 = v747;
        swift_willThrow();

        v522 = v891;
      }
    }

    (*(v522 + 8))(v521, v396);
    return v251;
  }

  (*(*&v235 + 96))(v225, COERCE_FLOAT64_T(*&v237));
  v240 = v1016;
  v241 = i;
  v242 = (*(v1016 + 32))(i, v225, v1023);
  MEMORY[0x26670E230](v242);
  v243 = v1025;
  if (!*(v1025 + 16) || (v244 = specialized __RawDictionaryStorage.find<A>(_:)(v208), (v245 & 1) == 0))
  {
    (*(v1021 + 8))(v208, v1022);
    type metadata accessor for InteractionSpecificationsUSDStageErrors(0);
    lazy protocol witness table accessor for type InteractionSpecificationsUSDStageErrors and conformance InteractionSpecificationsUSDStageErrors(&lazy protocol witness table cache variable for type InteractionSpecificationsUSDStageErrors and conformance InteractionSpecificationsUSDStageErrors, type metadata accessor for InteractionSpecificationsUSDStageErrors);
    v282 = swift_allocError();
    v284 = v283;
    v285 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO27SceneDescriptionFoundationsO4PathV4path_AA39InteractionSpecificationsUSDStageErrorsO0H4TypeO011interactionL010Foundation4UUIDV6targettMd, &_s9RealityIO27SceneDescriptionFoundationsO4PathV4path_AA39InteractionSpecificationsUSDStageErrorsO0H4TypeO011interactionL010Foundation4UUIDV6targettMR);
    v286 = *(v285 + 48);
    v287 = *(v285 + 64);
    v288 = v1024;
    *v284 = v1024;
    v1019(&v284[v286], v1027, *&v1030.f64[0]);
    type metadata accessor for InteractionSpecificationsUSDStageErrors.InteractionType(0);
    swift_storeEnumTagMultiPayload();
    MEMORY[0x26670E230](v288);
    swift_storeEnumTagMultiPayload();
    v1031 = v282;
    swift_willThrow();

    v289 = *(v240 + 8);
    v251 = (v240 + 8);
    v289(v241, v1023);
    return v251;
  }

  v246 = *(*(v243 + 56) + 8 * v244);
  v247 = *(v1021 + 8);

  v247(v208, v1022);
  v248 = *(v246 + 16);
  v249 = RIOPxrUsdObjectCopyPath();

  v250 = __RKEntityAudioActionArguments.loops.getter();
  v251 = v1029;
  if (v250 != 2 && (v250 & 1) != 0)
  {
    v1027 = v249;
    MEMORY[0x26670E230]();
    __RKEntityAudioActionArguments.path.getter();
    v252 = v981;
    __RKEntityAudioActionArguments.type.getter();
    v253 = (*(v996 + 48))(v252, 1, v997);
    v254 = v1004;
    if (v253 == 1)
    {
      __break(1u);
    }

    else
    {
      v255 = v982;
      __RKEntityAudioActionArguments.spatialMode.getter();
      if ((*(v254 + 48))(v255, 1, v1010) != 1)
      {
        __RKEntityAudioActionArguments.volume.getter();
        if ((v256 & 1) == 0)
        {
          v257 = v970;
          __RKEntityAudioActionArguments.multiplePerformBehavior.getter();
          if ((*(v999 + 48))(v257, 1, v998) != 1)
          {
            v258 = v979;
            __RKEntityAudioActionArguments.init(target:path:type:spatialMode:volume:loops:multiplePerformBehavior:)();
            v259 = v978;
            (*(v1016 + 16))(v978, v258, v1023);
            v260 = *&v1028.f64[0] + 104;
            v1022 = *(*&v1028.f64[0] + 104);
            v261 = v1030.f64[0];
            (v1022)(v259, v239, *&v1030.f64[0]);
            (*(v983 + 104))(v971, *MEMORY[0x277CDAEF8], v977);
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMd, &_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMR);
            v262 = *(v260 - 32);
            v263 = (*(v260 - 24) + 32) & ~*(v260 - 24);
            v264 = swift_allocObject();
            *(v264 + 16) = xmmword_2619891C0;
            v1019((v264 + v263), v259, *&v261);
            v265 = v972;
            __RKEntityActionGroupArguments.init(order:actions:exclusive:loopCount:)();
            v266 = v995;
            v267 = v969;
            v251 = v984;
            (*(v995 + 16))(v969, v265, v984);
            (v1022)(v267, *MEMORY[0x277CDAFA0], *&v261);
            v1033 = v1024;
            v268 = v1031;
            Stage.makeParentPrim(from:baseName:)(&v1033, 0x756F7247706F6F4CLL, 0xE900000000000070, &v1039);
            if (v268)
            {

              v269 = *(*&v1028.f64[0] + 8);
              v269(v267, *&v261);
              (*(v266 + 8))(v265, v251);
              v269(v978, *&v261);
              v270 = *(v1016 + 8);
              v271 = v1023;
              v270(v979, v1023);
              v270(i, v271);
              v1031 = v268;
            }

            else
            {
              v429 = v1039;
              v430 = Stage.setAction(action:at:mapping:)(v267, &v1039, v243);
              v431 = v267;
              v1031 = 0;
              v251 = v430;

              v509 = *(*&v1028.f64[0] + 8);
              v510 = v1030.f64[0];
              v509(v431, *&v1030.f64[0]);
              (*(v995 + 8))(v972, v984);
              v509(v978, *&v510);
              v511 = *(v1016 + 8);
              v512 = v1023;
              v511(v979, v1023);
              v511(i, v512);
            }

            return v251;
          }

          goto LABEL_347;
        }

LABEL_346:
        __break(1u);
LABEL_347:
        __break(1u);
LABEL_348:
        __break(1u);
LABEL_349:
        _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
        goto LABEL_350;
      }
    }

    __break(1u);
    goto LABEL_346;
  }

  v1042 = &protocol witness table for Schema;
  v1041 = &type metadata for Schema;
  v1039 = v1029;
  v320 = swift_getKeyPath();

  v321 = String.count.getter();
  v322 = v997;
  if (v321 < 1)
  {
    v323 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v323 = RIOPxrTfTokenCreateWithCString();
  }

  v338 = v986;
  specialized Properties.subscript.setter(v323, v320, MEMORY[0x277D00A50], MEMORY[0x277D00E40]);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVGMd, &_ss23_ContiguousArrayStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVGMR);
  v339 = swift_allocObject();
  *(v339 + 16) = xmmword_2619891C0;
  *(v339 + 32) = v249;
  *&v1030.f64[0] = v249;
  specialized Properties.subscript.setter(v339);
  v340 = swift_getKeyPath();
  __RKEntityAudioActionArguments.path.getter();
  String.utf8CString.getter();

  v341 = RIOPxrSdfAssetPathCreateFromCString();

  specialized Properties.subscript.setter(v341, v340, MEMORY[0x277D009B8], MEMORY[0x277D00DE0]);
  v342 = swift_getKeyPath();
  v343 = v1001;
  __RKEntityAudioActionArguments.type.getter();
  v344 = v985;
  outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v343, v985, &_s10RealityKit25__RKEntityAudioActionTypeOSgMd, &_s10RealityKit25__RKEntityAudioActionTypeOSgMR);
  v345 = v996;
  if ((*(v996 + 48))(v344, 1, v322) == 1)
  {
    outlined destroy of Any?(v343, &_s10RealityKit25__RKEntityAudioActionTypeOSgMd, &_s10RealityKit25__RKEntityAudioActionTypeOSgMR);
    v346 = 0;
    v347 = v1003;
  }

  else
  {
    (*(v345 + 32))(v338, v344, v322);
    __RKEntityAudioActionType.rawValue.getter();
    v348 = String.count.getter();
    v349 = (v345 + 8);
    v347 = v1003;
    if (v348 < 1)
    {

      v350 = RIOPxrTfTokenEmpty();
      (*v349)(v338, v322);
      outlined destroy of Any?(v1001, &_s10RealityKit25__RKEntityAudioActionTypeOSgMd, &_s10RealityKit25__RKEntityAudioActionTypeOSgMR);
    }

    else
    {
      String.utf8CString.getter();

      v350 = RIOPxrTfTokenCreateWithCString();
      (*v349)(v338, v322);
      outlined destroy of Any?(v1001, &_s10RealityKit25__RKEntityAudioActionTypeOSgMd, &_s10RealityKit25__RKEntityAudioActionTypeOSgMR);
    }

    v346 = v350;
  }

  specialized Properties.subscript.setter(v346, v342, MEMORY[0x277D00A50], MEMORY[0x277D00E40]);
  v376 = COERCE_DOUBLE(__RKEntityAudioActionArguments.volume.getter());
  v377 = v999;
  v378 = v987;
  if (v379)
  {
    v380 = v347;
    v381 = 0x3FF0000000000000;
  }

  else
  {
    v381 = *&v376;
    v380 = v347;
    if (v376 < 0.0)
    {
      v381 = 0;
    }
  }

  swift_getKeyPath();
  specialized Properties.subscript.setter(v381, 0);
  *&v1028.f64[0] = swift_getKeyPath();
  v382 = v1002;
  __RKEntityAudioActionArguments.spatialMode.getter();
  outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v382, v378, &_s10RealityKit29__RKAudioSpatialModeSelectionOSgMd, &_s10RealityKit29__RKAudioSpatialModeSelectionOSgMR);
  v383 = v1004;
  v384 = v1010;
  if ((*(v1004 + 48))(v378, 1, v1010) == 1)
  {
    outlined destroy of Any?(v382, &_s10RealityKit29__RKAudioSpatialModeSelectionOSgMd, &_s10RealityKit29__RKAudioSpatialModeSelectionOSgMR);
    v385 = 0;
    v386 = v998;
    v387 = v380;
    v388 = v377;
LABEL_75:
    specialized Properties.subscript.setter(v385, *&v1028.f64[0], MEMORY[0x277D00A50], MEMORY[0x277D00E40]);
    v417 = swift_getKeyPath();
    __RKEntityAudioActionArguments.multiplePerformBehavior.getter();
    v418 = v990;
    outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v387, v990, &_s10RealityKit39__RKEntityActionMultiplePerformBehaviorOSgMd, &_s10RealityKit39__RKEntityActionMultiplePerformBehaviorOSgMR);
    if ((*(v388 + 48))(v418, 1, v386) == 1)
    {
      outlined destroy of Any?(v387, &_s10RealityKit39__RKEntityActionMultiplePerformBehaviorOSgMd, &_s10RealityKit39__RKEntityActionMultiplePerformBehaviorOSgMR);
      v419 = 0;
    }

    else
    {
      v420 = v991;
      (*(v388 + 32))(v991, v418, v386);
      v421 = *(v388 + 16);
      v422 = v992;
      v421(v992, v420, v386);
      v423 = v974;
      v421(v974, v422, v386);
      v424 = (*(v388 + 88))(v423, v386);
      if (v424 == *MEMORY[0x277CDB010])
      {
        v425 = v1003;
      }

      else
      {
        v425 = v1003;
        if (v424 != *MEMORY[0x277CDB018] && v424 != *MEMORY[0x277CDB008])
        {
          goto LABEL_351;
        }
      }

      v426 = *(v388 + 8);
      v426(v992, v386);
      v426(v991, v386);
      outlined destroy of Any?(v425, &_s10RealityKit39__RKEntityActionMultiplePerformBehaviorOSgMd, &_s10RealityKit39__RKEntityActionMultiplePerformBehaviorOSgMR);
      if (String.count.getter() < 1)
      {

        v419 = RIOPxrTfTokenEmpty();
      }

      else
      {
        String.utf8CString.getter();

        v427 = RIOPxrTfTokenCreateWithCString();

        v419 = v427;
      }
    }

    v428 = v1023;
    specialized Properties.subscript.setter(v419, v417, MEMORY[0x277D00A50], MEMORY[0x277D00E40]);

    (*(v1016 + 8))(i, v428);
    v374 = &_s9RealityIO10PropertiesVyAA17AudioActionSchema_pGMd;
    v375 = &_s9RealityIO10PropertiesVyAA17AudioActionSchema_pGMR;
    goto LABEL_162;
  }

  v389 = v378;
  v390 = v251;
  v391 = v988;
  (*(v383 + 32))(v988, v389, v384);
  v392 = *(v383 + 16);
  v393 = v989;
  v392(v989, v391, v1010);
  v394 = v973;
  v392(v973, v393, v1010);
  v395 = (*(v383 + 88))(v394, v1010);
  if (v395 == *MEMORY[0x277CDAF38])
  {
    v387 = v380;
    v388 = v377;
    goto LABEL_72;
  }

  v387 = v380;
  if (v395 == *MEMORY[0x277CDAF30])
  {
    v388 = v377;
    goto LABEL_72;
  }

  if (v395 == *MEMORY[0x277CDAF40])
  {
    v388 = v377;
LABEL_72:
    v413 = *(v1004 + 8);
    v414 = v1010;
    v413(v989, v1010);
    v413(v988, v414);
    outlined destroy of Any?(v1002, &_s10RealityKit29__RKAudioSpatialModeSelectionOSgMd, &_s10RealityKit29__RKAudioSpatialModeSelectionOSgMR);
    v251 = v390;
    v415 = String.count.getter();
    v386 = v998;
    if (v415 < 1)
    {

      v385 = RIOPxrTfTokenEmpty();
    }

    else
    {
      String.utf8CString.getter();

      v416 = RIOPxrTfTokenCreateWithCString();

      v385 = v416;
    }

    goto LABEL_75;
  }

LABEL_350:
  _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
LABEL_351:
  _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
LABEL_352:
  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}