uint64_t MessageCenterActorBrowser.startDeviceBrowserForUser(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_32_4();
  OUTLINED_FUNCTION_43();
  v14 = v12[11];
  v13 = v12[12];
  v16 = v12[8];
  v15 = v12[9];
  v18 = v12[6];
  v17 = v12[7];
  v19 = v12[5];
  OUTLINED_FUNCTION_27_3();
  swift_unknownObjectRetain();
  v20 = *(v19 + 128);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v31 = *(v19 + 128);
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v14, v13, v18, v17, v16, v15, isUniquelyReferenced_nonNull_native);
  *(v19 + 128) = v31;
  swift_endAccess();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_31_5();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, v31, a11, a12);
}

uint64_t MessageCenterActorBrowser.startDeviceBrowserForUser(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_32_4();
  OUTLINED_FUNCTION_43();
  v13 = v12[9];
  v14 = v12[10];
  v15 = v12[7];
  v16 = v12[5];

  v17 = Logger.logObject.getter();
  LOBYTE(v16) = static os_log_type_t.error.getter();

  v18 = os_log_type_enabled(v17, v16);
  v19 = v12[13];
  v20 = v12[11];
  if (v18)
  {
    v22 = v12[8];
    v21 = v12[9];
    v23 = OUTLINED_FUNCTION_55();
    a10 = OUTLINED_FUNCTION_54();
    *(v23 + 4) = OUTLINED_FUNCTION_55_2(4.8149e-34, a10);
    OUTLINED_FUNCTION_54_3(&dword_223515000, v24, v25, "Failed to start device browser for person %s");
    __swift_destroy_boxed_opaque_existential_0(a10);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_12();
  }

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_31_5();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12);
}

uint64_t MessageCenterActorBrowser.stopDeviceBrowserForUser(_:)(uint64_t *a1)
{
  v3 = *a1;
  *(v2 + 64) = v1;
  *(v2 + 72) = v3;
  *(v2 + 80) = *(a1 + 1);
  *(v2 + 96) = a1[3];
  return OUTLINED_FUNCTION_1_0(MessageCenterActorBrowser.stopDeviceBrowserForUser(_:), v1);
}

uint64_t MessageCenterActorBrowser.stopDeviceBrowserForUser(_:)()
{
  v51 = v0;
  v2 = v0[12];
  v3 = v0[10];
  v4 = v0[8];
  v0[13] = OBJC_IVAR____TtC11SiriNetwork25MessageCenterActorBrowser_logger;

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();

  os_log_type_enabled(v5, v6);
  OUTLINED_FUNCTION_43_3();
  if (v7)
  {
    v8 = v0[12];
    v9 = v0[10];
    v46 = v0[9];
    v47 = v0[11];
    v10 = OUTLINED_FUNCTION_55();
    v11 = OUTLINED_FUNCTION_54();
    v49 = v11;
    OUTLINED_FUNCTION_56_3(4.8149e-34);

    v1 = 0x6953646572616853;
    _StringGuts.grow(_:)(30);

    qmemcpy(v50, "SharedSiSharedSi", sizeof(v50));
    OUTLINED_FUNCTION_43_3();
    MEMORY[0x223DE2180](v46, v9);
    v12 = OUTLINED_FUNCTION_4_18();
    MEMORY[0x223DE2180](v12);
    MEMORY[0x223DE2180](v47, v8);

    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6953646572616853, 0x6953646572616853uLL, &v49);

    *(v10 + 4) = v13;
    OUTLINED_FUNCTION_21_6(&dword_223515000, v14, v15, "Stopping device browser for user %s");
    __swift_destroy_boxed_opaque_existential_0(v11);
    OUTLINED_FUNCTION_7_13();
    OUTLINED_FUNCTION_11();
  }

  v16 = v0[11];
  v17 = v0[12];
  v19 = v0[9];
  v18 = v0[10];
  v20 = v0[8];
  OUTLINED_FUNCTION_40_1();
  v21 = *(v20 + 128);

  v22 = OUTLINED_FUNCTION_5_2();
  v24 = specialized Dictionary.subscript.getter(v22, v23, v16, v17, v21);
  v26 = v25;

  v0[14] = v24;
  if (v24)
  {
    swift_getObjectType();
    v27 = *(v26 + 8);
    v29 = dispatch thunk of Actor.unownedExecutor.getter();

    return MEMORY[0x2822009F8](MessageCenterActorBrowser.stopDeviceBrowserForUser(_:), v29, v28);
  }

  else
  {
    v30 = v0[12];
    v31 = v0[10];

    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = v0[12];
      v48 = v0[11];
      v36 = v0[9];
      v35 = v0[10];
      v37 = OUTLINED_FUNCTION_55();
      v38 = OUTLINED_FUNCTION_54();
      v49 = v38;
      v50[0] = 0;
      OUTLINED_FUNCTION_56_3(4.8149e-34);

      _StringGuts.grow(_:)(30);

      OUTLINED_FUNCTION_40_4();
      v50[0] = v39;
      v50[1] = v1;
      MEMORY[0x223DE2180](v36, v35);
      v40 = OUTLINED_FUNCTION_4_18();
      MEMORY[0x223DE2180](v40);
      MEMORY[0x223DE2180](v48, v34);

      v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50[0], v50[1], &v49);

      *(v37 + 4) = v41;
      OUTLINED_FUNCTION_21_6(&dword_223515000, v42, v43, "No browser found for user %s");
      __swift_destroy_boxed_opaque_existential_0(v38);
      OUTLINED_FUNCTION_7_13();
      OUTLINED_FUNCTION_11();
    }

    OUTLINED_FUNCTION_6_3();

    return v44();
  }
}

{
  OUTLINED_FUNCTION_29();
  v1 = v0[14];
  MessageCenterEndpointBrowser.stop()();
  v0[15] = v2;
  v3 = v0[8];
  if (v2)
  {
    v4 = MessageCenterActorBrowser.stopDeviceBrowserForUser(_:);
  }

  else
  {
    v4 = MessageCenterActorBrowser.stopDeviceBrowserForUser(_:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v1 = v0[14];
  v3 = v0[11];
  v2 = v0[12];
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[8];
  OUTLINED_FUNCTION_27_3();
  v7 = OUTLINED_FUNCTION_15_6();
  specialized Dictionary._Variant.removeValue(forKey:)(v7, v8, v9, v10);
  swift_endAccess();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_6_3();

  return v11();
}

uint64_t MessageCenterActorBrowser.stopDeviceBrowserForUser(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_32_4();
  OUTLINED_FUNCTION_43();
  v13 = v12[12];
  v14 = v12[13];
  v15 = v12[10];
  v16 = v12[8];

  v17 = Logger.logObject.getter();
  LOBYTE(v16) = static os_log_type_t.error.getter();

  v18 = os_log_type_enabled(v17, v16);
  v19 = v12[14];
  v20 = v12[15];
  if (v18)
  {
    v22 = v12[11];
    v21 = v12[12];
    v23 = OUTLINED_FUNCTION_55();
    a10 = OUTLINED_FUNCTION_54();
    *(v23 + 4) = OUTLINED_FUNCTION_55_2(4.8149e-34, a10);
    OUTLINED_FUNCTION_54_3(&dword_223515000, v24, v25, "Failed to stop device browser for person %s");
    __swift_destroy_boxed_opaque_existential_0(a10);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_12();
  }

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_31_5();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12);
}

uint64_t MessageCenterActorBrowser.createActorIfNeeded(for:)()
{
  OUTLINED_FUNCTION_7_0();
  v1[58] = v2;
  v1[59] = v0;
  v1[56] = v3;
  v1[57] = v4;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork25MessageCenterActorWrapperVSgMd, &_s11SiriNetwork25MessageCenterActorWrapperVSgMR) - 8) + 64) + 15;
  v1[60] = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_103();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

{
  v65 = v3;
  OUTLINED_FUNCTION_46_3();
  v4 = OBJC_IVAR____TtC11SiriNetwork25MessageCenterActorBrowser_activeActors;
  OUTLINED_FUNCTION_40_1();
  v5 = *(v2 + v4);

  v6 = OUTLINED_FUNCTION_14_3();
  specialized Dictionary.subscript.getter(v6);
  OUTLINED_FUNCTION_52();

  if (!v1)
  {
    goto LABEL_4;
  }

  v5 = *(v3 + 480);
  specialized Collection.randomElement()(v1, v5);

  v0 = type metadata accessor for MessageCenterActorWrapper(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v5, 1, v0);
  v1 = *(v3 + 480);
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of AsyncStream<MessageCenterEventProtocol>?(*(v3 + 480), &_s11SiriNetwork25MessageCenterActorWrapperVSgMd, &_s11SiriNetwork25MessageCenterActorWrapperVSgMR);
LABEL_4:
    *(v3 + 48) = 0;
    *(v3 + 16) = 0u;
    *(v3 + 32) = 0u;
    goto LABEL_5;
  }

  outlined init with copy of MessageCenterActorProtocol?(v1 + *(v0 + 20), v3 + 16);
  outlined destroy of MessageCenterActorWrapper(v1);
  if (*(v3 + 40))
  {
    outlined init with take of RPCOspreyConnectionProtocol((v3 + 16), *(v3 + 448));
    v17 = *(v3 + 480);

    OUTLINED_FUNCTION_6_3();
    goto LABEL_28;
  }

LABEL_5:
  OUTLINED_FUNCTION_46_3();
  outlined destroy of AsyncStream<MessageCenterEventProtocol>?(v3 + 16, &_s11SiriNetwork26MessageCenterActorProtocol_pSgMd, &_s11SiriNetwork26MessageCenterActorProtocol_pSgMR);
  v8 = OBJC_IVAR____TtC11SiriNetwork25MessageCenterActorBrowser_activeEndpoints;
  OUTLINED_FUNCTION_40_1();
  v9 = *(v5 + v8);

  v10 = OUTLINED_FUNCTION_14_3();
  specialized Dictionary.subscript.getter(v10);
  OUTLINED_FUNCTION_52();

  if (v1)
  {
    specialized Collection.randomElement()(v1, v3 + 96);

    if (*(v3 + 120))
    {
      OUTLINED_FUNCTION_46_3();
      v11 = *(v3 + 112);
      *(v3 + 56) = *(v3 + 96);
      *(v3 + 72) = v11;
      *(v3 + 88) = *(v3 + 128);
      v12 = swift_allocObject();
      swift_weakInit();
      v13 = swift_allocObject();
      v13[2] = v12;
      v13[3] = v0;
      v13[4] = v1;
      v14 = *(v3 + 88);
      __swift_project_boxed_opaque_existential_1((v3 + 56), *(v3 + 80));
      v15 = *(v14 + 56);

      v16 = OUTLINED_FUNCTION_14_3();
      v15(v16);

      v42 = swift_task_alloc();
      *(v3 + 488) = v42;
      *v42 = v3;
      v42[1] = MessageCenterActorBrowser.createActorIfNeeded(for:);
      v43 = *(v3 + 464);
      v44 = *(v3 + 472);
      v45 = *(v3 + 456);

      return MessageCenterActorBrowser.addActiveActor(_:to:)();
    }
  }

  else
  {
    *(v3 + 128) = 0;
    *(v3 + 96) = 0u;
    *(v3 + 112) = 0u;
  }

  OUTLINED_FUNCTION_46_3();
  outlined destroy of AsyncStream<MessageCenterEventProtocol>?(v3 + 96, &_s11SiriNetwork21MessageCenterEndpointVSgMd, &_s11SiriNetwork21MessageCenterEndpointVSgMR);
  v19 = OBJC_IVAR____TtC11SiriNetwork25MessageCenterActorBrowser_activeIneligibleEndpoints;
  OUTLINED_FUNCTION_40_1();
  v20 = *(v9 + v19);

  v21 = OUTLINED_FUNCTION_14_3();
  v22 = specialized Dictionary.subscript.getter(v21);

  if (v22)
  {
    v23 = *(v22 + 56);
    v24 = -1 << *(v22 + 32);
    OUTLINED_FUNCTION_7_15();
    v27 = v26 & v25;
    v29 = (63 - v28) >> 6;

    v31 = 0;
    if (!v27)
    {
      goto LABEL_14;
    }

    while (1)
    {
      v32 = v31;
LABEL_17:
      outlined init with copy of MessageCenterEndpoint(*(v22 + 48) + 40 * (__clz(__rbit64(v27)) | (v32 << 6)), v3 + 216);
      v33 = *(v3 + 232);
      v34 = *(v3 + 248);
      *(v3 + 288) = v34;
      *(v3 + 256) = *(v3 + 216);
      *(v3 + 272) = v33;
      v35 = v34;
      __swift_project_boxed_opaque_existential_1((v3 + 256), *(v3 + 280));
      v36 = *(v35 + 32);
      v37 = OUTLINED_FUNCTION_52();
      if (v38(v37, v35))
      {
        break;
      }

      v27 &= v27 - 1;
      result = outlined destroy of MessageCenterEndpoint(v3 + 256);
      v31 = v32;
      if (!v27)
      {
LABEL_14:
        while (1)
        {
          v32 = v31 + 1;
          if (__OFADD__(v31, 1))
          {
            break;
          }

          if (v32 >= v29)
          {

            *(v3 + 208) = 0;
            *(v3 + 176) = 0u;
            *(v3 + 192) = 0u;

            goto LABEL_22;
          }

          v27 = *(v22 + 56 + 8 * v32);
          ++v31;
          if (v27)
          {
            goto LABEL_17;
          }
        }

        __break(1u);
        return result;
      }
    }

    v47 = *(v3 + 272);
    *(v3 + 176) = *(v3 + 256);
    *(v3 + 192) = v47;
    *(v3 + 208) = *(v3 + 288);

    if (!*(v3 + 200))
    {
      goto LABEL_22;
    }

    v48 = *(v3 + 192);
    *(v3 + 136) = *(v3 + 176);
    *(v3 + 152) = v48;
    *(v3 + 168) = *(v3 + 208);
    v49 = *(v3 + 160);
    v50 = *(v3 + 168);
    __swift_project_boxed_opaque_existential_1((v3 + 136), v49);
    (*(v50 + 48))(&v64, v49, v50);
    if (v64 != 2 && (v64 & 1) != 0)
    {
      outlined destroy of MessageCenterEndpoint(v3 + 136);
      goto LABEL_23;
    }

    v52 = *(v3 + 464);
    v51 = *(v3 + 472);

    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v53, v54))
    {
      v56 = *(v3 + 456);
      v55 = *(v3 + 464);
      v57 = OUTLINED_FUNCTION_55();
      v58 = OUTLINED_FUNCTION_54();
      v64 = v58;
      *v57 = 136315138;
      v59 = OUTLINED_FUNCTION_5_2();
      *(v57 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v60, v61);
      OUTLINED_FUNCTION_51_2(&dword_223515000, v62, v54, "Active ineligible endpoint found for persona %s with no AI capability");
      __swift_destroy_boxed_opaque_existential_0(v58);
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_7_13();
    }

    lazy protocol witness table accessor for type MessageCenterError and conformance MessageCenterError();
    OUTLINED_FUNCTION_60();
    OUTLINED_FUNCTION_18_0(v63, 11);
    swift_willThrow();
    outlined destroy of MessageCenterEndpoint(v3 + 136);
  }

  else
  {
    *(v3 + 208) = 0;
    *(v3 + 176) = 0u;
    *(v3 + 192) = 0u;
LABEL_22:
    outlined destroy of AsyncStream<MessageCenterEventProtocol>?(v3 + 176, &_s11SiriNetwork21MessageCenterEndpointVSgMd, &_s11SiriNetwork21MessageCenterEndpointVSgMR);
LABEL_23:
    lazy protocol witness table accessor for type MessageCenterError and conformance MessageCenterError();
    OUTLINED_FUNCTION_14_3();
    v39 = OUTLINED_FUNCTION_60();
    OUTLINED_FUNCTION_18_0(v40, 18);
    OUTLINED_FUNCTION_14_3();
    OUTLINED_FUNCTION_60();
    *v41 = v39;
    *(v41 + 8) = 4;
    swift_willThrow();
  }

  v46 = *(v3 + 480);

  OUTLINED_FUNCTION_6_3();
LABEL_28:

  return v18();
}

{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_11_0();
  v2 = *(v1 + 488);
  v3 = *(v1 + 472);
  v4 = *v0;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_103();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

{
  OUTLINED_FUNCTION_21();
  v2 = *(v0 + 464);
  v1 = *(v0 + 472);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = *(v0 + 456);
    v5 = *(v0 + 464);
    v7 = OUTLINED_FUNCTION_55();
    v15 = OUTLINED_FUNCTION_54();
    *v7 = 136315138;
    v8 = OUTLINED_FUNCTION_5_2();
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, v10);
    OUTLINED_FUNCTION_51_2(&dword_223515000, v11, v4, "Actor device created for persona %s");
    __swift_destroy_boxed_opaque_existential_0(v15);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_7_13();
  }

  outlined destroy of MessageCenterEndpoint(v0 + 56);
  outlined init with take of RPCOspreyConnectionProtocol((v0 + 296), *(v0 + 448));
  v12 = *(v0 + 480);

  OUTLINED_FUNCTION_6_3();

  return v13();
}

uint64_t specialized Collection.randomElement()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = specialized RandomNumberGenerator.next<A>(upperBound:)(v4);
    v6 = specialized Set.startIndex.getter(a1);
    v8 = v7;
    v10 = v9;
    v11 = specialized Collection.index(_:offsetBy:)(v6, v7, v9 & 1, v5, a1);
    v13 = v12;
    v15 = v14;
    outlined consume of Set<MessageCenterEndpoint>.Index._Variant(v6, v8, v10 & 1);
    specialized Set.subscript.getter(v11, v13, a1, a2);
    outlined consume of Set<MessageCenterEndpoint>.Index._Variant(v11, v13, v15 & 1);
    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  v17 = type metadata accessor for MessageCenterActorWrapper(0);

  return __swift_storeEnumTagSinglePayload(a2, v16, 1, v17);
}

double specialized Collection.randomElement()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = specialized RandomNumberGenerator.next<A>(upperBound:)(v4);
    v6 = specialized Set.startIndex.getter(a1);
    v8 = v7;
    v10 = v9;
    v11 = specialized Collection.index(_:offsetBy:)(v6, v7, v9 & 1, v5, a1);
    v13 = v12;
    v15 = v14;
    outlined consume of Set<MessageCenterEndpoint>.Index._Variant(v6, v8, v10 & 1);
    specialized Set.subscript.getter(v11, v13, a1, a2);

    outlined consume of Set<MessageCenterEndpoint>.Index._Variant(v11, v13, v15 & 1);
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t closure #2 in MessageCenterActorBrowser.createActorIfNeeded(for:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16 - v10;
  v12 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = a2;
  v13[5] = a1;
  v13[6] = a3;
  v13[7] = a4;

  v14 = a1;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5(0, 0, v11, &async function pointer to partial apply for closure #1 in closure #2 in MessageCenterActorBrowser.createActorIfNeeded(for:), v13);
}

uint64_t closure #1 in closure #2 in MessageCenterActorBrowser.createActorIfNeeded(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v7[5] = a1;
  return MEMORY[0x2822009F8](closure #1 in closure #2 in MessageCenterActorBrowser.createActorIfNeeded(for:), 0, 0);
}

uint64_t closure #1 in closure #2 in MessageCenterActorBrowser.createActorIfNeeded(for:)()
{
  OUTLINED_FUNCTION_7_0();
  v1 = *(v0 + 48);
  OUTLINED_FUNCTION_40_1();
  Strong = swift_weakLoadStrong();
  *(v0 + 80) = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    *(v0 + 88) = v3;
    *v3 = v0;
    v3[1] = closure #1 in closure #2 in MessageCenterActorBrowser.createActorIfNeeded(for:);
    v4 = *(v0 + 64);
    v5 = *(v0 + 72);
    v6 = *(v0 + 56);

    return MessageCenterActorBrowser.handleActorInvalidation(error:for:)(v6, v4, v5);
  }

  else
  {
    **(v0 + 40) = 1;
    OUTLINED_FUNCTION_6_3();

    return v8();
  }
}

{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_11_0();
  v2 = *(v1 + 88);
  v3 = *(v1 + 80);
  v4 = *v0;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;

  return MEMORY[0x2822009F8](closure #1 in closure #2 in MessageCenterActorBrowser.createActorIfNeeded(for:), 0, 0);
}

{
  **(v0 + 40) = *(v0 + 80) == 0;
  OUTLINED_FUNCTION_6_3();
  return v1();
}

uint64_t closure #1 in MessageCenterActorBrowser.handleEndpointLost(_:on:)(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = (*(v4 + 16))(v3, v4);
  v7 = v6;
  v8 = a2[3];
  v9 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v8);
  v10 = (*(v9 + 16))(v8, v9);
  if (v7)
  {
    if (v11)
    {
      if (v5 == v10 && v7 == v11)
      {

        v13 = 1;
      }

      else
      {
        v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    if (!v11)
    {
      v13 = 1;
      return v13 & 1;
    }

    v13 = 0;
  }

  return v13 & 1;
}

uint64_t MessageCenterActorBrowser.handleActorInvalidation(error:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  return OUTLINED_FUNCTION_1_0(MessageCenterActorBrowser.handleActorInvalidation(error:for:), v3);
}

uint64_t MessageCenterActorBrowser.handleActorInvalidation(error:for:)()
{
  OUTLINED_FUNCTION_43();
  v22 = v0;
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[5];

  v4 = v3;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v8 = v0[6];
    v7 = v0[7];
    v9 = v0[5];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = OUTLINED_FUNCTION_54();
    v21 = v12;
    *v10 = 136315394;
    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v7, &v21);
    *(v10 + 12) = 2112;
    if (v9)
    {
      v13 = v3;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      v15 = v14;
    }

    else
    {
      v14 = 0;
      v15 = 0;
    }

    *(v10 + 14) = v14;
    *v11 = v15;
    _os_log_impl(&dword_223515000, v5, v6, "Actor for persona %s) was invalidated with error %@", v10, 0x16u);
    outlined destroy of AsyncStream<MessageCenterEventProtocol>?(v11, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_12();
    __swift_destroy_boxed_opaque_existential_0(v12);
    OUTLINED_FUNCTION_7_13();
    OUTLINED_FUNCTION_12();
  }

  v16 = v0[7];
  v17 = v0[8];
  v18 = v0[6];
  OUTLINED_FUNCTION_27_3();
  specialized Dictionary._Variant.removeValue(forKey:)(v18, v16, &_ss17_NativeDictionaryVySSShy11SiriNetwork25MessageCenterActorWrapperVGGMd, &_ss17_NativeDictionaryVySSShy11SiriNetwork25MessageCenterActorWrapperVGGMR);
  swift_endAccess();

  OUTLINED_FUNCTION_6_3();

  return v19();
}

void MessageCenterActorBrowser.getActiveEndpointsDevices()()
{
  v47 = v0;
  v1 = *(v0 + 448);
  v2 = OBJC_IVAR____TtC11SiriNetwork25MessageCenterActorBrowser_activeEndpoints;
  OUTLINED_FUNCTION_40_1();
  v3 = *(v1 + v2);
  v5 = v3 + 64;
  v4 = *(v3 + 64);
  v6 = -1 << *(v3 + 32);
  OUTLINED_FUNCTION_7_15();
  v9 = v8 & v7;
  v11 = (63 - v10) >> 6;

  v13 = 0;
  v41 = MEMORY[0x277D84F98];
  v43 = v12;
  while (v9)
  {
LABEL_7:
    v15 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v16 = v15 | (v13 << 6);
    v17 = *(*(v12 + 56) + 8 * v16);
    v18 = *(v17 + 16);
    if (v18)
    {
      v19 = (*(v12 + 48) + 16 * v16);
      v20 = v19[1];
      v42 = *v19;
      *(v0 + 160) = 0;

      MEMORY[0x223DE3910](v0 + 160, 8);
      v21 = *(v0 + 160);
      v22 = (v21 * v18) >> 64;
      if (v18 > v21 * v18)
      {
        v23 = -v18 % v18;
        if (v23 > v21 * v18)
        {
          do
          {
            *(v0 + 160) = 0;
            MEMORY[0x223DE3910](v0 + 160, 8);
            v24 = *(v0 + 160);
          }

          while (v23 > v24 * v18);
          v22 = (v24 * v18) >> 64;
        }
      }

      v25 = 0;
      v26 = 1 << *(v17 + 32);
      v27 = (v26 + 63) >> 6;
      v28 = 56;
      if (v27)
      {
        while (1)
        {
          v29 = *(v17 + v28);
          if (v29)
          {
            break;
          }

          v25 -= 64;
          v28 += 8;
          if (!--v27)
          {
            goto LABEL_15;
          }
        }

        v30 = __clz(__rbit64(v29)) - v25;
      }

      else
      {
LABEL_15:
        v30 = 1 << *(v17 + 32);
      }

      v31 = specialized Collection.index(_:offsetBy:)(v30, *(v17 + 36), 0, v22, v17);
      if ((v31 & 0x8000000000000000) != 0 || v31 >= v26)
      {
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
        return;
      }

      v32 = *(v17 + 56 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8));
      OUTLINED_FUNCTION_42_1();
      v35 = !v35 || v34 == 0;
      if (v35)
      {
        goto LABEL_29;
      }

      outlined init with copy of MessageCenterEndpoint(*(v17 + 48) + 40 * v33, v0 + 16);

      v36 = *(v0 + 32);
      *(v0 + 304) = *(v0 + 16);
      *(v0 + 320) = v36;
      *(v0 + 336) = *(v0 + 48);
      v45 = 0;
      memset(v44, 0, sizeof(v44));
      v46[3] = &type metadata for MessageCenterEndpoint;
      v46[4] = lazy protocol witness table accessor for type MessageCenterEndpoint and conformance MessageCenterEndpoint();
      v46[0] = swift_allocObject();
      outlined init with copy of MessageCenterEndpoint(v0 + 304, v46[0] + 16);
      MessageCenterDevice.init(actor:endpoint:)(v44, v46, v0 + 160);
      memcpy((v0 + 16), (v0 + 160), 0x90uLL);
      *(v0 + 368) = &type metadata for MessageCenterDevice;
      *(v0 + 376) = lazy protocol witness table accessor for type MessageCenterDevice and conformance MessageCenterDevice();
      v37 = swift_allocObject();
      *(v0 + 344) = v37;
      outlined init with copy of MessageCenterDevice(v0 + 16, v37 + 16);
      outlined init with take of RPCOspreyConnectionProtocol((v0 + 344), v0 + 384);
      v38 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 384, *(v0 + 408));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v46[0] = v41;
      outlined init with copy of MessageCenterDevice(v38, v0 + 160);
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)((v0 + 160), v42, v20, isUniquelyReferenced_nonNull_native, v46);

      outlined destroy of MessageCenterDevice(v0 + 16);
      outlined destroy of MessageCenterEndpoint(v0 + 304);
      v41 = v46[0];
      __swift_destroy_boxed_opaque_existential_0((v0 + 384));
      v12 = v43;
    }
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      goto LABEL_28;
    }

    if (v14 >= v11)
    {
      break;
    }

    v9 = *(v5 + 8 * v14);
    ++v13;
    if (v9)
    {
      v13 = v14;
      goto LABEL_7;
    }
  }

  v40 = *(v0 + 8);

  v40(v41);
}

uint64_t MessageCenterActorBrowser.getActiveActorsDevices()()
{
  OUTLINED_FUNCTION_7_0();
  v1[84] = v0;
  v2 = type metadata accessor for MessageCenterActorWrapper(0);
  v1[85] = v2;
  v3 = *(v2 - 8);
  OUTLINED_FUNCTION_57_0();
  v1[86] = v4;
  v6 = *(v5 + 64) + 15;
  v1[87] = swift_task_alloc();
  v1[88] = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_103();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void MessageCenterActorBrowser.getActiveActorsDevices()()
{
  v73 = v0;
  v59 = (v0 + 488);
  v1 = (v0 + 664);
  v64 = *(v0 + 688);
  v65 = (v0 + 656);
  v63 = *(v0 + 680);
  v2 = *(v0 + 672);
  v3 = OBJC_IVAR____TtC11SiriNetwork25MessageCenterActorBrowser_activeActors;
  OUTLINED_FUNCTION_40_1();
  v4 = *(v2 + v3);
  v5 = v4 + 64;
  v6 = -1 << *(v4 + 32);
  if (-v6 < 64)
  {
    v7 = ~(-1 << -v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(v4 + 64);
  v9 = OBJC_IVAR____TtC11SiriNetwork25MessageCenterActorBrowser_activeEndpoints;

  v61 = v9;
  v62 = v2;
  OUTLINED_FUNCTION_40_1();
  v10 = 0;
  v11 = (63 - v6) >> 6;
  v60 = MEMORY[0x277D84F98];
  v66 = v4;
  while (v8)
  {
LABEL_10:
    v13 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v14 = v13 | (v10 << 6);
    v15 = *(*(v4 + 56) + 8 * v14);
    v16 = *(v15 + 16);
    if (v16)
    {
      v17 = (*(v4 + 48) + 16 * v14);
      v67 = *v17;
      v68 = v17[1];
      *v65 = 0;

      MEMORY[0x223DE3910](v65, 8);
      v18 = *v65 * v16;
      v19 = (*v65 * v16) >> 64;
      if (v16 > v18)
      {
        v20 = -v16 % v16;
        if (v20 > v18)
        {
          do
          {
            *v1 = 0;
            MEMORY[0x223DE3910](v0 + 664, 8);
          }

          while (v20 > *v1 * v16);
          v19 = (*v1 * v16) >> 64;
        }
      }

      v21 = 0;
      v22 = 1 << *(v15 + 32);
      v23 = (v22 + 63) >> 6;
      v24 = 56;
      if (v23)
      {
        while (1)
        {
          v25 = *(v15 + v24);
          if (v25)
          {
            break;
          }

          v21 -= 64;
          v24 += 8;
          if (!--v23)
          {
            goto LABEL_18;
          }
        }

        v26 = __clz(__rbit64(v25)) - v21;
      }

      else
      {
LABEL_18:
        v26 = 1 << *(v15 + 32);
      }

      v27 = specialized Collection.index(_:offsetBy:)(v26, *(v15 + 36), 0, v19, v15);
      if ((v27 & 0x8000000000000000) != 0 || v27 >= v22)
      {
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
        return;
      }

      v28 = *(v15 + 56 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8));
      OUTLINED_FUNCTION_42_1();
      v31 = !v31 || v30 == 0;
      if (v31)
      {
        goto LABEL_41;
      }

      v32 = *(v0 + 704);
      v33 = *(v0 + 696);
      outlined init with copy of MessageCenterActorWrapper(*(v15 + 48) + *(v64 + 72) * v29, v33);

      outlined init with take of MessageCenterActorWrapper(v33, v32, type metadata accessor for MessageCenterActorWrapper);
      outlined init with copy of MessageCenterActorProtocol?(v32 + *(v63 + 20), v0 + 448);
      v34 = *(v62 + v61);
      v35 = v68;
      if (*(v34 + 16))
      {
        v36 = *(v62 + v61);

        v37 = specialized __RawDictionaryStorage.find<A>(_:)(v67, v68);
        if (v38)
        {
          v39 = *(*(v34 + 56) + 8 * v37);

          v40 = *(v39 + 16);
          if (v40)
          {
            v41 = specialized RandomNumberGenerator.next<A>(upperBound:)(v40);
            v42 = -1 << *(v39 + 32);
            v43 = _HashTable.startBucket.getter();
            v57 = specialized Collection.index(_:offsetBy:)(v43, *(v39 + 36), 0, v41, v39);
            v45 = v44;
            v47 = v46;
            v48 = v0 + 488;
            specialized Set.subscript.getter(v57, v44, v39, v59);

            v49 = v47 & 1;
            v35 = v68;
            outlined consume of Set<MessageCenterEndpoint>.Index._Variant(v57, v45, v49);
            if (*(v0 + 512))
            {
              *(&v71 + 1) = &type metadata for MessageCenterEndpoint;
              v72 = lazy protocol witness table accessor for type MessageCenterEndpoint and conformance MessageCenterEndpoint();
              v50 = swift_allocObject();
              *&v70 = v50;
              v51 = *(v0 + 504);
              *(v50 + 16) = *v59;
              *(v50 + 32) = v51;
              *(v50 + 48) = *(v0 + 520);
              goto LABEL_35;
            }
          }

          else
          {

            v48 = v0 + 488;
            *(v0 + 520) = 0;
            *v59 = 0u;
            *(v0 + 504) = 0u;
          }

          outlined destroy of AsyncStream<MessageCenterEventProtocol>?(v48, &_s11SiriNetwork21MessageCenterEndpointVSgMd, &_s11SiriNetwork21MessageCenterEndpointVSgMR);
        }

        else
        {
        }
      }

      v72 = 0;
      v70 = 0u;
      v71 = 0u;
LABEL_35:
      MessageCenterDevice.init(actor:endpoint:)(v0 + 448, &v70, v0 + 160);
      v52 = *(v0 + 704);
      memcpy((v0 + 16), (v0 + 160), 0x90uLL);
      *(v0 + 552) = &type metadata for MessageCenterDevice;
      *(v0 + 560) = lazy protocol witness table accessor for type MessageCenterDevice and conformance MessageCenterDevice();
      v53 = swift_allocObject();
      *(v0 + 528) = v53;
      outlined init with copy of MessageCenterDevice(v0 + 16, v53 + 16);
      outlined init with take of RPCOspreyConnectionProtocol((v0 + 528), v0 + 568);
      v58 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 568, *(v0 + 592));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v70 = v60;
      outlined init with copy of MessageCenterDevice(v58, v0 + 304);
      v4 = v66;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)((v0 + 304), v67, v35, isUniquelyReferenced_nonNull_native, &v70);

      outlined destroy of MessageCenterDevice(v0 + 16);
      outlined destroy of MessageCenterActorWrapper(v52);
      v60 = v70;
      __swift_destroy_boxed_opaque_existential_0((v0 + 568));
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      goto LABEL_40;
    }

    if (v12 >= v11)
    {
      break;
    }

    v8 = *(v5 + 8 * v12);
    ++v10;
    if (v8)
    {
      v10 = v12;
      goto LABEL_10;
    }
  }

  v54 = *(v0 + 704);
  v55 = *(v0 + 696);

  v56 = *(v0 + 8);

  v56(v60);
}

char *MessageCenterActorBrowser.deinit()
{
  v1 = *(v0 + 14);

  v2 = *(v0 + 15);

  v3 = *(v0 + 16);

  outlined destroy of weak ConnectionProviderDelegate?((v0 + 136));
  v4 = OBJC_IVAR____TtC11SiriNetwork25MessageCenterActorBrowser_logger;
  v5 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_13_4(v5);
  (*(v6 + 8))(&v0[v4]);
  v7 = *&v0[OBJC_IVAR____TtC11SiriNetwork25MessageCenterActorBrowser_networkDeviceBrowserProvider + 8];
  outlined consume of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(*&v0[OBJC_IVAR____TtC11SiriNetwork25MessageCenterActorBrowser_networkDeviceBrowserProvider]);
  v8 = *&v0[OBJC_IVAR____TtC11SiriNetwork25MessageCenterActorBrowser_activeEndpoints];

  v9 = *&v0[OBJC_IVAR____TtC11SiriNetwork25MessageCenterActorBrowser_activeIneligibleEndpoints];

  v10 = *&v0[OBJC_IVAR____TtC11SiriNetwork25MessageCenterActorBrowser_activeActors];

  swift_defaultActor_destroy();
  return v0;
}

uint64_t MessageCenterActorBrowser.__deallocating_deinit()
{
  MessageCenterActorBrowser.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for MessageCenterActorBrowser()
{
  result = type metadata singleton initialization cache for MessageCenterActorBrowser;
  if (!type metadata singleton initialization cache for MessageCenterActorBrowser)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for MessageCenterActorBrowser()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MessageCenterActorBrowserType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MessageCenterActorBrowserType and conformance MessageCenterActorBrowserType()
{
  result = lazy protocol witness table cache variable for type MessageCenterActorBrowserType and conformance MessageCenterActorBrowserType;
  if (!lazy protocol witness table cache variable for type MessageCenterActorBrowserType and conformance MessageCenterActorBrowserType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MessageCenterActorBrowserType and conformance MessageCenterActorBrowserType);
  }

  return result;
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v8 = *v4;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if ((v10 & 1) == 0)
  {
    return 0;
  }

  v11 = v9;
  v12 = *v7;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v7;
  v14 = *(*v7 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v14);
  v15 = *(*(v20 + 48) + 16 * v11 + 8);

  v16 = *(*(v20 + 56) + 8 * v11);
  v17 = OUTLINED_FUNCTION_2_13();
  __swift_instantiateConcreteTypeFromMangledNameV2(v17, v18);
  _NativeDictionary._delete(at:)();
  *v7 = v20;
  return v16;
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = *v4;
  v7 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2, a3, a4);
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  v9 = v7;
  v10 = *v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v5;
  v12 = *(*v5 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy11SiriNetwork17MessageCenterUserVAC0eF22EndpointBrowseProtocol_pGMd, &_ss17_NativeDictionaryVy11SiriNetwork17MessageCenterUserVAC0eF22EndpointBrowseProtocol_pGMR);
  _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v12);
  v13 = *(v20 + 48) + 32 * v9;
  v14 = *(v13 + 8);
  v15 = *(v13 + 24);

  v16 = (*(v20 + 56) + 16 * v9);
  v17 = *v16;
  v18 = v16[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork35MessageCenterEndpointBrowseProtocol_pMd, &_s11SiriNetwork35MessageCenterEndpointBrowseProtocol_pMR);
  lazy protocol witness table accessor for type MessageCenterUser and conformance MessageCenterUser();
  _NativeDictionary._delete(at:)();
  *v5 = v20;
  return v17;
}

unint64_t lazy protocol witness table accessor for type MessageCenterUser and conformance MessageCenterUser()
{
  result = lazy protocol witness table cache variable for type MessageCenterUser and conformance MessageCenterUser;
  if (!lazy protocol witness table cache variable for type MessageCenterUser and conformance MessageCenterUser)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MessageCenterUser and conformance MessageCenterUser);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MessageCenterUser and conformance MessageCenterUser;
  if (!lazy protocol witness table cache variable for type MessageCenterUser and conformance MessageCenterUser)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MessageCenterUser and conformance MessageCenterUser);
  }

  return result;
}

uint64_t specialized _NativeSet.update(with:isUnique:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v42 = a2;
  v41 = a3;
  v40 = type metadata accessor for MessageCenterActorWrapper(0);
  v44 = *(v40 - 8);
  v5 = *(v44 + 64);
  MEMORY[0x28223BE20](v40);
  v7 = v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = v3;
  v8 = *v3;
  v9 = *(*v3 + 40);
  Hasher.init(_seed:)();
  v10 = type metadata accessor for UUID();
  v11 = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
  v45 = a1;
  v39[1] = v11;
  v39[2] = v10;
  dispatch thunk of Hashable.hash(into:)();
  v12 = Hasher._finalize()();
  v13 = ~(-1 << *(v8 + 32));
  v14 = 1;
  while (1)
  {
    v15 = v12 & v13;
    v16 = (v12 & v13) >> 6;
    v17 = 1 << (v12 & v13);
    v18 = v17 & *(v8 + 56 + 8 * v16);
    if (!v18)
    {
      break;
    }

    outlined init with copy of MessageCenterActorWrapper(*(v8 + 48) + *(v44 + 72) * v15, v7);
    v19 = static UUID.== infix(_:_:)();
    outlined destroy of MessageCenterActorWrapper(v7);
    if (v19)
    {
      v14 = 0;
      break;
    }

    v12 = v15 + 1;
  }

  v20 = *(v8 + 16);
  v21 = v20 + v14;
  if (__OFADD__(v20, v14))
  {
    __break(1u);
  }

  else
  {
    v22 = *(v8 + 24);
    v23 = v43;
    if (v22 < v21 || (v42 & 1) == 0)
    {
      if (v42)
      {
        specialized _NativeSet.resize(capacity:)();
        goto LABEL_16;
      }

      if (v22 < v21)
      {
        specialized _NativeSet.copyAndResize(capacity:)();
LABEL_16:
        v26 = *v23;
        v27 = *(*v23 + 40);
        Hasher.init(_seed:)();
        dispatch thunk of Hashable.hash(into:)();
        v28 = Hasher._finalize()();
        v29 = ~(-1 << *(v26 + 32));
        while (1)
        {
          v15 = v28 & v29;
          v16 = (v28 & v29) >> 6;
          v17 = 1 << (v28 & v29);
          if ((v17 & *(v26 + 56 + 8 * v16)) == 0)
          {
            v23 = v43;
            if (v18)
            {
              goto LABEL_29;
            }

            v24 = *(v44 + 72);
            goto LABEL_22;
          }

          v25 = *(v44 + 72) * v15;
          outlined init with copy of MessageCenterActorWrapper(*(v26 + 48) + v25, v7);
          v30 = static UUID.== infix(_:_:)();
          outlined destroy of MessageCenterActorWrapper(v7);
          if (v30)
          {
            break;
          }

          v28 = v15 + 1;
        }

        v23 = v43;
        if (!v18)
        {
          goto LABEL_29;
        }

        goto LABEL_25;
      }

      specialized _NativeSet.copy()();
    }

    v24 = *(v44 + 72);
    if (v18)
    {
      v25 = v24 * v15;
LABEL_25:
      v37 = *v23;
      v36 = v41;
      outlined init with take of MessageCenterActorWrapper(*(*v23 + 48) + v25, v41, type metadata accessor for MessageCenterActorWrapper);
      outlined init with take of MessageCenterActorWrapper(v45, *(v37 + 48) + v25, type metadata accessor for MessageCenterActorWrapper);
      v35 = 0;
      return __swift_storeEnumTagSinglePayload(v36, v35, 1, v40);
    }

LABEL_22:
    v31 = *v23;
    *(*v23 + 8 * v16 + 56) |= v17;
    outlined init with take of MessageCenterActorWrapper(v45, *(v31 + 48) + v24 * v15, type metadata accessor for MessageCenterActorWrapper);
    v32 = *(v31 + 16);
    v33 = __OFADD__(v32, 1);
    v34 = v32 + 1;
    if (!v33)
    {
      *(v31 + 16) = v34;
      v35 = 1;
      v36 = v41;
      return __swift_storeEnumTagSinglePayload(v36, v35, 1, v40);
    }
  }

  __break(1u);
LABEL_29:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t specialized Set._subtract<A>(_:)(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 11) | (32 * v10)));
        v12 = *v11;
        v13 = v11[1];
        v14 = v11[2];
        v15 = v11[3];

        specialized Set._Variant.remove(_:)();

        result = outlined consume of MessageCenterUser?(v16, v17);
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t specialized _NativeSet.subtracting<A>(_:)(uint64_t a1, uint64_t a2)
{
  v7 = a2;
  v79 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    v7 = MEMORY[0x277D84FA0];
LABEL_57:
    v53 = *MEMORY[0x277D85DE8];
    return v7;
  }

  v60 = 0;
  v9 = a1 + 56;
  v8 = *(a1 + 56);
  v10 = -1 << *(a1 + 32);
  v65 = ~v10;
  if (-v10 < 64)
  {
    v11 = ~(-1 << -v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & v8;
  v13 = (63 - v10) >> 6;
  v73 = (a2 + 56);

  v15 = 0;
  v67 = v9;
  v66 = v13;
  v69 = v7;
  v68 = v14;
  if (!v12)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_59;
      }

      if (v17 >= v13)
      {
        goto LABEL_56;
      }

      v12 = *(v9 + 8 * v17);
      ++v16;
      if (v12)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v19 = *(v14 + 48);
    v70 = v15;
    v20 = (v19 + ((v15 << 11) | (32 * v18)));
    v21 = *v20;
    v22 = v20[1];
    v6 = v20[2];
    v23 = v20[3];
    v24 = *(v7 + 40);
    Hasher.init(_seed:)();

    v3 = v21;
    String.hash(into:)();
    String.hash(into:)();
    v25 = Hasher._finalize()();
    v26 = -1 << *(v7 + 32);
    v9 = v25 & ~v26;
    v5 = v9 >> 6;
    v4 = 1 << v9;
    if (((1 << v9) & v73[v9 >> 6]) != 0)
    {
      break;
    }

LABEL_24:

    v7 = v69;
    v15 = v70;
    v14 = v68;
    v9 = v67;
    v13 = v66;
    if (!v12)
    {
      goto LABEL_6;
    }
  }

  v71 = ~v26;
  v72 = *(v69 + 48);
  while (1)
  {
    v27 = (v72 + 32 * v9);
    v28 = v27[2];
    v2 = v27[3];
    v29 = *v27 == v3 && v27[1] == v22;
    if (v29 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v30 = v28 == v6 && v2 == v23;
      if (v30 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }
    }

    v9 = (v9 + 1) & v71;
    v5 = v9 >> 6;
    v4 = 1 << v9;
    if ((v73[v9 >> 6] & (1 << v9)) == 0)
    {
      goto LABEL_24;
    }
  }

  v6 = v70;
  v76 = v65;
  v77 = v70;
  v78 = v12;
  v3 = v67;
  v2 = v68;
  v75[0] = v68;
  v75[1] = v67;

  v7 = v69;
  v32 = *(v69 + 32);
  v61 = ((1 << v32) + 63) >> 6;
  v13 = 8 * v61;
  if ((v32 & 0x3Fu) > 0xD)
  {
    goto LABEL_60;
  }

  while (1)
  {
    v62 = &v59;
    MEMORY[0x28223BE20](v31);
    v9 = &v59 - ((v13 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v9, v73, v13);
    v33 = *(v9 + 8 * v5) & ~v4;
    v34 = *(v7 + 16);
    v64 = v9;
    *(v9 + 8 * v5) = v33;
    v35 = v34 - 1;
    v36 = v66;
LABEL_28:
    v63 = v35;
    while (v12)
    {
      v7 = v69;
LABEL_36:
      v38 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v39 = *(v2 + 48);
      v70 = v6;
      v40 = (v39 + ((v6 << 11) | (32 * v38)));
      v4 = *v40;
      v13 = v40[1];
      v41 = v40[2];
      v42 = v40[3];
      v43 = *(v7 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      String.hash(into:)();
      v9 = &v74;
      v44 = Hasher._finalize()();
      v45 = -1 << *(v7 + 32);
      v46 = v44 & ~v45;
      v5 = v46 >> 6;
      v47 = 1 << v46;
      if (((1 << v46) & v73[v46 >> 6]) != 0)
      {
        v71 = ~v45;
        v72 = *(v7 + 48);
        while (1)
        {
          v48 = (v72 + 32 * v46);
          v49 = v48[2];
          v9 = v48[3];
          v50 = *v48 == v4 && v48[1] == v13;
          if (v50 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            v51 = v49 == v41 && v9 == v42;
            if (v51 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }
          }

          v46 = (v46 + 1) & v71;
          v5 = v46 >> 6;
          v47 = 1 << v46;
          if ((v73[v46 >> 6] & (1 << v46)) == 0)
          {
            goto LABEL_49;
          }
        }

        v52 = v64[v5];
        v64[v5] = v52 & ~v47;
        v29 = (v52 & v47) == 0;
        v2 = v68;
        v3 = v67;
        v6 = v70;
        v36 = v66;
        if (!v29)
        {
          v35 = v63 - 1;
          if (__OFSUB__(v63, 1))
          {
            __break(1u);
          }

          if (v63 == 1)
          {

            v7 = MEMORY[0x277D84FA0];
            goto LABEL_56;
          }

          goto LABEL_28;
        }
      }

      else
      {
LABEL_49:

        v2 = v68;
        v3 = v67;
        v6 = v70;
        v36 = v66;
      }
    }

    v7 = v69;
    while (1)
    {
      v37 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v37 >= v36)
      {
        v7 = specialized _NativeSet.extractSubset(using:count:)(v64, v61, v63, v69);
        goto LABEL_56;
      }

      v12 = *(v3 + 8 * v37);
      ++v6;
      if (v12)
      {
        v6 = v37;
        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v55 = swift_slowAlloc();
  v56 = v60;
  v57 = specialized closure #1 in static _UnsafeBitset.withTemporaryCopy<A>(of:body:)(v55, v61, v73, v61, v7, v9, v75);
  if (!v56)
  {
    v58 = v57;

    MEMORY[0x223DE38F0](v55, -1, -1);
    v65 = v76;
    v7 = v58;
LABEL_56:
    outlined consume of Set<MessageCenterUser>.Iterator._Variant();
    goto LABEL_57;
  }

  result = MEMORY[0x223DE38F0](v55, -1, -1);
  __break(1u);
  return result;
}

uint64_t specialized closure #1 in _NativeSet.subtracting<A>(_:)(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = *(a3 + 16);
  v30 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v6 = v5 - 1;
  v35 = a3 + 56;
  v31 = a5;
  while (2)
  {
    v29 = v6;
    do
    {
      while (1)
      {
        v7 = a5[3];
        v8 = a5[4];
        if (!v8)
        {
          v10 = a3;
          while (1)
          {
            v9 = v7 + 1;
            if (__OFADD__(v7, 1))
            {
              break;
            }

            if (v9 >= ((a5[2] + 64) >> 6))
            {
              a5[3] = v7;
              a5[4] = 0;

              return specialized _NativeSet.extractSubset(using:count:)(v30, a2, v29, a3);
            }

            v8 = *(a5[1] + 8 * v9);
            ++v7;
            if (v8)
            {
              goto LABEL_9;
            }
          }

          __break(1u);
          goto LABEL_29;
        }

        v9 = a5[3];
        v10 = a3;
LABEL_9:
        v11 = (*(*a5 + 48) + ((v9 << 11) | (32 * __clz(__rbit64(v8)))));
        v12 = *v11;
        v13 = v11[1];
        v14 = v11[2];
        v15 = v11[3];
        a5[3] = v9;
        a5[4] = (v8 - 1) & v8;
        v16 = *(v10 + 40);
        Hasher.init(_seed:)();

        String.hash(into:)();
        String.hash(into:)();
        v17 = Hasher._finalize()();
        v18 = -1 << *(v10 + 32);
        v19 = v17 & ~v18;
        v20 = v19 >> 6;
        v21 = 1 << v19;
        if (((1 << v19) & *(v35 + 8 * (v19 >> 6))) != 0)
        {
          break;
        }

LABEL_22:

        a5 = v31;
      }

      v33 = ~v18;
      v34 = *(v10 + 48);
      while (1)
      {
        v22 = (v34 + 32 * v19);
        v23 = v22[2];
        v24 = v22[3];
        v25 = *v22 == v12 && v22[1] == v13;
        if (v25 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v26 = v23 == v14 && v24 == v15;
          if (v26 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }
        }

        v19 = (v19 + 1) & v33;
        v20 = v19 >> 6;
        v21 = 1 << v19;
        if ((*(v35 + 8 * (v19 >> 6)) & (1 << v19)) == 0)
        {
          goto LABEL_22;
        }
      }

      a5 = v31;
      v27 = v30[v20];
      v30[v20] = v27 & ~v21;
    }

    while ((v27 & v21) == 0);
    v6 = v29 - 1;
    if (__OFSUB__(v29, 1))
    {
LABEL_29:
      __break(1u);
      return result;
    }

    if (v29 != 1)
    {
      continue;
    }

    return MEMORY[0x277D84FA0];
  }
}

uint64_t specialized closure #1 in static _UnsafeBitset.withTemporaryCopy<A>(of:body:)(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  v12 = specialized closure #1 in _NativeSet.subtracting<A>(_:)(a1, a2, a5, a6, a7);

  return v12;
}

uint64_t specialized _NativeSet.extractSubset(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy11SiriNetwork17MessageCenterUserVGMd, &_ss11_SetStorageCy11SiriNetwork17MessageCenterUserVGMR);
  result = static _SetStorage.allocate(capacity:)();
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
  v12 = result + 56;
  v32 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v33 = (v10 - 1) & v10;
LABEL_17:
    v16 = (*(v4 + 48) + 32 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = v16[2];
    v20 = v16[3];
    v21 = *(v9 + 40);
    Hasher.init(_seed:)();

    String.hash(into:)();
    String.hash(into:)();
    result = Hasher._finalize()();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v9 + 48) + 32 * v25);
    *v30 = v17;
    v30[1] = v18;
    v30[2] = v19;
    v30[3] = v20;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v32;
    v10 = v33;
    if (!v5)
    {
      goto LABEL_6;
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
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v33 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t outlined init with copy of MessageCenterActorWrapper(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageCenterActorWrapper(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of MessageCenterActorWrapper(uint64_t a1)
{
  v2 = type metadata accessor for MessageCenterActorWrapper(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t specialized RandomNumberGenerator.next<A>(upperBound:)(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x223DE3910](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x223DE3910](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized MessageCenterActorBrowser.checkDeviceForRemoteIntelligence(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34[3] = a3;
  v34[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v34);
  OUTLINED_FUNCTION_13_4(a3);
  (*(v8 + 16))();
  if (*(a2 + 152))
  {
    v9 = 0x80000002235F64B0;
  }

  else
  {
    v9 = 0xEF726573776F7242;
  }

  if ((*(a2 + 152) & 1) != 0 || v9 != 0xEF726573776F7242)
  {
    *(a2 + 152);
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v11 = 0;
    if ((v10 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  outlined init with copy of UMUserPersonProtocol(v34, v33);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = OUTLINED_FUNCTION_55();
    v15 = OUTLINED_FUNCTION_54();
    v32 = v15;
    *v14 = 136315138;
    outlined init with copy of UMUserPersonProtocol(v33, v31);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork29MessageCenterEndpointProtocol_pMd, &_s11SiriNetwork29MessageCenterEndpointProtocol_pMR);
    v16 = String.init<A>(describing:)();
    v18 = v17;
    __swift_destroy_boxed_opaque_existential_0(v33);
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, &v32);

    *(v14 + 4) = v19;
    OUTLINED_FUNCTION_51_2(&dword_223515000, v20, v13, "checking device for remote intelligence %s");
    __swift_destroy_boxed_opaque_existential_0(v15);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_7_13();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(v33);
  }

  v21 = *(a4 + 32);
  v22 = OUTLINED_FUNCTION_2_13();
  v24 = v23(v22);
  v25 = specialized MessageCenterActorBrowser.deviceSupportsAppleIntelligence(_:)(boxed_opaque_existential_1, a2, a3, a4);
  v26 = v25;
  if (v24 & 1) != 0 && (v25)
  {
    v11 = 1;
  }

  else
  {
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 67109376;
      *(v29 + 4) = v24 & 1;
      *(v29 + 8) = 1024;
      *(v29 + 10) = v26 & 1;
      _os_log_impl(&dword_223515000, v27, v28, "Device is not eligible for remote intelligence. meDevice = %{BOOL}d, supportsAI = %{BOOL}d", v29, 0xEu);
      OUTLINED_FUNCTION_12();
    }

    v11 = 0;
  }

LABEL_17:
  __swift_destroy_boxed_opaque_existential_0(v34);
  return v11;
}

uint64_t specialized MessageCenterActorBrowser.deviceSupportsAppleIntelligence(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v90[-2] - v9;
  v95 = a3;
  v96 = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v94);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);
  v13 = v95;
  v12 = v96;
  __swift_project_boxed_opaque_existential_1(v94, v95);
  (*(v12 + 48))(&v92, v13, v12);
  LOBYTE(v13) = v92;
  if (v92 == 2)
  {
    outlined init with copy of UMUserPersonProtocol(v94, &v92);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v91 = v17;
      *v16 = 136315138;
      outlined init with copy of UMUserPersonProtocol(&v92, v90);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork29MessageCenterEndpointProtocol_pMd, &_s11SiriNetwork29MessageCenterEndpointProtocol_pMR);
      v18 = String.init<A>(describing:)();
      v20 = v19;
      __swift_destroy_boxed_opaque_existential_0(&v92);
      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v91);

      *(v16 + 4) = v21;
      _os_log_impl(&dword_223515000, v14, v15, "Payload missing on endpoint %s. Falling back to builtin list", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x223DE38F0](v17, -1, -1);
      MEMORY[0x223DE38F0](v16, -1, -1);
    }

    else
    {

      v22 = __swift_destroy_boxed_opaque_existential_0(&v92);
    }

    MEMORY[0x28223BE20](v22);
    v87 = v94;
    if (specialized Sequence.contains(where:)(partial apply for closure #1 in MessageCenterActorBrowser.deviceSupportsAppleIntelligence(_:), (&v89 - 4), &outlined read-only object #0 of one-time initialization function for kSupportedDevices))
    {
      LOBYTE(v13) = 1;
      goto LABEL_30;
    }

    v26 = v95;
    v27 = v96;
    __swift_project_boxed_opaque_existential_1(v94, v95);
    v28 = (*(v27 + 24))(v26, v27);
    v13 = v29;
    if (!v29)
    {
      goto LABEL_30;
    }

    v30 = v28;
    v92 = v28;
    v93 = v29;
    strcpy(v90, "^iPhone(\\d+)");
    BYTE1(v90[3]) = 0;
    HIWORD(v90[3]) = -5120;
    v31 = type metadata accessor for Locale();
    __swift_storeEnumTagSinglePayload(v10, 1, 1, v31);
    v32 = lazy protocol witness table accessor for type String and conformance String();
    v87 = v32;
    v88 = v32;
    StringProtocol.range<A>(of:options:range:locale:)();
    v34 = v33;
    outlined destroy of AsyncStream<MessageCenterEventProtocol>?(v10, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
    if (v34)
    {
      v92 = v30;
      v93 = v13;
      strcpy(v90, "^iPad(\\d+)");
      HIBYTE(v90[2]) = 0;
      v90[3] = -369098752;
      __swift_storeEnumTagSinglePayload(v10, 1, 1, v31);
      v87 = v32;
      v88 = v32;
      StringProtocol.range<A>(of:options:range:locale:)();
      v36 = v35;
      outlined destroy of AsyncStream<MessageCenterEventProtocol>?(v10, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
      if ((v36 & 1) == 0)
      {
        v59 = String.subscript.getter();
        v61 = v60;
        v63 = v62;
        v65 = v64;

        v66 = MEMORY[0x223DE2130](v59, v61, v63, v65);
        v68 = v67;

        v69 = specialized Collection.dropFirst(_:)(4uLL, v66, v68);
        v73 = v72;
        if ((v69 ^ v70) >= 0x4000)
        {
          v74 = v69;
          v75 = v70;
          v76 = v71;
          v77 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SiSg_Tg5061_ss17FixedWidthIntegerPsE_5radixxSgqd___SitcSyRd__lufcADSRys5I15VGXEfU_Si_SsTG5SiTf1cn_n(v69, v70, v71, v72, 10);
          if ((v78 & 0x100) != 0)
          {
            v79 = specialized _parseInteger<A, B>(ascii:radix:)(v74, v75, v76, v73, 10);
            v85 = v84;

            if ((v85 & 1) == 0)
            {
LABEL_26:
              v83 = v79 <= 13;
LABEL_27:
              LOBYTE(v13) = !v83;
              goto LABEL_30;
            }
          }

          else
          {
            v79 = v77;
            v80 = v78;

            if ((v80 & 1) == 0)
            {
              goto LABEL_26;
            }
          }

LABEL_25:
          LOBYTE(v13) = 0;
          goto LABEL_30;
        }
      }
    }

    else
    {
      v37 = String.subscript.getter();
      v39 = v38;
      v41 = v40;
      v43 = v42;

      v44 = MEMORY[0x223DE2130](v37, v39, v41, v43);
      v46 = v45;

      v47 = specialized Collection.dropFirst(_:)(6uLL, v44, v46);
      v51 = v50;
      if ((v47 ^ v48) >= 0x4000)
      {
        v52 = v47;
        v53 = v48;
        v54 = v49;
        v55 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SiSg_Tg5061_ss17FixedWidthIntegerPsE_5radixxSgqd___SitcSyRd__lufcADSRys5I15VGXEfU_Si_SsTG5SiTf1cn_n(v47, v48, v49, v50, 10);
        if ((v56 & 0x100) != 0)
        {
          v57 = specialized _parseInteger<A, B>(ascii:radix:)(v52, v53, v54, v51, 10);
          v82 = v81;

          if (v82)
          {
            goto LABEL_25;
          }
        }

        else
        {
          v57 = v55;
          v58 = v56;

          if (v58)
          {
            goto LABEL_25;
          }
        }

        v83 = v57 <= 15;
        goto LABEL_27;
      }
    }

    goto LABEL_25;
  }

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 67109120;
    *(v25 + 4) = v13 & 1;
    _os_log_impl(&dword_223515000, v23, v24, "Found endpoint with Apple Intelligence support: %{BOOL}d", v25, 8u);
    MEMORY[0x223DE38F0](v25, -1, -1);
  }

LABEL_30:
  __swift_destroy_boxed_opaque_existential_0(v94);
  return v13 & 1;
}

unint64_t specialized Collection.index(_:offsetBy:)(unint64_t result, int a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a4 < 0)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    return result;
  }

  v6 = result;
  if (a4)
  {
    v7 = 0;
    while ((a3 & 1) == 0)
    {
      if ((v6 & 0x8000000000000000) != 0 || (v8 = 1 << *(a5 + 32), v6 >= v8))
      {
        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v9 = v6 >> 6;
      v10 = *(a5 + 56 + 8 * (v6 >> 6));
      if (((v10 >> v6) & 1) == 0)
      {
        goto LABEL_21;
      }

      if (*(a5 + 36) != a2)
      {
        goto LABEL_22;
      }

      v11 = v10 & (-2 << (v6 & 0x3F));
      if (v11)
      {
        v6 = __clz(__rbit64(v11)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v12 = v9 << 6;
        v13 = v9 + 1;
        v14 = (a5 + 64 + 8 * v9);
        while (v13 < (v8 + 63) >> 6)
        {
          v15 = *v14++;
          result = v15;
          v12 += 64;
          ++v13;
          if (v15)
          {
            v6 = __clz(__rbit64(result)) + v12;
            goto LABEL_16;
          }
        }

        v6 = 1 << *(a5 + 32);
      }

LABEL_16:
      a3 = 0;
      if (++v7 >= a4)
      {
        return OUTLINED_FUNCTION_41_0();
      }
    }

    goto LABEL_24;
  }

  v16 = OUTLINED_FUNCTION_41_0();
  outlined copy of Set<A>.Index._Variant<A>(v16, v17, v18);
  return OUTLINED_FUNCTION_41_0();
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(const void *a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v31 = &type metadata for MessageCenterDevice;
  v32 = lazy protocol witness table accessor for type MessageCenterDevice and conformance MessageCenterDevice();
  *&v30 = swift_allocObject();
  memcpy((v30 + 16), a1, 0x90uLL);
  v10 = *a5;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_10;
  }

  v16 = v11;
  v17 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySS11SiriNetwork27MessageCenterDeviceProtocol_pGMd, &_ss17_NativeDictionaryVySS11SiriNetwork27MessageCenterDeviceProtocol_pGMR);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a4 & 1, v15))
  {
    goto LABEL_5;
  }

  v18 = *a5;
  v19 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  if ((v17 & 1) != (v20 & 1))
  {
LABEL_10:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v16 = v19;
LABEL_5:
  v21 = *a5;
  if (v17)
  {
    v22 = (v21[7] + 40 * v16);
    __swift_destroy_boxed_opaque_existential_0(v22);
    return outlined init with take of RPCOspreyConnectionProtocol(&v30, v22);
  }

  else
  {
    v24 = __swift_mutable_project_boxed_opaque_existential_1(&v30, &type metadata for MessageCenterDevice);
    v25 = *(off_2836B2BB8 + 8);
    MEMORY[0x28223BE20](v24);
    v27 = &v29 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v28 + 16))(v27);
    specialized _NativeDictionary._insert(at:key:value:)(v16, a2, a3, v27, v21);

    return __swift_destroy_boxed_opaque_existential_0(&v30);
  }
}

uint64_t outlined consume of Set<MessageCenterEndpoint>.Index._Variant(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t outlined copy of Set<A>.Index._Variant<A>(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, const void *a4, void *a5)
{
  v16 = &type metadata for MessageCenterDevice;
  v17 = lazy protocol witness table accessor for type MessageCenterDevice and conformance MessageCenterDevice();
  *&v15 = swift_allocObject();
  memcpy((v15 + 16), a4, 0x90uLL);
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = (a5[6] + 16 * a1);
  *v10 = a2;
  v10[1] = a3;
  result = outlined init with take of RPCOspreyConnectionProtocol(&v15, a5[7] + 40 * a1);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #2 in MessageCenterActorBrowser.createActorIfNeeded(for:)()
{
  OUTLINED_FUNCTION_21();
  v3 = v2;
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v9 = v0[6];
  v8 = v0[7];
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = partial apply for closure #1 in closure #1 in closure #1 in closure #1 in MessageCenterEndpointBrowser.start();

  return closure #1 in closure #2 in MessageCenterActorBrowser.createActorIfNeeded(for:)(v3, v4, v5, v6, v7, v9, v8);
}

uint64_t specialized MessageCenterEndpointBrowser.init(persona:delegate:usePersona:browserProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v33 = a5;
  v34 = a6;
  v36 = a4;
  v35 = a3;
  v30 = a1;
  v31 = a2;
  v32 = type metadata accessor for AdoptPersonaExecutionStrategy(0);
  v8 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32);
  v10 = (&v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v11 = *(v29 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v29);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for OS_dispatch_queue_serial.Attributes();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v17 = type metadata accessor for DispatchQoS();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  swift_defaultActor_initialize();
  v28 = type metadata accessor for OS_dispatch_queue_serial();
  *(a7 + 112) = 0u;
  *(a7 + 128) = 0u;
  *(a7 + 144) = 0u;
  *(a7 + 160) = 0;
  static DispatchQoS.unspecified.getter();
  v37 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type OS_dispatch_queue_serial.Attributes and conformance OS_dispatch_queue_serial.Attributes, MEMORY[0x277D852D8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo24OS_dispatch_queue_serialC8DispatchE10AttributesVGMd, _sSaySo24OS_dispatch_queue_serialC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue_serial.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v11 + 104))(v14, *MEMORY[0x277D85268], v29);
  *(a7 + 168) = OS_dispatch_queue_serial.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(a7 + 184) = 0;
  swift_unknownObjectWeakInit();
  v19 = OBJC_IVAR____TtC11SiriNetwork28MessageCenterEndpointBrowser_logger;
  if (one-time initialization token for messageCenterActor != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  v21 = __swift_project_value_buffer(v20, static Logger.messageCenterActor);
  v22 = *(*(v20 - 8) + 16);
  v22(a7 + v19, v21, v20);
  *(a7 + 184) = &protocol witness table for MessageCenterActorBrowser;
  swift_unknownObjectWeakAssign();
  v23 = v30;
  v24 = v31;
  *(a7 + 192) = v30;
  *(a7 + 200) = v24;
  *v10 = v23;
  v10[1] = v24;
  v25 = v32;
  v22(v10 + *(v32 + 20), v21, v20);

  outlined consume of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(v33);

  v26 = (v10 + *(v25 + 24));
  *v26 = 0;
  v26[1] = 0;
  outlined init with take of MessageCenterActorWrapper(v10, a7 + OBJC_IVAR____TtC11SiriNetwork28MessageCenterEndpointBrowser_executionStrategy, type metadata accessor for AdoptPersonaExecutionStrategy);
  *(a7 + 208) = 0;
  *(a7 + OBJC_IVAR____TtC11SiriNetwork28MessageCenterEndpointBrowser_usePersona) = v36 & 1;
  return a7;
}

unint64_t type metadata accessor for OS_dispatch_queue_serial()
{
  result = lazy cache variable for type metadata for OS_dispatch_queue_serial;
  if (!lazy cache variable for type metadata for OS_dispatch_queue_serial)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_dispatch_queue_serial);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type UUID and conformance UUID(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type [OS_dispatch_queue_serial.Attributes] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [OS_dispatch_queue_serial.Attributes] and conformance [A];
  if (!lazy protocol witness table cache variable for type [OS_dispatch_queue_serial.Attributes] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo24OS_dispatch_queue_serialC8DispatchE10AttributesVGMd, _sSaySo24OS_dispatch_queue_serialC8DispatchE10AttributesVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [OS_dispatch_queue_serial.Attributes] and conformance [A]);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ConnectionQualityReport(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && a1[4])
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 4;
      v2 = v3 - 4;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ConnectionQualityReport(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 4) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 4) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

SiriNetwork::ConnectionQuality_optional __swiftcall ConnectionQuality.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ConnectionQuality.init(rawValue:), v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t ConnectionQuality.rawValue.getter(char a1)
{
  result = 1685024615;
  switch(a1)
  {
    case 1:
      result = 6578530;
      break;
    case 2:
      result = OUTLINED_FUNCTION_4_19();
      break;
    case 3:
      result = OUTLINED_FUNCTION_3_18();
      break;
    default:
      return result;
  }

  return result;
}

SiriNetwork::ConnectionQuality_optional protocol witness for RawRepresentable.init(rawValue:) in conformance ConnectionQuality@<W0>(Swift::String *a1@<X0>, SiriNetwork::ConnectionQuality_optional *a2@<X8>)
{
  result.value = ConnectionQuality.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance ConnectionQuality@<X0>(uint64_t *a1@<X8>)
{
  result = ConnectionQuality.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

_BYTE *storeEnumTagSinglePayload for ConnectionQuality(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ConnectionQuality and conformance ConnectionQuality()
{
  result = lazy protocol witness table cache variable for type ConnectionQuality and conformance ConnectionQuality;
  if (!lazy protocol witness table cache variable for type ConnectionQuality and conformance ConnectionQuality)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConnectionQuality and conformance ConnectionQuality);
  }

  return result;
}

id one-time initialization function for shared()
{
  result = [objc_allocWithZone(type metadata accessor for NetworkWiFiManager()) init];
  static NetworkWiFiManager.shared = result;
  return result;
}

{
  result = [objc_allocWithZone(type metadata accessor for NetworkActivityTracing()) init];
  static NetworkActivityTracing.shared = result;
  return result;
}

id NetworkWiFiManager.init()()
{
  v20 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v20 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_0_1();
  v5 = v4 - v3;
  v6 = type metadata accessor for OS_dispatch_queue.Attributes();
  v7 = OUTLINED_FUNCTION_71(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_0_1();
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  OUTLINED_FUNCTION_0_1();
  v21 = OBJC_IVAR___SNNetworkWiFiManagerInternal_wifiManager;
  *&v0[OBJC_IVAR___SNNetworkWiFiManagerInternal_wifiManager] = 0;
  *&v0[OBJC_IVAR___SNNetworkWiFiManagerInternal_wifiDevice] = 0;
  v19 = OBJC_IVAR___SNNetworkWiFiManagerInternal_wifiClientType;
  *&v0[OBJC_IVAR___SNNetworkWiFiManagerInternal_wifiClientType] = 0;
  v12 = OBJC_IVAR___SNNetworkWiFiManagerInternal_interface;
  *&v0[OBJC_IVAR___SNNetworkWiFiManagerInternal_interface] = 0;
  *&v0[OBJC_IVAR___SNNetworkWiFiManagerInternal_queueGroup] = 0;
  type metadata accessor for OS_dispatch_queue();
  static DispatchQoS.unspecified.getter();
  v23 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v5, *MEMORY[0x277D85260], v20);
  *&v0[OBJC_IVAR___SNNetworkWiFiManagerInternal_queue] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v13 = [objc_allocWithZone(MEMORY[0x277D02B18]) initWithServiceType_];
  v14 = *&v0[v12];
  *&v0[v12] = v13;

  v15 = *&v0[v12];
  if (v15)
  {
    [v15 resume];
  }

  v16 = *MEMORY[0x277CBECE8];
  v17 = *&v0[v19];
  *&v0[v21] = WiFiManagerClientCreate();
  v22.receiver = v0;
  v22.super_class = type metadata accessor for NetworkWiFiManager();
  return objc_msgSendSuper2(&v22, sel_init);
}

id NetworkWiFiManager.__deallocating_deinit()
{
  v1 = *&v0[OBJC_IVAR___SNNetworkWiFiManagerInternal_interface];
  if (v1)
  {
    [v1 invalidate];
  }

  if (*&v0[OBJC_IVAR___SNNetworkWiFiManagerInternal_wifiManager])
  {
    swift_unknownObjectRelease();
  }

  v3.receiver = v0;
  v3.super_class = type metadata accessor for NetworkWiFiManager();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id NetworkWiFiManager.getWiFiRecordRepresentation()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork10WiFiRecordVSgMd, &_s11SiriNetwork10WiFiRecordVSgMR);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v13 - v2;
  v4 = type metadata accessor for WiFiRecord(0);
  v5 = OUTLINED_FUNCTION_71(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_0_1();
  v10 = v9 - v8;
  NetworkWiFiManager.getWiFiRecord()(v3);
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    outlined destroy of WiFiRecord?(v3);
    return 0;
  }

  else
  {
    outlined init with take of WiFiRecord(v3, v10);
    type metadata accessor for WiFiRecordRepresentation(0);
    v11 = static WiFiRecordRepresentation.wiFiRecordRepresentation(from:)(v10);
    outlined destroy of WiFiRecord(v10);
  }

  return v11;
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned Int32)@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void *closure #1 in serialize<A>(_:at:)(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:privacy:)(uint64_t (*a1)(void))
{
  return a1() & 1;
}

{
  return a1();
}

uint64_t ConnectionNetworkReport.init(ospreyConnectionMetrics:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = 1;
  v25 = 1;
  v24 = 1;
  v23 = 1;
  v22 = 1;
  [a1 fetchStartToFirstByteTime];
  v5 = v4;
  [a1 fetchStartToDomainLookupStartTime];
  if (Double.milliseconds.getter(v6) < 1)
  {
    v9 = 0;
  }

  else
  {
    [a1 fetchStartToDomainLookupStartTime];
    result = Double.milliseconds.getter(v7);
    if (result < 0)
    {
      __break(1u);
      goto LABEL_23;
    }

    v9 = result;
    v25 = 0;
  }

  [a1 dnsResolutionTime];
  if (Double.milliseconds.getter(v10) >= 1)
  {
    [a1 dnsResolutionTime];
    result = Double.milliseconds.getter(v11);
    if ((result & 0x8000000000000000) == 0)
    {
      v12 = result;
      v26 = 0;
      goto LABEL_9;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v12 = 0;
LABEL_9:
  [a1 tcpConnectTime];
  if (Double.milliseconds.getter(v13) >= 1)
  {
    [a1 tcpConnectTime];
    result = Double.milliseconds.getter(v14);
    if ((result & 0x8000000000000000) == 0)
    {
      v15 = result;
      v23 = 0;
      goto LABEL_13;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v15 = 0;
LABEL_13:
  [a1 connectionEstablishmentTime];
  if (Double.milliseconds.getter(v16) < 1)
  {
    v18 = 0;
    goto LABEL_17;
  }

  [a1 connectionEstablishmentTime];
  result = Double.milliseconds.getter(v17);
  if (result < 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v18 = result;
  v24 = 0;
LABEL_17:
  [a1 secureConnectionTime];
  if (Double.milliseconds.getter(v19) < 1)
  {

    result = 0;
    goto LABEL_21;
  }

  [a1 secureConnectionTime];
  v21 = v20;

  result = Double.milliseconds.getter(v21);
  if ((result & 0x8000000000000000) == 0)
  {
    v22 = 0;
LABEL_21:
    *a2 = 0;
    *(a2 + 4) = 1;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 8) = 0;
    *(a2 + 32) = 1;
    *(a2 + 40) = 0u;
    *(a2 + 56) = 0u;
    *(a2 + 72) = 0u;
    *(a2 + 88) = 0;
    *(a2 + 92) = 1;
    *(a2 + 96) = 0;
    *(a2 + 100) = 1;
    *(a2 + 104) = MEMORY[0x277D84F98];
    *(a2 + 112) = 0;
    *(a2 + 120) = 0;
    *(a2 + 128) = v12;
    *(a2 + 136) = v26;
    *(a2 + 144) = v9;
    *(a2 + 152) = v25;
    *(a2 + 160) = v18;
    *(a2 + 168) = v24;
    *(a2 + 176) = 0;
    *(a2 + 184) = 1;
    *(a2 + 192) = v15;
    *(a2 + 200) = v23;
    *(a2 + 208) = result;
    *(a2 + 216) = v22;
    *(a2 + 224) = 0;
    *(a2 + 232) = 0;
    *(a2 + 240) = 0;
    *(a2 + 248) = 1;
    *(a2 + 256) = v5;
    *(a2 + 264) = 0;
    *(a2 + 272) = 0;
    *(a2 + 280) = 1;
    *(a2 + 288) = 0;
    *(a2 + 296) = 1;
    *(a2 + 304) = 0;
    *(a2 + 312) = 1;
    return result;
  }

LABEL_26:
  __break(1u);
  return result;
}

size_t static AceSerialization.aceDataForSpeechPacket(_:)(uint64_t a1)
{
  v2 = v1;
  v63 = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for Data.Deallocator();
  v5 = OUTLINED_FUNCTION_0_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_0_1();
  v12 = (v11 - v10);
  v13 = (a1 + OBJC_IVAR___SNSpeechPacketInternal_internalRefId);
  swift_beginAccess();
  v14 = v13[1];
  if (!v14)
  {
    goto LABEL_6;
  }

  v15 = *v13;
  v16 = v13[1];

  v17 = MEMORY[0x223DE2070](v15, v14);

  v14 = [v17 UTF8String];
  v18 = v17;
  if (!v14)
  {
    goto LABEL_6;
  }

  v19 = strlen(v14);
  if (v19 > 127)
  {
LABEL_9:
    lazy protocol witness table accessor for type AceSerializationError and conformance AceSerializationError();
    OUTLINED_FUNCTION_60();
    *v26 = xmmword_2235EF700;
    OUTLINED_FUNCTION_5_19(v26, 2);
    goto LABEL_10;
  }

  v20 = v19;
  if (v19 < -128)
  {
    __break(1u);
LABEL_6:
    v20 = 0;
  }

  v21 = OBJC_IVAR___SNSpeechPacketInternal_packetNumber;
  swift_beginAccess();
  v22 = *(a1 + v21);
  if (v22 != v22)
  {
    goto LABEL_9;
  }

  v23 = OBJC_IVAR___SNSpeechPacketInternal_packets;
  swift_beginAccess();
  v24 = *(a1 + v23);
  v25 = specialized Array.count.getter(v24);
  if (v25 >= 0x8000)
  {
    goto LABEL_9;
  }

  v59 = v20;
  if (v25 < 0xC000000000000000)
  {
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v20 = 2 * v25;
  if (v25 < -32768 || v20 < 0xFFFFFFFF80000000)
  {
    goto LABEL_62;
  }

  v54 = v12;
  v55 = v25;
  if (v20 > 0x7FFFFFFF)
  {
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v30 = specialized Array.count.getter(v24);
  v12 = v30;
  v23 = &off_2784DD000;
  v53 = v4;
  v52 = v7;
  v57 = v14;
  if (v30)
  {
    if (v30 < 1)
    {
      goto LABEL_71;
    }

    v2 = 0;
    v14 = 0xFFFFFFFF80000000;
    while (1)
    {
      v31 = (v24 & 0xC000000000000001) != 0 ? MEMORY[0x223DE2730](v2, v24) : *(v24 + 8 * v2 + 32);
      v4 = v31;
      v23 = [v31 *(v23 + 3888)];

      if (v23 < 0xFFFFFFFF80000000)
      {
        break;
      }

      if (v23 > 0x7FFFFFFF)
      {
        goto LABEL_55;
      }

      v32 = __OFADD__(v20, v23);
      v20 = (v20 + v23);
      if (v32)
      {
        goto LABEL_56;
      }

      ++v2;
      v23 = 0x2784DD000;
      if (v12 == v2)
      {
        goto LABEL_29;
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
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

LABEL_29:
  v33 = v20 + 1;
  if (__OFADD__(v20, 1))
  {
    goto LABEL_64;
  }

  LOWORD(v23) = v57;
  v32 = __OFADD__(v33, v59);
  v34 = v33 + v59;
  v4 = v22;
  if (v32)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v2 = (v34 + 4);
  if (__OFADD__(v34, 4))
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v14 = v2;
  v35 = swift_slowAlloc();
  if ((v2 & 0x80000000) != 0)
  {
LABEL_67:
    __break(1u);
LABEL_68:
    swift_once();
    goto LABEL_36;
  }

  v20 = v35;
  v61 = static AceDataHeader.createHeaderData(forType:lengthOrIdentifier:)(6, v2);
  v62 = v36;
  *v20 = v59;
  v2 = v20 + 1;
  if (v59 >= 1)
  {
    memmove((v20 + 1), v57, v59);
    v2 += v59;
  }

  LOWORD(v23) = v55;
  if (one-time initialization token for htons != -1)
  {
    goto LABEL_68;
  }

LABEL_36:
  v56 = v20;
  if (v4 < 0)
  {
    __break(1u);
    goto LABEL_70;
  }

  v51 = v14;
  v37 = v23;
  v38 = static Endian.htons;
  v14 = *algn_2813272A8;
  *v2 = static Endian.htons(v4);
  if ((v37 & 0x80000000) != 0)
  {
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
  }

  v58 = v38;
  v39 = 0;
  *(v2 + 2) = (v38)(v37);
  v20 = v2 + 4;
  v60 = v24 & 0xC000000000000001;
  v23 = v24 & 0xFFFFFFFFFFFFFF8;
  while (v12 != v39)
  {
    if (v60)
    {
      v40 = MEMORY[0x223DE2730](v39, v24);
    }

    else
    {
      if (v39 >= *(v23 + 16))
      {
        goto LABEL_58;
      }

      v40 = *(v24 + 8 * v39 + 32);
    }

    v41 = v40;
    if (__OFADD__(v39, 1))
    {
      goto LABEL_57;
    }

    v4 = v24;
    v24 = v12;
    v12 = &off_2784DD000;
    v42 = [v40 length];
    if (v42 >= 0x10000)
    {

      lazy protocol witness table accessor for type AceSerializationError and conformance AceSerializationError();
      OUTLINED_FUNCTION_60();
      *v48 = xmmword_2235EF700;
      OUTLINED_FUNCTION_5_19(v48, 2);

      outlined consume of Data?(v61, v62);
      goto LABEL_10;
    }

    v2 = v42;
    v43 = [v41 length];
    if ((v43 & 0x8000000000000000) != 0)
    {
      goto LABEL_59;
    }

    if (v43 >> 16)
    {
      goto LABEL_60;
    }

    *v20 = v58();
    v44 = (v20 + 2);
    memmove(v44, [v41 bytes], v2);

    v20 = v44 + v2;
    ++v39;
    v12 = v24;
    v24 = v4;
  }

  (*(v52 + 104))(v54, *MEMORY[0x277CC92A0], v53);
  MEMORY[0x223DE1380](v56, v51, v54);
  v45 = v62;
  if (v62 >> 60 == 15)
  {
    v46 = OUTLINED_FUNCTION_0_36();
    outlined consume of Data._Representation(v46, v47);
  }

  else
  {
    OUTLINED_FUNCTION_0_36();
    Data.append(_:)();
    v49 = OUTLINED_FUNCTION_0_36();
    outlined consume of Data._Representation(v49, v50);
    v45 = v62;
  }

  v2 = v61;
  outlined copy of Data?(v61, v45);
  outlined consume of Data?(v61, v45);
LABEL_10:
  v27 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t one-time initialization function for htons()
{
  if (one-time initialization token for isLittleEndian != -1)
  {
    result = swift_once();
  }

  v0 = destructiveProjectEnumData for ConnectionConfigurationError;
  if (static Endian.isLittleEndian)
  {
    v0 = @nonobjc _OSSwapInt16(_:);
  }

  static Endian.htons = v0;
  *algn_2813272A8 = 0;
  return result;
}

uint64_t one-time initialization function for htonl()
{
  if (one-time initialization token for isLittleEndian != -1)
  {
    result = swift_once();
  }

  v0 = destructiveProjectEnumData for ConnectionConfigurationError;
  if (static Endian.isLittleEndian)
  {
    v0 = @nonobjc _OSSwapInt32(_:);
  }

  static Endian.htonl = v0;
  *algn_2813272B8 = 0;
  return result;
}

uint64_t one-time initialization function for ntohs()
{
  if (one-time initialization token for isLittleEndian != -1)
  {
    result = swift_once();
  }

  v0 = destructiveProjectEnumData for ConnectionConfigurationError;
  if (static Endian.isLittleEndian)
  {
    v0 = @nonobjc _OSSwapInt16(_:);
  }

  static Endian.ntohs = v0;
  unk_27D08E280 = 0;
  return result;
}

uint64_t one-time initialization function for ntohl()
{
  if (one-time initialization token for isLittleEndian != -1)
  {
    result = swift_once();
  }

  v0 = destructiveProjectEnumData for ConnectionConfigurationError;
  if (static Endian.isLittleEndian)
  {
    v0 = @nonobjc _OSSwapInt32(_:);
  }

  static Endian.ntohl = v0;
  *algn_281327298 = 0;
  return result;
}

uint64_t AceStreamCompressionType.init(rawValue:)(char a1)
{
  if (a1 == 2)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (a1 == 1)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AceStreamCompressionType@<X0>(_BYTE *a1@<X8>)
{
  result = AceStreamCompressionType.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AceDataType@<X0>(_BYTE *a1@<X8>)
{
  result = AceDataType.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

id static AceSerialization.parseSpeechPacket(withBytes:length:)(unsigned __int8 *a1, int a2)
{
  v35[1] = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for String.Encoding();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  if (!a2)
  {
    goto LABEL_11;
  }

  v6 = *a1;
  LODWORD(v7) = a2 - 1 - v6;
  if (a2 - 1 < v6)
  {
    goto LABEL_11;
  }

  v8 = MEMORY[0x223DE13C0](a1 + 1, *a1);
  v10 = v9;
  static String.Encoding.utf8.getter();
  v11 = String.init(data:encoding:)();
  if (!v12)
  {
    outlined consume of Data._Representation(v8, v10);
    goto LABEL_11;
  }

  v13 = v12;
  if (v7 < 2)
  {
LABEL_8:
    outlined consume of Data._Representation(v8, v10);
    goto LABEL_9;
  }

  v33 = v11;
  v14 = &a1[v6 + 1];
  v15 = *v14;
  if (one-time initialization token for ntohs != -1)
  {
    goto LABEL_33;
  }

LABEL_6:
  v17 = static Endian.ntohs;
  v16 = unk_27D08E280;
  v18 = static Endian.ntohs(v15);
  if (v18 < 0)
  {
    __break(1u);
LABEL_35:
    __break(1u);
  }

  if ((v7 & 0xFFFFFFFE) == 2)
  {
    goto LABEL_8;
  }

  v22 = v18;
  v30 = v13;
  v31 = v8;
  v32 = v10;
  v15 = v16;
  v23 = v17(*(v14 + 1));
  if ((v23 & 0x8000) != 0)
  {
    goto LABEL_35;
  }

  v8 = 0;
  v29 = v22;
  v34 = v23;
  v13 = (v7 - 4);
  v14 += 4;
  v24 = MEMORY[0x277D84F90];
  for (v35[0] = MEMORY[0x277D84F90]; ; v24 = v35[0])
  {
    if (v8 == v34)
    {
      v28 = objc_allocWithZone(type metadata accessor for SpeechPacket());
      v19 = SpeechPacket.init(aceId:refId:packets:packetNumber:)(0, 0, v33, v30, v24, v29);
      outlined consume of Data._Representation(v31, v32);
      goto LABEL_12;
    }

    if (v8 == 0x7FFF)
    {
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      swift_once();
      goto LABEL_6;
    }

    v25 = v13 >= 2;
    v13 = (v13 - 2);
    if (!v25)
    {
      break;
    }

    v7 = *v14;
    if ((v17(v7) & 0x8000) != 0)
    {
      break;
    }

    v15 = v16;
    v26 = v17(v7);
    if (v26 < 0)
    {
      goto LABEL_31;
    }

    v10 = v26;
    if (v26)
    {
      if (v13 < v10)
      {
        break;
      }
    }

    v15 = v26;
    v27 = [objc_allocWithZone(MEMORY[0x277CBEA90]) initWithBytes:v14 + 2 length:v26];
    v25 = v13 >= v10;
    v13 = (v13 - v10);
    if (!v25)
    {
      goto LABEL_32;
    }

    v7 = v27;
    v15 = v35;
    MEMORY[0x223DE2240]();
    if (*((v35[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v8 = (v8 + 1);
    v14 += v10 + 2;
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  outlined consume of Data._Representation(v31, v32);
LABEL_9:

LABEL_11:
  v19 = 0;
LABEL_12:
  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

uint64_t specialized Data.InlineData.withUnsafeBytes<A>(_:)(uint64_t a1, uint64_t a2, size_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  __s1 = a1;
  v11 = WORD2(a2);
  v10 = a2;
  if (!memcmp(&__s1, &unk_2836AF790, a3))
  {
    v6 = *(&__s1 + a3);
    if (v6 == 2)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }

    if (v6 == 1)
    {
      result = 0;
    }

    else
    {
      result = v7;
    }
  }

  else
  {
    lazy protocol witness table accessor for type AceSerializationError and conformance AceSerializationError();
    swift_allocError();
    *v4 = 0;
    *(v4 + 8) = 0;
    *(v4 + 16) = 3;
    result = swift_willThrow();
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t BackgroundConnectionProtocol.hash(into:)(void *a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 40))(__src, a2, a3);
  memcpy(v5, __src, sizeof(v5));
  ConnectionConfiguration.hash(into:)(a1);
  return outlined destroy of ConnectionConfiguration(__src);
}

uint64_t static BackgroundConnectionProtocol.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v6 = *(a4 + 40);
  v6(__src, a3, a4);
  v6(v8, a3, v4);
  LOBYTE(v4) = static ConnectionConfiguration.== infix(_:_:)(__src, v8);
  memcpy(__dst, v8, 0x204uLL);
  outlined destroy of ConnectionConfiguration(__dst);
  memcpy(v11, __src, 0x204uLL);
  outlined destroy of ConnectionConfiguration(v11);
  return v4 & 1;
}

uint64_t specialized NetworkActivity.removeConnection(_:)()
{
  if (*(v0 + 33) == 2)
  {
    v1 = *(v0 + 16);
    if (v1)
    {
      v3[3] = type metadata accessor for NWActivity();
      v3[0] = v1;
      swift_retain_n();
      NWConnection.endActivity(_:)(v3);
      outlined destroy of ConnectionSnapshotReport?(v3, &_sypSgMd, &_sypSgMR);
      swift_beginAccess();
      specialized Set._Variant.remove(_:)();
      swift_endAccess();
    }
  }

  return result;
}

void specialized NetworkActivity.abort()(const char *a1)
{
  v3 = type metadata accessor for UUID();
  v4 = OUTLINED_FUNCTION_0_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v4);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v36 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v36 - v19;
  if (one-time initialization token for siriNetwork != -1)
  {
    OUTLINED_FUNCTION_0_6();
  }

  v21 = type metadata accessor for Logger();
  __swift_project_value_buffer(v21, static Logger.siriNetwork);

  v40 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v40, v22))
  {
    v37 = v6;
    v39 = a1;
    v23 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v41 = v38;
    *v23 = 136315394;
    v24 = *(v1 + 35);

    v25 = 0xE700000000000000;
    v26 = 0x64696C61766E69;
    switch(v24)
    {
      case 1:
        v25 = 0xE900000000000074;
        v26 = 0x7365757165526975;
        break;
      case 2:
        v25 = 0xED0000746E617473;
        v26 = 0x6973734164616F6CLL;
        break;
      case 3:
        v25 = 0xEE00676E696D6165;
        v26 = 0x7274536F69647561;
        break;
      case 4:
        v25 = 0xE600000000000000;
        v26 = 0x686365657073;
        break;
      case 5:
        v26 = 0x73746C75736572;
        break;
      case 6:
        v25 = 0xE500000000000000;
        v26 = 0x7972746572;
        break;
      case 7:
        v25 = 0x80000002235F8790;
        v26 = 0xD000000000000016;
        break;
      case 8:
        v28 = 2003790950;
        goto LABEL_18;
      case 9:
        v28 = 1668184435;
LABEL_18:
        v26 = v28 | 0x6D6D6F4300000000;
        v25 = 0xEB00000000646E61;
        break;
      case 10:
        v25 = 0xE400000000000000;
        v26 = 1953718636;
        break;
      default:
        break;
    }

    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v25, &v41);

    *(v23 + 4) = v29;
    *(v23 + 12) = 2080;
    specialized NetworkActivity.token.getter(v20);
    outlined init with copy of UUID?(v20, v18);
    if (__swift_getEnumTagSinglePayload(v18, 1, v3) == 1)
    {
      v30 = 0;
      v31 = 0xE000000000000000;
    }

    else
    {
      v32 = v37;
      (*(v37 + 32))(v13, v18, v3);
      (*(v32 + 16))(v11, v13, v3);
      v30 = String.init<A>(describing:)();
      v31 = v33;
      (*(v32 + 8))(v13, v3);
    }

    outlined destroy of ConnectionSnapshotReport?(v20, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, &v41);

    *(v23 + 14) = v34;
    _os_log_impl(&dword_223515000, v40, v22, v39, v23, 0x16u);
    v35 = v38;
    swift_arrayDestroy();
    MEMORY[0x223DE38F0](v35, -1, -1);
    MEMORY[0x223DE38F0](v23, -1, -1);
  }

  else
  {

    v27 = v40;
  }
}

unint64_t NetworkActivityCompletionReason.description.getter()
{
  result = 0xD00000000000001ALL;
  switch(*v0)
  {
    case 2:
    case 5:
      result = 0xD00000000000001CLL;
      break;
    case 3:
      result = 0xD00000000000001BLL;
      break;
    case 4:
      result = 0xD000000000000019;
      break;
    default:
      return result;
  }

  return result;
}

SiriNetwork::NetworkActivityCompletionReason_optional __swiftcall NetworkActivityCompletionReason.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 6;
  if (rawValue < 6)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

id static NetworkActivityTracing.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static NetworkActivityTracing.shared;

  return v1;
}

id NetworkActivityTracing.init()()
{
  v1 = OBJC_IVAR___SNNetworkActivityTracingInternal_networkActivityTracing;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork0B23ActivityTracingInternalCy0B012NWConnectionCAD10NWActivityCGMd, &_s11SiriNetwork0B23ActivityTracingInternalCy0B012NWConnectionCAD10NWActivityCGMR);
  swift_allocObject();
  *&v0[v1] = specialized NetworkActivityTracingInternal.init()();
  v3.receiver = v0;
  v3.super_class = type metadata accessor for NetworkActivityTracing();
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t NetworkActivityTracing.activate(label:completion:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + OBJC_IVAR___SNNetworkActivityTracingInternal_networkActivityTracing);
  v7 = *a1;

  specialized NetworkActivityTracingInternal.activate(label:completion:)(v7, a2, a3);
}

void thunk for @escaping @callee_unowned @convention(block) (@unowned NSUUID?) -> ()(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - v6;
  outlined init with copy of UUID?(a1, &v10 - v6);
  v8 = type metadata accessor for UUID();
  isa = 0;
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(*(v8 - 8) + 8))(v7, v8);
  }

  (*(a2 + 16))(a2, isa);
}

id NetworkActivityTracing.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NetworkActivityTracing();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *specialized NetworkActivityTracingInternal.init()()
{
  v1 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v12 = *(v1 - 8);
  v13 = v1;
  v2 = *(v12 + 64);
  MEMORY[0x28223BE20](v1);
  v11 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork0B8ActivityCy0B012NWConnectionCAD10NWActivityCGMd, &_s11SiriNetwork0B8ActivityCy0B012NWConnectionCAD10NWActivityCGMR);
  lazy protocol witness table accessor for type NetworkActivityLabel and conformance NetworkActivityLabel();
  v8 = MEMORY[0x277D84F90];
  v0[2] = Dictionary.init(dictionaryLiteral:)();
  if (specialized Array.count.getter(v8))
  {
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7Network12NWConnectionC_Tt0g5(MEMORY[0x277D84F90]);
  }

  else
  {
    v9 = MEMORY[0x277D84FA0];
  }

  v0[3] = v9;
  type metadata accessor for CTServiceDescriptor(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  static DispatchQoS.default.getter();
  v14 = v8;
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v12 + 104))(v11, *MEMORY[0x277D85260], v13);
  v0[4] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  return v0;
}

uint64_t specialized NetworkActivityTracingInternal.activate(label:completion:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v36 = *(v8 - 8);
  v9 = *(v36 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v34 = *(v12 - 8);
  v35 = v12;
  v13 = *(v34 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for siriNetwork != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Logger.siriNetwork);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v33 = a1;
    v31 = a2;
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    aBlock[0] = v20;
    *v19 = 136315138;
    a1 = 0xE700000000000000;
    v21 = 0x64696C61766E69;
    v32 = a3;
    switch(v33)
    {
      case 1:
        a1 = 0xE900000000000074;
        v21 = 0x7365757165526975;
        break;
      case 2:
        a1 = 0xED0000746E617473;
        v21 = 0x6973734164616F6CLL;
        break;
      case 3:
        a1 = 0xEE00676E696D6165;
        v21 = 0x7274536F69647561;
        break;
      case 4:
        a1 = 0xE600000000000000;
        v21 = 0x686365657073;
        break;
      case 5:
        v21 = 0x73746C75736572;
        break;
      case 6:
        a1 = 0xE500000000000000;
        v21 = 0x7972746572;
        break;
      case 7:
        a1 = 0x80000002235F8790;
        v21 = 0xD000000000000016;
        break;
      case 8:
        v22 = 2003790950;
        goto LABEL_16;
      case 9:
        v22 = 1668184435;
LABEL_16:
        v21 = v22 | 0x6D6D6F4300000000;
        a1 = 0xEB00000000646E61;
        break;
      case 10:
        a1 = 0xE400000000000000;
        v21 = 1953718636;
        break;
      default:
        break;
    }

    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, a1, aBlock);

    *(v19 + 4) = v23;
    _os_log_impl(&dword_223515000, v17, v18, "NetworkActivity Tracing: Activate %s activity", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x223DE38F0](v20, -1, -1);
    MEMORY[0x223DE38F0](v19, -1, -1);

    a2 = v31;
    a3 = v32;
    LOBYTE(a1) = v33;
  }

  else
  {
  }

  v24 = *(v4 + 32);
  v25 = swift_allocObject();
  swift_weakInit();
  v26 = swift_allocObject();
  *(v26 + 16) = v25;
  *(v26 + 24) = a1;
  *(v26 + 32) = a2;
  *(v26 + 40) = a3;
  aBlock[4] = partial apply for specialized closure #1 in NetworkActivityTracingInternal.activate(label:completion:);
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_75;
  v27 = _Block_copy(aBlock);
  v28 = v24;

  outlined copy of (@escaping @callee_guaranteed @Sendable () -> (@out UMUserPersonProtocol?))?(a2);
  static DispatchQoS.unspecified.getter();
  v37 = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x223DE2460](0, v15, v11, v27);
  _Block_release(v27);

  (*(v36 + 8))(v11, v8);
  (*(v34 + 8))(v15, v35);
}

uint64_t specialized closure #1 in NetworkActivityTracingInternal.activate(label:completion:)(uint64_t a1, unsigned __int8 a2, void (*a3)(unint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = swift_beginAccess();
    v8 = *(v6 + 16);
    if (*(v8 + 16))
    {
      v7 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
      if (v9)
      {
        v10 = *(*(v8 + 56) + 8 * v7);

        specialized NetworkActivity.activate()();
      }
    }

    if (a3)
    {
      a3(v7);
    }
  }

  return result;
}

uint64_t specialized NetworkActivityTracingInternal.currentNetworkActivityToken(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v22 = *(v6 - 8);
  v7 = *(v22 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v20 = *(v10 - 8);
  v21 = v10;
  v11 = *(v20 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v3 + 32);
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = a1;
  v16[4] = a2;
  aBlock[4] = partial apply for specialized closure #1 in NetworkActivityTracingInternal.currentNetworkActivityToken(_:);
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_54;
  v17 = _Block_copy(aBlock);
  v18 = v14;

  outlined copy of (@escaping @callee_guaranteed @Sendable () -> (@out UMUserPersonProtocol?))?(a1);
  static DispatchQoS.unspecified.getter();
  v23 = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x223DE2460](0, v13, v9, v17);
  _Block_release(v17);

  (*(v22 + 8))(v9, v6);
  (*(v20 + 8))(v13, v21);
}

unint64_t lazy protocol witness table accessor for type NetworkActivityLabel and conformance NetworkActivityLabel()
{
  result = lazy protocol witness table cache variable for type NetworkActivityLabel and conformance NetworkActivityLabel;
  if (!lazy protocol witness table cache variable for type NetworkActivityLabel and conformance NetworkActivityLabel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NetworkActivityLabel and conformance NetworkActivityLabel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NetworkActivityLabel and conformance NetworkActivityLabel;
  if (!lazy protocol witness table cache variable for type NetworkActivityLabel and conformance NetworkActivityLabel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NetworkActivityLabel and conformance NetworkActivityLabel);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NetworkActivityCompletionReason and conformance NetworkActivityCompletionReason()
{
  result = lazy protocol witness table cache variable for type NetworkActivityCompletionReason and conformance NetworkActivityCompletionReason;
  if (!lazy protocol witness table cache variable for type NetworkActivityCompletionReason and conformance NetworkActivityCompletionReason)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NetworkActivityCompletionReason and conformance NetworkActivityCompletionReason);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NetworkActivityParentLabel and conformance NetworkActivityParentLabel()
{
  result = lazy protocol witness table cache variable for type NetworkActivityParentLabel and conformance NetworkActivityParentLabel;
  if (!lazy protocol witness table cache variable for type NetworkActivityParentLabel and conformance NetworkActivityParentLabel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NetworkActivityParentLabel and conformance NetworkActivityParentLabel);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NetworkActivityLabel(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF6)
  {
    if (a2 + 10 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 10) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 11;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v5 = v6 - 11;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for NetworkActivityLabel(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NetworkActivityCompletionReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for NetworkActivityCompletionReason(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for NetworkActivityParentLabel(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t dispatch thunk of NetworkActivityTracing.start(label:activate:completion:)()
{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x70))();
}

{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x78))();
}

uint64_t dispatch thunk of NetworkActivityTracing.activate(label:completion:)()
{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x80))();
}

{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x88))();
}

uint64_t dispatch thunk of NetworkActivityTracing.stop(label:reason:error:completion:)()
{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x90))();
}

{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x98))();
}

uint64_t specialized closure #1 in NetworkActivityTracingInternal.currentNetworkActivityToken(_:)(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v35[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v39 = &v35[-v11];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v35[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v35[-v18];
  MEMORY[0x28223BE20](v17);
  v21 = &v35[-v20];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v23 = result;
    v40 = a3;
    swift_beginAccess();
    if (specialized Dictionary.subscript.getter(1u, *(v23 + 16)))
    {
      specialized NetworkActivity.token.getter(v21);
    }

    else
    {
      __swift_storeEnumTagSinglePayload(v21, 1, 1, v5);
    }

    if (one-time initialization token for siriNetwork != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static Logger.siriNetwork);
    outlined init with copy of UUID?(v21, v19);
    v25 = Logger.logObject.getter();
    LODWORD(v26) = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v38 = a2;
      v27 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v41 = v37;
      *v27 = 136315138;
      outlined init with copy of UUID?(v19, v16);
      if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
      {
        v28 = 0xE100000000000000;
        v29 = 45;
      }

      else
      {
        v30 = *(v6 + 32);
        v36 = v26;
        v26 = v39;
        v30(v39, v16, v5);
        (*(v6 + 16))(v10, v26, v5);
        v29 = String.init<A>(describing:)();
        v28 = v31;
        v32 = v26;
        LOBYTE(v26) = v36;
        (*(v6 + 8))(v32, v5);
      }

      outlined destroy of ConnectionSnapshotReport?(v19, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
      v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v28, &v41);

      *(v27 + 4) = v33;
      _os_log_impl(&dword_223515000, v25, v26, "NetworkActivity Tracing: Current Network Activity Token: %s", v27, 0xCu);
      v34 = v37;
      __swift_destroy_boxed_opaque_existential_0(v37);
      MEMORY[0x223DE38F0](v34, -1, -1);
      MEMORY[0x223DE38F0](v27, -1, -1);

      a2 = v38;
    }

    else
    {

      outlined destroy of ConnectionSnapshotReport?(v19, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
    }

    if (a2)
    {
      a2(v21);

      return outlined destroy of ConnectionSnapshotReport?(v21, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
    }

    else
    {
      outlined destroy of ConnectionSnapshotReport?(v21, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
    }
  }

  return result;
}

uint64_t NetworkActivityTracingInternal.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t NetworkActivityTracingInternal.__deallocating_deinit()
{
  NetworkActivityTracingInternal.deinit();

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned UInt64)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t QueueMonitorManager.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t QueueMonitorManager.__deallocating_deinit()
{
  QueueMonitorManager.deinit();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t QueueObserver.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t QueueObserver.__deallocating_deinit()
{
  QueueObserver.deinit();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t QueueMonitor.deinit()
{
  v1 = *(v0 + 48);

  v2 = OBJC_IVAR____TtC11SiriNetwork12QueueMonitor_initialWaitingTime;
  v3 = type metadata accessor for Date();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(v0 + OBJC_IVAR____TtC11SiriNetwork12QueueMonitor_handler + 8);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(*(v0 + OBJC_IVAR____TtC11SiriNetwork12QueueMonitor_handler));
  return v0;
}

uint64_t QueueMonitor.__deallocating_deinit()
{
  QueueMonitor.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for QueueMonitor()
{
  result = type metadata singleton initialization cache for QueueMonitor;
  if (!type metadata singleton initialization cache for QueueMonitor)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for QueueMonitor()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for MessageCenterEndpoint(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for MessageCenterEndpoint(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t MessageCenterEndpoint.init(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  (*(v5 + 16))(v4, v5);
  if (v6)
  {

    outlined init with copy of RPCOspreyConnectionProtocol(a1, v10);
    v7 = v10[1];
    *a2 = v10[0];
    *(a2 + 16) = v7;
    *(a2 + 32) = v11;
  }

  else
  {
    lazy protocol witness table accessor for type MessageCenterError and conformance MessageCenterError();
    swift_allocError();
    *v8 = 19;
    *(v8 + 8) = 8;
    swift_willThrow();
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t MessageCenterEndpoint.isMeDevice.getter()
{
  OUTLINED_FUNCTION_3_20();
  v1 = *(v0 + 32);
  v2 = OUTLINED_FUNCTION_1_19();
  return v3(v2) & 1;
}

uint64_t MessageCenterEndpoint.discoverActor(persona:invalidationHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v4[3];
  v10 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v9);
  return (*(v10 + 56))(a1, a2, a3, a4, v9, v10);
}

uint64_t MessageCenterEndpoint.idsIdentifier.getter()
{
  OUTLINED_FUNCTION_3_20();
  v1 = *(v0 + 16);
  v2 = OUTLINED_FUNCTION_1_19();
  return v3(v2);
}

uint64_t static MessageCenterEndpoint.== infix(_:_:)(void *a1, void *a2)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_1_19();
  v7 = v6(v5);
  v9 = v8;
  v10 = a2[3];
  v11 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v10);
  v12 = (*(v11 + 16))(v10, v11);
  if (v9)
  {
    if (v13)
    {
      if (v7 == v12 && v9 == v13)
      {

        v15 = 1;
      }

      else
      {
        v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    if (!v13)
    {
      v15 = 1;
      return v15 & 1;
    }

    v15 = 0;
  }

  return v15 & 1;
}

uint64_t MessageCenterEndpoint.deviceModel.getter()
{
  OUTLINED_FUNCTION_3_20();
  v1 = *(v0 + 24);
  v2 = OUTLINED_FUNCTION_1_19();
  return v3(v2);
}

uint64_t MessageCenterEndpoint.endpointPayload.getter()
{
  v1 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  v2 = *(v1 + 48);
  v3 = OUTLINED_FUNCTION_0_40();
  return v4(v3);
}

uint64_t MessageCenterEndpoint.description.getter()
{
  _StringGuts.grow(_:)(64);
  MEMORY[0x223DE2180](0xD00000000000001CLL, 0x80000002235F8CF0);
  OUTLINED_FUNCTION_2_25();
  v1 = *(v0 + 16);
  v2 = OUTLINED_FUNCTION_0_40();
  v4 = v3(v2);
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v4 = 7104878;
    v6 = 0xE300000000000000;
  }

  MEMORY[0x223DE2180](v4, v6);

  MEMORY[0x223DE2180](0x656369766564202CLL, 0xEF203A6C65646F4DLL);
  OUTLINED_FUNCTION_2_25();
  v8 = *(v7 + 24);
  v9 = OUTLINED_FUNCTION_0_40();
  v11 = v10(v9);
  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v11 = 7104878;
    v13 = 0xE300000000000000;
  }

  MEMORY[0x223DE2180](v11, v13);

  MEMORY[0x223DE2180](0x6544654D7369202CLL, 0xEE00203A65636976);
  OUTLINED_FUNCTION_2_25();
  v15 = *(v14 + 32);
  v16 = OUTLINED_FUNCTION_0_40();
  v18 = v17(v16);
  v19 = (v18 & 1) == 0;
  if (v18)
  {
    v20 = 1702195828;
  }

  else
  {
    v20 = 0x65736C6166;
  }

  if (v19)
  {
    v21 = 0xE500000000000000;
  }

  else
  {
    v21 = 0xE400000000000000;
  }

  MEMORY[0x223DE2180](v20, v21);

  MEMORY[0x223DE2180](62, 0xE100000000000000);
  return 0;
}

void MessageCenterEndpoint.hash(into:)()
{
  v1 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_0_40();
  v4(v3);
  if (v5)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int MessageCenterEndpoint.hashValue.getter()
{
  Hasher.init(_seed:)();
  MessageCenterEndpoint.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MessageCenterEndpoint()
{
  Hasher.init(_seed:)();
  MessageCenterEndpoint.hash(into:)();
  return Hasher._finalize()();
}

unint64_t instantiation function for generic protocol witness table for MessageCenterEndpoint(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MessageCenterEndpoint and conformance MessageCenterEndpoint();
  *(a1 + 8) = result;
  return result;
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = OUTLINED_FUNCTION_13_7();
  outlined init with copy of ConnectionSnapshotReport?(v12, v13, &_sScPSgMd, &_sScPSgMR);
  v14 = type metadata accessor for TaskPriority();
  v15 = OUTLINED_FUNCTION_44_0();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, v16, v14);

  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of TaskPriority?(v5);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v14 - 8) + 8))(v5, v14);
  }

  v19 = *(a5 + 16);
  v18 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (!v19)
  {
    if (a2)
    {
      goto LABEL_6;
    }

LABEL_8:
    outlined destroy of TaskPriority?(a3);
    OUTLINED_FUNCTION_3();
    v21 = swift_allocObject();
    *(v21 + 16) = a4;
    *(v21 + 24) = a5;
    return swift_task_create();
  }

  swift_getObjectType();
  dispatch thunk of Actor.unownedExecutor.getter();
  swift_unknownObjectRelease();
  if (!a2)
  {
    goto LABEL_8;
  }

LABEL_6:
  String.utf8CString.getter();
  OUTLINED_FUNCTION_3();
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;

  v22 = swift_task_create();

  outlined destroy of TaskPriority?(a3);

  return v22;
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = OUTLINED_FUNCTION_13_7();
  outlined init with copy of ConnectionSnapshotReport?(v12, v13, &_sScPSgMd, &_sScPSgMR);
  v14 = type metadata accessor for TaskPriority();
  v15 = OUTLINED_FUNCTION_44_0();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, v16, v14);

  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of TaskPriority?(v5);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v14 - 8) + 8))(v5, v14);
  }

  v19 = *(a5 + 16);
  v18 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (!v19)
  {
    if (a2)
    {
      goto LABEL_6;
    }

LABEL_8:
    outlined destroy of TaskPriority?(a3);
    OUTLINED_FUNCTION_3();
    v22 = swift_allocObject();
    *(v22 + 16) = a4;
    *(v22 + 24) = a5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sytSgMd, &_sytSgMR);
    return swift_task_create();
  }

  swift_getObjectType();
  dispatch thunk of Actor.unownedExecutor.getter();
  swift_unknownObjectRelease();
  if (!a2)
  {
    goto LABEL_8;
  }

LABEL_6:
  String.utf8CString.getter();
  OUTLINED_FUNCTION_3();
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sytSgMd, &_sytSgMR);
  v21 = swift_task_create();

  outlined destroy of TaskPriority?(a3);

  return v21;
}

uint64_t MessageCenterUser.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  _StringGuts.grow(_:)(30);

  strcpy(v6, "SharedSiriID: ");
  MEMORY[0x223DE2180](v1, v2);
  MEMORY[0x223DE2180](0x616E6F7372655020, 0xEC000000203A4449);
  MEMORY[0x223DE2180](v3, v4);
  return v6[0];
}

uint64_t static MessageCenterUser.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return result;
}

uint64_t MessageCenterUser.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  String.hash(into:)();

  return String.hash(into:)();
}

Swift::Int MessageCenterUser.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MessageCenterUser()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t getEnumTagSinglePayload for MessageCenterUser(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for MessageCenterUser(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t dispatch thunk of MessageCenterUserManagerDelegate.didUpdateUsers()()
{
  OUTLINED_FUNCTION_40_3();
  OUTLINED_FUNCTION_8_14(v1, v2);
  v10 = v3 + *v3;
  v5 = *(v4 + 4);
  v6 = swift_task_alloc();
  *(v0 + 16) = v6;
  *v6 = v0;
  v7 = OUTLINED_FUNCTION_12_6(v6);

  return v8(v7);
}

uint64_t dispatch thunk of MessageCenterUserProviderProtocol.allUsers()()
{
  OUTLINED_FUNCTION_40_3();
  OUTLINED_FUNCTION_8_14(v1, v2);
  v10 = v3 + *v3;
  v5 = *(v4 + 4);
  v6 = swift_task_alloc();
  *(v0 + 16) = v6;
  *v6 = v0;
  v7 = OUTLINED_FUNCTION_12_6(v6);

  return v8(v7);
}

{
  OUTLINED_FUNCTION_7_0();
  v2 = v1;
  OUTLINED_FUNCTION_11_0();
  v4 = *(v3 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(v2);
}

void *MessageCenterUserManager.init(userProvider:)(uint64_t (*a1)@<X0>(uint64_t *a1@<X8>), uint64_t a2)
{
  swift_defaultActor_initialize();
  v2[17] = 0;
  swift_unknownObjectWeakInit();
  if (a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = closure #1 in implicit closure #1 in MessageCenterUserManager.init(userProvider:);
  }

  if (a1)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v2[14] = v5;
  v2[15] = v6;
  return v2;
}

uint64_t closure #1 in implicit closure #1 in MessageCenterUserManager.init(userProvider:)@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = type metadata accessor for MessageCenterProfileStore();
  a1[4] = &protocol witness table for MessageCenterProfileStore;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  return MessageCenterProfileStore.init()(boxed_opaque_existential_1);
}

uint64_t MessageCenterProfileStore.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOyyt__GMd, &_sScS12ContinuationV15BufferingPolicyOyyt__GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v26 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSyytG6stream_ScS12ContinuationVyyt_G12continuationtMd, &_sScSyytG6stream_ScS12ContinuationVyyt_G12continuationtMR);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v26 - v13;
  v15 = *(v8 + 56);
  (*(v3 + 104))(v6, *MEMORY[0x277D85778], v2);
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v3 + 8))(v6, v2);
  outlined init with copy of ConnectionSnapshotReport?(v14, v12, &_sScSyytG6stream_ScS12ContinuationVyyt_G12continuationtMd, &_sScSyytG6stream_ScS12ContinuationVyyt_G12continuationtMR);
  v16 = *(v8 + 56);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSyytGMd, &_sScSyytGMR);
  OUTLINED_FUNCTION_18_7(v17);
  v19 = v18;
  (*(v18 + 32))(a1, v12, v17);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVyyt_GMd, &_sScS12ContinuationVyyt_GMR);
  OUTLINED_FUNCTION_18_7(v20);
  v22 = v21;
  (*(v21 + 8))(&v12[v16], v20);
  outlined init with take of (stream: AsyncStream<()>, continuation: AsyncStream<()>.Continuation)(v14, v12);
  v23 = *(v8 + 56);
  v24 = type metadata accessor for MessageCenterProfileStore();
  (*(v22 + 32))(a1 + *(v24 + 20), &v12[v23], v20);
  return (*(v19 + 8))(v12, v17);
}

uint64_t MessageCenterUserManager.start()()
{
  OUTLINED_FUNCTION_7_0();
  *(v1 + 16) = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_103();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

{
  OUTLINED_FUNCTION_29();
  v1 = v0[2];
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[4] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[5] = v3;
    *v3 = v0;
    v3[1] = MessageCenterUserManager.start();

    return MessageCenterActorBrowser.didUpdateUsers()();
  }

  else
  {
    v5 = v0[2];
    v6 = v0[3];
    type metadata accessor for TaskPriority();
    v7 = OUTLINED_FUNCTION_44_0();
    __swift_storeEnumTagSinglePayload(v7, v8, 1, v9);
    lazy protocol witness table accessor for type MessageCenterUserManager and conformance MessageCenterUserManager();
    v10 = swift_allocObject();
    OUTLINED_FUNCTION_15_7(v10);
    OUTLINED_FUNCTION_4_21();

    OUTLINED_FUNCTION_6_3();

    return v11();
  }
}

{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_11_0();
  v2 = *(v1 + 40);
  v3 = *(v1 + 16);
  v4 = *v0;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_103();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

{
  OUTLINED_FUNCTION_29();
  v1 = v0[4];
  swift_unknownObjectRelease();
  v2 = v0[2];
  v3 = v0[3];
  type metadata accessor for TaskPriority();
  v4 = OUTLINED_FUNCTION_44_0();
  __swift_storeEnumTagSinglePayload(v4, v5, 1, v6);
  lazy protocol witness table accessor for type MessageCenterUserManager and conformance MessageCenterUserManager();
  v7 = swift_allocObject();
  OUTLINED_FUNCTION_15_7(v7);
  OUTLINED_FUNCTION_4_21();

  OUTLINED_FUNCTION_6_3();

  return v8();
}

uint64_t closure #1 in MessageCenterUserManager.start()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSyytGMd, &_sScSyytGMR);
  v4[8] = v6;
  v7 = *(v6 - 8);
  v4[9] = v7;
  v8 = *(v7 + 64) + 15;
  v4[10] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVyyt_GMd, &_sScS8IteratorVyyt_GMR);
  v4[11] = v9;
  v10 = *(v9 - 8);
  v4[12] = v10;
  v11 = *(v10 + 64) + 15;
  v4[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in MessageCenterUserManager.start(), a4, 0);
}

uint64_t closure #1 in MessageCenterUserManager.start()()
{
  OUTLINED_FUNCTION_40_3();
  v1 = v0[13];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[7];
  v5 = v0[8];
  v7 = *(v4 + 112);
  v6 = *(v4 + 120);

  v7(v8);

  v9 = __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  (*(v3 + 16))(v2, v9, v5);
  AsyncStream.makeAsyncIterator()();
  (*(v3 + 8))(v2, v5);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v0[14] = lazy protocol witness table accessor for type MessageCenterUserManager and conformance MessageCenterUserManager();
  v10 = v0[7];
  v11 = *(MEMORY[0x277D85798] + 4);
  v12 = swift_task_alloc();
  v0[15] = v12;
  *v12 = v0;
  OUTLINED_FUNCTION_1_20(v12);
  v13 = OUTLINED_FUNCTION_10_9();

  return MEMORY[0x2822003E8](v13);
}

{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_11_0();
  v2 = *(v1 + 120);
  v3 = *(v1 + 56);
  v4 = *v0;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_103();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

{
  OUTLINED_FUNCTION_29();
  if (*(v0 + 144))
  {
    v1 = *(v0 + 80);
    (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));

    OUTLINED_FUNCTION_6_3();

    return v2();
  }

  else
  {
    v4 = *(v0 + 56);
    Strong = swift_unknownObjectWeakLoadStrong();
    *(v0 + 128) = Strong;
    if (Strong)
    {
      v6 = swift_task_alloc();
      *(v0 + 136) = v6;
      *v6 = v0;
      v6[1] = closure #1 in MessageCenterUserManager.start();

      return MessageCenterActorBrowser.didUpdateUsers()();
    }

    else
    {
      v7 = *(v0 + 112);
      v8 = *(v0 + 56);
      v9 = *(MEMORY[0x277D85798] + 4);
      v10 = swift_task_alloc();
      *(v0 + 120) = v10;
      *v10 = v0;
      OUTLINED_FUNCTION_1_20();
      v11 = OUTLINED_FUNCTION_10_9();

      return MEMORY[0x2822003E8](v11);
    }
  }
}

{
  OUTLINED_FUNCTION_40_3();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_5_1();
  *v3 = v2;
  v4 = v1[17];
  v5 = v1[16];
  v6 = *v0;
  *v3 = *v0;

  swift_unknownObjectRelease();
  v7 = v1[14];
  v8 = v1[7];
  v9 = *(MEMORY[0x277D85798] + 4);
  v10 = swift_task_alloc();
  v2[15] = v10;
  *v10 = v6;
  OUTLINED_FUNCTION_1_20();
  v11 = v1[13];
  v12 = v1[11];

  return MEMORY[0x2822003E8](v2 + 18);
}

uint64_t MessageCenterUserManager.allUsers()()
{
  *(v1 + 56) = v0;
  return MEMORY[0x2822009F8](MessageCenterUserManager.allUsers(), v0, 0);
}

{
  OUTLINED_FUNCTION_29();
  v1 = *(v0 + 56);
  v3 = *(v1 + 112);
  v2 = *(v1 + 120);

  v3(v4);

  return MEMORY[0x2822009F8](MessageCenterUserManager.allUsers(), v1, 0);
}

{
  OUTLINED_FUNCTION_7_0();
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 8);
  v2 = MEMORY[0x277D84FA0];

  return v1(v2);
}

uint64_t MessageCenterUserManager.deinit()
{
  v1 = *(v0 + 120);

  outlined destroy of weak ConnectionProviderDelegate?(v0 + 128);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t MessageCenterUserManager.__deallocating_deinit()
{
  MessageCenterUserManager.deinit();

  return MEMORY[0x282200960](v0);
}

unint64_t lazy protocol witness table accessor for type MessageCenterUserManager and conformance MessageCenterUserManager()
{
  result = lazy protocol witness table cache variable for type MessageCenterUserManager and conformance MessageCenterUserManager;
  if (!lazy protocol witness table cache variable for type MessageCenterUserManager and conformance MessageCenterUserManager)
  {
    type metadata accessor for MessageCenterUserManager();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MessageCenterUserManager and conformance MessageCenterUserManager);
  }

  return result;
}

uint64_t partial apply for closure #1 in MessageCenterUserManager.start()()
{
  OUTLINED_FUNCTION_29();
  v2 = v1;
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_3_21(v6);
  *v7 = v8;
  v7[1] = partial apply for closure #1 in closure #1 in closure #1 in closure #1 in MessageCenterEndpointBrowser.start();

  return closure #1 in MessageCenterUserManager.start()(v2, v3, v4, v5);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v8 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_3_21(v4);
  *v5 = v6;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_;

  return v8(v1);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_()
{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_11_0();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_5_1();
  *v4 = v3;

  OUTLINED_FUNCTION_6_3();

  return v5();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA_0()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_19_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3_21(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_41(v1);

  return v4(v3);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TQ0_;

  return v6(v2 + 32);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TQ0_()
{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_11_0();
  v2 = v1;
  v3 = *(v1 + 24);
  v4 = *(v1 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;

  *v4 = *(v2 + 32);
  OUTLINED_FUNCTION_6_3();

  return v7();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TA()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_19_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3_21(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_41(v1);

  return v4(v3);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TA_33()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_19_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3_21(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_41(v1);

  return v4(v3);
}

uint64_t type metadata accessor for MessageCenterProfileStore()
{
  result = type metadata singleton initialization cache for MessageCenterProfileStore;
  if (!type metadata singleton initialization cache for MessageCenterProfileStore)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with take of (stream: AsyncStream<()>, continuation: AsyncStream<()>.Continuation)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSyytG6stream_ScS12ContinuationVyyt_G12continuationtMd, &_sScSyytG6stream_ScS12ContinuationVyyt_G12continuationtMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void type metadata completion function for MessageCenterProfileStore()
{
  type metadata accessor for AsyncStream<()>(319, &lazy cache variable for type metadata for AsyncStream<()>, MEMORY[0x277D857B8]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for AsyncStream<()>(319, &lazy cache variable for type metadata for AsyncStream<()>.Continuation, MEMORY[0x277D85788]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for AsyncStream<()>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D84F78] + 8);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for ConnectionPingInfoReport(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ConnectionPingInfoReport(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t ConnectionSnapshotReport.updateTCPInfoMetrics(connection:wasConnected:connectionMethod:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v129 = a1;
  v154 = *MEMORY[0x277D85DE8];
  v9 = type metadata accessor for NWInterface();
  v10 = OUTLINED_FUNCTION_0_0(v9);
  v119 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5();
  v123 = v14;
  v16 = MEMORY[0x28223BE20](v15);
  v130 = &v115 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v115 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network6NWPathVSgMd, &_s7Network6NWPathVSgMR);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  OUTLINED_FUNCTION_5();
  v117 = v22;
  MEMORY[0x28223BE20](v23);
  v25 = &v115 - v24;
  v121 = type metadata accessor for NWPath();
  v26 = OUTLINED_FUNCTION_0_0(v121);
  v118 = v27;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v26);
  v120 = &v115 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153[0] = 1;
  v152[0] = 1;
  LOBYTE(v150[0]) = 1;
  LOBYTE(v146[0]) = 1;
  v145[0] = 1;
  LOBYTE(v144[0]) = 1;
  LOBYTE(v143[0]) = 1;
  v142[0] = 1;
  LOBYTE(v141[0]) = 1;
  v140[0] = 1;
  LOBYTE(v139[0]) = 1;
  LOBYTE(v138[0]) = 1;
  LOBYTE(v137[0]) = 1;
  LOBYTE(v136[0]) = 1;
  LODWORD(v151[0]) = 0;
  BYTE4(v151[0]) = 1;
  memset(&v151[1], 0, 24);
  LOBYTE(v151[4]) = 1;
  memset(&v151[5], 0, 52);
  BYTE4(v151[11]) = 1;
  LODWORD(v151[12]) = 0;
  BYTE4(v151[12]) = 1;
  v31 = MEMORY[0x277D84F98];
  v151[13] = MEMORY[0x277D84F98];
  memset(&v151[14], 0, 24);
  LOBYTE(v151[17]) = 1;
  v151[18] = 0;
  LOBYTE(v151[19]) = 1;
  HIDWORD(v151[19]) = *(v139 + 3);
  *(&v151[19] + 1) = v139[0];
  v151[20] = 0;
  LOBYTE(v151[21]) = 1;
  HIDWORD(v151[21]) = *(v138 + 3);
  *(&v151[21] + 1) = v138[0];
  v151[22] = 0;
  LOBYTE(v151[23]) = 1;
  HIDWORD(v151[23]) = *(v137 + 3);
  *(&v151[23] + 1) = v137[0];
  v151[24] = 0;
  LOBYTE(v151[25]) = 1;
  HIDWORD(v151[25]) = *(v136 + 3);
  *(&v151[25] + 1) = v136[0];
  v151[26] = 0;
  LOBYTE(v151[27]) = 1;
  HIDWORD(v151[27]) = *&v135[3];
  *(&v151[27] + 1) = *v135;
  memset(&v151[28], 0, 24);
  LOBYTE(v151[31]) = 1;
  HIDWORD(v151[31]) = *&v134[3];
  *(&v151[31] + 1) = *v134;
  v151[32] = 0;
  LOWORD(v151[33]) = 1;
  *(&v151[33] + 2) = *&v132[7];
  HIWORD(v151[33]) = v133;
  v151[34] = 0;
  LOBYTE(v151[35]) = 1;
  *(&v151[35] + 1) = *v132;
  HIDWORD(v151[35]) = *&v132[3];
  v151[36] = 0;
  LOBYTE(v151[37]) = 1;
  *(&v151[37] + 1) = *v131;
  HIDWORD(v151[37]) = *&v131[3];
  v151[38] = 0;
  LOBYTE(v151[39]) = 1;
  destructiveProjectEnumData for ConnectionConfigurationError(v151);
  OUTLINED_FUNCTION_3_22(v152);
  outlined destroy of ConnectionSnapshotReport?(v152, &_s11SiriNetwork010ConnectionB6ReportVSgMd, &_s11SiriNetwork010ConnectionB6ReportVSgMR);
  memcpy(v4 + 5, v151, 0x139uLL);
  memcpy(v153, v151, 0x139uLL);
  OUTLINED_FUNCTION_12_0(v153);
  if (!v32)
  {
    v33 = v4[20];

    v5[19] = a3;
    v5[20] = a4;
  }

  v34 = v5[85];

  v5[85] = MEMORY[0x277D84F90];
  if (a2)
  {
    outlined init with copy of NetworkConnectionProtocol?(v129, v150);
    if (v150[3])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork0B18ConnectionProtocol_pMd, _s11SiriNetwork0B18ConnectionProtocol_pMR);
      type metadata accessor for NWConnection();
      result = swift_dynamicCast();
      if (result)
      {
        v36 = v146[0];
        NWConnection.currentPath.getter();
        v37 = v121;
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v25, 1, v121);
        v122 = v5;
        v129 = v9;
        if (EnumTagSinglePayload == 1)
        {
          v39 = outlined destroy of ConnectionSnapshotReport?(v25, &_s7Network6NWPathVSgMd, &_s7Network6NWPathVSgMR);
          v40 = v119;
        }

        else
        {
          (*(v118 + 32))(v120, v25, v37);
          NWPath.nw.getter();
          v41 = nw_path_copy_interface();
          swift_unknownObjectRelease();
          v40 = v119;
          if (v41)
          {
            LODWORD(v128) = nw_interface_get_index(v41);
            swift_unknownObjectRelease();
          }

          else
          {
            LODWORD(v128) = 0;
          }

          v42 = NWPath.availableInterfaces.getter();
          v43 = *(v42 + 16);
          if (v43)
          {
            v115 = v42;
            v116 = v36;
            v44 = v40;
            v45 = v5 + 85;
            v46 = *(v44 + 16);
            v44 += 16;
            v126 = v5[86];
            v127 = v46;
            v47 = v42 + ((*(v44 + 64) + 32) & ~*(v44 + 64));
            v124 = *(v44 + 56);
            v125 = (v44 - 8);
            for (i = v43 - 1; ; --i)
            {
              v49 = v127;
              v127(v19, v47, v9);
              v50 = v130;
              v49(v130, v19, v9);
              v51 = ConnectionInterfaceReport.init(interface:)(v50, v146);
              MEMORY[0x28223BE20](v51);
              *(&v115 - 2) = v19;
              specialized Sequence.first(where:)(partial apply for closure #1 in ConnectionSnapshotReport.updateTCPInfoMetrics(connection:wasConnected:connectionMethod:), v126, v140);
              memcpy(v141, v140, 0xF9uLL);
              if (_s11SiriNetwork24ConnectionTCPInfoMetricsVSgWOg(v141) != 1)
              {
                memcpy(v150, v149, 0xF9uLL);
                outlined destroy of ConnectionSnapshotReport?(v150, &_s11SiriNetwork24ConnectionTCPInfoMetricsVSgMd, _s11SiriNetwork24ConnectionTCPInfoMetricsVSgMR);
                memcpy(v149, v140, sizeof(v149));
              }

              if (v148 == v128)
              {
                OUTLINED_FUNCTION_8_15(v143);
                OUTLINED_FUNCTION_8_15(v144);
                destructiveProjectEnumData for ConnectionConfigurationError(v144);
                v52 = v122;
                memcpy(v145, v122 + 48, 0x121uLL);
                memcpy(v122 + 48, v144, 0x121uLL);
                outlined init with copy of ConnectionInterfaceReport(v143, v142);
                outlined destroy of ConnectionSnapshotReport?(v145, &_s11SiriNetwork25ConnectionInterfaceReportVSgMd, &_s11SiriNetwork25ConnectionInterfaceReportVSgMR);
                memcpy(v150, v52 + 5, 0x139uLL);
                OUTLINED_FUNCTION_12_0(v150);
                if (!v32)
                {
                  v142[0] = v147;
                  v53 = ConnectionType.stringRawValue.getter();
                  v55 = v54;
                  v56 = v52[13];

                  v52[12] = v53;
                  v52[13] = v55;
                }

                v9 = v129;
              }

              OUTLINED_FUNCTION_8_15(v145);
              outlined init with copy of ConnectionInterfaceReport(v145, v144);
              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              v57 = *(*v45 + 16);
              specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v57);
              v58 = *v45;
              *(v58 + 16) = v57 + 1;
              memcpy((v58 + 296 * v57 + 32), v145, 0x121uLL);
              *v45 = v58;
              OUTLINED_FUNCTION_8_15(v150);
              outlined destroy of ConnectionInterfaceReport(v150);
              (*v125)(v19, v9);
              if (!i)
              {
                break;
              }

              v47 += v124;
            }

            v5 = v122;
            v36 = v116;
            v40 = v119;
            v31 = MEMORY[0x277D84F98];
          }

          else
          {
          }

          v39 = (*(v118 + 8))(v120, v121);
        }

        v59 = v123;
        MEMORY[0x223DE1A50](v39);
        v60 = nw_connection_uses_multipath();
        v61 = swift_unknownObjectRelease();
        if (v60)
        {
          OUTLINED_FUNCTION_0_42();
          v62 = OUTLINED_FUNCTION_12_0(v150);
          if (!v32)
          {
            v63 = v5[13];

            *(v5 + 6) = xmmword_2235F4430;
          }

          MEMORY[0x223DE1A50](v62);
          subflow_count = nw_connection_multipath_get_subflow_count();
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_3_22(v146);
          OUTLINED_FUNCTION_12_0(v146);
          if (!v32)
          {
            *(v5 + 32) = subflow_count;
            *(v5 + 132) = 0;
          }

          OUTLINED_FUNCTION_3_22(v145);
          v65 = OUTLINED_FUNCTION_12_0(v145);
          v66 = v117;
          if (!v32)
          {
            *(v5 + 34) = subflow_count;
            *(v5 + 140) = 0;
          }

          MEMORY[0x223DE1A50](v65);
          primary_subflow_interface_index = nw_connection_multipath_get_primary_subflow_interface_index();
          swift_unknownObjectRelease();
          NWConnection.currentPath.getter();
          v68 = v121;
          if (__swift_getEnumTagSinglePayload(v66, 1, v121) == 1)
          {
            v69 = outlined destroy of ConnectionSnapshotReport?(v66, &_s7Network6NWPathVSgMd, &_s7Network6NWPathVSgMR);
          }

          else
          {
            v70 = v68;
            v71 = NWPath.availableInterfaces.getter();
            (*(v118 + 8))(v66, v70);
            v72 = *(v71 + 16);
            if (v72)
            {
              v116 = v36;
              v130 = primary_subflow_interface_index;
              v75 = *(v40 + 16);
              v73 = v40 + 16;
              v74 = v75;
              v76 = (*(v73 + 64) + 32) & ~*(v73 + 64);
              v128 = v71;
              v77 = v71 + v76;
              v78 = *(v73 + 56);
              v79 = (v73 - 8);
              do
              {
                v80 = v129;
                v74(v59, v77, v129);
                if (NWInterface.index.getter() == v130)
                {
                  v81 = v122;
                  memcpy(v144, v122 + 5, 0x139uLL);
                  v82 = OUTLINED_FUNCTION_12_0(v144);
                  if (v32)
                  {
                    (*v79)(v59, v129);
                  }

                  else
                  {
                    v83 = MEMORY[0x223DE1820](v82);
                    v84 = v73;
                    v86 = v85;
                    (*v79)(v123, v129);
                    v87 = v81[15];

                    v81[14] = v83;
                    v81[15] = v86;
                    v73 = v84;
                    v59 = v123;
                  }
                }

                else
                {
                  (*v79)(v59, v80);
                }

                v77 += v78;
                --v72;
              }

              while (v72);

              v5 = v122;
            }

            else
            {
            }

            v31 = MEMORY[0x277D84F98];
          }

          MEMORY[0x223DE1A50](v69);
          v88 = nw_connection_multipath_copy_subflow_counts();
          v61 = swift_unknownObjectRelease();
          if (v88)
          {
            v89 = MEMORY[0x223DE3B00](v88);
            if (v89 == XPC_TYPE_DICTIONARY.getter())
            {
              v143[0] = v31;
              v104 = swift_allocObject();
              *(v104 + 16) = v143;
              v105 = swift_allocObject();
              *(v105 + 16) = partial apply for closure #2 in ConnectionSnapshotReport.updateTCPInfoMetrics(connection:wasConnected:connectionMethod:);
              *(v105 + 24) = v104;
              v144[4] = _sSPys4Int8VGSo13OS_xpc_object_pSbIgygd_ACSoAD_pSbIegygd_TRTA_0;
              v144[5] = v105;
              v144[0] = MEMORY[0x277D85DD0];
              v144[1] = 1107296256;
              v144[2] = thunk for @escaping @callee_guaranteed (@unowned UnsafePointer<Int8>, @guaranteed OS_xpc_object) -> (@unowned Bool);
              v144[3] = &block_descriptor_13;
              v106 = _Block_copy(v144);

              xpc_dictionary_apply(v88, v106);
              swift_unknownObjectRelease();
              _Block_release(v106);
              isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

              if (isEscapingClosureAtFileLocation)
              {
                __break(1u);
              }

              OUTLINED_FUNCTION_3_22(v144);
              OUTLINED_FUNCTION_12_0(v144);
              if (!v32)
              {
                v108 = v143[0];
                v109 = v5[18];

                v5[18] = v108;
              }
            }

            else
            {
              v61 = swift_unknownObjectRelease();
            }
          }
        }

        memset(v141, 0, 24);
        MEMORY[0x223DE1A50](v61);
        v90 = nw_connection_fillout_tcp_statistics();
        swift_unknownObjectRelease();
        if (v90)
        {
          OUTLINED_FUNCTION_0_42();
          OUTLINED_FUNCTION_12_0(v150);
          if (!v32)
          {
            v5[21] = v141[0];
            *(v5 + 176) = 0;
          }

          OUTLINED_FUNCTION_3_22(v146);
          OUTLINED_FUNCTION_12_0(v146);
          if (!v32)
          {
            v5[23] = v141[1];
            *(v5 + 192) = 0;
          }

          OUTLINED_FUNCTION_3_22(v145);
          OUTLINED_FUNCTION_12_0(v145);
          if (!v32)
          {
            v5[25] = v141[2];
            *(v5 + 208) = 0;
          }

          OUTLINED_FUNCTION_3_22(v144);
          OUTLINED_FUNCTION_12_0(v144);
          if (!v32)
          {
            v5[27] = v141[3];
            *(v5 + 224) = 0;
          }

          OUTLINED_FUNCTION_3_22(v143);
          OUTLINED_FUNCTION_12_0(v143);
          if (!v32)
          {
            v5[31] = v141[4];
            *(v5 + 256) = 0;
          }

          OUTLINED_FUNCTION_3_22(v142);
          v91 = OUTLINED_FUNCTION_12_0(v142);
          if (!v32)
          {
            v5[29] = v141[5];
            *(v5 + 240) = 0;
          }
        }

        else
        {
          if (one-time initialization token for siriNetwork != -1)
          {
            swift_once();
          }

          v92 = type metadata accessor for Logger();
          __swift_project_value_buffer(v92, static Logger.siriNetwork);
          v93 = Logger.logObject.getter();
          v94 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v93, v94))
          {
            v95 = swift_slowAlloc();
            *v95 = 0;
            _os_log_impl(&dword_223515000, v93, v94, "NetworkMetrics: Establishment report is not ready to extract TCP statistics for ConnectionSnapshotReport (connectionNetworkReport)", v95, 2u);
            MEMORY[0x223DE38F0](v95, -1, -1);
          }
        }

        v96 = MEMORY[0x223DE1A50](v91);
        v97 = MEMORY[0x223DE31B0](v96);
        v98 = v97;
        v99 = nw_connection_copy_protocol_metadata(v96, v97);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if (v99)
        {
          negotiated_tls_protocol_version = sec_protocol_metadata_get_negotiated_tls_protocol_version(v99);
          switch(negotiated_tls_protocol_version)
          {
            case 769:
              OUTLINED_FUNCTION_0_42();
              OUTLINED_FUNCTION_1_21();
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              if (v98 == 1)
              {
                goto LABEL_71;
              }

              v101 = v5[34];

              result = OUTLINED_FUNCTION_5_21();
              v102 = xmmword_2235F4460;
              goto LABEL_89;
            case 770:
              OUTLINED_FUNCTION_0_42();
              OUTLINED_FUNCTION_1_21();
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              if (v98 == 1)
              {
                goto LABEL_71;
              }

              v113 = v5[34];

              result = OUTLINED_FUNCTION_5_21();
              v102 = xmmword_2235F4450;
              goto LABEL_89;
            case 771:
              OUTLINED_FUNCTION_0_42();
              OUTLINED_FUNCTION_1_21();
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              if (v98 == 1)
              {
                goto LABEL_71;
              }

              v111 = v5[34];

              result = OUTLINED_FUNCTION_5_21();
              v102 = xmmword_2235F4480;
              goto LABEL_89;
            case 772:
              OUTLINED_FUNCTION_0_42();
              OUTLINED_FUNCTION_1_21();
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              if (v98 == 1)
              {
                goto LABEL_71;
              }

              v112 = v5[34];

              result = OUTLINED_FUNCTION_5_21();
              v102 = xmmword_2235F4470;
              goto LABEL_89;
            default:
              if (negotiated_tls_protocol_version == 65277)
              {
                OUTLINED_FUNCTION_0_42();
                OUTLINED_FUNCTION_1_21();
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
                if (v98 == 1)
                {
                  goto LABEL_71;
                }

                v110 = v5[34];

                result = OUTLINED_FUNCTION_5_21();
                v102 = xmmword_2235F4490;
              }

              else
              {
                if (negotiated_tls_protocol_version != 65279)
                {

                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease();
                  goto LABEL_71;
                }

                OUTLINED_FUNCTION_0_42();
                OUTLINED_FUNCTION_1_21();
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
                if (v98 == 1)
                {
                  goto LABEL_71;
                }

                v103 = v5[34];

                result = OUTLINED_FUNCTION_5_21();
                v102 = xmmword_2235F4440;
              }

LABEL_89:
              *(v5 + 33) = v102;
              break;
          }
        }

        else
        {

LABEL_71:
          result = OUTLINED_FUNCTION_5_21();
        }
      }
    }

    else
    {
      result = outlined destroy of ConnectionSnapshotReport?(v150, &_s11SiriNetwork0B18ConnectionProtocol_pSgMd, &_s11SiriNetwork0B18ConnectionProtocol_pSgMR);
    }
  }

  v114 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t closure #1 in ConnectionSnapshotReport.updateTCPInfoMetrics(connection:wasConnected:connectionMethod:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = MEMORY[0x223DE1820]();
  if (v2)
  {
    if (v1 == v3 && v2 == v4)
    {
      v6 = 1;
    }

    else
    {
      v6 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t closure #2 in ConnectionSnapshotReport.updateTCPInfoMetrics(connection:wasConnected:connectionMethod:)(int a1, xpc_object_t xuint, uint64_t *a3)
{
  value = xpc_uint64_get_value(xuint);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSPys4Int8VGMd, &_sSPys4Int8VGMR);
  _print_unlocked<A, B>(_:_:)();
  v5 = *a3;
  swift_isUniquelyReferenced_nonNull_native();
  v7 = *a3;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(value, 0, 0xE000000000000000);
  *a3 = v7;

  return 1;
}

Swift::Int ConnectionPolicyRoute.hashValue.getter()
{
  Hasher.init(_seed:)();
  ConnectionPolicyRoute.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ConnectionPolicyRoute()
{
  Hasher.init(_seed:)();
  ConnectionPolicyRoute.hash(into:)();
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type ConnectionPolicyRoute and conformance ConnectionPolicyRoute()
{
  result = lazy protocol witness table cache variable for type ConnectionPolicyRoute and conformance ConnectionPolicyRoute;
  if (!lazy protocol witness table cache variable for type ConnectionPolicyRoute and conformance ConnectionPolicyRoute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConnectionPolicyRoute and conformance ConnectionPolicyRoute);
  }

  return result;
}

id static WiFiRecordRepresentation.wiFiRecordRepresentation(from:)(uint64_t a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 8);
  v17 = *a1;
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  HIDWORD(v16) = *(a1 + 56);
  v13 = type metadata accessor for WiFiRecord(0);
  (*(v3 + 16))(v6, a1 + *(v13 + 40), v2);
  v14 = objc_allocWithZone(type metadata accessor for WiFiRecordRepresentation(0));

  return WiFiRecordRepresentation.init(rssi:snr:cca:channelInfo:phyMode:isCaptive:timestamp:)(v17, v7, v8, v9, v10, v11, v12, SBYTE4(v16), v6);
}

SiriNetwork::WiFiAssertionType_optional __swiftcall WiFiAssertionType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0x2010003u >> (8 * rawValue);
  if (rawValue >= 4)
  {
    LOBYTE(v2) = 3;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance WiFiAssertionType@<X0>(uint64_t *a1@<X8>)
{
  result = WiFiAssertionType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t WiFiRecord.channelInfo.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return OUTLINED_FUNCTION_14_3();
}

uint64_t WiFiRecord.phyMode.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return OUTLINED_FUNCTION_14_3();
}

uint64_t WiFiRecord.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WiFiRecord(0) + 40);
  v4 = type metadata accessor for Date();
  v5 = OUTLINED_FUNCTION_71(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t WiFiRecordRepresentation.channelInfo.getter()
{
  v1 = *(v0 + OBJC_IVAR___SNWiFiRecordInternal_channelInfo);
  v2 = *(v0 + OBJC_IVAR___SNWiFiRecordInternal_channelInfo + 8);

  return OUTLINED_FUNCTION_14_3();
}

id @objc WiFiRecordRepresentation.channelInfo.getter(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v3 = a3();
  v4 = MEMORY[0x223DE2070](v3);

  return v4;
}

uint64_t WiFiRecordRepresentation.phyMode.getter()
{
  v1 = *(v0 + OBJC_IVAR___SNWiFiRecordInternal_phyMode);
  v2 = *(v0 + OBJC_IVAR___SNWiFiRecordInternal_phyMode + 8);

  return OUTLINED_FUNCTION_14_3();
}

uint64_t WiFiRecordRepresentation.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___SNWiFiRecordInternal_timestamp;
  v4 = type metadata accessor for Date();
  v5 = OUTLINED_FUNCTION_71(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

id WiFiRecordRepresentation.init(rssi:snr:cca:channelInfo:phyMode:isCaptive:timestamp:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9)
{
  *&v9[OBJC_IVAR___SNWiFiRecordInternal_rssi] = a1;
  *&v9[OBJC_IVAR___SNWiFiRecordInternal_snr] = a2;
  *&v9[OBJC_IVAR___SNWiFiRecordInternal_cca] = a3;
  v10 = &v9[OBJC_IVAR___SNWiFiRecordInternal_channelInfo];
  *v10 = a4;
  v10[1] = a5;
  v11 = &v9[OBJC_IVAR___SNWiFiRecordInternal_phyMode];
  *v11 = a6;
  v11[1] = a7;
  v9[OBJC_IVAR___SNWiFiRecordInternal_isCaptive] = a8;
  v12 = OBJC_IVAR___SNWiFiRecordInternal_timestamp;
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  (*(v14 + 16))(&v9[v12], a9, v13);
  v17.receiver = v9;
  v17.super_class = type metadata accessor for WiFiRecordRepresentation(0);
  v15 = objc_msgSendSuper2(&v17, sel_init);
  (*(v14 + 8))(a9, v13);
  return v15;
}

id WiFiRecordRepresentation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WiFiRecordRepresentation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WiFiRecordRepresentation(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t lazy protocol witness table accessor for type WiFiAssertionType and conformance WiFiAssertionType()
{
  result = lazy protocol witness table cache variable for type WiFiAssertionType and conformance WiFiAssertionType;
  if (!lazy protocol witness table cache variable for type WiFiAssertionType and conformance WiFiAssertionType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WiFiAssertionType and conformance WiFiAssertionType);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WiFiAssertionType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t type metadata completion function for WiFiRecord()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for WiFiRecordRepresentation()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ConnectionHTTPHeaderReport(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ConnectionHTTPHeaderReport(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t ConnectionHTTPHeaderReport.debugDescription.getter()
{
  if (v0[1])
  {
    v1 = *v0;
    v2 = v0[1];
  }

  else
  {
    v1 = 0x6E776F6E6B6E75;
    v2 = 0xE700000000000000;
  }

  MEMORY[0x223DE2180](v1, v2);

  if (v0[3])
  {
    v3 = v0[2];
    v4 = v0[3];
  }

  else
  {
    v3 = 0x6E776F6E6B6E75;
    v4 = 0xE700000000000000;
  }

  MEMORY[0x223DE2180](v3, v4);

  _StringGuts.grow(_:)(52);
  MEMORY[0x223DE2180](0xD00000000000002ELL, 0x80000002235F8ED0);
  MEMORY[0x223DE2180](0x2074736F48656361, 0xE800000000000000);

  MEMORY[0x223DE2180](8236, 0xE200000000000000);
  MEMORY[0x223DE2180](0x6E65674172657375, 0xEA00000000002074);

  return 0;
}

uint64_t specialized Collection.first.getter(uint64_t a1)
{
  v2 = specialized Set.startIndex.getter(a1);
  v4 = v3;
  v6 = v5;
  v7 = specialized Set.endIndex.getter(a1);
  v9 = v8;
  v11 = v10;
  v12 = _sSh5IndexV2eeoiySbAByx_G_ADtFZ11SiriNetwork20BackgroundConnectionC_Tt1g5(v2, v4, v6 & 1, v7, v8, v10 & 1);
  outlined consume of Set<MessageCenterEndpoint>.Index._Variant(v7, v9, v11 & 1);
  if (v12)
  {
    outlined consume of Set<MessageCenterEndpoint>.Index._Variant(v2, v4, v6 & 1);
    return 0;
  }

  else
  {
    v13 = specialized Set.subscript.getter(v2, v4, v6 & 1, a1);
    outlined consume of Set<MessageCenterEndpoint>.Index._Variant(v2, v4, v6 & 1);
  }

  return v13;
}

uint64_t key path setter for Connection.delegate : Connection(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_unknownObjectRetain();
  return Connection.delegate.setter();
}

uint64_t (*Connection.delegate.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v4 = OBJC_IVAR___SNConnectionInternal_delegate;
  v3[4] = v1;
  v3[5] = v4;
  OUTLINED_FUNCTION_27_3();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return Connection.delegate.modify;
}

uint64_t Connection.connectionConfiguration.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + OBJC_IVAR___SNConnectionInternal_connectionConfiguration), 0x204uLL);
  memcpy(a1, (v1 + OBJC_IVAR___SNConnectionInternal_connectionConfiguration), 0x204uLL);
  return outlined init with copy of ConnectionConfiguration(__dst, &v4);
}

id Connection.__allocating_init(connectionConfiguration:connectionQueue:)(void *__src, void *a2)
{
  memcpy(__dst, __src, 0x204uLL);
  v3 = objc_allocWithZone(type metadata accessor for ConnectionInfo());
  v4 = ConnectionInfo.init(connectionConfiguration:)(__dst);
  v5 = objc_allocWithZone(type metadata accessor for Connection());
  return Connection.init(connectionInfo:connectionQueue:)(v4, a2);
}

id Connection.__allocating_init(connectionInfo:connectionQueue:)()
{
  OUTLINED_FUNCTION_13_3();
  v1 = objc_allocWithZone(v0);
  v2 = OUTLINED_FUNCTION_32();
  return Connection.init(connectionInfo:connectionQueue:)(v2, v3);
}

id Connection.init(connectionInfo:connectionQueue:networkManager:networkAnalytics:)(char *a1, void *a2, void *a3, uint64_t a4)
{
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR___SNConnectionInternal_activeBackgroundConnection] = 0;
  OUTLINED_FUNCTION_43_4(&v4[OBJC_IVAR___SNConnectionInternal_activeRoute], xmmword_2235EFB30);
  v4[OBJC_IVAR___SNConnectionInternal_isCanceled] = 0;
  v4[OBJC_IVAR___SNConnectionInternal_isCanceledInternal] = 0;
  *&v4[OBJC_IVAR___SNConnectionInternal_connectionMethodUsedHistory] = MEMORY[0x277D84F90];
  v9 = OBJC_IVAR___SNConnectionInternal_networkManager;
  *&v4[OBJC_IVAR___SNConnectionInternal_networkManager] = 0;
  v10 = OBJC_IVAR___SNConnectionInfoInternal_connectionConfiguration;
  OUTLINED_FUNCTION_8();
  swift_beginAccess();
  memcpy(__dst, &a1[v10], 0x204uLL);
  memmove(&v4[OBJC_IVAR___SNConnectionInternal_connectionConfiguration], &a1[v10], 0x204uLL);
  *&v4[OBJC_IVAR___SNConnectionInternal_connectionQueue] = a2;
  v11 = MEMORY[0x277D84FA0];
  *&v4[OBJC_IVAR___SNConnectionInternal_pendingBackgroundConnections] = MEMORY[0x277D84FA0];
  *&v4[OBJC_IVAR___SNConnectionInternal_pendingRoutes] = v11;
  *&v4[OBJC_IVAR___SNConnectionInternal_comatoseBackgroundConnections] = v11;
  *&v4[OBJC_IVAR___SNConnectionInternal_comatoseRoutes] = v11;
  *&v4[OBJC_IVAR___SNConnectionInternal_scheduledRoutes] = v11;
  outlined init with copy of ConnectionConfiguration(__dst, v19);
  v12 = a2;
  v13 = dispatch_group_create();
  *&v4[OBJC_IVAR___SNConnectionInternal_activeConnectionGroup] = v13;
  dispatch_group_enter(v13);
  v14 = *&v4[v9];
  *&v4[v9] = a3;
  v15 = a3;

  *&v4[OBJC_IVAR___SNConnectionInternal_networkAnalytics] = a4;
  v18.receiver = v4;
  v18.super_class = type metadata accessor for Connection();
  v16 = objc_msgSendSuper2(&v18, sel_init);

  return v16;
}

uint64_t specialized Set.formUnion<A>(_:)(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = *(result + 16);
  for (i = 32; ; i += 120)
  {
    if (v3 == v2)
    {
    }

    if (v2 >= *(v1 + 16))
    {
      break;
    }

    memcpy(__dst, (v1 + i), 0x72uLL);
    ++v2;
    outlined init with copy of ConnectionPolicyRoute(__dst, v6);
    specialized Set._Variant.insert(_:)();
    memcpy(v6, __src, 0x72uLL);
    result = outlined destroy of ConnectionPolicyRoute(v6);
  }

  __break(1u);
  return result;
}

char *_sSaySayxGqd__c7ElementQyd__RszSTRd__lufC11SiriNetwork21ConnectionPolicyRouteV_ShyAFGTt0g5(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC11SiriNetwork21ConnectionPolicyRouteV_Tt1g5(*(a1 + 16), 0);
  v4 = specialized Sequence._copySequenceContents(initializing:)(&v6, v3 + 32, v2, a1);
  outlined consume of Set<MessageCenterUser>.Iterator._Variant();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

void Connection.sendData(_:with:)()
{
  OUTLINED_FUNCTION_46();
  v6 = OUTLINED_FUNCTION_30_6();
  v7 = OUTLINED_FUNCTION_0_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_0_1();
  v28 = OUTLINED_FUNCTION_8_1();
  v12 = OUTLINED_FUNCTION_0_0(v28);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_7();
  v27 = *(v5 + OBJC_IVAR___SNConnectionInternal_connectionQueue);
  OUTLINED_FUNCTION_7_1();
  v17 = swift_allocObject();
  OUTLINED_FUNCTION_28_0(v17);
  swift_unknownObjectWeakInit();
  outlined init with copy of Any(v4, v30);
  v18 = swift_allocObject();
  *(v18 + 16) = v2;
  outlined init with take of Any(v30, (v18 + 24));
  *(v18 + 56) = v3;
  *(v18 + 64) = v0;
  v29[4] = partial apply for closure #1 in Connection.sendData(_:with:);
  v29[5] = v18;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 1107296256;
  OUTLINED_FUNCTION_3_5();
  v29[2] = v19;
  v29[3] = &block_descriptor_14;
  v20 = _Block_copy(v29);

  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_1_24();
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(v21, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v23 = OUTLINED_FUNCTION_6();
  MEMORY[0x223DE2460](v23);
  _Block_release(v20);
  v24 = *(v9 + 8);
  v25 = OUTLINED_FUNCTION_3_2();
  v26(v25);
  (*(v14 + 8))(v1, v28);

  OUTLINED_FUNCTION_47();
}

void closure #1 in Connection.sendData(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    outlined init with copy of Any(a2, &v17);
    v9 = swift_allocObject();
    outlined init with take of Any(&v17, (v9 + 16));
    *(v9 + 48) = a3;
    *(v9 + 56) = a4;
    outlined copy of (@escaping @callee_guaranteed @Sendable () -> (@out UMUserPersonProtocol?))?(a3);
    Connection.accessPotentiallyActiveConnections(_:)(partial apply for closure #1 in closure #1 in Connection.sendData(_:with:), v9, v10, v11, v12, v13, v14, v15, v16, v17, *(&v17 + 1), v18, v19, v20, v21, v22, v23, v24, v25, v26);
  }
}

void closure #1 in closure #1 in Connection.sendData(_:with:)(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  if (a1)
  {

    BackgroundConnection.sendData(_:with:)(a2, a3, a4);
  }

  else if (a3)
  {
    lazy protocol witness table accessor for type NetworkConnectionError and conformance NetworkConnectionError();
    v7 = swift_allocError();
    *(v8 + 8) = 0;
    *(v8 + 16) = 0;
    *v8 = 3;
    *(v8 + 24) = xmmword_2235F01E0;
    a3();
  }
}

uint64_t closure #1 in Connection.getConnectionMetrics(_:with:)(uint64_t a1, uint64_t (*a2)(_BYTE *))
{
  result = Connection.activeOrAnyPendingConnection()();
  if (result)
  {
    v5 = OBJC_IVAR___SNConnectionInternal_connectionMethodUsedHistory;
    swift_beginAccess();
    v6 = *(a1 + v5);

    BackgroundConnection.getConnectionMetrics(connectionMethodHistory:with:)(v7);
  }

  else if (a2)
  {
    _s11SiriNetwork17ConnectionMetricsVSgWOi0_(__src);
    memcpy(v8, __src, 0x599uLL);
    return a2(v8);
  }

  return result;
}

void Connection.getConnectionAnalysisInfo(_:)()
{
  OUTLINED_FUNCTION_46();
  v3 = v0;
  v5 = v4;
  v7 = v6;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = OUTLINED_FUNCTION_0_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_0_1();
  v14 = OUTLINED_FUNCTION_8_1();
  v15 = OUTLINED_FUNCTION_0_0(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7();
  v30 = *(v3 + OBJC_IVAR___SNConnectionInternal_connectionQueue);
  OUTLINED_FUNCTION_7_1();
  v20 = swift_allocObject();
  OUTLINED_FUNCTION_28_0(v20);
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_109();
  v21 = swift_allocObject();
  v21[2] = v2;
  v21[3] = v7;
  v21[4] = v5;
  v31[4] = partial apply for closure #1 in Connection.getConnectionAnalysisInfo(_:);
  v31[5] = v21;
  OUTLINED_FUNCTION_1_1();
  v31[1] = 1107296256;
  OUTLINED_FUNCTION_3_5();
  v31[2] = v22;
  v31[3] = &block_descriptor_63;
  v23 = _Block_copy(v31);

  outlined copy of (@escaping @callee_guaranteed @Sendable () -> (@out UMUserPersonProtocol?))?(v7);
  static DispatchQoS.unspecified.getter();
  OUTLINED_FUNCTION_1_24();
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(v24, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  OUTLINED_FUNCTION_3_0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v26 = OUTLINED_FUNCTION_6();
  MEMORY[0x223DE2460](v26);
  _Block_release(v23);
  v27 = *(v11 + 8);
  v28 = OUTLINED_FUNCTION_3_2();
  v29(v28);
  (*(v17 + 8))(v1, v14);
  OUTLINED_FUNCTION_39_0();

  OUTLINED_FUNCTION_47();
}

void closure #1 in Connection.getConnectionAnalysisInfo(_:)(uint64_t a1, void (*a2)(char *))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork22ConnectionAnalysisInfoVSgMd, &_s11SiriNetwork22ConnectionAnalysisInfoVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v10 - v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if (Connection.activeOrAnyPendingConnection()())
    {
      if (a2)
      {
        BackgroundConnection.connectionAnalysisInfo.getter();
        a2(v6);

LABEL_7:
        outlined destroy of NetworkConnectionProtocol?(v6, &_s11SiriNetwork22ConnectionAnalysisInfoVSgMd, &_s11SiriNetwork22ConnectionAnalysisInfoVSgMR);
        return;
      }
    }

    else
    {
      if (a2)
      {
        v9 = type metadata accessor for ConnectionAnalysisInfo();
        __swift_storeEnumTagSinglePayload(v6, 1, 1, v9);
        a2(v6);

        goto LABEL_7;
      }
    }
  }
}

uint64_t Connection.getSNConnectionAnalysisInfo(_:)()
{
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_3();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0;
  v3 = OUTLINED_FUNCTION_32();
  outlined copy of (@escaping @callee_guaranteed @Sendable () -> (@out UMUserPersonProtocol?))?(v3);
  Connection.getConnectionAnalysisInfo(_:)();
}

void closure #1 in Connection.getSNConnectionAnalysisInfo(_:)(uint64_t a1, void (*a2)(id))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v23 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork22ConnectionAnalysisInfoVSgMd, &_s11SiriNetwork22ConnectionAnalysisInfoVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v23 - v10;
  if (a2)
  {
    outlined init with copy of NetworkConnectionProtocol?(a1, &v23 - v10, &_s11SiriNetwork22ConnectionAnalysisInfoVSgMd, &_s11SiriNetwork22ConnectionAnalysisInfoVSgMR);
    v12 = type metadata accessor for ConnectionAnalysisInfo();
    if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
    {
      outlined destroy of NetworkConnectionProtocol?(v11, &_s11SiriNetwork22ConnectionAnalysisInfoVSgMd, &_s11SiriNetwork22ConnectionAnalysisInfoVSgMR);
      v13 = 0;
    }

    else
    {
      v14 = [objc_allocWithZone(SNConnectionType) initWithTechnology_];
      outlined init with copy of NetworkConnectionProtocol?(v11, v7, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v15 = &v11[v12[5]];
      if (v15[4])
      {
        v16 = 0;
      }

      else
      {
        v16 = *v15;
      }

      if ((v16 & 0x80000000) != 0)
      {
        __break(1u);
        return;
      }

      v17 = *&v11[v12[6]];
      isa = UInt64._bridgeToObjectiveC()().super.super.isa;
      v18 = v11[v12[7]];
      v19 = &v11[v12[9]];
      v20 = *v19;
      v21 = v19[1];
      v22 = objc_allocWithZone(SNConnectionAnalysisInfo);

      v13 = @nonobjc SNConnectionAnalysisInfo.init(connectionURL:interfaceIndex:sendBufferSize:wwanPreferred:connectionType:policyId:)(v7, v16, isa, v18, v14, v20, v21);
      outlined destroy of ConnectionAnalysisInfo(v11, type metadata accessor for ConnectionAnalysisInfo);
    }

    a2(v13);
  }
}

Swift::Void __swiftcall Connection.probeConnection()()
{
  OUTLINED_FUNCTION_46();
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = OUTLINED_FUNCTION_0_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_0_1();
  v9 = OUTLINED_FUNCTION_8_1();
  v10 = OUTLINED_FUNCTION_0_0(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7();
  v24 = *(v0 + OBJC_IVAR___SNConnectionInternal_connectionQueue);
  OUTLINED_FUNCTION_7_1();
  v15 = swift_allocObject();
  OUTLINED_FUNCTION_28_0(v15);
  swift_unknownObjectWeakInit();
  v25[4] = partial apply for closure #1 in Connection.probeConnection();
  v26 = v2;
  OUTLINED_FUNCTION_1_1();
  v25[1] = 1107296256;
  OUTLINED_FUNCTION_3_5();
  v25[2] = v16;
  v25[3] = &block_descriptor_70_0;
  v17 = _Block_copy(v25);

  static DispatchQoS.unspecified.getter();
  OUTLINED_FUNCTION_1_24();
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(v18, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  OUTLINED_FUNCTION_3_0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v20 = OUTLINED_FUNCTION_6();
  MEMORY[0x223DE2460](v20);
  _Block_release(v17);
  v21 = *(v6 + 8);
  v22 = OUTLINED_FUNCTION_3_2();
  v23(v22);
  (*(v12 + 8))(v1, v9);
  OUTLINED_FUNCTION_39_0();

  OUTLINED_FUNCTION_47();
}

void closure #1 in Connection.probeConnection()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (Connection.activeOrAnyPendingConnection()())
    {
      BackgroundConnection.probeConnection()();
    }

    else
    {
    }
  }
}

uint64_t Connection.barrier(with:)()
{
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_7_1();
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_109();
  v3 = swift_allocObject();
  v3[2] = v2;
  v3[3] = v1;
  v3[4] = v0;

  v4 = OUTLINED_FUNCTION_32();
  outlined copy of (@escaping @callee_guaranteed @Sendable () -> (@out UMUserPersonProtocol?))?(v4);
  Connection.waitForActiveConnectionToExecute(_:)();
}

void closure #1 in Connection.barrier(with:)(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (*&Strong[OBJC_IVAR___SNConnectionInternal_activeBackgroundConnection] && (Strong[OBJC_IVAR___SNConnectionInternal_isCanceledInternal] & 1) == 0)
    {
      v5 = *&Strong[OBJC_IVAR___SNConnectionInternal_activeBackgroundConnection];

      BackgroundConnection.barrier(with:)();

      return;
    }
  }

  if (a2)
  {
    a2(0);
  }
}

void closure #1 in Connection.didReceiveObject(_:object:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_67_1();
  a29 = v30;
  a30 = v31;
  v33 = v32;
  OUTLINED_FUNCTION_8();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v35 = Strong;
    type metadata accessor for BackgroundConnection();
    v36 = swift_dynamicCastClass();
    if (v36)
    {
      v37 = v36;
      if (v36 == *&v35[OBJC_IVAR___SNConnectionInternal_activeBackgroundConnection])
      {
        OUTLINED_FUNCTION_8();
        swift_beginAccess();
        v45 = swift_unknownObjectWeakLoadStrong();
        if (v45)
        {
          v46 = v45;
          v47 = one-time initialization token for siriNetwork;
          swift_unknownObjectRetain();
          if (v47 != -1)
          {
            OUTLINED_FUNCTION_0_8();
            swift_once();
          }

          v48 = type metadata accessor for Logger();
          OUTLINED_FUNCTION_58(v48, static Logger.siriNetwork);
          swift_unknownObjectRetain();
          v49 = Logger.logObject.getter();
          v50 = static os_log_type_t.default.getter();
          swift_unknownObjectRelease();
          if (os_log_type_enabled(v49, v50))
          {
            v51 = OUTLINED_FUNCTION_55();
            OUTLINED_FUNCTION_4_3();
            v65 = swift_slowAlloc();
            a15 = v65;
            *v51 = 136315138;
            if (*(v37 + 448) >= 2uLL)
            {
              v67 = *(v37 + 440);
              v69 = *(v37 + 448);

              v37 = String.init<A>(describing:)();
              v52 = v62;
            }

            else
            {
              OUTLINED_FUNCTION_19_7();
              v52 = 0xE700000000000000;
            }

            v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v52, &a15);

            *(v51 + 4) = v63;
            _os_log_impl(&dword_223515000, v49, v50, "Connection - Reader: Background Connection. Received object from active background connection route %s", v51, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v65);
            OUTLINED_FUNCTION_2_2();
            MEMORY[0x223DE38F0]();
            OUTLINED_FUNCTION_2_2();
            MEMORY[0x223DE38F0]();
          }

          if (v33 >> 60 == 15)
          {
            isa = 0;
          }

          else
          {
            isa = Data._bridgeToObjectiveC()().super.isa;
          }

          [v46 didReceiveObject:v35 object:isa];
          swift_unknownObjectRelease();

          goto LABEL_25;
        }
      }

      v38 = one-time initialization token for siriNetwork;
      swift_unknownObjectRetain();
      if (v38 != -1)
      {
        OUTLINED_FUNCTION_0_8();
        swift_once();
      }

      v39 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_58(v39, static Logger.siriNetwork);
      swift_unknownObjectRetain();
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.default.getter();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = OUTLINED_FUNCTION_55();
        OUTLINED_FUNCTION_4_3();
        v43 = swift_slowAlloc();
        a15 = v43;
        *v42 = 136315138;
        if (*(v37 + 448) >= 2uLL)
        {
          v66 = *(v37 + 440);
          v68 = *(v37 + 448);

          v37 = String.init<A>(describing:)();
          v44 = v53;
        }

        else
        {
          OUTLINED_FUNCTION_19_7();
          v44 = 0xE700000000000000;
        }

        v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v44, &a15);

        *(v42 + 4) = v54;
        OUTLINED_FUNCTION_6_0();
        _os_log_impl(v55, v56, v57, v58, v59, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v43);
        v60 = OUTLINED_FUNCTION_2_0();
        MEMORY[0x223DE38F0](v60);
        v61 = OUTLINED_FUNCTION_1_2();
        MEMORY[0x223DE38F0](v61);

LABEL_25:
        swift_unknownObjectRelease();
        goto LABEL_26;
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

LABEL_26:
  OUTLINED_FUNCTION_66_3();
}

uint64_t closure #1 in Connection.didClose(_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_8();
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    OUTLINED_FUNCTION_7_1();
    *(swift_allocObject() + 16) = v4;

    v5 = v4;
    specialized Connection.handleCloseAndErrorEventsFromBackgroundConnection(_:completion:)(a2, v5, a2, partial apply for closure #1 in closure #1 in Connection.didClose(_:));
  }

  return result;
}

void *closure #1 in closure #1 in Connection.didClose(_:)(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result didCloseConnection_];
    return swift_unknownObjectRelease();
  }

  return result;
}

void closure #2 in closure #1 in Connection.didClose(_:)(char a1, char a2, uint64_t a3, void (*a4)(void))
{
  if (a1)
  {
    if (one-time initialization token for siriNetwork != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.siriNetwork);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_22;
    }

    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v22 = v10;
    *v9 = 136315138;
    if (*(a3 + 448) >= 2uLL)
    {
      v21 = *(a3 + 440);

      v12 = String.init<A>(describing:)();
      v11 = v18;
    }

    else
    {
      swift_bridgeObjectRelease_n();
      v11 = 0xE700000000000000;
      v12 = 0x6E776F6E6B6E75;
    }

    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v11, &v22);

    *(v9 + 4) = v19;
    _os_log_impl(&dword_223515000, v7, v8, "Connection - Status: Background connection. Closing active background connection route %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x223DE38F0](v10, -1, -1);
LABEL_21:
    MEMORY[0x223DE38F0](v9, -1, -1);
LABEL_22:

    a4();
    return;
  }

  if (a2)
  {
    if (one-time initialization token for siriNetwork != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Logger.siriNetwork);
    v7 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v7, v14))
    {
      goto LABEL_22;
    }

    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_223515000, v7, v14, "Connection - Status: Background connection. Ran out of pending connections; forwarding close from last background connection", v9, 2u);
    goto LABEL_21;
  }

  if (one-time initialization token for siriNetwork != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Logger.siriNetwork);
  oslog = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_223515000, oslog, v16, "Connection - Status: Background connection. Ignoring connection close from inactive backgrund connection", v17, 2u);
    MEMORY[0x223DE38F0](v17, -1, -1);
  }
}

void closure #1 in Connection.didEncounterError(_:error:analysisInfo:)()
{
  OUTLINED_FUNCTION_46();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork22ConnectionAnalysisInfoVSgMd, &_s11SiriNetwork22ConnectionAnalysisInfoVSgMR);
  v11 = OUTLINED_FUNCTION_15(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  v17 = &v25 - v16;
  OUTLINED_FUNCTION_8();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    outlined init with copy of NetworkConnectionProtocol?(v7, v17, &_s11SiriNetwork22ConnectionAnalysisInfoVSgMd, &_s11SiriNetwork22ConnectionAnalysisInfoVSgMR);
    v20 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = v19;
    *(v21 + 24) = v9;
    outlined init with take of ConnectionAnalysisInfo?(v17, v21 + v20);
    v22 = v9;
    v23 = v19;
    v24 = v9;

    specialized Connection.handleCloseAndErrorEventsFromBackgroundConnection(_:completion:)(v5, v23, v5, v9, partial apply for closure #1 in closure #1 in Connection.didEncounterError(_:error:analysisInfo:), v21, v23, v3, v1);
  }

  OUTLINED_FUNCTION_47();
}

void closure #1 in closure #1 in Connection.didEncounterError(_:error:analysisInfo:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v28[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork22ConnectionAnalysisInfoVSgMd, &_s11SiriNetwork22ConnectionAnalysisInfoVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28[-v11];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v15 = _convertErrorToNSError(_:)();
    outlined init with copy of NetworkConnectionProtocol?(a3, v12, &_s11SiriNetwork22ConnectionAnalysisInfoVSgMd, &_s11SiriNetwork22ConnectionAnalysisInfoVSgMR);
    v16 = type metadata accessor for ConnectionAnalysisInfo();
    if (__swift_getEnumTagSinglePayload(v12, 1, v16) == 1)
    {
      outlined destroy of NetworkConnectionProtocol?(v12, &_s11SiriNetwork22ConnectionAnalysisInfoVSgMd, &_s11SiriNetwork22ConnectionAnalysisInfoVSgMR);
      v17 = 0;
    }

    else
    {
      v18 = [objc_allocWithZone(SNConnectionType) initWithTechnology_];
      outlined init with copy of NetworkConnectionProtocol?(v12, v8, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v19 = &v12[v16[5]];
      if (*(v19 + 4))
      {
        v20 = 0;
      }

      else
      {
        v20 = *v19;
      }

      if ((v20 & 0x80000000) != 0)
      {
        __break(1u);
        return;
      }

      v21 = *&v12[v16[6]];
      v22.super.super.isa = UInt64._bridgeToObjectiveC()().super.super.isa;
      v30 = v15;
      isa = v22.super.super.isa;
      v29 = v12[v16[7]];
      v24 = &v12[v16[9]];
      v25 = *v24;
      v26 = v24[1];
      objc_allocWithZone(SNConnectionAnalysisInfo);

      v27 = isa;
      v15 = v30;
      v17 = @nonobjc SNConnectionAnalysisInfo.init(connectionURL:interfaceIndex:sendBufferSize:wwanPreferred:connectionType:policyId:)(v8, v20, v27, v29, v18, v25, v26);
      outlined destroy of ConnectionAnalysisInfo(v12, type metadata accessor for ConnectionAnalysisInfo);
    }

    [v14 didEncounterError:a1 error:v15 analysisInfo:v17];
    swift_unknownObjectRelease();
  }
}

void closure #2 in closure #1 in Connection.didEncounterError(_:error:analysisInfo:)(char a1, char a2, uint64_t a3, void *a4, void (*a5)(void), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a1)
  {
    if (one-time initialization token for siriNetwork != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.siriNetwork);

    v13 = a4;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v66 = a5;
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v75 = v18;
      *v16 = 136315394;
      if (*(a3 + 448) >= 2uLL)
      {
        v68 = *(a3 + 440);
        v71 = *(a3 + 448);

        v19 = String.init<A>(describing:)();
        v20 = v43;
      }

      else
      {
        v19 = 0x6E776F6E6B6E75;
        swift_bridgeObjectRelease_n();
        v20 = 0xE700000000000000;
      }

      v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v75);

      *(v16 + 4) = v44;
      *(v16 + 12) = 2112;
      v45 = a4;
      v46 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 14) = v46;
      *v17 = v46;
      _os_log_impl(&dword_223515000, v14, v15, "Connection - Error: Background Connection. Got an error from active background connection route %s. Error: %@", v16, 0x16u);
      outlined destroy of NetworkConnectionProtocol?(v17, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x223DE38F0](v17, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x223DE38F0](v18, -1, -1);
      MEMORY[0x223DE38F0](v16, -1, -1);

      a5 = v66;
    }

    else
    {
    }

    v75 = a4;
    v47 = a4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if (swift_dynamicCast())
    {
      outlined consume of NetworkConnectionError(v68, v71, v72, v73, v74);
      if (v73 >> 60 == 5)
      {
        BackgroundConnection.updateActiveBackgroundConnectionWithSecondary()();
      }
    }

LABEL_31:
    a5(v48);
    return;
  }

  v23 = a9;
  if (a2)
  {
    if (one-time initialization token for siriNetwork != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static Logger.siriNetwork);

    v25 = a4;
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v65 = a8;
      v67 = a5;
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v75 = v30;
      *v28 = 136315394;
      if (*(a3 + 448) >= 2uLL)
      {
        v69 = *(a3 + 440);

        v31 = String.init<A>(describing:)();
        v32 = v49;
      }

      else
      {
        v31 = 0x6E776F6E6B6E75;
        swift_bridgeObjectRelease_n();
        v32 = 0xE700000000000000;
      }

      v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, &v75);

      *(v28 + 4) = v50;
      *(v28 + 12) = 2112;
      v51 = a4;
      v52 = _swift_stdlib_bridgeErrorToNSError();
      *(v28 + 14) = v52;
      *v29 = v52;
      _os_log_impl(&dword_223515000, v26, v27, "Connection - Error: Background Connection. Ran out of pending connections; forwarding error from last background connection route %s. Error: %@", v28, 0x16u);
      outlined destroy of NetworkConnectionProtocol?(v29, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x223DE38F0](v29, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x223DE38F0](v30, -1, -1);
      MEMORY[0x223DE38F0](v28, -1, -1);

      v23 = a9;
      a5 = v67;
      a8 = v65;
    }

    else
    {
    }

    if (!*(a7 + OBJC_IVAR___SNConnectionInternal_activeBackgroundConnection))
    {
      v53 = OBJC_IVAR___SNConnectionInternal_connectionMethodUsedHistory;
      swift_beginAccess();

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      v54 = *(*(a7 + v53) + 16);
      specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v54);
      v55 = *(a7 + v53);
      *(v55 + 16) = v54 + 1;
      v56 = v55 + 16 * v54;
      *(v56 + 32) = a8;
      *(v56 + 40) = v23;
      *(a7 + v53) = v55;
      v48 = swift_endAccess();
    }

    goto LABEL_31;
  }

  if (one-time initialization token for siriNetwork != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  __swift_project_value_buffer(v33, static Logger.siriNetwork);

  v34 = a4;
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = a8;
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v75 = v40;
    *v38 = 136315394;
    if (*(a3 + 448) >= 2uLL)
    {
      v70 = *(a3 + 440);

      v41 = String.init<A>(describing:)();
      v42 = v57;
    }

    else
    {
      v41 = 0x6E776F6E6B6E75;
      swift_bridgeObjectRelease_n();
      v42 = 0xE700000000000000;
    }

    v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v42, &v75);

    *(v38 + 4) = v58;
    *(v38 + 12) = 2112;
    v59 = a4;
    v60 = _swift_stdlib_bridgeErrorToNSError();
    *(v38 + 14) = v60;
    *v39 = v60;
    _os_log_impl(&dword_223515000, v35, v36, "Connection - Error: Background Connection. Ignoring error from inactive background connection route %s. Error: %@", v38, 0x16u);
    outlined destroy of NetworkConnectionProtocol?(v39, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x223DE38F0](v39, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v40);
    MEMORY[0x223DE38F0](v40, -1, -1);
    MEMORY[0x223DE38F0](v38, -1, -1);

    a8 = v37;
    v23 = a9;
  }

  else
  {
  }

  if (!*(a7 + OBJC_IVAR___SNConnectionInternal_activeBackgroundConnection))
  {
    v61 = OBJC_IVAR___SNConnectionInternal_connectionMethodUsedHistory;
    swift_beginAccess();

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    v62 = *(*(a7 + v61) + 16);
    specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v62);
    v63 = *(a7 + v61);
    *(v63 + 16) = v62 + 1;
    v64 = v63 + 16 * v62;
    *(v64 + 32) = a8;
    *(v64 + 40) = v23;
    *(a7 + v61) = v63;
    swift_endAccess();
  }
}

void closure #1 in Connection.didEncounterIntermediateError(_:error:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_67_1();
  a29 = v30;
  a30 = v31;
  v33 = v32;
  v35 = v34;
  OUTLINED_FUNCTION_65_3(v36);
  OUTLINED_FUNCTION_8();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v38 = Strong;
    OUTLINED_FUNCTION_8();
    swift_beginAccess();
    v39 = swift_unknownObjectWeakLoadStrong();
    if (v39)
    {
      v40 = v39;
      if (one-time initialization token for siriNetwork != -1)
      {
        OUTLINED_FUNCTION_0_8();
        swift_once();
      }

      v41 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_58(v41, static Logger.siriNetwork);
      swift_unknownObjectRetain();
      v42 = v33;
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.error.getter();
      swift_unknownObjectRelease();

      if (os_log_type_enabled(v43, v44))
      {
        OUTLINED_FUNCTION_30();
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        OUTLINED_FUNCTION_4_3();
        v47 = swift_slowAlloc();
        a12 = v47;
        *v45 = 136315394;
        if (*(v35 + 448) >= 2uLL)
        {
          v61 = *(v35 + 440);
          v62 = *(v35 + 448);

          v49 = String.init<A>(describing:)();
          v48 = v50;
        }

        else
        {
          OUTLINED_FUNCTION_46_4();
          v48 = 0xE700000000000000;
          v49 = OUTLINED_FUNCTION_3_18();
        }

        v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v48, &a12);

        *(v45 + 4) = v51;
        *(v45 + 12) = 2112;
        v52 = v33;
        v53 = _swift_stdlib_bridgeErrorToNSError();
        *(v45 + 14) = v53;
        *v46 = v53;
        OUTLINED_FUNCTION_52_5();
        _os_log_impl(v54, v55, v56, v57, v58, 0x16u);
        outlined destroy of NetworkConnectionProtocol?(v46, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        OUTLINED_FUNCTION_2_2();
        MEMORY[0x223DE38F0]();
        __swift_destroy_boxed_opaque_existential_0(v47);
        OUTLINED_FUNCTION_2_2();
        MEMORY[0x223DE38F0]();
        v59 = OUTLINED_FUNCTION_2_0();
        MEMORY[0x223DE38F0](v59);
      }

      v60 = _convertErrorToNSError(_:)();
      [v40 didEncounterIntermediateError:v38 error:v60];

      swift_unknownObjectRelease();
      v38 = v60;
    }
  }

  OUTLINED_FUNCTION_66_3();
}

void Connection.accessPotentiallyActiveConnections(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_50_4();
  v22 = v21;
  if (*(v20 + OBJC_IVAR___SNConnectionInternal_isCanceledInternal))
  {
LABEL_2:
    v22(0);
LABEL_3:
    OUTLINED_FUNCTION_40_5();
    return;
  }

  if (*(v20 + OBJC_IVAR___SNConnectionInternal_activeBackgroundConnection))
  {
    v23 = *(v20 + OBJC_IVAR___SNConnectionInternal_activeBackgroundConnection);

    v22(v24);
    OUTLINED_FUNCTION_40_5();

    return;
  }

  v26 = OBJC_IVAR___SNConnectionInternal_pendingBackgroundConnections;
  OUTLINED_FUNCTION_8();
  swift_beginAccess();
  v27 = *(v20 + v26);

  if (specialized Set.isEmpty.getter(v28))
  {

    goto LABEL_2;
  }

  v48 = v22;
  if ((v27 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    OUTLINED_FUNCTION_53_1();
    type metadata accessor for BackgroundConnection();
    OUTLINED_FUNCTION_8_16();
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(v29, v30);
    Set.Iterator.init(_cocoa:)();
    v27 = a16;
    v32 = a18;
  }

  else
  {
    a19 = 0;
    v35 = *(v27 + 32);
    OUTLINED_FUNCTION_18_8();
    a17 = v27 + 56;
    v36 = *(v27 + 56);
    OUTLINED_FUNCTION_31_6();
    a20 = v37 & v38;
  }

  v39 = (v32 + 64) >> 6;
  if (v27 < 0)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v40 = a19;
    v41 = a19;
    if (!a20)
    {
      break;
    }

LABEL_18:
    OUTLINED_FUNCTION_49_0();
    v44 = v43 & v42;
    v46 = *(*(v27 + 48) + ((v41 << 9) | (8 * v45)));

    if (!v46)
    {
LABEL_24:
      outlined consume of Set<MessageCenterUser>.Iterator._Variant();
      goto LABEL_3;
    }

    while (1)
    {

      v48(v47);

      a19 = v41;
      a20 = v44;
      if ((v27 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_20:
      if (__CocoaSet.Iterator.next()())
      {
        type metadata accessor for BackgroundConnection();
        swift_dynamicCast();
        v41 = a19;
        v44 = a20;
        if (a12)
        {
          continue;
        }
      }

      goto LABEL_24;
    }
  }

  while (1)
  {
    v41 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      break;
    }

    if (v41 >= v39)
    {
      goto LABEL_24;
    }

    ++v40;
    if (*(a17 + 8 * v41))
    {
      goto LABEL_18;
    }
  }

  __break(1u);
}

uint64_t Connection.cancelSynchronously(_:)(uint64_t (*a1)(uint64_t))
{
  v2 = v1;
  if (*(v1 + OBJC_IVAR___SNConnectionInternal_activeBackgroundConnection))
  {

    BackgroundConnection.cancel()();
  }

  v3 = OBJC_IVAR___SNConnectionInternal_pendingBackgroundConnections;
  OUTLINED_FUNCTION_8();
  swift_beginAccess();
  v4 = *(v1 + v3);
  if ((v4 & 0xC000000000000001) != 0)
  {
    OUTLINED_FUNCTION_70_2();
    __CocoaSet.makeIterator()();
    OUTLINED_FUNCTION_53_1();
    type metadata accessor for BackgroundConnection();
    OUTLINED_FUNCTION_8_16();
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(v5, v6);
    result = Set.Iterator.init(_cocoa:)();
    v4 = v46;
    v8 = v47;
    v10 = v48;
    v9 = v49;
    v11 = v50;
  }

  else
  {
    v12 = *(v4 + 32);
    OUTLINED_FUNCTION_18_8();
    v8 = v4 + 56;
    v13 = *(v4 + 56);
    v10 = ~v14;
    OUTLINED_FUNCTION_31_6();
    v11 = v15 & v16;

    v9 = 0;
  }

  if (v4 < 0)
  {
    goto LABEL_13;
  }

  while (1)
  {
    v17 = v9;
    v18 = v9;
    if (!v11)
    {
      break;
    }

LABEL_11:
    OUTLINED_FUNCTION_49_0();
    v21 = v20 & v19;
    v23 = *(*(v4 + 48) + ((v18 << 9) | (8 * v22)));

    if (!v23)
    {
LABEL_17:
      outlined consume of Set<MessageCenterUser>.Iterator._Variant();
      v24 = OBJC_IVAR___SNConnectionInternal_comatoseBackgroundConnections;
      OUTLINED_FUNCTION_8();
      swift_beginAccess();
      v25 = *(v2 + v24);
      if ((v25 & 0xC000000000000001) != 0)
      {
        OUTLINED_FUNCTION_70_2();
        __CocoaSet.makeIterator()();
        OUTLINED_FUNCTION_53_1();
        type metadata accessor for BackgroundConnection();
        OUTLINED_FUNCTION_8_16();
        _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(v26, v27);
        result = Set.Iterator.init(_cocoa:)();
        v25 = v51;
        v28 = v52;
        v29 = v53;
        v30 = v54;
        v31 = v55;
      }

      else
      {
        v32 = *(v25 + 32);
        OUTLINED_FUNCTION_18_8();
        v28 = v25 + 56;
        v33 = *(v25 + 56);
        v29 = ~v34;
        OUTLINED_FUNCTION_31_6();
        v31 = v35 & v36;

        v30 = 0;
      }

      if (v25 < 0)
      {
        goto LABEL_27;
      }

      while (1)
      {
        v37 = v30;
        v38 = v30;
        if (!v31)
        {
          break;
        }

LABEL_25:
        OUTLINED_FUNCTION_49_0();
        v41 = v40 & v39;
        v43 = *(*(v25 + 48) + ((v38 << 9) | (8 * v42)));

        if (!v43)
        {
LABEL_31:
          result = outlined consume of Set<MessageCenterUser>.Iterator._Variant();
          *(v2 + OBJC_IVAR___SNConnectionInternal_isCanceledInternal) = 1;
          if (a1)
          {
            return a1(result);
          }

          return result;
        }

        while (1)
        {
          BackgroundConnection.cancel()();

          v30 = v38;
          v31 = v41;
          if ((v25 & 0x8000000000000000) == 0)
          {
            break;
          }

LABEL_27:
          if (__CocoaSet.Iterator.next()())
          {
            type metadata accessor for BackgroundConnection();
            swift_dynamicCast();
            v38 = v30;
            v41 = v31;
            if (v45)
            {
              continue;
            }
          }

          goto LABEL_31;
        }
      }

      while (1)
      {
        v38 = v37 + 1;
        if (__OFADD__(v37, 1))
        {
          goto LABEL_35;
        }

        if (v38 >= ((v29 + 64) >> 6))
        {
          goto LABEL_31;
        }

        ++v37;
        if (*(v28 + 8 * v38))
        {
          goto LABEL_25;
        }
      }
    }

    while (1)
    {
      BackgroundConnection.cancel()();

      v9 = v18;
      v11 = v21;
      if ((v4 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_13:
      if (__CocoaSet.Iterator.next()())
      {
        type metadata accessor for BackgroundConnection();
        swift_dynamicCast();
        v18 = v9;
        v21 = v11;
        if (v51)
        {
          continue;
        }
      }

      goto LABEL_17;
    }
  }

  while (1)
  {
    v18 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v18 >= ((v10 + 64) >> 6))
    {
      goto LABEL_17;
    }

    ++v17;
    if (*(v8 + 8 * v18))
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

uint64_t specialized Connection.handleCloseAndErrorEventsFromBackgroundConnection(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v6 = OBJC_IVAR___SNConnectionInternal_activeBackgroundConnection;
  v7 = *(a2 + OBJC_IVAR___SNConnectionInternal_activeBackgroundConnection);
  if (v7)
  {
    v8 = v7 == a1;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    v16 = 1;
    goto LABEL_27;
  }

  v11 = OBJC_IVAR___SNConnectionInternal_pendingBackgroundConnections;
  swift_beginAccess();
  v12 = *(a2 + v11);
  if ((v12 & 0xC000000000000001) != 0)
  {
    if (v12 < 0)
    {
      v13 = *(a2 + v11);
    }

    v14 = *(a2 + v11);

    v15 = __CocoaSet.contains(_:)();

    if ((v15 & 1) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (*(v12 + 16))
  {
    v31 = v11;
    v32 = a4;
    v17 = *(v12 + 40);
    Hasher.init(_seed:)();

    specialized BackgroundConnectionProtocol.hash(into:)(v39);
    v18 = Hasher._finalize()();
    v19 = ~(-1 << *(v12 + 32));
    while (1)
    {
      v20 = v18 & v19;
      if (((*(v12 + 56 + (((v18 & v19) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v18 & v19)) & 1) == 0)
      {

        v11 = v31;
        a4 = v32;
        goto LABEL_19;
      }

      v21 = *(*(v12 + 48) + 8 * v20);
      memcpy(__dst, (v21 + 40), 0x204uLL);
      memcpy(v35, (v21 + 40), 0x204uLL);
      memcpy(v37, (a1 + 40), 0x204uLL);
      memcpy(__src, (a1 + 40), 0x204uLL);
      outlined init with copy of ConnectionConfiguration(__dst, v33);
      outlined init with copy of ConnectionConfiguration(v37, v33);
      LOBYTE(v21) = static ConnectionConfiguration.== infix(_:_:)(v35, __src);
      memcpy(v38, __src, 0x204uLL);
      outlined destroy of ConnectionConfiguration(v38);
      memcpy(v39, v35, 0x204uLL);
      outlined destroy of ConnectionConfiguration(v39);
      if (v21)
      {
        break;
      }

      v18 = v20 + 1;
    }

    v11 = v31;
    a4 = v32;
LABEL_18:
    swift_beginAccess();

    specialized Set._Variant.insert(_:)();
    swift_endAccess();

    swift_beginAccess();
    specialized Set._Variant.remove(_:)(a1);
    swift_endAccess();
  }

LABEL_19:
  memcpy(v38, (a1 + 440), 0x72uLL);
  if (v38[1] != 1)
  {
    v39[0] = v38[0];
    v39[1] = v38[1];
    memcpy(&v39[2], (a1 + 456), 0x62uLL);
    v22 = OBJC_IVAR___SNConnectionInternal_pendingRoutes;
    swift_beginAccess();
    v23 = *(a2 + v22);
    outlined init with copy of NetworkConnectionProtocol?(v38, v37, &_s11SiriNetwork21ConnectionPolicyRouteVSgMd, &_s11SiriNetwork21ConnectionPolicyRouteVSgMR);

    v24 = specialized Set.contains(_:)(v39, v23);

    if (v24)
    {
      swift_beginAccess();
      memcpy(v35, v38, 0x72uLL);
      outlined init with copy of ConnectionPolicyRoute(v35, v37);
      specialized Set._Variant.insert(_:)();
      swift_endAccess();
      outlined destroy of ConnectionPolicyRoute(__dst);
      swift_beginAccess();
      specialized Set._Variant.remove(_:)(v39, v37);
      swift_endAccess();
      outlined destroy of NetworkConnectionProtocol?(v37, &_s11SiriNetwork21ConnectionPolicyRouteVSgMd, &_s11SiriNetwork21ConnectionPolicyRouteVSgMR);
    }

    outlined destroy of NetworkConnectionProtocol?(v38, &_s11SiriNetwork21ConnectionPolicyRouteVSgMd, &_s11SiriNetwork21ConnectionPolicyRouteVSgMR);
  }

  if (!*(a2 + v6))
  {
    v25 = *(a2 + v11);

    v27 = specialized Set.isEmpty.getter(v26);

    if (v27)
    {
      v28 = OBJC_IVAR___SNConnectionInternal_scheduledRoutes;
      swift_beginAccess();
      if (!*(*(a2 + v28) + 16))
      {
        v16 = 0;
        v29 = 1;
        goto LABEL_28;
      }
    }
  }

  v16 = 0;
LABEL_27:
  v29 = 0;
LABEL_28:
  closure #2 in closure #1 in Connection.didClose(_:)(v16, v29, a3, a4);
}

uint64_t specialized Connection.handleCloseAndErrorEventsFromBackgroundConnection(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(void), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = a7;
  v10 = a6;
  v11 = a4;
  v13 = OBJC_IVAR___SNConnectionInternal_activeBackgroundConnection;
  v14 = *(a2 + OBJC_IVAR___SNConnectionInternal_activeBackgroundConnection);
  if (v14)
  {
    v15 = v14 == a1;
  }

  else
  {
    v15 = 0;
  }

  if (v15)
  {
    closure #2 in closure #1 in Connection.didEncounterError(_:error:analysisInfo:)(1, 0, a3, a4, a5, a6, a7, a8, a9);
    goto LABEL_28;
  }

  v18 = OBJC_IVAR___SNConnectionInternal_pendingBackgroundConnections;
  swift_beginAccess();
  v40 = v18;
  v19 = *(a2 + v18);
  if ((v19 & 0xC000000000000001) != 0)
  {
    if (v19 < 0)
    {
      v20 = *(a2 + v18);
    }

    v21 = *(a2 + v18);

    v22 = __CocoaSet.contains(_:)();

    if ((v22 & 1) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (*(v19 + 16))
  {
    v38 = v9;
    v39 = v10;
    v23 = *(v19 + 40);
    Hasher.init(_seed:)();

    specialized BackgroundConnectionProtocol.hash(into:)(v50);
    v24 = Hasher._finalize()();
    v25 = ~(-1 << *(v19 + 32));
    while (1)
    {
      v26 = v24 & v25;
      if (((*(v19 + 56 + (((v24 & v25) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v24 & v25)) & 1) == 0)
      {

        v9 = v38;
        v10 = v39;
        goto LABEL_19;
      }

      v27 = *(*(v19 + 48) + 8 * v26);
      memcpy(__dst, (v27 + 40), 0x204uLL);
      memcpy(v46, (v27 + 40), 0x204uLL);
      memcpy(v48, (a1 + 40), 0x204uLL);
      memcpy(__src, (a1 + 40), 0x204uLL);
      outlined init with copy of ConnectionConfiguration(__dst, v44);
      outlined init with copy of ConnectionConfiguration(v48, v44);
      LOBYTE(v27) = static ConnectionConfiguration.== infix(_:_:)(v46, __src);
      memcpy(v49, __src, 0x204uLL);
      outlined destroy of ConnectionConfiguration(v49);
      memcpy(v50, v46, 0x204uLL);
      outlined destroy of ConnectionConfiguration(v50);
      if (v27)
      {
        break;
      }

      v24 = v26 + 1;
    }

    v9 = v38;
    v10 = v39;
LABEL_18:
    swift_beginAccess();

    specialized Set._Variant.insert(_:)();
    swift_endAccess();

    swift_beginAccess();
    specialized Set._Variant.remove(_:)(a1);
    swift_endAccess();
  }

LABEL_19:
  memcpy(v49, (a1 + 440), 0x72uLL);
  if (v49[1] != 1)
  {
    v50[0] = v49[0];
    v50[1] = v49[1];
    memcpy(&v50[2], (a1 + 456), 0x62uLL);
    v28 = OBJC_IVAR___SNConnectionInternal_pendingRoutes;
    swift_beginAccess();
    v29 = *(a2 + v28);
    outlined init with copy of NetworkConnectionProtocol?(v49, v48, &_s11SiriNetwork21ConnectionPolicyRouteVSgMd, &_s11SiriNetwork21ConnectionPolicyRouteVSgMR);

    v30 = specialized Set.contains(_:)(v50, v29);

    if (v30)
    {
      swift_beginAccess();
      memcpy(v46, v49, 0x72uLL);
      outlined init with copy of ConnectionPolicyRoute(v46, v48);
      specialized Set._Variant.insert(_:)();
      swift_endAccess();
      outlined destroy of ConnectionPolicyRoute(__dst);
      swift_beginAccess();
      specialized Set._Variant.remove(_:)(v50, v48);
      swift_endAccess();
      outlined destroy of NetworkConnectionProtocol?(v48, &_s11SiriNetwork21ConnectionPolicyRouteVSgMd, &_s11SiriNetwork21ConnectionPolicyRouteVSgMR);
    }

    outlined destroy of NetworkConnectionProtocol?(v49, &_s11SiriNetwork21ConnectionPolicyRouteVSgMd, &_s11SiriNetwork21ConnectionPolicyRouteVSgMR);
  }

  if (*(a2 + v13) || (v31 = *(a2 + v40), v32 = , v33 = specialized Set.isEmpty.getter(v32), , !v33) || (v34 = OBJC_IVAR___SNConnectionInternal_scheduledRoutes, swift_beginAccess(), *(*(a2 + v34) + 16)))
  {
    v37 = a9;
    v35 = 0;
  }

  else
  {
    v37 = a9;
    v35 = 1;
  }

  v11 = a4;
  closure #2 in closure #1 in Connection.didEncounterError(_:error:analysisInfo:)(0, v35, a3, a4, a5, v10, v9, a8, v37);
LABEL_28:
}

id Connection.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t (*protocol witness for ConnectionProtocol.delegate.modify in conformance Connection(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v4 = OBJC_IVAR___SNConnectionInternal_delegate;
  v3[4] = v1;
  v3[5] = v4;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return protocol witness for ConnectionProtocol.delegate.modify in conformance Connection;
}

void Connection.delegate.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  v5 = *(*a1 + 32) + *(*a1 + 40);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v6 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

id @nonobjc SNConnectionAnalysisInfo.init(connectionURL:interfaceIndex:sendBufferSize:wwanPreferred:connectionType:policyId:)(uint64_t a1, uint64_t a2, void *a3, char a4, void *a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v16 = type metadata accessor for URL();
  v18 = 0;
  if (__swift_getEnumTagSinglePayload(a1, 1, v16) != 1)
  {
    URL._bridgeToObjectiveC()(v17);
    v18 = v19;
    (*(*(v16 - 8) + 8))(a1, v16);
  }

  if (a7)
  {
    v20 = MEMORY[0x223DE2070](a6, a7);
  }

  else
  {
    v20 = 0;
  }

  v21 = [v8 initWithConnectionURL:v18 interfaceIndex:a2 sendBufferSize:a3 wwanPreferred:a4 & 1 connectionType:a5 policyId:v20];

  return v21;
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned Int)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void closure #1 in OSLogArguments.append(_:)(double **a1, uint64_t a2, uint64_t a3, double (*a4)(void))
{
  v5 = a4();
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

uint64_t _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC7Network12NWConnectionC_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy7Network12NWConnectionCAESH04SiriC0yHCg_GMd, &_ss11_SetStorageCy7Network12NWConnectionCAESH04SiriC0yHCg_GMR);
    OUTLINED_FUNCTION_32();
    v2 = static _SetStorage.convert(_:capacity:)();
    __CocoaSet.makeIterator()();
    while (1)
    {
      if (!__CocoaSet.Iterator.next()())
      {

        return v2;
      }

      type metadata accessor for NWConnection();
      OUTLINED_FUNCTION_56_4();
      if (*(v2 + 24) <= *(v2 + 16))
      {
        specialized _NativeSet.resize(capacity:)();
      }

      OUTLINED_FUNCTION_69_2();
      v3 = NWConnection.identifier.getter();
      MEMORY[0x223DE29A0](v3);
      v4 = Hasher._finalize()();
      result = OUTLINED_FUNCTION_34_5(v4);
      if (v9)
      {
        break;
      }

      OUTLINED_FUNCTION_62_2();
LABEL_15:
      OUTLINED_FUNCTION_22_8(v10);
    }

    v11 = 0;
    v12 = (63 - v8) >> 6;
    while (++v7 != v12 || (v11 & 1) == 0)
    {
      v13 = v7 == v12;
      if (v7 == v12)
      {
        v7 = 0;
      }

      v11 |= v13;
      if (*(v6 + 8 * v7) != -1)
      {
        OUTLINED_FUNCTION_61_2();
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC11SiriNetwork20BackgroundConnectionC_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy11SiriNetwork20BackgroundConnectionCGMd, &_ss11_SetStorageCy11SiriNetwork20BackgroundConnectionCGMR);
    OUTLINED_FUNCTION_32();
    v2 = static _SetStorage.convert(_:capacity:)();
    v24 = v2;
    __CocoaSet.makeIterator()();
    while (1)
    {
      v3 = __CocoaSet.Iterator.next()();
      if (!v3)
      {

        return v2;
      }

      v23[0] = v3;
      type metadata accessor for BackgroundConnection();
      OUTLINED_FUNCTION_56_4();
      v11 = *(v2 + 16);
      if (*(v2 + 24) <= v11)
      {
        specialized _NativeSet.resize(capacity:)(v11 + 1, v4, v5, v6, v7, v8, v9, v10, v22, v23[0], v23[1], v23[2], v23[3], v23[4], v23[5], v23[6], v23[7], v23[8], v23[9], v24, v25, v26, v27, v28, v29, v30, v31, v32, vars0, vars8);
      }

      OUTLINED_FUNCTION_69_2();
      specialized BackgroundConnectionProtocol.hash(into:)(v23);
      v12 = Hasher._finalize()();
      result = OUTLINED_FUNCTION_34_5(v12);
      if (v17)
      {
        break;
      }

      OUTLINED_FUNCTION_62_2();
LABEL_15:
      OUTLINED_FUNCTION_22_8(v18);
    }

    v19 = 0;
    v20 = (63 - v16) >> 6;
    while (++v15 != v20 || (v19 & 1) == 0)
    {
      v21 = v15 == v20;
      if (v15 == v20)
      {
        v15 = 0;
      }

      v19 |= v21;
      if (*(v14 + 8 * v15) != -1)
      {
        OUTLINED_FUNCTION_61_2();
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return result;
}

unint64_t specialized _NativeSet._unsafeInsertNew(_:)()
{
  OUTLINED_FUNCTION_13_3();
  v2 = *(v1 + 40);
  Hasher.init(_seed:)();
  v3 = NWConnection.identifier.getter();
  MEMORY[0x223DE29A0](v3);
  Hasher._finalize()();
  v4 = *(v0 + 32);
  OUTLINED_FUNCTION_18_8();
  v5 = _HashTable.nextHole(atOrAfter:)();
  return OUTLINED_FUNCTION_20_5(v5);
}

{
  OUTLINED_FUNCTION_13_3();
  v2 = *(v1 + 40);
  Hasher.init(_seed:)();
  specialized BackgroundConnectionProtocol.hash(into:)(v6);
  Hasher._finalize()();
  v3 = *(v0 + 32);
  OUTLINED_FUNCTION_18_8();
  v4 = _HashTable.nextHole(atOrAfter:)();
  return OUTLINED_FUNCTION_20_5(v4);
}

uint64_t _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC11SiriNetwork21ConnectionPolicyRouteV_Tt0g5(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x277D84FA0];
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy11SiriNetwork21ConnectionPolicyRouteVGMd, &_ss11_SetStorageCy11SiriNetwork21ConnectionPolicyRouteVGMR);
  result = static _SetStorage.allocate(capacity:)();
  v3 = result;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_15:

    return v3;
  }

  v5 = 0;
  v6 = result + 56;
  for (i = *(a1 + 16); v5 < i; i = *(a1 + 16))
  {
    v8 = (a1 + 32 + 120 * v5);
    memcpy(__dst, v8, 0x72uLL);
    ++v5;
    memcpy(v26, v8, 0x72uLL);
    v9 = *(v3 + 40);
    memcpy(v25, v8, 0x72uLL);
    Hasher.init(_seed:)();
    outlined init with copy of ConnectionPolicyRoute(__dst, v24);
    ConnectionPolicyRoute.hash(into:)();
    v10 = Hasher._finalize()();
    v11 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v12 = v10 & v11;
      v13 = (v10 & v11) >> 6;
      v14 = *(v6 + 8 * v13);
      v15 = 1 << (v10 & v11);
      v16 = 120 * (v10 & v11);
      if ((v15 & v14) == 0)
      {
        break;
      }

      v17 = *(v3 + 48);
      memcpy(v24, (v17 + v16), 0x72uLL);
      memcpy(__src, (v17 + v16), 0x72uLL);
      v18 = static ConnectionPolicyRoute.== infix(_:_:)(__src, v26);
      memcpy(v25, __src, 0x72uLL);
      outlined init with copy of ConnectionPolicyRoute(v24, v22);
      outlined destroy of ConnectionPolicyRoute(v25);
      if (v18)
      {
        memcpy(__src, v26, 0x72uLL);
        result = outlined destroy of ConnectionPolicyRoute(__src);
        goto LABEL_12;
      }

      v10 = v12 + 1;
    }

    *(v6 + 8 * v13) = v15 | v14;
    result = memcpy((*(v3 + 48) + v16), v26, 0x72uLL);
    v19 = *(v3 + 16);
    v20 = __OFADD__(v19, 1);
    v21 = v19 + 1;
    if (v20)
    {
      goto LABEL_17;
    }

    *(v3 + 16) = v21;
LABEL_12:
    if (v5 == v4)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t partial apply for closure #1 in Connection.cancelSynchronously(_:isOnConnectionQueue:with:)()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  return Connection.cancelSynchronously(_:)(v1);
}

uint64_t outlined init with take of ConnectionAnalysisInfo?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork22ConnectionAnalysisInfoVSgMd, &_s11SiriNetwork22ConnectionAnalysisInfoVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void partial apply for closure #1 in closure #1 in Connection.didEncounterError(_:error:analysisInfo:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork22ConnectionAnalysisInfoVSgMd, &_s11SiriNetwork22ConnectionAnalysisInfoVSgMR);
  OUTLINED_FUNCTION_11_1(v1);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = v0 + ((*(v2 + 80) + 32) & ~*(v2 + 80));

  closure #1 in closure #1 in Connection.didEncounterError(_:error:analysisInfo:)(v3, v4, v5);
}

void _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC11SiriNetwork21MessageCenterEndpointV_Tt0g5(uint64_t a1)
{
  v1 = a1;
  if (!*(a1 + 16))
  {
    goto LABEL_26;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy11SiriNetwork21MessageCenterEndpointVGMd, &_ss11_SetStorageCy11SiriNetwork21MessageCenterEndpointVGMR);
  OUTLINED_FUNCTION_15_8();
  v2 = static _SetStorage.allocate(capacity:)();
  v35 = *(v1 + 16);
  if (!v35)
  {
    goto LABEL_26;
  }

  v3 = 0;
  v33 = v1;
  v34 = v1 + 32;
  while (1)
  {
    if (v3 >= *(v1 + 16))
    {
      __break(1u);
      goto LABEL_28;
    }

    outlined init with copy of MessageCenterEndpoint(v34 + 40 * v3, &v37);
    v4 = *(v2 + 40);
    Hasher.init(_seed:)();
    __swift_project_boxed_opaque_existential_1(&v37, *(&v38 + 1));
    v5 = OUTLINED_FUNCTION_54_4();
    v6(v5);
    if (v7)
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    Hasher._finalize()();
    v8 = *(v2 + 32);
    OUTLINED_FUNCTION_18_8();
    v10 = ~v9;
    v12 = v11 & ~v9;
    OUTLINED_FUNCTION_64_2();
    if ((v15 & v14) == 0)
    {
      break;
    }

    while (1)
    {
      outlined init with copy of MessageCenterEndpoint(*(v2 + 48) + 40 * v12, v36);
      __swift_project_boxed_opaque_existential_1(v36, v36[3]);
      v16 = OUTLINED_FUNCTION_54_4();
      v18 = v17(v16);
      v20 = v19;
      __swift_project_boxed_opaque_existential_1(&v37, *(&v38 + 1));
      v21 = OUTLINED_FUNCTION_55_3();
      v23 = v22(v21);
      if (!v20)
      {
        if (!v24)
        {
          goto LABEL_23;
        }

LABEL_18:

        outlined destroy of MessageCenterEndpoint(v36);
        goto LABEL_19;
      }

      if (!v24)
      {
        goto LABEL_18;
      }

      if (v18 == v23 && v20 == v24)
      {
        break;
      }

      v26 = OUTLINED_FUNCTION_72_1();

      outlined destroy of MessageCenterEndpoint(v36);
      if (v26)
      {
        goto LABEL_24;
      }

LABEL_19:
      v12 = (v12 + 1) & v10;
      OUTLINED_FUNCTION_64_2();
      if ((v14 & v15) == 0)
      {
        goto LABEL_20;
      }
    }

LABEL_23:
    outlined destroy of MessageCenterEndpoint(v36);
LABEL_24:
    outlined destroy of MessageCenterEndpoint(&v37);
LABEL_25:
    ++v3;
    v1 = v33;
    if (v3 == v35)
    {
LABEL_26:

      return;
    }
  }

LABEL_20:
  *(v2 + 56 + 8 * v13) = v14 | v15;
  v27 = *(v2 + 48) + 40 * v12;
  v28 = v37;
  v29 = v38;
  *(v27 + 32) = v39;
  *v27 = v28;
  *(v27 + 16) = v29;
  v30 = *(v2 + 16);
  v31 = __OFADD__(v30, 1);
  v32 = v30 + 1;
  if (!v31)
  {
    *(v2 + 16) = v32;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}