uint64_t sub_266165DBC@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t type metadata accessor for SiriRemembersStoreProvider()
{
  result = qword_2814B46B8;
  if (!qword_2814B46B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_266165E38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA58, &qword_2661949F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_266165EA8(uint64_t a1)
{
  v2 = type metadata accessor for SiriRemembersStoreProvider();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_266165F04()
{
  result = qword_28005CA60;
  if (!qword_28005CA60)
  {
    sub_26618A5B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CA60);
  }

  return result;
}

uint64_t sub_266165F5C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA58, &qword_2661949F8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_266165FCC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA58, &qword_2661949F8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_26616603C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_26618C8A0();

  [a3 setRemoteDeviceID_];
}

unint64_t sub_2661660A0()
{
  result = qword_28005CA78;
  if (!qword_28005CA78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28005CA78);
  }

  return result;
}

id sub_2661660F0(id result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

void sub_2661660FC(id a1, char a2)
{
  if (a2)
  {
  }
}

void sub_266166130()
{
  sub_26616619C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_26616619C()
{
  if (!qword_2814B47D8)
  {
    sub_26618C200();
    v0 = sub_26618CBD0();
    if (!v1)
    {
      atomic_store(v0, &qword_2814B47D8);
    }
  }
}

uint64_t OUTLINED_FUNCTION_7_17()
{
  v1 = *(*(v0 - 320) + 8);
  result = *(v0 - 328);
  v3 = *(v0 - 200);
  return result;
}

void AppLaunchDataModels.ConfirmationViewModel.init(primaryAction:primaryLabel:secondaryAction:secondaryLabel:)()
{
  OUTLINED_FUNCTION_6_0();
  v19 = v2;
  v4 = v3;
  v18 = v3;
  v5 = sub_26618AB50();
  v6 = OUTLINED_FUNCTION_2_2(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_103();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_102();
  v12 = type metadata accessor for AppLaunchDataModels.ConfirmationViewModel(0);
  v13 = v12[5];
  sub_26618AB90();
  v14 = *(v8 + 16);
  v14(v0, v4, v5);
  v14(v1, v0, v5);
  OUTLINED_FUNCTION_110();
  sub_26618AB90();
  v15 = *(v8 + 8);
  v15(v0, v5);
  v16 = v12[7];
  sub_26618AB90();
  v14(v0, v19, v5);
  v17 = v12[6];
  v14(v1, v0, v5);
  OUTLINED_FUNCTION_110();
  sub_26618AB90();
  v15(v19, v5);
  v15(v18, v5);
  v15(v0, v5);
  OUTLINED_FUNCTION_7_1();
}

void AppLaunchDataModels.Device.init(name:id:actionProperty:)()
{
  OUTLINED_FUNCTION_6_0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = sub_26618AB50();
  v12 = OUTLINED_FUNCTION_2_2(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_103();
  MEMORY[0x28223BE20](v17);
  v19 = &v26 - v18;
  v26 = v10;
  v27 = v8;
  sub_26618AB90();
  v20 = type metadata accessor for AppLaunchDataModels.Device(0);
  v21 = *(v20 + 20);
  v26 = v6;
  v27 = v4;
  sub_26618AB90();
  v22 = *(v14 + 16);
  v22(v19, v2, v11);
  v23 = *(v20 + 24);
  v22(v0, v19, v11);
  OUTLINED_FUNCTION_110();
  sub_26618AB90();
  v24 = *(v14 + 8);
  v25 = OUTLINED_FUNCTION_19_7();
  v24(v25);
  (v24)(v19, v11);
  OUTLINED_FUNCTION_7_1();
}

uint64_t AppLaunchDataModels.DeviceDisambiguationModel.init(systemText:devices:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  sub_26618AB90();
  result = type metadata accessor for AppLaunchDataModels.DeviceDisambiguationModel(0);
  *(a2 + *(result + 20)) = a1;
  return result;
}

void AppLaunchDataModels.ButtonFallbackModel.init(buttonLabel:actionProperty:)()
{
  OUTLINED_FUNCTION_6_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_26618AB50();
  v7 = OUTLINED_FUNCTION_2_2(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_24_1();
  v14 = (v12 - v13);
  MEMORY[0x28223BE20](v15);
  v17 = v22 - v16;
  v22[0] = v5;
  v22[1] = v3;
  sub_26618AB90();
  v18 = *(v9 + 16);
  v18(v17, v1, v6);
  v19 = *(type metadata accessor for AppLaunchDataModels.ButtonFallbackModel(0) + 20);
  v18(v14, v17, v6);
  sub_26618AB90();
  v20 = *(v9 + 8);
  v21 = OUTLINED_FUNCTION_19_7();
  v20(v21);
  (v20)(v17, v6);
  OUTLINED_FUNCTION_7_1();
}

void AppLaunchDataModels.App.init(name:bundleId:isOffloaded:actionProperty:)()
{
  OUTLINED_FUNCTION_6_0();
  v30 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_26618AB50();
  v10 = OUTLINED_FUNCTION_2_2(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_24_1();
  v17 = v15 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v29 - v19;
  v31 = v8;
  v32 = v6;
  sub_26618AB90();
  v21 = type metadata accessor for AppLaunchDataModels.App(0);
  v22 = v21[5];
  v31 = v4;
  v32 = v2;
  sub_26618AB90();
  v23 = v21[6];
  LOBYTE(v31) = v30;
  sub_26618AB90();
  v24 = *(v12 + 16);
  v25 = OUTLINED_FUNCTION_20_10();
  v24(v25);
  v26 = v21[7];
  (v24)(v17, v20, v9);
  sub_26618AB90();
  v27 = *(v12 + 8);
  v28 = OUTLINED_FUNCTION_19_7();
  v27(v28);
  (v27)(v20, v9);
  OUTLINED_FUNCTION_7_1();
}

uint64_t AppLaunchDataModels.AppDisambiguationModel.init(systemText:apps:)()
{
  sub_26618AB90();
  v0 = *(type metadata accessor for AppLaunchDataModels.AppDisambiguationModel(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C390, "Fi");
  return sub_26618AB90();
}

void sub_26616694C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_38();
  v108 = v21;
  v107 = v22;
  v106 = v23;
  v117 = v24;
  v105 = v25;
  v128 = v26;
  v116 = v27;
  v104 = v28;
  v103 = v29;
  v31 = v30;
  v110 = a21;
  v32 = sub_26618C6B0();
  v33 = OUTLINED_FUNCTION_2_2(v32);
  v113 = v34;
  v114 = v33;
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_1_4();
  v112 = v38 - v37;
  v39 = OUTLINED_FUNCTION_18_2();
  v102 = type metadata accessor for AppLaunchDataModels.AppResultModel(v39);
  v40 = OUTLINED_FUNCTION_16(v102);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_5_9();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_7_16();
  v101 = v44;
  OUTLINED_FUNCTION_18_2();
  v45 = sub_26618A7D0();
  v46 = OUTLINED_FUNCTION_2_2(v45);
  v109 = v47;
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_1_4();
  v52 = v51 - v50;
  v53 = OUTLINED_FUNCTION_110();
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(v53, v54);
  v56 = OUTLINED_FUNCTION_16(v55);
  v58 = *(v57 + 64);
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_24_1();
  v61 = v59 - v60;
  MEMORY[0x28223BE20](v62);
  v64 = v100 - v63;
  v65 = *(type metadata accessor for AppLaunchDataModels.AppOffloadedModel(0) + 20);
  v66 = sub_26618AB50();
  __swift_storeEnumTagSinglePayload(v64, 1, 1, v66);
  sub_266173FBC();
  v115 = v31;
  v111 = v65;
  v100[1] = v61;
  sub_26618AB90();
  sub_2660BF79C(v64, &qword_28005C4D0, &qword_266191AA8);
  v118 = v103;
  v119 = v104;
  v120 = v116;
  v121 = v128;
  v67 = v105;
  v122 = v105;
  v123 = v117;
  v124 = v106;
  v125 = v107;
  OUTLINED_FUNCTION_51_3();
  sub_26616AEA8(v68);
  v69 = v108;
  sub_26618C3F0();

  v70 = v52;
  v71 = sub_26618C3E0();
  if (v69)
  {
    v73 = v109;
    v74 = v110;
    v75 = v115;

    if (qword_2814B2C38 != -1)
    {
      OUTLINED_FUNCTION_4_21();
      swift_once();
    }

    v76 = v114;
    v77 = __swift_project_value_buffer(v114, qword_2814B4A80);
    (*(v113 + 16))(v112, v77, v76);
    v78 = v69;
    v79 = sub_26618C690();
    v80 = sub_26618CAB0();

    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      *v81 = 138412290;
      v83 = v69;
      v84 = _swift_stdlib_bridgeErrorToNSError();
      *(v81 + 4) = v84;
      *v82 = v84;
      _os_log_impl(&dword_2660B7000, v79, v80, "AppOffloadedModel: failed to serialize sf card. Error %@", v81, 0xCu);
      sub_2660BF79C(v82, &qword_28005C1F8, &unk_266190550);
      v70 = v52;
      v75 = v115;
      OUTLINED_FUNCTION_10_2();
      MEMORY[0x26677CC30]();
      OUTLINED_FUNCTION_10_2();
      MEMORY[0x26677CC30]();
    }

    (*(v113 + 8))(v112, v114);
    swift_willThrow();
    sub_2660BF79C(v74, &qword_28005C4D0, &qword_266191AA8);
    (*(v73 + 8))(v70, v45);
    v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CD28, &qword_266194C40);
    OUTLINED_FUNCTION_16(v85);
    (*(v86 + 8))(v75 + v111, v87);
  }

  else
  {
    v88 = v71;
    v89 = v72;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C5C8, &qword_266192278);
    v90 = swift_allocObject();
    *(v90 + 16) = xmmword_26618E190;
    *(v90 + 32) = v88;
    *(v90 + 40) = v89;
    v126 = 0;
    v127 = 0;
    sub_2660C924C(v88, v89);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C3D8, qword_266192200);
    v114 = v52;
    v91 = v101;
    sub_26618AB90();
    v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CC00, &qword_266194BF0);
    OUTLINED_FUNCTION_16(v92);
    (*(v93 + 8))(v91);
    v126 = v67;
    v127 = v117;
    sub_26618AB90();
    v94 = v102;
    v95 = *(v102 + 20);
    v126 = v116;
    v127 = v128;
    sub_26618AB90();
    v96 = *(v94 + 24);
    v126 = v90;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CBC8, &qword_266194BD8);
    sub_26618AB90();
    OUTLINED_FUNCTION_5_16();
    sub_26616B4A0();
    sub_26618AB90();
    OUTLINED_FUNCTION_2_21();
    sub_26616B4F8();
    v97 = v110;
    sub_266173FBC();
    OUTLINED_FUNCTION_82_1();
    sub_266173FBC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CD28, &qword_266194C40);
    sub_26618ABC0();
    sub_2660C55C0(v88, v89);
    sub_2660BF79C(v97, &qword_28005C4D0, &qword_266191AA8);
    v98 = OUTLINED_FUNCTION_84_0();
    sub_2660BF79C(v98, v99, &qword_266191AA8);
    (*(v109 + 8))(v114, v45);
  }

  OUTLINED_FUNCTION_39();
}

uint64_t sub_266167094(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_2661738A4(result, 1);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v6 + 24) >> 1) - *(v6 + 16);
  result = sub_26618B220();
  v8 = *(result - 8);
  if (v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = *(v8 + 72);
  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v11 = *(v6 + 16);
  v12 = __OFADD__(v11, v3);
  v13 = v11 + v3;
  if (!v12)
  {
    *(v6 + 16) = v13;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_266167194(uint64_t a1)
{
  v2 = sub_2661046B8(a1);
  v3 = sub_2661046B8(*v1);
  v4 = __OFADD__(v3, v2);
  result = v3 + v2;
  if (v4)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_26617390C(result);
  v6 = *v1;
  v7 = *v1 & 0xFFFFFFFFFFFFFF8;
  v8 = *(v7 + 0x10);
  v9 = *(v7 + 0x18) >> 1;
  sub_2661422A4();
  v11 = v10;

  if (v11 < v2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v11 < 1)
  {
LABEL_6:
    *v1 = v6;
    return result;
  }

  v12 = *(v7 + 16);
  v4 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v4)
  {
    *(v7 + 16) = v13;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t (*AppLaunchDataModels.App.name.modify())()
{
  v1 = OUTLINED_FUNCTION_27_5();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_28_10(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA80, &qword_266194B48);
  OUTLINED_FUNCTION_49_3();
  *(v0 + 32) = sub_26618ABA0();
  return sub_2661773C0;
}

uint64_t (*AppLaunchDataModels.App.bundleId.modify())()
{
  v1 = OUTLINED_FUNCTION_27_5();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_12_13(v2);
  v4 = *(type metadata accessor for AppLaunchDataModels.App(v3) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA80, &qword_266194B48);
  *(v0 + 32) = OUTLINED_FUNCTION_29_4();
  return sub_2661773C0;
}

uint64_t AppLaunchDataModels.App.isOffloaded.getter()
{
  v0 = *(type metadata accessor for AppLaunchDataModels.App(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA88, &qword_266194B50);
  sub_26618ABB0();
  return v2;
}

uint64_t AppLaunchDataModels.App.isOffloaded.setter()
{
  v0 = *(type metadata accessor for AppLaunchDataModels.App(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA88, &qword_266194B50);
  return sub_26618ABC0();
}

uint64_t (*AppLaunchDataModels.App.isOffloaded.modify())()
{
  v1 = OUTLINED_FUNCTION_27_5();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_12_13(v2);
  v4 = *(type metadata accessor for AppLaunchDataModels.App(v3) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA88, &qword_266194B50);
  *(v0 + 32) = OUTLINED_FUNCTION_29_4();
  return sub_2661674F8;
}

uint64_t AppLaunchDataModels.App.actionProperty.getter()
{
  v0 = *(type metadata accessor for AppLaunchDataModels.App(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA90, &qword_266194B58);
  return sub_26618ABB0();
}

uint64_t AppLaunchDataModels.App.actionProperty.setter()
{
  OUTLINED_FUNCTION_67_1();
  v0 = sub_26618AB50();
  v1 = OUTLINED_FUNCTION_2_2(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1_4();
  v5 = OUTLINED_FUNCTION_11_8(v4);
  v6(v5);
  v7 = *(type metadata accessor for AppLaunchDataModels.App(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA90, &qword_266194B58);
  OUTLINED_FUNCTION_128();
  sub_26618ABC0();
  v8 = OUTLINED_FUNCTION_57_3();
  return v9(v8);
}

uint64_t (*AppLaunchDataModels.App.actionProperty.modify())()
{
  v1 = OUTLINED_FUNCTION_27_5();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_12_13(v2);
  v4 = *(type metadata accessor for AppLaunchDataModels.App(v3) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA90, &qword_266194B58);
  *(v0 + 32) = OUTLINED_FUNCTION_29_4();
  return sub_2661773C0;
}

uint64_t sub_26616769C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_26618D000() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000;
    if (v6 || (sub_26618D000() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x616F6C66664F7369 && a2 == 0xEB00000000646564;
      if (v7 || (sub_26618D000() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x72506E6F69746361 && a2 == 0xEE0079747265706FLL)
      {

        return 3;
      }

      else
      {
        v9 = sub_26618D000();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_266167800(char a1)
{
  result = 1701667182;
  switch(a1)
  {
    case 1:
      result = 0x6449656C646E7562;
      break;
    case 2:
      result = 0x616F6C66664F7369;
      break;
    case 3:
      result = 0x72506E6F69746361;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_266167898@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26616769C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2661678C0(uint64_t a1)
{
  v2 = sub_26616ADEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2661678FC(uint64_t a1)
{
  v2 = sub_26616ADEC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t static AppLaunchDataModels.App.__derived_struct_equals(_:_:)()
{
  OUTLINED_FUNCTION_70_2();
  if ((sub_26618ABD0() & 1) == 0)
  {
    return 0;
  }

  v0 = type metadata accessor for AppLaunchDataModels.App(0);
  v1 = v0[5];
  if ((OUTLINED_FUNCTION_138() & 1) == 0)
  {
    return 0;
  }

  v2 = v0[6];
  if ((OUTLINED_FUNCTION_138() & 1) == 0)
  {
    return 0;
  }

  v3 = v0[7];
  sub_26618AB50();
  OUTLINED_FUNCTION_53_2();
  sub_26616AEA8(v4);
  OUTLINED_FUNCTION_56_2();

  return sub_26618ABD0();
}

void AppLaunchDataModels.App.encode(to:)()
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_47();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CAA0, &qword_266194B60);
  OUTLINED_FUNCTION_2_2(v1);
  v3 = v2;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_8_16();
  sub_26616ADEC();
  OUTLINED_FUNCTION_34_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA80, &qword_266194B48);
  OUTLINED_FUNCTION_1_17();
  sub_26616B098(v7);
  OUTLINED_FUNCTION_96();
  if (!v0)
  {
    v8 = type metadata accessor for AppLaunchDataModels.App(0);
    OUTLINED_FUNCTION_100(v8);
    OUTLINED_FUNCTION_96();
    v9 = *(v8 + 24);
    OUTLINED_FUNCTION_33();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA88, &qword_266194B50);
    OUTLINED_FUNCTION_1_17();
    sub_26616AE40(v10);
    OUTLINED_FUNCTION_31_11();
    OUTLINED_FUNCTION_96();
    v11 = *(v8 + 28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA90, &qword_266194B58);
    OUTLINED_FUNCTION_1_17();
    sub_26616B100(v12);
    OUTLINED_FUNCTION_31_11();
    OUTLINED_FUNCTION_96();
  }

  v13 = *(v3 + 8);
  v14 = OUTLINED_FUNCTION_20_10();
  v15(v14);
  OUTLINED_FUNCTION_77_1();
  OUTLINED_FUNCTION_39();
}

uint64_t AppLaunchDataModels.App.hash(into:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA80, &qword_266194B48);
  sub_26616AEEC();
  OUTLINED_FUNCTION_41_5();
  sub_26618C870();
  v1 = type metadata accessor for AppLaunchDataModels.App(0);
  v2 = v0 + v1[5];
  OUTLINED_FUNCTION_41_5();
  sub_26618C870();
  v3 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA88, &qword_266194B50);
  sub_26616AF68();
  OUTLINED_FUNCTION_41_5();
  sub_26618C870();
  v4 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA90, &qword_266194B58);
  sub_26616AFE4();
  OUTLINED_FUNCTION_41_5();
  return sub_26618C870();
}

uint64_t AppLaunchDataModels.App.hashValue.getter()
{
  OUTLINED_FUNCTION_122();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA80, &qword_266194B48);
  sub_26616AEEC();
  OUTLINED_FUNCTION_88_0();
  sub_26618C870();
  v1 = type metadata accessor for AppLaunchDataModels.App(0);
  v2 = v0 + v1[5];
  OUTLINED_FUNCTION_88_0();
  sub_26618C870();
  v3 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA88, &qword_266194B50);
  v4 = sub_26616AF68();
  OUTLINED_FUNCTION_38_4(v4, v5, v6, v7, v8, v9, v10, v11, v22, v24);
  sub_26618C870();
  v12 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA90, &qword_266194B58);
  v13 = sub_26616AFE4();
  OUTLINED_FUNCTION_38_4(v13, v14, v15, v16, v17, v18, v19, v20, v23, v25);
  sub_26618C870();
  return sub_26618D0C0();
}

void AppLaunchDataModels.App.init(from:)()
{
  OUTLINED_FUNCTION_38();
  v3 = v2;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA90, &qword_266194B58);
  OUTLINED_FUNCTION_2_2(v43);
  v41 = v4;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_30_7();
  v42 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA88, &qword_266194B50);
  v44 = OUTLINED_FUNCTION_2_2(v9);
  v45 = v10;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_28();
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA80, &qword_266194B48);
  v14 = OUTLINED_FUNCTION_2_2(v49);
  v46 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_24_1();
  v20 = v18 - v19;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_7_16();
  OUTLINED_FUNCTION_107(v22);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CAD8, &qword_266194B68);
  OUTLINED_FUNCTION_2_2(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_72_2();
  v27 = type metadata accessor for AppLaunchDataModels.App(0);
  v28 = OUTLINED_FUNCTION_16(v27);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_1_4();
  v33 = v32 - v31;
  v34 = v3[4];
  OUTLINED_FUNCTION_35(v3, v3[3]);
  sub_26616ADEC();
  sub_26618D0E0();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  else
  {
    OUTLINED_FUNCTION_0_23();
    sub_26616B098(v35);
    sub_26618CF30();
    v36 = v47;
    v48 = *(v46 + 32);
    v48(v33, v36, v49);
    OUTLINED_FUNCTION_35_5();
    sub_26618CF30();
    v48(v33 + v27[5], v20, v49);
    OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_0_23();
    sub_26616AE40(v37);
    sub_26618CF30();
    (*(v45 + 32))(v33 + v27[6], v1, v44);
    OUTLINED_FUNCTION_0_23();
    sub_26616B100(v38);
    sub_26618CF30();
    v39 = OUTLINED_FUNCTION_54_4();
    v40(v39);
    (*(v41 + 32))(v33 + v27[7], v42, v43);
    OUTLINED_FUNCTION_129();
    sub_26616B4A0();
    __swift_destroy_boxed_opaque_existential_1(v3);
    sub_26616B4F8();
  }

  OUTLINED_FUNCTION_77_1();
  OUTLINED_FUNCTION_39();
}

uint64_t sub_266168368(uint64_t a1, int *a2)
{
  sub_26618D090();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA80, &qword_266194B48);
  sub_26616AEEC();
  sub_26618C870();
  v4 = v2 + a2[5];
  sub_26618C870();
  v5 = a2[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA88, &qword_266194B50);
  sub_26616AF68();
  sub_26618C870();
  v6 = a2[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA90, &qword_266194B58);
  sub_26616AFE4();
  sub_26618C870();
  return sub_26618D0C0();
}

uint64_t (*AppLaunchDataModels.AppDisambiguationModel.systemText.modify())()
{
  v1 = OUTLINED_FUNCTION_27_5();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_28_10(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA80, &qword_266194B48);
  OUTLINED_FUNCTION_49_3();
  *(v0 + 32) = sub_26618ABA0();
  return sub_2661773C0;
}

uint64_t AppLaunchDataModels.AppDisambiguationModel.apps.getter()
{
  v0 = *(type metadata accessor for AppLaunchDataModels.AppDisambiguationModel(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CAF8, &qword_266194B70);
  sub_26618ABB0();
  return v2;
}

uint64_t AppLaunchDataModels.AppDisambiguationModel.apps.setter()
{
  v0 = *(type metadata accessor for AppLaunchDataModels.AppDisambiguationModel(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CAF8, &qword_266194B70);
  return sub_26618ABC0();
}

uint64_t (*AppLaunchDataModels.AppDisambiguationModel.apps.modify())()
{
  v1 = OUTLINED_FUNCTION_27_5();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_12_13(v2);
  v4 = *(type metadata accessor for AppLaunchDataModels.AppDisambiguationModel(v3) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CAF8, &qword_266194B70);
  *(v0 + 32) = OUTLINED_FUNCTION_29_4();
  return sub_2661773C0;
}

uint64_t sub_266168634(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65546D6574737973 && a2 == 0xEA00000000007478;
  if (v4 || (sub_26618D000() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1936748641 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_26618D000();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_266168704(char a1)
{
  if (a1)
  {
    return 1936748641;
  }

  else
  {
    return 0x65546D6574737973;
  }
}

uint64_t sub_266168740@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_266168634(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_266168768(uint64_t a1)
{
  v2 = sub_26616B1CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2661687A4(uint64_t a1)
{
  v2 = sub_26616B1CC();

  return MEMORY[0x2821FE720](a1, v2);
}

void AppLaunchDataModels.AppDisambiguationModel.encode(to:)()
{
  OUTLINED_FUNCTION_141();
  OUTLINED_FUNCTION_20_15();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CB00, &qword_266194B78);
  OUTLINED_FUNCTION_2_2(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_16_11();
  OUTLINED_FUNCTION_8_16();
  sub_26616B1CC();
  OUTLINED_FUNCTION_23_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA80, &qword_266194B48);
  OUTLINED_FUNCTION_1_17();
  sub_26616B098(v5);
  OUTLINED_FUNCTION_13_9();
  if (!v0)
  {
    v6 = *(type metadata accessor for AppLaunchDataModels.AppDisambiguationModel(0) + 20);
    OUTLINED_FUNCTION_35_5();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CAF8, &qword_266194B70);
    sub_26616B220();
    OUTLINED_FUNCTION_75_2();
    OUTLINED_FUNCTION_15_9();
  }

  v7 = OUTLINED_FUNCTION_33_3();
  v8(v7);
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_140();
}

void AppLaunchDataModels.AppDisambiguationModel.init(from:)()
{
  OUTLINED_FUNCTION_38();
  v4 = v3;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CAF8, &qword_266194B70);
  OUTLINED_FUNCTION_2_2(v31);
  v30 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_46();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA80, &qword_266194B48);
  OUTLINED_FUNCTION_2_2(v36);
  v33 = v9;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_30_7();
  v34 = v13;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CB38, &qword_266194B80);
  OUTLINED_FUNCTION_2_2(v35);
  v32 = v14;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_28();
  v18 = type metadata accessor for AppLaunchDataModels.AppDisambiguationModel(0);
  v19 = OUTLINED_FUNCTION_16(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_1_4();
  v24 = v23 - v22;
  v25 = v4[3];
  v26 = v4[4];
  v27 = OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_35(v27, v28);
  sub_26616B1CC();
  OUTLINED_FUNCTION_121();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v4);
  }

  else
  {
    OUTLINED_FUNCTION_0_23();
    sub_26616B098(v29);
    OUTLINED_FUNCTION_50_4();
    OUTLINED_FUNCTION_139();
    (*(v33 + 32))(v24, v34, v36);
    OUTLINED_FUNCTION_35_5();
    sub_26616B414();
    OUTLINED_FUNCTION_139();
    (*(v32 + 8))(v1, v35);
    (*(v30 + 32))(v24 + *(v18 + 20), v2, v31);
    OUTLINED_FUNCTION_129();
    sub_26616B4A0();
    __swift_destroy_boxed_opaque_existential_1(v4);
    OUTLINED_FUNCTION_42_7();
    sub_26616B4F8();
  }

  OUTLINED_FUNCTION_39();
}

uint64_t (*AppLaunchDataModels.ButtonFallbackModel.buttonLabel.modify())()
{
  v1 = OUTLINED_FUNCTION_27_5();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_28_10(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA80, &qword_266194B48);
  OUTLINED_FUNCTION_49_3();
  *(v0 + 32) = sub_26618ABA0();
  return sub_2661773C0;
}

uint64_t AppLaunchDataModels.ButtonFallbackModel.actionProperty.setter()
{
  OUTLINED_FUNCTION_67_1();
  v0 = sub_26618AB50();
  v1 = OUTLINED_FUNCTION_2_2(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1_4();
  v5 = OUTLINED_FUNCTION_11_8(v4);
  v6(v5);
  v7 = *(type metadata accessor for AppLaunchDataModels.ButtonFallbackModel(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA90, &qword_266194B58);
  OUTLINED_FUNCTION_128();
  sub_26618ABC0();
  v8 = OUTLINED_FUNCTION_57_3();
  return v9(v8);
}

uint64_t (*AppLaunchDataModels.ButtonFallbackModel.actionProperty.modify())()
{
  v1 = OUTLINED_FUNCTION_27_5();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_12_13(v2);
  v4 = *(type metadata accessor for AppLaunchDataModels.ButtonFallbackModel(v3) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA90, &qword_266194B58);
  *(v0 + 32) = OUTLINED_FUNCTION_29_4();
  return sub_2661773C0;
}

uint64_t sub_266168E58(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x614C6E6F74747562 && a2 == 0xEB000000006C6562;
  if (v4 || (sub_26618D000() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x72506E6F69746361 && a2 == 0xEE0079747265706FLL)
  {

    return 1;
  }

  else
  {
    v7 = sub_26618D000();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_266168F2C(char a1)
{
  if (a1)
  {
    return 0x72506E6F69746361;
  }

  else
  {
    return 0x614C6E6F74747562;
  }
}

uint64_t sub_266168F80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_266168E58(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_266168FA8(uint64_t a1)
{
  v2 = sub_26616B54C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266168FE4(uint64_t a1)
{
  v2 = sub_26616B54C();

  return MEMORY[0x2821FE720](a1, v2);
}

void AppLaunchDataModels.ButtonFallbackModel.encode(to:)()
{
  OUTLINED_FUNCTION_141();
  OUTLINED_FUNCTION_20_15();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CB48, &qword_266194B88);
  OUTLINED_FUNCTION_2_2(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_16_11();
  OUTLINED_FUNCTION_8_16();
  sub_26616B54C();
  OUTLINED_FUNCTION_23_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA80, &qword_266194B48);
  OUTLINED_FUNCTION_1_17();
  sub_26616B098(v5);
  OUTLINED_FUNCTION_13_9();
  if (!v0)
  {
    v6 = *(type metadata accessor for AppLaunchDataModels.ButtonFallbackModel(0) + 20);
    OUTLINED_FUNCTION_35_5();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA90, &qword_266194B58);
    OUTLINED_FUNCTION_1_17();
    sub_26616B100(v7);
    OUTLINED_FUNCTION_75_2();
    OUTLINED_FUNCTION_15_9();
  }

  v8 = OUTLINED_FUNCTION_33_3();
  v9(v8);
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_140();
}

void AppLaunchDataModels.ButtonFallbackModel.init(from:)()
{
  OUTLINED_FUNCTION_38();
  v4 = v3;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA90, &qword_266194B58);
  OUTLINED_FUNCTION_2_2(v33);
  v31 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_37_4();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA80, &qword_266194B48);
  OUTLINED_FUNCTION_2_2(v36);
  v32 = v9;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_30_7();
  v34 = v13;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CB50, &qword_266194B90);
  OUTLINED_FUNCTION_2_2(v37);
  v35 = v14;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_28();
  v18 = type metadata accessor for AppLaunchDataModels.ButtonFallbackModel(0);
  v19 = OUTLINED_FUNCTION_16(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_1_4();
  v24 = v23 - v22;
  v25 = v4[3];
  v26 = v4[4];
  v27 = OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_35(v27, v28);
  sub_26616B54C();
  OUTLINED_FUNCTION_121();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v4);
  }

  else
  {
    OUTLINED_FUNCTION_0_23();
    sub_26616B098(v29);
    OUTLINED_FUNCTION_50_4();
    OUTLINED_FUNCTION_139();
    (*(v32 + 32))(v24, v34, v36);
    OUTLINED_FUNCTION_35_5();
    OUTLINED_FUNCTION_0_23();
    sub_26616B100(v30);
    OUTLINED_FUNCTION_139();
    (*(v35 + 8))(v1, v37);
    (*(v31 + 32))(v24 + *(v18 + 20), v2, v33);
    OUTLINED_FUNCTION_129();
    sub_26616B4A0();
    __swift_destroy_boxed_opaque_existential_1(v4);
    sub_26616B4F8();
  }

  OUTLINED_FUNCTION_39();
}

uint64_t (*AppLaunchDataModels.Device.name.modify())()
{
  v1 = OUTLINED_FUNCTION_27_5();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_28_10(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA80, &qword_266194B48);
  OUTLINED_FUNCTION_49_3();
  *(v0 + 32) = sub_26618ABA0();
  return sub_2661773C0;
}

uint64_t sub_266169578(uint64_t (*a1)(void))
{
  v1 = *(a1(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA80, &qword_266194B48);
  sub_26618ABB0();
  return v3;
}

uint64_t sub_2661695EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v3 = *(a3(0) + 20);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA80, &qword_266194B48);
  OUTLINED_FUNCTION_127(v4, v5, v6, v7, v8, v9, v10, v11, a1);
  return sub_26618ABC0();
}

uint64_t (*AppLaunchDataModels.Device.id.modify())()
{
  v1 = OUTLINED_FUNCTION_27_5();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_12_13(v2);
  v4 = *(type metadata accessor for AppLaunchDataModels.Device(v3) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA80, &qword_266194B48);
  *(v0 + 32) = OUTLINED_FUNCTION_29_4();
  return sub_2661773C0;
}

uint64_t (*AppLaunchDataModels.Device.actionProperty.modify())()
{
  v1 = OUTLINED_FUNCTION_27_5();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_12_13(v2);
  v4 = *(type metadata accessor for AppLaunchDataModels.Device(v3) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA90, &qword_266194B58);
  *(v0 + 32) = OUTLINED_FUNCTION_29_4();
  return sub_2661773C0;
}

uint64_t sub_266169754(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_26618D000() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 25705 && a2 == 0xE200000000000000;
    if (v6 || (sub_26618D000() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x72506E6F69746361 && a2 == 0xEE0079747265706FLL)
    {

      return 2;
    }

    else
    {
      v8 = sub_26618D000();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_266169864(char a1)
{
  if (!a1)
  {
    return 1701667182;
  }

  if (a1 == 1)
  {
    return 25705;
  }

  return 0x72506E6F69746361;
}

uint64_t sub_2661698BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_266169754(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2661698E4(uint64_t a1)
{
  v2 = sub_26616B5A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266169920(uint64_t a1)
{
  v2 = sub_26616B5A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t static AppLaunchDataModels.Device.__derived_struct_equals(_:_:)()
{
  OUTLINED_FUNCTION_70_2();
  if ((sub_26618ABD0() & 1) == 0)
  {
    return 0;
  }

  v0 = type metadata accessor for AppLaunchDataModels.Device(0);
  v1 = *(v0 + 20);
  if ((OUTLINED_FUNCTION_138() & 1) == 0)
  {
    return 0;
  }

  v2 = *(v0 + 24);
  sub_26618AB50();
  OUTLINED_FUNCTION_53_2();
  sub_26616AEA8(v3);
  OUTLINED_FUNCTION_56_2();

  return sub_26618ABD0();
}

void AppLaunchDataModels.Device.encode(to:)()
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_20_15();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CB58, &qword_266194B98);
  OUTLINED_FUNCTION_2_2(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_16_11();
  OUTLINED_FUNCTION_8_16();
  sub_26616B5A0();
  OUTLINED_FUNCTION_23_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA80, &qword_266194B48);
  OUTLINED_FUNCTION_1_17();
  sub_26616B098(v8);
  OUTLINED_FUNCTION_112();
  OUTLINED_FUNCTION_24_7();
  OUTLINED_FUNCTION_78_0();
  if (!v0)
  {
    v9 = type metadata accessor for AppLaunchDataModels.Device(0);
    OUTLINED_FUNCTION_100(v9);
    OUTLINED_FUNCTION_24_7();
    OUTLINED_FUNCTION_78_0();
    v10 = *(v9 + 24);
    OUTLINED_FUNCTION_33();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA90, &qword_266194B58);
    OUTLINED_FUNCTION_1_17();
    sub_26616B100(v11);
    OUTLINED_FUNCTION_75_2();
    OUTLINED_FUNCTION_15_9();
  }

  (*(v4 + 8))(v1, v2);
  OUTLINED_FUNCTION_77_1();
  OUTLINED_FUNCTION_39();
}

uint64_t AppLaunchDataModels.Device.hash(into:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA80, &qword_266194B48);
  sub_26616AEEC();
  OUTLINED_FUNCTION_82_1();
  sub_26618C870();
  v1 = type metadata accessor for AppLaunchDataModels.Device(0);
  v2 = v0 + *(v1 + 20);
  OUTLINED_FUNCTION_82_1();
  sub_26618C870();
  v3 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA90, &qword_266194B58);
  sub_26616AFE4();
  return sub_26618C870();
}

uint64_t AppLaunchDataModels.Device.hashValue.getter()
{
  OUTLINED_FUNCTION_122();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA80, &qword_266194B48);
  sub_26616AEEC();
  OUTLINED_FUNCTION_88_0();
  sub_26618C870();
  v1 = type metadata accessor for AppLaunchDataModels.Device(0);
  v2 = v0 + *(v1 + 20);
  OUTLINED_FUNCTION_88_0();
  sub_26618C870();
  v3 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA90, &qword_266194B58);
  v4 = sub_26616AFE4();
  OUTLINED_FUNCTION_38_4(v4, v5, v6, v7, v8, v9, v10, v11, v13, v14);
  sub_26618C870();
  return sub_26618D0C0();
}

void AppLaunchDataModels.Device.init(from:)()
{
  OUTLINED_FUNCTION_38();
  v2 = v1;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA90, &qword_266194B58);
  OUTLINED_FUNCTION_2_2(v34);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_30_7();
  OUTLINED_FUNCTION_125(v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA80, &qword_266194B48);
  v8 = OUTLINED_FUNCTION_2_2(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_61_2();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_7_16();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CB68, &qword_266194BA0);
  OUTLINED_FUNCTION_2_2(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_94();
  v16 = type metadata accessor for AppLaunchDataModels.Device(0);
  v17 = OUTLINED_FUNCTION_16(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_93();
  v21 = v2[3];
  v20 = v2[4];
  v22 = OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_35(v22, v23);
  sub_26616B5A0();
  OUTLINED_FUNCTION_115();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    OUTLINED_FUNCTION_0_23();
    sub_26616B098(v24);
    OUTLINED_FUNCTION_112();
    OUTLINED_FUNCTION_22_9();
    v25 = OUTLINED_FUNCTION_91();
    v26(v25);
    OUTLINED_FUNCTION_35_5();
    OUTLINED_FUNCTION_22_9();
    v27 = OUTLINED_FUNCTION_76_2();
    v28(v27);
    OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_0_23();
    sub_26616B100(v29);
    OUTLINED_FUNCTION_69_2();
    v30 = OUTLINED_FUNCTION_18_12();
    v31(v30);
    v32 = OUTLINED_FUNCTION_74_1();
    v33(v32);
    sub_26616B4A0();
    __swift_destroy_boxed_opaque_existential_1(v2);
    sub_26616B4F8();
  }

  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_39();
}

uint64_t sub_26616A084(uint64_t a1, uint64_t a2)
{
  sub_26618D090();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA80, &qword_266194B48);
  sub_26616AEEC();
  sub_26618C870();
  v4 = v2 + *(a2 + 20);
  sub_26618C870();
  v5 = *(a2 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA90, &qword_266194B58);
  sub_26616AFE4();
  sub_26618C870();
  return sub_26618D0C0();
}

uint64_t (*AppLaunchDataModels.DeviceDisambiguationModel.systemText.modify())()
{
  v1 = OUTLINED_FUNCTION_27_5();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_28_10(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA80, &qword_266194B48);
  OUTLINED_FUNCTION_49_3();
  *(v0 + 32) = sub_26618ABA0();
  return sub_2661773C0;
}

uint64_t AppLaunchDataModels.DeviceDisambiguationModel.devices.getter()
{
  v1 = *(v0 + *(type metadata accessor for AppLaunchDataModels.DeviceDisambiguationModel(0) + 20));
}

uint64_t AppLaunchDataModels.DeviceDisambiguationModel.devices.setter()
{
  v2 = OUTLINED_FUNCTION_67_1();
  v3 = *(type metadata accessor for AppLaunchDataModels.DeviceDisambiguationModel(v2) + 20);
  v4 = *(v1 + v3);

  *(v1 + v3) = v0;
  return result;
}

uint64_t (*AppLaunchDataModels.DeviceDisambiguationModel.devices.modify())(void)
{
  v0 = OUTLINED_FUNCTION_67_1();
  v1 = *(type metadata accessor for AppLaunchDataModels.DeviceDisambiguationModel(v0) + 20);
  return nullsub_1;
}

uint64_t sub_26616A2A0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65546D6574737973 && a2 == 0xEA00000000007478;
  if (v4 || (sub_26618D000() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73656369766564 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_26618D000();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_26616A370(char a1)
{
  if (a1)
  {
    return 0x73656369766564;
  }

  else
  {
    return 0x65546D6574737973;
  }
}

uint64_t sub_26616A3B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26616A2A0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26616A3DC(uint64_t a1)
{
  v2 = sub_26616B5F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26616A418(uint64_t a1)
{
  v2 = sub_26616B5F4();

  return MEMORY[0x2821FE720](a1, v2);
}

void AppLaunchDataModels.DeviceDisambiguationModel.encode(to:)()
{
  OUTLINED_FUNCTION_141();
  OUTLINED_FUNCTION_47();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CB70, &qword_266194BA8);
  OUTLINED_FUNCTION_2_2(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_8_16();
  sub_26616B5F4();
  OUTLINED_FUNCTION_34_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA80, &qword_266194B48);
  OUTLINED_FUNCTION_1_17();
  sub_26616B098(v8);
  OUTLINED_FUNCTION_50_4();
  OUTLINED_FUNCTION_31_11();
  OUTLINED_FUNCTION_96();
  if (!v0)
  {
    v12 = *(v1 + *(type metadata accessor for AppLaunchDataModels.DeviceDisambiguationModel(0) + 20));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CB80, &qword_266194BB0);
    sub_26616B648();
    OUTLINED_FUNCTION_31_11();
    OUTLINED_FUNCTION_96();
  }

  v9 = *(v4 + 8);
  v10 = OUTLINED_FUNCTION_20_10();
  v11(v10);
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_140();
}

void AppLaunchDataModels.DeviceDisambiguationModel.init(from:)()
{
  OUTLINED_FUNCTION_38();
  v4 = v3;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA80, &qword_266194B48);
  OUTLINED_FUNCTION_2_2(v23);
  v21 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_28();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CB98, &qword_266194BB8);
  OUTLINED_FUNCTION_2_2(v24);
  v22 = v9;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_72_2();
  v13 = type metadata accessor for AppLaunchDataModels.DeviceDisambiguationModel(0);
  v14 = OUTLINED_FUNCTION_16(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_40_6();
  v17 = v4[4];
  OUTLINED_FUNCTION_35(v4, v4[3]);
  sub_26616B5F4();
  sub_26618D0E0();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v4);
  }

  else
  {
    OUTLINED_FUNCTION_0_23();
    sub_26616B098(v18);
    OUTLINED_FUNCTION_50_4();
    sub_26618CF30();
    v19 = *(v21 + 32);
    OUTLINED_FUNCTION_82_1();
    v20();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CB80, &qword_266194BB0);
    OUTLINED_FUNCTION_35_5();
    sub_26616B6FC();
    sub_26618CF30();
    (*(v22 + 8))(v2, v24);
    *(v1 + *(v13 + 20)) = v25;
    OUTLINED_FUNCTION_129();
    sub_26616B4A0();
    __swift_destroy_boxed_opaque_existential_1(v4);
    sub_26616B4F8();
  }

  OUTLINED_FUNCTION_39();
}

uint64_t AppLaunchDataModels.ConfirmationViewModel.primaryAction.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA90, &qword_266194B58);

  return sub_26618ABB0();
}

uint64_t AppLaunchDataModels.ConfirmationViewModel.primaryAction.setter()
{
  OUTLINED_FUNCTION_67_1();
  v0 = sub_26618AB50();
  v1 = OUTLINED_FUNCTION_2_2(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1_4();
  v5 = OUTLINED_FUNCTION_11_8(v4);
  v6(v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA90, &qword_266194B58);
  sub_26618ABC0();
  v7 = OUTLINED_FUNCTION_57_3();
  return v8(v7);
}

uint64_t (*AppLaunchDataModels.ConfirmationViewModel.primaryAction.modify())()
{
  v1 = OUTLINED_FUNCTION_27_5();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_28_10(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA90, &qword_266194B58);
  OUTLINED_FUNCTION_49_3();
  *(v0 + 32) = sub_26618ABA0();
  return sub_2661773C0;
}

uint64_t (*AppLaunchDataModels.ConfirmationViewModel.primaryLabel.modify())()
{
  v1 = OUTLINED_FUNCTION_27_5();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_12_13(v2);
  v4 = *(type metadata accessor for AppLaunchDataModels.ConfirmationViewModel(v3) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA80, &qword_266194B48);
  *(v0 + 32) = OUTLINED_FUNCTION_29_4();
  return sub_2661773C0;
}

uint64_t sub_26616AB38(uint64_t (*a1)(void))
{
  v1 = *(a1(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA90, &qword_266194B58);
  return sub_26618ABB0();
}

uint64_t sub_26616ABAC(uint64_t a1, uint64_t (*a2)(void))
{
  OUTLINED_FUNCTION_67_1();
  v5 = sub_26618AB50();
  v6 = OUTLINED_FUNCTION_2_2(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_40_6();
  (*(v8 + 16))(v3, v2, v5);
  LODWORD(a2) = *(a2(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA90, &qword_266194B58);
  sub_26618ABC0();
  v11 = *(v8 + 8);
  v12 = OUTLINED_FUNCTION_41_5();
  return v13(v12);
}

uint64_t (*AppLaunchDataModels.ConfirmationViewModel.secondaryAction.modify())()
{
  v1 = OUTLINED_FUNCTION_27_5();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_12_13(v2);
  v4 = *(type metadata accessor for AppLaunchDataModels.ConfirmationViewModel(v3) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA90, &qword_266194B58);
  *(v0 + 32) = OUTLINED_FUNCTION_29_4();
  return sub_2661773C0;
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

unint64_t sub_26616ADEC()
{
  result = qword_28005CAA8;
  if (!qword_28005CAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CAA8);
  }

  return result;
}

unint64_t sub_26616AE40(uint64_t a1)
{
  result = OUTLINED_FUNCTION_73_2(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28005CA88, &qword_266194B50);
    OUTLINED_FUNCTION_105();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_26616AEA8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_73_2(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_26616AEEC()
{
  result = qword_28005CAB8;
  if (!qword_28005CAB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28005CA80, &qword_266194B48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CAB8);
  }

  return result;
}

unint64_t sub_26616AF68()
{
  result = qword_28005CAC0;
  if (!qword_28005CAC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28005CA88, &qword_266194B50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CAC0);
  }

  return result;
}

unint64_t sub_26616AFE4()
{
  result = qword_28005CAC8;
  if (!qword_28005CAC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28005CA90, &qword_266194B58);
    sub_26616AEA8(&unk_28005CAD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CAC8);
  }

  return result;
}

unint64_t sub_26616B098(uint64_t a1)
{
  result = OUTLINED_FUNCTION_73_2(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28005CA80, &qword_266194B48);
    OUTLINED_FUNCTION_105();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_26616B100(uint64_t a1)
{
  result = OUTLINED_FUNCTION_73_2(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28005CA90, &qword_266194B58);
    sub_26616AEA8(&unk_2814B48A0);
    sub_26616AEA8(&unk_2814B48A8);
    OUTLINED_FUNCTION_105();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_26616B1CC()
{
  result = qword_28005CB08;
  if (!qword_28005CB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CB08);
  }

  return result;
}

unint64_t sub_26616B220()
{
  result = qword_28005CB10;
  if (!qword_28005CB10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28005CAF8, &qword_266194B70);
    sub_26616B2AC();
    sub_26616B360();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CB10);
  }

  return result;
}

unint64_t sub_26616B2AC()
{
  result = qword_28005CB18;
  if (!qword_28005CB18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28005C390, "Fi");
    sub_26616AEA8(&unk_28005CB20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CB18);
  }

  return result;
}

unint64_t sub_26616B360()
{
  result = qword_28005CB28;
  if (!qword_28005CB28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28005C390, "Fi");
    sub_26616AEA8(&unk_28005CB30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CB28);
  }

  return result;
}

unint64_t sub_26616B414()
{
  result = qword_28005CB40;
  if (!qword_28005CB40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28005CAF8, &qword_266194B70);
    sub_26616B2AC();
    sub_26616B360();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CB40);
  }

  return result;
}

uint64_t sub_26616B4A0()
{
  OUTLINED_FUNCTION_70_2();
  v2 = v1(0);
  OUTLINED_FUNCTION_16(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_19_7();
  v6(v5);
  return v0;
}

uint64_t sub_26616B4F8()
{
  v1 = OUTLINED_FUNCTION_67_1();
  v3 = v2(v1);
  OUTLINED_FUNCTION_16(v3);
  (*(v4 + 8))(v0);
  return v0;
}

unint64_t sub_26616B54C()
{
  result = qword_2814B4298;
  if (!qword_2814B4298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814B4298);
  }

  return result;
}

unint64_t sub_26616B5A0()
{
  result = qword_28005CB60;
  if (!qword_28005CB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CB60);
  }

  return result;
}

unint64_t sub_26616B5F4()
{
  result = qword_28005CB78;
  if (!qword_28005CB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CB78);
  }

  return result;
}

unint64_t sub_26616B648()
{
  result = qword_28005CB88;
  if (!qword_28005CB88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28005CB80, &qword_266194BB0);
    sub_26616AEA8(&unk_28005CB90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CB88);
  }

  return result;
}

unint64_t sub_26616B6FC()
{
  result = qword_28005CBA0;
  if (!qword_28005CBA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28005CB80, &qword_266194BB0);
    sub_26616AEA8(&unk_28005CBA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CBA0);
  }

  return result;
}

uint64_t AppLaunchDataModels.ConfirmationViewModel.secondaryLabel.getter()
{
  v0 = *(type metadata accessor for AppLaunchDataModels.ConfirmationViewModel(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA80, &qword_266194B48);
  sub_26618ABB0();
  return v2;
}

uint64_t AppLaunchDataModels.ConfirmationViewModel.secondaryLabel.setter(uint64_t a1)
{
  v1 = *(type metadata accessor for AppLaunchDataModels.ConfirmationViewModel(0) + 28);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA80, &qword_266194B48);
  OUTLINED_FUNCTION_127(v2, v3, v4, v5, v6, v7, v8, v9, a1);
  return sub_26618ABC0();
}

uint64_t (*AppLaunchDataModels.ConfirmationViewModel.secondaryLabel.modify())()
{
  v1 = OUTLINED_FUNCTION_27_5();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_12_13(v2);
  v4 = *(type metadata accessor for AppLaunchDataModels.ConfirmationViewModel(v3) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA80, &qword_266194B48);
  *(v0 + 32) = OUTLINED_FUNCTION_29_4();
  return sub_2661773C0;
}

uint64_t sub_26616B8C8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x417972616D697270 && a2 == 0xED00006E6F697463;
  if (v4 || (sub_26618D000() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x4C7972616D697270 && a2 == 0xEC0000006C656261;
    if (v6 || (sub_26618D000() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7261646E6F636573 && a2 == 0xEF6E6F6974634179;
      if (v7 || (sub_26618D000() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x7261646E6F636573 && a2 == 0xEE006C6562614C79)
      {

        return 3;
      }

      else
      {
        v9 = sub_26618D000();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_26616BA3C(char a1)
{
  result = 0x417972616D697270;
  switch(a1)
  {
    case 1:
      result = 0x4C7972616D697270;
      break;
    case 2:
    case 3:
      result = 0x7261646E6F636573;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26616BAE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26616B8C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26616BB0C(uint64_t a1)
{
  v2 = sub_26616BD50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26616BB48(uint64_t a1)
{
  v2 = sub_26616BD50();

  return MEMORY[0x2821FE720](a1, v2);
}

void AppLaunchDataModels.ConfirmationViewModel.encode(to:)()
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_47();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CBB0, &qword_266194BC0);
  OUTLINED_FUNCTION_2_2(v1);
  v3 = v2;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_8_16();
  sub_26616BD50();
  OUTLINED_FUNCTION_34_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA90, &qword_266194B58);
  OUTLINED_FUNCTION_1_17();
  sub_26616B100(v7);
  OUTLINED_FUNCTION_112();
  OUTLINED_FUNCTION_24_7();
  OUTLINED_FUNCTION_96();
  if (!v0)
  {
    v15 = type metadata accessor for AppLaunchDataModels.ConfirmationViewModel(0);
    v8 = v15[5];
    OUTLINED_FUNCTION_35_5();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA80, &qword_266194B48);
    OUTLINED_FUNCTION_1_17();
    sub_26616B098(v9);
    OUTLINED_FUNCTION_96();
    v10 = v15[6];
    OUTLINED_FUNCTION_24_7();
    OUTLINED_FUNCTION_96();
    v11 = v15[7];
    OUTLINED_FUNCTION_96();
  }

  v12 = *(v3 + 8);
  v13 = OUTLINED_FUNCTION_20_10();
  v14(v13);
  OUTLINED_FUNCTION_77_1();
  OUTLINED_FUNCTION_39();
}

unint64_t sub_26616BD50()
{
  result = qword_28005CBB8;
  if (!qword_28005CBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CBB8);
  }

  return result;
}

void AppLaunchDataModels.ConfirmationViewModel.init(from:)()
{
  OUTLINED_FUNCTION_38();
  v4 = v3;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA80, &qword_266194B48);
  v5 = OUTLINED_FUNCTION_2_2(v42);
  v38 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_24_1();
  v37 = v9 - v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_7_16();
  OUTLINED_FUNCTION_125(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA90, &qword_266194B58);
  v14 = OUTLINED_FUNCTION_2_2(v13);
  v39 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_98();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_7_16();
  OUTLINED_FUNCTION_107(v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CBC0, &unk_266194BC8);
  OUTLINED_FUNCTION_2_2(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_37_4();
  v24 = type metadata accessor for AppLaunchDataModels.ConfirmationViewModel(0);
  v25 = OUTLINED_FUNCTION_16(v24);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_94();
  v28 = v4[4];
  OUTLINED_FUNCTION_35(v4, v4[3]);
  sub_26616BD50();
  sub_26618D0E0();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v4);
  }

  else
  {
    v35 = v2;
    v36 = v0;
    OUTLINED_FUNCTION_0_23();
    sub_26616B100(v29);
    sub_26618CF30();
    v30 = *(v39 + 32);
    v30(v0, v41, v13);
    OUTLINED_FUNCTION_35_5();
    OUTLINED_FUNCTION_0_23();
    sub_26616B098(v31);
    sub_26618CF30();
    v32 = *(v38 + 32);
    v32(v36 + v24[5], v40, v42);
    OUTLINED_FUNCTION_33();
    sub_26618CF30();
    v30(v36 + v24[6], v35, v13);
    sub_26618CF30();
    v33 = OUTLINED_FUNCTION_54_4();
    v34(v33);
    v32(v36 + v24[7], v37, v42);
    sub_26616B4A0();
    __swift_destroy_boxed_opaque_existential_1(v4);
    sub_26616B4F8();
  }

  OUTLINED_FUNCTION_39();
}

uint64_t property wrapper backing initializer of AppLaunchDataModels.AppResultModel.adamId(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C3D8, qword_266192200);
  OUTLINED_FUNCTION_127(v1, v2, v3, v4, v5, v6, v7, v8, a1);
  return sub_26618AB90();
}

void sub_26616C38C()
{
  OUTLINED_FUNCTION_6_0();
  v2 = v1;
  v4 = v3;
  v48 = v5;
  v6 = sub_26618C6B0();
  v7 = OUTLINED_FUNCTION_2_2(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_18_2();
  v10 = sub_26618A7D0();
  v11 = OUTLINED_FUNCTION_2_2(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_94();
  v16 = sub_26618AA00();
  v17 = OUTLINED_FUNCTION_2_2(v16);
  v46 = v18;
  v47 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1_4();
  v23 = v22 - v21;
  v49 = v4;
  sub_26616C8C4(v4, v2, v22 - v21);
  v24 = sub_26618A9A0();
  v52 = *(v24 + 16);
  if (v52)
  {
    v25 = 0;
    v50 = v24 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v53 = MEMORY[0x277D84F90];
    v51 = v13;
    v26 = (v13 + 8);
    while (v25 < *(v24 + 16))
    {
      v27 = v24;
      (*(v51 + 16))(v0, v50 + *(v51 + 72) * v25, v10);
      OUTLINED_FUNCTION_51_3();
      sub_26616AEA8(&unk_28005CFA0);
      v28 = sub_26618C3E0();
      v30 = v29;
      v31 = *v26;
      v32 = OUTLINED_FUNCTION_41_5();
      v33(v32);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = *(v53 + 16);
        sub_266129D24();
        v53 = v38;
      }

      v35 = *(v53 + 16);
      v34 = *(v53 + 24);
      if (v35 >= v34 >> 1)
      {
        OUTLINED_FUNCTION_38_2(v34);
        sub_266129D24();
        v53 = v39;
      }

      *(v53 + 16) = v35 + 1;
      v36 = v53 + 16 * v35;
      *(v36 + 32) = v28;
      *(v36 + 40) = v30;
      ++v25;
      v24 = v27;
      if (v52 == v25)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_9:

    sub_26618A9E0();
    sub_26618A9F0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C3D8, qword_266192200);
    sub_26618AB90();
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CC00, &qword_266194BF0);
    OUTLINED_FUNCTION_16(v40);
    (*(v41 + 8))(v48);
    sub_26618AB90();
    v42 = type metadata accessor for AppLaunchDataModels.AppResultModel(0);
    v43 = *(v42 + 20);
    sub_26618AB90();
    v44 = *(v42 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CBC8, &qword_266194BD8);
    sub_26618AB90();
    __swift_destroy_boxed_opaque_existential_1(v2);
    v45 = *(v46 + 8);
    v45(v49, v47);
    v45(v23, v47);
    OUTLINED_FUNCTION_7_1();
  }
}

uint64_t sub_26616C8C4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v31 = sub_26618A7D0();
  v39 = *(v31 - 8);
  v6 = *(v39 + 64);
  v7 = MEMORY[0x28223BE20](v31);
  v38 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v29 - v9;
  v10 = sub_26618AA00();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = *(v11 + 16);
  v37 = a1;
  v36(v14, a1, v10);
  v15 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v16 = sub_26618A9F0();
  LOBYTE(a2) = (*(v15 + 48))(v16);

  if (a2)
  {
    v30 = v11;
    v17 = sub_26618A9A0();
    v18 = *(v17 + 16);
    if (v18)
    {
      v29 = v14;
      v41 = MEMORY[0x277D84F90];
      sub_26612A6A0();
      v19 = 0;
      v20 = v41;
      v35 = (*(v39 + 80) + 32) & ~*(v39 + 80);
      v34 = v17 + v35;
      v36 = (v39 + 8);
      v37 = v17;
      v32 = (v39 + 32);
      v33 = v39 + 16;
      v21 = v31;
      while (v19 < *(v17 + 16))
      {
        v22 = v10;
        v23 = a3;
        v24 = v38;
        v25 = *(v39 + 72);
        (*(v39 + 16))(v38, v34 + v25 * v19, v21);
        sub_266170C7C(v24, v40);
        (*v36)(v24, v21);
        v41 = v20;
        v26 = *(v20 + 16);
        if (v26 >= *(v20 + 24) >> 1)
        {
          sub_26612A6A0();
          v20 = v41;
        }

        ++v19;
        *(v20 + 16) = v26 + 1;
        (*v32)(v20 + v35 + v26 * v25, v40, v21);
        a3 = v23;
        v10 = v22;
        v17 = v37;
        if (v18 == v19)
        {

          v14 = v29;
          v28 = v30;
          goto LABEL_11;
        }
      }

      __break(1u);
      (*v36)(v17, v21);

      __break(1u);
    }

    else
    {

      v28 = v30;
LABEL_11:
      sub_26618A9B0();
      return (*(v28 + 32))(a3, v14, v10);
    }
  }

  else
  {
    (*(v11 + 8))(v14, v10);
    return (v36)(a3, v37, v10);
  }

  return result;
}

void AppLaunchDataModels.AppResultModel.getCardSections()()
{
  OUTLINED_FUNCTION_6_0();
  v1 = sub_26618C6B0();
  v2 = OUTLINED_FUNCTION_2_2(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_4();
  v7 = OUTLINED_FUNCTION_101();
  v8 = *(type metadata accessor for AppLaunchDataModels.AppResultModel(v7) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CBD0, &qword_266194BE0);
  sub_26618ABB0();
  v9 = 0;
  v10 = v42;
  v11 = v42 + 40;
  v38 = v42 + 40;
  v12 = *(v42 + 16);
  v41 = (v4 + 16);
  v43 = MEMORY[0x277D84F90];
  v39 = v10;
  v40 = (v4 + 8);
LABEL_2:
  for (i = (v11 + 16 * v9); ; i += 2)
  {
    if (v12 == v9)
    {

      OUTLINED_FUNCTION_7_1();
      return;
    }

    if (v9 >= *(v10 + 16))
    {
      break;
    }

    v14 = *(i - 1);
    v15 = *i;
    v16 = objc_allocWithZone(MEMORY[0x277D4C730]);
    v17 = OUTLINED_FUNCTION_87_0();
    sub_2660C924C(v17, v18);
    v19 = OUTLINED_FUNCTION_87_0();
    sub_2660C924C(v19, v20);
    v21 = OUTLINED_FUNCTION_87_0();
    v23 = sub_266173074(v21, v22);
    if (v23)
    {
      v24 = v23;
      v25 = [objc_allocWithZone(MEMORY[0x277D4C238]) initWithProtobuf_];

      v26 = OUTLINED_FUNCTION_87_0();
      v28 = sub_2660C55C0(v26, v27);
      if (v25)
      {
        MEMORY[0x26677BD40](v28);
        v37 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x18);
        if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v37 >> 1)
        {
          OUTLINED_FUNCTION_38_2(v37);
          sub_26618C9D0();
        }

        ++v9;
        sub_26618C9F0();
        v11 = v38;
        goto LABEL_2;
      }
    }

    else
    {
      if (qword_2814B2C38 != -1)
      {
        OUTLINED_FUNCTION_4_21();
        swift_once();
      }

      v29 = __swift_project_value_buffer(v1, qword_2814B4A80);
      (*v41)(v0, v29, v1);
      v30 = sub_26618C690();
      v31 = sub_26618CAB0();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = OUTLINED_FUNCTION_6_2();
        *v32 = 0;
        _os_log_impl(&dword_2660B7000, v30, v31, "AppLaunchDataModels: failed to decode sf card pb data", v32, 2u);
        v10 = v39;
        OUTLINED_FUNCTION_10_2();
        MEMORY[0x26677CC30]();

        v33 = OUTLINED_FUNCTION_87_0();
        sub_2660C55C0(v33, v34);
      }

      else
      {
        v35 = OUTLINED_FUNCTION_87_0();
        sub_2660C55C0(v35, v36);
      }

      (*v40)(v0, v1);
    }

    ++v9;
  }

  __break(1u);
}

uint64_t sub_26616CFA8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64496D616461 && a2 == 0xE600000000000000;
  if (v4 || (sub_26618D000() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000;
    if (v6 || (sub_26618D000() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x7463655364726163 && a2 == 0xEF617461446E6F69)
    {

      return 2;
    }

    else
    {
      v8 = sub_26618D000();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_26616D0BC(char a1)
{
  if (!a1)
  {
    return 0x64496D616461;
  }

  if (a1 == 1)
  {
    return 0x6449656C646E7562;
  }

  return 0x7463655364726163;
}

uint64_t sub_26616D124@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26616CFA8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26616D14C(uint64_t a1)
{
  v2 = sub_2661731B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26616D188(uint64_t a1)
{
  v2 = sub_2661731B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t static AppLaunchDataModels.AppResultModel.__derived_struct_equals(_:_:)()
{
  OUTLINED_FUNCTION_70_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C3D8, qword_266192200);
  sub_2661730E8();
  OUTLINED_FUNCTION_81_1();
  if ((sub_26618ABD0() & 1) == 0)
  {
    return 0;
  }

  v0 = type metadata accessor for AppLaunchDataModels.AppResultModel(0);
  v1 = *(v0 + 20);
  if ((OUTLINED_FUNCTION_138() & 1) == 0)
  {
    return 0;
  }

  v2 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CBC8, &qword_266194BD8);
  sub_2661736BC(&unk_28005CBE0);
  OUTLINED_FUNCTION_56_2();

  return sub_26618ABD0();
}

void AppLaunchDataModels.AppResultModel.encode(to:)()
{
  OUTLINED_FUNCTION_141();
  OUTLINED_FUNCTION_20_15();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CBF0, &qword_266194BE8);
  OUTLINED_FUNCTION_2_2(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_16_11();
  OUTLINED_FUNCTION_8_16();
  sub_2661731B8();
  OUTLINED_FUNCTION_23_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CC00, &qword_266194BF0);
  sub_26617320C();
  OUTLINED_FUNCTION_13_9();
  if (!v0)
  {
    v5 = type metadata accessor for AppLaunchDataModels.AppResultModel(0);
    v6 = *(v5 + 20);
    OUTLINED_FUNCTION_35_5();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA80, &qword_266194B48);
    OUTLINED_FUNCTION_1_17();
    sub_26616B098(v7);
    OUTLINED_FUNCTION_15_9();
    v8 = *(v5 + 24);
    OUTLINED_FUNCTION_33();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CBD0, &qword_266194BE0);
    OUTLINED_FUNCTION_1_17();
    sub_266173390(v9);
    OUTLINED_FUNCTION_75_2();
    OUTLINED_FUNCTION_15_9();
  }

  v10 = OUTLINED_FUNCTION_33_3();
  v11(v10);
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_140();
}

uint64_t AppLaunchDataModels.AppResultModel.hash(into:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CC00, &qword_266194BF0);
  sub_266173508();
  OUTLINED_FUNCTION_41_5();
  sub_26618C870();
  v0 = type metadata accessor for AppLaunchDataModels.AppResultModel(0);
  v1 = *(v0 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA80, &qword_266194B48);
  sub_26616AEEC();
  OUTLINED_FUNCTION_84_0();
  sub_26618C870();
  v2 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CBD0, &qword_266194BE0);
  sub_266173608();
  OUTLINED_FUNCTION_41_5();
  return sub_26618C870();
}

uint64_t AppLaunchDataModels.AppResultModel.hashValue.getter()
{
  OUTLINED_FUNCTION_122();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CC00, &qword_266194BF0);
  sub_266173508();
  sub_26618C870();
  v0 = type metadata accessor for AppLaunchDataModels.AppResultModel(0);
  v1 = *(v0 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA80, &qword_266194B48);
  v2 = sub_26616AEEC();
  OUTLINED_FUNCTION_38_4(v2, v3, v4, v5, v6, v7, v8, v9, v20, v22);
  sub_26618C870();
  v10 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CBD0, &qword_266194BE0);
  v11 = sub_266173608();
  OUTLINED_FUNCTION_38_4(v11, v12, v13, v14, v15, v16, v17, v18, v21, v23);
  sub_26618C870();
  return sub_26618D0C0();
}

void AppLaunchDataModels.AppResultModel.init(from:)()
{
  OUTLINED_FUNCTION_38();
  v6 = v5;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CBD0, &qword_266194BE0);
  OUTLINED_FUNCTION_2_2(v34);
  v33 = v7;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_46();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA80, &qword_266194B48);
  OUTLINED_FUNCTION_2_2(v38);
  v35 = v11;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_93();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CC00, &qword_266194BF0);
  OUTLINED_FUNCTION_2_2(v15);
  v39 = v16;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_37_4();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CC70, &qword_266194BF8);
  OUTLINED_FUNCTION_2_2(v36);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v22);
  v37 = type metadata accessor for AppLaunchDataModels.AppResultModel(0);
  v23 = OUTLINED_FUNCTION_16(v37);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_72_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C3D8, qword_266192200);
  sub_26618AB90();
  v26 = v6[4];
  OUTLINED_FUNCTION_35(v6, v6[3]);
  sub_2661731B8();
  sub_26618D0E0();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v6);
    v27 = OUTLINED_FUNCTION_131();
    v28(v27, v15);
  }

  else
  {
    sub_266173784();
    sub_26618CF30();
    (*(v39 + 40))(v3, v4);
    OUTLINED_FUNCTION_0_23();
    sub_26616B098(v29);
    sub_26618CF30();
    (*(v35 + 32))(v3 + *(v37 + 20), v1, v38);
    OUTLINED_FUNCTION_0_23();
    sub_266173390(v30);
    sub_26618CF30();
    v31 = OUTLINED_FUNCTION_25_11();
    v32(v31);
    (*(v33 + 32))(v3 + *(v37 + 24), v2, v34);
    OUTLINED_FUNCTION_5_16();
    sub_26616B4A0();
    __swift_destroy_boxed_opaque_existential_1(v6);
    OUTLINED_FUNCTION_2_21();
    sub_26616B4F8();
  }

  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_39();
}

uint64_t sub_26616DA78(uint64_t a1, uint64_t a2)
{
  sub_26618D090();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CC00, &qword_266194BF0);
  sub_266173508();
  sub_26618C870();
  v3 = *(a2 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA80, &qword_266194B48);
  sub_26616AEEC();
  sub_26618C870();
  v4 = *(a2 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CBD0, &qword_266194BE0);
  sub_266173608();
  sub_26618C870();
  return sub_26618D0C0();
}

uint64_t _s20SiriAppLaunchIntents0bC10DataModelsO0B0V4nameSSvg_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA80, &qword_266194B48);
  sub_26618ABB0();
  return v1;
}

uint64_t _s20SiriAppLaunchIntents0bC10DataModelsO0B0V4nameSSvs_0(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA80, &qword_266194B48);
  OUTLINED_FUNCTION_127(v1, v2, v3, v4, v5, v6, v7, v8, a1);
  return sub_26618ABC0();
}

uint64_t (*AppLaunchDataModels.AppResultSashModel.text.modify())()
{
  v1 = OUTLINED_FUNCTION_27_5();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_28_10(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA80, &qword_266194B48);
  OUTLINED_FUNCTION_49_3();
  *(v0 + 32) = sub_26618ABA0();
  return sub_2661773C0;
}

uint64_t (*AppLaunchDataModels.AppResultSashModel.marketplaceId.modify())()
{
  v1 = OUTLINED_FUNCTION_27_5();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_12_13(v2);
  v4 = *(type metadata accessor for AppLaunchDataModels.AppResultSashModel(v3) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA80, &qword_266194B48);
  *(v0 + 32) = OUTLINED_FUNCTION_29_4();
  return sub_2661773C0;
}

uint64_t _s20SiriAppLaunchIntents0bC10DataModelsO0B0V14actionProperty10SnippetKit06ActionH0VvpfP_0()
{
  v0 = sub_26618AB50();
  v1 = OUTLINED_FUNCTION_2_2(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1_4();
  v5 = OUTLINED_FUNCTION_11_8(v4);
  v6(v5);
  sub_26618AB90();
  v7 = OUTLINED_FUNCTION_57_3();
  return v8(v7);
}

uint64_t (*AppLaunchDataModels.AppResultSashModel.action.modify())()
{
  v1 = OUTLINED_FUNCTION_27_5();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_12_13(v2);
  v4 = *(type metadata accessor for AppLaunchDataModels.AppResultSashModel(v3) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA90, &qword_266194B58);
  *(v0 + 32) = OUTLINED_FUNCTION_29_4();
  return sub_2661773C0;
}

void sub_26616DE6C()
{
  OUTLINED_FUNCTION_6_0();
  v56 = v3;
  v57 = v4;
  v51 = v5;
  v7 = v6;
  v9 = v8;
  OUTLINED_FUNCTION_70_2();
  v10 = sub_26618C6B0();
  v11 = OUTLINED_FUNCTION_2_2(v10);
  v53 = v12;
  v54 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_40_6();
  v15 = sub_26618AB50();
  v16 = OUTLINED_FUNCTION_2_2(v15);
  v52 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_103();
  MEMORY[0x28223BE20](v20);
  v22 = &v49 - v21;
  v23 = type metadata accessor for AppLaunchDataModels.AppResultSashModel(0);
  v24 = OUTLINED_FUNCTION_16(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_72_2();
  v55 = v1;
  v27 = sub_26616E300(v1, v0, v9, v7);
  v28 = v51;
  v50 = v22;
  v53 = v15;
  v54 = v2;
  v29 = v56;
  v58 = v27;
  v59 = v30;
  sub_26618AB90();
  v31 = *(v23 + 20);
  v32 = v55;
  v58 = v55;
  v59 = v0;

  sub_26618AB90();
  v33 = v32 == 0xD000000000000012 && 0x8000000266199A10 == v0;
  if (v33 || (sub_26618D000() & 1) != 0)
  {

    v34 = static AppSearchCommands.searchAppStoreAceCommand(appName:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C080, &unk_26618FAC0);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_26618E190;
    v36 = sub_26618AB80();
    v37 = MEMORY[0x277D63778];
    *(v35 + 56) = v36;
    *(v35 + 64) = v37;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v35 + 32));
    *boxed_opaque_existential_0 = v34;
    *(boxed_opaque_existential_0 + 8) = 0;
    v39 = *MEMORY[0x277D63720];
    (*(*(v36 - 8) + 104))();
    v40 = v50;
    sub_26618AB60();
  }

  else
  {
    v40 = v50;
    static AppSearchCommands.searchMarketplaceActionProperty(appName:marketplace:)(v28, v29, v55, v0);
  }

  v42 = v52;
  v41 = v53;
  v43 = v54;

  v44 = *(v23 + 24);
  (*(v42 + 16))(v43, v40, v41);
  sub_26618AB90();
  v45 = *(v42 + 8);
  v46 = OUTLINED_FUNCTION_110();
  v47(v46);
  v48 = v57;
  sub_26617449C();
  __swift_storeEnumTagSinglePayload(v48, 0, 1, v23);
  OUTLINED_FUNCTION_7_1();
}

uint64_t sub_26616E300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_26618C6B0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_26618B810();
  type metadata accessor for LocUtil();
  inited = swift_initStackObject();
  sub_2660CD484(&v21, inited + 16);
  sub_26617CA00(0x45524F4D5F454553, 0xE800000000000000);
  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C4B0, &qword_266196770);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_26618E190;
    *(v13 + 56) = MEMORY[0x277D837D0];
    *(v13 + 64) = sub_2661120AC();
    *(v13 + 32) = a3;
    *(v13 + 40) = a4;

    v6 = sub_26618C8C0();

    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_1((inited + 16));
  }

  else
  {
    if (qword_2814B2C38 != -1)
    {
      swift_once();
    }

    v14 = __swift_project_value_buffer(v6, qword_2814B4A80);
    (*(v7 + 16))(v10, v14, v6);
    v15 = sub_26618C690();
    v16 = sub_26618CAB0();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_2660B7000, v15, v16, "AppResultSashModel.getSeeMoreText unable to get localized system text for snippet", v17, 2u);
      MEMORY[0x26677CC30](v17, -1, -1);
    }

    (*(v7 + 8))(v10, v6);
    sub_2660D3004();
    swift_allocError();
    *v18 = 7;
    swift_willThrow();
    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_1((inited + 16));
  }

  return v6;
}

uint64_t sub_26616E5D0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1954047348 && a2 == 0xE400000000000000;
  if (v3 || (sub_26618D000() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C7074656B72616DLL && a2 == 0xED00006449656361;
    if (v6 || (sub_26618D000() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_26618D000();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_26616E6E4(char a1)
{
  if (!a1)
  {
    return 1954047348;
  }

  if (a1 == 1)
  {
    return 0x6C7074656B72616DLL;
  }

  return 0x6E6F69746361;
}

uint64_t sub_26616E744@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26616E5D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26616E76C(uint64_t a1)
{
  v2 = sub_266173830();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26616E7A8(uint64_t a1)
{
  v2 = sub_266173830();

  return MEMORY[0x2821FE720](a1, v2);
}

void AppLaunchDataModels.AppResultSashModel.encode(to:)()
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_20_15();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CC88, &qword_266194C00);
  OUTLINED_FUNCTION_2_2(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_16_11();
  OUTLINED_FUNCTION_8_16();
  sub_266173830();
  OUTLINED_FUNCTION_23_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA80, &qword_266194B48);
  OUTLINED_FUNCTION_1_17();
  sub_26616B098(v8);
  OUTLINED_FUNCTION_112();
  OUTLINED_FUNCTION_24_7();
  OUTLINED_FUNCTION_78_0();
  if (!v0)
  {
    v9 = type metadata accessor for AppLaunchDataModels.AppResultSashModel(0);
    OUTLINED_FUNCTION_100(v9);
    OUTLINED_FUNCTION_24_7();
    OUTLINED_FUNCTION_78_0();
    v10 = *(v9 + 24);
    OUTLINED_FUNCTION_33();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA90, &qword_266194B58);
    OUTLINED_FUNCTION_1_17();
    sub_26616B100(v11);
    OUTLINED_FUNCTION_75_2();
    OUTLINED_FUNCTION_15_9();
  }

  (*(v4 + 8))(v1, v2);
  OUTLINED_FUNCTION_77_1();
  OUTLINED_FUNCTION_39();
}

void AppLaunchDataModels.AppResultSashModel.init(from:)()
{
  OUTLINED_FUNCTION_38();
  v2 = v1;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA90, &qword_266194B58);
  OUTLINED_FUNCTION_2_2(v34);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_30_7();
  OUTLINED_FUNCTION_125(v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA80, &qword_266194B48);
  v8 = OUTLINED_FUNCTION_2_2(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_61_2();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_7_16();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CC98, &qword_266194C08);
  OUTLINED_FUNCTION_2_2(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_94();
  v16 = type metadata accessor for AppLaunchDataModels.AppResultSashModel(0);
  v17 = OUTLINED_FUNCTION_16(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_93();
  v21 = v2[3];
  v20 = v2[4];
  v22 = OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_35(v22, v23);
  sub_266173830();
  OUTLINED_FUNCTION_115();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    OUTLINED_FUNCTION_0_23();
    sub_26616B098(v24);
    OUTLINED_FUNCTION_112();
    OUTLINED_FUNCTION_22_9();
    v25 = OUTLINED_FUNCTION_91();
    v26(v25);
    OUTLINED_FUNCTION_35_5();
    OUTLINED_FUNCTION_22_9();
    v27 = OUTLINED_FUNCTION_76_2();
    v28(v27);
    OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_0_23();
    sub_26616B100(v29);
    OUTLINED_FUNCTION_69_2();
    v30 = OUTLINED_FUNCTION_18_12();
    v31(v30);
    v32 = OUTLINED_FUNCTION_74_1();
    v33(v32);
    sub_26616B4A0();
    __swift_destroy_boxed_opaque_existential_1(v2);
    sub_26616B4F8();
  }

  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_39();
}

uint64_t AppLaunchDataModels.AppResultWrapperModel.results.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CCA0, &qword_266194C18);
  sub_26618ABB0();
  return v1;
}

uint64_t (*AppLaunchDataModels.AppResultWrapperModel.results.modify())()
{
  v1 = OUTLINED_FUNCTION_27_5();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_28_10(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CCA0, &qword_266194C18);
  OUTLINED_FUNCTION_49_3();
  *(v0 + 32) = sub_26618ABA0();
  return sub_2661773C0;
}

uint64_t sub_26616EE80(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v5 = *(a1(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  return sub_26618ABB0();
}

uint64_t AppLaunchDataModels.AppResultWrapperModel.seeMoreSash.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C1E8, &qword_266192910);
  OUTLINED_FUNCTION_3_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_16_11();
  OUTLINED_FUNCTION_84_0();
  sub_266173FBC();
  v4 = *(type metadata accessor for AppLaunchDataModels.AppResultWrapperModel(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C208, &unk_266192930);
  OUTLINED_FUNCTION_128();
  sub_26618ABC0();
  OUTLINED_FUNCTION_88_0();
  return sub_2660BF79C(v5, v6, v7);
}

uint64_t (*AppLaunchDataModels.AppResultWrapperModel.seeMoreSash.modify())()
{
  v1 = OUTLINED_FUNCTION_27_5();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_12_13(v2);
  v4 = *(type metadata accessor for AppLaunchDataModels.AppResultWrapperModel(v3) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C208, &unk_266192930);
  *(v0 + 32) = OUTLINED_FUNCTION_29_4();
  return sub_2661773C0;
}

void sub_26616F014(uint64_t a1, uint64_t a2)
{
  v5 = sub_26618AA00();
  v6 = OUTLINED_FUNCTION_2_2(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_93();
  (*(v9 + 16))(v2, a1);
  sub_2660C5864(a2, v10);
  sub_26616C38C();
}

void AppLaunchDataModels.AppResultWrapperModel.getCard()()
{
  OUTLINED_FUNCTION_6_0();
  v2 = type metadata accessor for AppLaunchDataModels.AppResultModel(0);
  v3 = OUTLINED_FUNCTION_2_2(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_101();
  v8 = sub_26618C6B0();
  v9 = OUTLINED_FUNCTION_2_2(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_61_2();
  MEMORY[0x28223BE20](v14);
  v16 = (&v53 - v15);
  if (qword_2814B2C38 != -1)
  {
LABEL_26:
    OUTLINED_FUNCTION_4_21();
    swift_once();
  }

  v17 = __swift_project_value_buffer(v8, qword_2814B4A80);
  v18 = *(v11 + 16);
  v67 = v11 + 16;
  v68 = v17;
  v63 = v8;
  v66 = v18;
  (v18)(v16);
  v19 = sub_26618C690();
  v20 = sub_26618CA90();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = OUTLINED_FUNCTION_6_2();
    *v21 = 0;
    _os_log_impl(&dword_2660B7000, v19, v20, "AppSearchResultWrapperModel: returning SFCard with results", v21, 2u);
    OUTLINED_FUNCTION_10_2();
    MEMORY[0x26677CC30](v22);
  }

  v24 = *(v11 + 8);
  v23 = v11 + 8;
  v65 = v24;
  v24(v16, v63);
  v25 = [objc_allocWithZone(MEMORY[0x277D4C230]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CCA0, &qword_266194C18);
  sub_26618ABB0();
  v26 = v70;
  v70 = MEMORY[0x277D84F90];
  v59 = *(v26 + 16);
  if (v59)
  {
    v53 = v26;
    v54 = v25;
    v64 = v23;
    v8 = 0;
    v58 = v26 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v27 = *(v2 + 24);
    v56 = *(v5 + 72);
    v57 = v27;
    v2 = v63;
    v55 = v0;
    while (2)
    {
      v61 = v8;
      OUTLINED_FUNCTION_5_16();
      sub_26616B4A0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CBD0, &qword_266194BE0);
      v16 = (v0 + v57);
      sub_26618ABB0();
      v11 = 0;
      v5 = v69;
      v28 = v69 + 40;
      v69 = MEMORY[0x277D84F90];
      v0 = *(v5 + 16);
      v62 = MEMORY[0x277D84F90];
      v60 = v5 + 40;
LABEL_7:
      v29 = (v28 + 16 * v11);
      while (v0 != v11)
      {
        if (v11 >= *(v5 + 16))
        {
          __break(1u);
          goto LABEL_26;
        }

        v8 = *(v29 - 1);
        v30 = *v29;
        v31 = objc_allocWithZone(MEMORY[0x277D4C730]);
        v32 = OUTLINED_FUNCTION_85_0();
        sub_2660C924C(v32, v33);
        v34 = OUTLINED_FUNCTION_85_0();
        sub_2660C924C(v34, v35);
        v36 = OUTLINED_FUNCTION_85_0();
        v38 = sub_266173074(v36, v37);
        if (v38)
        {
          v16 = v38;
          v39 = objc_allocWithZone(MEMORY[0x277D4C238]);
          v40 = [v39 initWithProtobuf_];

          v41 = OUTLINED_FUNCTION_85_0();
          v43 = sub_2660C55C0(v41, v42);
          if (v40)
          {
            v16 = &v69;
            MEMORY[0x26677BD40](v43);
            v8 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
            v51 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x18);
            if (v8 >= v51 >> 1)
            {
              OUTLINED_FUNCTION_38_2(v51);
              sub_26618C9D0();
            }

            ++v11;
            sub_26618C9F0();
            v62 = v69;
            v28 = v60;
            goto LABEL_7;
          }
        }

        else
        {
          v66(v1, v68, v2);
          v16 = sub_26618C690();
          v44 = sub_26618CAB0();
          if (os_log_type_enabled(v16, v44))
          {
            v45 = OUTLINED_FUNCTION_6_2();
            *v45 = 0;
            _os_log_impl(&dword_2660B7000, v16, v44, "AppLaunchDataModels: failed to decode sf card pb data", v45, 2u);
            v2 = v63;
            OUTLINED_FUNCTION_10_2();
            MEMORY[0x26677CC30](v46);

            v47 = OUTLINED_FUNCTION_85_0();
            sub_2660C55C0(v47, v48);
          }

          else
          {
            v49 = OUTLINED_FUNCTION_85_0();
            sub_2660C55C0(v49, v50);
          }

          v65(v1, v2);
        }

        v29 += 2;
        ++v11;
      }

      v8 = v61 + 1;
      OUTLINED_FUNCTION_2_21();
      v0 = v55;
      sub_26616B4F8();
      sub_266167194(v62);
      if (v8 != v59)
      {
        continue;
      }

      break;
    }

    v52 = v70;
    v25 = v54;
  }

  else
  {

    v52 = MEMORY[0x277D84F90];
  }

  sub_2661739F4(v52, v25);
  OUTLINED_FUNCTION_7_1();
}

void AppLaunchDataModels.AppResultWrapperModel.getAdamIds()()
{
  OUTLINED_FUNCTION_6_0();
  v0 = type metadata accessor for AppLaunchDataModels.AppResultModel(0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0 - 8);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_94();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CCA0, &qword_266194C18);
  sub_26618ABB0();
  v3 = *(v11 + 16);
  if (v3)
  {
    v13 = MEMORY[0x277D84F90];
    sub_26612A450();
    v4 = v11 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    v5 = *(v1 + 72);
    do
    {
      OUTLINED_FUNCTION_5_16();
      sub_26616B4A0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CC00, &qword_266194BF0);
      sub_26618ABB0();
      if (v12)
      {
        v6 = v11;
      }

      else
      {
        v6 = 12589;
      }

      if (v12)
      {
        v7 = v12;
      }

      else
      {
        v7 = 0xE200000000000000;
      }

      sub_26616B4F8();
      v9 = *(v13 + 16);
      v8 = *(v13 + 24);
      if (v9 >= v8 >> 1)
      {
        OUTLINED_FUNCTION_38_2(v8);
        sub_26612A450();
      }

      *(v13 + 16) = v9 + 1;
      v10 = v13 + 16 * v9;
      *(v10 + 32) = v6;
      *(v10 + 40) = v7;
      v4 += v5;
      --v3;
    }

    while (v3);
  }

  OUTLINED_FUNCTION_7_1();
}

uint64_t sub_26616F790(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73746C75736572 && a2 == 0xE700000000000000;
  if (v4 || (sub_26618D000() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5365726F4D656573 && a2 == 0xEB00000000687361)
  {

    return 1;
  }

  else
  {
    v7 = sub_26618D000();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_26616F85C(char a1)
{
  if (a1)
  {
    return 0x5365726F4D656573;
  }

  else
  {
    return 0x73746C75736572;
  }
}

uint64_t sub_26616F8A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26616F790(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26616F8CC(uint64_t a1)
{
  v2 = sub_266173A68();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26616F908(uint64_t a1)
{
  v2 = sub_266173A68();

  return MEMORY[0x2821FE720](a1, v2);
}

void AppLaunchDataModels.AppResultWrapperModel.encode(to:)()
{
  OUTLINED_FUNCTION_141();
  OUTLINED_FUNCTION_20_15();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CCA8, &qword_266194C20);
  OUTLINED_FUNCTION_2_2(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_16_11();
  OUTLINED_FUNCTION_8_16();
  sub_266173A68();
  OUTLINED_FUNCTION_23_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CCA0, &qword_266194C18);
  sub_266173ABC();
  OUTLINED_FUNCTION_13_9();
  if (!v0)
  {
    v5 = *(type metadata accessor for AppLaunchDataModels.AppResultWrapperModel(0) + 20);
    OUTLINED_FUNCTION_35_5();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C208, &unk_266192930);
    sub_266173CB0();
    OUTLINED_FUNCTION_75_2();
    OUTLINED_FUNCTION_15_9();
  }

  v6 = OUTLINED_FUNCTION_33_3();
  v7(v6);
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_140();
}

void AppLaunchDataModels.AppResultWrapperModel.init(from:)()
{
  OUTLINED_FUNCTION_38();
  v56 = v0;
  v4 = v3;
  v49 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C208, &unk_266192930);
  v7 = OUTLINED_FUNCTION_2_2(v6);
  v57 = v8;
  v58 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_30_7();
  OUTLINED_FUNCTION_107(v12);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CCA0, &qword_266194C18);
  OUTLINED_FUNCTION_2_2(v55);
  v50 = v13;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_30_7();
  v54 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CD08, &qword_266194C28);
  v19 = OUTLINED_FUNCTION_2_2(v18);
  v51 = v20;
  v52 = v19;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_37_4();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C1E8, &qword_266192910);
  v25 = OUTLINED_FUNCTION_16(v24);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_98();
  MEMORY[0x28223BE20](v28);
  v30 = &v49 - v29;
  v31 = type metadata accessor for AppLaunchDataModels.AppResultWrapperModel(0);
  v32 = OUTLINED_FUNCTION_3_0(v31);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_72_2();
  v36 = *(v35 + 28);
  v37 = type metadata accessor for AppLaunchDataModels.AppResultSashModel(0);
  __swift_storeEnumTagSinglePayload(v30, 1, 1, v37);
  sub_266173FBC();
  sub_26618AB90();
  sub_2660BF79C(v30, &qword_28005C1E8, &qword_266192910);
  v38 = v4[3];
  v39 = v4[4];
  v40 = OUTLINED_FUNCTION_41_5();
  OUTLINED_FUNCTION_35(v40, v41);
  sub_266173A68();
  OUTLINED_FUNCTION_120();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v4);
    v44 = OUTLINED_FUNCTION_132();
    v45(v44);
  }

  else
  {
    v42 = v50;
    v43 = v53;
    sub_266173EA4();
    OUTLINED_FUNCTION_50_4();
    OUTLINED_FUNCTION_106();
    sub_26618CF30();
    (*(v42 + 32))(v1, v54, v55);
    OUTLINED_FUNCTION_35_5();
    sub_266173F30();
    OUTLINED_FUNCTION_60_4();
    sub_26618CF30();
    OUTLINED_FUNCTION_32_5();
    v46(v2, v43);
    v47 = OUTLINED_FUNCTION_108();
    v48(v47);
    sub_26616B4A0();
    __swift_destroy_boxed_opaque_existential_1(v4);
    sub_26616B4F8();
  }

  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_39();
}

uint64_t property wrapper backing initializer of AppLaunchDataModels.AppOffloadedModel.result()
{
  v0 = type metadata accessor for AppLaunchDataModels.AppResultModel(0);
  v1 = OUTLINED_FUNCTION_16(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_5_16();
  OUTLINED_FUNCTION_41_5();
  sub_26616B4A0();
  sub_26618AB90();
  OUTLINED_FUNCTION_2_21();
  return sub_26616B4F8();
}

uint64_t AppLaunchDataModels.AppOffloadedModel.result.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CD20, &unk_266194C30);

  return sub_26618ABB0();
}

uint64_t AppLaunchDataModels.AppOffloadedModel.result.setter()
{
  v0 = OUTLINED_FUNCTION_67_1();
  v1 = type metadata accessor for AppLaunchDataModels.AppResultModel(v0);
  v2 = OUTLINED_FUNCTION_3_0(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_5_16();
  sub_26616B4A0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CD20, &unk_266194C30);
  OUTLINED_FUNCTION_49_3();
  sub_26618ABC0();
  OUTLINED_FUNCTION_2_21();
  return sub_26616B4F8();
}

uint64_t (*AppLaunchDataModels.AppOffloadedModel.result.modify())()
{
  v1 = OUTLINED_FUNCTION_27_5();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_28_10(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CD20, &unk_266194C30);
  OUTLINED_FUNCTION_49_3();
  *(v0 + 32) = sub_26618ABA0();
  return sub_2661773C0;
}

uint64_t sub_266170058(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_16(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_93();
  sub_266173FBC();
  sub_26618AB90();
  return sub_2660BF79C(a1, a2, a3);
}

uint64_t AppLaunchDataModels.AppOffloadedModel.confirmReinstallAction.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C4D0, &qword_266191AA8);
  OUTLINED_FUNCTION_3_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_16_11();
  OUTLINED_FUNCTION_84_0();
  sub_266173FBC();
  v4 = *(type metadata accessor for AppLaunchDataModels.AppOffloadedModel(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CD28, &qword_266194C40);
  OUTLINED_FUNCTION_128();
  sub_26618ABC0();
  OUTLINED_FUNCTION_88_0();
  return sub_2660BF79C(v5, v6, v7);
}

uint64_t (*AppLaunchDataModels.AppOffloadedModel.confirmReinstallAction.modify())()
{
  v1 = OUTLINED_FUNCTION_27_5();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_12_13(v2);
  v4 = *(type metadata accessor for AppLaunchDataModels.AppOffloadedModel(v3) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CD28, &qword_266194C40);
  *(v0 + 32) = OUTLINED_FUNCTION_29_4();
  return sub_2661773C0;
}

void sub_266170260(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

id AppLaunchDataModels.AppOffloadedModel.getCard()()
{
  v0 = type metadata accessor for AppLaunchDataModels.AppResultModel(0);
  v1 = OUTLINED_FUNCTION_3_0(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_101();
  v4 = sub_26618C6B0();
  v5 = OUTLINED_FUNCTION_2_2(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_4();
  v12 = v11 - v10;
  if (qword_2814B2C38 != -1)
  {
    OUTLINED_FUNCTION_4_21();
    swift_once();
  }

  v13 = __swift_project_value_buffer(v4, qword_2814B4A80);
  (*(v7 + 16))(v12, v13, v4);
  v14 = sub_26618C690();
  v15 = sub_26618CA90();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = OUTLINED_FUNCTION_6_2();
    *v16 = 0;
    _os_log_impl(&dword_2660B7000, v14, v15, "AppOffloadedModel: returning SFCard", v16, 2u);
    OUTLINED_FUNCTION_10_2();
    MEMORY[0x26677CC30]();
  }

  (*(v7 + 8))(v12, v4);
  v17 = [objc_allocWithZone(MEMORY[0x277D4C230]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CD20, &unk_266194C30);
  sub_26618ABB0();
  AppLaunchDataModels.AppResultModel.getCardSections()();
  OUTLINED_FUNCTION_2_21();
  sub_26616B4F8();
  v18 = OUTLINED_FUNCTION_41_5();
  sub_2661739F4(v18, v19);
  return v17;
}

Swift::String __swiftcall AppLaunchDataModels.AppOffloadedModel.getAdamId()()
{
  v0 = type metadata accessor for AppLaunchDataModels.AppResultModel(0);
  v1 = OUTLINED_FUNCTION_3_0(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_94();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CD20, &unk_266194C30);
  sub_26618ABB0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CC00, &qword_266194BF0);
  sub_26618ABB0();
  OUTLINED_FUNCTION_2_21();
  sub_26616B4F8();
  if (v8)
  {
    v4 = v7;
  }

  else
  {
    v4 = 12589;
  }

  if (v8)
  {
    v5 = v8;
  }

  else
  {
    v5 = 0xE200000000000000;
  }

  result._object = v5;
  result._countAndFlagsBits = v4;
  return result;
}

uint64_t sub_266170560(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746C75736572 && a2 == 0xE600000000000000;
  if (v4 || (sub_26618D000() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000016 && 0x800000026619A210 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_26618D000();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_26617062C(char a1)
{
  OUTLINED_FUNCTION_122();
  MEMORY[0x26677C460](a1 & 1);
  return sub_26618D0C0();
}

uint64_t sub_26617066C(char a1)
{
  if (a1)
  {
    return 0xD000000000000016;
  }

  else
  {
    return 0x746C75736572;
  }
}

uint64_t sub_2661706AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_266170560(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2661706D4(uint64_t a1)
{
  v2 = sub_266174034();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266170710(uint64_t a1)
{
  v2 = sub_266174034();

  return MEMORY[0x2821FE720](a1, v2);
}

void AppLaunchDataModels.AppOffloadedModel.encode(to:)()
{
  OUTLINED_FUNCTION_141();
  OUTLINED_FUNCTION_20_15();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CD30, &qword_266194C48);
  OUTLINED_FUNCTION_2_2(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_16_11();
  OUTLINED_FUNCTION_8_16();
  sub_266174034();
  OUTLINED_FUNCTION_23_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CD20, &unk_266194C30);
  OUTLINED_FUNCTION_1_17();
  sub_266174088(v5);
  OUTLINED_FUNCTION_13_9();
  if (!v0)
  {
    v6 = *(type metadata accessor for AppLaunchDataModels.AppOffloadedModel(0) + 20);
    OUTLINED_FUNCTION_35_5();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CD28, &qword_266194C40);
    sub_266174154();
    OUTLINED_FUNCTION_75_2();
    OUTLINED_FUNCTION_15_9();
  }

  v7 = OUTLINED_FUNCTION_33_3();
  v8(v7);
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_140();
}

void AppLaunchDataModels.AppOffloadedModel.init(from:)()
{
  OUTLINED_FUNCTION_38();
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CD28, &qword_266194C40);
  OUTLINED_FUNCTION_2_2(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_30_7();
  OUTLINED_FUNCTION_107(v10);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CD20, &unk_266194C30);
  OUTLINED_FUNCTION_2_2(v44);
  v42 = v11;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_30_7();
  v43 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CD60, &qword_266194C50);
  OUTLINED_FUNCTION_2_2(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_37_4();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C4D0, &qword_266191AA8);
  v21 = OUTLINED_FUNCTION_16(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_98();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_102();
  v25 = type metadata accessor for AppLaunchDataModels.AppOffloadedModel(0);
  v26 = OUTLINED_FUNCTION_3_0(v25);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_72_2();
  v30 = *(v29 + 28);
  v31 = sub_26618AB50();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v31);
  sub_266173FBC();
  sub_26618AB90();
  sub_2660BF79C(v1, &qword_28005C4D0, &qword_266191AA8);
  v32 = v5[3];
  v33 = v5[4];
  v34 = OUTLINED_FUNCTION_41_5();
  OUTLINED_FUNCTION_35(v34, v35);
  sub_266174034();
  OUTLINED_FUNCTION_120();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v5);
    v37 = OUTLINED_FUNCTION_132();
    v38(v37);
  }

  else
  {
    OUTLINED_FUNCTION_0_23();
    sub_266174088(v36);
    OUTLINED_FUNCTION_50_4();
    OUTLINED_FUNCTION_106();
    sub_26618CF30();
    (*(v42 + 32))(v2, v43, v44);
    OUTLINED_FUNCTION_35_5();
    sub_266174348();
    OUTLINED_FUNCTION_60_4();
    sub_26618CF30();
    OUTLINED_FUNCTION_32_5();
    v39(v3);
    v40 = OUTLINED_FUNCTION_108();
    v41(v40);
    sub_26616B4A0();
    __swift_destroy_boxed_opaque_existential_1(v5);
    sub_26616B4F8();
  }

  OUTLINED_FUNCTION_77_1();
  OUTLINED_FUNCTION_39();
}

uint64_t sub_266170C7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v3 = sub_26618C6B0();
  v51 = *(v3 - 8);
  v52 = v3;
  v4 = *(v51 + 64);
  MEMORY[0x28223BE20](v3);
  v50 = v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26618A7D0();
  v56 = *(v6 - 8);
  v57 = v6;
  v7 = *(v56 + 64);
  MEMORY[0x28223BE20](v6);
  v49 = v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CFA8, qword_266196778);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v53 = v48 - v11;
  v54 = sub_26618A770();
  v12 = *(v54 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v54);
  v48[1] = v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = v48 - v16;
  v18 = sub_26618AA90();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_26618A970();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = v48 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = a1;
  sub_26618A7A0();
  sub_26618A950();
  (*(v24 + 8))(v27, v23);
  sub_26618AA60();
  (*(v19 + 8))(v22, v18);
  v28 = v53;
  sub_26618A750();
  v29 = v17;
  v30 = v28;
  (*(v12 + 8))(v29, v54);
  v31 = sub_26618A740();
  if (__swift_getEnumTagSinglePayload(v28, 1, v31) == 1)
  {
    sub_2660BF79C(v28, &qword_28005CFA8, qword_266196778);
    return (*(v56 + 16))(v58, v55, v57);
  }

  v32 = *(v31 - 8);
  v33 = (*(v32 + 88))(v30, v31);
  v34 = *MEMORY[0x277D38E90];
  (*(v32 + 8))(v30, v31);
  if (v33 != v34)
  {
    return (*(v56 + 16))(v58, v55, v57);
  }

  v35 = v56;
  v36 = v49;
  v37 = v57;
  (*(v56 + 16))(v49, v55, v57);
  sub_26618A760();
  v38 = sub_26618A790();
  v39 = sub_26618A940();
  sub_26618AA70();
  v39(v59, 0);
  v38(v60, 0);
  if (qword_2814B2C38 != -1)
  {
    swift_once();
  }

  v40 = v52;
  v41 = __swift_project_value_buffer(v52, qword_2814B4A80);
  v43 = v50;
  v42 = v51;
  (*(v51 + 16))(v50, v41, v40);
  v44 = sub_26618C690();
  v45 = sub_26618CA90();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&dword_2660B7000, v44, v45, "InstallAppFlow.filterPegasusAppResults redacted button", v46, 2u);
    MEMORY[0x26677CC30](v46, -1, -1);
  }

  (*(v42 + 8))(v43, v40);
  return (*(v35 + 32))(v58, v36, v37);
}

uint64_t sub_2661712AC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000015 && 0x800000026619A230 == a2;
  if (v3 || (sub_26618D000() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000012 && 0x800000026619A250 == a2;
    if (v6 || (sub_26618D000() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000018 && 0x800000026619A270 == a2;
      if (v7 || (sub_26618D000() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000010 && 0x800000026619A290 == a2;
        if (v8 || (sub_26618D000() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000013 && 0x800000026619A2B0 == a2;
          if (v9 || (sub_26618D000() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0xD000000000000010 && 0x800000026619A2D0 == a2)
          {

            return 5;
          }

          else
          {
            v11 = sub_26618D000();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_2661714A4(unsigned __int8 a1)
{
  OUTLINED_FUNCTION_122();
  MEMORY[0x26677C460](a1);
  return sub_26618D0C0();
}

unint64_t sub_2661714E4(char a1)
{
  result = 0xD000000000000015;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0xD000000000000018;
      break;
    case 3:
    case 5:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26617158C(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_26618D000();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_2661715FC()
{
  OUTLINED_FUNCTION_122();
  MEMORY[0x26677C460](0);
  return sub_26618D0C0();
}

uint64_t sub_26617163C(uint64_t a1)
{
  v2 = sub_266174644();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266171678(uint64_t a1)
{
  v2 = sub_266174644();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2661716B4(uint64_t a1)
{
  v2 = sub_266174448();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2661716F0(uint64_t a1)
{
  v2 = sub_266174448();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26617172C(uint64_t a1)
{
  v2 = sub_2661744F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266171768(uint64_t a1)
{
  v2 = sub_2661744F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2661717A4(uint64_t a1)
{
  v2 = sub_2661745F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2661717E0(uint64_t a1)
{
  v2 = sub_2661745F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266171824@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2661712AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26617184C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26617149C();
  *a1 = result;
  return result;
}

uint64_t sub_266171874(uint64_t a1)
{
  v2 = sub_2661743F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2661718B0(uint64_t a1)
{
  v2 = sub_2661743F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2661718EC(uint64_t a1)
{
  v2 = sub_266174548();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266171928(uint64_t a1)
{
  v2 = sub_266174548();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266171964(uint64_t a1)
{
  v2 = sub_26617459C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2661719A0(uint64_t a1)
{
  v2 = sub_26617459C();

  return MEMORY[0x2821FE720](a1, v2);
}

void AppLaunchDataModels.encode(to:)()
{
  OUTLINED_FUNCTION_38();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CD78, &qword_266194C58);
  v87 = OUTLINED_FUNCTION_2_2(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_30_7();
  v86 = v8;
  v9 = OUTLINED_FUNCTION_18_2();
  v85 = type metadata accessor for AppLaunchDataModels.AppOffloadedModel(v9);
  v10 = OUTLINED_FUNCTION_16(v85);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_4();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CD80, &qword_266194C60);
  OUTLINED_FUNCTION_2_2(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_30_7();
  v17 = OUTLINED_FUNCTION_18_2();
  v84 = type metadata accessor for AppLaunchDataModels.AppResultWrapperModel(v17);
  v18 = OUTLINED_FUNCTION_16(v84);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1_4();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CD88, &qword_266194C68);
  OUTLINED_FUNCTION_2_2(v21);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_30_7();
  v25 = OUTLINED_FUNCTION_18_2();
  v83 = type metadata accessor for AppLaunchDataModels.ConfirmationViewModel(v25);
  v26 = OUTLINED_FUNCTION_16(v83);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_1_4();
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CD90, &qword_266194C70);
  OUTLINED_FUNCTION_2_2(v82);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_30_7();
  v32 = OUTLINED_FUNCTION_18_2();
  v81 = type metadata accessor for AppLaunchDataModels.DeviceDisambiguationModel(v32);
  v33 = OUTLINED_FUNCTION_16(v81);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_1_4();
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CD98, &qword_266194C78);
  OUTLINED_FUNCTION_2_2(v80);
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_30_7();
  v39 = OUTLINED_FUNCTION_18_2();
  v79 = type metadata accessor for AppLaunchDataModels.ButtonFallbackModel(v39);
  v40 = OUTLINED_FUNCTION_16(v79);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_1_4();
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CDA0, &qword_266194C80);
  OUTLINED_FUNCTION_2_2(v78);
  v77 = v43;
  v45 = *(v44 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_46();
  v47 = type metadata accessor for AppLaunchDataModels.AppDisambiguationModel(0);
  v48 = OUTLINED_FUNCTION_16(v47);
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_40_6();
  v51 = type metadata accessor for AppLaunchDataModels(0);
  v52 = OUTLINED_FUNCTION_16(v51);
  v54 = *(v53 + 64);
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_93();
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CDA8, &qword_266194C88);
  v56 = OUTLINED_FUNCTION_2_2(v55);
  v88 = v57;
  v89 = v56;
  v59 = *(v58 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_72_2();
  v61 = v3[4];
  OUTLINED_FUNCTION_35(v3, v3[3]);
  sub_2661743F4();
  sub_26618D0F0();
  sub_26616B4A0();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_26617449C();
      sub_2661745F0();
      OUTLINED_FUNCTION_17_12();
      OUTLINED_FUNCTION_44_3();
      sub_26616AEA8(v72);
      OUTLINED_FUNCTION_111();
      OUTLINED_FUNCTION_124();
      v73 = OUTLINED_FUNCTION_36_2();
      v74(v73);
      goto LABEL_8;
    case 2u:
      sub_26617449C();
      sub_26617459C();
      OUTLINED_FUNCTION_17_12();
      OUTLINED_FUNCTION_46_4();
      sub_26616AEA8(v66);
      OUTLINED_FUNCTION_111();
      OUTLINED_FUNCTION_124();
      v67 = OUTLINED_FUNCTION_36_2();
      v68(v67);
      goto LABEL_8;
    case 3u:
      sub_26617449C();
      sub_266174548();
      OUTLINED_FUNCTION_17_12();
      OUTLINED_FUNCTION_45_4();
      sub_26616AEA8(v69);
      OUTLINED_FUNCTION_111();
      OUTLINED_FUNCTION_124();
      v70 = OUTLINED_FUNCTION_36_2();
      v71(v70);
      goto LABEL_8;
    case 4u:
      sub_26617449C();
      sub_2661744F4();
      OUTLINED_FUNCTION_17_12();
      OUTLINED_FUNCTION_47_6();
      sub_26616AEA8(v63);
      OUTLINED_FUNCTION_111();
      OUTLINED_FUNCTION_124();
      v64 = OUTLINED_FUNCTION_36_2();
      v65(v64);
      goto LABEL_8;
    case 5u:
      sub_26617449C();
      sub_266174448();
      OUTLINED_FUNCTION_17_12();
      OUTLINED_FUNCTION_43_3();
      sub_26616AEA8(v75);
      OUTLINED_FUNCTION_111();
      OUTLINED_FUNCTION_124();
      OUTLINED_FUNCTION_32_5();
      v76(v86, v87);
LABEL_8:
      sub_26616B4F8();
      (*(v88 + 8))(v47, v51);
      break;
    default:
      sub_26617449C();
      sub_266174644();
      sub_26618CF50();
      OUTLINED_FUNCTION_48_4();
      sub_26616AEA8(v62);
      sub_26618CFA0();
      (*(v77 + 8))(v0, v78);
      OUTLINED_FUNCTION_42_7();
      sub_26616B4F8();
      (*(v88 + 8))(v1, v89);
      break;
  }

  OUTLINED_FUNCTION_39();
}

void AppLaunchDataModels.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, char a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_38();
  a25 = v29;
  a26 = v30;
  v172 = v26;
  v32 = v31;
  v166 = v33;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CE00, &qword_266194C90);
  OUTLINED_FUNCTION_2_2(v155);
  v161 = v34;
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_30_7();
  OUTLINED_FUNCTION_107(v38);
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CE08, &qword_266194C98);
  OUTLINED_FUNCTION_2_2(v154);
  v160 = v39;
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_30_7();
  v165 = v43;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CE10, &qword_266194CA0);
  OUTLINED_FUNCTION_2_2(v153);
  v159 = v44;
  v46 = *(v45 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_30_7();
  v164 = v48;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CE18, &qword_266194CA8);
  OUTLINED_FUNCTION_2_2(v152);
  v158 = v49;
  v51 = *(v50 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_30_7();
  OUTLINED_FUNCTION_125(v53);
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CE20, &qword_266194CB0);
  OUTLINED_FUNCTION_2_2(v151);
  v157 = v54;
  v56 = *(v55 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_30_7();
  v163 = v58;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CE28, &qword_266194CB8);
  OUTLINED_FUNCTION_2_2(v150);
  v156 = v59;
  v61 = *(v60 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_30_7();
  v162 = v63;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CE30, &qword_266194CC0);
  OUTLINED_FUNCTION_2_2(v170);
  v167 = v64;
  v66 = *(v65 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_46();
  v169 = type metadata accessor for AppLaunchDataModels(0);
  v68 = OUTLINED_FUNCTION_16(v169);
  v70 = *(v69 + 64);
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_5_9();
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_5_9();
  v73 = MEMORY[0x28223BE20](v72);
  v75 = &v143 - v74;
  v76 = MEMORY[0x28223BE20](v73);
  v78 = &v143 - v77;
  v79 = MEMORY[0x28223BE20](v76);
  v81 = &v143 - v80;
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_61_2();
  MEMORY[0x28223BE20](v82);
  OUTLINED_FUNCTION_102();
  v84 = v32[3];
  v83 = v32[4];
  v171 = v32;
  v85 = OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_35(v85, v86);
  sub_2661743F4();
  v87 = v172;
  sub_26618D0E0();
  if (v87)
  {
    goto LABEL_10;
  }

  v148 = v81;
  v146 = v78;
  v147 = v75;
  v149 = v27;
  v88 = v168;
  v172 = v28;
  v89 = sub_26618CF40();
  v90 = sub_2661739AC(v89, 0);
  if (v92 == v93 >> 1)
  {
    v94 = v167;
LABEL_9:
    OUTLINED_FUNCTION_130();
    v101 = sub_26618CDC0();
    swift_allocError();
    v103 = v102;
    v104 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CE38, &qword_266194CC8) + 48);
    *v103 = v88;
    sub_26618CEE0();
    sub_26618CDB0();
    (*(*(v101 - 8) + 104))(v103, *MEMORY[0x277D84160], v101);
    swift_willThrow();
    swift_unknownObjectRelease();
    v105 = *(v94 + 8);
    v106 = OUTLINED_FUNCTION_133();
    v107(v106);
LABEL_10:
    v108 = v171;
LABEL_11:
    __swift_destroy_boxed_opaque_existential_1(v108);
    OUTLINED_FUNCTION_77_1();
    OUTLINED_FUNCTION_39();
    return;
  }

  v145 = 0;
  if (v92 < (v93 >> 1))
  {
    v144 = *(v91 + v92);
    sub_266174698(v92 + 1, v93 >> 1, v90, v91, v92, v93);
    v96 = v95;
    v98 = v97;
    swift_unknownObjectRelease();
    if (v96 == v98 >> 1)
    {
      switch(v144)
      {
        case 1:
          a12 = 1;
          sub_2661745F0();
          v111 = v170;
          OUTLINED_FUNCTION_55_4(&type metadata for AppLaunchDataModels.ButtonFallbackViewCodingKeys, &a12, v170);
          type metadata accessor for AppLaunchDataModels.ButtonFallbackModel(0);
          OUTLINED_FUNCTION_44_3();
          sub_26616AEA8(v115);
          OUTLINED_FUNCTION_123();
          OUTLINED_FUNCTION_95();
          swift_unknownObjectRelease();
          v135 = OUTLINED_FUNCTION_131();
          v136(v135, v111);
          v137 = OUTLINED_FUNCTION_10_11();
          v138(v137);
          swift_storeEnumTagMultiPayload();
          v134 = v171;
          break;
        case 2:
          a13 = 2;
          sub_26617459C();
          OUTLINED_FUNCTION_55_4(&type metadata for AppLaunchDataModels.DeviceDisambiguationViewCodingKeys, &a13, v170);
          type metadata accessor for AppLaunchDataModels.DeviceDisambiguationModel(0);
          OUTLINED_FUNCTION_46_4();
          sub_26616AEA8(v112);
          sub_26618CF30();
          OUTLINED_FUNCTION_95();
          swift_unknownObjectRelease();
          v122 = OUTLINED_FUNCTION_99();
          v123(v122);
          v124 = OUTLINED_FUNCTION_10_11();
          v125(v124);
          swift_storeEnumTagMultiPayload();
          goto LABEL_18;
        case 3:
          a14 = 3;
          sub_266174548();
          OUTLINED_FUNCTION_55_4(&type metadata for AppLaunchDataModels.ConfirmationViewCodingKeys, &a14, v170);
          v113 = OUTLINED_FUNCTION_130();
          type metadata accessor for AppLaunchDataModels.ConfirmationViewModel(v113);
          OUTLINED_FUNCTION_45_4();
          sub_26616AEA8(v114);
          OUTLINED_FUNCTION_31_11();
          sub_26618CF30();
          OUTLINED_FUNCTION_95();
          swift_unknownObjectRelease();
          v126 = OUTLINED_FUNCTION_137();
          v127(v126);
          v128 = OUTLINED_FUNCTION_10_11();
          v129(v128);
          swift_storeEnumTagMultiPayload();
          v134 = v171;
          break;
        case 4:
          a15 = 4;
          sub_2661744F4();
          OUTLINED_FUNCTION_55_4(&type metadata for AppLaunchDataModels.AppSearchResultViewCodingKeys, &a15, v170);
          v109 = OUTLINED_FUNCTION_130();
          type metadata accessor for AppLaunchDataModels.AppResultWrapperModel(v109);
          OUTLINED_FUNCTION_47_6();
          sub_26616AEA8(v110);
          OUTLINED_FUNCTION_126(&a20);
          sub_26618CF30();
          OUTLINED_FUNCTION_95();
          swift_unknownObjectRelease();
          v118 = OUTLINED_FUNCTION_99();
          v119(v118);
          v120 = OUTLINED_FUNCTION_10_11();
          v121(v120);
          goto LABEL_17;
        case 5:
          a16 = 5;
          sub_266174448();
          OUTLINED_FUNCTION_55_4(&type metadata for AppLaunchDataModels.AppOffloadedViewCodingKeys, &a16, v170);
          v116 = OUTLINED_FUNCTION_130();
          type metadata accessor for AppLaunchDataModels.AppOffloadedModel(v116);
          OUTLINED_FUNCTION_43_3();
          sub_26616AEA8(v117);
          OUTLINED_FUNCTION_126(&a21);
          sub_26618CF30();
          OUTLINED_FUNCTION_95();
          swift_unknownObjectRelease();
          v139 = OUTLINED_FUNCTION_99();
          v140(v139);
          v141 = OUTLINED_FUNCTION_10_11();
          v142(v141);
LABEL_17:
          swift_storeEnumTagMultiPayload();
LABEL_18:
          v134 = v171;
          break;
        default:
          a11 = 0;
          sub_266174644();
          v99 = v170;
          OUTLINED_FUNCTION_55_4(&type metadata for AppLaunchDataModels.AppDisambiguationViewCodingKeys, &a11, v170);
          type metadata accessor for AppLaunchDataModels.AppDisambiguationModel(0);
          OUTLINED_FUNCTION_48_4();
          sub_26616AEA8(v100);
          OUTLINED_FUNCTION_123();
          OUTLINED_FUNCTION_95();
          swift_unknownObjectRelease();
          v130 = OUTLINED_FUNCTION_131();
          v131(v130, v99);
          v132 = OUTLINED_FUNCTION_10_11();
          v133(v132);
          swift_storeEnumTagMultiPayload();
          v134 = v171;
          break;
      }

      sub_26617449C();
      sub_26617449C();
      v108 = v134;
      goto LABEL_11;
    }

    v94 = v167;
    goto LABEL_9;
  }

  __break(1u);
}

id sub_266173074(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v3 = sub_26618A520();
    sub_26617734C(a1, a2);
  }

  v6 = [v2 initWithData_];

  return v6;
}

unint64_t sub_2661730E8()
{
  result = qword_28005CBD8;
  if (!qword_28005CBD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28005C3D8, qword_266192200);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CBD8);
  }

  return result;
}

unint64_t sub_266173164()
{
  result = qword_28005CBE8;
  if (!qword_28005CBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CBE8);
  }

  return result;
}

unint64_t sub_2661731B8()
{
  result = qword_28005CBF8;
  if (!qword_28005CBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CBF8);
  }

  return result;
}

unint64_t sub_26617320C()
{
  result = qword_28005CC08;
  if (!qword_28005CC08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28005CC00, &qword_266194BF0);
    sub_266173298();
    sub_266173314();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CC08);
  }

  return result;
}

unint64_t sub_266173298()
{
  result = qword_28005CC10;
  if (!qword_28005CC10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28005C3D8, qword_266192200);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CC10);
  }

  return result;
}

unint64_t sub_266173314()
{
  result = qword_28005CC18;
  if (!qword_28005CC18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28005C3D8, qword_266192200);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CC18);
  }

  return result;
}

unint64_t sub_266173390(uint64_t a1)
{
  result = OUTLINED_FUNCTION_73_2(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28005CBD0, &qword_266194BE0);
    sub_2661736BC(&unk_28005CC28);
    sub_2661736BC(&unk_28005CC38);
    OUTLINED_FUNCTION_105();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_266173460()
{
  result = qword_28005CC30;
  if (!qword_28005CC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CC30);
  }

  return result;
}

unint64_t sub_2661734B4()
{
  result = qword_28005CC40;
  if (!qword_28005CC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CC40);
  }

  return result;
}

unint64_t sub_266173508()
{
  result = qword_28005CC48;
  if (!qword_28005CC48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28005CC00, &qword_266194BF0);
    sub_26617358C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CC48);
  }

  return result;
}

unint64_t sub_26617358C()
{
  result = qword_28005CC50;
  if (!qword_28005CC50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28005C3D8, qword_266192200);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CC50);
  }

  return result;
}

unint64_t sub_266173608()
{
  result = qword_28005CC58;
  if (!qword_28005CC58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28005CBD0, &qword_266194BE0);
    sub_2661736BC(&unk_28005CC60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CC58);
  }

  return result;
}

unint64_t sub_2661736BC(uint64_t a1)
{
  result = OUTLINED_FUNCTION_73_2(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28005CBC8, &qword_266194BD8);
    v4();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_266173730()
{
  result = qword_28005CC68;
  if (!qword_28005CC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CC68);
  }

  return result;
}

unint64_t sub_266173784()
{
  result = qword_28005CC78;
  if (!qword_28005CC78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28005CC00, &qword_266194BF0);
    sub_266173298();
    sub_266173314();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CC78);
  }

  return result;
}

unint64_t sub_266173830()
{
  result = qword_28005CC90;
  if (!qword_28005CC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CC90);
  }

  return result;
}

void sub_2661738A4(uint64_t a1, char a2)
{
  v5 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (!isUniquelyReferenced_nonNull_native || a1 > *(v5 + 24) >> 1)
  {
    if (*(v5 + 16) <= a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = *(v5 + 16);
    }

    sub_266129840(isUniquelyReferenced_nonNull_native, v7, a2 & 1, v5);
    *v2 = v8;
  }
}

uint64_t sub_26617390C(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_26618CCD0();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_26618CDA0();
  *v1 = result;
  return result;
}

uint64_t sub_2661739AC(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v4 < 0)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

void sub_2661739F4(uint64_t a1, void *a2)
{
  sub_266142AC0();
  v3 = sub_26618C990();

  [a2 setCardSections_];
}

unint64_t sub_266173A68()
{
  result = qword_28005CCB0;
  if (!qword_28005CCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CCB0);
  }

  return result;
}

unint64_t sub_266173ABC()
{
  result = qword_28005CCB8;
  if (!qword_28005CCB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28005CCA0, &qword_266194C18);
    sub_266173B48();
    sub_266173BFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CCB8);
  }

  return result;
}

unint64_t sub_266173B48()
{
  result = qword_28005CCC0;
  if (!qword_28005CCC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28005C200, &qword_266194C10);
    sub_26616AEA8(&unk_28005CCC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CCC0);
  }

  return result;
}

unint64_t sub_266173BFC()
{
  result = qword_28005CCD0;
  if (!qword_28005CCD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28005C200, &qword_266194C10);
    sub_26616AEA8(&unk_28005CCD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CCD0);
  }

  return result;
}

unint64_t sub_266173CB0()
{
  result = qword_28005CCE0;
  if (!qword_28005CCE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28005C208, &unk_266192930);
    sub_266173D3C();
    sub_266173DF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CCE0);
  }

  return result;
}

unint64_t sub_266173D3C()
{
  result = qword_28005CCE8;
  if (!qword_28005CCE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28005C1E8, &qword_266192910);
    sub_26616AEA8(&unk_28005CCF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CCE8);
  }

  return result;
}

unint64_t sub_266173DF0()
{
  result = qword_28005CCF8;
  if (!qword_28005CCF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28005C1E8, &qword_266192910);
    sub_26616AEA8(&unk_28005CD00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CCF8);
  }

  return result;
}

unint64_t sub_266173EA4()
{
  result = qword_28005CD10;
  if (!qword_28005CD10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28005CCA0, &qword_266194C18);
    sub_266173B48();
    sub_266173BFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CD10);
  }

  return result;
}

unint64_t sub_266173F30()
{
  result = qword_28005CD18;
  if (!qword_28005CD18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28005C208, &unk_266192930);
    sub_266173D3C();
    sub_266173DF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CD18);
  }

  return result;
}

uint64_t sub_266173FBC()
{
  OUTLINED_FUNCTION_70_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_16(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_19_7();
  v7(v6);
  return v0;
}

unint64_t sub_266174034()
{
  result = qword_28005CD38;
  if (!qword_28005CD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CD38);
  }

  return result;
}

unint64_t sub_266174088(uint64_t a1)
{
  result = OUTLINED_FUNCTION_73_2(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28005CD20, &unk_266194C30);
    sub_26616AEA8(&unk_28005CCC8);
    sub_26616AEA8(&unk_28005CCD8);
    OUTLINED_FUNCTION_105();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_266174154()
{
  result = qword_28005CD48;
  if (!qword_28005CD48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28005CD28, &qword_266194C40);
    sub_2661741E0();
    sub_266174294();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CD48);
  }

  return result;
}

unint64_t sub_2661741E0()
{
  result = qword_28005CD50;
  if (!qword_28005CD50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28005C4D0, &qword_266191AA8);
    sub_26616AEA8(&unk_2814B48A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CD50);
  }

  return result;
}

unint64_t sub_266174294()
{
  result = qword_28005CD58;
  if (!qword_28005CD58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28005C4D0, &qword_266191AA8);
    sub_26616AEA8(&unk_2814B48A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CD58);
  }

  return result;
}

unint64_t sub_266174348()
{
  result = qword_28005CD70;
  if (!qword_28005CD70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28005CD28, &qword_266194C40);
    sub_2661741E0();
    sub_266174294();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CD70);
  }

  return result;
}

unint64_t sub_2661743F4()
{
  result = qword_2814B42B0;
  if (!qword_2814B42B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814B42B0);
  }

  return result;
}

unint64_t sub_266174448()
{
  result = qword_28005CDB0;
  if (!qword_28005CDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CDB0);
  }

  return result;
}

uint64_t sub_26617449C()
{
  OUTLINED_FUNCTION_70_2();
  v2 = v1(0);
  OUTLINED_FUNCTION_16(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_19_7();
  v6(v5);
  return v0;
}

unint64_t sub_2661744F4()
{
  result = qword_28005CDC0;
  if (!qword_28005CDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CDC0);
  }

  return result;
}

unint64_t sub_266174548()
{
  result = qword_28005CDD0;
  if (!qword_28005CDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CDD0);
  }

  return result;
}

unint64_t sub_26617459C()
{
  result = qword_28005CDE0;
  if (!qword_28005CDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CDE0);
  }

  return result;
}

unint64_t sub_2661745F0()
{
  result = qword_2814B40B0;
  if (!qword_2814B40B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814B40B0);
  }

  return result;
}

unint64_t sub_266174644()
{
  result = qword_28005CDF0;
  if (!qword_28005CDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CDF0);
  }

  return result;
}

uint64_t sub_266174698(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_266174E24()
{
  result = type metadata accessor for AppLaunchDataModels.AppDisambiguationModel(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for AppLaunchDataModels.ButtonFallbackModel(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for AppLaunchDataModels.DeviceDisambiguationModel(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for AppLaunchDataModels.ConfirmationViewModel(319);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for AppLaunchDataModels.AppResultWrapperModel(319);
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for AppLaunchDataModels.AppOffloadedModel(319);
            if (v6 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_266174F10()
{
  sub_266174FFC(319, &qword_2814B4868);
  if (v0 <= 0x3F)
  {
    sub_266174FFC(319, &qword_2814B4840);
    if (v1 <= 0x3F)
    {
      sub_26617526C(319, &qword_2814B4880, MEMORY[0x277D62ED0], MEMORY[0x277D637C8]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_266174FFC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_26618ABE0();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_266175110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  sub_266174FFC(319, &qword_2814B4868);
  if (v11 <= 0x3F)
  {
    a7(319, a4, a5, a6);
    if (v12 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26617526C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v6 = OUTLINED_FUNCTION_49_3();
    v7 = a4(v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2661752F4()
{
  sub_26617526C(319, &qword_2814B4880, MEMORY[0x277D62ED0], MEMORY[0x277D637C8]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_266174FFC(319, &qword_2814B4868);
    if (v4 > 0x3F)
    {
      return v3;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v1;
}

void sub_2661753FC()
{
  sub_266175A30(319, &qword_2814B4860, &qword_28005C3D8, qword_266192200);
  if (v0 <= 0x3F)
  {
    sub_266174FFC(319, &qword_2814B4868);
    if (v1 <= 0x3F)
    {
      sub_266175A30(319, &qword_2814B4858, &qword_28005CBC8, &qword_266194BD8);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_38Tm()
{
  OUTLINED_FUNCTION_58_4();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA80, &qword_266194B48);
  OUTLINED_FUNCTION_39_3(v3);
  if (*(v4 + 84) == v0)
  {
    v5 = OUTLINED_FUNCTION_136();
  }

  else
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA90, &qword_266194B58);
    v5 = v1 + *(v2 + 24);
  }

  return __swift_getEnumTagSinglePayload(v5, v0, v6);
}

uint64_t __swift_store_extra_inhabitant_index_39Tm()
{
  OUTLINED_FUNCTION_26_8();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA80, &qword_266194B48);
  OUTLINED_FUNCTION_39_3(v3);
  if (*(v4 + 84) == v2)
  {
    OUTLINED_FUNCTION_81_1();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA90, &qword_266194B58);
    v5 = v0 + *(v1 + 24);
  }

  OUTLINED_FUNCTION_109();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

void sub_266175648()
{
  sub_266174FFC(319, &qword_2814B4868);
  if (v0 <= 0x3F)
  {
    sub_26617526C(319, &qword_2814B4880, MEMORY[0x277D62ED0], MEMORY[0x277D637C8]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_266175734()
{
  sub_266175A30(319, &qword_2814B4848, &qword_28005C200, &qword_266194C10);
  if (v0 <= 0x3F)
  {
    sub_266175A30(319, &qword_2814B4890, &qword_28005C1E8, &qword_266192910);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_20Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  OUTLINED_FUNCTION_58_4();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
  OUTLINED_FUNCTION_39_3(v14);
  if (*(v15 + 84) == v7)
  {
    v16 = OUTLINED_FUNCTION_136();
  }

  else
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
    v16 = v8 + *(v9 + 20);
  }

  return __swift_getEnumTagSinglePayload(v16, v7, v17);
}

uint64_t __swift_store_extra_inhabitant_index_21Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_39_3(v13);
  if (*(v14 + 84) == a3)
  {
    OUTLINED_FUNCTION_81_1();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    v15 = a1 + *(a4 + 20);
  }

  OUTLINED_FUNCTION_109();

  return __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
}

void sub_266175964()
{
  sub_26617526C(319, &qword_2814B4898, type metadata accessor for AppLaunchDataModels.AppResultModel, MEMORY[0x277D637C8]);
  if (v0 <= 0x3F)
  {
    sub_266175A30(319, &qword_2814B4878, &qword_28005C4D0, &qword_266191AA8);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_266175A30(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_26618ABE0();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for AppLaunchDataModels.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for AppLaunchDataModels.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_266175C38(unsigned __int8 *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return OUTLINED_FUNCTION_114(a1);
}

_BYTE *sub_266175C84(_BYTE *result, int a2, int a3)
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

uint64_t sub_266175D90(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_119(-1);
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_119((*a1 | (v4 << 8)) - 3);
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

      return OUTLINED_FUNCTION_119((*a1 | (v4 << 8)) - 3);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_119((*a1 | (v4 << 8)) - 3);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_119(v8);
}

_BYTE *sub_266175E14(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_118(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_116(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_117(result, v6);
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
          result = OUTLINED_FUNCTION_83_0(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_266175EF0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_119(-1);
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_119((*a1 | (v4 << 8)) - 2);
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

      return OUTLINED_FUNCTION_119((*a1 | (v4 << 8)) - 2);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_119((*a1 | (v4 << 8)) - 2);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_119(v8);
}

_BYTE *sub_266175F74(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_118(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_116(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_117(result, v6);
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
          result = OUTLINED_FUNCTION_83_0(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_266176040(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_119(-1);
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
      return OUTLINED_FUNCTION_119((*a1 | (v4 << 8)) - 4);
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

      return OUTLINED_FUNCTION_119((*a1 | (v4 << 8)) - 4);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_119((*a1 | (v4 << 8)) - 4);
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

  return OUTLINED_FUNCTION_119(v8);
}

_BYTE *sub_2661760C4(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_118(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_116(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_117(result, v6);
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
          result = OUTLINED_FUNCTION_83_0(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_266176194()
{
  result = qword_28005CE88;
  if (!qword_28005CE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CE88);
  }

  return result;
}

unint64_t sub_2661761EC()
{
  result = qword_28005CE90;
  if (!qword_28005CE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CE90);
  }

  return result;
}

unint64_t sub_266176244()
{
  result = qword_28005CE98;
  if (!qword_28005CE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CE98);
  }

  return result;
}

unint64_t sub_26617629C()
{
  result = qword_28005CEA0;
  if (!qword_28005CEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CEA0);
  }

  return result;
}

unint64_t sub_2661762F4()
{
  result = qword_28005CEA8;
  if (!qword_28005CEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CEA8);
  }

  return result;
}

unint64_t sub_26617634C()
{
  result = qword_28005CEB0;
  if (!qword_28005CEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CEB0);
  }

  return result;
}

unint64_t sub_2661763A4()
{
  result = qword_28005CEB8;
  if (!qword_28005CEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CEB8);
  }

  return result;
}

unint64_t sub_2661763FC()
{
  result = qword_28005CEC0;
  if (!qword_28005CEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CEC0);
  }

  return result;
}

unint64_t sub_266176454()
{
  result = qword_28005CEC8;
  if (!qword_28005CEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CEC8);
  }

  return result;
}

unint64_t sub_2661764AC()
{
  result = qword_28005CED0;
  if (!qword_28005CED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CED0);
  }

  return result;
}

unint64_t sub_266176504()
{
  result = qword_28005CED8;
  if (!qword_28005CED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CED8);
  }

  return result;
}

unint64_t sub_26617655C()
{
  result = qword_28005CEE0;
  if (!qword_28005CEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CEE0);
  }

  return result;
}

unint64_t sub_2661765B4()
{
  result = qword_28005CEE8;
  if (!qword_28005CEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CEE8);
  }

  return result;
}

unint64_t sub_26617660C()
{
  result = qword_28005CEF0;
  if (!qword_28005CEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CEF0);
  }

  return result;
}

unint64_t sub_266176664()
{
  result = qword_28005CEF8;
  if (!qword_28005CEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CEF8);
  }

  return result;
}

unint64_t sub_2661766BC()
{
  result = qword_28005CF00;
  if (!qword_28005CF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CF00);
  }

  return result;
}

unint64_t sub_266176714()
{
  result = qword_28005CF08;
  if (!qword_28005CF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CF08);
  }

  return result;
}

unint64_t sub_26617676C()
{
  result = qword_2814B42B8;
  if (!qword_2814B42B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814B42B8);
  }

  return result;
}

unint64_t sub_2661767C4()
{
  result = qword_2814B42C0;
  if (!qword_2814B42C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814B42C0);
  }

  return result;
}

unint64_t sub_26617681C()
{
  result = qword_2814B40A0;
  if (!qword_2814B40A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814B40A0);
  }

  return result;
}

unint64_t sub_266176874()
{
  result = qword_2814B40A8;
  if (!qword_2814B40A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814B40A8);
  }

  return result;
}

unint64_t sub_2661768CC()
{
  result = qword_2814B4090;
  if (!qword_2814B4090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814B4090);
  }

  return result;
}

unint64_t sub_266176924()
{
  result = qword_2814B4098;
  if (!qword_2814B4098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814B4098);
  }

  return result;
}

unint64_t sub_26617697C()
{
  result = qword_2814B40B8;
  if (!qword_2814B40B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814B40B8);
  }

  return result;
}

unint64_t sub_2661769D4()
{
  result = qword_2814B40C0[0];
  if (!qword_2814B40C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2814B40C0);
  }

  return result;
}

unint64_t sub_266176A2C()
{
  result = qword_2814B42C8;
  if (!qword_2814B42C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814B42C8);
  }

  return result;
}

unint64_t sub_266176A84()
{
  result = qword_2814B42D0;
  if (!qword_2814B42D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814B42D0);
  }

  return result;
}

unint64_t sub_266176ADC()
{
  result = qword_2814B42D8;
  if (!qword_2814B42D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814B42D8);
  }

  return result;
}

unint64_t sub_266176B34()
{
  result = qword_2814B42E0[0];
  if (!qword_2814B42E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2814B42E0);
  }

  return result;
}

unint64_t sub_266176B8C()
{
  result = qword_2814B42A0;
  if (!qword_2814B42A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814B42A0);
  }

  return result;
}

unint64_t sub_266176BE4()
{
  result = qword_2814B42A8;
  if (!qword_2814B42A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814B42A8);
  }

  return result;
}

unint64_t sub_266176C3C()
{
  result = qword_28005CF10;
  if (!qword_28005CF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CF10);
  }

  return result;
}

unint64_t sub_266176C94()
{
  result = qword_28005CF18;
  if (!qword_28005CF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CF18);
  }

  return result;
}

unint64_t sub_266176CEC()
{
  result = qword_28005CF20;
  if (!qword_28005CF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CF20);
  }

  return result;
}

unint64_t sub_266176D44()
{
  result = qword_28005CF28;
  if (!qword_28005CF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CF28);
  }

  return result;
}

unint64_t sub_266176D9C()
{
  result = qword_28005CF30;
  if (!qword_28005CF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CF30);
  }

  return result;
}

unint64_t sub_266176DF4()
{
  result = qword_28005CF38;
  if (!qword_28005CF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CF38);
  }

  return result;
}

unint64_t sub_266176E4C()
{
  result = qword_28005CF40;
  if (!qword_28005CF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CF40);
  }

  return result;
}

unint64_t sub_266176EA4()
{
  result = qword_28005CF48;
  if (!qword_28005CF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CF48);
  }

  return result;
}

unint64_t sub_266176EFC()
{
  result = qword_28005CF50;
  if (!qword_28005CF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CF50);
  }

  return result;
}

unint64_t sub_266176F54()
{
  result = qword_28005CF58;
  if (!qword_28005CF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CF58);
  }

  return result;
}

unint64_t sub_266176FAC()
{
  result = qword_28005CF60;
  if (!qword_28005CF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CF60);
  }

  return result;
}

unint64_t sub_266177004()
{
  result = qword_28005CF68;
  if (!qword_28005CF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CF68);
  }

  return result;
}

unint64_t sub_26617705C()
{
  result = qword_28005CF70;
  if (!qword_28005CF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CF70);
  }

  return result;
}

unint64_t sub_2661770B4()
{
  result = qword_28005CF78;
  if (!qword_28005CF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CF78);
  }

  return result;
}

unint64_t sub_26617710C()
{
  result = qword_2814B4288;
  if (!qword_2814B4288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814B4288);
  }

  return result;
}

unint64_t sub_266177164()
{
  result = qword_2814B4290;
  if (!qword_2814B4290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814B4290);
  }

  return result;
}

unint64_t sub_2661771BC()
{
  result = qword_28005CF80;
  if (!qword_28005CF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CF80);
  }

  return result;
}

unint64_t sub_266177214()
{
  result = qword_28005CF88;
  if (!qword_28005CF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CF88);
  }

  return result;
}

unint64_t sub_26617726C()
{
  result = qword_28005CF90;
  if (!qword_28005CF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CF90);
  }

  return result;
}

unint64_t sub_2661772C4()
{
  result = qword_28005CF98;
  if (!qword_28005CF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CF98);
  }

  return result;
}

uint64_t sub_266177318()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[8];
  v9 = v0[9];
  return sub_2660C9DCC();
}

uint64_t sub_26617734C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2660C55C0(a1, a2);
  }

  return a1;
}

uint64_t OUTLINED_FUNCTION_10_11()
{
  v2 = *(*(v1 - 144) + 8);
  result = v0;
  v4 = *(v1 - 112);
  return result;
}

uint64_t OUTLINED_FUNCTION_11_8@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 - a1;
  v4 = *(v2 + 16);
  return v3;
}

uint64_t OUTLINED_FUNCTION_13_9()
{

  return sub_26618CFA0();
}

uint64_t OUTLINED_FUNCTION_15_9()
{

  return sub_26618CFA0();
}

uint64_t OUTLINED_FUNCTION_17_12()
{
  v2 = *(v0 - 112);
  v3 = *(v0 - 128);

  return sub_26618CF50();
}

uint64_t OUTLINED_FUNCTION_18_12()
{
  v2 = *(v1 - 96);
  v3 = *(*(v1 - 104) + 8);
  return v0;
}

uint64_t OUTLINED_FUNCTION_22_9()
{
  v2 = *(v0 - 96);

  return sub_26618CF30();
}

uint64_t OUTLINED_FUNCTION_23_8()
{

  return sub_26618D0F0();
}

uint64_t OUTLINED_FUNCTION_25_11()
{
  v2 = *(*(v1 - 152) + 8);
  result = v0;
  v4 = *(v1 - 136);
  return result;
}

uint64_t OUTLINED_FUNCTION_29_4()
{

  return sub_26618ABA0();
}

uint64_t OUTLINED_FUNCTION_34_7()
{

  return sub_26618D0F0();
}

uint64_t OUTLINED_FUNCTION_55_4(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return MEMORY[0x2821FD968](a1, a2, a3, a1);
}

uint64_t OUTLINED_FUNCTION_69_2()
{
  v3 = *(v0 - 136);
  v2 = *(v0 - 128);
  v4 = *(v0 - 96);

  return sub_26618CF30();
}

uint64_t OUTLINED_FUNCTION_76_2()
{
  result = *(v0 - 160) + *(*(v0 - 168) + 20);
  v2 = *(v0 - 112);
  return result;
}

uint64_t OUTLINED_FUNCTION_78_0()
{

  return sub_26618CFA0();
}

uint64_t OUTLINED_FUNCTION_91()
{
  result = *(v0 - 160);
  *(v0 - 112) = *(*(v0 - 120) + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_96()
{

  return sub_26618CFA0();
}

uint64_t OUTLINED_FUNCTION_100(uint64_t result)
{
  v2 = *(result + 20);
  *(v1 - 66) = 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_106()
{
  v2 = *(v0 - 120);
  result = *(v0 - 112);
  v3 = *(v0 - 136);
  return result;
}

uint64_t OUTLINED_FUNCTION_108()
{
  v3 = *(*(v2 - 96) + 40);
  result = v1 + v0;
  v5 = *(v2 - 128);
  return result;
}

uint64_t OUTLINED_FUNCTION_115()
{

  return sub_26618D0E0();
}

uint64_t OUTLINED_FUNCTION_120()
{
  v2 = *(v0 - 104);

  return sub_26618D0E0();
}

uint64_t OUTLINED_FUNCTION_121()
{

  return sub_26618D0E0();
}

uint64_t OUTLINED_FUNCTION_122()
{

  return sub_26618D090();
}

uint64_t OUTLINED_FUNCTION_123()
{
  v2 = *(v0 - 256);

  return sub_26618CF30();
}

uint64_t OUTLINED_FUNCTION_124()
{
  v2 = *(v0 - 104);

  return sub_26618CFA0();
}

uint64_t OUTLINED_FUNCTION_138()
{

  return sub_26618ABD0();
}

uint64_t OUTLINED_FUNCTION_139()
{

  return sub_26618CF30();
}

_BYTE *storeEnumTagSinglePayload for Features(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_266177DCC()
{
  result = qword_28005CFB0;
  if (!qword_28005CFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CFB0);
  }

  return result;
}

const char *sub_266177E34(char a1)
{
  if (a1)
  {
    return "applaunch_watchos_cdtvc";
  }

  else
  {
    return "applaunch_QuickAction";
  }
}

uint64_t static AppSearchCommands.searchMarketplaceActionProperty(appName:marketplace:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [objc_allocWithZone(MEMORY[0x277D471A0]) init];
  sub_2661783F4(a3, a4, v8);
  sub_26617844C(a1, a2, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C080, &unk_26618FAC0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_26618E190;
  v10 = sub_26618AB80();
  v11 = MEMORY[0x277D63778];
  *(v9 + 56) = v10;
  *(v9 + 64) = v11;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v9 + 32));
  *boxed_opaque_existential_0 = v8;
  *(boxed_opaque_existential_0 + 8) = 0;
  v13 = *MEMORY[0x277D63720];
  (*(*(v10 - 8) + 104))();

  return sub_26618AB60();
}

uint64_t static AppSearchCommands.searchAppStoreActionProperty(appName:)()
{
  v0 = static AppSearchCommands.searchAppStoreAceCommand(appName:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C080, &unk_26618FAC0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_26618E190;
  v2 = sub_26618AB80();
  v3 = MEMORY[0x277D63778];
  *(v1 + 56) = v2;
  *(v1 + 64) = v3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v1 + 32));
  *boxed_opaque_existential_0 = v0;
  *(boxed_opaque_existential_0 + 8) = 0;
  v5 = *MEMORY[0x277D63720];
  (*(*(v2 - 8) + 104))();

  return sub_26618AB60();
}

id static AppSearchCommands.searchAppStoreAceCommand(appName:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BCD0, &qword_26618E238);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v16 - v2;
  v4 = sub_26618A460();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26618A450();
  sub_26618A440();
  MEMORY[0x2667797F0](0, 0xE000000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C4C0, qword_2661918E0);
  v9 = *(sub_26618A400() - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  *(swift_allocObject() + 16) = xmmword_26618E250;
  sub_26618A3F0();
  sub_26618A3F0();
  sub_26618A3F0();
  sub_26618A410();
  v12 = [objc_allocWithZone(MEMORY[0x277D479F0]) init];
  sub_26618A420();
  v13 = sub_26618A500();
  v14 = 0;
  if (__swift_getEnumTagSinglePayload(v3, 1, v13) != 1)
  {
    v14 = sub_26618A4D0();
    (*(*(v13 - 8) + 8))(v3, v13);
  }

  [v12 setPunchOutUri_];

  (*(v5 + 8))(v8, v4);
  return v12;
}

id static AppSearchCommands.searchMarketplaceAceCommand(appName:marketplace:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [objc_allocWithZone(MEMORY[0x277D471A0]) init];
  sub_2661783F4(a3, a4, v8);
  sub_26617844C(a1, a2, v8);
  return v8;
}

void sub_2661783F4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_26618C8A0();
  [a3 setMarketplace_];
}

void sub_26617844C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_26618C8A0();
  [a3 setKeyword_];
}

void sub_2661784E4(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = sub_26618CBD0();
  if (v3 <= 0x3F)
  {
    v6 = *(v2 - 8) + 64;
    sub_2661786F0();
    if (v5 <= 0x3F)
    {
      v7 = *(v4 - 8) + 64;
      swift_initClassMetadata2();
    }
  }
}

char *sub_2661785D0()
{
  v1 = *v0;
  v2 = *(v0 + 4);

  v3 = *(*v0 + 104);
  v4 = *(v1 + 80);
  v5 = sub_26618CBD0();
  (*(*(v5 - 8) + 8))(&v0[v3], v5);
  sub_2661567CC(&v0[*(*v0 + 112)]);
  return v0;
}

uint64_t sub_266178680()
{
  sub_2661785D0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_2661786F0()
{
  if (!qword_2814B4A78)
  {
    sub_26618A5B0();
    v0 = sub_26618CBD0();
    if (!v1)
    {
      atomic_store(v0, &qword_2814B4A78);
    }
  }
}

uint64_t sub_266178778@<X0>(uint64_t a1@<X8>)
{
  v97 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BF28, &qword_26618F960);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v88 = &v81 - v3;
  OUTLINED_FUNCTION_18_2();
  v4 = sub_26618B8E0();
  v5 = OUTLINED_FUNCTION_2_2(v4);
  v85 = v6;
  v86 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_6();
  v84 = v9;
  OUTLINED_FUNCTION_18_2();
  v90 = sub_26618B980();
  v10 = OUTLINED_FUNCTION_2_2(v90);
  v83 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_4_6();
  v82 = v14;
  OUTLINED_FUNCTION_18_2();
  v91 = sub_26618B840();
  v15 = OUTLINED_FUNCTION_2_2(v91);
  v89 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_4_6();
  v87 = v19;
  OUTLINED_FUNCTION_18_2();
  v20 = sub_26618B7F0();
  v21 = OUTLINED_FUNCTION_2_2(v20);
  v93 = v22;
  v94 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_4_6();
  v92 = v25;
  OUTLINED_FUNCTION_18_2();
  v96 = type metadata accessor for AppLaunchIntent();
  v26 = *(*(v96 - 8) + 64);
  MEMORY[0x28223BE20](v96);
  OUTLINED_FUNCTION_4_6();
  v95 = v27;
  OUTLINED_FUNCTION_18_2();
  v28 = sub_26618C0E0();
  v29 = OUTLINED_FUNCTION_2_2(v28);
  v31 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v29);
  v35 = &v81 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_26618B800();
  v37 = OUTLINED_FUNCTION_2_2(v36);
  v39 = v38;
  v41 = *(v40 + 64);
  v42 = MEMORY[0x28223BE20](v37);
  v44 = &v81 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x28223BE20](v42);
  v47 = &v81 - v46;
  v48 = MEMORY[0x28223BE20](v45);
  v50 = &v81 - v49;
  MEMORY[0x28223BE20](v48);
  v52 = &v81 - v51;
  sub_26618B770();
  v53 = (*(v39 + 88))(v52, v36);
  if (v53 != *MEMORY[0x277D5C128])
  {
    if (v53 == *MEMORY[0x277D5C150])
    {
      (*(v39 + 16))(v47, v52, v36);
      (*(v39 + 96))(v47, v36);
      v57 = v93;
      v58 = *(v93 + 32);
      v59 = OUTLINED_FUNCTION_33_1();
      v60(v59);
      if (sub_26618B7D0() == 0xD00000000000002ELL && 0x8000000266198300 == v61)
      {
      }

      else
      {
        v63 = sub_26618D000();

        if ((v63 & 1) == 0)
        {
          v64 = *(v57 + 8);
          v65 = OUTLINED_FUNCTION_33_1();
          v66(v65);
          v55 = v36;
          v56 = v52;
LABEL_19:
          sub_26618B2B0();
          return (*(v39 + 8))(v56, v55);
        }
      }

      sub_26618B2A0();
      v72 = *(v57 + 8);
      v73 = OUTLINED_FUNCTION_33_1();
      v74(v73);
      v55 = v36;
      v56 = v52;
      return (*(v39 + 8))(v56, v55);
    }

    v55 = v36;
    v56 = v52;
    if (v53 != *MEMORY[0x277D5C160])
    {
      goto LABEL_19;
    }

    (*(v39 + 16))(v44, v52, v55);
    (*(v39 + 96))(v44, v55);
    v67 = v89;
    (*(v89 + 32))(v87, v44, v91);
    v68 = v84;
    sub_26618B820();
    v69 = sub_26618B8B0();
    (*(v85 + 8))(v68, v86);
    v70 = v88;
    sub_266139C58(v69, v88);

    v71 = v90;
    if (__swift_getEnumTagSinglePayload(v70, 1, v90) == 1)
    {
      sub_2661189FC(v70);
    }

    else
    {
      v76 = v82;
      v75 = v83;
      (*(v83 + 32))(v82, v70, v71);
      if (sub_26618B920() & 1) != 0 || (sub_26618B930() & 1) != 0 || (sub_26618B940())
      {
        sub_26618B2A0();
        (*(v75 + 8))(v76, v71);
        goto LABEL_26;
      }

      (*(v75 + 8))(v76, v71);
    }

    sub_26618B2B0();
LABEL_26:
    v77 = *(v67 + 8);
    v78 = OUTLINED_FUNCTION_33_1();
    v79(v78);
    return (*(v39 + 8))(v56, v55);
  }

  (*(v39 + 16))(v50, v52, v36);
  (*(v39 + 96))(v50, v36);
  (*(v31 + 32))(v35, v50, v28);
  v54 = v95;
  (*(v31 + 16))(v95, v35, v28);
  v55 = v36;
  v56 = v52;
  if (qword_2814B3DC0 != -1)
  {
    swift_once();
  }

  sub_2660C98B4();
  sub_26618BDA0();
  if (v98 >= 2u)
  {
    sub_26618B290();
  }

  else
  {
    sub_26618B2A0();
  }

  sub_2660DD7D0(v54);
  (*(v31 + 8))(v35, v28);
  return (*(v39 + 8))(v56, v55);
}

void sub_266178F28(char a1)
{
  v4 = sub_26618C6B0();
  v5 = OUTLINED_FUNCTION_3_22(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_22();
  if (qword_2814B2C38 != -1)
  {
    OUTLINED_FUNCTION_2_5();
  }

  v10 = __swift_project_value_buffer(v2, qword_2814B4A80);
  (*(v7 + 16))(v1, v10, v2);
  v11 = sub_26618C690();
  v12 = sub_26618CAD0();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    aBlock[0] = v14;
    *v13 = 136315138;
    if (a1)
    {
      v15 = 0x73736563637573;
    }

    else
    {
      v15 = 0x6572756C696166;
    }

    v16 = sub_266103A98(v15, 0xE700000000000000, aBlock);

    *(v13 + 4) = v16;
    OUTLINED_FUNCTION_5_17(&dword_2660B7000, v17, v18, "CoreAnalyticsService#reportSubmitToRemoteResults sending a com.apple.siri.applaunch.submitToRemoteResults event with result = %s.");
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x26677CC30](v14, -1, -1);
    MEMORY[0x26677CC30](v13, -1, -1);
  }

  (*(v7 + 8))(v1, v2);
  v19 = OUTLINED_FUNCTION_6_18();
  v20 = swift_allocObject();
  *(v20 + 16) = a1 & 1;
  aBlock[4] = sub_2661798A8;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  OUTLINED_FUNCTION_0_24();
  aBlock[2] = v21;
  aBlock[3] = &block_descriptor_16;
  v22 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v22);
}

uint64_t sub_2661791A8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CFB8, &qword_2661969C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26618E190;
  *(inited + 32) = 0x746C75736572;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = sub_26618CA00();
  sub_2660CD344(0, &qword_28005C0D8, 0x277D82BB8);
  return sub_26618C850();
}

id sub_266179250(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_2660CD344(0, &qword_28005C0D8, 0x277D82BB8);
    v5 = sub_26618C830();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_2661792EC(char a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_6_18();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v8[4] = sub_26617989C;
  v8[5] = v5;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  OUTLINED_FUNCTION_0_24();
  v8[2] = v6;
  v8[3] = &block_descriptor_10;
  v7 = _Block_copy(v8);

  AnalyticsSendEventLazy();
  _Block_release(v7);
}

uint64_t sub_2661793C4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CFB8, &qword_2661969C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26618E180;
  *(inited + 32) = 0xD000000000000013;
  *(inited + 40) = 0x800000026619A440;
  v1 = sub_26618C8A0();

  *(inited + 48) = v1;
  *(inited + 56) = 0x7250656369766564;
  *(inited + 64) = 0xEF7974696D69786FLL;
  *(inited + 72) = sub_26618CA70();
  sub_2660CD344(0, &qword_28005C0D8, 0x277D82BB8);
  return sub_26618C850();
}

void sub_266179554(uint64_t a1)
{
  v4 = sub_26618C6B0();
  v5 = OUTLINED_FUNCTION_3_22(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_22();
  if (qword_2814B2C38 != -1)
  {
    OUTLINED_FUNCTION_2_5();
  }

  v10 = __swift_project_value_buffer(v2, qword_2814B4A80);
  (*(v7 + 16))(v1, v10, v2);
  v11 = sub_26618C690();
  v12 = sub_26618CAA0();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 134217984;
    *(v13 + 4) = a1;
    OUTLINED_FUNCTION_5_17(&dword_2660B7000, v14, v15, "sending com.apple.siri.applaunch.cdtvc.deviceDisambigSelectedSlot with spot %ld");
    MEMORY[0x26677CC30](v13, -1, -1);
  }

  (*(v7 + 8))(v1, v2);
  v16 = sub_26618C8A0();
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  aBlock[4] = sub_26617987C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  OUTLINED_FUNCTION_0_24();
  aBlock[2] = v18;
  aBlock[3] = &block_descriptor_3;
  v19 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v19);
}

uint64_t sub_26617976C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CFB8, &qword_2661969C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26618E180;
  *(inited + 32) = 0x65636E6174736E69;
  *(inited + 40) = 0xE800000000000000;
  sub_2660CD344(0, &qword_2814B2BF8, 0x277CCABB0);
  *(inited + 48) = sub_26618CB80();
  *(inited + 56) = 1953460339;
  *(inited + 64) = 0xE400000000000000;
  *(inited + 72) = sub_26618CA70();
  sub_2660CD344(0, &qword_28005C0D8, 0x277D82BB8);
  return sub_26618C850();
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26617989C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  return sub_2661793C4();
}

void OUTLINED_FUNCTION_5_17(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_6_18()
{

  return sub_26618C8A0();
}

uint64_t sub_266179954(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 89))
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

uint64_t sub_266179994(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
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

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2661799FC()
{
  OUTLINED_FUNCTION_18();
  v2 = OUTLINED_FUNCTION_30_8(v1);
  OUTLINED_FUNCTION_3_0(v2);
  v4 = *(v3 + 64);
  v5 = OUTLINED_FUNCTION_8_2();
  v6 = OUTLINED_FUNCTION_28_11(v5);
  v0[5] = v6;
  OUTLINED_FUNCTION_0_4(v6);
  v0[6] = v7;
  v9 = *(v8 + 64);
  v0[7] = OUTLINED_FUNCTION_8_2();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C098, &unk_26618F950);
  OUTLINED_FUNCTION_3_0(v10);
  v12 = *(v11 + 64);
  v13 = OUTLINED_FUNCTION_8_2();
  v14 = OUTLINED_FUNCTION_27_6(v13);
  OUTLINED_FUNCTION_3_0(v14);
  v16 = *(v15 + 64);
  v0[9] = OUTLINED_FUNCTION_8_2();
  v17 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v17, v18, v19);
}

uint64_t sub_266179AF4()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 72);
  type metadata accessor for LaunchAppCATPatternsExecutor(0);
  OUTLINED_FUNCTION_26_9();
  OUTLINED_FUNCTION_20_14();
  v2 = sub_26618C2D0();
  OUTLINED_FUNCTION_24_8(v2);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_23_9(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_11_9(v4);

  return sub_2660BE88C(v6);
}

uint64_t sub_266179B94()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v6 = *(v5 + 88);
  *v4 = *v1;
  OUTLINED_FUNCTION_31_12(v7);
  if (!v0)
  {
    v8 = *(v3 + 80);
  }

  OUTLINED_FUNCTION_8();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266179C94()
{
  OUTLINED_FUNCTION_42_5();
  OUTLINED_FUNCTION_19();
  v1 = v0[7];
  v2 = v0[8];
  v4 = v0[3];
  v3 = v0[4];
  v5 = sub_26618B440();
  OUTLINED_FUNCTION_12_14(v5);
  v6 = swift_task_alloc();
  *(v6 + 16) = 256;
  v7 = MEMORY[0x277D84F90];
  *(v6 + 24) = v2;
  *(v6 + 32) = v7;
  OUTLINED_FUNCTION_2_22();
  sub_26618B620();

  OUTLINED_FUNCTION_14_16();
  v8 = *(MEMORY[0x277D5BE50] + 4);
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_15_10(v9);
  *v10 = v11;
  OUTLINED_FUNCTION_0_25(v10);
  OUTLINED_FUNCTION_41_3();

  return MEMORY[0x2821BB480](v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_266179D7C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_7_6();
  *v3 = v2;
  v5 = *(v4 + 112);
  v6 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v7 = v6;
  *(v8 + 120) = v0;

  OUTLINED_FUNCTION_8();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266179E74()
{
  OUTLINED_FUNCTION_18();
  v2 = OUTLINED_FUNCTION_30_8(v1);
  OUTLINED_FUNCTION_3_0(v2);
  v4 = *(v3 + 64);
  v5 = OUTLINED_FUNCTION_8_2();
  v6 = OUTLINED_FUNCTION_28_11(v5);
  v0[5] = v6;
  OUTLINED_FUNCTION_0_4(v6);
  v0[6] = v7;
  v9 = *(v8 + 64);
  v0[7] = OUTLINED_FUNCTION_8_2();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C098, &unk_26618F950);
  OUTLINED_FUNCTION_3_0(v10);
  v12 = *(v11 + 64);
  v13 = OUTLINED_FUNCTION_8_2();
  v14 = OUTLINED_FUNCTION_27_6(v13);
  OUTLINED_FUNCTION_3_0(v14);
  v16 = *(v15 + 64);
  v0[9] = OUTLINED_FUNCTION_8_2();
  v17 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v17, v18, v19);
}

uint64_t sub_266179F6C()
{
  OUTLINED_FUNCTION_1_0();
  v1 = *(v0 + 72);
  v2 = *(v0 + 24);
  type metadata accessor for CloseAppCATPatternsExecutor();
  OUTLINED_FUNCTION_26_9();
  OUTLINED_FUNCTION_20_14();
  v3 = sub_26618C2D0();
  OUTLINED_FUNCTION_24_8(v3);
  v4 = *(v2 + 88);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_23_9(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_11_9(v6);

  return sub_2660BC904(v8, v4);
}

uint64_t sub_26617A020()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v6 = *(v5 + 88);
  *v4 = *v1;
  OUTLINED_FUNCTION_31_12(v7);
  if (!v0)
  {
    v8 = *(v3 + 80);
  }

  OUTLINED_FUNCTION_8();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_26617A120()
{
  OUTLINED_FUNCTION_42_5();
  OUTLINED_FUNCTION_19();
  v1 = v0[7];
  v2 = v0[8];
  v4 = v0[3];
  v3 = v0[4];
  v5 = sub_26618B440();
  OUTLINED_FUNCTION_12_14(v5);
  v6 = swift_task_alloc();
  *(v6 + 16) = 0;
  v7 = MEMORY[0x277D84F90];
  *(v6 + 24) = v2;
  *(v6 + 32) = v7;
  OUTLINED_FUNCTION_2_22();
  sub_26618B620();

  OUTLINED_FUNCTION_14_16();
  v8 = *(MEMORY[0x277D5BE50] + 4);
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_15_10(v9);
  *v10 = v11;
  OUTLINED_FUNCTION_0_25(v10);
  OUTLINED_FUNCTION_41_3();

  return MEMORY[0x2821BB480](v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_26617A204()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_7_6();
  *v3 = v2;
  v5 = *(v4 + 112);
  v6 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v7 = v6;
  *(v8 + 120) = v0;

  OUTLINED_FUNCTION_8();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_26617A2FC()
{
  OUTLINED_FUNCTION_42_5();
  OUTLINED_FUNCTION_19();
  v1 = v0[12];
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[4];
  (*(v0[6] + 8))(v0[7], v0[5]);
  sub_2660FFE1C(v2);

  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_41_3();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_26617A3A8()
{
  OUTLINED_FUNCTION_1_0();
  v1 = v0[12];
  v2 = v0[8];
  (*(v0[6] + 8))(v0[7], v0[5]);
  sub_2660FFE1C(v2);

  v3 = v0[15];
  v5 = v0[8];
  v4 = v0[9];
  v6 = v0[7];
  v7 = v0[4];

  OUTLINED_FUNCTION_5_3();

  return v8();
}

uint64_t sub_26617A454()
{
  OUTLINED_FUNCTION_1_0();
  v1 = v0[10];

  v2 = v0[13];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[7];
  v6 = v0[4];

  OUTLINED_FUNCTION_5_3();

  return v7();
}

uint64_t sub_26617A4E0()
{
  OUTLINED_FUNCTION_18();
  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  *(v1 + 144) = v3;
  *(v1 + 16) = v4;
  *(v1 + 24) = v5;
  v6 = sub_26618B1E0();
  OUTLINED_FUNCTION_3_0(v6);
  v8 = *(v7 + 64);
  *(v1 + 48) = OUTLINED_FUNCTION_8_2();
  v9 = sub_26618B6A0();
  *(v1 + 56) = v9;
  OUTLINED_FUNCTION_0_4(v9);
  *(v1 + 64) = v10;
  v12 = *(v11 + 64);
  *(v1 + 72) = OUTLINED_FUNCTION_8_2();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C098, &unk_26618F950);
  OUTLINED_FUNCTION_3_0(v13);
  v15 = *(v14 + 64);
  *(v1 + 80) = OUTLINED_FUNCTION_8_2();
  v16 = sub_26618C340();
  OUTLINED_FUNCTION_3_0(v16);
  v18 = *(v17 + 64);
  *(v1 + 88) = OUTLINED_FUNCTION_8_2();
  v19 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v19, v20, v21);
}

uint64_t sub_26617A5F8()
{
  OUTLINED_FUNCTION_1_0();
  v1 = *(v0 + 88);
  v2 = *(v0 + 32);
  type metadata accessor for LaunchAppCATPatternsExecutor(0);
  sub_26618C330();
  OUTLINED_FUNCTION_20_14();
  *(v0 + 96) = sub_26618C2D0();
  OUTLINED_FUNCTION_22_10(dword_26618E420);

  v3 = swift_task_alloc();
  *(v0 + 104) = v3;
  *v3 = v0;
  v3[1] = sub_26617A6E0;
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 144);

  return v8(0);
}

uint64_t sub_26617A6E0()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v6 = *(v5 + 104);
  *v4 = *v1;
  v3[14] = v7;
  v3[15] = v0;

  if (!v0)
  {
    v8 = v3[12];
  }

  OUTLINED_FUNCTION_8();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_26617A7E8()
{
  OUTLINED_FUNCTION_42_5();
  OUTLINED_FUNCTION_19();
  v1 = v0[9];
  v2 = v0[10];
  v4 = v0[5];
  v3 = v0[6];
  v5 = sub_26618B440();
  OUTLINED_FUNCTION_12_14(v5);
  v6 = swift_task_alloc();
  *(v6 + 16) = 0;
  v7 = MEMORY[0x277D84F90];
  *(v6 + 24) = v2;
  *(v6 + 32) = v7;
  OUTLINED_FUNCTION_2_22();
  sub_26618B620();

  OUTLINED_FUNCTION_14_16();
  v8 = *(MEMORY[0x277D5BE50] + 4);
  v9 = swift_task_alloc();
  v0[16] = v9;
  *v9 = v0;
  v9[1] = sub_26617A8E0;
  v10 = v0[14];
  v11 = v0[9];
  OUTLINED_FUNCTION_17_6();
  OUTLINED_FUNCTION_41_3();

  return MEMORY[0x2821BB480](v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_26617A8E0()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_7_6();
  *v3 = v2;
  v5 = *(v4 + 128);
  v6 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v7 = v6;
  *(v8 + 136) = v0;

  OUTLINED_FUNCTION_8();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_26617A9D8()
{
  OUTLINED_FUNCTION_1_0();
  v1 = *(v0 + 96);

  v2 = *(v0 + 120);
  OUTLINED_FUNCTION_21_13();

  OUTLINED_FUNCTION_5_3();

  return v3();
}

uint64_t sub_26617AA58()
{
  OUTLINED_FUNCTION_18();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = sub_26618B1E0();
  OUTLINED_FUNCTION_3_0(v5);
  v7 = *(v6 + 64);
  v1[6] = OUTLINED_FUNCTION_8_2();
  v8 = sub_26618B6A0();
  v1[7] = v8;
  OUTLINED_FUNCTION_0_4(v8);
  v1[8] = v9;
  v11 = *(v10 + 64);
  v1[9] = OUTLINED_FUNCTION_8_2();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C098, &unk_26618F950);
  OUTLINED_FUNCTION_3_0(v12);
  v14 = *(v13 + 64);
  v1[10] = OUTLINED_FUNCTION_8_2();
  v15 = sub_26618C340();
  OUTLINED_FUNCTION_3_0(v15);
  v17 = *(v16 + 64);
  v1[11] = OUTLINED_FUNCTION_8_2();
  v18 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v18, v19, v20);
}

uint64_t sub_26617AB6C()
{
  OUTLINED_FUNCTION_42_5();
  OUTLINED_FUNCTION_19();
  v1 = v0[11];
  if (v0[4])
  {
    v2 = v0[3];
    v3 = v0[4];
  }

  type metadata accessor for LaunchAppCATPatternsExecutor(0);

  sub_26618C330();
  OUTLINED_FUNCTION_20_14();
  v0[12] = sub_26618C2D0();
  OUTLINED_FUNCTION_22_10(&unk_26618E418);

  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  OUTLINED_FUNCTION_11_9(v4);
  OUTLINED_FUNCTION_41_3();

  return v9(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_26617AC60()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v6 = *(v5 + 104);
  *v4 = *v1;
  v3[14] = v7;
  v3[15] = v0;

  if (!v0)
  {
    v8 = v3[12];
    v9 = v3[4];
  }

  OUTLINED_FUNCTION_8();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_26617AD7C()
{
  OUTLINED_FUNCTION_42_5();
  OUTLINED_FUNCTION_19();
  v1 = v0[9];
  v2 = v0[10];
  v4 = v0[5];
  v3 = v0[6];
  v5 = sub_26618B440();
  OUTLINED_FUNCTION_12_14(v5);
  v6 = swift_task_alloc();
  *(v6 + 16) = 0;
  v7 = MEMORY[0x277D84F90];
  *(v6 + 24) = v2;
  *(v6 + 32) = v7;
  OUTLINED_FUNCTION_2_22();
  sub_26618B620();

  OUTLINED_FUNCTION_14_16();
  v8 = *(MEMORY[0x277D5BE50] + 4);
  v9 = swift_task_alloc();
  v0[16] = v9;
  *v9 = v0;
  v9[1] = sub_26617AE74;
  v10 = v0[14];
  v11 = v0[9];
  OUTLINED_FUNCTION_17_6();
  OUTLINED_FUNCTION_41_3();

  return MEMORY[0x2821BB480](v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_26617AE74()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_7_6();
  *v3 = v2;
  v5 = *(v4 + 128);
  v6 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v7 = v6;
  *(v8 + 136) = v0;

  OUTLINED_FUNCTION_8();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_26617AF6C()
{
  OUTLINED_FUNCTION_42_5();
  OUTLINED_FUNCTION_19();
  v1 = v0[14];
  v2 = v0[10];
  v3 = v0[11];
  v4 = v0[6];
  (*(v0[8] + 8))(v0[9], v0[7]);
  sub_2660FFE1C(v2);

  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_41_3();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_26617B018()
{
  OUTLINED_FUNCTION_1_0();
  v1 = v0[14];
  v2 = v0[10];
  (*(v0[8] + 8))(v0[9], v0[7]);
  sub_2660FFE1C(v2);

  v3 = v0[17];
  OUTLINED_FUNCTION_21_13();

  OUTLINED_FUNCTION_5_3();

  return v4();
}

uint64_t sub_26617B0B8()
{
  OUTLINED_FUNCTION_1_0();
  v1 = v0[12];
  v2 = v0[4];

  v3 = v0[15];
  OUTLINED_FUNCTION_21_13();

  OUTLINED_FUNCTION_5_3();

  return v4();
}

void sub_26617B14C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26618A500();
  v5 = OUTLINED_FUNCTION_2_2(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v5);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v46 = &v43 - v13;
  v14 = sub_26618C6B0();
  v15 = OUTLINED_FUNCTION_2_2(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  v47 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BCD0, &qword_26618E238);
  v22 = OUTLINED_FUNCTION_3_0(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v43 - v25;
  sub_26617B97C(a1, a2);
  v27 = [objc_allocWithZone(MEMORY[0x277D479F0]) init];
  sub_26618A4F0();
  if (__swift_getEnumTagSinglePayload(v26, 1, v4) == 1)
  {
    __break(1u);
  }

  else
  {

    v28 = sub_26618A4D0();
    v45 = *(v7 + 8);
    v45(v26, v4);
    [v27 setPunchOutUri_];

    if (qword_2814B2C40 != -1)
    {
      swift_once();
    }

    v29 = __swift_project_value_buffer(v14, qword_2814B4A98);
    v30 = v47;
    (*(v17 + 16))(v47, v29, v14);
    v31 = v27;
    v32 = sub_26618C690();
    v33 = v17;
    v34 = sub_26618CAA0();
    if (!os_log_type_enabled(v32, v34))
    {

      (*(v33 + 8))(v30, v14);
      return;
    }

    v43 = v33;
    v44 = v14;
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v48 = v36;
    *v35 = 136315138;
    v37 = [v31 punchOutUri];

    if (v37)
    {
      sub_26618A4E0();

      v38 = v46;
      (*(v7 + 32))(v46, v12, v4);
      sub_26617BF98();
      v39 = sub_26618CFD0();
      v41 = v40;
      v45(v38, v4);
      v42 = sub_266103A98(v39, v41, &v48);

      *(v35 + 4) = v42;
      _os_log_impl(&dword_2660B7000, v32, v34, "Adding button punchout: %s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v36);
      MEMORY[0x26677CC30](v36, -1, -1);
      MEMORY[0x26677CC30](v35, -1, -1);

      (*(v43 + 8))(v47, v44);
      return;
    }
  }

  __break(1u);
}

uint64_t sub_26617B588()
{
  OUTLINED_FUNCTION_18();
  v2 = OUTLINED_FUNCTION_30_8(v1);
  OUTLINED_FUNCTION_3_0(v2);
  v4 = *(v3 + 64);
  v5 = OUTLINED_FUNCTION_8_2();
  v6 = OUTLINED_FUNCTION_28_11(v5);
  v0[5] = v6;
  OUTLINED_FUNCTION_0_4(v6);
  v0[6] = v7;
  v9 = *(v8 + 64);
  v0[7] = OUTLINED_FUNCTION_8_2();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C098, &unk_26618F950);
  OUTLINED_FUNCTION_3_0(v10);
  v12 = *(v11 + 64);
  v13 = OUTLINED_FUNCTION_8_2();
  v14 = OUTLINED_FUNCTION_27_6(v13);
  OUTLINED_FUNCTION_3_0(v14);
  v16 = *(v15 + 64);
  v0[9] = OUTLINED_FUNCTION_8_2();
  v17 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v17, v18, v19);
}

uint64_t sub_26617B680()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 72);
  type metadata accessor for CloseAppCATPatternsExecutor();
  OUTLINED_FUNCTION_26_9();
  OUTLINED_FUNCTION_20_14();
  v2 = sub_26618C2D0();
  OUTLINED_FUNCTION_24_8(v2);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_23_9(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_11_9(v4);

  return sub_2660BC638(v6);
}

uint64_t sub_26617B720()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v6 = *(v5 + 88);
  *v4 = *v1;
  OUTLINED_FUNCTION_31_12(v7);
  if (!v0)
  {
    v8 = *(v3 + 80);
  }

  OUTLINED_FUNCTION_8();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_26617B820()
{
  v1 = v0[7];
  v2 = v0[8];
  v4 = v0[3];
  v3 = v0[4];
  v5 = sub_26618C020();
  OUTLINED_FUNCTION_41_0(v5);
  sub_26618C010();
  v6 = sub_26618BF10();
  OUTLINED_FUNCTION_41_0(v6);
  sub_26618BF00();
  sub_26618C050();

  sub_266149C64();

  sub_26618B1B0();
  v7 = swift_task_alloc();
  *(v7 + 16) = 256;
  v8 = MEMORY[0x277D84F90];
  *(v7 + 24) = v2;
  *(v7 + 32) = v8;
  OUTLINED_FUNCTION_2_22();
  sub_26618B620();

  v9 = v4[9];
  __swift_project_boxed_opaque_existential_1(v4 + 5, v4[8]);
  v10 = *(MEMORY[0x277D5BE50] + 4);
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_15_10(v11);
  *v12 = v13;
  v14 = OUTLINED_FUNCTION_0_25(v12);

  return MEMORY[0x2821BB480](v14, v15, v16, v17, v18, v19, v20, v21);
}

unint64_t sub_26617B97C(uint64_t a1, uint64_t a2)
{
  result = 0xD000000000000024;
  if (a2)
  {
    MEMORY[0x26677BCF0](a1);
    MEMORY[0x26677BCF0](47, 0xE100000000000000);

    return 0xD000000000000024;
  }

  return result;
}

uint64_t sub_26617B9FC()
{
  OUTLINED_FUNCTION_18();
  v2 = OUTLINED_FUNCTION_30_8(v1);
  OUTLINED_FUNCTION_3_0(v2);
  v4 = *(v3 + 64);
  v5 = OUTLINED_FUNCTION_8_2();
  v6 = OUTLINED_FUNCTION_28_11(v5);
  v0[5] = v6;
  OUTLINED_FUNCTION_0_4(v6);
  v0[6] = v7;
  v9 = *(v8 + 64);
  v0[7] = OUTLINED_FUNCTION_8_2();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C098, &unk_26618F950);
  OUTLINED_FUNCTION_3_0(v10);
  v12 = *(v11 + 64);
  v13 = OUTLINED_FUNCTION_8_2();
  v14 = OUTLINED_FUNCTION_27_6(v13);
  OUTLINED_FUNCTION_3_0(v14);
  v16 = *(v15 + 64);
  v0[9] = OUTLINED_FUNCTION_8_2();
  v17 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v17, v18, v19);
}

uint64_t sub_26617BAF4()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 72);
  type metadata accessor for LaunchAppCATPatternsExecutor(0);
  OUTLINED_FUNCTION_26_9();
  OUTLINED_FUNCTION_20_14();
  v2 = sub_26618C2D0();
  OUTLINED_FUNCTION_24_8(v2);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_23_9(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_11_9(v4);

  return sub_2660BEEE8(v6);
}

uint64_t sub_26617BB94()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v6 = *(v5 + 88);
  *v4 = *v1;
  OUTLINED_FUNCTION_31_12(v7);
  if (!v0)
  {
    v8 = *(v3 + 80);
  }

  OUTLINED_FUNCTION_8();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_26617BC94()
{
  v1 = v0[7];
  v2 = v0[8];
  v4 = v0[3];
  v3 = v0[4];
  v5 = sub_26618C000();
  OUTLINED_FUNCTION_41_0(v5);
  sub_26618BFF0();
  v6 = sub_26618BF10();
  OUTLINED_FUNCTION_41_0(v6);
  sub_26618BF00();
  sub_26618C050();

  sub_266149C64();

  sub_26618B1B0();
  v7 = swift_task_alloc();
  *(v7 + 16) = 256;
  v8 = MEMORY[0x277D84F90];
  *(v7 + 24) = v2;
  *(v7 + 32) = v8;
  OUTLINED_FUNCTION_2_22();
  sub_26618B620();

  v9 = v4[9];
  __swift_project_boxed_opaque_existential_1(v4 + 5, v4[8]);
  v10 = *(MEMORY[0x277D5BE50] + 4);
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_15_10(v11);
  *v12 = v13;
  v14 = OUTLINED_FUNCTION_0_25(v12);

  return MEMORY[0x2821BB480](v14, v15, v16, v17, v18, v19, v20, v21);
}

uint64_t sub_26617BDF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BCF0, &unk_26618E2F0);
  v7 = OUTLINED_FUNCTION_3_0(v6);
  v9 = *(v8 + 64);
  result = MEMORY[0x28223BE20](v7);
  v12 = &v15 - v11;
  if (a4)
  {
    swift_bridgeObjectRetain_n();
    sub_26618C2F0();
    v13 = sub_26618C300();
    __swift_storeEnumTagSinglePayload(v12, 0, 1, v13);
    found = type metadata accessor for LaunchAppRemoteDevicesNotFoundParameters(0);
    return sub_2660BDBE8(v12, a1 + *(found + 24));
  }

  return result;
}

uint64_t sub_26617BEC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C098, &unk_26618F950);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v10 - v7;
  sub_26618B650();
  sub_26618B680();
  sub_2660FFDAC(a4, v8);
  sub_26618B660();

  return sub_26618B670();
}

unint64_t sub_26617BF98()
{
  result = qword_28005C2F0;
  if (!qword_28005C2F0)
  {
    sub_26618A500();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005C2F0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_25(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = v2[12];
  v4 = v2[7];
  return v2[2];
}

uint64_t OUTLINED_FUNCTION_12_14(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);

  return sub_26618B1B0();
}

uint64_t OUTLINED_FUNCTION_21_13()
{
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[9];
  v5 = v0[6];
}

uint64_t OUTLINED_FUNCTION_26_9()
{

  return sub_26618C330();
}

uint64_t OUTLINED_FUNCTION_27_6(uint64_t a1)
{
  *(v1 + 64) = a1;

  return sub_26618C340();
}

uint64_t OUTLINED_FUNCTION_28_11(uint64_t a1)
{
  *(v1 + 32) = a1;

  return sub_26618B6A0();
}

uint64_t OUTLINED_FUNCTION_30_8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;

  return sub_26618B1E0();
}

uint64_t OUTLINED_FUNCTION_31_12(uint64_t a1)
{
  *(v1 + 96) = a1;
  *(v1 + 104) = v2;
}

uint64_t sub_26617C174()
{
  v0 = sub_26618A3E0();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_26618A3D0();
  qword_2814B31C0 = result;
  return result;
}

uint64_t sub_26617C1B4()
{
  v0 = sub_26618CEC0();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26617C208(char a1)
{
  if (a1)
  {
    return 0x6C65636E6163;
  }

  else
  {
    return 0x6D7269666E6F63;
  }
}

uint64_t sub_26617C23C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26617C208(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_26617C268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_26618CB20();
  v9 = OUTLINED_FUNCTION_2_2(v8);
  v86 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4_6();
  v84 = v13;
  v14 = sub_26618C7E0();
  v15 = OUTLINED_FUNCTION_2_2(v14);
  v75 = v16;
  v76 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_4_6();
  v74 = v19;
  v20 = sub_26618CB10();
  v21 = OUTLINED_FUNCTION_2_2(v20);
  v90 = v22;
  v91 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_69_0();
  v83 = v25;
  MEMORY[0x28223BE20](v26);
  v88 = &v71 - v27;
  v28 = sub_26618C820();
  v29 = OUTLINED_FUNCTION_2_2(v28);
  v31 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_69_0();
  v82 = v34;
  MEMORY[0x28223BE20](v35);
  v37 = &v71 - v36;
  v38 = sub_26618C6B0();
  v39 = OUTLINED_FUNCTION_2_2(v38);
  v89 = v40;
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_4_6();
  v87 = v43;
  v92 = 0;
  v93 = 0xE000000000000000;
  sub_26618CD80();

  v92 = 0xD000000000000019;
  v93 = 0x800000026619A490;
  MEMORY[0x26677BCF0](a1, a2);
  v45 = v92;
  v44 = v93;
  if (qword_2814B2C38 != -1)
  {
    swift_once();
  }

  v46 = __swift_project_value_buffer(v38, qword_2814B4A80);
  (*(v89 + 16))(v87, v46, v38);
  v79 = v38;
  v47 = *(v31 + 16);
  v85 = a3;
  v81 = v47;
  v47(v37, a3, v28);
  v78 = v28;
  v80 = *(v90 + 16);
  v80(v88, a4, v91);

  v48 = v44;
  v49 = sub_26618C690();
  v50 = sub_26618CAA0();

  v51 = os_log_type_enabled(v49, v50);
  v77 = v48;
  if (v51)
  {
    v52 = swift_slowAlloc();
    v73 = v8;
    v53 = v52;
    v54 = swift_slowAlloc();
    v72 = a4;
    v71 = v54;
    v92 = v54;
    *v53 = 136315650;
    *(v53 + 4) = sub_266103A98(v45, v48, &v92);
    *(v53 + 12) = 1024;
    v55 = v74;
    sub_26618C810();
    v56 = sub_26618C7D0();
    (*(v75 + 8))(v55, v76);
    v57 = v78;
    (*(v31 + 8))(v37, v78);
    *(v53 + 14) = v56;
    *(v53 + 18) = 2048;
    v58 = v88;
    v59 = sub_26618CB00();
    v60 = v58;
    v61 = v91;
    (*(v90 + 8))(v60, v91);
    *(v53 + 20) = v59;
    _os_log_impl(&dword_2660B7000, v49, v50, "Creating DispatchQueue: %s with qos: %u and attributes: %llu", v53, 0x1Cu);
    v62 = v71;
    __swift_destroy_boxed_opaque_existential_1(v71);
    a4 = v72;
    MEMORY[0x26677CC30](v62, -1, -1);
    v63 = v53;
    v8 = v73;
    MEMORY[0x26677CC30](v63, -1, -1);

    v64 = OUTLINED_FUNCTION_2_23();
    v65(v64);
    v66 = v57;
  }

  else
  {
    v67 = v91;
    (*(v90 + 8))(v88, v91);
    v66 = v78;
    (*(v31 + 8))(v37, v78);

    v68 = OUTLINED_FUNCTION_2_23();
    v69(v68);
    v61 = v67;
  }

  sub_26617C874();
  v81(v82, v85, v66);
  v80(v83, a4, v61);
  (*(v86 + 104))(v84, *MEMORY[0x277D85260], v8);
  return sub_26618CB40();
}

unint64_t sub_26617C874()
{
  result = qword_28005CFC0;
  if (!qword_28005CFC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28005CFC0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_23()
{
  v1 = *(*(v0 - 128) + 8);
  result = *(v0 - 144);
  v3 = *(v0 - 208);
  return result;
}

_BYTE *storeEnumTagSinglePayload for AppLaunchError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_26617C9AC()
{
  result = qword_28005CFC8;
  if (!qword_28005CFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CFC8);
  }

  return result;
}

uint64_t sub_26617CA00(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_26618A620();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v9 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
  v10 = 0;
  if ((sub_26618B1A0() & 1) == 0)
  {
    v11 = v3[6];
    __swift_project_boxed_opaque_existential_1(v3 + 2, v3[5]);
    sub_26618B100();
    sub_26618A610();
    sub_2660CCD6C();
    v12 = sub_26618CC00();
    v14 = v13;

    v15 = [objc_opt_self() sharedInstance];
    if (v15)
    {
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v17 = [objc_opt_self() bundleForClass_];
      v18 = sub_26617CCEC(a1, a2, 0x736C6562614CLL, 0xE600000000000000, v17, v12, v14, v15);

      if (v18)
      {
        v10 = sub_26618C8B0();

        v19 = OUTLINED_FUNCTION_0_26();
        v20(v19);
      }

      else
      {
        v23 = OUTLINED_FUNCTION_0_26();
        v24(v23);
        return 0;
      }
    }

    else
    {
      v21 = OUTLINED_FUNCTION_0_26();
      v22(v21);

      return 0;
    }
  }

  return v10;
}

id sub_26617CCEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v10 = sub_26618C8A0();
  v11 = sub_26618C8A0();

  v12 = sub_26618C8A0();

  v13 = [a8 localizedStringForKey:v10 table:v11 bundle:a5 languageCode:v12];

  return v13;
}

uint64_t sub_26617CDCC(void *a1)
{
  if (a1[2] != 1)
  {
    return 0;
  }

  v1 = a1[4];
  v2 = a1[5];
  if (v1 == 0xD000000000000012 && 0x8000000266199A10 == v2)
  {
    v4 = 0;
  }

  else
  {
    v4 = a1[6];
    v5 = a1[7];
    if (OUTLINED_FUNCTION_3_23())
    {
      v4 = 0;
    }

    else
    {
    }

    if (v1 != 0xD000000000000012)
    {
      goto LABEL_13;
    }
  }

  if (0x8000000266199A10 != v2)
  {
LABEL_13:
    OUTLINED_FUNCTION_3_23();
  }

  return v4;
}

BOOL sub_26617CE90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_26618D090();
  sub_26618C910();
  v7 = sub_26618D0C0();
  v8 = ~(-1 << *(a3 + 32));
  do
  {
    v9 = v7 & v8;
    v10 = (1 << (v7 & v8)) & *(a3 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8));
    v11 = v10 != 0;
    if (!v10)
    {
      break;
    }

    v12 = (*(a3 + 48) + 16 * v9);
    if (*v12 == a1 && v12[1] == a2)
    {
      break;
    }

    v14 = sub_26618D000();
    v7 = v9 + 1;
  }

  while ((v14 & 1) == 0);
  return v11;
}