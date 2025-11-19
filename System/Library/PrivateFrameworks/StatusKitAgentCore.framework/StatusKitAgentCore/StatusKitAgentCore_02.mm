const char *closure #8 in SKALocalStatusServer.init(idsDeviceProvider:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v28 - v8;
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = (&v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(a2 + 144);
  *v14 = v15;
  (*(v11 + 104))(v14, *MEMORY[0x277D85200], v10);
  v16 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v14, v10);
  if ((v15 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_4;
  }

  result = xpc_dictionary_get_string(a1, *MEMORY[0x277D86430]);
  if (!result)
  {
    return result;
  }

  if (one-time initialization token for log != -1)
  {
    goto LABEL_9;
  }

LABEL_4:
  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, log);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v29 = v22;
    *v21 = 136315138;
    v23 = String.init(cString:)();
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v29);

    *(v21 + 4) = v25;
    _os_log_impl(&dword_220099000, v19, v20, "Received Rapport wake event for: %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x223D77FF0](v22, -1, -1);
    MEMORY[0x223D77FF0](v21, -1, -1);
  }

  v26 = type metadata accessor for TaskPriority();
  (*(*(v26 - 8) + 56))(v9, 1, 1, v26);
  v27 = swift_allocObject();
  v27[2] = 0;
  v27[3] = 0;
  v27[4] = a2;
  v27[5] = a1;
  v27[6] = a3;

  swift_unknownObjectRetain();
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v9, &async function pointer to partial apply for closure #1 in closure #8 in SKALocalStatusServer.init(idsDeviceProvider:), v27);
}

uint64_t closure #1 in closure #8 in SKALocalStatusServer.init(idsDeviceProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](closure #1 in closure #8 in SKALocalStatusServer.init(idsDeviceProvider:), a4, 0);
}

uint64_t closure #1 in closure #8 in SKALocalStatusServer.init(idsDeviceProvider:)()
{
  v1 = *(v0 + 16);
  SKALocalStatusServer.takeTransactionForLaunchOnDemand()();

  return MEMORY[0x2822009F8](closure #1 in closure #8 in SKALocalStatusServer.init(idsDeviceProvider:), 0, 0);
}

{
  specialized static SKALocalStatusServer.replyToWakeEvent(event:)(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t SKALocalStatusServer.takeTransactionForLaunchOnDemand()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v3 = *(*(v2 - 8) + 64);
  result = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v17 - v5;
  v7 = OBJC_IVAR___SKALocalStatusServer_launchOnDemandTransaction;
  if (!*(v0 + OBJC_IVAR___SKALocalStatusServer_launchOnDemandTransaction))
  {
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, log);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_220099000, v9, v10, "Taking transaction out for 30 seconds due to launch on demand", v11, 2u);
      MEMORY[0x223D77FF0](v11, -1, -1);
    }

    v12 = os_transaction_create();
    v13 = *(v1 + v7);
    *(v1 + v7) = v12;
    swift_unknownObjectRelease();
    v14 = type metadata accessor for TaskPriority();
    (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
    v15 = lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type SKALocalStatusServer and conformance SKALocalStatusServer, type metadata accessor for SKALocalStatusServer);
    v16 = swift_allocObject();
    v16[2] = v1;
    v16[3] = v15;
    v16[4] = v1;
    swift_retain_n();
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v6, &async function pointer to partial apply for closure #1 in SKALocalStatusServer.takeTransactionForLaunchOnDemand(), v16);
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@guaranteed OS_xpc_object) -> ()(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t SKALocalStatusServer.publish(_:for:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[16] = a6;
  v7[17] = v6;
  v7[14] = a4;
  v7[15] = a5;
  v7[12] = a2;
  v7[13] = a3;
  v7[11] = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA19CurrentValueSubjectCy14LocalStatusKit012LSKPublishedH0Vy10Foundation4DataVGs5NeverOGGMd, &_s7Combine14AsyncPublisherVyAA19CurrentValueSubjectCy14LocalStatusKit012LSKPublishedH0Vy10Foundation4DataVGs5NeverOGGMR);
  v7[18] = v8;
  v9 = *(v8 - 8);
  v7[19] = v9;
  v10 = *(v9 + 64) + 15;
  v7[20] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGSgMd, &_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGSgMR) - 8) + 64) + 15;
  v7[21] = swift_task_alloc();
  v7[22] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit012LSKPublishedB0Vy10Foundation4DataVGMd, &_s14LocalStatusKit012LSKPublishedB0Vy10Foundation4DataVGMR);
  v7[23] = v12;
  v13 = *(v12 - 8);
  v7[24] = v13;
  v14 = *(v13 + 64) + 15;
  v7[25] = swift_task_alloc();
  v7[26] = swift_task_alloc();
  v7[27] = swift_task_alloc();
  v15 = type metadata accessor for LSKTargetDeviceFlags();
  v7[28] = v15;
  v16 = *(v15 - 8);
  v7[29] = v16;
  v17 = *(v16 + 64) + 15;
  v7[30] = swift_task_alloc();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMR);
  v7[31] = v18;
  v19 = *(v18 - 8);
  v7[32] = v19;
  v20 = *(v19 + 64) + 15;
  v7[33] = swift_task_alloc();
  v7[34] = swift_task_alloc();
  v7[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](SKALocalStatusServer.publish(_:for:options:), v6, 0);
}

uint64_t SKALocalStatusServer.publish(_:for:options:)()
{
  v171 = v0;
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 280);
  v3 = *(v0 + 248);
  v2 = *(v0 + 256);
  v4 = *(v0 + 120);
  v5 = type metadata accessor for Logger();
  *(v0 + 288) = __swift_project_value_buffer(v5, log);
  v6 = *(v2 + 16);
  *(v0 + 296) = v6;
  *(v0 + 304) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v162 = v6;
  v6(v1, v4, v3);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 280);
  v12 = *(v0 + 248);
  v11 = *(v0 + 256);
  if (v9)
  {
    v13 = swift_slowAlloc();
    v165 = swift_slowAlloc();
    v169 = v165;
    *v13 = 136315138;
    lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type LSKKey<Data> and conformance LSKKey<A>, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMR);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v17 = *(v11 + 8);
    v17(v10, v12);
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v169);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_220099000, v7, v8, "Publish START {key: %s}", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v165);
    MEMORY[0x223D77FF0](v165, -1, -1);
    MEMORY[0x223D77FF0](v13, -1, -1);
  }

  else
  {

    v17 = *(v11 + 8);
    v17(v10, v12);
  }

  *(v0 + 312) = v17;
  v19 = *(v0 + 240);
  v20 = *(v0 + 128);
  v22 = *(v0 + 112);
  v21 = *(v0 + 120);
  v23 = *(v0 + 104);
  v24 = [*(*(v0 + 136) + 168) newBackgroundContext];
  *(v0 + 320) = v24;
  LSKStatusOptions.targetDeviceFlags.getter(v19);
  v25 = SKALocalStatusServer.add(_:for:to:targeting:)(v23, v22, v21, v24, v19);
  if ((v25 & 1) == 0)
  {
    v46 = *(v0 + 136);
    v47 = OBJC_IVAR___SKALocalStatusServer_deliverySubjects;
    swift_beginAccess();
    v48 = *(v46 + v47);
    if (!*(v48 + 16) || (v49 = specialized __RawDictionaryStorage.find<A>(_:)(*(v0 + 120)), (v50 & 1) == 0))
    {
      v65 = *(v0 + 200);
      v66 = *(v0 + 136);
      v67 = *(v0 + 120);
      swift_endAccess();
      SKALocalStatusServer.currentStatus(for:in:)(v67, v24, v65);
      v68 = *(v0 + 96);
      (*(*(v0 + 192) + 32))(*(v0 + 216), *(v0 + 200), *(v0 + 184));
      v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGMd, &_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGMR);
      (*(*(v69 - 8) + 56))(v68, 1, 1, v69);
LABEL_24:
      v79 = *(v0 + 304);
      v80 = *(v0 + 288);
      (*(v0 + 296))(*(v0 + 264), *(v0 + 120), *(v0 + 248));
      v81 = Logger.logObject.getter();
      v82 = static os_log_type_t.default.getter();
      v83 = os_log_type_enabled(v81, v82);
      v84 = *(v0 + 312);
      v86 = *(v0 + 256);
      v85 = *(v0 + 264);
      v87 = *(v0 + 240);
      v88 = *(v0 + 248);
      v90 = *(v0 + 224);
      v89 = *(v0 + 232);
      if (v83)
      {
        v163 = *(v0 + 320);
        v166 = *(v0 + 224);
        v91 = swift_slowAlloc();
        v159 = v82;
        v92 = swift_slowAlloc();
        v169 = v92;
        *v91 = 136315138;
        lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type LSKKey<Data> and conformance LSKKey<A>, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMR);
        v93 = dispatch thunk of CustomStringConvertible.description.getter();
        v94 = v84;
        v95 = v93;
        v160 = v87;
        v97 = v96;
        v94(v85, v88);
        v98 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v95, v97, &v169);

        *(v91 + 4) = v98;
        _os_log_impl(&dword_220099000, v81, v159, "Publish END {key: %s}", v91, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v92);
        MEMORY[0x223D77FF0](v92, -1, -1);
        MEMORY[0x223D77FF0](v91, -1, -1);

        (*(v89 + 8))(v160, v166);
      }

      else
      {

        v84(v85, v88);
        (*(v89 + 8))(v87, v90);
      }

      v99 = *(v0 + 272);
      v100 = *(v0 + 280);
      v101 = *(v0 + 264);
      v102 = *(v0 + 240);
      v103 = *(v0 + 208);
      v104 = *(v0 + 200);
      v105 = *(v0 + 176);
      v106 = *(v0 + 168);
      v167 = *(v0 + 160);
      (*(*(v0 + 192) + 32))(*(v0 + 88), *(v0 + 216), *(v0 + 184));

      v107 = *(v0 + 8);
      goto LABEL_7;
    }

    v52 = *(v0 + 208);
    v51 = *(v0 + 216);
    v53 = *(v0 + 184);
    v54 = *(v0 + 192);
    v55 = *(*(v48 + 56) + 8 * v49);
    swift_endAccess();

    CurrentValueSubject.value.getter();
    CurrentValueSubject.value.getter();
    v56 = LSKPublishedStatus.devices.getter();
    (*(v54 + 8))(v52, v53);
    v57 = *(v56 + 16);

    v58 = *(v0 + 168);
    if (v57)
    {
      v60 = *(v0 + 152);
      v59 = *(v0 + 160);
      v61 = *(v0 + 144);
      *(v0 + 64) = v55;
      v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy14LocalStatusKit012LSKPublishedF0Vy10Foundation4DataVGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy14LocalStatusKit012LSKPublishedF0Vy10Foundation4DataVGs5NeverOGMR);
      v63 = lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type CurrentValueSubject<LSKPublishedStatus<Data>, Never> and conformance CurrentValueSubject<A, B>, &_s7Combine19CurrentValueSubjectCy14LocalStatusKit012LSKPublishedF0Vy10Foundation4DataVGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy14LocalStatusKit012LSKPublishedF0Vy10Foundation4DataVGs5NeverOGMR);
      MEMORY[0x223D769B0](v62, v63);
      lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type AsyncPublisher<CurrentValueSubject<LSKPublishedStatus<Data>, Never>> and conformance AsyncPublisher<A>, &_s7Combine14AsyncPublisherVyAA19CurrentValueSubjectCy14LocalStatusKit012LSKPublishedH0Vy10Foundation4DataVGs5NeverOGGMd, &_s7Combine14AsyncPublisherVyAA19CurrentValueSubjectCy14LocalStatusKit012LSKPublishedH0Vy10Foundation4DataVGs5NeverOGGMR);
      lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type LSKPublishedStatus<Data> and conformance LSKPublishedStatus<A>, &_s14LocalStatusKit012LSKPublishedB0Vy10Foundation4DataVGMd, &_s14LocalStatusKit012LSKPublishedB0Vy10Foundation4DataVGMR);
      lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type LSKPublishedStatus<Data> and conformance LSKPublishedStatus<A>, &_s14LocalStatusKit012LSKPublishedB0Vy10Foundation4DataVGMd, &_s14LocalStatusKit012LSKPublishedB0Vy10Foundation4DataVGMR);
      AsyncSequence<>.xpc.getter();

      (*(v60 + 8))(v59, v61);
      v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGMd, &_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGMR);
      (*(*(v64 - 8) + 56))(v58, 0, 1, v64);
    }

    else
    {

      v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGMd, &_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGMR);
      (*(*(v77 - 8) + 56))(v58, 1, 1, v77);
    }

    v78 = *(v0 + 168);
LABEL_23:
    outlined init with take of SFXPCAsyncSequence<LSKPublishedStatus<Data>>?(v78, *(v0 + 96), &_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGSgMd, &_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGSgMR);
    goto LABEL_24;
  }

  v158 = v17;
  v38 = *(v0 + 248);
  v37 = *(v0 + 256);
  v39 = *(v0 + 136);
  v40 = *(v0 + 120);
  SKALocalStatusServer.resetDeliverySubject(for:)(v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14LocalStatusKit6LSKKeyVy10Foundation4DataVGGMd, &_ss23_ContiguousArrayStorageCy14LocalStatusKit6LSKKeyVy10Foundation4DataVGGMR);
  v41 = *(v37 + 72);
  v42 = (*(v37 + 80) + 32) & ~*(v37 + 80);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_2201A7280;
  v162(v43 + v42, v40, v38);
  SKALocalStatusServer.reconcilePendingStatusesOnDevices(resetting:in:resetDiscoverySource:)(v43, v24, 0);
  v44 = *(v0 + 248);
  v45 = *(v0 + 256);
  v70 = *(v0 + 136);
  v71 = *(v0 + 120);
  swift_setDeallocating();
  v158(v43 + v42, v44);
  swift_deallocClassInstance();
  SKALocalStatusServer.stopBrowserTask()();
  v169 = 0x5B6873696C627550;
  v170 = 0xE800000000000000;
  *(v0 + 328) = lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type LSKKey<Data> and conformance LSKKey<A>, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMR);
  v72 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x223D76B90](v72);

  MEMORY[0x223D76B90](93, 0xE100000000000000);
  SKALocalStatusServer.deliverAllPendingStatuses(in:reason:)(v24, v169, v170);
  *(v0 + 336) = v73;
  v74 = v73;

  if (v74)
  {
    v75 = *(MEMORY[0x277D857E0] + 4);
    v76 = swift_task_alloc();
    *(v0 + 344) = v76;
    *v76 = v0;
    v76[1] = SKALocalStatusServer.publish(_:for:options:);

    return MEMORY[0x282200460]();
  }

  v108 = *(v0 + 136);
  v109 = SKALocalStatusServer.getFilteredRecipientIDSDevices(from:)(0xD000000000000017, 0x80000002201AC600);
  if (v109 >> 62)
  {
    v110 = __CocoaSet.count.getter();
  }

  else
  {
    v110 = *((v109 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v111 = *(v0 + 272);
  v112 = *(v0 + 248);
  v113 = *(v0 + 120);

  v162(v111, v113, v112);
  v114 = Logger.logObject.getter();
  v115 = static os_log_type_t.default.getter();
  v116 = os_log_type_enabled(v114, v115);
  v117 = *(v0 + 272);
  v118 = *(v0 + 248);
  if (v116)
  {
    v119 = swift_slowAlloc();
    v168 = v110;
    v169 = swift_slowAlloc();
    v120 = v169;
    *v119 = 136315394;
    v121 = dispatch thunk of CustomStringConvertible.description.getter();
    v123 = v122;
    v158(v117, v118);
    v124 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v121, v123, &v169);

    *(v119 + 4) = v124;
    *(v119 + 12) = 2080;
    *(v0 + 80) = v168;
    v125 = dispatch thunk of CustomStringConvertible.description.getter();
    v127 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v125, v126, &v169);

    *(v119 + 14) = v127;
    _os_log_impl(&dword_220099000, v114, v115, "No delivery task for publish. No IDS devices? {key: %s, idsDevices.count: %s}", v119, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D77FF0](v120, -1, -1);
    MEMORY[0x223D77FF0](v119, -1, -1);
  }

  else
  {

    v158(v117, v118);
  }

  v128 = *(v0 + 136);
  v129 = OBJC_IVAR___SKALocalStatusServer_deliverySubjects;
  swift_beginAccess();
  v130 = *(v128 + v129);
  if (*(v130 + 16))
  {
    v131 = specialized __RawDictionaryStorage.find<A>(_:)(*(v0 + 120));
    if (v132)
    {
      v134 = *(v0 + 208);
      v133 = *(v0 + 216);
      v135 = *(v0 + 184);
      v136 = *(v0 + 192);
      v137 = *(*(v130 + 56) + 8 * v131);
      swift_endAccess();

      CurrentValueSubject.value.getter();
      CurrentValueSubject.value.getter();
      v138 = LSKPublishedStatus.devices.getter();
      (*(v136 + 8))(v134, v135);
      v139 = *(v138 + 16);

      v140 = *(v0 + 176);
      if (v139)
      {
        v142 = *(v0 + 152);
        v141 = *(v0 + 160);
        v143 = *(v0 + 144);
        *(v0 + 72) = v137;
        v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy14LocalStatusKit012LSKPublishedF0Vy10Foundation4DataVGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy14LocalStatusKit012LSKPublishedF0Vy10Foundation4DataVGs5NeverOGMR);
        v145 = lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type CurrentValueSubject<LSKPublishedStatus<Data>, Never> and conformance CurrentValueSubject<A, B>, &_s7Combine19CurrentValueSubjectCy14LocalStatusKit012LSKPublishedF0Vy10Foundation4DataVGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy14LocalStatusKit012LSKPublishedF0Vy10Foundation4DataVGs5NeverOGMR);
        MEMORY[0x223D769B0](v144, v145);
        lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type AsyncPublisher<CurrentValueSubject<LSKPublishedStatus<Data>, Never>> and conformance AsyncPublisher<A>, &_s7Combine14AsyncPublisherVyAA19CurrentValueSubjectCy14LocalStatusKit012LSKPublishedH0Vy10Foundation4DataVGs5NeverOGGMd, &_s7Combine14AsyncPublisherVyAA19CurrentValueSubjectCy14LocalStatusKit012LSKPublishedH0Vy10Foundation4DataVGs5NeverOGGMR);
        lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type LSKPublishedStatus<Data> and conformance LSKPublishedStatus<A>, &_s14LocalStatusKit012LSKPublishedB0Vy10Foundation4DataVGMd, &_s14LocalStatusKit012LSKPublishedB0Vy10Foundation4DataVGMR);
        lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type LSKPublishedStatus<Data> and conformance LSKPublishedStatus<A>, &_s14LocalStatusKit012LSKPublishedB0Vy10Foundation4DataVGMd, &_s14LocalStatusKit012LSKPublishedB0Vy10Foundation4DataVGMR);
        AsyncSequence<>.xpc.getter();

        (*(v142 + 8))(v141, v143);
        v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGMd, &_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGMR);
        (*(*(v146 - 8) + 56))(v140, 0, 1, v146);
      }

      else
      {

        v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGMd, &_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGMR);
        (*(*(v157 - 8) + 56))(v140, 1, 1, v157);
      }

      v78 = *(v0 + 176);
      goto LABEL_23;
    }
  }

  v147 = *(v0 + 320);
  v148 = *(v0 + 328);
  v149 = *(v0 + 248);
  v150 = *(v0 + 232);
  v161 = *(v0 + 224);
  v164 = *(v0 + 240);
  v151 = *(v0 + 120);
  swift_endAccess();
  v152 = type metadata accessor for LSKError();
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type LSKError and conformance LSKError, MEMORY[0x277D24388]);
  swift_allocError();
  v169 = 0;
  v154 = v153;
  v170 = 0xE000000000000000;
  _StringGuts.grow(_:)(22);

  v169 = 0xD000000000000014;
  v170 = 0x80000002201AC620;
  v155 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x223D76B90](v155);

  v156 = v170;
  *v154 = v169;
  v154[1] = v156;
  (*(*(v152 - 8) + 104))(v154, *MEMORY[0x277D24378], v152);
  swift_willThrow();

  (*(v150 + 8))(v164, v161);
  v27 = *(v0 + 272);
  v26 = *(v0 + 280);
  v28 = *(v0 + 264);
  v29 = *(v0 + 240);
  v31 = *(v0 + 208);
  v30 = *(v0 + 216);
  v32 = *(v0 + 200);
  v34 = *(v0 + 168);
  v33 = *(v0 + 176);
  v35 = *(v0 + 160);

  v107 = *(v0 + 8);
LABEL_7:

  return v107();
}

{
  v1 = *(*v0 + 344);
  v2 = *(*v0 + 136);
  v4 = *v0;

  return MEMORY[0x2822009F8](SKALocalStatusServer.publish(_:for:options:), v2, 0);
}

{
  v79 = v0;
  v1 = *(v0 + 336);

  v2 = *(v0 + 136);
  v3 = OBJC_IVAR___SKALocalStatusServer_deliverySubjects;
  swift_beginAccess();
  v4 = *(v2 + v3);
  if (*(v4 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(*(v0 + 120)), (v6 & 1) != 0))
  {
    v8 = *(v0 + 208);
    v7 = *(v0 + 216);
    v9 = *(v0 + 184);
    v10 = *(v0 + 192);
    v11 = *(*(v4 + 56) + 8 * v5);
    swift_endAccess();

    CurrentValueSubject.value.getter();
    CurrentValueSubject.value.getter();
    v12 = LSKPublishedStatus.devices.getter();
    (*(v10 + 8))(v8, v9);
    v13 = *(v12 + 16);

    v14 = *(v0 + 176);
    if (v13)
    {
      v16 = *(v0 + 152);
      v15 = *(v0 + 160);
      v17 = *(v0 + 144);
      *(v0 + 72) = v11;
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy14LocalStatusKit012LSKPublishedF0Vy10Foundation4DataVGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy14LocalStatusKit012LSKPublishedF0Vy10Foundation4DataVGs5NeverOGMR);
      v19 = lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type CurrentValueSubject<LSKPublishedStatus<Data>, Never> and conformance CurrentValueSubject<A, B>, &_s7Combine19CurrentValueSubjectCy14LocalStatusKit012LSKPublishedF0Vy10Foundation4DataVGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy14LocalStatusKit012LSKPublishedF0Vy10Foundation4DataVGs5NeverOGMR);
      MEMORY[0x223D769B0](v18, v19);
      lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type AsyncPublisher<CurrentValueSubject<LSKPublishedStatus<Data>, Never>> and conformance AsyncPublisher<A>, &_s7Combine14AsyncPublisherVyAA19CurrentValueSubjectCy14LocalStatusKit012LSKPublishedH0Vy10Foundation4DataVGs5NeverOGGMd, &_s7Combine14AsyncPublisherVyAA19CurrentValueSubjectCy14LocalStatusKit012LSKPublishedH0Vy10Foundation4DataVGs5NeverOGGMR);
      lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type LSKPublishedStatus<Data> and conformance LSKPublishedStatus<A>, &_s14LocalStatusKit012LSKPublishedB0Vy10Foundation4DataVGMd, &_s14LocalStatusKit012LSKPublishedB0Vy10Foundation4DataVGMR);
      lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type LSKPublishedStatus<Data> and conformance LSKPublishedStatus<A>, &_s14LocalStatusKit012LSKPublishedB0Vy10Foundation4DataVGMd, &_s14LocalStatusKit012LSKPublishedB0Vy10Foundation4DataVGMR);
      AsyncSequence<>.xpc.getter();

      (*(v16 + 8))(v15, v17);
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGMd, &_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGMR);
      (*(*(v20 - 8) + 56))(v14, 0, 1, v20);
    }

    else
    {

      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGMd, &_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGMR);
      (*(*(v41 - 8) + 56))(v14, 1, 1, v41);
    }

    outlined init with take of SFXPCAsyncSequence<LSKPublishedStatus<Data>>?(*(v0 + 176), *(v0 + 96), &_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGSgMd, &_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGSgMR);
    v42 = *(v0 + 304);
    v43 = *(v0 + 288);
    (*(v0 + 296))(*(v0 + 264), *(v0 + 120), *(v0 + 248));
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.default.getter();
    v46 = os_log_type_enabled(v44, v45);
    v47 = *(v0 + 312);
    v49 = *(v0 + 256);
    v48 = *(v0 + 264);
    v50 = *(v0 + 240);
    v51 = *(v0 + 248);
    v53 = *(v0 + 224);
    v52 = *(v0 + 232);
    if (v46)
    {
      v74 = *(v0 + 320);
      v76 = *(v0 + 224);
      v54 = swift_slowAlloc();
      v71 = v45;
      v55 = swift_slowAlloc();
      v78[0] = v55;
      *v54 = 136315138;
      lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type LSKKey<Data> and conformance LSKKey<A>, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMR);
      v56 = dispatch thunk of CustomStringConvertible.description.getter();
      v57 = v47;
      v58 = v56;
      v72 = v50;
      v60 = v59;
      v57(v48, v51);
      v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v60, v78);

      *(v54 + 4) = v61;
      _os_log_impl(&dword_220099000, v44, v71, "Publish END {key: %s}", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v55);
      MEMORY[0x223D77FF0](v55, -1, -1);
      MEMORY[0x223D77FF0](v54, -1, -1);

      (*(v52 + 8))(v72, v76);
    }

    else
    {

      v47(v48, v51);
      (*(v52 + 8))(v50, v53);
    }

    v62 = *(v0 + 272);
    v63 = *(v0 + 280);
    v64 = *(v0 + 264);
    v65 = *(v0 + 240);
    v66 = *(v0 + 208);
    v67 = *(v0 + 200);
    v68 = *(v0 + 176);
    v69 = *(v0 + 168);
    v77 = *(v0 + 160);
    (*(*(v0 + 192) + 32))(*(v0 + 88), *(v0 + 216), *(v0 + 184));

    v40 = *(v0 + 8);
  }

  else
  {
    v21 = *(v0 + 320);
    v22 = *(v0 + 328);
    v23 = *(v0 + 248);
    v24 = *(v0 + 232);
    v73 = *(v0 + 224);
    v75 = *(v0 + 240);
    v25 = *(v0 + 120);
    swift_endAccess();
    v26 = type metadata accessor for LSKError();
    lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type LSKError and conformance LSKError, MEMORY[0x277D24388]);
    swift_allocError();
    v28 = v27;
    _StringGuts.grow(_:)(22);

    v78[0] = 0xD000000000000014;
    v78[1] = 0x80000002201AC620;
    v29 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x223D76B90](v29);

    *v28 = 0xD000000000000014;
    v28[1] = 0x80000002201AC620;
    (*(*(v26 - 8) + 104))(v28, *MEMORY[0x277D24378], v26);
    swift_willThrow();

    (*(v24 + 8))(v75, v73);
    v31 = *(v0 + 272);
    v30 = *(v0 + 280);
    v32 = *(v0 + 264);
    v33 = *(v0 + 240);
    v35 = *(v0 + 208);
    v34 = *(v0 + 216);
    v36 = *(v0 + 200);
    v38 = *(v0 + 168);
    v37 = *(v0 + 176);
    v39 = *(v0 + 160);

    v40 = *(v0 + 8);
  }

  return v40();
}

uint64_t LSKStatusOptions.targetDeviceFlags.getter@<X0>(uint64_t a1@<X8>)
{
  v136 = a1;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSb8inserted_14LocalStatusKit20LSKTargetDeviceFlagsV17memberAfterInserttMd, &_sSb8inserted_14LocalStatusKit20LSKTargetDeviceFlagsV17memberAfterInserttMR);
  v1 = *(*(v137 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v137);
  v109 = v105 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v105 - v5;
  v7 = MEMORY[0x28223BE20](v4);
  v112 = v105 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v127 = v105 - v10;
  MEMORY[0x28223BE20](v9);
  v117 = v105 - v11;
  v12 = type metadata accessor for LSKTargetDeviceFlags();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = v105 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v129 = v105 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v119 = v105 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v128 = v105 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v26 = v105 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v111 = v105 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v126 = v105 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v116 = v105 - v32;
  MEMORY[0x28223BE20](v31);
  v115 = v105 - v33;
  v132 = type metadata accessor for LSKStatusOptions.DeviceType();
  v34 = *(v132 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v132);
  v131 = v105 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14LocalStatusKit20LSKTargetDeviceFlagsVGMd, &_ss23_ContiguousArrayStorageCy14LocalStatusKit20LSKTargetDeviceFlagsVGMR);
  v37 = *(v13 + 72);
  v38 = v13;
  v39 = (*(v38 + 80) + 32) & ~*(v38 + 80);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_2201A7280;
  static LSKTargetDeviceFlags.none.getter();
  v138 = v40;
  v41 = lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type LSKTargetDeviceFlags and conformance LSKTargetDeviceFlags, MEMORY[0x277D24340]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay14LocalStatusKit20LSKTargetDeviceFlagsVGMd, &_sSay14LocalStatusKit20LSKTargetDeviceFlagsVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [LSKTargetDeviceFlags] and conformance [A], &_sSay14LocalStatusKit20LSKTargetDeviceFlagsVGMd, &_sSay14LocalStatusKit20LSKTargetDeviceFlagsVGMR);
  v42 = v12;
  v135 = v41;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v43 = LSKStatusOptions.publishToDeviceTypes.getter();
  v44 = *(v43 + 16);
  if (v44)
  {
    v108 = v6;
    v46 = *(v34 + 16);
    v45 = v34 + 16;
    v124 = v46;
    v47 = (*(v45 + 64) + 32) & ~*(v45 + 64);
    v105[1] = v43;
    v48 = (v43 + v47);
    v49 = *(v45 + 56);
    v122 = (v45 + 72);
    v123 = v49;
    v121 = *MEMORY[0x277D242F8];
    v114 = *MEMORY[0x277D242F0];
    v130 = (v38 + 16);
    v120 = (v38 + 8);
    v113 = (v38 + 32);
    v110 = *MEMORY[0x277D242E8];
    v106 = (v45 - 8);
    v50 = v117;
    v107 = v17;
    v52 = v128;
    v51 = v129;
    v53 = v26;
    v118 = v26;
    v54 = v119;
    v125 = v45;
    do
    {
      v57 = v131;
      v56 = v132;
      v124(v131, v48, v132);
      v58 = (*v122)(v57, v56);
      if (v58 == v121)
      {
        v133 = v48;
        v134 = v44;
        v59 = v115;
        static LSKTargetDeviceFlags.visionDevice.getter();
        v60 = v42;
        v61 = *v130;
        v62 = v126;
        (*v130)(v126, v136, v60);
        v63 = v116;
        v64 = v50;
        dispatch thunk of SetAlgebra.intersection(_:)();
        lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type LSKTargetDeviceFlags and conformance LSKTargetDeviceFlags, MEMORY[0x277D24340]);
        v65 = dispatch thunk of static Equatable.== infix(_:_:)();
        v66 = *(v137 + 48);
        *v64 = (v65 & 1) == 0;
        v67 = *v120;
        if (v65)
        {
          (v67)(v59, v60);
          (*v113)(&v64[v66], v63, v60);
        }

        else
        {
          (v67)(v63, v60);
          v61(&v64[v66], v59, v60);
          v61(v62, v59, v60);
          dispatch thunk of SetAlgebra.formUnion(_:)();
          (v67)(v59, v60);
        }

        v50 = v64;
        v44 = v134;
        v55 = v127;
        outlined init with take of SFXPCAsyncSequence<LSKPublishedStatus<Data>>?(v64, v127, &_sSb8inserted_14LocalStatusKit20LSKTargetDeviceFlagsV17memberAfterInserttMd, &_sSb8inserted_14LocalStatusKit20LSKTargetDeviceFlagsV17memberAfterInserttMR);
        v42 = v60;
        (v67)(v55 + *(v137 + 48), v60);
        v53 = v118;
        v54 = v119;
        v52 = v128;
        v48 = v133;
      }

      else
      {
        v68 = v42;
        if (v58 == v114)
        {
          v133 = v48;
          v134 = v44;
          v69 = v111;
          static LSKTargetDeviceFlags.mac.getter();
          v70 = v112;
          v71 = v53;
          v72 = v126;
          v73 = *v130;
          v74 = v68;
          (*v130)(v126, v136, v68);
          dispatch thunk of SetAlgebra.intersection(_:)();
          lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type LSKTargetDeviceFlags and conformance LSKTargetDeviceFlags, MEMORY[0x277D24340]);
          v75 = dispatch thunk of static Equatable.== infix(_:_:)();
          v76 = *(v137 + 48);
          *v70 = (v75 & 1) == 0;
          v77 = *v120;
          if (v75)
          {
            (v77)(v69, v74);
            (*v113)(&v70[v76], v71, v74);
          }

          else
          {
            (v77)(v71, v74);
            v73(&v70[v76], v69, v74);
            v73(v72, v69, v74);
            dispatch thunk of SetAlgebra.formUnion(_:)();
            (v77)(v69, v74);
          }

          v48 = v133;
          v44 = v134;
          v88 = v74;
          v53 = v71;
          v89 = v127;
          outlined init with take of SFXPCAsyncSequence<LSKPublishedStatus<Data>>?(v70, v127, &_sSb8inserted_14LocalStatusKit20LSKTargetDeviceFlagsV17memberAfterInserttMd, &_sSb8inserted_14LocalStatusKit20LSKTargetDeviceFlagsV17memberAfterInserttMR);
          v42 = v88;
          (v77)(v89 + *(v137 + 48), v88);
          v50 = v117;
          v54 = v119;
          v52 = v128;
        }

        else
        {
          v78 = v130;
          v79 = v126;
          if (v58 == v110)
          {
            static LSKTargetDeviceFlags.tv.getter();
            v80 = v42;
            v134 = *v78;
            (v134)(v79, v136, v42);
            dispatch thunk of SetAlgebra.intersection(_:)();
            lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type LSKTargetDeviceFlags and conformance LSKTargetDeviceFlags, MEMORY[0x277D24340]);
            v81 = dispatch thunk of static Equatable.== infix(_:_:)();
            v82 = *(v137 + 48);
            v83 = v79;
            v84 = v52;
            v85 = v108;
            *v108 = (v81 & 1) == 0;
            v86 = *v120;
            if (v81)
            {
              v87 = *v120;
              (v86)(v84, v42);
              (*v113)((v85 + v82), v54, v42);
            }

            else
            {
              v133 = *v120;
              (v86)(v54, v42);
              v98 = v134;
              (v134)(v85 + v82, v84, v80);
              (v98)(v83, v84, v80);
              dispatch thunk of SetAlgebra.formUnion(_:)();
              v87 = v133;
              (v133)(v84, v80);
            }

            v99 = v127;
            outlined init with take of SFXPCAsyncSequence<LSKPublishedStatus<Data>>?(v85, v127, &_sSb8inserted_14LocalStatusKit20LSKTargetDeviceFlagsV17memberAfterInserttMd, &_sSb8inserted_14LocalStatusKit20LSKTargetDeviceFlagsV17memberAfterInserttMR);
            v42 = v80;
            (v87)(v99 + *(v137 + 48), v80);
            v50 = v117;
          }

          else
          {
            static LSKTargetDeviceFlags.none.getter();
            v90 = v42;
            v134 = *v78;
            (v134)(v79, v136, v42);
            v91 = v107;
            dispatch thunk of SetAlgebra.intersection(_:)();
            lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type LSKTargetDeviceFlags and conformance LSKTargetDeviceFlags, MEMORY[0x277D24340]);
            v92 = dispatch thunk of static Equatable.== infix(_:_:)();
            v93 = *(v137 + 48);
            v94 = v109;
            *v109 = (v92 & 1) == 0;
            v95 = *v120;
            if (v92)
            {
              v96 = v51;
              v97 = *v120;
              (v95)(v96, v90);
              (*v113)((v94 + v93), v91, v90);
            }

            else
            {
              v100 = *v120;
              (v95)(v91, v90);
              v101 = v134;
              (v134)(v94 + v93, v51, v90);
              (v101)(v79, v51, v90);
              dispatch thunk of SetAlgebra.formUnion(_:)();
              v102 = v51;
              v97 = v100;
              (v100)(v102, v90);
            }

            v103 = v127;
            outlined init with take of SFXPCAsyncSequence<LSKPublishedStatus<Data>>?(v94, v127, &_sSb8inserted_14LocalStatusKit20LSKTargetDeviceFlagsV17memberAfterInserttMd, &_sSb8inserted_14LocalStatusKit20LSKTargetDeviceFlagsV17memberAfterInserttMR);
            v42 = v90;
            (v97)(v103 + *(v137 + 48), v90);
            (*v106)(v131, v132);
            v50 = v117;
            v54 = v119;
          }

          v52 = v128;
          v53 = v118;
        }
      }

      v48 += v123;
      --v44;
      v51 = v129;
    }

    while (v44);
  }
}

uint64_t SKALocalStatusServer.add(_:for:to:targeting:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v133 = a5;
  v139[1] = *MEMORY[0x277D85DE8];
  v10 = type metadata accessor for LSKDomain();
  v131 = *(v10 - 8);
  v132 = v10;
  v11 = *(v131 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v128 = &v117 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v126 = &v117 - v14;
  v15 = type metadata accessor for Date();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v135 = &v117 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v134 = &v117 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v130 = &v117 - v23;
  MEMORY[0x28223BE20](v22);
  v129 = &v117 - v24;
  v25 = *(v5 + 176);
  v139[0] = 0;
  v26 = [v25 allPublishedLocalStatusesInDatabaseContext:a4 error:v139];
  v27 = v139[0];
  if (v26)
  {
    v28 = v26;
    v118 = a1;
    v121 = v16;
    v123 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SKADatabasePublishedLocalStatus, off_27843D3B0);
    v29 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v27;

    v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMR);
    v120 = a3;
    v31 = LSKKey.id.getter();
    v136 = v32;
    v137 = v31;
    v124 = v25;
    v125 = a4;
    v122 = v15;
    v127 = a2;
    if (v29 >> 62)
    {
LABEL_43:
      v27 = __CocoaSet.count.getter();
      if (v27)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v27 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v27)
      {
LABEL_4:
        v33 = 0;
        while (1)
        {
          if ((v29 & 0xC000000000000001) != 0)
          {
            v34 = MEMORY[0x223D77050](v33, v29);
            v35 = (v33 + 1);
            if (__OFADD__(v33, 1))
            {
LABEL_17:
              __break(1u);
              goto LABEL_18;
            }
          }

          else
          {
            if (v33 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              goto LABEL_43;
            }

            v34 = *(v29 + 8 * v33 + 32);
            v35 = (v33 + 1);
            if (__OFADD__(v33, 1))
            {
              goto LABEL_17;
            }
          }

          v138 = v34;
          v36 = [v34 identifier];
          v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v39 = v38;

          if (v37 == v137 && v39 == v136)
          {
            break;
          }

          v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v41)
          {
            goto LABEL_20;
          }

          ++v33;
          if (v35 == v27)
          {
            goto LABEL_44;
          }
        }

LABEL_20:

        v43 = v138;
        v44 = [v138 payload];
        v45 = v127;
        v46 = (v127 >> 60);
        v47 = v118;
        if (v44)
        {
          v48 = v44;
          v49 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v51 = v50;

          if (v51 >> 60 != 15)
          {
            if (v45 >> 60 != 15)
            {
              outlined copy of Data?(v47, v45);
              outlined copy of Data?(v49, v51);
              v52 = specialized static Data.== infix(_:_:)(v49, v51, v47, v45);
              outlined consume of Data?(v49, v51);
              outlined consume of Data?(v47, v45);
              outlined consume of Data?(v49, v51);
              if ((v52 & 1) == 0)
              {
                goto LABEL_31;
              }

LABEL_28:
              v53 = [v43 targetDevicesFlags];
              if (v53 == LSKTargetDeviceFlags.rawValue.getter())
              {

                LOBYTE(v42) = 0;

                goto LABEL_55;
              }

              goto LABEL_31;
            }

            goto LABEL_30;
          }
        }

        else
        {
          v49 = 0;
          v51 = 0xF000000000000000;
        }

        if (v45 >> 60 == 15)
        {
          outlined copy of Data?(v47, v45);
          outlined consume of Data?(v49, v51);
          goto LABEL_28;
        }

LABEL_30:
        outlined copy of Data?(v47, v45);
        outlined consume of Data?(v49, v51);
        outlined consume of Data?(v47, v45);
LABEL_31:
        v54 = [v43 creationDate];
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        static Date.now.getter();
        v55 = v126;
        v56 = LSKKey.domain.getter();
        v57 = MEMORY[0x223D76900](v56);
        v134 = v46;
        v59 = v58;
        (*(v131 + 8))(v55, v132);
        v60 = LSKKey.name.getter();
        v62 = v61;
        v135 = LSKTargetDeviceFlags.rawValue.getter();
        v63 = MEMORY[0x223D76B00](v137, v136);
        v64.super.isa = Date._bridgeToObjectiveC()().super.isa;
        v65.super.isa = Date._bridgeToObjectiveC()().super.isa;
        v66 = MEMORY[0x223D76B00](v57, v59);

        v67 = MEMORY[0x223D76B00](v60, v62);

        if (v134 <= 0xE)
        {
          isa = Data._bridgeToObjectiveC()().super.isa;
        }

        else
        {
          isa = 0;
        }

        v69 = v122;
        v70 = objc_allocWithZone(SKADatabasePublishedLocalStatus);
        v71 = [v70 initWithIdentifier:v63 creationDate:v64.super.isa modificationDate:v65.super.isa keyDomain:v66 keyName:v67 payload:isa targetDevicesFlags:v135];

        v72 = *(v121 + 8);
        v72(v130, v69);
        v72(v129, v69);
        if (one-time initialization token for log != -1)
        {
          swift_once();
        }

        v73 = type metadata accessor for Logger();
        __swift_project_value_buffer(v73, log);
        v74 = v136;

        v75 = Logger.logObject.getter();
        v76 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v75, v76))
        {
          v77 = swift_slowAlloc();
          v78 = swift_slowAlloc();
          v139[0] = v78;
          *v77 = 136315138;
          v79 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v137, v74, v139);

          *(v77 + 4) = v79;
          _os_log_impl(&dword_220099000, v75, v76, "Updating local status {identifier: %s}", v77, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v78);
          MEMORY[0x223D77FF0](v78, -1, -1);
          MEMORY[0x223D77FF0](v77, -1, -1);
        }

        else
        {
        }

        v81 = v124;
        v80 = v125;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
        v82 = swift_allocObject();
        *(v82 + 16) = xmmword_2201A7710;
        *(v82 + 32) = v71;
        v42 = v71;
        v83 = Array._bridgeToObjectiveC()().super.isa;

        v139[0] = 0;
        LODWORD(v80) = [v81 createOrUpdatePublishedLocalStatuses:v83 databaseContext:v80 error:v139];

        v84 = v138;
        if (v80)
        {
          v85 = v139[0];

          LOBYTE(v42) = 1;
          goto LABEL_55;
        }

        v86 = v139[0];
        _convertNSErrorToError(_:)();

        swift_willThrow();
        goto LABEL_54;
      }
    }

LABEL_44:

    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v87 = type metadata accessor for Logger();
    __swift_project_value_buffer(v87, log);
    v88 = v136;

    v89 = Logger.logObject.getter();
    v90 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      v139[0] = v92;
      *v91 = 136315138;
      *(v91 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v137, v88, v139);
      _os_log_impl(&dword_220099000, v89, v90, "Creating local status {identifier: %s}", v91, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v92);
      MEMORY[0x223D77FF0](v92, -1, -1);
      MEMORY[0x223D77FF0](v91, -1, -1);
    }

    static Date.now.getter();
    static Date.now.getter();
    v93 = v128;
    v94 = LSKKey.domain.getter();
    v130 = MEMORY[0x223D76900](v94);
    v96 = v95;
    (*(v131 + 8))(v93, v132);
    v97 = LSKKey.name.getter();
    v99 = v98;
    v138 = LSKTargetDeviceFlags.rawValue.getter();
    v42 = MEMORY[0x223D76B00](v137, v88);

    v100.super.isa = Date._bridgeToObjectiveC()().super.isa;
    v101.super.isa = Date._bridgeToObjectiveC()().super.isa;
    v102 = MEMORY[0x223D76B00](v130, v96);

    v103 = MEMORY[0x223D76B00](v97, v99);

    if (v127 >> 60 == 15)
    {
      v104 = 0;
    }

    else
    {
      v104 = Data._bridgeToObjectiveC()().super.isa;
    }

    v105 = v121;
    v106 = objc_allocWithZone(SKADatabasePublishedLocalStatus);
    v107 = [v106 initWithIdentifier:v42 creationDate:v100.super.isa modificationDate:v101.super.isa keyDomain:v102 keyName:v103 payload:v104 targetDevicesFlags:v138];

    v108 = *(v105 + 8);
    v109 = v122;
    v108(v135, v122);
    v108(v134, v109);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v110 = swift_allocObject();
    *(v110 + 16) = xmmword_2201A7710;
    *(v110 + 32) = v107;
    v84 = v107;
    v111 = Array._bridgeToObjectiveC()().super.isa;

    v139[0] = 0;
    v112 = [v124 createOrUpdatePublishedLocalStatuses:v111 databaseContext:v125 error:v139];

    LOBYTE(v42) = v139[0];
    if (!v112)
    {
      v114 = v139[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
LABEL_54:

      goto LABEL_55;
    }

    v113 = v139[0];
    LOBYTE(v42) = 1;
  }

  else
  {
LABEL_18:
    v42 = v27;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

LABEL_55:
  v115 = *MEMORY[0x277D85DE8];
  return v42 & 1;
}

uint64_t SKALocalStatusServer.resetDeliverySubject(for:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v31[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v11 = &v31[-v10];
  v12 = OBJC_IVAR___SKALocalStatusServer_deliverySubjects;
  swift_beginAccess();
  if (*(*(v1 + v12) + 16))
  {
    specialized __RawDictionaryStorage.find<A>(_:)(a1);
    if (v13)
    {
      swift_endAccess();
      if (one-time initialization token for log != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      __swift_project_value_buffer(v14, log);
      v36 = *(v5 + 16);
      v36(v11, a1, v4);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v33 = a1;
        v18 = v17;
        v34 = swift_slowAlloc();
        v37 = v34;
        *v18 = 136315138;
        lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type LSKKey<Data> and conformance LSKKey<A>, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMR);
        v32 = v16;
        v19 = dispatch thunk of CustomStringConvertible.description.getter();
        v35 = v5 + 16;
        v21 = v20;
        (*(v5 + 8))(v11, v4);
        v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &v37);

        v23 = v18;
        a1 = v33;
        *(v23 + 1) = v22;
        v24 = v23;
        _os_log_impl(&dword_220099000, v15, v32, "Resetting subject for %s", v23, 0xCu);
        v25 = v34;
        __swift_destroy_boxed_opaque_existential_0(v34);
        MEMORY[0x223D77FF0](v25, -1, -1);
        MEMORY[0x223D77FF0](v24, -1, -1);
      }

      else
      {

        (*(v5 + 8))(v11, v4);
      }

      swift_beginAccess();
      v26 = *(v2 + v12);
      if (*(v26 + 16) && (v27 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v28 & 1) != 0))
      {
        v29 = *(*(v26 + 56) + 8 * v27);
        swift_endAccess();
        LOBYTE(v37) = 1;

        CurrentValueSubject.send(completion:)();
      }

      else
      {
        swift_endAccess();
      }

      v36(v9, a1, v4);
      swift_beginAccess();
      specialized Dictionary.subscript.setter(0, v9);
    }
  }

  return swift_endAccess();
}

uint64_t SKALocalStatusServer.reconcilePendingStatusesOnDevices(resetting:in:resetDiscoverySource:)(uint64_t a1, uint64_t a2, int a3)
{
  v543 = a3;
  v550 = a2;
  v544 = a1;
  v602 = *MEMORY[0x277D85DE8];
  v575 = type metadata accessor for Date();
  v541 = *(v575 - 8);
  v3 = *(v541 + 64);
  v4 = MEMORY[0x28223BE20](v575);
  v574 = &v536 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v573 = &v536 - v6;
  v593 = type metadata accessor for LSKTargetDeviceFlags();
  v589 = *(v593 - 1);
  v7 = *(v589 + 64);
  MEMORY[0x28223BE20](v593);
  v592 = &v536 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v579 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMR);
  v546 = *(v579 - 8);
  v9 = *(v546 + 64);
  MEMORY[0x28223BE20](v579);
  v578 = &v536 - v10;
  if (one-time initialization token for log != -1)
  {
    goto LABEL_400;
  }

  while (1)
  {
    v11 = type metadata accessor for Logger();
    v582 = __swift_project_value_buffer(v11, log);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_220099000, v12, v13, "reconcilePendingStatusesOnDevices START", v14, 2u);
      MEMORY[0x223D77FF0](v14, -1, -1);
    }

    v15 = v580;
    v16 = SKALocalStatusServer.getFilteredRecipientIDSDevices(from:)(0xD000000000000045, 0x80000002201AC7D0);
    v17 = v15[22];
    v600 = 0;
    v545 = v17;
    v18 = [v17 allPublishedLocalStatusDevicesInDatabaseContext:v550 error:&v600];
    v19 = v600;
    if (!v18)
    {
      v74 = v600;

      _convertNSErrorToError(_:)();

      result = swift_willThrow();
      goto LABEL_357;
    }

    v20 = v18;
    v553 = v16;
    v540 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SKADatabasePublishedLocalStatusDevice, off_27843D3B8);
    v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v19;

    v23 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So37SKADatabasePublishedLocalStatusDeviceCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    v24 = v21;
    v25 = v23;
    v576 = v21;
    v587 = v21 >> 62;
    if (v21 >> 62)
    {
      goto LABEL_403;
    }

    v26 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_7:
    v566 = v26;
    if (!v26)
    {
      break;
    }

    v27 = 0;
    v28 = v24 & 0xC000000000000001;
    v594 = v24 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v28)
      {
        v33 = v25;
        v34 = MEMORY[0x223D77050](v27);
      }

      else
      {
        if (v27 >= *(v594 + 16))
        {
          goto LABEL_395;
        }

        v33 = v25;
        v34 = *(v24 + 8 * v27 + 32);
      }

      v35 = v34;
      v36 = (v27 + 1);
      if (__OFADD__(v27, 1))
      {
        goto LABEL_387;
      }

      v37 = [v34 idsIdentifier];
      v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v40 = v39;

      v41 = v35;
      v42 = v33;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v600 = v33;
      v44 = specialized __RawDictionaryStorage.find<A>(_:)(v38, v40);
      v46 = v33[2];
      v47 = (v45 & 1) == 0;
      v48 = __OFADD__(v46, v47);
      v49 = v46 + v47;
      if (v48)
      {
        break;
      }

      v50 = v45;
      if (v42[3] < v49)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v49, isUniquelyReferenced_nonNull_native);
        v44 = specialized __RawDictionaryStorage.find<A>(_:)(v38, v40);
        if ((v50 & 1) != (v51 & 1))
        {
          goto LABEL_462;
        }

LABEL_21:
        if (v50)
        {
          goto LABEL_9;
        }

        goto LABEL_22;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_21;
      }

      v55 = v44;
      specialized _NativeDictionary.copy()();
      v44 = v55;
      if (v50)
      {
LABEL_9:
        v29 = v44;

        v30 = v600;
        v31 = *(v600 + 7);
        v32 = *(v31 + 8 * v29);
        *(v31 + 8 * v29) = v41;
        v25 = v30;

        goto LABEL_10;
      }

LABEL_22:
      v25 = v600;
      *(v600 + (v44 >> 6) + 8) |= 1 << v44;
      v52 = &v25[6][2 * v44];
      *v52 = v38;
      v52[1] = v40;
      v25[7][v44] = v41;

      v53 = v25[2];
      v48 = __OFADD__(v53, 1);
      v54 = (v53 + 1);
      if (v48)
      {
        goto LABEL_392;
      }

      v25[2] = v54;
LABEL_10:
      ++v27;
      v24 = v576;
      if (v36 == v566)
      {
        goto LABEL_26;
      }
    }

LABEL_388:
    __break(1u);
LABEL_389:
    __break(1u);
LABEL_390:
    __break(1u);
LABEL_391:
    __break(1u);
LABEL_392:
    __break(1u);
LABEL_393:
    __break(1u);
LABEL_394:
    __break(1u);
LABEL_395:
    __break(1u);
LABEL_396:
    __break(1u);
LABEL_397:
    __break(1u);
LABEL_398:
    __break(1u);
LABEL_399:
    __break(1u);
LABEL_400:
    swift_once();
  }

LABEL_26:
  v551 = v25;
  v600 = 0;
  v56 = [v545 allPublishedLocalStatusesInDatabaseContext:v550 error:{&v600, v536, v537}];
  v57 = v600;
  if (!v56)
  {
    v76 = v600;

    _convertNSErrorToError(_:)();

    swift_willThrow();
    goto LABEL_356;
  }

  v58 = v56;
  v562 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SKADatabasePublishedLocalStatus, off_27843D3B0);
  v588 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v59 = v57;

  KeyPath = swift_getKeyPath();
  v61 = v544;
  v62 = *(v544 + 16);
  v554 = v62;
  if (v62)
  {
    v599 = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)(v62);
    v63 = *(v546 + 16);
    v64 = v61 + ((*(v546 + 80) + 32) & ~*(v546 + 80));
    v590 = *(v546 + 72);
    v591 = v63;
    v65 = (v546 + 8);
    v66 = v599;
    v594 = KeyPath;
    do
    {
      v67 = v578;
      v68 = v579;
      (v591)(v578, v64, v579);
      swift_getAtKeyPath();
      (*v65)(v67, v68);
      v70 = v600;
      v69 = v601;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v66 + 16) + 1, 1);
        v66 = v599;
      }

      v72 = *(v66 + 16);
      v71 = *(v66 + 24);
      if (v72 >= v71 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v71 > 1), v72 + 1, 1);
        v66 = v599;
      }

      *(v66 + 16) = v72 + 1;
      v73 = v66 + 16 * v72;
      *(v73 + 32) = v70;
      *(v73 + 40) = v69;
      v64 += v590;
      --v62;
    }

    while (v62);
  }

  else
  {

    v66 = MEMORY[0x277D84F90];
  }

  v594 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v66);

  v599 = MEMORY[0x277D84F90];
  if (v587)
  {
    v77 = __CocoaSet.count.getter();
  }

  else
  {
    v77 = *((v576 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v78 = MEMORY[0x277D84F90];
  if (v77)
  {
    v600 = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)(v77);
    if ((v77 & 0x8000000000000000) == 0)
    {
      v79 = 0;
      v80 = v576;
      v81 = v576 & 0xC000000000000001;
      do
      {
        if (v81)
        {
          v82 = MEMORY[0x223D77050](v79);
        }

        else
        {
          v82 = *(v80 + 8 * v79 + 32);
        }

        v83 = v82;
        v84 = [v83 idsIdentifier];
        v85 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v87 = v86;

        v78 = v600;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v78[2] + 1, 1);
          v78 = v600;
        }

        v80 = v576;
        v89 = v78[2];
        v88 = v78[3];
        if (v89 >= v88 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v88 > 1), v89 + 1, 1);
          v80 = v576;
          v78 = v600;
        }

        ++v79;
        v78[2] = v89 + 1;
        v90 = &v78[2 * v89];
        *(v90 + 4) = v85;
        *(v90 + 5) = v87;
      }

      while (v77 != v79);
      goto LABEL_52;
    }

    __break(1u);
LABEL_411:
    v458 = __CocoaSet.count.getter();
    goto LABEL_322;
  }

LABEL_52:
  v91 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v78);

  v598 = v91;
  v93 = v553;
  if (v553 >> 62)
  {
    goto LABEL_407;
  }

  v94 = *((v553 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_54:
  v95 = MEMORY[0x277D84F90];
  if (!v94)
  {
    v99 = MEMORY[0x277D84F90];
LABEL_260:
    v564 = v99;

    if (v566)
    {
      v390 = 0;
      v391 = v576 & 0xC000000000000001;
      v586 = v576 & 0xFFFFFFFFFFFFFF8;
      v585 = (v576 + 32);
      v392 = v594 + 56;
      v584 = v576 & 0xC000000000000001;
      do
      {
        if (v391)
        {
          v393 = MEMORY[0x223D77050](v390);
          v48 = __OFADD__(v390, 1);
          v390 = (v390 + 1);
          if (v48)
          {
            goto LABEL_393;
          }
        }

        else
        {
          if (v390 >= *(v586 + 16))
          {
            goto LABEL_396;
          }

          v393 = v585[v390];
          v48 = __OFADD__(v390, 1);
          v390 = (v390 + 1);
          if (v48)
          {
            goto LABEL_393;
          }
        }

        v394 = v393;
        if ([v393 discoverySource] == 2)
        {
          v588 = v394;
          if (v554)
          {
            v395 = v588;
            v396 = [v588 pendingStatuses];
            v397 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

            v589 = v397;
            v596 = v95;
            v597 = v397;
            v398 = [v395 deliveredStatuses];
            v399 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

            v592 = v399;
            if (v399 >> 62)
            {
              v400 = __CocoaSet.count.getter();
            }

            else
            {
              v400 = *((v399 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v587 = v390;
            v401 = v95;
            if (v400)
            {
              v402 = 0;
              v593 = (v592 & 0xC000000000000001);
              v590 = (v592 + 32);
              v591 = v592 & 0xFFFFFFFFFFFFFF8;
              while (1)
              {
                if (v593)
                {
                  v403 = MEMORY[0x223D77050](v402, v592);
                }

                else
                {
                  if (v402 >= *(v591 + 16))
                  {
                    goto LABEL_389;
                  }

                  v403 = v590[v402];
                }

                v404 = v403;
                v48 = __OFADD__(v402++, 1);
                if (v48)
                {
                  break;
                }

                v405 = [v403 identifier];
                v406 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v408 = v407;

                if (*(v594 + 16) && (v409 = *(v594 + 40), Hasher.init(_seed:)(), String.hash(into:)(), v410 = Hasher._finalize()(), v411 = v594, v412 = -1 << *(v594 + 32), v413 = v410 & ~v412, ((*(v392 + ((v413 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v413) & 1) != 0))
                {
                  v414 = v401;
                  v415 = ~v412;
                  while (1)
                  {
                    v416 = (*(v411 + 48) + 16 * v413);
                    v417 = *v416 == v406 && v416[1] == v408;
                    if (v417 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                    {
                      break;
                    }

                    v413 = (v413 + 1) & v415;
                    v411 = v594;
                    if (((*(v392 + ((v413 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v413) & 1) == 0)
                    {
                      goto LABEL_290;
                    }
                  }

                  v419 = v404;
                  MEMORY[0x223D76BD0]();
                  if (*((v597 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v597 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    v421 = *((v597 & 0xFFFFFFFFFFFFFF8) + 0x10);
                    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                  }

                  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

                  v589 = v597;
                  v401 = v414;
                  if (v402 == v400)
                  {
                    goto LABEL_297;
                  }
                }

                else
                {
LABEL_290:

                  v418 = v404;
                  MEMORY[0x223D76BD0]();
                  if (*((v596 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v596 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    v420 = *((v596 & 0xFFFFFFFFFFFFFF8) + 0x10);
                    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                  }

                  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

                  v401 = v596;
                  if (v402 == v400)
                  {
                    goto LABEL_297;
                  }
                }
              }

              __break(1u);
LABEL_381:
              __break(1u);
LABEL_382:
              __break(1u);
LABEL_383:
              __break(1u);
LABEL_384:
              __break(1u);
LABEL_385:
              __break(1u);
LABEL_386:
              __break(1u);
LABEL_387:
              __break(1u);
              goto LABEL_388;
            }

LABEL_297:

            v422 = [v588 idsIdentifier];
            if (!v422)
            {
              v423 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v422 = MEMORY[0x223D76B00](v423);
            }

            v424 = objc_allocWithZone(SKADatabasePublishedLocalStatusDevice);
            isa = Array._bridgeToObjectiveC()().super.isa;

            v426 = Array._bridgeToObjectiveC()().super.isa;

            [v424 initWithIDSIdentifier:v422 pendingStatuses:isa deliveredStatuses:v426 discoverySource:2];

            MEMORY[0x223D76BD0]();
            v95 = MEMORY[0x277D84F90];
            v391 = v584;
            if (*((v599 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v599 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v432 = *((v599 & 0xFFFFFFFFFFFFFF8) + 0x10);
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v564 = v599;
            v390 = v587;
          }

          v427 = v588;
          v428 = [v588 idsIdentifier];
          v429 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v431 = v430;

          specialized Set._Variant.remove(_:)(v429, v431);
        }

        else
        {
        }
      }

      while (v390 != v566);
    }

    v584 = v564 >> 62;
    if (v564 >> 62)
    {
      if (!__CocoaSet.count.getter())
      {
        goto LABEL_314;
      }
    }

    else if (!*((v564 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_314;
    }

    v433 = Logger.logObject.getter();
    v434 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v433, v434))
    {
      v435 = swift_slowAlloc();
      *v435 = 134217984;
      if (v584)
      {
        v436 = __CocoaSet.count.getter();
      }

      else
      {
        v436 = *((v564 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v435 + 4) = v436;

      _os_log_impl(&dword_220099000, v433, v434, "reconcilePendingStatusesOnDevices inserting new devices {devicesToSave.count: %ld}", v435, 0xCu);
      MEMORY[0x223D77FF0](v435, -1, -1);
    }

    else
    {
    }

    v437 = Array._bridgeToObjectiveC()().super.isa;
    v600 = 0;
    v438 = [v545 createOrUpdatePublishedLocalStatusDevices:v437 databaseContext:v550 error:&v600];

    if (!v438)
    {
      goto LABEL_355;
    }

    v439 = v600;
LABEL_314:
    v440 = v598;
    if (!*(v598 + 16))
    {
LABEL_319:
      v583 = v440;
      v597 = v95;
      v600 = 0;
      v453 = [v545 allPublishedLocalStatusDevicesInDatabaseContext:v550 error:&v600];
      v454 = v600;
      if (!v453)
      {
        v489 = v600;
        v490 = _convertNSErrorToError(_:)();

        swift_willThrow();
        v491 = v490;
        v492 = Logger.logObject.getter();
        v493 = static os_log_type_t.error.getter();

        if (!os_log_type_enabled(v492, v493))
        {
          goto LABEL_450;
        }

        v494 = swift_slowAlloc();
        v495 = swift_slowAlloc();
        *v494 = 138412290;
        v496 = v490;
        v497 = _swift_stdlib_bridgeErrorToNSError();
        *(v494 + 4) = v497;
        *v495 = v497;
        _os_log_impl(&dword_220099000, v492, v493, "Failed to fetch all published local status devices while evaluating recent statuses: %@", v494, 0xCu);
        outlined destroy of UUID?(v495, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x223D77FF0](v495, -1, -1);
        MEMORY[0x223D77FF0](v494, -1, -1);

        goto LABEL_451;
      }

      v455 = v453;
      v456 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      v457 = v454;

      v596 = v95;
      v581 = v456;
      if (v456 >> 62)
      {
        goto LABEL_411;
      }

      v458 = *((v456 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_322:
      v25 = v580;
      v459 = MEMORY[0x277D84F90];
      if (!v458)
      {
        v498 = MEMORY[0x277D84F90];
        goto LABEL_363;
      }

      v460 = 0;
      v589 = v581 & 0xC000000000000001;
      v588 = v581 & 0xFFFFFFFFFFFFFF8;
      v586 = v581 + 32;
      v587 = "re/SKALocalStatusServer.swift";
      v585 = v458;
      while (1)
      {
        if (v589)
        {
          v461 = MEMORY[0x223D77050](v460, v581);
        }

        else
        {
          if (*(v588 + 16) <= v460)
          {
            goto LABEL_402;
          }

          v461 = *(v586 + 8 * v460);
        }

        v462 = v461;
        v48 = __OFADD__(v460, 1);
        v463 = v460 + 1;
        if (v48)
        {
          __break(1u);
LABEL_402:
          __break(1u);
LABEL_403:
          v26 = __CocoaSet.count.getter();
          v24 = v576;
          goto LABEL_7;
        }

        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v593 = v462;
        v464 = [v462 idsIdentifier];
        v591 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v592 = v465;

        v466 = SKALocalStatusServer.getFilteredRecipientIDSDevices(from:)(0xD000000000000025, v587 | 0x8000000000000000);
        v467 = v466;
        v468 = v466 & 0xFFFFFFFFFFFFFF8;
        if (v466 >> 62)
        {
          v469 = __CocoaSet.count.getter();
          v594 = v463;
          if (v469)
          {
LABEL_334:
            v470 = 0;
            v471 = MEMORY[0x277D84F90];
            do
            {
              v472 = v470;
              while (1)
              {
                if ((v467 & 0xC000000000000001) != 0)
                {
                  v473 = MEMORY[0x223D77050](v472, v467);
                }

                else
                {
                  if (v472 >= *(v468 + 16))
                  {
                    goto LABEL_383;
                  }

                  v473 = *(v467 + 8 * v472 + 32);
                }

                v474 = v473;
                v470 = v472 + 1;
                if (__OFADD__(v472, 1))
                {
                  goto LABEL_382;
                }

                v475 = [v473 uniqueID];
                if (v475)
                {
                  break;
                }

                ++v472;
                if (v470 == v469)
                {
                  goto LABEL_353;
                }
              }

              v476 = v475;
              v477 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v590 = v478;

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v471 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v471 + 2) + 1, 1, v471);
              }

              v480 = *(v471 + 2);
              v479 = *(v471 + 3);
              if (v480 >= v479 >> 1)
              {
                v471 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v479 > 1), v480 + 1, 1, v471);
              }

              *(v471 + 2) = v480 + 1;
              v481 = &v471[16 * v480];
              v482 = v590;
              *(v481 + 4) = v477;
              *(v481 + 5) = v482;
            }

            while (v470 != v469);
            goto LABEL_353;
          }
        }

        else
        {
          v469 = *((v466 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v594 = v463;
          if (v469)
          {
            goto LABEL_334;
          }
        }

        v471 = MEMORY[0x277D84F90];
LABEL_353:

        v600 = v591;
        v601 = v592;
        MEMORY[0x28223BE20](v483);
        *(&v536 - 2) = &v600;
        v484 = v549;
        v485 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, (&v536 - 4), v471);
        v549 = v484;

        if (v485)
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v486 = *(v596 + 16);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        v25 = v580;
        v460 = v594;
        if (v594 == v585)
        {
          goto LABEL_361;
        }
      }
    }

    v441 = Logger.logObject.getter();
    v442 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v441, v442))
    {
      v443 = swift_slowAlloc();
      v444 = swift_slowAlloc();
      v600 = v444;
      *v443 = 136315138;

      v445 = Set.description.getter();
      v447 = v446;

      v448 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v445, v447, &v600);

      *(v443 + 4) = v448;
      _os_log_impl(&dword_220099000, v441, v442, "reconcilePendingStatusesOnDevices removing ids lost devices {deviceIDsToRemove: %s}", v443, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v444);
      MEMORY[0x223D77FF0](v444, -1, -1);
      MEMORY[0x223D77FF0](v443, -1, -1);
    }

    _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSS_ShySSGTt0g5(v449);
    v450 = Array._bridgeToObjectiveC()().super.isa;

    v600 = 0;
    v451 = [v545 deletePublishedLocalStatusDevices:v450 databaseContext:v550 error:&v600];

    if (v451)
    {
      v452 = v600;
      goto LABEL_319;
    }

LABEL_355:
    v487 = v600;

    _convertNSErrorToError(_:)();

    swift_willThrow();

    goto LABEL_356;
  }

  v96 = 0;
  v556 = v93 & 0xC000000000000001;
  v548 = v93 & 0xFFFFFFFFFFFFFF8;
  v547 = v93 + 32;
  v97 = v588 & 0xFFFFFFFFFFFFFF8;
  v577 = v588 & 0xFFFFFFFFFFFFFF8;
  if (v588 < 0)
  {
    v97 = v588;
  }

  v537 = v97;
  v591 = v588 & 0xC000000000000001;
  v572 = (v588 + 32);
  v590 = (v589 + 8);
  v570 = v546 + 16;
  v569 = (v546 + 8);
  v98 = MEMORY[0x277D84F90] & 0xFFFFFFFFFFFFFF8;
  v542 = MEMORY[0x277D84F90] & 0xFFFFFFFFFFFFFF8;
  if (MEMORY[0x277D84F90] < 0)
  {
    v98 = MEMORY[0x277D84F90];
  }

  v536 = v98;
  *&v92 = 136315138;
  v539 = v92;
  *&v92 = 136315394;
  v565 = v92;
  *&v92 = 138412290;
  v538 = v92;
  v99 = MEMORY[0x277D84F90];
  v555 = v94;
  while (1)
  {
    v564 = v99;
    if (v556)
    {
      v100 = v96;
      v101 = MEMORY[0x223D77050](v96, v553);
    }

    else
    {
      if (v96 >= *(v548 + 16))
      {
        goto LABEL_397;
      }

      v100 = v96;
      v101 = *(v547 + 8 * v96);
    }

    v102 = v101;
    v48 = __OFADD__(v100, 1);
    v103 = v100 + 1;
    if (v48)
    {
      goto LABEL_394;
    }

    v563 = v103;
    v104 = [v101 uniqueID];
    if (!v104)
    {
      goto LABEL_61;
    }

    v25 = v104;
    v557 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v561 = v105;
    v597 = v95;
    v106 = v588 >> 62 ? __CocoaSet.count.getter() : *(v577 + 16);
    v560 = v25;
    if (v106)
    {
      break;
    }

    v589 = v95;
LABEL_91:
    if (v589 >> 62)
    {
      if (!__CocoaSet.count.getter())
      {
LABEL_134:

        v186 = v560;
        goto LABEL_62;
      }
    }

    else if (!*((v589 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_134;
    }

    v120 = v557;
    v121 = v561;
    specialized Set._Variant.remove(_:)(v557, v561);

    v122 = specialized Dictionary.subscript.getter(v120, v121, v551);
    v123 = v560;

    if (!v122)
    {

      v159 = objc_allocWithZone(SKADatabasePublishedLocalStatusDevice);
      v160 = Array._bridgeToObjectiveC()().super.isa;

      v161 = Array._bridgeToObjectiveC()().super.isa;
      v162 = [v159 initWithIDSIdentifier:v123 pendingStatuses:v160 deliveredStatuses:v161 discoverySource:1];

      v163 = v162;
      MEMORY[0x223D76BD0]();
      if (*((v599 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v599 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v388 = *((v599 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      goto LABEL_258;
    }

    v124 = [v122 discoverySource];
    v552 = v122;
    if (v124 != 1)
    {
      if ((v543 & 1) == 0)
      {

        v179 = v552;
        v180 = v552;
        v181 = Logger.logObject.getter();
        v182 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v181, v182))
        {
          v183 = swift_slowAlloc();
          v184 = swift_slowAlloc();
          *v183 = v538;
          *(v183 + 4) = v180;
          *v184 = v179;
          v185 = v180;
          _os_log_impl(&dword_220099000, v181, v182, "Skipping unexpected found status device %@", v183, 0xCu);
          outlined destroy of UUID?(v184, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          MEMORY[0x223D77FF0](v184, -1, -1);
          MEMORY[0x223D77FF0](v183, -1, -1);
          v180 = v181;
          v181 = v185;
        }

LABEL_61:
        goto LABEL_62;
      }

      v125 = v561;

      v126 = Logger.logObject.getter();
      v127 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v126, v127))
      {
        v128 = swift_slowAlloc();
        v587 = swift_slowAlloc();
        v600 = v587;
        *v128 = v539;

        v130 = specialized Collection.prefix(_:)(8, v557, v125, v129);
        v132 = v131;
        v134 = v133;
        v136 = v135;

        v137 = MEMORY[0x223D76B60](v130, v132, v134, v136);
        v139 = v138;
        v95 = MEMORY[0x277D84F90];

        v140 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v137, v139, &v600);

        *(v128 + 4) = v140;
        _os_log_impl(&dword_220099000, v126, v127, "Modifying existing device discovery source to IDS device: {device: %s}", v128, 0xCu);
        v141 = v587;
        __swift_destroy_boxed_opaque_existential_0(v587);
        MEMORY[0x223D77FF0](v141, -1, -1);
        MEMORY[0x223D77FF0](v128, -1, -1);
      }

      v122 = v552;
    }

    v142 = [v122 pendingStatuses];
    v143 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v143 >> 62)
    {
      v144 = __CocoaSet.count.getter();
    }

    else
    {
      v144 = *((v143 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v585 = v102;
    if (v144)
    {
      v600 = v95;
      specialized ContiguousArray.reserveCapacity(_:)(v144);
      if (v144 < 0)
      {
        __break(1u);
LABEL_405:
        __break(1u);
LABEL_406:
        __break(1u);
LABEL_407:
        v94 = __CocoaSet.count.getter();
        v93 = v553;
        goto LABEL_54;
      }

      v145 = 0;
      v146 = v143;
      v587 = v143 & 0xC000000000000001;
      v147 = v143;
      v148 = v144;
      do
      {
        if (v587)
        {
          v149 = MEMORY[0x223D77050](v145, v146);
        }

        else
        {
          v149 = *(v146 + 8 * v145 + 32);
        }

        v150 = v149;
        v151 = [v150 identifier];
        v152 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v154 = v153;

        v155 = v600;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v155[2] + 1, 1);
          v155 = v600;
        }

        v157 = v155[2];
        v156 = v155[3];
        if (v157 >= v156 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v156 > 1), v157 + 1, 1);
          v155 = v600;
        }

        ++v145;
        v155[2] = v157 + 1;
        v158 = &v155[2 * v157];
        v158[4] = v152;
        v158[5] = v154;
        v95 = MEMORY[0x277D84F90];
        v146 = v147;
      }

      while (v148 != v145);
    }

    else
    {

      v155 = v95;
    }

    v164 = [v552 deliveredStatuses];
    v165 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v165 >> 62)
    {
      v166 = __CocoaSet.count.getter();
      if (!v166)
      {
        goto LABEL_137;
      }
    }

    else
    {
      v166 = *((v165 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v166)
      {
        goto LABEL_137;
      }
    }

    v600 = v95;
    specialized ContiguousArray.reserveCapacity(_:)(v166);
    if (v166 < 0)
    {
      goto LABEL_405;
    }

    v167 = 0;
    v168 = v165;
    v586 = v165 & 0xC000000000000001;
    v587 = v165;
    v169 = v166;
    do
    {
      if (v586)
      {
        v170 = MEMORY[0x223D77050](v167, v168);
      }

      else
      {
        v170 = *(v168 + 8 * v167 + 32);
      }

      v171 = v170;
      v172 = [v171 identifier];
      v173 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v175 = v174;

      v95 = v600;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v95 + 16) + 1, 1);
        v95 = v600;
      }

      v177 = *(v95 + 16);
      v176 = *(v95 + 24);
      if (v177 >= v176 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v176 > 1), v177 + 1, 1);
        v95 = v600;
      }

      ++v167;
      *(v95 + 16) = v177 + 1;
      v178 = (v95 + 16 * v177);
      v178[4] = v173;
      v178[5] = v175;
      v168 = v587;
    }

    while (v169 != v167);
LABEL_137:

    v600 = v155;
    specialized Array.append<A>(contentsOf:)(v95);
    v187 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v600);

    v188 = swift_getKeyPath();
    v189 = v554;
    v587 = v187;
    if (v554)
    {
      v596 = MEMORY[0x277D84F90];
      specialized ContiguousArray.reserveCapacity(_:)(v554);
      v190 = v544 + ((*(v546 + 80) + 32) & ~*(v546 + 80));
      v586 = *(v546 + 72);
      v191 = *(v546 + 16);
      v192 = v596;
      do
      {
        v193 = v578;
        v194 = v579;
        v191(v578, v190, v579);
        v195 = v188;
        swift_getAtKeyPath();
        (*v569)(v193, v194);
        v196 = v600;
        v197 = v601;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v192 + 16) + 1, 1);
          v192 = v596;
        }

        v199 = *(v192 + 16);
        v198 = *(v192 + 24);
        if (v199 >= v198 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v198 > 1), v199 + 1, 1);
          v192 = v596;
        }

        *(v192 + 16) = v199 + 1;
        v200 = v192 + 16 * v199;
        *(v200 + 32) = v196;
        *(v200 + 40) = v197;
        v190 += v586;
        --v189;
        v188 = v195;
      }

      while (v189);

      v95 = MEMORY[0x277D84F90];
      v187 = v587;
    }

    else
    {

      v95 = MEMORY[0x277D84F90];
      v192 = MEMORY[0x277D84F90];
    }

    v201 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v192);

    v202 = v589;
    v583 = v201;
    v567 = v589 >> 62;
    if (v589 >> 62)
    {
      v203 = __CocoaSet.count.getter();
      v102 = v585;
      if (!v203)
      {
LABEL_160:

        v212 = v95;
        goto LABEL_161;
      }
    }

    else
    {
      v203 = *((v589 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v102 = v585;
      if (!v203)
      {
        goto LABEL_160;
      }
    }

    v600 = v95;

    specialized ContiguousArray.reserveCapacity(_:)(v203);
    if (v203 < 0)
    {
      goto LABEL_406;
    }

    v204 = 0;
    v205 = v202 & 0xC000000000000001;
    do
    {
      if (v205)
      {
        v206 = MEMORY[0x223D77050](v204, v589);
      }

      else
      {
        v206 = *(v589 + 8 * v204 + 32);
      }

      v207 = v206;
      v208 = [v207 identifier];
      v209 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v211 = v210;

      v212 = v600;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v212[2] + 1, 1);
        v212 = v600;
      }

      v214 = v212[2];
      v213 = v212[3];
      if (v214 >= v213 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v213 > 1), v214 + 1, 1);
        v212 = v600;
      }

      ++v204;
      v212[2] = v214 + 1;
      v215 = &v212[2 * v214];
      *(v215 + 4) = v209;
      *(v215 + 5) = v211;
      v201 = v583;
      v187 = v587;
    }

    while (v203 != v204);
    v95 = MEMORY[0x277D84F90];
LABEL_161:
    v216 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v212);

    v596 = v95;
    v217 = [v552 pendingStatuses];
    v218 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v584 = v218;
    if (v218 >> 62)
    {
      v219 = __CocoaSet.count.getter();
      if (!v219)
      {
LABEL_186:

        v581 = v95;
        goto LABEL_187;
      }
    }

    else
    {
      v219 = *((v218 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v219)
      {
        goto LABEL_186;
      }
    }

    v220 = v95;
    v221 = 0;
    v586 = v584 & 0xC000000000000001;
    v571 = v584 & 0xFFFFFFFFFFFFFF8;
    v568 = (v584 + 32);
    v222 = v216 + 56;
    v581 = v220;
    do
    {
      if (v586)
      {
        v223 = MEMORY[0x223D77050](v221, v584);
      }

      else
      {
        if (v221 >= *(v571 + 16))
        {
          goto LABEL_390;
        }

        v223 = v568[v221].isa;
      }

      v224 = v223;
      v48 = __OFADD__(v221++, 1);
      if (v48)
      {
        goto LABEL_384;
      }

      v225 = [(objc_class *)v223 identifier];
      v226 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v228 = v227;

      if (*(v216 + 16))
      {
        v229 = *(v216 + 40);
        Hasher.init(_seed:)();
        String.hash(into:)();
        v230 = Hasher._finalize()();
        v231 = -1 << *(v216 + 32);
        v232 = v230 & ~v231;
        if ((*(v222 + ((v232 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v232))
        {
          v233 = ~v231;
          while (1)
          {
            v234 = (*(v216 + 48) + 16 * v232);
            v235 = *v234 == v226 && v234[1] == v228;
            if (v235 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }

            v232 = (v232 + 1) & v233;
            if (((*(v222 + ((v232 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v232) & 1) == 0)
            {
              goto LABEL_180;
            }
          }

          v236 = v224;
          MEMORY[0x223D76BD0]();
          v102 = v585;
          v187 = v587;
          if (*((v596 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v596 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v237 = *((v596 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v581 = v596;
        }

        else
        {
LABEL_180:

          v102 = v585;
          v187 = v587;
        }
      }

      else
      {

        v102 = v585;
      }
    }

    while (v221 != v219);

    v95 = MEMORY[0x277D84F90];
    v201 = v583;
LABEL_187:

    v238 = v589;

    v595 = v95;
    if (v567)
    {
      v239 = __CocoaSet.count.getter();
      if (v239)
      {
LABEL_189:
        v240 = 0;
        v568 = (v238 & 0xC000000000000001);
        v559 = v238 & 0xFFFFFFFFFFFFFF8;
        v558 = v238 + 32;
        v241 = v187 + 56;
        v567 = v239;
        v571 = v187 + 56;
        do
        {
          if (v568)
          {
            v243 = MEMORY[0x223D77050](v240, v238);
            v48 = __OFADD__(v240, 1);
            v244 = (v240 + 1);
            if (v48)
            {
              goto LABEL_385;
            }
          }

          else
          {
            if (v240 >= *(v559 + 16))
            {
              goto LABEL_391;
            }

            v243 = *(v558 + 8 * v240);
            v48 = __OFADD__(v240, 1);
            v244 = (v240 + 1);
            if (v48)
            {
              goto LABEL_385;
            }
          }

          v586 = v243;
          v245 = [v243 identifier];
          v246 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v248 = v247;

          v249 = *(v187 + 16);
          v584 = v244;
          if (v249 && (v250 = *(v187 + 40), Hasher.init(_seed:)(), String.hash(into:)(), v251 = Hasher._finalize()(), v252 = -1 << *(v187 + 32), v253 = v251 & ~v252, ((*(v241 + ((v253 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v253) & 1) != 0))
          {
            v254 = ~v252;
            while (1)
            {
              v255 = (*(v187 + 48) + 16 * v253);
              v256 = *v255 == v246 && v255[1] == v248;
              if (v256 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
                break;
              }

              v253 = (v253 + 1) & v254;
              if (((*(v241 + ((v253 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v253) & 1) == 0)
              {
                goto LABEL_207;
              }
            }

            v257 = v586;
          }

          else
          {
LABEL_207:

            v257 = v586;
            v258 = v586;
            v259 = v102;
            v260 = Logger.logObject.getter();
            v261 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v260, v261))
            {
              LODWORD(v581) = v261;
              v262 = swift_slowAlloc();
              v263 = swift_slowAlloc();
              v600 = v263;
              *v262 = v565;
              v264 = [v258 identifier];
              v265 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v267 = v266;

              v268 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v265, v267, &v600);

              *(v262 + 4) = v268;
              *(v262 + 12) = 2080;
              v269 = [v259 uniqueID];

              if (!v269)
              {
                __break(1u);
LABEL_459:
                __break(1u);
LABEL_460:
                __break(1u);
              }

              v270 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v272 = v271;

              v274 = specialized Collection.prefix(_:)(8, v270, v272, v273);
              v276 = v275;
              v278 = v277;
              v280 = v279;

              v281 = MEMORY[0x223D76B60](v274, v276, v278, v280);
              v283 = v282;

              v284 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v281, v283, &v600);

              *(v262 + 14) = v284;
              _os_log_impl(&dword_220099000, v260, v581, "Adding new pending status to database device {status: %s, device: %s}", v262, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x223D77FF0](v263, -1, -1);
              MEMORY[0x223D77FF0](v262, -1, -1);

              v95 = MEMORY[0x277D84F90];
              v102 = v585;
              v201 = v583;
              v187 = v587;
              v257 = v586;
            }

            else
            {
            }

            v285 = v258;
            MEMORY[0x223D76BD0]();
            v241 = v571;
            if (*((v596 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v596 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v318 = *((v596 & 0xFFFFFFFFFFFFFF8) + 0x10);
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v581 = v596;
          }

          v286 = [v257 identifier];
          v287 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v289 = v288;

          LOBYTE(v286) = specialized Set.contains(_:)(v287, v289, v201);

          if (v286)
          {
            v290 = v257;
            v291 = v102;
            v292 = Logger.logObject.getter();
            v293 = static os_log_type_t.default.getter();

            v294 = os_log_type_enabled(v292, v293);
            v586 = v290;
            if (v294)
            {
              v295 = swift_slowAlloc();
              v296 = swift_slowAlloc();
              v600 = v296;
              *v295 = v565;
              v297 = [v290 identifier];
              v298 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v300 = v299;

              v301 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v298, v300, &v600);

              *(v295 + 4) = v301;
              *(v295 + 12) = 2080;
              v302 = [v291 uniqueID];

              if (!v302)
              {
                goto LABEL_459;
              }

              v303 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v305 = v304;

              v307 = specialized Collection.prefix(_:)(8, v303, v305, v306);
              v309 = v308;
              v311 = v310;
              v313 = v312;

              v314 = MEMORY[0x223D76B60](v307, v309, v311, v313);
              v316 = v315;

              v317 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v314, v316, &v600);

              *(v295 + 14) = v317;
              _os_log_impl(&dword_220099000, v292, v293, "Adding reset status to pending statuses {status: %s, device: %s", v295, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x223D77FF0](v296, -1, -1);
              MEMORY[0x223D77FF0](v295, -1, -1);

              v95 = MEMORY[0x277D84F90];
              v102 = v585;
              v201 = v583;
              v187 = v587;
            }

            else
            {
            }

            v242 = v567;
            MEMORY[0x223D76BD0]();
            v238 = v589;
            v241 = v571;
            if (*((v596 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v596 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v319 = *((v596 & 0xFFFFFFFFFFFFFF8) + 0x10);
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              v238 = v589;
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v581 = v596;
          }

          else
          {

            v238 = v589;
            v242 = v567;
          }

          v235 = v584 == v242;
          v240 = v584;
        }

        while (!v235);
      }
    }

    else
    {
      v239 = *((v238 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v239)
      {
        goto LABEL_189;
      }
    }

    if (v95 >> 62)
    {
      v320 = __CocoaSet.count.getter();
      if (v320)
      {
LABEL_226:
        if (!(v95 >> 62))
        {
          __break(1u);
LABEL_462:
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }

        v321 = 0;
        v322 = v201 + 56;
        v323 = v95;
        v589 = v320;
        do
        {
          v324 = MEMORY[0x223D77050](v321, v95);
          v48 = __OFADD__(v321, 1);
          v321 = (v321 + 1);
          if (v48)
          {
            goto LABEL_386;
          }

          v325 = v324;
          v326 = [v324 identifier];
          v327 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v329 = v328;

          if (*(v201 + 16) && (v330 = *(v201 + 40), Hasher.init(_seed:)(), String.hash(into:)(), v331 = Hasher._finalize()(), v332 = -1 << *(v201 + 32), v333 = v331 & ~v332, ((*(v322 + ((v333 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v333) & 1) != 0))
          {
            v587 = v323;
            v334 = ~v332;
            while (1)
            {
              v335 = (*(v201 + 48) + 16 * v333);
              v336 = *v335 == v327 && v335[1] == v329;
              if (v336 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
                break;
              }

              v333 = (v333 + 1) & v334;
              if (((*(v322 + ((v333 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v333) & 1) == 0)
              {
                goto LABEL_241;
              }
            }

            v338 = v585;
            v339 = v325;
            v340 = Logger.logObject.getter();
            v341 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v340, v341))
            {
              LODWORD(v571) = v341;
              v584 = v340;
              v342 = swift_slowAlloc();
              v343 = swift_slowAlloc();
              v600 = v343;
              *v342 = v565;
              v586 = v339;
              v344 = [v339 identifier];
              v345 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v347 = v346;

              v348 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v345, v347, &v600);

              *(v342 + 4) = v348;
              *(v342 + 12) = 2080;
              v349 = [v338 uniqueID];

              if (!v349)
              {
                goto LABEL_460;
              }

              v350 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v352 = v351;

              v354 = specialized Collection.prefix(_:)(8, v350, v352, v353);
              v356 = v355;
              v358 = v357;
              v360 = v359;

              v361 = MEMORY[0x223D76B60](v354, v356, v358, v360);
              v363 = v362;

              v364 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v361, v363, &v600);

              *(v342 + 14) = v364;
              v365 = v584;
              _os_log_impl(&dword_220099000, v584, v571, "Removing reset status from delivered statuses {status: %s, device: %s}", v342, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x223D77FF0](v343, -1, -1);
              MEMORY[0x223D77FF0](v342, -1, -1);

              v95 = MEMORY[0x277D84F90];
              v201 = v583;
            }

            else
            {
            }

            v323 = v587;
          }

          else
          {
LABEL_241:

            v337 = v325;
            MEMORY[0x223D76BD0]();
            if (*((v595 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v595 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v366 = *((v595 & 0xFFFFFFFFFFFFFF8) + 0x10);
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

            v323 = v595;
          }
        }

        while (v321 != v589);

        v102 = v585;
        goto LABEL_250;
      }
    }

    else
    {
      v320 = *(v542 + 16);
      if (v320)
      {
        goto LABEL_226;
      }
    }

    v323 = v95;
LABEL_250:
    v367 = v561;
    if (v554)
    {
      v587 = v323;

      v368 = Logger.logObject.getter();
      v369 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v368, v369))
      {
        v370 = swift_slowAlloc();
        v589 = swift_slowAlloc();
        v600 = v589;
        *v370 = v539;
        v372 = specialized Collection.prefix(_:)(8, v557, v367, v371);
        v374 = v373;
        v376 = v375;
        v378 = v377;

        v379 = MEMORY[0x223D76B60](v372, v374, v376, v378);
        v381 = v380;
        v95 = MEMORY[0x277D84F90];

        v382 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v379, v381, &v600);

        *(v370 + 4) = v382;
        _os_log_impl(&dword_220099000, v368, v369, "Saving modified status to database {device: %s}", v370, 0xCu);
        v383 = v589;
        __swift_destroy_boxed_opaque_existential_0(v589);
        MEMORY[0x223D77FF0](v383, -1, -1);
        MEMORY[0x223D77FF0](v370, -1, -1);
      }

      else
      {
      }

      v384 = objc_allocWithZone(SKADatabasePublishedLocalStatusDevice);
      v385 = Array._bridgeToObjectiveC()().super.isa;

      v386 = Array._bridgeToObjectiveC()().super.isa;

      v387 = v560;
      [v384 initWithIDSIdentifier:v560 pendingStatuses:v385 deliveredStatuses:v386 discoverySource:1];

      MEMORY[0x223D76BD0]();
      if (*((v599 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v599 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v389 = *((v599 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

LABEL_258:
      v99 = v599;
      goto LABEL_63;
    }

LABEL_62:
    v99 = v564;
LABEL_63:
    v96 = v563;
    if (v563 == v555)
    {
      goto LABEL_260;
    }
  }

  v107 = 0;
  v589 = v95;
  while (1)
  {
    if (v591)
    {
      v108 = MEMORY[0x223D77050](v107, v588);
    }

    else
    {
      if (v107 >= *(v577 + 16))
      {
        goto LABEL_381;
      }

      v108 = *&v572[8 * v107];
    }

    v109 = v108;
    v48 = __OFADD__(v107++, 1);
    if (v48)
    {
      break;
    }

    [v108 targetDevicesFlags];
    v25 = v592;
    LSKTargetDeviceFlags.init(rawValue:)();
    v110 = LSKTargetDeviceFlags.idsDeviceTypes.getter();
    (*v590)(v25, v593);
    v111 = [v102 deviceType];
    if (!*(v110 + 16))
    {
      goto LABEL_74;
    }

    v112 = v111;
    v113 = *(v110 + 40);
    Hasher.init(_seed:)();
    v25 = &v600;
    MEMORY[0x223D772F0](v112);
    v114 = Hasher._finalize()();
    v115 = -1 << *(v110 + 32);
    v116 = v114 & ~v115;
    if ((*(v110 + 56 + ((v116 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v116))
    {
      v117 = ~v115;
      while (*(*(v110 + 48) + 8 * v116) != v112)
      {
        v116 = (v116 + 1) & v117;
        if (((*(v110 + 56 + ((v116 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v116) & 1) == 0)
        {
          goto LABEL_74;
        }
      }

      v118 = v109;
      v25 = &v597;
      MEMORY[0x223D76BD0]();
      if (*((v597 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v597 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v119 = *((v597 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v589 = v597;
      if (v107 == v106)
      {
        goto LABEL_91;
      }
    }

    else
    {
LABEL_74:

      if (v107 == v106)
      {
        goto LABEL_91;
      }
    }
  }

  __break(1u);
LABEL_361:
  v498 = v596;
  v459 = MEMORY[0x277D84F90];
LABEL_363:

  v600 = v459;
  if (v498 >> 62)
  {
    v499 = __CocoaSet.count.getter();
    if (v499)
    {
      goto LABEL_365;
    }

    goto LABEL_413;
  }

  v499 = *((v498 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v499)
  {
LABEL_413:
    v508 = MEMORY[0x277D84F90];
    goto LABEL_414;
  }

LABEL_365:
  v500 = 0;
  do
  {
    if ((v498 & 0xC000000000000001) != 0)
    {
      v502 = MEMORY[0x223D77050](v500, v498);
    }

    else
    {
      if (v500 >= *(v498 + 16))
      {
        goto LABEL_399;
      }

      v502 = *(v498 + 8 * v500 + 32);
    }

    v503 = v502;
    v504 = v500 + 1;
    if (__OFADD__(v500, 1))
    {
      goto LABEL_398;
    }

    v505 = [v502 pendingStatuses];
    v506 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v506 >> 62)
    {
      v507 = __CocoaSet.count.getter();
    }

    else
    {
      v507 = *((v506 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v507)
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v501 = *(v600 + 2);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    else
    {
    }

    v25 = v580;
    ++v500;
  }

  while (v504 != v499);
  v508 = v600;
LABEL_414:

  v509 = v508;
  if (v508 >> 62)
  {
    goto LABEL_442;
  }

  v510 = *((v508 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v510)
  {
LABEL_416:
    v508 = 0;
    v592 = OBJC_IVAR___SKALocalStatusServer_screenOffStatusTimeoutSeconds;
    v588 = v509 & 0xC000000000000001;
    v585 = (v509 + 32);
    v511 = (v541 + 8);
    v591 = MEMORY[0x277D84F90];
    v587 = v509;
    v586 = v510;
    while (1)
    {
      if (v588)
      {
        v512 = MEMORY[0x223D77050](v508);
        v48 = __OFADD__(v508++, 1);
        if (v48)
        {
          goto LABEL_439;
        }
      }

      else
      {
        if (v508 >= *(v509 + 16))
        {
          goto LABEL_441;
        }

        v512 = v585[v508];
        v48 = __OFADD__(v508++, 1);
        if (v48)
        {
LABEL_439:
          __break(1u);
LABEL_440:
          __break(1u);
LABEL_441:
          __break(1u);
LABEL_442:
          v510 = __CocoaSet.count.getter();
          v509 = v508;
          if (!v510)
          {
            break;
          }

          goto LABEL_416;
        }
      }

      v589 = v512;
      v513 = [v512 pendingStatuses];
      v514 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v590 = v508;
      if (v514 >> 62)
      {
        v515 = __CocoaSet.count.getter();
        if (!v515)
        {
          goto LABEL_417;
        }
      }

      else
      {
        v515 = *((v514 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v515)
        {
          goto LABEL_417;
        }
      }

      if (v515 < 1)
      {
        goto LABEL_440;
      }

      v516 = 0;
      v593 = (v514 & 0xC000000000000001);
      v594 = v514;
      do
      {
        if (v593)
        {
          v517 = MEMORY[0x223D77050](v516, v514);
        }

        else
        {
          v517 = *(v514 + 8 * v516 + 32);
        }

        v518 = v517;
        v519 = *(v25 + v592);
        v520 = [v517 modificationDate];
        v521 = v574;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v522 = v573;
        Date.addingTimeInterval(_:)();
        v523 = *v511;
        v524 = v575;
        (*v511)(v521, v575);
        static Date.now.getter();
        v525 = static Date.> infix(_:_:)();
        v523(v521, v524);
        v523(v522, v524);
        if (v525)
        {
          v526 = v518;
          MEMORY[0x223D76BD0]();
          if (*((v597 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v597 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v527 = *((v597 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v591 = v597;
        }

        else
        {
        }

        v514 = v594;
        ++v516;
        v25 = v580;
      }

      while (v515 != v516);
LABEL_417:

      v508 = v590;
      v509 = v587;
      if (v590 == v586)
      {
        goto LABEL_444;
      }
    }
  }

  v591 = MEMORY[0x277D84F90];
LABEL_444:

  if (v591 >> 62)
  {
    v528 = __CocoaSet.count.getter();
  }

  else
  {
    v528 = *((v591 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v528)
  {
    *(v25 + OBJC_IVAR___SKALocalStatusServer_recentPendingStatus) = 0;
    v529 = *(v25 + OBJC_IVAR___SKALocalStatusServer_browseTask);
    if (v529)
    {
      v490 = v529;
      [v490 setControlFlags_];
      v492 = Logger.logObject.getter();
      v530 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v492, v530))
      {
        v531 = swift_slowAlloc();
        *v531 = 0;
        _os_log_impl(&dword_220099000, v492, v530, "Removed bleScreenOff control flag from browseCompanionLink since all pending statuses are at least 3 days old", v531, 2u);
        MEMORY[0x223D77FF0](v531, -1, -1);
      }

LABEL_450:
    }
  }

LABEL_451:

  v532 = Logger.logObject.getter();
  v533 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v532, v533))
  {
    v534 = swift_slowAlloc();
    *v534 = 134218240;
    if (v584)
    {
      v535 = __CocoaSet.count.getter();
    }

    else
    {
      v535 = *((v564 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v534 + 4) = v535;

    *(v534 + 12) = 2048;
    *(v534 + 14) = *(v583 + 16);
    _os_log_impl(&dword_220099000, v532, v533, "reconcilePendingStatusesOnDevices END {devicesToSave.count: %ld, deviceIDsToRemove.count: %ld}", v534, 0x16u);
    MEMORY[0x223D77FF0](v534, -1, -1);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

LABEL_356:

LABEL_357:
  v488 = *MEMORY[0x277D85DE8];
  return result;
}

void SKALocalStatusServer.stopBrowserTask()()
{
  v1 = v0 + OBJC_IVAR___SKALocalStatusServer_browseTask;
  v2 = *(v0 + OBJC_IVAR___SKALocalStatusServer_browseTask);
  if (v2)
  {
    v3 = *(v1 + 24);
    v4 = *(v1 + 8);
    v5 = one-time initialization token for log;
    v6 = v2;

    v7 = v3;
    if (v5 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, log);
    v9 = v6;

    v10 = v7;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v14 = v34;
      *v13 = 136315138;
      v33 = v3;
      v15 = [v9 activeDevices];
      v16 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for RPCompanionLinkDevice, 0x277D44170);
      v32 = v9;
      v17 = v10;
      v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v19 = MEMORY[0x223D76C00](v18, v16);
      v21 = v20;

      v22 = v19;
      v3 = v33;
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v21, &v34);

      *(v13 + 4) = v23;
      v10 = v17;
      v9 = v32;
      _os_log_impl(&dword_220099000, v11, v12, "Stopping existing browser task {activeDevices.count: %s}", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x223D77FF0](v14, -1, -1);
      MEMORY[0x223D77FF0](v13, -1, -1);
    }

    [v9 invalidate];
    if (v3)
    {
      v24 = v10;
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_220099000, v25, v26, "Stopping existing browser task for shared home", v27, 2u);
        MEMORY[0x223D77FF0](v27, -1, -1);
      }

      [v24 invalidate];
    }

    v28 = *v1;
    v29 = *(v1 + 8);
    v30 = *(v1 + 16);
    v31 = *(v1 + 24);
    *v1 = 0u;
    *(v1 + 16) = 0u;

    outlined consume of SKALocalStatusServer.BrowseTask?(v28, v29, v30, v31);
  }
}

void SKALocalStatusServer.deliverAllPendingStatuses(in:reason:)(void *a1, uint64_t a2, unint64_t a3)
{
  v5 = v4;
  v6 = v3;
  v143 = a2;
  v152 = a1;
  v177 = *MEMORY[0x277D85DE8];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v137 = &v134 - v10;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit012LSKPublishedB0Vy10Foundation4DataVGMd, &_s14LocalStatusKit012LSKPublishedB0Vy10Foundation4DataVGMR);
  v140 = *(v149 - 8);
  v11 = *(v140 + 64);
  v12 = MEMORY[0x28223BE20](v149);
  v148 = &v134 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v157 = &v134 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit9LSKDomainOSgMd, &_s14LocalStatusKit9LSKDomainOSgMR);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v156 = &v134 - v17;
  v155 = type metadata accessor for LSKDomain();
  v145 = *(v155 - 8);
  v18 = *(v145 + 64);
  v19 = MEMORY[0x28223BE20](v155);
  v154 = &v134 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v153 = &v134 - v21;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMR);
  v142 = *(v159 - 8);
  v22 = *(v142 + 64);
  v23 = MEMORY[0x28223BE20](v159);
  v25 = &v134 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v158 = &v134 - v26;
  if (one-time initialization token for log != -1)
  {
    goto LABEL_72;
  }

  while (1)
  {
    v27 = type metadata accessor for Logger();
    v28 = __swift_project_value_buffer(v27, log);

    v150 = v28;
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();

    v31 = os_log_type_enabled(v29, v30);
    v151 = v25;
    v138 = a3;
    if (v31)
    {
      v32 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v175 = v25;
      *v32 = 136315138;
      *(v32 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v143, a3, &v175);
      _os_log_impl(&dword_220099000, v29, v30, "deliverAllPendingStatuses START {reason: %s}", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x223D77FF0](v25, -1, -1);
      MEMORY[0x223D77FF0](v32, -1, -1);
    }

    v33 = SKALocalStatusServer.getFilteredRecipientIDSDevices(from:)(0xD000000000000025, 0x80000002201AC640);
    v34 = *(v6 + 176);
    v175 = 0;
    v147 = v34;
    v35 = [v34 allPublishedLocalStatusDevicesInDatabaseContext:v152 error:&v175];
    v36 = v175;
    if (!v35)
    {
      v64 = v175;
LABEL_63:

      _convertNSErrorToError(_:)();

      swift_willThrow();
      goto LABEL_101;
    }

    v37 = v35;
    v160 = v33;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SKADatabasePublishedLocalStatusDevice, off_27843D3B8);
    v38 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v36;

    v174 = MEMORY[0x277D84F90];
    if (v38 >> 62)
    {
      v40 = __CocoaSet.count.getter();
    }

    else
    {
      v40 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v41 = MEMORY[0x277D84F90];
    v168 = v6;
    if (v40)
    {
      v42 = 0;
      v165 = (v38 & 0xFFFFFFFFFFFFFF8);
      v166 = v38 & 0xC000000000000001;
      v163 = v38 + 32;
      v164 = "re/SKALocalStatusServer.swift";
      v161 = v40;
      v162 = v38;
      while (1)
      {
        if (v166)
        {
          v43 = MEMORY[0x223D77050](v42, v38);
        }

        else
        {
          if (v42 >= *(v165 + 2))
          {
            goto LABEL_69;
          }

          v43 = *(v163 + 8 * v42);
        }

        v25 = v43;
        v44 = __OFADD__(v42, 1);
        v45 = v42 + 1;
        if (v44)
        {
          break;
        }

        v172 = v45;
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v46 = [v25 idsIdentifier];
        v169 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v170 = v47;

        v48 = SKALocalStatusServer.getFilteredRecipientIDSDevices(from:)(0xD000000000000025, v164 | 0x8000000000000000);
        v49 = v48;
        v50 = v48 & 0xFFFFFFFFFFFFFF8;
        if (v48 >> 62)
        {
          v51 = __CocoaSet.count.getter();
        }

        else
        {
          v51 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v171 = v25;
        v173 = v5;
        if (v51)
        {
          v52 = 0;
          v53 = MEMORY[0x277D84F90];
          while (2)
          {
            a3 = v52;
            while (1)
            {
              if ((v49 & 0xC000000000000001) != 0)
              {
                v54 = MEMORY[0x223D77050](a3, v49);
              }

              else
              {
                if (a3 >= *(v50 + 16))
                {
                  goto LABEL_65;
                }

                v54 = *(v49 + 8 * a3 + 32);
              }

              v25 = v54;
              v52 = a3 + 1;
              if (__OFADD__(a3, 1))
              {
                __break(1u);
LABEL_65:
                __break(1u);
LABEL_66:

                outlined destroy of UUID?(v51, &_s14LocalStatusKit9LSKDomainOSgMd, &_s14LocalStatusKit9LSKDomainOSgMR);
                v102 = type metadata accessor for LSKError();
                lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type LSKError and conformance LSKError, MEMORY[0x277D24388]);
                swift_allocError();
                v104 = v103;
                v175 = 0;
                v176 = 0xE000000000000000;
                _StringGuts.grow(_:)(33);

                v175 = 0xD00000000000001FLL;
                v176 = 0x80000002201AC6D0;
                v105 = [v38 keyDomain];
                v106 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v108 = v107;

                MEMORY[0x223D76B90](v106, v108);

                v109 = v176;
                *v104 = v175;
                v104[1] = v109;
                (*(*(v102 - 8) + 104))(v104, *MEMORY[0x277D24378], v102);
                swift_willThrow();

                goto LABEL_101;
              }

              v55 = [v54 uniqueID];
              if (v55)
              {
                break;
              }

              ++a3;
              if (v52 == v51)
              {
                goto LABEL_37;
              }
            }

            v56 = v55;
            v167 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            a3 = v57;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v53 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v53 + 2) + 1, 1, v53);
            }

            v38 = *(v53 + 2);
            v58 = *(v53 + 3);
            v25 = (v38 + 1);
            if (v38 >= v58 >> 1)
            {
              v53 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v58 > 1), v38 + 1, 1, v53);
            }

            *(v53 + 2) = v25;
            v59 = &v53[16 * v38];
            *(v59 + 4) = v167;
            *(v59 + 5) = a3;
            if (v52 != v51)
            {
              continue;
            }

            break;
          }
        }

        else
        {
          v53 = MEMORY[0x277D84F90];
        }

LABEL_37:

        v175 = v169;
        v176 = v170;
        MEMORY[0x28223BE20](v60);
        *(&v134 - 2) = &v175;
        v61 = v173;
        v62 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), (&v134 - 4), v53);
        v5 = v61;

        if (v62)
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v63 = *(v174 + 16);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        v6 = v168;
        v38 = v162;
        v42 = v172;
        if (v172 == v161)
        {
          v41 = v174;
          goto LABEL_43;
        }
      }

      __break(1u);
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

LABEL_43:
    v172 = v41;

    v175 = 0;
    v65 = [v147 allPublishedLocalStatusesInDatabaseContext:v152 error:&v175];
    v66 = v175;
    if (!v65)
    {
      v64 = v175;

      goto LABEL_63;
    }

    v67 = v65;
    v167 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SKADatabasePublishedLocalStatus, off_27843D3B0);
    v68 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v69 = v66;

    v135 = swift_allocObject();
    *(v135 + 16) = 0;
    if (!(v68 >> 62))
    {
      a3 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!a3)
      {
        break;
      }

      goto LABEL_46;
    }

    a3 = __CocoaSet.count.getter();
    if (!a3)
    {
      break;
    }

LABEL_46:
    v71 = 0;
    v169 = OBJC_IVAR___SKALocalStatusServer_deliverySubjects;
    v163 = v68 & 0xFFFFFFFFFFFFFF8;
    v164 = v68 & 0xC000000000000001;
    v162 = (v145 + 48);
    v147 = (v145 + 32);
    v146 = (v145 + 16);
    v145 += 8;
    v161 = (v142 + 8);
    v142 += 16;
    v141 = (v140 + 16);
    v140 += 8;
    *&v70 = 136315138;
    v136 = v70;
    v166 = v68;
    v144 = a3;
    while (1)
    {
      if (v164)
      {
        v82 = MEMORY[0x223D77050](v71, v68);
      }

      else
      {
        if (v71 >= *(v163 + 16))
        {
          goto LABEL_71;
        }

        v82 = *(v68 + 8 * v71 + 32);
      }

      v38 = v82;
      if (__OFADD__(v71, 1))
      {
        break;
      }

      v171 = (v71 + 1);
      v83 = [v82 keyDomain];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v51 = v156;
      LSKDomain.init(rawValue:)();
      v84 = v155;
      if ((*v162)(v51, 1, v155) == 1)
      {
        goto LABEL_66;
      }

      v173 = v5;
      v85 = v153;
      (*v147)(v153, v51, v84);
      (*v146)(v154, v85, v84);
      v170 = v38;
      v86 = [v38 keyName];
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v87;

      lazy protocol witness table accessor for type Data and conformance Data();
      lazy protocol witness table accessor for type Data and conformance Data();
      v88 = v158;
      LSKKey.init(domain:name:)();
      (*v145)(v85, v84);
      v89 = v169;
      swift_beginAccess();
      if (*(*&v89[v6] + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(v88), (v90 & 1) != 0))
      {
        swift_endAccess();

        (*v161)(v88, v159);
        v5 = v173;
        v68 = v166;
      }

      else
      {
        swift_endAccess();
        v68 = v166;
        v91 = v173;
        SKALocalStatusServer.currentStatus(for:inDatabaseStatuses:devices:idsDevices:)(v88, v166, v172, v160, v157);
        v92 = v151;
        if (v91)
        {

          (*v161)(v88, v159);

          goto LABEL_101;
        }

        v173 = 0;
        v93 = v159;
        (*v142)(v151, v88, v159);
        v94 = Logger.logObject.getter();
        v95 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v94, v95))
        {
          v96 = swift_slowAlloc();
          v139 = swift_slowAlloc();
          v175 = v139;
          *v96 = v136;
          lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type LSKKey<Data> and conformance LSKKey<A>, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMR);
          v97 = dispatch thunk of CustomStringConvertible.description.getter();
          v99 = v98;
          v165 = *v161;
          v165(v92, v93);
          v100 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v97, v99, &v175);
          v68 = v166;

          *(v96 + 4) = v100;
          _os_log_impl(&dword_220099000, v94, v95, "Adding new delivery subject {key: %s}", v96, 0xCu);
          v101 = v139;
          __swift_destroy_boxed_opaque_existential_0(v139);
          MEMORY[0x223D77FF0](v101, -1, -1);
          MEMORY[0x223D77FF0](v96, -1, -1);
        }

        else
        {

          v165 = *v161;
          v165(v92, v93);
        }

        v72 = v157;
        v25 = v149;
        (*v141)(v148, v157, v149);
        v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy14LocalStatusKit012LSKPublishedF0Vy10Foundation4DataVGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy14LocalStatusKit012LSKPublishedF0Vy10Foundation4DataVGs5NeverOGMR);
        v74 = *(v73 + 48);
        v75 = *(v73 + 52);
        swift_allocObject();
        v76 = CurrentValueSubject.init(_:)();
        v6 = v168;
        v77 = v169;
        swift_beginAccess();
        v78 = *&v77[v6];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v174 = *&v77[v6];
        *&v77[v6] = 0x8000000000000000;
        v80 = v76;
        v81 = v158;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v80, v158, isUniquelyReferenced_nonNull_native);
        *&v77[v6] = v174;
        swift_endAccess();

        (*v140)(v72, v25);
        v165(v81, v159);
        v5 = v173;
      }

      a3 = v144;
      ++v71;
      if (v171 == v144)
      {
        goto LABEL_75;
      }
    }

LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    swift_once();
  }

LABEL_75:

  v175 = MEMORY[0x277D84F90];
  v110 = v172;
  if ((v172 & 0x8000000000000000) != 0 || (v172 & 0x4000000000000000) != 0)
  {
    goto LABEL_94;
  }

  v111 = *(v172 + 16);
  if (v111)
  {
    do
    {
      v112 = 0;
      v6 = v110 & 0xC000000000000001;
      while (1)
      {
        if (v6)
        {
          v114 = MEMORY[0x223D77050](v112);
        }

        else
        {
          if (v112 >= *(v110 + 16))
          {
            goto LABEL_93;
          }

          v114 = *(v110 + 8 * v112 + 32);
        }

        v115 = v114;
        v116 = v112 + 1;
        if (__OFADD__(v112, 1))
        {
          break;
        }

        v117 = [v114 pendingStatuses];
        v118 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v118 >> 62)
        {
          v119 = __CocoaSet.count.getter();
        }

        else
        {
          v119 = *((v118 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v119)
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v113 = *(v175 + 2);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        ++v112;
        v110 = v172;
        if (v116 == v111)
        {
          v120 = v175;
          v6 = v168;
          goto LABEL_96;
        }
      }

      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      v121 = __CocoaSet.count.getter();
      v110 = v172;
      v111 = v121;
    }

    while (v121);
  }

  v120 = MEMORY[0x277D84F90];
LABEL_96:

  if ((v120 & 0x8000000000000000) != 0 || (v120 & 0x4000000000000000) != 0)
  {
    if (__CocoaSet.count.getter())
    {
      goto LABEL_100;
    }

LABEL_99:
    if (*(v135 + 16) == 1)
    {
      goto LABEL_100;
    }

    v131 = Logger.logObject.getter();
    v132 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v131, v132))
    {
      v133 = swift_slowAlloc();
      *v133 = 0;
      _os_log_impl(&dword_220099000, v131, v132, "deliverAllPendingStatuses SKIP. No devices with pending statuses", v133, 2u);
      MEMORY[0x223D77FF0](v133, -1, -1);
    }
  }

  else
  {
    if (!*(v120 + 16))
    {
      goto LABEL_99;
    }

LABEL_100:
    v122 = type metadata accessor for TaskPriority();
    v123 = v137;
    (*(*(v122 - 8) + 56))(v137, 1, 1, v122);
    v124 = lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type SKALocalStatusServer and conformance SKALocalStatusServer, type metadata accessor for SKALocalStatusServer);
    v125 = swift_allocObject();
    v125[2] = v6;
    v125[3] = v124;
    v125[4] = v120;
    v125[5] = v6;
    v126 = v138;
    v125[6] = v143;
    v125[7] = v126;
    v127 = v152;
    v128 = v135;
    v125[8] = v152;
    v125[9] = v128;
    swift_retain_n();

    v129 = v127;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v123, &async function pointer to partial apply for closure #3 in SKALocalStatusServer.deliverAllPendingStatuses(in:reason:), v125);
  }

LABEL_101:
  v130 = *MEMORY[0x277D85DE8];
}

uint64_t SKALocalStatusServer.getFilteredRecipientIDSDevices(from:)(uint64_t a1, unint64_t a2)
{
  v5 = [*(v2 + 184) idsDevices];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for IDSDevice, 0x277D186E0);
    v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v8 = SKALocalStatusServer.getRecipientDeviceTypesForAllPublishedStatuses()();
    v34 = MEMORY[0x277D84F90];
    if (v7 >> 62)
    {
      goto LABEL_39;
    }

    for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
    {
      v10 = 0;
      v32 = v7 + 32;
      v11 = (v8 + 7);
      v12 = MEMORY[0x277D84F90];
      while (1)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x223D77050](v10, v7);
        }

        else
        {
          if (v10 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_38;
          }

          v13 = *(v32 + 8 * v10);
        }

        v14 = v13;
        if (__OFADD__(v10++, 1))
        {
          break;
        }

        v16 = [v13 deviceType];
        if (!v8[2])
        {
          goto LABEL_15;
        }

        v17 = v16;
        v18 = v8[5];
        Hasher.init(_seed:)();
        MEMORY[0x223D772F0](v17);
        v19 = Hasher._finalize()();
        v20 = -1 << *(v8 + 32);
        v21 = v19 & ~v20;
        if (((*&v11[(v21 >> 3) & 0xFFFFFFFFFFFFFF8] >> v21) & 1) == 0)
        {
          goto LABEL_15;
        }

        v22 = ~v20;
        while (*(v8[6] + 8 * v21) != v17)
        {
          v21 = (v21 + 1) & v22;
          if (((*&v11[(v21 >> 3) & 0xFFFFFFFFFFFFFF8] >> v21) & 1) == 0)
          {
            goto LABEL_15;
          }
        }

        v23 = [v14 deviceType];
        if (v23 > 4)
        {
          if (v23 == 9)
          {
            [v14 operatingSystemVersion];
            if (v33 > 0)
            {
              goto LABEL_26;
            }
          }

          goto LABEL_15;
        }

        if (v23 <= 1)
        {
          if (v23 == 1)
          {
            [v14 operatingSystemVersion];
            if (v33 > 13)
            {
              goto LABEL_26;
            }
          }

LABEL_15:

          if (v10 == i)
          {
            goto LABEL_31;
          }
        }

        else
        {
          [v14 operatingSystemVersion];
          if (v33 <= 16)
          {
            goto LABEL_15;
          }

LABEL_26:
          v24 = v14;
          MEMORY[0x223D76BD0]();
          if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v25 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v12 = v34;
          if (v10 == i)
          {
LABEL_31:

            goto LABEL_41;
          }
        }
      }

      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      ;
    }

    v12 = MEMORY[0x277D84F90];
LABEL_41:
  }

  else
  {
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, log);

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v33 = v30;
      *v29 = 136315138;
      *(v29 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v33);
      _os_log_impl(&dword_220099000, v27, v28, "%s FAILED - idsDeviceProviding.idsDevices is nil", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x223D77FF0](v30, -1, -1);
      MEMORY[0x223D77FF0](v29, -1, -1);
    }

    return MEMORY[0x277D84F90];
  }

  return v12;
}

uint64_t SKALocalStatusServer.currentStatus(for:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26[1] = *MEMORY[0x277D85DE8];
  v7 = [*(v3 + 184) idsDevices];
  if (!v7)
  {
    v22 = type metadata accessor for LSKError();
    lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type LSKError and conformance LSKError, MEMORY[0x277D24388]);
    swift_allocError();
    *v23 = 0xD00000000000001DLL;
    v23[1] = 0x80000002201AC5E0;
    (*(*(v22 - 8) + 104))(v23, *MEMORY[0x277D24380], v22);
LABEL_9:
    result = swift_willThrow();
    goto LABEL_10;
  }

  v8 = v7;
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for IDSDevice, 0x277D186E0);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v10 = *(v3 + 176);
  v26[0] = 0;
  v11 = [v10 allPublishedLocalStatusesInDatabaseContext:a2 error:v26];
  v12 = v26[0];
  if (!v11)
  {
    v24 = v26[0];

LABEL_8:
    _convertNSErrorToError(_:)();

    goto LABEL_9;
  }

  v13 = v11;
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SKADatabasePublishedLocalStatus, off_27843D3B0);
  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v12;

  v26[0] = 0;
  v16 = [v10 allPublishedLocalStatusDevicesInDatabaseContext:a2 error:v26];
  v17 = v26[0];
  if (!v16)
  {
    v24 = v26[0];

    goto LABEL_8;
  }

  v18 = v16;
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SKADatabasePublishedLocalStatusDevice, off_27843D3B8);
  v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v17;

  SKALocalStatusServer.currentStatus(for:inDatabaseStatuses:devices:idsDevices:)(a1, v14, v19, v9, a3);

LABEL_10:
  v25 = *MEMORY[0x277D85DE8];
  return result;
}

void SKALocalStatusServer.status(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v31 = a2;
  v29 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit012LSKPublishedB0Vy10Foundation4DataVGMd, &_s14LocalStatusKit012LSKPublishedB0Vy10Foundation4DataVGMR);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA19CurrentValueSubjectCy14LocalStatusKit012LSKPublishedH0Vy10Foundation4DataVGs5NeverOGGMd, &_s7Combine14AsyncPublisherVyAA19CurrentValueSubjectCy14LocalStatusKit012LSKPublishedH0Vy10Foundation4DataVGs5NeverOGGMR);
  v28 = *(v12 - 8);
  v13 = *(v28 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v27 - v14;
  v16 = OBJC_IVAR___SKALocalStatusServer_deliverySubjects;
  swift_beginAccess();
  v17 = *(v5 + v16);
  if (*(v17 + 16) && (v18 = specialized __RawDictionaryStorage.find<A>(_:)(a3), (v19 & 1) != 0))
  {
    v20 = *(*(v17 + 56) + 8 * v18);
    swift_endAccess();

    CurrentValueSubject.value.getter();
    v30 = v20;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy14LocalStatusKit012LSKPublishedF0Vy10Foundation4DataVGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy14LocalStatusKit012LSKPublishedF0Vy10Foundation4DataVGs5NeverOGMR);
    v22 = lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type CurrentValueSubject<LSKPublishedStatus<Data>, Never> and conformance CurrentValueSubject<A, B>, &_s7Combine19CurrentValueSubjectCy14LocalStatusKit012LSKPublishedF0Vy10Foundation4DataVGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy14LocalStatusKit012LSKPublishedF0Vy10Foundation4DataVGs5NeverOGMR);
    MEMORY[0x223D769B0](v21, v22);
    lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type AsyncPublisher<CurrentValueSubject<LSKPublishedStatus<Data>, Never>> and conformance AsyncPublisher<A>, &_s7Combine14AsyncPublisherVyAA19CurrentValueSubjectCy14LocalStatusKit012LSKPublishedH0Vy10Foundation4DataVGs5NeverOGGMd, &_s7Combine14AsyncPublisherVyAA19CurrentValueSubjectCy14LocalStatusKit012LSKPublishedH0Vy10Foundation4DataVGs5NeverOGGMR);
    lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type LSKPublishedStatus<Data> and conformance LSKPublishedStatus<A>, &_s14LocalStatusKit012LSKPublishedB0Vy10Foundation4DataVGMd, &_s14LocalStatusKit012LSKPublishedB0Vy10Foundation4DataVGMR);
    lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type LSKPublishedStatus<Data> and conformance LSKPublishedStatus<A>, &_s14LocalStatusKit012LSKPublishedB0Vy10Foundation4DataVGMd, &_s14LocalStatusKit012LSKPublishedB0Vy10Foundation4DataVGMR);
    v23 = v31;
    AsyncSequence<>.xpc.getter();

    (*(v28 + 8))(v15, v12);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGMd, &_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGMR);
    (*(*(v24 - 8) + 56))(v23, 0, 1, v24);
  }

  else
  {
    swift_endAccess();
    v25 = [*(v5 + 168) newBackgroundContext];
    SKALocalStatusServer.currentStatus(for:in:)(a3, v25, v11);

    if (!v4)
    {
      (*(v8 + 32))(v29, v11, v7);
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGMd, &_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGMR);
      (*(*(v26 - 8) + 56))(v31, 1, 1, v26);
    }
  }
}

uint64_t SKALocalStatusServer.subscribe(to:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v65 = a2;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA19CurrentValueSubjectCySay14LocalStatusKit08LSKLocalH11ObservationVy10Foundation4DataVGGs5NeverOGGMd, &_s7Combine14AsyncPublisherVyAA19CurrentValueSubjectCySay14LocalStatusKit08LSKLocalH11ObservationVy10Foundation4DataVGGs5NeverOGGMR);
  v5 = *(v67 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v67);
  v66 = &v60 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMR);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v60 - v14;
  v16 = OBJC_IVAR___SKALocalStatusServer_subscriptionSubjects;
  swift_beginAccess();
  v17 = *(v2 + v16);
  if (*(v17 + 16) && (v18 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v19 & 1) != 0))
  {
    v20 = *(*(v17 + 56) + 8 * v18);
    swift_endAccess();
    v21 = one-time initialization token for log;

    if (v21 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, log);
    v23 = v9;
    v24 = v8;
    (*(v9 + 16))(v15, a1, v8);
    swift_retain_n();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v68[0] = v64;
      *v27 = 136315394;
      lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type LSKKey<Data> and conformance LSKKey<A>, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMR);
      LODWORD(v63) = v26;
      v28 = dispatch thunk of CustomStringConvertible.description.getter();
      v30 = v29;
      (*(v23 + 8))(v15, v24);
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, v68);

      *(v27 + 4) = v31;
      *(v27 + 12) = 2048;
      CurrentValueSubject.value.getter();
      v32 = *(v69 + 16);

      *(v27 + 14) = v32;

      _os_log_impl(&dword_220099000, v25, v63, "Subribing to existing subject {key: %s, observations.count: %ld}", v27, 0x16u);
      v33 = v64;
      __swift_destroy_boxed_opaque_existential_0(v64);
      MEMORY[0x223D77FF0](v33, -1, -1);
      MEMORY[0x223D77FF0](v27, -1, -1);
    }

    else
    {

      (*(v23 + 8))(v15, v8);
    }

    v68[0] = v20;
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySay14LocalStatusKit08LSKLocalF11ObservationVy10Foundation4DataVGGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySay14LocalStatusKit08LSKLocalF11ObservationVy10Foundation4DataVGGs5NeverOGMR);
    v57 = lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type CurrentValueSubject<[LSKLocalStatusObservation<Data>], Never> and conformance CurrentValueSubject<A, B>, &_s7Combine19CurrentValueSubjectCySay14LocalStatusKit08LSKLocalF11ObservationVy10Foundation4DataVGGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySay14LocalStatusKit08LSKLocalF11ObservationVy10Foundation4DataVGGs5NeverOGMR);
    v58 = v66;
    MEMORY[0x223D769B0](v56, v57);
    lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type AsyncPublisher<CurrentValueSubject<[LSKLocalStatusObservation<Data>], Never>> and conformance AsyncPublisher<A>, &_s7Combine14AsyncPublisherVyAA19CurrentValueSubjectCySay14LocalStatusKit08LSKLocalH11ObservationVy10Foundation4DataVGGs5NeverOGGMd, &_s7Combine14AsyncPublisherVyAA19CurrentValueSubjectCySay14LocalStatusKit08LSKLocalH11ObservationVy10Foundation4DataVGGs5NeverOGGMR);
    lazy protocol witness table accessor for type [LSKLocalStatusObservation<Data>] and conformance <A> [A](&lazy protocol witness table cache variable for type [LSKLocalStatusObservation<Data>] and conformance <A> [A], &lazy protocol witness table cache variable for type LSKLocalStatusObservation<Data> and conformance LSKLocalStatusObservation<A>);
    lazy protocol witness table accessor for type [LSKLocalStatusObservation<Data>] and conformance <A> [A](&lazy protocol witness table cache variable for type [LSKLocalStatusObservation<Data>] and conformance <A> [A], &lazy protocol witness table cache variable for type LSKLocalStatusObservation<Data> and conformance LSKLocalStatusObservation<A>);
    v59 = v67;
    AsyncSequence<>.xpc.getter();

    return (*(v5 + 8))(v58, v59);
  }

  else
  {
    v64 = v5;
    swift_endAccess();
    v68[0] = MEMORY[0x277D84F90];
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySay14LocalStatusKit08LSKLocalF11ObservationVy10Foundation4DataVGGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySay14LocalStatusKit08LSKLocalF11ObservationVy10Foundation4DataVGGs5NeverOGMR);
    v35 = *(v34 + 48);
    v36 = *(v34 + 52);
    v61 = v34;
    swift_allocObject();
    v62 = CurrentValueSubject.init(_:)();
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    __swift_project_value_buffer(v37, log);
    v38 = *(v9 + 16);
    v63 = a1;
    v39 = v8;
    v38(v13, a1, v8);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v68[0] = v60;
      *v42 = 136315138;
      lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type LSKKey<Data> and conformance LSKKey<A>, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMR);
      v43 = dispatch thunk of CustomStringConvertible.description.getter();
      v44 = v39;
      v46 = v45;
      (*(v9 + 8))(v13, v44);
      v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v46, v68);

      *(v42 + 4) = v47;
      _os_log_impl(&dword_220099000, v40, v41, "Subscribing to new subject {key: %s}", v42, 0xCu);
      v48 = v60;
      __swift_destroy_boxed_opaque_existential_0(v60);
      MEMORY[0x223D77FF0](v48, -1, -1);
      MEMORY[0x223D77FF0](v42, -1, -1);
    }

    else
    {

      (*(v9 + 8))(v13, v8);
    }

    swift_beginAccess();
    v49 = v62;

    v50 = *(v3 + v16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v69 = *(v3 + v16);
    *(v3 + v16) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v49, v63, isUniquelyReferenced_nonNull_native);
    *(v3 + v16) = v69;
    swift_endAccess();
    v68[0] = v49;
    v52 = lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type CurrentValueSubject<[LSKLocalStatusObservation<Data>], Never> and conformance CurrentValueSubject<A, B>, &_s7Combine19CurrentValueSubjectCySay14LocalStatusKit08LSKLocalF11ObservationVy10Foundation4DataVGGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySay14LocalStatusKit08LSKLocalF11ObservationVy10Foundation4DataVGGs5NeverOGMR);
    v53 = v66;
    MEMORY[0x223D769B0](v61, v52);
    lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type AsyncPublisher<CurrentValueSubject<[LSKLocalStatusObservation<Data>], Never>> and conformance AsyncPublisher<A>, &_s7Combine14AsyncPublisherVyAA19CurrentValueSubjectCySay14LocalStatusKit08LSKLocalH11ObservationVy10Foundation4DataVGGs5NeverOGGMd, &_s7Combine14AsyncPublisherVyAA19CurrentValueSubjectCySay14LocalStatusKit08LSKLocalH11ObservationVy10Foundation4DataVGGs5NeverOGGMR);
    lazy protocol witness table accessor for type [LSKLocalStatusObservation<Data>] and conformance <A> [A](&lazy protocol witness table cache variable for type [LSKLocalStatusObservation<Data>] and conformance <A> [A], &lazy protocol witness table cache variable for type LSKLocalStatusObservation<Data> and conformance LSKLocalStatusObservation<A>);
    lazy protocol witness table accessor for type [LSKLocalStatusObservation<Data>] and conformance <A> [A](&lazy protocol witness table cache variable for type [LSKLocalStatusObservation<Data>] and conformance <A> [A], &lazy protocol witness table cache variable for type LSKLocalStatusObservation<Data> and conformance LSKLocalStatusObservation<A>);
    v54 = v67;
    AsyncSequence<>.xpc.getter();

    return (v64[1])(v53, v54);
  }
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSD6ValuesVy18StatusKitAgentCore08SKALocalE6ServerC14FailedDelivery33_CD99E71FFA5F3CD49F44A2A8DCE05CBELLV2IDVAM_G_10Foundation4DateVs5NeverOTg504_s18efg6Core08i2A6j31C25deliverAllPendingStatuses33_mnopqrstu23CBELL2in6reasonScTyyts5z59OGSgSo22NSManagedObjectContextC_SStKFyyYacfU1_10Foundation4y5VAC14kL10AELLVXEfU_Tf1cn_n(uint64_t a1)
{
  v3 = type metadata accessor for SKALocalStatusServer.FailedDelivery(0);
  v37 = *(v3 - 8);
  v38 = v3;
  v4 = *(v37 + 64);
  MEMORY[0x28223BE20](v3);
  v36 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for Date();
  v6 = *(v35 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v35);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v10)
  {
    v30[1] = v1;
    v42 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10, 0);
    v12 = -1 << *(a1 + 32);
    v40 = a1 + 64;
    v41 = v42;
    result = _HashTable.startBucket.getter();
    v13 = result;
    v14 = 0;
    v33 = v6 + 32;
    v34 = v6;
    v31 = a1 + 72;
    v32 = v10;
    while ((v13 & 0x8000000000000000) == 0 && v13 < 1 << *(a1 + 32))
    {
      v16 = v13 >> 6;
      if ((*(v40 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
      {
        goto LABEL_22;
      }

      v39 = *(a1 + 36);
      v17 = v36;
      outlined init with copy of SKALocalStatusServer.FailedDelivery(*(a1 + 56) + *(v37 + 72) * v13, v36, type metadata accessor for SKALocalStatusServer.FailedDelivery);
      v18 = *(v38 + 20);
      Date.timeIntervalSince(_:)();
      Date.addingTimeInterval(_:)();
      outlined destroy of SKALocalStatusServer.FailedDelivery.ID(v17, type metadata accessor for SKALocalStatusServer.FailedDelivery);
      v19 = v41;
      v42 = v41;
      v21 = *(v41 + 16);
      v20 = *(v41 + 24);
      if (v21 >= v20 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v20 > 1, v21 + 1, 1);
        v19 = v42;
      }

      *(v19 + 16) = v21 + 1;
      v22 = (*(v34 + 80) + 32) & ~*(v34 + 80);
      v41 = v19;
      result = (*(v34 + 32))(v19 + v22 + *(v34 + 72) * v21, v9, v35);
      v15 = 1 << *(a1 + 32);
      if (v13 >= v15)
      {
        goto LABEL_23;
      }

      v23 = *(v40 + 8 * v16);
      if ((v23 & (1 << v13)) == 0)
      {
        goto LABEL_24;
      }

      if (v39 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v24 = v23 & (-2 << (v13 & 0x3F));
      if (v24)
      {
        v15 = __clz(__rbit64(v24)) | v13 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v25 = v16 << 6;
        v26 = v16 + 1;
        v27 = (v31 + 8 * v16);
        while (v26 < (v15 + 63) >> 6)
        {
          v29 = *v27++;
          v28 = v29;
          v25 += 64;
          ++v26;
          if (v29)
          {
            result = outlined consume of [SKALocalStatusServer.FailedDelivery.ID : SKALocalStatusServer.FailedDelivery].Index._Variant(v13, v39, 0);
            v15 = __clz(__rbit64(v28)) + v25;
            goto LABEL_4;
          }
        }

        result = outlined consume of [SKALocalStatusServer.FailedDelivery.ID : SKALocalStatusServer.FailedDelivery].Index._Variant(v13, v39, 0);
      }

LABEL_4:
      ++v14;
      v13 = v15;
      if (v14 == v32)
      {
        return v41;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

void *_sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSS_ShySSGTt0g5(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5(*(a1 + 16), 0);
  v4 = specialized Sequence._copySequenceContents(initializing:)(&v6, v3 + 4, v2, a1);
  sub_2200A4D24();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

void SKALocalStatusServer.currentStatus(for:inDatabaseStatuses:devices:idsDevices:)(uint64_t a1@<X0>, unint64_t a2@<X1>, size_t a3@<X2>, size_t a4@<X3>, uint64_t a5@<X8>)
{
  v202 = a4;
  v204 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMR);
  v174 = *(v9 - 8);
  v10 = *(v174 + 64);
  MEMORY[0x28223BE20](v9);
  v166 = &v161 - v11;
  v200 = type metadata accessor for LSKDestinationDevice.Delivery();
  v12 = *(v200 - 8);
  v13 = *(v12 + 8);
  MEMORY[0x28223BE20](v200);
  v199 = &v161 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v198 = type metadata accessor for LSKDestinationDevice();
  v201 = *(v198 - 8);
  v15 = *(v201 + 64);
  v16 = MEMORY[0x28223BE20](v198);
  v203 = &v161 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v189 = &v161 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v188 = &v161 - v21;
  MEMORY[0x28223BE20](v20);
  v176 = &v161 - v22;
  v175 = type metadata accessor for Date();
  v23 = *(v175 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v175);
  v179 = &v161 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = type metadata accessor for SKALocalStatusServer.FailedDelivery(0);
  v170 = *(v177 - 8);
  v26 = *(v170 + 64);
  v27 = MEMORY[0x28223BE20](v177);
  v169 = &v161 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v178 = &v161 - v29;
  v182 = type metadata accessor for SKALocalStatusServer.FailedDelivery.ID(0);
  v30 = *(*(v182 - 8) + 64);
  MEMORY[0x28223BE20](v182);
  v190 = &v161 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v184 = v9;
  v185 = a1;
  v207 = LSKKey.id.getter();
  v208 = v32;
  v168 = v5;
  v167 = a5;
  v193 = v23;
  v194 = v12;
  if (a2 >> 62)
  {
    goto LABEL_45;
  }

  v33 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v33)
  {
LABEL_46:
    v70 = type metadata accessor for LSKError();
    lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type LSKError and conformance LSKError, MEMORY[0x277D24388]);
    swift_allocError();
    v72 = v71;
    v209 = 0x6620737574617473;
    v210 = 0xEB0000000020726FLL;
    MEMORY[0x223D76B90](v207, v208);

    v73 = v210;
    *v72 = v209;
    v72[1] = v73;
    (*(*(v70 - 8) + 104))(v72, *MEMORY[0x277D24380], v70);
    swift_willThrow();
    return;
  }

LABEL_3:
  v34 = 0;
  while ((a2 & 0xC000000000000001) == 0)
  {
    if (v34 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      v33 = __CocoaSet.count.getter();
      if (!v33)
      {
        goto LABEL_46;
      }

      goto LABEL_3;
    }

    v35 = *(a2 + 8 * v34 + 32);
    v36 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      goto LABEL_16;
    }

LABEL_7:
    v205 = v35;
    v37 = [v35 identifier];
    v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = v39;

    if (v38 == v207 && v40 == v208)
    {
      goto LABEL_17;
    }

    v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v42)
    {
      goto LABEL_18;
    }

    ++v34;
    if (v36 == v33)
    {
      goto LABEL_46;
    }
  }

  v35 = MEMORY[0x223D77050](v34, a2);
  v36 = v34 + 1;
  if (!__OFADD__(v34, 1))
  {
    goto LABEL_7;
  }

LABEL_16:
  __break(1u);
LABEL_17:

LABEL_18:
  v43 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So9IDSDeviceCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v44 = v202;
  if (v202 >> 62)
  {
    v74 = v202;
    v75 = __CocoaSet.count.getter();
    v44 = v74;
    v45 = v75;
    v46 = v204;
    if (!v75)
    {
      goto LABEL_48;
    }

LABEL_20:
    v47 = 0;
    v196 = v44 & 0xFFFFFFFFFFFFFF8;
    v197 = (v44 & 0xC000000000000001);
    while (1)
    {
      if (v197)
      {
        v50 = MEMORY[0x223D77050](v47);
      }

      else
      {
        if (v47 >= *(v196 + 16))
        {
          goto LABEL_41;
        }

        v50 = *(v44 + 8 * v47 + 32);
      }

      v51 = v50;
      if (__OFADD__(v47, 1))
      {
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      v206 = (v47 + 1);
      v52 = [v50 uniqueID];
      if (!v52)
      {
        __break(1u);
LABEL_138:
        __break(1u);
LABEL_139:
        __break(1u);
LABEL_140:
        __break(1u);
LABEL_141:
        __break(1u);
        goto LABEL_142;
      }

      v53 = v52;
      v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v56 = v55;

      v57 = v51;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v209 = v43;
      a2 = specialized __RawDictionaryStorage.find<A>(_:)(v54, v56);
      v60 = *(v43 + 16);
      v61 = (v59 & 1) == 0;
      v62 = v60 + v61;
      if (__OFADD__(v60, v61))
      {
        goto LABEL_42;
      }

      v63 = v59;
      if (*(v43 + 24) >= v62)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v59)
          {
            goto LABEL_21;
          }
        }

        else
        {
          specialized _NativeDictionary.copy()();
          if (v63)
          {
            goto LABEL_21;
          }
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v62, isUniquelyReferenced_nonNull_native);
        v64 = specialized __RawDictionaryStorage.find<A>(_:)(v54, v56);
        if ((v63 & 1) != (v65 & 1))
        {
          goto LABEL_144;
        }

        a2 = v64;
        if (v63)
        {
LABEL_21:

          v43 = v209;
          v48 = *(v209 + 56);
          v49 = *(v48 + 8 * a2);
          *(v48 + 8 * a2) = v57;

          goto LABEL_22;
        }
      }

      v43 = v209;
      *(v209 + 8 * (a2 >> 6) + 64) |= 1 << a2;
      v66 = (*(v43 + 48) + 16 * a2);
      *v66 = v54;
      v66[1] = v56;
      *(*(v43 + 56) + 8 * a2) = v57;

      v67 = *(v43 + 16);
      v68 = __OFADD__(v67, 1);
      v69 = v67 + 1;
      if (v68)
      {
        goto LABEL_44;
      }

      *(v43 + 16) = v69;
LABEL_22:
      ++v47;
      v46 = v204;
      v44 = v202;
      if (v206 == v45)
      {
        goto LABEL_48;
      }
    }
  }

  v45 = *((v202 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v46 = v204;
  if (v45)
  {
    goto LABEL_20;
  }

LABEL_48:
  if (!(v46 >> 62))
  {
    v76 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v76)
    {
      goto LABEL_50;
    }

LABEL_133:

    v156 = [v205 payload];
    if (v156)
    {
      v157 = v156;
      v158 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v160 = v159;
    }

    else
    {
      v158 = 0;
      v160 = 0xF000000000000000;
    }

    (*(v174 + 16))(v166, v185, v184);
    v209 = v158;
    v210 = v160;
    lazy protocol witness table accessor for type Data and conformance Data();
    lazy protocol witness table accessor for type Data and conformance Data();
    lazy protocol witness table accessor for type Data and conformance Data();
    LSKPublishedStatus.init(key:value:devices:)();

    return;
  }

  while (2)
  {
    v76 = __CocoaSet.count.getter();
    if (!v76)
    {
      goto LABEL_133;
    }

LABEL_50:
    v77 = 0;
    v173 = OBJC_IVAR___SKALocalStatusServer_failedDeliveries;
    v195 = v46 & 0xC000000000000001;
    v187 = v46 & 0xFFFFFFFFFFFFFF8;
    v186 = v46 + 32;
    v172 = (v174 + 16);
    v164 = (v193 + 16);
    v163 = *MEMORY[0x277D24320];
    v197 = v194 + 104;
    v162 = (v193 + 8);
    v196 = v201 + 32;
    v78 = MEMORY[0x277D84F90];
    v165 = *MEMORY[0x277D24328];
    v171 = *MEMORY[0x277D24330];
    LODWORD(v193) = *MEMORY[0x277D24318];
    v181 = v43;
    v180 = v76;
LABEL_53:
    if (v195)
    {
      v79 = MEMORY[0x223D77050](v77, v46);
    }

    else
    {
      if (v77 >= *(v187 + 16))
      {
        goto LABEL_131;
      }

      v79 = *(v186 + 8 * v77);
    }

    v206 = v79;
    v68 = __OFADD__(v77++, 1);
    if (v68)
    {
LABEL_130:
      __break(1u);
LABEL_131:
      __break(1u);
      continue;
    }

    break;
  }

  v80 = [v206 idsIdentifier];
  v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v83 = v82;

  if (!*(v43 + 16))
  {

    goto LABEL_76;
  }

  v84 = specialized __RawDictionaryStorage.find<A>(_:)(v81, v83);
  v86 = v85;

  if ((v86 & 1) == 0)
  {
LABEL_76:
    v98 = [v206 idsIdentifier];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    (*v197)(v199, v193, v200);
    LSKDestinationDevice.init(idsIdentifier:name:model:delivery:)();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v78 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v78[2] + 1, 1, v78, &_ss23_ContiguousArrayStorageCy14LocalStatusKit20LSKDestinationDeviceVGMd, &_ss23_ContiguousArrayStorageCy14LocalStatusKit20LSKDestinationDeviceVGMR, MEMORY[0x277D24338]);
    }

    v100 = v78[2];
    v99 = v78[3];
    if (v100 >= v99 >> 1)
    {
      v78 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v99 > 1, v100 + 1, 1, v78, &_ss23_ContiguousArrayStorageCy14LocalStatusKit20LSKDestinationDeviceVGMd, &_ss23_ContiguousArrayStorageCy14LocalStatusKit20LSKDestinationDeviceVGMR, MEMORY[0x277D24338]);
    }

    v78[2] = v100 + 1;
    (*(v201 + 32))(v78 + ((*(v201 + 80) + 32) & ~*(v201 + 80)) + *(v201 + 72) * v100, v203, v198);
LABEL_52:
    if (v77 == v76)
    {
      goto LABEL_133;
    }

    goto LABEL_53;
  }

  v191 = v77;
  v202 = v78;
  v194 = *(*(v43 + 56) + 8 * v84);
  v87 = [v206 pendingStatuses];
  v88 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SKADatabasePublishedLocalStatus, off_27843D3B0);
  v43 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v192 = v88;
  if (v43 >> 62)
  {
    v89 = __CocoaSet.count.getter();
  }

  else
  {
    v89 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v90 = 0;
  while (1)
  {
    if (v89 == v90)
    {

      v46 = v202;
      goto LABEL_98;
    }

    if ((v43 & 0xC000000000000001) != 0)
    {
      v91 = MEMORY[0x223D77050](v90, v43);
    }

    else
    {
      if (v90 >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_127;
      }

      v91 = *(v43 + 8 * v90 + 32);
    }

    v92 = v91;
    if (__OFADD__(v90, 1))
    {
      __break(1u);
LABEL_127:
      __break(1u);
LABEL_128:
      __break(1u);
LABEL_129:
      __break(1u);
      goto LABEL_130;
    }

    v93 = [v91 identifier];
    v94 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v96 = v95;

    if (v94 == v207 && v96 == v208)
    {
      break;
    }

    v46 = _stringCompareWithSmolCheck(_:_:expecting:)();

    ++v90;
    if (v46)
    {
      goto LABEL_82;
    }
  }

LABEL_82:

  v101 = v190;
  (*v172)(v190, v185, v184);
  v102 = [v206 idsIdentifier];
  v103 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v105 = v104;

  v106 = (v101 + *(v182 + 20));
  *v106 = v103;
  v106[1] = v105;
  v107 = v183;
  v108 = v173;
  swift_beginAccess();
  v109 = *(v107 + v108);
  v110 = v194;
  if (!*(v109 + 16) || (v111 = specialized __RawDictionaryStorage.find<A>(_:)(v101), (v112 & 1) == 0))
  {
    swift_endAccess();
    v128 = [v206 idsIdentifier];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v129 = [v110 name];
    if (!v129)
    {
      goto LABEL_141;
    }

    v130 = v129;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v131 = [v110 modelIdentifier];
    if (v131)
    {
      v132 = v131;

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      (*v197)(v199, v165, v200);
      LSKDestinationDevice.init(idsIdentifier:name:model:delivery:)();
      v46 = v202;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v46 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v46 + 16) + 1, 1, v46, &_ss23_ContiguousArrayStorageCy14LocalStatusKit20LSKDestinationDeviceVGMd, &_ss23_ContiguousArrayStorageCy14LocalStatusKit20LSKDestinationDeviceVGMR, MEMORY[0x277D24338]);
      }

      v133 = v190;
      v135 = *(v46 + 16);
      v134 = *(v46 + 24);
      if (v135 >= v134 >> 1)
      {
        v155 = v190;
        v46 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v134 > 1, v135 + 1, 1, v46, &_ss23_ContiguousArrayStorageCy14LocalStatusKit20LSKDestinationDeviceVGMd, &_ss23_ContiguousArrayStorageCy14LocalStatusKit20LSKDestinationDeviceVGMR, MEMORY[0x277D24338]);
        v133 = v155;
      }

      outlined destroy of SKALocalStatusServer.FailedDelivery.ID(v133, type metadata accessor for SKALocalStatusServer.FailedDelivery.ID);
      *(v46 + 16) = v135 + 1;
      (*(v201 + 32))(v46 + ((*(v201 + 80) + 32) & ~*(v201 + 80)) + *(v201 + 72) * v135, v188, v198);
LABEL_98:
      v202 = v46;
      v136 = [v206 deliveredStatuses];
      v43 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v43 >> 62)
      {
        v137 = __CocoaSet.count.getter();
      }

      else
      {
        v137 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v138 = 0;
      while (1)
      {
        if (v137 == v138)
        {

          v46 = v204;
          v43 = v181;
          v76 = v180;
          v78 = v202;
          v77 = v191;
          if (v191 != v180)
          {
            goto LABEL_53;
          }

          goto LABEL_133;
        }

        if ((v43 & 0xC000000000000001) != 0)
        {
          v139 = MEMORY[0x223D77050](v138, v43);
        }

        else
        {
          if (v138 >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_129;
          }

          v139 = *(v43 + 8 * v138 + 32);
        }

        v140 = v139;
        if (__OFADD__(v138, 1))
        {
          goto LABEL_128;
        }

        v141 = [v139 identifier];
        v142 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v144 = v143;

        if (v142 == v207 && v144 == v208)
        {
          break;
        }

        v46 = _stringCompareWithSmolCheck(_:_:expecting:)();

        ++v138;
        if (v46)
        {
          goto LABEL_116;
        }
      }

LABEL_116:

      v146 = [v206 idsIdentifier];
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v147 = v194;
      v148 = [v194 name];
      if (!v148)
      {
        goto LABEL_139;
      }

      v149 = v148;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v150 = [v147 modelIdentifier];
      if (v150)
      {
        v151 = v150;

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        (*v197)(v199, v171, v200);
        LSKDestinationDevice.init(idsIdentifier:name:model:delivery:)();
        v78 = v202;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v78 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v78[2] + 1, 1, v78, &_ss23_ContiguousArrayStorageCy14LocalStatusKit20LSKDestinationDeviceVGMd, &_ss23_ContiguousArrayStorageCy14LocalStatusKit20LSKDestinationDeviceVGMR, MEMORY[0x277D24338]);
        }

        v46 = v204;
        v43 = v181;
        v76 = v180;
        v77 = v191;
        v153 = v78[2];
        v152 = v78[3];
        v154 = v194;
        if (v153 >= v152 >> 1)
        {
          v78 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v152 > 1, v153 + 1, 1, v78, &_ss23_ContiguousArrayStorageCy14LocalStatusKit20LSKDestinationDeviceVGMd, &_ss23_ContiguousArrayStorageCy14LocalStatusKit20LSKDestinationDeviceVGMR, MEMORY[0x277D24338]);
        }

        v78[2] = v153 + 1;
        (*(v201 + 32))(v78 + ((*(v201 + 80) + 32) & ~*(v201 + 80)) + *(v201 + 72) * v153, v189, v198);
        goto LABEL_52;
      }

      goto LABEL_138;
    }

    goto LABEL_140;
  }

  v113 = v169;
  outlined init with copy of SKALocalStatusServer.FailedDelivery(*(v109 + 56) + *(v170 + 72) * v111, v169, type metadata accessor for SKALocalStatusServer.FailedDelivery);
  outlined init with take of SKALocalStatusServer.FailedDelivery(v113, v178);
  swift_endAccess();
  v114 = *(v177 + 20);
  Date.timeIntervalSince(_:)();
  Date.addingTimeInterval(_:)();
  v115 = [v206 idsIdentifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v116 = [v110 name];
  if (!v116)
  {
    goto LABEL_143;
  }

  v117 = v116;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v118 = [v110 modelIdentifier];
  if (v118)
  {
    v119 = v118;

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV19earliestNextAttempt_SS16errorDescriptiontMd, &_s10Foundation4DateV19earliestNextAttempt_SS16errorDescriptiontMR);
    v121 = v199;
    v122 = &v199[*(v120 + 48)];
    (*v164)(v199, v179, v175);
    v123 = (v178 + *(v177 + 24));
    v124 = v123[1];
    *v122 = *v123;
    *(v122 + 1) = v124;
    (*v197)(v121, v163, v200);

    LSKDestinationDevice.init(idsIdentifier:name:model:delivery:)();
    v46 = v202;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v46 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v46 + 16) + 1, 1, v46, &_ss23_ContiguousArrayStorageCy14LocalStatusKit20LSKDestinationDeviceVGMd, &_ss23_ContiguousArrayStorageCy14LocalStatusKit20LSKDestinationDeviceVGMR, MEMORY[0x277D24338]);
    }

    v125 = v190;
    v127 = *(v46 + 16);
    v126 = *(v46 + 24);
    if (v127 >= v126 >> 1)
    {
      v46 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v126 > 1, v127 + 1, 1, v46, &_ss23_ContiguousArrayStorageCy14LocalStatusKit20LSKDestinationDeviceVGMd, &_ss23_ContiguousArrayStorageCy14LocalStatusKit20LSKDestinationDeviceVGMR, MEMORY[0x277D24338]);
    }

    (*v162)(v179, v175);
    outlined destroy of SKALocalStatusServer.FailedDelivery.ID(v178, type metadata accessor for SKALocalStatusServer.FailedDelivery);
    outlined destroy of SKALocalStatusServer.FailedDelivery.ID(v125, type metadata accessor for SKALocalStatusServer.FailedDelivery.ID);
    *(v46 + 16) = v127 + 1;
    (*(v201 + 32))(v46 + ((*(v201 + 80) + 32) & ~*(v201 + 80)) + *(v201 + 72) * v127, v176, v198);
    goto LABEL_98;
  }

LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t specialized Sequence.contains(where:)(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
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

id SKALocalStatusServer.getRecipientDeviceTypesForAllPublishedStatuses()()
{
  v32[1] = *MEMORY[0x277D85DE8];
  v31 = type metadata accessor for LSKTargetDeviceFlags();
  v1 = *(v31 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v31);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [*(v0 + 168) newBackgroundContext];
  v6 = *(v0 + 176);
  v32[0] = 0;
  v7 = [v6 allPublishedLocalStatusesInDatabaseContext:v5 error:v32];
  v8 = v32[0];
  if (!v7)
  {
    v19 = v32[0];
    v4 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for log == -1)
    {
LABEL_12:
      v20 = type metadata accessor for Logger();
      __swift_project_value_buffer(v20, log);
      v21 = v4;
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        *v24 = 138412290;
        v26 = v4;
        v27 = _swift_stdlib_bridgeErrorToNSError();
        *(v24 + 4) = v27;
        *v25 = v27;
        _os_log_impl(&dword_220099000, v22, v23, "Filtered Device Types FAILED - error reading allPublishedLocalStatuses: %@", v24, 0xCu);
        outlined destroy of UUID?(v25, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x223D77FF0](v25, -1, -1);
        MEMORY[0x223D77FF0](v24, -1, -1);
      }

      goto LABEL_17;
    }

LABEL_20:
    swift_once();
    goto LABEL_12;
  }

  v9 = v7;
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SKADatabasePublishedLocalStatus, off_27843D3B0);
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v8;

  v32[0] = MEMORY[0x277D84FA0];
  if (!(v10 >> 62))
  {
    v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_4;
    }

LABEL_16:

LABEL_17:
    result = MEMORY[0x277D84FA0];
    goto LABEL_18;
  }

  v12 = __CocoaSet.count.getter();
  if (!v12)
  {
    goto LABEL_16;
  }

LABEL_4:
  if (v12 < 1)
  {
    __break(1u);
    goto LABEL_20;
  }

  v30 = v5;
  v13 = 0;
  v14 = (v1 + 8);
  do
  {
    if ((v10 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x223D77050](v13, v10);
    }

    else
    {
      v15 = *(v10 + 8 * v13 + 32);
    }

    v16 = v15;
    ++v13;
    [v15 targetDevicesFlags];
    LSKTargetDeviceFlags.init(rawValue:)();
    v17 = LSKTargetDeviceFlags.idsDeviceTypes.getter();
    (*v14)(v4, v31);
    specialized Set.formUnion<A>(_:)(v17);
  }

  while (v12 != v13);

  result = v32[0];
LABEL_18:
  v28 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t specialized Set.formUnion<A>(_:)(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      result = specialized Set._Variant.insert(_:)(&v10, *(*(v1 + 48) + ((v8 << 9) | (8 * v9))));
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t SKALocalStatusServer.shouldDeliverToDevice(idsIdentifier:)(uint64_t a1, uint64_t a2)
{
  v26 = a1;
  v3 = SKALocalStatusServer.getFilteredRecipientIDSDevices(from:)(0xD000000000000025, 0x80000002201AC6A0);
  v4 = v3;
  v5 = v3 & 0xFFFFFFFFFFFFFF8;
  if (!(v3 >> 62))
  {
    v6 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_22:
    v8 = MEMORY[0x277D84F90];
    goto LABEL_23;
  }

LABEL_21:
  v6 = __CocoaSet.count.getter();
  if (!v6)
  {
    goto LABEL_22;
  }

LABEL_3:
  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  do
  {
    v9 = v7;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x223D77050](v9, v4);
      }

      else
      {
        if (v9 >= *(v5 + 16))
        {
          goto LABEL_20;
        }

        v10 = *(v4 + 8 * v9 + 32);
      }

      v11 = v10;
      v7 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v12 = [v10 uniqueID];
      if (v12)
      {
        break;
      }

      ++v9;
      if (v7 == v6)
      {
        goto LABEL_23;
      }
    }

    v25 = a2;
    v13 = v12;
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v15;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
    }

    v17 = *(v8 + 2);
    v16 = *(v8 + 3);
    if (v17 >= v16 >> 1)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v8);
    }

    *(v8 + 2) = v17 + 1;
    v18 = &v8[16 * v17];
    v19 = v24;
    a2 = v25;
    *(v18 + 4) = v14;
    *(v18 + 5) = v19;
  }

  while (v7 != v6);
LABEL_23:

  v27[0] = v26;
  v27[1] = a2;
  MEMORY[0x28223BE20](v20);
  v23[2] = v27;
  v21 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v23, v8);

  return v21 & 1;
}

void *specialized Sequence.compactMap<A>(_:)(void (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v41 = a1;
  v42 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit08LSKLocalB11ObservationVy10Foundation4DataVGSgMd, &_s14LocalStatusKit08LSKLocalB11ObservationVy10Foundation4DataVGSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v33 - v8;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit08LSKLocalB11ObservationVy10Foundation4DataVGMd, &_s14LocalStatusKit08LSKLocalB11ObservationVy10Foundation4DataVGMR);
  v10 = *(*(v43 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v43 - 8);
  v40 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v34 = &v33 - v14;
  v35 = v13;
  v15 = a3 + 64;
  v16 = 1 << *(a3 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(a3 + 64);
  v19 = (v16 + 63) >> 6;
  v38 = (v13 + 32);
  v39 = (v13 + 48);

  v21 = 0;
  v44 = MEMORY[0x277D84F90];
  v36 = a3;
  if (v18)
  {
LABEL_10:
    while (1)
    {
      v45 = *(*(a3 + 56) + ((v21 << 9) | (8 * __clz(__rbit64(v18)))));
      v23 = v45;
      v41(&v45);
      if (v4)
      {
        break;
      }

      v18 &= v18 - 1;

      v24 = v43;
      if ((*v39)(v9, 1, v43) == 1)
      {
        result = outlined destroy of UUID?(v9, &_s14LocalStatusKit08LSKLocalB11ObservationVy10Foundation4DataVGSgMd, &_s14LocalStatusKit08LSKLocalB11ObservationVy10Foundation4DataVGSgMR);
        if (!v18)
        {
          goto LABEL_6;
        }
      }

      else
      {
        v37 = 0;
        v25 = v9;
        v26 = *v38;
        v27 = v34;
        v28 = v25;
        (*v38)(v34);
        (v26)(v40, v27, v24);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v44[2] + 1, 1, v44);
        }

        v30 = v44[2];
        v29 = v44[3];
        v4 = v37;
        if (v30 >= v29 >> 1)
        {
          v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v29 > 1, v30 + 1, 1, v44);
        }

        v31 = v43;
        v32 = v44;
        v44[2] = v30 + 1;
        result = (v26)(v32 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v30, v40, v31);
        a3 = v36;
        v9 = v28;
        if (!v18)
        {
          goto LABEL_6;
        }
      }
    }

    return v44;
  }

  else
  {
LABEL_6:
    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v22 >= v19)
      {

        return v44;
      }

      v18 = *(v15 + 8 * v22);
      ++v21;
      if (v18)
      {
        v21 = v22;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t SKALocalStatusServer.deliverPendingStatuses(to:reason:databaseContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = *MEMORY[0x277D85DE8];
  v5[67] = v4;
  v5[66] = a4;
  v5[65] = a3;
  v5[63] = a1;
  v5[64] = a2;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s18StatusKitAgentCore08SKALocalA6ServerC14FailedDelivery33_CD99E71FFA5F3CD49F44A2A8DCE05CBELLVSgMd, &_s18StatusKitAgentCore08SKALocalA6ServerC14FailedDelivery33_CD99E71FFA5F3CD49F44A2A8DCE05CBELLVSgMR) - 8) + 64) + 15;
  v5[68] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit012LSKPublishedB0Vy10Foundation4DataVGMd, &_s14LocalStatusKit012LSKPublishedB0Vy10Foundation4DataVGMR);
  v5[69] = v7;
  v8 = *(v7 - 8);
  v5[70] = v8;
  v9 = *(v8 + 64) + 15;
  v5[71] = swift_task_alloc();
  v5[72] = swift_task_alloc();
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v5[73] = v10;
  v11 = *(v10 - 8);
  v5[74] = v11;
  v12 = *(v11 + 64) + 15;
  v5[75] = swift_task_alloc();
  v13 = type metadata accessor for DispatchQoS();
  v5[76] = v13;
  v14 = *(v13 - 8);
  v5[77] = v14;
  v15 = *(v14 + 64) + 15;
  v5[78] = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v5[79] = v16;
  v17 = *(v16 - 8);
  v5[80] = v17;
  v18 = *(v17 + 64) + 15;
  v5[81] = swift_task_alloc();
  v19 = type metadata accessor for Date();
  v5[82] = v19;
  v20 = *(v19 - 8);
  v5[83] = v20;
  v21 = *(v20 + 64) + 15;
  v5[84] = swift_task_alloc();
  v5[85] = swift_task_alloc();
  v5[86] = swift_task_alloc();
  v22 = type metadata accessor for SKALocalStatusServer.FailedDelivery(0);
  v5[87] = v22;
  v23 = *(v22 - 8);
  v5[88] = v23;
  v24 = *(v23 + 64) + 15;
  v5[89] = swift_task_alloc();
  v5[90] = swift_task_alloc();
  v5[91] = swift_task_alloc();
  v5[92] = swift_task_alloc();
  v5[93] = swift_task_alloc();
  v5[94] = swift_task_alloc();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v5[95] = v25;
  v26 = *(*(v25 - 8) + 64) + 15;
  v5[96] = swift_task_alloc();
  v5[97] = swift_task_alloc();
  v5[98] = swift_task_alloc();
  v5[99] = swift_task_alloc();
  v27 = type metadata accessor for SKALocalStatusServer.FailedDelivery.ID(0);
  v5[100] = v27;
  v28 = *(*(v27 - 8) + 64) + 15;
  v5[101] = swift_task_alloc();
  v5[102] = swift_task_alloc();
  v5[103] = swift_task_alloc();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMR);
  v5[104] = v29;
  v30 = *(v29 - 8);
  v5[105] = v30;
  v31 = *(v30 + 64) + 15;
  v5[106] = swift_task_alloc();
  v5[107] = swift_task_alloc();
  v5[108] = swift_task_alloc();
  v5[109] = swift_task_alloc();
  v32 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](SKALocalStatusServer.deliverPendingStatuses(to:reason:databaseContext:), v4, 0);
}

uint64_t SKALocalStatusServer.deliverPendingStatuses(to:reason:databaseContext:)()
{
  v464 = v0;
  v1 = v0;
  v463[9] = *MEMORY[0x277D85DE8];
  if (one-time initialization token for log != -1)
  {
    goto LABEL_157;
  }

LABEL_2:
  v2 = *(v1 + 520);
  v3 = *(v1 + 504);
  v4 = type metadata accessor for Logger();
  v5 = __swift_project_value_buffer(v4, ::log);
  *(v1 + 880) = v5;

  v6 = v3;
  v454 = v5;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  v459 = v1;
  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v1 + 520);
    v10 = *(v1 + 512);
    v11 = *(v459 + 63);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v463[0] = v14;
    *v12 = 136315394;
    v15 = v10;
    v1 = v459;
    *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v9, v463);
    *(v12 + 12) = 2112;
    *(v12 + 14) = v11;
    *v13 = v11;
    v16 = v11;
    _os_log_impl(&dword_220099000, v7, v8, "Send pending status START {reason: %s, clDevice: %@}", v12, 0x16u);
    outlined destroy of UUID?(v13, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x223D77FF0](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x223D77FF0](v14, -1, -1);
    MEMORY[0x223D77FF0](v12, -1, -1);
  }

  v17 = [*(v1 + 504) idsDeviceIdentifier];
  if (!v17)
  {
    v44 = *(v1 + 504);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = *(v1 + 504);
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *v48 = 138412290;
      *(v48 + 4) = v47;
      *v49 = v47;
      v50 = v47;
      v51 = "Send pending status FAILED. idsIdentifier is nil {clDevice: %@}";
      goto LABEL_163;
    }

LABEL_164:

LABEL_165:
    LODWORD(v456) = 0;
    goto LABEL_166;
  }

  v18 = *(v1 + 536);
  v19 = *(v1 + 528);
  v20 = v17;
  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  *(v1 + 888) = v21;
  *(v1 + 896) = v23;
  v24 = *(v18 + 176);
  *(v1 + 904) = v24;
  *(v1 + 456) = 0;
  v25 = [v24 allPublishedLocalStatusDevicesInDatabaseContext:v19 error:v1 + 456];
  v26 = v1;
  v27 = *(v1 + 456);
  if (!v25)
  {
    v53 = v27;

    v54 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v55 = v54;
LABEL_28:
    v56 = *(v1 + 880);
    v57 = *(v1 + 504);
    v58 = v55;
    v45 = Logger.logObject.getter();
    v59 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v45, v59))
    {
      v60 = *(v1 + 504);
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      *v61 = 138412546;
      *(v61 + 4) = v60;
      *v62 = v60;
      *(v61 + 12) = 2112;
      v63 = v60;
      v64 = v55;
      v65 = _swift_stdlib_bridgeErrorToNSError();
      *(v61 + 14) = v65;
      v62[1] = v65;
      _os_log_impl(&dword_220099000, v45, v59, "Send pending status FAILED. Error fetching status devices {clDevice: %@, error: %@}", v61, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      swift_arrayDestroy();
      MEMORY[0x223D77FF0](v62, -1, -1);
      MEMORY[0x223D77FF0](v61, -1, -1);

      goto LABEL_164;
    }

    goto LABEL_165;
  }

  v1 = v25;
  *(v26 + 912) = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SKADatabasePublishedLocalStatusDevice, off_27843D3B8);
  v28 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v27;

  v463[0] = MEMORY[0x277D84F90];
  if (v28 >> 62)
  {
LABEL_159:
    v30 = __CocoaSet.count.getter();
  }

  else
  {
    v30 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v31 = MEMORY[0x277D84F90];
  if (!v30)
  {
    v52 = MEMORY[0x277D84F90];
    goto LABEL_32;
  }

  v32 = 0;
  v456 = v28 & 0xFFFFFFFFFFFFFF8;
  v457 = v28 & 0xC000000000000001;
  do
  {
    if (v457)
    {
      v34 = MEMORY[0x223D77050](v32, v28);
    }

    else
    {
      if (v32 >= *(v456 + 16))
      {
        goto LABEL_152;
      }

      v34 = *(v28 + 8 * v32 + 32);
    }

    v35 = v34;
    v36 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      __break(1u);
LABEL_152:
      __break(1u);
LABEL_153:
      __break(1u);
LABEL_154:
      __break(1u);
LABEL_155:
      __break(1u);
LABEL_156:
      __break(1u);
LABEL_157:
      swift_once();
      goto LABEL_2;
    }

    v37 = v28;
    v1 = v23;
    v38 = [v34 idsIdentifier];
    v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = v40;

    v23 = v1;
    if (v39 == v21 && v41 == v1)
    {

LABEL_11:
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v33 = *(v463[0] + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      goto LABEL_12;
    }

    v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v43)
    {
      goto LABEL_11;
    }

LABEL_12:
    v28 = v37;
    ++v32;
  }

  while (v36 != v30);
  v52 = v463[0];
  v31 = MEMORY[0x277D84F90];
LABEL_32:

  if ((v52 & 0x8000000000000000) == 0 && (v52 & 0x4000000000000000) == 0)
  {
    if (*(v52 + 16))
    {
      goto LABEL_35;
    }

LABEL_161:
    v1 = v459;
    v286 = *(v459 + 63);

    v287 = v286;
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v45, v46))
    {
      v288 = *(v459 + 63);
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *v48 = 138412290;
      *(v48 + 4) = v288;
      *v49 = v288;
      v289 = v288;
      v51 = "Send pending status SKIPPED. No status devices. {clDevice: %@}";
LABEL_163:
      _os_log_impl(&dword_220099000, v45, v46, v51, v48, 0xCu);
      outlined destroy of UUID?(v49, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x223D77FF0](v49, -1, -1);
      MEMORY[0x223D77FF0](v48, -1, -1);
    }

    goto LABEL_164;
  }

  if (!__CocoaSet.count.getter())
  {
    goto LABEL_161;
  }

LABEL_35:
  v1 = specialized Sequence.flatMap<A>(_:)(v52);
  *(v459 + 115) = v1;

  v23 = v1 >> 62;
  if (v1 >> 62)
  {
    v66 = __CocoaSet.count.getter();
  }

  else
  {
    v66 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v67 = v459;
  *(v459 + 116) = v66;
  if (!v66)
  {
    v76 = *(v459 + 63);

    v77 = v76;
    v78 = Logger.logObject.getter();
    v79 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v78, v79))
    {
      v80 = *(v459 + 63);
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      *v81 = 138412290;
      *(v81 + 4) = v80;
      *v82 = v80;
      v83 = v80;
      _os_log_impl(&dword_220099000, v78, v79, "Send pending status SKIPPED. No pending statuses. {clDevice: %@}", v81, 0xCu);
      outlined destroy of UUID?(v82, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x223D77FF0](v82, -1, -1);
      MEMORY[0x223D77FF0](v81, -1, -1);
    }

    LODWORD(v456) = 0;
    v1 = v459;
    goto LABEL_166;
  }

  v68 = *(v459 + 67);
  v69 = *(v459 + 63);
  v70 = [objc_allocWithZone(MEMORY[0x277D44160]) init];
  *(v459 + 117) = v70;
  [v70 setDestinationDevice_];
  [v70 setControlFlags_];
  *(v459 + 118) = *(v68 + 144);
  [v70 setDispatchQueue_];
  swift_bridgeObjectRetain_n();
  v71 = v69;
  v72 = Logger.logObject.getter();
  v73 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v72, v73))
  {
    v74 = *(v459 + 63);
    v75 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    *v75 = 138412546;
    *(v75 + 4) = v74;
    *v68 = v71;
    *(v75 + 12) = 2048;
    if (v23)
    {
      v71 = __CocoaSet.count.getter();
    }

    else
    {
      v71 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v67 = v459;
    v84 = *(v459 + 63);

    *(v75 + 14) = v71;

    _os_log_impl(&dword_220099000, v72, v73, "Send pending status CONTINUE {clDevice: %@, pendingStatuses.count: %ld}", v75, 0x16u);
    outlined destroy of UUID?(v68, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x223D77FF0](v68, -1, -1);
    MEMORY[0x223D77FF0](v75, -1, -1);
    v31 = MEMORY[0x277D84F90];
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  *(v67 + 464) = v31;
  if (v66 < 1)
  {
LABEL_171:
    __break(1u);
    goto LABEL_172;
  }

  v85 = v67;
  v86 = 0;
  aBlock = (v67 + 144);
  v87 = MEMORY[0x277D84F90];
  *(v67 + 952) = OBJC_IVAR___SKALocalStatusServer_failedDeliveries;
  v88 = v87;
  v89 = v87;
  v90 = v87;
  while (2)
  {
    v85[124] = v87;
    v85[123] = v90;
    v85[122] = v89;
    v85[121] = v88;
    v85[120] = v86;
    v100 = v85[115];
    if ((v100 & 0xC000000000000001) != 0)
    {
      v101 = MEMORY[0x223D77050]();
    }

    else
    {
      v101 = *(v100 + 8 * v86 + 32);
    }

    v102 = v101;
    v85[125] = v101;
    SKADatabasePublishedLocalStatus.key.getter(v85[109]);
    v454 = v90;
    v456 = v89;
    v103 = v85[119];
    v104 = v85[112];
    v105 = v85[111];
    v106 = v85[103];
    v107 = v85[100];
    v108 = v85[67];
    (*(v85[105] + 16))(v106, v85[109], v85[104]);
    v109 = (v106 + *(v107 + 20));
    *v109 = v105;
    v109[1] = v104;
    swift_beginAccess();
    v110 = *(v108 + v103);
    v111 = *(v110 + 16);

    if (v111 && (v112 = specialized __RawDictionaryStorage.find<A>(_:)(v85[103]), (v113 & 1) != 0))
    {
      v114 = v85[99];
      v115 = v85[94];
      v116 = v85[93];
      v117 = v85[87];
      outlined init with copy of SKALocalStatusServer.FailedDelivery(*(v110 + 56) + *(v85[88] + 72) * v112, v116, type metadata accessor for SKALocalStatusServer.FailedDelivery);
      outlined init with take of SKALocalStatusServer.FailedDelivery(v116, v115);
      swift_endAccess();
      v118 = *(v117 + 20);
      Date.timeIntervalSince(_:)();
      Date.addingTimeInterval(_:)();
      outlined destroy of SKALocalStatusServer.FailedDelivery.ID(v115, type metadata accessor for SKALocalStatusServer.FailedDelivery);
      v119 = 0;
    }

    else
    {
      swift_endAccess();
      v119 = 1;
    }

    v120 = v85[99];
    v121 = v85[98];
    v122 = v85[83];
    v123 = v85[82];
    (*(v122 + 56))(v120, v119, 1, v123);
    outlined init with copy of (String, Sendable)(v120, v121, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    if ((*(v122 + 48))(v121, 1, v123) == 1)
    {
      outlined destroy of UUID?(v85[98], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
LABEL_144:
      v257 = v85[110];
      v258 = v85[63];
      outlined init with copy of (String, Sendable)(v85[99], v85[97], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v259 = v258;
      v260 = v85;
      v261 = v102;
      v262 = Logger.logObject.getter();
      v263 = static os_log_type_t.default.getter();

      v264 = os_log_type_enabled(v262, v263);
      v265 = v260[97];
      if (v264)
      {
        v266 = v260[96];
        v460 = v260[95];
        v267 = v260[63];
        v268 = swift_slowAlloc();
        v269 = swift_slowAlloc();
        v270 = swift_slowAlloc();
        v463[0] = v270;
        *v268 = 138412802;
        *(v268 + 4) = v261;
        *(v268 + 12) = 2112;
        *(v268 + 14) = v267;
        *v269 = v261;
        v269[1] = v267;
        *(v268 + 22) = 2080;
        outlined init with copy of (String, Sendable)(v265, v266, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        v271 = v267;
        v272 = v261;
        v273 = String.init<A>(describing:)();
        v275 = v274;
        outlined destroy of UUID?(v265, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        v276 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v273, v275, v463);

        *(v268 + 24) = v276;
        _os_log_impl(&dword_220099000, v262, v263, "Status send START {status: %@, device: %@, nextAttemptDate: %s}", v268, 0x20u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        swift_arrayDestroy();
        MEMORY[0x223D77FF0](v269, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v270);
        MEMORY[0x223D77FF0](v270, -1, -1);
        MEMORY[0x223D77FF0](v268, -1, -1);
      }

      else
      {

        outlined destroy of UUID?(v265, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      }

      v461 = v260[117];
      v277 = v260[81];
      v278 = v260[80];
      v279 = v260[79];
      v260[2] = v260;
      v260[3] = SKALocalStatusServer.deliverPendingStatuses(to:reason:databaseContext:);
      swift_continuation_init();
      v260[17] = v279;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v260 + 14);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      CheckedContinuation.init(continuation:function:)();
      (*(v278 + 32))(boxed_opaque_existential_0, v277, v279);
      v260[10] = MEMORY[0x277D85DD0];
      v260[11] = 1107296256;
      v260[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
      v260[13] = &block_descriptor_84;
      [v461 activateWithCompletion_];
      (*(v278 + 8))(boxed_opaque_existential_0, v279);
      v281 = *MEMORY[0x277D85DE8];

      return MEMORY[0x282200938](v260 + 2);
    }

    v124 = v85[85];
    v125 = v85[83];
    v126 = v85[82];
    (*(v125 + 32))(v85[86], v85[98], v126);
    static Date.now.getter();
    v127 = static Date.> infix(_:_:)();
    v128 = *(v125 + 8);
    v128(v124, v126);
    if ((v127 & 1) == 0)
    {
      v128(v85[86], v85[82]);
      goto LABEL_144;
    }

    v457 = v87;
    v452 = v88;
    v129 = v85[112];
    v130 = v85[110];
    (*(v85[83] + 16))(v85[84], v85[86], v85[82]);

    v131 = v102;
    v132 = Logger.logObject.getter();
    v133 = static os_log_type_t.default.getter();

    log = v132;
    if (os_log_type_enabled(v132, v133))
    {
      v134 = v85[112];
      v395 = v85[111];
      v432 = v85[104];
      v436 = v85[109];
      v422 = v85[103];
      v427 = v85[105];
      v413 = v85[86];
      v418 = v85[99];
      v135 = v85[84];
      v136 = v85[82];
      v408 = v136;
      v137 = swift_slowAlloc();
      v404 = swift_slowAlloc();
      v463[0] = v404;
      *v137 = 136315650;
      lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
      v138 = dispatch thunk of CustomStringConvertible.description.getter();
      v140 = v139;
      v128(v135, v136);
      v141 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v138, v140, v463);

      *(v137 + 4) = v141;
      *(v137 + 12) = 2080;
      v142 = [v131 identifier];
      v143 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v145 = v144;

      v146 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v143, v145, v463);

      *(v137 + 14) = v146;
      *(v137 + 22) = 2080;

      v148 = specialized Collection.prefix(_:)(8, v395, v134, v147);
      v150 = v149;
      v152 = v151;
      v154 = v153;

      v155 = v150;
      v85 = v459;
      v156 = MEMORY[0x223D76B60](v148, v155, v152, v154);
      v158 = v157;

      v159 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v156, v158, v463);

      *(v137 + 24) = v159;
      _os_log_impl(&dword_220099000, log, v133, "Status send SKIP. Not enough time since latest failed attempt. {nextAttemptDate: %s, status.identifier: %s, idsIdentifier: %s}", v137, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x223D77FF0](v404, -1, -1);
      MEMORY[0x223D77FF0](v137, -1, -1);

      v128(v413, v408);
      outlined destroy of UUID?(v418, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      outlined destroy of SKALocalStatusServer.FailedDelivery.ID(v422, type metadata accessor for SKALocalStatusServer.FailedDelivery.ID);
      (*(v427 + 8))(v436, v432);
    }

    else
    {
      v435 = v85[109];
      v91 = v131;
      v92 = v85[105];
      v93 = v85[104];
      v94 = v85[103];
      v95 = *(v459 + 99);
      v96 = *(v459 + 86);
      v97 = *(v459 + 84);
      v98 = *(v459 + 82);

      v128(v97, v98);
      v128(v96, v98);
      v99 = v95;
      v85 = v459;
      outlined destroy of UUID?(v99, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      outlined destroy of SKALocalStatusServer.FailedDelivery.ID(v94, type metadata accessor for SKALocalStatusServer.FailedDelivery.ID);
      (*(v92 + 8))(v435, v93);
    }

    v88 = v452;
    v90 = v454;
    v89 = v456;
    v87 = v457;
    v86 = v85[120] + 1;
    if (v86 != v85[116])
    {
      continue;
    }

    break;
  }

  v160 = v85[117];
  v161 = v85[115];
  loge = v85[113];
  v162 = v85[78];
  v163 = v85[77];
  v431 = v85[118];
  v434 = v85[76];
  v67 = v85[75];
  v164 = v85[74];
  v165 = v85[73];
  v438 = v85[66];

  v166 = swift_allocObject();
  *(v166 + 16) = v160;
  v85[22] = partial apply for closure #3 in SKALocalStatusServer.deliverPendingStatuses(to:reason:databaseContext:);
  v85[23] = v166;
  v85[18] = MEMORY[0x277D85DD0];
  v85[19] = 1107296256;
  v85[20] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v85[21] = &block_descriptor_81;
  v167 = _Block_copy(aBlock);
  v168 = v160;
  static DispatchQoS.unspecified.getter();
  *(v459 + 60) = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x223D76E80](0, v162, v67, v167);
  v169 = v167;
  v1 = v459;
  _Block_release(v169);
  (*(v164 + 8))(v67, v165);
  (*(v163 + 8))(v162, v434);
  v170 = *(v459 + 23);

  *(v459 + 61) = 0;
  v171 = [loge allPublishedLocalStatusDevicesInDatabaseContext:v438 error:v459 + 488];
  v172 = *(v459 + 61);
  if (!v171)
  {
    v253 = *(v459 + 117);
    v254 = *(v459 + 112);
    v255 = v172;

    v256 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v55 = v256;

    goto LABEL_28;
  }

  v173 = *(v459 + 114);
  v174 = v171;
  v68 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v175 = v172;

  v23 = v457;
  v71 = v452;
  if (!(v457 >> 62))
  {
    v28 = *((v457 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_65;
  }

LABEL_172:
  v28 = __CocoaSet.count.getter();
LABEL_65:
  v176 = v454;
  v177 = MEMORY[0x277D84F90];
  v414 = v68;
  if (v28)
  {
    v463[0] = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v28 & ~(v28 >> 63), 0);
    if (v28 < 0)
    {
      goto LABEL_211;
    }

    v178 = 0;
    v177 = v463[0];
    do
    {
      if ((v23 & 0xC000000000000001) != 0)
      {
        v179 = MEMORY[0x223D77050](v178, v23);
      }

      else
      {
        v179 = *(v23 + 8 * v178 + 32);
      }

      v180 = v179;
      v181 = [v180 identifier];
      v182 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v184 = v183;

      v463[0] = v177;
      v186 = *(v177 + 16);
      v185 = *(v177 + 24);
      if (v186 >= v185 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v185 > 1), v186 + 1, 1);
        v177 = v463[0];
      }

      ++v178;
      *(v177 + 16) = v186 + 1;
      v187 = v177 + 16 * v186;
      *(v187 + 32) = v182;
      *(v187 + 40) = v184;
      v176 = v454;
    }

    while (v28 != v178);
  }

  v1 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v177);

  if (v68 >> 62)
  {
    v67 = __CocoaSet.count.getter();
    if (!v67)
    {
      goto LABEL_174;
    }

LABEL_76:
    v188 = 0;
    v423 = v68 & 0xC000000000000001;
    v396 = v68 + 32;
    v400 = v68 & 0xFFFFFFFFFFFFFF8;
    v21 = v1 + 56;
    v409 = v67;
    while (1)
    {
      if (v423)
      {
        v189 = MEMORY[0x223D77050](v188, v414);
      }

      else
      {
        if (v188 >= *(v400 + 16))
        {
          __break(1u);
          goto LABEL_171;
        }

        v189 = *(v396 + 8 * v188);
      }

      v68 = v189;
      v190 = __OFADD__(v188, 1);
      v191 = v188 + 1;
      if (v190)
      {
        __break(1u);
        goto LABEL_159;
      }

      v431 = v191;
      v192 = *(v459 + 63);
      v193 = [v189 idsIdentifier];
      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v195 = v194;

      v196 = [v192 idsDeviceIdentifier];
      if (v196)
      {
        break;
      }

      v176 = v454;
LABEL_78:
      v188 = v431;
      if (v431 == v67)
      {
        goto LABEL_174;
      }
    }

    v434 = v68;
    v197 = v196;
    v198 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v200 = v199;

    if (v28 == v198 && v195 == v200)
    {
    }

    else
    {
      v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v176 = v454;
      if ((v28 & 1) == 0)
      {

LABEL_140:
        v67 = v409;
        goto LABEL_78;
      }
    }

    v201 = v68;
    v202 = [v68 pendingStatuses];
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SKADatabasePublishedLocalStatus, off_27843D3B0);
    v203 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v462 = MEMORY[0x277D84F90];
    if (v203 >> 62)
    {
      v204 = __CocoaSet.count.getter();
      if (v204)
      {
LABEL_91:
        v205 = 0;
        v456 = v203 & 0xFFFFFFFFFFFFFF8;
        v457 = v203 & 0xC000000000000001;
        loga = v203;
        v206 = v203 + 32;
        while (1)
        {
          if (v457)
          {
            v208 = MEMORY[0x223D77050](v205, loga);
          }

          else
          {
            if (v205 >= *(v456 + 16))
            {
              goto LABEL_154;
            }

            v208 = *(v206 + 8 * v205);
          }

          v209 = v208;
          v190 = __OFADD__(v205++, 1);
          if (v190)
          {
            goto LABEL_153;
          }

          v210 = [v208 identifier];
          v211 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v213 = v212;

          if (*(v1 + 16) && (v214 = *(v1 + 40), Hasher.init(_seed:)(), String.hash(into:)(), v215 = Hasher._finalize()(), v216 = -1 << *(v1 + 32), v217 = v215 & ~v216, ((*(v21 + ((v217 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v217) & 1) != 0))
          {
            v218 = ~v216;
            while (1)
            {
              v219 = (*(v1 + 48) + 16 * v217);
              v220 = *v219 == v211 && v219[1] == v213;
              if (v220 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
                break;
              }

              v217 = (v217 + 1) & v218;
              if (((*(v21 + ((v217 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v217) & 1) == 0)
              {
                goto LABEL_92;
              }
            }

            if (v205 == v204)
            {
LABEL_110:
              v201 = v434;
              break;
            }
          }

          else
          {
LABEL_92:

            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            v207 = *(v462 + 16);
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
            if (v205 == v204)
            {
              goto LABEL_110;
            }
          }
        }
      }
    }

    else
    {
      v204 = *((v203 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v204)
      {
        goto LABEL_91;
      }
    }

    v221 = [v201 deliveredStatuses];
    v222 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v456 = v222;
    if (v222 >> 62)
    {
      v223 = __CocoaSet.count.getter();
      v457 = v454;
      if (v223)
      {
LABEL_115:
        v224 = 0;
        v225 = v222 & 0xC000000000000001;
        logb = (v222 & 0xFFFFFFFFFFFFFF8);
        v439 = v222 + 32;
        v457 = v454;
        while (1)
        {
          if (v225)
          {
            v226 = MEMORY[0x223D77050](v224, v456);
          }

          else
          {
            if (v224 >= logb[2].isa)
            {
              goto LABEL_156;
            }

            v226 = *(v439 + 8 * v224);
          }

          v227 = v226;
          v190 = __OFADD__(v224, 1);
          v224 = (v224 + 1);
          if (v190)
          {
            goto LABEL_155;
          }

          v228 = [v226 identifier];
          v229 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v231 = v230;

          if (*(v1 + 16) && (v232 = *(v1 + 40), Hasher.init(_seed:)(), String.hash(into:)(), v233 = Hasher._finalize()(), v234 = -1 << *(v1 + 32), v235 = v233 & ~v234, ((*(v21 + ((v235 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v235) & 1) != 0))
          {
            v236 = ~v234;
            while (1)
            {
              v237 = (*(v1 + 48) + 16 * v235);
              v238 = *v237 == v229 && v237[1] == v231;
              if (v238 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
                break;
              }

              v235 = (v235 + 1) & v236;
              if (((*(v21 + ((v235 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v235) & 1) == 0)
              {
                goto LABEL_131;
              }
            }

            if (v224 == v223)
            {
              break;
            }
          }

          else
          {
LABEL_131:

            v239 = v227;
            MEMORY[0x223D76BD0]();
            if (*((v454 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v454 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v240 = *((v454 & 0xFFFFFFFFFFFFFF8) + 0x10);
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

            v457 = v454;
            if (v224 == v223)
            {
              break;
            }
          }
        }
      }
    }

    else
    {
      v223 = *((v222 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v457 = v454;
      if (v223)
      {
        goto LABEL_115;
      }
    }

    v241 = [v434 idsIdentifier];
    if (!v241)
    {
      v242 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v241 = MEMORY[0x223D76B00](v242);
    }

    v68 = v459;
    v440 = *(v459 + 114);
    logf = *(v459 + 113);
    v456 = *(v459 + 66);
    v243 = [v434 discoverySource];
    v244 = objc_allocWithZone(SKADatabasePublishedLocalStatusDevice);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v246 = Array._bridgeToObjectiveC()().super.isa;

    v247 = [v244 initWithIDSIdentifier:v241 pendingStatuses:isa deliveredStatuses:v246 discoverySource:v243];

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v248 = swift_allocObject();
    *(v248 + 16) = xmmword_2201A7710;
    *(v248 + 32) = v247;
    v249 = v247;
    v250 = Array._bridgeToObjectiveC()().super.isa;

    *(v459 + 62) = 0;
    v28 = [logf createOrUpdatePublishedLocalStatusDevices:v250 databaseContext:v456 error:v459 + 496];

    v251 = *(v459 + 62);
    if (!v28)
    {
      v282 = *(v459 + 117);
      v283 = *(v459 + 112);
      v284 = v251;

      v1 = v459;

      v285 = _convertNSErrorToError(_:)();

      swift_willThrow();
      v55 = v285;

      goto LABEL_28;
    }

    v252 = v251;

    v71 = v452;
    v176 = v454;
    v23 = v454;
    goto LABEL_140;
  }

  v67 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v67)
  {
    goto LABEL_76;
  }

LABEL_174:
  v434 = *(v459 + 67);

  v1 = v459;

  v429 = v71[2];
  v431 = OBJC_IVAR___SKALocalStatusServer_deliverySubjects;
  LODWORD(v456) = v429 == 0;
  v457 = v23;
  if (v429)
  {
    v302 = 0;
    v420 = (*(v459 + 70) + 8);
    v425 = *(v459 + 87);
    v67 = (v71 + 6);
    do
    {
      if (v302 >= v71[2])
      {
        __break(1u);
        goto LABEL_209;
      }

      v309 = *(v1 + 864);
      v310 = *(v67 - 8);
      v311 = *v67;
      v312 = *(v67 - 16);

      SKADatabasePublishedLocalStatus.key.getter(v309);
      v313 = *(v1 + 896);
      logc = v312;
      v442 = v302;
      v314 = *(v1 + 952);
      v315 = *(v1 + 888);
      v316 = *(v1 + 864);
      v317 = *(v1 + 840);
      v318 = *(v1 + 832);
      v319 = *(v1 + 816);
      v320 = *(v1 + 800);
      v321 = *(v459 + 67);
      (*(v317 + 16))(v319, v316, v318);
      v322 = (v319 + *(v320 + 20));
      *v322 = v315;
      v322[1] = v313;
      swift_beginAccess();
      v323 = *(v321 + v314);
      v324 = *(v323 + 16);

      if (v324 && (v325 = specialized __RawDictionaryStorage.find<A>(_:)(*(v459 + 102)), (v326 & 1) != 0))
      {
        v327 = *(v459 + 119);
        v328 = *(v459 + 91);
        v329 = *(v459 + 90);
        v411 = *(v459 + 89);
        v416 = *(v459 + 102);
        v406 = *(v459 + 87);
        v330 = *(v459 + 83);
        v398 = *(v459 + 92);
        v402 = *(v459 + 82);
        v331 = *(v459 + 67);
        outlined init with copy of SKALocalStatusServer.FailedDelivery(*(v323 + 56) + *(*(v459 + 88) + 72) * v325, v328, type metadata accessor for SKALocalStatusServer.FailedDelivery);
        outlined init with take of SKALocalStatusServer.FailedDelivery(v328, v398);
        swift_endAccess();
        (*(v330 + 16))(v329, v398, v402);
        v1 = v459;
        v332 = v329 + *(v406 + 20);
        static Date.now.getter();
        v333 = (v329 + *(v425 + 24));
        *v333 = v310;
        v333[1] = v311;
        swift_beginAccess();
        outlined init with take of SKALocalStatusServer.FailedDelivery(v329, v411);
        v334 = *(v331 + v327);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v463[0] = *(v331 + v327);
        *(v331 + v327) = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v411, v416, isUniquelyReferenced_nonNull_native);
        *(v331 + v327) = v463[0];
        swift_endAccess();
        outlined destroy of SKALocalStatusServer.FailedDelivery.ID(v398, type metadata accessor for SKALocalStatusServer.FailedDelivery);
      }

      else
      {
        v336 = *(v459 + 119);
        v337 = *(v459 + 102);
        v338 = *(v459 + 90);
        v339 = *(v459 + 89);
        v340 = *(v459 + 87);
        v341 = *(v459 + 67);
        swift_endAccess();
        static Date.now.getter();
        v342 = *(v340 + 20);
        v1 = v459;
        static Date.now.getter();
        v343 = (v338 + *(v425 + 24));
        *v343 = v310;
        v343[1] = v311;
        swift_beginAccess();
        outlined init with take of SKALocalStatusServer.FailedDelivery(v338, v339);
        v344 = *(v341 + v336);
        v345 = swift_isUniquelyReferenced_nonNull_native();
        v463[0] = *(v341 + v336);
        *(v341 + v336) = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v339, v337, v345);
        *(v341 + v336) = v463[0];
        swift_endAccess();
      }

      v346 = *(v1 + 536);
      SKALocalStatusServer.currentStatus(for:in:)(*(v1 + 864), *(v1 + 528), *(v1 + 576));
      swift_beginAccess();
      v347 = *&v434[v431];
      if (*(v347 + 16) && (v348 = specialized __RawDictionaryStorage.find<A>(_:)(*(v1 + 864)), (v349 & 1) != 0))
      {
        v350 = *(v1 + 576);
        v351 = *(*(v347 + 56) + 8 * v348);
        swift_endAccess();

        CurrentValueSubject.send(_:)();
      }

      else
      {
        swift_endAccess();
      }

      v303 = *(v1 + 864);
      v304 = *(v1 + 840);
      v305 = *(v1 + 832);
      v306 = *(v1 + 816);
      v307 = *(v1 + 576);
      v308 = *(v1 + 552);

      (*v420)(v307, v308);
      outlined destroy of SKALocalStatusServer.FailedDelivery.ID(v306, type metadata accessor for SKALocalStatusServer.FailedDelivery.ID);
      (*(v304 + 8))(v303, v305);
      v302 = v442 + 1;
      v67 += 24;
      v176 = v454;
      v71 = v452;
    }

    while (v429 != v442 + 1);
  }

  v67 = v457;
  if (v457 >> 62)
  {
    goto LABEL_212;
  }

  for (i = *((v457 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {

    if (!i)
    {
      break;
    }

    v353 = 0;
    v412 = v67 & 0xC000000000000001;
    v407 = v67 & 0xFFFFFFFFFFFFFF8;
    aBlocka = (*(v1 + 560) + 8);
    v399 = i;
    while (1)
    {
      if (v412)
      {
        v360 = MEMORY[0x223D77050](v353, v67);
      }

      else
      {
        if (v353 >= *(v407 + 16))
        {
          goto LABEL_210;
        }

        v360 = *(v67 + 8 * v353 + 32);
      }

      v361 = v360;
      v176 = v353 + 1;
      if (__OFADD__(v353, 1))
      {
        break;
      }

      SKADatabasePublishedLocalStatus.key.getter(*(v1 + 856));
      v362 = *(v1 + 896);
      v417 = v353 + 1;
      v421 = v353;
      logd = v361;
      v363 = *(v1 + 952);
      v364 = *(v1 + 888);
      v365 = *(v1 + 856);
      v366 = *(v1 + 832);
      v367 = *(v1 + 808);
      v368 = *(v1 + 800);
      v443 = *(v1 + 568);
      v369 = *(v1 + 544);
      v370 = *(v1 + 536);
      v426 = v365;
      v430 = *(v1 + 528);
      v403 = *(*(v1 + 840) + 16);
      v403(v367);
      v371 = (v367 + *(v368 + 20));
      *v371 = v364;
      v371[1] = v362;
      swift_beginAccess();

      specialized Dictionary._Variant.removeValue(forKey:)(v367, v369);
      outlined destroy of UUID?(v369, &_s18StatusKitAgentCore08SKALocalA6ServerC14FailedDelivery33_CD99E71FFA5F3CD49F44A2A8DCE05CBELLVSgMd, &_s18StatusKitAgentCore08SKALocalA6ServerC14FailedDelivery33_CD99E71FFA5F3CD49F44A2A8DCE05CBELLVSgMR);
      swift_endAccess();
      SKALocalStatusServer.currentStatus(for:in:)(v426, v430, v443);
      swift_beginAccess();
      v372 = *&v434[v431];
      v71 = v452;
      v67 = v457;
      if (*(v372 + 16) && (v373 = specialized __RawDictionaryStorage.find<A>(_:)(*(v1 + 856)), (v374 & 1) != 0))
      {
        v375 = *(v1 + 568);
        v376 = *(v1 + 552);
        v377 = *(*(v372 + 56) + 8 * v373);
        swift_endAccess();

        CurrentValueSubject.send(_:)();
        v378 = *(LSKPublishedStatus.pendingDevies.getter() + 16);

        if (!v378)
        {
          v379 = *(v1 + 856);
          v380 = *(v1 + 848);
          v381 = *(v1 + 832);
          *(v1 + 1040) = 1;
          CurrentValueSubject.send(completion:)();
          (v403)(v380, v379, v381);
          swift_beginAccess();
          specialized Dictionary.subscript.setter(0, v380);
          swift_endAccess();
        }
      }

      else
      {
        swift_endAccess();
      }

      v354 = *(v1 + 856);
      v355 = *(v1 + 840);
      v356 = *(v1 + 832);
      v357 = *(v1 + 808);
      v358 = *(v1 + 568);
      v359 = *(v1 + 552);

      (*aBlocka)(v358, v359);
      outlined destroy of SKALocalStatusServer.FailedDelivery.ID(v357, type metadata accessor for SKALocalStatusServer.FailedDelivery.ID);
      (*(v355 + 8))(v354, v356);
      v353 = v421 + 1;
      v176 = v454;
      if (v417 == v399)
      {
        goto LABEL_202;
      }
    }

LABEL_209:
    __break(1u);
LABEL_210:
    __break(1u);
LABEL_211:
    __break(1u);
LABEL_212:
    ;
  }

LABEL_202:
  v382 = *(v1 + 896);
  v383 = *(v1 + 880);

  v384 = Logger.logObject.getter();
  v385 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v384, v385))
  {
    v386 = swift_slowAlloc();
    *v386 = 134218240;
    if (v176 >> 62)
    {
      v387 = __CocoaSet.count.getter();
    }

    else
    {
      v387 = *((v176 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v386 + 4) = v387;

    *(v386 + 12) = 2048;
    v388 = v71[2];

    *(v386 + 14) = v388;

    _os_log_impl(&dword_220099000, v384, v385, "Send pending status END {deliveredStatuses.count: %ld, failedStatuses.count: %ld}", v386, 0x16u);
    MEMORY[0x223D77FF0](v386, -1, -1);
  }

  else
  {
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }

  v389 = *(v1 + 936);
  v390 = *(v1 + 536);
  SKALocalStatusServer.updateBrowseTaskDeviceFilter(databaseContext:)(*(v1 + 528));

LABEL_166:
  v290 = *(v1 + 872);
  v291 = *(v1 + 864);
  v292 = *(v1 + 856);
  v293 = *(v459 + 106);
  v294 = *(v459 + 103);
  v295 = *(v459 + 102);
  v296 = *(v459 + 101);
  v297 = *(v459 + 99);
  v298 = *(v459 + 98);
  v299 = *(v459 + 97);
  aBlockb = *(v459 + 96);
  v397 = *(v459 + 94);
  v401 = *(v459 + 93);
  v405 = *(v459 + 92);
  v410 = *(v459 + 91);
  v415 = *(v459 + 90);
  v419 = *(v459 + 89);
  v424 = *(v459 + 86);
  v428 = *(v459 + 85);
  v433 = *(v459 + 84);
  v437 = *(v459 + 81);
  v441 = *(v459 + 78);
  logg = *(v459 + 75);
  v453 = *(v459 + 72);
  v455 = *(v459 + 71);
  v458 = *(v459 + 68);

  v300 = *(v459 + 1);
  v301 = *MEMORY[0x277D85DE8];

  return v300(v456);
}

{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 1008) = v3;
  v4 = *(v1 + 536);
  if (v3)
  {
    v5 = SKALocalStatusServer.deliverPendingStatuses(to:reason:databaseContext:);
  }

  else
  {
    v5 = SKALocalStatusServer.deliverPendingStatuses(to:reason:databaseContext:);
  }

  v6 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v5, v4, 0);
}

{
  v11 = *MEMORY[0x277D85DE8];
  v1 = v0[125];
  v2 = v0[117];
  v3 = v0[67];
  v4 = lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type SKALocalStatusServer and conformance SKALocalStatusServer, type metadata accessor for SKALocalStatusServer);
  v5 = swift_task_alloc();
  v0[127] = v5;
  v5[2] = v3;
  v5[3] = v1;
  v5[4] = v2;
  v6 = *(MEMORY[0x277D85A40] + 4);
  v7 = swift_task_alloc();
  v0[128] = v7;
  *v7 = v0;
  v7[1] = SKALocalStatusServer.deliverPendingStatuses(to:reason:databaseContext:);
  v8 = *MEMORY[0x277D85DE8];
  v9 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v7, v3, v4, 0x743A5F28646E6573, 0xEB00000000293A6FLL, partial apply for closure #1 in SKALocalStatusServer.send(_:to:), v5, v9);
}

{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 1024);
  v12 = *v1;
  *(*v1 + 1032) = v0;

  if (v0)
  {
    v4 = *(v2 + 536);
    v5 = *MEMORY[0x277D85DE8];
    v6 = SKALocalStatusServer.deliverPendingStatuses(to:reason:databaseContext:);
  }

  else
  {
    v7 = *(v2 + 1016);
    v8 = *(v2 + 536);

    v9 = *MEMORY[0x277D85DE8];
    v6 = SKALocalStatusServer.deliverPendingStatuses(to:reason:databaseContext:);
    v4 = v8;
  }

  return MEMORY[0x2822009F8](v6, v4, 0);
}

{
  v463 = v0;
  v1 = v0;
  v462[9] = *MEMORY[0x277D85DE8];
  v2 = *(v0 + 1000);
  v3 = *(v1 + 880);
  v4 = *(v1 + 504);
  v5 = v2;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  v460 = v1;
  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v1 + 1000);
    v9 = *(v1 + 504);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v462[0] = v12;
    *v10 = 136315394;
    v13 = [v8 identifier];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, v462);
    v1 = v460;

    *(v10 + 4) = v17;
    *(v10 + 12) = 2112;
    *(v10 + 14) = v9;
    *v11 = v9;
    v18 = v9;
    _os_log_impl(&dword_220099000, v6, v7, "Status send END {status: %s, device: %@}", v10, 0x16u);
    outlined destroy of UUID?(v11, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x223D77FF0](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x223D77FF0](v12, -1, -1);
    MEMORY[0x223D77FF0](v10, -1, -1);
  }

  MEMORY[0x223D76BD0]();
  if (*((*(v1 + 464) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 464) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_133:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v19 = *(v1 + 1000);
  v20 = *(v1 + 872);
  v21 = *(v1 + 840);
  v22 = *(v1 + 832);
  v23 = *(v1 + 824);
  v24 = *(v1 + 792);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  outlined destroy of UUID?(v24, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  outlined destroy of SKALocalStatusServer.FailedDelivery.ID(v23, type metadata accessor for SKALocalStatusServer.FailedDelivery.ID);
  (*(v21 + 8))(v20, v22);
  v25 = *(v1 + 464);
  v415 = *(v1 + 1032);
  v26 = *(v1 + 968);
  v27 = *(v1 + 960) + 1;
  if (v27 == *(v1 + 928))
  {
    v430 = *(v1 + 968);
    v439 = *(v1 + 464);
    v441 = v439;
    v437 = v439;
    goto LABEL_46;
  }

  v28 = *(v1 + 464);
  v439 = v28;
LABEL_7:
  v437 = v28;
  v29 = v415;
  v430 = v26;
  v441 = v25;
  do
  {
    *(v1 + 992) = v25;
    *(v1 + 984) = v28;
    *(v1 + 976) = v439;
    *(v1 + 968) = v26;
    *(v1 + 960) = v27;
    v55 = *(v1 + 920);
    if ((v55 & 0xC000000000000001) != 0)
    {
      v56 = MEMORY[0x223D77050]();
    }

    else
    {
      v56 = *(v55 + 8 * v27 + 32);
    }

    v57 = v56;
    *(v1 + 1000) = v56;
    SKADatabasePublishedLocalStatus.key.getter(*(v1 + 872));
    if (v29)
    {
      v96 = *(v1 + 1000);
      v97 = *(v1 + 880);
      v98 = *(v1 + 504);
      v99 = v96;
      v100 = v29;
      v101 = Logger.logObject.getter();
      v102 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v101, v102))
      {
        v103 = *(v1 + 1000);
        v104 = *(v1 + 504);
        v105 = swift_slowAlloc();
        v106 = swift_slowAlloc();
        v107 = swift_slowAlloc();
        v462[0] = v107;
        *v105 = 136315650;
        v108 = [v103 identifier];
        v109 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v111 = v110;

        v112 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v109, v111, v462);
        v1 = v460;

        *(v105 + 4) = v112;
        *(v105 + 12) = 2112;
        v113 = v29;
        v114 = _swift_stdlib_bridgeErrorToNSError();
        *(v105 + 14) = v114;
        *(v105 + 22) = 2112;
        *(v105 + 24) = v104;
        *v106 = v114;
        v106[1] = v104;
        v115 = v104;
        _os_log_impl(&dword_220099000, v101, v102, "Status send FAILED {status: %s, error: %@, device: %@}", v105, 0x20u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        swift_arrayDestroy();
        MEMORY[0x223D77FF0](v106, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v107);
        MEMORY[0x223D77FF0](v107, -1, -1);
        MEMORY[0x223D77FF0](v105, -1, -1);
      }

      v116 = _convertErrorToNSError(_:)();
      v117 = [v116 userInfo];
      v118 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      if (*(v118 + 16) && (v119 = specialized __RawDictionaryStorage.find<A>(_:)(0x4D726F7272457563, 0xEA00000000006773), (v120 & 1) != 0))
      {
        outlined init with copy of Any(*(v118 + 56) + 32 * v119, v1 + 192);

        if (swift_dynamicCast())
        {
          v121 = *(v1 + 440);
          v122 = *(v1 + 448);
          goto LABEL_30;
        }
      }

      else
      {
      }

      swift_getErrorValue();
      v124 = *(v1 + 224);
      v123 = *(v1 + 232);
      v125 = *(v1 + 240);
      v121 = Error.localizedDescription.getter();
      v122 = v126;
LABEL_30:
      v127 = *(v1 + 968);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v129 = *(v1 + 968);
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v129 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v129[2] + 1, 1, v129);
      }

      v131 = v129[2];
      v130 = v129[3];
      if (v131 >= v130 >> 1)
      {
        v430 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v130 > 1), v131 + 1, 1, v129);
      }

      else
      {
        v430 = v129;
      }

      v132 = *(v1 + 1000);

      v415 = 0;
      v26 = v430;
      v430[2] = v131 + 1;
      v133 = &v430[3 * v131];
      v133[4] = v132;
      v133[5] = v121;
      v133[6] = v122;
      v25 = *(v1 + 992);
      v28 = *(v1 + 984);
      v439 = *(v1 + 976);
      v27 = *(v1 + 960) + 1;
      if (v27 == *(v1 + 928))
      {
        goto LABEL_130;
      }

      goto LABEL_7;
    }

    v58 = *(v1 + 952);
    v59 = *(v1 + 896);
    v60 = *(v1 + 888);
    v61 = *(v1 + 824);
    v62 = *(v1 + 800);
    v63 = *(v1 + 536);
    (*(*(v1 + 840) + 16))(v61, *(v1 + 872), *(v1 + 832));
    v64 = (v61 + *(v62 + 20));
    *v64 = v60;
    v64[1] = v59;
    swift_beginAccess();
    v65 = *(v63 + v58);
    v66 = *(v65 + 16);

    if (v66 && (v67 = specialized __RawDictionaryStorage.find<A>(_:)(*(v1 + 824)), (v68 & 1) != 0))
    {
      v69 = *(v1 + 792);
      v70 = *(v1 + 752);
      v71 = *(v1 + 744);
      v72 = *(v1 + 696);
      outlined init with copy of SKALocalStatusServer.FailedDelivery(*(v65 + 56) + *(*(v1 + 704) + 72) * v67, v71, type metadata accessor for SKALocalStatusServer.FailedDelivery);
      outlined init with take of SKALocalStatusServer.FailedDelivery(v71, v70);
      swift_endAccess();
      v73 = *(v72 + 20);
      Date.timeIntervalSince(_:)();
      Date.addingTimeInterval(_:)();
      outlined destroy of SKALocalStatusServer.FailedDelivery.ID(v70, type metadata accessor for SKALocalStatusServer.FailedDelivery);
      v74 = 0;
    }

    else
    {
      swift_endAccess();
      v74 = 1;
    }

    v75 = *(v1 + 792);
    v76 = *(v1 + 784);
    v77 = *(v1 + 664);
    v78 = *(v1 + 656);
    (*(v77 + 56))(v75, v74, 1, v78);
    outlined init with copy of (String, Sendable)(v75, v76, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    if ((*(v77 + 48))(v76, 1, v78) == 1)
    {
      outlined destroy of UUID?(*(v1 + 784), &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
LABEL_39:
      v134 = *(v1 + 880);
      v135 = *(v1 + 504);
      outlined init with copy of (String, Sendable)(*(v1 + 792), *(v1 + 776), &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v136 = v135;
      v137 = v57;
      v138 = Logger.logObject.getter();
      v139 = static os_log_type_t.default.getter();

      v140 = os_log_type_enabled(v138, v139);
      v141 = *(v1 + 776);
      if (v140)
      {
        v142 = *(v460 + 768);
        v453 = *(v460 + 760);
        v143 = *(v460 + 504);
        v144 = swift_slowAlloc();
        v145 = swift_slowAlloc();
        v146 = swift_slowAlloc();
        v462[0] = v146;
        *v144 = 138412802;
        *(v144 + 4) = v137;
        *(v144 + 12) = 2112;
        *(v144 + 14) = v143;
        *v145 = v137;
        v145[1] = v143;
        *(v144 + 22) = 2080;
        outlined init with copy of (String, Sendable)(v141, v142, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        v147 = v143;
        v148 = v137;
        v149 = String.init<A>(describing:)();
        v151 = v150;
        outlined destroy of UUID?(v141, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        v152 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v149, v151, v462);
        v1 = v460;

        *(v144 + 24) = v152;
        _os_log_impl(&dword_220099000, v138, v139, "Status send START {status: %@, device: %@, nextAttemptDate: %s}", v144, 0x20u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        swift_arrayDestroy();
        MEMORY[0x223D77FF0](v145, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v146);
        MEMORY[0x223D77FF0](v146, -1, -1);
        MEMORY[0x223D77FF0](v144, -1, -1);
      }

      else
      {

        outlined destroy of UUID?(v141, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      }

      v153 = *(v1 + 1000);
      v154 = *(v1 + 936);
      v155 = *(v1 + 536);
      v156 = lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type SKALocalStatusServer and conformance SKALocalStatusServer, type metadata accessor for SKALocalStatusServer);
      v157 = swift_task_alloc();
      *(v1 + 1016) = v157;
      v157[2] = v155;
      v157[3] = v153;
      v157[4] = v154;
      v158 = *(MEMORY[0x277D85A40] + 4);
      v159 = swift_task_alloc();
      *(v1 + 1024) = v159;
      *v159 = v1;
      v159[1] = SKALocalStatusServer.deliverPendingStatuses(to:reason:databaseContext:);
      v160 = *MEMORY[0x277D85DE8];
      v161 = MEMORY[0x277D84F78] + 8;

      return MEMORY[0x2822008A0](v159, v155, v156, 0x743A5F28646E6573, 0xEB00000000293A6FLL, partial apply for closure #1 in SKALocalStatusServer.send(_:to:), v157, v161);
    }

    v79 = *(v1 + 680);
    v80 = *(v1 + 664);
    v81 = *(v1 + 656);
    (*(v80 + 32))(*(v1 + 688), *(v1 + 784), v81);
    static Date.now.getter();
    v82 = static Date.> infix(_:_:)();
    v83 = *(v80 + 8);
    v83(v79, v81);
    if ((v82 & 1) == 0)
    {
      v83(*(v1 + 688), *(v1 + 656));
      goto LABEL_39;
    }

    v84 = *(v1 + 896);
    v85 = *(v1 + 880);
    (*(*(v1 + 664) + 16))(*(v1 + 672), *(v1 + 688), *(v1 + 656));

    v86 = v57;
    v87 = Logger.logObject.getter();
    v88 = static os_log_type_t.default.getter();
    v452 = v86;

    log = v87;
    if (os_log_type_enabled(v87, v88))
    {
      v30 = *(v1 + 896);
      v393 = *(v1 + 888);
      v432 = *(v1 + 872);
      v420 = *(v1 + 840);
      v424 = *(v1 + 832);
      v416 = *(v1 + 824);
      v406 = *(v1 + 688);
      v411 = *(v1 + 792);
      v31 = *(v1 + 672);
      v32 = *(v1 + 656);
      v402 = v32;
      v33 = swift_slowAlloc();
      v397 = swift_slowAlloc();
      v462[0] = v397;
      *v33 = 136315650;
      lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
      v34 = dispatch thunk of CustomStringConvertible.description.getter();
      v36 = v35;
      v83(v31, v32);
      v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v36, v462);

      *(v33 + 4) = v37;
      *(v33 + 12) = 2080;
      v38 = [v452 identifier];
      v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = v40;

      v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v41, v462);

      *(v33 + 14) = v42;
      *(v33 + 22) = 2080;

      v44 = specialized Collection.prefix(_:)(8, v393, v30, v43);
      v46 = v45;
      v48 = v47;
      v50 = v49;

      v51 = MEMORY[0x223D76B60](v44, v46, v48, v50);
      v53 = v52;

      v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v53, v462);

      *(v33 + 24) = v54;
      _os_log_impl(&dword_220099000, log, v88, "Status send SKIP. Not enough time since latest failed attempt. {nextAttemptDate: %s, status.identifier: %s, idsIdentifier: %s}", v33, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x223D77FF0](v397, -1, -1);
      MEMORY[0x223D77FF0](v33, -1, -1);

      v83(v406, v402);
      outlined destroy of UUID?(v411, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      outlined destroy of SKALocalStatusServer.FailedDelivery.ID(v416, type metadata accessor for SKALocalStatusServer.FailedDelivery.ID);
      (*(v420 + 8))(v432, v424);
    }

    else
    {
      v433 = *(v1 + 872);
      v89 = *(v1 + 840);
      v90 = *(v1 + 832);
      v91 = *(v1 + 824);
      v92 = *(v1 + 792);
      v93 = *(v1 + 688);
      v94 = *(v1 + 672);
      v95 = *(v1 + 656);

      v83(v94, v95);
      v83(v93, v95);
      outlined destroy of UUID?(v92, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      outlined destroy of SKALocalStatusServer.FailedDelivery.ID(v91, type metadata accessor for SKALocalStatusServer.FailedDelivery.ID);
      (*(v89 + 8))(v433, v90);
    }

    v29 = 0;
    v27 = *(v1 + 960) + 1;
    v26 = v430;
    v28 = v437;
    v25 = v441;
  }

  while (v27 != *(v1 + 928));
  v415 = 0;
  while (1)
  {
LABEL_46:
    v162 = (v1 + 144);
    v425 = *(v1 + 944);
    v163 = *(v1 + 936);
    v164 = *(v1 + 920);
    v165 = *(v1 + 904);
    v166 = *(v1 + 624);
    v167 = *(v1 + 616);
    v434 = *(v1 + 608);
    v168 = *(v1 + 600);
    v169 = *(v460 + 592);
    v170 = *(v460 + 584);
    logd = *(v460 + 528);
    v454 = v165;

    v171 = swift_allocObject();
    *(v171 + 16) = v163;
    *(v460 + 176) = partial apply for closure #3 in SKALocalStatusServer.deliverPendingStatuses(to:reason:databaseContext:);
    *(v460 + 184) = v171;
    *(v460 + 144) = MEMORY[0x277D85DD0];
    *(v460 + 152) = 1107296256;
    *(v460 + 160) = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    *(v460 + 168) = &block_descriptor_81;
    v172 = _Block_copy(v162);
    v173 = v163;
    static DispatchQoS.unspecified.getter();
    *(v460 + 480) = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    v174 = &_sSay8Dispatch0A13WorkItemFlagsVGMR;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x223D76E80](0, v166, v168, v172);
    _Block_release(v172);
    (*(v169 + 8))(v168, v170);
    v175 = v460;
    (*(v167 + 8))(v166, v434);
    v176 = *(v460 + 184);

    *(v460 + 488) = 0;
    v177 = [v454 allPublishedLocalStatusDevicesInDatabaseContext:logd error:v460 + 488];
    v178 = *(v460 + 488);
    if (!v177)
    {
      v264 = *(v460 + 936);
      v265 = *(v460 + 896);
      v266 = v178;

      v267 = _convertNSErrorToError(_:)();

      swift_willThrow();
      v174 = v267;

LABEL_176:
      v366 = *(v175 + 880);
      v367 = *(v175 + 504);
      v368 = v174;
      v369 = Logger.logObject.getter();
      v370 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v369, v370))
      {
        v371 = *(v175 + 504);
        v372 = swift_slowAlloc();
        v373 = swift_slowAlloc();
        *v372 = 138412546;
        *(v372 + 4) = v371;
        *v373 = v371;
        *(v372 + 12) = 2112;
        v374 = v371;
        v375 = v174;
        v376 = _swift_stdlib_bridgeErrorToNSError();
        *(v372 + 14) = v376;
        v373[1] = v376;
        _os_log_impl(&dword_220099000, v369, v370, "Send pending status FAILED. Error fetching status devices {clDevice: %@, error: %@}", v372, 0x16u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        swift_arrayDestroy();
        MEMORY[0x223D77FF0](v373, -1, -1);
        MEMORY[0x223D77FF0](v372, -1, -1);
      }

      else
      {
      }

      LODWORD(v411) = 0;
      goto LABEL_180;
    }

    v179 = *(v460 + 912);
    v180 = v177;
    v181 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v182 = v178;

    v25 = v441;
    if (v441 >> 62)
    {
      v183 = __CocoaSet.count.getter();
    }

    else
    {
      v183 = *((v441 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v184 = MEMORY[0x277D84F90];
    v398 = v181;
    if (v183)
    {
      v462[0] = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v183 & ~(v183 >> 63), 0);
      if (v183 < 0)
      {
        goto LABEL_186;
      }

      v174 = 0;
      v184 = v462[0];
      do
      {
        if ((v441 & 0xC000000000000001) != 0)
        {
          v185 = MEMORY[0x223D77050](v174, v441);
        }

        else
        {
          v185 = *(v441 + 8 * v174 + 32);
        }

        v186 = v185;
        v187 = [v186 identifier];
        v188 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v190 = v189;

        v462[0] = v184;
        v192 = *(v184 + 16);
        v191 = *(v184 + 24);
        if (v192 >= v191 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v191 > 1), v192 + 1, 1);
          v184 = v462[0];
        }

        v174 = (v174 + 1);
        *(v184 + 16) = v192 + 1;
        v193 = v184 + 16 * v192;
        *(v193 + 32) = v188;
        *(v193 + 40) = v190;
      }

      while (v183 != v174);
    }

    v1 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v184);

    if (!(v181 >> 62))
    {
      v194 = *((v181 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v194)
      {
        break;
      }

      goto LABEL_60;
    }

    v194 = __CocoaSet.count.getter();
    if (!v194)
    {
      break;
    }

LABEL_60:
    v195 = 0;
    v411 = v181 & 0xC000000000000001;
    v390 = v181 + 32;
    v391 = v181 & 0xFFFFFFFFFFFFFF8;
    v174 = (v1 + 56);
    v407 = v194;
    while (1)
    {
      if (v411)
      {
        v196 = MEMORY[0x223D77050](v195, v398);
      }

      else
      {
        if (v195 >= *(v391 + 16))
        {
          goto LABEL_132;
        }

        v196 = *(v390 + 8 * v195);
      }

      v197 = v196;
      v198 = __OFADD__(v195, 1);
      v199 = v195 + 1;
      if (v198)
      {
        __break(1u);
LABEL_132:
        __break(1u);
        goto LABEL_133;
      }

      v426 = v199;
      v200 = *(v460 + 504);
      v201 = [v196 idsIdentifier];
      v202 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v204 = v203;

      v205 = [v200 idsDeviceIdentifier];
      if (!v205)
      {

        goto LABEL_62;
      }

      v435 = v197;
      v206 = v205;
      v207 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v209 = v208;

      if (v202 == v207 && v204 == v209)
      {

        v210 = v435;
      }

      else
      {
        v211 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v210 = v435;
        if ((v211 & 1) == 0)
        {

          goto LABEL_62;
        }
      }

      v212 = [v210 pendingStatuses];
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SKADatabasePublishedLocalStatus, off_27843D3B0);
      v213 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v214 = v213;
      v461 = MEMORY[0x277D84F90];
      if (!(v213 >> 62))
      {
        v215 = *((v213 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v215)
        {
          break;
        }

        goto LABEL_97;
      }

      v231 = v213;
      v215 = __CocoaSet.count.getter();
      v214 = v231;
      if (v215)
      {
        break;
      }

LABEL_97:

      v232 = [v210 deliveredStatuses];
      v233 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v233 >> 62)
      {
        v234 = __CocoaSet.count.getter();
        logb = v233;
        if (v234)
        {
LABEL_99:
          v235 = 0;
          v439 = v233 + 32;
          while (1)
          {
            if ((v233 & 0xC000000000000001) != 0)
            {
              v236 = MEMORY[0x223D77050](v235, logb);
            }

            else
            {
              if (v235 >= *((v233 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_129;
              }

              v236 = *(v439 + 8 * v235);
            }

            v237 = v236;
            v198 = __OFADD__(v235++, 1);
            if (v198)
            {
              goto LABEL_128;
            }

            v238 = [v236 identifier];
            v239 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v241 = v240;

            if (*(v1 + 16) && (v242 = *(v1 + 40), Hasher.init(_seed:)(), String.hash(into:)(), v243 = Hasher._finalize()(), v244 = -1 << *(v1 + 32), v245 = v243 & ~v244, ((*(v174 + ((v245 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v245) & 1) != 0))
            {
              v25 = ~v244;
              while (1)
              {
                v246 = (*(v1 + 48) + 16 * v245);
                v247 = *v246 == v239 && v246[1] == v241;
                if (v247 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {
                  break;
                }

                v245 = (v245 + 1) & v25;
                if (((*(v174 + ((v245 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v245) & 1) == 0)
                {
                  goto LABEL_115;
                }
              }

              if (v235 == v234)
              {
                break;
              }
            }

            else
            {
LABEL_115:

              v248 = v237;
              MEMORY[0x223D76BD0]();
              if (*((v437 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v437 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                v249 = *((v437 & 0xFFFFFFFFFFFFFF8) + 0x10);
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

              if (v235 == v234)
              {
                break;
              }
            }
          }
        }
      }

      else
      {
        v234 = *((v233 & 0xFFFFFFFFFFFFFF8) + 0x10);
        logb = v233;
        if (v234)
        {
          goto LABEL_99;
        }
      }

      v250 = [v435 idsIdentifier];
      if (!v250)
      {
        v251 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v250 = MEMORY[0x223D76B00](v251);
      }

      v252 = *(v460 + 912);
      loge = *(v460 + 904);
      v456 = *(v460 + 528);
      v253 = [v435 discoverySource];
      v254 = objc_allocWithZone(SKADatabasePublishedLocalStatusDevice);
      isa = Array._bridgeToObjectiveC()().super.isa;

      v256 = Array._bridgeToObjectiveC()().super.isa;

      v257 = [v254 initWithIDSIdentifier:v250 pendingStatuses:isa deliveredStatuses:v256 discoverySource:v253];

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v258 = swift_allocObject();
      *(v258 + 16) = xmmword_2201A7710;
      *(v258 + 32) = v257;
      v259 = v257;
      v260 = Array._bridgeToObjectiveC()().super.isa;

      *(v460 + 496) = 0;
      v261 = [loge createOrUpdatePublishedLocalStatusDevices:v260 databaseContext:v456 error:v460 + 496];

      v262 = *(v460 + 496);
      if (!v261)
      {
        v268 = *(v460 + 936);
        v269 = *(v460 + 896);
        v270 = v262;

        v175 = v460;

        v271 = _convertNSErrorToError(_:)();

        swift_willThrow();
        v174 = v271;

        goto LABEL_176;
      }

      v263 = v262;

      v25 = v437;
LABEL_62:
      v195 = v426;
      if (v426 == v407)
      {
        goto LABEL_136;
      }
    }

    v216 = 0;
    loga = (v214 & 0xFFFFFFFFFFFFFF8);
    v455 = (v214 & 0xC000000000000001);
    v442 = v214;
    v217 = v214 + 32;
    while (1)
    {
      if (v455)
      {
        v219 = MEMORY[0x223D77050](v216, v442);
      }

      else
      {
        if (v216 >= loga[2].isa)
        {
          goto LABEL_127;
        }

        v219 = *(v217 + 8 * v216);
      }

      v25 = v219;
      v198 = __OFADD__(v216, 1);
      v216 = (v216 + 1);
      if (v198)
      {
        break;
      }

      v220 = [v219 identifier];
      v221 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v223 = v222;

      if (*(v1 + 16) && (v224 = *(v1 + 40), Hasher.init(_seed:)(), String.hash(into:)(), v225 = Hasher._finalize()(), v226 = -1 << *(v1 + 32), v227 = v225 & ~v226, ((*(v174 + ((v227 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v227) & 1) != 0))
      {
        v228 = ~v226;
        while (1)
        {
          v229 = (*(v1 + 48) + 16 * v227);
          v230 = *v229 == v221 && v229[1] == v223;
          if (v230 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          v227 = (v227 + 1) & v228;
          if (((*(v174 + ((v227 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v227) & 1) == 0)
          {
            goto LABEL_76;
          }
        }

        if (v216 == v215)
        {
LABEL_94:
          v210 = v435;
          goto LABEL_97;
        }
      }

      else
      {
LABEL_76:

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v218 = *(v461 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        if (v216 == v215)
        {
          goto LABEL_94;
        }
      }
    }

    __break(1u);
LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
LABEL_130:
    v441 = v25;
    v437 = v28;
  }

LABEL_136:
  v439 = *(v460 + 536);

  v272 = v430;
  v273 = v430[2];
  v434 = OBJC_IVAR___SKALocalStatusServer_deliverySubjects;
  LODWORD(v411) = v273 == 0;
  v441 = v25;
  v427 = v273;
  if (v273)
  {
    v274 = 0;
    v421 = *(v460 + 696);
    v412 = (*(v460 + 560) + 8);
    v275 = v430 + 6;
    v175 = v460;
    while (1)
    {
      if (v274 >= v272[2])
      {
        __break(1u);
        goto LABEL_184;
      }

      v457 = v274;
      v282 = *(v175 + 864);
      v283 = *(v275 - 1);
      v284 = *v275;
      v285 = *(v275 - 2);

      v174 = v415;
      SKADatabasePublishedLocalStatus.key.getter(v282);
      v286 = *(v175 + 896);
      if (v415)
      {
        break;
      }

      logc = v285;
      v287 = *(v175 + 952);
      v288 = *(v460 + 888);
      v289 = *(v460 + 816);
      v290 = *(v460 + 800);
      v291 = *(v460 + 536);
      (*(*(v460 + 840) + 16))(v289, *(v460 + 864), *(v460 + 832));
      v292 = (v289 + *(v290 + 20));
      *v292 = v288;
      v292[1] = v286;
      swift_beginAccess();
      v293 = *(v291 + v287);
      v294 = *(v293 + 16);

      if (v294 && (v295 = specialized __RawDictionaryStorage.find<A>(_:)(*(v460 + 816)), (v296 & 1) != 0))
      {
        v297 = *(v460 + 952);
        v417 = *(v460 + 736);
        v298 = *(v460 + 728);
        v299 = *(v460 + 720);
        v403 = *(v460 + 712);
        v408 = *(v460 + 816);
        v399 = *(v460 + 696);
        v300 = *(v460 + 664);
        v394 = *(v460 + 656);
        v301 = *(v460 + 536);
        outlined init with copy of SKALocalStatusServer.FailedDelivery(*(v293 + 56) + *(*(v460 + 704) + 72) * v295, v298, type metadata accessor for SKALocalStatusServer.FailedDelivery);
        v302 = v298;
        v175 = v460;
        outlined init with take of SKALocalStatusServer.FailedDelivery(v302, v417);
        swift_endAccess();
        (*(v300 + 16))(v299, v417, v394);
        v303 = v299 + *(v399 + 20);
        static Date.now.getter();
        v304 = (v299 + *(v421 + 24));
        *v304 = v283;
        v304[1] = v284;
        swift_beginAccess();
        outlined init with take of SKALocalStatusServer.FailedDelivery(v299, v403);
        v305 = *(v301 + v297);
        v306 = swift_isUniquelyReferenced_nonNull_native();
        v462[0] = *(v301 + v297);
        *(v301 + v297) = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v403, v408, v306);
        *(v301 + v297) = v462[0];
        swift_endAccess();
        outlined destroy of SKALocalStatusServer.FailedDelivery.ID(v417, type metadata accessor for SKALocalStatusServer.FailedDelivery);
      }

      else
      {
        v307 = *(v460 + 952);
        v308 = *(v460 + 816);
        v309 = *(v460 + 720);
        v310 = *(v460 + 712);
        v311 = *(v460 + 696);
        v312 = *(v460 + 536);
        swift_endAccess();
        static Date.now.getter();
        v313 = *(v311 + 20);
        v175 = v460;
        static Date.now.getter();
        v314 = (v309 + *(v421 + 24));
        *v314 = v283;
        v314[1] = v284;
        swift_beginAccess();
        outlined init with take of SKALocalStatusServer.FailedDelivery(v309, v310);
        v315 = *(v312 + v307);
        v316 = swift_isUniquelyReferenced_nonNull_native();
        v462[0] = *(v312 + v307);
        *(v312 + v307) = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v310, v308, v316);
        *(v312 + v307) = v462[0];
        swift_endAccess();
      }

      v317 = *(v175 + 536);
      SKALocalStatusServer.currentStatus(for:in:)(*(v175 + 864), *(v175 + 528), *(v175 + 576));
      v25 = v441;
      swift_beginAccess();
      v318 = *&v434[v439];
      if (*(v318 + 16) && (v319 = specialized __RawDictionaryStorage.find<A>(_:)(*(v175 + 864)), (v320 & 1) != 0))
      {
        v321 = *(v175 + 576);
        v322 = *(*(v318 + 56) + 8 * v319);
        swift_endAccess();

        CurrentValueSubject.send(_:)();
      }

      else
      {
        swift_endAccess();
      }

      v274 = v457 + 1;
      v276 = *(v175 + 864);
      v277 = *(v175 + 840);
      v278 = *(v175 + 832);
      v279 = *(v175 + 816);
      v280 = *(v175 + 576);
      v281 = *(v175 + 552);

      (*v412)(v280, v281);
      outlined destroy of SKALocalStatusServer.FailedDelivery.ID(v279, type metadata accessor for SKALocalStatusServer.FailedDelivery.ID);
      (*(v277 + 8))(v276, v278);
      v415 = 0;
      v174 = 0;
      v275 += 3;
      v272 = v430;
      if (v427 == v457 + 1)
      {
        goto LABEL_150;
      }
    }

    v362 = *(v175 + 936);

LABEL_175:

    goto LABEL_176;
  }

  v174 = v415;
  v175 = v460;
LABEL_150:
  if (v25 >> 62)
  {
    goto LABEL_187;
  }

  for (i = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {

    if (!i)
    {
      break;
    }

    v324 = 0;
    v413 = v25 & 0xC000000000000001;
    v409 = v25 & 0xFFFFFFFFFFFFFF8;
    v395 = (*(v175 + 560) + 8);
    v400 = i;
    while (1)
    {
      if (v413)
      {
        v331 = MEMORY[0x223D77050](v324, v25);
      }

      else
      {
        if (v324 >= *(v409 + 16))
        {
          goto LABEL_185;
        }

        v331 = *(v25 + 8 * v324 + 32);
      }

      v332 = v331;
      if (__OFADD__(v324, 1))
      {
        break;
      }

      SKADatabasePublishedLocalStatus.key.getter(*(v175 + 856));
      v333 = *(v175 + 896);
      if (v174)
      {
        v365 = *(v175 + 936);
        swift_bridgeObjectRelease_n();

        goto LABEL_175;
      }

      v458 = v332;
      v418 = v324 + 1;
      v422 = v324;
      v334 = *(v175 + 952);
      v335 = *(v175 + 888);
      v336 = *(v175 + 856);
      v337 = *(v175 + 840);
      v338 = *(v175 + 832);
      v339 = *(v175 + 808);
      v340 = *(v175 + 800);
      logf = *(v175 + 568);
      v341 = *(v460 + 544);
      v342 = *(v460 + 536);
      v428 = *(v460 + 528);
      v404 = *(v337 + 16);
      v404(v339, v336, v338);
      v343 = (v339 + *(v340 + 20));
      *v343 = v335;
      v343[1] = v333;
      swift_beginAccess();

      specialized Dictionary._Variant.removeValue(forKey:)(v339, v341);
      v344 = v341;
      v175 = v460;
      outlined destroy of UUID?(v344, &_s18StatusKitAgentCore08SKALocalA6ServerC14FailedDelivery33_CD99E71FFA5F3CD49F44A2A8DCE05CBELLVSgMd, &_s18StatusKitAgentCore08SKALocalA6ServerC14FailedDelivery33_CD99E71FFA5F3CD49F44A2A8DCE05CBELLVSgMR);
      swift_endAccess();
      SKALocalStatusServer.currentStatus(for:in:)(v336, v428, logf);
      swift_beginAccess();
      v345 = *&v434[v439];
      v25 = v441;
      if (*(v345 + 16) && (v346 = specialized __RawDictionaryStorage.find<A>(_:)(*(v460 + 856)), (v347 & 1) != 0))
      {
        v348 = *(v460 + 568);
        v349 = *(v460 + 552);
        v350 = *(*(v345 + 56) + 8 * v346);
        swift_endAccess();

        CurrentValueSubject.send(_:)();
        v351 = *(LSKPublishedStatus.pendingDevies.getter() + 16);

        if (!v351)
        {
          v352 = *(v460 + 856);
          v353 = *(v460 + 848);
          v354 = *(v460 + 832);
          *(v460 + 1040) = 1;
          CurrentValueSubject.send(completion:)();
          v404(v353, v352, v354);
          swift_beginAccess();
          specialized Dictionary.subscript.setter(0, v353);
          swift_endAccess();
        }
      }

      else
      {
        swift_endAccess();
      }

      v325 = *(v460 + 856);
      v326 = *(v460 + 840);
      v327 = *(v460 + 832);
      v328 = *(v460 + 808);
      v329 = *(v460 + 568);
      v330 = *(v460 + 552);

      (*v395)(v329, v330);
      outlined destroy of SKALocalStatusServer.FailedDelivery.ID(v328, type metadata accessor for SKALocalStatusServer.FailedDelivery.ID);
      (*(v326 + 8))(v325, v327);
      v174 = 0;
      v324 = v422 + 1;
      if (v418 == v400)
      {
        goto LABEL_167;
      }
    }

LABEL_184:
    __break(1u);
LABEL_185:
    __break(1u);
LABEL_186:
    __break(1u);
LABEL_187:
    ;
  }

LABEL_167:
  v355 = *(v175 + 896);
  v356 = *(v175 + 880);

  v357 = Logger.logObject.getter();
  v358 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v357, v358))
  {
    v359 = swift_slowAlloc();
    *v359 = 134218240;
    if (v437 >> 62)
    {
      v360 = __CocoaSet.count.getter();
    }

    else
    {
      v360 = *((v437 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v359 + 4) = v360;

    *(v359 + 12) = 2048;
    v361 = v430[2];

    *(v359 + 14) = v361;

    _os_log_impl(&dword_220099000, v357, v358, "Send pending status END {deliveredStatuses.count: %ld, failedStatuses.count: %ld}", v359, 0x16u);
    MEMORY[0x223D77FF0](v359, -1, -1);
  }

  else
  {
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }

  v363 = *(v175 + 936);
  v364 = *(v175 + 536);
  SKALocalStatusServer.updateBrowseTaskDeviceFilter(databaseContext:)(*(v175 + 528));

LABEL_180:
  v377 = *(v175 + 872);
  v378 = *(v460 + 864);
  v379 = *(v460 + 856);
  v380 = *(v460 + 848);
  v381 = *(v460 + 824);
  v382 = *(v460 + 816);
  v383 = *(v460 + 808);
  v384 = *(v460 + 792);
  v385 = *(v460 + 784);
  v386 = *(v460 + 776);
  v392 = *(v460 + 768);
  v396 = *(v460 + 752);
  v401 = *(v460 + 744);
  v405 = *(v460 + 736);
  v410 = *(v460 + 728);
  v414 = *(v460 + 720);
  v419 = *(v460 + 712);
  v423 = *(v460 + 688);
  v429 = *(v460 + 680);
  v431 = *(v460 + 672);
  v436 = *(v460 + 648);
  v438 = *(v460 + 624);
  v440 = *(v460 + 600);
  v443 = *(v460 + 576);
  logg = *(v460 + 568);
  v459 = *(v460 + 544);

  v387 = *(v460 + 8);
  v388 = *MEMORY[0x277D85DE8];

  return v387(v411);
}

{
  v442 = v0;
  v1 = v0;
  v441[9] = *MEMORY[0x277D85DE8];
  aBlock = v0 + 18;
  v2 = v0[127];
  v3 = v0[109];
  v4 = v0[105];
  v5 = v1[104];
  v6 = v1[103];
  v7 = v1[99];

  outlined destroy of UUID?(v7, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  outlined destroy of SKALocalStatusServer.FailedDelivery.ID(v6, type metadata accessor for SKALocalStatusServer.FailedDelivery.ID);
  (*(v4 + 8))(v3, v5);
  v8 = v1[129];
  v422 = v1;
  v9 = v1[125];
  v10 = v1[110];
  v11 = v1[63];
  v12 = v9;
  v13 = v8;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();

  v418 = v8;
  if (os_log_type_enabled(v14, v15))
  {
    v16 = v1[125];
    v17 = v1[63];
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v441[0] = v20;
    *v18 = 136315650;
    v21 = [v16 identifier];
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    v25 = v22;
    v1 = v422;
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v24, v441);

    *(v18 + 4) = v26;
    *(v18 + 12) = 2112;
    v27 = v8;
    v28 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 14) = v28;
    *(v18 + 22) = 2112;
    *(v18 + 24) = v17;
    *v19 = v28;
    v19[1] = v17;
    v29 = v17;
    _os_log_impl(&dword_220099000, v14, v15, "Status send FAILED {status: %s, error: %@, device: %@}", v18, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    swift_arrayDestroy();
    MEMORY[0x223D77FF0](v19, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x223D77FF0](v20, -1, -1);
    MEMORY[0x223D77FF0](v18, -1, -1);
  }

  v30 = _convertErrorToNSError(_:)();
  v31 = [v30 userInfo];
  v32 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (*(v32 + 16) && (v33 = specialized __RawDictionaryStorage.find<A>(_:)(0x4D726F7272457563, 0xEA00000000006773), (v34 & 1) != 0))
  {
    outlined init with copy of Any(*(v32 + 56) + 32 * v33, (v1 + 24));

    if (swift_dynamicCast())
    {
      v35 = v1[55];
      v36 = v1[56];
      goto LABEL_9;
    }
  }

  else
  {
  }

  swift_getErrorValue();
  v38 = v1[28];
  v37 = v1[29];
  v39 = v1[30];
  v35 = Error.localizedDescription.getter();
  v36 = v40;
LABEL_9:
  v41 = v1[121];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v43 = v1[121];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v43 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v43[2] + 1, 1, v43);
  }

  v45 = v43[2];
  v44 = v43[3];
  if (v45 >= v44 >> 1)
  {
    v414 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v45 + 1, 1, v43);
  }

  else
  {
    v414 = v43;
  }

  v46 = v1[125];

  v47 = v414;
  v414[2] = v45 + 1;
  v48 = &v414[3 * v45];
  v48[4] = v46;
  v48[5] = v35;
  v48[6] = v36;
  v49 = v1[124];
  v50 = v1[123];
  v410 = v1[122];
  v412 = v49;
  v51 = v1[120] + 1;
  v416 = v50;
  if (v51 == v1[116])
  {
LABEL_29:
    v119 = v1[117];
    v120 = v1[115];
    v121 = v1[113];
    v122 = v1[78];
    v123 = v1[77];
    v401 = v1[118];
    v408 = v1[76];
    v124 = v1[75];
    v125 = v1[74];
    v126 = v422[73];
    logd = v422[66];
    v432 = v121;

    v127 = swift_allocObject();
    *(v127 + 16) = v119;
    v422[22] = partial apply for closure #3 in SKALocalStatusServer.deliverPendingStatuses(to:reason:databaseContext:);
    v422[23] = v127;
    v422[18] = MEMORY[0x277D85DD0];
    v422[19] = 1107296256;
    v422[20] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v422[21] = &block_descriptor_81;
    v128 = _Block_copy(aBlock);
    v129 = v119;
    static DispatchQoS.unspecified.getter();
    v422[60] = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x223D76E80](0, v122, v124, v128);
    _Block_release(v128);
    v130 = v126;
    v131 = v422;
    (*(v125 + 8))(v124, v130);
    (*(v123 + 8))(v122, v408);
    v132 = v422[23];

    v422[61] = 0;
    v133 = [v432 allPublishedLocalStatusDevicesInDatabaseContext:logd error:v422 + 61];
    v134 = v422[61];
    if (v133)
    {
      v135 = v422[114];
      v136 = v133;
      v137 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      v138 = v134;

      v139 = v412;
      if (v412 >> 62)
      {
        goto LABEL_124;
      }

      v140 = *((v412 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_32:
      v141 = MEMORY[0x277D84F90];
      v382 = v137;
      if (v140)
      {
        v441[0] = MEMORY[0x277D84F90];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v140 & ~(v140 >> 63), 0);
        if (v140 < 0)
        {
          goto LABEL_170;
        }

        v142 = 0;
        v141 = v441[0];
        do
        {
          if ((v139 & 0xC000000000000001) != 0)
          {
            v143 = MEMORY[0x223D77050](v142, v139);
          }

          else
          {
            v143 = *(v139 + 8 * v142 + 32);
          }

          v144 = v143;
          v145 = [v144 identifier];
          v146 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v148 = v147;

          v441[0] = v141;
          v150 = *(v141 + 16);
          v149 = *(v141 + 24);
          if (v150 >= v149 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v149 > 1), v150 + 1, 1);
            v141 = v441[0];
          }

          ++v142;
          *(v141 + 16) = v150 + 1;
          v151 = v141 + 16 * v150;
          *(v151 + 32) = v146;
          *(v151 + 40) = v148;
        }

        while (v140 != v142);
      }

      v180 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v141);

      if (v137 >> 62)
      {
        v181 = __CocoaSet.count.getter();
        if (v181)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v181 = *((v137 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v181)
        {
LABEL_52:
          v182 = 0;
          v392 = v137 & 0xC000000000000001;
          v373 = v137 & 0xFFFFFFFFFFFFFF8;
          v368 = v137 + 32;
          v140 = v180 + 56;
          v390 = v181;
          do
          {
            if (v392)
            {
              v183 = MEMORY[0x223D77050](v182, v137);
            }

            else
            {
              if (v182 >= *(v373 + 16))
              {
                goto LABEL_123;
              }

              v183 = *(v368 + 8 * v182);
            }

            v184 = v183;
            v185 = __OFADD__(v182, 1);
            v186 = v182 + 1;
            if (v185)
            {
LABEL_122:
              __break(1u);
LABEL_123:
              __break(1u);
LABEL_124:
              v140 = __CocoaSet.count.getter();
              goto LABEL_32;
            }

            v402 = v186;
            v187 = v422[63];
            v188 = [v183 idsIdentifier];
            v189 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v191 = v190;

            v192 = [v187 idsDeviceIdentifier];
            if (v192)
            {
              v408 = v184;
              v193 = v192;
              v194 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v196 = v195;

              if (v189 == v194 && v191 == v196)
              {

                v197 = v408;
              }

              else
              {
                v198 = _stringCompareWithSmolCheck(_:_:expecting:)();

                v197 = v408;
                if ((v198 & 1) == 0)
                {

                  goto LABEL_54;
                }
              }

              v199 = [v197 pendingStatuses];
              type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SKADatabasePublishedLocalStatus, off_27843D3B0);
              v200 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

              v440 = MEMORY[0x277D84F90];
              if (v200 >> 62)
              {
                v201 = __CocoaSet.count.getter();
                if (v201)
                {
LABEL_67:
                  v202 = 0;
                  loga = (v200 & 0xFFFFFFFFFFFFFF8);
                  v434 = (v200 & 0xC000000000000001);
                  v412 = v200;
                  v137 = v200 + 32;
                  while (1)
                  {
                    if (v434)
                    {
                      v204 = MEMORY[0x223D77050](v202, v412);
                    }

                    else
                    {
                      if (v202 >= loga[2].isa)
                      {
                        goto LABEL_119;
                      }

                      v204 = *(v137 + 8 * v202);
                    }

                    v205 = v204;
                    v185 = __OFADD__(v202, 1);
                    v202 = (v202 + 1);
                    if (v185)
                    {
                      break;
                    }

                    v206 = [v204 identifier];
                    v139 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v208 = v207;

                    if (*(v180 + 16) && (v209 = *(v180 + 40), Hasher.init(_seed:)(), String.hash(into:)(), v210 = Hasher._finalize()(), v211 = -1 << *(v180 + 32), v212 = v210 & ~v211, ((*(v140 + ((v212 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v212) & 1) != 0))
                    {
                      v213 = ~v211;
                      while (1)
                      {
                        v214 = (*(v180 + 48) + 16 * v212);
                        v215 = *v214 == v139 && v214[1] == v208;
                        if (v215 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                        {
                          break;
                        }

                        v212 = (v212 + 1) & v213;
                        if (((*(v140 + ((v212 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v212) & 1) == 0)
                        {
                          goto LABEL_68;
                        }
                      }

                      if (v202 == v201)
                      {
LABEL_86:
                        v197 = v408;
                        goto LABEL_89;
                      }
                    }

                    else
                    {
LABEL_68:

                      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
                      v203 = *(v440 + 16);
                      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
                      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                      specialized ContiguousArray._endMutation()();
                      if (v202 == v201)
                      {
                        goto LABEL_86;
                      }
                    }
                  }

                  __break(1u);
LABEL_119:
                  __break(1u);
                  goto LABEL_120;
                }
              }

              else
              {
                v201 = *((v200 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v201)
                {
                  goto LABEL_67;
                }
              }

LABEL_89:

              v216 = [v197 deliveredStatuses];
              v217 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

              if (v217 >> 62)
              {
                v139 = __CocoaSet.count.getter();
                logb = v217;
                if (v139)
                {
LABEL_91:
                  v218 = 0;
                  v435 = (v217 & 0xC000000000000001);
                  v410 = v217 + 32;
                  v412 = v217 & 0xFFFFFFFFFFFFFF8;
                  v137 = v416;
                  while (1)
                  {
                    if (v435)
                    {
                      v219 = MEMORY[0x223D77050](v218, logb);
                    }

                    else
                    {
                      if (v218 >= *(v412 + 16))
                      {
                        goto LABEL_121;
                      }

                      v219 = *(v410 + 8 * v218);
                    }

                    v220 = v219;
                    v185 = __OFADD__(v218++, 1);
                    if (v185)
                    {
                      break;
                    }

                    v221 = [v219 identifier];
                    v222 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v224 = v223;

                    if (*(v180 + 16) && (v225 = *(v180 + 40), Hasher.init(_seed:)(), String.hash(into:)(), v226 = Hasher._finalize()(), v227 = -1 << *(v180 + 32), v228 = v226 & ~v227, ((*(v140 + ((v228 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v228) & 1) != 0))
                    {
                      v229 = ~v227;
                      while (1)
                      {
                        v230 = (*(v180 + 48) + 16 * v228);
                        v231 = *v230 == v222 && v230[1] == v224;
                        if (v231 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                        {
                          break;
                        }

                        v228 = (v228 + 1) & v229;
                        if (((*(v140 + ((v228 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v228) & 1) == 0)
                        {
                          goto LABEL_107;
                        }
                      }

                      if (v218 == v139)
                      {
                        goto LABEL_112;
                      }
                    }

                    else
                    {
LABEL_107:

                      v232 = v220;
                      MEMORY[0x223D76BD0]();
                      if (*((v416 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v416 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                      {
                        v233 = *((v416 & 0xFFFFFFFFFFFFFF8) + 0x10);
                        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                      }

                      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

                      v137 = v416;
                      if (v218 == v139)
                      {
                        goto LABEL_112;
                      }
                    }
                  }

LABEL_120:
                  __break(1u);
LABEL_121:
                  __break(1u);
                  goto LABEL_122;
                }
              }

              else
              {
                v139 = *((v217 & 0xFFFFFFFFFFFFFF8) + 0x10);
                logb = v217;
                if (v139)
                {
                  goto LABEL_91;
                }
              }

LABEL_112:

              v234 = [v408 idsIdentifier];
              if (!v234)
              {
                v235 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v234 = MEMORY[0x223D76B00](v235);
              }

              v412 = v422[114];
              v236 = v422[113];
              loge = v236;
              v436 = v422[66];
              v237 = [v408 discoverySource];
              v238 = objc_allocWithZone(SKADatabasePublishedLocalStatusDevice);
              isa = Array._bridgeToObjectiveC()().super.isa;

              v240 = Array._bridgeToObjectiveC()().super.isa;

              v241 = [v238 initWithIDSIdentifier:v234 pendingStatuses:isa deliveredStatuses:v240 discoverySource:v237];

              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
              v242 = swift_allocObject();
              *(v242 + 16) = xmmword_2201A7710;
              *(v242 + 32) = v241;
              v243 = v241;
              v244 = Array._bridgeToObjectiveC()().super.isa;

              v422[62] = 0;
              v245 = [loge createOrUpdatePublishedLocalStatusDevices:v244 databaseContext:v436 error:v422 + 62];

              v246 = v422[62];
              if (!v245)
              {
                v253 = v422[117];
                v254 = v422[112];
                v255 = v246;

                v131 = v422;

                v256 = _convertNSErrorToError(_:)();

                swift_willThrow();
                v252 = v256;

                goto LABEL_160;
              }

              v247 = v246;

              v139 = v416;
              v137 = v382;
            }

            else
            {
            }

LABEL_54:
            v182 = v402;
          }

          while (v402 != v390);
        }
      }

      v410 = v422[67];

      v257 = v414;
      v403 = v414[2];
      v408 = OBJC_IVAR___SKALocalStatusServer_deliverySubjects;
      LODWORD(v390) = v403 == 0;
      v412 = v139;
      if (v403)
      {
        v258 = 0;
        v393 = (v422[70] + 8);
        v397 = v422[87];
        v259 = (v414 + 6);
        do
        {
          if (v258 >= v257[2])
          {
            __break(1u);
            goto LABEL_168;
          }

          v265 = v422[108];
          v266 = *(v259 - 1);
          v267 = *v259;
          v268 = *(v259 - 2);

          SKADatabasePublishedLocalStatus.key.getter(v265);
          v269 = v422[112];
          logc = v268;
          v437 = v258;
          v419 = v259;
          v270 = v422[119];
          v271 = v422[111];
          v272 = v422[102];
          v273 = v422[100];
          v274 = v422[67];
          (*(v422[105] + 16))(v272, v422[108], v422[104]);
          v275 = (v272 + *(v273 + 20));
          *v275 = v271;
          v275[1] = v269;
          swift_beginAccess();
          v276 = *(v274 + v270);
          v277 = *(v276 + 16);

          if (v277 && (v278 = specialized __RawDictionaryStorage.find<A>(_:)(v422[102]), (v279 & 1) != 0))
          {
            v280 = v422[119];
            v369 = v422[92];
            v281 = v422[91];
            v282 = v422[90];
            v383 = v422[89];
            v387 = v422[102];
            v283 = v422[83];
            v374 = v422[82];
            v378 = v422[87];
            v284 = v422[67];
            outlined init with copy of SKALocalStatusServer.FailedDelivery(*(v276 + 56) + *(v422[88] + 72) * v278, v281, type metadata accessor for SKALocalStatusServer.FailedDelivery);
            outlined init with take of SKALocalStatusServer.FailedDelivery(v281, v369);
            swift_endAccess();
            (*(v283 + 16))(v282, v369, v374);
            v285 = v282 + *(v378 + 20);
            static Date.now.getter();
            v286 = (v282 + *(v397 + 24));
            *v286 = v266;
            v286[1] = v267;
            swift_beginAccess();
            outlined init with take of SKALocalStatusServer.FailedDelivery(v282, v383);
            v287 = *(v284 + v280);
            v288 = swift_isUniquelyReferenced_nonNull_native();
            v441[0] = *(v284 + v280);
            *(v284 + v280) = 0x8000000000000000;
            specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v383, v387, v288);
            *(v284 + v280) = v441[0];
            swift_endAccess();
            outlined destroy of SKALocalStatusServer.FailedDelivery.ID(v369, type metadata accessor for SKALocalStatusServer.FailedDelivery);
          }

          else
          {
            v289 = v422[119];
            v290 = v422[102];
            v291 = v422[90];
            v292 = v422[89];
            v293 = v422[87];
            v294 = v422[67];
            swift_endAccess();
            static Date.now.getter();
            v295 = v291 + *(v293 + 20);
            static Date.now.getter();
            v296 = (v291 + *(v397 + 24));
            *v296 = v266;
            v296[1] = v267;
            swift_beginAccess();
            outlined init with take of SKALocalStatusServer.FailedDelivery(v291, v292);
            v297 = *(v294 + v289);
            v298 = swift_isUniquelyReferenced_nonNull_native();
            v441[0] = *(v294 + v289);
            *(v294 + v289) = 0x8000000000000000;
            specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v292, v290, v298);
            *(v294 + v289) = v441[0];
            swift_endAccess();
          }

          v299 = v422[67];
          SKALocalStatusServer.currentStatus(for:in:)(v422[108], v422[66], v422[72]);
          v139 = v412;
          swift_beginAccess();
          v300 = *&v408[v410];
          if (*(v300 + 16) && (v301 = specialized __RawDictionaryStorage.find<A>(_:)(v422[108]), (v302 & 1) != 0))
          {
            v303 = v422[72];
            v304 = *(*(v300 + 56) + 8 * v301);
            swift_endAccess();

            CurrentValueSubject.send(_:)();
          }

          else
          {
            swift_endAccess();
          }

          v258 = v437 + 1;
          v260 = v422[108];
          v261 = v422[105];
          v140 = v422[104];
          v262 = v422[102];
          v263 = v422[72];
          v264 = v422[69];

          (*v393)(v263, v264);
          outlined destroy of SKALocalStatusServer.FailedDelivery.ID(v262, type metadata accessor for SKALocalStatusServer.FailedDelivery.ID);
          (*(v261 + 8))(v260, v140);
          v259 = v419 + 24;
          v257 = v414;
        }

        while (v403 != v437 + 1);
      }

      v140 = v416;
      if (v139 >> 62)
      {
        goto LABEL_171;
      }

      for (i = *((v139 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
      {
        v131 = v422;

        if (!i)
        {
          break;
        }

        v306 = 0;
        v384 = v139 & 0xFFFFFFFFFFFFFF8;
        v388 = v139 & 0xC000000000000001;
        v370 = (v422[70] + 8);
        v375 = i;
        while (1)
        {
          if (v388)
          {
            v313 = MEMORY[0x223D77050](v306, v139);
          }

          else
          {
            if (v306 >= *(v384 + 16))
            {
              goto LABEL_169;
            }

            v313 = *(v139 + 8 * v306 + 32);
          }

          v140 = v313;
          if (__OFADD__(v306, 1))
          {
            break;
          }

          SKADatabasePublishedLocalStatus.key.getter(v422[107]);
          v314 = v422[112];
          v394 = v306 + 1;
          v398 = v306;
          v438 = v140;
          v315 = v422[119];
          v316 = v422[111];
          v404 = v422[107];
          v317 = v422[104];
          v318 = v422[101];
          v319 = v422[100];
          logf = v422[71];
          v320 = v422[68];
          v321 = v422[67];
          v420 = v422[66];
          v379 = *(v422[105] + 16);
          v379(v318);
          v322 = (v318 + *(v319 + 20));
          *v322 = v316;
          v322[1] = v314;
          swift_beginAccess();

          specialized Dictionary._Variant.removeValue(forKey:)(v318, v320);
          outlined destroy of UUID?(v320, &_s18StatusKitAgentCore08SKALocalA6ServerC14FailedDelivery33_CD99E71FFA5F3CD49F44A2A8DCE05CBELLVSgMd, &_s18StatusKitAgentCore08SKALocalA6ServerC14FailedDelivery33_CD99E71FFA5F3CD49F44A2A8DCE05CBELLVSgMR);
          swift_endAccess();
          SKALocalStatusServer.currentStatus(for:in:)(v404, v420, logf);
          swift_beginAccess();
          v323 = *&v408[v410];
          v139 = v412;
          if (*(v323 + 16) && (v324 = specialized __RawDictionaryStorage.find<A>(_:)(v422[107]), (v325 & 1) != 0))
          {
            v326 = v422[71];
            v327 = v422[69];
            v328 = *(*(v323 + 56) + 8 * v324);
            swift_endAccess();

            CurrentValueSubject.send(_:)();
            v329 = *(LSKPublishedStatus.pendingDevies.getter() + 16);

            v140 = v416;
            if (!v329)
            {
              v330 = v422[107];
              v331 = v422[106];
              v332 = v422[104];
              *(v422 + 1040) = 1;
              CurrentValueSubject.send(completion:)();
              (v379)(v331, v330, v332);
              swift_beginAccess();
              specialized Dictionary.subscript.setter(0, v331);
              swift_endAccess();
            }
          }

          else
          {
            swift_endAccess();
            v140 = v416;
          }

          v307 = v422[107];
          v308 = v422[105];
          v309 = v422[104];
          v310 = v422[101];
          v311 = v422[71];
          v312 = v422[69];

          (*v370)(v311, v312);
          outlined destroy of SKALocalStatusServer.FailedDelivery.ID(v310, type metadata accessor for SKALocalStatusServer.FailedDelivery.ID);
          (*(v308 + 8))(v307, v309);
          v306 = v398 + 1;
          if (v394 == v375)
          {
            goto LABEL_154;
          }
        }

LABEL_168:
        __break(1u);
LABEL_169:
        __break(1u);
LABEL_170:
        __break(1u);
LABEL_171:
        ;
      }

LABEL_154:
      v333 = v422[112];
      v334 = v422[110];

      v335 = Logger.logObject.getter();
      v336 = v140;
      v337 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v335, v337))
      {
        v338 = swift_slowAlloc();
        *v338 = 134218240;
        if (v336 >> 62)
        {
          v339 = __CocoaSet.count.getter();
        }

        else
        {
          v339 = *((v336 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v338 + 4) = v339;

        *(v338 + 12) = 2048;
        v340 = v414[2];

        *(v338 + 14) = v340;

        _os_log_impl(&dword_220099000, v335, v337, "Send pending status END {deliveredStatuses.count: %ld, failedStatuses.count: %ld}", v338, 0x16u);
        MEMORY[0x223D77FF0](v338, -1, -1);
      }

      else
      {
        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();
      }

      v341 = v422[117];
      v342 = v422[67];
      SKALocalStatusServer.updateBrowseTaskDeviceFilter(databaseContext:)(v422[66]);
    }

    else
    {
      v248 = v422[117];
      v249 = v422[112];
      v250 = v134;

      v251 = _convertNSErrorToError(_:)();

      swift_willThrow();
      v252 = v251;

LABEL_160:
      v343 = v131[110];
      v344 = v131[63];
      v345 = v252;
      v346 = Logger.logObject.getter();
      v347 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v346, v347))
      {
        v348 = v131[63];
        v349 = swift_slowAlloc();
        v350 = swift_slowAlloc();
        *v349 = 138412546;
        *(v349 + 4) = v348;
        *v350 = v348;
        *(v349 + 12) = 2112;
        v351 = v348;
        v352 = v252;
        v353 = _swift_stdlib_bridgeErrorToNSError();
        *(v349 + 14) = v353;
        v350[1] = v353;
        _os_log_impl(&dword_220099000, v346, v347, "Send pending status FAILED. Error fetching status devices {clDevice: %@, error: %@}", v349, 0x16u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        swift_arrayDestroy();
        MEMORY[0x223D77FF0](v350, -1, -1);
        MEMORY[0x223D77FF0](v349, -1, -1);
      }

      else
      {
      }

      LODWORD(v390) = 0;
    }

    v354 = v131[109];
    v355 = v131[108];
    v356 = v131[107];
    v357 = v131[106];
    v358 = v131[103];
    v359 = v131[102];
    v360 = v131[101];
    v361 = v131[99];
    v362 = v131[98];
    v363 = v422[97];
    v371 = v422[96];
    v376 = v422[94];
    v380 = v422[93];
    v385 = v422[92];
    v389 = v422[91];
    v395 = v422[90];
    v399 = v422[89];
    v405 = v422[86];
    v409 = v422[85];
    v411 = v422[84];
    v413 = v422[81];
    v415 = v422[78];
    v417 = v422[75];
    v421 = v422[72];
    logg = v422[71];
    v439 = v422[68];

    v364 = v422[1];
    v365 = *MEMORY[0x277D85DE8];

    return v364(v390);
  }

  else
  {
    while (1)
    {
      v1[124] = v49;
      v1[123] = v50;
      v1[122] = v410;
      v1[121] = v47;
      v1[120] = v51;
      v78 = v1[115];
      if ((v78 & 0xC000000000000001) != 0)
      {
        v79 = MEMORY[0x223D77050]();
      }

      else
      {
        v79 = *(v78 + 8 * v51 + 32);
      }

      v80 = v79;
      v1[125] = v79;
      SKADatabasePublishedLocalStatus.key.getter(v1[109]);
      v81 = v1[119];
      v82 = v1[112];
      v83 = v1[111];
      v84 = v1[103];
      v85 = v1[100];
      v86 = v1[67];
      (*(v1[105] + 16))(v84, v1[109], v1[104]);
      v87 = (v84 + *(v85 + 20));
      *v87 = v83;
      v87[1] = v82;
      swift_beginAccess();
      v88 = *(v86 + v81);
      v89 = *(v88 + 16);

      if (v89 && (v90 = specialized __RawDictionaryStorage.find<A>(_:)(v1[103]), (v91 & 1) != 0))
      {
        v92 = v1[99];
        v93 = v1[94];
        v94 = v1[93];
        v95 = v1[87];
        outlined init with copy of SKALocalStatusServer.FailedDelivery(*(v88 + 56) + *(v1[88] + 72) * v90, v94, type metadata accessor for SKALocalStatusServer.FailedDelivery);
        outlined init with take of SKALocalStatusServer.FailedDelivery(v94, v93);
        swift_endAccess();
        v96 = *(v95 + 20);
        Date.timeIntervalSince(_:)();
        Date.addingTimeInterval(_:)();
        outlined destroy of SKALocalStatusServer.FailedDelivery.ID(v93, type metadata accessor for SKALocalStatusServer.FailedDelivery);
        v97 = 0;
      }

      else
      {
        swift_endAccess();
        v97 = 1;
      }

      v98 = v1[99];
      v99 = v1[98];
      v100 = v1[83];
      v101 = v1[82];
      (*(v100 + 56))(v98, v97, 1, v101);
      outlined init with copy of (String, Sendable)(v98, v99, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      if ((*(v100 + 48))(v99, 1, v101) == 1)
      {
        outlined destroy of UUID?(v1[98], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        goto LABEL_44;
      }

      v102 = v1[85];
      v103 = v1[83];
      v104 = v1[82];
      (*(v103 + 32))(v1[86], v1[98], v104);
      static Date.now.getter();
      v105 = static Date.> infix(_:_:)();
      v106 = *(v103 + 8);
      v106(v102, v104);
      if ((v105 & 1) == 0)
      {
        break;
      }

      v107 = v1[112];
      v108 = v1[110];
      (*(v1[83] + 16))(v1[84], v1[86], v1[82]);

      v109 = v80;
      v110 = Logger.logObject.getter();
      v111 = static os_log_type_t.default.getter();
      v431 = v109;

      log = v110;
      if (os_log_type_enabled(v110, v111))
      {
        v52 = v1[112];
        v372 = v1[111];
        v400 = v1[104];
        v406 = v1[109];
        v391 = v1[103];
        v396 = v1[105];
        v386 = v1[86];
        v390 = v1[99];
        v53 = v1[84];
        v54 = v1[82];
        v55 = v1;
        v56 = swift_slowAlloc();
        v377 = swift_slowAlloc();
        v441[0] = v377;
        *v56 = 136315650;
        lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
        v381 = v54;
        v57 = dispatch thunk of CustomStringConvertible.description.getter();
        v59 = v58;
        v106(v53, v54);
        v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v59, v441);

        *(v56 + 4) = v60;
        *(v56 + 12) = 2080;
        v61 = [v431 identifier];
        v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v64 = v63;

        v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v64, v441);

        *(v56 + 14) = v65;
        *(v56 + 22) = 2080;

        v67 = specialized Collection.prefix(_:)(8, v372, v52, v66);
        v69 = v68;
        v71 = v70;
        v73 = v72;

        v74 = MEMORY[0x223D76B60](v67, v69, v71, v73);
        v76 = v75;

        v77 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v74, v76, v441);

        *(v56 + 24) = v77;
        _os_log_impl(&dword_220099000, log, v111, "Status send SKIP. Not enough time since latest failed attempt. {nextAttemptDate: %s, status.identifier: %s, idsIdentifier: %s}", v56, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x223D77FF0](v377, -1, -1);
        MEMORY[0x223D77FF0](v56, -1, -1);

        v106(v386, v381);
        outlined destroy of UUID?(v390, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        outlined destroy of SKALocalStatusServer.FailedDelivery.ID(v391, type metadata accessor for SKALocalStatusServer.FailedDelivery.ID);
        (*(v396 + 8))(v406, v400);
      }

      else
      {
        v407 = v1[109];
        v112 = v1[105];
        v113 = v1[104];
        v114 = v1[103];
        v115 = v1[99];
        v55 = v1;
        v116 = v1[86];
        v117 = v55[84];
        v118 = v55[82];

        v106(v117, v118);
        v106(v116, v118);
        outlined destroy of UUID?(v115, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        outlined destroy of SKALocalStatusServer.FailedDelivery.ID(v114, type metadata accessor for SKALocalStatusServer.FailedDelivery.ID);
        (*(v112 + 8))(v407, v113);
      }

      v51 = v55[120] + 1;
      v1 = v55;
      v47 = v414;
      v50 = v416;
      v49 = v412;
      if (v51 == v55[116])
      {
        goto LABEL_29;
      }
    }

    v106(v1[86], v1[82]);
LABEL_44:
    v152 = v1[110];
    v153 = v1[63];
    outlined init with copy of (String, Sendable)(v1[99], v1[97], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v154 = v153;
    v155 = v80;
    v156 = Logger.logObject.getter();
    v157 = static os_log_type_t.default.getter();

    v158 = os_log_type_enabled(v156, v157);
    v159 = v1[97];
    if (v158)
    {
      v160 = v1[96];
      v433 = v1[95];
      v161 = v1[63];
      v162 = swift_slowAlloc();
      v163 = swift_slowAlloc();
      v164 = swift_slowAlloc();
      v441[0] = v164;
      *v162 = 138412802;
      *(v162 + 4) = v155;
      *(v162 + 12) = 2112;
      *(v162 + 14) = v161;
      *v163 = v155;
      v163[1] = v161;
      *(v162 + 22) = 2080;
      outlined init with copy of (String, Sendable)(v159, v160, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v165 = v161;
      v166 = v155;
      v167 = String.init<A>(describing:)();
      v169 = v168;
      outlined destroy of UUID?(v159, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v170 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v167, v169, v441);

      *(v162 + 24) = v170;
      _os_log_impl(&dword_220099000, v156, v157, "Status send START {status: %@, device: %@, nextAttemptDate: %s}", v162, 0x20u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      swift_arrayDestroy();
      MEMORY[0x223D77FF0](v163, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v164);
      MEMORY[0x223D77FF0](v164, -1, -1);
      MEMORY[0x223D77FF0](v162, -1, -1);
    }

    else
    {

      outlined destroy of UUID?(v159, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    }

    v171 = v1[125];
    v172 = v1[117];
    v173 = v1[67];
    v174 = lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type SKALocalStatusServer and conformance SKALocalStatusServer, type metadata accessor for SKALocalStatusServer);
    v175 = swift_task_alloc();
    v1[127] = v175;
    v175[2] = v173;
    v175[3] = v171;
    v175[4] = v172;
    v176 = *(MEMORY[0x277D85A40] + 4);
    v177 = swift_task_alloc();
    v1[128] = v177;
    *v177 = v1;
    v177[1] = SKALocalStatusServer.deliverPendingStatuses(to:reason:databaseContext:);
    v178 = *MEMORY[0x277D85DE8];
    v179 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822008A0](v177, v173, v174, 0x743A5F28646E6573, 0xEB00000000293A6FLL, partial apply for closure #1 in SKALocalStatusServer.send(_:to:), v175, v179);
  }
}

{
  v441 = v0;
  v1 = v0;
  v440[9] = *MEMORY[0x277D85DE8];
  aBlock = v0 + 18;
  v2 = v0[126];
  v3 = v0[109];
  v4 = v0[105];
  v5 = v1[104];
  v6 = v1[103];
  v7 = v1[99];
  swift_willThrow();
  outlined destroy of UUID?(v7, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  outlined destroy of SKALocalStatusServer.FailedDelivery.ID(v6, type metadata accessor for SKALocalStatusServer.FailedDelivery.ID);
  (*(v4 + 8))(v3, v5);
  v8 = v1[126];
  v419 = v1;
  v9 = v1[125];
  v10 = v1[110];
  v11 = v1[63];
  v12 = v9;
  v13 = v8;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();

  v406 = v2;
  if (os_log_type_enabled(v14, v15))
  {
    v16 = v1[125];
    v17 = v419[63];
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v428 = swift_slowAlloc();
    v440[0] = v428;
    *v18 = 136315650;
    v20 = [v16 identifier];
    v21 = v8;
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    v25 = v22;
    v8 = v21;
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v24, v440);

    *(v18 + 4) = v26;
    v1 = v419;
    *(v18 + 12) = 2112;
    v27 = v21;
    v28 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 14) = v28;
    *(v18 + 22) = 2112;
    *(v18 + 24) = v17;
    *v19 = v28;
    v19[1] = v17;
    v29 = v17;
    _os_log_impl(&dword_220099000, v14, v15, "Status send FAILED {status: %s, error: %@, device: %@}", v18, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    swift_arrayDestroy();
    MEMORY[0x223D77FF0](v19, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v428);
    MEMORY[0x223D77FF0](v428, -1, -1);
    MEMORY[0x223D77FF0](v18, -1, -1);
  }

  v30 = _convertErrorToNSError(_:)();
  v31 = [v30 userInfo];
  v32 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (*(v32 + 16) && (v33 = specialized __RawDictionaryStorage.find<A>(_:)(0x4D726F7272457563, 0xEA00000000006773), (v34 & 1) != 0))
  {
    outlined init with copy of Any(*(v32 + 56) + 32 * v33, (v1 + 24));

    if (swift_dynamicCast())
    {
      v35 = v1[55];
      v36 = v1[56];
      goto LABEL_9;
    }
  }

  else
  {
  }

  swift_getErrorValue();
  v38 = v1[28];
  v37 = v1[29];
  v39 = v1[30];
  v35 = Error.localizedDescription.getter();
  v36 = v40;
LABEL_9:
  v41 = v1[121];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v43 = v1[121];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v43 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v43[2] + 1, 1, v43);
  }

  v45 = v43[2];
  v44 = v43[3];
  if (v45 >= v44 >> 1)
  {
    v415 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v45 + 1, 1, v43);
  }

  else
  {
    v415 = v43;
  }

  v46 = v1[125];

  v47 = v415;
  v415[2] = v45 + 1;
  v48 = &v415[3 * v45];
  v48[4] = v46;
  v48[5] = v35;
  v48[6] = v36;
  v49 = v1[124];
  v50 = v1[123];
  v408 = v1[122];
  v413 = v49;
  v51 = v1[120] + 1;
  v417 = v50;
  if (v51 == v1[116])
  {
LABEL_29:
    v119 = v1[117];
    v120 = v1[115];
    v121 = v1[113];
    v122 = v1[78];
    v123 = v1[77];
    v397 = v1[118];
    v404 = v1[76];
    v124 = v1[75];
    v125 = v1[74];
    v126 = v419[73];
    logd = v419[66];
    v430 = v121;

    v127 = swift_allocObject();
    *(v127 + 16) = v119;
    v419[22] = partial apply for closure #3 in SKALocalStatusServer.deliverPendingStatuses(to:reason:databaseContext:);
    v419[23] = v127;
    v419[18] = MEMORY[0x277D85DD0];
    v419[19] = 1107296256;
    v419[20] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v419[21] = &block_descriptor_81;
    v128 = _Block_copy(aBlock);
    v129 = v119;
    static DispatchQoS.unspecified.getter();
    v419[60] = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x223D76E80](0, v122, v124, v128);
    _Block_release(v128);
    v130 = v126;
    v131 = v419;
    (*(v125 + 8))(v124, v130);
    (*(v123 + 8))(v122, v404);
    v132 = v419[23];

    v419[61] = 0;
    v133 = [v430 allPublishedLocalStatusDevicesInDatabaseContext:logd error:v419 + 61];
    v134 = v419[61];
    if (v133)
    {
      v135 = v419[114];
      v136 = v133;
      v137 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      v138 = v134;

      v139 = v413;
      if (v413 >> 62)
      {
        goto LABEL_124;
      }

      v140 = *((v413 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_32:
      v141 = MEMORY[0x277D84F90];
      v378 = v137;
      if (v140)
      {
        v440[0] = MEMORY[0x277D84F90];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v140 & ~(v140 >> 63), 0);
        if (v140 < 0)
        {
          goto LABEL_170;
        }

        v142 = 0;
        v141 = v440[0];
        do
        {
          if ((v139 & 0xC000000000000001) != 0)
          {
            v143 = MEMORY[0x223D77050](v142, v139);
          }

          else
          {
            v143 = *(v139 + 8 * v142 + 32);
          }

          v144 = v143;
          v145 = [v144 identifier];
          v146 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v148 = v147;

          v440[0] = v141;
          v150 = *(v141 + 16);
          v149 = *(v141 + 24);
          if (v150 >= v149 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v149 > 1), v150 + 1, 1);
            v141 = v440[0];
          }

          ++v142;
          *(v141 + 16) = v150 + 1;
          v151 = v141 + 16 * v150;
          *(v151 + 32) = v146;
          *(v151 + 40) = v148;
        }

        while (v140 != v142);
      }

      v176 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v141);

      if (v137 >> 62)
      {
        v177 = __CocoaSet.count.getter();
        if (v177)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v177 = *((v137 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v177)
        {
LABEL_52:
          v178 = 0;
          v388 = v137 & 0xC000000000000001;
          v369 = v137 & 0xFFFFFFFFFFFFFF8;
          v364 = v137 + 32;
          v140 = v176 + 56;
          v386 = v177;
          do
          {
            if (v388)
            {
              v179 = MEMORY[0x223D77050](v178, v137);
            }

            else
            {
              if (v178 >= *(v369 + 16))
              {
                goto LABEL_123;
              }

              v179 = *(v364 + 8 * v178);
            }

            v180 = v179;
            v181 = __OFADD__(v178, 1);
            v182 = v178 + 1;
            if (v181)
            {
LABEL_122:
              __break(1u);
LABEL_123:
              __break(1u);
LABEL_124:
              v140 = __CocoaSet.count.getter();
              goto LABEL_32;
            }

            v398 = v182;
            v183 = v419[63];
            v184 = [v179 idsIdentifier];
            v185 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v187 = v186;

            v188 = [v183 idsDeviceIdentifier];
            if (v188)
            {
              v404 = v180;
              v189 = v188;
              v190 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v192 = v191;

              if (v185 == v190 && v187 == v192)
              {

                v193 = v404;
              }

              else
              {
                v194 = _stringCompareWithSmolCheck(_:_:expecting:)();

                v193 = v404;
                if ((v194 & 1) == 0)
                {

                  goto LABEL_54;
                }
              }

              v195 = [v193 pendingStatuses];
              type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SKADatabasePublishedLocalStatus, off_27843D3B0);
              v196 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

              v439 = MEMORY[0x277D84F90];
              if (v196 >> 62)
              {
                v197 = __CocoaSet.count.getter();
                if (v197)
                {
LABEL_67:
                  v198 = 0;
                  loga = (v196 & 0xFFFFFFFFFFFFFF8);
                  v433 = (v196 & 0xC000000000000001);
                  v413 = v196;
                  v137 = v196 + 32;
                  while (1)
                  {
                    if (v433)
                    {
                      v200 = MEMORY[0x223D77050](v198, v413);
                    }

                    else
                    {
                      if (v198 >= loga[2].isa)
                      {
                        goto LABEL_119;
                      }

                      v200 = *(v137 + 8 * v198);
                    }

                    v201 = v200;
                    v181 = __OFADD__(v198, 1);
                    v198 = (v198 + 1);
                    if (v181)
                    {
                      break;
                    }

                    v202 = [v200 identifier];
                    v139 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v204 = v203;

                    if (*(v176 + 16) && (v205 = *(v176 + 40), Hasher.init(_seed:)(), String.hash(into:)(), v206 = Hasher._finalize()(), v207 = -1 << *(v176 + 32), v208 = v206 & ~v207, ((*(v140 + ((v208 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v208) & 1) != 0))
                    {
                      v209 = ~v207;
                      while (1)
                      {
                        v210 = (*(v176 + 48) + 16 * v208);
                        v211 = *v210 == v139 && v210[1] == v204;
                        if (v211 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                        {
                          break;
                        }

                        v208 = (v208 + 1) & v209;
                        if (((*(v140 + ((v208 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v208) & 1) == 0)
                        {
                          goto LABEL_68;
                        }
                      }

                      if (v198 == v197)
                      {
LABEL_86:
                        v193 = v404;
                        goto LABEL_89;
                      }
                    }

                    else
                    {
LABEL_68:

                      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
                      v199 = *(v439 + 16);
                      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
                      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                      specialized ContiguousArray._endMutation()();
                      if (v198 == v197)
                      {
                        goto LABEL_86;
                      }
                    }
                  }

                  __break(1u);
LABEL_119:
                  __break(1u);
                  goto LABEL_120;
                }
              }

              else
              {
                v197 = *((v196 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v197)
                {
                  goto LABEL_67;
                }
              }

LABEL_89:

              v212 = [v193 deliveredStatuses];
              v213 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

              if (v213 >> 62)
              {
                v139 = __CocoaSet.count.getter();
                logb = v213;
                if (v139)
                {
LABEL_91:
                  v214 = 0;
                  v434 = (v213 & 0xC000000000000001);
                  v409 = v213 + 32;
                  v413 = v213 & 0xFFFFFFFFFFFFFF8;
                  v137 = v417;
                  while (1)
                  {
                    if (v434)
                    {
                      v215 = MEMORY[0x223D77050](v214, logb);
                    }

                    else
                    {
                      if (v214 >= *(v413 + 16))
                      {
                        goto LABEL_121;
                      }

                      v215 = *(v409 + 8 * v214);
                    }

                    v216 = v215;
                    v181 = __OFADD__(v214++, 1);
                    if (v181)
                    {
                      break;
                    }

                    v217 = [v215 identifier];
                    v218 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v220 = v219;

                    if (*(v176 + 16) && (v221 = *(v176 + 40), Hasher.init(_seed:)(), String.hash(into:)(), v222 = Hasher._finalize()(), v223 = -1 << *(v176 + 32), v224 = v222 & ~v223, ((*(v140 + ((v224 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v224) & 1) != 0))
                    {
                      v225 = ~v223;
                      while (1)
                      {
                        v226 = (*(v176 + 48) + 16 * v224);
                        v227 = *v226 == v218 && v226[1] == v220;
                        if (v227 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                        {
                          break;
                        }

                        v224 = (v224 + 1) & v225;
                        if (((*(v140 + ((v224 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v224) & 1) == 0)
                        {
                          goto LABEL_107;
                        }
                      }

                      if (v214 == v139)
                      {
                        goto LABEL_112;
                      }
                    }

                    else
                    {
LABEL_107:

                      v228 = v216;
                      MEMORY[0x223D76BD0]();
                      if (*((v417 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v417 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                      {
                        v229 = *((v417 & 0xFFFFFFFFFFFFFF8) + 0x10);
                        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                      }

                      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

                      v137 = v417;
                      if (v214 == v139)
                      {
                        goto LABEL_112;
                      }
                    }
                  }

LABEL_120:
                  __break(1u);
LABEL_121:
                  __break(1u);
                  goto LABEL_122;
                }
              }

              else
              {
                v139 = *((v213 & 0xFFFFFFFFFFFFFF8) + 0x10);
                logb = v213;
                if (v139)
                {
                  goto LABEL_91;
                }
              }

LABEL_112:

              v230 = [v404 idsIdentifier];
              if (!v230)
              {
                v231 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v230 = MEMORY[0x223D76B00](v231);
              }

              v413 = v419[114];
              v232 = v419[113];
              loge = v232;
              v435 = v419[66];
              v233 = [v404 discoverySource];
              v234 = objc_allocWithZone(SKADatabasePublishedLocalStatusDevice);
              isa = Array._bridgeToObjectiveC()().super.isa;

              v236 = Array._bridgeToObjectiveC()().super.isa;

              v237 = [v234 initWithIDSIdentifier:v230 pendingStatuses:isa deliveredStatuses:v236 discoverySource:v233];

              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
              v238 = swift_allocObject();
              *(v238 + 16) = xmmword_2201A7710;
              *(v238 + 32) = v237;
              v239 = v237;
              v240 = Array._bridgeToObjectiveC()().super.isa;

              v419[62] = 0;
              v241 = [loge createOrUpdatePublishedLocalStatusDevices:v240 databaseContext:v435 error:v419 + 62];

              v242 = v419[62];
              if (!v241)
              {
                v249 = v419[117];
                v250 = v419[112];
                v251 = v242;

                v131 = v419;

                v252 = _convertNSErrorToError(_:)();

                swift_willThrow();
                v248 = v252;

                goto LABEL_160;
              }

              v243 = v242;

              v139 = v417;
              v137 = v378;
            }

            else
            {
            }

LABEL_54:
            v178 = v398;
          }

          while (v398 != v386);
        }
      }

      v406 = v419[67];

      v253 = v415;
      v399 = v415[2];
      v404 = OBJC_IVAR___SKALocalStatusServer_deliverySubjects;
      LODWORD(v386) = v399 == 0;
      v413 = v139;
      if (v399)
      {
        v254 = 0;
        v389 = (v419[70] + 8);
        v393 = v419[87];
        v255 = v415 + 6;
        do
        {
          if (v254 >= v253[2])
          {
            __break(1u);
            goto LABEL_168;
          }

          v261 = v419[108];
          v262 = *(v255 - 1);
          v263 = *v255;
          v264 = *(v255 - 2);

          SKADatabasePublishedLocalStatus.key.getter(v261);
          v265 = v419[112];
          logc = v264;
          v436 = v254;
          v410 = v255;
          v266 = v419[119];
          v267 = v419[111];
          v268 = v419[102];
          v269 = v419[100];
          v270 = v419[67];
          (*(v419[105] + 16))(v268, v419[108], v419[104]);
          v271 = (v268 + *(v269 + 20));
          *v271 = v267;
          v271[1] = v265;
          swift_beginAccess();
          v272 = *(v270 + v266);
          v273 = *(v272 + 16);

          if (v273 && (v274 = specialized __RawDictionaryStorage.find<A>(_:)(v419[102]), (v275 & 1) != 0))
          {
            v276 = v419[119];
            v365 = v419[92];
            v277 = v419[91];
            v278 = v419[90];
            v379 = v419[89];
            v383 = v419[102];
            v279 = v419[83];
            v370 = v419[82];
            v374 = v419[87];
            v280 = v419[67];
            outlined init with copy of SKALocalStatusServer.FailedDelivery(*(v272 + 56) + *(v419[88] + 72) * v274, v277, type metadata accessor for SKALocalStatusServer.FailedDelivery);
            outlined init with take of SKALocalStatusServer.FailedDelivery(v277, v365);
            swift_endAccess();
            (*(v279 + 16))(v278, v365, v370);
            v281 = v278 + *(v374 + 20);
            static Date.now.getter();
            v282 = (v278 + *(v393 + 24));
            *v282 = v262;
            v282[1] = v263;
            swift_beginAccess();
            outlined init with take of SKALocalStatusServer.FailedDelivery(v278, v379);
            v283 = *(v280 + v276);
            v284 = swift_isUniquelyReferenced_nonNull_native();
            v440[0] = *(v280 + v276);
            *(v280 + v276) = 0x8000000000000000;
            specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v379, v383, v284);
            *(v280 + v276) = v440[0];
            swift_endAccess();
            outlined destroy of SKALocalStatusServer.FailedDelivery.ID(v365, type metadata accessor for SKALocalStatusServer.FailedDelivery);
          }

          else
          {
            v285 = v419[119];
            v286 = v419[102];
            v287 = v419[90];
            v288 = v419[89];
            v289 = v419[87];
            v290 = v419[67];
            swift_endAccess();
            static Date.now.getter();
            v291 = v287 + *(v289 + 20);
            static Date.now.getter();
            v292 = (v287 + *(v393 + 24));
            *v292 = v262;
            v292[1] = v263;
            swift_beginAccess();
            outlined init with take of SKALocalStatusServer.FailedDelivery(v287, v288);
            v293 = *(v290 + v285);
            v294 = swift_isUniquelyReferenced_nonNull_native();
            v440[0] = *(v290 + v285);
            *(v290 + v285) = 0x8000000000000000;
            specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v288, v286, v294);
            *(v290 + v285) = v440[0];
            swift_endAccess();
          }

          v295 = v419[67];
          SKALocalStatusServer.currentStatus(for:in:)(v419[108], v419[66], v419[72]);
          v139 = v413;
          swift_beginAccess();
          v296 = *&v404[v406];
          if (*(v296 + 16) && (v297 = specialized __RawDictionaryStorage.find<A>(_:)(v419[108]), (v298 & 1) != 0))
          {
            v299 = v419[72];
            v300 = *(*(v296 + 56) + 8 * v297);
            swift_endAccess();

            CurrentValueSubject.send(_:)();
          }

          else
          {
            swift_endAccess();
          }

          v254 = v436 + 1;
          v256 = v419[108];
          v257 = v419[105];
          v140 = v419[104];
          v258 = v419[102];
          v259 = v419[72];
          v260 = v419[69];

          (*v389)(v259, v260);
          outlined destroy of SKALocalStatusServer.FailedDelivery.ID(v258, type metadata accessor for SKALocalStatusServer.FailedDelivery.ID);
          (*(v257 + 8))(v256, v140);
          v255 = v410 + 3;
          v253 = v415;
        }

        while (v399 != v436 + 1);
      }

      v140 = v417;
      if (v139 >> 62)
      {
        goto LABEL_171;
      }

      for (i = *((v139 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
      {
        v131 = v419;

        if (!i)
        {
          break;
        }

        v302 = 0;
        v380 = v139 & 0xFFFFFFFFFFFFFF8;
        v384 = v139 & 0xC000000000000001;
        v366 = (v419[70] + 8);
        v371 = i;
        while (1)
        {
          if (v384)
          {
            v309 = MEMORY[0x223D77050](v302, v139);
          }

          else
          {
            if (v302 >= *(v380 + 16))
            {
              goto LABEL_169;
            }

            v309 = *(v139 + 8 * v302 + 32);
          }

          v140 = v309;
          if (__OFADD__(v302, 1))
          {
            break;
          }

          SKADatabasePublishedLocalStatus.key.getter(v419[107]);
          v310 = v419[112];
          v390 = v302 + 1;
          v394 = v302;
          v437 = v140;
          v311 = v419[119];
          v312 = v419[111];
          v400 = v419[107];
          v313 = v419[104];
          v314 = v419[101];
          v315 = v419[100];
          logf = v419[71];
          v316 = v419[68];
          v317 = v419[67];
          v411 = v419[66];
          v375 = *(v419[105] + 16);
          v375(v314);
          v318 = (v314 + *(v315 + 20));
          *v318 = v312;
          v318[1] = v310;
          swift_beginAccess();

          specialized Dictionary._Variant.removeValue(forKey:)(v314, v316);
          outlined destroy of UUID?(v316, &_s18StatusKitAgentCore08SKALocalA6ServerC14FailedDelivery33_CD99E71FFA5F3CD49F44A2A8DCE05CBELLVSgMd, &_s18StatusKitAgentCore08SKALocalA6ServerC14FailedDelivery33_CD99E71FFA5F3CD49F44A2A8DCE05CBELLVSgMR);
          swift_endAccess();
          SKALocalStatusServer.currentStatus(for:in:)(v400, v411, logf);
          swift_beginAccess();
          v319 = *&v404[v406];
          v139 = v413;
          if (*(v319 + 16) && (v320 = specialized __RawDictionaryStorage.find<A>(_:)(v419[107]), (v321 & 1) != 0))
          {
            v322 = v419[71];
            v323 = v419[69];
            v324 = *(*(v319 + 56) + 8 * v320);
            swift_endAccess();

            CurrentValueSubject.send(_:)();
            v325 = *(LSKPublishedStatus.pendingDevies.getter() + 16);

            v140 = v417;
            if (!v325)
            {
              v326 = v419[107];
              v327 = v419[106];
              v328 = v419[104];
              *(v419 + 1040) = 1;
              CurrentValueSubject.send(completion:)();
              (v375)(v327, v326, v328);
              swift_beginAccess();
              specialized Dictionary.subscript.setter(0, v327);
              swift_endAccess();
            }
          }

          else
          {
            swift_endAccess();
            v140 = v417;
          }

          v303 = v419[107];
          v304 = v419[105];
          v305 = v419[104];
          v306 = v419[101];
          v307 = v419[71];
          v308 = v419[69];

          (*v366)(v307, v308);
          outlined destroy of SKALocalStatusServer.FailedDelivery.ID(v306, type metadata accessor for SKALocalStatusServer.FailedDelivery.ID);
          (*(v304 + 8))(v303, v305);
          v302 = v394 + 1;
          if (v390 == v371)
          {
            goto LABEL_154;
          }
        }

LABEL_168:
        __break(1u);
LABEL_169:
        __break(1u);
LABEL_170:
        __break(1u);
LABEL_171:
        ;
      }

LABEL_154:
      v329 = v419[112];
      v330 = v419[110];

      v331 = Logger.logObject.getter();
      v332 = v140;
      v333 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v331, v333))
      {
        v334 = swift_slowAlloc();
        *v334 = 134218240;
        if (v332 >> 62)
        {
          v335 = __CocoaSet.count.getter();
        }

        else
        {
          v335 = *((v332 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v334 + 4) = v335;

        *(v334 + 12) = 2048;
        v336 = v415[2];

        *(v334 + 14) = v336;

        _os_log_impl(&dword_220099000, v331, v333, "Send pending status END {deliveredStatuses.count: %ld, failedStatuses.count: %ld}", v334, 0x16u);
        MEMORY[0x223D77FF0](v334, -1, -1);
      }

      else
      {
        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();
      }

      v337 = v419[117];
      v338 = v419[67];
      SKALocalStatusServer.updateBrowseTaskDeviceFilter(databaseContext:)(v419[66]);
    }

    else
    {
      v244 = v419[117];
      v245 = v419[112];
      v246 = v134;

      v247 = _convertNSErrorToError(_:)();

      swift_willThrow();
      v248 = v247;

LABEL_160:
      v339 = v131[110];
      v340 = v131[63];
      v341 = v248;
      v342 = Logger.logObject.getter();
      v343 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v342, v343))
      {
        v344 = v131[63];
        v345 = swift_slowAlloc();
        v346 = swift_slowAlloc();
        *v345 = 138412546;
        *(v345 + 4) = v344;
        *v346 = v344;
        *(v345 + 12) = 2112;
        v347 = v344;
        v348 = v248;
        v349 = _swift_stdlib_bridgeErrorToNSError();
        *(v345 + 14) = v349;
        v346[1] = v349;
        _os_log_impl(&dword_220099000, v342, v343, "Send pending status FAILED. Error fetching status devices {clDevice: %@, error: %@}", v345, 0x16u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        swift_arrayDestroy();
        MEMORY[0x223D77FF0](v346, -1, -1);
        MEMORY[0x223D77FF0](v345, -1, -1);
      }

      else
      {
      }

      LODWORD(v386) = 0;
    }

    v350 = v131[109];
    v351 = v131[108];
    v352 = v131[107];
    v353 = v131[106];
    v354 = v131[103];
    v355 = v131[102];
    v356 = v131[101];
    v357 = v131[99];
    v358 = v131[98];
    v359 = v419[97];
    v367 = v419[96];
    v372 = v419[94];
    v376 = v419[93];
    v381 = v419[92];
    v385 = v419[91];
    v391 = v419[90];
    v395 = v419[89];
    v401 = v419[86];
    v405 = v419[85];
    v407 = v419[84];
    v412 = v419[81];
    v414 = v419[78];
    v416 = v419[75];
    v418 = v419[72];
    logg = v419[71];
    v438 = v419[68];

    v360 = v419[1];
    v361 = *MEMORY[0x277D85DE8];

    return v360(v386);
  }

  else
  {
    while (1)
    {
      v1[124] = v49;
      v1[123] = v50;
      v1[122] = v408;
      v1[121] = v47;
      v1[120] = v51;
      v78 = v1[115];
      if ((v78 & 0xC000000000000001) != 0)
      {
        v79 = MEMORY[0x223D77050]();
      }

      else
      {
        v79 = *(v78 + 8 * v51 + 32);
      }

      v80 = v79;
      v1[125] = v79;
      SKADatabasePublishedLocalStatus.key.getter(v1[109]);
      v81 = v1[119];
      v82 = v1[112];
      v83 = v1[111];
      v84 = v1[103];
      v85 = v1[100];
      v86 = v1[67];
      (*(v1[105] + 16))(v84, v1[109], v1[104]);
      v87 = (v84 + *(v85 + 20));
      *v87 = v83;
      v87[1] = v82;
      swift_beginAccess();
      v88 = *(v86 + v81);
      v89 = *(v88 + 16);

      if (v89 && (v90 = specialized __RawDictionaryStorage.find<A>(_:)(v1[103]), (v91 & 1) != 0))
      {
        v92 = v1[99];
        v93 = v1[94];
        v94 = v1[93];
        v95 = v1[87];
        outlined init with copy of SKALocalStatusServer.FailedDelivery(*(v88 + 56) + *(v1[88] + 72) * v90, v94, type metadata accessor for SKALocalStatusServer.FailedDelivery);
        outlined init with take of SKALocalStatusServer.FailedDelivery(v94, v93);
        swift_endAccess();
        v96 = *(v95 + 20);
        Date.timeIntervalSince(_:)();
        Date.addingTimeInterval(_:)();
        outlined destroy of SKALocalStatusServer.FailedDelivery.ID(v93, type metadata accessor for SKALocalStatusServer.FailedDelivery);
        v97 = 0;
      }

      else
      {
        swift_endAccess();
        v97 = 1;
      }

      v98 = v1[99];
      v99 = v1[98];
      v100 = v1[83];
      v101 = v1[82];
      (*(v100 + 56))(v98, v97, 1, v101);
      outlined init with copy of (String, Sendable)(v98, v99, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      if ((*(v100 + 48))(v99, 1, v101) == 1)
      {
        outlined destroy of UUID?(v1[98], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        goto LABEL_44;
      }

      v102 = v1[85];
      v103 = v1[83];
      v104 = v1[82];
      (*(v103 + 32))(v1[86], v1[98], v104);
      static Date.now.getter();
      v105 = static Date.> infix(_:_:)();
      v106 = *(v103 + 8);
      v106(v102, v104);
      if ((v105 & 1) == 0)
      {
        break;
      }

      v406 = 0;
      v107 = v1[112];
      v108 = v1[110];
      (*(v1[83] + 16))(v1[84], v1[86], v1[82]);

      v109 = v80;
      v110 = Logger.logObject.getter();
      v111 = static os_log_type_t.default.getter();
      v429 = v109;

      log = v110;
      if (os_log_type_enabled(v110, v111))
      {
        v52 = v1[112];
        v368 = v1[111];
        v396 = v1[104];
        v402 = v1[109];
        v387 = v1[103];
        v392 = v1[105];
        v382 = v1[86];
        v386 = v1[99];
        v53 = v1[84];
        v54 = v1[82];
        v55 = v1;
        v56 = swift_slowAlloc();
        v373 = swift_slowAlloc();
        v440[0] = v373;
        *v56 = 136315650;
        lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
        v377 = v54;
        v57 = dispatch thunk of CustomStringConvertible.description.getter();
        v59 = v58;
        v106(v53, v54);
        v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v59, v440);

        *(v56 + 4) = v60;
        *(v56 + 12) = 2080;
        v61 = [v429 identifier];
        v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v64 = v63;

        v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v64, v440);

        *(v56 + 14) = v65;
        *(v56 + 22) = 2080;

        v67 = specialized Collection.prefix(_:)(8, v368, v52, v66);
        v69 = v68;
        v71 = v70;
        v73 = v72;

        v74 = MEMORY[0x223D76B60](v67, v69, v71, v73);
        v76 = v75;

        v77 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v74, v76, v440);

        *(v56 + 24) = v77;
        _os_log_impl(&dword_220099000, log, v111, "Status send SKIP. Not enough time since latest failed attempt. {nextAttemptDate: %s, status.identifier: %s, idsIdentifier: %s}", v56, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x223D77FF0](v373, -1, -1);
        MEMORY[0x223D77FF0](v56, -1, -1);

        v106(v382, v377);
        outlined destroy of UUID?(v386, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        outlined destroy of SKALocalStatusServer.FailedDelivery.ID(v387, type metadata accessor for SKALocalStatusServer.FailedDelivery.ID);
        (*(v392 + 8))(v402, v396);
      }

      else
      {
        v403 = v1[109];
        v112 = v1[105];
        v113 = v1[104];
        v114 = v1[103];
        v115 = v1[99];
        v55 = v1;
        v116 = v1[86];
        v117 = v55[84];
        v118 = v55[82];

        v106(v117, v118);
        v106(v116, v118);
        outlined destroy of UUID?(v115, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        outlined destroy of SKALocalStatusServer.FailedDelivery.ID(v114, type metadata accessor for SKALocalStatusServer.FailedDelivery.ID);
        (*(v112 + 8))(v403, v113);
      }

      v51 = v55[120] + 1;
      v1 = v55;
      v47 = v415;
      v50 = v417;
      v49 = v413;
      if (v51 == v55[116])
      {
        goto LABEL_29;
      }
    }

    v106(v1[86], v1[82]);
LABEL_44:
    v152 = v1[110];
    v153 = v1[63];
    outlined init with copy of (String, Sendable)(v1[99], v1[97], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v154 = v153;
    v155 = v80;
    v156 = Logger.logObject.getter();
    v157 = static os_log_type_t.default.getter();

    v158 = os_log_type_enabled(v156, v157);
    v159 = v1[97];
    if (v158)
    {
      v160 = v1[96];
      v431 = v1[95];
      v161 = v1[63];
      v162 = swift_slowAlloc();
      v163 = swift_slowAlloc();
      v164 = swift_slowAlloc();
      v440[0] = v164;
      *v162 = 138412802;
      *(v162 + 4) = v155;
      *(v162 + 12) = 2112;
      *(v162 + 14) = v161;
      *v163 = v155;
      v163[1] = v161;
      *(v162 + 22) = 2080;
      outlined init with copy of (String, Sendable)(v159, v160, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v165 = v161;
      v166 = v155;
      v167 = String.init<A>(describing:)();
      v169 = v168;
      outlined destroy of UUID?(v159, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v170 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v167, v169, v440);

      *(v162 + 24) = v170;
      _os_log_impl(&dword_220099000, v156, v157, "Status send START {status: %@, device: %@, nextAttemptDate: %s}", v162, 0x20u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      swift_arrayDestroy();
      MEMORY[0x223D77FF0](v163, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v164);
      MEMORY[0x223D77FF0](v164, -1, -1);
      MEMORY[0x223D77FF0](v162, -1, -1);
    }

    else
    {

      outlined destroy of UUID?(v159, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    }

    v432 = v1[117];
    v171 = v1[81];
    v172 = v1[80];
    v173 = v1[79];
    v1[2] = v1;
    v1[3] = SKALocalStatusServer.deliverPendingStatuses(to:reason:databaseContext:);
    swift_continuation_init();
    v1[17] = v173;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    CheckedContinuation.init(continuation:function:)();
    (*(v172 + 32))(boxed_opaque_existential_0, v171, v173);
    v1[10] = MEMORY[0x277D85DD0];
    v1[11] = 1107296256;
    v1[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
    v1[13] = &block_descriptor_84;
    [v432 activateWithCompletion_];
    (*(v172 + 8))(boxed_opaque_existential_0, v173);
    v175 = *MEMORY[0x277D85DE8];

    return MEMORY[0x282200938](v1 + 2);
  }
}