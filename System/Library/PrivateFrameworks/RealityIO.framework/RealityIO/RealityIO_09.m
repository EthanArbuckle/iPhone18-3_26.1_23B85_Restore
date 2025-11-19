uint64_t specialized static USDImportService.loadBodyTracked_selectEntity(contentsOf:importSession:)(uint64_t a1, uint64_t a2)
{
  v24 = a1;
  v3 = type metadata accessor for BodyTrackingComponent();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = type metadata accessor for __EntityRef();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Entity.ChildCollection();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a2 + 24);
  type metadata accessor for Entity();
  HasHierarchy.children.getter();
  lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type Entity.ChildCollection and conformance Entity.ChildCollection, MEMORY[0x277CDB190]);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v15 = dispatch thunk of Collection.distance(from:to:)();
  (*(v10 + 8))(v13, v9);
  if (v15 < 1)
  {
    Error = type metadata accessor for USDImportService.LoadError();
    lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type USDImportService.LoadError and conformance USDImportService.LoadError, type metadata accessor for USDImportService.LoadError);
    swift_allocError();
    outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v24, v21, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
LABEL_8:
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return Error;
  }

  Entity.coreEntity.getter();
  Child = REEntityGetChild();
  if (!Child)
  {
    Error = type metadata accessor for USDImportService.LoadError();
    lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type USDImportService.LoadError and conformance USDImportService.LoadError, type metadata accessor for USDImportService.LoadError);
    swift_allocError();
    goto LABEL_8;
  }

  v25[3] = MEMORY[0x277D841D8];
  v25[0] = Child;
  static __AssetRef.__fromCore(_:)();
  __swift_destroy_boxed_opaque_existential_0(v25);
  v17 = type metadata accessor for BodyTrackedEntity();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  Error = MEMORY[0x26670DC40](v8);

  Entity.coreEntity.getter();
  REBodyTrackingComponentGetComponentType();
  if (!REEntityGetComponentByClass())
  {
    BodyTrackingComponent.init()();
    HasBodyTracking.bodyTracking.setter();
  }

  HasHierarchy.setParent(_:preservingWorldTransform:)();

  return Error;
}

uint64_t specialized USDImportService.loadBodyTracked(contentsOf:withName:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v58 = &v57 - v4;
  v61 = type metadata accessor for __EngineRef();
  v5 = *(v61 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v61);
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v57 - v16;
  v18 = *(v10 + 16);
  v18(&v57 - v16, a1, v9, v15);
  v62 = v18;
  v63 = v13;
  v60 = a1;
  (v18)(v13, a1, v9);
  v64 = v17;
  URL._bridgeToObjectiveC()(v19);
  v21 = v20;
  v22 = RIOPxrUsdStageCreateWithFileURL();

  if (!v22)
  {
    goto LABEL_15;
  }

  v57 = v10;
  TopLevelEntityFromStage = RIOPxrUsdUtilsCreateTopLevelEntityFromStage();
  type metadata accessor for __ServiceLocator();
  v24 = TopLevelEntityFromStage;
  static __ServiceLocator.shared.getter();
  dispatch thunk of __ServiceLocator.engine.getter();

  dispatch thunk of __Engine.__coreEngine.getter();

  __AssetRef.__as<A>(_:)();
  (*(v5 + 8))(v8, v61);
  SingleUseImporterWithStage = RIOImportSessionCreateSingleUseImporterWithStage();
  v26 = type metadata accessor for ImportSession(0);
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  v29 = _s9RealityIO13ImportSessionC4core10entityTypeACSgSo09RIOImportD3RefaSg_xmtc0A3Kit6EntityCRbzlufcAJ011BodyTrackedK0C_Tt0g5(SingleUseImporterWithStage);
  if (!v29)
  {

    v10 = v57;
LABEL_15:
    type metadata accessor for USDImportService.LoadError();
    lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type USDImportService.LoadError and conformance USDImportService.LoadError, type metadata accessor for USDImportService.LoadError);
    swift_allocError();
    v52 = v51;
    v62(v51, v60, v9);
    (*(v10 + 56))(v52, 0, 1, v9);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v53 = *(v10 + 8);
    v53(v63, v9);
    return (v53)(v64, v9);
  }

  v30 = v29;
  v31 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
  swift_beginAccess();
  v32 = *(v30 + v31);

  RIOImportSessionSetIsLoadModelUseCase();
  v33 = *(v30 + v31);
  v34 = v64;
  URL._bridgeToObjectiveC()(v35);
  v37 = v36;
  RIOImportSessionSetOriginalUrl();

  v38 = *(v30 + v31);
  RIOImportSessionUpdateSynchronouslyOnEngineQueue();
  v39 = *(v30 + v31);
  result = RIOImportSessionGetSceneCount();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v41 = result;
    v42 = v63;
    if (!result)
    {
      goto LABEL_12;
    }

    v43 = 0;
    v44 = 0;
    while (1)
    {
      v45 = *(v30 + v31);
      if (RIOImportSessionIsSceneActive())
      {
        if (__OFADD__(v43++, 1))
        {
          break;
        }
      }

      if (v41 == ++v44)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_11:
    if (v43 >= 2)
    {
      type metadata accessor for USDImportService.LoadError();
      lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type USDImportService.LoadError and conformance USDImportService.LoadError, type metadata accessor for USDImportService.LoadError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      v54 = *(v57 + 8);
      v54(v42, v9);
      return (v54)(v34, v9);
    }

    else
    {
LABEL_12:
      v47 = v58;
      v62(v58, v42, v9);
      v48 = v57;
      (*(v57 + 56))(v47, 0, 1, v9);
      v49 = v59;
      specialized static USDImportService.loadBodyTracked_selectEntity(contentsOf:importSession:)(v47, v30);
      if (v49)
      {
        outlined destroy of Any?(v47, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        v50 = *(v48 + 8);
        v50(v42, v9);
        v50(v34, v9);
      }

      else
      {
        outlined destroy of Any?(v47, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        type metadata accessor for BodyTrackedEntity();
        if (swift_dynamicCastClass())
        {

          v55 = *(v48 + 8);
          v55(v42, v9);
          v55(v34, v9);
          return swift_dynamicCastClassUnconditional();
        }

        else
        {
          type metadata accessor for USDImportService.LoadError();
          lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type USDImportService.LoadError and conformance USDImportService.LoadError, type metadata accessor for USDImportService.LoadError);
          swift_allocError();
          swift_storeEnumTagMultiPayload();
          swift_willThrow();

          v56 = *(v48 + 8);
          v56(v42, v9);

          return (v56)(v34, v9);
        }
      }
    }
  }

  return result;
}

uint64_t specialized USDImportService.loadAsync(contentsOf:withName:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, int a8, uint64_t a9)
{
  v116 = a8;
  v119 = a7;
  v130 = a6;
  v122 = a5;
  v120 = a4;
  v132 = a3;
  v131 = a2;
  v126 = type metadata accessor for DispatchWorkItemFlags();
  v125 = *(v126 - 8);
  v10 = *(v125 + 64);
  MEMORY[0x28223BE20](v126);
  v127 = &v115[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v124 = type metadata accessor for DispatchQoS();
  v123 = *(v124 - 8);
  v12 = *(v123 + 64);
  MEMORY[0x28223BE20](v124);
  v128 = &v115[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMd, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v115[-v16];
  v18 = type metadata accessor for Entity.__LoadOptions.LoadableFeatures();
  v129 = *(v18 - 8);
  v19 = *(v129 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v115[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v22);
  v118 = &v115[-v23];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v133 = *(v24 - 8);
  v25 = *(v133 + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v115[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v27);
  v29 = &v115[-v28];
  v30 = type metadata accessor for Entity();
  v31 = type metadata accessor for URL();
  v32 = *(v31 - 8);
  (*(v32 + 16))(v29, a1, v31);
  (*(v32 + 56))(v29, 0, 1, v31);
  v33 = specialized closure #1 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:configureImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:)(a1, v30, 0, 0);
  if (v33)
  {
    v34 = v33;
    v117 = v25;
    outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(a9, v17, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMd, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMR);
    v35 = v129;
    if ((*(v129 + 48))(v17, 1, v18) == 1)
    {
      v36 = v34;

      outlined destroy of Any?(v17, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMd, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMR);
    }

    else
    {
      v46 = v118;
      (*(v35 + 32))(v118, v17, v18);

      static Entity.__LoadOptions.LoadableFeatures.audio.getter();
      lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type Entity.__LoadOptions.LoadableFeatures and conformance Entity.__LoadOptions.LoadableFeatures, MEMORY[0x277CDB140]);
      v47 = v34;
      v48 = dispatch thunk of SetAlgebra.isSuperset(of:)();
      v49 = *(v35 + 8);
      v49(v21, v18);
      if (v48)
      {
        v50 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
        swift_beginAccess();
        v36 = v47;
        v51 = *(v47 + v50);
        RIOImportSessionSetLoadAudio();
      }

      else
      {
        v36 = v47;
      }

      v49(v46, v18);
    }

    v52 = v117;
    v53 = v133;
    v54 = v131;
    v55 = v26;
    if (v130 != 2 && (v130 & 1) != 0)
    {
      result = v119;
      if (v116)
      {
        result = MEMORY[0x266713650](v119, v26);
      }

      if (result + 0x4000000000000000 < 0)
      {
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
        goto LABEL_52;
      }

      v119 = result;
      v57 = 2 * result / 3;
      v58 = swift_allocObject();
      *(v58 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_9RealityIO13ImportSessionC17MeshAssetEstimateVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
      v59 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
      swift_beginAccess();
      v60 = *(v36 + v59);
      v139 = partial apply for closure #1 in ImportSession.gatherEntitiesWithMeshAssetEstimates();
      v140 = v58;
      aBlock = MEMORY[0x277D85DD0];
      v136 = 1107296256;
      v137 = thunk for @escaping @callee_guaranteed (@unowned UnsafePointer<Int8>, @unowned Int, @unowned Int, @unowned Int, @unowned Int) -> ();
      v138 = &block_descriptor_132_0;
      v61 = _Block_copy(&aBlock);
      v62 = v60;

      RIOImportSessionGatherMeshEstimates();
      _Block_release(v61);

      swift_beginAccess();
      v63 = *(v58 + 16);

      v64 = 0;
      v65 = 0;
      v66 = 0;
      v67 = 0;
      v68 = 0;
      v69 = 1 << *(v63 + 32);
      v70 = -1;
      if (v69 < 64)
      {
        v70 = ~(-1 << v69);
      }

      v71 = v70 & *(v63 + 64);
      v72 = (v69 + 63) >> 6;
      if (v71)
      {
        while (1)
        {
          v73 = v64;
LABEL_21:
          v74 = (*(v63 + 56) + ((v73 << 11) | (32 * __clz(__rbit64(v71)))));
          v75 = __OFADD__(v65, *v74);
          v65 += *v74;
          if (v75)
          {
            break;
          }

          v76 = v74[1];
          v75 = __OFADD__(v66, v76);
          v66 += v76;
          if (v75)
          {
            goto LABEL_46;
          }

          v77 = v74[2];
          v75 = __OFADD__(v67, v77);
          v67 += v77;
          if (v75)
          {
            goto LABEL_47;
          }

          v71 &= v71 - 1;
          v78 = v74[3];
          if (v78 > v68)
          {
            v68 = v78;
          }

          v64 = v73;
          if (!v71)
          {
            goto LABEL_18;
          }
        }

LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      while (1)
      {
LABEL_18:
        v73 = v64 + 1;
        if (__OFADD__(v64, 1))
        {
          __break(1u);
          goto LABEL_45;
        }

        if (v73 >= v72)
        {
          break;
        }

        v71 = *(v63 + 64 + 8 * v73);
        ++v64;
        if (v71)
        {
          goto LABEL_21;
        }
      }

      v79 = v66 * v68;
      if ((v66 * v68) >> 64 != (v66 * v68) >> 63)
      {
        goto LABEL_49;
      }

      if ((v79 - 0x2000000000000000) >> 62 != 3)
      {
        goto LABEL_50;
      }

      v80 = 3 * v67;
      if ((v67 * 3) >> 64 != (3 * v67) >> 63)
      {
        goto LABEL_51;
      }

      if ((v80 - 0x2000000000000000) >> 62 != 3)
      {
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }

      v81 = 4 * v79;
      v82 = v81 + 12 * v67;
      if (__OFADD__(v81, 4 * v80))
      {
        goto LABEL_53;
      }

      result = [objc_opt_self() viewerMemoryAvailableForTexturesOnThisDevice];
      if (result >= v57)
      {
        v83 = v57;
      }

      else
      {
        v83 = result;
      }

      v75 = __OFSUB__(v83, v82);
      v84 = v83 - v82;
      if (v75)
      {
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
        goto LABEL_56;
      }

      estimateTextureImportMemoryAndSelectDownsamplingModeCDM(textureDownsampleConfig:session:)(v84 & ~(v84 >> 63), v36, COERCE_DOUBLE(0x100000001000));
      v86 = v85;

      v87 = v82 + v86;
      if (__OFADD__(v82, v86))
      {
        goto LABEL_55;
      }

      v88 = (v87 * 3) >> 64;
      v89 = 3 * v87;
      v90 = v127;
      v52 = v117;
      v53 = v133;
      if (v88 != v89 >> 63)
      {
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
        return result;
      }

      if (__OFADD__(v119, 10))
      {
        goto LABEL_57;
      }

      v91 = v89 / 2;
      v55 = v26;
      v92 = v126;
      if (v119 + 10 < v89 / 2)
      {
        type metadata accessor for __ServiceLocator();
        static __ServiceLocator.shared.getter();
        dispatch thunk of __ServiceLocator.engine.getter();

        v93 = __Engine.queue.getter();

        v94 = swift_allocObject();
        v95 = v132;
        v94[2] = v54;
        v94[3] = v95;
        v96 = v119;
        v94[4] = v91;
        v94[5] = v96;
        v139 = partial apply for specialized closure #4 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:createImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:);
        v140 = v94;
        aBlock = MEMORY[0x277D85DD0];
        v136 = 1107296256;
        v137 = thunk for @escaping @callee_guaranteed () -> ();
        v138 = &block_descriptor_144;
        v97 = _Block_copy(&aBlock);

        v98 = v128;
        static DispatchQoS.unspecified.getter();
        v134 = MEMORY[0x277D84F90];
        lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
        lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
        dispatch thunk of SetAlgebra.init<A>(_:)();
        MEMORY[0x26670F3A0](0, v98, v90, v97);
        _Block_release(v97);

        (*(v125 + 8))(v90, v92);
        (*(v123 + 8))(v98, v124);
        v45 = v29;
        goto LABEL_42;
      }
    }

    v99 = v55;
    outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v29, v55, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v100 = (*(v53 + 80) + 40) & ~*(v53 + 80);
    v101 = (v52 + v100 + 7) & 0xFFFFFFFFFFFFFFF8;
    v102 = (v101 + 15) & 0xFFFFFFFFFFFFFFF8;
    v103 = (v102 + 23) & 0xFFFFFFFFFFFFFFF8;
    v104 = v29;
    v105 = swift_allocObject();
    v105[2] = v36;
    v105[3] = v54;
    v105[4] = v132;
    outlined init with take of URL?(v99, v105 + v100);
    *(v105 + v101) = v36;
    v106 = (v105 + v102);
    *v106 = 0;
    v106[1] = 0;
    *(v105 + v103) = v121;
    v107 = (v105 + ((v103 + 15) & 0xFFFFFFFFFFFFFFF8));
    v108 = v120;
    v109 = v122;
    *v107 = v120;
    v107[1] = v109;
    v110 = (v36 + OBJC_IVAR____TtC9RealityIO13ImportSession_sceneUpdatePassCompletion);
    swift_beginAccess();
    v111 = *v110;
    v112 = v110[1];
    *v110 = partial apply for specialized closure #5 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:createImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:);
    v110[1] = v105;
    swift_retain_n();

    sub_26187DB8C(v108);

    outlined consume of (@escaping @callee_guaranteed () -> ())?(v111);
    ImportSession.sceneUpdatePassCompletion.didset();

    v113 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
    swift_beginAccess();
    v114 = *(v36 + v113);
    RIOImportSessionUpdate();

    return outlined destroy of Any?(v104, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  }

  type metadata accessor for __ServiceLocator();
  static __ServiceLocator.shared.getter();
  dispatch thunk of __ServiceLocator.engine.getter();

  v37 = __Engine.queue.getter();

  outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v29, v26, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v38 = (*(v133 + 80) + 32) & ~*(v133 + 80);
  v39 = swift_allocObject();
  v40 = v132;
  *(v39 + 16) = v131;
  *(v39 + 24) = v40;
  outlined init with take of URL?(v26, v39 + v38);
  v139 = partial apply for specialized closure #1 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:createImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:);
  v140 = v39;
  aBlock = MEMORY[0x277D85DD0];
  v136 = 1107296256;
  v137 = thunk for @escaping @callee_guaranteed () -> ();
  v138 = &block_descriptor_123;
  v41 = _Block_copy(&aBlock);

  v42 = v128;
  static DispatchQoS.unspecified.getter();
  v134 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  v43 = v127;
  v44 = v126;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x26670F3A0](0, v42, v43, v41);
  _Block_release(v41);

  (*(v125 + 8))(v43, v44);
  (*(v123 + 8))(v42, v124);
  v45 = v29;
LABEL_42:
  outlined destroy of Any?(v45, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
}

uint64_t specialized static USDImportService.createDummyDataFilename(from:)(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
  v9 = dispatch thunk of CustomStringConvertible.description.getter();
  v11 = v10;
  (*(v5 + 8))(v8, v4);
  if (specialized Sequence<>.starts<A>(with:)(&outlined read-only object #0 of static USDImportService.sniffUSDExtension(forData:), a1, a2))
  {
    v12 = 2053403509;
  }

  else if (specialized Sequence<>.starts<A>(with:)(&outlined read-only object #1 of static USDImportService.sniffUSDExtension(forData:), a1, a2))
  {
    v12 = 1633973109;
  }

  else
  {
    if ((specialized Sequence<>.starts<A>(with:)(&outlined read-only object #2 of static USDImportService.sniffUSDExtension(forData:), a1, a2) & 1) == 0)
    {

      return 0;
    }

    v12 = 1667527541;
  }

  v14[0] = v9;
  v14[1] = v11;
  MEMORY[0x26670F080](46, 0xE100000000000000);
  MEMORY[0x26670F080](v12, 0xE400000000000000);

  return v14[0];
}

id specialized USDImportService.loadModelAsync(contentsOf:withName:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, void *a7, int a8, uint64_t a9)
{
  v141 = a8;
  v144 = a7;
  v151 = a6;
  v147 = a5;
  v145 = a4;
  v163 = a2;
  v164 = a3;
  v159 = type metadata accessor for DispatchWorkItemFlags();
  v158 = *(v159 - 8);
  v10 = *(v158 + 64);
  MEMORY[0x28223BE20](v159);
  v155 = &v140[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v157 = type metadata accessor for DispatchQoS();
  v156 = *(v157 - 8);
  v12 = *(v156 + 64);
  MEMORY[0x28223BE20](v157);
  v154 = &v140[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMd, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v148 = &v140[-v16];
  v150 = type metadata accessor for Entity.__LoadOptions.LoadableFeatures();
  v149 = *(v150 - 8);
  v17 = *(v149 + 64);
  MEMORY[0x28223BE20](v150);
  v142 = &v140[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v19);
  v143 = &v140[-v20];
  v153 = type metadata accessor for __EngineRef();
  v152 = *(v153 - 8);
  v21 = *(v152 + 64);
  MEMORY[0x28223BE20](v153);
  v23 = &v140[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = type metadata accessor for URL();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v27 = &v140[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v28);
  v30 = &v140[-v29];
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v160 = *(v31 - 8);
  v32 = *(v160 + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v162 = &v140[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v161 = v33;
  v35 = MEMORY[0x28223BE20](v34);
  v37 = &v140[-v36];
  v38 = *(v25 + 16);
  v38(&v140[-v36], a1, v24, v35);
  v39 = *(v25 + 56);
  v167 = v37;
  v39(v37, 0, 1, v24);
  (v38)(v30, a1, v24);
  (v38)(v27, a1, v24);
  v40 = (*(v25 + 80) + 16) & ~*(v25 + 80);
  v41 = swift_allocObject();
  v165 = v25;
  v166 = v24;
  (*(v25 + 32))(v41 + v40, v27, v24);
  v42 = v30;
  URL._bridgeToObjectiveC()(v43);
  v45 = v44;
  v46 = RIOPxrUsdStageCreateWithFileURL();

  if (v46)
  {
    TopLevelEntityFromStage = RIOPxrUsdUtilsCreateTopLevelEntityFromStage();
    v48 = type metadata accessor for __ServiceLocator();
    v49 = TopLevelEntityFromStage;
    static __ServiceLocator.shared.getter();
    dispatch thunk of __ServiceLocator.engine.getter();

    dispatch thunk of __Engine.__coreEngine.getter();

    __AssetRef.__as<A>(_:)();
    (*(v152 + 8))(v23, v153);
    SingleUseImporterWithStage = RIOImportSessionCreateSingleUseImporterWithStage();
    v51 = type metadata accessor for ImportSession(0);
    v52 = *(v51 + 48);
    v53 = *(v51 + 52);
    swift_allocObject();
    v54 = _s9RealityIO13ImportSessionC4core10entityTypeACSgSo09RIOImportD3RefaSg_xmtc0A3Kit6EntityCRbzlufcAJ05ModelK0C_Tt0g5(SingleUseImporterWithStage);
    if (v54)
    {
      v55 = v54;
      v152 = v48;
      v56 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
      swift_beginAccess();
      v57 = *(v55 + v56);

      RIOImportSessionSetIsLoadModelUseCase();
      v58 = *(v55 + v56);
      v153 = v42;
      URL._bridgeToObjectiveC()(&v176);
      v60 = v59;
      RIOImportSessionSetOriginalUrl();

      v61 = v148;
      outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(a9, v148, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMd, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMR);
      v62 = v149;
      v63 = v150;
      if ((*(v149 + 48))(v61, 1, v150) == 1)
      {

        result = outlined destroy of Any?(v61, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMd, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMR);
      }

      else
      {
        v76 = v143;
        (*(v62 + 32))(v143, v61, v63);

        v77 = v142;
        static Entity.__LoadOptions.LoadableFeatures.audio.getter();
        lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type Entity.__LoadOptions.LoadableFeatures and conformance Entity.__LoadOptions.LoadableFeatures, MEMORY[0x277CDB140]);
        v78 = dispatch thunk of SetAlgebra.isSuperset(of:)();
        v79 = *(v62 + 8);
        v79(v77, v63);
        if (v78)
        {
          v80 = *(v55 + v56);
          RIOImportSessionSetLoadAudio();
        }

        result = (v79)(v76, v63);
      }

      if (v151 != 2 && (v151 & 1) != 0)
      {
        if (v141)
        {
          result = MEMORY[0x266713650](result);
          v144 = result;
        }

        if (v144 + 0x4000000000000000 < 0)
        {
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
          goto LABEL_53;
        }

        v81 = 2 * v144 / 3;
        v82 = swift_allocObject();
        v83 = MEMORY[0x277D84F90];
        *(v82 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_9RealityIO13ImportSessionC17MeshAssetEstimateVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
        v84 = *(v55 + v56);
        v174 = closure #1 in ImportSession.gatherEntitiesWithMeshAssetEstimates()partial apply;
        v175 = v82;
        aBlock = MEMORY[0x277D85DD0];
        v171 = 1107296256;
        v172 = thunk for @escaping @callee_guaranteed (@unowned UnsafePointer<Int8>, @unowned Int, @unowned Int, @unowned Int, @unowned Int) -> ();
        v173 = &block_descriptor_262;
        v85 = _Block_copy(&aBlock);
        v86 = v84;

        RIOImportSessionGatherMeshEstimates();
        _Block_release(v85);

        swift_beginAccess();
        v87 = *(v82 + 16);

        v88 = 0;
        v89 = 0;
        v90 = 0;
        v91 = 0;
        v92 = 0;
        v93 = 1 << *(v87 + 32);
        v94 = -1;
        if (v93 < 64)
        {
          v94 = ~(-1 << v93);
        }

        v95 = v94 & *(v87 + 64);
        v96 = (v93 + 63) >> 6;
        if (v95)
        {
          while (1)
          {
            v97 = v88;
LABEL_23:
            v98 = (*(v87 + 56) + ((v97 << 11) | (32 * __clz(__rbit64(v95)))));
            v99 = __OFADD__(v89, *v98);
            v89 += *v98;
            if (v99)
            {
              break;
            }

            v100 = v98[1];
            v99 = __OFADD__(v90, v100);
            v90 += v100;
            if (v99)
            {
              goto LABEL_47;
            }

            v101 = v98[2];
            v99 = __OFADD__(v91, v101);
            v91 += v101;
            if (v99)
            {
              goto LABEL_48;
            }

            v95 &= v95 - 1;
            v102 = v98[3];
            if (v102 > v92)
            {
              v92 = v102;
            }

            v88 = v97;
            if (!v95)
            {
              goto LABEL_20;
            }
          }

LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
          goto LABEL_49;
        }

        while (1)
        {
LABEL_20:
          v97 = v88 + 1;
          if (__OFADD__(v88, 1))
          {
            __break(1u);
            goto LABEL_46;
          }

          if (v97 >= v96)
          {
            break;
          }

          v95 = *(v87 + 64 + 8 * v97);
          ++v88;
          if (v95)
          {
            goto LABEL_23;
          }
        }

        v103 = v90 * v92;
        if ((v90 * v92) >> 64 != (v90 * v92) >> 63)
        {
          goto LABEL_50;
        }

        if ((v103 - 0x2000000000000000) >> 62 != 3)
        {
          goto LABEL_51;
        }

        v104 = 3 * v91;
        if ((v91 * 3) >> 64 != (3 * v91) >> 63)
        {
          goto LABEL_52;
        }

        if ((v104 - 0x2000000000000000) >> 62 != 3)
        {
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
          goto LABEL_55;
        }

        v105 = 4 * v103;
        v106 = v105 + 12 * v91;
        if (__OFADD__(v105, 4 * v104))
        {
          goto LABEL_54;
        }

        result = [objc_opt_self() viewerMemoryAvailableForTexturesOnThisDevice];
        if (result >= v81)
        {
          v107 = v81;
        }

        else
        {
          v107 = result;
        }

        v99 = __OFSUB__(v107, v106);
        v108 = v107 - v106;
        if (v99)
        {
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
          goto LABEL_57;
        }

        estimateTextureImportMemoryAndSelectDownsamplingModeCDM(textureDownsampleConfig:session:)(v108 & ~(v108 >> 63), v55, COERCE_DOUBLE(0x100000001000));
        v110 = v109;

        v111 = v106 + v110;
        if (__OFADD__(v106, v110))
        {
          goto LABEL_56;
        }

        v112 = (v111 * 3) >> 64;
        v113 = 3 * v111;
        if (v112 != v113 >> 63)
        {
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
          return result;
        }

        if (__OFADD__(v144, 10))
        {
          goto LABEL_58;
        }

        v114 = v113;
        if (v144 + 10 < v113 / 2)
        {
          static __ServiceLocator.shared.getter();
          dispatch thunk of __ServiceLocator.engine.getter();

          v115 = __Engine.queue.getter();

          v116 = swift_allocObject();
          v117 = v164;
          v116[2] = v163;
          v116[3] = v117;
          v118 = v144;
          v116[4] = v114 / 2;
          v116[5] = v118;
          v174 = closure #4 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:createImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:)specialized partial apply;
          v175 = v116;
          aBlock = MEMORY[0x277D85DD0];
          v171 = 1107296256;
          v172 = thunk for @escaping @callee_guaranteed () -> ();
          v173 = &block_descriptor_274;
          v119 = _Block_copy(&aBlock);

          v120 = v154;
          static DispatchQoS.unspecified.getter();
          v168 = v83;
          lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
          lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
          v121 = v155;
          v122 = v159;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          MEMORY[0x26670F3A0](0, v120, v121, v119);
          _Block_release(v119);

          (*(v158 + 8))(v121, v122);
          (*(v156 + 8))(v120, v157);
          (*(v165 + 8))(v153, v166);
          v75 = v167;
          goto LABEL_7;
        }
      }

      v159 = v56;
      v123 = v162;
      outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v167, v162, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v124 = (*(v160 + 80) + 40) & ~*(v160 + 80);
      v125 = (v161 + v124 + 7) & 0xFFFFFFFFFFFFFFF8;
      v126 = v41;
      v127 = (v125 + 15) & 0xFFFFFFFFFFFFFFF8;
      v128 = (v127 + 23) & 0xFFFFFFFFFFFFFFF8;
      v129 = swift_allocObject();
      v130 = v163;
      v131 = v164;
      v129[2] = v55;
      v129[3] = v130;
      v129[4] = v131;
      outlined init with take of URL?(v123, v129 + v124);
      *(v129 + v125) = v55;
      v132 = (v129 + v127);
      *v132 = partial apply for closure #2 in USDImportService.loadModelAsync(contentsOf:withName:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:);
      v132[1] = v126;
      *(v129 + v128) = v146;
      v133 = (v129 + ((v128 + 15) & 0xFFFFFFFFFFFFFFF8));
      v134 = v145;
      v135 = v147;
      *v133 = v145;
      v133[1] = v135;
      v136 = (v55 + OBJC_IVAR____TtC9RealityIO13ImportSession_sceneUpdatePassCompletion);
      swift_beginAccess();
      v137 = *v136;
      v138 = v136[1];
      *v136 = partial apply for specialized closure #5 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:createImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:);
      v136[1] = v129;
      swift_retain_n();

      sub_26187DB8C(v134);

      outlined consume of (@escaping @callee_guaranteed () -> ())?(v137);
      ImportSession.sceneUpdatePassCompletion.didset();

      v139 = *(v55 + v159);
      RIOImportSessionUpdate();

      (*(v165 + 8))(v153, v166);
      return outlined destroy of Any?(v167, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    }
  }

  type metadata accessor for __ServiceLocator();
  static __ServiceLocator.shared.getter();
  dispatch thunk of __ServiceLocator.engine.getter();

  v65 = __Engine.queue.getter();

  v66 = v167;
  v67 = v162;
  outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v167, v162, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v68 = (*(v160 + 80) + 32) & ~*(v160 + 80);
  v69 = swift_allocObject();
  v70 = v164;
  *(v69 + 16) = v163;
  *(v69 + 24) = v70;
  outlined init with take of URL?(v67, v69 + v68);
  v174 = closure #1 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:createImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:)specialized partial apply;
  v175 = v69;
  aBlock = MEMORY[0x277D85DD0];
  v171 = 1107296256;
  v172 = thunk for @escaping @callee_guaranteed () -> ();
  v173 = &block_descriptor_254;
  v71 = _Block_copy(&aBlock);

  v72 = v154;
  static DispatchQoS.unspecified.getter();
  v169 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  v73 = v155;
  v74 = v159;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x26670F3A0](0, v72, v73, v71);
  _Block_release(v71);

  (*(v158 + 8))(v73, v74);
  (*(v156 + 8))(v72, v157);
  (*(v165 + 8))(v42, v166);
  v75 = v66;
LABEL_7:
  outlined destroy of Any?(v75, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
}

uint64_t specialized USDImportService.loadAnchorAsync(contentsOf:withName:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, int a8, uint64_t a9)
{
  v120 = a8;
  v127 = a7;
  v140 = a6;
  v130 = a5;
  v128 = a4;
  v144 = a3;
  v143 = a2;
  v134 = type metadata accessor for DispatchWorkItemFlags();
  v135 = *(v134 - 8);
  v10 = *(v135 + 64);
  MEMORY[0x28223BE20](v134);
  v131 = &v119[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v133 = type metadata accessor for DispatchQoS();
  v132 = *(v133 - 8);
  v12 = *(v132 + 64);
  MEMORY[0x28223BE20](v133);
  v136 = &v119[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMd, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v137 = &v119[-v16];
  v139 = type metadata accessor for Entity.__LoadOptions.LoadableFeatures();
  v138 = *(v139 - 8);
  v17 = *(v138 + 64);
  MEMORY[0x28223BE20](v139);
  v125 = &v119[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v19);
  v126 = &v119[-v20];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v145 = *(v21 - 8);
  v22 = *(v145 + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v119[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v24);
  v26 = &v119[-v25];
  v27 = type metadata accessor for URL();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  v31 = &v119[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v33 = MEMORY[0x28223BE20](v32);
  v35 = &v119[-v34];
  v36 = *(v28 + 16);
  v36(&v119[-v34], a1, v27, v33);
  (v36)(v26, a1, v27);
  v142 = v28;
  (*(v28 + 56))(v26, 0, 1, v27);
  (v36)(v31, v35, v27);
  v37 = _s9RealityIO13ImportSessionC10contentsOf15pipelineVersion9threading10entityType13isolationModeACSg10Foundation3URLV_So09RIOImportd8PipelineH0VSo0pD9ThreadingVxmSo0pd14StageIsolationM0Vtc0A3Kit6EntityCRbzlufCAS06AnchorV0C_Tt2t4g5(v31, 0, 0, 1);
  if (v37)
  {
    v38 = v37;
    v124 = v22;
    v123 = &v119[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
    v122 = v35;
    v141 = v26;
    v39 = v137;
    outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(a9, v137, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMd, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMR);
    v40 = v138;
    v41 = v139;
    v42 = (*(v138 + 48))(v39, 1, v139);
    v121 = v27;
    if (v42 == 1)
    {

      outlined destroy of Any?(v39, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMd, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMR);
      v43 = v141;
    }

    else
    {
      v52 = v126;
      (*(v40 + 32))(v126, v39, v41);

      v53 = v125;
      static Entity.__LoadOptions.LoadableFeatures.audio.getter();
      lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type Entity.__LoadOptions.LoadableFeatures and conformance Entity.__LoadOptions.LoadableFeatures, MEMORY[0x277CDB140]);
      v54 = dispatch thunk of SetAlgebra.isSuperset(of:)();
      v55 = *(v40 + 8);
      v55(v53, v41);
      v43 = v141;
      if (v54)
      {
        v56 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
        swift_beginAccess();
        v57 = *(v38 + v56);
        RIOImportSessionSetLoadAudio();
      }

      v55(v52, v41);
    }

    v58 = v124;
    v59 = v145;
    v60 = v123;
    if (v140 != 2 && (v140 & 1) != 0)
    {
      result = v127;
      if (v120)
      {
        result = MEMORY[0x266713650](v127);
      }

      if (result + 0x4000000000000000 < 0)
      {
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

      v127 = result;
      v62 = 2 * result / 3;
      v63 = swift_allocObject();
      *(v63 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_9RealityIO13ImportSessionC17MeshAssetEstimateVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
      v64 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
      swift_beginAccess();
      v65 = *(v38 + v64);
      v151 = closure #1 in ImportSession.gatherEntitiesWithMeshAssetEstimates()partial apply;
      v152 = v63;
      aBlock = MEMORY[0x277D85DD0];
      v148 = 1107296256;
      v149 = thunk for @escaping @callee_guaranteed (@unowned UnsafePointer<Int8>, @unowned Int, @unowned Int, @unowned Int, @unowned Int) -> ();
      v150 = &block_descriptor_386;
      v66 = _Block_copy(&aBlock);
      v67 = v65;

      RIOImportSessionGatherMeshEstimates();
      _Block_release(v66);

      swift_beginAccess();
      v68 = *(v63 + 16);

      v69 = 0;
      v70 = 0;
      v71 = 0;
      v72 = 0;
      v73 = 0;
      v74 = 1 << *(v68 + 32);
      v75 = -1;
      if (v74 < 64)
      {
        v75 = ~(-1 << v74);
      }

      v76 = v75 & *(v68 + 64);
      v77 = (v74 + 63) >> 6;
      if (v76)
      {
        while (1)
        {
          v78 = v69;
LABEL_20:
          v79 = (*(v68 + 56) + ((v78 << 11) | (32 * __clz(__rbit64(v76)))));
          v80 = __OFADD__(v70, *v79);
          v70 += *v79;
          if (v80)
          {
            break;
          }

          v81 = v79[1];
          v80 = __OFADD__(v71, v81);
          v71 += v81;
          if (v80)
          {
            goto LABEL_45;
          }

          v82 = v79[2];
          v80 = __OFADD__(v72, v82);
          v72 += v82;
          if (v80)
          {
            goto LABEL_46;
          }

          v76 &= v76 - 1;
          v83 = v79[3];
          if (v83 > v73)
          {
            v73 = v83;
          }

          v69 = v78;
          if (!v76)
          {
            goto LABEL_17;
          }
        }

LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      while (1)
      {
LABEL_17:
        v78 = v69 + 1;
        if (__OFADD__(v69, 1))
        {
          __break(1u);
          goto LABEL_44;
        }

        if (v78 >= v77)
        {
          break;
        }

        v76 = *(v68 + 64 + 8 * v78);
        ++v69;
        if (v76)
        {
          goto LABEL_20;
        }
      }

      v84 = v71 * v73;
      if ((v71 * v73) >> 64 != (v71 * v73) >> 63)
      {
        goto LABEL_48;
      }

      if ((v84 - 0x2000000000000000) >> 62 != 3)
      {
        goto LABEL_49;
      }

      if ((v72 * 3) >> 64 != (3 * v72) >> 63)
      {
        goto LABEL_50;
      }

      if ((3 * v72 - 0x2000000000000000) >> 62 != 3)
      {
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }

      v85 = 4 * v84;
      v86 = v85 + 12 * v72;
      if (__OFADD__(v85, 12 * v72))
      {
        goto LABEL_52;
      }

      result = [objc_opt_self() viewerMemoryAvailableForTexturesOnThisDevice];
      if (result >= v62)
      {
        v87 = v62;
      }

      else
      {
        v87 = result;
      }

      v80 = __OFSUB__(v87, v86);
      v88 = v87 - v86;
      if (v80)
      {
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
        goto LABEL_55;
      }

      estimateTextureImportMemoryAndSelectDownsamplingModeCDM(textureDownsampleConfig:session:)(v88 & ~(v88 >> 63), v38, COERCE_DOUBLE(0x100000001000));
      v43 = v141;
      v90 = v89;

      v91 = v86 + v90;
      if (__OFADD__(v86, v90))
      {
        goto LABEL_54;
      }

      v92 = (v91 * 3) >> 64;
      v93 = 3 * v91;
      v94 = v135;
      v95 = v134;
      v58 = v124;
      v59 = v145;
      if (v92 != v93 >> 63)
      {
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
        return result;
      }

      if (__OFADD__(v127, 10))
      {
        goto LABEL_56;
      }

      v96 = v93 / 2;
      v60 = v123;
      if (v127 + 10 < v93 / 2)
      {
        type metadata accessor for __ServiceLocator();
        static __ServiceLocator.shared.getter();
        dispatch thunk of __ServiceLocator.engine.getter();

        v97 = __Engine.queue.getter();

        v98 = swift_allocObject();
        v99 = v144;
        v98[2] = v143;
        v98[3] = v99;
        v100 = v127;
        v98[4] = v96;
        v98[5] = v100;
        v151 = closure #4 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:createImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:)specialized partial apply;
        v152 = v98;
        aBlock = MEMORY[0x277D85DD0];
        v148 = 1107296256;
        v149 = thunk for @escaping @callee_guaranteed () -> ();
        v150 = &block_descriptor_398;
        v101 = _Block_copy(&aBlock);

        v102 = v136;
        static DispatchQoS.unspecified.getter();
        v146 = MEMORY[0x277D84F90];
        lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
        lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
        v103 = v131;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        MEMORY[0x26670F3A0](0, v102, v103, v101);
        _Block_release(v101);

        (*(v94 + 8))(v103, v95);
        (*(v132 + 8))(v102, v133);
        outlined destroy of Any?(v43, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        (*(v142 + 8))(v122, v121);
      }
    }

    outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v43, v60, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v104 = (*(v59 + 80) + 40) & ~*(v59 + 80);
    v105 = (v58 + v104 + 7) & 0xFFFFFFFFFFFFFFF8;
    v106 = (v105 + 15) & 0xFFFFFFFFFFFFFFF8;
    v107 = (v106 + 23) & 0xFFFFFFFFFFFFFFF8;
    v108 = swift_allocObject();
    v109 = v143;
    v108[2] = v38;
    v108[3] = v109;
    v108[4] = v144;
    outlined init with take of URL?(v60, v108 + v104);
    *(v108 + v105) = v38;
    v110 = (v108 + v106);
    *v110 = 0;
    v110[1] = 0;
    *(v108 + v107) = v129;
    v111 = (v108 + ((v107 + 15) & 0xFFFFFFFFFFFFFFF8));
    v112 = v128;
    v113 = v130;
    *v111 = v128;
    v111[1] = v113;
    v114 = (v38 + OBJC_IVAR____TtC9RealityIO13ImportSession_sceneUpdatePassCompletion);
    swift_beginAccess();
    v115 = *v114;
    v116 = v114[1];
    *v114 = partial apply for specialized closure #5 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:createImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:);
    v114[1] = v108;
    swift_retain_n();

    sub_26187DB8C(v112);

    outlined consume of (@escaping @callee_guaranteed () -> ())?(v115);
    ImportSession.sceneUpdatePassCompletion.didset();

    v117 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
    swift_beginAccess();
    v118 = *(v38 + v117);
    RIOImportSessionUpdate();

    outlined destroy of Any?(v141, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    return (*(v142 + 8))(v122, v121);
  }

  type metadata accessor for __ServiceLocator();
  static __ServiceLocator.shared.getter();
  dispatch thunk of __ServiceLocator.engine.getter();

  v44 = __Engine.queue.getter();

  outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v26, v23, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v45 = (*(v145 + 80) + 32) & ~*(v145 + 80);
  v46 = swift_allocObject();
  v47 = v144;
  *(v46 + 16) = v143;
  *(v46 + 24) = v47;
  outlined init with take of URL?(v23, v46 + v45);
  v151 = closure #1 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:createImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:)specialized partial apply;
  v152 = v46;
  aBlock = MEMORY[0x277D85DD0];
  v148 = 1107296256;
  v149 = thunk for @escaping @callee_guaranteed () -> ();
  v150 = &block_descriptor_378;
  v48 = _Block_copy(&aBlock);

  v49 = v136;
  static DispatchQoS.unspecified.getter();
  v146 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  v50 = v131;
  v51 = v134;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x26670F3A0](0, v49, v50, v48);
  _Block_release(v48);

  (*(v135 + 8))(v50, v51);
  (*(v132 + 8))(v49, v133);
  outlined destroy of Any?(v26, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(v142 + 8))(v35, v27);
}

uint64_t specialized USDImportService.loadBodyTrackedAsync(contentsOf:withName:fulfill:postLoad:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v104 = a5;
  v103 = a4;
  v122 = a3;
  v120 = a2;
  v110 = type metadata accessor for DispatchWorkItemFlags();
  v109 = *(v110 - 8);
  v6 = *(v109 + 64);
  MEMORY[0x28223BE20](v110);
  v107 = &v98 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = type metadata accessor for DispatchQoS();
  v106 = *(v108 - 8);
  v8 = *(v106 + 64);
  MEMORY[0x28223BE20](v108);
  v105 = &v98 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = type metadata accessor for Entity.__LoadOptions.LoadableFeatures();
  v123 = *(v114 - 8);
  v10 = *(v123 + 64);
  MEMORY[0x28223BE20](v114);
  v99 = &v98 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v100 = &v98 - v13;
  v113 = type metadata accessor for __EngineRef();
  v112 = *(v113 - 8);
  v14 = *(v112 + 64);
  MEMORY[0x28223BE20](v113);
  v111 = &v98 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMd, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v101 = &v98 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v98 - v20;
  v22 = type metadata accessor for URL();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v98 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v98 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v115 = *(v29 - 8);
  v30 = *(v115 + 64);
  MEMORY[0x28223BE20](v29 - 8);
  v116 = v31;
  v117 = &v98 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v32);
  v35 = &v98 - v34;
  v36 = *(v23 + 16);
  v36(&v98 - v34, a1, v22, v33);
  v37 = *(v23 + 56);
  v124 = v35;
  v37(v35, 0, 1, v22);
  (v36)(v28, a1, v22);
  v38 = *(v123 + 56);
  v125 = v21;
  v39 = v21;
  v40 = v114;
  v38(v39, 1, 1, v114);
  (v36)(v25, a1, v22);
  v41 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v42 = swift_allocObject();
  v118 = v23;
  v119 = v42;
  v43 = *(v23 + 32);
  v121 = v22;
  v43(v42 + v41, v25, v22);
  URL._bridgeToObjectiveC()(v44);
  v46 = v45;
  v47 = RIOPxrUsdStageCreateWithFileURL();

  if (!v47)
  {
    goto LABEL_6;
  }

  TopLevelEntityFromStage = RIOPxrUsdUtilsCreateTopLevelEntityFromStage();
  type metadata accessor for __ServiceLocator();
  v49 = TopLevelEntityFromStage;
  static __ServiceLocator.shared.getter();
  dispatch thunk of __ServiceLocator.engine.getter();

  v50 = v111;
  dispatch thunk of __Engine.__coreEngine.getter();

  __AssetRef.__as<A>(_:)();
  (*(v112 + 8))(v50, v113);
  SingleUseImporterWithStage = RIOImportSessionCreateSingleUseImporterWithStage();
  v52 = type metadata accessor for ImportSession(0);
  v53 = *(v52 + 48);
  v54 = *(v52 + 52);
  swift_allocObject();
  v55 = _s9RealityIO13ImportSessionC4core10entityTypeACSgSo09RIOImportD3RefaSg_xmtc0A3Kit6EntityCRbzlufcAJ011BodyTrackedK0C_Tt0g5(SingleUseImporterWithStage);
  if (!v55)
  {

LABEL_6:
    type metadata accessor for __ServiceLocator();
    static __ServiceLocator.shared.getter();
    dispatch thunk of __ServiceLocator.engine.getter();

    v66 = __Engine.queue.getter();

    v67 = v124;
    v68 = v117;
    outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v124, v117, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v69 = (*(v115 + 80) + 32) & ~*(v115 + 80);
    v70 = swift_allocObject();
    v71 = v122;
    *(v70 + 16) = v120;
    *(v70 + 24) = v71;
    outlined init with take of URL?(v68, v70 + v69);
    aBlock[4] = closure #1 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:createImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:)specialized partial apply;
    aBlock[5] = v70;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_496;
    v72 = _Block_copy(aBlock);

    v73 = v105;
    static DispatchQoS.unspecified.getter();
    v126 = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    v74 = v107;
    v75 = v110;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x26670F3A0](0, v73, v74, v72);
    _Block_release(v72);

    (*(v109 + 8))(v74, v75);
    (*(v106 + 8))(v73, v108);
    outlined destroy of Any?(v125, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMd, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMR);
    (*(v118 + 8))(v28, v121);
    outlined destroy of Any?(v67, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  }

  v56 = v55;
  v57 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
  swift_beginAccess();
  v58 = *&v56[v57];

  RIOImportSessionSetIsLoadModelUseCase();
  v59 = *&v56[v57];
  URL._bridgeToObjectiveC()(v60);
  v62 = v61;
  RIOImportSessionSetOriginalUrl();

  v63 = v101;
  outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v125, v101, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMd, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMR);
  v64 = v123;
  v65 = (*(v123 + 48))(v63, 1, v40);
  v98 = v28;
  v113 = v57;
  if (v65 == 1)
  {

    outlined destroy of Any?(v63, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMd, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMR);
  }

  else
  {
    v77 = v100;
    (*(v64 + 32))(v100, v63, v40);

    v78 = v99;
    static Entity.__LoadOptions.LoadableFeatures.audio.getter();
    lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type Entity.__LoadOptions.LoadableFeatures and conformance Entity.__LoadOptions.LoadableFeatures, MEMORY[0x277CDB140]);
    v79 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v80 = *(v64 + 8);
    v80(v78, v40);
    if (v79)
    {
      v81 = *&v56[v57];
      RIOImportSessionSetLoadAudio();
    }

    v80(v77, v40);
  }

  v82 = v117;
  outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v124, v117, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v83 = (*(v115 + 80) + 40) & ~*(v115 + 80);
  v84 = (v116 + v83 + 7) & 0xFFFFFFFFFFFFFFF8;
  v85 = (v84 + 15) & 0xFFFFFFFFFFFFFFF8;
  v86 = (v85 + 23) & 0xFFFFFFFFFFFFFFF8;
  v87 = swift_allocObject();
  v88 = v120;
  v87[2] = v56;
  v87[3] = v88;
  v87[4] = v122;
  outlined init with take of URL?(v82, v87 + v83);
  *(v87 + v84) = v56;
  v89 = (v87 + v85);
  v90 = v119;
  *v89 = partial apply for closure #2 in USDImportService.loadBodyTrackedAsync(contentsOf:withName:fulfill:postLoad:);
  v89[1] = v90;
  *(v87 + v86) = v102;
  v91 = (v87 + ((v86 + 15) & 0xFFFFFFFFFFFFFFF8));
  v92 = v103;
  v93 = v104;
  *v91 = v103;
  v91[1] = v93;
  v94 = &v56[OBJC_IVAR____TtC9RealityIO13ImportSession_sceneUpdatePassCompletion];
  swift_beginAccess();
  v95 = *v94;
  v96 = v94[1];
  *v94 = partial apply for specialized closure #5 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:createImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:);
  v94[1] = v87;
  swift_retain_n();

  sub_26187DB8C(v92);

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v95);
  ImportSession.sceneUpdatePassCompletion.didset();

  v97 = *&v56[v113];
  RIOImportSessionUpdate();

  outlined destroy of Any?(v125, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMd, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMR);
  (*(v118 + 8))(v98, v121);
  return outlined destroy of Any?(v124, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A];
  if (!lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A]);
  }

  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Result<BodyTrackedEntity, Error>) -> (@out ())(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = a1;
  v7 = a2 & 1;
  return v3(&v6);
}

void type metadata completion function for USDImportService.LoadError()
{
  type metadata accessor for URL?();
  if (v0 <= 0x3F)
  {
    type metadata accessor for [String : Any]();
    if (v1 <= 0x3F)
    {
      type metadata accessor for (numBytes: Int, availableBytes: Int)();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void type metadata accessor for URL?()
{
  if (!lazy cache variable for type metadata for URL?)
  {
    type metadata accessor for URL();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for URL?);
    }
  }
}

void type metadata accessor for (numBytes: Int, availableBytes: Int)()
{
  if (!lazy cache variable for type metadata for (numBytes: Int, availableBytes: Int))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (numBytes: Int, availableBytes: Int));
    }
  }
}

uint64_t outlined init with copy of USDImportService.LoadError(uint64_t a1, uint64_t a2)
{
  Error = type metadata accessor for USDImportService.LoadError();
  (*(*(Error - 8) + 16))(a2, a1, Error);
  return a2;
}

uint64_t outlined init with take of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for specialized closure #5 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:createImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:)()
{
  return partial apply for specialized closure #5 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:createImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:)(specialized closure #5 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:createImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:));
}

{
  return partial apply for specialized closure #5 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:createImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:)(specialized closure #5 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:createImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:));
}

{
  return partial apply for specialized closure #5 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:createImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:)(specialized closure #5 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:createImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:));
}

{
  return partial apply for specialized closure #5 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:createImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:)(specialized closure #5 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:createImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:));
}

uint64_t specialized static USDImportService.loadModel_createImportSession(stage:url:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = type metadata accessor for __EngineRef();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for __ServiceLocator();
  static __ServiceLocator.shared.getter();
  dispatch thunk of __ServiceLocator.engine.getter();

  dispatch thunk of __Engine.__coreEngine.getter();

  __AssetRef.__as<A>(_:)();
  (*(v6 + 8))(v9, v5);
  v10 = *(a1 + 16);
  SingleUseImporterWithStage = RIOImportSessionCreateSingleUseImporterWithStage();
  v12 = type metadata accessor for ImportSession(0);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v15 = a3(SingleUseImporterWithStage);
  if (v15)
  {
    v16 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
    swift_beginAccess();
    v17 = *(v15 + v16);

    RIOImportSessionSetIsLoadModelUseCase();
    v18 = *(v15 + v16);
    URL._bridgeToObjectiveC()(v19);
    v21 = v20;
    RIOImportSessionSetOriginalUrl();
  }

  return v15;
}

char *specialized USDImportService.generatePostLoadData(from:entity:)(uint64_t a1, uint64_t a2)
{
  v4 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v5 = *(a1 + 32);
  ServiceLocator = REEngineGetServiceLocator();
  if (!MEMORY[0x2667102E0](ServiceLocator))
  {
    if (one-time initialization token for rioAudio != -1)
    {
      goto LABEL_32;
    }

    goto LABEL_24;
  }

  v59 = a2;
  v60 = v4;
  v7 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
  swift_beginAccess();
  v8 = *(a1 + v7);
  SceneCount = RIOImportSessionGetSceneCount();
  if (SceneCount < 1)
  {
    v12 = MEMORY[0x277D84F90];
LABEL_28:
    *(&v62[0] + 1) = MEMORY[0x277D837D0];
    strcpy(&v61, "PostLoadData");
    BYTE13(v61) = 0;
    HIWORD(v61) = -5120;
    outlined init with take of Any(&v61, v74);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v73 = v60;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v74, 1701869940, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
    v54 = v73;
    *(&v62[0] + 1) = type metadata accessor for Entity();
    *&v61 = v59;
    outlined init with take of Any(&v61, v74);

    v55 = swift_isUniquelyReferenced_nonNull_native();
    v73 = v54;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v74, 0x797469746E65, 0xE600000000000000, v55);
    v56 = v73;
    *(&v62[0] + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySDySSypGGMd, &_sSaySDySSypGGMR);
    *&v61 = v12;
    outlined init with take of Any(&v61, v74);
    v57 = swift_isUniquelyReferenced_nonNull_native();
    v73 = v56;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v74, 0x646574726F706D69, 0xEE0073656E656353, v57);

    return v73;
  }

  v10 = SceneCount;
  v11 = 0;
  v12 = MEMORY[0x277D84F90];
  while (1)
  {
    v13 = RIOImportSessionCopySceneAssetName();
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17 = HIBYTE(v16) & 0xF;
    if ((v16 & 0x2000000000000000) == 0)
    {
      v17 = v14 & 0xFFFFFFFFFFFFLL;
    }

    if (!v17 || (String.utf8CString.getter(), AssetHandle = REAssetManagerCreateAssetHandle(), , __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO21RESharedObjectWrapperCys13OpaquePointerVGMd, &_s9RealityIO21RESharedObjectWrapperCys13OpaquePointerVGMR), (*(swift_initStackObject() + 16) = AssetHandle) == 0))
    {

      goto LABEL_5;
    }

    v19 = RIOImportSessionCopySceneName();
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    IsSceneActive = RIOImportSessionIsSceneActive();
    v64[0] = 1701869940;
    v64[1] = 0xE400000000000000;
    v64[2] = 0xD000000000000010;
    v64[3] = 0x80000002619975E0;
    v64[5] = MEMORY[0x277D837D0];
    v65[0] = 0x6D614E656E656373;
    v65[1] = 0xE900000000000065;
    v65[2] = v20;
    v65[3] = v22;
    v65[5] = MEMORY[0x277D837D0];
    strcpy(v66, "sceneAssetName");
    v66[15] = -18;
    v67 = v14;
    v68 = v16;
    v69 = MEMORY[0x277D837D0];
    v70[0] = 0x657669746361;
    v70[1] = 0xE600000000000000;
    v72 = MEMORY[0x277D839B0];
    v71 = IsSceneActive;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
    v24 = static _DictionaryStorage.allocate(capacity:)();

    v4 = &v63;
    outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v64, &v61, &_sSS_yptMd, &_sSS_yptMR);
    v25 = v61;
    v26 = specialized __RawDictionaryStorage.find<A>(_:)(v61, *(&v61 + 1));
    if (v27)
    {
      break;
    }

    v28 = v24 + 8;
    *(v24 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v26;
    *(v24[6] + 16 * v26) = v25;
    outlined init with take of Any(v62, (v24[7] + 32 * v26));
    v29 = v24[2];
    v30 = __OFADD__(v29, 1);
    v31 = v29 + 1;
    if (v30)
    {
      goto LABEL_31;
    }

    v24[2] = v31;
    outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v65, &v61, &_sSS_yptMd, &_sSS_yptMR);
    v32 = v61;
    v33 = specialized __RawDictionaryStorage.find<A>(_:)(v61, *(&v61 + 1));
    if (v34)
    {
      break;
    }

    *(v28 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v33;
    *(v24[6] + 16 * v33) = v32;
    outlined init with take of Any(v62, (v24[7] + 32 * v33));
    v35 = v24[2];
    v30 = __OFADD__(v35, 1);
    v36 = v35 + 1;
    if (v30)
    {
      goto LABEL_31;
    }

    v24[2] = v36;
    outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v66, &v61, &_sSS_yptMd, &_sSS_yptMR);
    v37 = v61;
    v38 = specialized __RawDictionaryStorage.find<A>(_:)(v61, *(&v61 + 1));
    if (v39)
    {
      break;
    }

    *(v28 + ((v38 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v38;
    *(v24[6] + 16 * v38) = v37;
    outlined init with take of Any(v62, (v24[7] + 32 * v38));
    v40 = v24[2];
    v30 = __OFADD__(v40, 1);
    v41 = v40 + 1;
    if (v30)
    {
      goto LABEL_31;
    }

    v24[2] = v41;
    outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v70, &v61, &_sSS_yptMd, &_sSS_yptMR);
    v42 = v61;
    v43 = specialized __RawDictionaryStorage.find<A>(_:)(v61, *(&v61 + 1));
    if (v44)
    {
      break;
    }

    *(v28 + ((v43 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v43;
    *(v24[6] + 16 * v43) = v42;
    outlined init with take of Any(v62, (v24[7] + 32 * v43));
    v45 = v24[2];
    v30 = __OFADD__(v45, 1);
    v46 = v45 + 1;
    if (v30)
    {
      goto LABEL_31;
    }

    v24[2] = v46;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
    swift_arrayDestroy();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12[2] + 1, 1, v12);
    }

    v48 = v12[2];
    v47 = v12[3];
    if (v48 >= v47 >> 1)
    {
      v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v47 > 1), v48 + 1, 1, v12);
    }

    v12[2] = v48 + 1;
    v12[v48 + 4] = v24;
LABEL_5:
    if (v10 == ++v11)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  swift_once();
LABEL_24:
  v49 = type metadata accessor for Logger();
  __swift_project_value_buffer(v49, static Logger.rioAudio);
  v50 = static os_log_type_t.error.getter();
  v51 = Logger.logObject.getter();
  if (os_log_type_enabled(v51, v50))
  {
    v52 = swift_slowAlloc();
    *v52 = 0;
    _os_log_impl(&dword_26187B000, v51, v50, "generatePostLoadData could not get an AssetManager.", v52, 2u);
    MEMORY[0x266713AD0](v52, -1, -1);
  }

  return v4;
}

void partial apply for specialized closure #1 in $defer #1 <A>() in closure #5 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:createImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:)()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0 + ((*(v1 + 80) + 48) & ~*(v1 + 80));

  specialized closure #1 in $defer #1 <A>() in closure #5 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:createImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:)(v2, v3, v4, v5, v6);
}

{
  partial apply for specialized closure #1 in $defer #1 <A>() in closure #5 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:createImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:)(MEMORY[0x277CDABB8]);
}

{
  partial apply for specialized closure #1 in $defer #1 <A>() in closure #5 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:createImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:)(MEMORY[0x277CDABD8]);
}

{
  partial apply for specialized closure #1 in $defer #1 <A>() in closure #5 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:createImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:)(MEMORY[0x277CDAD18]);
}

uint64_t partial apply for specialized closure #5 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:createImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:)(uint64_t (*a1)(void, void, void, char *, void, void, void, void, void, void))
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  return a1(*(v1 + 2), *(v1 + 3), *(v1 + 4), &v1[v4], *&v1[v5], *&v1[v6], *&v1[v6 + 8], *&v1[(v6 + 23) & 0xFFFFFFFFFFFFFFF8], *&v1[(((v6 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8], *&v1[((((v6 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8]);
}

uint64_t lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_21Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t objectdestroy_247Tm()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t objectdestroy_152Tm()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 2);

  v6 = *(v0 + 4);

  v7 = *(v0 + 5);

  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(&v0[v3], 1, v8))
  {
    (*(v9 + 8))(&v0[v3], v8);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroy_119Tm()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 24);

  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v3, 1, v6))
  {
    (*(v7 + 8))(v0 + v3, v6);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroy_125Tm()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);

  v8 = *(v0 + 32);

  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v3, 1, v9))
  {
    (*(v10 + 8))(v0 + v3, v9);
  }

  v11 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v0 + v4);

  if (*(v0 + v5))
  {
    v13 = *(v0 + v5 + 8);
  }

  v14 = *(v0 + v6);

  if (*(v0 + v11))
  {
    v15 = *(v0 + v11 + 8);
  }

  return MEMORY[0x2821FE8E8](v0, v11 + 16, v2 | 7);
}

uint64_t specialized UsdGeomXformable.localTransformation(at:)@<X0>(float32x4_t *a1@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *(*(v1 + 16) + 16);
  result = RIOPxrUsdGeomXformableXformQueryGetLocalTransformation();
  if (result)
  {
    v5 = 0;
    v6 = vcvt_hight_f32_f64(vcvt_f32_f64(0), 0);
    v7 = v6;
    v8 = v6;
    v9 = v6;
  }

  else
  {
    v5 = 1;
    v7 = 0uLL;
    v8 = 0uLL;
    v9 = 0uLL;
    v6 = 0uLL;
  }

  *a1 = v6;
  a1[1] = v7;
  a1[2] = v8;
  a1[3] = v9;
  a1[4].i8[0] = v5;
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t closure #1 in static ActionBuilder.generateTransformActionSpecifications(inputs:)(__n128 a1, __n128 a2, __n128 a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v62 = a10;
  v60 = a9;
  v57 = a8;
  v53 = a3;
  v54 = a2;
  v55 = a1;
  v64 = a7;
  v52 = a5;
  v58 = type metadata accessor for __RKEntityMoveEaseType();
  v56 = *(v58 - 8);
  v10 = *(v56 + 64);
  MEMORY[0x28223BE20](v58);
  v61 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for __RKEntityMoveEase();
  v50 = *(v51 - 8);
  v12 = *(v50 + 64);
  MEMORY[0x28223BE20](v51);
  v49 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for __RKEntityMoveSelection();
  v14 = *(v48 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v48);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for UUID();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for __RKEntityActionSpecification();
  v23 = *(v63 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v63);
  v26 = &v47 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v30 = &v47 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v31);
  v33 = *(v19 + 56);
  v65 = &v47 - v34;
  v33(v32);
  v35 = specialized Inputs.pathsForRelationship(named:requestContext:)();
  v59 = v26;
  if (*(v35 + 16))
  {
    v36 = *(v35 + 32);

    Inputs.identifierForEntity(withInputKey:)(0xD000000000000010, 0x8000000261994560, v30);

    v37 = v65;
    outlined destroy of Any?(v65, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    outlined init with take of UUID?(v30, v37);
  }

  else
  {
  }

  (*(v19 + 16))(v22, v52, v18);
  v53.n128_u64[0] = v54.n128_u64[0];
  (*(v14 + 16))(v17, v57, v48);
  (*(v50 + 16))(v49, v60, v51);
  (*(v56 + 16))(v61, v62, v58);
  outlined init with copy of UUID?(v65, v30);
  v66 = 0;
  v38 = v59;
  __RKEntityTransformActionArguments.init(target:location:orientation:scale:duration:moveType:ease:easeType:respectPhysics:physicsLinearCoefficient:physicsAngularCoefficient:relativeToEntity:)();
  v39 = v63;
  (*(v23 + 104))(v38, *MEMORY[0x277CDAFB8], v63);
  v40 = v64;
  v41 = *v64;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v40 = v41;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v41[2] + 1, 1, v41);
    *v40 = v41;
  }

  v44 = v41[2];
  v43 = v41[3];
  if (v44 >= v43 >> 1)
  {
    *v40 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v43 > 1, v44 + 1, 1, v41);
  }

  outlined destroy of Any?(v65, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v45 = *v40;
  *(v45 + 16) = v44 + 1;
  return (*(v23 + 32))(v45 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v44, v38, v39);
}

uint64_t specialized static ActionBuilder.generateTransformActionSpecifications(inputs:)(char *a1)
{
  v75 = type metadata accessor for __RKEntityGroupActionOrder();
  v74 = *(v75 - 8);
  v2 = *(v74 + 64);
  MEMORY[0x28223BE20](v75);
  v73 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit22__RKEntityMoveEaseTypeOSgMd, &_s10RealityKit22__RKEntityMoveEaseTypeOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v76 = &v66 - v6;
  v78 = type metadata accessor for __RKEntityMoveEaseType();
  v77 = *(v78 - 8);
  v7 = *(v77 + 64);
  MEMORY[0x28223BE20](v78);
  v9 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit18__RKEntityMoveEaseOSgMd, &_s10RealityKit18__RKEntityMoveEaseOSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v66 - v12;
  v14 = type metadata accessor for __RKEntityMoveEase();
  v79 = *(v14 - 8);
  v15 = *(v79 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit23__RKEntityMoveSelectionOSgMd, &_s10RealityKit23__RKEntityMoveSelectionOSgMR);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v66 - v20;
  v22 = type metadata accessor for __RKEntityMoveSelection();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v66 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = specialized Inputs.pathsForRelationship(named:requestContext:)();
  v70 = v21;
  v72 = a1;
  v67 = v17;
  v66 = v9;
  v69 = v26;
  v68 = v14;
  v71 = v23;
  if (!*(v27 + 16))
  {

    return MEMORY[0x277D84F90];
  }

  v29 = *(v27 + 32);

  v30 = v72;
  _s9RealityIO6InputsC17valueForAttribute5named4type14requestContextxSS_xmAC020PropertyValueRequestJ0OtKAA03UsdfL0RzlFSd_Tt1g5Tf4ndn_n();
  v32 = v31;

  v33 = v70;
  __RKEntityMoveSelection.init(inputs:)(v70);
  v34 = v71;
  v35 = v22;
  (*(v71 + 56))(v33, 0, 1, v22);
  (*(v34 + 32))(v69, v33, v22);

  v36 = v13;
  __RKEntityMoveEase.init(inputs:)(v13);
  v70 = v29;
  v37 = v79;
  v38 = v68;
  (*(v79 + 56))(v36, 0, 1, v68);
  v39 = v67;
  (*(v37 + 32))(v67, v36, v38);

  v40 = v76;
  __RKEntityMoveEaseType.init(inputs:)(v76);
  v41 = v30;
  v42 = v77;
  v43 = v78;
  (*(v77 + 56))(v40, 0, 1, v78);
  v44 = v66;
  (*(v42 + 32))(v66, v40, v43);
  v45 = *(v41 + 7);
  result = RIOBuilderInputsCopyStage();
  if (!result)
  {
    __break(1u);
    goto LABEL_17;
  }

  v46 = result;
  v47 = v70;
  HasPrimAtPrimPath = RIOPxrUsdStageHasPrimAtPrimPath();

  if (!HasPrimAtPrimPath)
  {

    (*(v42 + 8))(v44, v78);
    (*(v37 + 8))(v39, v38);
    (*(v71 + 8))(v69, v35);
    return MEMORY[0x277D84F90];
  }

  result = RIOBuilderInputsCopyStage();
  if (!result)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v49 = result;
  if (String.count.getter() < 1)
  {
    v50 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v50 = RIOPxrTfTokenCreateWithCString();
  }

  v51 = v50;
  PrimIfNeeded = RIOPxrUsdStageCreatePrimIfNeeded();

  type metadata accessor for Prim();
  inited = swift_initStackObject();
  *(inited + 16) = PrimIfNeeded;
  type metadata accessor for XformPrim(0);
  v54 = swift_initStackObject();
  v54[7] = &type metadata for Schema;
  v54[8] = &protocol witness table for Schema;
  v54[2] = inited;
  v54[3] = inited;

  specialized UsdGeomXformable.localTransformation(at:)(&v81);
  v55 = v67;
  v56 = Transform.init(matrix:)();
  v80 = MEMORY[0x277D84F90];
  *&v57 = MEMORY[0x28223BE20](v56);
  *(&v66 - 12) = v72;
  *(&v66 - 11) = &v80;
  *(&v66 - 5) = v57;
  *(&v66 - 4) = v58;
  *(&v66 - 3) = v59;
  *(&v66 - 4) = v32;
  *(&v66 - 3) = v69;
  *(&v66 - 2) = v55;
  *(&v66 - 1) = v44;
  specialized Inputs.forEachAffectedObject(requestContext:callback:)(partial apply for closure #1 in static ActionBuilder.generateTransformActionSpecifications(inputs:), (&v66 - 14));
  v60 = v80;
  if (*(v80 + 16) >= 2uLL)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMd, &_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMR);
    v76 = type metadata accessor for __RKEntityActionSpecification();
    v61 = *(v76 - 8);
    v62 = *(v61 + 72);
    v63 = (*(v61 + 80) + 32) & ~*(v61 + 80);
    v60 = swift_allocObject();
    *(v60 + 16) = xmmword_2619891C0;
    (*(v74 + 104))(v73, *MEMORY[0x277CDAEF8], v75);

    __RKEntityActionGroupArguments.init(order:actions:exclusive:loopCount:)();
    v44 = v66;
    v42 = v77;
    (*(v61 + 104))(v60 + v63, *MEMORY[0x277CDAFA0], v76);
    v55 = v67;
  }

  v64 = v71;
  v65 = v78;

  (*(v42 + 8))(v44, v65);
  (*(v37 + 8))(v55, v38);
  (*(v64 + 8))(v69, v35);
  return v60;
}

uint64_t outlined init with copy of UUID?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of UUID?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t SceneDescriptionFoundations.PrimSpec.description.getter()
{
  v1 = *v0;
  _StringGuts.grow(_:)(22);

  v2 = RIOPxrSdfPrimSpecCopyLayer();
  v3 = RIOPxrSdfLayerCopyIdentifier();
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  MEMORY[0x26670F080](v4, v6);

  return 0xD000000000000014;
}

uint64_t SceneDescriptionFoundations.PrimSpec.debugDescription.getter()
{
  v1 = *v0;
  _StringGuts.grow(_:)(22);

  v2 = RIOPxrSdfPrimSpecCopyLayer();
  v3 = RIOPxrSdfLayerCopyIdentifier();
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  MEMORY[0x26670F080](v4, v6);

  MEMORY[0x26670F080](0xD000000000000014, 0x8000000261997610);

  MEMORY[0x26670F080](62, 0xE100000000000000);
  return 0x6570536D6972503CLL;
}

uint64_t SceneDescriptionFoundations.PrimSpec.layer()()
{
  v1 = *v0;
  v2 = RIOPxrSdfPrimSpecCopyLayer();
  type metadata accessor for SceneDescriptionFoundations.Layer();
  result = swift_allocObject();
  *(result + 16) = v2;
  return result;
}

uint64_t SceneDescriptionFoundations.PrimSpec.path()@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = RIOPxrSdfPrimSpecCopyPath();
  *a1 = result;
  return result;
}

uint64_t SceneDescriptionFoundations.PrimSpec.attribute(at:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;
  result = RIOPxrSdfPrimSpecCopyAttribute();
  *a2 = result;
  return result;
}

uint64_t static SdrRegistry.nodeNames.getter()
{
  v0 = RIOPxrSdrRegistryCopyNodeNames();
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  return MEMORY[0x277D84F90];
}

uint64_t static SdrRegistry.shaderNodeByName(name:)()
{
  String.utf8CString.getter();
  v0 = RIOPxrSdrRegistryGetShaderNodeByName();

  if (!v0)
  {
    return 0;
  }

  type metadata accessor for SdrShaderNode();
  result = swift_allocObject();
  *(result + 16) = v0;
  return result;
}

uint64_t SdrShaderNode.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t SdrShaderNode.inputNames.getter(uint64_t (*a1)(void))
{
  v2 = a1(*(v1 + 16));
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  return MEMORY[0x277D84F90];
}

uint64_t SdrShaderProperty.__allocating_init(base:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t SdrShaderNode.shaderInput<A>(withName:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  v6 = *a1;
  type metadata accessor for SdrShaderProperty();
  v7 = a4(*(v4 + 16), v6);
  result = swift_allocObject();
  *(result + 16) = v7;
  return result;
}

uint64_t SdrShaderNode.family.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = RIOPxrSdrShaderNodeCopyFamily();
  *a1 = result;
  return result;
}

uint64_t SdrShaderProperty.name.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = RIOPxrSdrShaderPropertyCopyName();
  *a1 = result;
  return result;
}

uint64_t SdrShaderProperty.type.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = RIOPxrSdrShaderPropertyCopyType();
  *a1 = result;
  return result;
}

void SdrShaderProperty.defaultValue.getter(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[2];
  v6 = RIOPxrSdrShaderPropertyCopyDefaultValue();
  v5 = *(v3 + 88);
  RIOPxrVtValueRef.mapUSDValue<A>()(*(v3 + 80), a1);
}

uint64_t SdrShaderNode.name.getter(uint64_t (*a1)(void))
{
  v2 = a1(*(v1 + 16));
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t __RKEntityGroupActionOrder.init(inputs:)@<X0>(uint64_t a1@<X8>)
{
  _s9RealityIO6InputsC17valueForAttribute5named4type14requestContextxSS_xmAC020PropertyValueRequestJ0OtKAA03UsdfL0RzlFAA16ToolsFoundationsO5TokenV_Tt1g5(&v14);
  if (v1)
  {

LABEL_3:
    lazy protocol witness table accessor for type __RKEntityGroupActionOrder.EmphasisAnimationTypeLoadingError and conformance __RKEntityGroupActionOrder.EmphasisAnimationTypeLoadingError();
    swift_allocError();
    swift_willThrow();
  }

  v4 = v14;
  v5 = RIOPxrTfTokenCopyString();
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9._countAndFlagsBits = v6;
  v9._object = v8;
  v10 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of __RKEntityGroupActionOrderUSD.init(rawValue:), v9);

  if (v10)
  {
    if (v10 != 1)
    {
      goto LABEL_3;
    }

    v11 = MEMORY[0x277CDAEF8];
  }

  else
  {

    v11 = MEMORY[0x277CDAF00];
  }

  v12 = *v11;
  v13 = type metadata accessor for __RKEntityGroupActionOrder();
  return (*(*(v13 - 8) + 104))(a1, v12, v13);
}

unint64_t lazy protocol witness table accessor for type __RKEntityGroupActionOrder.EmphasisAnimationTypeLoadingError and conformance __RKEntityGroupActionOrder.EmphasisAnimationTypeLoadingError()
{
  result = lazy protocol witness table cache variable for type __RKEntityGroupActionOrder.EmphasisAnimationTypeLoadingError and conformance __RKEntityGroupActionOrder.EmphasisAnimationTypeLoadingError;
  if (!lazy protocol witness table cache variable for type __RKEntityGroupActionOrder.EmphasisAnimationTypeLoadingError and conformance __RKEntityGroupActionOrder.EmphasisAnimationTypeLoadingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityGroupActionOrder.EmphasisAnimationTypeLoadingError and conformance __RKEntityGroupActionOrder.EmphasisAnimationTypeLoadingError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityGroupActionOrder.EmphasisAnimationTypeLoadingError and conformance __RKEntityGroupActionOrder.EmphasisAnimationTypeLoadingError;
  if (!lazy protocol witness table cache variable for type __RKEntityGroupActionOrder.EmphasisAnimationTypeLoadingError and conformance __RKEntityGroupActionOrder.EmphasisAnimationTypeLoadingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityGroupActionOrder.EmphasisAnimationTypeLoadingError and conformance __RKEntityGroupActionOrder.EmphasisAnimationTypeLoadingError);
  }

  return result;
}

void specialized Sequence.forEach(_:)(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for RIOPxrSdfPathRef(0);
    lazy protocol witness table accessor for type RIOImportSessionRef and conformance RIOImportSessionRef(&lazy protocol witness table cache variable for type RIOPxrSdfPathRef and conformance RIOPxrSdfPathRef, type metadata accessor for RIOPxrSdfPathRef);
    Set.Iterator.init(_cocoa:)();
    v1 = v16;
    v2 = v17;
    v4 = v18;
    v3 = v19;
    v5 = v20;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v4 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v3 = 0;
  }

  if (v1 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v9 = v3;
    v10 = v5;
    v11 = v3;
    if (!v5)
    {
      break;
    }

LABEL_12:
    v12 = (v10 - 1) & v10;
    v13 = *(*(v1 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v13)
    {
LABEL_18:
      outlined consume of Set<PropertyDirtyState>.Iterator._Variant();
      return;
    }

    while (1)
    {
      v14 = v13;
      specialized Set._Variant.insert(_:)(&v21, v14);
      v15 = v21;

      v3 = v11;
      v5 = v12;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (__CocoaSet.Iterator.next()())
      {
        type metadata accessor for RIOPxrSdfPathRef(0);
        swift_dynamicCast();
        v13 = v21;
        v11 = v3;
        v12 = v5;
        if (v21)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= ((v4 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v10 = *(v2 + 8 * v11);
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t InputDescriptor.convertToCore()()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  v7 = *(v0 + 48) >> 4;
  if (v7 <= 3)
  {
    if (*(v0 + 48) >> 4 <= 1u)
    {
      if (v7)
      {
        v8 = MEMORY[0x26670EFB0](v1, v2);
        if (String.count.getter() <= 0)
        {
          v9 = RIOPxrTfTokenEmpty();
        }

        else
        {
          String.utf8CString.getter();
          v9 = RIOPxrTfTokenCreateWithCString();
        }

        v19 = RIOBuilderParentPrimInputDescriptorCreate();
      }

      else
      {
        v8 = MEMORY[0x26670EFB0](v1, v2);
        if (String.count.getter() <= 0)
        {
          v9 = RIOPxrTfTokenEmpty();
        }

        else
        {
          String.utf8CString.getter();
          v9 = RIOPxrTfTokenCreateWithCString();
        }

        v19 = RIOBuilderCurrentPrimInputDescriptorCreate();
      }

      goto LABEL_39;
    }

    if (v7 == 2)
    {
      v8 = MEMORY[0x26670EFB0](v1, v2);
      if (String.count.getter() <= 0)
      {
        v10 = RIOPxrTfTokenEmpty();
      }

      else
      {
        String.utf8CString.getter();
        v10 = RIOPxrTfTokenCreateWithCString();
      }

      v17 = v6;
      v18 = RIOBuilderChildPrimInputDescriptorCreate();
    }

    else
    {
      v8 = MEMORY[0x26670EFB0](v1, v2);
      if (String.count.getter() <= 0)
      {
        v10 = RIOPxrTfTokenEmpty();
      }

      else
      {
        String.utf8CString.getter();
        v10 = RIOPxrTfTokenCreateWithCString();
      }

      v17 = v6;
      v18 = RIOBuilderDescendantPrimInputDescriptorCreate();
    }

LABEL_49:
    v20 = v18;

    goto LABEL_50;
  }

  if (*(v0 + 48) >> 4 <= 5u)
  {
    if (v7 == 4)
    {
      v8 = MEMORY[0x26670EFB0](v1, v2);
      if (String.count.getter() <= 0)
      {
        v11 = RIOPxrTfTokenEmpty();
      }

      else
      {
        String.utf8CString.getter();
        v11 = RIOPxrTfTokenCreateWithCString();
      }

      v22 = v6[2];
      if (v22)
      {
        v29[0] = MEMORY[0x277D84F90];
        specialized ContiguousArray.reserveCapacity(_:)();
        v23 = v6 + 4;
        do
        {
          v24 = *v23++;
          v25 = v24;
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v26 = *(v29[0] + 16);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          --v22;
        }

        while (v22);
      }

      type metadata accessor for RIOPxrTfTokenRef(0);
      isa = Array._bridgeToObjectiveC()().super.isa;

      v20 = RIOBuilderDescendantPrimsInputDescriptorCreate();

      goto LABEL_50;
    }

    v8 = MEMORY[0x26670EFB0](v1, v2);
    if (String.count.getter() <= 0)
    {
      v10 = RIOPxrTfTokenEmpty();
    }

    else
    {
      String.utf8CString.getter();
      v10 = RIOPxrTfTokenCreateWithCString();
    }

    v17 = v6;
    v18 = RIOBuilderRelatedPrimInputDescriptorCreate();
    goto LABEL_49;
  }

  if (v7 == 6)
  {
    v8 = MEMORY[0x26670EFB0](v1, v2);
    if (String.count.getter() <= 0)
    {
      v10 = RIOPxrTfTokenEmpty();
    }

    else
    {
      String.utf8CString.getter();
      v10 = RIOPxrTfTokenCreateWithCString();
    }

    v17 = v6;
    v18 = RIOBuilderStaticPrimInputDescriptorCreate();
    goto LABEL_49;
  }

  if (v7 == 7)
  {
    v8 = MEMORY[0x26670EFB0](v1, v2);
    if (String.count.getter() <= 0)
    {
      v9 = RIOPxrTfTokenEmpty();
    }

    else
    {
      String.utf8CString.getter();
      v9 = RIOPxrTfTokenCreateWithCString();
    }

    v19 = RIOBuilderEntityGeneratingPrimDescriptorCreate();
LABEL_39:
    v20 = v19;

LABEL_50:
    return v20;
  }

  v12 = *v0;
  v13 = v2;
  v14 = swift_allocObject();
  *(v14 + 16) = v6;
  *(v14 + 24) = v5;

  v15 = MEMORY[0x26670EFB0](v12, v13);
  if (String.count.getter() <= 0)
  {
    v16 = RIOPxrTfTokenEmpty();
  }

  else
  {
    String.utf8CString.getter();
    v16 = RIOPxrTfTokenCreateWithCString();
  }

  v29[4] = partial apply for closure #1 in InputDescriptor.convertToCore();
  v29[5] = v14;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 1107296256;
  v29[2] = thunk for @escaping @callee_guaranteed (@guaranteed RIOPxrUsdStageRef, @guaranteed RIOPxrSdfPathRef) -> (@unowned Unmanaged<CFSetRef>);
  v29[3] = &block_descriptor_18;
  v21 = _Block_copy(v29);

  v20 = RIOBuilderCustomCallbackInputDescriptorCreate();

  _Block_release(v21);

  return v20;
}

void _sSasSQRzlE2eeoiySbSayxG_ABtFZ9RealityIO16ToolsFoundationsO5TokenV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    lazy protocol witness table accessor for type ToolsFoundations.Token and conformance ToolsFoundations.Token();
    do
    {
      v9 = *v3;
      v5 = *v4++;
      v6 = *v3;
      v7 = v5;
      v8 = dispatch thunk of static Equatable.== infix(_:_:)();

      if ((v8 & 1) == 0)
      {
        break;
      }

      ++v3;
      --v2;
    }

    while (v2);
  }
}

uint64_t InputDescriptor.hash(into:)()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = *(v0 + 48);
  v8 = v7 >> 4;
  if (v7 >> 4 <= 3)
  {
    if (v7 >> 4 <= 1)
    {
      if (v8)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableVGMd, &_ss23_ContiguousArrayStorageCys11AnyHashableVGMR);
        v9 = swift_allocObject();
        *(v9 + 16) = xmmword_26198AB70;
        v10 = 0x7250746E65726170;
        v11 = 0xEA00000000006D69;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableVGMd, &_ss23_ContiguousArrayStorageCys11AnyHashableVGMR);
        v9 = swift_allocObject();
        *(v9 + 16) = xmmword_26198AB70;
        v10 = 0x50746E6572727563;
        v11 = 0xEB000000006D6972;
      }

      v18 = v10;
      v19 = v11;
      goto LABEL_15;
    }

    goto LABEL_18;
  }

  if (v7 >> 4 <= 5)
  {
    if (v8 == 4)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableVGMd, &_ss23_ContiguousArrayStorageCys11AnyHashableVGMR);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_261990420;

      AnyHashable.init<A>(_:)();
      AnyHashable.init<A>(_:)();
      v19 = v3;
      AnyHashable.init<A>(_:)();
      v18 = v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9RealityIO16ToolsFoundationsO5TokenVGMd, &_sSay9RealityIO16ToolsFoundationsO5TokenVGMR);
      lazy protocol witness table accessor for type [ToolsFoundations.Token] and conformance <A> [A]();
      goto LABEL_19;
    }

LABEL_18:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableVGMd, &_ss23_ContiguousArrayStorageCys11AnyHashableVGMR);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_261990420;

    AnyHashable.init<A>(_:)();
    AnyHashable.init<A>(_:)();
    v19 = v3;
    AnyHashable.init<A>(_:)();
    v18 = v5;
    lazy protocol witness table accessor for type ToolsFoundations.Token and conformance ToolsFoundations.Token();
    v14 = v5;
    goto LABEL_19;
  }

  if (v8 != 6)
  {
    if (v8 != 7)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableVGMd, &_ss23_ContiguousArrayStorageCys11AnyHashableVGMR);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_26198AB70;

      AnyHashable.init<A>(_:)();
      AnyHashable.init<A>(_:)();
      v18 = v4;
      v19 = v3;
      AnyHashable.init<A>(_:)();
      v13 = v7 & 1;
      goto LABEL_17;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableVGMd, &_ss23_ContiguousArrayStorageCys11AnyHashableVGMR);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_26198AB70;
    v18 = 0xD000000000000014;
    v19 = 0x80000002619976A0;
LABEL_15:

    AnyHashable.init<A>(_:)();
    AnyHashable.init<A>(_:)();
    v18 = v4;
    v19 = v3;
    AnyHashable.init<A>(_:)();
    v13 = v5 & 1;
LABEL_17:
    LOBYTE(v18) = v13;
    goto LABEL_20;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableVGMd, &_ss23_ContiguousArrayStorageCys11AnyHashableVGMR);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_261990420;

  AnyHashable.init<A>(_:)();
  AnyHashable.init<A>(_:)();
  v19 = v3;
  AnyHashable.init<A>(_:)();
  v18 = v5;
  lazy protocol witness table accessor for type SceneDescriptionFoundations.Path and conformance SceneDescriptionFoundations.Path();
  v12 = v5;
LABEL_19:
  AnyHashable.init<A>(_:)();
  LOBYTE(v18) = v6 & 1;
LABEL_20:
  AnyHashable.init<A>(_:)();
  v15 = *(v9 + 16);
  if (v15)
  {
    v16 = v9 + 32;
    do
    {
      outlined init with copy of AnyHashable(v16, &v18);
      AnyHashable.hash(into:)();
      outlined destroy of AnyHashable(&v18);
      v16 += 40;
      --v15;
    }

    while (v15);
  }
}

Swift::Int InputDescriptor.hashValue.getter()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = *(v0 + 48);
  Hasher.init(_seed:)();
  InputDescriptor.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance InputDescriptor()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = *(v0 + 48);
  Hasher.init(_seed:)();
  InputDescriptor.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance InputDescriptor()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = *(v0 + 48);
  Hasher.init(_seed:)();
  InputDescriptor.hash(into:)();
  return Hasher._finalize()();
}

void ImportSession.hash(into:)()
{
  v1 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
  swift_beginAccess();
  v2 = *(v0 + v1);
  type metadata accessor for RIOImportSessionRef(0);
  lazy protocol witness table accessor for type RIOImportSessionRef and conformance RIOImportSessionRef(&lazy protocol witness table cache variable for type RIOImportSessionRef and conformance RIOImportSessionRef, type metadata accessor for RIOImportSessionRef);
  v3 = v2;
  _CFObject.hash(into:)();
}

Swift::Int ImportSession.hashValue.getter()
{
  Hasher.init(_seed:)();
  v1 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
  swift_beginAccess();
  v2 = *(v0 + v1);
  type metadata accessor for RIOImportSessionRef(0);
  lazy protocol witness table accessor for type RIOImportSessionRef and conformance RIOImportSessionRef(&lazy protocol witness table cache variable for type RIOImportSessionRef and conformance RIOImportSessionRef, type metadata accessor for RIOImportSessionRef);
  v3 = v2;
  _CFObject.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ImportSession()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
  swift_beginAccess();
  v3 = *(v1 + v2);
  type metadata accessor for RIOImportSessionRef(0);
  lazy protocol witness table accessor for type RIOImportSessionRef and conformance RIOImportSessionRef(&lazy protocol witness table cache variable for type RIOImportSessionRef and conformance RIOImportSessionRef, type metadata accessor for RIOImportSessionRef);
  v4 = v3;
  _CFObject.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance ImportSession()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
  swift_beginAccess();
  v3 = *(v1 + v2);
  type metadata accessor for RIOImportSessionRef(0);
  lazy protocol witness table accessor for type RIOImportSessionRef and conformance RIOImportSessionRef(&lazy protocol witness table cache variable for type RIOImportSessionRef and conformance RIOImportSessionRef, type metadata accessor for RIOImportSessionRef);
  v4 = v3;
  _CFObject.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ImportSession()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  v2 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
  swift_beginAccess();
  v3 = *(v1 + v2);
  type metadata accessor for RIOImportSessionRef(0);
  lazy protocol witness table accessor for type RIOImportSessionRef and conformance RIOImportSessionRef(&lazy protocol witness table cache variable for type RIOImportSessionRef and conformance RIOImportSessionRef, type metadata accessor for RIOImportSessionRef);
  v4 = v3;
  _CFObject.hash(into:)();

  return Hasher._finalize()();
}

Class closure #1 in InputDescriptor.convertToCore()(void *a1, void *a2, uint64_t (*a3)(uint64_t, id *))
{
  type metadata accessor for Stage();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  v13 = a2;
  v7 = a1;
  v8 = a2;
  v9 = a3(v6, &v13);

  IsAnyOf020primMetadataContainsjK0017propertiesContainjK04coreACShyAA16fg2O5h88VG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13DescriptorRefaSgtcfc12generateCoreL_AQyFSo08I60TftX0aAKcfu_33_1208ebe0c1611b0e36169838b3b02464AkUTf3nnnpk_nTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So08RIOPxrTfH3Refas5NeverOTg503_s9d105IO22TypeNamePrimDirtyStateC04typeD7IsAnyOf020primMetadataContainsjK0017propertiesContainjK04coreACShyAA16fg2O5h88VG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13DescriptorRefaSgtcfc12generateCoreL_AQyFSo08I60TftX0aAKcfu_33_1208ebe0c1611b0e36169838b3b02464AkUTf3nnnpk_nTf1cn_n(v9);

  _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo16RIOPxrSdfPathRefa_SayAEGTt0g5Tf4g_n(IsAnyOf020primMetadataContainsjK0017propertiesContainjK04coreACShyAA16fg2O5h88VG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13DescriptorRefaSgtcfc12generateCoreL_AQyFSo08I60TftX0aAKcfu_33_1208ebe0c1611b0e36169838b3b02464AkUTf3nnnpk_nTf1cn_n);

  type metadata accessor for RIOPxrSdfPathRef(0);
  lazy protocol witness table accessor for type RIOImportSessionRef and conformance RIOImportSessionRef(&lazy protocol witness table cache variable for type RIOPxrSdfPathRef and conformance RIOPxrSdfPathRef, type metadata accessor for RIOPxrSdfPathRef);
  isa = Set._bridgeToObjectiveC()().super.isa;

  return isa;
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed RIOPxrUsdStageRef, @guaranteed RIOPxrSdfPathRef) -> (@unowned Unmanaged<CFSetRef>)(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a2;
  v8 = a3;
  v9 = v6(v7, v8);

  return v9;
}

uint64_t static InputDescriptor.create(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = RIOBuilderInputDescriptorCopyType();
  v5 = v4;
  v6 = 0;
  countAndFlagsBits = 0;
  object = 0xE000000000000000;
  v9 = 1;
  if (v4 <= 3)
  {
    if (v4 == 1)
    {
      v31 = RIOBuilderCurrentPrimInputDescriptorCopyInputName();
      v32 = String.init(_:)(v31);
      countAndFlagsBits = v32._countAndFlagsBits;
      object = v32._object;
      v33 = MEMORY[0x2667105C0](a1);
      v34 = RIOPxrTfTokenCopyString();
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v35;

      v36 = RIOBuilderCurrentPrimInputDescriptorCopyOptionality();
      result = 0;
      v6 = 0;
      v9 = v36 == 0;
    }

    else if (v4 == 2)
    {
      v48 = RIOBuilderParentPrimInputDescriptorCopyInputName();
      v49 = String.init(_:)(v48);
      countAndFlagsBits = v49._countAndFlagsBits;
      object = v49._object;
      v50 = MEMORY[0x2667108E0](a1);
      v51 = RIOPxrTfTokenCopyString();
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v52;

      v53 = RIOBuilderParentPrimInputDescriptorCopyOptionality();
      result = 0;
      v9 = v53 == 0;
      v6 = 16;
    }

    else
    {
      v10 = 0;
      v11 = 0xE000000000000000;
      result = 0;
      if (v5 == 3)
      {
        v18 = RIOBuilderChildPrimInputDescriptorCopyInputName();
        v19 = String.init(_:)(v18);
        countAndFlagsBits = v19._countAndFlagsBits;
        object = v19._object;
        v20 = MEMORY[0x266710500](a1);
        v21 = RIOPxrTfTokenCopyString();
        v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v11 = v22;

        v9 = RIOBuilderChildPrimInputDescriptorCopyChildPrimType();
        result = RIOBuilderChildPrimInputDescriptorCopyOptionality() == 0;
        v6 = 32;
      }
    }
  }

  else if (v4 > 5)
  {
    if (v4 == 6)
    {
      v42 = RIOBuilderEntityGeneratingPrimInputDescriptorCopyInputName();
      v43 = String.init(_:)(v42);
      countAndFlagsBits = v43._countAndFlagsBits;
      object = v43._object;
      v44 = MEMORY[0x266710750](a1);
      v45 = RIOPxrTfTokenCopyString();
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v46;

      v47 = RIOBuilderEntityGeneratingPrimInputDescriptorCopyOptionality();
      result = 0;
      v9 = v47 == 0;
      v6 = 112;
    }

    else
    {
      v10 = 0;
      v11 = 0xE000000000000000;
      result = 0;
      if (v5 == 7)
      {
        v23 = RIOBuilderCustomCallbackInputDescriptorCopyInputName();
        v24 = String.init(_:)(v23);
        countAndFlagsBits = v24._countAndFlagsBits;
        object = v24._object;
        v25 = MEMORY[0x266710750](a1);
        v26 = RIOPxrTfTokenCopyString();
        v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v11 = v27;

        v28 = RIOBuilderEntityGeneratingPrimInputDescriptorCopyOptionality();
        v29 = RIOBuilderCustomCallbackInputDescriptorCopyCallbackFunction();
        v30 = swift_allocObject();
        *(v30 + 16) = v29;
        result = swift_allocObject();
        *(result + 16) = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned RIOPxrUsdStageRef, @unowned RIOPxrSdfPathRef) -> (@unowned Unmanaged<CFSetRef>);
        *(result + 24) = v30;
        if (v28)
        {
          v6 = 0x80;
        }

        else
        {
          v6 = -127;
        }

        v9 = partial apply for closure #1 in static InputDescriptor.create(from:);
      }
    }
  }

  else if (v4 == 4)
  {
    v37 = RIOBuilderRelatedPrimInputDescriptorCopyInputName();
    v38 = String.init(_:)(v37);
    countAndFlagsBits = v38._countAndFlagsBits;
    object = v38._object;
    v39 = MEMORY[0x266710960](a1);
    v40 = RIOPxrTfTokenCopyString();
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v41;

    v9 = RIOBuilderRelatedPrimInputDescriptorCopyPropertyNameOnCurrentPrimWithRelationship();
    result = RIOBuilderRelatedPrimInputDescriptorCopyOptionality() == 0;
    v6 = 80;
  }

  else
  {
    v10 = 0;
    v11 = 0xE000000000000000;
    result = 0;
    if (v5 == 5)
    {
      v13 = RIOBuilderStaticPrimInputDescriptorCopyInputName();
      v14 = String.init(_:)(v13);
      countAndFlagsBits = v14._countAndFlagsBits;
      object = v14._object;
      v15 = MEMORY[0x2667109E0](a1);
      v16 = RIOPxrTfTokenCopyString();
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v17;

      v9 = RIOBuilderStaticPrimInputDescriptorCopyPrimPath();
      result = RIOBuilderStaticPrimInputDescriptorCopyOptionality() == 0;
      v6 = 96;
    }
  }

  *a2 = countAndFlagsBits;
  *(a2 + 8) = object;
  *(a2 + 16) = v10;
  *(a2 + 24) = v11;
  *(a2 + 32) = v9;
  *(a2 + 40) = result;
  *(a2 + 48) = v6;
  return result;
}

uint64_t closure #1 in static InputDescriptor.create(from:)(uint64_t a1, void *a2, uint64_t (*a3)(void, void))
{
  v3 = a3(*(a1 + 16), *a2);
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    type metadata accessor for RIOPxrSdfPathRef(0);
    lazy protocol witness table accessor for type RIOImportSessionRef and conformance RIOImportSessionRef(&lazy protocol witness table cache variable for type RIOPxrSdfPathRef and conformance RIOPxrSdfPathRef, type metadata accessor for RIOPxrSdfPathRef);
    static Set._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  return MEMORY[0x277D84FA0];
}

uint64_t specialized static InputDescriptor.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v10 = *a2;
  v9 = *(a2 + 8);
  v12 = *(a2 + 16);
  v11 = *(a2 + 24);
  v13 = *(a2 + 32);
  v14 = *(a2 + 40);
  v15 = *(a2 + 48);
  v64[0] = *a1;
  v64[1] = v2;
  v64[2] = v5;
  v64[3] = v4;
  v62 = v6;
  v63 = v7;
  v64[4] = v6;
  v64[5] = v7;
  v65 = v8;
  v66 = v10;
  v67 = v9;
  v68 = v12;
  v69 = v11;
  v70 = v13;
  v71 = v14;
  v16 = v8 >> 4;
  v72 = v15;
  if (v8 >> 4 <= 3)
  {
    if (v8 >> 4 <= 1)
    {
      if (v16)
      {
        if ((v15 & 0xF0) != 0x10)
        {
          goto LABEL_57;
        }
      }

      else if (v15 >= 0x10)
      {
        goto LABEL_57;
      }

      goto LABEL_32;
    }

    if (v16 == 2)
    {
      if ((v15 & 0xF0) != 0x20)
      {
        goto LABEL_57;
      }
    }

    else if ((v15 & 0xF0) != 0x30)
    {
      goto LABEL_57;
    }

LABEL_48:
    v50 = v13;
    v57 = v14;
    if (v3 == v10 && v2 == v9 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (v5 == v12 && v4 == v11 || (_stringCompareWithSmolCheck(_:_:expecting:)()))
    {
      type metadata accessor for RIOPxrTfTokenRef(0);
      v36 = v9;
      v27 = v50;
      outlined copy of InputDescriptor(v10, v36, v12, v11, v50, v57, v15);
      v28 = v62;
      v29 = v63;
      outlined copy of InputDescriptor(v3, v2, v5, v4, v62, v63, v8);
      v30 = &lazy protocol witness table cache variable for type RIOPxrTfTokenRef and conformance RIOPxrTfTokenRef;
      v31 = type metadata accessor for RIOPxrTfTokenRef;
      goto LABEL_55;
    }

LABEL_61:
    v40 = v10;
    v41 = v9;
    v42 = v12;
    v43 = v11;
    v13 = v50;
    v14 = v57;
    goto LABEL_58;
  }

  if (v8 >> 4 > 5)
  {
    if (v16 != 6)
    {
      if (v16 != 7)
      {
        if ((v15 & 0xF0) == 0x80)
        {
          if (v3 == v10 && v2 == v9 || (v52 = v13, v59 = v14, v35 = _stringCompareWithSmolCheck(_:_:expecting:)(), v13 = v52, v14 = v59, (v35 & 1) != 0))
          {
            if (v5 == v12 && v4 == v11)
            {
              outlined copy of InputDescriptor(v10, v9, v5, v4, v13, v14, v15);
              outlined copy of InputDescriptor(v3, v2, v5, v4, v62, v63, v8);
              outlined destroy of (InputDescriptor, InputDescriptor)(v64);
            }

            else
            {
              v54 = v13;
              v61 = v14;
              v47 = _stringCompareWithSmolCheck(_:_:expecting:)();
              outlined copy of InputDescriptor(v10, v9, v12, v11, v54, v61, v15);
              outlined copy of InputDescriptor(v3, v2, v5, v4, v62, v63, v8);
              outlined destroy of (InputDescriptor, InputDescriptor)(v64);
              if ((v47 & 1) == 0)
              {
                goto LABEL_59;
              }
            }

            v39 = v15 ^ v8 ^ 1;
            return v39 & 1;
          }
        }

        goto LABEL_57;
      }

      if ((v15 & 0xF0) != 0x70)
      {
LABEL_57:
        v40 = v10;
        v41 = v9;
        v42 = v12;
        v43 = v11;
LABEL_58:
        outlined copy of InputDescriptor(v40, v41, v42, v43, v13, v14, v15);
        outlined copy of InputDescriptor(v3, v2, v5, v4, v62, v63, v8);
        outlined destroy of (InputDescriptor, InputDescriptor)(v64);
LABEL_59:
        v39 = 0;
        return v39 & 1;
      }

LABEL_32:
      if (v3 == v10 && v2 == v9 || (v51 = v13, v58 = v14, v32 = _stringCompareWithSmolCheck(_:_:expecting:)(), v13 = v51, v14 = v58, (v32 & 1) != 0))
      {
        if (v5 == v12 && v4 == v11)
        {
          v33 = v13;
          outlined copy of InputDescriptor(v10, v9, v5, v4, v13, v14, v15);
          v34 = v62;
          outlined copy of InputDescriptor(v3, v2, v5, v4, v62, v63, v8);
          outlined destroy of (InputDescriptor, InputDescriptor)(v64);
        }

        else
        {
          v53 = v13;
          v60 = v14;
          v46 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v45 = v12;
          v33 = v53;
          outlined copy of InputDescriptor(v10, v9, v45, v11, v53, v60, v15);
          v34 = v62;
          outlined copy of InputDescriptor(v3, v2, v5, v4, v62, v63, v8);
          outlined destroy of (InputDescriptor, InputDescriptor)(v64);
          if ((v46 & 1) == 0)
          {
            goto LABEL_59;
          }
        }

        v39 = v33 ^ v34 ^ 1;
        return v39 & 1;
      }

      goto LABEL_57;
    }

    if ((v15 & 0xF0) != 0x60)
    {
      goto LABEL_57;
    }

    v50 = v13;
    v57 = v14;
    if (v3 == v10 && v2 == v9 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (v5 == v12 && v4 == v11 || (_stringCompareWithSmolCheck(_:_:expecting:)()))
    {
      type metadata accessor for RIOPxrSdfPathRef(0);
      v26 = v9;
      v27 = v50;
      outlined copy of InputDescriptor(v10, v26, v12, v11, v50, v57, v15);
      v28 = v62;
      v29 = v63;
      outlined copy of InputDescriptor(v3, v2, v5, v4, v62, v63, v8);
      v30 = &lazy protocol witness table cache variable for type RIOPxrSdfPathRef and conformance RIOPxrSdfPathRef;
      v31 = type metadata accessor for RIOPxrSdfPathRef;
LABEL_55:
      lazy protocol witness table accessor for type RIOImportSessionRef and conformance RIOImportSessionRef(v30, v31);
      v37 = v28;
      v38 = v27;
      v24 = static _CFObject.== infix(_:_:)();
      outlined destroy of (InputDescriptor, InputDescriptor)(v64);

      v25 = v57 ^ v29;
      goto LABEL_56;
    }

    goto LABEL_61;
  }

  if (v16 != 4)
  {
    if ((v15 & 0xF0) != 0x50)
    {
      goto LABEL_57;
    }

    goto LABEL_48;
  }

  if ((v15 & 0xF0) != 0x40)
  {
    goto LABEL_57;
  }

  if (v3 != v10 || v2 != v9)
  {
    v48 = v13;
    v55 = v14;
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v13 = v48;
    v14 = v55;
    if ((v17 & 1) == 0)
    {
      goto LABEL_57;
    }
  }

  if (v5 != v12 || v4 != v11)
  {
    v49 = v13;
    v56 = v14;
    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v13 = v49;
    v14 = v56;
    if ((v18 & 1) == 0)
    {
      goto LABEL_57;
    }
  }

  v19 = v10;
  v20 = v9;
  v21 = v13;
  v22 = v14;
  outlined copy of InputDescriptor(v19, v20, v12, v11, v13, v14, v15);
  outlined copy of InputDescriptor(v3, v2, v5, v4, v62, v63, v8);
  _sSasSQRzlE2eeoiySbSayxG_ABtFZ9RealityIO16ToolsFoundationsO5TokenV_Tt1g5(v62, v21);
  v24 = v23;
  outlined destroy of (InputDescriptor, InputDescriptor)(v64);
  v25 = v22 ^ v63;
LABEL_56:
  v39 = v24 & (v25 ^ 1);
  return v39 & 1;
}

unint64_t lazy protocol witness table accessor for type [ToolsFoundations.Token] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [ToolsFoundations.Token] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [ToolsFoundations.Token] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay9RealityIO16ToolsFoundationsO5TokenVGMd, &_sSay9RealityIO16ToolsFoundationsO5TokenVGMR);
    lazy protocol witness table accessor for type ToolsFoundations.Token and conformance ToolsFoundations.Token();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [ToolsFoundations.Token] and conformance <A> [A]);
  }

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

uint64_t getEnumTagSinglePayload for InputDescriptor(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x78 && *(a1 + 49))
  {
    return (*a1 + 120);
  }

  v3 = ((*(a1 + 48) >> 4) & 0xFFFFFF8F | (16 * ((*(a1 + 48) >> 1) & 7))) ^ 0x7F;
  if (v3 >= 0x77)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for InputDescriptor(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x77)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 120;
    if (a3 >= 0x78)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x78)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *result = 0u;
      *(result + 48) = 2 * (((-a2 >> 4) & 7) - 8 * a2);
    }
  }

  return result;
}

uint64_t outlined destroy of (InputDescriptor, InputDescriptor)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO15InputDescriptorO_ACtMd, &_s9RealityIO15InputDescriptorO_ACtMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t lazy protocol witness table accessor for type RIOImportSessionRef and conformance RIOImportSessionRef(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id one-time initialization function for PreliminaryGravitationalForcePrimTypeName()
{
  if (String.count.getter() < 1)
  {
    result = RIOPxrTfTokenEmpty();
  }

  else
  {
    result = RIOPxrTfTokenCreateWithCString();
  }

  static PhysicsComponentBuilder.PreliminaryGravitationalForcePrimTypeName = result;
  return result;
}

id one-time initialization function for GravityAccelerationPropertyName()
{
  if (String.count.getter() < 1)
  {
    result = RIOPxrTfTokenEmpty();
  }

  else
  {
    result = RIOPxrTfTokenCreateWithCString();
  }

  static PhysicsComponentBuilder.GravityAccelerationPropertyName = result;
  return result;
}

id one-time initialization function for GravityDirectionPropertyName()
{
  if (String.count.getter() < 1)
  {
    result = RIOPxrTfTokenEmpty();
  }

  else
  {
    result = RIOPxrTfTokenCreateWithCString();
  }

  static PhysicsComponentBuilder.GravityDirectionPropertyName = result;
  return result;
}

id one-time initialization function for GravityMagnitudePropertyName()
{
  if (String.count.getter() < 1)
  {
    result = RIOPxrTfTokenEmpty();
  }

  else
  {
    result = RIOPxrTfTokenCreateWithCString();
  }

  static PhysicsComponentBuilder.GravityMagnitudePropertyName = result;
  return result;
}

uint64_t closure #1 in closure #1 in PhysicsComponentBuilder.stageSubscription.getter()
{
  if (one-time initialization token for GravityDirectionPropertyName != -1)
  {
    swift_once();
  }

  v0 = static PhysicsComponentBuilder.GravityDirectionPropertyName;
  type metadata accessor for NamedPropertyDirtyState();
  v1 = swift_allocObject();
  v1[4] = v0;
  v2 = v0;
  v3 = MEMORY[0x277D84FA0];
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So36RIOBuilderDirtyMetadataDescriptorRefas5NeverOTg503_s9d16IO22TypeNamePrimj28StateC04typeD7IsAnyOf020primk48ContainsjK0017propertiesContainjK04coreACShyAA16fg2O5h44VG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13L47RefaSgtcfc12generateCoreL_AQyFSo0vfmwX0aAKXEfU_Tf1cn_n(MEMORY[0x277D84FA0]);
  type metadata accessor for RIOBuilderDirtyMetadataDescriptorRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v5 = RIOBuilderAnyValueDirtyPropertyDescriptorCreateWithNameAndMetadataDescriptors();

  v1[2] = v3;
  v1[3] = v5;
  v6 = one-time initialization token for GravityMagnitudePropertyName;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = static PhysicsComponentBuilder.GravityMagnitudePropertyName;
  v8 = swift_allocObject();
  v8[4] = v7;
  v9 = v7;
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So36RIOBuilderDirtyMetadataDescriptorRefas5NeverOTg503_s9d16IO22TypeNamePrimj28StateC04typeD7IsAnyOf020primk48ContainsjK0017propertiesContainjK04coreACShyAA16fg2O5h44VG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13L47RefaSgtcfc12generateCoreL_AQyFSo0vfmwX0aAKXEfU_Tf1cn_n(v3);
  v10 = Array._bridgeToObjectiveC()().super.isa;

  v11 = RIOBuilderAnyValueDirtyPropertyDescriptorCreateWithNameAndMetadataDescriptors();

  v8[2] = v3;
  v8[3] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26198A9D0;
  *(inited + 32) = v1;
  *(inited + 40) = v8;

  specialized Sequence.forEach(_:)(inited);

  swift_setDeallocating();
  v13 = *(inited + 16);
  swift_arrayDestroy();
  return v3;
}

uint64_t closure #2 in PhysicsComponentBuilder.stageSubscription.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9RealityIO16ToolsFoundationsO5TokenVGMd, &_ss23_ContiguousArrayStorageCy9RealityIO16ToolsFoundationsO5TokenVGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26198A8E0;
  if (one-time initialization token for PreliminaryGravitationalForcePrimTypeName != -1)
  {
    swift_once();
  }

  v1 = static PhysicsComponentBuilder.PreliminaryGravitationalForcePrimTypeName;
  *(inited + 32) = static PhysicsComponentBuilder.PreliminaryGravitationalForcePrimTypeName;
  v2 = one-time initialization token for GravitationalForcePrimTypeName;
  v3 = v1;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = static PhysicsComponentBuilder.GravitationalForcePrimTypeName;
  *(inited + 40) = static PhysicsComponentBuilder.GravitationalForcePrimTypeName;
  v5 = v4;
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC9RealityIO16ToolsFoundationsO5TokenV_Tt0g5Tf4g_n(inited);
  v7 = v6;
  swift_setDeallocating();
  swift_arrayDestroy();
  if (one-time initialization token for GravityAccelerationPropertyName != -1)
  {
    swift_once();
  }

  v8 = static PhysicsComponentBuilder.GravityAccelerationPropertyName;
  type metadata accessor for NamedPropertyDirtyState();
  v9 = swift_allocObject();
  v9[4] = v8;
  v10 = v8;
  v11 = MEMORY[0x277D84FA0];
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So36RIOBuilderDirtyMetadataDescriptorRefas5NeverOTg503_s9d16IO22TypeNamePrimj28StateC04typeD7IsAnyOf020primk48ContainsjK0017propertiesContainjK04coreACShyAA16fg2O5h44VG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13L47RefaSgtcfc12generateCoreL_AQyFSo0vfmwX0aAKXEfU_Tf1cn_n(MEMORY[0x277D84FA0]);
  type metadata accessor for RIOBuilderDirtyMetadataDescriptorRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v13 = RIOBuilderAnyValueDirtyPropertyDescriptorCreateWithNameAndMetadataDescriptors();

  v9[2] = v11;
  v9[3] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v14 = swift_initStackObject();
  *(v14 + 16) = xmmword_26198A640;
  *(v14 + 32) = v9;

  specialized Sequence.forEach(_:)(v14);

  swift_setDeallocating();
  v15 = *(v14 + 16);
  swift_arrayDestroy();
  type metadata accessor for TypeNamePrimDirtyState();
  v16 = swift_allocObject();
  v16[5] = v7;

  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So08RIOPxrTfH3Refas5NeverOTg503_s9d105IO22TypeNamePrimDirtyStateC04typeD7IsAnyOf020primMetadataContainsjK0017propertiesContainjK04coreACShyAA16fg2O5h88VG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13DescriptorRefaSgtcfc12generateCoreL_AQyFSo08I60TftX0aAKcfu_33_1208ebe0c1611b0e36169838b3b02464AkUTf3nnnpk_nTf1cn_n(v17);
  type metadata accessor for RIOPxrTfTokenRef(0);
  v18 = Array._bridgeToObjectiveC()().super.isa;

  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO18PropertyDirtyStateCG_So010RIOBuildergF13DescriptorRefas5NeverOTg503_s9d16IO22TypeNamePrimgh146C04typeD7IsAnyOf020primMetadataContainsjK0017propertiesContainjK04coreACShyAA16ToolsFoundationsO5TokenVG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13J94RefaSgtcfc12generateCoreL_AQyFSo0vfuwX0aANcfu0_32f9454acde0e12ec4aa46a683ab4ea6ebAnUTf3nnnpk_nTf1cn_n(v11);
  type metadata accessor for RIOBuilderDirtyPropertyDescriptorRef(0);
  v19 = Array._bridgeToObjectiveC()().super.isa;

  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So36RIOBuilderDirtyMetadataDescriptorRefas5NeverOTg503_s9d16IO22TypeNamePrimj28StateC04typeD7IsAnyOf020primk48ContainsjK0017propertiesContainjK04coreACShyAA16fg2O5h44VG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13L47RefaSgtcfc12generateCoreL_AQyFSo0vfmwX0aAKXEfU_Tf1cn_n(v11);
  v20 = Array._bridgeToObjectiveC()().super.isa;

  v21 = RIOBuilderTypeNameDirtyPrimDescriptorCreateWithPropertyDescriptorsAndMetadataDescriptors();

  v16[2] = v11;
  v16[3] = v11;
  v16[4] = v21;
  v22 = swift_initStackObject();
  *(v22 + 16) = xmmword_26198A640;
  *(v22 + 32) = v16;

  specialized Sequence.forEach(_:)(v22);

  swift_setDeallocating();
  v23 = *(v22 + 16);
  swift_arrayDestroy();
  return v11;
}

void PhysicsComponentBuilder.run(inputs:)()
{
  if (one-time initialization token for OutputName != -1)
  {
    swift_once();
  }

  Inputs.subscript.getter(static EntityBuilder.OutputName, qword_27FEBC3A0, &v9);
  if (!v10)
  {
    outlined destroy of Any?(&v9);
    return;
  }

  type metadata accessor for EntityProxy();
  if (swift_dynamicCast())
  {
    if (EntityProxy.parent.getter())
    {
      Inputs.prim.getter();
      if (one-time initialization token for GravityAccelerationPropertyName != -1)
      {
        swift_once();
      }

      _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFs5SIMD3VySdG_Tt1B5(&v5);

      if (v6)
      {
        Inputs.prim.getter();
        if (one-time initialization token for GravityDirectionPropertyName != -1)
        {
          swift_once();
        }

        _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFs5SIMD3VySdG_Tt1B5(&v7);

        if ((v8 & 1) == 0)
        {
          Inputs.prim.getter();
          if (one-time initialization token for GravityMagnitudePropertyName != -1)
          {
            swift_once();
          }

          _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFs5SIMD3VySdG_Tt1B5(&v9);

          if ((v11 & 1) == 0)
          {
            if (EntityProxy.setGravity(_:)())
            {
              swift_beginAccess();
              v1 = objc_getAssociatedObject(v0, &static BuilderAssociatedKeys.CoreReference);
              swift_endAccess();
              if (v1)
              {
                _bridgeAnyObjectToAny(_:)();
                swift_unknownObjectRelease();
                outlined init with take of Any(&v3, &v4);
                type metadata accessor for RIOBuilderRef(0);
                swift_dynamicCast();
                RIOBuilderAddComponent();
              }

              else
              {
                __break(1u);
              }

              return;
            }
          }
        }
      }

      else
      {
        EntityProxy.setGravity(_:)();
      }
    }
  }
}

uint64_t EntityProxy.setGravity(_:)()
{
  if (!static __RKScenePhysics.registration.getter())
  {
    return 0;
  }

  __RKScenePhysics.Registration.componentType.getter();

  __AssetRef.__as<A>(_:)();
  v0 = REEntityGetOrAddComponentByClass();
  if (RECustomComponentGetObject())
  {
    __RKScenePhysics.gravity.setter();
  }

  return v0;
}

uint64_t closure #1 in PhysicsComponentBuilder.clear(inputs:)()
{
  result = static __RKScenePhysics.registration.getter();
  if (result)
  {
    __RKScenePhysics.Registration.componentType.getter();

    __AssetRef.__as<A>(_:)();
    return REEntityRemoveComponentByClass();
  }

  return result;
}

uint64_t specialized PhysicsComponentBuilder.stageSubscription.getter()
{
  if (one-time initialization token for GravityPrimTypeName != -1)
  {
    swift_once();
  }

  v0 = static PhysicsComponentBuilder.GravityPrimTypeName;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9RealityIO16ToolsFoundationsO5TokenVGMd, &_ss23_ContiguousArrayStorageCy9RealityIO16ToolsFoundationsO5TokenVGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2619891C0;
  *(inited + 32) = v0;
  v2 = v0;
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC9RealityIO16ToolsFoundationsO5TokenV_Tt0g5Tf4g_n(inited);
  v4 = v3;
  swift_setDeallocating();
  outlined destroy of ToolsFoundations.Token(inited + 32);
  v5 = closure #1 in closure #1 in PhysicsComponentBuilder.stageSubscription.getter();
  type metadata accessor for TypeNamePrimDirtyState();
  v6 = swift_allocObject();
  v6[5] = v4;

  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So08RIOPxrTfH3Refas5NeverOTg503_s9d105IO22TypeNamePrimDirtyStateC04typeD7IsAnyOf020primMetadataContainsjK0017propertiesContainjK04coreACShyAA16fg2O5h88VG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13DescriptorRefaSgtcfc12generateCoreL_AQyFSo08I60TftX0aAKcfu_33_1208ebe0c1611b0e36169838b3b02464AkUTf3nnnpk_nTf1cn_n(v7);
  type metadata accessor for RIOPxrTfTokenRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO18PropertyDirtyStateCG_So010RIOBuildergF13DescriptorRefas5NeverOTg503_s9d16IO22TypeNamePrimgh146C04typeD7IsAnyOf020primMetadataContainsjK0017propertiesContainjK04coreACShyAA16ToolsFoundationsO5TokenVG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13J94RefaSgtcfc12generateCoreL_AQyFSo0vfuwX0aANcfu0_32f9454acde0e12ec4aa46a683ab4ea6ebAnUTf3nnnpk_nTf1cn_n(v5);
  type metadata accessor for RIOBuilderDirtyPropertyDescriptorRef(0);
  v9 = Array._bridgeToObjectiveC()().super.isa;

  v10 = MEMORY[0x277D84FA0];
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So36RIOBuilderDirtyMetadataDescriptorRefas5NeverOTg503_s9d16IO22TypeNamePrimj28StateC04typeD7IsAnyOf020primk48ContainsjK0017propertiesContainjK04coreACShyAA16fg2O5h44VG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13L47RefaSgtcfc12generateCoreL_AQyFSo0vfmwX0aAKXEfU_Tf1cn_n(MEMORY[0x277D84FA0]);
  type metadata accessor for RIOBuilderDirtyMetadataDescriptorRef(0);
  v11 = Array._bridgeToObjectiveC()().super.isa;

  v12 = RIOBuilderTypeNameDirtyPrimDescriptorCreateWithPropertyDescriptorsAndMetadataDescriptors();

  v6[2] = v10;
  v6[3] = v5;
  v6[4] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v13 = swift_initStackObject();
  *(v13 + 16) = xmmword_26198A640;
  *(v13 + 32) = v6;

  specialized Sequence.forEach(_:)(v13);

  swift_setDeallocating();
  v14 = *(v13 + 16);
  swift_arrayDestroy();
  type metadata accessor for StageDirtyState();
  swift_allocObject();
  v15 = StageDirtyState.init(stageMetadataContainsAnyOf:primsContainAnyOf:core:)(v10, v10, 0);

  v16 = closure #2 in PhysicsComponentBuilder.stageSubscription.getter();
  swift_allocObject();
  v17 = StageDirtyState.init(stageMetadataContainsAnyOf:primsContainAnyOf:core:)(v10, v16, 0);
  v18 = swift_initStackObject();
  *(v18 + 16) = xmmword_26198A9D0;
  *(v18 + 32) = v15;
  *(v18 + 40) = v17;

  specialized Sequence.forEach(_:)(v18);

  swift_setDeallocating();
  v19 = *(v18 + 16);
  swift_arrayDestroy();
  return v10;
}

uint64_t specialized PhysicsComponentBuilder.inputDescriptors()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9RealityIO15InputDescriptorOGMd, &_ss23_ContiguousArrayStorageCy9RealityIO15InputDescriptorOGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26198AB50;
  if (one-time initialization token for OutputName != -1)
  {
    swift_once();
  }

  v2 = static EntityBuilder.OutputName;
  v1 = qword_27FEBC3A0;
  v3 = one-time initialization token for OutputIdentifier;

  if (v3 != -1)
  {
    swift_once();
  }

  v5 = static EntityBuilder.OutputIdentifier;
  v4 = *algn_27FEC8E68;
  *(inited + 32) = v2;
  *(inited + 40) = v1;
  *(inited + 48) = v5;
  *(inited + 56) = v4;
  *(inited + 64) = xmmword_26198A8F0;
  *(inited + 80) = 0;
  *(inited + 88) = 0xD00000000000001ALL;
  *(inited + 96) = 0x8000000261994F30;
  *(inited + 104) = 0xD00000000000001ALL;
  *(inited + 112) = 0x8000000261994F30;
  *(inited + 120) = 0;
  *(inited + 128) = 0;
  *(inited + 136) = 0;
  *(inited + 144) = 0xD00000000000001ALL;
  *(inited + 152) = 0x8000000261994F30;
  *(inited + 160) = 0xD00000000000001ALL;
  *(inited + 168) = 0x8000000261994F30;
  *(inited + 176) = 0;
  *(inited + 184) = 0;
  *(inited + 192) = 16;

  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC9RealityIO15InputDescriptorO_Tt0g5Tf4g_n(inited);
  v7 = v6;
  swift_setDeallocating();
  swift_arrayDestroy();
  return v7;
}

uint64_t specialized PhysicsComponentBuilder.clear(inputs:)(uint64_t a1)
{
  if (one-time initialization token for OutputName != -1)
  {
    swift_once();
  }

  Inputs.subscript.getter(static EntityBuilder.OutputName, qword_27FEBC3A0, &aBlock);
  if (!v11)
  {
    return outlined destroy of Any?(&aBlock);
  }

  type metadata accessor for EntityProxy();
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    return result;
  }

  v3 = EntityProxy.parent.getter();
  if (v3)
  {
    v4 = v3;
    v5 = *(a1 + 56);
    v6 = swift_allocObject();
    *(v6 + 16) = partial apply for closure #1 in PhysicsComponentBuilder.clear(inputs:);
    *(v6 + 24) = v4;
    v12 = partial apply for thunk for @callee_guaranteed () -> ();
    v13 = v6;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v10 = thunk for @escaping @callee_guaranteed () -> ();
    v11 = &block_descriptor_19;
    v7 = _Block_copy(&aBlock);

    RIOBuilderInputsPerformBlockSyncOnEngineQueue();

    _Block_release(v7);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
    return outlined destroy of Any?(&aBlock);
  }
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t closure #1 in static ActionBuilder.generateLookAtCameraActionSpecifications(inputs:)(double a1, __n128 a2, __n128 a3, uint64_t a4, uint64_t a5, void **a6)
{
  v24[0] = a2;
  v24[1] = a3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for __RKEntityActionSpecification();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, a5, v8, v16);
  __RKEntityLookAtCameraActionArguments.init(target:duration:animationDuration:direction:rotation:upVector:loops:)();
  (*(v14 + 104))(v18, *MEMORY[0x277CDAF58], v13);
  v19 = *a6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a6 = v19;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v19[2] + 1, 1, v19);
    *a6 = v19;
  }

  v22 = v19[2];
  v21 = v19[3];
  if (v22 >= v21 >> 1)
  {
    v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v21 > 1, v22 + 1, 1, v19);
    *a6 = v19;
  }

  v19[2] = v22 + 1;
  return (*(v14 + 32))(v19 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v22, v18, v13);
}

uint64_t specialized static ActionBuilder.generateLookAtCameraActionSpecifications(inputs:)()
{
  v0 = type metadata accessor for __RKEntityGroupActionOrder();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s9RealityIO6InputsC17valueForAttribute5named4type14requestContextxSS_xmAC020PropertyValueRequestJ0OtKAA03UsdfL0RzlFSd_Tt1g5Tf4ndn_n();
  v6 = v5;
  _s9RealityIO6InputsC17valueForAttribute5named4type14requestContextxSS_xmAC020PropertyValueRequestJ0OtKAA03UsdfL0RzlFAA7Vector3VySdG_Tt1g5(v17);
  v16[0] = v17[0];
  v16[1] = v17[1];
  v7 = _s9RealityIO6InputsC17valueForAttribute5named4type14requestContextxSS_xmAC020PropertyValueRequestJ0OtKAA03UsdfL0RzlFAA7Vector3VySdG_Tt1g5(v17);
  *&v17[0] = MEMORY[0x277D84F90];
  *&v8 = MEMORY[0x28223BE20](v7);
  *&v16[-3] = v17;
  *(&v16[-3] + 1) = v6;
  v16[-2] = v9;
  v16[-1] = v8;
  specialized Inputs.forEachAffectedObject(requestContext:callback:)(partial apply for closure #1 in static ActionBuilder.generateLookAtCameraActionSpecifications(inputs:), &v16[-4]);
  result = *&v17[0];
  if (*(*&v17[0] + 16) > 1uLL)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMd, &_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMR);
    v11 = type metadata accessor for __RKEntityActionSpecification();
    v12 = *(v11 - 8);
    v13 = *(v12 + 72);
    v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_2619891C0;
    (*(v1 + 104))(v4, *MEMORY[0x277CDAEF8], v0);

    __RKEntityActionGroupArguments.init(order:actions:exclusive:loopCount:)();
    (*(v12 + 104))(v15 + v14, *MEMORY[0x277CDAFA0], v11);

    return v15;
  }

  return result;
}

uint64_t one-time initialization function for virtualEnvProbeComponent()
{
  type metadata accessor for OS_os_log();
  result = OS_os_log.init(subsystem:category:)();
  static OS_os_log.virtualEnvProbeComponent = result;
  return result;
}

uint64_t VirtualEnvironmentProbeComponentBuilder.inputDescriptors()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9RealityIO15InputDescriptorOGMd, &_ss23_ContiguousArrayStorageCy9RealityIO15InputDescriptorOGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26198A8E0;
  if (one-time initialization token for OutputName != -1)
  {
    swift_once();
  }

  v3 = static EntityBuilder.OutputName;
  v2 = qword_27FEBC3A0;
  v4 = one-time initialization token for OutputIdentifier;

  if (v4 != -1)
  {
    swift_once();
  }

  *(inited + 32) = v3;
  v6 = static EntityBuilder.OutputIdentifier;
  v5 = *algn_27FEC8E68;
  *(inited + 40) = v2;
  *(inited + 48) = v6;
  *(inited + 64) = 0;
  *(inited + 72) = 0;
  *(inited + 56) = v5;
  *(inited + 80) = 112;
  v7 = *(v0 + 16);
  *(inited + 88) = xmmword_261990720;
  *(inited + 104) = 0xD000000000000020;
  *(inited + 112) = 0x8000000261994710;
  *(inited + 120) = v7;
  *(inited + 128) = 1;
  *(inited + 136) = 32;

  v8 = v7;
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC9RealityIO15InputDescriptorO_Tt0g5Tf4g_n(inited);
  v10 = v9;
  swift_setDeallocating();
  swift_arrayDestroy();
  return v10;
}

uint64_t closure #1 in VirtualEnvironmentProbeComponentBuilder.run(inputs:)(uint64_t a1, uint64_t a2)
{
  v106 = *MEMORY[0x277D85DE8];
  v3 = Inputs.prim.getter();
  v4 = *(v3 + 16);
  v5 = RIOPxrUsdObjectCopyName();
  v6 = RIOPxrTfTokenCopyString();
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  if (one-time initialization token for infoID != -1)
  {
    swift_once();
  }

  v10 = *(v3 + 16);
  if (!RIOPxrUsdPrimHasAttribute())
  {
    goto LABEL_45;
  }

  v11 = RIOPxrUsdPrimCopyAttribute();
  v12 = RIOPxrUsdAttributeCopyValue();
  if (!v12)
  {

LABEL_46:
    VirtualEnvironmentProbeComponentBuilder.clear(inputs:)();
    v40 = *MEMORY[0x277D85DE8];
  }

  v13 = v12;
  v14 = RIOPxrVtValueCopyToken();

  if (!v14)
  {
LABEL_45:

    goto LABEL_46;
  }

  v15 = RIOPxrTfTokenCopyString();
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  if (v16 != 0xD000000000000022 || 0x80000002619978B0 != v18)
  {
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v19)
    {
      goto LABEL_11;
    }

    goto LABEL_45;
  }

LABEL_11:
  v20 = Prim.parent.getter();
  if (!v20)
  {
    goto LABEL_14;
  }

  v21 = v20;
  v22 = *(v20 + 16);
  if (RIOPxrUsdPrimEvaluateEntityOnExport())
  {

LABEL_14:
    if (one-time initialization token for OutputName != -1)
    {
      goto LABEL_124;
    }

    while (1)
    {
      Inputs.subscript.getter(static EntityBuilder.OutputName, qword_27FEBC3A0, &v104);
      if (!v105)
      {
        outlined destroy of Any?(&v104);
LABEL_55:
        if (one-time initialization token for virtualEnvProbeComponent != -1)
        {
          swift_once();
        }

        static os_log_type_t.error.getter();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
        v51 = swift_allocObject();
        *(v51 + 16) = xmmword_2619891C0;
        *(v51 + 56) = MEMORY[0x277D837D0];
        *(v51 + 64) = lazy protocol witness table accessor for type String and conformance String();
        *(v51 + 32) = v7;
        *(v51 + 40) = v9;
        os_log(_:dso:log:type:_:)();

        goto LABEL_58;
      }

      type metadata accessor for EntityProxy();
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_55;
      }

      v23 = *(v3 + 16);
      if ((RIOPxrUsdPrimIsActive() & 1) == 0)
      {
        VirtualEnvironmentProbeComponentBuilder.clear(inputs:)();

        goto LABEL_58;
      }

      __AssetRef.__as<A>(_:)();
      REVirtualEnvironmentProbeComponentGetComponentType();
      v24 = REEntityGetOrAddComponentByClass();
      swift_beginAccess();
      v25 = objc_getAssociatedObject(a2, &static BuilderAssociatedKeys.CoreReference);
      result = swift_endAccess();
      if (!v25)
      {
        __break(1u);
        return result;
      }

      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      outlined init with take of Any(&v103, &v104);
      type metadata accessor for RIOBuilderRef(0);
      swift_dynamicCast();
      RIOBuilderAddComponent();

      v27 = VirtualEnvironmentProbeComponentBuilder.getIBLResourcePrims(fromPrim:)(v3);
      v28 = v27;
      v96 = v27 >> 62;
      v99 = v27 & 0xFFFFFFFFFFFFFF8;
      v9 = v27 >> 62 ? __CocoaSet.count.getter() : *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v100 = v24;
      v101 = v28 & 0xC000000000000001;
      if (!v9)
      {
        break;
      }

      v29 = 0;
      v98 = MEMORY[0x277D84F90];
LABEL_23:
      v7 = v29;
      while (v101)
      {
        v30 = MEMORY[0x26670F670](v7, v28);
        v29 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_122;
        }

LABEL_29:
        if (one-time initialization token for iblPropertyName != -1)
        {
          swift_once();
        }

        v31 = *(v30 + 16);
        if (RIOPxrUsdPrimHasAttribute())
        {
          v32 = *(v30 + 16);
          v33 = RIOPxrUsdPrimCopyAttribute();
          type metadata accessor for AnyAttribute();
          v34 = swift_allocObject();
          v34[2] = v33;
          EmptyValue = RIOPxrUsdAttributeCopyValue();
          if (!EmptyValue)
          {
            EmptyValue = RIOPxrVtValueCreateEmptyValue();
          }

          outlined consume of Result<AnyAttribute, Object.Error>(v34, 0);
          v36 = RIOPxrVtValueCopyAssetPath();

          if (v36)
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v98 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v98 + 2) + 1, 1, v98);
            }

            v39 = *(v98 + 2);
            v38 = *(v98 + 3);
            if (v39 >= v38 >> 1)
            {
              v98 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1, v98);
            }

            *(v98 + 2) = v39 + 1;
            *&v98[8 * v39 + 32] = v36;
            if (v29 == v9)
            {
              goto LABEL_61;
            }

            goto LABEL_23;
          }
        }

        else
        {
          *&v104 = 0;
          lazy protocol witness table accessor for type Object.Error and conformance Object.Error();
          swift_willThrowTypedImpl();

          outlined consume of Object.Error(v104);
        }

        ++v7;
        if (v29 == v9)
        {
          goto LABEL_61;
        }
      }

      if (v7 >= *(v99 + 16))
      {
        goto LABEL_123;
      }

      v30 = *(v28 + 8 * v7 + 32);

      v29 = v7 + 1;
      if (!__OFADD__(v7, 1))
      {
        goto LABEL_29;
      }

LABEL_122:
      __break(1u);
LABEL_123:
      __break(1u);
LABEL_124:
      swift_once();
    }

    v98 = MEMORY[0x277D84F90];
LABEL_61:
    v53 = v100;
    ResourceCount = REVirtualEnvironmentProbeComponentGetResourceCount();
    v55 = *(a2 + 32);
    if (ResourceCount == *(v55 + 16) && (v96 ? (v56 = __CocoaSet.count.getter(), v55 = *(a2 + 32)) : (v56 = *(v99 + 16)), ResourceCount == v56))
    {
      v57 = v55;

      _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySay9RealityIO27SceneDescriptionFoundationsO9AssetPathVGAMG_Sbs5NeverOTg503_s9f4IO27hij2O9kl21VAESbIgnnd_AE_AEtSbs5M130OIegnrzr_TR03_s9a82IO39VirtualEnvironmentProbeComponentBuilderC3run6inputsyAA6InputsC_tFyyXEfU_SbAA27cde2O9fg5V_AKtT3U0_Tf3nnnpf_nTf1cn_n(v58, v57);
      v60 = v59;

      if (!ResourceCount)
      {
        goto LABEL_95;
      }

      if ((ResourceCount - 1) >= *(v60 + 16))
      {
LABEL_128:
        __break(1u);
      }

      v61 = 0;
      v97 = ResourceCount;
      do
      {
        if (v101)
        {
          v62 = MEMORY[0x26670F670](v61, v28);
        }

        else
        {
          v62 = *(v28 + 8 * v61 + 32);
        }

        if (*(v60 + v61 + 32) == 1)
        {
          v63 = v60;
          if (one-time initialization token for iblPropertyName != -1)
          {
            swift_once();
          }

          v64 = *(v62 + 16);
          v65 = static VirtualEnvironmentProbeComponentBuilder.iblPropertyName;
          if (RIOPxrUsdPrimHasAttribute())
          {
            v66 = *(v62 + 16);
            v67 = RIOPxrUsdPrimCopyAttribute();

            type metadata accessor for AnyAttribute();
            v68 = swift_allocObject();
            v68[2] = v67;
            Inputs.createIBLAsset(on:)(v68);
            v70 = *(v69 + 16);
            v53 = v100;
            REVirtualEnvironmentProbeComponentSetResource();
            outlined consume of Result<AnyAttribute, Object.Error>(v68, 0);
          }

          else
          {

            *&v104 = 0;
            lazy protocol witness table accessor for type Object.Error and conformance Object.Error();
            swift_willThrowTypedImpl();
            outlined consume of Object.Error(v104);
            REVirtualEnvironmentProbeComponentSetResource();
          }

          v60 = v63;
          ResourceCount = v97;
        }

        else
        {
        }

        ++v61;
      }

      while (ResourceCount != v61);
LABEL_95:

LABEL_96:
      v79 = *(a2 + 32);
      *(a2 + 32) = v98;

      if (!v96)
      {
        v80 = *(v99 + 16);
        goto LABEL_99;
      }

      v80 = __CocoaSet.count.getter();
      if ((v80 & 0x8000000000000000) == 0)
      {
LABEL_99:
        if (v80)
        {
          v81 = 0;
          v82 = 0.0;
          while (1)
          {
            if (v101)
            {
              v83 = MEMORY[0x26670F670](v81, v28);
            }

            else
            {
              v83 = *(v28 + 8 * v81 + 32);
            }

            if (one-time initialization token for relativeWeightPropertyName != -1)
            {
              swift_once();
            }

            v84 = *(v83 + 16);
            v85 = static VirtualEnvironmentProbeComponentBuilder.relativeWeightPropertyName;
            if (!RIOPxrUsdPrimHasAttribute())
            {
              break;
            }

            v86 = RIOPxrUsdPrimCopyAttribute();
            type metadata accessor for AnyAttribute();
            v87 = swift_allocObject();
            v87[2] = v86;
            v88 = RIOPxrUsdAttributeCopyValue();
            if (!v88)
            {
              v88 = RIOPxrVtValueCreateEmptyValue();
            }

            outlined consume of Result<AnyAttribute, Object.Error>(v87, 0);

            LODWORD(v104) = 0;
            Float = RIOPxrVtValueGetFloat();

            v53 = v100;
            if ((Float & 1) == 0)
            {
              goto LABEL_114;
            }

            v90 = *&v104;
LABEL_115:
            v82 = v82 + v90;
            REVirtualEnvironmentProbeComponentSetRelativeWeight();
            if (one-time initialization token for intensityPropertyName != -1)
            {
              swift_once();
            }

            v91 = *(v83 + 16);
            v92 = static VirtualEnvironmentProbeComponentBuilder.intensityPropertyName;
            if (RIOPxrUsdPrimHasAttribute())
            {
              v93 = RIOPxrUsdPrimCopyAttribute();
              type metadata accessor for AnyAttribute();
              v94 = swift_allocObject();
              v94[2] = v93;
              v95 = RIOPxrUsdAttributeCopyValue();
              if (!v95)
              {
                v95 = RIOPxrVtValueCreateEmptyValue();
              }

              outlined consume of Result<AnyAttribute, Object.Error>(v94, 0);

              LODWORD(v104) = 0;
              RIOPxrVtValueGetFloat();

              v53 = v100;
            }

            else
            {
              *&v104 = 0;
              lazy protocol witness table accessor for type Object.Error and conformance Object.Error();
              swift_willThrowTypedImpl();
              outlined consume of Object.Error(v104);
            }

            REVirtualEnvironmentProbeComponentSetIntensityExponent();

            if (v80 == ++v81)
            {
              goto LABEL_121;
            }
          }

          *&v104 = 0;
          lazy protocol witness table accessor for type Object.Error and conformance Object.Error();
          swift_willThrowTypedImpl();
          outlined consume of Object.Error(v104);

LABEL_114:
          v90 = 1.0;
          goto LABEL_115;
        }

LABEL_121:

        MEMORY[0x26670FF10](v53);

        *(a2 + 41) = 1;
LABEL_58:
        v52 = *MEMORY[0x277D85DE8];
        return result;
      }

      __break(1u);
    }

    else
    {
      *(a2 + 32) = MEMORY[0x277D84F90];

      REVirtualEnvironmentProbeComponentClearResources();
      if (!v9)
      {
        goto LABEL_96;
      }

      if (v9 >= 1)
      {
        for (i = 0; i != v9; ++i)
        {
          if (v101)
          {
            v72 = MEMORY[0x26670F670](i, v28);
          }

          else
          {
            v72 = *(v28 + 8 * i + 32);
          }

          if (one-time initialization token for iblPropertyName != -1)
          {
            swift_once();
          }

          v73 = *(v72 + 16);
          v74 = static VirtualEnvironmentProbeComponentBuilder.iblPropertyName;
          if (RIOPxrUsdPrimHasAttribute())
          {
            v75 = *(v72 + 16);
            v76 = RIOPxrUsdPrimCopyAttribute();

            type metadata accessor for AnyAttribute();
            v77 = swift_allocObject();
            v77[2] = v76;
            Inputs.createIBLAsset(on:)(v77);
            if (*(v78 + 16))
            {
              v53 = v100;
              REVirtualEnvironmentProbeComponentAddResource();
              outlined consume of Result<AnyAttribute, Object.Error>(v77, 0);
            }

            else
            {
              outlined consume of Result<AnyAttribute, Object.Error>(v77, 0);

              v53 = v100;
            }
          }

          else
          {

            *&v104 = 0;
            lazy protocol witness table accessor for type Object.Error and conformance Object.Error();
            swift_willThrowTypedImpl();

            outlined consume of Object.Error(v104);
          }
        }

        goto LABEL_96;
      }
    }

    __break(1u);
    goto LABEL_128;
  }

  if (one-time initialization token for virtualEnvProbeComponent != -1)
  {
    swift_once();
  }

  static os_log_type_t.error.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_26198A8E0;
  v42 = *(v21 + 16);
  v43 = RIOPxrUsdObjectCopyPath();
  v44 = RIOPxrSdfPathCopyString();
  v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v47 = v46;

  v48 = MEMORY[0x277D837D0];
  *(v41 + 56) = MEMORY[0x277D837D0];
  v49 = lazy protocol witness table accessor for type String and conformance String();
  *(v41 + 64) = v49;
  *(v41 + 32) = v45;
  *(v41 + 40) = v47;

  *(v41 + 96) = v48;
  *(v41 + 104) = v49;
  *(v41 + 72) = v7;
  *(v41 + 80) = v9;
  os_log(_:dso:log:type:_:)();

  v50 = *MEMORY[0x277D85DE8];
}

void _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySay9RealityIO27SceneDescriptionFoundationsO9AssetPathVGAMG_Sbs5NeverOTg503_s9f4IO27hij2O9kl21VAESbIgnnd_AE_AEtSbs5M130OIegnrzr_TR03_s9a82IO39VirtualEnvironmentProbeComponentBuilderC3run6inputsyAA6InputsC_tFyyXEfU_SbAA27cde2O9fg5V_AKtT3U0_Tf3nnnpf_nTf1cn_n(uint64_t a1, uint64_t a2)
{
  v29 = *(a1 + 16);
  v28 = *(a2 + 16);
  if (v28 >= v29)
  {
    v4 = *(a1 + 16);
  }

  else
  {
    v4 = *(a2 + 16);
  }

  v30 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
  v26 = a2;
  v27 = a1;
  if (v4)
  {
    v5 = (a1 + 32);
    v6 = (a2 + 32);

    v7 = v4;
    while (1)
    {
      v8 = *v5;
      v9 = *v6;
      v10 = *v5;
      v11 = v9;
      if (!v8)
      {
        break;
      }

      v12 = v11;
      type metadata accessor for RIOPxrSdfAssetPathRef(0);
      lazy protocol witness table accessor for type RIOPxrSdfAssetPathRef and conformance RIOPxrSdfAssetPathRef(&lazy protocol witness table cache variable for type RIOPxrSdfAssetPathRef and conformance RIOPxrSdfAssetPathRef, type metadata accessor for RIOPxrSdfAssetPathRef);
      v13 = static _CFObject.== infix(_:_:)();

      v15 = *(v30 + 16);
      v14 = *(v30 + 24);
      if (v15 >= v14 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1);
      }

      *(v30 + 16) = v15 + 1;
      *(v30 + v15 + 32) = (v13 & 1) == 0;
      ++v5;
      ++v6;
      if (!--v7)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {

LABEL_12:
    v17 = v28;
    v16 = v29;
    if (v29 <= v28)
    {
LABEL_21:

      return;
    }

    while (v4 < v16)
    {
      v18 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_23;
      }

      if (v17 == v4)
      {
        goto LABEL_21;
      }

      if (v4 >= v17)
      {
        goto LABEL_24;
      }

      if (__OFADD__(v4, 1))
      {
        goto LABEL_25;
      }

      v19 = *(v27 + 32 + 8 * v4);
      v20 = *(v26 + 32 + 8 * v4);
      type metadata accessor for RIOPxrSdfAssetPathRef(0);
      lazy protocol witness table accessor for type RIOPxrSdfAssetPathRef and conformance RIOPxrSdfAssetPathRef(&lazy protocol witness table cache variable for type RIOPxrSdfAssetPathRef and conformance RIOPxrSdfAssetPathRef, type metadata accessor for RIOPxrSdfAssetPathRef);
      v21 = v19;
      v22 = v20;
      v23 = static _CFObject.== infix(_:_:)();

      v25 = *(v30 + 16);
      v24 = *(v30 + 24);
      if (v25 >= v24 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1);
      }

      *(v30 + 16) = v25 + 1;
      *(v30 + v25 + 32) = (v23 & 1) == 0;
      ++v4;
      v17 = v28;
      v16 = v29;
      if (v18 == v29)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  __break(1u);
}

uint64_t VirtualEnvironmentProbeComponentBuilder.clear(inputs:)()
{
  if (one-time initialization token for OutputName != -1)
  {
    swift_once();
  }

  Inputs.subscript.getter(static EntityBuilder.OutputName, qword_27FEBC3A0, &v3);
  if (!v4)
  {
    return outlined destroy of Any?(&v3);
  }

  type metadata accessor for EntityProxy();
  result = swift_dynamicCast();
  if (result)
  {
    if (*(v0 + 41) == 1)
    {
      v2 = *(v0 + 32);
      *(v0 + 32) = MEMORY[0x277D84F90];

      __AssetRef.__as<A>(_:)();
      REVirtualEnvironmentProbeComponentGetComponentType();
      REEntityRemoveComponentByClass();

      *(v0 + 41) = 0;
    }

    else
    {
    }
  }

  return result;
}

uint64_t VirtualEnvironmentProbeComponentBuilder.getIBLResourcePrims(fromPrim:)(uint64_t a1)
{
  v1 = specialized VirtualEnvironmentProbeComponentBuilder.getMode(fromPrim:)(a1);
  if (v1 == 3)
  {
    LOBYTE(v2) = 2;
  }

  else
  {
    LOBYTE(v2) = v1;
  }

  v3 = Prim.children.getter();
  v4 = v3;
  v31 = MEMORY[0x277D84F90];
  v5 = v3 & 0xFFFFFFFFFFFFFF8;
  if (v3 >> 62)
  {
    goto LABEL_30;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v7 = 0;
    v8 = 0;
    v9 = v2;
    v10 = v4 & 0xC000000000000001;
    v28 = v2;
    v29 = v4;
    v27 = v4 & 0xC000000000000001;
    while (1)
    {
      if (v10)
      {
        v11 = MEMORY[0x26670F670](v8, v4);
        v2 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        goto LABEL_12;
      }

      if (v8 >= *(v5 + 16))
      {
        goto LABEL_29;
      }

      v11 = *(v4 + 8 * v8 + 32);

      v2 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

LABEL_12:
      if (v7 >= v9)
      {

LABEL_8:
        ++v8;
        if (v2 == i)
        {
          goto LABEL_31;
        }
      }

      else
      {
        v12 = i;
        v13 = *(v11 + 16);
        v14 = RIOPxrUsdPrimCopyTypeName();
        v15 = *(v30 + 16);
        type metadata accessor for RIOPxrTfTokenRef(0);
        lazy protocol witness table accessor for type RIOPxrSdfAssetPathRef and conformance RIOPxrSdfAssetPathRef(&lazy protocol witness table cache variable for type RIOPxrTfTokenRef and conformance RIOPxrTfTokenRef, type metadata accessor for RIOPxrTfTokenRef);
        v16 = v15;
        v17 = static _CFObject.== infix(_:_:)();

        if ((v17 & 1) == 0)
        {

          i = v12;
          v9 = v28;
          v4 = v29;
          v10 = v27;
          goto LABEL_8;
        }

        v10 = v27;
        if (one-time initialization token for iblPropertyName != -1)
        {
          swift_once();
        }

        v18 = *(v11 + 16);
        if (!RIOPxrUsdPrimHasAttribute())
        {
          lazy protocol witness table accessor for type Object.Error and conformance Object.Error();
          swift_willThrowTypedImpl();
          outlined consume of Object.Error(0);
LABEL_25:

          i = v12;
          v9 = v28;
          v4 = v29;
          goto LABEL_8;
        }

        v19 = *(v11 + 16);
        v20 = RIOPxrUsdPrimCopyAttribute();
        type metadata accessor for AnyAttribute();
        v21 = swift_allocObject();
        v21[2] = v20;
        EmptyValue = RIOPxrUsdAttributeCopyValue();
        if (!EmptyValue)
        {
          EmptyValue = RIOPxrVtValueCreateEmptyValue();
        }

        outlined consume of Result<AnyAttribute, Object.Error>(v21, 0);
        v23 = RIOPxrVtValueCopyAssetPath();

        if (!v23)
        {
          goto LABEL_25;
        }

        ++v7;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v24 = *(v31 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v8 = v2;
        i = v12;
        v25 = v2 == v12;
        v9 = v28;
        v4 = v29;
        if (v25)
        {
          goto LABEL_31;
        }
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    ;
  }

LABEL_31:

  return v31;
}

uint64_t VirtualEnvironmentProbeComponentBuilder.__deallocating_deinit()
{
  v1 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t VirtualEnvironmentProbeComponentBuilder.init()()
{
  if (String.count.getter() < 1)
  {
    v1 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v1 = RIOPxrTfTokenCreateWithCString();
  }

  *(v0 + 16) = v1;
  *(v0 + 24) = 1065353216;
  *(v0 + 32) = MEMORY[0x277D84F90];
  *(v0 + 40) = 2;
  return v0;
}

uint64_t protocol witness for Builder.run(inputs:) in conformance VirtualEnvironmentProbeComponentBuilder(uint64_t a1)
{
  v2 = *v1;
  v7[2] = a1;
  v8 = v1;
  v9 = v2;
  v3 = *(a1 + 56);
  v4 = swift_allocObject();
  *(v4 + 16) = partial apply for closure #1 in VirtualEnvironmentProbeComponentBuilder.run(inputs:);
  *(v4 + 24) = v7;
  aBlock[4] = partial apply for thunk for @callee_guaranteed () -> ();
  aBlock[5] = v4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_20;
  v5 = _Block_copy(aBlock);

  RIOBuilderInputsPerformBlockSyncOnEngineQueue();
  _Block_release(v5);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  return result;
}

uint64_t block_copy_helper_20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t specialized closure #1 in closure #1 in VirtualEnvironmentProbeComponentBuilder.stageSubscription.getter()
{
  if (one-time initialization token for infoID != -1)
  {
    swift_once();
  }

  v0 = static VirtualEnvironmentProbeComponentBuilder.infoID;
  type metadata accessor for NamedPropertyDirtyState();
  v1 = swift_allocObject();
  v1[4] = v0;
  v2 = v0;
  v3 = MEMORY[0x277D84FA0];
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So36RIOBuilderDirtyMetadataDescriptorRefas5NeverOTg503_s9d16IO22TypeNamePrimj28StateC04typeD7IsAnyOf020primk48ContainsjK0017propertiesContainjK04coreACShyAA16fg2O5h44VG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13L47RefaSgtcfc12generateCoreL_AQyFSo0vfmwX0aAKXEfU_Tf1cn_n(MEMORY[0x277D84FA0]);
  type metadata accessor for RIOBuilderDirtyMetadataDescriptorRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v5 = RIOBuilderAnyValueDirtyPropertyDescriptorCreateWithNameAndMetadataDescriptors();

  v1[2] = v3;
  v1[3] = v5;
  v6 = one-time initialization token for modeAttributeName;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = static VirtualEnvironmentProbeComponentBuilder.modeAttributeName;
  v8 = swift_allocObject();
  v8[4] = v7;
  v9 = v7;
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So36RIOBuilderDirtyMetadataDescriptorRefas5NeverOTg503_s9d16IO22TypeNamePrimj28StateC04typeD7IsAnyOf020primk48ContainsjK0017propertiesContainjK04coreACShyAA16fg2O5h44VG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13L47RefaSgtcfc12generateCoreL_AQyFSo0vfmwX0aAKXEfU_Tf1cn_n(v3);
  v10 = Array._bridgeToObjectiveC()().super.isa;

  v11 = RIOBuilderAnyValueDirtyPropertyDescriptorCreateWithNameAndMetadataDescriptors();

  v8[2] = v3;
  v8[3] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26198A9D0;
  *(inited + 32) = v1;
  *(inited + 40) = v8;

  specialized Sequence.forEach(_:)(inited);

  swift_setDeallocating();
  v13 = *(inited + 16);
  swift_arrayDestroy();
  return v3;
}

uint64_t specialized closure #1 in VirtualEnvironmentProbeComponentBuilder.stageSubscription.getter()
{
  if (one-time initialization token for realityKitComponentTypeName != -1)
  {
    swift_once();
  }

  v0 = static VirtualEnvironmentProbeComponentBuilder.realityKitComponentTypeName;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9RealityIO16ToolsFoundationsO5TokenVGMd, &_ss23_ContiguousArrayStorageCy9RealityIO16ToolsFoundationsO5TokenVGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2619891C0;
  *(inited + 32) = v0;
  v2 = v0;
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC9RealityIO16ToolsFoundationsO5TokenV_Tt0g5Tf4g_n(inited);
  v4 = v3;
  swift_setDeallocating();
  outlined destroy of ToolsFoundations.Token(inited + 32);
  v5 = specialized closure #1 in closure #1 in VirtualEnvironmentProbeComponentBuilder.stageSubscription.getter();
  type metadata accessor for TypeNamePrimDirtyState();
  v6 = swift_allocObject();
  v6[5] = v4;

  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So08RIOPxrTfH3Refas5NeverOTg503_s9d105IO22TypeNamePrimDirtyStateC04typeD7IsAnyOf020primMetadataContainsjK0017propertiesContainjK04coreACShyAA16fg2O5h88VG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13DescriptorRefaSgtcfc12generateCoreL_AQyFSo08I60TftX0aAKcfu_33_1208ebe0c1611b0e36169838b3b02464AkUTf3nnnpk_nTf1cn_n(v7);
  type metadata accessor for RIOPxrTfTokenRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO18PropertyDirtyStateCG_So010RIOBuildergF13DescriptorRefas5NeverOTg503_s9d16IO22TypeNamePrimgh146C04typeD7IsAnyOf020primMetadataContainsjK0017propertiesContainjK04coreACShyAA16ToolsFoundationsO5TokenVG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13J94RefaSgtcfc12generateCoreL_AQyFSo0vfuwX0aANcfu0_32f9454acde0e12ec4aa46a683ab4ea6ebAnUTf3nnnpk_nTf1cn_n(v5);
  type metadata accessor for RIOBuilderDirtyPropertyDescriptorRef(0);
  v9 = Array._bridgeToObjectiveC()().super.isa;

  v10 = MEMORY[0x277D84FA0];
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So36RIOBuilderDirtyMetadataDescriptorRefas5NeverOTg503_s9d16IO22TypeNamePrimj28StateC04typeD7IsAnyOf020primk48ContainsjK0017propertiesContainjK04coreACShyAA16fg2O5h44VG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13L47RefaSgtcfc12generateCoreL_AQyFSo0vfmwX0aAKXEfU_Tf1cn_n(MEMORY[0x277D84FA0]);
  type metadata accessor for RIOBuilderDirtyMetadataDescriptorRef(0);
  v11 = Array._bridgeToObjectiveC()().super.isa;

  v12 = RIOBuilderTypeNameDirtyPrimDescriptorCreateWithPropertyDescriptorsAndMetadataDescriptors();

  v6[2] = v10;
  v6[3] = v5;
  v6[4] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v13 = swift_initStackObject();
  *(v13 + 16) = xmmword_26198A640;
  *(v13 + 32) = v6;

  specialized Sequence.forEach(_:)(v13);

  swift_setDeallocating();
  v14 = *(v13 + 16);
  swift_arrayDestroy();
  return v10;
}

uint64_t specialized VirtualEnvironmentProbeComponentBuilder.stageSubscription.getter()
{
  v0 = specialized closure #1 in VirtualEnvironmentProbeComponentBuilder.stageSubscription.getter();
  type metadata accessor for StageDirtyState();
  swift_allocObject();
  v1 = MEMORY[0x277D84FA0];
  v2 = StageDirtyState.init(stageMetadataContainsAnyOf:primsContainAnyOf:core:)(MEMORY[0x277D84FA0], v0, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26198A640;
  *(inited + 32) = v2;

  specialized Sequence.forEach(_:)(inited);

  swift_setDeallocating();
  v4 = *(inited + 16);
  swift_arrayDestroy();
  return v1;
}

uint64_t specialized VirtualEnvironmentProbeComponentBuilder.getMode(fromPrim:)(uint64_t a1)
{
  if (one-time initialization token for modeAttributeName != -1)
  {
    swift_once();
  }

  v12 = static VirtualEnvironmentProbeComponentBuilder.modeAttributeName;
  v2 = static VirtualEnvironmentProbeComponentBuilder.modeAttributeName;
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
  v10 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of VirtualEnvironmentProbeComponentBuilder.Mode.init(rawValue:), v9);

  if (v10 >= 3)
  {
    return 3;
  }

  else
  {
    return v10;
  }
}

uint64_t lazy protocol witness table accessor for type RIOPxrSdfAssetPathRef and conformance RIOPxrSdfAssetPathRef(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t Prim.type.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = RIOPxrUsdPrimCopyTypeName();
  *a1 = result;
  return result;
}

uint64_t Object.path.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = RIOPxrUsdObjectCopyPath();
  *a1 = result;
  return result;
}

uint64_t Object.name.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = RIOPxrUsdObjectCopyName();
  *a1 = result;
  return result;
}

uint64_t _ss6ResultOsRi_zRi0_zrlE3getxyq_YKF@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(*(a1[2] - 8) + 32))(a3, v3);
  }

  (*(*(a1[3] - 8) + 32))(a2, v3, a1[3]);
  v7 = a1[4];
  return swift_willThrowTypedImpl();
}

uint64_t AnyAttribute.value.getter()
{
  v1 = *(v0 + 16);
  result = RIOPxrUsdAttributeCopyValue();
  if (!result)
  {

    return RIOPxrVtValueCreateEmptyValue();
  }

  return result;
}

uint64_t Prim.attribute(of:)@<X0>(void *a1@<X0>, uint64_t (*a2)(uint64_t, void)@<X1>, uint64_t (*a3)(uint64_t, uint64_t)@<X2>, void (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  v9 = *a1;
  v10 = *(v5 + 16);
  v11 = a2(v10, *a1);
  if (v11)
  {
    v12 = a3(v10, v9);
    a4();
    result = swift_allocObject();
    *(result + 16) = v12;
  }

  else
  {
    result = 0;
  }

  *a5 = result;
  *(a5 + 8) = v11 ^ 1;
  return result;
}

void Prim.attributeValue<A>(of:type:)(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = *a1;
  v9 = *(v4 + 16);
  if (RIOPxrUsdPrimHasAttribute())
  {
    v11 = RIOPxrUsdPrimCopyAttribute();
    (*(a3 + 16))(v11, a2, a3, NAN);
  }

  else
  {
    v10 = *(*(a2 - 8) + 56);

    v10(a4, 1, 1, a2);
  }
}

uint64_t Relationship.target.getter@<X0>(void *a1@<X8>)
{
  v2 = Relationship.targets.getter();
  if (*(v2 + 16))
  {
    v3 = *(v2 + 32);
  }

  else
  {

    result = RIOPxrSdfPathCreateEmptyPath();
    v3 = result;
  }

  *a1 = v3;
  return result;
}

uint64_t Prim.children.getter(uint64_t (*a1)(void))
{
  v2 = a1(*(v1 + 16));
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    type metadata accessor for RIOPxrUsdObjectRef(0);
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

LABEL_11:

      return MEMORY[0x277D84F90];
    }
  }

  v6 = __CocoaSet.count.getter();
  if (!v6)
  {
    goto LABEL_11;
  }

LABEL_4:
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if (v6 < 0)
  {
    __break(1u);
  }

  else
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v8 = 0;
      do
      {
        v9 = v8 + 1;
        v10 = MEMORY[0x26670F670]();
        type metadata accessor for Prim();
        *(swift_allocObject() + 16) = v10;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v11 = *(v4 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v8 = v9;
      }

      while (v6 != v9);
    }

    else
    {
      type metadata accessor for Prim();
      v12 = 32;
      do
      {
        v13 = *(v5 + v12);
        *(swift_allocObject() + 16) = v13;
        v14 = v13;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v15 = *(v4 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v12 += 8;
        --v6;
      }

      while (v6);
    }

    return v4;
  }

  return result;
}

uint64_t Prim.parent.getter()
{
  v1 = *(v0 + 16);
  v2 = RIOPxrUsdObjectCopyName();
  if (String.count.getter() < 1)
  {
    v3 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v3 = RIOPxrTfTokenCreateWithCString();
  }

  v4 = v3;
  type metadata accessor for RIOPxrTfTokenRef(0);
  _sSo16RIOPxrTfTokenRefaAB14CoreFoundation9_CFObjectSCWlTm_0(&lazy protocol witness table cache variable for type RIOPxrTfTokenRef and conformance RIOPxrTfTokenRef, 255, type metadata accessor for RIOPxrTfTokenRef);
  v5 = static _CFObject.== infix(_:_:)();

  if (v5)
  {
    return 0;
  }

  result = RIOPxrUsdPrimCopyParent();
  if (result)
  {
    v7 = result;
    type metadata accessor for Prim();
    result = swift_allocObject();
    *(result + 16) = v7;
  }

  return result;
}

uint64_t VariantSets.getNames()(uint64_t (*a1)(void))
{
  result = a1(*(v1 + 16));
  if (result)
  {
    objc_opt_self();
    swift_dynamicCastObjCClassUnconditional();
    result = static Array._forceBridgeFromObjectiveC(_:result:)();
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall VariantSet.setVariantSelection(variantName:)(Swift::String variantName)
{
  v2 = *(v1 + 16);
  String.utf8CString.getter();
  RIOPxrUsdVariantSetSetVariantSelection();
}

uint64_t AnyAttribute.type.getter()
{
  v1 = *(v0 + 16);
  v2 = RIOPxrUsdAttributeCopyTypeName();
  RIOPxrSdfValueTypeNameRef.type.getter();
  v4 = v3;

  return v4;
}

uint64_t static Object.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for RIOPxrUsdObjectRef(0);
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  _sSo16RIOPxrTfTokenRefaAB14CoreFoundation9_CFObjectSCWlTm_0(&lazy protocol witness table cache variable for type RIOPxrUsdObjectRef and conformance RIOPxrUsdObjectRef, 255, type metadata accessor for RIOPxrUsdObjectRef);
  return static _CFObject.== infix(_:_:)() & 1;
}

uint64_t Prim.attributeValueResult<A>(of:type:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v9 = type metadata accessor for Optional();
  v25 = *(v9 - 8);
  v10 = *(v25 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v24 - v11;
  v13 = *(a2 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v15);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  v19 = *(v4 + 16);
  if (RIOPxrUsdPrimHasAttribute())
  {
    v20 = RIOPxrUsdPrimCopyAttribute();
    (*(a3 + 16))(v20, a2, a3, NAN);
    if ((*(v13 + 48))(v12, 1, a2) == 1)
    {
      (*(v25 + 8))(v12, v9);
      v21 = RIOPxrUsdAttributeCopyTypeName();

      *a4 = v21;
    }

    else
    {

      v23 = *(v13 + 32);
      v23(v17, v12, a2);
      v23(a4, v17, a2);
    }

    lazy protocol witness table accessor for type Object.Error and conformance Object.Error();
    type metadata accessor for Result();
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    *a4 = 0;
    lazy protocol witness table accessor for type Object.Error and conformance Object.Error();
    type metadata accessor for Result();

    return swift_storeEnumTagMultiPayload();
  }
}

void Object.subscript.setter(char *a1, void **a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v29 - v13;
  v15 = *(a3 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a2;
  v20 = v10[2];
  v30 = a1;
  v20(v14, a1, v9);
  if ((*(v15 + 48))(v14, 1, a3) == 1)
  {
    v21 = v10[1];
    v21(v14, v9);
    if (String.count.getter() < 1)
    {
      v22 = RIOPxrTfTokenEmpty();
    }

    else
    {
      v22 = RIOPxrTfTokenCreateWithCString();
    }

    v25 = v22;
    v26 = *(v4 + 16);
    RIOPxrUsdObjectClearMetadata();

    v21(v30, v9);
  }

  else
  {
    (*(v15 + 32))(v18, v14, a3);
    v23 = *(v4 + 16);
    if (String.count.getter() < 1)
    {
      v24 = RIOPxrTfTokenEmpty();
    }

    else
    {
      v24 = RIOPxrTfTokenCreateWithCString();
    }

    v27 = v24;
    v28 = (*(a4 + 8))(a3, a4);
    RIOPxrUsdObjectMetadataSetValue();

    (v10[1])(v30, v9);
    (*(v15 + 8))(v18, a3);
  }
}

{
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v24 - v13;
  v15 = *(a3 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a2;
  (*(v10 + 16))(v14, a1, v9);
  if ((*(v15 + 48))(v14, 1, a3) == 1)
  {
    v20 = *(v10 + 8);
    v20(v14, v9);
    v21 = *(v4 + 16);
    RIOPxrUsdObjectClearMetadata();
    v20(a1, v9);
  }

  else
  {
    (*(v15 + 32))(v18, v14, a3);
    v22 = *(v4 + 16);
    v23 = (*(a4 + 8))(a3, a4);
    RIOPxrUsdObjectMetadataSetValue();

    (*(v10 + 8))(a1, v9);
    (*(v15 + 8))(v18, a3);
  }
}

{
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v26 - v13;
  v15 = *(a3 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a2;
  (*(v10 + 16))(v14, a1, v9);
  if ((*(v15 + 48))(v14, 1, a3) == 1)
  {
    v20 = *(v10 + 8);
    v20(v14, v9);
    if (String.count.getter() < 1)
    {
      v21 = RIOPxrTfTokenEmpty();
    }

    else
    {
      v21 = RIOPxrTfTokenCreateWithCString();
    }

    v24 = v21;
    v25 = *(v4 + 16);
    RIOPxrUsdObjectCustomDataDictionaryClearValue();
    v20(a1, v9);
  }

  else
  {
    (*(v15 + 32))(v18, v14, a3);
    v22 = *(v4 + 16);
    v23 = (*(a4 + 8))(a3, a4);
    RIOPxrUsdObjectUiInfoDictionarySetValue();

    (*(v10 + 8))(a1, v9);
    (*(v15 + 8))(v18, a3);
  }
}

{
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v26 - v13;
  v15 = *(a3 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a2;
  (*(v10 + 16))(v14, a1, v9);
  if ((*(v15 + 48))(v14, 1, a3) == 1)
  {
    v20 = *(v10 + 8);
    v20(v14, v9);
    if (String.count.getter() < 1)
    {
      v21 = RIOPxrTfTokenEmpty();
    }

    else
    {
      v21 = RIOPxrTfTokenCreateWithCString();
    }

    v24 = v21;
    v25 = *(v4 + 16);
    RIOPxrUsdObjectCustomDataDictionaryClearValue();
    v20(a1, v9);
  }

  else
  {
    (*(v15 + 32))(v18, v14, a3);
    v22 = *(v4 + 16);
    v23 = (*(a4 + 8))(a3, a4);
    RIOPxrUsdObjectAccessibilityInfoDictionarySetValue();

    (*(v10 + 8))(a1, v9);
    (*(v15 + 8))(v18, a3);
  }
}

char *StaticTypePrim.init(prim:type:)(uint64_t a1)
{
  v1 = specialized StaticTypePrim.init(prim:type:)(a1);

  return v1;
}

char *StaticTypePrim.deinit()
{
  v1 = *v0;
  v2 = *(v0 + 2);

  v3 = *(*v0 + 96);
  v4 = *(v1 + 80);
  v5 = type metadata accessor for Properties();
  (*(*(v5 - 8) + 8))(&v0[v3], v5);
  return v0;
}

uint64_t StaticTypePrim.properties.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  swift_beginAccess();
  v5 = *(v3 + 80);
  v6 = type metadata accessor for Properties();
  return (*(*(v6 - 8) + 16))(a1, v1 + v4, v6);
}

uint64_t StaticTypePrim.subscript.getter()
{
  v2 = *(v0 + 16);

  swift_getAtKeyPath();
}

uint64_t StaticTypePrim.subscript.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v8 = *(v2 + 16);

  v5 = swift_readAtKeyPath();
  (*(*(*(v4 + *MEMORY[0x277D84568] + 8) - 8) + 16))(a2);
  v5(v7, 0);
}

uint64_t StaticTypePrim.subscript.setter(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  specialized StaticTypePrim.subscript.setter(a1, a2);
  v4 = *(*(*(v3 + *MEMORY[0x277D84568] + 8) - 8) + 8);

  return v4(a1);
}

void (*StaticTypePrim.subscript.modify(void *a1, uint64_t *a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(*a2 + *MEMORY[0x277D84568] + 8);
  v6[2] = v8;
  v9 = *(v8 - 8);
  v6[3] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v6[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v6[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v7[5] = v11;
  StaticTypePrim.subscript.getter(a2, v11);
  return StaticTypePrim.subscript.modify;
}

void StaticTypePrim.subscript.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    (*(v6 + 16))((*a1)[4], v4, v5);

    specialized StaticTypePrim.subscript.setter(v3, v8);
    v9 = *(v6 + 8);
    v9(v3, v5);
    v9(v4, v5);
  }

  else
  {
    v10 = **a1;

    specialized StaticTypePrim.subscript.setter(v4, v8);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

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

    specialized StaticTypePrim.subscript.setter(v3, v9, v8);
    v10 = *(v6 + 8);
    v10(v3, v5);
    v10(v4, v5);
  }

  else
  {
    v11 = **a1;

    specialized StaticTypePrim.subscript.setter(v4, v9, v8);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

{
  v2 = *a1;
  v3 = (*a1)[7];
  v4 = (*a1)[8];
  v5 = (*a1)[5];
  v6 = (*a1)[6];
  v8 = (*a1)[3];
  v7 = (*a1)[4];
  v9 = (*a1)[2];
  v10 = *(*a1 + 72);
  v11 = *(*a1 + 1);
  v12 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[7], v4, v5);

    specialized StaticTypePrim.subscript.setter(v3, v12, v10, v9, v8, v11);
    v13 = *(v6 + 8);
    v13(v3, v5);
    v13(v4, v5);
  }

  else
  {
    v14 = **a1;

    specialized StaticTypePrim.subscript.setter(v4, v12, v10, v9, v8, v11);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t StaticTypePrim.subscript.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(*v3 + 80);
  v8 = type metadata accessor for Properties();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v14 - v11;
  StaticTypePrim.properties.getter(&v14 - v11);
  Properties.subscript.getter(a1, v8, a2, a3, NAN);
  return (*(v9 + 8))(v12, v8);
}

uint64_t StaticTypePrim.subscript.setter(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  specialized StaticTypePrim.subscript.setter(a1, a2, a3);
  v5 = *(*(v4 + *MEMORY[0x277D84DE8] + 8) + 16);
  v6 = type metadata accessor for Optional();
  v7 = *(*(v6 - 8) + 8);

  return v7(a1, v6);
}

void (*StaticTypePrim.subscript.modify(void *a1, uint64_t *a2, uint64_t a3))(uint64_t **a1, char a2)
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
  v10 = *(*(*a2 + *MEMORY[0x277D84DE8] + 8) + 16);
  v11 = type metadata accessor for Optional();
  v9[3] = v11;
  v12 = *(v11 - 8);
  v9[4] = v12;
  v13 = *(v12 + 64);
  if (v7)
  {
    v9[5] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v9[5] = malloc(*(v12 + 64));
    v14 = malloc(v13);
  }

  v9[6] = v14;
  StaticTypePrim.subscript.getter(a2, a3, v14);
  return StaticTypePrim.subscript.modify;
}

uint64_t StaticTypePrim.subscript.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>, double a4@<D0>)
{
  v9 = *(*v4 + 80);
  v10 = type metadata accessor for Properties();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v16 - v13;
  StaticTypePrim.properties.getter(&v16 - v13);
  Properties.subscript.getter(a1, v10, a2, a3, a4);
  return (*(v11 + 8))(v14, v10);
}

uint64_t StaticTypePrim.subscript.setter(uint64_t a1, uint64_t *a2, int a3, unint64_t a4, uint64_t a5, double a6)
{
  v7 = *a2;
  specialized StaticTypePrim.subscript.setter(a1, a2, a3, a4, a5, a6);
  v8 = *(*(v7 + *MEMORY[0x277D84DE8] + 8) + 16);
  v9 = type metadata accessor for Optional();
  v10 = *(*(v9 - 8) + 8);

  return v10(a1, v9);
}

void (*StaticTypePrim.subscript.modify(uint64_t *a1, uint64_t *a2, char a3, uint64_t a4, uint64_t a5, double a6))(uint64_t **a1, char a2)
{
  v13 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v14 = malloc(0x50uLL);
  }

  v15 = v14;
  *a1 = v14;
  *(v14 + 24) = a5;
  *(v14 + 32) = v6;
  *(v14 + 16) = a4;
  *(v14 + 72) = a3 & 1;
  *(v14 + 8) = a6;
  *v14 = a2;
  v16 = *(*(*a2 + *MEMORY[0x277D84DE8] + 8) + 16);
  v17 = type metadata accessor for Optional();
  v15[5] = v17;
  v18 = *(v17 - 8);
  v15[6] = v18;
  v19 = *(v18 + 64);
  if (v13)
  {
    v15[7] = swift_coroFrameAlloc();
    v20 = swift_coroFrameAlloc();
  }

  else
  {
    v15[7] = malloc(*(v18 + 64));
    v20 = malloc(v19);
  }

  v15[8] = v20;
  StaticTypePrim.subscript.getter(a2, a5, v20, a6);
  return StaticTypePrim.subscript.modify;
}

uint64_t (*StaticTypePrim.subscript.modify(void *a1, uint64_t a2))(uint64_t *a1, char a2)
{
  a1[1] = a2;
  a1[2] = v2;
  *a1 = StaticTypePrim.subscript.getter(a2);
  return StaticTypePrim.subscript.modify;
}

uint64_t StaticTypePrim.subscript.modify(uint64_t *a1, char a2)
{
  v3 = a1[1];
  v2 = a1[2];
  v4 = *a1;
  if (a2)
  {
    v5 = *a1;

    StaticTypePrim.subscript.setter(v4, v3);
  }

  else
  {
    v7 = a1[1];

    return StaticTypePrim.subscript.setter(v4, v3);
  }
}

{
  v3 = a1[1];
  v2 = a1[2];
  v4 = *a1;
  if (a2)
  {
    v5 = *a1;

    StaticTypePrim.subscript.setter(v4, v3);
  }

  else
  {
    v7 = a1[1];

    return StaticTypePrim.subscript.setter(v4, v3);
  }
}

uint64_t StaticTypePrim.subscript.getter(uint64_t a1)
{
  return StaticTypePrim.subscript.getter(a1);
}

{
  v3 = *(*v1 + 80);
  v4 = type metadata accessor for Properties();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  StaticTypePrim.properties.getter(&v11 - v7);
  v9 = specialized Properties.subscript.getter(a1, v4);
  (*(v5 + 8))(v8, v4);
  return v9;
}

uint64_t StaticTypePrim.subscript.setter(uint64_t a1, uint64_t a2)
{
  return StaticTypePrim.subscript.setter(a1, a2);
}

{
  v5 = *v2;
  v6 = *(*v2 + 96);
  swift_beginAccess();
  v7 = *(v5 + 80);
  v8 = type metadata accessor for Properties();
  specialized Properties.subscript.setter(a1, a2, v8);
  return swift_endAccess();
}

uint64_t (*StaticTypePrim.subscript.modify(uint64_t *a1, uint64_t a2))(uint64_t *a1, char a2)
{
  a1[1] = a2;
  a1[2] = v2;
  *a1 = StaticTypePrim.subscript.getter(a2);
  return StaticTypePrim.subscript.modify;
}

uint64_t MaterialCollectionBinding.__allocating_init(materialBindingAPI:base:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

void Prim.type.setter(id *a1)
{
  v3 = *a1;
  v2 = *(v1 + 16);
  RIOPxrUsdPrimSetTypeName();
}

uint64_t Prim.properties<A>(of:)@<X0>(uint64_t a1@<X1>, char *a2@<X8>)
{
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - v8;
  v10 = *(a1 - 8);
  v11 = v10[8];
  MEMORY[0x28223BE20](v12);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v23 - v16;
  v18 = swift_dynamicCast();
  v19 = v10[7];
  if (v18)
  {
    v19(v9, 0, 1, a1);
    v20 = v10[4];
    v20(v17, v9, a1);
    v20(v14, v17, a1);
    *a2 = v2;
    v21 = type metadata accessor for Properties();
    v20(&a2[*(v21 + 28)], v14, a1);
  }

  else
  {
    v19(v9, 1, 1, a1);
    (*(v6 + 8))(v9, v5);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t Properties.subscript.setter(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a2;
  specialized Properties.subscript.setter(a1, a2, a3, a4);
  v6 = *(*(v5 + *MEMORY[0x277D84DE8] + 8) + 16);
  v7 = type metadata accessor for Optional();
  v8 = *(*(v7 - 8) + 8);

  return v8(a1, v7);
}

void Prim.setAttribute<A>(of:value:at:custom:variability:)(uint64_t *a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>, double a7@<D0>)
{
  v8 = v7;
  v14 = *a1;
  v15 = *a3;
  (*(a5 + 32))(&v21, a4, a5);
  v16 = v21;
  v17 = *(v8 + 16);
  Attribute = RIOPxrUsdPrimCreateAttribute();
  v19 = (*(a5 + 8))(a2, Attribute, a4, a5, a7);
  if (v19)
  {

    type metadata accessor for Attribute();
    v20 = swift_allocObject();
    *(v20 + 16) = Attribute;
  }

  else
  {
    v20 = RIOPxrUsdAttributeCopyTypeName();
  }

  *a6 = v20;
  *(a6 + 8) = (v19 & 1) == 0;
}

uint64_t VariantSet.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall VariantSet.addVariant(variantName:)(Swift::String variantName)
{
  v2 = *(v1 + 16);
  String.utf8CString.getter();
  RIOPxrUsdVariantSetAddVariant();
}

uint64_t VariantSet.hasAuthoredVariantSelectionOnLayer(layer:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 16);
  return RIOPxrUsdVariantSetHasAuthoredVariantSelectionOnLayer();
}

Swift::String __swiftcall VariantSet.getVariantSelection()()
{
  v0 = VariantSet.getVariantSelection()(MEMORY[0x277D00CC0]);
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall VariantSet.getName()()
{
  v0 = VariantSet.getVariantSelection()(MEMORY[0x277D00CA8]);
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t VariantSet.getVariantSelection()(uint64_t (*a1)(void))
{
  v2 = a1(*(v1 + 16));
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t VariantSet.getEditTarget()@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = RIOPxrUsdVariantSetCopyEditTarget();
  *a1 = result;
  return result;
}

uint64_t VariantSet.hasAuthoredVariant(variantName:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(v3 + 16);
  v6 = String.utf8CString.getter();
  v7 = a3(v5, v6 + 32);

  return v7;
}

Swift::String __swiftcall VariantSets.getVariantSelection(variantSetName:)(Swift::String variantSetName)
{
  v2 = *(v1 + 16);
  String.utf8CString.getter();
  v3 = RIOPxrUsdVariantSetsCopyVariantSelection();

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result._object = v8;
  result._countAndFlagsBits = v7;
  return result;
}

Swift::Bool __swiftcall VariantSets.setSelection(variantSetName:variantName:)(Swift::String variantSetName, Swift::String variantName)
{
  v3 = *(v2 + 16);
  String.utf8CString.getter();
  String.utf8CString.getter();
  LOBYTE(v3) = RIOPxrUsdVariantSetsSetSelection();

  return v3;
}

uint64_t VariantSets.getAllVariantSelections()()
{
  v1 = *(v0 + 16);
  RIOPxrUsdVariantSetsCopyAllVariantSelections();
  objc_opt_self();
  swift_dynamicCastObjCClassUnconditional();
  result = static Dictionary._forceBridgeFromObjectiveC(_:result:)();
  __break(1u);
  return result;
}

uint64_t MaterialCollectionBinding.init(materialBindingAPI:base:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t MaterialCollectionBinding.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t MaterialCollectionBinding.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t MaterialCollectionBinding.materialPath.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 24);
  result = RIOPxrUsdShadeMaterialBindingAPICopyCollectionBindingMaterialPath();
  *a1 = result;
  return result;
}

uint64_t MaterialCollectionBinding.collectionPath.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 24);
  result = RIOPxrUsdShadeMaterialBindingAPICopyCollectionBindingCollectionPath();
  *a1 = result;
  return result;
}

uint64_t MaterialCollectionBinding.primCollectionName.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 24);
  result = RIOPxrUsdShadeMaterialBindingAPICopyCollectionBindingPrimCollectionName();
  *a1 = result;
  return result;
}

void MaterialCollectionBinding.bindingStrength.getter(uint64_t *a1@<X8>)
{
  v3 = *(*(*(v1 + 16) + 16) + 16);
  v4 = RIOPxrUsdShadeMaterialBindingAPICreateFromObjectRef();
  v5 = *(v1 + 24);
  v6 = RIOPxrUsdShadeMaterialBindingAPICopyCollectionBindingStrength();

  *a1 = v6;
}

void key path getter for MaterialCollectionBinding.bindingStrength : MaterialCollectionBinding(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = *(*(*(*a1 + 16) + 16) + 16);
  v5 = RIOPxrUsdShadeMaterialBindingAPICreateFromObjectRef();
  v6 = *(v3 + 24);
  v7 = RIOPxrUsdShadeMaterialBindingAPICopyCollectionBindingStrength();

  *a2 = v7;
}

void key path setter for MaterialCollectionBinding.bindingStrength : MaterialCollectionBinding(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*(*(*a2 + 16) + 16) + 16);
  v6 = RIOPxrUsdShadeMaterialBindingAPICreateFromObjectRef();
  v5 = *(v3 + 24);
  RIOPxrUsdShadeMaterialBindingAPISetCollectionBindingStrength();
}

void MaterialCollectionBinding.bindingStrength.setter(id *a1)
{
  v5 = *a1;
  v2 = *(*(*(v1 + 16) + 16) + 16);
  v3 = RIOPxrUsdShadeMaterialBindingAPICreateFromObjectRef();
  v4 = *(v1 + 24);
  RIOPxrUsdShadeMaterialBindingAPISetCollectionBindingStrength();
}

void (*MaterialCollectionBinding.bindingStrength.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = *(v1 + 16);
  a1[1] = v3;
  v4 = *(*(v3 + 16) + 16);
  v5 = RIOPxrUsdShadeMaterialBindingAPICreateFromObjectRef();
  a1[2] = *(v1 + 24);
  v6 = RIOPxrUsdShadeMaterialBindingAPICopyCollectionBindingStrength();

  *a1 = v6;
  return MaterialCollectionBinding.bindingStrength.modify;
}

void MaterialCollectionBinding.bindingStrength.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*(a1 + 8) + 16);
  v4 = *(v3 + 16);
  v5 = *(a1 + 16);
  if (a2)
  {
    v6 = v2;
    v8 = RIOPxrUsdShadeMaterialBindingAPICreateFromObjectRef();
    RIOPxrUsdShadeMaterialBindingAPISetCollectionBindingStrength();
  }

  else
  {
    v7 = *(v3 + 16);
    v8 = RIOPxrUsdShadeMaterialBindingAPICreateFromObjectRef();
    RIOPxrUsdShadeMaterialBindingAPISetCollectionBindingStrength();
  }
}

uint64_t Object.hash(into:)()
{
  v1 = *(v0 + 16);
  type metadata accessor for RIOPxrUsdObjectRef(0);
  _sSo16RIOPxrTfTokenRefaAB14CoreFoundation9_CFObjectSCWlTm_0(&lazy protocol witness table cache variable for type RIOPxrUsdObjectRef and conformance RIOPxrUsdObjectRef, 255, type metadata accessor for RIOPxrUsdObjectRef);
  return _CFObject.hash(into:)();
}

uint64_t Object.description.getter()
{
  v1 = *(v0 + 16);
  v2 = RIOPxrUsdObjectCopyPath();
  v3 = RIOPxrSdfPathCopyString();
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

uint64_t Object.debugDescription.getter()
{
  v15[0] = 0;
  v15[1] = 0xE000000000000000;
  MEMORY[0x26670F080](60, 0xE100000000000000);
  v1 = *v0;
  v2 = _typeName(_:qualified:)();
  MEMORY[0x26670F080](v2);

  MEMORY[0x26670F080](32, 0xE100000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x26670F080](62, 0xE100000000000000);
  strcpy(v15, "\n  - name : ");
  HIWORD(v15[1]) = -5120;
  v3 = v0[2];
  v4 = RIOPxrUsdObjectCopyName();
  v5 = RIOPxrTfTokenCopyString();
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  MEMORY[0x26670F080](v6, v8);

  MEMORY[0x26670F080](v15[0], v15[1]);

  strcpy(v15, "\n  - path : ");
  HIWORD(v15[1]) = -5120;
  v9 = RIOPxrUsdObjectCopyPath();
  v10 = RIOPxrSdfPathCopyString();
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  MEMORY[0x26670F080](v11, v13);

  MEMORY[0x26670F080](v15[0], v15[1]);

  MEMORY[0x26670F080](0x736162202D20200ALL, 0xEC000000203A2065);
  type metadata accessor for RIOPxrUsdObjectRef(0);
  _print_unlocked<A, B>(_:_:)();

  MEMORY[0x26670F080](0, 0xE000000000000000);

  return 0;
}

Swift::Int Object.hashValue.getter()
{
  Hasher.init(_seed:)();
  type metadata accessor for Object();
  _sSo16RIOPxrTfTokenRefaAB14CoreFoundation9_CFObjectSCWlTm_0(&lazy protocol witness table cache variable for type Object and conformance Object, v0, type metadata accessor for Object);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Object()
{
  v2 = *v0;
  Hasher.init(_seed:)();
  type metadata accessor for Object();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Object()
{
  v1 = *(*v0 + 16);
  type metadata accessor for RIOPxrUsdObjectRef(0);
  _sSo16RIOPxrTfTokenRefaAB14CoreFoundation9_CFObjectSCWlTm_0(&lazy protocol witness table cache variable for type RIOPxrUsdObjectRef and conformance RIOPxrUsdObjectRef, 255, type metadata accessor for RIOPxrUsdObjectRef);
  return _CFObject.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Object()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Object(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  type metadata accessor for RIOPxrUsdObjectRef(0);
  v4 = *(v2 + 16);
  v5 = *(v3 + 16);
  _sSo16RIOPxrTfTokenRefaAB14CoreFoundation9_CFObjectSCWlTm_0(&lazy protocol witness table cache variable for type RIOPxrUsdObjectRef and conformance RIOPxrUsdObjectRef, 255, type metadata accessor for RIOPxrUsdObjectRef);
  return static _CFObject.== infix(_:_:)() & 1;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Object()
{
  v1 = *(*v0 + 16);
  v2 = RIOPxrUsdObjectCopyPath();
  v3 = RIOPxrSdfPathCopyString();
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

uint64_t (*Object.allowedTokens.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = Object.allowedTokens.getter();
  return Object.allowedTokens.modify;
}

void Object.allowedTokens.setter(uint64_t a1, void (*a2)(void), void (*a3)(uint64_t, Class))
{
  v7 = *(v3 + 16);
  v8 = *(a1 + 16);
  if (v8)
  {
    v13 = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v9 = 32;
    do
    {
      v10 = *(a1 + v9);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v11 = *(v13 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v9 += 8;
      --v8;
    }

    while (v8);
  }

  a2(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  a3(v7, isa);
}

uint64_t (*Object.inheritsPath.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = Object.inheritsPath.getter();
  return Object.inheritsPath.modify;
}

uint64_t Object.allowedTokens.modify(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t))
{
  v5 = *a1;
  v4 = a1[1];
  if ((a2 & 1) == 0)
  {
    return a3(*a1);
  }

  v6 = *a1;

  a3(v7);
}

uint64_t Object.hasMetadata(_:path:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *(v2 + 16);
  return RIOPxrUsdObjectHasMetadataValue();
}

uint64_t Object.clearMetadata(_:path:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *(v2 + 16);
  return RIOPxrUsdObjectClearMetadata();
}

uint64_t Object.clearCustomDataDictionaryValue(_:path:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *(v2 + 16);
  return RIOPxrUsdObjectCustomDataDictionaryClearValue();
}

uint64_t Object.authoredMetadata()(uint64_t (*a1)(void))
{
  v2 = a1(*(v1 + 16));
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    type metadata accessor for RIOPxrTfTokenRef(0);
    type metadata accessor for RIOPxrVtValueRef(0);
    _sSo16RIOPxrTfTokenRefaAB14CoreFoundation9_CFObjectSCWlTm_0(&lazy protocol witness table cache variable for type RIOPxrTfTokenRef and conformance RIOPxrTfTokenRef, 255, type metadata accessor for RIOPxrTfTokenRef);
    static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  return MEMORY[0x277D84F98];
}

void Object.subscript.getter(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  v7 = *(v3 + 16);
  v8 = RIOPxrUsdObjectCopyMetadata();
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    type metadata accessor for RIOPxrTfTokenRef(0);
    type metadata accessor for RIOPxrVtValueRef(0);
    _sSo16RIOPxrTfTokenRefaAB14CoreFoundation9_CFObjectSCWlTm_0(&lazy protocol witness table cache variable for type RIOPxrTfTokenRef and conformance RIOPxrTfTokenRef, 255, type metadata accessor for RIOPxrTfTokenRef);
    static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  v9 = *(*(a2 - 8) + 56);

  v9(a3, 1, 1, a2);
}

{
  v6 = *a1;
  v7 = *(v3 + 16);
  if (String.count.getter() < 1)
  {
    v8 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v8 = RIOPxrTfTokenCreateWithCString();
  }

  v9 = v8;
  v11 = RIOPxrUsdObjectMetadataCopyValue();

  if (v11)
  {
    RIOPxrVtValueRef.mapUSDValue<A>()(a2, a3);
  }

  else
  {
    v10 = *(*(a2 - 8) + 56);

    v10(a3, 1, 1, a2);
  }
}

void (*Object.subscript.modify(void *a1, void **a2, uint64_t a3, uint64_t a4))(uint64_t **a1, char a2)
{
  v9 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x40uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[1] = a4;
  v10[2] = v4;
  *v10 = a3;
  v12 = type metadata accessor for Optional();
  v11[3] = v12;
  v13 = *(v12 - 8);
  v11[4] = v13;
  v14 = *(v13 + 64);
  if (v9)
  {
    v11[5] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v11[5] = malloc(*(v13 + 64));
    v15 = malloc(v14);
  }

  v16 = v15;
  v17 = *a2;
  v11[6] = v15;
  v11[7] = v17;
  v20 = v17;
  v18 = v17;
  Object.subscript.getter(&v20, a3, v16);

  return Object.subscript.modify;
}

{
  v9 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x40uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[1] = a4;
  v10[2] = v4;
  *v10 = a3;
  v12 = type metadata accessor for Optional();
  v11[3] = v12;
  v13 = *(v12 - 8);
  v11[4] = v13;
  v14 = *(v13 + 64);
  if (v9)
  {
    v11[5] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v11[5] = malloc(*(v13 + 64));
    v15 = malloc(v14);
  }

  v16 = v15;
  v17 = *a2;
  v11[6] = v15;
  v11[7] = v17;
  v20 = v17;
  v18 = v17;
  Object.subscript.getter(&v20, a3, v16);

  return Object.subscript.modify;
}

{
  v9 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x40uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[1] = a4;
  v10[2] = v4;
  *v10 = a3;
  v12 = type metadata accessor for Optional();
  v11[3] = v12;
  v13 = *(v12 - 8);
  v11[4] = v13;
  v14 = *(v13 + 64);
  if (v9)
  {
    v11[5] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v11[5] = malloc(*(v13 + 64));
    v15 = malloc(v14);
  }

  v16 = v15;
  v17 = *a2;
  v11[6] = v15;
  v11[7] = v17;
  v20 = v17;
  v18 = v17;
  Object.subscript.getter(&v20, a3, v16);

  return Object.subscript.modify;
}

{
  v9 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x40uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[1] = a4;
  v10[2] = v4;
  *v10 = a3;
  v12 = type metadata accessor for Optional();
  v11[3] = v12;
  v13 = *(v12 - 8);
  v11[4] = v13;
  v14 = *(v13 + 64);
  if (v9)
  {
    v11[5] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v11[5] = malloc(*(v13 + 64));
    v15 = malloc(v14);
  }

  v16 = v15;
  v17 = *a2;
  v11[6] = v15;
  v11[7] = v17;
  v20 = v17;
  v18 = v17;
  Object.subscript.getter(&v20, a3, v16);

  return Object.subscript.modify;
}

void Object.subscript.modify(uint64_t **a1, char a2)
{
  Object.subscript.modify(a1, a2, Object.subscript.setter);
}

{
  Object.subscript.modify(a1, a2, Object.subscript.setter);
}

{
  Object.subscript.modify(a1, a2, Object.subscript.setter);
}

{
  v2 = *a1;
  v4 = (*a1)[7];
  v3 = (*a1)[8];
  v5 = (*a1)[5];
  v6 = (*a1)[6];
  if (a2)
  {
    v7 = v2[3];
    v8 = v2[4];
    v10 = v2[1];
    v9 = v2[2];
    v11 = *v2;
    (*(v8 + 16))((*a1)[5], v6, v7);
    v15 = v4;
    v16 = v3;
    Object.subscript.setter(v5, &v15, &v16, v11, v10);
    (*(v8 + 8))(v6, v7);
  }

  else
  {
    v12 = v2[1];
    v13 = v2[2];
    v14 = *v2;
    v15 = (*a1)[7];
    v16 = v3;
    Object.subscript.setter(v6, &v15, &v16, v14, v12);
  }

  free(v6);
  free(v5);

  free(v2);
}

{
  Object.subscript.modify(a1, a2, Object.subscript.setter);
}

{
  v2 = *a1;
  v4 = (*a1)[7];
  v3 = (*a1)[8];
  v5 = (*a1)[5];
  v6 = (*a1)[6];
  if (a2)
  {
    v7 = v2[3];
    v8 = v2[4];
    v10 = v2[1];
    v9 = v2[2];
    v11 = *v2;
    (*(v8 + 16))((*a1)[5], v6, v7);
    v15 = v4;
    v16 = v3;
    Object.subscript.setter(v5, &v15, &v16, v11, v10);
    (*(v8 + 8))(v6, v7);
  }

  else
  {
    v12 = v2[1];
    v13 = v2[2];
    v14 = *v2;
    v15 = (*a1)[7];
    v16 = v3;
    Object.subscript.setter(v6, &v15, &v16, v14, v12);
  }

  free(v6);
  free(v5);

  free(v2);
}

void Object.subscript.getter(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  Object.subscript.getter(a1, a2, MEMORY[0x277D00B10], a3);
}

{
  Object.subscript.getter(a1, a2, MEMORY[0x277D00AD0], a3);
}

void key path getter for Object.subscript<A>(metadata:) : <A>ObjectA(uint64_t *a1, id *a2, uint64_t a3, void (*a4)(id *, uint64_t, uint64_t))
{
  v5 = *(a2 + a3 - 16);
  v6 = *(a2 + a3 - 8);
  v7 = *a1;
  v9 = *a2;
  v8 = v9;
  a4(&v9, v5, v6);
}

void Object.subscript.getter(void *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void, void)@<X3>, uint64_t a4@<X8>)
{
  v7 = a3(*(v4 + 16), *a1);
  if (v7)
  {
    v9 = v7;
    RIOPxrVtValueRef.mapUSDValue<A>()(a2, a4);
  }

  else
  {
    v8 = *(*(a2 - 8) + 56);

    v8(a4, 1, 1, a2);
  }
}

void Object.subscript.getter(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v8 = *a2;
  v9 = *(v4 + 16);
  v10 = RIOPxrUsdObjectCustomDataDictionaryCopyValue();
  if (v10)
  {
    v12 = v10;
    RIOPxrVtValueRef.mapUSDValue<A>()(a3, a4);
  }

  else
  {
    v11 = *(*(a3 - 8) + 56);

    v11(a4, 1, 1, a3);
  }
}

{
  v7 = *a1;
  v8 = *a2;
  v9 = *(v4 + 16);
  v10 = RIOPxrUsdObjectMetadataCopyValue();
  if (v10)
  {
    v12 = v10;
    RIOPxrVtValueRef.mapUSDValue<A>()(a3, a4);
  }

  else
  {
    v11 = *(*(a3 - 8) + 56);

    v11(a4, 1, 1, a3);
  }
}

void key path getter for Object.subscript<A>(customData:key:) : <A>ObjectA(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a2 + a3 - 16);
  v5 = *(a2 + a3 - 8);
  v7 = *a1;
  v8 = *a2;
  v11 = *(a2 + 8);
  v12 = v8;
  v9 = v8;
  v10 = v11;
  Object.subscript.getter(&v12, &v11, v6, a4);
}

void key path setter for Object.subscript<A>(customData:key:) : <A>ObjectA(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 + a4 - 16);
  v8 = *(a3 + a4 - 8);
  v9 = type metadata accessor for Optional();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v20 - v12;
  v15 = *a3;
  v14 = *(a3 + 8);
  (*(v16 + 16))(&v20 - v12, a1, v11);
  v17 = *a2;
  v20 = v14;
  v21 = v15;
  v18 = v15;
  v19 = v14;
  Object.subscript.setter(v13, &v21, &v20, v7, v8);
}

void Object.subscript.setter(char *a1, void **a2, void **a3, uint64_t a4, uint64_t a5)
{
  v28 = a5;
  v10 = type metadata accessor for Optional();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v27 - v13;
  v15 = *(a4 - 8);
  v16 = *(v15 + 64);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *a2;
  v22 = *a3;
  (*(v11 + 16))(v14, a1, v10, v18);
  if ((*(v15 + 48))(v14, 1, a4) == 1)
  {
    v23 = *(v11 + 8);
    v23(v14, v10);
    v24 = *(v5 + 16);
    RIOPxrUsdObjectCustomDataDictionaryClearValue();
    v23(a1, v10);
  }

  else
  {
    (*(v15 + 32))(v20, v14, a4);
    v25 = *(v5 + 16);
    v26 = (*(v28 + 8))(a4);
    RIOPxrUsdObjectCustomDataDictionarySetValue();

    (*(v11 + 8))(a1, v10);
    (*(v15 + 8))(v20, a4);
  }
}

{
  v28 = a5;
  v10 = type metadata accessor for Optional();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v27 - v13;
  v15 = *(a4 - 8);
  v16 = *(v15 + 64);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *a2;
  v22 = *a3;
  (*(v11 + 16))(v14, a1, v10, v18);
  if ((*(v15 + 48))(v14, 1, a4) == 1)
  {
    v23 = *(v11 + 8);
    v23(v14, v10);
    v24 = *(v5 + 16);
    RIOPxrUsdObjectClearMetadata();

    v23(a1, v10);
  }

  else
  {
    (*(v15 + 32))(v20, v14, a4);
    v25 = *(v5 + 16);
    v26 = (*(v28 + 8))(a4);
    RIOPxrUsdObjectMetadataSetValue();

    (*(v11 + 8))(a1, v10);
    (*(v15 + 8))(v20, a4);
  }
}

void (*Object.subscript.modify(void *a1, void **a2, void **a3, uint64_t a4, uint64_t a5))(uint64_t **a1, char a2)
{
  v11 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(0x48uLL);
  }

  v13 = v12;
  *a1 = v12;
  v12[1] = a5;
  v12[2] = v5;
  *v12 = a4;
  v14 = type metadata accessor for Optional();
  v13[3] = v14;
  v15 = *(v14 - 8);
  v13[4] = v15;
  v16 = *(v15 + 64);
  if (v11)
  {
    v13[5] = swift_coroFrameAlloc();
    v17 = swift_coroFrameAlloc();
  }

  else
  {
    v13[5] = malloc(*(v15 + 64));
    v17 = malloc(v16);
  }

  v18 = v17;
  v19 = *a2;
  v13[6] = v17;
  v13[7] = v19;
  v20 = *a3;
  v13[8] = *a3;
  v26 = v20;
  v27 = v19;
  v21 = v19;
  v22 = v20;
  v23 = v21;
  v24 = v22;
  Object.subscript.getter(&v27, &v26, a4, v18);

  return Object.subscript.modify;
}

{
  v11 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(0x48uLL);
  }

  v13 = v12;
  *a1 = v12;
  v12[1] = a5;
  v12[2] = v5;
  *v12 = a4;
  v14 = type metadata accessor for Optional();
  v13[3] = v14;
  v15 = *(v14 - 8);
  v13[4] = v15;
  v16 = *(v15 + 64);
  if (v11)
  {
    v13[5] = swift_coroFrameAlloc();
    v17 = swift_coroFrameAlloc();
  }

  else
  {
    v13[5] = malloc(*(v15 + 64));
    v17 = malloc(v16);
  }

  v18 = v17;
  v19 = *a2;
  v13[6] = v17;
  v13[7] = v19;
  v20 = *a3;
  v13[8] = *a3;
  v26 = v20;
  v27 = v19;
  v21 = v20;
  v22 = v19;
  v23 = v21;
  v24 = v22;
  Object.subscript.getter(&v27, &v26, a4, v18);

  return Object.subscript.modify;
}

uint64_t key path setter for Object.subscript<A>(metadata:) : <A>ObjectA(uint64_t a1, uint64_t *a2, void **a3, uint64_t a4, uint64_t (*a5)(char *, void **, uint64_t, uint64_t))
{
  v9 = *(a3 + a4 - 16);
  v10 = *(a3 + a4 - 8);
  v11 = type metadata accessor for Optional();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v20 - v13;
  v15 = *a3;
  (*(v16 + 16))(&v20 - v13, a1);
  v17 = *a2;
  v21 = v15;
  v18 = v15;
  return a5(v14, &v21, v9, v10);
}

void Object.subscript.modify(uint64_t **a1, char a2, void (*a3)(void *, uint64_t *, uint64_t, uint64_t))
{
  v4 = *a1;
  v5 = (*a1)[6];
  v6 = (*a1)[7];
  v7 = (*a1)[5];
  if (a2)
  {
    v8 = v4[3];
    v9 = v4[4];
    v11 = v4[1];
    v10 = v4[2];
    v12 = *v4;
    (*(v9 + 16))((*a1)[5], v5, v8);
    v16 = v6;
    a3(v7, &v16, v12, v11);
    (*(v9 + 8))(v5, v8);
  }

  else
  {
    v13 = v4[1];
    v14 = v4[2];
    v15 = *v4;
    v16 = (*a1)[7];
    a3(v5, &v16, v15, v13);
  }

  free(v5);
  free(v7);

  free(v4);
}

void key path getter for Object.subscript<A>(metadata:_:) : <A>ObjectA(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a2 + a3 - 16);
  v5 = *(a2 + a3 - 8);
  v7 = *a1;
  v8 = *a2;
  v11 = *(a2 + 8);
  v12 = v8;
  v10 = v11;
  v9 = v8;
  Object.subscript.getter(&v12, &v11, v6, a4);
}

void key path setter for Object.subscript<A>(metadata:_:) : <A>ObjectA(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 + a4 - 16);
  v8 = *(a3 + a4 - 8);
  v9 = type metadata accessor for Optional();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v20 - v12;
  v15 = *a3;
  v14 = *(a3 + 8);
  (*(v16 + 16))(&v20 - v12, a1, v11);
  v17 = *a2;
  v20 = v14;
  v21 = v15;
  v18 = v14;
  v19 = v15;
  Object.subscript.setter(v13, &v21, &v20, v7, v8);
}

uint64_t Prim.filteredChildren(predicate:)(void *a1)
{
  return Prim.filteredChildren(predicate:)(a1, MEMORY[0x277D00B60]);
}

{
  return Prim.filteredChildren(predicate:)(a1, MEMORY[0x277D00BB0], MEMORY[0x277D00B60]);
}

{
  return Prim.filteredChildren(predicate:)(a1, MEMORY[0x277D00BD0], MEMORY[0x277D00B60]);
}

uint64_t PrimFlagsPredicate.init(_:)@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrUsdPrimFlagsPredicateCreateWithTerm();
  *a1 = result;
  return result;
}

void (*Prim.type.modify(uint64_t *a1))(uint64_t a1)
{
  a1[1] = *(v1 + 16);
  *a1 = RIOPxrUsdPrimCopyTypeName();
  return Prim.type.modify;
}

void Prim.type.modify(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *a1;
  RIOPxrUsdPrimSetTypeName();
}

uint64_t Prim.hasAuthoredTypeOnLayer(layer:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 16);
  return RIOPxrUsdPrimHasAuthoredTypeOnLayer();
}

uint64_t (*Prim.specifier.modify(uint64_t *a1))(void *a1)
{
  a1[1] = *(v1 + 16);
  *a1 = RIOPxrUsdPrimGetSpecifier();
  return Prim.specifier.modify;
}

char *Prim.propertyOrder.getter()
{
  v1 = *(v0 + 16);
  v2 = RIOPxrUsdPrimGetPropertyOrder();
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

uint64_t (*Prim.propertyOrder.modify(char **a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = Prim.propertyOrder.getter();
  return Prim.propertyOrder.modify;
}

uint64_t Prim.addReference(assetPath:path:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v6 = *a3;
  v7 = *(v4 + 16);
  v8 = String.utf8CString.getter();
  v9 = a4(v7, v8 + 32, v6);

  return v9;
}

uint64_t Prim.addReference(assetURL:path:)(uint64_t a1, uint64_t *a2, void (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v6 = *a2;
  v7 = *(v4 + 16);
  a3();
  v8 = String.utf8CString.getter();

  v9 = a4(v7, v8 + 32, v6);

  return v9;
}

uint64_t Prim.setSpecializes(_:)(uint64_t a1, void (*a2)(void), uint64_t (*a3)(uint64_t, Class))
{
  v6 = *(v3 + 16);
  v7 = *(a1 + 16);
  if (v7)
  {
    v16 = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v9 = (a1 + 32);
    do
    {
      v10 = *v9++;
      v11 = v10;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v12 = *(v16 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v7;
    }

    while (v7);
  }

  a2(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v14 = a3(v6, isa);

  return v14;
}

uint64_t Relationship.targets.getter(uint64_t (*a1)(void), void (*a2)(void), uint64_t (*a3)(BOOL, uint64_t, uint64_t))
{
  v6 = a1(*(v3 + 16));
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    a2(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();

    v9 = v8;
    if (!(v8 >> 62))
    {
      goto LABEL_3;
    }
  }

  else
  {

    v9 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
LABEL_3:
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v10)
      {
        goto LABEL_4;
      }

LABEL_13:

      return MEMORY[0x277D84F90];
    }
  }

  v10 = __CocoaSet.count.getter();
  if (!v10)
  {
    goto LABEL_13;
  }

LABEL_4:
  result = a3(0, v10 & ~(v10 >> 63), 0);
  if ((v10 & 0x8000000000000000) == 0)
  {
    v12 = v8;
    if ((v9 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v10; ++i)
      {
        v14 = MEMORY[0x26670F670](i, v9);
        v16 = *(v12 + 16);
        v15 = *(v12 + 24);
        if (v16 >= v15 >> 1)
        {
          v17 = v14;
          a3(v15 > 1, v16 + 1, 1);
          v14 = v17;
        }

        *(v12 + 16) = v16 + 1;
        *(v12 + 8 * v16 + 32) = v14;
      }
    }

    else
    {
      v18 = 32;
      do
      {
        v19 = *(v8 + 16);
        v20 = *(v8 + 24);
        v21 = *(v9 + v18);
        if (v19 >= v20 >> 1)
        {
          v22 = v20 > 1;
          v23 = v21;
          a3(v22, v19 + 1, 1);
          v21 = v23;
        }

        *(v8 + 16) = v19 + 1;
        *(v8 + 8 * v19 + 32) = v21;
        v18 += 8;
        --v10;
      }

      while (v10);
    }

    return v12;
  }

  __break(1u);
  return result;
}

void Prim.attribute<A>(of:type:)(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = *a1;
  v9 = *(v4 + 16);
  if (!RIOPxrUsdPrimHasAttribute())
  {
    v11 = 0;
LABEL_6:
    v14 = 1;
    goto LABEL_7;
  }

  v10 = RIOPxrUsdPrimCopyAttribute();
  v11 = RIOPxrUsdAttributeCopyTypeName();
  (*(a3 + 32))(&v15, a2, a3);
  v12 = v15;
  type metadata accessor for RIOPxrSdfValueTypeNameRef(0);
  _sSo16RIOPxrTfTokenRefaAB14CoreFoundation9_CFObjectSCWlTm_0(&lazy protocol witness table cache variable for type RIOPxrSdfValueTypeNameRef and conformance RIOPxrSdfValueTypeNameRef, 255, type metadata accessor for RIOPxrSdfValueTypeNameRef);
  v13 = static _CFObject.== infix(_:_:)();

  if ((v13 & 1) == 0)
  {

    goto LABEL_6;
  }

  type metadata accessor for Attribute();
  v11 = swift_allocObject();
  v14 = 0;
  v11[2] = v10;
LABEL_7:
  *a4 = v11;
  *(a4 + 8) = v14;
}

char *Prim.schemaPropertyNames()()
{
  v1 = *(v0 + 16);
  v4 = RIOPxrUsdPrimCopyTypeName();
  v2 = ToolsFoundations.Token.schemaPropertyNames()();

  return v2;
}

uint64_t Prim.attributes()(uint64_t (*a1)(void))
{
  v2 = a1(*(v1 + 16));
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    v5 = MEMORY[0x277D84F90];
    if (v4)
    {
      type metadata accessor for RIOPxrUsdObjectRef(0);
      static Array._conditionallyBridgeFromObjectiveC(_:result:)();
    }
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  if (!(v5 >> 62))
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_7;
    }

LABEL_16:

    return MEMORY[0x277D84F90];
  }

  v6 = __CocoaSet.count.getter();
  if (!v6)
  {
    goto LABEL_16;
  }

LABEL_7:
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if (v6 < 0)
  {
    __break(1u);
  }

  else
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v8 = 0;
      do
      {
        v9 = v8 + 1;
        v10 = MEMORY[0x26670F670]();
        type metadata accessor for AnyAttribute();
        *(swift_allocObject() + 16) = v10;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v11 = *(v3 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v8 = v9;
      }

      while (v6 != v9);
    }

    else
    {
      type metadata accessor for AnyAttribute();
      v12 = 32;
      do
      {
        v13 = *(v5 + v12);
        *(swift_allocObject() + 16) = v13;
        v14 = v13;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v15 = *(v3 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v12 += 8;
        --v6;
      }

      while (v6);
    }

    return v3;
  }

  return result;
}

void Prim.schemaAttributes()()
{
  v1 = *(v0 + 16);
  v9 = RIOPxrUsdPrimCopyTypeName();
  v2 = ToolsFoundations.Token.schemaPropertyNames()();

  v10 = MEMORY[0x277D84F90];
  v3 = *(v2 + 2);
  if (v3)
  {
    v4 = 0;
    do
    {
      v5 = v4;
      while (1)
      {
        if (v5 >= *(v2 + 2))
        {
          __break(1u);
          return;
        }

        v4 = v5 + 1;
        v6 = *&v2[8 * v5 + 32];
        if (RIOPxrUsdPrimHasAttribute())
        {
          break;
        }

        lazy protocol witness table accessor for type Object.Error and conformance Object.Error();
        swift_willThrowTypedImpl();

        outlined consume of Object.Error(0);
        ++v5;
        if (v3 == v4)
        {
          goto LABEL_11;
        }
      }

      v7 = RIOPxrUsdPrimCopyAttribute();
      type metadata accessor for AnyAttribute();
      *(swift_allocObject() + 16) = v7;

      MEMORY[0x26670F130]();
      if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v8 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    while (v3 - 1 != v5);
  }

LABEL_11:
}

void Prim.relationships()()
{
  v1 = v0;
  v2 = Prim.propertyNames()();
  v10 = MEMORY[0x277D84F90];
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = 0;
    do
    {
      v5 = v4;
      while (1)
      {
        if (v5 >= *(v2 + 16))
        {
          __break(1u);
          return;
        }

        v4 = v5 + 1;
        v6 = *(v1 + 16);
        v7 = *(v2 + 32 + 8 * v5);
        if (RIOPxrUsdPrimHasRelationship())
        {
          break;
        }

        lazy protocol witness table accessor for type Object.Error and conformance Object.Error();
        swift_willThrowTypedImpl();

        outlined consume of Object.Error(0);
        ++v5;
        if (v3 == v4)
        {
          goto LABEL_11;
        }
      }

      v8 = RIOPxrUsdPrimCopyRelationship();
      type metadata accessor for Relationship();
      *(swift_allocObject() + 16) = v8;

      MEMORY[0x26670F130]();
      if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v9 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    while (v3 - 1 != v5);
  }

LABEL_11:
}

uint64_t VariantSets.getVariantSet(variantSetName:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(v3 + 16);
  v6 = String.utf8CString.getter();
  v7 = a3(v5, v6 + 32);

  type metadata accessor for VariantSet();
  result = swift_allocObject();
  *(result + 16) = v7;
  return result;
}

void Prim.properties()(uint64_t (*a1)(void))
{
  v2 = v1;
  v3 = a1();
  v11 = MEMORY[0x277D84F90];
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = 0;
    do
    {
      v6 = v5;
      while (1)
      {
        if (v6 >= *(v3 + 16))
        {
          __break(1u);
          return;
        }

        v7 = *(v2 + 16);
        v8 = *(v3 + 32 + 8 * v6);
        if (RIOPxrUsdPrimHasAttribute())
        {
          v9 = RIOPxrUsdPrimCopyAttribute();
          type metadata accessor for AnyAttribute();
          goto LABEL_11;
        }

        lazy protocol witness table accessor for type Object.Error and conformance Object.Error();
        swift_willThrowTypedImpl();
        outlined consume of Object.Error(0);
        if (RIOPxrUsdPrimHasRelationship())
        {
          break;
        }

        ++v6;
        swift_willThrowTypedImpl();

        outlined consume of Object.Error(0);
        if (v4 == v6)
        {
          goto LABEL_14;
        }
      }

      v9 = RIOPxrUsdPrimCopyRelationship();
      type metadata accessor for Relationship();
LABEL_11:
      *(swift_allocObject() + 16) = v9;

      MEMORY[0x26670F130]();
      if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v10 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v5 = v6 + 1;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    while (v4 - 1 != v6);
  }

LABEL_14:
}

void Prim.schemaProperties()()
{
  v1 = *(v0 + 16);
  v9 = RIOPxrUsdPrimCopyTypeName();
  v2 = ToolsFoundations.Token.schemaPropertyNames()();

  v10 = MEMORY[0x277D84F90];
  v3 = *(v2 + 2);
  if (v3)
  {
    v4 = 0;
    do
    {
      v5 = v4;
      while (1)
      {
        if (v5 >= *(v2 + 2))
        {
          __break(1u);
          return;
        }

        v6 = *&v2[8 * v5 + 32];
        if (RIOPxrUsdPrimHasAttribute())
        {
          v7 = RIOPxrUsdPrimCopyAttribute();
          type metadata accessor for AnyAttribute();
          goto LABEL_11;
        }

        lazy protocol witness table accessor for type Object.Error and conformance Object.Error();
        swift_willThrowTypedImpl();
        outlined consume of Object.Error(0);
        if (RIOPxrUsdPrimHasRelationship())
        {
          break;
        }

        ++v5;
        swift_willThrowTypedImpl();

        outlined consume of Object.Error(0);
        if (v3 == v5)
        {
          goto LABEL_14;
        }
      }

      v7 = RIOPxrUsdPrimCopyRelationship();
      type metadata accessor for Relationship();
LABEL_11:
      *(swift_allocObject() + 16) = v7;

      MEMORY[0x26670F130]();
      if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v8 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v4 = v5 + 1;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    while (v3 - 1 != v5);
  }

LABEL_14:
}

uint64_t Prim.setAttribute<A>(of:color:as:at:custom:variability:)@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, int a3@<W3>, _BYTE *a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>, double a8@<D0>)
{
  v21[1] = a3;
  v15 = type metadata accessor for ManagedColor();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = v21 - v18;
  LOBYTE(a4) = *a4;
  v23 = *a1;
  ManagedColor.init(_:)(a2, a5, a6, v21 - v18);
  v22 = a4;
  Prim.setAttribute<A>(of:value:at:custom:variability:)(&v23, v19, &v22, v15, &protocol witness table for ManagedColor<A>, a7, a8);
  return (*(v16 + 8))(v19, v15);
}

void Prim.createAttribute<A>(of:type:custom:variability:)(uint64_t *a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, uint64_t a5, uint64_t a6)
{
  v7 = *a1;
  v8 = *a4;
  (*(a6 + 32))(&v11, a5, a6);
  v10 = v11;
  v9 = *(v6 + 16);
}

uint64_t Prim.setRelationship(of:targets:custom:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  v7 = *(v3 + 16);
  Relationship = RIOPxrUsdPrimCreateCreateRelationship();
  v9 = *(a2 + 16);
  if (v9)
  {
    v17 = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v10 = (a2 + 32);
    do
    {
      v11 = *v10++;
      v12 = v11;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v13 = *(v17 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v9;
    }

    while (v9);
  }

  type metadata accessor for RIOPxrSdfPathRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v15 = RIOPxrUsdRelationshipSetTargets();

  if (v15)
  {
    type metadata accessor for Relationship();
    result = swift_allocObject();
    *(result + 16) = Relationship;
  }

  else
  {

    result = 1;
  }

  *a3 = result;
  *(a3 + 8) = v15 ^ 1;
  return result;
}

uint64_t Prim.removeProperty(name:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 16);
  return RIOPxrUsdPrimRemoveProperty();
}

uint64_t (*Prim.active.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = *(v1 + 16);
  *(a1 + 8) = RIOPxrUsdPrimIsActive();
  return Prim.active.modify;
}

uint64_t Prim.getVariantSets()(uint64_t (*a1)(void), uint64_t a2, void (*a3)(uint64_t))
{
  v6 = a1(*(v3 + 16));
  a3(a2);
  result = swift_allocObject();
  *(result + 16) = v6;
  return result;
}

uint64_t Prim.isA(type:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 16);
  return RIOPxrUsdPrimIsAType();
}

uint64_t Prim.hasProperty(of:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 16);
  return RIOPxrUsdPrimHasProperty();
}

uint64_t Object.allowedTokens.getter(uint64_t (*a1)(void), void (*a2)(void), uint64_t (*a3)(BOOL, uint64_t, uint64_t))
{
  v6 = a1(*(v3 + 16));
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v8 = v6;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      a2(0);
      static Array._conditionallyBridgeFromObjectiveC(_:result:)();

      v9 = v7;
      if (v7 >> 62)
      {
LABEL_15:
        v10 = __CocoaSet.count.getter();
        if (!v10)
        {
          goto LABEL_16;
        }

        goto LABEL_7;
      }
    }

    else
    {

      v9 = MEMORY[0x277D84F90];
      if (MEMORY[0x277D84F90] >> 62)
      {
        goto LABEL_15;
      }
    }
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
    if (MEMORY[0x277D84F90] >> 62)
    {
      goto LABEL_15;
    }
  }

  v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v10)
  {
LABEL_16:

    return MEMORY[0x277D84F90];
  }

LABEL_7:
  result = a3(0, v10 & ~(v10 >> 63), 0);
  if ((v10 & 0x8000000000000000) == 0)
  {
    v12 = v7;
    if ((v9 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v10; ++i)
      {
        v14 = MEMORY[0x26670F670](i, v9);
        v16 = *(v12 + 16);
        v15 = *(v12 + 24);
        if (v16 >= v15 >> 1)
        {
          v17 = v14;
          a3(v15 > 1, v16 + 1, 1);
          v14 = v17;
        }

        *(v12 + 16) = v16 + 1;
        *(v12 + 8 * v16 + 32) = v14;
      }
    }

    else
    {
      v18 = 32;
      do
      {
        v19 = *(v7 + 16);
        v20 = *(v7 + 24);
        v21 = *(v9 + v18);
        if (v19 >= v20 >> 1)
        {
          v22 = v20 > 1;
          v23 = v21;
          a3(v22, v19 + 1, 1);
          v21 = v23;
        }

        *(v7 + 16) = v19 + 1;
        *(v7 + 8 * v19 + 32) = v21;
        v18 += 8;
        --v10;
      }

      while (v10);
    }

    return v12;
  }

  __break(1u);
  return result;
}

uint64_t (*Prim.appliedSchemas.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = Prim.appliedSchemas.getter();
  return Prim.appliedSchemas.modify;
}

uint64_t Prim.addAppliedSchema(of:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 16);
  return RIOPxrUsdPrimAddAppliedSchema();
}

uint64_t Prim.removeAppliedSchema(of:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 16);
  return RIOPxrUsdPrimRemoveAppliedSchema();
}

uint64_t Prim.prototype.getter()
{
  v1 = *(v0 + 16);
  result = RIOPxrUsdPrimCopyPrototype();
  if (result)
  {
    v3 = result;
    type metadata accessor for Prim();
    result = swift_allocObject();
    *(result + 16) = v3;
  }

  return result;
}

uint64_t (*Prim.taggedAsEntity.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = *(v1 + 16);
  *(a1 + 8) = RIOPxrUsdPrimGetTaggedAsEntity();
  return Prim.taggedAsEntity.modify;
}

void Prim.propertyOrder.setter(uint64_t a1, void (*a2)(uint64_t, Class))
{
  v5 = *(v2 + 16);
  v6 = *(a1 + 16);
  if (v6)
  {
    v11 = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v7 = 32;
    do
    {
      v8 = *(a1 + v7);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v9 = *(v11 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v7 += 8;
      --v6;
    }

    while (v6);
  }

  type metadata accessor for RIOPxrTfTokenRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  a2(v5, isa);
}

uint64_t (*Prim.childrenOrder.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = Prim.childrenOrder.getter();
  return Prim.childrenOrder.modify;
}

uint64_t Prim.filteredDescendants(predicate:)(void *a1)
{
  return Prim.filteredChildren(predicate:)(a1, MEMORY[0x277D00B68]);
}

{
  return Prim.filteredChildren(predicate:)(a1, MEMORY[0x277D00BB0], MEMORY[0x277D00B68]);
}

{
  return Prim.filteredChildren(predicate:)(a1, MEMORY[0x277D00BD0], MEMORY[0x277D00B68]);
}

uint64_t Prim.filteredChildren(predicate:)(void *a1, uint64_t (*a2)(void, void))
{
  v3 = a2(*(v2 + 16), *a1);
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    type metadata accessor for RIOPxrUsdObjectRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();

    v6 = v5;
    if (!(v5 >> 62))
    {
      goto LABEL_3;
    }
  }

  else
  {

    v6 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
LABEL_3:
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7)
      {
        goto LABEL_4;
      }

LABEL_11:

      return MEMORY[0x277D84F90];
    }
  }

  v7 = __CocoaSet.count.getter();
  if (!v7)
  {
    goto LABEL_11;
  }

LABEL_4:
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if (v7 < 0)
  {
    __break(1u);
  }

  else
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v9 = 0;
      do
      {
        v10 = v9 + 1;
        v11 = MEMORY[0x26670F670]();
        type metadata accessor for Prim();
        *(swift_allocObject() + 16) = v11;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v12 = *(v5 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v9 = v10;
      }

      while (v7 != v10);
    }

    else
    {
      type metadata accessor for Prim();
      v13 = 32;
      do
      {
        v14 = *(v6 + v13);
        *(swift_allocObject() + 16) = v14;
        v15 = v14;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v16 = *(v5 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v13 += 8;
        --v7;
      }

      while (v7);
    }

    return v5;
  }

  return result;
}

uint64_t Prim.filteredChildren(predicate:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void **))
{
  v4 = RIOPxrUsdPrimFlagsPredicateCreateWithTerm();
  v7 = v4;
  v5 = a3(&v7);

  return v5;
}

uint64_t Prim.filteredChildren(predicate:)(void *a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, id))
{
  v5 = *(v3 + 16);
  v6 = a2(*a1);
  v7 = a3(v5, v6);

  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    type metadata accessor for RIOPxrUsdObjectRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();

    v10 = v9;
    if (!(v9 >> 62))
    {
      goto LABEL_3;
    }
  }

  else
  {

    v10 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
LABEL_3:
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v11)
      {
        goto LABEL_4;
      }

LABEL_11:

      return MEMORY[0x277D84F90];
    }
  }

  v11 = __CocoaSet.count.getter();
  if (!v11)
  {
    goto LABEL_11;
  }

LABEL_4:
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if (v11 < 0)
  {
    __break(1u);
  }

  else
  {
    if ((v10 & 0xC000000000000001) != 0)
    {
      v13 = 0;
      do
      {
        v14 = v13 + 1;
        v15 = MEMORY[0x26670F670]();
        type metadata accessor for Prim();
        *(swift_allocObject() + 16) = v15;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v16 = *(v9 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v13 = v14;
      }

      while (v11 != v14);
    }

    else
    {
      type metadata accessor for Prim();
      v17 = 32;
      do
      {
        v18 = *(v10 + v17);
        *(swift_allocObject() + 16) = v18;
        v19 = v18;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v20 = *(v9 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v17 += 8;
        --v11;
      }

      while (v11);
    }

    return v9;
  }

  return result;
}

void Prim.traverse(with:)()
{
  AllPrimsPredicate = RIOPxrUsdPrimFlagsCreateAllPrimsPredicate();
  v4 = RIOPxrUsdPrimFlagsConjunctionPredicateToRIOPxrUsdPrimFlagsPredicate();

  v2 = *(v0 + 16);
  v5 = RIOPxrUsdPrimCopyFilteredDescendants();
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    type metadata accessor for RIOPxrUsdObjectRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();

    v3 = v4;
  }

  else
  {

    v3 = v5;
  }
}

uint64_t static PrimFlagsConjunctionPredicate.AllPrims.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrUsdPrimFlagsCreateAllPrimsPredicate();
  *a1 = result;
  return result;
}

void __swiftcall Prim.localTransformation(at:)(simd_double4x4_optional *__return_ptr retstr, Swift::Double at)
{
  v31 = *MEMORY[0x277D85DE8];
  if (String.count.getter() < 1)
  {
    v4 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v4 = RIOPxrTfTokenCreateWithCString();
  }

  v5 = v4;
  v6 = *(v2 + 16);
  IsAType = RIOPxrUsdPrimIsAType();

  if (IsAType && RIOPxrUsdGeomXformableXformQueryGetLocalTransformation())
  {
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    _sSo14simd_double4x4aSgWOi_(&v13);
    v28 = v19;
    v29 = v20;
    v30 = v21;
    v24 = v15;
    v25 = v16;
    v26 = v17;
    v27 = v18;
    v22 = v13;
    v23 = v14;
  }

  else
  {
    _sSo14simd_double4x4aSgWOi0_(&v22);
  }

  v8 = v29;
  *retstr->value.columns[3].f64 = v28;
  *&retstr->value.columns[3].f64[2] = v8;
  retstr->is_nil = v30;
  v9 = v25;
  *retstr->value.columns[1].f64 = v24;
  *&retstr->value.columns[1].f64[2] = v9;
  v10 = v27;
  *retstr->value.columns[2].f64 = v26;
  *&retstr->value.columns[2].f64[2] = v10;
  v11 = v23;
  *retstr->value.columns[0].f64 = v22;
  *&retstr->value.columns[0].f64[2] = v11;
  v12 = *MEMORY[0x277D85DE8];
}

uint64_t Prim.timeSamples.getter()
{
  if (String.count.getter() < 1)
  {
    v1 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v1 = RIOPxrTfTokenCreateWithCString();
  }

  v2 = v1;
  v3 = *(v0 + 16);
  IsAType = RIOPxrUsdPrimIsAType();

  v5 = MEMORY[0x277D84F90];
  if (IsAType)
  {
    CopyTimeSamples = RIOPxrUsdGeomXformableXformQueryCopyTimeSamples();
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  return v5;
}

char *Property.propertyStack(time:)()
{
  v1 = *(v0 + 16);
  v2 = RIOPxrUsdPropertyCopyPropertyStack();
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    type metadata accessor for RIOPxrSdfReferenceRef(0);
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

uint64_t Property.isAuthoredAt(target:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 16);
  return RIOPxrUsdPropertyIsAuthoredAt();
}

uint64_t Property.baseName()@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = RIOPxrUsdPropertyCopyBaseName();
  *a1 = result;
  return result;
}

uint64_t Property.namespace()@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = RIOPxrUsdPropertyCopyNamespace();
  *a1 = result;
  return result;
}

uint64_t Property.splitName()()
{
  v1 = *(v0 + 16);
  v2 = RIOPxrUsdPropertyCopySplitName();
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  return MEMORY[0x277D84F90];
}

uint64_t Attribute.value.getter()
{
  v1 = v0;
  v2 = *(*v0 + 96);
  return static UsdAttributeValue.getValue(from:time:)(v1);
}

uint64_t Attribute.value.setter(uint64_t a1)
{
  v3 = *v1;
  specialized Attribute.value.setter(a1);
  v4 = *(*(*(v3 + 96) - 8) + 8);

  return v4(a1);
}

void (*Attribute.value.modify(void *a1))(void ***a1, char a2)
{
  v2 = v1;
  v4 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x28uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = v2;
  v7 = *(*v2 + 96);
  v5[1] = v7;
  v8 = *(v7 - 8);
  v5[2] = v8;
  v9 = *(v8 + 64);
  if (v4)
  {
    v5[3] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(v9);
    v10 = malloc(v9);
  }

  v6[4] = v10;
  v11 = *(*v2 + 96);
  static UsdAttributeValue.getValue(from:time:)(v2);
  return Attribute.value.modify;
}

void Attribute.value.modify(void ***a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = (*a1)[4];
  v5 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = **a1;
  if (a2)
  {
    (v6[2])((*a1)[3], v4, v5);
    v8 = *(*v7 + 96);
    static UsdAttributeValue.setValue(_:to:time:)(v3, v7);
    v9 = v6[1];
    v9(v3, v5);
    v9(v4, v5);
  }

  else
  {
    v10 = *(*v7 + 96);
    static UsdAttributeValue.setValue(_:to:time:)((*a1)[4], v7);
    (v6[1])(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t Attribute.subscript.getter()
{
  v1 = v0;
  v2 = *(*v0 + 96);
  return static UsdAttributeValue.getValue(from:time:)(v1);
}

uint64_t Attribute.subscript.setter(uint64_t a1)
{
  v3 = *v1;
  specialized Attribute.subscript.setter(a1);
  v4 = *(*(*(v3 + 96) - 8) + 8);

  return v4(a1);
}

void (*Attribute.subscript.modify(uint64_t *a1, double a2))(uint64_t **a1, char a2)
{
  v3 = v2;
  v6 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x30uLL);
  }

  v8 = v7;
  *a1 = v7;
  *(v7 + 8) = v3;
  *v7 = a2;
  v9 = *(*v3 + 96);
  *(v7 + 16) = v9;
  v10 = *(v9 - 8);
  *(v7 + 24) = v10;
  v11 = *(v10 + 64);
  if (v6)
  {
    *(v7 + 32) = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    *(v7 + 32) = malloc(v11);
    v12 = malloc(v11);
  }

  *(v8 + 40) = v12;
  v13 = *(*v3 + 96);
  static UsdAttributeValue.getValue(from:time:)(v3);
  return Attribute.subscript.modify;
}

void Attribute.subscript.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v7 = (*a1)[1];
  v8 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[4], v4, v5);
    v9 = *(*v7 + 96);
    static UsdAttributeValue.setValue(_:to:time:)(v3, v7);
    v10 = *(v6 + 8);
    v10(v3, v5);
    v10(v4, v5);
  }

  else
  {
    v11 = *(*v7 + 96);
    static UsdAttributeValue.setValue(_:to:time:)((*a1)[5], v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

void Relationship.targets.setter(uint64_t a1)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = *(v1 + 16);
    v10 = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v5 = 32;
    do
    {
      v6 = *(a1 + v5);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v7 = *(v10 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v5 += 8;
      --v3;
    }

    while (v3);

    type metadata accessor for RIOPxrSdfPathRef(0);
    isa = Array._bridgeToObjectiveC()().super.isa;

    RIOPxrUsdRelationshipSetTargets();
  }

  else
  {

    v8 = *(v1 + 16);

    MEMORY[0x282156278](v8, 1);
  }
}

uint64_t (*Relationship.targets.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = Relationship.targets.getter();
  return Relationship.targets.modify;
}

void key path setter for Relationship.target : Relationship(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVGMd, &_ss23_ContiguousArrayStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2619891C0;
  *(inited + 32) = v2;
  v5 = v2;
  Relationship.targets.setter(inited);
}

void Relationship.target.setter(uint64_t *a1)
{
  v1 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVGMd, &_ss23_ContiguousArrayStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2619891C0;
  *(inited + 32) = v1;
  Relationship.targets.setter(inited);
}

void (*Relationship.target.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = Relationship.targets.getter();
  if (*(v5 + 16))
  {
    EmptyPath = *(v5 + 32);
  }

  else
  {

    EmptyPath = RIOPxrSdfPathCreateEmptyPath();
  }

  *(v4 + 80) = EmptyPath;
  return Relationship.target.modify;
}

void Relationship.target.modify(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVGMd, &_ss23_ContiguousArrayStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVGMR);
  if (a2)
  {
    v5 = *(v3 + 88);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2619891C0;
    *(inited + 32) = v4;
    v7 = v4;
    Relationship.targets.setter(inited);
  }

  else
  {
    v8 = *(v3 + 88);
    v9 = swift_initStackObject();
    *(v9 + 16) = xmmword_2619891C0;
    *(v9 + 32) = v4;
    Relationship.targets.setter(v9);
  }

  free(v3);
}