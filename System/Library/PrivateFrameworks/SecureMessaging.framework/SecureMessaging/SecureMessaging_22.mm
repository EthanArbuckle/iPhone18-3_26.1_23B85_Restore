uint64_t _s15SecureMessaging3MLSO15OperationRunnerC10onQueueRun9operation15metricCollector11cachedGroup0L11KeyPackagesAE02OngH6ResultVx_AA06MetricK0VAC21SwiftMLSGroupProtocol_pSgAC0N14PackageFetcherC05FetchQ0VSgtYa9ErrorTypeQzYKAC0mD0RzlFTY26_()
{
  v1 = *(v0 + 3504);
  v2 = *(v0 + 3496);
  v3 = *(v0 + 3488);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2480));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2600));
  (*(*(v0 + 3064) + 8))(*(v0 + 3072), *(v0 + 3056));
  memcpy((v0 + 896), (v0 + 16), 0x1B8uLL);

  v4 = swift_task_alloc();
  *(v0 + 3400) = v4;
  *v4 = v0;
  v4[1] = _s15SecureMessaging3MLSO15OperationRunnerC10onQueueRun9operation15metricCollector11cachedGroup0L11KeyPackagesAE02OngH6ResultVx_AA06MetricK0VAC21SwiftMLSGroupProtocol_pSgAC0N14PackageFetcherC05FetchQ0VSgtYa9ErrorTypeQzYKAC0mD0RzlFTQ11_;
  v5 = *(v0 + 3008);
  v6 = *(v0 + 3000);
  v7 = *(v0 + 2992);
  v8 = *(v0 + 2976);
  v9 = *(v0 + 2968);

  return MLS.OperationRunner.handle<A>(operationResult:for:)(v9, v0 + 896, v8, v7, v6);
}

uint64_t _s15SecureMessaging3MLSO15OperationRunnerC10onQueueRun9operation15metricCollector11cachedGroup0L11KeyPackagesAE02OngH6ResultVx_AA06MetricK0VAC21SwiftMLSGroupProtocol_pSgAC0N14PackageFetcherC05FetchQ0VSgtYa9ErrorTypeQzYKAC0mD0RzlFTY27_()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2480));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2600));
  v1 = *(v0 + 3536);
  v2 = *(v0 + 3504);
  v3 = *(v0 + 3496);
  v4 = *(v0 + 3488);
  v5 = *(v0 + 3072);
  v6 = *(v0 + 3064);
  v7 = *(v0 + 3056);

  (*(v6 + 8))(v5, v7);

  *(v0 + 3416) = v1;
  v8 = *(v0 + 3000);
  v9 = *(v0 + 2992);
  v10 = *(v0 + 2976);
  v11 = *(v8 + 112);
  v12 = v1;
  v13 = v11(v9, v8);
  outlined consume of MLS.GroupOperationErrorHandlingPolicy(v13);

  if (v13 < 2)
  {
    v14 = *(v0 + 3088);
    v15 = *(v0 + 3056);
    *(v0 + 2944) = v1;
    v16 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if (swift_dynamicCast())
    {
      v17 = *(v0 + 3000);
      v18 = *(v0 + 2992);
      v19 = *(v0 + 2976);
      (*(*(v0 + 3064) + 32))(*(v0 + 3080), *(v0 + 3088), *(v0 + 3056));
      v20 = v11(v18, v17);
      if (v20 == 1)
      {
        v21 = *(v0 + 3008);

        v22 = *(v21 + OBJC_IVAR____TtCO15SecureMessaging3MLS15OperationRunner_groupHealer);
        outlined init with copy of MLS.GroupLoader.LoadedGroupAndOperation(v0 + 1880, v0 + 1968);
        v23 = (v0 + 2008);
        if (*(v0 + 2048))
        {
          v24 = *(v0 + 2024);
          *(v0 + 2520) = *v23;
          *(v0 + 2536) = v24;
          *(v0 + 2552) = *(v0 + 2040);
        }

        else
        {
          outlined init with take of MLS.KeyUpdatePolicy(v23, v0 + 2520);
        }

        __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1968));
        v75 = *(*v22 + 168);
        v92 = v75 + *v75;
        v76 = v75[1];
        v77 = swift_task_alloc();
        *(v0 + 3472) = v77;
        *v77 = v0;
        v77[1] = _s15SecureMessaging3MLSO15OperationRunnerC10onQueueRun9operation15metricCollector11cachedGroup0L11KeyPackagesAE02OngH6ResultVx_AA06MetricK0VAC21SwiftMLSGroupProtocol_pSgAC0N14PackageFetcherC05FetchQ0VSgtYa9ErrorTypeQzYKAC0mD0RzlFTQ17_;
        v78 = *(v0 + 3304);
        v79 = *(v0 + 3296);
        v80 = *(v0 + 3080);
        v81 = *(v0 + 3008);
        v82 = *(v0 + 2992);
        v83 = *(v0 + 2976);
        v94 = *(v0 + 3000);
        v95 = *(v0 + 3176);

        __asm { BRAA            X8, X16 }
      }

      v38 = *(v0 + 3304);
      v39 = *(v0 + 3080);
      v40 = *(v0 + 3064);
      v41 = *(v0 + 3056);
      outlined consume of MLS.GroupOperationErrorHandlingPolicy(v20);

      (*(v40 + 8))(v39, v41);
      v42 = *(v0 + 2960);
    }

    else
    {
      v32 = *(v0 + 3304);
      v33 = *(v0 + 2960);
    }

    goto LABEL_13;
  }

  v25 = *(v0 + 3304);
  v26 = *(v0 + 3000);
  v27 = *(v0 + 2992);
  v28 = *(v0 + 2976);

  v29 = v11(v27, v26);
  *(v0 + 3424) = v29;
  *(v0 + 3432) = v30;
  if (v29 < 2)
  {
    outlined consume of MLS.GroupOperationErrorHandlingPolicy(v29);
    v31 = *(v0 + 2960);

    swift_willThrow();
LABEL_13:
    v43 = *(v0 + 3192);
    v44 = *(v0 + 3128);
    *(v0 + 2928) = v1;
    v45 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if (swift_dynamicCast())
    {
      v46 = *(v0 + 3184);
      v47 = *(v0 + 3136);
      v48 = *(v0 + 3128);
      v49 = *(v0 + 3032);
      v50 = *(v0 + 3016);
      (*(v47 + 32))(v46, *(v0 + 3192), v48);
      (*(v47 + 16))(v50, v46, v48);
      swift_willThrowTyped(v50, v48, *(*(v49 + 8) + 8));

      (*(v47 + 8))(v46, v48);
      outlined destroy of MLS.GroupLoader.LoadedGroupAndOperation(v0 + 1880);
    }

    else
    {
      v51 = *(v0 + 3128);
      v52 = *(v0 + 3048);
      v53 = *(v0 + 3040);
      v54 = *(v0 + 3032);
      v55 = *(v0 + 3024);
      v56 = *(v0 + 3016);

      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      (*(AssociatedConformanceWitness + 104))(v53, AssociatedConformanceWitness);
      swift_getErrorValue();
      v58 = *(v0 + 2792);
      v59 = Error.readableDescription.getter(*(v0 + 2800), *(v0 + 2808));
      (*(v54 + 104))(v52, v59, v60, v51, v54);
      swift_willThrowTyped(v56, v51, *(*(v54 + 8) + 8));

      outlined destroy of MLS.GroupLoader.LoadedGroupAndOperation(v0 + 1880);
    }

    v61 = *(v0 + 3232);
    v62 = *(v0 + 3208);
    v63 = *(v0 + 3200);
    v64 = *(v0 + 3192);
    v65 = *(v0 + 3184);
    v66 = *(v0 + 3176);
    v67 = *(v0 + 3168);
    v68 = *(v0 + 3160);
    v69 = *(v0 + 3152);
    v70 = *(v0 + 3144);
    v84 = *(v0 + 3120);
    v85 = *(v0 + 3112);
    v86 = *(v0 + 3096);
    v87 = *(v0 + 3088);
    v88 = *(v0 + 3080);
    v89 = *(v0 + 3072);
    v90 = *(v0 + 3048);

    v71 = *(v0 + 8);

    return v71();
  }

  v34 = v29;
  v35 = (v0 + 2560);
  outlined init with copy of MLS.GroupLoader.LoadedGroupAndOperation(v0 + 1880, v0 + 2056);
  v36 = (v0 + 2096);
  if (*(v0 + 2136))
  {
    v37 = *(v0 + 2112);
    *v35 = *v36;
    *(v0 + 2576) = v37;
    *(v0 + 2592) = *(v0 + 2128);
  }

  else
  {
    outlined init with take of MLS.KeyUpdatePolicy(v36, v0 + 2560);
  }

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2056));
  *(v0 + 2904) = *(v0 + 2960);
  v91 = (v34 + *v34);
  v73 = v34[1];
  v74 = swift_task_alloc();
  *(v0 + 3440) = v74;
  *v74 = v0;
  v74[1] = _s15SecureMessaging3MLSO15OperationRunnerC10onQueueRun9operation15metricCollector11cachedGroup0L11KeyPackagesAE02OngH6ResultVx_AA06MetricK0VAC21SwiftMLSGroupProtocol_pSgAC0N14PackageFetcherC05FetchQ0VSgtYa9ErrorTypeQzYKAC0mD0RzlFTQ14_;

  return v91(v0 + 456, v1, v35, v0 + 2904);
}

uint64_t _s15SecureMessaging3MLSO15OperationRunnerC10onQueueRun9operation15metricCollector11cachedGroup0L11KeyPackagesAE02OngH6ResultVx_AA06MetricK0VAC21SwiftMLSGroupProtocol_pSgAC0N14PackageFetcherC05FetchQ0VSgtYa9ErrorTypeQzYKAC0mD0RzlFTY28_()
{
  v1 = *(v0 + 3032);
  v2 = *(*(v0 + 3136) + 32);
  v2(*(v0 + 3152), *(v0 + 3160), *(v0 + 3128));
  v3 = *(*(v1 + 8) + 8);
  v4 = _getErrorEmbeddedNSError<A>(_:)();
  v5 = *(v0 + 3152);
  if (v4)
  {
    v6 = v4;
    (*(*(v0 + 3136) + 8))(*(v0 + 3152), *(v0 + 3128));
  }

  else
  {
    v7 = *(v0 + 3128);
    v6 = swift_allocError();
    v2(v8, v5, v7);
  }

  (*(*(v0 + 3064) + 8))(*(v0 + 3072), *(v0 + 3056));

  *(v0 + 3416) = v6;
  v9 = *(v0 + 3000);
  v10 = *(v0 + 2992);
  v11 = *(v0 + 2976);
  v12 = *(v9 + 112);
  v13 = v6;
  v14 = v12(v10, v9);
  outlined consume of MLS.GroupOperationErrorHandlingPolicy(v14);

  if (v14 < 2)
  {
    v15 = *(v0 + 3088);
    v16 = *(v0 + 3056);
    *(v0 + 2944) = v6;
    v17 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if (swift_dynamicCast())
    {
      v18 = *(v0 + 3000);
      v19 = *(v0 + 2992);
      v20 = *(v0 + 2976);
      (*(*(v0 + 3064) + 32))(*(v0 + 3080), *(v0 + 3088), *(v0 + 3056));
      v21 = v12(v19, v18);
      if (v21 == 1)
      {
        v22 = *(v0 + 3008);

        v23 = *(v22 + OBJC_IVAR____TtCO15SecureMessaging3MLS15OperationRunner_groupHealer);
        outlined init with copy of MLS.GroupLoader.LoadedGroupAndOperation(v0 + 1880, v0 + 1968);
        v24 = (v0 + 2008);
        if (*(v0 + 2048))
        {
          v25 = *(v0 + 2024);
          *(v0 + 2520) = *v24;
          *(v0 + 2536) = v25;
          *(v0 + 2552) = *(v0 + 2040);
        }

        else
        {
          outlined init with take of MLS.KeyUpdatePolicy(v24, v0 + 2520);
        }

        __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1968));
        v76 = *(*v23 + 168);
        v93 = v76 + *v76;
        v77 = v76[1];
        v78 = swift_task_alloc();
        *(v0 + 3472) = v78;
        *v78 = v0;
        v78[1] = _s15SecureMessaging3MLSO15OperationRunnerC10onQueueRun9operation15metricCollector11cachedGroup0L11KeyPackagesAE02OngH6ResultVx_AA06MetricK0VAC21SwiftMLSGroupProtocol_pSgAC0N14PackageFetcherC05FetchQ0VSgtYa9ErrorTypeQzYKAC0mD0RzlFTQ17_;
        v79 = *(v0 + 3304);
        v80 = *(v0 + 3296);
        v81 = *(v0 + 3080);
        v82 = *(v0 + 3008);
        v83 = *(v0 + 2992);
        v84 = *(v0 + 2976);
        v95 = *(v0 + 3000);
        v96 = *(v0 + 3176);

        __asm { BRAA            X8, X16 }
      }

      v39 = *(v0 + 3304);
      v40 = *(v0 + 3080);
      v41 = *(v0 + 3064);
      v42 = *(v0 + 3056);
      outlined consume of MLS.GroupOperationErrorHandlingPolicy(v21);

      (*(v41 + 8))(v40, v42);
      v43 = *(v0 + 2960);
    }

    else
    {
      v33 = *(v0 + 3304);
      v34 = *(v0 + 2960);
    }

    goto LABEL_16;
  }

  v26 = *(v0 + 3304);
  v27 = *(v0 + 3000);
  v28 = *(v0 + 2992);
  v29 = *(v0 + 2976);

  v30 = v12(v28, v27);
  *(v0 + 3424) = v30;
  *(v0 + 3432) = v31;
  if (v30 < 2)
  {
    outlined consume of MLS.GroupOperationErrorHandlingPolicy(v30);
    v32 = *(v0 + 2960);

    swift_willThrow();
LABEL_16:
    v44 = *(v0 + 3192);
    v45 = *(v0 + 3128);
    *(v0 + 2928) = v6;
    v46 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v47 = swift_dynamicCast();
    v48 = *(v0 + 3032);
    if (v47)
    {
      v49 = *(v0 + 3184);
      v50 = *(v0 + 3136);
      v51 = *(v0 + 3128);
      v52 = *(v0 + 3016);
      (*(v50 + 32))(v49, *(v0 + 3192), v51);
      (*(v50 + 16))(v52, v49, v51);
      swift_willThrowTyped(v52, v51, *(*(v48 + 8) + 8));

      (*(v50 + 8))(v49, v51);
      outlined destroy of MLS.GroupLoader.LoadedGroupAndOperation(v0 + 1880);
    }

    else
    {
      v53 = *(v0 + 3128);
      v54 = *(v0 + 3048);
      v55 = *(v0 + 3040);
      v56 = *(v0 + 3024);
      v57 = *(v0 + 3016);

      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      (*(AssociatedConformanceWitness + 104))(v55, AssociatedConformanceWitness);
      swift_getErrorValue();
      v59 = *(v0 + 2792);
      v60 = Error.readableDescription.getter(*(v0 + 2800), *(v0 + 2808));
      (*(v48 + 104))(v54, v60, v61, v53, v48);
      swift_willThrowTyped(v57, v53, *(*(v48 + 8) + 8));

      outlined destroy of MLS.GroupLoader.LoadedGroupAndOperation(v0 + 1880);
    }

    v62 = *(v0 + 3232);
    v63 = *(v0 + 3208);
    v64 = *(v0 + 3200);
    v65 = *(v0 + 3192);
    v66 = *(v0 + 3184);
    v67 = *(v0 + 3176);
    v68 = *(v0 + 3168);
    v69 = *(v0 + 3160);
    v70 = *(v0 + 3152);
    v71 = *(v0 + 3144);
    v85 = *(v0 + 3120);
    v86 = *(v0 + 3112);
    v87 = *(v0 + 3096);
    v88 = *(v0 + 3088);
    v89 = *(v0 + 3080);
    v90 = *(v0 + 3072);
    v91 = *(v0 + 3048);

    v72 = *(v0 + 8);

    return v72();
  }

  v35 = v30;
  v36 = (v0 + 2560);
  outlined init with copy of MLS.GroupLoader.LoadedGroupAndOperation(v0 + 1880, v0 + 2056);
  v37 = (v0 + 2096);
  if (*(v0 + 2136))
  {
    v38 = *(v0 + 2112);
    *v36 = *v37;
    *(v0 + 2576) = v38;
    *(v0 + 2592) = *(v0 + 2128);
  }

  else
  {
    outlined init with take of MLS.KeyUpdatePolicy(v37, v0 + 2560);
  }

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2056));
  *(v0 + 2904) = *(v0 + 2960);
  v92 = (v35 + *v35);
  v74 = v35[1];
  v75 = swift_task_alloc();
  *(v0 + 3440) = v75;
  *v75 = v0;
  v75[1] = _s15SecureMessaging3MLSO15OperationRunnerC10onQueueRun9operation15metricCollector11cachedGroup0L11KeyPackagesAE02OngH6ResultVx_AA06MetricK0VAC21SwiftMLSGroupProtocol_pSgAC0N14PackageFetcherC05FetchQ0VSgtYa9ErrorTypeQzYKAC0mD0RzlFTQ14_;

  return v92(v0 + 456, v6, v36, v0 + 2904);
}

uint64_t _s15SecureMessaging3MLSO15OperationRunnerC10onQueueRun9operation15metricCollector11cachedGroup0L11KeyPackagesAE02OngH6ResultVx_AA06MetricK0VAC21SwiftMLSGroupProtocol_pSgAC0N14PackageFetcherC05FetchQ0VSgtYa9ErrorTypeQzYKAC0mD0RzlFTY29_()
{
  outlined destroy of MLS.GroupOperationResult(v0 + 896);
  v1 = *(v0 + 3408);
  *(v0 + 3416) = v1;
  v2 = *(v0 + 3000);
  v3 = *(v0 + 2992);
  v4 = *(v0 + 2976);
  v5 = *(v2 + 112);
  v6 = v1;
  v7 = v5(v3, v2);
  outlined consume of MLS.GroupOperationErrorHandlingPolicy(v7);

  if (v7 < 2)
  {
    v8 = *(v0 + 3088);
    v9 = *(v0 + 3056);
    *(v0 + 2944) = v1;
    v10 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if (swift_dynamicCast())
    {
      v11 = *(v0 + 3000);
      v12 = *(v0 + 2992);
      v13 = *(v0 + 2976);
      (*(*(v0 + 3064) + 32))(*(v0 + 3080), *(v0 + 3088), *(v0 + 3056));
      v14 = v5(v12, v11);
      if (v14 == 1)
      {
        v15 = *(v0 + 3008);

        v16 = *(v15 + OBJC_IVAR____TtCO15SecureMessaging3MLS15OperationRunner_groupHealer);
        outlined init with copy of MLS.GroupLoader.LoadedGroupAndOperation(v0 + 1880, v0 + 1968);
        v17 = (v0 + 2008);
        if (*(v0 + 2048))
        {
          v18 = *(v0 + 2024);
          *(v0 + 2520) = *v17;
          *(v0 + 2536) = v18;
          *(v0 + 2552) = *(v0 + 2040);
        }

        else
        {
          outlined init with take of MLS.KeyUpdatePolicy(v17, v0 + 2520);
        }

        __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1968));
        v69 = *(*v16 + 168);
        v86 = v69 + *v69;
        v70 = v69[1];
        v71 = swift_task_alloc();
        *(v0 + 3472) = v71;
        *v71 = v0;
        v71[1] = _s15SecureMessaging3MLSO15OperationRunnerC10onQueueRun9operation15metricCollector11cachedGroup0L11KeyPackagesAE02OngH6ResultVx_AA06MetricK0VAC21SwiftMLSGroupProtocol_pSgAC0N14PackageFetcherC05FetchQ0VSgtYa9ErrorTypeQzYKAC0mD0RzlFTQ17_;
        v72 = *(v0 + 3304);
        v73 = *(v0 + 3296);
        v74 = *(v0 + 3080);
        v75 = *(v0 + 3008);
        v76 = *(v0 + 2992);
        v77 = *(v0 + 2976);
        v88 = *(v0 + 3000);
        v89 = *(v0 + 3176);

        __asm { BRAA            X8, X16 }
      }

      v32 = *(v0 + 3304);
      v33 = *(v0 + 3080);
      v34 = *(v0 + 3064);
      v35 = *(v0 + 3056);
      outlined consume of MLS.GroupOperationErrorHandlingPolicy(v14);

      (*(v34 + 8))(v33, v35);
      v36 = *(v0 + 2960);
    }

    else
    {
      v26 = *(v0 + 3304);
      v27 = *(v0 + 2960);
    }

    goto LABEL_13;
  }

  v19 = *(v0 + 3304);
  v20 = *(v0 + 3000);
  v21 = *(v0 + 2992);
  v22 = *(v0 + 2976);

  v23 = v5(v21, v20);
  *(v0 + 3424) = v23;
  *(v0 + 3432) = v24;
  if (v23 < 2)
  {
    outlined consume of MLS.GroupOperationErrorHandlingPolicy(v23);
    v25 = *(v0 + 2960);

    swift_willThrow();
LABEL_13:
    v37 = *(v0 + 3192);
    v38 = *(v0 + 3128);
    *(v0 + 2928) = v1;
    v39 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if (swift_dynamicCast())
    {
      v40 = *(v0 + 3184);
      v41 = *(v0 + 3136);
      v42 = *(v0 + 3128);
      v43 = *(v0 + 3032);
      v44 = *(v0 + 3016);
      (*(v41 + 32))(v40, *(v0 + 3192), v42);
      (*(v41 + 16))(v44, v40, v42);
      swift_willThrowTyped(v44, v42, *(*(v43 + 8) + 8));

      (*(v41 + 8))(v40, v42);
      outlined destroy of MLS.GroupLoader.LoadedGroupAndOperation(v0 + 1880);
    }

    else
    {
      v45 = *(v0 + 3128);
      v46 = *(v0 + 3048);
      v47 = *(v0 + 3040);
      v48 = *(v0 + 3032);
      v49 = *(v0 + 3024);
      v50 = *(v0 + 3016);

      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      (*(AssociatedConformanceWitness + 104))(v47, AssociatedConformanceWitness);
      swift_getErrorValue();
      v52 = *(v0 + 2792);
      v53 = Error.readableDescription.getter(*(v0 + 2800), *(v0 + 2808));
      (*(v48 + 104))(v46, v53, v54, v45, v48);
      swift_willThrowTyped(v50, v45, *(*(v48 + 8) + 8));

      outlined destroy of MLS.GroupLoader.LoadedGroupAndOperation(v0 + 1880);
    }

    v55 = *(v0 + 3232);
    v56 = *(v0 + 3208);
    v57 = *(v0 + 3200);
    v58 = *(v0 + 3192);
    v59 = *(v0 + 3184);
    v60 = *(v0 + 3176);
    v61 = *(v0 + 3168);
    v62 = *(v0 + 3160);
    v63 = *(v0 + 3152);
    v64 = *(v0 + 3144);
    v78 = *(v0 + 3120);
    v79 = *(v0 + 3112);
    v80 = *(v0 + 3096);
    v81 = *(v0 + 3088);
    v82 = *(v0 + 3080);
    v83 = *(v0 + 3072);
    v84 = *(v0 + 3048);

    v65 = *(v0 + 8);

    return v65();
  }

  v28 = v23;
  v29 = (v0 + 2560);
  outlined init with copy of MLS.GroupLoader.LoadedGroupAndOperation(v0 + 1880, v0 + 2056);
  v30 = (v0 + 2096);
  if (*(v0 + 2136))
  {
    v31 = *(v0 + 2112);
    *v29 = *v30;
    *(v0 + 2576) = v31;
    *(v0 + 2592) = *(v0 + 2128);
  }

  else
  {
    outlined init with take of MLS.KeyUpdatePolicy(v30, v0 + 2560);
  }

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2056));
  *(v0 + 2904) = *(v0 + 2960);
  v85 = (v28 + *v28);
  v67 = v28[1];
  v68 = swift_task_alloc();
  *(v0 + 3440) = v68;
  *v68 = v0;
  v68[1] = _s15SecureMessaging3MLSO15OperationRunnerC10onQueueRun9operation15metricCollector11cachedGroup0L11KeyPackagesAE02OngH6ResultVx_AA06MetricK0VAC21SwiftMLSGroupProtocol_pSgAC0N14PackageFetcherC05FetchQ0VSgtYa9ErrorTypeQzYKAC0mD0RzlFTQ14_;

  return v85(v0 + 456, v1, v29, v0 + 2904);
}

uint64_t _s15SecureMessaging3MLSO15OperationRunnerC10onQueueRun9operation15metricCollector11cachedGroup0L11KeyPackagesAE02OngH6ResultVx_AA06MetricK0VAC21SwiftMLSGroupProtocol_pSgAC0N14PackageFetcherC05FetchQ0VSgtYa9ErrorTypeQzYKAC0mD0RzlFTY30_()
{
  v1 = *(v0 + 3432);
  v2 = *(v0 + 3416);
  outlined consume of MLS.GroupOperationErrorHandlingPolicy(*(v0 + 3424));

  v3 = *(v0 + 3448);
  v4 = *(v0 + 3192);
  v5 = *(v0 + 3128);
  *(v0 + 2928) = v3;
  v6 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    v7 = *(v0 + 3184);
    v8 = *(v0 + 3136);
    v9 = *(v0 + 3128);
    v10 = *(v0 + 3032);
    v11 = *(v0 + 3016);
    (*(v8 + 32))(v7, *(v0 + 3192), v9);
    (*(v8 + 16))(v11, v7, v9);
    swift_willThrowTyped(v11, v9, *(*(v10 + 8) + 8));

    (*(v8 + 8))(v7, v9);
    outlined destroy of MLS.GroupLoader.LoadedGroupAndOperation(v0 + 1880);
  }

  else
  {
    v12 = *(v0 + 3128);
    v13 = *(v0 + 3048);
    v14 = *(v0 + 3040);
    v15 = *(v0 + 3032);
    v16 = *(v0 + 3024);
    v17 = *(v0 + 3016);

    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 104))(v14, AssociatedConformanceWitness);
    swift_getErrorValue();
    v19 = *(v0 + 2792);
    v20 = Error.readableDescription.getter(*(v0 + 2800), *(v0 + 2808));
    (*(v15 + 104))(v13, v20, v21, v12, v15);
    swift_willThrowTyped(v17, v12, *(*(v15 + 8) + 8));

    outlined destroy of MLS.GroupLoader.LoadedGroupAndOperation(v0 + 1880);
  }

  v22 = *(v0 + 3232);
  v23 = *(v0 + 3208);
  v24 = *(v0 + 3200);
  v25 = *(v0 + 3192);
  v26 = *(v0 + 3184);
  v27 = *(v0 + 3176);
  v28 = *(v0 + 3168);
  v29 = *(v0 + 3160);
  v30 = *(v0 + 3152);
  v31 = *(v0 + 3144);
  v34 = *(v0 + 3120);
  v35 = *(v0 + 3112);
  v36 = *(v0 + 3096);
  v37 = *(v0 + 3088);
  v38 = *(v0 + 3080);
  v39 = *(v0 + 3072);
  v40 = *(v0 + 3048);

  v32 = *(v0 + 8);

  return v32();
}

uint64_t _s15SecureMessaging3MLSO15OperationRunnerC10onQueueRun9operation15metricCollector11cachedGroup0L11KeyPackagesAE02OngH6ResultVx_AA06MetricK0VAC21SwiftMLSGroupProtocol_pSgAC0N14PackageFetcherC05FetchQ0VSgtYa9ErrorTypeQzYKAC0mD0RzlFTY31_()
{
  v1 = *(v0 + 3432);
  v2 = *(v0 + 3416);
  outlined consume of MLS.GroupOperationErrorHandlingPolicy(*(v0 + 3424));

  v3 = *(v0 + 3464);
  v4 = *(v0 + 3192);
  v5 = *(v0 + 3128);
  *(v0 + 2928) = v3;
  v6 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    v7 = *(v0 + 3184);
    v8 = *(v0 + 3136);
    v9 = *(v0 + 3128);
    v10 = *(v0 + 3032);
    v11 = *(v0 + 3016);
    (*(v8 + 32))(v7, *(v0 + 3192), v9);
    (*(v8 + 16))(v11, v7, v9);
    swift_willThrowTyped(v11, v9, *(*(v10 + 8) + 8));

    (*(v8 + 8))(v7, v9);
    outlined destroy of MLS.GroupLoader.LoadedGroupAndOperation(v0 + 1880);
  }

  else
  {
    v12 = *(v0 + 3128);
    v13 = *(v0 + 3048);
    v14 = *(v0 + 3040);
    v15 = *(v0 + 3032);
    v16 = *(v0 + 3024);
    v17 = *(v0 + 3016);

    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 104))(v14, AssociatedConformanceWitness);
    swift_getErrorValue();
    v19 = *(v0 + 2792);
    v20 = Error.readableDescription.getter(*(v0 + 2800), *(v0 + 2808));
    (*(v15 + 104))(v13, v20, v21, v12, v15);
    swift_willThrowTyped(v17, v12, *(*(v15 + 8) + 8));

    outlined destroy of MLS.GroupLoader.LoadedGroupAndOperation(v0 + 1880);
  }

  v22 = *(v0 + 3232);
  v23 = *(v0 + 3208);
  v24 = *(v0 + 3200);
  v25 = *(v0 + 3192);
  v26 = *(v0 + 3184);
  v27 = *(v0 + 3176);
  v28 = *(v0 + 3168);
  v29 = *(v0 + 3160);
  v30 = *(v0 + 3152);
  v31 = *(v0 + 3144);
  v34 = *(v0 + 3120);
  v35 = *(v0 + 3112);
  v36 = *(v0 + 3096);
  v37 = *(v0 + 3088);
  v38 = *(v0 + 3080);
  v39 = *(v0 + 3072);
  v40 = *(v0 + 3048);

  v32 = *(v0 + 8);

  return v32();
}

uint64_t _s15SecureMessaging3MLSO15OperationRunnerC10onQueueRun9operation15metricCollector11cachedGroup0L11KeyPackagesAE02OngH6ResultVx_AA06MetricK0VAC21SwiftMLSGroupProtocol_pSgAC0N14PackageFetcherC05FetchQ0VSgtYa9ErrorTypeQzYKAC0mD0RzlFTY32_()
{
  v1 = *(v0 + 3032);
  v2 = *(*(v0 + 3136) + 32);
  v2(*(v0 + 3144), *(v0 + 3176), *(v0 + 3128));
  v3 = *(*(v1 + 8) + 8);
  v4 = _getErrorEmbeddedNSError<A>(_:)();
  v5 = *(v0 + 3144);
  if (v4)
  {
    v6 = v4;
    (*(*(v0 + 3136) + 8))(*(v0 + 3144), *(v0 + 3128));
  }

  else
  {
    v7 = *(v0 + 3128);
    v6 = swift_allocError();
    v2(v8, v5, v7);
  }

  (*(*(v0 + 3064) + 8))(*(v0 + 3080), *(v0 + 3056));

  v9 = *(v0 + 3192);
  v10 = *(v0 + 3128);
  *(v0 + 2928) = v6;
  v11 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v12 = swift_dynamicCast();
  v13 = *(v0 + 3032);
  if (v12)
  {
    v14 = *(v0 + 3184);
    v15 = *(v0 + 3136);
    v16 = *(v0 + 3128);
    v17 = *(v0 + 3016);
    (*(v15 + 32))(v14, *(v0 + 3192), v16);
    (*(v15 + 16))(v17, v14, v16);
    swift_willThrowTyped(v17, v16, *(*(v13 + 8) + 8));

    (*(v15 + 8))(v14, v16);
    outlined destroy of MLS.GroupLoader.LoadedGroupAndOperation(v0 + 1880);
  }

  else
  {
    v18 = *(v0 + 3128);
    v19 = *(v0 + 3048);
    v20 = *(v0 + 3040);
    v21 = *(v0 + 3024);
    v22 = *(v0 + 3016);

    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 104))(v20, AssociatedConformanceWitness);
    swift_getErrorValue();
    v24 = *(v0 + 2792);
    v25 = Error.readableDescription.getter(*(v0 + 2800), *(v0 + 2808));
    (*(v13 + 104))(v19, v25, v26, v18, v13);
    swift_willThrowTyped(v22, v18, *(*(v13 + 8) + 8));

    outlined destroy of MLS.GroupLoader.LoadedGroupAndOperation(v0 + 1880);
  }

  v27 = *(v0 + 3232);
  v28 = *(v0 + 3208);
  v29 = *(v0 + 3200);
  v30 = *(v0 + 3192);
  v31 = *(v0 + 3184);
  v32 = *(v0 + 3176);
  v33 = *(v0 + 3168);
  v34 = *(v0 + 3160);
  v35 = *(v0 + 3152);
  v36 = *(v0 + 3144);
  v39 = *(v0 + 3120);
  v40 = *(v0 + 3112);
  v41 = *(v0 + 3096);
  v42 = *(v0 + 3088);
  v43 = *(v0 + 3080);
  v44 = *(v0 + 3072);
  v45 = *(v0 + 3048);

  v37 = *(v0 + 8);

  return v37();
}

uint64_t MLS.OperationRunner.handle<A>(operationResult:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[181] = v5;
  v6[180] = a5;
  v6[179] = a4;
  v6[178] = a3;
  v6[177] = a2;
  v6[176] = a1;
  v7 = *(a4 - 8);
  v6[182] = v7;
  v6[183] = *(v7 + 64);
  v6[184] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v6[185] = swift_task_alloc();
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6[186] = AssociatedConformanceWitness;
  v6[187] = *(*(AssociatedConformanceWitness + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[188] = AssociatedTypeWitness;
  v11 = *(*(AssociatedTypeWitness - 8) + 64) + 15;
  v6[189] = swift_task_alloc();
  v12 = swift_checkMetadataState();
  v6[190] = v12;
  v13 = *(v12 - 8);
  v6[191] = v13;
  v14 = *(v13 + 64) + 15;
  v6[192] = swift_task_alloc();
  v6[193] = swift_task_alloc();
  v6[194] = swift_task_alloc();
  v6[195] = swift_task_alloc();
  v6[196] = swift_task_alloc();
  v6[197] = swift_task_alloc();
  v15 = swift_getAssociatedTypeWitness();
  v6[198] = v15;
  v16 = *(v15 - 8);
  v6[199] = v16;
  v17 = *(v16 + 64) + 15;
  v6[200] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v18 = static MLSActor.shared;
  v6[201] = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.OperationRunner.handle<A>(operationResult:for:), v18, 0);
}

uint64_t MLS.OperationRunner.handle<A>(operationResult:for:)()
{
  v101 = v0;
  v1 = *(v0 + 1600);
  v2 = *(v0 + 1592);
  v3 = *(v0 + 1584);
  v4 = *(v0 + 1440);
  v5 = *(v0 + 1432);
  v6 = *(v0 + 1424);
  v7 = *(v0 + 1416);
  v8 = *(v7 + 416);
  *(v0 + 1616) = v8;
  v9 = *(v4 + 56);
  v87 = v8;

  v90 = v9(v5, v4);
  v92 = v10;
  *(v0 + 1624) = v90;
  *(v0 + 1632) = v10;
  v11 = (*(v4 + 72))(v5, v4);
  v13 = v12;
  *(v0 + 1640) = v11;
  *(v0 + 1648) = v12;
  (*(v4 + 80))(v5, v4);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v15 = (*(AssociatedConformanceWitness + 16))(v3, AssociatedConformanceWitness);
  v17 = v16;
  v89 = v15;
  *(v0 + 1656) = v15;
  *(v0 + 1664) = v16;
  (*(v2 + 8))(v1, v3);
  outlined init with copy of MLS.GroupOperationResult.Kind(v7, v0 + 16);
  if (*(v0 + 424))
  {
    if (*(v0 + 424) == 1)
    {
      v18 = *(v0 + 1448);

      v19 = *(v0 + 96);
      v97 = *(v0 + 80);
      v98 = v19;
      v99 = *(v0 + 112);
      v20 = *(v0 + 32);
      v93 = *(v0 + 16);
      v94 = v20;
      v21 = *(v0 + 64);
      v95 = *(v0 + 48);
      v96 = v21;

      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v100 = v25;
        *v24 = 136315394;
        v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v90, v92, &v100);

        *(v24 + 4) = v26;
        *(v24 + 12) = 2080;
        v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v89, v17, &v100);

        *(v24 + 14) = v27;
        _os_log_impl(&dword_264F1F000, v22, v23, "OperationRunner %s returning from queue operation { identifier: %s }", v24, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266755550](v25, -1, -1);
        MEMORY[0x266755550](v24, -1, -1);
      }

      else
      {
      }

      v58 = *(v0 + 1408);
      v59 = v95;
      *(v58 + 56) = v96;
      v60 = v98;
      *(v58 + 72) = v97;
      *(v58 + 88) = v60;
      v61 = v94;
      *(v58 + 8) = v93;
      *(v58 + 24) = v61;
      *v58 = v87;
      *(v58 + 104) = v99;
      *(v58 + 40) = v59;
      *(v58 + 112) = 0;
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 120));
      v62 = *(v0 + 1600);
      v63 = *(v0 + 1576);
      v64 = *(v0 + 1568);
      v65 = *(v0 + 1560);
      v66 = *(v0 + 1552);
      v67 = *(v0 + 1544);
      v68 = *(v0 + 1536);
      v69 = *(v0 + 1512);
      v70 = *(v0 + 1480);
      v71 = *(v0 + 1472);

      v72 = *(v0 + 8);

      return v72();
    }

    else
    {
      v50 = *(v0 + 1448);

      outlined init with take of MLS.KeyUpdatePolicy((v0 + 16), v0 + 1248);
      v51 = *(v0 + 72);
      *(v0 + 1288) = *(v0 + 56);
      *(v0 + 1304) = v51;
      *(v0 + 1320) = *(v0 + 88);

      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        *&v93 = v55;
        *v54 = 136315394;
        v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v90, v92, &v93);

        *(v54 + 4) = v56;
        *(v54 + 12) = 2080;
        v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v89, v17, &v93);

        *(v54 + 14) = v57;
        _os_log_impl(&dword_264F1F000, v52, v53, "OperationRunner %s enqueueing new sub-operation { identifier: %s }", v54, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266755550](v55, -1, -1);
        MEMORY[0x266755550](v54, -1, -1);
      }

      else
      {
      }

      v73 = *(v0 + 1448);
      v74 = *(v0 + 1272);
      *(v0 + 1752) = v74;
      v75 = *(v0 + 1280);
      *(v0 + 1760) = v75;
      v76 = __swift_project_boxed_opaque_existential_1((v0 + 1248), v74);
      *(v0 + 1392) = v87;
      *(v0 + 1368) = 0;
      *(v0 + 1384) = 0;
      *(v0 + 1376) = 0;
      v77 = *(*v73 + 224);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      *(v0 + 1768) = AssociatedTypeWitness;
      v79 = *(AssociatedTypeWitness - 8);
      *(v0 + 1776) = v79;
      *(v0 + 1784) = *(v79 + 64);
      v80 = swift_task_alloc();
      *(v0 + 1792) = v80;
      v91 = (v77 + *v77);
      v81 = v77[1];
      v82 = swift_task_alloc();
      *(v0 + 1800) = v82;
      *v82 = v0;
      v82[1] = MLS.OperationRunner.handle<A>(operationResult:for:);
      v83 = *(v0 + 1448);
      v84 = *(v0 + 1408);

      return (v91)(v84, v76, v0 + 1392, v0 + 1288, v0 + 1368, v74, v75, v80);
    }
  }

  else
  {
    v28 = *(v0 + 1520);
    v29 = *(v0 + 1512);
    v30 = *(v0 + 1504);
    v86 = *(v0 + 1496);
    v88 = *(v0 + 1576);
    v85 = *(v0 + 1488);
    v31 = *(v0 + 1448);
    v32 = *(v0 + 160);
    *(v0 + 560) = *(v0 + 144);
    *(v0 + 576) = v32;
    *(v0 + 592) = *(v0 + 176);
    *(v0 + 608) = *(v0 + 192);
    v33 = *(v0 + 96);
    *(v0 + 496) = *(v0 + 80);
    *(v0 + 512) = v33;
    v34 = *(v0 + 128);
    *(v0 + 528) = *(v0 + 112);
    *(v0 + 544) = v34;
    v35 = *(v0 + 32);
    *(v0 + 432) = *(v0 + 16);
    *(v0 + 448) = v35;
    v36 = *(v0 + 64);
    *(v0 + 464) = *(v0 + 48);
    *(v0 + 480) = v36;
    v37 = *(v0 + 216);
    v38 = *(v0 + 248);
    *(v0 + 960) = *(v0 + 232);
    *(v0 + 976) = v38;
    *(v0 + 985) = *(v0 + 257);
    *(v0 + 928) = *(v0 + 200);
    *(v0 + 944) = v37;
    v39 = *(v0 + 360);
    *(v0 + 888) = *(v0 + 344);
    *(v0 + 904) = v39;
    *(v0 + 920) = *(v0 + 376);
    v40 = *(v0 + 296);
    *(v0 + 824) = *(v0 + 280);
    *(v0 + 840) = v40;
    v41 = *(v0 + 328);
    *(v0 + 856) = *(v0 + 312);
    *(v0 + 872) = v41;
    outlined init with take of MLS.KeyUpdatePolicy((v0 + 384), v0 + 1328);
    v42 = swift_task_alloc();
    *(v0 + 1672) = v42;
    v42[2] = v11;
    v42[3] = v13;
    v42[4] = v0 + 1328;
    v42[5] = v31;
    v43 = swift_getAssociatedConformanceWitness();
    *(v0 + 1680) = v43;
    (*(v43 + 56))(v30, v43);
    VersatileError.init(type:)(v29, v28, v86);
    v44 = swift_allocObject();
    *(v0 + 1688) = v44;
    v44[2] = v31;
    v44[3] = v90;
    v44[4] = v92;
    v44[5] = v89;
    v44[6] = v17;

    v45 = swift_task_alloc();
    *(v0 + 1696) = v45;
    *v45 = v0;
    v45[1] = MLS.OperationRunner.handle<A>(operationResult:for:);
    v46 = *(v0 + 1576);
    v47 = *(v0 + 1568);
    v48 = *(v0 + 1520);
    v103 = *(v0 + 1496);
    v104 = v47;

    return _s15SecureMessaging12asyncRethrow_2as3logq_q_yYaYbKXK_xySSYbcSgtYaxYKAA14VersatileErrorRzr0_lF(v0 + 720, async function pointer to partial apply for implicit closure #1 in MLS.OperationRunner.handle<A>(operationResult:for:), v42, v46, partial apply for closure #1 in MLS.OperationRunner.handle<A>(operationResult:for:), v44, v48);
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 1696);
  v4 = *(*v1 + 1576);
  v5 = *(*v1 + 1528);
  v6 = *(*v1 + 1520);
  v7 = *v1;

  v8 = *(v5 + 8);
  v2[213] = v8;
  v2[214] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v4, v6);
  v9 = v2[211];
  if (v0)
  {
    v10 = v2[208];
    v11 = v2[206];
    v12 = v2[204];
    v13 = v2[202];
    v14 = v2[201];

    v15 = MLS.OperationRunner.handle<A>(operationResult:for:);
    v16 = v14;
  }

  else
  {
    v17 = v2[201];

    v15 = MLS.OperationRunner.handle<A>(operationResult:for:);
    v16 = v17;
  }

  return MEMORY[0x2822009F8](v15, v16, 0);
}

{
  v40 = v0;
  v1 = *(v0 + 1664);
  v2 = *(v0 + 1632);
  v3 = *(v0 + 1448);
  v4 = *(v0 + 800);
  *(v0 + 680) = *(v0 + 784);
  *(v0 + 696) = v4;
  *(v0 + 712) = *(v0 + 816);
  v5 = *(v0 + 736);
  *(v0 + 616) = *(v0 + 720);
  *(v0 + 632) = v5;
  v6 = *(v0 + 768);
  *(v0 + 648) = *(v0 + 752);
  *(v0 + 664) = v6;
  *(v0 + 1720) = OBJC_IVAR____TtCO15SecureMessaging3MLS15OperationRunner_logger;

  outlined init with copy of MLS.RetryAfterGroupVersionBehavior(v0 + 928, v0 + 1008);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  outlined destroy of MLS.RetryAfterGroupVersionBehavior(v0 + 928);
  if (os_log_type_enabled(v7, v8))
  {
    v37 = *(v0 + 1664);
    v9 = *(v0 + 1656);
    v10 = *(v0 + 1632);
    v11 = *(v0 + 1624);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v39 = v13;
    *v12 = 136315650;
    *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v10, &v39);
    *(v12 + 12) = 2080;
    *(v12 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v37, &v39);
    *(v12 + 22) = 2080;
    v14 = *(v0 + 928);
    *(v0 + 1104) = *(v0 + 944);
    v15 = *(v0 + 976);
    *(v0 + 1120) = *(v0 + 960);
    *(v0 + 1136) = v15;
    *(v0 + 1145) = *(v0 + 985);
    *(v0 + 1088) = v14;
    outlined init with copy of MLS.RetryAfterGroupVersionBehavior(v0 + 928, v0 + 1168);
    v16 = String.init<A>(describing:)();
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v39);

    *(v12 + 24) = v18;
    _os_log_impl(&dword_264F1F000, v7, v8, "OperationRunner %s sending event { identifier: %s, retryBehavior: %s }", v12, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v13, -1, -1);
    MEMORY[0x266755550](v12, -1, -1);
  }

  v19 = *(v0 + 1680);
  v36 = *(v0 + 1656);
  v38 = *(v0 + 1664);
  v34 = *(v0 + 1624);
  v35 = *(v0 + 1632);
  v33 = *(v0 + 1560);
  v20 = *(v0 + 1520);
  v21 = *(v0 + 1512);
  v22 = *(v0 + 1504);
  v23 = *(v0 + 1496);
  v24 = *(v0 + 1448);
  v25 = *(v0 + 1416);
  v26 = swift_task_alloc();
  *(v0 + 1728) = v26;
  v26[2] = v24;
  v26[3] = v0 + 432;
  v26[4] = v0 + 616;
  v26[5] = v0 + 928;
  v26[6] = v25;
  (*(v19 + 96))(v22, v19);
  VersatileError.init(type:)(v21, v20, v23);
  v27 = swift_allocObject();
  *(v0 + 1736) = v27;
  v27[2] = v24;
  v27[3] = v34;
  v27[4] = v35;
  v27[5] = v36;
  v27[6] = v38;

  v28 = swift_task_alloc();
  *(v0 + 1744) = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScTyyts5NeverOGMd, &_sScTyyts5NeverOGMR);
  *v28 = v0;
  v28[1] = MLS.OperationRunner.handle<A>(operationResult:for:);
  v29 = *(v0 + 1560);
  v30 = *(v0 + 1552);
  v31 = *(v0 + 1520);
  v42 = *(v0 + 1496);
  v43 = v30;

  return _s15SecureMessaging12asyncRethrow_2as3logq_q_yYaYbKXK_xySSYbcSgtYaxYKAA14VersatileErrorRzr0_lF(v0 + 1400, async function pointer to partial apply for implicit closure #5 in MLS.OperationRunner.handle<A>(operationResult:for:), v26, v29, partial apply for closure #2 in MLS.OperationRunner.handle<A>(operationResult:for:), v27, v31);
}

{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 1744);
  v5 = *(*v1 + 1712);
  v6 = *(*v1 + 1704);
  v7 = *(*v1 + 1560);
  v8 = *(*v1 + 1520);
  v9 = *v1;

  v6(v7, v8);
  v10 = v2[217];
  if (v0)
  {
    v11 = v3[208];
    v12 = v3[206];
    v13 = v3[204];
    v14 = v3[202];
    v15 = v3[201];

    v16 = MLS.OperationRunner.handle<A>(operationResult:for:);
  }

  else
  {
    v17 = v3[216];
    v15 = v3[201];

    v16 = MLS.OperationRunner.handle<A>(operationResult:for:);
  }

  return MEMORY[0x2822009F8](v16, v15, 0);
}

{
  v58 = v0;
  v1 = *(v0 + 1424);
  v2 = *(v0 + 1400);
  v3 = (*(*(v0 + 1440) + 120))(*(v0 + 1432));
  v4 = *(v0 + 1648);
  if (v3)
  {
    v5 = *(v0 + 1608);
    v6 = *(v0 + 1480);
    v54 = v6;
    v55 = v2;
    v7 = *(v0 + 1472);
    v8 = *(v0 + 1464);
    v9 = *(v0 + 1456);
    v52 = *(v0 + 1640);
    v53 = *(v0 + 1448);
    v10 = *(v0 + 1424);
    v11 = type metadata accessor for TaskPriority();
    v56 = *(v0 + 1432);
    (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
    (*(v9 + 16))(v7, v10, v56);
    v12 = lazy protocol witness table accessor for type MLSActor and conformance MLSActor();
    v13 = (*(v9 + 80) + 64) & ~*(v9 + 80);
    v14 = (v8 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
    v15 = swift_allocObject();
    *(v15 + 16) = v5;
    *(v15 + 24) = v12;
    *(v15 + 32) = v56;
    *(v15 + 48) = v52;
    *(v15 + 56) = v4;
    (*(v9 + 32))(v15 + v13, v7, v56);
    v2 = v55;
    *(v15 + v14) = v53;

    _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v54, &async function pointer to partial apply for closure #3 in MLS.OperationRunner.handle<A>(operationResult:for:), v15);
  }

  else
  {
    v16 = *(v0 + 1648);
  }

  v17 = *(v0 + 1720);
  v18 = *(v0 + 1664);
  v19 = *(v0 + 1632);
  v20 = *(v0 + 1448);

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();

  v23 = os_log_type_enabled(v21, v22);
  v24 = *(v0 + 1664);
  if (v23)
  {
    v25 = *(v0 + 1656);
    v26 = *(v0 + 1632);
    v27 = *(v0 + 1624);
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v57 = v29;
    *v28 = 136315394;
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v26, &v57);

    *(v28 + 4) = v30;
    *(v28 + 12) = 2080;
    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v24, &v57);

    *(v28 + 14) = v31;
    _os_log_impl(&dword_264F1F000, v21, v22, "OperationRunner %s returning from queue operation { identifier: %s }", v28, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v29, -1, -1);
    MEMORY[0x266755550](v28, -1, -1);
    outlined destroy of NSObject?(v0 + 432, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
    outlined destroy of MLS.Group(v0 + 616);
    outlined destroy of MLS.RetryAfterGroupVersionBehavior(v0 + 928);
  }

  else
  {
    v32 = *(v0 + 1632);
    outlined destroy of NSObject?(v0 + 432, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
    outlined destroy of MLS.Group(v0 + 616);
    outlined destroy of MLS.RetryAfterGroupVersionBehavior(v0 + 928);
  }

  v33 = *(v0 + 1672);
  v34 = *(v0 + 1408);
  *v34 = *(v0 + 1616);
  v35 = *(v0 + 824);
  v36 = *(v0 + 840);
  *(v34 + 40) = *(v0 + 856);
  *(v34 + 24) = v36;
  *(v34 + 8) = v35;
  v37 = *(v0 + 872);
  v38 = *(v0 + 888);
  v39 = *(v0 + 904);
  *(v34 + 104) = *(v0 + 920);
  *(v34 + 88) = v39;
  *(v34 + 72) = v38;
  *(v34 + 56) = v37;
  *(v34 + 112) = v2;
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1328));

  v40 = *(v0 + 1600);
  v41 = *(v0 + 1576);
  v42 = *(v0 + 1568);
  v43 = *(v0 + 1560);
  v44 = *(v0 + 1552);
  v45 = *(v0 + 1544);
  v46 = *(v0 + 1536);
  v47 = *(v0 + 1512);
  v48 = *(v0 + 1480);
  v49 = *(v0 + 1472);

  v50 = *(v0 + 8);

  return v50();
}

{
  v2 = *v1;
  v3 = *(*v1 + 1800);
  v10 = *v1;

  if (v0)
  {
    v4 = v2[201];
    v5 = MLS.OperationRunner.handle<A>(operationResult:for:);
  }

  else
  {
    v6 = v2[224];
    v7 = v2[202];
    v8 = v2[201];

    v5 = MLS.OperationRunner.handle<A>(operationResult:for:);
    v4 = v8;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

{
  outlined destroy of NSObject?((v0 + 161), &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMd, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 156);
  v1 = v0[200];
  v2 = v0[197];
  v3 = v0[196];
  v4 = v0[195];
  v5 = v0[194];
  v6 = v0[193];
  v7 = v0[192];
  v8 = v0[189];
  v9 = v0[185];
  v10 = v0[184];

  v11 = v0[1];

  return v11();
}

{
  v1 = *(v0 + 1496);
  v2 = *(*(v0 + 1528) + 32);
  v2(*(v0 + 1544), *(v0 + 1568), *(v0 + 1520));
  v3 = *(*(v1 + 8) + 8);
  if (_getErrorEmbeddedNSError<A>(_:)())
  {
    v4 = *(v0 + 1712);
    (*(v0 + 1704))(*(v0 + 1544), *(v0 + 1520));
  }

  else
  {
    v5 = *(v0 + 1544);
    v6 = *(v0 + 1520);
    swift_allocError();
    v2(v7, v5, v6);
  }

  v8 = *(v0 + 1672);
  outlined destroy of MLS.RetryAfterGroupVersionBehavior(v0 + 928);
  outlined destroy of NSObject?(v0 + 432, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
  outlined destroy of MLS.EventQueue.Result(v0 + 824);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1328));
  v9 = *(v0 + 1600);
  v10 = *(v0 + 1576);
  v11 = *(v0 + 1568);
  v12 = *(v0 + 1560);
  v13 = *(v0 + 1552);
  v14 = *(v0 + 1544);
  v15 = *(v0 + 1536);
  v16 = *(v0 + 1512);
  v17 = *(v0 + 1480);
  v18 = *(v0 + 1472);

  v19 = *(v0 + 8);

  return v19();
}

{
  v1 = *(v0 + 1496);
  v2 = *(*(v0 + 1528) + 32);
  v2(*(v0 + 1536), *(v0 + 1552), *(v0 + 1520));
  v3 = *(*(v1 + 8) + 8);
  if (_getErrorEmbeddedNSError<A>(_:)())
  {
    v4 = *(v0 + 1712);
    (*(v0 + 1704))(*(v0 + 1536), *(v0 + 1520));
  }

  else
  {
    v5 = *(v0 + 1536);
    v6 = *(v0 + 1520);
    swift_allocError();
    v2(v7, v5, v6);
  }

  v8 = *(v0 + 1728);
  v9 = *(v0 + 1672);
  outlined destroy of MLS.RetryAfterGroupVersionBehavior(v0 + 928);
  outlined destroy of NSObject?(v0 + 432, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
  outlined destroy of MLS.Group(v0 + 616);
  outlined destroy of MLS.EventQueue.Result(v0 + 824);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1328));

  v10 = *(v0 + 1600);
  v11 = *(v0 + 1576);
  v12 = *(v0 + 1568);
  v13 = *(v0 + 1560);
  v14 = *(v0 + 1552);
  v15 = *(v0 + 1544);
  v16 = *(v0 + 1536);
  v17 = *(v0 + 1512);
  v18 = *(v0 + 1480);
  v19 = *(v0 + 1472);

  v20 = *(v0 + 8);

  return v20();
}

{
  v1 = v0[224];
  v2 = v0[222];
  v3 = v0[221];
  v4 = v0[220];
  v5 = v0[219];
  v6 = v0[223] + 15;
  v7 = swift_task_alloc();
  v8 = *(v2 + 32);
  v8(v7, v1, v3);
  v9 = *(*(*(*(swift_getAssociatedConformanceWitness() + 8) + 8) + 8) + 8);
  if (_getErrorEmbeddedNSError<A>(_:)())
  {
    (*(v0[222] + 8))(v7, v0[221]);
  }

  else
  {
    v10 = v0[221];
    swift_allocError();
    v8(v11, v7, v10);
  }

  v12 = v0[224];
  v13 = v0[202];
  outlined destroy of NSObject?((v0 + 161), &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMd, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMR);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 156);
  v14 = v0[200];
  v15 = v0[197];
  v16 = v0[196];
  v17 = v0[195];
  v18 = v0[194];
  v19 = v0[193];
  v20 = v0[192];
  v21 = v0[189];
  v22 = v0[185];
  v23 = v0[184];

  v24 = v0[1];

  return v24();
}

uint64_t implicit closure #1 in MLS.OperationRunner.handle<A>(operationResult:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[54] = a4;
  v5[55] = a5;
  v5[52] = a2;
  v5[53] = a3;
  v5[51] = a1;
  v6 = type metadata accessor for MLS.Group.GroupInfo();
  v5[56] = v6;
  v7 = *(v6 - 8);
  v5[57] = v7;
  v8 = *(v7 + 64) + 15;
  v5[58] = swift_task_alloc();

  return MEMORY[0x2822009F8](implicit closure #1 in MLS.OperationRunner.handle<A>(operationResult:for:), 0, 0);
}

uint64_t implicit closure #1 in MLS.OperationRunner.handle<A>(operationResult:for:)()
{
  v1 = v0[55];
  v2 = v0[53];
  outlined init with copy of ServerBag.MLS(v0[54], (v0 + 41));
  v0[59] = *(v1 + 80);
  v0[60] = *(v1 + 88);
  v3 = v1 + OBJC_IVAR____TtCO15SecureMessaging3MLS15OperationRunner_uniqueClientIdentifier;
  v0[61] = *(v1 + OBJC_IVAR____TtCO15SecureMessaging3MLS15OperationRunner_uniqueClientIdentifier);
  v0[62] = *(v3 + 8);
  v4 = v0[44];
  v5 = v0[45];
  __swift_project_boxed_opaque_existential_1(v0 + 41, v4);
  v6 = *(v5 + 32);

  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  v0[63] = v8;
  *v8 = v0;
  v8[1] = implicit closure #1 in MLS.OperationRunner.handle<A>(operationResult:for:);

  return v10(v4, v5);
}

{
  v1 = v0[44];
  v2 = v0[45];
  __swift_project_boxed_opaque_existential_1(v0 + 41, v1);
  v3 = *(v2 + 24);
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[65] = v5;
  *v5 = v0;
  v5[1] = implicit closure #1 in MLS.OperationRunner.handle<A>(operationResult:for:);

  return v7(v1, v2);
}

{
  v1 = v0[64];
  v2 = v0[53];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 41);

  v3 = v0[58];

  v4 = v0[1];

  return v4();
}

{
  v2 = *(*v1 + 536);
  v5 = *v1;
  *(*v1 + 544) = v0;

  if (v0)
  {
    v3 = implicit closure #1 in MLS.OperationRunner.handle<A>(operationResult:for:);
  }

  else
  {
    v3 = implicit closure #1 in MLS.OperationRunner.handle<A>(operationResult:for:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v2 = v0[57];
  v1 = v0[58];
  v3 = v0[56];
  v0[69] = MLS.Group.GroupInfo.rawRepresentation.getter();
  v0[70] = v4;
  (*(v2 + 8))(v1, v3);
  v5 = v0[44];
  v6 = v0[45];
  __swift_project_boxed_opaque_existential_1(v0 + 41, v5);
  v7 = *(v6 + 56);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v0[71] = v9;
  *v9 = v0;
  v9[1] = implicit closure #1 in MLS.OperationRunner.handle<A>(operationResult:for:);

  return v11(v5, v6);
}

{
  v1 = v0[44];
  v2 = v0[45];
  __swift_project_boxed_opaque_existential_1(v0 + 41, v1);
  v3 = *(v2 + 64);
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[74] = v5;
  *v5 = v0;
  v5[1] = implicit closure #1 in MLS.OperationRunner.handle<A>(operationResult:for:);

  return v7(v1, v2);
}

{
  v1 = v0[68];
  v2 = v0[53];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 41);

  v3 = v0[58];

  v4 = v0[1];

  return v4();
}

{
  v1 = v0[75];
  v2 = v0[73];
  v3 = v0[70];
  v4 = v0[69];
  if (v2 >> 60 == 15)
  {
    v5 = 0xC000000000000000;
  }

  else
  {
    v5 = v0[73];
  }

  if (v2 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    v6 = v0[72];
  }

  v7 = v0[53];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 41);

  outlined consume of Data._Representation(v4, v3);
  outlined consume of Data._Representation(v6, v5);
  v8 = v0[58];

  v9 = v0[1];

  return v9();
}

{
  v1 = *(v0 + 656);
  v2 = *(v0 + 648);
  v3 = *(v0 + 640);
  v4 = *(v0 + 608);
  v5 = *(v0 + 584);
  v6 = *(v0 + 560);
  v25 = v6;
  v26 = v1;
  v7 = *(v0 + 552);
  v24 = v7;
  v8 = *(v0 + 528);
  v27 = *(v0 + 464);
  v10 = *(v0 + 416);
  v9 = *(v0 + 424);
  v11 = *(v0 + 408);
  if ((v3 & 0x100000000) != 0)
  {
    v12 = 1;
  }

  else
  {
    v12 = v3;
  }

  if (v4 >> 60 == 15)
  {
    v13 = 0xC000000000000000;
  }

  else
  {
    v13 = *(v0 + 608);
  }

  if (v4 >> 60 == 15)
  {
    v14 = 0;
  }

  else
  {
    v14 = *(v0 + 616);
  }

  if (v5 >> 60 == 15)
  {
    v15 = 0xC000000000000000;
  }

  else
  {
    v15 = *(v0 + 584);
  }

  if (v5 >> 60 == 15)
  {
    v16 = 0;
  }

  else
  {
    v16 = *(v0 + 576);
  }

  *(v0 + 120) = v10;
  *(v0 + 128) = v9;
  *(v0 + 136) = v12;
  *(v0 + 144) = v12;
  *(v0 + 152) = v8;
  *(v0 + 160) = v7;
  *(v0 + 168) = v6;
  *(v0 + 176) = v16;
  *(v0 + 184) = v15;
  *(v0 + 192) = v14;
  *(v0 + 200) = v13;
  *(v0 + 208) = v1;
  *(v0 + 216) = v2;
  v17 = *(v0 + 184);
  v18 = *(v0 + 168);
  v19 = *(v0 + 200);
  *(v11 + 96) = v2;
  *(v11 + 64) = v17;
  *(v11 + 80) = v19;
  *(v11 + 48) = v18;
  v20 = *(v0 + 120);
  v21 = *(v0 + 152);
  *(v11 + 16) = *(v0 + 136);
  *(v11 + 32) = v21;
  *v11 = v20;
  outlined init with copy of MLS.Group(v0 + 120, v0 + 224);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 328));
  *(v0 + 16) = v10;
  *(v0 + 24) = v9;
  *(v0 + 32) = v12;
  *(v0 + 40) = v12;
  *(v0 + 48) = v8;
  *(v0 + 56) = v24;
  *(v0 + 64) = v25;
  *(v0 + 72) = v16;
  *(v0 + 80) = v15;
  *(v0 + 88) = v14;
  *(v0 + 96) = v13;
  *(v0 + 104) = v26;
  *(v0 + 112) = v2;
  outlined destroy of MLS.Group(v0 + 16);

  v22 = *(v0 + 8);

  return v22();
}

{
  v1 = v0[79];
  v2 = v0[76];
  v3 = v0[73];
  v4 = v0[70];
  v5 = v0[69];
  if (v2 >> 60 == 15)
  {
    v6 = 0xC000000000000000;
  }

  else
  {
    v6 = v0[76];
  }

  if (v2 >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    v7 = v0[77];
  }

  if (v3 >> 60 == 15)
  {
    v8 = 0xC000000000000000;
  }

  else
  {
    v8 = v0[73];
  }

  if (v3 >> 60 == 15)
  {
    v9 = 0;
  }

  else
  {
    v9 = v0[72];
  }

  v10 = v0[53];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 41);

  outlined consume of Data._Representation(v5, v4);
  outlined consume of Data._Representation(v9, v8);
  outlined consume of Data._Representation(v7, v6);
  v11 = v0[58];

  v12 = v0[1];

  return v12();
}

uint64_t implicit closure #1 in MLS.OperationRunner.handle<A>(operationResult:for:)(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[46] = v2;
  v4[47] = a1;
  v4[48] = v1;
  v5 = v3[63];
  v8 = *v2;
  v4[64] = v1;

  if (v1)
  {
    v6 = implicit closure #1 in MLS.OperationRunner.handle<A>(operationResult:for:);
  }

  else
  {
    v6 = implicit closure #1 in MLS.OperationRunner.handle<A>(operationResult:for:);
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

{
  v2 = *(*v1 + 520);
  v4 = *v1;
  *(*v1 + 528) = a1;

  return MEMORY[0x2822009F8](implicit closure #1 in MLS.OperationRunner.handle<A>(operationResult:for:), 0, 0);
}

void implicit closure #1 in MLS.OperationRunner.handle<A>(operationResult:for:)()
{
  if ((v0[66] & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v1 = v0[44];
    v2 = v0[45];
    __swift_project_boxed_opaque_existential_1(v0 + 41, v1);
    v3 = *(v2 + 80);
    v7 = (v3 + *v3);
    v4 = v3[1];
    v5 = swift_task_alloc();
    v0[67] = v5;
    *v5 = v0;
    v5[1] = implicit closure #1 in MLS.OperationRunner.handle<A>(operationResult:for:);
    v6 = v0[58];

    v7(v6, v1, v2);
  }
}

uint64_t implicit closure #1 in MLS.OperationRunner.handle<A>(operationResult:for:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 568);
  v6 = *v2;
  *(v3 + 576) = a1;
  *(v3 + 584) = a2;

  return MEMORY[0x2822009F8](implicit closure #1 in MLS.OperationRunner.handle<A>(operationResult:for:), 0, 0);
}

{
  v6 = *(*v3 + 592);
  v7 = *v3;
  v7[75] = v2;

  if (v2)
  {

    return MEMORY[0x2822009F8](implicit closure #1 in MLS.OperationRunner.handle<A>(operationResult:for:), 0, 0);
  }

  else
  {
    v9 = v7[61];
    v8 = v7[62];
    v10 = v7[59];
    v21 = v7[60];
    v7[76] = a2;
    v7[77] = a1;
    ObjectType = swift_getObjectType();
    v7[49] = v9;
    v7[50] = v8;
    v12 = *(v21 + 64);
    v20 = (v12 + *v12);
    v13 = v12[1];
    v14 = swift_task_alloc();
    v7[78] = v14;
    *v14 = v7;
    v14[1] = implicit closure #1 in MLS.OperationRunner.handle<A>(operationResult:for:);
    v16 = v7[59];
    v15 = v7[60];
    v17 = v7[53];
    v18 = v7[52];

    return (v20)(v18, v17, v7 + 49, ObjectType, v15);
  }
}

{
  v6 = *v3;
  v7 = *(*v3 + 624);
  v8 = *v3;
  *(*v3 + 632) = v2;

  if (v2)
  {
    v9 = implicit closure #1 in MLS.OperationRunner.handle<A>(operationResult:for:);
  }

  else
  {
    v6[80] = v6[47];
    v6[81] = a2;
    v6[82] = a1;
    v9 = implicit closure #1 in MLS.OperationRunner.handle<A>(operationResult:for:);
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t implicit closure #5 in MLS.OperationRunner.handle<A>(operationResult:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[52] = a5;
  v6[53] = a6;
  v6[50] = a3;
  v6[51] = a4;
  v6[48] = a1;
  v6[49] = a2;
  return MEMORY[0x2822009F8](implicit closure #5 in MLS.OperationRunner.handle<A>(operationResult:for:), 0, 0);
}

uint64_t implicit closure #5 in MLS.OperationRunner.handle<A>(operationResult:for:)()
{
  v1 = *(v0 + 416);
  v2 = *(v0 + 424);
  v4 = *(v0 + 400);
  v3 = *(v0 + 408);
  v5 = *(v0 + 392);
  v7 = *(v5 + 16);
  v6 = *(v5 + 24);
  ObjectType = swift_getObjectType();
  v9 = v4[3];
  v11 = *v4;
  v10 = v4[1];
  *(v0 + 48) = v4[2];
  *(v0 + 64) = v9;
  *(v0 + 16) = v11;
  *(v0 + 32) = v10;
  v12 = v4[7];
  v14 = v4[4];
  v13 = v4[5];
  *(v0 + 112) = v4[6];
  *(v0 + 128) = v12;
  *(v0 + 80) = v14;
  *(v0 + 96) = v13;
  v16 = v4[9];
  v15 = v4[10];
  v17 = v4[8];
  *(v0 + 192) = *(v4 + 176);
  *(v0 + 160) = v16;
  *(v0 + 176) = v15;
  *(v0 + 144) = v17;
  v19 = *(v3 + 16);
  v18 = *(v3 + 32);
  *(v0 + 200) = *v3;
  *(v0 + 216) = v19;
  *(v0 + 232) = v18;
  v20 = *(v3 + 48);
  v21 = *(v3 + 64);
  v22 = *(v3 + 80);
  *(v0 + 296) = *(v3 + 96);
  *(v0 + 264) = v21;
  *(v0 + 280) = v22;
  *(v0 + 248) = v20;
  v24 = v1[2];
  v23 = v1[3];
  v25 = v1[1];
  *(v0 + 361) = *(v1 + 57);
  *(v0 + 336) = v24;
  *(v0 + 352) = v23;
  *(v0 + 320) = v25;
  *(v0 + 304) = *v1;
  v26 = *(v2 + 424);
  v27 = *(v2 + 432);
  v28 = *(v6 + 32);
  v32 = (v28 + *v28);
  v29 = v28[1];
  v30 = swift_task_alloc();
  *(v0 + 432) = v30;
  *v30 = v0;
  v30[1] = implicit closure #5 in MLS.OperationRunner.handle<A>(operationResult:for:);

  return v32(v0 + 16, v0 + 200, v0 + 304, 1, v26, v27, ObjectType, v6);
}

{
  **(v0 + 384) = *(v0 + 448);
  return (*(v0 + 8))();
}

{
  v1 = *(v0 + 440);
  return (*(v0 + 8))();
}

uint64_t implicit closure #5 in MLS.OperationRunner.handle<A>(operationResult:for:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 432);
  v6 = *v2;
  *(*v2 + 440) = v1;

  if (v1)
  {
    v7 = implicit closure #5 in MLS.OperationRunner.handle<A>(operationResult:for:);
  }

  else
  {
    *(v4 + 448) = a1;
    v7 = implicit closure #5 in MLS.OperationRunner.handle<A>(operationResult:for:);
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

void closure #1 in MLS.OperationRunner.handle<A>(operationResult:for:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, const char *a8)
{

  oslog = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v19 = v17;
    *v16 = 136315650;
    *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a4, a5, &v19);
    *(v16 + 12) = 2080;
    *(v16 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a6, a7, &v19);
    *(v16 + 22) = 2080;
    *(v16 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v19);
    _os_log_impl(&dword_264F1F000, oslog, v15, a8, v16, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v17, -1, -1);
    MEMORY[0x266755550](v16, -1, -1);
  }
}

uint64_t closure #3 in MLS.OperationRunner.handle<A>(operationResult:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[18] = a8;
  v8[19] = v20;
  v8[16] = a6;
  v8[17] = a7;
  v8[14] = a4;
  v8[15] = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[20] = AssociatedTypeWitness;
  v10 = *(AssociatedTypeWitness - 8);
  v8[21] = v10;
  v11 = *(v10 + 64) + 15;
  v8[22] = swift_task_alloc();
  v8[23] = swift_task_alloc();
  v12 = swift_getAssociatedTypeWitness();
  v8[24] = v12;
  v13 = *(v12 - 8);
  v8[25] = v13;
  v14 = *(v13 + 64) + 15;
  v8[26] = swift_task_alloc();
  v15 = swift_getAssociatedTypeWitness();
  v8[27] = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  v8[28] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v17 = static MLSActor.shared;
  v8[29] = static MLSActor.shared;

  return MEMORY[0x2822009F8](closure #3 in MLS.OperationRunner.handle<A>(operationResult:for:), v17, 0);
}

uint64_t closure #3 in MLS.OperationRunner.handle<A>(operationResult:for:)()
{
  v32 = v0;
  v1 = *(v0 + 216);
  v2 = *(v0 + 192);
  v3 = *(v0 + 152);
  v4 = *(v0 + 160);
  v5 = *(v0 + 136);
  v6 = *(v0 + 144);
  v26 = *(v0 + 128);
  v27 = *(v0 + 224);
  v25 = *(v0 + 120);
  v28 = *(v0 + 112);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *(v0 + 240) = AssociatedConformanceWitness;
  v8 = swift_getAssociatedConformanceWitness();
  v9 = swift_getAssociatedConformanceWitness();
  *(v0 + 16) = v4;
  *(v0 + 24) = v1;
  *(v0 + 32) = v2;
  *(v0 + 40) = AssociatedConformanceWitness;
  *(v0 + 48) = v8;
  *(v0 + 56) = v9;
  updated = type metadata accessor for MLS.KeyUpdateOperation();
  v11 = *(v3 + 80);

  v11(v6, v3);
  outlined init with copy of ServerBag.MLS(v5 + OBJC_IVAR____TtCO15SecureMessaging3MLS15OperationRunner_keyUpdatePolicy, v0 + 64);
  v12 = v5[10];
  v13 = v5[11];
  v14 = *(v5 + OBJC_IVAR____TtCO15SecureMessaging3MLS15OperationRunner_uniqueClientIdentifier);
  v15 = *(v5 + OBJC_IVAR____TtCO15SecureMessaging3MLS15OperationRunner_uniqueClientIdentifier + 8);
  v30 = *(v5 + OBJC_IVAR____TtCO15SecureMessaging3MLS15OperationRunner_featureFlagsStore);
  v31[0] = v14;
  v31[1] = v15;

  swift_unknownObjectRetain();

  v16 = MLS.KeyUpdateOperation.__allocating_init(group:causedByOutgoingMessage:context:policy:featureFlagsStore:persister:clientIdentifier:)(v28, v25, 1, v27, (v0 + 64), &v30, v12, v13, v31);
  *(v0 + 248) = v16;
  *(v0 + 104) = v16;
  v17 = *(*v5 + 216);
  v29 = (v17 + *v17);
  v18 = v17[1];
  v19 = swift_task_alloc();
  *(v0 + 256) = v19;
  WitnessTable = swift_getWitnessTable();
  *v19 = v0;
  v19[1] = _s15SecureMessaging3MLSO11GroupHealerC6handle5error5group06cachedD09operation6runnerAC10EventQueueC6ResultO05SwiftC0ABO8MLSErrorO_SSAC0O16MLSGroupProtocol_pSgxAC15OperationRunnerCtYa9ErrorTypeQzYKAC0dS0RzlFyyYaYbKAA8MLSActorCYccfU0_TQ1_;
  v21 = *(v0 + 208);
  v22 = *(v0 + 184);
  v23 = *(v0 + 136);

  return v29(v21, v0 + 104, updated, WitnessTable, v22);
}

uint64_t MLS.OperationRunner.enqueue<A>(operation:sendBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[14] = a5;
  v6[15] = v5;
  v6[12] = a3;
  v6[13] = a4;
  v6[10] = a1;
  v6[11] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[16] = AssociatedTypeWitness;
  v8 = *(AssociatedTypeWitness - 8);
  v6[17] = v8;
  v9 = *(v8 + 64) + 15;
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v10 = static MLSActor.shared;
  v6[20] = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.OperationRunner.enqueue<A>(operation:sendBlock:), v10, 0);
}

void MLS.OperationRunner.enqueue<A>(operation:sendBlock:)()
{
  v1 = *(v0 + 136);
  v3 = *(v0 + 112);
  v2 = *(v0 + 120);
  v4 = *(v0 + 104);
  v5 = *(v0 + 80);
  v6 = (*(v3 + 104))(v4, v3);
  v7 = *(v2 + 24);
  v33 = *(v2 + 16);
  swift_getObjectType();
  (*(v3 + 72))(v4, v3);
  *(v0 + 168) = v8;
  v9 = *(v3 + 80);
  v10 = (v1 + 8);
  if (v6)
  {
    v11 = *(v0 + 144);
    v12 = *(v0 + 128);
    v13 = *(v0 + 80);
    v9(*(v0 + 104), *(v0 + 112));
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 16))(v12, AssociatedConformanceWitness);
    *(v0 + 200) = v15;
    (*v10)(v11, v12);
    *(v0 + 48) = 0u;
    *(v0 + 64) = 0u;
    *(v0 + 32) = 0u;
    *(v0 + 16) = 0u;
    v16 = *(v7 + 16);
    v31 = v16 + *v16;
    v17 = v16[1];
    v18 = swift_task_alloc();
    *(v0 + 208) = v18;
    *v18 = v0;
    v18[1] = MLS.OperationRunner.enqueue<A>(operation:sendBlock:);
    v19 = *(v0 + 88);
    v20 = *(v0 + 96);

    __asm { BRAA            X8, X16 }
  }

  v21 = *(v0 + 152);
  v22 = *(v0 + 128);
  v23 = *(v0 + 80);
  v9(*(v0 + 104), *(v0 + 112));
  v24 = swift_getAssociatedConformanceWitness();
  (*(v24 + 16))(v22, v24);
  *(v0 + 176) = v25;
  (*v10)(v21, v22);
  v26 = *(v7 + 8);
  v32 = v26 + *v26;
  v27 = v26[1];
  v28 = swift_task_alloc();
  *(v0 + 184) = v28;
  *v28 = v0;
  v28[1] = MLS.OperationRunner.enqueue<A>(operation:sendBlock:);
  v29 = *(v0 + 88);
  v30 = *(v0 + 96);

  __asm { BRAA            X8, X16 }
}

uint64_t MLS.OperationRunner.enqueue<A>(operation:sendBlock:)()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v4 = *v1;
  v2[24] = v0;

  v5 = v2[22];
  v6 = v2[21];
  if (v0)
  {
    v7 = v2[20];

    return MEMORY[0x2822009F8](MLS.OperationRunner.enqueue<A>(operation:sendBlock:), v7, 0);
  }

  else
  {

    v9 = v2[18];
    v8 = v2[19];

    v10 = *(v4 + 8);

    return v10();
  }
}

{
  v2 = *(*v1 + 208);
  v3 = *(*v1 + 200);
  v4 = *(*v1 + 168);
  v5 = *v1;
  v5[27] = v0;

  if (v0)
  {
    v6 = v5[20];

    return MEMORY[0x2822009F8](MLS.OperationRunner.enqueue<A>(operation:sendBlock:), v6, 0);
  }

  else
  {
    v8 = v5[18];
    v7 = v5[19];

    v9 = v5[1];

    return v9();
  }
}

{
  v1 = v0[24];
  v3 = v0[18];
  v2 = v0[19];

  v4 = v0[1];

  return v4();
}

{
  v1 = v0[27];
  v3 = v0[18];
  v2 = v0[19];

  v4 = v0[1];

  return v4();
}

void *MLS.OperationRunner.deinit()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 4);
  v2 = v0[9];

  v3 = v0[10];
  swift_unknownObjectRelease();
  v4 = v0[12];

  outlined destroy of MLS.KeyPackageProvider(v0 + OBJC_IVAR____TtCO15SecureMessaging3MLS15OperationRunner_keyPackageProvider);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtCO15SecureMessaging3MLS15OperationRunner_keyUpdatePolicy));
  v5 = *(v0 + OBJC_IVAR____TtCO15SecureMessaging3MLS15OperationRunner_groupHealer);

  v6 = *(v0 + OBJC_IVAR____TtCO15SecureMessaging3MLS15OperationRunner_featureFlagsStore);

  v7 = *(v0 + OBJC_IVAR____TtCO15SecureMessaging3MLS15OperationRunner_uniqueClientIdentifier + 8);

  v8 = *(v0 + OBJC_IVAR____TtCO15SecureMessaging3MLS15OperationRunner_selfMember);
  v9 = *(v0 + OBJC_IVAR____TtCO15SecureMessaging3MLS15OperationRunner_selfMember + 8);
  v10 = *(v0 + OBJC_IVAR____TtCO15SecureMessaging3MLS15OperationRunner_selfMember + 16);
  v11 = *(v0 + OBJC_IVAR____TtCO15SecureMessaging3MLS15OperationRunner_selfMember + 24);
  outlined consume of MLS.AllMember();
  v12 = *(v0 + OBJC_IVAR____TtCO15SecureMessaging3MLS15OperationRunner_processIncoming + 8);
  outlined consume of (@escaping @callee_guaranteed @Sendable @async (@guaranteed String) -> (@error @owned Error))?(*(v0 + OBJC_IVAR____TtCO15SecureMessaging3MLS15OperationRunner_processIncoming));
  v13 = OBJC_IVAR____TtCO15SecureMessaging3MLS15OperationRunner_logger;
  v14 = type metadata accessor for Logger();
  (*(*(v14 - 8) + 8))(v0 + v13, v14);
  return v0;
}

uint64_t MLS.OperationRunner.__deallocating_deinit()
{
  MLS.OperationRunner.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void *specialized MLS.OperationRunner.__allocating_init(eventSender:credentialProvider:groupLoader:persister:keyPackageFetcher:keyPackageProvider:keyUpdatePolicy:groupHealer:featureFlagsStore:uniqueClientIdentifier:selfMember:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, __int128 *a8, uint64_t a9, uint64_t *a10, uint64_t *a11, __int128 *a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v19 = type metadata accessor for MLS.OperationRunner();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  v28 = swift_allocObject();

  return specialized MLS.OperationRunner.init(eventSender:credentialProvider:groupLoader:persister:keyPackageFetcher:keyPackageProvider:keyUpdatePolicy:groupHealer:featureFlagsStore:uniqueClientIdentifier:selfMember:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, v28, a14, a15);
}

void *specialized MLS.OperationRunner.init(eventSender:credentialProvider:groupLoader:persister:keyPackageFetcher:keyPackageProvider:keyUpdatePolicy:groupHealer:featureFlagsStore:uniqueClientIdentifier:selfMember:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, __int128 *a8, uint64_t a9, uint64_t *a10, uint64_t *a11, __int128 *a12, void *a13, uint64_t a14, uint64_t a15)
{
  v28 = *a11;
  v26 = *a10;
  v27 = a11[1];
  v31 = *a12;
  v30 = *(a12 + 2);
  v29 = *(a12 + 24);
  v22 = (a13 + OBJC_IVAR____TtCO15SecureMessaging3MLS15OperationRunner_processIncoming);
  *v22 = 0;
  v22[1] = 0;
  Logger.init(subsystem:category:)();
  a13[2] = a1;
  a13[3] = a15;
  outlined init with take of MLS.KeyUpdatePolicy(a2, (a13 + 4));
  a13[9] = a3;
  a13[10] = a4;
  a13[11] = a5;
  a13[12] = a6;
  outlined init with take of MetricCollector.Event(a7, a13 + OBJC_IVAR____TtCO15SecureMessaging3MLS15OperationRunner_keyPackageProvider, type metadata accessor for MLS.KeyPackageProvider);
  outlined init with take of MLS.KeyUpdatePolicy(a8, a13 + OBJC_IVAR____TtCO15SecureMessaging3MLS15OperationRunner_keyUpdatePolicy);
  *(a13 + OBJC_IVAR____TtCO15SecureMessaging3MLS15OperationRunner_groupHealer) = a9;
  *(a13 + OBJC_IVAR____TtCO15SecureMessaging3MLS15OperationRunner_featureFlagsStore) = v26;
  v23 = (a13 + OBJC_IVAR____TtCO15SecureMessaging3MLS15OperationRunner_uniqueClientIdentifier);
  *v23 = v28;
  v23[1] = v27;
  v24 = a13 + OBJC_IVAR____TtCO15SecureMessaging3MLS15OperationRunner_selfMember;
  *v24 = v31;
  *(v24 + 2) = v30;
  v24[24] = v29;
  return a13;
}

uint64_t sub_26515C018()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26515C050()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26515C088()
{
  v1 = *(v0 + 2);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 80) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 4);

  v7 = *(v0 + 6);

  v8 = *(v0 + 8);

  v9 = *(v0 + 9);

  (*(v2 + 8))(&v0[v4], v1);
  v10 = *&v0[v5];

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t _s15SecureMessaging3MLSO15OperationRunnerC3run9operation20ProcessedContextTypeQzx_tYa05ErrorJ0QzYKAC05GroupD0RzlFAC10EventQueueC6ResultOAC08OutgoingM5StateVSg_SStYaYbKAA8MLSActorCYccfU_TA(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = v4[3];
  v6 = v4[4];
  v7 = v4[5];
  v8 = v4[6];
  v9 = v4[7];
  v10 = v4[8];
  v11 = v4[9];
  v12 = *(v4 + ((*(*(v4[2] - 8) + 64) + ((*(*(v4[2] - 8) + 80) + 80) & ~*(*(v4[2] - 8) + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return _s15SecureMessaging3MLSO15OperationRunnerC3run9operation20ProcessedContextTypeQzx_tYa05ErrorJ0QzYKAC05GroupD0RzlFAC10EventQueueC6ResultOAC08OutgoingM5StateVSg_SStYaYbKAA8MLSActorCYccfU_(a1, a2, a3, a4, v6, v7, v8, v9);
}

unint64_t outlined consume of MLS.GroupOperationErrorHandlingPolicy(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t outlined copy of MLS.KeyPackageFetcher.FetchResult?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t type metadata accessor for MLS.OperationRunner()
{
  result = type metadata singleton initialization cache for MLS.OperationRunner;
  if (!type metadata singleton initialization cache for MLS.OperationRunner)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for MLS.OperationRunner()
{
  result = type metadata accessor for MLS.KeyPackageProvider();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for Logger();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t _s15SecureMessaging3MLSO15OperationRunnerC3run9operation20ProcessedContextTypeQzx_tYa05ErrorJ0QzYKAC05GroupD0RzlFTj(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(*v5 + 216);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v16(a1, a2, a3, a4, a5);
}

uint64_t _s15SecureMessaging3MLSO15OperationRunnerC10onQueueRun9operation15metricCollector11cachedGroup0L11KeyPackagesAE02OngH6ResultVx_AA06MetricK0VAC21SwiftMLSGroupProtocol_pSgAC0N14PackageFetcherC05FetchQ0VSgtYa9ErrorTypeQzYKAC0mD0RzlFTj(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v18 = *(*v8 + 224);
  v22 = (v18 + *v18);
  v19 = v18[1];
  v20 = swift_task_alloc();
  *(v9 + 16) = v20;
  *v20 = v9;
  v20[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v22(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_26515C8D4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.IncomingMessage<MLS.AllMember>) -> (@out (), @error @owned Error)(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.IncomingMessage<MLS.AllMember>) -> (@out (), @error @owned Error)(a1, v5);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.IncomingMessage<MLS.AllMember>) -> (@error @owned Error)(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.IncomingMessage<MLS.AllMember>) -> (@error @owned Error)(a1, a2, v7);
}

uint64_t partial apply for implicit closure #1 in MLS.OperationRunner.handle<A>(operationResult:for:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return implicit closure #1 in MLS.OperationRunner.handle<A>(operationResult:for:)(a1, v4, v5, v7, v6);
}

uint64_t partial apply for implicit closure #5 in MLS.OperationRunner.handle<A>(operationResult:for:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return implicit closure #5 in MLS.OperationRunner.handle<A>(operationResult:for:)(a1, v4, v5, v6, v7, v8);
}

uint64_t objectdestroy_43Tm()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_26515CCF8()
{
  v1 = *(v0 + 4);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 2);
  swift_unknownObjectRelease();
  v7 = *(v0 + 7);

  (*(v2 + 8))(&v0[v4], v1);
  v8 = *&v0[v5];

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t partial apply for closure #3 in MLS.OperationRunner.handle<A>(operationResult:for:)(uint64_t a1)
{
  v3 = v1[4];
  v4 = (*(*(v3 - 8) + 80) + 64) & ~*(*(v3 - 8) + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[6];
  v8 = v1[7];
  v9 = *(v1 + ((*(*(v3 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #3 in MLS.OperationRunner.handle<A>(operationResult:for:)(a1, v5, v6, v7, v8, v1 + v4, v9, v3);
}

uint64_t outlined init with take of MetricCollector.Event(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t MLS.EventSender.__allocating_init(eventDeliverer:bag:persister:groupLoader:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v15 = *(v7 + 48);
  v16 = *(v7 + 52);
  v17 = swift_allocObject();
  MLS.EventSender.init(eventDeliverer:bag:persister:groupLoader:clientIdentifier:)(a1, a2, a3, a4, a5, a6, a7);
  return v17;
}

uint64_t protocol witness for Error._code.getter in conformance MLS.EventSenderError.ErrorType(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type MLS.EventSenderError.ErrorType and conformance MLS.EventSenderError.ErrorType();
  v5 = lazy protocol witness table accessor for type Int and conformance Int();

  return MEMORY[0x2821FE2D0](a1, a2, v4, v5);
}

uint64_t MLS.EventSenderError.underlyingErrorDescription.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.EventSenderError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.EventSenderError.CodingKeys and conformance MLS.EventSenderError.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.EventSenderError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.EventSenderError.CodingKeys and conformance MLS.EventSenderError.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLS.EventSenderError.encode(to:)(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO16EventSenderErrorV10CodingKeys33_CD9D9A573DA392194EC02FE56EA74BE1LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO16EventSenderErrorV10CodingKeys33_CD9D9A573DA392194EC02FE56EA74BE1LLOGMR);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.EventSenderError.CodingKeys and conformance MLS.EventSenderError.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = a2;
  v16 = 0;
  lazy protocol witness table accessor for type MLS.EventSenderError.ErrorType and conformance MLS.EventSenderError.ErrorType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v4)
  {
    v15 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t protocol witness for Error._domain.getter in conformance MLS.EventSenderError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.EventSenderError and conformance MLS.EventSenderError();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t protocol witness for Error._code.getter in conformance MLS.EventSenderError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.EventSenderError and conformance MLS.EventSenderError();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t protocol witness for Decodable.init(from:) in conformance MLS.EventSenderError@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = specialized MLS.EventSenderError.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

double MLS.RetryAfterGroupVersionBehavior.outgoingEventState.getter@<D0>(uint64_t a1@<X8>)
{
  if (*(v1 + 72) == 1)
  {
    v7 = v1[2];
    v8 = v1[3];
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
    v9 = *(v1 + 8);
    *(a1 + 64) = v9;
    v11 = *v1;
    v10 = v1[1];
    *a1 = *v1;
    *(a1 + 16) = v10;
    v16 = v7;
    v17 = v8;
    v18 = v9;
    v14 = v11;
    v15 = v10;
    v19 = 1;
    goto LABEL_5;
  }

  if (!*(v1 + 72))
  {
    v2 = v1[2];
    v3 = v1[3];
    *(a1 + 32) = v2;
    *(a1 + 48) = v3;
    v4 = *(v1 + 8);
    *(a1 + 64) = v4;
    v6 = *v1;
    v5 = v1[1];
    *a1 = *v1;
    *(a1 + 16) = v5;
    v16 = v2;
    v17 = v3;
    v18 = v4;
    v14 = v6;
    v15 = v5;
    v19 = 0;
LABEL_5:
    outlined init with copy of MLS.OutgoingEventState?(&v14, v13, &_s15SecureMessaging3MLSO18OutgoingEventStateV05eventF0_tMd, &_s15SecureMessaging3MLSO18OutgoingEventStateV05eventF0_tMR);
    return result;
  }

  *(a1 + 64) = 0;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t MLS.EventSender.clientEventDeliverer.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return swift_unknownObjectRetain();
}

uint64_t MLS.EventSender.persister.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return swift_unknownObjectRetain();
}

uint64_t MLS.EventSender.logger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = direct field offset for MLS.EventSender.logger;
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MLS.EventSender.eventQueueMap.getter()
{
  v1 = direct field offset for MLS.EventSender.eventQueueMap;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t MLS.EventSender.eventQueueMap.setter(uint64_t a1)
{
  v3 = direct field offset for MLS.EventSender.eventQueueMap;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t closure #1 in variable initialization expression of MLS.EventSender.retryBlock(uint64_t a1)
{
  *(v1 + 16) = a1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v2 = static MLSActor.shared;

  return MEMORY[0x2822009F8](closure #1 in variable initialization expression of MLS.EventSender.retryBlock, v2, 0);
}

uint64_t closure #1 in variable initialization expression of MLS.EventSender.retryBlock()
{
  v1 = *(v0 + 16);
  *v1 = 1;
  *(v1 + 8) = 0u;
  *(v1 + 24) = 0u;
  *(v1 + 40) = 0u;
  *(v1 + 56) = 0u;
  *(v1 + 72) = 0u;
  *(v1 + 88) = 0;
  *(v1 + 96) = 3;
  return (*(v0 + 8))();
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.OutgoingEventState?, @guaranteed String) -> (@out MLS.EventQueue.Result, @error @owned Error)(uint64_t a1, uint64_t a2, uint64_t *a3, int *a4)
{
  v7 = *a3;
  v8 = a3[1];
  v12 = (a4 + *a4);
  v9 = a4[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v12(a1, a2, v7, v8);
}

uint64_t key path setter for MLS.EventSender.retryBlock : <A, B>MLS.EventSender<A, B>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  v6 = *(**a2 + 240);

  return v6(&thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.OutgoingEventState?, @in_guaranteed String) -> (@out MLS.EventQueue.Result, @error @owned Error)partial apply, v5);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.OutgoingEventState?, @in_guaranteed String) -> (@out MLS.EventQueue.Result, @error @owned Error)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5)
{
  v5[2] = a3;
  v5[3] = a4;
  v11 = (a5 + *a5);
  v8 = a5[1];
  v9 = swift_task_alloc();
  v5[4] = v9;
  *v9 = v5;
  v9[1] = implicit closure #12 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:);

  return (v11)(a1, a2, v5 + 2);
}

uint64_t closure #1 in variable initialization expression of MLS.EventSender.selfHealBlock()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable @async (@guaranteed String) -> (@error @owned Error)(uint64_t a1, uint64_t *a2, int *a3)
{
  v4 = *a2;
  v5 = a2[1];
  v9 = (a3 + *a3);
  v6 = a3[1];
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v9(v4, v5);
}

uint64_t key path setter for MLS.EventSender.selfHealBlock : <A, B>MLS.EventSender<A, B>(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *(**a2 + 264);

  return v6(&async function pointer to partial apply for thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed String) -> (@out (), @error @owned Error), v5);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed String) -> (@out (), @error @owned Error)(uint64_t a1, uint64_t a2, int *a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  v3[4] = v5;
  *v5 = v3;
  v5[1] = thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed String) -> (@out (), @error @owned Error);

  return v7();
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable @async (@guaranteed String, @in_guaranteed MLS.QueuedFTDInfo) -> (@error @owned Error)(uint64_t a1, uint64_t *a2, uint64_t a3, int *a4)
{
  v6 = *a2;
  v7 = a2[1];
  v11 = (a4 + *a4);
  v8 = a4[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v11(v6, v7, a3);
}

uint64_t key path setter for MLS.EventSender.enqueueFTDBlock : <A, B>MLS.EventSender<A, B>(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *(**a2 + 288);

  return v6(&async function pointer to partial apply for thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed String, @in_guaranteed MLS.QueuedFTDInfo) -> (@out (), @error @owned Error), v5);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed String, @in_guaranteed MLS.QueuedFTDInfo) -> (@out (), @error @owned Error)(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  v4[4] = v6;
  *v6 = v4;
  v6[1] = thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed String) -> (@out (), @error @owned Error);

  return v8();
}

uint64_t MLS.EventSender.retryBlock.getter(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];

  return v4;
}

uint64_t MLS.EventSender.retryBlock.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  v7 = v6[1];
  *v6 = a1;
  v6[1] = a2;
}

uint64_t MLS.EventSender.clientIdentifier.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + direct field offset for MLS.EventSender.clientIdentifier + 8);
  *a1 = *(v1 + direct field offset for MLS.EventSender.clientIdentifier);
  a1[1] = v2;
}

void *MLS.EventSender.init(eventDeliverer:bag:persister:groupLoader:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v14 = *a7;
  v15 = a7[1];
  Logger.init(subsystem:category:)();
  v16 = (v7 + direct field offset for MLS.EventSender.retryBlock);
  *v16 = &async function pointer to closure #1 in variable initialization expression of MLS.EventSender.retryBlock;
  v16[1] = 0;
  v17 = (v7 + direct field offset for MLS.EventSender.selfHealBlock);
  *v17 = &async function pointer to closure #1 in variable initialization expression of MLS.EventSender.selfHealBlock;
  v17[1] = 0;
  v18 = (v7 + direct field offset for MLS.EventSender.enqueueFTDBlock);
  *v18 = &async function pointer to closure #1 in variable initialization expression of MLS.EventSender.enqueueFTDBlock;
  v18[1] = 0;
  v19 = (v7 + direct field offset for MLS.EventSender.eventRetryPolicy);
  *v19 = closure #1 in variable initialization expression of MLS.EventSender.eventRetryPolicy;
  v19[1] = 0;
  v20 = (v7 + direct field offset for MLS.EventSender.deletionRetryPolicy);
  *v20 = closure #1 in variable initialization expression of MLS.EventSender.deletionRetryPolicy;
  v20[1] = 0;
  v7[2] = a1;
  v7[3] = a2;
  outlined init with copy of ServerBag.MLS(a3, (v7 + 7));
  v7[4] = a4;
  v7[5] = a5;
  v7[6] = a6;
  v21 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15SecureMessaging3MLSO10EventQueueCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  *(v7 + direct field offset for MLS.EventSender.eventQueueMap) = v21;
  v22 = (v7 + direct field offset for MLS.EventSender.clientIdentifier);
  *v22 = v14;
  v22[1] = v15;
  return v7;
}

uint64_t MLS.EventSender.eventQueue(groupIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = (*(*v2 + 208))();
  if (*(v6 + 16) && (v7 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 8 * v7);
  }

  else
  {

    outlined init with copy of ServerBag.MLS(v3 + 56, v26);
    v10 = *(*v3 + 280);

    v12 = v10(v11);
    v14 = v13;
    v15 = type metadata accessor for MLS.EventQueue(0);
    v16 = *(v15 + 48);
    v17 = *(v15 + 52);
    swift_allocObject();
    v9 = MLS.EventQueue.init(groupIdentifier:bag:enqueueFTDBlock:)(a1, a2, v26, v12, v14);
    v18 = *(*v3 + 224);

    v19 = v18(v26);
    v21 = v20;
    v22 = *v20;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v21;
    *v21 = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v9, a1, a2, isUniquelyReferenced_nonNull_native);

    *v21 = v25;
    v19(v26, 0);
  }

  return v9;
}

uint64_t MLS.EventSender.enqueue(groupIdentifier:identifier:isWithinPersisterTransaction:sendBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 128) = a7;
  *(v8 + 136) = v7;
  *(v8 + 112) = a4;
  *(v8 + 120) = a6;
  *(v8 + 184) = a5;
  *(v8 + 96) = a2;
  *(v8 + 104) = a3;
  *(v8 + 88) = a1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v9 = static MLSActor.shared;
  *(v8 + 144) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.EventSender.enqueue(groupIdentifier:identifier:isWithinPersisterTransaction:sendBlock:), v9, 0);
}

uint64_t MLS.EventSender.enqueue(groupIdentifier:identifier:isWithinPersisterTransaction:sendBlock:)()
{
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 112);
  v4 = *(v0 + 120);
  v5 = *(v0 + 184);
  v6 = *(v0 + 104);
  v7 = MLS.EventSender.eventQueue(groupIdentifier:)(*(v0 + 88), *(v0 + 96));
  *(v0 + 152) = v7;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0;
  *(v0 + 16) = 0u;
  v8 = swift_allocObject();
  *(v8 + 16) = v5;
  *(v0 + 160) = v8;
  *(v8 + 24) = v4;
  *(v8 + 32) = v2;
  *(v8 + 40) = v1;
  *(v8 + 48) = v6;
  *(v8 + 56) = v3;
  v9 = *(*v7 + 280);

  v15 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v0 + 168) = v11;
  *v11 = v0;
  v11[1] = MLS.EventSender.enqueue(groupIdentifier:identifier:isWithinPersisterTransaction:sendBlock:);
  v13 = *(v0 + 104);
  v12 = *(v0 + 112);

  return v15(v13, v12, v0 + 16, &async function pointer to partial apply for closure #1 in MLS.EventSender.enqueue(groupIdentifier:identifier:isWithinPersisterTransaction:sendBlock:), v8);
}

{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v9 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v4 = *(v2 + 144);
    v5 = MLS.EventSender.enqueue(groupIdentifier:identifier:isWithinPersisterTransaction:sendBlock:);
  }

  else
  {
    v6 = *(v2 + 160);
    v7 = *(v2 + 144);

    v5 = MLS.EventSender.enqueue(groupIdentifier:identifier:isWithinPersisterTransaction:sendBlock:);
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

{
  v1 = v0[19];
  v2 = v0[20];

  v3 = v0[1];
  v4 = v0[22];

  return v3();
}

uint64_t closure #1 in MLS.EventSender.enqueue(groupIdentifier:identifier:isWithinPersisterTransaction:sendBlock:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a2;
  *(v8 + 136) = a2[1];
  v10 = a2[3];
  *(v8 + 152) = a2[2];
  *(v8 + 168) = v10;
  *(v8 + 320) = v14;
  *(v8 + 328) = v15;
  *(v8 + 304) = a7;
  *(v8 + 312) = a8;
  *(v8 + 288) = a4;
  *(v8 + 296) = a6;
  *(v8 + 113) = a5;
  *(v8 + 272) = a2;
  *(v8 + 280) = a3;
  *(v8 + 264) = a1;
  *(v8 + 184) = *(a2 + 8);
  *(v8 + 120) = v9;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v11 = static MLSActor.shared;
  *(v8 + 336) = static MLSActor.shared;

  return MEMORY[0x2822009F8](closure #1 in MLS.EventSender.enqueue(groupIdentifier:identifier:isWithinPersisterTransaction:sendBlock:), v11, 0);
}

uint64_t closure #1 in MLS.EventSender.enqueue(groupIdentifier:identifier:isWithinPersisterTransaction:sendBlock:)()
{
  if (*(v0 + 113) == 1)
  {
    v1 = *(v0 + 296);
    v2 = *(v0 + 272);
    *(v0 + 192) = *v2;
    v4 = *(v2 + 32);
    v3 = *(v2 + 48);
    v5 = *(v2 + 16);
    *(v0 + 256) = *(v2 + 64);
    *(v0 + 224) = v4;
    *(v0 + 240) = v3;
    *(v0 + 208) = v5;
    v21 = (v1 + *v1);
    v6 = v1[1];
    v7 = swift_task_alloc();
    *(v0 + 344) = v7;
    *v7 = v0;
    v7[1] = closure #1 in MLS.EventSender.enqueue(groupIdentifier:identifier:isWithinPersisterTransaction:sendBlock:);
    v8 = *(v0 + 304);
    v9 = *(v0 + 280);
    v10 = *(v0 + 288);

    return v21(v0 + 16, v0 + 192, v9, v10);
  }

  else
  {
    v13 = *(v0 + 280);
    v12 = *(v0 + 288);
    v14 = *(*(v0 + 312) + 48);
    v15 = swift_task_alloc();
    *(v0 + 360) = v15;
    *(v15 + 16) = *(v0 + 296);
    *(v15 + 32) = v0 + 120;
    *(v15 + 40) = v13;
    *(v15 + 48) = v12;
    v16 = *(*v14 + 152);
    v22 = (v16 + *v16);
    v17 = v16[1];
    v18 = swift_task_alloc();
    *(v0 + 368) = v18;
    *v18 = v0;
    v18[1] = closure #1 in MLS.EventSender.enqueue(groupIdentifier:identifier:isWithinPersisterTransaction:sendBlock:);
    v19 = *(v0 + 320);
    v20 = *(v0 + 328);

    return v22(v0 + 16, v19, v20, &async function pointer to partial apply for closure #1 in closure #1 in MLS.EventSender.enqueue(groupIdentifier:identifier:isWithinPersisterTransaction:sendBlock:), v15, &type metadata for MLS.EventQueue.Result);
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 344);
  v7 = *v1;
  *(*v1 + 352) = v0;

  v4 = *(v2 + 336);
  if (v0)
  {
    v5 = closure #1 in MLS.EventSender.enqueue(groupIdentifier:identifier:isWithinPersisterTransaction:sendBlock:);
  }

  else
  {
    v5 = closure #1 in MLS.EventSender.enqueue(groupIdentifier:identifier:isWithinPersisterTransaction:sendBlock:);
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

{
  v2 = *v1;
  v3 = *(*v1 + 368);
  v9 = *v1;
  *(*v1 + 376) = v0;

  if (v0)
  {
    v4 = *(v2 + 336);
    v5 = closure #1 in MLS.EventSender.enqueue(groupIdentifier:identifier:isWithinPersisterTransaction:sendBlock:);
  }

  else
  {
    v6 = *(v2 + 360);
    v7 = *(v2 + 336);

    v5 = closure #1 in MLS.EventSender.enqueue(groupIdentifier:identifier:isWithinPersisterTransaction:sendBlock:);
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t closure #1 in closure #1 in MLS.EventSender.enqueue(groupIdentifier:identifier:isWithinPersisterTransaction:sendBlock:)(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = v6;
  if (one-time initialization token for shared != -1)
  {
    v18 = a4;
    swift_once();
    a4 = v18;
  }

  v12 = static MLSActor.shared;
  *(v10 + 80) = *(a4 + 64);
  *(v10 + 88) = v12;
  v13 = *(a4 + 48);
  *(v10 + 48) = *(a4 + 32);
  *(v10 + 64) = v13;
  v14 = *(a4 + 16);
  *(v10 + 16) = *a4;
  *(v10 + 32) = v14;
  v19 = (a2 + *a2);
  v15 = a2[1];
  v16 = swift_task_alloc();
  *(v10 + 96) = v16;
  *v16 = v10;
  v16[1] = closure #1 in closure #1 in MLS.EventSender.enqueue(groupIdentifier:identifier:isWithinPersisterTransaction:sendBlock:);

  return v19(a1, v10 + 16, a5, a6);
}

uint64_t closure #1 in closure #1 in MLS.EventSender.enqueue(groupIdentifier:identifier:isWithinPersisterTransaction:sendBlock:)()
{
  v2 = *(*v1 + 96);
  v3 = *v1;
  v3[13] = v0;

  if (v0)
  {
    v4 = v3[11];

    return MEMORY[0x2822009F8](closure #1 in closure #1 in MLS.EventSender.enqueue(groupIdentifier:identifier:isWithinPersisterTransaction:sendBlock:), v4, 0);
  }

  else
  {
    v5 = v3[1];

    return v5();
  }
}

uint64_t MLS.EventSender.enqueueSelfHeal(groupIdentifier:identifier:ftdInfo:isWithinPersisterTransaction:sendBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 128) = a8;
  *(v9 + 136) = v8;
  *(v9 + 184) = a6;
  *(v9 + 112) = a5;
  *(v9 + 120) = a7;
  *(v9 + 96) = a3;
  *(v9 + 104) = a4;
  *(v9 + 80) = a1;
  *(v9 + 88) = a2;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v10 = static MLSActor.shared;
  *(v9 + 144) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.EventSender.enqueueSelfHeal(groupIdentifier:identifier:ftdInfo:isWithinPersisterTransaction:sendBlock:), v10, 0);
}

uint64_t MLS.EventSender.enqueueSelfHeal(groupIdentifier:identifier:ftdInfo:isWithinPersisterTransaction:sendBlock:)()
{
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 184);
  v4 = *(v0 + 112);
  v5 = *(v0 + 120);
  v7 = *(v0 + 96);
  v6 = *(v0 + 104);
  v8 = MLS.EventSender.eventQueue(groupIdentifier:)(*(v0 + 80), *(v0 + 88));
  *(v0 + 152) = v8;
  v9 = v4[3];
  v11 = *v4;
  v10 = v4[1];
  *(v0 + 48) = v4[2];
  *(v0 + 64) = v9;
  *(v0 + 16) = v11;
  *(v0 + 32) = v10;
  v12 = swift_allocObject();
  *(v12 + 16) = v3;
  *(v0 + 160) = v12;
  *(v12 + 24) = v5;
  *(v12 + 32) = v2;
  *(v12 + 40) = v1;
  *(v12 + 48) = v7;
  *(v12 + 56) = v6;
  v13 = *(*v8 + 320);

  v19 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v0 + 168) = v15;
  *v15 = v0;
  v15[1] = MLS.EventSender.enqueueSelfHeal(groupIdentifier:identifier:ftdInfo:isWithinPersisterTransaction:sendBlock:);
  v17 = *(v0 + 96);
  v16 = *(v0 + 104);

  return v19(v17, v16, v0 + 16, &async function pointer to partial apply for closure #1 in MLS.EventSender.enqueueSelfHeal(groupIdentifier:identifier:ftdInfo:isWithinPersisterTransaction:sendBlock:), v12);
}

{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v9 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v4 = *(v2 + 144);
    v5 = MLS.EventSender.enqueue(groupIdentifier:identifier:isWithinPersisterTransaction:sendBlock:);
  }

  else
  {
    v6 = *(v2 + 160);
    v7 = *(v2 + 144);

    v5 = MLS.EventSender.enqueueSelfHeal(groupIdentifier:identifier:ftdInfo:isWithinPersisterTransaction:sendBlock:);
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

{
  v1 = *(v0 + 152);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t closure #1 in MLS.EventSender.enqueueSelfHeal(groupIdentifier:identifier:ftdInfo:isWithinPersisterTransaction:sendBlock:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a2;
  *(v8 + 136) = a2[1];
  v10 = a2[3];
  *(v8 + 152) = a2[2];
  *(v8 + 168) = v10;
  *(v8 + 320) = v14;
  *(v8 + 328) = v15;
  *(v8 + 304) = a7;
  *(v8 + 312) = a8;
  *(v8 + 288) = a4;
  *(v8 + 296) = a6;
  *(v8 + 113) = a5;
  *(v8 + 272) = a2;
  *(v8 + 280) = a3;
  *(v8 + 264) = a1;
  *(v8 + 184) = *(a2 + 8);
  *(v8 + 120) = v9;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v11 = static MLSActor.shared;
  *(v8 + 336) = static MLSActor.shared;

  return MEMORY[0x2822009F8](closure #1 in MLS.EventSender.enqueueSelfHeal(groupIdentifier:identifier:ftdInfo:isWithinPersisterTransaction:sendBlock:), v11, 0);
}

uint64_t closure #1 in MLS.EventSender.enqueueSelfHeal(groupIdentifier:identifier:ftdInfo:isWithinPersisterTransaction:sendBlock:)()
{
  if (*(v0 + 113) == 1)
  {
    v1 = *(v0 + 296);
    v2 = *(v0 + 272);
    *(v0 + 192) = *v2;
    v4 = *(v2 + 32);
    v3 = *(v2 + 48);
    v5 = *(v2 + 16);
    *(v0 + 256) = *(v2 + 64);
    *(v0 + 224) = v4;
    *(v0 + 240) = v3;
    *(v0 + 208) = v5;
    v21 = (v1 + *v1);
    v6 = v1[1];
    v7 = swift_task_alloc();
    *(v0 + 344) = v7;
    *v7 = v0;
    v7[1] = closure #1 in MLS.EventSender.enqueueSelfHeal(groupIdentifier:identifier:ftdInfo:isWithinPersisterTransaction:sendBlock:);
    v8 = *(v0 + 304);
    v9 = *(v0 + 280);
    v10 = *(v0 + 288);

    return v21(v0 + 16, v0 + 192, v9, v10);
  }

  else
  {
    v13 = *(v0 + 280);
    v12 = *(v0 + 288);
    v14 = *(*(v0 + 312) + 48);
    v15 = swift_task_alloc();
    *(v0 + 360) = v15;
    *(v15 + 16) = *(v0 + 296);
    *(v15 + 32) = v0 + 120;
    *(v15 + 40) = v13;
    *(v15 + 48) = v12;
    v16 = *(*v14 + 152);
    v22 = (v16 + *v16);
    v17 = v16[1];
    v18 = swift_task_alloc();
    *(v0 + 368) = v18;
    *v18 = v0;
    v18[1] = closure #1 in MLS.EventSender.enqueueSelfHeal(groupIdentifier:identifier:ftdInfo:isWithinPersisterTransaction:sendBlock:);
    v19 = *(v0 + 320);
    v20 = *(v0 + 328);

    return v22(v0 + 16, v19, v20, &async function pointer to partial apply for closure #1 in closure #1 in MLS.EventSender.enqueueSelfHeal(groupIdentifier:identifier:ftdInfo:isWithinPersisterTransaction:sendBlock:), v15, &type metadata for MLS.EventQueue.Result);
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 344);
  v7 = *v1;
  *(*v1 + 352) = v0;

  v4 = *(v2 + 336);
  if (v0)
  {
    v5 = closure #1 in MLS.EventSender.enqueueSelfHeal(groupIdentifier:identifier:ftdInfo:isWithinPersisterTransaction:sendBlock:);
  }

  else
  {
    v5 = closure #1 in MLS.EventSender.enqueueSelfHeal(groupIdentifier:identifier:ftdInfo:isWithinPersisterTransaction:sendBlock:);
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

{
  v1 = *(v0 + 264);
  v2 = *(v0 + 16);
  v3 = *(v0 + 48);
  *(v1 + 16) = *(v0 + 32);
  *(v1 + 32) = v3;
  *v1 = v2;
  v4 = *(v0 + 64);
  v5 = *(v0 + 80);
  v6 = *(v0 + 96);
  *(v1 + 96) = *(v0 + 112);
  *(v1 + 64) = v5;
  *(v1 + 80) = v6;
  *(v1 + 48) = v4;
  return (*(v0 + 8))();
}

{
  v2 = *v1;
  v3 = *(*v1 + 368);
  v9 = *v1;
  *(*v1 + 376) = v0;

  if (v0)
  {
    v4 = *(v2 + 336);
    v5 = closure #1 in MLS.EventSender.enqueueSelfHeal(groupIdentifier:identifier:ftdInfo:isWithinPersisterTransaction:sendBlock:);
  }

  else
  {
    v6 = *(v2 + 360);
    v7 = *(v2 + 336);

    v5 = closure #1 in MLS.EventSender.enqueue(groupIdentifier:identifier:isWithinPersisterTransaction:sendBlock:);
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

{
  v1 = *(v0 + 352);
  return (*(v0 + 8))();
}

{
  v1 = v0[45];

  v2 = v0[47];
  v3 = v0[1];

  return v3();
}

uint64_t closure #1 in closure #1 in MLS.EventSender.enqueueSelfHeal(groupIdentifier:identifier:ftdInfo:isWithinPersisterTransaction:sendBlock:)(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = v6;
  if (one-time initialization token for shared != -1)
  {
    v18 = a4;
    swift_once();
    a4 = v18;
  }

  v12 = static MLSActor.shared;
  *(v10 + 80) = *(a4 + 64);
  *(v10 + 88) = v12;
  v13 = *(a4 + 48);
  *(v10 + 48) = *(a4 + 32);
  *(v10 + 64) = v13;
  v14 = *(a4 + 16);
  *(v10 + 16) = *a4;
  *(v10 + 32) = v14;
  v19 = (a2 + *a2);
  v15 = a2[1];
  v16 = swift_task_alloc();
  *(v10 + 96) = v16;
  *v16 = v10;
  v16[1] = closure #1 in closure #1 in MLS.EventSender.enqueueSelfHeal(groupIdentifier:identifier:ftdInfo:isWithinPersisterTransaction:sendBlock:);

  return v19(a1, v10 + 16, a5, a6);
}

uint64_t closure #1 in closure #1 in MLS.EventSender.enqueueSelfHeal(groupIdentifier:identifier:ftdInfo:isWithinPersisterTransaction:sendBlock:)()
{
  v2 = *(*v1 + 96);
  v3 = *v1;
  v3[13] = v0;

  if (v0)
  {
    v4 = v3[11];

    return MEMORY[0x2822009F8](closure #1 in closure #1 in MLS.EventSender.enqueueSelfHeal(groupIdentifier:identifier:ftdInfo:isWithinPersisterTransaction:sendBlock:), v4, 0);
  }

  else
  {
    v5 = v3[1];

    return v5();
  }
}

{
  v1 = *(v0 + 104);
  return (*(v0 + 8))();
}

uint64_t MLS.EventSender.reenqueueMatchingEventBehindSelfHeal(groupIdentifier:identifierWaitingReflection:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v6 = static MLSActor.shared;
  v5[7] = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.EventSender.reenqueueMatchingEventBehindSelfHeal(groupIdentifier:identifierWaitingReflection:), v6, 0);
}

uint64_t MLS.EventSender.reenqueueMatchingEventBehindSelfHeal(groupIdentifier:identifierWaitingReflection:)()
{
  v1 = v0[6];
  v2 = MLS.EventSender.eventQueue(groupIdentifier:)(v0[2], v0[3]);
  v0[8] = v2;
  v3 = (*(*v1 + 256))();
  v5 = v4;
  v0[9] = v4;
  v6 = (*(*v1 + 232))();
  v8 = v7;
  v0[10] = v7;
  v14 = (*v2 + 304);
  v15 = (*v14 + **v14);
  v9 = (*v14)[1];
  v10 = swift_task_alloc();
  v0[11] = v10;
  *v10 = v0;
  v10[1] = MLS.EventSender.reenqueueMatchingEventBehindSelfHeal(groupIdentifier:identifierWaitingReflection:);
  v12 = v0[4];
  v11 = v0[5];

  return v15(v12, v11, v3, v5, v6, v8);
}

{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v10 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = v2[7];
    v5 = MLS.EventSender.reenqueueMatchingEventBehindSelfHeal(groupIdentifier:identifierWaitingReflection:);
  }

  else
  {
    v7 = v2[9];
    v6 = v2[10];
    v8 = v2[7];

    v5 = MLS.EventSender.reenqueueMatchingEventBehindSelfHeal(groupIdentifier:identifierWaitingReflection:);
    v4 = v8;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2();
}

{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];

  v4 = v0[1];
  v5 = v0[12];

  return v4();
}

uint64_t MLS.EventSender.reenqueueMatchingEvent(groupIdentifier:identifierWaitingReflection:sendBlockOverride:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v8 = static MLSActor.shared;
  v7[9] = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.EventSender.reenqueueMatchingEvent(groupIdentifier:identifierWaitingReflection:sendBlockOverride:), v8, 0);
}

uint64_t MLS.EventSender.reenqueueMatchingEvent(groupIdentifier:identifierWaitingReflection:sendBlockOverride:)()
{
  v1 = v0[8];
  v2 = v0[6];
  v3 = MLS.EventSender.eventQueue(groupIdentifier:)(v0[2], v0[3]);
  v0[10] = v3;
  if (v2)
  {
    v4 = v0[6];
    v5 = &thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.OutgoingEventState?, @guaranteed String) -> (@out MLS.EventQueue.Result, @error @owned Error)partial apply;
    v6 = v4;
    v7 = v0[7];
  }

  else
  {
    v6 = (*(*v0[8] + 232))();
    v7 = v8;
    v4 = v0[6];
    v9 = v0[7];
    v5 = &async function pointer to partial apply for thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.OutgoingEventState?, @guaranteed String) -> (@out MLS.EventQueue.Result, @error @owned Error);
  }

  v10 = swift_allocObject();
  *(v10 + 16) = v6;
  *(v10 + 24) = v7;
  v11 = swift_allocObject();
  v0[11] = v11;
  *(v11 + 16) = v5;
  *(v11 + 24) = v10;
  v12 = *(*v3 + 312);
  _sxSbs5Error_pRi_zRi0_zlyxIseghndzo_Sgs8SendableRzlWOy(v4);
  v18 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  v0[12] = v14;
  *v14 = v0;
  v14[1] = MLS.EventSender.reenqueueMatchingEvent(groupIdentifier:identifierWaitingReflection:sendBlockOverride:);
  v16 = v0[4];
  v15 = v0[5];

  return v18(v16, v15, &async function pointer to partial apply for thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.OutgoingEventState?, @in_guaranteed String) -> (@out MLS.EventQueue.Result, @error @owned Error), v11);
}

{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v9 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = *(v2 + 72);
    v5 = MLS.EventSender.reenqueueMatchingEvent(groupIdentifier:identifierWaitingReflection:sendBlockOverride:);
  }

  else
  {
    v6 = *(v2 + 88);
    v7 = *(v2 + 72);

    v5 = MLS.EventSender.reenqueueMatchingEvent(groupIdentifier:identifierWaitingReflection:sendBlockOverride:);
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

{
  v1 = *(v0 + 80);

  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = v0[10];
  v2 = v0[11];

  v3 = v0[1];
  v4 = v0[13];

  return v3();
}

uint64_t MLS.EventSender.enqueuePersisted(eventState:groupIdentifier:sendBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 480) = a5;
  *(v6 + 488) = v5;
  *(v6 + 464) = a3;
  *(v6 + 472) = a4;
  *(v6 + 448) = a1;
  *(v6 + 456) = a2;
  v7 = *(a1 + 48);
  *(v6 + 48) = *(a1 + 32);
  *(v6 + 64) = v7;
  *(v6 + 80) = *(a1 + 64);
  v8 = *(a1 + 16);
  *(v6 + 16) = *a1;
  *(v6 + 32) = v8;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v9 = static MLSActor.shared;
  *(v6 + 496) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.EventSender.enqueuePersisted(eventState:groupIdentifier:sendBlock:), v9, 0);
}

uint64_t MLS.EventSender.enqueuePersisted(eventState:groupIdentifier:sendBlock:)()
{
  v1 = *(v0 + 480);
  v2 = *(v0 + 488);
  v3 = *(v0 + 472);
  v4 = *(v0 + 448);
  v5 = MLS.EventSender.eventQueue(groupIdentifier:)(*(v0 + 456), *(v0 + 464));
  *(v0 + 504) = v5;
  v6 = *(v0 + 56);
  v7 = *(v0 + 64);
  v9 = *(v4 + 32);
  v8 = *(v4 + 48);
  v10 = *(v4 + 16);
  *(v0 + 152) = *(v4 + 64);
  *(v0 + 120) = v9;
  *(v0 + 136) = v8;
  *(v0 + 104) = v10;
  *(v0 + 88) = *v4;
  v11 = swift_allocObject();
  *(v0 + 512) = v11;
  *(v11 + 16) = v2;
  v13 = *(v4 + 32);
  v12 = *(v4 + 48);
  v14 = *(v4 + 16);
  *(v11 + 88) = *(v4 + 64);
  *(v11 + 40) = v14;
  *(v11 + 56) = v13;
  *(v11 + 72) = v12;
  *(v11 + 24) = *v4;
  *(v11 + 96) = v3;
  *(v11 + 104) = v1;
  v15 = *(*v5 + 280);
  outlined init with copy of MLS.OutgoingEventState(v0 + 16, v0 + 160);
  outlined init with copy of MLS.OutgoingEventState(v0 + 16, v0 + 232);

  v19 = (v15 + *v15);
  v16 = v15[1];
  v17 = swift_task_alloc();
  *(v0 + 520) = v17;
  *v17 = v0;
  v17[1] = MLS.EventSender.enqueuePersisted(eventState:groupIdentifier:sendBlock:);

  return v19(v6, v7, v0 + 88, &async function pointer to partial apply for closure #1 in MLS.EventSender.enqueuePersisted(eventState:groupIdentifier:sendBlock:), v11);
}

{
  v2 = *v1;
  v3 = *(*v1 + 520);
  v4 = *v1;
  *(v2 + 528) = v0;

  v5 = *(v2 + 512);
  v6 = *(v2 + 496);
  if (v0)
  {
    v7 = *(v2 + 88);
    v8 = *(v2 + 104);
    v9 = *(v2 + 120);
    v10 = *(v2 + 136);
    *(v2 + 368) = *(v2 + 152);
    *(v2 + 336) = v9;
    *(v2 + 352) = v10;
    *(v2 + 304) = v7;
    *(v2 + 320) = v8;
    outlined destroy of NSObject?(v2 + 304, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMd, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMR);

    v11 = MLS.EventSender.enqueuePersisted(eventState:groupIdentifier:sendBlock:);
  }

  else
  {
    *(v2 + 376) = *(v2 + 88);
    v12 = *(v2 + 104);
    v13 = *(v2 + 120);
    v14 = *(v2 + 136);
    *(v2 + 440) = *(v2 + 152);
    *(v2 + 408) = v13;
    *(v2 + 424) = v14;
    *(v2 + 392) = v12;
    outlined destroy of NSObject?(v2 + 376, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMd, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMR);

    v11 = MLS.EventSender.enqueuePersisted(eventState:groupIdentifier:sendBlock:);
  }

  return MEMORY[0x2822009F8](v11, v6, 0);
}

{
  v1 = *(v0 + 504);

  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = v0[63];

  v2 = v0[1];
  v3 = v0[66];

  return v2();
}

uint64_t closure #1 in MLS.EventSender.enqueuePersisted(eventState:groupIdentifier:sendBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 128) = a7;
  *(v8 + 136) = a8;
  *(v8 + 112) = a5;
  *(v8 + 120) = a6;
  *(v8 + 96) = a3;
  *(v8 + 104) = a4;
  v9 = *(a2 + 48);
  *(v8 + 48) = *(a2 + 32);
  *(v8 + 64) = v9;
  *(v8 + 80) = *(a2 + 64);
  *(v8 + 88) = a1;
  v10 = *(a2 + 16);
  *(v8 + 16) = *a2;
  *(v8 + 32) = v10;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v11 = static MLSActor.shared;
  *(v8 + 144) = static MLSActor.shared;

  return MEMORY[0x2822009F8](closure #1 in MLS.EventSender.enqueuePersisted(eventState:groupIdentifier:sendBlock:), v11, 0);
}

uint64_t closure #1 in MLS.EventSender.enqueuePersisted(eventState:groupIdentifier:sendBlock:)()
{
  v1 = *(v0 + 120);
  v3 = *(v0 + 96);
  v2 = *(v0 + 104);
  v4 = *(*(v0 + 112) + 48);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = swift_task_alloc();
  *(v0 + 152) = v7;
  *(v7 + 16) = *(v0 + 128);
  *(v7 + 32) = v0 + 16;
  *(v7 + 40) = v3;
  *(v7 + 48) = v2;
  v8 = *(*v4 + 152);
  v13 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v0 + 160) = v10;
  *v10 = v0;
  v10[1] = closure #1 in MLS.EventSender.enqueuePersisted(eventState:groupIdentifier:sendBlock:);
  v11 = *(v0 + 88);

  return v13(v11, v5, v6, &async function pointer to partial apply for closure #1 in closure #1 in MLS.EventSender.enqueuePersisted(eventState:groupIdentifier:sendBlock:), v7, &type metadata for MLS.EventQueue.Result);
}

{
  v2 = *(*v1 + 160);
  v3 = *v1;
  v3[21] = v0;

  if (v0)
  {
    v4 = v3[18];

    return MEMORY[0x2822009F8](MLS.EventQueue.reenqueueAtFrontBehindSelfHeal(identifier:eventState:selfHealBlock:sendBlock:), v4, 0);
  }

  else
  {
    v5 = v3[19];

    v6 = v3[1];

    return v6();
  }
}

uint64_t MLS.EventSender.dequeue(groupVersion:groupIdentifier:identifier:dueToReflection:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(a1 + 2);
  v10 = a1[2];
  v13 = *a1;
  v14 = v9;
  v15 = v10;
  v11 = *MLS.EventSender.eventQueue(groupIdentifier:)(a2, a3);
  (*(v11 + 328))(&v13, a4, a5, a6);
}

uint64_t MLS.EventSender.send(outgoingEvent:forGroup:retryBehavior:shouldPersistNewEvent:acknowledgementBlock:)(__int128 *a1, uint64_t a2, __int128 *a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 2744) = v6;
  *(v7 + 2736) = a6;
  *(v7 + 2728) = a5;
  *(v7 + 1033) = a4;
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v12 = swift_task_alloc();
  v13 = a1[7];
  *(v7 + 1168) = a1[8];
  v14 = a1[8];
  *(v7 + 1184) = a1[9];
  v15 = a1[9];
  *(v7 + 1200) = a1[10];
  v16 = a1[3];
  *(v7 + 1104) = a1[4];
  v17 = a1[4];
  *(v7 + 1120) = a1[5];
  v18 = a1[5];
  *(v7 + 1136) = a1[6];
  v19 = a1[6];
  *(v7 + 1152) = a1[7];
  v20 = a1[1];
  *(v7 + 1040) = *a1;
  v21 = *a1;
  *(v7 + 1056) = a1[1];
  *(v7 + 1072) = a1[2];
  v22 = a1[2];
  *(v7 + 1088) = a1[3];
  *(v7 + 984) = v14;
  *(v7 + 1000) = v15;
  *(v7 + 1016) = a1[10];
  *(v7 + 920) = v17;
  *(v7 + 936) = v18;
  *(v7 + 2752) = v12;
  *(v7 + 1216) = *(a1 + 176);
  *(v7 + 1032) = *(a1 + 176);
  *(v7 + 952) = v19;
  *(v7 + 968) = v13;
  *(v7 + 856) = v21;
  *(v7 + 872) = v20;
  *(v7 + 888) = v22;
  *(v7 + 904) = v16;
  v23 = *(a2 + 80);
  *(v7 + 2024) = *(a2 + 64);
  *(v7 + 2040) = v23;
  *(v7 + 2056) = *(a2 + 96);
  v24 = *(a2 + 16);
  *(v7 + 1960) = *a2;
  *(v7 + 1976) = v24;
  v25 = *(a2 + 48);
  *(v7 + 1992) = *(a2 + 32);
  *(v7 + 2008) = v25;
  v26 = *a3;
  v27 = a3[1];
  *(v7 + 2305) = *(a3 + 57);
  v29 = a3[2];
  v28 = a3[3];
  *(v7 + 2280) = v29;
  *(v7 + 2296) = v28;
  v31 = *a3;
  v30 = a3[1];
  *(v7 + 2248) = v26;
  *(v7 + 2264) = v30;
  *(v7 + 2225) = *(a3 + 57);
  v32 = a3[3];
  *(v7 + 2200) = v29;
  *(v7 + 2216) = v32;
  *(v7 + 2168) = v31;
  *(v7 + 2184) = v27;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v33 = static MLSActor.shared;
  *(v7 + 2760) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.EventSender.send(outgoingEvent:forGroup:retryBehavior:shouldPersistNewEvent:acknowledgementBlock:), v33, 0);
}

uint64_t MLS.EventSender.send(outgoingEvent:forGroup:retryBehavior:shouldPersistNewEvent:acknowledgementBlock:)()
{
  v75 = v0;
  v1 = *(v0 + 2744);
  *(v0 + 2768) = direct field offset for MLS.EventSender.logger;
  outlined init with copy of MLS.OutgoingEventState?(v0 + 1040, v0 + 1224, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  outlined destroy of NSObject?(v0 + 1040, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v74 = v5;
    *v4 = 136315138;
    v6 = specialized MLS.OutgoingEventType.identifier.getter();
    v8 = v7;

    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v8, &v74);

    *(v4 + 4) = v9;
    _os_log_impl(&dword_264F1F000, v2, v3, "EventSender told to send outgoing event { identifier: %s }", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x266755550](v5, -1, -1);
    MEMORY[0x266755550](v4, -1, -1);
  }

  v10 = (v0 + 2248);
  if (*(v0 + 1033) == 1)
  {
    v11 = (v0 + 2168);
    v12 = *v10;
    v13 = *(v0 + 2264);
    v14 = *(v0 + 2280);
    v15 = *(v0 + 2296);
    v16 = *(v0 + 2312);
    if (*(v0 + 2320) == 1)
    {
      v68 = *(v0 + 2296);
      v69 = *(v0 + 2280);
      v70 = *(v0 + 2264);
      v72 = *v10;
      v17 = v0 + 2408;
      v43 = *(v0 + 2216);
      *(v0 + 2440) = *(v0 + 2200);
      *(v0 + 2456) = v43;
      *(v0 + 2465) = *(v0 + 2225);
      v44 = *(v0 + 2184);
      *(v0 + 2408) = *v11;
      *(v0 + 2424) = v44;
      v20 = v0 + 2568;
    }

    else
    {
      if (*(v0 + 2320))
      {
        v16 = 0;
        v45 = 0uLL;
        v46 = 0uLL;
        v47 = 0uLL;
        v48 = 0uLL;
        goto LABEL_13;
      }

      v68 = *(v0 + 2296);
      v69 = *(v0 + 2280);
      v70 = *(v0 + 2264);
      v72 = *v10;
      v17 = v0 + 2488;
      v18 = *(v0 + 2216);
      *(v0 + 2520) = *(v0 + 2200);
      *(v0 + 2536) = v18;
      *(v0 + 2545) = *(v0 + 2225);
      v19 = *(v0 + 2184);
      *(v0 + 2488) = *v11;
      *(v0 + 2504) = v19;
      v20 = v0 + 2640;
    }

    outlined init with copy of MLS.OutgoingEventState?(v17, v20, &_s15SecureMessaging3MLSO18OutgoingEventStateV05eventF0_tMd, &_s15SecureMessaging3MLSO18OutgoingEventStateV05eventF0_tMR);
    v46 = v70;
    v45 = v72;
    v48 = v68;
    v47 = v69;
LABEL_13:
    v49 = *(v0 + 2744);
    v50 = *(v0 + 1976);
    v51 = *(v0 + 1984);
    v52 = *(v0 + 1992);
    v53 = *(v0 + 1000);
    *(v0 + 424) = *(v0 + 984);
    *(v0 + 440) = v53;
    *(v0 + 456) = *(v0 + 1016);
    *(v0 + 472) = *(v0 + 1032);
    v54 = *(v0 + 936);
    *(v0 + 360) = *(v0 + 920);
    *(v0 + 376) = v54;
    v55 = *(v0 + 968);
    *(v0 + 392) = *(v0 + 952);
    *(v0 + 408) = v55;
    v56 = *(v0 + 872);
    *(v0 + 296) = *(v0 + 856);
    *(v0 + 312) = v56;
    v57 = *(v0 + 904);
    *(v0 + 328) = *(v0 + 888);
    *(v0 + 344) = v57;
    *(v0 + 480) = v45;
    *(v0 + 496) = v46;
    *(v0 + 512) = v47;
    *(v0 + 528) = v48;
    *(v0 + 544) = v16;
    *(v0 + 552) = v50;
    *(v0 + 560) = v51;
    *(v0 + 568) = v52;
    memcpy((v0 + 16), (v0 + 296), 0x118uLL);
    _s15SecureMessaging3MLSO19OutgoingEventUpdateOWOi_(v0 + 16);
    v58 = *(v49 + 32);
    v59 = *(v49 + 40);
    ObjectType = swift_getObjectType();
    memcpy((v0 + 576), (v0 + 16), 0x118uLL);
    v61 = *(v0 + 1960);
    v62 = *(v0 + 1968);
    v63 = *(v49 + direct field offset for MLS.EventSender.clientIdentifier);
    v64 = *(v49 + direct field offset for MLS.EventSender.clientIdentifier + 8);
    *(v0 + 2712) = v63;
    *(v0 + 2720) = v64;
    v65 = *(v59 + 112);
    outlined init with copy of MLS.OutgoingEventState?(v0 + 1040, v0 + 1592, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);

    v71 = (v65 + *v65);
    v66 = v65[1];
    v67 = swift_task_alloc();
    *(v0 + 2776) = v67;
    *v67 = v0;
    v67[1] = MLS.EventSender.send(outgoingEvent:forGroup:retryBehavior:shouldPersistNewEvent:acknowledgementBlock:);

    return v71(v0 + 576, v61, v62, v0 + 2712, ObjectType, v59);
  }

  v21 = *(v0 + 2760);
  v22 = *(v0 + 2752);
  v23 = *(v0 + 2744);
  v73 = *(v0 + 2736);
  v24 = *(v0 + 2728);
  v25 = type metadata accessor for TaskPriority();
  (*(*(v25 - 8) + 56))(v22, 1, 1, v25);
  v26 = lazy protocol witness table accessor for type MLSActor and conformance MLSActor();
  v27 = swift_allocObject();
  *(v27 + 16) = v21;
  *(v27 + 24) = v26;
  *(v27 + 32) = v23;
  v28 = *(v0 + 1184);
  *(v27 + 168) = *(v0 + 1168);
  *(v27 + 184) = v28;
  *(v27 + 200) = *(v0 + 1200);
  *(v27 + 216) = *(v0 + 1216);
  v29 = *(v0 + 1120);
  *(v27 + 104) = *(v0 + 1104);
  *(v27 + 120) = v29;
  v30 = *(v0 + 1152);
  *(v27 + 136) = *(v0 + 1136);
  *(v27 + 152) = v30;
  v31 = *(v0 + 1056);
  *(v27 + 40) = *(v0 + 1040);
  *(v27 + 56) = v31;
  v32 = *(v0 + 1088);
  *(v27 + 72) = *(v0 + 1072);
  *(v27 + 88) = v32;
  v33 = *(v0 + 2040);
  *(v27 + 288) = *(v0 + 2024);
  *(v27 + 304) = v33;
  v34 = *(v0 + 2056);
  v35 = *(v0 + 1976);
  *(v27 + 224) = *(v0 + 1960);
  *(v27 + 240) = v35;
  v36 = *(v0 + 2008);
  *(v27 + 256) = *(v0 + 1992);
  *(v27 + 272) = v36;
  *(v27 + 320) = v34;
  *(v27 + 328) = v24;
  *(v27 + 336) = v73;
  v37 = *v10;
  v38 = *(v0 + 2264);
  *(v27 + 401) = *(v0 + 2305);
  v39 = *(v0 + 2296);
  *(v27 + 376) = *(v0 + 2280);
  *(v27 + 392) = v39;
  *(v27 + 344) = v37;
  *(v27 + 360) = v38;
  outlined init with copy of MLS.OutgoingEventState?(v0 + 1040, v0 + 1408, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
  outlined init with copy of MLS.RetryAfterGroupVersionBehavior(v0 + 2248, v0 + 2328);

  outlined init with copy of MLS.Group(v0 + 1960, v0 + 2064);
  _sxSbs5Error_pRi_zRi0_zlyxIseghndzo_Sgs8SendableRzlWOy(v24);

  v40 = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v22, &async function pointer to partial apply for closure #1 in MLS.EventSender.send(outgoingEvent:forGroup:retryBehavior:shouldPersistNewEvent:acknowledgementBlock:), v27);

  v41 = *(v0 + 8);

  return v41(v40);
}

{
  v2 = *v1;
  v3 = *(*v1 + 2776);
  v4 = *v1;
  v2[348] = v0;

  v5 = v2[340];

  v6 = v2[345];
  if (v0)
  {
    v7 = MLS.EventSender.send(outgoingEvent:forGroup:retryBehavior:shouldPersistNewEvent:acknowledgementBlock:);
  }

  else
  {
    v7 = MLS.EventSender.send(outgoingEvent:forGroup:retryBehavior:shouldPersistNewEvent:acknowledgementBlock:);
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

{
  v35 = v0;
  v1 = *(v0 + 2768);
  v2 = *(v0 + 2744);
  outlined init with copy of MLS.OutgoingEventState?(v0 + 1040, v0 + 1776, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  outlined destroy of NSObject?(v0 + 1040, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v34 = v6;
    *v5 = 136315138;
    v7 = specialized MLS.OutgoingEventType.identifier.getter();
    v9 = v8;

    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v9, &v34);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_264F1F000, v3, v4, "EventSender persisted outgoing event { identifier: %s }", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x266755550](v6, -1, -1);
    MEMORY[0x266755550](v5, -1, -1);
  }

  outlined destroy of NSObject?(v0 + 296, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVG_AC0dE5StateVSgAC12GroupVersionVtMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVG_AC0dE5StateVSgAC12GroupVersionVtMR);

  v11 = *(v0 + 2760);
  v12 = *(v0 + 2752);
  v13 = *(v0 + 2744);
  v33 = *(v0 + 2736);
  v14 = *(v0 + 2728);
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = lazy protocol witness table accessor for type MLSActor and conformance MLSActor();
  v17 = swift_allocObject();
  *(v17 + 16) = v11;
  *(v17 + 24) = v16;
  *(v17 + 32) = v13;
  v18 = *(v0 + 1184);
  *(v17 + 168) = *(v0 + 1168);
  *(v17 + 184) = v18;
  *(v17 + 200) = *(v0 + 1200);
  *(v17 + 216) = *(v0 + 1216);
  v19 = *(v0 + 1120);
  *(v17 + 104) = *(v0 + 1104);
  *(v17 + 120) = v19;
  v20 = *(v0 + 1152);
  *(v17 + 136) = *(v0 + 1136);
  *(v17 + 152) = v20;
  v21 = *(v0 + 1056);
  *(v17 + 40) = *(v0 + 1040);
  *(v17 + 56) = v21;
  v22 = *(v0 + 1088);
  *(v17 + 72) = *(v0 + 1072);
  *(v17 + 88) = v22;
  v23 = *(v0 + 2040);
  *(v17 + 288) = *(v0 + 2024);
  *(v17 + 304) = v23;
  v24 = *(v0 + 2056);
  v25 = *(v0 + 1976);
  *(v17 + 224) = *(v0 + 1960);
  *(v17 + 240) = v25;
  v26 = *(v0 + 2008);
  *(v17 + 256) = *(v0 + 1992);
  *(v17 + 272) = v26;
  *(v17 + 320) = v24;
  *(v17 + 328) = v14;
  *(v17 + 336) = v33;
  v27 = *(v0 + 2248);
  v28 = *(v0 + 2264);
  *(v17 + 401) = *(v0 + 2305);
  v29 = *(v0 + 2296);
  *(v17 + 376) = *(v0 + 2280);
  *(v17 + 392) = v29;
  *(v17 + 344) = v27;
  *(v17 + 360) = v28;
  outlined init with copy of MLS.OutgoingEventState?(v0 + 1040, v0 + 1408, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
  outlined init with copy of MLS.RetryAfterGroupVersionBehavior(v0 + 2248, v0 + 2328);

  outlined init with copy of MLS.Group(v0 + 1960, v0 + 2064);
  _sxSbs5Error_pRi_zRi0_zlyxIseghndzo_Sgs8SendableRzlWOy(v14);

  v30 = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v12, &async function pointer to partial apply for closure #1 in MLS.EventSender.send(outgoingEvent:forGroup:retryBehavior:shouldPersistNewEvent:acknowledgementBlock:), v17);

  v31 = *(v0 + 8);

  return v31(v30);
}

{
  v1 = v0[344];
  outlined destroy of NSObject?((v0 + 37), &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVG_AC0dE5StateVSgAC12GroupVersionVtMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVG_AC0dE5StateVSgAC12GroupVersionVtMR);

  v2 = v0[1];
  v3 = v0[348];

  return v2();
}

uint64_t closure #1 in MLS.EventSender.send(outgoingEvent:forGroup:retryBehavior:shouldPersistNewEvent:acknowledgementBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[112] = v12;
  v8[111] = a8;
  v8[110] = a7;
  v8[109] = a6;
  v8[108] = a5;
  v8[107] = a4;
  v8[113] = *a4;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v9 = static MLSActor.shared;
  v8[114] = static MLSActor.shared;

  return MEMORY[0x2822009F8](closure #1 in MLS.EventSender.send(outgoingEvent:forGroup:retryBehavior:shouldPersistNewEvent:acknowledgementBlock:), v9, 0);
}

uint64_t closure #1 in MLS.EventSender.send(outgoingEvent:forGroup:retryBehavior:shouldPersistNewEvent:acknowledgementBlock:)()
{
  v1 = v0[108];
  v2 = v0[107];
  outlined init with copy of MLS.OutgoingEventState?(v1, (v0 + 2), &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  outlined destroy of NSObject?(v1, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[108];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v68 = v7;
    *v6 = 136315138;
    v8 = specialized MLS.OutgoingEventType.identifier.getter();
    v10 = v9;

    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v10, &v68);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_264F1F000, v3, v4, "EventSender on MLS actor { identifier: %s }", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x266755550](v7, -1, -1);
    MEMORY[0x266755550](v6, -1, -1);
  }

  v12 = v0[113];
  v13 = v0[112];
  v14 = v0[111];
  v66 = v0[110];
  v15 = v0[109];
  v16 = v0[108];
  v17 = v0[107];
  v18 = specialized MLS.OutgoingEventType.identifier.getter();
  v64 = v19;
  v65 = v18;
  v0[115] = v19;
  v20 = swift_allocObject();
  swift_weakInit();
  v21 = swift_allocObject();
  v0[116] = v21;
  v63 = v12[10];
  *(v21 + 16) = v63;
  v62 = v12[11];
  *(v21 + 24) = v62;
  v22 = v12[12];
  *(v21 + 32) = v22;
  v23 = v12[13];
  *(v21 + 40) = v23;
  *(v21 + 48) = v20;
  v24 = *(v16 + 32);
  v25 = *(v16 + 48);
  v26 = *(v16 + 16);
  *(v21 + 56) = *v16;
  *(v21 + 104) = v25;
  *(v21 + 88) = v24;
  *(v21 + 72) = v26;
  v27 = *(v16 + 96);
  v28 = *(v16 + 112);
  v29 = *(v16 + 80);
  *(v21 + 120) = *(v16 + 64);
  *(v21 + 168) = v28;
  *(v21 + 152) = v27;
  *(v21 + 136) = v29;
  v31 = *(v16 + 144);
  v30 = *(v16 + 160);
  v32 = *(v16 + 176);
  *(v21 + 184) = *(v16 + 128);
  *(v21 + 232) = v32;
  *(v21 + 216) = v30;
  *(v21 + 200) = v31;
  v33 = *v15;
  v34 = *(v15 + 32);
  *(v21 + 256) = *(v15 + 16);
  *(v21 + 272) = v34;
  *(v21 + 240) = v33;
  v35 = *(v15 + 48);
  v36 = *(v15 + 80);
  v37 = *(v15 + 96);
  *(v21 + 304) = *(v15 + 64);
  *(v21 + 320) = v36;
  *(v21 + 288) = v35;
  *(v21 + 336) = v37;
  *(v21 + 344) = v66;
  *(v21 + 352) = v14;
  *(v21 + 360) = *v13;
  v38 = v13[1];
  v39 = v13[2];
  v40 = v13[3];
  *(v21 + 417) = *(v13 + 57);
  *(v21 + 392) = v39;
  *(v21 + 408) = v40;
  *(v21 + 376) = v38;
  v41 = swift_allocObject();
  swift_weakInit();
  v42 = swift_allocObject();
  *&v43 = v63;
  *(&v43 + 1) = v62;
  *&v44 = v22;
  *(&v44 + 1) = v23;
  v0[117] = v42;
  *(v42 + 16) = v43;
  *(v42 + 32) = v44;
  *(v42 + 48) = v41;
  v45 = *(v16 + 128);
  v46 = *(v16 + 144);
  v47 = *(v16 + 160);
  *(v42 + 232) = *(v16 + 176);
  *(v42 + 216) = v47;
  *(v42 + 200) = v46;
  *(v42 + 184) = v45;
  v48 = *(v16 + 64);
  v49 = *(v16 + 80);
  v50 = *(v16 + 96);
  *(v42 + 168) = *(v16 + 112);
  *(v42 + 152) = v50;
  *(v42 + 136) = v49;
  *(v42 + 120) = v48;
  v51 = *v16;
  v52 = *(v16 + 16);
  v53 = *(v16 + 32);
  *(v42 + 104) = *(v16 + 48);
  *(v42 + 88) = v53;
  *(v42 + 72) = v52;
  *(v42 + 56) = v51;
  v54 = *v15;
  v55 = *(v15 + 32);
  *(v42 + 256) = *(v15 + 16);
  *(v42 + 272) = v55;
  *(v42 + 240) = v54;
  v56 = *(v15 + 48);
  v57 = *(v15 + 64);
  v58 = *(v15 + 80);
  *(v42 + 336) = *(v15 + 96);
  *(v42 + 304) = v57;
  *(v42 + 320) = v58;
  *(v42 + 288) = v56;
  outlined init with copy of MLS.OutgoingEventState?(v16, (v0 + 25), &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
  outlined init with copy of MLS.Group(v15, (v0 + 71));
  outlined init with copy of MLS.OutgoingEventState?(v16, (v0 + 48), &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
  outlined init with copy of MLS.Group(v15, (v0 + 84));

  _sxSbs5Error_pRi_zRi0_zlyxIseghndzo_Sgs8SendableRzlWOy(v66);
  outlined init with copy of MLS.RetryAfterGroupVersionBehavior(v13, (v0 + 97));
  v59 = swift_task_alloc();
  v0[118] = v59;
  *v59 = v0;
  v59[1] = closure #1 in MLS.EventSender.send(outgoingEvent:forGroup:retryBehavior:shouldPersistNewEvent:acknowledgementBlock:);
  v60 = v0[107];

  return MLS.EventSender.performWithRetry<A>(identifier:retryPolicy:work:failureBlock:)(v0 + 193, v65, v64, 0, &async function pointer to partial apply for closure #1 in closure #1 in MLS.EventSender.send(outgoingEvent:forGroup:retryBehavior:shouldPersistNewEvent:acknowledgementBlock:), v21, &async function pointer to partial apply for closure #2 in closure #1 in MLS.EventSender.send(outgoingEvent:forGroup:retryBehavior:shouldPersistNewEvent:acknowledgementBlock:), v42);
}

{
  v1 = *(*v0 + 944);
  v2 = *(*v0 + 936);
  v3 = *(*v0 + 928);
  v4 = *(*v0 + 920);
  v5 = *(*v0 + 912);
  v7 = *v0;

  return MEMORY[0x2822009F8](closure #1 in MLS.EventSender.send(outgoingEvent:forGroup:retryBehavior:shouldPersistNewEvent:acknowledgementBlock:), v5, 0);
}

{
  return (*(v0 + 8))();
}

uint64_t closure #1 in closure #1 in MLS.EventSender.send(outgoingEvent:forGroup:retryBehavior:shouldPersistNewEvent:acknowledgementBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[222] = a7;
  v7[221] = a6;
  v7[220] = a5;
  v7[219] = a4;
  v7[218] = a3;
  v7[217] = a2;
  v7[216] = a1;
  return MEMORY[0x2822009F8](closure #1 in closure #1 in MLS.EventSender.send(outgoingEvent:forGroup:retryBehavior:shouldPersistNewEvent:acknowledgementBlock:), 0, 0);
}

uint64_t closure #1 in closure #1 in MLS.EventSender.send(outgoingEvent:forGroup:retryBehavior:shouldPersistNewEvent:acknowledgementBlock:)()
{
  v40 = v0;
  v1 = *(v0 + 1736);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 1784) = Strong;
  if (Strong)
  {
    v3 = Strong;
    v4 = *(v0 + 1744);
    *(v0 + 1792) = direct field offset for MLS.EventSender.logger;
    outlined init with copy of MLS.OutgoingEventState?(v4, v0 + 16, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    outlined destroy of NSObject?(v4, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
    if (os_log_type_enabled(v5, v6))
    {
      v7 = *(v0 + 1744);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v39 = v9;
      *v8 = 136315138;
      v10 = specialized MLS.OutgoingEventType.identifier.getter();
      v12 = v11;

      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v12, &v39);

      *(v8 + 4) = v13;
      _os_log_impl(&dword_264F1F000, v5, v6, "EventSender sending event { identifier: %s }", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x266755550](v9, -1, -1);
      MEMORY[0x266755550](v8, -1, -1);
    }

    v14 = *(v0 + 1752);
    v15 = *(v0 + 1744);
    v17 = *(v3 + 16);
    v16 = *(v3 + 24);
    ObjectType = swift_getObjectType();
    v19 = *(v15 + 32);
    v20 = *(v15 + 48);
    v21 = *(v15 + 16);
    *(v0 + 200) = *v15;
    *(v0 + 248) = v20;
    *(v0 + 232) = v19;
    *(v0 + 216) = v21;
    v22 = *(v15 + 112);
    v24 = *(v15 + 64);
    v23 = *(v15 + 80);
    *(v0 + 296) = *(v15 + 96);
    *(v0 + 312) = v22;
    *(v0 + 264) = v24;
    *(v0 + 280) = v23;
    v26 = *(v15 + 144);
    v25 = *(v15 + 160);
    v27 = *(v15 + 128);
    *(v0 + 376) = *(v15 + 176);
    *(v0 + 344) = v26;
    *(v0 + 360) = v25;
    *(v0 + 328) = v27;
    v29 = *(v14 + 16);
    v28 = *(v14 + 32);
    *(v0 + 1120) = *v14;
    *(v0 + 1136) = v29;
    *(v0 + 1152) = v28;
    v30 = *(v14 + 48);
    v31 = *(v14 + 64);
    v32 = *(v14 + 80);
    *(v0 + 1216) = *(v14 + 96);
    *(v0 + 1200) = v32;
    *(v0 + 1184) = v31;
    *(v0 + 1168) = v30;
    v33 = *(v16 + 8);
    v38 = (v33 + *v33);
    v34 = v33[1];
    v35 = swift_task_alloc();
    *(v0 + 1800) = v35;
    *v35 = v0;
    v35[1] = closure #1 in closure #1 in MLS.EventSender.send(outgoingEvent:forGroup:retryBehavior:shouldPersistNewEvent:acknowledgementBlock:);

    return v38(v0 + 1592, v0 + 200, v0 + 1120, ObjectType, v16);
  }

  else
  {
    **(v0 + 1728) = 0;
    v37 = *(v0 + 8);

    return v37();
  }
}

{
  v2 = *(*v1 + 1800);
  v5 = *v1;
  *(*v1 + 1808) = v0;

  if (v0)
  {
    v3 = closure #1 in closure #1 in MLS.EventSender.send(outgoingEvent:forGroup:retryBehavior:shouldPersistNewEvent:acknowledgementBlock:);
  }

  else
  {
    v3 = closure #1 in closure #1 in MLS.EventSender.send(outgoingEvent:forGroup:retryBehavior:shouldPersistNewEvent:acknowledgementBlock:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v2 = *(*v1 + 1840);
  v5 = *v1;
  *(*v1 + 1848) = v0;

  if (v0)
  {
    v3 = closure #1 in closure #1 in MLS.EventSender.send(outgoingEvent:forGroup:retryBehavior:shouldPersistNewEvent:acknowledgementBlock:);
  }

  else
  {
    v3 = closure #1 in closure #1 in MLS.EventSender.send(outgoingEvent:forGroup:retryBehavior:shouldPersistNewEvent:acknowledgementBlock:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v2 = *(*v1 + 1856);
  v5 = *v1;
  *(*v1 + 1864) = v0;

  if (v0)
  {
    v3 = closure #1 in closure #1 in MLS.EventSender.send(outgoingEvent:forGroup:retryBehavior:shouldPersistNewEvent:acknowledgementBlock:);
  }

  else
  {
    v3 = closure #1 in closure #1 in MLS.EventSender.send(outgoingEvent:forGroup:retryBehavior:shouldPersistNewEvent:acknowledgementBlock:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = *(*v0 + 1888);
  v2 = *(*v0 + 1880);
  v3 = *(*v0 + 1872);
  v5 = *v0;

  return MEMORY[0x2822009F8](closure #1 in closure #1 in MLS.EventSender.send(outgoingEvent:forGroup:retryBehavior:shouldPersistNewEvent:acknowledgementBlock:), 0, 0);
}

{
  v1 = *(v0 + 1784);
  outlined consume of MLS.SendResult(*(v0 + 1816), *(v0 + 1824), *(v0 + 1832), 2);

  **(v0 + 1728) = 0;
  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = *(*v0 + 1920);
  v2 = *(*v0 + 1912);
  v4 = *v0;

  return MEMORY[0x2822009F8](closure #1 in closure #1 in MLS.EventSender.send(outgoingEvent:forGroup:retryBehavior:shouldPersistNewEvent:acknowledgementBlock:), 0, 0);
}

{
  v2 = *v1;
  v3 = *(*v1 + 1936);
  v4 = *v1;
  *(*v1 + 1944) = v0;

  v5 = *(v2 + 1928);
  v6 = *(v2 + 1904);

  if (v0)
  {
    v7 = closure #1 in closure #1 in MLS.EventSender.send(outgoingEvent:forGroup:retryBehavior:shouldPersistNewEvent:acknowledgementBlock:);
  }

  else
  {
    v7 = closure #1 in closure #1 in MLS.EventSender.send(outgoingEvent:forGroup:retryBehavior:shouldPersistNewEvent:acknowledgementBlock:);
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

{
  v1 = *(v0 + 1832);
  v2 = *(v0 + 1824);
  v3 = *(v0 + 1816);
  v4 = *(v0 + 1784);
  outlined consume of MLS.SendResult(v3, v2, v1, 0);

  outlined consume of MLS.SendResult(v3, v2, v1, 0);
  **(v0 + 1728) = 0;
  v5 = *(v0 + 8);

  return v5();
}

{
  v2 = *(*v1 + 1952);
  v5 = *v1;
  *(*v1 + 1960) = v0;

  if (v0)
  {
    v3 = closure #1 in closure #1 in MLS.EventSender.send(outgoingEvent:forGroup:retryBehavior:shouldPersistNewEvent:acknowledgementBlock:);
  }

  else
  {
    v3 = closure #1 in closure #1 in MLS.EventSender.send(outgoingEvent:forGroup:retryBehavior:shouldPersistNewEvent:acknowledgementBlock:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = *(v0 + 1784);

  **(v0 + 1728) = 0;
  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = v0[223];

  v2 = v0[226];
  v3 = v0[1];

  return v3();
}

{
  v1 = *(v0 + 1832);
  v2 = *(v0 + 1824);
  v3 = *(v0 + 1816);
  v4 = *(v0 + 1784);
  v5 = *(v0 + 193);

  outlined consume of MLS.SendResult(v3, v2, v1, v5);
  v6 = *(v0 + 1848);
  v7 = *(v0 + 8);

  return v7();
}

{
  v1 = v0[229];
  v2 = v0[228];
  v3 = v0[227];
  v4 = v0[223];
  outlined consume of MLS.SendResult(v3, v2, v1, 0);
  outlined consume of MLS.SendResult(v3, v2, v1, 0);

  v5 = v0[243];
  v6 = v0[1];

  return v6();
}

{
  v1 = v0[223];

  v2 = v0[245];
  v3 = v0[1];

  return v3();
}

{
  v1 = v0[223];

  v2 = v0[233];
  v3 = v0[1];

  return v3();
}

void closure #1 in closure #1 in MLS.EventSender.send(outgoingEvent:forGroup:retryBehavior:shouldPersistNewEvent:acknowledgementBlock:)()
{
  v108 = v0;
  v1 = *(v0 + 1792);
  v2 = *(v0 + 1784);
  v3 = *(v0 + 1744);
  v4 = *(v0 + 1592);
  *(v0 + 1816) = v4;
  v5 = *(v0 + 1600);
  *(v0 + 1824) = v5;
  v6 = *(v0 + 1608);
  *(v0 + 1832) = v6;
  v7 = *(v0 + 1616);
  *(v0 + 193) = v7;
  outlined init with copy of MLS.OutgoingEventState?(v3, v0 + 384, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
  outlined copy of MLS.SendResult(v4, v5, v6, v7);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  outlined destroy of NSObject?(v3, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
  outlined consume of MLS.SendResult(v4, v5, v6, v7);
  if (os_log_type_enabled(v8, v9))
  {
    v101 = v9;
    v10 = *(v0 + 1744);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v103 = v12;
    *v11 = 136315394;
    v13 = specialized MLS.OutgoingEventType.identifier.getter();
    v15 = v14;

    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, &v103);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2080;
    v104 = v4;
    v105 = v5;
    v106 = v6;
    v107 = v7;
    outlined copy of MLS.SendResult(v4, v5, v6, v7);
    v17 = MLS.SendResult.description.getter();
    v19 = v18;
    outlined consume of MLS.SendResult(v104, v105, v106, v107);
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, &v103);

    *(v11 + 14) = v20;
    _os_log_impl(&dword_264F1F000, v8, v101, "EventSender sent event { identifier: %s, result: %s }", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v12, -1, -1);
    MEMORY[0x266755550](v11, -1, -1);
  }

  v21 = *(v0 + 1760);
  if (v21)
  {
    v22 = *(v0 + 1768);
    *(v0 + 1624) = v4;
    *(v0 + 1632) = v5;
    *(v0 + 1640) = v6;
    *(v0 + 1648) = v7;
    v102 = (v21 + *v21);
    v23 = v21[1];
    v24 = swift_task_alloc();
    *(v0 + 1840) = v24;
    *v24 = v0;
    v24[1] = closure #1 in closure #1 in MLS.EventSender.send(outgoingEvent:forGroup:retryBehavior:shouldPersistNewEvent:acknowledgementBlock:);

    v102(v0 + 1624);
    return;
  }

  if (*(v0 + 193))
  {
    if (*(v0 + 193) == 1)
    {
      v25 = *(v0 + 1832);
      v26 = *(v0 + 1824);
      v27 = *(v0 + 1816);
      v28 = *(v0 + 1776);
      v29 = *(v0 + 1752);
      v30 = *(v0 + 1744);
      *(v0 + 1432) = *v28;
      v32 = v28[2];
      v31 = v28[3];
      v33 = v28[1];
      *(v0 + 1489) = *(v28 + 57);
      *(v0 + 1464) = v32;
      *(v0 + 1480) = v31;
      *(v0 + 1448) = v33;
      v35 = v30[9];
      v34 = v30[10];
      v36 = v30[8];
      *(v0 + 744) = *(v30 + 176);
      *(v0 + 712) = v35;
      *(v0 + 728) = v34;
      *(v0 + 696) = v36;
      v38 = v30[4];
      v37 = v30[5];
      v39 = v30[7];
      *(v0 + 664) = v30[6];
      *(v0 + 680) = v39;
      *(v0 + 632) = v38;
      *(v0 + 648) = v37;
      v40 = *v30;
      v41 = v30[1];
      v42 = v30[3];
      *(v0 + 600) = v30[2];
      *(v0 + 616) = v42;
      *(v0 + 568) = v40;
      *(v0 + 584) = v41;
      v43 = *v29;
      v44 = v29[2];
      *(v0 + 1240) = v29[1];
      *(v0 + 1256) = v44;
      *(v0 + 1224) = v43;
      v45 = v29[3];
      v46 = v29[4];
      v47 = v29[5];
      *(v0 + 1320) = *(v29 + 12);
      *(v0 + 1288) = v46;
      *(v0 + 1304) = v47;
      *(v0 + 1272) = v45;
      *(v0 + 1680) = v27;
      *(v0 + 1688) = v26;
      *(v0 + 1696) = v25;
      v48 = swift_task_alloc();
      *(v0 + 1856) = v48;
      *v48 = v0;
      v48[1] = closure #1 in closure #1 in MLS.EventSender.send(outgoingEvent:forGroup:retryBehavior:shouldPersistNewEvent:acknowledgementBlock:);
      v49 = *(v0 + 1784);
      v50 = v0 + 1680;
      v51 = (v0 + 1432);
      v52 = v0 + 568;
      v53 = v0 + 1224;
LABEL_10:

      MLS.EventSender.reenqueueAfterGroupVersion(retryBehavior:outgoingEvent:forGroup:futureGroupVersion:)(v51, v52, v53, v50);
      return;
    }

    v66 = *(v0 + 1816);
    if (*(v0 + 1824) | *(v0 + 1832) | v66)
    {
      if (v66 == 1 && *(v0 + 1824) == 0)
      {
        v67 = *(v0 + 1784);
        lazy protocol witness table accessor for type MLS.EventSenderError and conformance MLS.EventSenderError();
        swift_allocError();
        *v68 = 0;
        *(v68 + 8) = 0;
        *(v68 + 16) = 0;
        swift_willThrow();

        v69 = *(v0 + 8);

        v69();
        return;
      }

      if (v66 == 2 && *(v0 + 1824) == 0)
      {
        v70 = *(v0 + 1752);
        v71 = *(v70 + 4);
        v72 = __CFADD__(v71, 1);
        v73 = v71 + 1;
        if (v72)
        {
          __break(1u);
          return;
        }

        v74 = *(v0 + 1776);
        v75 = *(v0 + 1744);
        v76 = *(v70 + 6);
        *(v0 + 1512) = *v74;
        v78 = v74[2];
        v77 = v74[3];
        v79 = v74[1];
        *(v0 + 1569) = *(v74 + 57);
        *(v0 + 1544) = v78;
        *(v0 + 1560) = v77;
        *(v0 + 1528) = v79;
        v81 = v75[9];
        v80 = v75[10];
        v82 = v75[8];
        *(v0 + 928) = *(v75 + 176);
        *(v0 + 896) = v81;
        *(v0 + 912) = v80;
        *(v0 + 880) = v82;
        v84 = v75[4];
        v83 = v75[5];
        v85 = v75[7];
        *(v0 + 848) = v75[6];
        *(v0 + 864) = v85;
        *(v0 + 816) = v84;
        *(v0 + 832) = v83;
        v86 = *v75;
        v87 = v75[1];
        v88 = v75[3];
        *(v0 + 784) = v75[2];
        *(v0 + 800) = v88;
        *(v0 + 752) = v86;
        *(v0 + 768) = v87;
        v89 = *v70;
        v90 = v70[1];
        *(v0 + 1360) = v70[2];
        *(v0 + 1344) = v90;
        *(v0 + 1328) = v89;
        v91 = v70[3];
        v92 = v70[4];
        v93 = v70[5];
        *(v0 + 1424) = *(v70 + 12);
        *(v0 + 1408) = v93;
        *(v0 + 1392) = v92;
        *(v0 + 1376) = v91;
        *(v0 + 1704) = v76;
        *(v0 + 1712) = v76;
        *(v0 + 1720) = v73;
        v94 = swift_task_alloc();
        *(v0 + 1952) = v94;
        *v94 = v0;
        v94[1] = closure #1 in closure #1 in MLS.EventSender.send(outgoingEvent:forGroup:retryBehavior:shouldPersistNewEvent:acknowledgementBlock:);
        v95 = *(v0 + 1784);
        v52 = v0 + 752;
        v53 = v0 + 1328;
        v50 = v0 + 1704;
        v51 = (v0 + 1512);
        goto LABEL_10;
      }
    }

    v96 = *(v0 + 1752);
    v97 = *(v0 + 1744);
    v56 = specialized MLS.OutgoingEventType.identifier.getter();
    v58 = v98;
    *(v0 + 1872) = v98;
    v59 = specialized MLS.OutgoingEventType.storageIdentifier.getter();
    v61 = v99;
    *(v0 + 1880) = v99;
    v62 = *v96;
    v63 = v96[1];

    v64 = swift_task_alloc();
    *(v0 + 1888) = v64;
    *v64 = v0;
    v65 = closure #1 in closure #1 in MLS.EventSender.send(outgoingEvent:forGroup:retryBehavior:shouldPersistNewEvent:acknowledgementBlock:);
  }

  else
  {
    v54 = *(v0 + 1752);
    v55 = *(v0 + 1744);
    v56 = specialized MLS.OutgoingEventType.identifier.getter();
    v58 = v57;
    *(v0 + 1896) = v56;
    *(v0 + 1904) = v57;
    v59 = specialized MLS.OutgoingEventType.storageIdentifier.getter();
    v61 = v60;
    *(v0 + 1912) = v60;
    v62 = *v54;
    v63 = v54[1];

    v64 = swift_task_alloc();
    *(v0 + 1920) = v64;
    *v64 = v0;
    v65 = closure #1 in closure #1 in MLS.EventSender.send(outgoingEvent:forGroup:retryBehavior:shouldPersistNewEvent:acknowledgementBlock:);
  }

  v64[1] = v65;
  v100 = *(v0 + 1784);

  MLS.EventSender.completeEvent(identifier:storageIdentifier:groupIdentifier:)(v56, v58, v59, v61, v62, v63);
}

{
  if (!*(v0 + 193))
  {
    v30 = *(v0 + 1752);
    v31 = *(v0 + 1744);
    v32 = specialized MLS.OutgoingEventType.identifier.getter();
    v34 = v33;
    *(v0 + 1896) = v32;
    *(v0 + 1904) = v33;
    v35 = specialized MLS.OutgoingEventType.storageIdentifier.getter();
    v37 = v36;
    *(v0 + 1912) = v36;
    v38 = *v30;
    v39 = v30[1];

    v40 = swift_task_alloc();
    *(v0 + 1920) = v40;
    *v40 = v0;
    v41 = closure #1 in closure #1 in MLS.EventSender.send(outgoingEvent:forGroup:retryBehavior:shouldPersistNewEvent:acknowledgementBlock:);
LABEL_18:
    v40[1] = v41;
    v74 = *(v0 + 1784);

    MLS.EventSender.completeEvent(identifier:storageIdentifier:groupIdentifier:)(v32, v34, v35, v37, v38, v39);
    return;
  }

  if (*(v0 + 193) == 1)
  {
    v1 = *(v0 + 1832);
    v2 = *(v0 + 1824);
    v3 = *(v0 + 1816);
    v4 = *(v0 + 1776);
    v5 = *(v0 + 1752);
    v6 = *(v0 + 1744);
    *(v0 + 1432) = *v4;
    v8 = v4[2];
    v7 = v4[3];
    v9 = v4[1];
    *(v0 + 1489) = *(v4 + 57);
    *(v0 + 1464) = v8;
    *(v0 + 1480) = v7;
    *(v0 + 1448) = v9;
    v11 = v6[9];
    v10 = v6[10];
    v12 = v6[8];
    *(v0 + 744) = *(v6 + 176);
    *(v0 + 712) = v11;
    *(v0 + 728) = v10;
    *(v0 + 696) = v12;
    v14 = v6[4];
    v13 = v6[5];
    v15 = v6[7];
    *(v0 + 664) = v6[6];
    *(v0 + 680) = v15;
    *(v0 + 632) = v14;
    *(v0 + 648) = v13;
    v16 = *v6;
    v17 = v6[1];
    v18 = v6[3];
    *(v0 + 600) = v6[2];
    *(v0 + 616) = v18;
    *(v0 + 568) = v16;
    *(v0 + 584) = v17;
    v19 = *v5;
    v20 = v5[2];
    *(v0 + 1240) = v5[1];
    *(v0 + 1256) = v20;
    *(v0 + 1224) = v19;
    v21 = v5[3];
    v22 = v5[4];
    v23 = v5[5];
    *(v0 + 1320) = *(v5 + 12);
    *(v0 + 1288) = v22;
    *(v0 + 1304) = v23;
    *(v0 + 1272) = v21;
    *(v0 + 1680) = v3;
    *(v0 + 1688) = v2;
    *(v0 + 1696) = v1;
    v24 = swift_task_alloc();
    *(v0 + 1856) = v24;
    *v24 = v0;
    v24[1] = closure #1 in closure #1 in MLS.EventSender.send(outgoingEvent:forGroup:retryBehavior:shouldPersistNewEvent:acknowledgementBlock:);
    v25 = *(v0 + 1784);
    v26 = v0 + 1680;
    v27 = (v0 + 1432);
    v28 = v0 + 568;
    v29 = v0 + 1224;
LABEL_4:

    MLS.EventSender.reenqueueAfterGroupVersion(retryBehavior:outgoingEvent:forGroup:futureGroupVersion:)(v27, v28, v29, v26);
    return;
  }

  v42 = *(v0 + 1816);
  if (!(*(v0 + 1824) | *(v0 + 1832) | v42))
  {
LABEL_17:
    v70 = *(v0 + 1752);
    v71 = *(v0 + 1744);
    v32 = specialized MLS.OutgoingEventType.identifier.getter();
    v34 = v72;
    *(v0 + 1872) = v72;
    v35 = specialized MLS.OutgoingEventType.storageIdentifier.getter();
    v37 = v73;
    *(v0 + 1880) = v73;
    v38 = *v70;
    v39 = v70[1];

    v40 = swift_task_alloc();
    *(v0 + 1888) = v40;
    *v40 = v0;
    v41 = closure #1 in closure #1 in MLS.EventSender.send(outgoingEvent:forGroup:retryBehavior:shouldPersistNewEvent:acknowledgementBlock:);
    goto LABEL_18;
  }

  if (v42 != 1 || *(v0 + 1824) != 0)
  {
    if (v42 == 2 && *(v0 + 1824) == 0)
    {
      v44 = *(v0 + 1752);
      v45 = *(v44 + 4);
      v46 = __CFADD__(v45, 1);
      v47 = v45 + 1;
      if (v46)
      {
        __break(1u);
        return;
      }

      v48 = *(v0 + 1776);
      v49 = *(v0 + 1744);
      v50 = *(v44 + 6);
      *(v0 + 1512) = *v48;
      v52 = v48[2];
      v51 = v48[3];
      v53 = v48[1];
      *(v0 + 1569) = *(v48 + 57);
      *(v0 + 1544) = v52;
      *(v0 + 1560) = v51;
      *(v0 + 1528) = v53;
      v55 = v49[9];
      v54 = v49[10];
      v56 = v49[8];
      *(v0 + 928) = *(v49 + 176);
      *(v0 + 896) = v55;
      *(v0 + 912) = v54;
      *(v0 + 880) = v56;
      v58 = v49[4];
      v57 = v49[5];
      v59 = v49[7];
      *(v0 + 848) = v49[6];
      *(v0 + 864) = v59;
      *(v0 + 816) = v58;
      *(v0 + 832) = v57;
      v60 = *v49;
      v61 = v49[1];
      v62 = v49[3];
      *(v0 + 784) = v49[2];
      *(v0 + 800) = v62;
      *(v0 + 752) = v60;
      *(v0 + 768) = v61;
      v63 = *v44;
      v64 = v44[1];
      *(v0 + 1360) = v44[2];
      *(v0 + 1344) = v64;
      *(v0 + 1328) = v63;
      v65 = v44[3];
      v66 = v44[4];
      v67 = v44[5];
      *(v0 + 1424) = *(v44 + 12);
      *(v0 + 1408) = v67;
      *(v0 + 1392) = v66;
      *(v0 + 1376) = v65;
      *(v0 + 1704) = v50;
      *(v0 + 1712) = v50;
      *(v0 + 1720) = v47;
      v68 = swift_task_alloc();
      *(v0 + 1952) = v68;
      *v68 = v0;
      v68[1] = closure #1 in closure #1 in MLS.EventSender.send(outgoingEvent:forGroup:retryBehavior:shouldPersistNewEvent:acknowledgementBlock:);
      v69 = *(v0 + 1784);
      v28 = v0 + 752;
      v29 = v0 + 1328;
      v26 = v0 + 1704;
      v27 = (v0 + 1512);
      goto LABEL_4;
    }

    goto LABEL_17;
  }

  v75 = *(v0 + 1784);
  lazy protocol witness table accessor for type MLS.EventSenderError and conformance MLS.EventSenderError();
  swift_allocError();
  *v76 = 0;
  *(v76 + 8) = 0;
  *(v76 + 16) = 0;
  swift_willThrow();

  v77 = *(v0 + 8);

  v77();
}

{
  v37 = v0;
  v1 = *(v0 + 1824);
  if (v1 >> 60 == 15)
  {
    v2 = *(v0 + 1904);
    v3 = *(v0 + 1832);
    v4 = *(v0 + 1816);
    v5 = *(v0 + 1784);

    outlined consume of MLS.SendResult(v4, v1, v3, 0);

    **(v0 + 1728) = 0;
    v6 = *(v0 + 8);

    v6();
  }

  else
  {
    v7 = *(v0 + 1832);
    v8 = *(v0 + 1816);
    v9 = *(v0 + 1792);
    v10 = *(v0 + 1784);
    v11 = *(v0 + 1744);
    outlined copy of MLS.SendResult(v8, *(v0 + 1824), v7, 0);
    outlined init with copy of MLS.OutgoingEventState?(v11, v0 + 936, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
    outlined copy of MLS.SendResult(v8, v1, v7, 0);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    outlined destroy of NSObject?(v11, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
    outlined consume of MLS.SendResult(v8, v1, v7, 0);
    if (os_log_type_enabled(v12, v13))
    {
      v14 = *(v0 + 1904);
      v15 = *(v0 + 1896);
      v16 = *(v0 + 1832);
      v17 = *(v0 + 1824);
      v18 = *(v0 + 1816);
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v36 = v20;
      *v19 = 136315394;
      *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v14, &v36);
      *(v19 + 12) = 2080;
      outlined copy of Data?(v18, v17);
      v21 = Data.description.getter();
      v23 = v22;
      outlined consume of MLS.SendResult(v18, v17, v16, 0);
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, &v36);

      *(v19 + 14) = v24;
      _os_log_impl(&dword_264F1F000, v12, v13, "EventSender persisting groupClientContextBlob { identifier: %s, result: %s }", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266755550](v20, -1, -1);
      MEMORY[0x266755550](v19, -1, -1);
    }

    v35 = *(v0 + 1816);
    v25 = *(v0 + 1784);
    v26 = *(v0 + 1752);
    v28 = *(v25 + 32);
    v27 = *(v25 + 40);
    ObjectType = swift_getObjectType();
    v30 = swift_task_alloc();
    *(v0 + 1928) = v30;
    *(v30 + 16) = v25;
    *(v30 + 24) = v35;
    *(v30 + 40) = v26;
    v31 = swift_task_alloc();
    *(v0 + 1936) = v31;
    *v31 = v0;
    v31[1] = closure #1 in closure #1 in MLS.EventSender.send(outgoingEvent:forGroup:retryBehavior:shouldPersistNewEvent:acknowledgementBlock:);
    v32 = *(v0 + 1904);
    v33 = *(v0 + 1896);
    v34 = MEMORY[0x277D84F78] + 8;

    MLS.Persister.atomically<A>(with:do:)(v31, v33, v32, &async function pointer to partial apply for closure #1 in closure #1 in closure #1 in MLS.EventSender.send(outgoingEvent:forGroup:retryBehavior:shouldPersistNewEvent:acknowledgementBlock:), v30, ObjectType, v34, v27);
  }
}

uint64_t closure #1 in closure #1 in closure #1 in MLS.EventSender.send(outgoingEvent:forGroup:retryBehavior:shouldPersistNewEvent:acknowledgementBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v6 = static MLSActor.shared;
  v5[8] = static MLSActor.shared;

  return MEMORY[0x2822009F8](closure #1 in closure #1 in closure #1 in MLS.EventSender.send(outgoingEvent:forGroup:retryBehavior:shouldPersistNewEvent:acknowledgementBlock:), v6, 0);
}

uint64_t closure #1 in closure #1 in closure #1 in MLS.EventSender.send(outgoingEvent:forGroup:retryBehavior:shouldPersistNewEvent:acknowledgementBlock:)()
{
  v1 = v0[7];
  v2 = v0[4];
  v4 = *(v2 + 32);
  v3 = *(v2 + 40);
  ObjectType = swift_getObjectType();
  v6 = *v1;
  v7 = v1[1];
  v8 = *(v2 + direct field offset for MLS.EventSender.clientIdentifier + 8);
  v0[2] = *(v2 + direct field offset for MLS.EventSender.clientIdentifier);
  v0[3] = v8;
  v9 = *(v3 + 56);

  v15 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  v0[9] = v11;
  *v11 = v0;
  v11[1] = closure #1 in closure #1 in closure #1 in MLS.EventSender.send(outgoingEvent:forGroup:retryBehavior:shouldPersistNewEvent:acknowledgementBlock:);
  v12 = v0[6];
  v13 = v0[5];

  return (v15)(v13, v12, v6, v7, v0 + 2, ObjectType, v3);
}

{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *v1;
  v2[10] = v0;

  v5 = v2[3];

  if (v0)
  {
    v6 = v2[8];

    return MEMORY[0x2822009F8](closure #1 in XPCUtils.XPCClient.init(machServiceName:listenerEndpoint:), v6, 0);
  }

  else
  {
    v7 = *(v4 + 8);

    return v7();
  }
}

uint64_t closure #2 in closure #1 in MLS.EventSender.send(outgoingEvent:forGroup:retryBehavior:shouldPersistNewEvent:acknowledgementBlock:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[29] = a2;
  v3[30] = a3;
  v3[28] = a1;
  return MEMORY[0x2822009F8](closure #2 in closure #1 in MLS.EventSender.send(outgoingEvent:forGroup:retryBehavior:shouldPersistNewEvent:acknowledgementBlock:), 0, 0);
}

uint64_t closure #2 in closure #1 in MLS.EventSender.send(outgoingEvent:forGroup:retryBehavior:shouldPersistNewEvent:acknowledgementBlock:)()
{
  v27 = v0;
  v1 = v0[28];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[31] = Strong;
  if (Strong)
  {
    v3 = v0[29];
    outlined init with copy of MLS.OutgoingEventState?(v3, (v0 + 2), &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    outlined destroy of NSObject?(v3, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
    if (os_log_type_enabled(v4, v5))
    {
      v6 = v0[29];
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v26 = v8;
      *v7 = 136315138;
      v9 = specialized MLS.OutgoingEventType.identifier.getter();
      v11 = v10;

      v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, &v26);

      *(v7 + 4) = v12;
      _os_log_impl(&dword_264F1F000, v4, v5, "EventSender failing event due to max retries { identifier: %s }", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      MEMORY[0x266755550](v8, -1, -1);
      MEMORY[0x266755550](v7, -1, -1);
    }

    v13 = v0[29];
    v14 = v0[30];
    v15 = specialized MLS.OutgoingEventType.identifier.getter();
    v17 = v16;
    v0[32] = v16;
    v18 = specialized MLS.OutgoingEventType.storageIdentifier.getter();
    v20 = v19;
    v0[33] = v19;
    v21 = *v14;
    v22 = v14[1];

    v23 = swift_task_alloc();
    v0[34] = v23;
    *v23 = v0;
    v23[1] = closure #2 in closure #1 in MLS.EventSender.send(outgoingEvent:forGroup:retryBehavior:shouldPersistNewEvent:acknowledgementBlock:);

    return MLS.EventSender.completeEvent(identifier:storageIdentifier:groupIdentifier:)(v15, v17, v18, v20, v21, v22);
  }

  else
  {
    v25 = v0[1];

    return v25();
  }
}

{
  v1 = *(*v0 + 272);
  v2 = *(*v0 + 264);
  v3 = *(*v0 + 256);
  v5 = *v0;

  return MEMORY[0x2822009F8](closure #2 in closure #1 in MLS.EventSender.send(outgoingEvent:forGroup:retryBehavior:shouldPersistNewEvent:acknowledgementBlock:), 0, 0);
}

{
  v1 = *(v0 + 248);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t MLS.EventSender.reenqueueAfterGroupVersion(retryBehavior:outgoingEvent:forGroup:futureGroupVersion:)(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1[3];
  *(v5 + 1624) = a1[2];
  *(v5 + 1640) = v6;
  *(v5 + 1649) = *(a1 + 57);
  v7 = a1[1];
  *(v5 + 1592) = *a1;
  *(v5 + 1608) = v7;
  v8 = *(a2 + 144);
  *(v5 + 328) = *(a2 + 128);
  *(v5 + 344) = v8;
  *(v5 + 360) = *(a2 + 160);
  v9 = *(a2 + 80);
  *(v5 + 264) = *(a2 + 64);
  *(v5 + 280) = v9;
  v10 = *(a2 + 112);
  *(v5 + 296) = *(a2 + 96);
  *(v5 + 312) = v10;
  v11 = *(a2 + 16);
  *(v5 + 200) = *a2;
  *(v5 + 216) = v11;
  v12 = *(a2 + 48);
  *(v5 + 232) = *(a2 + 32);
  *(v5 + 248) = v12;
  v13 = *(a3 + 32);
  *(v5 + 1536) = *(a3 + 48);
  v14 = *(a3 + 80);
  *(v5 + 1552) = *(a3 + 64);
  *(v5 + 1568) = v14;
  v15 = *(a3 + 16);
  *(v5 + 1488) = *a3;
  *(v5 + 1504) = v15;
  *(v5 + 2384) = v4;
  *(v5 + 376) = *(a2 + 176);
  *(v5 + 1584) = *(a3 + 96);
  *(v5 + 1520) = v13;
  *(v5 + 2392) = *a4;
  *(v5 + 380) = *(a4 + 8);
  *(v5 + 2400) = *(a4 + 16);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v16 = static MLSActor.shared;
  *(v5 + 2408) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.EventSender.reenqueueAfterGroupVersion(retryBehavior:outgoingEvent:forGroup:futureGroupVersion:), v16, 0);
}

uint64_t MLS.EventSender.reenqueueAfterGroupVersion(retryBehavior:outgoingEvent:forGroup:futureGroupVersion:)()
{
  v99 = v0;
  v1 = *(v0 + 1592);
  v2 = v0 + 200;
  *(v0 + 2416) = v1;
  v3 = *(v0 + 1600);
  *(v0 + 2424) = v3;
  v4 = *(v0 + 1608);
  *(v0 + 2432) = v4;
  v5 = *(v0 + 1616);
  *(v0 + 2440) = v5;
  v6 = *(v0 + 1624);
  *(v0 + 2448) = v6;
  v7 = *(v0 + 1632);
  *(v0 + 2456) = v7;
  v8 = *(v0 + 1640);
  *(v0 + 2464) = v8;
  v9 = *(v0 + 1648);
  *(v0 + 2472) = v9;
  v10 = *(v0 + 1656);
  *(v0 + 2480) = v10;
  if (*(v0 + 1664))
  {
    if (*(v0 + 1664) == 1)
    {
      v88 = v6;
      v89 = v3;
      v91 = v1;
      v11 = *(v0 + 2384);
      v12 = *(v0 + 1488);
      *(v0 + 2584) = v12;
      v13 = *(v0 + 1496);
      *(v0 + 2592) = v13;
      v93 = MLS.EventSender.eventQueue(groupIdentifier:)(v12, v13);
      *(v0 + 2600) = v93;
      *(v0 + 2608) = direct field offset for MLS.EventSender.logger;
      outlined init with copy of MLS.OutgoingEventState?(v0 + 200, v0 + 752, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.default.getter();
      outlined destroy of NSObject?(v0 + 200, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
      if (os_log_type_enabled(v14, v15))
      {
        buf = swift_slowAlloc();
        v87 = swift_slowAlloc();
        v97 = v87;
        *buf = 136315138;
        v16 = specialized MLS.OutgoingEventType.identifier.getter();
        v86 = v15;
        v18 = v17;

        v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, &v97);

        *(buf + 4) = v19;
        _os_log_impl(&dword_264F1F000, v14, v86, "EventSender reenqueueing event at front behind self heal { identifier: %s }", buf, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v87);
        MEMORY[0x266755550](v87, -1, -1);
        MEMORY[0x266755550](buf, -1, -1);
      }

      else
      {
      }

      v54 = *(v0 + 2384);
      v95 = specialized MLS.OutgoingEventType.identifier.getter();
      v56 = v55;
      *(v0 + 2192) = v91;
      *(v0 + 2616) = v95;
      *(v0 + 2624) = v55;
      *(v0 + 2200) = v89;
      *(v0 + 2208) = v4;
      *(v0 + 2216) = v5;
      *(v0 + 2224) = v88;
      *(v0 + 2232) = v7;
      *(v0 + 2240) = v8;
      *(v0 + 2248) = v9;
      *(v0 + 2256) = v10;
      v57 = *(*v54 + 256);
      outlined init with copy of MLS.RetryAfterGroupVersionBehavior(v0 + 1592, v0 + 1672);

      v59 = v57(v58);
      v61 = v60;
      *(v0 + 2632) = v60;
      v62 = (*(*v54 + 232))();
      v64 = v63;
      *(v0 + 2640) = v63;
      v90 = (*v93 + 296);
      v92 = (*v90 + **v90);
      v65 = (*v90)[1];
      v66 = swift_task_alloc();
      *(v0 + 2648) = v66;
      *v66 = v0;
      v66[1] = MLS.EventSender.reenqueueAfterGroupVersion(retryBehavior:outgoingEvent:forGroup:futureGroupVersion:);

      return v92(v95, v56, v0 + 2192, v59, v61, v62, v64);
    }

    else
    {
      v43 = *(v0 + 2384);
      if (v4 | v3 | v1 | v5 | v6 | v7 | v8 | v9 | v10)
      {
        outlined init with copy of MLS.OutgoingEventState?(v0 + 200, v0 + 384, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
        v44 = Logger.logObject.getter();
        v45 = static os_log_type_t.default.getter();
        outlined destroy of NSObject?(v0 + 200, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
        if (os_log_type_enabled(v44, v45))
        {
          v46 = swift_slowAlloc();
          v47 = swift_slowAlloc();
          v97 = v47;
          *v46 = 136315138;
          v48 = specialized MLS.OutgoingEventType.identifier.getter();
          v50 = v49;

          v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v50, &v97);

          *(v46 + 4) = v51;
          _os_log_impl(&dword_264F1F000, v44, v45, "EventSender completing retrying event immediately after receiving retry after epoch { identifier: %s }", v46, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v47);
          MEMORY[0x266755550](v47, -1, -1);
          MEMORY[0x266755550](v46, -1, -1);
        }

        lazy protocol witness table accessor for type MLS.EventSenderError and conformance MLS.EventSenderError();
        swift_allocError();
        *v52 = 1;
        *(v52 + 8) = 0;
        *(v52 + 16) = 0;
        swift_willThrow();
        v53 = *(v0 + 8);

        return v53();
      }

      else
      {
        outlined init with copy of MLS.OutgoingEventState?(v0 + 200, v0 + 568, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
        v67 = Logger.logObject.getter();
        v68 = static os_log_type_t.default.getter();
        outlined destroy of NSObject?(v0 + 200, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
        if (os_log_type_enabled(v67, v68))
        {
          v69 = swift_slowAlloc();
          v70 = swift_slowAlloc();
          v97 = v70;
          *v69 = 136315138;
          v71 = specialized MLS.OutgoingEventType.identifier.getter();
          v73 = v72;

          v74 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v71, v73, &v97);

          *(v69 + 4) = v74;
          _os_log_impl(&dword_264F1F000, v67, v68, "EventSender completing unretriable event after receiving retry after epoch { identifier: %s }", v69, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v70);
          MEMORY[0x266755550](v70, -1, -1);
          MEMORY[0x266755550](v69, -1, -1);
        }

        v75 = specialized MLS.OutgoingEventType.identifier.getter();
        v77 = v76;
        *(v0 + 2664) = v76;
        v78 = specialized MLS.OutgoingEventType.storageIdentifier.getter();
        v80 = v79;
        *(v0 + 2672) = v79;
        v81 = *(v0 + 1488);
        v82 = *(v0 + 1496);

        v83 = swift_task_alloc();
        *(v0 + 2680) = v83;
        *v83 = v0;
        v83[1] = MLS.EventSender.reenqueueAfterGroupVersion(retryBehavior:outgoingEvent:forGroup:futureGroupVersion:);
        v84 = *(v0 + 2384);

        return MLS.EventSender.completeEvent(identifier:storageIdentifier:groupIdentifier:)(v75, v77, v78, v80, v81, v82);
      }
    }
  }

  else
  {
    v20 = v0 + 1488;
    v21 = *(v0 + 2384);
    *(v0 + 2488) = direct field offset for MLS.EventSender.logger;
    outlined init with copy of MLS.OutgoingEventState?(v0 + 200, v0 + 1304, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    outlined destroy of NSObject?(v0 + 200, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
    if (os_log_type_enabled(v22, v23))
    {
      v24 = *(v0 + 2400);
      v25 = *(v0 + 380);
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v96 = v27;
      *v26 = 136315394;
      v28 = specialized MLS.OutgoingEventType.identifier.getter();
      v30 = v29;

      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, &v96);

      *(v26 + 4) = v31;
      *(v26 + 12) = 2080;
      *(v0 + 196) = v25;
      v97 = dispatch thunk of CustomStringConvertible.description.getter();
      v98 = v32;
      MEMORY[0x2667545A0](46, 0xE100000000000000);
      *(v0 + 2376) = v24;
      v33 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2667545A0](v33);

      v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v97, v98, &v96);

      *(v26 + 14) = v34;
      v2 = v0 + 200;
      v20 = v0 + 1488;
      _os_log_impl(&dword_264F1F000, v22, v23, "EventSender persisting epoch to retry { identifier: %s, futureGroupVersion: %s }", v26, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266755550](v27, -1, -1);
      MEMORY[0x266755550](v26, -1, -1);
    }

    v35 = *(v0 + 2384);
    v36 = *(v35 + 48);
    *(v0 + 2496) = specialized MLS.OutgoingEventType.identifier.getter();
    *(v0 + 2504) = v37;
    v38 = swift_task_alloc();
    *(v0 + 2512) = v38;
    v38[2] = v35;
    v38[3] = v2;
    v38[4] = v20;
    v39 = *(*v36 + 152);

    v94 = (v39 + *v39);
    v40 = v39[1];
    v41 = swift_task_alloc();
    *(v0 + 2520) = v41;
    *v41 = v0;
    v41[1] = MLS.EventSender.reenqueueAfterGroupVersion(retryBehavior:outgoingEvent:forGroup:futureGroupVersion:);

    return v94();
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 2520);
  v4 = *v1;
  v2[316] = v0;

  v5 = v2[314];
  if (v0)
  {
    v6 = v2[313];
    v7 = v2[301];

    v8 = MLS.EventSender.reenqueueAfterGroupVersion(retryBehavior:outgoingEvent:forGroup:futureGroupVersion:);
  }

  else
  {
    v7 = v2[301];

    v8 = MLS.EventSender.reenqueueAfterGroupVersion(retryBehavior:outgoingEvent:forGroup:futureGroupVersion:);
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

{
  v35 = v0;
  v1 = (v0 + 1976);
  v2 = *(v0 + 2488);
  v3 = *(v0 + 2384);
  v4 = *(v0 + 1488);
  *(v0 + 2536) = v4;
  v5 = *(v0 + 1496);
  *(v0 + 2544) = v5;
  v6 = MLS.EventSender.eventQueue(groupIdentifier:)(v4, v5);
  *(v0 + 2552) = v6;
  outlined init with copy of MLS.OutgoingEventState?(v0 + 200, v0 + 1120, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  outlined destroy of NSObject?(v0 + 200, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 2504);
    v10 = *(v0 + 2496);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v34 = v12;
    *v11 = 136315138;
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v9, &v34);
    _os_log_impl(&dword_264F1F000, v7, v8, "EventSender reenqueueing event at front { identifier: %s }", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x266755550](v12, -1, -1);
    MEMORY[0x266755550](v11, -1, -1);
  }

  v13 = *(v0 + 2480);
  v14 = *(v0 + 2400);
  v15 = *(v0 + 380);
  v16 = *(v0 + 2392);
  v17 = *(v0 + 2384);
  v18 = *(v0 + 2432);
  *v1 = *(v0 + 2416);
  *(v0 + 1992) = v18;
  v19 = *(v0 + 2464);
  *(v0 + 2008) = *(v0 + 2448);
  *(v0 + 2024) = v19;
  *(v0 + 2040) = v13;
  *(v0 + 2336) = v16;
  *(v0 + 2344) = v15;
  *(v0 + 2352) = v14;
  v20 = *(*v17 + 232);
  *(v0 + 1809) = *(v0 + 1649);
  v21 = *(v0 + 1640);
  *(v0 + 1784) = *(v0 + 1624);
  *(v0 + 1800) = v21;
  v22 = *(v0 + 1608);
  *(v0 + 1752) = *(v0 + 1592);
  *(v0 + 1768) = v22;
  v23 = outlined init with copy of MLS.OutgoingEventState?(v0 + 1752, v0 + 2048, &_s15SecureMessaging3MLSO18OutgoingEventStateV05eventF0_tMd, &_s15SecureMessaging3MLSO18OutgoingEventStateV05eventF0_tMR);
  v24 = v20(v23);
  v26 = v25;
  *(v0 + 2560) = v25;
  v32 = (*v6 + 288);
  v33 = (*v32 + **v32);
  v27 = (*v32)[1];
  v28 = swift_task_alloc();
  *(v0 + 2568) = v28;
  *v28 = v0;
  v28[1] = MLS.EventSender.reenqueueAfterGroupVersion(retryBehavior:outgoingEvent:forGroup:futureGroupVersion:);
  v29 = *(v0 + 2504);
  v30 = *(v0 + 2496);

  return (v33)(v30, v29, v1, v0 + 2336, v24, v26);
}

{
  v2 = *v1;
  v3 = *v1;
  v4 = (*v1 + 1976);
  v5 = *(*v1 + 2568);
  v6 = *v1;
  *(*v1 + 2576) = v0;

  v7 = *(v2 + 2560);
  if (v0)
  {
    v8 = *(v3 + 2408);
    *(v3 + 2120) = *v4;
    v10 = *(v3 + 2008);
    v9 = *(v3 + 2024);
    v11 = *(v3 + 1992);
    *(v3 + 2184) = *(v3 + 2040);
    *(v3 + 2152) = v10;
    *(v3 + 2168) = v9;
    *(v3 + 2136) = v11;
    outlined destroy of NSObject?(v3 + 2120, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMd, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMR);

    v12 = MLS.EventSender.reenqueueAfterGroupVersion(retryBehavior:outgoingEvent:forGroup:futureGroupVersion:);
    v13 = v8;
  }

  else
  {
    v14 = *(v3 + 2504);
    v15 = *(v3 + 2408);

    *(v3 + 2264) = *v4;
    v16 = *(v3 + 1992);
    v17 = *(v3 + 2008);
    v18 = *(v3 + 2024);
    *(v3 + 2328) = *(v3 + 2040);
    *(v3 + 2296) = v17;
    *(v3 + 2312) = v18;
    *(v3 + 2280) = v16;
    outlined destroy of NSObject?(v3 + 2264, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMd, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMR);
    v12 = MLS.EventSender.reenqueueAfterGroupVersion(retryBehavior:outgoingEvent:forGroup:futureGroupVersion:);
    v13 = v15;
  }

  return MEMORY[0x2822009F8](v12, v13, 0);
}

{
  v1 = *(v0 + 2552);

  v2 = *(v0 + 8);

  return v2();
}

{
  v2 = *v1;
  v3 = *v1;
  v4 = (*v1 + 2192);
  v5 = *(*v1 + 2648);
  v6 = *v1;
  *(*v1 + 2656) = v0;

  v7 = *(v2 + 2640);
  v8 = *(v2 + 2632);
  if (v0)
  {
    v9 = *(v3 + 2408);

    *(v3 + 1904) = *v4;
    v10 = *(v3 + 2208);
    v11 = *(v3 + 2224);
    v12 = *(v3 + 2240);
    *(v3 + 1968) = *(v3 + 2256);
    *(v3 + 1952) = v12;
    *(v3 + 1936) = v11;
    *(v3 + 1920) = v10;
    outlined destroy of NSObject?(v3 + 1904, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMd, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMR);
    v13 = MLS.EventSender.reenqueueAfterGroupVersion(retryBehavior:outgoingEvent:forGroup:futureGroupVersion:);
    v14 = v9;
  }

  else
  {
    v15 = *(v3 + 2624);
    v16 = *(v3 + 2408);

    *(v3 + 1832) = *v4;
    v17 = *(v3 + 2208);
    v18 = *(v3 + 2224);
    v19 = *(v3 + 2240);
    *(v3 + 1896) = *(v3 + 2256);
    *(v3 + 1864) = v18;
    *(v3 + 1880) = v19;
    *(v3 + 1848) = v17;
    outlined destroy of NSObject?(v3 + 1832, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMd, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMR);
    v13 = MLS.EventSender.reenqueueAfterGroupVersion(retryBehavior:outgoingEvent:forGroup:futureGroupVersion:);
    v14 = v16;
  }

  return MEMORY[0x2822009F8](v13, v14, 0);
}

{
  v1 = *(v0 + 2600);

  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = *(*v0 + 2680);
  v2 = *(*v0 + 2672);
  v3 = *(*v0 + 2664);
  v6 = *v0;

  v4 = *(v6 + 8);

  return v4();
}

{
  v1 = *(v0 + 2528);
  return (*(v0 + 8))();
}

{
  v28 = v0;
  v1 = *(v0 + 2576);
  *(v0 + 2368) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (!swift_dynamicCast() || ((v3 = *(v0 + 194), v3 <= 3) ? (v4 = v3 == 2) : (v4 = 1), v4))
  {
    v23 = *(v0 + 2552);
    v24 = *(v0 + 2504);

    v25 = *(v0 + 2576);
    v26 = *(v0 + 8);

    return v26();
  }

  else
  {
    v5 = *(v0 + 2488);
    v6 = *(v0 + 2384);

    outlined init with copy of MLS.OutgoingEventState?(v0 + 200, v0 + 936, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    outlined destroy of NSObject?(v0 + 200, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
    if (os_log_type_enabled(v7, v8))
    {
      v9 = *(v0 + 2504);
      v10 = *(v0 + 2496);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v27 = v12;
      *v11 = 136315138;
      *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v9, &v27);
      _os_log_impl(&dword_264F1F000, v7, v8, "EventSender hit fatal error retrying { identifier: %s }", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x266755550](v12, -1, -1);
      MEMORY[0x266755550](v11, -1, -1);
    }

    v13 = specialized MLS.OutgoingEventType.storageIdentifier.getter();
    v15 = v14;
    *(v0 + 2688) = v14;

    v16 = swift_task_alloc();
    *(v0 + 2696) = v16;
    *v16 = v0;
    v16[1] = MLS.EventSender.reenqueueAfterGroupVersion(retryBehavior:outgoingEvent:forGroup:futureGroupVersion:);
    v17 = *(v0 + 2544);
    v18 = *(v0 + 2536);
    v19 = *(v0 + 2504);
    v20 = *(v0 + 2496);
    v21 = *(v0 + 2384);

    return MLS.EventSender.completeEvent(identifier:storageIdentifier:groupIdentifier:)(v20, v19, v13, v15, v18, v17);
  }
}

{
  v1 = *(*v0 + 2696);
  v2 = *(*v0 + 2688);
  v3 = *(*v0 + 2504);
  v4 = *(*v0 + 2408);
  v6 = *v0;

  return MEMORY[0x2822009F8](MLS.EventSender.reenqueueAfterGroupVersion(retryBehavior:outgoingEvent:forGroup:futureGroupVersion:), v4, 0);
}

{
  v28 = v0;
  v1 = *(v0 + 2656);
  *(v0 + 2360) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (!swift_dynamicCast() || ((v3 = *(v0 + 193), v3 <= 3) ? (v4 = v3 == 2) : (v4 = 1), v4))
  {
    v23 = *(v0 + 2624);
    v24 = *(v0 + 2600);

    v25 = *(v0 + 2656);
    v26 = *(v0 + 8);

    return v26();
  }

  else
  {
    v5 = *(v0 + 2608);
    v6 = *(v0 + 2384);

    outlined init with copy of MLS.OutgoingEventState?(v0 + 200, v0 + 16, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    outlined destroy of NSObject?(v0 + 200, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
    if (os_log_type_enabled(v7, v8))
    {
      v9 = *(v0 + 2624);
      v10 = *(v0 + 2616);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v27 = v12;
      *v11 = 136315138;
      *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v9, &v27);
      _os_log_impl(&dword_264F1F000, v7, v8, "EventSender hit fatal error retrying { identifier: %s }", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x266755550](v12, -1, -1);
      MEMORY[0x266755550](v11, -1, -1);
    }

    v13 = specialized MLS.OutgoingEventType.storageIdentifier.getter();
    v15 = v14;
    *(v0 + 2704) = v14;

    v16 = swift_task_alloc();
    *(v0 + 2712) = v16;
    *v16 = v0;
    v16[1] = MLS.EventSender.reenqueueAfterGroupVersion(retryBehavior:outgoingEvent:forGroup:futureGroupVersion:);
    v17 = *(v0 + 2624);
    v18 = *(v0 + 2616);
    v19 = *(v0 + 2592);
    v20 = *(v0 + 2584);
    v21 = *(v0 + 2384);

    return MLS.EventSender.completeEvent(identifier:storageIdentifier:groupIdentifier:)(v18, v17, v13, v15, v20, v19);
  }
}

{
  v1 = *(*v0 + 2712);
  v2 = *(*v0 + 2704);
  v3 = *(*v0 + 2624);
  v4 = *(*v0 + 2408);
  v6 = *v0;

  return MEMORY[0x2822009F8](MLS.EventSender.reenqueueAfterGroupVersion(retryBehavior:outgoingEvent:forGroup:futureGroupVersion:), v4, 0);
}

uint64_t closure #1 in MLS.EventSender.reenqueueAfterGroupVersion(retryBehavior:outgoingEvent:forGroup:futureGroupVersion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[146] = a4;
  v4[145] = a3;
  v4[144] = a2;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v5 = static MLSActor.shared;
  v4[147] = static MLSActor.shared;

  return MEMORY[0x2822009F8](closure #1 in MLS.EventSender.reenqueueAfterGroupVersion(retryBehavior:outgoingEvent:forGroup:futureGroupVersion:), v5, 0);
}

uint64_t closure #1 in MLS.EventSender.reenqueueAfterGroupVersion(retryBehavior:outgoingEvent:forGroup:futureGroupVersion:)()
{
  v1 = v0[146];
  v2 = v0[145];
  v3 = v0[144];
  v5 = *(v3 + 32);
  v4 = *(v3 + 40);
  ObjectType = swift_getObjectType();
  v0[2] = specialized MLS.OutgoingEventType.storageIdentifier.getter();
  v0[3] = v7;
  _s15SecureMessaging3MLSO19OutgoingEventUpdateOWOi1_((v0 + 2));
  memcpy(v0 + 37, v0 + 2, 0x118uLL);
  v8 = *v1;
  v9 = v1[1];
  v10 = *(v3 + direct field offset for MLS.EventSender.clientIdentifier);
  v11 = *(v3 + direct field offset for MLS.EventSender.clientIdentifier + 8);
  v0[142] = v10;
  v0[143] = v11;
  v12 = *(v4 + 112);

  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  v0[148] = v14;
  *v14 = v0;
  v14[1] = closure #1 in MLS.EventSender.reenqueueAfterGroupVersion(retryBehavior:outgoingEvent:forGroup:futureGroupVersion:);

  return (v16)(v0 + 37, v8, v9, v0 + 142, ObjectType, v4);
}

{
  v2 = *(*v1 + 1184);
  v3 = *v1;
  v3[149] = v0;

  if (v0)
  {
    v4 = v3[147];
    v5 = v3[143];

    memcpy(v3 + 72, v3 + 37, 0x118uLL);
    outlined destroy of MLS.OutgoingEventUpdate((v3 + 72));

    return MEMORY[0x2822009F8](closure #1 in MLS.EventSender.reenqueueAfterGroupVersion(retryBehavior:outgoingEvent:forGroup:futureGroupVersion:), v4, 0);
  }

  else
  {
    v6 = v3[143];

    memcpy(v3 + 107, v3 + 37, 0x118uLL);
    outlined destroy of MLS.OutgoingEventUpdate((v3 + 107));
    v7 = v3[1];

    return v7();
  }
}

{
  v1 = *(v0 + 1192);
  return (*(v0 + 8))();
}

uint64_t MLS.EventSender.send(incomingEvent:forGroup:shouldPersistNewEvent:isReflectionEvent:)(uint64_t a1, uint64_t a2, char a3, char a4)
{
  *(v5 + 760) = v4;
  *(v5 + 322) = a4;
  *(v5 + 321) = a3;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  *(v5 + 768) = swift_task_alloc();
  v9 = *(a1 + 80);
  *(v5 + 288) = *(a1 + 64);
  *(v5 + 304) = v9;
  *(v5 + 320) = *(a1 + 96);
  v10 = *(a1 + 16);
  *(v5 + 224) = *a1;
  *(v5 + 240) = v10;
  v11 = *(a1 + 48);
  *(v5 + 256) = *(a1 + 32);
  *(v5 + 272) = v11;
  v12 = *(a2 + 16);
  *(v5 + 16) = *a2;
  *(v5 + 32) = v12;
  v13 = *(a2 + 32);
  v14 = *(a2 + 48);
  v15 = *(a2 + 64);
  v16 = *(a2 + 80);
  *(v5 + 112) = *(a2 + 96);
  *(v5 + 80) = v15;
  *(v5 + 96) = v16;
  *(v5 + 48) = v13;
  *(v5 + 64) = v14;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v17 = static MLSActor.shared;
  *(v5 + 776) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.EventSender.send(incomingEvent:forGroup:shouldPersistNewEvent:isReflectionEvent:), v17, 0);
}

uint64_t MLS.EventSender.send(incomingEvent:forGroup:shouldPersistNewEvent:isReflectionEvent:)()
{
  v48 = v0;
  v1 = *(v0 + 760);
  outlined init with copy of MLS.OutgoingEventState?(v0 + 224, v0 + 328, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  outlined destroy of NSObject?(v0 + 224, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v47 = v5;
    *v4 = 136315138;
    v6 = specialized MLS.IncomingEventType.identifier.getter();
    v8 = v7;

    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v8, &v47);

    *(v4 + 4) = v9;
    _os_log_impl(&dword_264F1F000, v2, v3, "EventSender told to send incoming event { identifier: %s }", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x266755550](v5, -1, -1);
    MEMORY[0x266755550](v4, -1, -1);
  }

  if (*(v0 + 321) == 1)
  {
    outlined init with copy of MLS.OutgoingEventState?(v0 + 224, v0 + 536, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    outlined destroy of NSObject?(v0 + 224, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v47 = v13;
      *v12 = 136315138;
      v14 = specialized MLS.IncomingEventType.identifier.getter();
      v16 = v15;

      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v47);

      *(v12 + 4) = v17;
      _os_log_impl(&dword_264F1F000, v10, v11, "EventSender persisted incoming event { identifier: %s }", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x266755550](v13, -1, -1);
      MEMORY[0x266755550](v12, -1, -1);
    }

    v18 = *(v0 + 760);
    v20 = *(v18 + 32);
    v19 = *(v18 + 40);
    ObjectType = swift_getObjectType();
    v22 = *(v0 + 304);
    *(v0 + 704) = *(v0 + 288);
    *(v0 + 720) = v22;
    *(v0 + 736) = *(v0 + 320);
    v23 = *(v0 + 240);
    *(v0 + 640) = *(v0 + 224);
    *(v0 + 656) = v23;
    v24 = *(v0 + 272);
    *(v0 + 672) = *(v0 + 256);
    *(v0 + 688) = v24;
    v25 = *(v0 + 16);
    v26 = *(v0 + 24);
    v27 = *(v18 + direct field offset for MLS.EventSender.clientIdentifier + 8);
    *(v0 + 744) = *(v18 + direct field offset for MLS.EventSender.clientIdentifier);
    *(v0 + 752) = v27;
    v28 = *(v19 + 120);

    v46 = (v28 + *v28);
    v29 = v28[1];
    v30 = swift_task_alloc();
    *(v0 + 784) = v30;
    *v30 = v0;
    v30[1] = MLS.EventSender.send(incomingEvent:forGroup:shouldPersistNewEvent:isReflectionEvent:);

    return v46(v0 + 640, v25, v26, v0 + 744, ObjectType, v19);
  }

  else
  {
    v32 = *(v0 + 776);
    v33 = *(v0 + 768);
    v34 = *(v0 + 760);
    v35 = *(v0 + 322);
    v36 = type metadata accessor for TaskPriority();
    (*(*(v36 - 8) + 56))(v33, 1, 1, v36);
    v37 = lazy protocol witness table accessor for type MLSActor and conformance MLSActor();
    v38 = swift_allocObject();
    v39 = *(v0 + 256);
    *(v38 + 88) = *(v0 + 272);
    v40 = *(v0 + 304);
    *(v38 + 104) = *(v0 + 288);
    *(v38 + 120) = v40;
    v41 = *(v0 + 240);
    *(v38 + 40) = *(v0 + 224);
    *(v38 + 16) = v32;
    *(v38 + 24) = v37;
    *(v38 + 32) = v34;
    *(v38 + 136) = *(v0 + 320);
    *(v38 + 56) = v41;
    *(v38 + 72) = v39;
    v42 = *(v0 + 96);
    *(v38 + 208) = *(v0 + 80);
    *(v38 + 224) = v42;
    *(v38 + 240) = *(v0 + 112);
    v43 = *(v0 + 32);
    *(v38 + 144) = *(v0 + 16);
    *(v38 + 160) = v43;
    v44 = *(v0 + 64);
    *(v38 + 176) = *(v0 + 48);
    *(v38 + 192) = v44;
    *(v38 + 248) = v35;
    outlined init with copy of MLS.OutgoingEventState?(v0 + 224, v0 + 432, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);

    outlined init with copy of MLS.Group(v0 + 16, v0 + 120);

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v33, &async function pointer to partial apply for closure #1 in MLS.EventSender.send(incomingEvent:forGroup:shouldPersistNewEvent:isReflectionEvent:), v38);

    v45 = *(v0 + 8);

    return v45();
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 784);
  v4 = *v1;
  v2[99] = v0;

  v5 = v2[94];

  v6 = v2[97];
  if (v0)
  {
    v7 = MLS.EventSender.send(incomingEvent:forGroup:shouldPersistNewEvent:isReflectionEvent:);
  }

  else
  {
    v7 = MLS.EventSender.send(incomingEvent:forGroup:shouldPersistNewEvent:isReflectionEvent:);
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

{
  v1 = *(v0 + 776);
  v2 = *(v0 + 768);
  v3 = *(v0 + 760);
  v4 = *(v0 + 322);
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  v6 = lazy protocol witness table accessor for type MLSActor and conformance MLSActor();
  v7 = swift_allocObject();
  v8 = *(v0 + 256);
  *(v7 + 88) = *(v0 + 272);
  v9 = *(v0 + 304);
  *(v7 + 104) = *(v0 + 288);
  *(v7 + 120) = v9;
  v10 = *(v0 + 240);
  *(v7 + 40) = *(v0 + 224);
  *(v7 + 16) = v1;
  *(v7 + 24) = v6;
  *(v7 + 32) = v3;
  *(v7 + 136) = *(v0 + 320);
  *(v7 + 56) = v10;
  *(v7 + 72) = v8;
  v11 = *(v0 + 96);
  *(v7 + 208) = *(v0 + 80);
  *(v7 + 224) = v11;
  *(v7 + 240) = *(v0 + 112);
  v12 = *(v0 + 32);
  *(v7 + 144) = *(v0 + 16);
  *(v7 + 160) = v12;
  v13 = *(v0 + 64);
  *(v7 + 176) = *(v0 + 48);
  *(v7 + 192) = v13;
  *(v7 + 248) = v4;
  outlined init with copy of MLS.OutgoingEventState?(v0 + 224, v0 + 432, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);

  outlined init with copy of MLS.Group(v0 + 16, v0 + 120);

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v2, &async function pointer to partial apply for closure #1 in MLS.EventSender.send(incomingEvent:forGroup:shouldPersistNewEvent:isReflectionEvent:), v7);

  v14 = *(v0 + 8);

  return v14();
}

{
  v1 = v0[96];

  v2 = v0[1];
  v3 = v0[99];

  return v2();
}

uint64_t closure #1 in MLS.EventSender.send(incomingEvent:forGroup:shouldPersistNewEvent:isReflectionEvent:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 322) = a7;
  *(v7 + 560) = a6;
  *(v7 + 552) = a5;
  *(v7 + 544) = a4;
  *(v7 + 568) = *a4;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v8 = static MLSActor.shared;
  *(v7 + 576) = static MLSActor.shared;

  return MEMORY[0x2822009F8](closure #1 in MLS.EventSender.send(incomingEvent:forGroup:shouldPersistNewEvent:isReflectionEvent:), v8, 0);
}

uint64_t closure #1 in MLS.EventSender.send(incomingEvent:forGroup:shouldPersistNewEvent:isReflectionEvent:)()
{
  v35 = v0;
  v1 = v0[69];
  v2 = v0[68];
  v0[73] = direct field offset for MLS.EventSender.logger;
  outlined init with copy of MLS.OutgoingEventState?(v1, (v0 + 28), &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  outlined destroy of NSObject?(v1, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[69];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v34 = v7;
    *v6 = 136315138;
    v8 = specialized MLS.IncomingEventType.identifier.getter();
    v10 = v9;

    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v10, &v34);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_264F1F000, v3, v4, "EventSender on MLS actor { identifier: %s }", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x266755550](v7, -1, -1);
    MEMORY[0x266755550](v6, -1, -1);
  }

  v12 = v0[71];
  v13 = v0[70];
  v14 = v0[69];
  v15 = v0[68];
  v16 = specialized MLS.IncomingEventType.identifier.getter();
  v18 = v17;
  v0[74] = v16;
  v0[75] = v17;
  v19 = swift_allocObject();
  swift_weakInit();
  v20 = swift_allocObject();
  v0[76] = v20;
  *(v20 + 16) = *(v12 + 80);
  *(v20 + 24) = *(v12 + 88);
  *(v20 + 40) = *(v12 + 104);
  *(v20 + 48) = v19;
  v22 = *(v14 + 16);
  v21 = *(v14 + 32);
  *(v20 + 56) = *v14;
  *(v20 + 72) = v22;
  *(v20 + 88) = v21;
  v24 = *(v14 + 64);
  v23 = *(v14 + 80);
  v25 = *(v14 + 96);
  *(v20 + 104) = *(v14 + 48);
  *(v20 + 152) = v25;
  *(v20 + 136) = v23;
  *(v20 + 120) = v24;
  v27 = *(v13 + 64);
  v26 = *(v13 + 80);
  v28 = *(v13 + 48);
  *(v20 + 256) = *(v13 + 96);
  *(v20 + 224) = v27;
  *(v20 + 240) = v26;
  *(v20 + 208) = v28;
  v29 = *v13;
  v30 = *(v13 + 32);
  *(v20 + 176) = *(v13 + 16);
  *(v20 + 192) = v30;
  *(v20 + 160) = v29;
  outlined init with copy of MLS.OutgoingEventState?(v14, (v0 + 41), &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);

  outlined init with copy of MLS.Group(v13, (v0 + 2));
  v31 = swift_task_alloc();
  v0[77] = v31;
  *v31 = v0;
  v31[1] = closure #1 in MLS.EventSender.send(incomingEvent:forGroup:shouldPersistNewEvent:isReflectionEvent:);
  v32 = v0[68];
  v37 = MEMORY[0x277D84F78] + 8;

  return MLS.EventSender.performWithRetry<A>(identifier:retryPolicy:work:failureBlock:)(v0 + 321, v16, v18, 0, &async function pointer to partial apply for closure #1 in closure #1 in MLS.EventSender.send(incomingEvent:forGroup:shouldPersistNewEvent:isReflectionEvent:), v20, 0, 0);
}

{
  v1 = *(*v0 + 616);
  v2 = *(*v0 + 608);
  v3 = *(*v0 + 576);
  v5 = *v0;

  return MEMORY[0x2822009F8](closure #1 in MLS.EventSender.send(incomingEvent:forGroup:shouldPersistNewEvent:isReflectionEvent:), v3, 0);
}

{
  v28 = v0;
  v1 = *(v0 + 584);
  v2 = *(v0 + 560);
  v3 = *(v0 + 552);
  v4 = *(v0 + 544);
  outlined init with copy of MLS.OutgoingEventState?(v3, v0 + 432, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
  outlined init with copy of MLS.Group(v2, v0 + 120);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  outlined destroy of NSObject?(v3, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
  outlined destroy of MLS.Group(v2);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 600);
    v8 = *(v0 + 592);
    v9 = *(v0 + 322);
    v10 = *(v0 + 560);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v27 = v12;
    *v11 = 136315650;
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v7, &v27);
    *(v11 + 12) = 2080;
    v13 = *(v10 + 32);
    *(v0 + 324) = *(v10 + 24);
    *&v25 = dispatch thunk of CustomStringConvertible.description.getter();
    *(&v25 + 1) = v14;
    MEMORY[0x2667545A0](46, 0xE100000000000000);
    *(v0 + 536) = v13;
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2667545A0](v15);

    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, *(&v25 + 1), &v27);

    *(v11 + 14) = v16;
    *(v11 + 22) = 1024;
    *(v11 + 24) = v9;
    _os_log_impl(&dword_264F1F000, v5, v6, "EventSender acknowledging epoch advancement { identifier: %s, version: %s, isReflectionEvent: %{BOOL}d }", v11, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x266755550](v12, -1, -1);
    MEMORY[0x266755550](v11, -1, -1);
  }

  v17 = *(v0 + 600);
  v18 = *(v0 + 592);
  v19 = *(v0 + 322);
  v20 = *(v0 + 560);
  v21 = *(v0 + 544);
  v22 = MLS.EventSender.eventQueue(groupIdentifier:)(*v20, *(v20 + 8));
  v25 = *(v20 + 16);
  v26 = *(v20 + 32);
  (*(*v22 + 328))(&v25, v18, v17, v19);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t closure #1 in closure #1 in MLS.EventSender.send(incomingEvent:forGroup:shouldPersistNewEvent:isReflectionEvent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[103] = a8;
  v8[102] = a7;
  v8[101] = a6;
  v8[100] = a5;
  v8[99] = a4;
  v8[98] = a3;
  v8[97] = a2;
  v8[96] = a1;
  return MEMORY[0x2822009F8](closure #1 in closure #1 in MLS.EventSender.send(incomingEvent:forGroup:shouldPersistNewEvent:isReflectionEvent:), 0, 0);
}

uint64_t closure #1 in closure #1 in MLS.EventSender.send(incomingEvent:forGroup:shouldPersistNewEvent:isReflectionEvent:)()
{
  v36 = v0;
  v1 = *(v0 + 776);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 832) = Strong;
  if (Strong)
  {
    v3 = Strong;
    v4 = *(v0 + 784);
    *(v0 + 840) = direct field offset for MLS.EventSender.logger;
    outlined init with copy of MLS.OutgoingEventState?(v4, v0 + 224, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    outlined destroy of NSObject?(v4, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
    if (os_log_type_enabled(v5, v6))
    {
      v7 = *(v0 + 784);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v35 = v9;
      *v8 = 136315138;
      v10 = specialized MLS.IncomingEventType.identifier.getter();
      v12 = v11;

      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v12, &v35);

      *(v8 + 4) = v13;
      _os_log_impl(&dword_264F1F000, v5, v6, "EventSender sending event { identifier: %s }", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x266755550](v9, -1, -1);
      MEMORY[0x266755550](v8, -1, -1);
    }

    v14 = *(v0 + 792);
    v15 = *(v0 + 784);
    v17 = *(v3 + 16);
    v16 = *(v3 + 24);
    ObjectType = swift_getObjectType();
    v19 = *v15;
    v20 = v15[2];
    *(v0 + 344) = v15[1];
    *(v0 + 360) = v20;
    *(v0 + 328) = v19;
    v21 = v15[3];
    v22 = v15[4];
    v23 = v15[5];
    *(v0 + 424) = *(v15 + 96);
    *(v0 + 392) = v22;
    *(v0 + 408) = v23;
    *(v0 + 376) = v21;
    v25 = v14[4];
    v24 = v14[5];
    v26 = v14[3];
    *(v0 + 112) = *(v14 + 12);
    *(v0 + 80) = v25;
    *(v0 + 96) = v24;
    *(v0 + 64) = v26;
    v27 = v14[2];
    v28 = *v14;
    *(v0 + 32) = v14[1];
    *(v0 + 48) = v27;
    *(v0 + 16) = v28;
    v29 = *(v16 + 16);
    v34 = (v29 + *v29);
    v30 = v29[1];
    v31 = swift_task_alloc();
    *(v0 + 848) = v31;
    *v31 = v0;
    v31[1] = closure #1 in closure #1 in MLS.EventSender.send(incomingEvent:forGroup:shouldPersistNewEvent:isReflectionEvent:);

    return v34(v0 + 321, v0 + 328, v0 + 16, ObjectType, v16);
  }

  else
  {
    **(v0 + 768) = 0;
    v33 = *(v0 + 8);

    return v33();
  }
}

{
  v2 = *(*v1 + 848);
  v5 = *v1;
  *(*v1 + 856) = v0;

  if (v0)
  {
    v3 = closure #1 in closure #1 in MLS.EventSender.send(incomingEvent:forGroup:shouldPersistNewEvent:isReflectionEvent:);
  }

  else
  {
    v3 = closure #1 in closure #1 in MLS.EventSender.send(incomingEvent:forGroup:shouldPersistNewEvent:isReflectionEvent:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v58 = v0;
  v1 = *(v0 + 840);
  v2 = *(v0 + 832);
  v3 = *(v0 + 784);
  v4 = *(v0 + 321);
  outlined init with copy of MLS.OutgoingEventState?(v3, v0 + 432, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  outlined destroy of NSObject?(v3, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 784);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v57 = v9;
    *v8 = 136315394;
    v10 = specialized MLS.IncomingEventType.identifier.getter();
    v12 = v11;

    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v12, &v57);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2080;
    v14 = 0xEF79616C65447265;
    v15 = 0x7466417972746552;
    if (v4 != 1)
    {
      v15 = 0x746552746F4E6F44;
      v14 = 0xEA00000000007972;
    }

    if (v4)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0x73736563637553;
    }

    if (v4)
    {
      v17 = v14;
    }

    else
    {
      v17 = 0xE700000000000000;
    }

    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v57);

    *(v8 + 14) = v18;
    _os_log_impl(&dword_264F1F000, v5, v6, "EventSender sent event { identifier: %s, result: %s }", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v9, -1, -1);
    MEMORY[0x266755550](v8, -1, -1);
  }

  if (v4 == 1)
  {
    v19 = *(v0 + 840);
    v20 = *(v0 + 832);
    v21 = *(v0 + 784);
    outlined init with copy of MLS.OutgoingEventState?(v21, v0 + 536, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    outlined destroy of NSObject?(v21, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
    if (os_log_type_enabled(v22, v23))
    {
      v24 = *(v0 + 784);
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v57 = v26;
      *v25 = 136315138;
      v27 = specialized MLS.IncomingEventType.identifier.getter();
      v29 = v28;

      v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, &v57);

      *(v25 + 4) = v30;
      _os_log_impl(&dword_264F1F000, v22, v23, "EventSender told to retry event after delay { identifier: %s }", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      MEMORY[0x266755550](v26, -1, -1);
      MEMORY[0x266755550](v25, -1, -1);
    }

    v31 = *(v0 + 832);
    lazy protocol witness table accessor for type MLS.EventSenderError and conformance MLS.EventSenderError();
    swift_allocError();
    *v32 = 0;
    *(v32 + 8) = 0;
    *(v32 + 16) = 0;
    swift_willThrow();

    v33 = *(v0 + 8);

    return v33();
  }

  else
  {
    v35 = *(v0 + 832);
    v36 = *(v0 + 792);
    v37 = *(v0 + 784);
    v55 = *(v0 + 816);
    v56 = *(v0 + 800);
    v38 = specialized MLS.IncomingEventType.identifier.getter();
    v40 = v39;
    *(v0 + 864) = v39;
    v41 = swift_allocObject();
    swift_weakInit();
    v42 = swift_allocObject();
    *(v0 + 872) = v42;
    *(v42 + 16) = v56;
    *(v42 + 32) = v55;
    *(v42 + 48) = v41;
    v43 = *(v37 + 48);
    v44 = *(v37 + 64);
    v45 = *(v37 + 80);
    *(v42 + 152) = *(v37 + 96);
    *(v42 + 136) = v45;
    *(v42 + 120) = v44;
    *(v42 + 104) = v43;
    v47 = *v37;
    v46 = *(v37 + 16);
    *(v42 + 88) = *(v37 + 32);
    *(v42 + 56) = v47;
    *(v42 + 72) = v46;
    v49 = *(v36 + 64);
    v48 = *(v36 + 80);
    v50 = *(v36 + 48);
    *(v42 + 256) = *(v36 + 96);
    *(v42 + 224) = v49;
    *(v42 + 240) = v48;
    *(v42 + 208) = v50;
    v51 = *v36;
    v52 = *(v36 + 32);
    *(v42 + 176) = *(v36 + 16);
    *(v42 + 192) = v52;
    *(v42 + 160) = v51;
    outlined init with copy of MLS.OutgoingEventState?(v37, v0 + 640, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);

    outlined init with copy of MLS.Group(v36, v0 + 120);
    v53 = swift_task_alloc();
    *(v0 + 880) = v53;
    *v53 = v0;
    v53[1] = closure #1 in closure #1 in MLS.EventSender.send(incomingEvent:forGroup:shouldPersistNewEvent:isReflectionEvent:);
    v54 = *(v0 + 832);
    v60 = MEMORY[0x277D84F78] + 8;

    return MLS.EventSender.performWithRetry<A>(identifier:retryPolicy:work:failureBlock:)(v0 + 322, v38, v40, 1, &async function pointer to partial apply for closure #1 in closure #1 in closure #1 in MLS.EventSender.send(incomingEvent:forGroup:shouldPersistNewEvent:isReflectionEvent:), v42, 0, 0);
  }
}

{
  v1 = *(*v0 + 880);
  v2 = *(*v0 + 872);
  v3 = *(*v0 + 864);
  v5 = *v0;

  return MEMORY[0x2822009F8](closure #1 in closure #1 in MLS.EventSender.send(incomingEvent:forGroup:shouldPersistNewEvent:isReflectionEvent:), 0, 0);
}

{
  v1 = *(v0 + 832);

  **(v0 + 768) = 0;
  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = v0[104];

  v2 = v0[107];
  v3 = v0[1];

  return v3();
}

uint64_t closure #1 in closure #1 in closure #1 in MLS.EventSender.send(incomingEvent:forGroup:shouldPersistNewEvent:isReflectionEvent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[20] = a3;
  v4[21] = a4;
  v4[18] = a1;
  v4[19] = a2;
  return MEMORY[0x2822009F8](closure #1 in closure #1 in closure #1 in MLS.EventSender.send(incomingEvent:forGroup:shouldPersistNewEvent:isReflectionEvent:), 0, 0);
}

void closure #1 in closure #1 in closure #1 in MLS.EventSender.send(incomingEvent:forGroup:shouldPersistNewEvent:isReflectionEvent:)()
{
  v26 = v0;
  v1 = *(v0 + 152);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 176) = Strong;
  if (Strong)
  {
    v3 = Strong;
    v4 = *(v0 + 160);
    outlined init with copy of MLS.OutgoingEventState?(v4, v0 + 16, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    outlined destroy of NSObject?(v4, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
    if (os_log_type_enabled(v5, v6))
    {
      v7 = *(v0 + 160);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v25 = v9;
      *v8 = 136315138;
      v10 = specialized MLS.IncomingEventType.identifier.getter();
      v12 = v11;

      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v12, &v25);

      *(v8 + 4) = v13;
      _os_log_impl(&dword_264F1F000, v5, v6, "EventSender completing and deleting event { identifier: %s }", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x266755550](v9, -1, -1);
      MEMORY[0x266755550](v8, -1, -1);
    }

    v14 = *(v3 + 32);
    v15 = *(v3 + 40);
    ObjectType = swift_getObjectType();
    v24 = *(v0 + 160);
    v17 = specialized MLS.IncomingEventType.identifier.getter();
    v19 = v18;
    *(v0 + 184) = v18;
    v20 = swift_task_alloc();
    *(v0 + 192) = v20;
    *(v20 + 16) = v3;
    *(v20 + 24) = v24;

    v21 = swift_task_alloc();
    *(v0 + 200) = v21;
    *v21 = v0;
    v21[1] = closure #1 in closure #1 in closure #1 in MLS.EventSender.send(incomingEvent:forGroup:shouldPersistNewEvent:isReflectionEvent:);
    v22 = MEMORY[0x277D84F78] + 8;

    MLS.Persister.atomically<A>(with:do:)(v21, v17, v19, &async function pointer to partial apply for closure #1 in closure #1 in closure #1 in closure #1 in MLS.EventSender.send(incomingEvent:forGroup:shouldPersistNewEvent:isReflectionEvent:), v20, ObjectType, v22, v15);
  }

  else
  {
    **(v0 + 144) = 0;
    v23 = *(v0 + 8);

    v23();
  }
}

uint64_t closure #1 in closure #1 in closure #1 in MLS.EventSender.send(incomingEvent:forGroup:shouldPersistNewEvent:isReflectionEvent:)()
{
  v2 = *(*v1 + 200);
  v3 = *(*v1 + 192);
  v4 = *(*v1 + 184);
  v7 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v5 = closure #1 in closure #1 in closure #1 in MLS.EventSender.send(incomingEvent:forGroup:shouldPersistNewEvent:isReflectionEvent:);
  }

  else
  {
    v5 = closure #1 in closure #1 in closure #1 in MLS.EventSender.send(incomingEvent:forGroup:shouldPersistNewEvent:isReflectionEvent:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

{
  v1 = *(v0 + 176);

  **(v0 + 144) = 0;
  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = v0[22];

  v2 = v0[1];
  v3 = v0[26];

  return v2();
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in MLS.EventSender.send(incomingEvent:forGroup:shouldPersistNewEvent:isReflectionEvent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[18] = a3;
  v4[19] = a4;
  v4[17] = a2;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v5 = static MLSActor.shared;
  v4[20] = static MLSActor.shared;

  return MEMORY[0x2822009F8](closure #1 in closure #1 in closure #1 in closure #1 in MLS.EventSender.send(incomingEvent:forGroup:shouldPersistNewEvent:isReflectionEvent:), v5, 0);
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in MLS.EventSender.send(incomingEvent:forGroup:shouldPersistNewEvent:isReflectionEvent:)()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  v3 = *(v0 + 136);
  v5 = *(v3 + 32);
  v4 = *(v3 + 40);
  ObjectType = swift_getObjectType();
  v8 = *(v1 + 16);
  v7 = *(v1 + 32);
  *(v0 + 16) = *v1;
  *(v0 + 32) = v8;
  *(v0 + 48) = v7;
  v10 = *(v1 + 64);
  v9 = *(v1 + 80);
  v11 = *(v1 + 48);
  *(v0 + 112) = *(v1 + 96);
  *(v0 + 80) = v10;
  *(v0 + 96) = v9;
  *(v0 + 64) = v11;
  v12 = *v2;
  v13 = v2[1];
  v14 = *(v3 + direct field offset for MLS.EventSender.clientIdentifier + 8);
  *(v0 + 120) = *(v3 + direct field offset for MLS.EventSender.clientIdentifier);
  *(v0 + 128) = v14;
  v15 = *(v4 + 128);

  v19 = (v15 + *v15);
  v16 = v15[1];
  v17 = swift_task_alloc();
  *(v0 + 168) = v17;
  *v17 = v0;
  v17[1] = closure #1 in closure #1 in closure #1 in closure #1 in MLS.EventSender.send(incomingEvent:forGroup:shouldPersistNewEvent:isReflectionEvent:);

  return v19(v0 + 16, v12, v13, v0 + 120, ObjectType, v4);
}

{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *v1;
  v2[22] = v0;

  v5 = v2[16];

  if (v0)
  {
    v6 = v2[20];

    return MEMORY[0x2822009F8](closure #1 in closure #1 in closure #1 in closure #1 in MLS.EventSender.send(incomingEvent:forGroup:shouldPersistNewEvent:isReflectionEvent:), v6, 0);
  }

  else
  {
    v7 = *(v4 + 8);

    return v7();
  }
}

{
  v1 = *(v0 + 176);
  return (*(v0 + 8))();
}

uint64_t MLS.EventSender.fetchGroupRecoveryInfo(group:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  *(v3 + 920) = v4;
  *(v3 + 912) = a1;
  *(v3 + 928) = *v4;
  v6 = type metadata accessor for UUID();
  *(v3 + 936) = v6;
  v7 = *(v6 - 8);
  *(v3 + 944) = v7;
  v8 = *(v7 + 64) + 15;
  *(v3 + 952) = swift_task_alloc();
  v9 = *(a2 + 80);
  *(v3 + 80) = *(a2 + 64);
  *(v3 + 96) = v9;
  *(v3 + 112) = *(a2 + 96);
  v10 = *(a2 + 16);
  *(v3 + 16) = *a2;
  *(v3 + 32) = v10;
  v11 = *(a2 + 48);
  *(v3 + 48) = *(a2 + 32);
  *(v3 + 64) = v11;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v12 = static MLSActor.shared;
  *(v3 + 960) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.EventSender.fetchGroupRecoveryInfo(group:), v12, 0);
}

uint64_t MLS.EventSender.fetchGroupRecoveryInfo(group:)()
{
  v42 = v0;
  v1 = *(v0 + 952);
  v2 = *(v0 + 944);
  v3 = *(v0 + 936);
  v4 = *(v0 + 920);
  UUID.init()();
  v5 = UUID.uuidString.getter();
  v7 = v6;
  *(v0 + 968) = v5;
  *(v0 + 976) = v6;
  (*(v2 + 8))(v1, v3);
  *(v0 + 984) = direct field offset for MLS.EventSender.logger;
  outlined init with copy of MLS.Group(v0 + 16, v0 + 120);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  outlined destroy of MLS.Group(v0 + 16);

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v34 = v11;
    *v10 = 136315394;
    v12 = *(v0 + 96);
    v39 = *(v0 + 80);
    v40 = v12;
    v41 = *(v0 + 112);
    v13 = *(v0 + 32);
    v35 = *(v0 + 16);
    v36 = v13;
    v14 = *(v0 + 64);
    v37 = *(v0 + 48);
    v38 = v14;
    outlined init with copy of MLS.Group(v0 + 16, v0 + 744);
    v15 = MLS.Group.description.getter();
    v17 = v16;
    v18 = v40;
    *(v0 + 704) = v39;
    *(v0 + 720) = v18;
    *(v0 + 736) = v41;
    v19 = v36;
    *(v0 + 640) = v35;
    *(v0 + 656) = v19;
    v20 = v38;
    *(v0 + 672) = v37;
    *(v0 + 688) = v20;
    outlined destroy of MLS.Group(v0 + 640);
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, &v34);

    *(v10 + 4) = v21;
    *(v10 + 12) = 2080;
    *(v10 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v7, &v34);
    _os_log_impl(&dword_264F1F000, v8, v9, "EventSender told to fetch group info { group: %s, fetchIdentifier: %s }", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v11, -1, -1);
    MEMORY[0x266755550](v10, -1, -1);
  }

  v22 = *(v0 + 928);
  v23 = *(v0 + 920);
  v24 = swift_allocObject();
  swift_weakInit();
  v25 = swift_allocObject();
  *(v0 + 992) = v25;
  *(v25 + 16) = *(v22 + 80);
  *(v25 + 24) = *(v22 + 88);
  v26 = *(v22 + 104);
  v27 = *(v0 + 48);
  *(v25 + 104) = *(v0 + 64);
  v28 = *(v0 + 96);
  *(v25 + 120) = *(v0 + 80);
  *(v25 + 136) = v28;
  v29 = *(v0 + 32);
  *(v25 + 56) = *(v0 + 16);
  *(v25 + 72) = v29;
  *(v25 + 40) = v26;
  *(v25 + 48) = v24;
  v30 = *(v0 + 112);
  *(v25 + 88) = v27;
  *(v25 + 152) = v30;
  *(v25 + 160) = v5;
  *(v25 + 168) = v7;
  outlined init with copy of MLS.Group(v0 + 16, v0 + 224);

  v31 = swift_task_alloc();
  *(v0 + 1000) = v31;
  *v31 = v0;
  v31[1] = MLS.EventSender.fetchGroupRecoveryInfo(group:);
  v32 = *(v0 + 920);
  v44 = &type metadata for MLS.GroupRecoveryInfo;

  return MLS.EventSender.performWithRetry<A>(identifier:retryPolicy:work:failureBlock:)(v0 + 848, v5, v7, 0, &async function pointer to partial apply for closure #1 in MLS.EventSender.fetchGroupRecoveryInfo(group:), v25, 0, 0);
}

{
  v1 = *(*v0 + 1000);
  v2 = *(*v0 + 992);
  v3 = *(*v0 + 960);
  v5 = *v0;

  return MEMORY[0x2822009F8](MLS.EventSender.fetchGroupRecoveryInfo(group:), v3, 0);
}

{
  v42 = v0;
  v1 = *(v0 + 984);
  v2 = *(v0 + 976);
  v3 = *(v0 + 920);
  v4 = *(v0 + 848);
  v5 = *(v0 + 856);
  v6 = *(v0 + 864);
  v7 = *(v0 + 872);
  outlined init with copy of MLS.Group(v0 + 16, v0 + 328);

  outlined copy of MLS.GroupRecoveryInfo?(v4, v5, v6, v7);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  outlined destroy of MLS.Group(v0 + 16);

  outlined consume of MLS.GroupRecoveryInfo?(v4, v5, v6, v7);
  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 976);
    v31 = *(v0 + 968);
    v11 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v34 = v33;
    *v11 = 136315650;
    v12 = *(v0 + 96);
    v39 = *(v0 + 80);
    v40 = v12;
    v41 = *(v0 + 112);
    v13 = *(v0 + 32);
    v35 = *(v0 + 16);
    v36 = v13;
    v14 = *(v0 + 64);
    v37 = *(v0 + 48);
    v38 = v14;
    outlined init with copy of MLS.Group(v0 + 16, v0 + 536);
    v32 = v9;
    v15 = MLS.Group.description.getter();
    v17 = v16;
    v18 = v40;
    *(v0 + 496) = v39;
    *(v0 + 512) = v18;
    *(v0 + 528) = v41;
    v19 = v36;
    *(v0 + 432) = v35;
    *(v0 + 448) = v19;
    v20 = v38;
    *(v0 + 464) = v37;
    *(v0 + 480) = v20;
    outlined destroy of MLS.Group(v0 + 432);
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, &v34);

    *(v11 + 4) = v21;
    *(v11 + 12) = 2080;
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v10, &v34);

    *(v11 + 14) = v22;
    *(v11 + 22) = 2080;
    *(v0 + 880) = v4;
    *(v0 + 888) = v5;
    *(v0 + 896) = v6;
    *(v0 + 904) = v7;
    outlined copy of MLS.GroupRecoveryInfo?(v4, v5, v6, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO17GroupRecoveryInfoVSgMd, &_s15SecureMessaging3MLSO17GroupRecoveryInfoVSgMR);
    v23 = String.init<A>(describing:)();
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v34);

    *(v11 + 24) = v25;
    _os_log_impl(&dword_264F1F000, v8, v32, "EventSender returning group info { group: %s, fetchIdentifier: %s, groupInfo: %s }", v11, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v33, -1, -1);
    MEMORY[0x266755550](v11, -1, -1);
  }

  else
  {
    v26 = *(v0 + 976);
  }

  v27 = *(v0 + 952);
  v28 = *(v0 + 912);
  *v28 = v4;
  v28[1] = v5;
  v28[2] = v6;
  v28[3] = v7;

  v29 = *(v0 + 8);

  return v29();
}

uint64_t closure #1 in MLS.EventSender.fetchGroupRecoveryInfo(group:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[184] = a5;
  v5[183] = a4;
  v5[182] = a3;
  v5[181] = a2;
  v5[180] = a1;
  return MEMORY[0x2822009F8](closure #1 in MLS.EventSender.fetchGroupRecoveryInfo(group:), 0, 0);
}

uint64_t closure #1 in MLS.EventSender.fetchGroupRecoveryInfo(group:)()
{
  v47 = v0;
  v1 = *(v0 + 1448);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 1480) = Strong;
  if (Strong)
  {
    v3 = Strong;
    v4 = *(v0 + 1472);
    v5 = *(v0 + 1456);
    *(v0 + 1488) = direct field offset for MLS.EventSender.logger;
    outlined init with copy of MLS.Group(v5, v0 + 16);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    outlined destroy of MLS.Group(v5);

    if (os_log_type_enabled(v6, v7))
    {
      v37 = *(v0 + 1472);
      v8 = *(v0 + 1464);
      v9 = *(v0 + 1456);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v39 = v11;
      *v10 = 136315394;
      v12 = *(v9 + 80);
      v44 = *(v9 + 64);
      v45 = v12;
      v46 = *(v9 + 96);
      v13 = *(v9 + 16);
      v40 = *v9;
      v41 = v13;
      v14 = *(v9 + 48);
      v42 = *(v9 + 32);
      v43 = v14;
      outlined init with copy of MLS.Group(v9, v0 + 1264);
      v15 = MLS.Group.description.getter();
      v17 = v16;
      v18 = v45;
      *(v0 + 1224) = v44;
      *(v0 + 1240) = v18;
      *(v0 + 1256) = v46;
      v19 = v41;
      *(v0 + 1160) = v40;
      *(v0 + 1176) = v19;
      v20 = v43;
      *(v0 + 1192) = v42;
      *(v0 + 1208) = v20;
      outlined destroy of MLS.Group(v0 + 1160);
      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, &v39);

      *(v10 + 4) = v21;
      *(v10 + 12) = 2080;
      *(v10 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v37, &v39);
      _os_log_impl(&dword_264F1F000, v6, v7, "EventSender fetching group info { group: %s, fetchIdentifier: %s }", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266755550](v11, -1, -1);
      MEMORY[0x266755550](v10, -1, -1);
    }

    v22 = *(v0 + 1456);
    v24 = *(v3 + 16);
    v23 = *(v3 + 24);
    ObjectType = swift_getObjectType();
    v26 = *v22;
    v27 = v22[1];
    *(v0 + 152) = v22[2];
    *(v0 + 136) = v27;
    *(v0 + 120) = v26;
    v28 = v22[3];
    v29 = v22[4];
    v30 = v22[5];
    *(v0 + 216) = *(v22 + 12);
    *(v0 + 200) = v30;
    *(v0 + 184) = v29;
    *(v0 + 168) = v28;
    *(v0 + 1512) = 1;
    v31 = *(v23 + 24);
    v38 = (v31 + *v31);
    v32 = v31[1];
    v33 = swift_task_alloc();
    *(v0 + 1496) = v33;
    *v33 = v0;
    v33[1] = closure #1 in MLS.EventSender.fetchGroupRecoveryInfo(group:);

    return v38(v0 + 1368, v0 + 120, v0 + 1512, ObjectType, v23);
  }

  else
  {
    v35 = *(v0 + 1440);
    *v35 = xmmword_2651B5F50;
    *(v35 + 16) = 0;
    *(v35 + 24) = 0;
    v36 = *(v0 + 8);

    return v36();
  }
}

{
  v2 = *(*v1 + 1496);
  v5 = *v1;
  *(*v1 + 1504) = v0;

  if (v0)
  {
    v3 = closure #1 in MLS.EventSender.fetchGroupRecoveryInfo(group:);
  }

  else
  {
    v3 = closure #1 in MLS.EventSender.fetchGroupRecoveryInfo(group:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v102 = v0;
  v1 = *(v0 + 1488);
  v2 = *(v0 + 1480);
  v3 = *(v0 + 1472);
  v4 = *(v0 + 1456);
  v5 = *(v0 + 1368);
  v6 = *(v0 + 1376);
  v7 = *(v0 + 1384);
  v8 = *(v0 + 1392);
  outlined init with copy of MLS.Group(v4, v0 + 224);

  outlined copy of MLS.FetchGroupRecoveryInfoResult(v5, v6, v7, v8, outlined copy of Data._Representation, outlined copy of Data?);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  v11 = v4;
  v12 = v8;
  outlined destroy of MLS.Group(v11);

  outlined copy of MLS.FetchGroupRecoveryInfoResult(v5, v6, v7, v8, outlined consume of Data._Representation, outlined consume of Data?);
  v13 = v6 >> 60;
  if (os_log_type_enabled(v9, v10))
  {
    v87 = v10;
    v88 = v12;
    v89 = v5;
    v90 = v7;
    v14 = *(v0 + 1472);
    v15 = *(v0 + 1464);
    v16 = *(v0 + 1456);
    v17 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    v92 = v86;
    *v17 = 136315650;
    v18 = *(v16 + 80);
    v97 = *(v16 + 64);
    v98 = v18;
    v99 = *(v16 + 96);
    v19 = *(v16 + 16);
    v93 = *v16;
    v94 = v19;
    v20 = *(v16 + 48);
    v95 = *(v16 + 32);
    v96 = v20;
    outlined init with copy of MLS.Group(v16, v0 + 1056);
    v21 = MLS.Group.description.getter();
    v23 = v22;
    v24 = v98;
    *(v0 + 1016) = v97;
    *(v0 + 1032) = v24;
    *(v0 + 1048) = v99;
    v25 = v94;
    *(v0 + 952) = v93;
    *(v0 + 968) = v25;
    v26 = v96;
    *(v0 + 984) = v95;
    *(v0 + 1000) = v26;
    outlined destroy of MLS.Group(v0 + 952);
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, &v92);

    *(v17 + 4) = v27;
    *(v17 + 12) = 2080;
    *(v17 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v14, &v92);
    *(v17 + 22) = 2080;
    if (v6 >> 60 == 15)
    {
      v28 = 0xEF79616C65447265;
      v29 = 0x7466417972746552;
      v12 = v88;
      v5 = v89;
    }

    else
    {
      v12 = v88;
      v5 = v89;
      if (v13 == 11)
      {
        v28 = 0xEA00000000007972;
        v29 = 0x746552746F4E6F44;
      }

      else
      {
        *&v93 = 0;
        *(&v93 + 1) = 0xE000000000000000;
        outlined copy of Data._Representation(v89, v6);
        outlined copy of Data?(v90, v88);
        _StringGuts.grow(_:)(22);

        v100 = 0xD000000000000013;
        v101 = 0x80000002651E9AF0;
        *&v93 = 0;
        *(&v93 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(31);

        *&v93 = 0x666E4970756F7247;
        *(&v93 + 1) = 0xEB00000000203A6FLL;
        countAndFlagsBits = Data.base64EncodedString(options:)(0)._countAndFlagsBits;
        MEMORY[0x2667545A0](countAndFlagsBits);

        MEMORY[0x2667545A0](0xD000000000000010, 0x80000002651E9AD0);
        v57 = 0;
        object = 0;
        if (v88 >> 60 != 15)
        {
          v59 = Data.base64EncodedString(options:)(0);
          object = v59._object;
          v57 = v59._countAndFlagsBits;
        }

        *(v0 + 1424) = v57;
        *(v0 + 1432) = object;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
        v60 = String.init<A>(describing:)();
        MEMORY[0x2667545A0](v60);

        MEMORY[0x2667545A0](v93, *(&v93 + 1));

        MEMORY[0x2667545A0](41, 0xE100000000000000);
        outlined copy of MLS.FetchGroupRecoveryInfoResult(v89, v6, v90, v88, outlined consume of Data._Representation, outlined consume of Data?);
        v29 = v100;
        v28 = v101;
      }
    }

    v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v28, &v92);

    *(v17 + 24) = v61;
    _os_log_impl(&dword_264F1F000, v9, v87, "EventSender fetched group info { group: %s, fetchIdentifier: %s, result: %s }", v17, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v86, -1, -1);
    MEMORY[0x266755550](v17, -1, -1);

    v7 = v90;
    if (v6 >> 60 == 15)
    {
      goto LABEL_17;
    }
  }

  else
  {

    if (v6 >> 60 == 15)
    {
LABEL_17:
      v62 = *(v0 + 1488);
      v63 = *(v0 + 1480);
      v64 = *(v0 + 1472);
      v65 = *(v0 + 1456);
      outlined init with copy of MLS.Group(v65, v0 + 328);

      v66 = Logger.logObject.getter();
      v67 = static os_log_type_t.default.getter();
      outlined destroy of MLS.Group(v65);

      if (os_log_type_enabled(v66, v67))
      {
        v68 = *(v0 + 1472);
        v69 = *(v0 + 1464);
        v70 = *(v0 + 1456);
        v71 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        v100 = v72;
        *v71 = 136315394;
        v73 = *(v70 + 80);
        v97 = *(v70 + 64);
        v98 = v73;
        v99 = *(v70 + 96);
        v74 = *(v70 + 16);
        v93 = *v70;
        v94 = v74;
        v75 = *(v70 + 48);
        v95 = *(v70 + 32);
        v96 = v75;
        outlined init with copy of MLS.Group(v70, v0 + 536);
        v76 = MLS.Group.description.getter();
        v78 = v77;
        v79 = v98;
        *(v0 + 496) = v97;
        *(v0 + 512) = v79;
        *(v0 + 528) = v99;
        v80 = v94;
        *(v0 + 432) = v93;
        *(v0 + 448) = v80;
        v81 = v96;
        *(v0 + 464) = v95;
        *(v0 + 480) = v81;
        outlined destroy of MLS.Group(v0 + 432);
        v82 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v76, v78, &v100);

        *(v71 + 4) = v82;
        *(v71 + 12) = 2080;
        *(v71 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v69, v68, &v100);
        _os_log_impl(&dword_264F1F000, v66, v67, "EventSender told to retry group info fetch { group: %s, fetchIdentifier: %s }", v71, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266755550](v72, -1, -1);
        MEMORY[0x266755550](v71, -1, -1);
      }

      v83 = *(v0 + 1480);
      lazy protocol witness table accessor for type MLS.EventSenderError and conformance MLS.EventSenderError();
      swift_allocError();
      *v84 = 0;
      *(v84 + 8) = 0;
      *(v84 + 16) = 0;
      swift_willThrow();

      v55 = *(v0 + 8);
      goto LABEL_20;
    }
  }

  if (v13 == 11)
  {
    v30 = *(v0 + 1488);
    v31 = *(v0 + 1480);
    v32 = *(v0 + 1472);
    v33 = *(v0 + 1456);
    outlined init with copy of MLS.Group(v33, v0 + 640);

    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    outlined destroy of MLS.Group(v33);

    v36 = os_log_type_enabled(v34, v35);
    v37 = *(v0 + 1480);
    if (v36)
    {
      v91 = *(v0 + 1472);
      v38 = *(v0 + 1464);
      v39 = *(v0 + 1456);
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v100 = v41;
      *v40 = 136315394;
      v42 = *(v39 + 80);
      v97 = *(v39 + 64);
      v98 = v42;
      v99 = *(v39 + 96);
      v43 = *(v39 + 16);
      v93 = *v39;
      v94 = v43;
      v44 = *(v39 + 48);
      v95 = *(v39 + 32);
      v96 = v44;
      outlined init with copy of MLS.Group(v39, v0 + 848);
      v45 = MLS.Group.description.getter();
      v47 = v46;
      v48 = v98;
      *(v0 + 808) = v97;
      *(v0 + 824) = v48;
      *(v0 + 840) = v99;
      v49 = v94;
      *(v0 + 744) = v93;
      *(v0 + 760) = v49;
      v50 = v96;
      *(v0 + 776) = v95;
      *(v0 + 792) = v50;
      outlined destroy of MLS.Group(v0 + 744);
      v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v47, &v100);

      *(v40 + 4) = v51;
      *(v40 + 12) = 2080;
      *(v40 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v91, &v100);
      _os_log_impl(&dword_264F1F000, v34, v35, "EventSender told to not retry group info fetch { group: %s, fetchIdentifier: %s }", v40, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266755550](v41, -1, -1);
      MEMORY[0x266755550](v40, -1, -1);
    }

    v52 = *(v0 + 1440);
    *v52 = xmmword_2651B5F50;
    *(v52 + 16) = 0;
    *(v52 + 24) = 0;
  }

  else
  {
    v53 = *(v0 + 1480);
    v54 = *(v0 + 1440);

    *v54 = v5;
    v54[1] = v6;
    v54[2] = v7;
    v54[3] = v12;
  }

  v55 = *(v0 + 8);
LABEL_20:

  return v55();
}

{
  v1 = v0[185];

  v2 = v0[188];
  v3 = v0[1];

  return v3();
}

uint64_t MLS.EventSender.fetchMembers(uris:)(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v2[8] = *v1;
  v3 = type metadata accessor for UUID();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v6 = static MLSActor.shared;
  v2[12] = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.EventSender.fetchMembers(uris:), v6, 0);
}

uint64_t MLS.EventSender.fetchMembers(uris:)()
{
  v56 = v0;
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = v0[6];
  v5 = v0[7];
  UUID.init()();
  v6 = UUID.uuidString.getter();
  v8 = v7;
  v0[13] = v6;
  v0[14] = v7;
  (*(v2 + 8))(v1, v3);
  v0[15] = direct field offset for MLS.EventSender.logger;

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = v0[6];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v55 = v13;
    *v12 = 136315394;
    v14 = MEMORY[0x266754630](v11, &type metadata for URI);
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v55);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    *(v12 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v8, &v55);
    _os_log_impl(&dword_264F1F000, v9, v10, "EventSender told to fetch members { uris: %s, fetchIdentifier: %s }", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v13, -1, -1);
    MEMORY[0x266755550](v12, -1, -1);
  }

  v17 = v0[6];
  v18 = v17[2];
  v0[16] = v18;
  if (v18)
  {
    v0[17] = MEMORY[0x277D84F90];
    v0[18] = 0;
    v20 = v0[13];
    v19 = v0[14];
    v21 = v0[7];
    v22 = v0[8];
    v24 = v17[4];
    v23 = v17[5];
    v25 = swift_allocObject();
    swift_weakInit();
    v26 = swift_allocObject();
    v0[19] = v26;
    *(v26 + 16) = *(v22 + 80);
    *(v26 + 24) = *(v22 + 88);
    *(v26 + 40) = *(v22 + 104);
    *(v26 + 48) = v25;
    *(v26 + 56) = v24;
    *(v26 + 64) = v23;
    *(v26 + 72) = v20;
    *(v26 + 80) = v19;

    v27 = swift_task_alloc();
    v0[20] = v27;
    *v27 = v0;
    v27[1] = MLS.EventSender.fetchMembers(uris:);
    v28 = v0[13];
    v29 = v0[14];
    v30 = v0[7];
    v58 = &type metadata for MLS.AllMember;

    return MLS.EventSender.performWithRetry<A>(identifier:retryPolicy:work:failureBlock:)((v0 + 2), v28, v29, 0, &async function pointer to partial apply for closure #1 in MLS.EventSender.fetchMembers(uris:), v26, 0, 0);
  }

  else
  {
    v33 = v0[14];
    v32 = v0[15];
    v34 = v0[7];

    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();

    v37 = os_log_type_enabled(v35, v36);
    v38 = v0[14];
    if (v37)
    {
      v39 = v0[13];
      v40 = v0[6];
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v55 = v42;
      *v41 = 136315650;
      v43 = MEMORY[0x266754630](v40, &type metadata for URI);
      v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v44, &v55);

      *(v41 + 4) = v45;
      *(v41 + 12) = 2080;
      v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v38, &v55);

      *(v41 + 14) = v46;
      *(v41 + 22) = 2080;

      v48 = MEMORY[0x266754630](v47, &type metadata for MLS.AllMember);
      v50 = v49;

      v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v50, &v55);

      *(v41 + 24) = v51;
      _os_log_impl(&dword_264F1F000, v35, v36, "EventSender returning members { uris: %s, fetchIdentifier: %s, members: %s }", v41, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x266755550](v42, -1, -1);
      MEMORY[0x266755550](v41, -1, -1);
    }

    else
    {
    }

    v52 = v0[11];

    v53 = v0[1];
    v54 = MEMORY[0x277D84F90];

    return v53(v54);
  }
}

{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 152);
  v3 = *(*v0 + 96);
  v5 = *v0;

  return MEMORY[0x2822009F8](MLS.EventSender.fetchMembers(uris:), v3, 0);
}

{
  v58 = v0;
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  v3 = *(v0 + 136);
  if (v2 <= 0xFD)
  {
    v56 = *(v0 + 16);
    v9 = *(v0 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *(v0 + 136);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 2) + 1, 1, *(v0 + 136));
    }

    v13 = *(v11 + 2);
    v12 = *(v11 + 3);
    v14 = v56;
    if (v13 >= v12 >> 1)
    {
      v55 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v11);
      v14 = v56;
      v11 = v55;
    }

    v15 = *(v0 + 128);
    v16 = *(v0 + 144) + 1;
    *(v11 + 2) = v13 + 1;
    v17 = &v11[32 * v13];
    *(v17 + 2) = v14;
    *(v17 + 6) = v9;
    v17[56] = v2;
    if (v16 == v15)
    {
      v19 = *(v0 + 112);
      v18 = *(v0 + 120);
      v21 = *(v0 + 48);
      v20 = *(v0 + 56);

      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.default.getter();

      v24 = os_log_type_enabled(v22, v23);
      v25 = *(v0 + 112);
      if (v24)
      {
        v26 = *(v0 + 104);
        v27 = *(v0 + 48);
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v57 = v29;
        *v28 = 136315650;
        v30 = MEMORY[0x266754630](v27, &type metadata for URI);
        v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, &v57);

        *(v28 + 4) = v32;
        *(v28 + 12) = 2080;
        v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v25, &v57);

        *(v28 + 14) = v33;
        *(v28 + 22) = 2080;

        v35 = MEMORY[0x266754630](v34, &type metadata for MLS.AllMember);
        v37 = v36;

        v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v37, &v57);

        *(v28 + 24) = v38;
        _os_log_impl(&dword_264F1F000, v22, v23, "EventSender returning members { uris: %s, fetchIdentifier: %s, members: %s }", v28, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x266755550](v29, -1, -1);
        MEMORY[0x266755550](v28, -1, -1);
      }

      else
      {
      }

      v53 = *(v0 + 88);

      v54 = *(v0 + 8);

      return v54(v11);
    }

    else
    {
      v39 = *(v0 + 144) + 1;
      *(v0 + 136) = v11;
      *(v0 + 144) = v39;
      v40 = *(v0 + 104);
      v41 = *(v0 + 112);
      v42 = *(v0 + 56);
      v43 = *(v0 + 64);
      v44 = *(v0 + 48) + 16 * v39;
      v46 = *(v44 + 32);
      v45 = *(v44 + 40);
      v47 = swift_allocObject();
      swift_weakInit();
      v48 = swift_allocObject();
      *(v0 + 152) = v48;
      *(v48 + 16) = *(v43 + 80);
      *(v48 + 24) = *(v43 + 88);
      *(v48 + 40) = *(v43 + 104);
      *(v48 + 48) = v47;
      *(v48 + 56) = v46;
      *(v48 + 64) = v45;
      *(v48 + 72) = v40;
      *(v48 + 80) = v41;

      v49 = swift_task_alloc();
      *(v0 + 160) = v49;
      *v49 = v0;
      v49[1] = MLS.EventSender.fetchMembers(uris:);
      v50 = *(v0 + 104);
      v51 = *(v0 + 112);
      v52 = *(v0 + 56);
      v60 = &type metadata for MLS.AllMember;

      return MLS.EventSender.performWithRetry<A>(identifier:retryPolicy:work:failureBlock:)(v0 + 16, v50, v51, 0, &async function pointer to partial apply for closure #1 in MLS.EventSender.fetchMembers(uris:), v48, 0, 0);
    }
  }

  else
  {
    v4 = *(v0 + 112);
    v5 = *(v0 + 88);

    lazy protocol witness table accessor for type MLS.EventSenderError and conformance MLS.EventSenderError();
    swift_allocError();
    *v6 = 3;
    *(v6 + 8) = 0;
    *(v6 + 16) = 0;
    swift_willThrow();

    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t closure #1 in MLS.EventSender.fetchMembers(uris:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[21] = a5;
  v6[22] = a6;
  v6[19] = a3;
  v6[20] = a4;
  v6[17] = a1;
  v6[18] = a2;
  return MEMORY[0x2822009F8](closure #1 in MLS.EventSender.fetchMembers(uris:), 0, 0);
}

uint64_t closure #1 in MLS.EventSender.fetchMembers(uris:)()
{
  v27 = v0;
  v1 = *(v0 + 144);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 184) = Strong;
  if (Strong)
  {
    v3 = Strong;
    v4 = *(v0 + 176);
    v5 = *(v0 + 160);
    *(v0 + 192) = direct field offset for MLS.EventSender.logger;

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v9 = *(v0 + 168);
      v8 = *(v0 + 176);
      v11 = *(v0 + 152);
      v10 = *(v0 + 160);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v26 = v13;
      *v12 = 136315394;
      *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v10, &v26);
      *(v12 + 12) = 2080;
      *(v12 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v8, &v26);
      _os_log_impl(&dword_264F1F000, v6, v7, "EventSender fetching uri { uri: %s, fetchIdentifier: %s }", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266755550](v13, -1, -1);
      MEMORY[0x266755550](v12, -1, -1);
    }

    v15 = *(v0 + 152);
    v14 = *(v0 + 160);
    v17 = *(v3 + 16);
    v16 = *(v3 + 24);
    ObjectType = swift_getObjectType();
    *(v0 + 104) = v15;
    *(v0 + 112) = v14;
    *(v0 + 41) = 1;
    v19 = *(v16 + 32);
    v25 = (v19 + *v19);
    v20 = v19[1];
    v21 = swift_task_alloc();
    *(v0 + 200) = v21;
    *v21 = v0;
    v21[1] = closure #1 in MLS.EventSender.fetchMembers(uris:);

    return v25(v0 + 16, v0 + 104, v0 + 41, ObjectType, v16);
  }

  else
  {
    v23 = *(v0 + 136);
    *v23 = 0;
    v23[1] = 0;
    v23[2] = 0;
    *(*(v0 + 136) + 24) = -2;
    v24 = *(v0 + 8);

    return v24();
  }
}

{
  v2 = *(*v1 + 200);
  v5 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v3 = closure #1 in MLS.EventSender.fetchMembers(uris:);
  }

  else
  {
    v3 = closure #1 in MLS.EventSender.fetchMembers(uris:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v59 = v0;
  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  v3 = *(v0 + 176);
  v4 = *(v0 + 160);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = *(v0 + 32);
  v8 = *(v0 + 40);

  outlined copy of MLS.FetchMemberResult<MLS.AllMember>(v5, v6, v7, v8);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  v57 = v6;
  v11 = v6;
  v12 = v7;
  outlined consume of MLS.FetchMemberResult<MLS.AllMember>(v5, v11, v7, v8);
  if (os_log_type_enabled(v9, v10))
  {
    v55 = v10;
    v56 = v5;
    v14 = *(v0 + 168);
    v13 = *(v0 + 176);
    v16 = *(v0 + 152);
    v15 = *(v0 + 160);
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v58[0] = v18;
    *v17 = 136315650;
    *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v15, v58);
    *(v17 + 12) = 2080;
    *(v17 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v13, v58);
    *(v17 + 22) = 2080;
    if (v8 <= 0xFD)
    {
      v5 = v56;
      if ((v8 & 0xFE) == 0x7E)
      {
        v19 = 0xEA00000000007972;
        v20 = 0x746552746F4E6F44;
      }

      else
      {
        *(v0 + 120) = 0;
        *(v0 + 128) = 0xE000000000000000;
        MEMORY[0x2667545A0](0x2873736563637553, 0xE800000000000000);
        *(v0 + 48) = v56;
        *(v0 + 56) = v57;
        *(v0 + 64) = v12;
        *(v0 + 72) = v8;
        _print_unlocked<A, B>(_:_:)();
        MEMORY[0x2667545A0](41, 0xE100000000000000);
        v20 = *(v0 + 120);
        v19 = *(v0 + 128);
      }
    }

    else
    {
      v19 = 0xEF79616C65447265;
      v20 = 0x7466417972746552;
      v5 = v56;
    }

    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v19, v58);

    *(v17 + 24) = v21;
    _os_log_impl(&dword_264F1F000, v9, v55, "EventSender fetched uri { uri: %s, fetchIdentifier: %s, result: %s }", v17, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v18, -1, -1);
    MEMORY[0x266755550](v17, -1, -1);
  }

  if (v8 <= 0xFD)
  {
    if ((v8 & 0xFE) == 0x7E)
    {
      v38 = *(v0 + 184);
      v37 = *(v0 + 192);
      v39 = *(v0 + 176);
      v40 = *(v0 + 160);

      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.error.getter();

      v43 = os_log_type_enabled(v41, v42);
      v44 = *(v0 + 184);
      if (v43)
      {
        v46 = *(v0 + 168);
        v45 = *(v0 + 176);
        v48 = *(v0 + 152);
        v47 = *(v0 + 160);
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v58[0] = v50;
        *v49 = 136315394;
        *(v49 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v47, v58);
        *(v49 + 12) = 2080;
        *(v49 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v45, v58);
        _os_log_impl(&dword_264F1F000, v41, v42, "EventSender told to not retry member fetch { uri: %s, fetchIdentifier: %s }", v49, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266755550](v50, -1, -1);
        MEMORY[0x266755550](v49, -1, -1);
      }

      v51 = *(v0 + 136);
      *v51 = 0;
      v51[1] = 0;
      v51[2] = 0;
      LOBYTE(v8) = -2;
    }

    else
    {
      v52 = *(v0 + 184);
      v53 = *(v0 + 136);

      *v53 = v5;
      v53[1] = v57;
      v53[2] = v12;
    }

    *(*(v0 + 136) + 24) = v8;
    v36 = *(v0 + 8);
  }

  else
  {
    v22 = *(v0 + 184);
    v23 = *(v0 + 192);
    v24 = *(v0 + 176);
    v25 = *(v0 + 160);

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v29 = *(v0 + 168);
      v28 = *(v0 + 176);
      v31 = *(v0 + 152);
      v30 = *(v0 + 160);
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v58[0] = v33;
      *v32 = 136315394;
      *(v32 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v30, v58);
      *(v32 + 12) = 2080;
      *(v32 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v28, v58);
      _os_log_impl(&dword_264F1F000, v26, v27, "EventSender told to retry member fetch { uri: %s, fetchIdentifier: %s }", v32, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266755550](v33, -1, -1);
      MEMORY[0x266755550](v32, -1, -1);
    }

    v34 = *(v0 + 184);
    lazy protocol witness table accessor for type MLS.EventSenderError and conformance MLS.EventSenderError();
    swift_allocError();
    *v35 = 0;
    *(v35 + 8) = 0;
    *(v35 + 16) = 0;
    swift_willThrow();

    v36 = *(v0 + 8);
  }

  return v36();
}

{
  v1 = v0[23];

  v2 = v0[26];
  v3 = v0[1];

  return v3();
}

uint64_t MLS.EventSender.completeEvent(identifier:storageIdentifier:groupIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  v7[9] = *v6;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v8 = static MLSActor.shared;
  v7[10] = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.EventSender.completeEvent(identifier:storageIdentifier:groupIdentifier:), v8, 0);
}

uint64_t MLS.EventSender.completeEvent(identifier:storageIdentifier:groupIdentifier:)()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = MLS.EventSender.eventQueue(groupIdentifier:)(v0[6], v0[7]);
  v0[11] = v3;

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[4];
    v6 = v0[5];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v37 = v9;
    *v8 = 136315138;
    *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v6, &v37);
    _os_log_impl(&dword_264F1F000, v4, v5, "EventSender acknowledging ack { storageIdentifier: %s }", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x266755550](v9, -1, -1);
    MEMORY[0x266755550](v8, -1, -1);
  }

  v10 = v0[5];
  v12 = v0[2];
  v11 = v0[3];
  v13 = (*(*v0[8] + 256))();
  (*(*v3 + 336))(v12, v11, v13, v14);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v18 = v0[4];
    v17 = v0[5];
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v37 = v20;
    *v19 = 136315138;
    *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v17, &v37);
    _os_log_impl(&dword_264F1F000, v15, v16, "EventSender enqueuing deletion of event { storageIdentifier: %s }", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x266755550](v20, -1, -1);
    MEMORY[0x266755550](v19, -1, -1);
  }

  v21 = v0[8];
  v22 = v0[9];
  v23 = v0[7];
  v35 = v0[6];
  v25 = v0[4];
  v24 = v0[5];
  v27 = v0[2];
  v26 = v0[3];
  v28 = swift_allocObject();
  swift_weakInit();
  v29 = swift_allocObject();
  v0[12] = v29;
  *(v29 + 16) = *(v22 + 80);
  *(v29 + 24) = *(v22 + 88);
  *(v29 + 40) = *(v22 + 104);
  *(v29 + 48) = v28;
  *(v29 + 56) = v25;
  *(v29 + 64) = v24;
  *(v29 + 72) = v27;
  *(v29 + 80) = v26;
  *(v29 + 88) = v35;
  *(v29 + 96) = v23;

  v30 = swift_task_alloc();
  v0[13] = v30;
  *v30 = v0;
  v30[1] = MLS.EventSender.completeEvent(identifier:storageIdentifier:groupIdentifier:);
  v31 = v0[8];
  v32 = v0[4];
  v33 = v0[5];

  return MLS.EventSender.performWithRetry<A>(identifier:retryPolicy:work:failureBlock:)((v0 + 14), v32, v33, 1, &async function pointer to partial apply for closure #1 in MLS.EventSender.completeEvent(identifier:storageIdentifier:groupIdentifier:), v29, 0, 0);
}

{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 80);
  v5 = *v0;

  return MEMORY[0x2822009F8](MLS.EventSender.completeEvent(identifier:storageIdentifier:groupIdentifier:), v3, 0);
}

{
  v1 = *(v0 + 88);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t closure #1 in MLS.EventSender.completeEvent(identifier:storageIdentifier:groupIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[11] = a7;
  v8[12] = a8;
  v8[9] = a5;
  v8[10] = a6;
  v8[7] = a3;
  v8[8] = a4;
  v8[5] = a1;
  v8[6] = a2;
  return MEMORY[0x2822009F8](closure #1 in MLS.EventSender.completeEvent(identifier:storageIdentifier:groupIdentifier:), 0, 0);
}

void closure #1 in MLS.EventSender.completeEvent(identifier:storageIdentifier:groupIdentifier:)()
{
  v24 = v0;
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 104) = Strong;
  if (Strong)
  {
    v3 = Strong;
    v4 = *(v0 + 64);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v8 = *(v0 + 56);
      v7 = *(v0 + 64);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v23 = v10;
      *v9 = 136315138;
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v7, &v23);
      _os_log_impl(&dword_264F1F000, v5, v6, "EventSender deleting event { storageIdentifier: %s }", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x266755550](v10, -1, -1);
      MEMORY[0x266755550](v9, -1, -1);
    }

    v12 = *(v0 + 88);
    v11 = *(v0 + 96);
    v22 = *(v0 + 56);
    v13 = *(v3 + 32);
    v14 = *(v3 + 40);
    ObjectType = swift_getObjectType();
    v16 = swift_task_alloc();
    *(v0 + 112) = v16;
    *(v16 + 16) = v3;
    *(v16 + 24) = v22;
    *(v16 + 40) = v12;
    *(v16 + 48) = v11;
    v17 = swift_task_alloc();
    *(v0 + 120) = v17;
    *v17 = v0;
    v17[1] = closure #1 in MLS.EventSender.completeEvent(identifier:storageIdentifier:groupIdentifier:);
    v18 = *(v0 + 72);
    v19 = *(v0 + 80);
    v20 = MEMORY[0x277D84F78] + 8;

    MLS.Persister.atomically<A>(with:do:)(v17, v18, v19, &async function pointer to partial apply for closure #1 in closure #1 in MLS.EventSender.completeEvent(identifier:storageIdentifier:groupIdentifier:), v16, ObjectType, v20, v14);
  }

  else
  {
    **(v0 + 40) = 0;
    v21 = *(v0 + 8);

    v21();
  }
}

uint64_t closure #1 in MLS.EventSender.completeEvent(identifier:storageIdentifier:groupIdentifier:)()
{
  v2 = *(*v1 + 120);
  v3 = *(*v1 + 112);
  v6 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = closure #1 in MLS.EventSender.completeEvent(identifier:storageIdentifier:groupIdentifier:);
  }

  else
  {
    v4 = closure #1 in MLS.EventSender.completeEvent(identifier:storageIdentifier:groupIdentifier:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

{
  v1 = *(v0 + 104);

  **(v0 + 40) = 0;
  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = v0[13];

  v2 = v0[1];
  v3 = v0[16];

  return v2();
}

uint64_t closure #1 in closure #1 in MLS.EventSender.completeEvent(identifier:storageIdentifier:groupIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[148] = a6;
  v6[147] = a5;
  v6[146] = a4;
  v6[145] = a3;
  v6[144] = a2;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v7 = static MLSActor.shared;
  v6[149] = static MLSActor.shared;

  return MEMORY[0x2822009F8](closure #1 in closure #1 in MLS.EventSender.completeEvent(identifier:storageIdentifier:groupIdentifier:), v7, 0);
}

uint64_t closure #1 in closure #1 in MLS.EventSender.completeEvent(identifier:storageIdentifier:groupIdentifier:)()
{
  v1 = v0[146];
  v2 = v0[145];
  v3 = v0[144];
  v5 = *(v3 + 32);
  v4 = *(v3 + 40);
  ObjectType = swift_getObjectType();
  v0[2] = v2;
  v0[3] = v1;
  _s15SecureMessaging3MLSO19OutgoingEventUpdateOWOi0_((v0 + 2));
  memcpy(v0 + 37, v0 + 2, 0x118uLL);
  v7 = *(v3 + direct field offset for MLS.EventSender.clientIdentifier + 8);
  v0[142] = *(v3 + direct field offset for MLS.EventSender.clientIdentifier);
  v0[143] = v7;
  v8 = *(v4 + 112);

  v14 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  v0[150] = v10;
  *v10 = v0;
  v10[1] = closure #1 in closure #1 in MLS.EventSender.completeEvent(identifier:storageIdentifier:groupIdentifier:);
  v11 = v0[148];
  v12 = v0[147];

  return (v14)(v0 + 37, v12, v11, v0 + 142, ObjectType, v4);
}

{
  v2 = *(*v1 + 1200);
  v3 = *v1;
  v3[151] = v0;

  if (v0)
  {
    v4 = v3[149];
    v5 = v3[143];

    memcpy(v3 + 72, v3 + 37, 0x118uLL);
    outlined destroy of MLS.OutgoingEventUpdate((v3 + 72));

    return MEMORY[0x2822009F8](closure #1 in closure #1 in MLS.EventSender.completeEvent(identifier:storageIdentifier:groupIdentifier:), v4, 0);
  }

  else
  {
    v6 = v3[143];

    memcpy(v3 + 107, v3 + 37, 0x118uLL);
    outlined destroy of MLS.OutgoingEventUpdate((v3 + 107));
    v7 = v3[1];

    return v7();
  }
}

{
  v1 = *(v0 + 1208);
  return (*(v0 + 8))();
}

uint64_t MLS.EventSender.performWithRetry<A>(identifier:retryPolicy:work:failureBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 72) = v13;
  *(v9 + 80) = v8;
  *(v9 + 56) = a7;
  *(v9 + 64) = a8;
  *(v9 + 40) = a5;
  *(v9 + 48) = a6;
  *(v9 + 104) = a4;
  *(v9 + 24) = a2;
  *(v9 + 32) = a3;
  *(v9 + 16) = a1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v10 = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.EventSender.performWithRetry<A>(identifier:retryPolicy:work:failureBlock:), v10, 0);
}

uint64_t MLS.EventSender.performWithRetry<A>(identifier:retryPolicy:work:failureBlock:)()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  if (*(v0 + 104))
  {
    v3 = closure #1 in variable initialization expression of MLS.EventSender.deletionRetryPolicy;
  }

  else
  {
    v3 = closure #1 in variable initialization expression of MLS.EventSender.eventRetryPolicy;
  }

  v4 = swift_allocObject();
  *(v0 + 88) = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;

  v5 = swift_task_alloc();
  *(v0 + 96) = v5;
  *v5 = v0;
  v5[1] = MLS.EventSender.performWithRetry<A>(identifier:retryPolicy:work:failureBlock:);
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  v8 = *(v0 + 24);
  v9 = *(v0 + 32);
  v10 = *(v0 + 16);
  v14 = *(v0 + 72);
  v13 = *(v0 + 56);

  return performWithRetry<A>(attempt:identifier:retryPolicy:work:errorBlock:failureBlock:)(v10, 1, v8, v9, v3, 0, v6, v7);
}

{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 88);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t closure #1 in MLS.EventSender.performWithRetry<A>(identifier:retryPolicy:work:failureBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](closure #1 in MLS.EventSender.performWithRetry<A>(identifier:retryPolicy:work:failureBlock:), 0, 0);
}

uint64_t closure #1 in MLS.EventSender.performWithRetry<A>(identifier:retryPolicy:work:failureBlock:)()
{
  v19 = v0;
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[3];

  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v8 = v0[4];
    v7 = v0[5];
    v10 = v0[2];
    v9 = v0[3];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18 = v13;
    *v11 = 136315650;
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v9, &v18);
    *(v11 + 12) = 2048;
    *(v11 + 14) = v8;
    *(v11 + 22) = 2112;
    v14 = v7;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 24) = v15;
    *v12 = v15;
    _os_log_impl(&dword_264F1F000, v5, v6, "EventSender performWithRetry threw error { identifier: %s, attempt: %lu, error: %@ }", v11, 0x20u);
    outlined destroy of NSObject?(v12, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x266755550](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x266755550](v13, -1, -1);
    MEMORY[0x266755550](v11, -1, -1);
  }

  v16 = v0[1];

  return v16();
}

void *MLS.EventSender.deinit()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];
  swift_unknownObjectRelease();
  v3 = v0[6];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v4 = direct field offset for MLS.EventSender.logger;
  v5 = type metadata accessor for Logger();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = *(v0 + direct field offset for MLS.EventSender.eventQueueMap);

  v7 = *(v0 + direct field offset for MLS.EventSender.retryBlock + 8);

  v8 = *(v0 + direct field offset for MLS.EventSender.selfHealBlock + 8);

  v9 = *(v0 + direct field offset for MLS.EventSender.enqueueFTDBlock + 8);

  v10 = *(v0 + direct field offset for MLS.EventSender.clientIdentifier + 8);

  v11 = *(v0 + direct field offset for MLS.EventSender.eventRetryPolicy + 8);

  v12 = *(v0 + direct field offset for MLS.EventSender.deletionRetryPolicy + 8);

  return v0;
}

uint64_t MLS.EventSender.__deallocating_deinit()
{
  MLS.EventSender.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for MLS.EventSenderProtocol.enqueue(groupIdentifier:identifier:isWithinPersisterTransaction:sendBlock:) in conformance MLS.EventSender<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v16 = *(*v7 + 320);
  v20 = (v16 + *v16);
  v17 = v16[1];
  v18 = swift_task_alloc();
  *(v8 + 16) = v18;
  *v18 = v8;
  v18[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v20(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t protocol witness for MLS.EventSenderProtocol.enqueueSelfHeal(groupIdentifier:identifier:ftdInfo:isWithinPersisterTransaction:sendBlock:) in conformance MLS.EventSender<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v18 = *(*v8 + 328);
  v22 = (v18 + *v18);
  v19 = v18[1];
  v20 = swift_task_alloc();
  *(v9 + 16) = v20;
  *v20 = v9;
  v20[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v22(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t protocol witness for MLS.EventSenderProtocol.dequeue(groupVersion:groupIdentifier:identifier:dueToReflection:) in conformance MLS.EventSender<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v7 + 64) = a6;
  *(v7 + 48) = a5;
  *(v7 + 56) = v6;
  *(v7 + 32) = a3;
  *(v7 + 40) = a4;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v8 = static MLSActor.shared;

  return MEMORY[0x2822009F8](protocol witness for MLS.EventSenderProtocol.dequeue(groupVersion:groupIdentifier:identifier:dueToReflection:) in conformance MLS.EventSender<A, B>, v8, 0);
}

uint64_t protocol witness for MLS.EventSenderProtocol.dequeue(groupVersion:groupIdentifier:identifier:dueToReflection:) in conformance MLS.EventSender<A, B>()
{
  (*(**(v0 + 56) + 360))(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 64));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t protocol witness for MLS.EventSenderProtocol.send(outgoingEvent:forGroup:retryBehavior:shouldPersistNewEvent:acknowledgementBlock:) in conformance MLS.EventSender<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *(*v6 + 368);
  v18 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = protocol witness for MLS.Persister.loadClientIdentifiersWithEvents() in conformance MLS.InMemoryPersister;

  return v18(a1, a2, a3, a4, a5, a6);
}

uint64_t protocol witness for MLS.EventSenderProtocol.send(incomingEvent:forGroup:shouldPersistNewEvent:isReflectionEvent:) in conformance MLS.EventSender<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 384);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v14(a1, a2, a3, a4);
}

uint64_t protocol witness for MLS.EventSenderProtocol.fetchGroupRecoveryInfo(group:) in conformance MLS.EventSender<A, B>(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 392);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v10(a1, a2);
}

uint64_t protocol witness for MLS.EventSenderProtocol.fetchMembers(uris:) in conformance MLS.EventSender<A, B>(uint64_t a1)
{
  v4 = *(*v1 + 400);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = specialized KDSRegistration.XPCCoordinator.__allocating_init(clientIdentifier:provider:simUniqueID:simLabelID:supportedState:testPhoneNumberURI:);

  return v8(a1);
}

uint64_t specialized MLS.OutgoingEventType.identifier.getter()
{
  v1 = *(v0 + 144);
  v18[8] = *(v0 + 128);
  v18[9] = v1;
  v18[10] = *(v0 + 160);
  v19 = *(v0 + 176);
  v2 = *(v0 + 80);
  v18[4] = *(v0 + 64);
  v18[5] = v2;
  v3 = *(v0 + 112);
  v18[6] = *(v0 + 96);
  v18[7] = v3;
  v4 = *(v0 + 16);
  v18[0] = *v0;
  v18[1] = v4;
  v5 = *(v0 + 48);
  v18[2] = *(v0 + 32);
  v18[3] = v5;
  _s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGWOg(v18);
  destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType(v18, v6);
  v7 = *(v0 + 144);
  v16[8] = *(v0 + 128);
  v16[9] = v7;
  v16[10] = *(v0 + 160);
  v17 = *(v0 + 176);
  v8 = *(v0 + 80);
  v16[4] = *(v0 + 64);
  v16[5] = v8;
  v9 = *(v0 + 112);
  v16[6] = *(v0 + 96);
  v16[7] = v9;
  v10 = *(v0 + 16);
  v16[0] = *v0;
  v16[1] = v10;
  v11 = *(v0 + 48);
  v16[2] = *(v0 + 32);
  v16[3] = v11;
  v13 = destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType(v16, v12);
  result = *v13;
  v15 = v13[1];
  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.EventSenderError.CodingKeys and conformance MLS.EventSenderError.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.EventSenderError.CodingKeys and conformance MLS.EventSenderError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.EventSenderError.CodingKeys and conformance MLS.EventSenderError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EventSenderError.CodingKeys and conformance MLS.EventSenderError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EventSenderError.CodingKeys and conformance MLS.EventSenderError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.EventSenderError.CodingKeys and conformance MLS.EventSenderError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EventSenderError.CodingKeys and conformance MLS.EventSenderError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EventSenderError.CodingKeys and conformance MLS.EventSenderError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.EventSenderError.CodingKeys and conformance MLS.EventSenderError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EventSenderError.CodingKeys and conformance MLS.EventSenderError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EventSenderError.CodingKeys and conformance MLS.EventSenderError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.EventSenderError.CodingKeys and conformance MLS.EventSenderError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EventSenderError.CodingKeys and conformance MLS.EventSenderError.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.EventSenderError.ErrorType and conformance MLS.EventSenderError.ErrorType()
{
  result = lazy protocol witness table cache variable for type MLS.EventSenderError.ErrorType and conformance MLS.EventSenderError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.EventSenderError.ErrorType and conformance MLS.EventSenderError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EventSenderError.ErrorType and conformance MLS.EventSenderError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EventSenderError.ErrorType and conformance MLS.EventSenderError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.EventSenderError.ErrorType and conformance MLS.EventSenderError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EventSenderError.ErrorType and conformance MLS.EventSenderError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EventSenderError.ErrorType and conformance MLS.EventSenderError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.EventSenderError.ErrorType and conformance MLS.EventSenderError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EventSenderError.ErrorType and conformance MLS.EventSenderError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EventSenderError.ErrorType and conformance MLS.EventSenderError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.EventSenderError.ErrorType and conformance MLS.EventSenderError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EventSenderError.ErrorType and conformance MLS.EventSenderError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EventSenderError.ErrorType and conformance MLS.EventSenderError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.EventSenderError.ErrorType and conformance MLS.EventSenderError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EventSenderError.ErrorType and conformance MLS.EventSenderError.ErrorType);
  }

  return result;
}

uint64_t specialized MLS.EventSenderError.init(from:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO16EventSenderErrorV10CodingKeys33_CD9D9A573DA392194EC02FE56EA74BE1LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO16EventSenderErrorV10CodingKeys33_CD9D9A573DA392194EC02FE56EA74BE1LLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10[-v6];
  v8 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  lazy protocol witness table accessor for type MLS.EventSenderError.CodingKeys and conformance MLS.EventSenderError.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v10[14] = 0;
    lazy protocol witness table accessor for type MLS.EventSenderError.ErrorType and conformance MLS.EventSenderError.ErrorType();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v8 = v10[15];
    v10[13] = 1;
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v8;
}

uint64_t partial apply for closure #1 in MLS.EventSender.enqueue(groupIdentifier:identifier:isWithinPersisterTransaction:sendBlock:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 16);
  v10 = *(v4 + 24);
  v11 = *(v4 + 32);
  v13 = *(v4 + 40);
  v12 = *(v4 + 48);
  v14 = *(v4 + 56);
  v15 = swift_task_alloc();
  *(v5 + 16) = v15;
  *v15 = v5;
  v15[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in MLS.EventSender.enqueue(groupIdentifier:identifier:isWithinPersisterTransaction:sendBlock:)(a1, a2, a3, a4, v9, v10, v11, v13);
}

uint64_t objectdestroyTm_1()
{
  v1 = v0[4];

  v2 = v0[5];

  v3 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t partial apply for closure #1 in MLS.EventSender.enqueueSelfHeal(groupIdentifier:identifier:ftdInfo:isWithinPersisterTransaction:sendBlock:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 16);
  v10 = *(v4 + 24);
  v11 = *(v4 + 32);
  v13 = *(v4 + 40);
  v12 = *(v4 + 48);
  v14 = *(v4 + 56);
  v15 = swift_task_alloc();
  *(v5 + 16) = v15;
  *v15 = v5;
  v15[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in MLS.EventSender.enqueueSelfHeal(groupIdentifier:identifier:ftdInfo:isWithinPersisterTransaction:sendBlock:)(a1, a2, a3, a4, v9, v10, v11, v13);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.OutgoingEventState?, @guaranteed String) -> (@out MLS.EventQueue.Result, @error @owned Error)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v9 = *(v3 + 16);
  v8 = *(v3 + 24);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.OutgoingEventState?, @guaranteed String) -> (@out MLS.EventQueue.Result, @error @owned Error)(a1, a2, a3, v9);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.OutgoingEventState?, @in_guaranteed String) -> (@out MLS.EventQueue.Result, @error @owned Error)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *(v4 + 16);
  v10 = *(v4 + 24);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.OutgoingEventState?, @in_guaranteed String) -> (@out MLS.EventQueue.Result, @error @owned Error)(a1, a2, a3, a4, v11);
}

uint64_t sub_26516EE20()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  outlined consume of MLS.OutgoingEventState.EventSpecificState(*(v0 + 40), *(v0 + 48), *(v0 + 56));
  v3 = *(v0 + 72);

  v4 = *(v0 + 88);
  if (v4 >> 60 != 15)
  {
    outlined consume of Data._Representation(*(v0 + 80), v4);
  }

  v5 = *(v0 + 104);

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t partial apply for closure #1 in MLS.EventSender.enqueuePersisted(eventState:groupIdentifier:sendBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = v4[2];
  v11 = v4[12];
  v12 = v4[13];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in MLS.EventSender.enqueuePersisted(eventState:groupIdentifier:sendBlock:)(a1, a2, a3, a4, v10, (v4 + 3), v11, v12);
}

uint64_t sub_26516EF74()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  outlined consume of MLS.OutgoingEventType<MLS.AllMember, Data>(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176), *(v0 + 184), *(v0 + 192), *(v0 + 200), *(v0 + 208), *(v0 + 216));
  v3 = *(v0 + 232);

  outlined consume of Data._Representation(*(v0 + 264), *(v0 + 272));
  outlined consume of Data._Representation(*(v0 + 280), *(v0 + 288));
  outlined consume of Data._Representation(*(v0 + 296), *(v0 + 304));
  v4 = *(v0 + 320);
  if (v4 >> 60 != 15)
  {
    outlined consume of Data._Representation(*(v0 + 312), v4);
  }

  if (*(v0 + 328))
  {
    v5 = *(v0 + 336);
  }

  outlined consume of MLS.RetryAfterGroupVersionBehavior(*(v0 + 344), *(v0 + 352), *(v0 + 360), *(v0 + 368), *(v0 + 376), *(v0 + 384), *(v0 + 392), *(v0 + 400), *(v0 + 408), *(v0 + 416));

  return MEMORY[0x2821FE8E8](v0, 417, 7);
}

void outlined consume of MLS.RetryAfterGroupVersionBehavior(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, unsigned __int8 a10)
{
  if (a10 <= 1u)
  {

    outlined consume of MLS.OutgoingEventState.EventSpecificState(a3, a4, a5);

    outlined consume of Data?(a8, a9);
  }
}

uint64_t partial apply for closure #1 in MLS.EventSender.send(outgoingEvent:forGroup:retryBehavior:shouldPersistNewEvent:acknowledgementBlock:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[41];
  v8 = v1[42];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in MLS.EventSender.send(outgoingEvent:forGroup:retryBehavior:shouldPersistNewEvent:acknowledgementBlock:)(a1, v4, v5, v6, (v1 + 5), (v1 + 28), v7, v8);
}

uint64_t _s15SecureMessaging3MLSO19OutgoingEventUpdateOWOi_(uint64_t result)
{
  v1 = *(result + 264);
  *(result + 176) &= 0x1FuLL;
  *(result + 264) = v1;
  return result;
}

uint64_t sub_26516F208()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  outlined consume of MLS.IncomingEventType<MLS.AllMember, Data>(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136));
  v3 = *(v0 + 152);

  outlined consume of Data._Representation(*(v0 + 184), *(v0 + 192));
  outlined consume of Data._Representation(*(v0 + 200), *(v0 + 208));
  outlined consume of Data._Representation(*(v0 + 216), *(v0 + 224));
  v4 = *(v0 + 240);
  if (v4 >> 60 != 15)
  {
    outlined consume of Data._Representation(*(v0 + 232), v4);
  }

  return MEMORY[0x2821FE8E8](v0, 249, 7);
}

void outlined consume of MLS.IncomingEventType<MLS.AllMember, Data>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, unsigned __int8 a13)
{
  if (a13 > 4u)
  {
    if (a13 <= 6u)
    {
      if (a13 != 5)
      {
        if (a13 != 6)
        {
          return;
        }

        goto LABEL_16;
      }
    }

    else if (a13 != 7)
    {
      if (a13 != 8)
      {
        if (a13 != 9)
        {
          return;
        }

        goto LABEL_17;
      }

      goto LABEL_16;
    }

LABEL_17:

    outlined consume of MLS.AllMember();

    outlined consume of Data?(a7, a8);
    return;
  }

  if (a13 <= 1u)
  {
    if (!a13)
    {

      outlined consume of MLS.AllMember();
      outlined consume of Data?(a7, a8);
      outlined consume of Data._Representation(a9, a10);
      goto LABEL_21;
    }
  }

  else if (a13 != 2 && a13 != 3)
  {
    if (a13 != 4)
    {
      return;
    }

    goto LABEL_17;
  }

LABEL_16:

  outlined consume of MLS.AllMember();
  outlined consume of Data?(a7, a8);
LABEL_21:
}

uint64_t partial apply for closure #1 in MLS.EventSender.send(incomingEvent:forGroup:shouldPersistNewEvent:isReflectionEvent:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 248);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in MLS.EventSender.send(incomingEvent:forGroup:shouldPersistNewEvent:isReflectionEvent:)(a1, v4, v5, v6, v1 + 40, v1 + 144, v7);
}

uint64_t sub_26516F564()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26516F59C()
{
  v1 = v0[6];

  v2 = v0[8];

  outlined consume of Data._Representation(v0[12], v0[13]);
  outlined consume of Data._Representation(v0[14], v0[15]);
  outlined consume of Data._Representation(v0[16], v0[17]);
  v3 = v0[19];
  if (v3 >> 60 != 15)
  {
    outlined consume of Data._Representation(v0[18], v3);
  }

  v4 = v0[21];

  return MEMORY[0x2821FE8E8](v0, 176, 7);
}

uint64_t partial apply for closure #1 in MLS.EventSender.fetchGroupRecoveryInfo(group:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[20];
  v10 = v1[21];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in MLS.EventSender.fetchGroupRecoveryInfo(group:)(a1, v8, (v1 + 7), v9, v10);
}

uint64_t outlined copy of MLS.GroupRecoveryInfo?(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 >> 60 != 15)
  {
    outlined copy of Data._Representation(result, a2);

    return outlined copy of Data?(a3, a4);
  }

  return result;
}

uint64_t sub_26516F750()
{
  v1 = v0[6];

  v2 = v0[8];

  v3 = v0[10];

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t partial apply for closure #1 in MLS.EventSender.fetchMembers(uris:)(uint64_t a1)
{
  v4 = v1[3];
  v14 = v1[2];
  v6 = v1[4];
  v5 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = v1[9];
  v11 = v1[10];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in MLS.EventSender.fetchMembers(uris:)(a1, v7, v8, v9, v10, v11);
}

unint64_t lazy protocol witness table accessor for type MLS.EventSenderError and conformance MLS.EventSenderError()
{
  result = lazy protocol witness table cache variable for type MLS.EventSenderError and conformance MLS.EventSenderError;
  if (!lazy protocol witness table cache variable for type MLS.EventSenderError and conformance MLS.EventSenderError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EventSenderError and conformance MLS.EventSenderError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EventSenderError and conformance MLS.EventSenderError;
  if (!lazy protocol witness table cache variable for type MLS.EventSenderError and conformance MLS.EventSenderError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EventSenderError and conformance MLS.EventSenderError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EventSenderError and conformance MLS.EventSenderError;
  if (!lazy protocol witness table cache variable for type MLS.EventSenderError and conformance MLS.EventSenderError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EventSenderError and conformance MLS.EventSenderError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EventSenderError and conformance MLS.EventSenderError;
  if (!lazy protocol witness table cache variable for type MLS.EventSenderError and conformance MLS.EventSenderError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EventSenderError and conformance MLS.EventSenderError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EventSenderError and conformance MLS.EventSenderError;
  if (!lazy protocol witness table cache variable for type MLS.EventSenderError and conformance MLS.EventSenderError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EventSenderError and conformance MLS.EventSenderError);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for MLS.EventSenderError(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type MLS.EventSenderError and conformance MLS.EventSenderError();
  a1[2] = lazy protocol witness table accessor for type MLS.EventSenderError and conformance MLS.EventSenderError();
  a1[3] = lazy protocol witness table accessor for type MLS.EventSenderError and conformance MLS.EventSenderError();
  result = lazy protocol witness table accessor for type MLS.EventSenderError and conformance MLS.EventSenderError();
  a1[4] = result;
  return result;
}

uint64_t sub_26516FBD8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 208))();
  *a2 = result;
  return result;
}

uint64_t sub_26516FC24(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 216);

  return v3(v4);
}

__n128 sub_26516FC84(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_26516FC90@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (*(**a1 + 232))();
  v5 = v4;
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = v5;
  *a2 = &thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.OutgoingEventState?, @guaranteed String) -> (@out MLS.EventQueue.Result, @error @owned Error)partial apply;
  a2[1] = result;
  return result;
}

uint64_t sub_26516FD24@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (*(**a1 + 256))();
  v5 = v4;
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = v5;
  *a2 = &async function pointer to partial apply for thunk for @escaping @callee_guaranteed @Sendable @async (@guaranteed String) -> (@error @owned Error);
  a2[1] = result;
  return result;
}