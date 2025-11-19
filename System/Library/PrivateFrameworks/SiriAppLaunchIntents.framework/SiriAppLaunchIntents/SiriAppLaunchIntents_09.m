uint64_t sub_26617CF7C(uint64_t *a1)
{
  v2 = sub_26618C6B0();
  v3 = OUTLINED_FUNCTION_2_2(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v3);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v40 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v14 = *(v13 + 16);
  v15 = OUTLINED_FUNCTION_5_18();
  v17 = v16(v15);
  if (v17)
  {
    v18 = v17;
    sub_2660C9D24(v17);
    if (v19)
    {
    }

    else
    {
      if (qword_2814B2C38 != -1)
      {
        OUTLINED_FUNCTION_4_21();
        swift_once();
      }

      __swift_project_value_buffer(v2, qword_2814B4A80);
      OUTLINED_FUNCTION_28_1();
      v29(v12);

      v30 = sub_26618C690();
      v31 = sub_26618CAB0();

      v40 = v30;
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v41 = v33;
        *v32 = 136315138;
        v34 = OUTLINED_FUNCTION_5_18();
        v37 = sub_266103A98(v34, v35, v36);

        *(v32 + 4) = v37;
        v38 = v40;
        _os_log_impl(&dword_2660B7000, v40, v31, "Marketplace.init failed to initialized marketplace because could not retrieve name for LSAppRecord for bundle id: %s", v32, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v33);
        OUTLINED_FUNCTION_10_2();
        MEMORY[0x26677CC30]();
        OUTLINED_FUNCTION_10_2();
        MEMORY[0x26677CC30]();
      }

      else
      {
      }

      (*(v5 + 8))(v12, v2);
    }
  }

  else
  {
    if (qword_2814B2C38 != -1)
    {
      OUTLINED_FUNCTION_4_21();
      swift_once();
    }

    __swift_project_value_buffer(v2, qword_2814B4A80);
    OUTLINED_FUNCTION_28_1();
    v20(v10);

    v21 = sub_26618C690();
    v22 = sub_26618CAB0();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v41 = v24;
      *v23 = 136315138;
      v25 = OUTLINED_FUNCTION_5_18();
      v28 = sub_266103A98(v25, v26, v27);

      *(v23 + 4) = v28;
      _os_log_impl(&dword_2660B7000, v21, v22, "Marketplace.init failed to initialized marketplace because could not find LSAppRecord for bundle id: %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      OUTLINED_FUNCTION_10_2();
      MEMORY[0x26677CC30]();
      OUTLINED_FUNCTION_10_2();
      MEMORY[0x26677CC30]();
    }

    else
    {
    }

    (*(v5 + 8))(v10, v2);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return OUTLINED_FUNCTION_5_18();
}

double sub_26617D350@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = sub_26618C6B0();
  v9 = OUTLINED_FUNCTION_2_2(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  v15 = &v32[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  v17 = a1[1];
  if (sub_26617CE90(v16, v17, a2))
  {
    sub_2660C5864(a3, v32);

    v18 = sub_26617CF7C(v32);
    if (v19)
    {
      *a4 = v18;
      a4[1] = v19;
      a4[2] = v20;
      a4[3] = v21;
      return result;
    }

    if (qword_2814B2C38 != -1)
    {
      OUTLINED_FUNCTION_4_21();
      swift_once();
    }

    __swift_project_value_buffer(v8, qword_2814B4A80);
    OUTLINED_FUNCTION_28_1();
    v23(v15);

    v24 = sub_26618C690();
    v25 = sub_26618CAB0();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v33 = v25;
      v27 = v26;
      v28 = swift_slowAlloc();
      v31 = v24;
      v32[0] = v28;
      v29 = v28;
      *v27 = 136315138;
      *(v27 + 4) = sub_266103A98(v16, v17, v32);
      v30 = v31;
      _os_log_impl(&dword_2660B7000, v31, v33, "MarketplaceUtils.getMarketplacesRepresentedInResults could not find the LSApplicationRecord for marketplace with id: %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      OUTLINED_FUNCTION_10_2();
      MEMORY[0x26677CC30]();
      OUTLINED_FUNCTION_10_2();
      MEMORY[0x26677CC30]();
    }

    else
    {
    }

    (*(v11 + 8))(v15, v8);
  }

  result = 0.0;
  *a4 = 0u;
  *(a4 + 1) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_3_23()
{

  return sub_26618D000();
}

uint64_t sub_26617D5D4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v77 = a3;
  v88 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CFD0, "jb");
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v85 = &v75 - v8;
  OUTLINED_FUNCTION_18_2();
  v9 = sub_26618B8E0();
  v10 = OUTLINED_FUNCTION_2_2(v9);
  v86 = v11;
  v87 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_69_0();
  v83 = v14;
  MEMORY[0x28223BE20](v15);
  v84 = &v75 - v16;
  OUTLINED_FUNCTION_18_2();
  v94 = sub_26618B980();
  v17 = OUTLINED_FUNCTION_2_2(v94);
  v82 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  v81 = &v75 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_18_2();
  v93 = sub_26618B9E0();
  v22 = OUTLINED_FUNCTION_2_2(v93);
  v80 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_69_0();
  v79 = v26;
  MEMORY[0x28223BE20](v27);
  v91 = &v75 - v28;
  OUTLINED_FUNCTION_18_2();
  v92 = sub_26618B8A0();
  v29 = OUTLINED_FUNCTION_2_2(v92);
  v90 = v30;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_69_0();
  v78 = v33;
  MEMORY[0x28223BE20](v34);
  v89 = &v75 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C8C8, &qword_2661937A8);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36 - 8);
  v39 = &v75 - v38;
  v40 = sub_26618BC90();
  v41 = OUTLINED_FUNCTION_2_2(v40);
  v76 = v42;
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v41);
  v46 = &v75 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_26618C000();
  v48 = *(v47 + 48);
  v49 = *(v47 + 52);
  swift_allocObject();
  v50 = sub_26618BFF0();
  v51 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v52 = v50;
  v53 = (*(v51 + 16))(a2);
  if (v53)
  {

    v54 = sub_26618BF10();
    v55 = *(v54 + 48);
    v56 = *(v54 + 52);
    swift_allocObject();
    sub_26618BF00();
    sub_26618BEF0();
    if (sub_26618BEE0())
    {

      sub_26618BC60();
      sub_26618BB70();

      (*(v76 + 8))(v46, v40);
    }

    sub_26618C050();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C090, &qword_266190210);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_26618F7E0;
  *(v57 + 32) = v50;
  v58 = sub_26618BD60();
  __swift_storeEnumTagSinglePayload(v39, 1, 1, v58);

  v59 = MEMORY[0x26677B0A0](v57, v39);

  sub_26617DD1C(v39);
  v60 = v89;
  v77 = v59;
  sub_26618BAB0();
  v76 = v52;
  v61 = v91;
  sub_26618B9D0();
  (*(v90 + 16))(v78, v60, v92);
  sub_26618B9C0();
  v62 = v81;
  sub_26618B970();
  v63 = v80;
  (*(v80 + 16))(v79, v61, v93);
  sub_26618B950();
  v64 = v84;
  sub_26618B8D0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C730, &qword_266192DD8);
  v65 = v82;
  v66 = *(v82 + 72);
  v67 = (*(v82 + 80) + 32) & ~*(v82 + 80);
  v68 = swift_allocObject();
  *(v68 + 16) = xmmword_26618E190;
  (*(v65 + 16))(v68 + v67, v62, v94);
  sub_26618B8C0();
  v70 = v86;
  v69 = v87;
  (*(v86 + 16))(v83, v64, v87);
  v71 = *MEMORY[0x277D5DA78];
  v72 = sub_26618B890();
  v73 = v85;
  (*(*(v72 - 8) + 104))(v85, v71, v72);
  __swift_storeEnumTagSinglePayload(v73, 0, 1, v72);
  sub_26618B830();

  (*(v70 + 8))(v64, v69);
  (*(v65 + 8))(v62, v94);
  (*(v63 + 8))(v91, v93);
  return (*(v90 + 8))(v89, v92);
}

uint64_t sub_26617DD1C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C8C8, &qword_2661937A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26617DD84(char a1)
{
  result = 0x416C6C6174736E69;
  switch(a1)
  {
    case 1:
    case 12:
      OUTLINED_FUNCTION_0_27();
      result = v5 + 2;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 4:
    case 8:
      OUTLINED_FUNCTION_0_27();
      result = v8 + 7;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
      OUTLINED_FUNCTION_0_27();
      result = v6 + 1;
      break;
    case 7:
      OUTLINED_FUNCTION_0_27();
      result = v4 - 2;
      break;
    case 9:
    case 13:
      OUTLINED_FUNCTION_0_27();
      result = v7 + 5;
      break;
    case 10:
      return result;
    case 11:
      result = 0x704165766F6D6572;
      break;
    default:
      OUTLINED_FUNCTION_0_27();
      result = v3 + 3;
      break;
  }

  return result;
}

uint64_t sub_26617DF3C()
{
  type metadata accessor for DeepLaunchIntent();
  type metadata accessor for DeepLaunchIntentResponse();
  sub_26618AF60();
  v0 = sub_26618C360();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_26618C350();
  sub_26618AEC0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CFE0, &qword_266196C78);
  sub_26618AF20();
  sub_26618B810();
  v3 = sub_26618B470();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v6 = sub_26618B460();
  v10 = v3;
  v11 = MEMORY[0x277D5BD58];
  *&v9 = v6;
  type metadata accessor for DeepLaunchHandleIntentStrategy();
  v7 = swift_allocObject();
  sub_2660B9EB8(&v12, v7 + 16);
  sub_2660B9EB8(&v9, v7 + 56);
  *&v12 = v7;
  sub_26617EA44(&qword_28005D008, type metadata accessor for DeepLaunchHandleIntentStrategy);
  sub_26618AEB0();

  sub_26618AF10();
  type metadata accessor for DeepLaunchUnsupportedValueStrategy();
  *&v12 = sub_26610EEB8();
  sub_26617EA44(&qword_28005D010, type metadata accessor for DeepLaunchUnsupportedValueStrategy);
  sub_26618AEF0();

  sub_26618AF40();
}

uint64_t sub_26617E18C()
{
  v0 = sub_26618C360();
  OUTLINED_FUNCTION_41_0(v0);
  result = sub_26618C350();
  qword_2814B4B80 = result;
  return result;
}

uint64_t sub_26617E1F4()
{
  type metadata accessor for LaunchAppWrapperFlow();
  sub_26618B600();
  sub_26618B0E0();
  sub_2660E2DA4();
  sub_26617EA44(qword_2814B3C80, type metadata accessor for LaunchAppWrapperFlow);
  v0 = sub_26618AF90();

  return v0;
}

uint64_t sub_26617E2A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CFD8, &qword_266196C70);
  OUTLINED_FUNCTION_3_5();
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v9);
  v11 = &v27 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CFE0, &qword_266196C78);
  OUTLINED_FUNCTION_3_5();
  v14 = v13;
  v16 = *(v15 + 64);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v27 - v21;
  sub_26617DF3C();
  (*(v14 + 16))(v20, v22, v12);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CFE8, &qword_266196C80);
  OUTLINED_FUNCTION_41_0(v23);
  sub_26618AF70();
  v28 = a1;
  type metadata accessor for DeepLaunchFlowStrategy();
  sub_26617EA44(&qword_28005CFF0, type metadata accessor for DeepLaunchFlowStrategy);

  sub_26618B2F0();
  if (qword_2814B3F10 != -1)
  {
    swift_once();
  }

  v24 = sub_26618B2E0();
  (*(v6 + 8))(v11, v4);
  v28 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CFF8, &qword_266196C88);
  sub_26617E590();
  v25 = sub_26618AF90();

  (*(v14 + 8))(v22, v12);
  return v25;
}

unint64_t sub_26617E590()
{
  result = qword_28005D000;
  if (!qword_28005D000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28005CFF8, &qword_266196C88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005D000);
  }

  return result;
}

uint64_t sub_26617E5F4()
{
  sub_26618B0E0();
  sub_26618B040();
  v0 = type metadata accessor for HomeScreenFlow();
  OUTLINED_FUNCTION_41_0(v0);
  *&v4 = sub_2660DE86C(&v4, &v3);
  sub_26617EA44(&qword_28005C190, type metadata accessor for HomeScreenFlow);
  v1 = sub_26618AF90();

  return v1;
}

uint64_t sub_26617E6AC()
{
  if (qword_2814B4A70 != -1)
  {
    OUTLINED_FUNCTION_13_8();
  }

  v0 = static InstalledAppProvider.shared;
  v3[3] = type metadata accessor for InstalledAppProvider();
  v3[4] = &protocol witness table for InstalledAppProvider;
  v3[0] = v0;

  sub_26618B600();
  sub_26618B0E0();
  sub_26618B040();
  sub_2660E2B44();
  v1 = sub_26618AF90();
  sub_26617E760(v3);
  return v1;
}

uint64_t sub_26617E7B4()
{
  sub_26618B810();
  if (qword_2814B4A70 != -1)
  {
    OUTLINED_FUNCTION_13_8();
  }

  v0 = static InstalledAppProvider.shared;
  v22 = type metadata accessor for InstalledAppProvider();
  v23 = &protocol witness table for InstalledAppProvider;
  *&v21 = v0;

  sub_26618B600();
  sub_26618B0E0();
  v1 = type metadata accessor for BaseDialogProvider();
  v2 = swift_allocObject();
  sub_26618B040();
  v17[4] = &off_2877CAA90;
  v17[3] = v1;
  v17[0] = v2;
  v3 = type metadata accessor for QRCodeFlow();
  v4 = OUTLINED_FUNCTION_41_0(v3);
  __swift_mutable_project_boxed_opaque_existential_1(v17, v1);
  OUTLINED_FUNCTION_3_5();
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v7);
  v9 = (v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v9);
  v11 = *v9;
  v12 = (v4 + OBJC_IVAR____TtC20SiriAppLaunchIntents10QRCodeFlow_dialogProvider);
  v12[3] = v1;
  v12[4] = &off_2877CAA90;
  *v12 = v11;
  v13 = OBJC_IVAR____TtC20SiriAppLaunchIntents10QRCodeFlow_input;
  v14 = sub_26618B790();
  __swift_storeEnumTagSinglePayload(v4 + v13, 1, 1, v14);
  sub_2660B9EB8(&v24, v4 + OBJC_IVAR____TtC20SiriAppLaunchIntents10QRCodeFlow_deviceState);
  sub_2660B9EB8(&v21, v4 + OBJC_IVAR____TtC20SiriAppLaunchIntents10QRCodeFlow_installedAppProvider);
  sub_2660B9EB8(&v20, v4 + OBJC_IVAR____TtC20SiriAppLaunchIntents10QRCodeFlow_outputPublisher);
  sub_2660B9EB8(&v19, v4 + OBJC_IVAR____TtC20SiriAppLaunchIntents10QRCodeFlow_aceService);
  sub_2660B9EB8(&v18, v4 + OBJC_IVAR____TtC20SiriAppLaunchIntents10QRCodeFlow_eventSender);
  __swift_destroy_boxed_opaque_existential_1(v17);
  *&v24 = v4;
  sub_26617EA44(&qword_28005C2B0, type metadata accessor for QRCodeFlow);
  v15 = sub_26618AF90();

  return v15;
}

uint64_t sub_26617EA44(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26617EA8C()
{
  v0 = sub_26618CB10();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26618C820();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26618C800();
  sub_26618CAF0();
  v10 = sub_26617C268(0xD000000000000016, 0x800000026619A630, v9, v4);
  (*(v1 + 8))(v4, v0);
  result = (*(v6 + 8))(v9, v5);
  qword_28005D018 = v10;
  return result;
}

uint64_t sub_26617EC24()
{
  v0 = sub_26618CB10();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26618C820();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26618C800();
  sub_26618CAF0();
  v10 = sub_26617C268(0xD000000000000028, 0x800000026619A600, v9, v4);
  (*(v1 + 8))(v4, v0);
  result = (*(v6 + 8))(v9, v5);
  qword_28005D020 = v10;
  return result;
}

void sub_26617EDBC()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  sub_266184A08(0xD000000000000016, 0x800000026619A630, v0);
  qword_28005D028 = v0;
}

uint64_t AppLaunchFlowProvider.init()@<X0>(void *a1@<X8>)
{
  a1[3] = &type metadata for AppLaunchFlowFactoryImpl;
  a1[4] = &off_2877CD5D8;
  sub_26618B810();
  v2 = type metadata accessor for QuickActionScopeProvider();
  swift_allocObject();
  v3 = sub_26615F964();
  a1[13] = v2;
  a1[14] = &off_2877CC4A8;
  a1[10] = v3;
  a1[18] = &type metadata for AppLaunchFeatureFlagsImpl;
  a1[19] = &off_2877CD168;
  v4 = sub_26618C460();
  v5 = sub_26618C450();
  a1[28] = &type metadata for ReferenceResolver;
  a1[29] = &off_2877CC6F0;
  v6 = swift_allocObject();
  a1[25] = v6;
  v6[5] = v4;
  v6[6] = &off_2877CC660;
  v6[2] = v5;
  v7 = type metadata accessor for PommesResponseLoggingProvider();
  result = swift_allocObject();
  a1[23] = v7;
  a1[24] = &off_2877CC418;
  a1[20] = result;
  return result;
}

uint64_t static AppLaunchFlowProvider.warmup(refId:)(uint64_t a1, unint64_t a2)
{
  v48 = a1;
  v49 = a2;
  v2 = sub_26618C6B0();
  v3 = OUTLINED_FUNCTION_2_2(v2);
  v53 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_4();
  v9 = v8 - v7;
  v10 = sub_26618C7C0();
  v11 = OUTLINED_FUNCTION_2_2(v10);
  v52 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_4();
  v17 = v16 - v15;
  v18 = sub_26618C820();
  v19 = OUTLINED_FUNCTION_2_2(v18);
  v50 = v20;
  v51 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_1_4();
  v25 = v24 - v23;
  v26 = sub_26618A5B0();
  v27 = OUTLINED_FUNCTION_2_2(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  v32 = MEMORY[0x28223BE20](v27);
  v33 = &v47 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v35 = &v47 - v34;
  if (qword_28005BCB8 != -1)
  {
    swift_once();
  }

  if ([qword_28005D028 tryLock])
  {
    sub_26618A5A0();
    if (qword_28005BCA8 != -1)
    {
      swift_once();
    }

    v53 = qword_28005D018;
    (*(v29 + 16))(v33, v35, v26);
    v36 = (*(v29 + 80) + 16) & ~*(v29 + 80);
    v37 = swift_allocObject();
    (*(v29 + 32))(v37 + v36, v33, v26);
    aBlock[4] = sub_2661846D8;
    aBlock[5] = v37;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_266184BF8;
    aBlock[3] = &block_descriptor_4;
    v38 = _Block_copy(aBlock);
    sub_26618C7F0();
    v54 = MEMORY[0x277D84F90];
    sub_266184A60(&qword_28005D030, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005D038, &qword_266196C90);
    sub_266184750();
    sub_26618CC90();
    MEMORY[0x26677BEF0](0, v25, v17, v38);
    _Block_release(v38);
    (*(v52 + 8))(v17, v10);
    (*(v50 + 8))(v25, v51);
    (*(v29 + 8))(v35, v26);
  }

  else
  {
    if (qword_2814B2C38 != -1)
    {
      OUTLINED_FUNCTION_2_5();
    }

    v40 = __swift_project_value_buffer(v2, qword_2814B4A80);
    v41 = v53;
    (*(v53 + 16))(v9, v40, v2);
    v42 = v49;

    v43 = sub_26618C690();
    v44 = sub_26618CAD0();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = OUTLINED_FUNCTION_49_0();
      v46 = OUTLINED_FUNCTION_45_1();
      aBlock[0] = v46;
      *v45 = 136315138;
      *(v45 + 4) = sub_266103A98(v48, v42, aBlock);
      _os_log_impl(&dword_2660B7000, v43, v44, "AppLaunchFlowProvider#warmup already in warmup. Rejecting warmup request for: %s", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v46);
      OUTLINED_FUNCTION_7_2();
      OUTLINED_FUNCTION_7_2();
    }

    return (*(v41 + 8))(v9, v2);
  }
}

uint64_t sub_26617F480(uint64_t a1)
{
  v54 = a1;
  v1 = sub_26618A5B0();
  v56 = *(v1 - 8);
  v57 = v1;
  v2 = *(v56 + 64);
  MEMORY[0x28223BE20](v1);
  v53 = v3;
  v55 = v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_26618C7C0();
  v61 = *(v4 - 8);
  v5 = *(v61 + 64);
  MEMORY[0x28223BE20](v4);
  v60 = v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_26618C820();
  v59 = *(v63 - 8);
  v7 = *(v59 + 64);
  MEMORY[0x28223BE20](v63);
  v58 = v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_26618C600();
  isa = v51[-1].isa;
  v10 = *(isa + 8);
  v11 = MEMORY[0x28223BE20](v51);
  v13 = v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v50 - v14;
  v16 = sub_26618C630();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28005BC40 != -1)
  {
    swift_once();
  }

  v21 = __swift_project_value_buffer(v16, qword_28005D100);
  (*(v17 + 16))(v20, v21, v16);
  sub_26618C5F0();
  v22 = sub_26618C620();
  v23 = sub_26618CB60();
  v24 = sub_26618CBB0();
  v62 = v4;
  if (v24)
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    v26 = sub_26618C5E0();
    _os_signpost_emit_with_name_impl(&dword_2660B7000, v22, v23, v26, "appLaunchFlowProviderWarmup", "enableTelemetry=YES", v25, 2u);
    v27 = v25;
    v4 = v62;
    MEMORY[0x26677CC30](v27, -1, -1);
  }

  v28 = v51;
  (*(isa + 2))(v13, v15, v51);
  v29 = sub_26618C670();
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();
  v52 = sub_26618C660();
  (*(isa + 1))(v15, v28);
  (*(v17 + 8))(v20, v16);
  v32 = dispatch_group_create();
  dispatch_group_enter(v32);
  if (qword_28005BCB0 != -1)
  {
    swift_once();
  }

  v33 = swift_allocObject();
  *(v33 + 16) = v32;
  v69 = sub_266184AA8;
  v70 = v33;
  aBlock = MEMORY[0x277D85DD0];
  v66 = 1107296256;
  v50[4] = &v67;
  v67 = sub_266184BF8;
  v68 = &block_descriptor_9;
  v34 = _Block_copy(&aBlock);
  v51 = v32;
  v35 = v58;
  sub_26618C7F0();
  v64 = MEMORY[0x277D84F90];
  v36 = sub_266184A60(&qword_28005D030, MEMORY[0x277D85198]);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005D038, &qword_266196C90);
  v38 = sub_266184750();
  v39 = v60;
  v50[2] = v37;
  v50[1] = v38;
  v50[3] = v36;
  sub_26618CC90();
  MEMORY[0x26677BEF0](0, v35, v39, v34);
  _Block_release(v34);
  v61 = *(v61 + 8);
  (v61)(v39, v4);
  v59 = *(v59 + 8);
  (v59)(v35, v63);

  if (qword_28005BCA8 != -1)
  {
    swift_once();
  }

  v50[0] = qword_28005D018;
  v40 = v55;
  v41 = v56;
  v42 = v57;
  (*(v56 + 16))(v55, v54, v57);
  v43 = (*(v41 + 80) + 16) & ~*(v41 + 80);
  v44 = (v53 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  (*(v41 + 32))(v45 + v43, v40, v42);
  *(v45 + v44) = v52;
  v69 = sub_266184AB0;
  v70 = v45;
  aBlock = MEMORY[0x277D85DD0];
  v66 = 1107296256;
  v67 = sub_266184BF8;
  v68 = &block_descriptor_15;
  v46 = _Block_copy(&aBlock);

  sub_26618C7F0();
  v64 = MEMORY[0x277D84F90];
  v47 = v62;
  sub_26618CC90();
  v48 = v51;
  sub_26618CAE0();
  _Block_release(v46);

  (v61)(v39, v47);
  (v59)(v35, v63);
}

uint64_t sub_26617FC84(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C010, &qword_2661922A0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v10 - v4;
  v6 = sub_26618CA40();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = a1;
  v8 = a1;
  sub_2660CC534(0, 0, v5, &unk_266196D50, v7);
}

uint64_t sub_26617FD68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_26618C6B0();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26617FE28, 0, 0);
}

uint64_t sub_26617FE28()
{
  if (qword_2814B4A70 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_26617FEF0;

  return sub_266159A38();
}

uint64_t sub_26617FEF0()
{
  v1 = *(*v0 + 48);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_26617FFEC, 0, 0);
}

uint64_t sub_26617FFEC()
{
  if (qword_2814B2C38 != -1)
  {
    OUTLINED_FUNCTION_2_5();
  }

  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = __swift_project_value_buffer(v3, qword_2814B4A80);
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_26618C690();
  v6 = sub_26618CAD0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2660B7000, v5, v6, "AppLaunchFlowProvider#warmup InstalledAppProvider completed warmup", v7, 2u);
    OUTLINED_FUNCTION_7_2();
  }

  v9 = v0[4];
  v8 = v0[5];
  v11 = v0[2];
  v10 = v0[3];

  (*(v9 + 8))(v8, v10);
  dispatch_group_leave(v11);

  v12 = v0[1];

  return v12();
}

uint64_t sub_26618013C(uint64_t a1, uint64_t a2)
{
  v52 = a2;
  v50 = sub_26618C640();
  v53 = *(v50 - 8);
  v3 = *(v53 + 64);
  MEMORY[0x28223BE20](v50);
  v51 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26618C600();
  v57 = *(v5 - 8);
  v58 = v5;
  v6 = *(v57 + 64);
  MEMORY[0x28223BE20](v5);
  v56 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26618C630();
  v55 = *(v8 - 8);
  v9 = *(v55 + 64);
  MEMORY[0x28223BE20](v8);
  v54 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_26618A5B0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v49 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v47 - v16;
  v18 = sub_26618C6B0();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2814B2C38 != -1)
  {
    swift_once();
  }

  v23 = __swift_project_value_buffer(v18, qword_2814B4A80);
  (*(v19 + 16))(v22, v23, v18);
  (*(v12 + 16))(v17, a1, v11);
  v24 = sub_26618C690();
  v25 = sub_26618CAD0();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v48 = v8;
    v27 = v26;
    *v26 = 134217984;
    v28 = v49;
    sub_26618A5A0();
    sub_26618A530();
    v30 = v29;
    v47 = v19;
    v31 = *(v12 + 8);
    v31(v28, v11);
    v31(v17, v11);
    v19 = v47;
    *(v27 + 1) = v30;
    _os_log_impl(&dword_2660B7000, v24, v25, "AppLaunchFlowProvider#warmup completed in %f seconds", v27, 0xCu);
    v32 = v27;
    v8 = v48;
    MEMORY[0x26677CC30](v32, -1, -1);
  }

  else
  {

    (*(v12 + 8))(v17, v11);
  }

  (*(v19 + 8))(v22, v18);
  v34 = v55;
  v33 = v56;
  v35 = v53;
  v36 = v51;
  if (qword_28005BCB8 != -1)
  {
    swift_once();
  }

  [qword_28005D028 unlock];
  v37 = v54;
  if (qword_28005BC40 != -1)
  {
    swift_once();
  }

  v38 = __swift_project_value_buffer(v8, qword_28005D100);
  (*(v34 + 16))(v37, v38, v8);
  v39 = sub_26618C620();
  sub_26618C650();
  v40 = sub_26618CB50();
  if (sub_26618CBB0())
  {

    sub_26618C680();

    v41 = v50;
    v42 = v8;
    if ((*(v35 + 88))(v36, v50) == *MEMORY[0x277D85B00])
    {
      v43 = "[Error] Interval already ended";
    }

    else
    {
      (*(v35 + 8))(v36, v41);
      v43 = "";
    }

    v44 = swift_slowAlloc();
    *v44 = 0;
    v45 = sub_26618C5E0();
    _os_signpost_emit_with_name_impl(&dword_2660B7000, v39, v40, v45, "appLaunchFlowProviderWarmup", v43, v44, 2u);
    MEMORY[0x26677CC30](v44, -1, -1);
    v8 = v42;
  }

  (*(v57 + 8))(v33, v58);
  return (*(v34 + 8))(v37, v8);
}

uint64_t sub_266180794(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t AppLaunchFlowProvider.findFlow(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v198 = a2;
  v193 = sub_26618B7B0();
  v3 = OUTLINED_FUNCTION_2_2(v193);
  v187 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_5_9();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_17_5();
  v186 = v8;
  OUTLINED_FUNCTION_65_0();
  MEMORY[0x28223BE20](v9);
  v189 = &v175 - v10;
  OUTLINED_FUNCTION_18_2();
  v195 = sub_26618B7F0();
  v11 = OUTLINED_FUNCTION_2_2(v195);
  v192 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_69_0();
  v185 = v15;
  OUTLINED_FUNCTION_65_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_17_5();
  v191 = v17;
  OUTLINED_FUNCTION_65_0();
  MEMORY[0x28223BE20](v18);
  v194 = &v175 - v19;
  OUTLINED_FUNCTION_18_2();
  v183 = sub_26618B840();
  v20 = OUTLINED_FUNCTION_2_2(v183);
  v182 = v21;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_1_4();
  v181 = v25 - v24;
  OUTLINED_FUNCTION_18_2();
  v26 = sub_26618C6B0();
  v27 = OUTLINED_FUNCTION_2_2(v26);
  v199 = v28;
  v200 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_5_9();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_17_5();
  OUTLINED_FUNCTION_5_9();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_17_5();
  v188 = v33;
  OUTLINED_FUNCTION_65_0();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_17_5();
  v190 = v35;
  OUTLINED_FUNCTION_65_0();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_17_5();
  OUTLINED_FUNCTION_5_9();
  MEMORY[0x28223BE20](v37);
  v197 = (&v175 - v38);
  OUTLINED_FUNCTION_18_2();
  v39 = sub_26618C0E0();
  v40 = OUTLINED_FUNCTION_2_2(v39);
  v42 = v41;
  v44 = *(v43 + 64);
  v45 = MEMORY[0x28223BE20](v40);
  v47 = &v175 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v49 = &v175 - v48;
  v50 = sub_26618B800();
  v51 = OUTLINED_FUNCTION_2_2(v50);
  v53 = v52;
  v55 = *(v54 + 64);
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_5_9();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_17_5();
  OUTLINED_FUNCTION_5_9();
  v58 = MEMORY[0x28223BE20](v57);
  v60 = &v175 - v59;
  MEMORY[0x28223BE20](v58);
  v62 = (&v175 - v61);
  v63 = *(v53 + 16);
  v180 = a1;
  v64 = a1;
  v65 = v63;
  (v63)(&v175 - v61, v64, v50);
  v66 = (*(v53 + 88))(v62, v50);
  if (v66 == *MEMORY[0x277D5C128])
  {
    v67 = OUTLINED_FUNCTION_7_18();
    v68(v67);
    (*(v42 + 32))(v49, v62, v39);
    if (qword_2814B2C38 != -1)
    {
      OUTLINED_FUNCTION_2_5();
    }

    __swift_project_value_buffer(v200, qword_2814B4A80);
    OUTLINED_FUNCTION_3_24();
    v69(v197);
    (*(v42 + 16))(v47, v49, v39);
    v70 = sub_26618C690();
    v71 = sub_26618CAD0();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = OUTLINED_FUNCTION_49_0();
      v194 = v72;
      v195 = OUTLINED_FUNCTION_45_1();
      *&v201 = v195;
      *v72 = 136315138;
      sub_266184A60(&qword_2814B47E0, MEMORY[0x277D5F458]);
      v73 = sub_26618CFD0();
      v75 = v74;
      v76 = OUTLINED_FUNCTION_13_10();
      v62(v76);
      v77 = sub_266103A98(v73, v75, &v201);

      v78 = v194;
      *(v194 + 4) = v77;
      _os_log_impl(&dword_2660B7000, v70, v71, "Received NLv3 parse: %s", v78, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v195);
      OUTLINED_FUNCTION_7_2();
      OUTLINED_FUNCTION_7_2();

      (*(v199 + 8))(v197, v200);
    }

    else
    {

      v97 = OUTLINED_FUNCTION_13_10();
      v62(v97);
      (*(v53 + 8))(v197, v200);
    }

    sub_266181928(v49, v198);
    return (v62)(v49, v39);
  }

  if (v66 == *MEMORY[0x277D5C150])
  {
    v79 = OUTLINED_FUNCTION_7_18();
    v80(v79);
    v81 = v192;
    v82 = v194;
    v83 = v195;
    (*(v192 + 32))(v194, v62, v195);
    if (qword_2814B2C38 != -1)
    {
      OUTLINED_FUNCTION_2_5();
    }

    v84 = v200;
    __swift_project_value_buffer(v200, qword_2814B4A80);
    OUTLINED_FUNCTION_3_24();
    v85 = v190;
    v86(v190);
    v87 = *(v81 + 16);
    v88 = v191;
    v87(v191, v82, v83);
    v89 = sub_26618C690();
    v90 = sub_26618CAD0();
    if (os_log_type_enabled(v89, v90))
    {
      v91 = OUTLINED_FUNCTION_49_0();
      v197 = OUTLINED_FUNCTION_45_1();
      *&v201 = v197;
      *v91 = 136315138;
      v87(v185, v88, v195);
      v92 = sub_26618C8D0();
      v93 = v53;
      v95 = v94;
      OUTLINED_FUNCTION_11_10();
      v88();
      v96 = sub_266103A98(v92, v95, &v201);

      *(v91 + 4) = v96;
      _os_log_impl(&dword_2660B7000, v89, v90, "Received direct invocation parse: %s", v91, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v197);
      OUTLINED_FUNCTION_7_2();
      v83 = v195;
      OUTLINED_FUNCTION_7_2();

      (*(v93 + 8))(v85, v200);
    }

    else
    {

      OUTLINED_FUNCTION_11_10();
      v88();
      (*(v53 + 8))(v85, v84);
    }

    v117 = v194;
    sub_266183B18();
    return (v88)(v117, v83);
  }

  if (v66 == *MEMORY[0x277D5C140])
  {
    v99 = OUTLINED_FUNCTION_7_18();
    v100(v99);
    v101 = v187;
    v102 = v189;
    v103 = v193;
    (*(v187 + 32))(v189, v62, v193);
    if (qword_2814B2C38 != -1)
    {
      OUTLINED_FUNCTION_2_5();
    }

    v104 = v200;
    __swift_project_value_buffer(v200, qword_2814B4A80);
    OUTLINED_FUNCTION_3_24();
    v105 = v188;
    v106(v188);
    v107 = v186;
    v197 = *(v101 + 16);
    (v197)(v186, v102, v103);
    v108 = sub_26618C690();
    v109 = sub_26618CAD0();
    if (os_log_type_enabled(v108, v109))
    {
      v110 = OUTLINED_FUNCTION_49_0();
      v195 = OUTLINED_FUNCTION_45_1();
      *&v201 = v195;
      *v110 = 136315138;
      v111 = v179;
      (v197)(v179, v107, v103);
      v112 = sub_26618C8D0();
      v114 = v113;
      OUTLINED_FUNCTION_11_10();
      v111(v107, v193);
      v115 = sub_266103A98(v112, v114, &v201);
      v103 = v193;

      *(v110 + 4) = v115;
      _os_log_impl(&dword_2660B7000, v108, v109, "Received Pegasus results parse: %s", v110, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v195);
      OUTLINED_FUNCTION_7_2();
      v102 = v189;
      OUTLINED_FUNCTION_7_2();

      v116 = v111;
      (*(v53 + 8))(v188, v200);
    }

    else
    {

      v116 = *(v101 + 8);
      v116(v107, v103);
      (*(v53 + 8))(v105, v104);
    }

    *(&v202 + 1) = v103;
    v203 = &off_2877CAAC8;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v201);
    (v197)(boxed_opaque_existential_0, v102, v103);
    OUTLINED_FUNCTION_16_12();
    v116(v102, v103);
    return __swift_destroy_boxed_opaque_existential_1(&v201);
  }

  if (v66 == *MEMORY[0x277D5C148])
  {
    v118 = OUTLINED_FUNCTION_7_18();
    v119(v118);
    v120 = *v62;
    v203 = 0;
    v201 = 0u;
    v202 = 0u;
    sub_26618C410();
    sub_2660D30C4(&v201, &qword_28005D048, &qword_266196C98);
    if (qword_2814B2C38 != -1)
    {
      OUTLINED_FUNCTION_2_5();
    }

    v121 = v200;
    __swift_project_value_buffer(v200, qword_2814B4A80);
    OUTLINED_FUNCTION_3_24();
    v122 = v184;
    v123(v184);
    v124 = v120;
    v125 = sub_26618C690();
    v126 = sub_26618CAD0();

    if (os_log_type_enabled(v125, v126))
    {
      v127 = OUTLINED_FUNCTION_49_0();
      v128 = OUTLINED_FUNCTION_45_1();
      *&v201 = v128;
      *v127 = 136315138;
      v129 = v124;
      v130 = [v129 description];
      v131 = v53;
      v132 = sub_26618C8B0();
      v134 = v133;

      v135 = sub_266103A98(v132, v134, &v201);

      *(v127 + 4) = v135;
      _os_log_impl(&dword_2660B7000, v125, v126, "Received Pommes response parse: %s", v127, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v128);
      OUTLINED_FUNCTION_7_2();
      OUTLINED_FUNCTION_7_2();

      (*(v131 + 8))(v184, v200);
    }

    else
    {

      (*(v53 + 8))(v122, v121);
    }

    *(&v202 + 1) = sub_26618C430();
    v203 = &off_2877CAAD8;
    *&v201 = v124;
    OUTLINED_FUNCTION_16_12();
    return __swift_destroy_boxed_opaque_existential_1(&v201);
  }

  if (v66 == *MEMORY[0x277D5C160])
  {
    (*(v53 + 96))(v62, v50);
    (*(v182 + 32))(v181, v62, v183);
    if (qword_2814B2C38 != -1)
    {
      OUTLINED_FUNCTION_2_5();
    }

    v137 = v200;
    v138 = __swift_project_value_buffer(v200, qword_2814B4A80);
    v139 = v199;
    v140 = v177;
    (*(v199 + 16))(v177, v138, v137);
    v141 = OUTLINED_FUNCTION_17_13();
    (v65)(v141);
    v197 = v65;
    v142 = sub_26618C690();
    v143 = sub_26618CAD0();
    if (os_log_type_enabled(v142, v143))
    {
      v144 = OUTLINED_FUNCTION_49_0();
      v195 = OUTLINED_FUNCTION_45_1();
      *&v201 = v195;
      *v144 = 136315138;
      v145 = v176;
      (v197)(v176, v60, v50);
      v146 = sub_266145588(v145);
      v147 = v140;
      v148 = v146;
      v150 = v149;
      (*(v53 + 8))(v60, v50);
      v151 = sub_266103A98(v148, v150, &v201);

      *(v144 + 4) = v151;
      _os_log_impl(&dword_2660B7000, v142, v143, "Received USO parse: %s", v144, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v195);
      OUTLINED_FUNCTION_7_2();
      OUTLINED_FUNCTION_7_2();

      (*(v139 + 8))(v147, v200);
    }

    else
    {

      (*(v53 + 8))(v60, v50);
      (*(v139 + 8))(v140, v137);
    }

    v170 = v183;
    *(&v202 + 1) = v183;
    v203 = &off_2877CAAB8;
    v171 = __swift_allocate_boxed_opaque_existential_0(&v201);
    v172 = v182;
    v173 = v181;
    (*(v182 + 16))(v171, v181, v170);
    OUTLINED_FUNCTION_16_12();
    (*(v172 + 8))(v173, v170);
    return __swift_destroy_boxed_opaque_existential_1(&v201);
  }

  if (qword_2814B2C38 != -1)
  {
    OUTLINED_FUNCTION_2_5();
  }

  v152 = v200;
  v153 = __swift_project_value_buffer(v200, qword_2814B4A80);
  v154 = v199;
  v155 = v178;
  (*(v199 + 16))(v178, v153, v152);
  v156 = v175;
  v157 = OUTLINED_FUNCTION_17_13();
  (v65)(v157);
  v158 = v65;
  v159 = sub_26618C690();
  v160 = sub_26618CAB0();
  if (os_log_type_enabled(v159, v160))
  {
    v161 = OUTLINED_FUNCTION_49_0();
    v197 = v158;
    v162 = v161;
    v195 = v161;
    v196 = OUTLINED_FUNCTION_45_1();
    *&v201 = v196;
    *v162 = 136315138;
    v163 = v176;
    (v197)(v176, v156, v50);
    v164 = sub_266145588(v163);
    v166 = v165;
    LODWORD(v197) = v160;
    v167 = OUTLINED_FUNCTION_12_15();
    v160(v167);
    v168 = sub_266103A98(v164, v166, &v201);

    v169 = v195;
    *(v195 + 4) = v168;
    _os_log_impl(&dword_2660B7000, v159, v197, "Received unknown parse: %s", v169, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v196);
    OUTLINED_FUNCTION_7_2();
    OUTLINED_FUNCTION_7_2();

    (*(v154 + 8))(v178, v200);
  }

  else
  {

    v174 = OUTLINED_FUNCTION_12_15();
    v160(v174);
    (*(v154 + 8))(v155, v200);
  }

  sub_26618AFF0();
  return (v160)(v62, v50);
}

uint64_t sub_266181928@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v3 = sub_26618C6B0();
  v57 = *(v3 - 8);
  v58 = v3;
  v4 = *(v57 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v55 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v55 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v55 - v14;
  v16 = type metadata accessor for AppLaunchIntent();
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v55 - v21;
  v23 = sub_26618C0E0();
  (*(*(v23 - 8) + 16))(v22, a1, v23);
  if (qword_2814B3D30 != -1)
  {
    swift_once();
  }

  sub_266184A60(&qword_2814B3D28, type metadata accessor for AppLaunchIntent);
  sub_26618BDA0();
  if (!LOBYTE(v60[0]))
  {
    goto LABEL_7;
  }

  if (LOBYTE(v60[0]) == 1)
  {
    if (qword_2814B2C38 != -1)
    {
      swift_once();
    }

    v30 = v58;
    v31 = __swift_project_value_buffer(v58, qword_2814B4A80);
    v32 = v57;
    (*(v57 + 16))(v13, v31, v30);
    v33 = sub_26618C690();
    v34 = sub_26618CAD0();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_2660B7000, v33, v34, "AppLaunchFlowProvider.findFlow() returning closeAppFlow", v35, 2u);
      MEMORY[0x26677CC30](v35, -1, -1);
    }

    (*(v32 + 8))(v13, v30);
    type metadata accessor for CloseAppWrapperFlow();
    v60[0] = sub_2660DD940();
    sub_266184A60(&qword_28005C168, type metadata accessor for CloseAppWrapperFlow);
    sub_26618AF90();

    goto LABEL_18;
  }

  if (LOBYTE(v60[0]) == 11)
  {
    if (qword_2814B3DD8 != -1)
    {
      swift_once();
    }

    sub_26618BDA0();
    if (!v60[1])
    {
      if (qword_2814B2C38 != -1)
      {
        swift_once();
      }

      v49 = v58;
      v50 = __swift_project_value_buffer(v58, qword_2814B4A80);
      v51 = v57;
      (*(v57 + 16))(v10, v50, v49);
      v52 = sub_26618C690();
      v53 = sub_26618CAD0();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        *v54 = 0;
        _os_log_impl(&dword_2660B7000, v52, v53, "AppLaunchFlowProvider.findFlow() returning launchAppWrapperFlow when an appProvider is not specified", v54, 2u);
        MEMORY[0x26677CC30](v54, -1, -1);
      }

      (*(v51 + 8))(v10, v49);
      goto LABEL_12;
    }

LABEL_28:
    sub_26618AFF0();
    return sub_2660DD7D0(v22);
  }

  if (LOBYTE(v60[0]) != 5)
  {
    if (qword_2814B2C38 != -1)
    {
      swift_once();
    }

    v36 = v58;
    v37 = __swift_project_value_buffer(v58, qword_2814B4A80);
    v38 = v57;
    (*(v57 + 16))(v7, v37, v36);
    sub_266184888(v22, v20);
    v39 = sub_26618C690();
    v40 = sub_26618CAB0();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v60[0] = v56;
      *v41 = 136315138;
      v42 = v40;
      sub_26618BDA0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005D050, &qword_266196D28);
      v43 = sub_26618C8D0();
      v45 = v44;
      sub_2660DD7D0(v20);
      v46 = sub_266103A98(v43, v45, v60);

      *(v41 + 4) = v46;
      _os_log_impl(&dword_2660B7000, v39, v42, "Unexpected verb: %s", v41, 0xCu);
      v47 = v56;
      __swift_destroy_boxed_opaque_existential_1(v56);
      MEMORY[0x26677CC30](v47, -1, -1);
      MEMORY[0x26677CC30](v41, -1, -1);

      (*(v38 + 8))(v7, v58);
    }

    else
    {

      sub_2660DD7D0(v20);
      (*(v38 + 8))(v7, v36);
    }

    goto LABEL_28;
  }

LABEL_7:
  if (qword_2814B2C38 != -1)
  {
    swift_once();
  }

  v24 = v58;
  v25 = __swift_project_value_buffer(v58, qword_2814B4A80);
  v26 = v57;
  (*(v57 + 16))(v15, v25, v24);
  v27 = sub_26618C690();
  v28 = sub_26618CAD0();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_2660B7000, v27, v28, "AppLaunchFlowProvider.findFlow() returning launchAppWrapperFlow", v29, 2u);
    MEMORY[0x26677CC30](v29, -1, -1);
  }

  (*(v26 + 8))(v15, v24);
LABEL_12:
  __swift_project_boxed_opaque_existential_1(v56, v56[3]);
  sub_26617E1F4();
LABEL_18:
  sub_26618B000();

  return sub_2660DD7D0(v22);
}

uint64_t sub_266182128@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v191 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005D058, &qword_266196D30);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v183 = &v173 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v181 = &v173 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v182 = &v173 - v10;
  MEMORY[0x28223BE20](v9);
  v178 = &v173 - v11;
  v190 = sub_26618C6B0();
  v188 = *(v190 - 8);
  v12 = *(v188 + 64);
  v13 = MEMORY[0x28223BE20](v190);
  v15 = &v173 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v180 = &v173 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v184 = &v173 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v176 = &v173 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v175 = &v173 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v179 = &v173 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v177 = &v173 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v174 = &v173 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v173 - v31;
  v33 = MEMORY[0x28223BE20](v30);
  v35 = &v173 - v34;
  v36 = MEMORY[0x28223BE20](v33);
  v186 = &v173 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v185 = &v173 - v39;
  MEMORY[0x28223BE20](v38);
  v187 = &v173 - v40;
  v41 = sub_26618A620();
  v42 = *(v41 - 8);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v41);
  v45 = &v173 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = a1[3];
  v46 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v47);
  if ((*(v46 + 8))(v47, v46))
  {
    v194[3] = &type metadata for Features;
    v194[4] = sub_2661848EC();
    LOBYTE(v194[0]) = 0;
    v48 = sub_26618B880();
    __swift_destroy_boxed_opaque_existential_1(v194);
    if (v48)
    {
      v49 = sub_26613C14C();
      if (v50)
      {
        v51 = v49;
        v52 = v50;
        v53 = sub_26613B704();
        if (!v54)
        {

          if (qword_2814B2C38 != -1)
          {
            swift_once();
          }

          v80 = v190;
          v81 = __swift_project_value_buffer(v190, qword_2814B4A80);
          v82 = v188;
          (*(v188 + 16))(v32, v81, v80);
          v83 = sub_26618C690();
          v84 = sub_26618CAD0();
          if (os_log_type_enabled(v83, v84))
          {
            v85 = swift_slowAlloc();
            *v85 = 0;
            _os_log_impl(&dword_2660B7000, v83, v84, "AppLaunchFlowProvider.findFlow() returning noFlow because appName is not present in USO", v85, 2u);
            MEMORY[0x26677CC30](v85, -1, -1);
          }

          (*(v82 + 8))(v32, v80);
          goto LABEL_46;
        }

        v55 = v54;
        v183 = v53;
        v184 = v51;
        v56 = v189;
        v57 = v189[9];
        __swift_project_boxed_opaque_existential_1(v189 + 5, v189[8]);
        if (sub_26618B140() & 1) != 0 || (v58 = v56[9], __swift_project_boxed_opaque_existential_1(v56 + 5, v56[8]), (sub_26618B160()))
        {
          v59 = __swift_project_boxed_opaque_existential_1(v56 + 10, v56[13]);
          v60 = v56[9];
          __swift_project_boxed_opaque_existential_1(v56 + 5, v56[8]);
          sub_26618B100();
          v61 = *v59;
          LOBYTE(v61) = sub_26615FEEC();
          v62 = v56;
          v63 = (v42 + 8);
          v64 = *(v42 + 8);
          v64(v45, v41);
          if (v61)
          {
            __swift_project_boxed_opaque_existential_1(v62 + 25, v62[28]);
            v65 = sub_2660FA19C();
            if (v65[2])
            {
              v67 = v65[4];
              v66 = v65[5];

              v68 = v188;
              v69 = v190;
            }

            else
            {

              v116 = sub_26613B704();
              v68 = v188;
              v69 = v190;
              if (!v117)
              {
                goto LABEL_53;
              }

              v67 = v116;
              v66 = v117;
            }

            v118 = *__swift_project_boxed_opaque_existential_1(v189 + 10, v189[13]);
            if (sub_26616000C(v67, v66))
            {

LABEL_53:
              if (qword_2814B2C38 != -1)
              {
                swift_once();
              }

              v119 = __swift_project_value_buffer(v69, qword_2814B4A80);
              v120 = v186;
              (*(v68 + 16))(v186, v119, v69);

              v121 = sub_26618C690();
              v122 = sub_26618CAD0();

              if (os_log_type_enabled(v121, v122))
              {
                v123 = swift_slowAlloc();
                v124 = swift_slowAlloc();
                v194[0] = v124;
                *v123 = 136315394;
                v125 = sub_266103A98(v183, v55, v194);

                *(v123 + 4) = v125;
                *(v123 + 12) = 2080;
                v126 = sub_266103A98(v184, v52, v194);

                *(v123 + 14) = v126;
                _os_log_impl(&dword_2660B7000, v121, v122, "AppLaunchFlowProvider.findFlow() returning deepLaunchWrapperFlow for App: %s and Action: %s", v123, 0x16u);
                swift_arrayDestroy();
                MEMORY[0x26677CC30](v124, -1, -1);
                MEMORY[0x26677CC30](v123, -1, -1);

                (*(v68 + 8))(v186, v69);
              }

              else
              {

                (*(v68 + 8))(v120, v69);
              }

              type metadata accessor for DeepLaunchWrapperFlow();
              v194[0] = sub_2660CE048();
              v94 = &qword_28005C070;
              v95 = type metadata accessor for DeepLaunchWrapperFlow;
LABEL_63:
              sub_266184A60(v94, v95);
              sub_26618AF90();

              goto LABEL_24;
            }

            if (qword_2814B2C38 != -1)
            {
              swift_once();
            }

            v127 = __swift_project_value_buffer(v69, qword_2814B4A80);
            v128 = v185;
            (*(v68 + 16))(v185, v127, v69);

            v129 = sub_26618C690();
            v130 = sub_26618CAD0();

            if (os_log_type_enabled(v129, v130))
            {
              v131 = swift_slowAlloc();
              v132 = swift_slowAlloc();
              v194[0] = v132;
              *v131 = 136315138;
              v133 = sub_266103A98(v67, v66, v194);

              *(v131 + 4) = v133;
              _os_log_impl(&dword_2660B7000, v129, v130, "AppLaunchFlowProvider.findFlow() returning noFlow because app %s is not in scope", v131, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v132);
              MEMORY[0x26677CC30](v132, -1, -1);
              MEMORY[0x26677CC30](v131, -1, -1);
            }

            else
            {
            }

            (*(v68 + 8))(v128, v69);
          }

          else
          {

            if (qword_2814B2C38 != -1)
            {
              swift_once();
            }

            v96 = v190;
            v97 = __swift_project_value_buffer(v190, qword_2814B4A80);
            v98 = v188;
            v99 = v187;
            (*(v188 + 16))(v187, v97, v96);
            sub_266184940(v189, v194);
            v100 = sub_26618C690();
            v101 = sub_26618CAD0();
            if (os_log_type_enabled(v100, v101))
            {
              v102 = swift_slowAlloc();
              v186 = v63;
              v103 = v102;
              v104 = swift_slowAlloc();
              v193 = v104;
              *v103 = 136315138;
              LODWORD(v189) = v101;
              __swift_project_boxed_opaque_existential_1(v195, v195[3]);
              sub_26618B100();
              v105 = sub_26618A610();
              v107 = v106;
              v64(v45, v41);
              sub_266184978(v194);
              v108 = sub_266103A98(v105, v107, &v193);

              *(v103 + 4) = v108;
              _os_log_impl(&dword_2660B7000, v100, v189, "AppLaunchFlowProvider.findFlow() returning noFlow because it is not available in %s", v103, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v104);
              MEMORY[0x26677CC30](v104, -1, -1);
              MEMORY[0x26677CC30](v103, -1, -1);

              (*(v98 + 8))(v187, v190);
            }

            else
            {

              (*(v98 + 8))(v99, v96);
              sub_266184978(v194);
            }
          }

LABEL_46:
          sub_26618AFF0();
        }

        if (qword_2814B2C38 != -1)
        {
          swift_once();
        }

        v109 = v190;
        v110 = __swift_project_value_buffer(v190, qword_2814B4A80);
        v111 = v188;
        (*(v188 + 16))(v35, v110, v109);
        v112 = sub_26618C690();
        v113 = sub_26618CAD0();
        if (os_log_type_enabled(v112, v113))
        {
          v114 = swift_slowAlloc();
          *v114 = 0;
          v115 = "AppLaunchFlowProvider.findFlow() returning noFlow because device is not iOS";
LABEL_44:
          _os_log_impl(&dword_2660B7000, v112, v113, v115, v114, 2u);
          MEMORY[0x26677CC30](v114, -1, -1);
        }

LABEL_45:

        (*(v111 + 8))(v35, v109);
        goto LABEL_46;
      }
    }

    if (sub_26618C0C0() == 0xD000000000000013 && 0x800000026619A580 == v70)
    {
    }

    else
    {
      v72 = sub_26618D000();

      if ((v72 & 1) == 0)
      {
        if ((sub_2661444D4() & 1) == 0)
        {
          sub_26613BA0C();
          switch(v86)
          {
            case 1:
              goto LABEL_74;
            case 2:
            case 3:
              v134 = v183;
              sub_266184404(v183);
              v135 = sub_26618B020();
              if (__swift_getEnumTagSinglePayload(v134, 1, v135) != 1)
              {
                goto LABEL_86;
              }

              sub_2660D30C4(v134, &qword_28005D058, &qword_266196D30);
              if (qword_2814B2C38 != -1)
              {
                swift_once();
              }

              v136 = v190;
              v137 = __swift_project_value_buffer(v190, qword_2814B4A80);
              v138 = v188;
              v139 = v179;
              (*(v188 + 16))(v179, v137, v136);
              v140 = sub_26618C690();
              v141 = sub_26618CAD0();
              if (os_log_type_enabled(v140, v141))
              {
                v142 = swift_slowAlloc();
                *v142 = 0;
                _os_log_impl(&dword_2660B7000, v140, v141, "AppLaunchFlowProvider.findFlow() returning closeAppFlow", v142, 2u);
                MEMORY[0x26677CC30](v142, -1, -1);
              }

              (*(v138 + 8))(v139, v136);
              type metadata accessor for CloseAppWrapperFlow();
              v194[0] = sub_2660DD940();
              v94 = &qword_28005C168;
              v95 = type metadata accessor for CloseAppWrapperFlow;
              goto LABEL_63;
            case 4:
              v134 = v178;
              sub_266183CE8(v178);
              v135 = sub_26618B020();
              if (__swift_getEnumTagSinglePayload(v134, 1, v135) != 1)
              {
                goto LABEL_86;
              }

              sub_2660D30C4(v134, &qword_28005D058, &qword_266196D30);
LABEL_74:
              v134 = v182;
              sub_266183EEC(v182);
              v135 = sub_26618B020();
              if (__swift_getEnumTagSinglePayload(v134, 1, v135) != 1)
              {
                goto LABEL_86;
              }

              sub_2660D30C4(v134, &qword_28005D058, &qword_266196D30);
              if (sub_26613EAFC())
              {
                if (qword_2814B2C38 != -1)
                {
                  swift_once();
                }

                v109 = v190;
                v143 = __swift_project_value_buffer(v190, qword_2814B4A80);
                v111 = v188;
                v35 = v174;
                (*(v188 + 16))(v174, v143, v109);
                v112 = sub_26618C690();
                v113 = sub_26618CAD0();
                if (os_log_type_enabled(v112, v113))
                {
                  v114 = swift_slowAlloc();
                  *v114 = 0;
                  v115 = "AppLaunchFlowProvider.findFlow() parse is verbless or summarise genre, which we cannot handle, returning .noFlow";
                  goto LABEL_44;
                }

                goto LABEL_45;
              }

LABEL_80:
              v134 = v181;
              v144 = v189;
              sub_266183F90(v181);
              v135 = sub_26618B020();
              if (__swift_getEnumTagSinglePayload(v134, 1, v135) != 1)
              {
LABEL_86:

                return (*(*(v135 - 8) + 32))(v191, v134, v135);
              }

              sub_2660D30C4(v134, &qword_28005D058, &qword_266196D30);
              if (qword_2814B2C38 != -1)
              {
                swift_once();
              }

              v145 = v190;
              v146 = __swift_project_value_buffer(v190, qword_2814B4A80);
              v147 = v188;
              v148 = v177;
              (*(v188 + 16))(v177, v146, v145);
              v149 = sub_26618C690();
              v150 = sub_26618CAD0();
              if (os_log_type_enabled(v149, v150))
              {
                v151 = swift_slowAlloc();
                *v151 = 0;
                _os_log_impl(&dword_2660B7000, v149, v150, "AppLaunchFlowProvider.findFlow() returning launchAppWrapperFlow", v151, 2u);
                MEMORY[0x26677CC30](v151, -1, -1);
              }

              (*(v147 + 8))(v148, v145);
              __swift_project_boxed_opaque_existential_1(v144, v144[3]);
              sub_26617E1F4();
              goto LABEL_24;
            case 5:
            case 7:
            case 8:
              if (qword_2814B2C38 != -1)
              {
                swift_once();
              }

              v87 = v190;
              v88 = __swift_project_value_buffer(v190, qword_2814B4A80);
              v89 = v188;
              v90 = v184;
              (*(v188 + 16))(v184, v88, v87);
              v91 = sub_26618C690();
              v92 = sub_26618CAD0();
              if (os_log_type_enabled(v91, v92))
              {
                v93 = swift_slowAlloc();
                *v93 = 0;
                _os_log_impl(&dword_2660B7000, v91, v92, "AppLaunchFlowProvider.findFlow() returning removeAppFlow", v93, 2u);
                MEMORY[0x26677CC30](v93, -1, -1);
              }

              (*(v89 + 8))(v90, v87);
              type metadata accessor for RemoveAppFlow();
              v194[0] = sub_2660ED764();
              v94 = &qword_28005C2E0;
              v95 = type metadata accessor for RemoveAppFlow;
              goto LABEL_63;
            case 6:
              v163 = a1[4];
              __swift_project_boxed_opaque_existential_1(a1, a1[3]);
              sub_2660C9080();
              if (v164)
              {
                v165 = v188;
                v166 = v190;
                if (qword_2814B2C38 != -1)
                {
                  swift_once();
                }

                v167 = __swift_project_value_buffer(v166, qword_2814B4A80);
                v168 = v175;
                (*(v165 + 16))(v175, v167, v166);
                v169 = sub_26618C690();
                v170 = sub_26618CAD0();
                if (os_log_type_enabled(v169, v170))
                {
                  v171 = swift_slowAlloc();
                  *v171 = 0;
                  _os_log_impl(&dword_2660B7000, v169, v170, "AppLaunchFlowProvider.findFlow() returning installAppFlow", v171, 2u);
                  MEMORY[0x26677CC30](v171, -1, -1);
                }

                (*(v165 + 8))(v168, v166);
                type metadata accessor for InstallAppFlow();
                v194[0] = sub_2660DF91C();
                v94 = &qword_28005C1E0;
                v95 = type metadata accessor for InstallAppFlow;
                goto LABEL_63;
              }

              v111 = v188;
              v109 = v190;
              if (qword_2814B2C38 != -1)
              {
                swift_once();
              }

              v172 = __swift_project_value_buffer(v109, qword_2814B4A80);
              v35 = v176;
              (*(v111 + 16))(v176, v172, v109);
              v112 = sub_26618C690();
              v113 = sub_26618CAB0();
              if (os_log_type_enabled(v112, v113))
              {
                v114 = swift_slowAlloc();
                *v114 = 0;
                v115 = "AppLaunchFlowProvider.findFlow() received install USOTask, but will NOT handle because request did not originate from Pegasus";
                goto LABEL_44;
              }

              break;
            case 9:
              if (qword_2814B2C38 != -1)
              {
                swift_once();
              }

              v152 = v190;
              v153 = __swift_project_value_buffer(v190, qword_2814B4A80);
              v154 = v188;
              v155 = v180;
              (*(v188 + 16))(v180, v153, v152);

              v156 = sub_26618C690();
              v157 = sub_26618CAB0();

              if (os_log_type_enabled(v156, v157))
              {
                v158 = swift_slowAlloc();
                v159 = swift_slowAlloc();
                v194[0] = v159;
                *v158 = 136315138;
                v160 = sub_26618C0B0();
                v162 = sub_266103A98(v160, v161, v194);

                *(v158 + 4) = v162;
                _os_log_impl(&dword_2660B7000, v156, v157, "Unknown USO verb: %s", v158, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v159);
                MEMORY[0x26677CC30](v159, -1, -1);
                MEMORY[0x26677CC30](v158, -1, -1);
              }

              (*(v154 + 8))(v155, v152);
              goto LABEL_46;
            default:
              goto LABEL_80;
          }

          goto LABEL_45;
        }

        __swift_project_boxed_opaque_existential_1(v189, v189[3]);
        sub_26617E7B4();
LABEL_24:
        sub_26618B000();
      }
    }

    __swift_project_boxed_opaque_existential_1(v189, v189[3]);
    sub_26617E6AC();
    goto LABEL_24;
  }

  if (qword_2814B2C38 != -1)
  {
    swift_once();
  }

  v73 = v190;
  v74 = __swift_project_value_buffer(v190, qword_2814B4A80);
  v75 = v188;
  (*(v188 + 16))(v15, v74, v73);
  v76 = sub_26618C690();
  v77 = sub_26618CAB0();
  if (os_log_type_enabled(v76, v77))
  {
    v78 = swift_slowAlloc();
    *v78 = 0;
    _os_log_impl(&dword_2660B7000, v76, v77, "No USO task found in input", v78, 2u);
    MEMORY[0x26677CC30](v78, -1, -1);
  }

  (*(v75 + 8))(v15, v73);
  return sub_26618AFF0();
}

uint64_t sub_266183B18()
{
  v1 = v0;
  v3 = sub_26618B7D0();
  v4 = v2;
  v5 = v3 == 0xD000000000000022 && 0x800000026619A520 == v2;
  if (v5 || (sub_26618D000() & 1) != 0)
  {

    __swift_project_boxed_opaque_existential_1(v1, v1[3]);
    sub_26617E1F4();
    sub_26618B000();
  }

  if (v3 == 0xD000000000000021 && 0x800000026619A550 == v4)
  {

    goto LABEL_18;
  }

  v8 = sub_26618D000();

  if (v8)
  {
LABEL_18:
    type metadata accessor for CloseAppWrapperFlow();
    sub_2660DD940();
    sub_266184A60(&qword_28005C168, type metadata accessor for CloseAppWrapperFlow);
    sub_26618AF90();

    sub_26618B000();
  }

  return sub_26618AFF0();
}

uint64_t sub_266183CE8@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005D068, &unk_266196D38);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = sub_26618B590();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_project_boxed_opaque_existential_1((v1 + 200), *(v1 + 224));
  v10 = sub_2660FA19C();
  v17[0] = 0xD000000000000011;
  v17[1] = 0x800000026619A5A0;
  v16 = v17;
  v11 = sub_266158320(sub_26615DA50, v15, v10);

  if (v11)
  {
    sub_26618B800();
    sub_26618C270();
    sub_26618B580();
    sub_26618B010();
    (*(v6 + 8))(v9, v5);
    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = sub_26618B020();
  return __swift_storeEnumTagSinglePayload(a1, v12, 1, v13);
}

uint64_t sub_266183EEC@<X0>(uint64_t a1@<X8>)
{
  sub_26618BDF0();
  if (v5)
  {
    sub_26618BF80();
    if (swift_dynamicCast())
    {
    }
  }

  else
  {
    sub_2660D30C4(v4, &qword_28005C0A8, qword_26618FAE0);
  }

  v2 = sub_26618B020();
  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
}

uint64_t sub_266183F90@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_26618C6B0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_2661844A8())
  {
    __swift_project_boxed_opaque_existential_1(v1, v1[3]);
    sub_26617E5F4();
    sub_26618B000();

    v9 = sub_26618B020();
    v10 = a1;
    v11 = 0;
LABEL_20:

    return __swift_storeEnumTagSinglePayload(v10, v11, 1, v9);
  }

  v35 = v8;
  v36 = v5;
  v37 = v4;
  v38 = a1;
  __swift_project_boxed_opaque_existential_1(v1 + 25, v1[28]);
  v12 = sub_2660FA19C();
  v13 = v12;
  v14 = *(v12 + 16);
  if (!v14)
  {
LABEL_19:

    v9 = sub_26618B020();
    v10 = v38;
    v11 = 1;
    goto LABEL_20;
  }

  v15 = 0;
  v39 = 0x800000026619A5C0;
  v16 = (v12 + 40);
  while (1)
  {
    if (v15 >= *(v13 + 16))
    {
      __break(1u);
      goto LABEL_29;
    }

    v17 = *(v16 - 1);
    v18 = *v16;
    if (v17 != 0xD000000000000019 || 0x8000000266198E10 != v18)
    {
      v20 = *(v16 - 1);
      v21 = *v16;
      if ((sub_26618D000() & 1) == 0)
      {
        break;
      }
    }

    v22 = v2[9];
    __swift_project_boxed_opaque_existential_1(v2 + 5, v2[8]);
    if (sub_26618B190())
    {

      type metadata accessor for URLBasedLaunchFlow();
      v40 = sub_2660F2FD0();
      sub_266184A60(&qword_28005C320, type metadata accessor for URLBasedLaunchFlow);
      sub_26618AF90();

      v25 = v38;
      goto LABEL_27;
    }

LABEL_18:
    ++v15;
    v16 += 2;
    if (v14 == v15)
    {
      goto LABEL_19;
    }
  }

  v23 = v17 == 0xD000000000000018 && v39 == v18;
  if (!v23 && (sub_26618D000() & 1) == 0)
  {
    goto LABEL_18;
  }

  if (qword_2814B2C38 == -1)
  {
    goto LABEL_24;
  }

LABEL_29:
  swift_once();
LABEL_24:
  v26 = v37;
  v27 = __swift_project_value_buffer(v37, qword_2814B4A80);
  v29 = v35;
  v28 = v36;
  (*(v36 + 16))(v35, v27, v26);
  v30 = sub_26618C690();
  v31 = sub_26618CAD0();
  v32 = os_log_type_enabled(v30, v31);
  v25 = v38;
  if (v32)
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_2660B7000, v30, v31, "AppLaunchFlowProvider.findFlow() returning LaunchQuickNoteFlow", v33, 2u);
    MEMORY[0x26677CC30](v33, -1, -1);
  }

  (*(v28 + 8))(v29, v26);
  type metadata accessor for LaunchQuickNoteFlow();
  v40 = sub_2660E9D60();
  sub_266184A60(&qword_28005C260, type metadata accessor for LaunchQuickNoteFlow);
  sub_26618AF90();

LABEL_27:
  sub_26618B000();

  v34 = sub_26618B020();
  return __swift_storeEnumTagSinglePayload(v25, 0, 1, v34);
}

uint64_t sub_266184404@<X0>(uint64_t a1@<X8>)
{
  if (sub_2661844A8())
  {
    __swift_project_boxed_opaque_existential_1(v1, v1[3]);
    sub_26617E5F4();
    sub_26618B000();

    v3 = 0;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v1 + 25, v1[28]);
    sub_2660FA19C();

    v3 = 1;
  }

  v4 = sub_26618B020();

  return __swift_storeEnumTagSinglePayload(a1, v3, 1, v4);
}

BOOL sub_2661844A8()
{
  v0 = sub_26613D5E4();
  v1 = sub_26613C2C0(v0);
  v2 = sub_2661394E8(0x6C7070612E6D6F63, 0xEE00656D6F482E65);
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C518, &qword_266192350);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26618E180;
  *(inited + 32) = v2;
  *(inited + 40) = v4;
  *(inited + 48) = 0xD000000000000019;
  *(inited + 56) = 0x8000000266199B40;
  v6 = (sub_266184590(inited, v1) & 1) == 0 && sub_26617CE90(0xD000000000000019, 0x8000000266199B40, v1);

  return v6;
}

uint64_t sub_266184590(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = 0;
  v5 = *(result + 16);
  v17 = result + 32;
  v6 = a2 + 56;
LABEL_2:
  if (v4 == v5)
  {
LABEL_14:

    return v4 == v5;
  }

  if (v4 < *(v3 + 16))
  {
    if (*(a2 + 16))
    {
      v7 = (v17 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(a2 + 40);
      sub_26618D090();

      sub_26618C910();
      v11 = sub_26618D0C0();
      v12 = ~(-1 << *(a2 + 32));
      while (1)
      {
        v13 = v11 & v12;
        if (((*(v6 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v11 & v12)) & 1) == 0)
        {
          break;
        }

        v14 = (*(a2 + 48) + 16 * v13);
        if (*v14 != v9 || v14[1] != v8)
        {
          v16 = sub_26618D000();
          v11 = v13 + 1;
          if ((v16 & 1) == 0)
          {
            continue;
          }
        }

        ++v4;
        goto LABEL_2;
      }
    }

    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_2661846D8()
{
  v1 = *(sub_26618A5B0() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_26617F480(v2);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_266184750()
{
  result = qword_28005D040;
  if (!qword_28005D040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28005D038, &qword_266196C90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005D040);
  }

  return result;
}

uint64_t sub_2661847BC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 240))
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

uint64_t sub_2661847FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 240) = 1;
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

    *(result + 240) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_266184888(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppLaunchIntent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2661848EC()
{
  result = qword_28005D060;
  if (!qword_28005D060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005D060);
  }

  return result;
}

void sub_2661849D0(double **a1, uint64_t a2, uint64_t a3, double (*a4)(void))
{
  v5 = a4();
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

void sub_266184A08(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_26618C8A0();
  [a3 setName_];
}

uint64_t sub_266184A60(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_266184AB0()
{
  v1 = *(sub_26618A5B0() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_26618013C(v0 + v2, v3);
}

uint64_t sub_266184B3C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26611BBA8;

  return sub_26617FD68(a1, v4, v5, v6);
}

uint64_t OUTLINED_FUNCTION_16_12()
{
  v2 = *(v0 - 152);
  v3 = *(v0 - 168);

  return sub_266182128((v0 - 128), v2);
}

uint64_t OUTLINED_FUNCTION_17_13()
{
  result = v0;
  v3 = *(v1 - 296);
  return result;
}

uint64_t sub_266184C98()
{
  sub_2660BC49C();
  result = sub_26618CBC0();
  qword_2814B4AC8 = result;
  return result;
}

uint64_t sub_266184D44(uint64_t a1, uint64_t *a2)
{
  v3 = sub_26618C6B0();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_26618C6A0();
}

uint64_t LaunchAppApplicationUnsupportedReason.init(rawValue:)(uint64_t result)
{
  if ((result - 6) < 0xFFFFFFFFFFFFFFFBLL)
  {
    return 0;
  }

  return result;
}

id LaunchAppIntent.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LaunchAppIntent();
  return objc_msgSendSuper2(&v2, sel_init);
}

id LaunchAppIntent.init(coder:)(void *a1)
{
  v13 = type metadata accessor for LaunchAppIntent();
  v9 = OUTLINED_FUNCTION_0_28(v13, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id LaunchAppIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_26618C8A0();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithIdentifier:v6 backingStore:a3];

  return v7;
}

id LaunchAppIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_26618C8A0();
  }

  else
  {
    v5 = 0;
  }

  v16 = type metadata accessor for LaunchAppIntent();
  v12 = OUTLINED_FUNCTION_0_28(v16, sel_initWithIdentifier_backingStore_, v6, v7, v8, v9, v10, v11, v3);
  v14 = objc_msgSendSuper2(v12, v13);

  return v14;
}

id LaunchAppIntent.__allocating_init(domain:verb:parametersByName:)()
{
  v2 = OUTLINED_FUNCTION_1_19();

  v3 = sub_26618C8A0();

  if (v1)
  {
    v4 = sub_26618C830();
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_allocWithZone(v0) initWithDomain:v2 verb:v3 parametersByName:v4];

  return v5;
}

id LaunchAppIntent.init(domain:verb:parametersByName:)()
{
  v2 = OUTLINED_FUNCTION_1_19();

  v3 = sub_26618C8A0();

  if (v1)
  {
    v4 = sub_26618C830();
  }

  else
  {
    v4 = 0;
  }

  v7.receiver = v0;
  v7.super_class = type metadata accessor for LaunchAppIntent();
  v5 = objc_msgSendSuper2(&v7, sel_initWithDomain_verb_parametersByName_, v2, v3, v4);

  return v5;
}

unint64_t LaunchAppIntentResponseCode.init(rawValue:)(unint64_t result)
{
  if (result - 100 >= 3)
  {
    v1 = 0;
  }

  else
  {
    v1 = result;
  }

  if (result >= 7)
  {
    return v1;
  }

  return result;
}

unint64_t sub_2661852DC@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = LaunchAppIntentResponseCode.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t LaunchAppIntentResponse.code.getter()
{
  v1 = OBJC_IVAR___LaunchAppIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2661853A0(uint64_t a1)
{
  v3 = OBJC_IVAR___LaunchAppIntentResponse_code;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

char *LaunchAppIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___LaunchAppIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id LaunchAppIntentResponse.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LaunchAppIntentResponse.init()()
{
  *&v0[OBJC_IVAR___LaunchAppIntentResponse_code] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LaunchAppIntentResponse();
  return objc_msgSendSuper2(&v2, sel_init);
}

id LaunchAppIntentResponse.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id LaunchAppIntentResponse.init(coder:)(void *a1)
{
  *(v1 + OBJC_IVAR___LaunchAppIntentResponse_code) = 0;
  v13 = type metadata accessor for LaunchAppIntentResponse();
  v9 = OUTLINED_FUNCTION_0_28(v13, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id LaunchAppIntentResponse.__allocating_init(backingStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBackingStore_];

  return v3;
}

id LaunchAppIntentResponse.init(backingStore:)(void *a1)
{
  *(v1 + OBJC_IVAR___LaunchAppIntentResponse_code) = 0;
  v13 = type metadata accessor for LaunchAppIntentResponse();
  v9 = OUTLINED_FUNCTION_0_28(v13, sel_initWithBackingStore_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id LaunchAppIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_26618C830();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithPropertiesByName_];

  return v3;
}

id LaunchAppIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___LaunchAppIntentResponse_code] = 0;
  if (a1)
  {
    v2 = sub_26618C830();
  }

  else
  {
    v2 = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for LaunchAppIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithPropertiesByName_, v2);

  if (v3)
  {
  }

  return v3;
}

uint64_t sub_266185904@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = LaunchAppApplicationUnsupportedReason.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id static LaunchAppApplicationResolutionResult.unsupported(forReason:)(uint64_t a1)
{
  v1 = [swift_getObjCClassFromMetadata() unsupportedWithReason_];

  return v1;
}

id LaunchAppApplicationResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_26618C830();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id LaunchAppApplicationResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_26618C830();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for LaunchAppApplicationResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_266185B98(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_266185BD4()
{
  result = qword_28005D078;
  if (!qword_28005D078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005D078);
  }

  return result;
}

unint64_t sub_266185C2C()
{
  result = qword_28005D080;
  if (!qword_28005D080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005D080);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_19()
{

  return sub_26618C8A0();
}

uint64_t CloseAppApplicationUnsupportedReason.init(rawValue:)(uint64_t result)
{
  if ((result - 3) < 0xFFFFFFFFFFFFFFFELL)
  {
    return 0;
  }

  return result;
}

id CloseAppIntent.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CloseAppIntent();
  return objc_msgSendSuper2(&v2, sel_init);
}

id CloseAppIntent.init(coder:)(void *a1)
{
  v13 = type metadata accessor for CloseAppIntent();
  v9 = OUTLINED_FUNCTION_0_28(v13, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id CloseAppIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_26618C8A0();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithIdentifier:v6 backingStore:a3];

  return v7;
}

id CloseAppIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_26618C8A0();
  }

  else
  {
    v5 = 0;
  }

  v16 = type metadata accessor for CloseAppIntent();
  v12 = OUTLINED_FUNCTION_0_28(v16, sel_initWithIdentifier_backingStore_, v6, v7, v8, v9, v10, v11, v3);
  v14 = objc_msgSendSuper2(v12, v13);

  return v14;
}

id CloseAppIntent.__allocating_init(domain:verb:parametersByName:)()
{
  v2 = OUTLINED_FUNCTION_1_19();

  v3 = sub_26618C8A0();

  if (v1)
  {
    v4 = sub_26618C830();
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_allocWithZone(v0) initWithDomain:v2 verb:v3 parametersByName:v4];

  return v5;
}

id CloseAppIntent.init(domain:verb:parametersByName:)()
{
  v2 = OUTLINED_FUNCTION_1_19();

  v3 = sub_26618C8A0();

  if (v1)
  {
    v4 = sub_26618C830();
  }

  else
  {
    v4 = 0;
  }

  v7.receiver = v0;
  v7.super_class = type metadata accessor for CloseAppIntent();
  v5 = objc_msgSendSuper2(&v7, sel_initWithDomain_verb_parametersByName_, v2, v3, v4);

  return v5;
}

unint64_t CloseAppIntentResponseCode.init(rawValue:)(unint64_t result)
{
  if (result == 100)
  {
    v1 = 100;
  }

  else
  {
    v1 = 0;
  }

  if (result >= 7)
  {
    return v1;
  }

  return result;
}

unint64_t sub_2661861D8@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = CloseAppIntentResponseCode.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t CloseAppIntentResponse.code.getter()
{
  v1 = OBJC_IVAR___CloseAppIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_26618629C(uint64_t a1)
{
  v3 = OBJC_IVAR___CloseAppIntentResponse_code;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

char *CloseAppIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___CloseAppIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id CloseAppIntentResponse.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CloseAppIntentResponse.init()()
{
  *&v0[OBJC_IVAR___CloseAppIntentResponse_code] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CloseAppIntentResponse();
  return objc_msgSendSuper2(&v2, sel_init);
}

id CloseAppIntentResponse.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id CloseAppIntentResponse.init(coder:)(void *a1)
{
  *(v1 + OBJC_IVAR___CloseAppIntentResponse_code) = 0;
  v13 = type metadata accessor for CloseAppIntentResponse();
  v9 = OUTLINED_FUNCTION_0_28(v13, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id CloseAppIntentResponse.__allocating_init(backingStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBackingStore_];

  return v3;
}

id CloseAppIntentResponse.init(backingStore:)(void *a1)
{
  *(v1 + OBJC_IVAR___CloseAppIntentResponse_code) = 0;
  v13 = type metadata accessor for CloseAppIntentResponse();
  v9 = OUTLINED_FUNCTION_0_28(v13, sel_initWithBackingStore_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id CloseAppIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_26618C830();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithPropertiesByName_];

  return v3;
}

id CloseAppIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___CloseAppIntentResponse_code] = 0;
  if (a1)
  {
    v2 = sub_26618C830();
  }

  else
  {
    v2 = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for CloseAppIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithPropertiesByName_, v2);

  if (v3)
  {
  }

  return v3;
}

uint64_t sub_266186804@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = CloseAppApplicationUnsupportedReason.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id static CloseAppApplicationResolutionResult.unsupported(forReason:)(uint64_t a1)
{
  v1 = [swift_getObjCClassFromMetadata() unsupportedWithReason_];

  return v1;
}

id CloseAppApplicationResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_26618C830();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id CloseAppApplicationResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_26618C830();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for CloseAppApplicationResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_266186A98(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_266186AD4()
{
  result = qword_28005D090;
  if (!qword_28005D090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005D090);
  }

  return result;
}

unint64_t sub_266186B2C()
{
  result = qword_28005D098;
  if (!qword_28005D098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005D098);
  }

  return result;
}

uint64_t DeepLaunchPageNameUnsupportedReason.init(rawValue:)(uint64_t result)
{
  if ((result - 3) < 0xFFFFFFFFFFFFFFFELL)
  {
    return 0;
  }

  return result;
}

id DeepLaunchIntent.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DeepLaunchIntent();
  return objc_msgSendSuper2(&v2, sel_init);
}

id DeepLaunchIntent.init(coder:)(void *a1)
{
  v13 = type metadata accessor for DeepLaunchIntent();
  v9 = OUTLINED_FUNCTION_0_28(v13, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id DeepLaunchIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_26618C8A0();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithIdentifier:v6 backingStore:a3];

  return v7;
}

id DeepLaunchIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_26618C8A0();
  }

  else
  {
    v5 = 0;
  }

  v16 = type metadata accessor for DeepLaunchIntent();
  v12 = OUTLINED_FUNCTION_0_28(v16, sel_initWithIdentifier_backingStore_, v6, v7, v8, v9, v10, v11, v3);
  v14 = objc_msgSendSuper2(v12, v13);

  return v14;
}

id DeepLaunchIntent.__allocating_init(domain:verb:parametersByName:)()
{
  v2 = OUTLINED_FUNCTION_1_19();

  v3 = sub_26618C8A0();

  if (v1)
  {
    v4 = sub_26618C830();
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_allocWithZone(v0) initWithDomain:v2 verb:v3 parametersByName:v4];

  return v5;
}

id DeepLaunchIntent.init(domain:verb:parametersByName:)()
{
  v2 = OUTLINED_FUNCTION_1_19();

  v3 = sub_26618C8A0();

  if (v1)
  {
    v4 = sub_26618C830();
  }

  else
  {
    v4 = 0;
  }

  v7.receiver = v0;
  v7.super_class = type metadata accessor for DeepLaunchIntent();
  v5 = objc_msgSendSuper2(&v7, sel_initWithDomain_verb_parametersByName_, v2, v3, v4);

  return v5;
}

unint64_t DeepLaunchIntentResponseCode.init(rawValue:)(unint64_t result)
{
  if (result == 100)
  {
    v1 = 100;
  }

  else
  {
    v1 = 0;
  }

  if (result >= 7)
  {
    return v1;
  }

  return result;
}

unint64_t sub_2661870A8@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = DeepLaunchIntentResponseCode.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t DeepLaunchIntentResponse.code.getter()
{
  v1 = OBJC_IVAR___DeepLaunchIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_26618716C(uint64_t a1)
{
  v3 = OBJC_IVAR___DeepLaunchIntentResponse_code;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

char *DeepLaunchIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___DeepLaunchIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id DeepLaunchIntentResponse.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DeepLaunchIntentResponse.init()()
{
  *&v0[OBJC_IVAR___DeepLaunchIntentResponse_code] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DeepLaunchIntentResponse();
  return objc_msgSendSuper2(&v2, sel_init);
}

id DeepLaunchIntentResponse.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id DeepLaunchIntentResponse.init(coder:)(void *a1)
{
  *(v1 + OBJC_IVAR___DeepLaunchIntentResponse_code) = 0;
  v13 = type metadata accessor for DeepLaunchIntentResponse();
  v9 = OUTLINED_FUNCTION_0_28(v13, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id DeepLaunchIntentResponse.__allocating_init(backingStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBackingStore_];

  return v3;
}

id DeepLaunchIntentResponse.init(backingStore:)(void *a1)
{
  *(v1 + OBJC_IVAR___DeepLaunchIntentResponse_code) = 0;
  v13 = type metadata accessor for DeepLaunchIntentResponse();
  v9 = OUTLINED_FUNCTION_0_28(v13, sel_initWithBackingStore_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id DeepLaunchIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_26618C830();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithPropertiesByName_];

  return v3;
}

id DeepLaunchIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___DeepLaunchIntentResponse_code] = 0;
  if (a1)
  {
    v2 = sub_26618C830();
  }

  else
  {
    v2 = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for DeepLaunchIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithPropertiesByName_, v2);

  if (v3)
  {
  }

  return v3;
}

id static DeepLaunchPageNameResolutionResult.unsupported(forReason:)(uint64_t a1)
{
  v1 = [swift_getObjCClassFromMetadata() unsupportedWithReason_];

  return v1;
}

id sub_2661877E4(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_26618C830();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id sub_26618788C(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t))
{
  v6 = sub_26618C830();

  v10.receiver = v3;
  v10.super_class = a3(v7);
  v8 = objc_msgSendSuper2(&v10, sel_initWithJSONDictionary_forIntent_, v6, a2);

  if (v8)
  {
  }

  return v8;
}

id sub_2661879E0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_266187A1C()
{
  result = qword_28005D0A8;
  if (!qword_28005D0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005D0A8);
  }

  return result;
}

unint64_t sub_266187A74()
{
  result = qword_28005D0B0;
  if (!qword_28005D0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005D0B0);
  }

  return result;
}

unint64_t sub_266187ACC()
{
  result = qword_28005D0B8;
  if (!qword_28005D0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005D0B8);
  }

  return result;
}

unint64_t InAppVerb.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

unint64_t sub_266187B78@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = InAppVerb.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id static InAppVerbResolutionResult.success(with:)(uint64_t a1)
{
  v1 = [swift_getObjCClassFromMetadata() successWithResolvedValue_];

  return v1;
}

id static InAppVerbResolutionResult.confirmationRequired(with:)(uint64_t a1)
{
  v1 = [swift_getObjCClassFromMetadata() confirmationRequiredWithValueToConfirm_];

  return v1;
}

id InAppVerbResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_26618C830();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id InAppVerbResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_26618C830();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for InAppVerbResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id InAppVerbResolutionResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InAppVerbResolutionResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_266187EB8()
{
  result = qword_28005D0C0;
  if (!qword_28005D0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005D0C0);
  }

  return result;
}

unint64_t AppReference.init(rawValue:)(unint64_t result)
{
  if (result > 5)
  {
    return 0;
  }

  return result;
}

unint64_t sub_266187F30@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = AppReference.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id static AppReferenceResolutionResult.success(with:)(uint64_t a1)
{
  v1 = [swift_getObjCClassFromMetadata() successWithResolvedValue_];

  return v1;
}

id static AppReferenceResolutionResult.confirmationRequired(with:)(uint64_t a1)
{
  v1 = [swift_getObjCClassFromMetadata() confirmationRequiredWithValueToConfirm_];

  return v1;
}

id AppReferenceResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_26618C830();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id AppReferenceResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_26618C830();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for AppReferenceResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id AppReferenceResolutionResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppReferenceResolutionResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_266188270()
{
  result = qword_28005D0C8;
  if (!qword_28005D0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005D0C8);
  }

  return result;
}

uint64_t sub_266188328(uint64_t a1, void (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_122();
  a2(a1);
  OUTLINED_FUNCTION_4_23();

  return sub_26618D0C0();
}

uint64_t sub_266188390()
{
  OUTLINED_FUNCTION_122();
  OUTLINED_FUNCTION_5_19();
  sub_26618C910();
  return sub_26618D0C0();
}

uint64_t sub_2661883D0()
{
  OUTLINED_FUNCTION_122();
  sub_266188774();
  return sub_26618D0C0();
}

uint64_t sub_266188410(uint64_t a1)
{
  OUTLINED_FUNCTION_122();
  MEMORY[0x26677C460](a1);
  return sub_26618D0C0();
}

uint64_t sub_266188450(uint64_t a1, char a2)
{
  if (!a2)
  {
    OUTLINED_FUNCTION_7_19();
  }

  sub_26618C910();
}

uint64_t sub_2661884C0()
{
  sub_26618C910();
}

uint64_t sub_266188534()
{
  sub_26618C910();
}

uint64_t sub_2661885A4()
{
  OUTLINED_FUNCTION_0_29();
  sub_26618C910();
}

uint64_t sub_266188678()
{
  OUTLINED_FUNCTION_3_25();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_6_19();
      break;
    case 2:
      OUTLINED_FUNCTION_1_20();
      break;
    case 3:
      OUTLINED_FUNCTION_2_24();
      break;
    case 4:
      OUTLINED_FUNCTION_8_17();
      break;
    case 6:
      OUTLINED_FUNCTION_5_19();
      break;
    default:
      break;
  }

  sub_26618C910();
}

uint64_t sub_266188774()
{
  OUTLINED_FUNCTION_0_29();
  sub_26618C910();
}

uint64_t sub_266188830()
{
  OUTLINED_FUNCTION_3_25();
  switch(v0)
  {
    case 2:
      OUTLINED_FUNCTION_6_19();
      break;
    case 5:
      OUTLINED_FUNCTION_2_24();
      break;
    case 6:
      OUTLINED_FUNCTION_1_20();
      break;
    case 7:
      OUTLINED_FUNCTION_8_17();
      break;
    case 9:
      OUTLINED_FUNCTION_0_29();
      break;
    default:
      break;
  }

  sub_26618C910();
}

uint64_t sub_266188924()
{
  sub_26618D090();
  OUTLINED_FUNCTION_5_19();
  sub_26618C910();
  return sub_26618D0C0();
}

uint64_t sub_266188968()
{
  OUTLINED_FUNCTION_10_12();
  sub_266188774();
  return sub_26618D0C0();
}

uint64_t sub_2661889D4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  sub_26618D090();
  a3(a2);
  OUTLINED_FUNCTION_4_23();

  return sub_26618D0C0();
}

uint64_t sub_266188A28()
{
  OUTLINED_FUNCTION_10_12();
  sub_26618C910();

  return sub_26618D0C0();
}

uint64_t sub_266188AA4()
{
  OUTLINED_FUNCTION_10_12();
  sub_26618C910();

  return sub_26618D0C0();
}

uint64_t sub_266188B24(uint64_t a1, uint64_t a2)
{
  sub_26618D090();
  MEMORY[0x26677C460](a2);
  return sub_26618D0C0();
}

uint64_t sub_266188B68()
{
  OUTLINED_FUNCTION_10_12();
  if (!v0)
  {
    OUTLINED_FUNCTION_7_19();
  }

  sub_26618C910();

  return sub_26618D0C0();
}

unint64_t AppNoun.init(rawValue:)(unint64_t result)
{
  if (result > 3)
  {
    return 0;
  }

  return result;
}

unint64_t sub_266188C38@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = AppNoun.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id static AppNounResolutionResult.success(with:)(uint64_t a1)
{
  v1 = [swift_getObjCClassFromMetadata() successWithResolvedValue_];

  return v1;
}

id static AppNounResolutionResult.confirmationRequired(with:)(uint64_t a1)
{
  v1 = [swift_getObjCClassFromMetadata() confirmationRequiredWithValueToConfirm_];

  return v1;
}

id AppNounResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_26618C830();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id AppNounResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_26618C830();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for AppNounResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id AppNounResolutionResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppNounResolutionResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_266188F78()
{
  result = qword_28005D0D0;
  if (!qword_28005D0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005D0D0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_23()
{

  return sub_26618C910();
}

uint64_t OUTLINED_FUNCTION_10_12()
{

  return sub_26618D090();
}

id static ApplicationResolutionResult.success(with:)(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___ApplicationResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_successWithResolvedObject_, a1);

  return v2;
}

id static ApplicationResolutionResult.disambiguation(with:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_26618922C();

    sub_26618CE90();
  }

  else
  {

    sub_26618D010();
    sub_26618922C();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_26618922C();
  v2 = sub_26618C990();

  v5.receiver = ObjCClassFromMetadata;
  v5.super_class = &OBJC_METACLASS___ApplicationResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_disambiguationWithObjectsToDisambiguate_, v2);

  return v3;
}

unint64_t sub_26618922C()
{
  result = qword_28005D0D8;
  if (!qword_28005D0D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28005D0D8);
  }

  return result;
}

id static ApplicationResolutionResult.confirmationRequired(with:)(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___ApplicationResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_confirmationRequiredWithObjectToConfirm_, a1);

  return v2;
}

id Application.__allocating_init(identifier:display:pronunciationHint:)()
{
  OUTLINED_FUNCTION_1_21();
  if (v2)
  {
    v3 = sub_26618C8A0();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_26618C8A0();

  if (v1)
  {
    v5 = sub_26618C8A0();
  }

  else
  {
    v5 = 0;
  }

  v6 = [objc_allocWithZone(v0) initWithIdentifier:v3 displayString:v4 pronunciationHint:v5];

  return v6;
}

id Application.init(identifier:display:pronunciationHint:)()
{
  OUTLINED_FUNCTION_1_21();
  if (v2)
  {
    v3 = sub_26618C8A0();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_26618C8A0();

  if (v1)
  {
    v5 = sub_26618C8A0();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v0;
  v8.super_class = type metadata accessor for Application();
  v6 = objc_msgSendSuper2(&v8, sel_initWithIdentifier_displayString_pronunciationHint_, v3, v4, v5);

  return v6;
}

id Application.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id Application.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for Application();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id ApplicationResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_26618C830();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id ApplicationResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_26618C830();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for ApplicationResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_266189A00(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t OUTLINED_FUNCTION_0_30()
{

  return sub_26618CE80();
}

id InAppSearchCriteria.__allocating_init(identifier:display:pronunciationHint:)()
{
  OUTLINED_FUNCTION_1_21();
  if (v2)
  {
    v3 = sub_26618C8A0();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_26618C8A0();

  if (v1)
  {
    v5 = sub_26618C8A0();
  }

  else
  {
    v5 = 0;
  }

  v6 = [objc_allocWithZone(v0) initWithIdentifier:v3 displayString:v4 pronunciationHint:v5];

  return v6;
}

id InAppSearchCriteria.init(identifier:display:pronunciationHint:)()
{
  OUTLINED_FUNCTION_1_21();
  if (v2)
  {
    v3 = sub_26618C8A0();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_26618C8A0();

  if (v1)
  {
    v5 = sub_26618C8A0();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v0;
  v8.super_class = type metadata accessor for InAppSearchCriteria();
  v6 = objc_msgSendSuper2(&v8, sel_initWithIdentifier_displayString_pronunciationHint_, v3, v4, v5);

  return v6;
}

id InAppSearchCriteria.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id InAppSearchCriteria.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for InAppSearchCriteria();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id static InAppSearchCriteriaResolutionResult.success(with:)(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___InAppSearchCriteriaResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_successWithResolvedObject_, a1);

  return v2;
}

id static InAppSearchCriteriaResolutionResult.disambiguation(with:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_26618922C();

    sub_26618CE90();
  }

  else
  {

    sub_26618D010();
    sub_26618922C();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_26618922C();
  v2 = sub_26618C990();

  v5.receiver = ObjCClassFromMetadata;
  v5.super_class = &OBJC_METACLASS___InAppSearchCriteriaResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_disambiguationWithObjectsToDisambiguate_, v2);

  return v3;
}

id static InAppSearchCriteriaResolutionResult.confirmationRequired(with:)(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___InAppSearchCriteriaResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_confirmationRequiredWithObjectToConfirm_, a1);

  return v2;
}

id InAppSearchCriteriaResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_26618C830();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id InAppSearchCriteriaResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_26618C830();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for InAppSearchCriteriaResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_26618A360(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t OUTLINED_FUNCTION_0_31()
{

  return sub_26618CE80();
}